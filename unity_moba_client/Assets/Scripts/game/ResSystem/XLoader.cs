#if UNITY_EDITOR
// #define USE_BUNDLE_IN_EDITOR // test
using UnityEditor;
#endif


using UnityEngine;
using UnityEngine.U2D;
using UnityEngine.SceneManagement;
using System.Collections;
using System.IO;

public static class XLoader
{
    private static bool _hasInit = false;
    public static T Load<T>(string path) where T : Object
    {
        return (Load(path, typeof(T)) as T);
    }

    public static Coroutine LoadAsync<T>(string path, System.Action<Object> callback) where T : Object
    {
        return LoadAsync(path, typeof(T), callback);
    }
    public static Coroutine LoadAsync(string path, System.Type type, System.Action<Object> callback)
    {
        return _StartCoroutine(_DoLoadAsync(path, type, callback));
    }

    public static Object[] LoadMulti(string[] paths)
    {
        Object[] results = new Object[paths.Length];
        for (int i = 0; i < paths.Length; i++)
        {
            results[i] = Load(paths[i], typeof(Object));
        }
        return results;
    }

    public static Coroutine LoadMultiAsync(string[] paths, System.Action<Object[]> callback)
    {
        return _StartCoroutine(_DoLoadMultiAsync(paths, callback));
    }

    public static void LoadScene(string name)
    {
#if UNITY_EDITOR && ! USE_BUNDLE_IN_EDITOR
        SceneManager.LoadScene(name);
#else
        GLog.Log("XLoader.LoadScene loading: {0}", name);
        AssetBundleManager.Instance.ReleaseSceneCachedBundleOnSceneSwitch();

        XManifest.Scene info = XManifest.Instance.GetScene(name);

        if (info != null)
        {
            XManifest.Pack packInfo = XManifest.Instance.GetPack(info.bundle);
            switch (packInfo.location)
            {
                case XManifest.Location.Resource:
                    GLog.LogError("XLoader.LoadScene can't load bundled scene {0} in resource!", name);
                    break;
                default:
                    GLog.LogError("[XLoader] can't load scene in sync load {0}", name);
                    break;
            }
        }
        else
        {
            SceneManager.LoadScene(name);
        }
#endif
    }

    public static Coroutine LoadSceneAsync(string name, System.Action<bool> callback)
    {
        // AssetBundleManager.Instance.ReleaseSceneCachedBundleOnSceneSwitch();
        return CoroutineHelper.Run(_DoLoadSceneAsync(name, callback));
    }
    public static void LoadSpriteAsync(string spritePath, System.Action<Object> callback)
    {
#if UNITY_EDITOR && ! USE_BUNDLE_IN_EDITOR
        LoadAsync(spritePath, typeof(Sprite), callback);
#else
        var type = typeof(SpriteAtlas);
        string name = spritePath.ToLower();
        XManifest.AssetInfo info = XManifest.Instance.Find(name);

        if (info != null)
        {
            LoadAsync(spritePath, type, callback);
        }
        else
        {
            var spritepack = XManifest.Instance.FindPackBySprite(spritePath);
            if (spritepack != null)
            {
                LoadAsync(spritepack.realName, type, (obj) =>
                {
                    callback((obj as SpriteAtlas).GetSprite(Path.GetFileName(spritePath)));
                });
            }
            else
            {
                GLog.LogError("{0} can't find any where", spritePath);
            }
        }
#endif
    }

    public static Object Load(string path, System.Type type)
    {
        GLog.Log("[XLoader] Load: ({0} : {1})", path, type.ToString());

        if (string.IsNullOrEmpty(path))
        {
            GLog.LogError("[XLoader.Load] sent empty/null path!");
            return null;
        }

        string name = path;
        if( Path.HasExtension(path) )
            name = Path.ChangeExtension(path, null);
        else
            path = Path.ChangeExtension(path, "prefab");


#if UNITY_EDITOR && ! USE_BUNDLE_IN_EDITOR
        Object obj = Resources.Load(name, type);

        if (obj == null && type != typeof(BufferAsset))
        {
            obj = _LoadObjInEditorAt(path, type);
        }

        return obj;
#else
        UnityEngine.Object obj = null;

        //GLog.Log("[XLoader] can't find Asset({0} : {1}) in cache: ", name, type.ToString());
        XManifest.AssetInfo info = XManifest.Instance.Find(name);
        if (info != null)
        {
            switch (info.location)
            {
                case XManifest.Location.Resource:
                    if (type == typeof(BufferAsset)) {
                        BufferAsset asset = ScriptableObject.CreateInstance<BufferAsset>();
                        asset.init(Resources.Load<TextAsset>(name));
                        obj = asset;
                    } else
                        obj = Resources.Load(name, type);
                    break;
                case XManifest.Location.Bundle:
                    obj = AssetBundleManager.Instance.LoadAsset(info, type);
                    break;
                case XManifest.Location.Data:
                    string filePath = System.IO.Path.Combine(Application.persistentDataPath, info.fullName);
                    if (System.IO.File.Exists(filePath))
                    {
                        System.IO.FileStream fs = System.IO.File.OpenRead(filePath);
                        BufferAsset asset = ScriptableObject.CreateInstance<BufferAsset>();
                        asset.init((int)fs.Length);
                        fs.Read(asset.bytes, 0, (int)fs.Length);
                        fs.Close();
                        obj = asset;
                    }
                    break;
                default:
                    break;
            }
        }
        else
        {
            string bundleName = XManifest.Instance.GetABNameByPath(name);
            if (!string.IsNullOrEmpty(bundleName))
            {
                XManifest.Pack pack = XManifest.Instance.GetPack(bundleName);
                XManifest.Location local = pack.NoBundle() ? XManifest.Location.Resource : XManifest.Location.Bundle;
                XManifest.AssetInfo assetInfo = new XManifest.AssetInfo() { location = local, bundle = pack.name, fullName = path };

                switch (local)
                {
                    case XManifest.Location.Resource:
                        if (type == typeof(BufferAsset)) {
                            BufferAsset asset = ScriptableObject.CreateInstance<BufferAsset>();
                            asset.init(Resources.Load<TextAsset>(name));
                            obj = asset;
                        } else
                            obj = Resources.Load(name, type);
                        break;
                    case XManifest.Location.Bundle:
                        {
                            obj = AssetBundleManager.Instance.LoadAsset(assetInfo, type);
                        }
                        break;
                    default:
                        break;
                }

                if (obj != null)
                {
                    XManifest.Instance.AddFastIndex(path, assetInfo);
                }
            }
            else
            {
                if (type == typeof(BufferAsset)) {
                    BufferAsset asset = ScriptableObject.CreateInstance<BufferAsset>();
                    asset.init(Resources.Load<TextAsset>(name));
                    obj = asset;
                } else
                    obj = Resources.Load(name, type);
            }
        }

        if (obj == null)
        {
            if (info != null)
                GLog.LogError("[XLoader] Can't find {0} in Location({1})", name, info.location);
            else
                GLog.LogError("[XLoader] Can't find {0} in Resources", name);
        }
        else
        {
            GLog.Log("[XLoader] ({0} : {1}) Loaded.", name, type.ToString());
        }

        return obj;
#endif
    }

    private static Coroutine _StartCoroutine(IEnumerator em)
    {
        return CoroutineHelper.Run(em);
    }

#if UNITY_EDITOR && ! USE_BUNDLE_IN_EDITOR
    private static Object _LoadObjInEditorAt(string path, System.Type type)
    {
        string fullPath = Path.Combine(Defines.AssetBundleSourcePath, path);
        Object obj = AssetDatabase.LoadAssetAtPath(fullPath, type);
        if( obj == null )
            GLog.LogError("[XLoader] Can't Load In Editor at {0}", fullPath);
        return obj;
    }
#endif

    private static IEnumerator _DoLoadAsync(string path, System.Type type, System.Action<Object> callback)
    {
        string name = path;
        if( Path.HasExtension(path) )
            name = Path.ChangeExtension(path, null);
        else
            path = Path.ChangeExtension(path, "prefab");

        // GLog.Log("[XLoader] AsyncLoading: ({0} : {1})", path, type.ToString());

#if UNITY_EDITOR && !USE_BUNDLE_IN_EDITOR
        ResourceRequest request = Resources.LoadAsync(name, type);
        yield return request;
        Object obj = request.asset;
        if (obj == null)
        {
            obj = _LoadObjInEditorAt(path, type);
        }
        callback(obj);
#else
        if (string.IsNullOrEmpty(path))
        {
            GLog.LogError("[XLoader.Load] sent empty/null path!");
            yield break;
        }

        XManifest.AssetInfo info = XManifest.Instance.Find(name);
        UnityEngine.Object obj = null;
        if (info != null)
        {
            switch (info.location)
            {
                case XManifest.Location.Resource:
                    {
                        ResourceRequest request = Resources.LoadAsync(name, type);
                        yield return request;
                        obj = request.asset;
                    }
                    break;
                case XManifest.Location.Bundle:
                    {
                        yield return AssetBundleManager.Instance.LoadAssetAsync(info, type, delegate (Object result) { obj = result; });
                    }
                    break;
                default:
                    break;
            }
        }
        else
        {
            string bundleName = XManifest.Instance.GetABNameByPath(name);
            if (!string.IsNullOrEmpty(bundleName))
            {
                XManifest.Pack pack = XManifest.Instance.GetPack(bundleName);
                if( pack != null )
                {
                    XManifest.Location local = pack.NoBundle() ? XManifest.Location.Resource : XManifest.Location.Bundle;
                    XManifest.AssetInfo assetInfo = new XManifest.AssetInfo() { location = local, bundle = pack.name, fullName = path };

                    switch (local)
                    {
                        case XManifest.Location.Resource:
                            {
                                ResourceRequest request = Resources.LoadAsync(name, type);
                                yield return request;
                                obj = request.asset;
                            }
                            break;
                        case XManifest.Location.Bundle:
                            {
                                yield return AssetBundleManager.Instance.LoadAssetAsync(assetInfo, type, delegate (Object result) { obj = result; });
                            }
                            break;
                        default:
                            break;
                    }

                    if (obj != null)
                    {
                        XManifest.Instance.AddFastIndex(path, assetInfo);
                    }
                }
                else
                {
                    GLog.LogError("[XLoader] Can't find bundle {0}", bundleName);
                }

            }
            else
            {
                ResourceRequest request = Resources.LoadAsync(name, type);
                yield return request;
                obj = request.asset;
            }
        }


        if (obj == null)
        {
            if (info != null)
                GLog.LogError("[XLoader] Can't find {0} in Location({1})", name, info.location);
            else
                GLog.LogError("[XLoader] Can't find {0} in Resources", name);
        }

        callback(obj);
#endif
    }

    private static Coroutine _LoadAsync(string path, System.Type type, System.Action<Object, int> callback, int param)
    {
        return _StartCoroutine(_DoLoadAsync(path, type, delegate (Object obj)
        {
            callback(obj, param);
        }));
    }


    private static IEnumerator _DoLoadMultiAsync(string[] paths, System.Action<Object[]> callback)
    {
        Object[] results = new Object[paths.Length];
        bool[] loadDone = new bool[paths.Length];
        for (int i = 0; i < paths.Length; i++)
        {
            loadDone[i] = false;
            _LoadAsync(paths[i], typeof(Object), delegate (Object obj, int index)
            {
                results[index] = obj;
                loadDone[index] = true;
            }, i);
        }

        for (int i = 0; i < paths.Length; i++)
            while (!loadDone[i])
                yield return null;

        callback(results);
    }

    private static IEnumerator _DoLoadSceneAsync(string name, System.Action<bool> callback)
    {
#if UNITY_EDITOR && ! USE_BUNDLE_IN_EDITOR
        yield return SceneManager.LoadSceneAsync(name);
#else
        GLog.Log("XLoader.LoadScene loading: {0}", name);
        XManifest.Scene info = XManifest.Instance.GetScene(name);

        if (info != null)
        {
            GLog.Log("XLoader.LoadScene bundle loading: {0}", name);
            XManifest.Pack packInfo = XManifest.Instance.GetPack(info.bundle);
            switch (packInfo.location)
            {
                case XManifest.Location.Resource:
                    GLog.LogError("XLoader.LoadScene can't load bundled scene {0} in resource!", name);
                    break;
                default:
                    yield return AssetBundleManager.Instance.LoadScene(info);
                    break;
            }
        }
        else
        {
            GLog.Log("XLoader.LoadScene native loading: {0}", name);
            yield return SceneManager.LoadSceneAsync(name);
        }
#endif
        string loadedName = SceneManager.GetActiveScene().name;
        bool success = loadedName == name ? true : false;
        GLog.Log("XLoader.LoadScene {0} loaded", loadedName);
        callback(success);
    }

    private static void _SpriteAtlasRequested(string tag, System.Action<SpriteAtlas> callback)
    {
        GLog.Log("XLoader._SpriteAtlasRequested: {0}", tag);
#if UNITY_EDITOR && !USE_BUNDLE_IN_EDITOR
        var obj = _LoadObjInEditorAt(string.Format("spriteAtlas/{0}.spriteatlas", tag), typeof(SpriteAtlas));
        if (obj == null)
        {
            GLog.LogError("XLoader._SpriteAtlasRequested : put {0} in folder {1}", tag, Defines.SpriteAltasPath);
        }
        callback(obj as SpriteAtlas);
#else
        XManifest.SpritePack info = XManifest.Instance.GetSpritePack(tag);
        if (info == null)
        {
            GLog.LogError("XLoader._SpriteAtlasRequested can't find spriteAtlas {0} in resource!", tag);
        }
        else
        {
            callback(Load<SpriteAtlas>(Path.ChangeExtension(info.realName, "spriteatlas")));
        }
#endif
    }

    public static AsyncOperation UnloadUnusedAssets()
    {
        return Resources.UnloadUnusedAssets();
    }


	public static IEnumerator Initialize() {
        yield return null;//Initialize(null);
	}

    public static void Clear()
    {
        if (_hasInit) {
            _hasInit = false;
            SpriteAtlasManager.atlasRequested -= _SpriteAtlasRequested;
        }
    }

    public static void Update()
    {
        // AssetBundleManager.Instance.Update();
    }
}
