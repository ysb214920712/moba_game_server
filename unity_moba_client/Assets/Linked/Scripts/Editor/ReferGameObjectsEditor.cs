using UnityEngine;
using System.Collections.Generic;
using UnityEditor;
using System.Text.RegularExpressions;
using System.IO;

[CustomEditor(typeof(ReferGameObjects), true)]
public class ReferGameObjectsEditor : Editor
{
    ReferGameObjects lk = null;
    void OnEnable()
    {
        lk = target as ReferGameObjects;
        if (lk.monos == null)
            lk.monos = new Object[0];
        if (lk.names == null)
            lk.names = new List<string>();
    }


    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();
        EditorGUILayout.Space();
        DrawLinkerEditor();
    }

    protected void DrawLinkerEditor()
    {
        Undo.RecordObject(target, "F");

        for (int i = 0; i < lk.monos.Length; i++)
        {
            EditorGUILayout.BeginHorizontal();
            DrawItem(i);
            EditorGUILayout.EndHorizontal();
        }

        if (EditorDrawUtils.FixGreenButton("Add Item"))
        {
            AddItem(null);
        }

        //EditorUtility.SetDirty(target);
    }

    string FormatName(string s)
    {
        return Regex.Replace(s, @"[^A-Za-z0-9_]", "").ToLower();
    }

    void DrawItem(int index)
    {
        string li = GUILayout.TextField((index + 1).ToString(), GUILayout.Width(20));
        int ii = index + 1;
        int.TryParse(li, out ii);
        ii = Mathf.Clamp(ii, 1, lk.names.Count);
        if (ii != index + 1)
        {
            SwitchItemIndexInsert(index, ii - 1);
        }

        EditorDrawUtils.BeginStyleBackground(Color.cyan, () =>
        {
            lk.names[index] = FormatName(lk.names[index]);
            lk.names[index] = EditorGUILayout.TextField(lk.names[index]);
        });
        Object selectType = GetMonoAtIndex(index);
        if (selectType != null)
        {
            System.Type currentType = selectType.GetType();

            GameObject go = null;
            if (currentType == typeof(GameObject))
                go = (GameObject)selectType;
            else if (currentType.IsSubclassOf(typeof(Component)))
                go = ((Component)selectType).gameObject;

            if (go != null)
            {
                List<Object> allowTypes = new List<Object>() { go };
                Component[] cs = go.GetComponents<Component>();
                allowTypes.AddRange(cs);
                int selectIndex = allowTypes.IndexOf(selectType);
                if (selectIndex == -1) selectIndex = 0;
                EditorDrawUtils.BeginStyleBackground(Color.black, () =>
                {
                    selectIndex = EditorGUILayout.Popup(selectIndex, ConvertTypeArrayToStringArray(allowTypes));
                });
                if (lk.names[index] == "")
                {
                    lk.names[index] = FormatName(allowTypes[selectIndex].name);
                }
                lk.monos[index] = allowTypes[selectIndex];
            }
        }

        lk.monos[index] = EditorGUILayout.ObjectField(lk.monos[index], typeof(UnityEngine.Object), true);

        var objfind = GetMonoAtIndex(index);
        GUILayout.BeginHorizontal();
        {
            if (objfind != null && lk.names[index] != FormatName(objfind.name))
            {
                if (EditorDrawUtils.ColorButton(Color.green, "❤", GUILayout.Width(25)))
                {
                    lk.names[index] = "";
                }
            }
            if (EditorDrawUtils.ColorButton(Color.red, "✖", GUILayout.Width(25)))
            {
                RemoveItemAtIndex(index);
            }
        }
        GUILayout.EndHorizontal();
    }

    void SwitchItemIndex(int a, int b)
    {
        Object oa = lk.monos[a];
        lk.monos[a] = lk.monos[b];
        lk.monos[b] = oa;

        string sa = lk.names[a];
        lk.names[a] = lk.names[b];
        lk.names[b] = sa;
    }

    void SwitchItemIndexInsert(int from, int to)
    {
        if (from > to)
        {
            for (int i = from; i > to; i--)
            {
                SwitchItemIndex(i, i - 1);
            }
        }
        else if (from < to)
        {
            for (int i = from; i < to; i++)
            {
                SwitchItemIndex(i, i + 1);
            }
        }
    }

    void AddItem(UnityEngine.Object obj)
    {
        List<UnityEngine.Object> monos = new List<Object>(lk.monos);
        monos.Add(obj);
        lk.names.Add("");
        lk.monos = monos.ToArray();
    }

    void RemoveItemAtIndex(int index)
    {
        List<Object> monos = new List<Object>(lk.monos);
        monos.RemoveAt(index);
        lk.monos = monos.ToArray();
        lk.names.RemoveAt(index);
    }

    Object GetMonoAtIndex(int index)
    {
        if (index >= 0 && index < lk.monos.Length)
            return lk.monos[index];
        return null;
    }

    //转换类型数组为string 数组,用来enum 下拉菜单
    static string[] ConvertTypeArrayToStringArray(List<Object> tps)
    {
        List<string> temp = new List<string>();
        for (int i = 0; i < tps.Count; i++)
        {
            string s = tps[i].GetType().ToString();
            int index = s.LastIndexOf('.');
            if (index != -1)
            {
                index += 1;
                s = s.Substring(index);
            }

            int n = 0;
            for (int j = 0; j < temp.Count; j++)
            {
                string ts = temp[j].Split('|')[0];
                if (ts == s)
                    n += 1;
            }
            if (n > 0)
                s += "|  " + n;
            temp.Add(s);
        }
        return temp.ToArray();
    }
}