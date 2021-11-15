using UnityEngine;
using System.Collections;
using UnityEditor;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;
 
public class FindReferences
{
    #if UNITY_EDITOR_WIN
    [MenuItem("Assets/UI Tools/Find References", false)]
    static private void Find()
    {
        EditorSettings.serializationMode = SerializationMode.ForceText;
        string path = AssetDatabase.GetAssetPath(Selection.activeObject);
        if (!string.IsNullOrEmpty(path))
        {
            string guid = AssetDatabase.AssetPathToGUID(path);
            List<string> withoutExtensions = new List<string>(){".prefab",".unity",".mat",".asset"};
            string[] files = Directory.GetFiles(Application.dataPath, "*.*", SearchOption.AllDirectories)
                .Where(s => withoutExtensions.Contains(Path.GetExtension(s).ToLower())).ToArray();
            int startIndex = 0;
 
            EditorApplication.update = delegate()
            {
                string file = files[startIndex];
            
                 bool isCancel = EditorUtility.DisplayCancelableProgressBar("匹配资源中", file, (float)startIndex / (float)files.Length);
 
                if (Regex.IsMatch(File.ReadAllText(file), guid))
                {
                    Debug.Log(file, AssetDatabase.LoadAssetAtPath<Object>(GetRelativeAssetsPath(file)));
                }
 
                startIndex++;
                if (isCancel || startIndex >= files.Length)
                {
                    EditorUtility.ClearProgressBar();
                    EditorApplication.update = null;
                    startIndex = 0;
                    Debug.Log("匹配结束");
                }
 
            };
        }
    }
 
    [MenuItem("Assets/UI Tools/Find References", true)]
    static private bool VFind()
    {
        string path = AssetDatabase.GetAssetPath(Selection.activeObject);
        return (!string.IsNullOrEmpty(path));
    }
 
    static private string GetRelativeAssetsPath(string path)
    {
        return "Assets" + Path.GetFullPath(path).Replace(Path.GetFullPath(Application.dataPath), "").Replace('\\', '/');
    }
    #endif

    //------------------------------------------------仅限MacOS 效率更高-------------------------------------------------
    //------------------------------来源: https://gist.github.com/jringrose/617d4cba87757591ce28 -----------------------
    //------------------------------------------------------------------------------------------------------------------
    #if UNITY_EDITOR_OSX
	[MenuItem("Assets/UI Tools/Find References", false)]
	private static void FindProjectReferences()
	{
		string appDataPath = Application.dataPath;
		string output = "";
		string selectedAssetPath = AssetDatabase.GetAssetPath (Selection.activeObject);
		List<string> references = new List<string>();
		
		string guid = AssetDatabase.AssetPathToGUID (selectedAssetPath);
		
		var psi = new System.Diagnostics.ProcessStartInfo();
		psi.WindowStyle = System.Diagnostics.ProcessWindowStyle.Maximized;
		psi.FileName = "/usr/bin/mdfind";
		psi.Arguments = "-onlyin " + Application.dataPath + " " + guid;
		psi.UseShellExecute = false;
		psi.RedirectStandardOutput = true;
		psi.RedirectStandardError = true;
		
		System.Diagnostics.Process process = new System.Diagnostics.Process();
		process.StartInfo = psi;
		
		process.OutputDataReceived += (sender, e) => {
			if(string.IsNullOrEmpty(e.Data))
				return;
			
			string relativePath = "Assets" + e.Data.Replace(appDataPath, "");
			
			// skip the meta file of whatever we have selected
			if(relativePath == selectedAssetPath + ".meta")
				return;
			
			references.Add(relativePath);
			
		};
		process.ErrorDataReceived += (sender, e) => {
			if(string.IsNullOrEmpty(e.Data))
				return;
			
			output += "Error: " + e.Data + "\n";
		};
		process.Start();
		process.BeginOutputReadLine();
		process.BeginErrorReadLine();
		
		process.WaitForExit(2000);
		
		foreach(var file in references){
			output += file + "\n";
			Debug.Log(file, AssetDatabase.LoadMainAssetAtPath(file));
		}
		
		Debug.LogWarning(references.Count + " references found for object " + Selection.activeObject.name + "\n\n" + output);
	}
	
	#endif
    //---------------------------------------------------------------------------------------------------------------------
}