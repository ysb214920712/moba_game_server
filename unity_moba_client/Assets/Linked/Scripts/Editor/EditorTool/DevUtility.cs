using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;

public class DevUtility : Editor
{
    [MenuItem("Tools/删除本地存档")]
    public static void Build()
    {
        string file = Path.Combine(Application.persistentDataPath, "archive");
        string last_account = Path.Combine(Application.persistentDataPath, "last_account");
        
        if( File.Exists(last_account) )
        {
            File.Delete(last_account);
        }

        if( File.Exists(file) )
        {
            File.Delete(file);
			Debug.Log("<color=green>删除本地存档成功！</color>");
        }
    }

    [MenuItem("Tools/Rainbow Folders/Apply")]
    public static void ApplyRainbowAssets()
    {
        string sourceDir = Application.dataPath.Replace("/Assets", "/Platform/Plugins/RainbowAssets");
        string destDir = Path.Combine(Application.dataPath, "Plugins/RainbowAssets");
        FileUtil.CopyFileOrDirectoryFollowSymlinks(sourceDir, destDir);
    }

    [MenuItem("Tools/Rainbow Folders/Clear")]
    public static void ClearRainbowAssets()
    {
        string destDir = Path.Combine(Application.dataPath, "Plugins/RainbowAssets");
        FileUtil.DeleteFileOrDirectory(destDir);
        FileUtil.DeleteFileOrDirectory(destDir + ".meta");
    }

}
