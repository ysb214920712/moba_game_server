using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
public class CreatUILuaUtil : EditorWindow 
{
    [MenuItem("Assets/UI Tools/Create Lua File")]
    static void create_window()
    {
        EditorWindow.GetWindow<CreatUILuaUtil>();
    }

    private void OnGUI() 
    {
        GUILayout.Label("选择一个UI预设体");
        if (GUILayout.Button("生成代码"))
        {
            if (Selection.activeGameObject != null && !string.IsNullOrEmpty(AssetDatabase.GetAssetPath(Selection.activeGameObject)))
            {
                Debug.Log("开始生成");
                CreatUILuaUtil.CreatUILuaFile(Selection.activeGameObject);

                AssetDatabase.Refresh();
            }
        }   

        if (Selection.activeGameObject != null && !string.IsNullOrEmpty(AssetDatabase.GetAssetPath(Selection.activeGameObject)))
        {
            GUILayout.Label(Selection.activeGameObject.name);
        }
        else
        {
            GUILayout.Label("未选择UI预设体");
        }
    }

    private void OnSelectionChange() 
    {
        this.Repaint();
    }

    //创建UILua文件的函数
    public static void CreatUILuaFile(GameObject selectGameObject)
    {
        string gameObjectName = selectGameObject.name;
        string fileName = "ui_" + gameObjectName;
        string className = "UI" + CreatUILuaUtil.stringToCamel(gameObjectName);
        string filePath = Application.dataPath + "/Scripts/lua/ui/" + fileName + ".lua";
        if (File.Exists(filePath)) {
            Debug.Log("生成失败，文件已存在");
            return;
        }
        StreamWriter sw = new StreamWriter(filePath);
        sw.WriteLine(
            "---@class " + className + " : UIBase\n" 
            + className + " = class(\"" + className + 
            "\", UIBase)\nlocal M = " + className);

        sw.WriteLine("\nfunction M:on_create()\n\tself:init_btn_clickevent()\n\tself:init_listener()\nend");
        sw.WriteLine("\nfunction M:init_btn_clickevent()\n\nend");
        sw.WriteLine("\nfunction M:init_listener()\n\nend");
        sw.WriteLine("\nfunction M:on_open()\n\nend");
        sw.WriteLine("\nfunction M:on_close()\n\nend");
        sw.WriteLine("\nreturn M");

        sw.Flush();
        sw.Close();
        Debug.Log("生成成功:" + filePath);
    }

    public static string stringToCamel(string str)
    {
        string[] strItems  = str.Split('_');
        string strItemTarget = "";
        for (int j = 0; j < strItems.Length; j++)
        {
            string temp = strItems[j].ToString();
            string temp1 = temp[0].ToString().ToUpper();
            string temp2 = "";
            temp2 = temp1 + temp.Remove(0, 1);
            strItemTarget += temp2;
        }
        return strItemTarget;
    }
}
