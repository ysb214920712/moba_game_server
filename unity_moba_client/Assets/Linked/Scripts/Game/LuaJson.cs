
using System;
using System.Collections;
using System.Text.RegularExpressions;
using UnityEngine;
using XLua;

public class LuaJson
{
    public static string UnEscape(string json)
    {
        return Regex.Unescape(json);
    }

    public static LuaTable decode(string json)
    {
        var o = MiniJSON.jsonDecode(json);
        if (null == o)
            return null;
        var tab = unParseValue(o);
        if (tab.GetType() == typeof(LuaTable))
        {
            return tab as LuaTable;
        }
        return null;
    }

    public static string encode(LuaTable table)
    {
        object obj = ParseTable(table);
        return MiniJSON.jsonEncode(obj);
    }

    public static object ParseTable(LuaTable luaTable)
    {
        Hashtable table = new Hashtable();
        ArrayList array = new ArrayList();

        bool isArray = true;

        luaTable.ForEach(
            (object pkey, object pvalue) => {
                object key = pkey;
                object value = ParseValue(pvalue);
                if( value != null )
                    table.Add(ConvertVType(key), value);
            }
        );

        for (int i = 0; i < table.Count; i++)
        {
            if (!table.ContainsKey(i + 1))
            {
                isArray = false;
                break;
            }
            else
            {
                array.Add(table[i + 1]);
            }
        }

        if (isArray)
            return array;
        return table;
    }

    public static object ParseValue(object value)
    {
        if (typeof(LuaTable) == value.GetType())
        {
            return ParseTable((LuaTable)value);
        }
        else
        if (typeof(double) == value.GetType())
        {
            double d = (double)value;
            if (Math.Ceiling(d) == Math.Floor(d))
                return (Int64)d;
            return value;
        }
        else
        {
            Type type = value.GetType();
            if( type.IsPrimitive() || type == typeof(string) )
                return value;
        }
        return null;
    }

    static object ConvertVType(object value)
    {
        if (typeof(double) == value.GetType())
        {
            double d = (double)value;
            if (Math.Ceiling(d) == Math.Floor(d))
                return (int)d;
        }
        else if (typeof(Int64) == value.GetType())
        {
            return Convert.ToInt32(value);
        }
        return value;
    }

    private static void InvalidStream(string str)
    {
        throw new Exception(str);
    }

    private static object unParseValue(object value)
    {
        if (null == value) return value;
        var type = value.GetType();
        if (typeof(ArrayList) == type)
            return unPackArray((ArrayList)value);
        else if (typeof(Hashtable) == type)
            return unPackTable((Hashtable)value);

        if (typeof(double) == value.GetType())
        {
            double d = (double)value;
            if (Math.Ceiling(d)==Math.Floor(d))
                return (Int64)d;
        }
        return value;
    }

    private static LuaTable unPackTable(Hashtable table)
    {
        LuaTable luaTable = GameManager.currentLuaEnv.NewTable();
        foreach (DictionaryEntry item in table)
        {
            var key = item.Key;
            if (key is string)
            {
                luaTable.Set(key as string, unParseValue(item.Value));
            }
            else if (key is int)
            {
                int k = (int)key;
                luaTable.Set(k, unParseValue(item.Value));
            }
            else
            {
                InvalidStream("can't parse type:" + key.GetType());
            }

        }

        return luaTable;
    }

    private static LuaTable unPackArray(ArrayList list)
    {
        LuaTable luaTable = GameManager.currentLuaEnv.NewTable();
        for (int i = 0; i < list.Count; i++)
        {
            luaTable.Set(i + 1, unParseValue(list[i]));
        }
        return luaTable;
    }
}
