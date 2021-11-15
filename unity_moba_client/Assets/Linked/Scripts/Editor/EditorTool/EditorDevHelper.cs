using UnityEngine;
using UnityEditor;
using System.Collections;
using System.IO;

public class EditorDevHelper : MonoBehaviour {
    [MenuItem("Assets/Reimport UnityExtensions Assemblies", false, 100)]
    static void ReimportUnityAssemblies()
    {
        var path = EditorApplication.applicationContentsPath + "/UnityExtensions/Unity/";
        var dlls = Directory.GetFiles(path, "*.dll", SearchOption.AllDirectories);
        foreach (var dll in dlls)
        {
            AssetDatabase.ImportAsset(dll, ImportAssetOptions.ForceUpdate | ImportAssetOptions.DontDownloadFromCacheServer);
        }
    }
}
