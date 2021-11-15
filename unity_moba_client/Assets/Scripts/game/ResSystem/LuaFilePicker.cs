using UnityEngine;
using System.Collections;

public class LuaFilePicker
{
    public static byte[] Load(string fn)
    {
        GLog.Log("LuasLoader {0}", fn);

        fn = fn.Replace(".", "/");
        string bytefn = fn.Replace("/", "+");

#if UNITY_EDITOR && !USE_BUNDLE_IN_EDITOR
        string filePath = System.IO.Path.Combine(Defines.LuaConfigPath, string.Format("{0}.lua", fn));
#elif UNITY_STANDALONE
        string filePath = System.IO.Path.Combine(Application.dataPath, string.Format("Config/{0}.lua", fn));
#endif
#if UNITY_STANDALONE || (UNITY_EDITOR && !USE_BUNDLE_IN_EDITOR)
        if (!System.IO.File.Exists(filePath))
        {
            filePath = System.IO.Path.Combine(Defines.LuaSourcePath, string.Format("{0}.lua", fn));
        }
        if (!System.IO.File.Exists(filePath))
        {
            filePath = System.IO.Path.Combine(Application.dataPath, string.Format("Luas/{0}.bytes", bytefn));
        }

        // AssetDatabase.load 无法加载 .lua 的文件，也不能加载外部目录文件
        if (System.IO.File.Exists(filePath))
        {
            System.IO.FileStream fs = System.IO.File.OpenRead(filePath);
            int len = (int)fs.Length;
            byte[] buffer = new byte[len];
            fs.Read(buffer, 0, len);
            fs.Close();

            return buffer;
        }
#endif

        string hash = GHelper.Md5Sum(bytefn);
        string fileName = string.Format("files/{0}", hash);
        
        BufferAsset text = XLoader.Load<BufferAsset>(fileName);
        if (text)
        {
            return text.bytes;
        }
        return null;
    }
}
