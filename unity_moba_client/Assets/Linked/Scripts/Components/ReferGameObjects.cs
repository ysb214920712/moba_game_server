using System;
using UnityEngine;
using System.Collections.Generic;
using Object = UnityEngine.Object;
using UnityEngine.UI;
using XLua;


public class ReferGameObjects : MonoBehaviour
{
    /// <summary>
    /// for index
    /// </summary>
    [HideInInspector]
    public List<string> names;//= new List<string>();
    [HideInInspector]
    public Object[] monos;// = new List<Behaviour>();
    [HideInInspector]
    public bool isDestroyed = false;

    Dictionary<string, object> cache = new Dictionary<string, object>();

    public Object Get(string n)
    {
        int index = names.IndexOf(n);
        if (index == -1)
        {
            //Debug.LogWarning(gameObject.name + "ReferGameObjects : not found the key [" + n + "]");
            return null;
        }
        else
            return monos[index];
    }

    public void SaveCache(string k, object v)
    {
        if (!cache.ContainsKey(k))
        {
            cache.Add(k, v);
        }
        else
        {
            cache[k] = v;
        }

    }

    public object GetCache(string k)
    {
        if (cache.ContainsKey(k))
        {
            return cache[k];
        }
        return null;
    }

    public bool HasKey(string key)
    {
        return names.Contains(key);
    }

    /// <summary>
    /// monos的长度
    /// </summary>
    public int Length
    {
        get
        {
            if (monos != null)
                return monos.Length;
            else
                return 0;
        }
    }

    public void ExportToLuaTable(LuaTable tb){
        for(var i = 0; i < names.Count; ++i){
            tb.Set<string,Object>(names[i],monos[i]);
        }
    }
}
