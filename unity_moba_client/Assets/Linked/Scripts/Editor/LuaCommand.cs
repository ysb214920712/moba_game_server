using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Text;
using System;
using XLua;
using System.IO;
public class LuaCommand : EditorWindow
{
    [MenuItem("XLua/LuaCommand")]
    static void Open()
    {
        var win = EditorWindow.GetWindow<LuaCommand>("LuaCommand");
        win.loadCommandList();
    }
    #region COMMON_DEFINE
    const string COMMON_DEFINE = @"
local function prettyTabToStr(tab, level, path, visited)
    local result = ''
    if level == nil then
        visited = {}
        level = 0
        path = '(self)'
    end

    if visited[tab] then
        return string.format( '%s%s\n', string.rep('\t', level), visited[tab] )
    end
    visited[tab] = path

    result = result .. string.format('%s{\n', string.rep('\t', level))
    local ignore = {}
    --[[ -- can not use iparis access CS
    for i,v in ipairs(tab)do
        ignore[i] = true
        if type(v) == 'table' then
            local newPath = path .. '.' .. tostring(k)
            if visited[v] then
                local existPath = visited[v]
                local _,count1 = string.gsub(existPath, '%.', function()end)
                local _,count2 = string.gsub(newPath, '%.', function()end)
                if count2 < count1 then
                    visited[v] = newPath
                end
                result = result .. string.format('%s%s\n', string.rep('\t', level+1), visited[v])
            else
                result = result .. string.format('%s\n', string.rep('\t', level+1))
                result = result .. prettyTabToStr(v, level+1, newPath, visited)
            end
        else
            result = result .. string.format('%s%s,\n', string.rep('\t', level+1), tostring(v))
        end
    end
    ]]
    for k,v in pairs(tab)do
        if not ignore[k] then
            local typeOfKey = type(k)
            local kStr = k
            if typeOfKey == 'string' then
                if not k:match('^[_%a][_%w]*$') then
                    kStr = '[' .. k .. '] = '
                else
                    kStr = tostring(k) .. ' = '
                end
            else
                kStr = string.format('[%s] = ', tostring(k))
            end

            if type(v) == 'table' then
                local newPath = path .. '.' .. tostring(k)
                if visited[v] then
                    local existPath = visited[v]
                    local _,count1 = string.gsub(existPath, '%.', function()end)
                    local _,count2 = string.gsub(newPath, '%.', function()end)
                    if count2 < count1 then
                        visited[v] = newPath
                    end
                    result = result .. string.format('%s%s%s\n', string.rep('\t', level+1), tostring(kStr), visited[v])
                else
                    result = result .. string.format('%s%s\n', string.rep('\t', level+1), tostring(kStr))
                    result = result .. prettyTabToStr(v, level+1, newPath, visited)
                end
            else
                result = result .. string.format('%s%s%s,\n', string.rep('\t', level+1), tostring(kStr), tostring(v))
            end
        end
    end
    result = result .. string.format('%s}\n', string.rep('\t', level))
    return result
end
local setfenv = setfenv or function(f,env) debug.setupvalue(f,1,env) end
local env = setmetatable({}, {__index=_G, __newindex=function(t,k,v)
    print('set global', k, '=', v)
    _G[k] = v
end})
local function printVar(val)
    if type(val) == 'table' then
        print(prettyTabToStr(val))
    else
        print(val)
    end
end
local function eval(code)
    local func,err = load('return ' .. code)
    if not func then
        error(err)
    end
    setfenv(func, env)
    return func()
end
local function compile(code)
    local func,err = load('do ' .. code .. ' end')
    if not func then
        error(err)
    end
    setfenv(func, env)
    func()
end
local function printExpr(str)
    if str:match('^[_%a][_%w]*$') then
        printVar(env[str])
    else
        local result = {eval(str)}
        if #result > 1 then
            printVar(result)
        else
            printVar(result[1])
        end
    end
end
local function dir(val)
    if type(val) == 'table' then
        local t = {}
        for k,v in pairs(val)do
            table.insert(t, string.format('%s=%s', tostring(k), tostring(v)))
        end
        print(table.concat(t, '\n'))
    else
        print(val)
    end
end
local function dirExpr(str)
    if str:match('^[_%a][_%w]*$') then
        dir(env[str])
    else
        local result = {eval(str)}
        if #result > 1 then
            dir(result)
        else
            dir(result[1])
        end
    end
end
";
    #endregion
    string inputText = "";

    List<string> commandList = new List<string>();

    Vector2 scrollPosition = Vector2.zero;

    bool initedStyle = false;

    float inputAreaPosY = 0f;
    float inputAreaHeight = 50f;
    bool inputAreaResizing;
    string commandFilePath
    {
        get
        {
            return Path.Combine(Application.persistentDataPath, "luacommandList.txt");
        }
    }
    static LuaEnv current = null;
    void OnDestroy()
    {
        current = null;
    }

    private void loadCommandList()
    {
        commandList.Clear();

        if (!File.Exists(commandFilePath))
        {
            return;
        }
        Debug.Log("Load lua command list from:" + commandFilePath);
        FileStream fs = System.IO.File.OpenRead(commandFilePath);
        if (fs != null)
        {
            StreamReader sr = new StreamReader(fs);
            string strLine = sr.ReadLine();
            while (strLine != null)
            {
                commandList.Add(strLine);
                strLine = sr.ReadLine();
            }
            sr.Close();
            fs.Close();
        }
    }
    private void saveCommandList()
    {
        FileStream fs = System.IO.File.OpenWrite(commandFilePath);


        if (fs != null)
        {
            fs.SetLength(0);
            StreamWriter sw = new StreamWriter(fs);
            foreach (var cmd in commandList)
            {
                sw.WriteLine(cmd);
            }
            sw.Close();
            fs.Close();
        }
    }

    void OnGUI()
    {
        if (!initedStyle)
        {
            //GUIStyle entryInfoTyle = "CN EntryInfo";
            initedStyle = true;
        }
        if (GameManager.currentLuaEnv != null && GameManager.currentLuaEnv != current)
        {
            current = GameManager.currentLuaEnv;
        }

        //Output Text Area
        scrollPosition = GUILayout.BeginScrollView(scrollPosition, GUILayout.Width(Screen.width), GUILayout.ExpandHeight(true));

        for (var i = 0; i < commandList.Count; ++i)
        {
            var cmd = commandList[i];

            GUILayout.BeginHorizontal();
            if (GUILayout.Button("<"))
            {
                DoCommand(cmd);
            }

            if (GUILayout.Button("X"))
            {
                commandList.RemoveAt(i);
                saveCommandList();
            }
            EditorGUILayout.SelectableLabel(cmd, GUILayout.MaxHeight(16));

            GUILayout.EndHorizontal();
        }
        GUILayout.EndScrollView();

        if (Event.current.type == EventType.Repaint)
        {
            inputAreaPosY = GUILayoutUtility.GetLastRect().yMax;
        }

        //Drag Spliter
        ResizeScrollView();

        //Input Area
        GUI.SetNextControlName("Input");
        inputText = EditorGUILayout.TextField(inputText, GUILayout.Height(inputAreaHeight));

        if (Event.current.isKey && Event.current.type == EventType.KeyUp)
        {
            bool refresh = false;
            if (Event.current.keyCode == KeyCode.Return)
            {
                if (inputText != "")
                {
                    int findIdx = -1;
                    for (var i = 0; i < commandList.Count; ++i)
                    {
                        if (commandList[i] == inputText)
                        {
                            findIdx = i;
                        }
                    }
                    if (findIdx != -1)
                    {
                        commandList.RemoveAt(findIdx);
                    }
                    commandList.Add(inputText);
                    if (commandList.Count > 100)
                    {
                        commandList.RemoveAt(0);
                    }
                    saveCommandList();

                    DoCommand(inputText);
                    inputText = "";
                    refresh = true;
                }
            }

            if (refresh)
            {
                Repaint();
                EditorGUIUtility.editingTextField = false;
                GUI.FocusControl("Input");
            }
        }
    }
    void ResizeScrollView()
    {
        Rect dragSpliterRect = new Rect(0f, inputAreaPosY + 2, Screen.width, 2);
        EditorGUI.DrawRect(dragSpliterRect, Color.black);
        EditorGUIUtility.AddCursorRect(dragSpliterRect, MouseCursor.ResizeVertical);
        GUILayout.Space(4);

        Event e = Event.current;
        if (e.type == EventType.MouseDown && dragSpliterRect.Contains(e.mousePosition))
        {
            e.Use();
            inputAreaResizing = true;
        }
        if (e.type == EventType.MouseDrag)
        {
            if (inputAreaResizing)
            {
                e.Use();
                inputAreaHeight -= Event.current.delta.y;
                inputAreaHeight = Mathf.Max(inputAreaHeight, 20f);
            }
        }

        if (e.type == EventType.MouseUp)
            inputAreaResizing = false;
    }

    void DoCommand(string str)
    {
        if (current == null)
            return;

        if (string.IsNullOrEmpty(str))
            return;

        int index = str.IndexOf(" ");
        string cmd = str;
        string tail = "";
        if (index > 0)
        {
            cmd = str.Substring(0, index).Trim().ToLower();
            tail = str.Substring(index + 1);
        }
        if (cmd == "p")
        {
            if (tail == "")
                return;
            Do(tail, "return printExpr");
        }
        else if (cmd == "dir")
        {
            if (tail == "")
                return;
            Do(tail, "return dirExpr");
        }
        else
        {
            Do(str, "return compile");
        }
    }

    void Do(string tail, string type)
    {
        if (current == null) return;

        var f = current.LoadString(COMMON_DEFINE + type, "XLuaConsole");
        var os = f.Call();
        if (os.Length > 0)
        {
            var luaFun = os[0] as LuaFunction;
            if (luaFun != null)
            {
                luaFun.Call(tail);
            }
        }
    }
}
