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
    public static AsyncOperation asyncOperation;
    private static bool _refresh_progress = false;
    private static System.Action<float> refresh_func = null;
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
        SceneManager.LoadScene(name);
    }

    public static Coroutine LoadSceneAsync(string name, System.Action<bool> callback, System.Action<float> refresh)
    {
        // AssetBundleManager.Instance.ReleaseSceneCachedBundleOnSceneSwitch();
        return CoroutineHelper.Run(_DoLoadSceneAsync(name, callback, refresh));
    }

    public static void LoadSpriteAsync(string spritePath, System.Action<Object> callback)
    {
        LoadAsync(spritePath, typeof(Sprite), callback);
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

        Object obj = Resources.Load(name, type);

        if (obj == null && type != typeof(BufferAsset))
        {
            obj = _LoadObjInEditorAt(path, type);
        }

        return obj;
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

        ResourceRequest request = Resources.LoadAsync(name, type);
        yield return request;
        Object obj = request.asset;
        if (obj == null)
        {
            obj = _LoadObjInEditorAt(path, type);
        }
        callback(obj);
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

    private static IEnumerator _DoLoadSceneAsync(string name, System.Action<bool> callback, System.Action<float> refresh)
    {
        asyncOperation = SceneManager.LoadSceneAsync(name);
        // asyncOperation.allowSceneActivation = false;
        refresh_func = refresh;
        _refresh_progress = true;
        yield return asyncOperation;

        string loadedName = SceneManager.GetActiveScene().name;
        bool success = loadedName == name ? true : false;
        _refresh_progress = false;
        refresh_func = null;
        // asyncOperation.allowSceneActivation = true;
        GLog.Log("XLoader.LoadScene {0} loaded", loadedName);
        callback(success);
    }

    private static void _SpriteAtlasRequested(string tag, System.Action<SpriteAtlas> callback)
    {
        GLog.Log("XLoader._SpriteAtlasRequested: {0}", tag);
        var obj = _LoadObjInEditorAt(string.Format("spriteAtlas/{0}.spriteatlas", tag), typeof(SpriteAtlas));
        if (obj == null)
        {
            GLog.LogError("XLoader._SpriteAtlasRequested : put {0} in folder {1}", tag, Defines.SpriteAltasPath);
        }
        callback(obj as SpriteAtlas);
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
        if (_refresh_progress != false && refresh_func != null)
        {
            refresh_func(asyncOperation.progress);
        }
    }
}
