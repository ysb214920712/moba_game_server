using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;

public class EditorTools
{
    /// <summary>
    /// Draw a distinctly different looking header label
    /// </summary>

    static public bool DrawHeader (string text) { return DrawHeader(text, text, false); }

    /// <summary>
    /// Draw a distinctly different looking header label
    /// </summary>

    static public bool DrawHeader (string text, string key) { return DrawHeader(text, key, false); }

    /// <summary>
    /// Draw a distinctly different looking header label
    /// </summary>

    static public bool DrawHeader (string text, bool forceOn) { return DrawHeader(text, text, forceOn); }

    /// <summary>
    /// Draw a distinctly different looking header label
    /// </summary>

    static public bool DrawHeader (string text, string key, bool forceOn)
    {
        bool state = EditorPrefs.GetBool(key, true);

        GUILayout.Space(3f);
        if (!forceOn && !state) GUI.backgroundColor = new Color(0.8f, 0.8f, 0.8f);
        GUILayout.BeginHorizontal();
        GUILayout.Space(3f);

        GUI.changed = false;
        #if UNITY_3_5
        if (state) text = "\u25B2 " + text;
        else text = "\u25BC " + text;
        if (!GUILayout.Toggle(true, text, "dragtab", GUILayout.MinWidth(20f))) state = !state;
        #else
        text = "<b><size=11>" + text + "</size></b>";
        if (state) text = "\u25B2 " + text;
        else text = "\u25BC " + text;
        if (!GUILayout.Toggle(true, text, "dragtab", GUILayout.MinWidth(20f))) state = !state;
        #endif
        if (GUI.changed) EditorPrefs.SetBool(key, state);

        GUILayout.Space(2f);
        GUILayout.EndHorizontal();
        GUI.backgroundColor = Color.white;
        if (!forceOn && !state) GUILayout.Space(3f);
        return state;
    }

    /// <summary>
    /// Begin drawing the content area.
    /// </summary>

    static public void BeginContents ()
    {
        GUILayout.BeginHorizontal();
        GUILayout.Space(4f);
        EditorGUILayout.BeginHorizontal("TextArea", GUILayout.MinHeight(10f));
        GUILayout.BeginVertical();
        GUILayout.Space(2f);
    }

    /// <summary>
    /// End drawing the content area.
    /// </summary>

    static public void EndContents ()
    {
        GUILayout.Space(3f);
        GUILayout.EndVertical();
        EditorGUILayout.EndHorizontal();
        GUILayout.Space(3f);
        GUILayout.EndHorizontal();
        GUILayout.Space(3f);
    }

    
}

public static class EditorUtils
{
    [MenuItem("Assets/UI Tools/PNG => Sprite")]
    static public void CreateImageSprite()
    {
        string[] selects = Selection.assetGUIDs;
        List<string> paths = new List<string>();

        for (int i = 0; i < selects.Length; i++)
        {
            string path = AssetDatabase.GUIDToAssetPath(selects[i]);
            if (path.IndexOf(".png") > -1 || path.IndexOf(".jpg") > -1)
            {
                paths.Add(path);
            }
        }

		for (int i = 0; i < paths.Count; i++)
		{
			Sprite sp = AssetDatabase.LoadAssetAtPath<Sprite>(paths[i]);
            if (sp != null)
            {
                GameObject go = new GameObject(sp.name);
                go.AddComponent<SpriteRenderer>().sprite = sp;

                string prefabPath = Path.ChangeExtension(paths[i], "prefab");
				EditorUtility.DisplayProgressBar("Sprite Making...", prefabPath, (i+1)/paths.Count);

                PrefabUtility.SaveAsPrefabAsset(go, prefabPath);
                GameObject.DestroyImmediate(go);
            }
        }

		EditorUtility.ClearProgressBar();
    }

	[MenuItem("Assets/UI Tools/Clear Miss Prefab")]
	static public void ClearMissPrefab()
	{
		UnityEngine.Object[] selects = Selection.GetFiltered(typeof(UnityEngine.Object), SelectionMode.DeepAssets);

		for (int i = 0; i < selects.Length; i++)
		{
			if (selects [i] is GameObject) {
				GameObject obj = selects [i] as GameObject;
				SpriteRenderer render = obj.GetComponent<SpriteRenderer> ();
				if (render != null && render.sprite == null) {
					string path = AssetDatabase.GetAssetPath (obj.GetInstanceID ());
					Debug.Log ("Clear Miss Prefab: " + path);
					AssetDatabase.DeleteAsset (path);
				}
			}
		}
        Debug.Log ("Done");
	}

    /// <summary>
    /// Marks current active scene dirty AND save.
    /// </summary>
    public static void MarkCurrentSceneDirty()
    {
        UnityEngine.SceneManagement.Scene scene = UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene();
        if (scene.IsValid())
        {
            UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(scene);
            UnityEditor.SceneManagement.EditorSceneManager.SaveScene(scene);
        }
        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();
    }

    /// <summary>
    /// Get list of gameobjects under parent gameobject(include self) which have type T inherited from Component 
    /// </summary>
    public static List<GameObject> GetGameObjectsHaveComponent<T>(GameObject parent) where T : Component
    {
        List<GameObject> gos = new List<GameObject>();
        if (parent.GetComponent<T>() != null)
            gos.Add(parent);
        for(int i = 0; i < parent.transform.childCount; ++i)
        {
            gos.AddRange(GetGameObjectsHaveComponent<T>(parent.transform.GetChild(i).gameObject));
        }
        return gos;
    }


    /// <summary>
    /// Get prefabs' paths in giving folder, use for AssetDataBase.LoadAssetsAtPath or some using.
    /// </summary>
    public static List<string> GetAssetsPathInFolder(string folderPath, bool isAllDir = true, string fileFix = "*.prefab")
    {
        string fullPath = Path.Combine(Application.dataPath, folderPath);
        string[] names = Directory.GetFiles(fullPath, fileFix, isAllDir ? SearchOption.AllDirectories : SearchOption.TopDirectoryOnly);
        List<string> fileNames = new List<string>();
        int discardeIndex = Application.dataPath.Length + 1;
        if (names != null && names.Length > 0)
        {
            for (int i = 0; i < names.Length; i++)
            {
                int length = names[i].Length - discardeIndex;
                names[i] = names[i].Substring(discardeIndex, length);
                names[i] = names[i].Replace("\\", "/");

                fileNames.Add(Path.Combine("Assets", names[i]));
            }
        }
        return fileNames;
    }

    /// <summary>
    /// Write serializeable datas to Json file.
    /// </summary>
    /// <param name="datas">serializeable datas.</param>
    /// <param name="path">whole path, include subfix.</param>
    public static void WriteToFile(object datas, string path, System.Action onComplete = null)
    {
        System.IO.FileStream fs = new System.IO.FileStream(path, System.IO.FileMode.Create, System.IO.FileAccess.Write);
        if( fs != null )
        {
            StringBuilder sb = new StringBuilder();
            System.IO.StringWriter writer = new System.IO.StringWriter(sb);
            LitJson.JsonMapper.ToJson(datas,
                new LitJson.JsonWriter(writer){
                PrettyPrint=true 
            });

            byte[] buff = Encoding.UTF8.GetBytes(sb.ToString());
            fs.Write(buff, 0, buff.Length);
            fs.Close();

            AssetDatabase.Refresh();
        }

        if (onComplete != null)
            onComplete();
    }
}
