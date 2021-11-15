using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEngine.UI;

public class ImageSpriteMaker : MonoBehaviour
{
    /// <summary>
    /// 右键UI工具，创建texture的sprite包装器
    /// </summary>
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

			
		for(int i=0;i<paths.Count;i++)
		{
			// string[] pathSplits = paths[i].Split(new char[1]{'/'});
            string savePath = Defines.SpritePrefabPath;
            // for(int j=2;j<pathSplits.Length-1;j++){
            //     savePath += pathSplits[j]+"/";
            // }
            if (!Directory.Exists(savePath))
            {
                Directory.CreateDirectory(savePath);
            }

			Sprite sp = AssetDatabase.LoadAssetAtPath<Sprite>(paths[i]);
            if (sp != null)
            {
                GameObject go = new GameObject(sp.name);
                go.AddComponent<SpriteRenderer>().sprite = sp;
                string prefabPath = Path.Combine(savePath, sp.name+".prefab");

				EditorUtility.DisplayProgressBar ("Sprite Making...", prefabPath, (i+1)/paths.Count);

                PrefabUtility.SaveAsPrefabAsset(go, prefabPath);
                GameObject.DestroyImmediate(go);
            }

        }

		EditorUtility.ClearProgressBar ();

//         string dirName = "";
//         string pngName = SelectObjectPathInfo(ref dirName).Split('.')[0];
// 
//         string pngFileName = dirName + pngName + ".png";
// 
//         Debug.Log(pngFileName);
// 
//         Sprite newSprite = AssetDatabase.LoadAssetAtPath<Sprite>(pngFileName);
//         GameObject go = new GameObject(newSprite.name);
//         go.AddComponent<SpriteRenderer>().sprite = newSprite;
// 
//         string allPath = Application.dataPath + "/Resources/Sprites/" + pngName + ".prefab";
//         string prefabPath = allPath.Substring(allPath.IndexOf("Assets"));
//         PrefabUtility.CreatePrefab(prefabPath, go);
//         GameObject.DestroyImmediate(go);
// 
//         Debug.Log("build prefab:" + prefabPath);
    }


    public static string SelectObjectPathInfo(ref string dirName)
    {
        if (UnityEditor.Selection.activeInstanceID < 0)
        {
            return "";
        }

        string path = UnityEditor.AssetDatabase.GetAssetPath(UnityEditor.Selection.activeInstanceID);

        dirName = Path.GetDirectoryName(path) + "/";
        return Path.GetFileName(path);
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

	}
}
