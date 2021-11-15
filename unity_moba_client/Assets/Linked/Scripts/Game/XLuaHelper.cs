using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

[LuaCallCSharp]
public class XLuaHelper
{
    static public void Yieldk(object y, LuaFunction f)
    {
        CoroutineHelper.Run(yieldReturn(y,f));
    }

    static IEnumerator yieldReturn(object y, LuaFunction f)
    {
        if (y is IEnumerator)
            yield return CoroutineHelper.Run((IEnumerator)y);
        else
            yield return y;
        f.Call();
    }

    public static LuaTable TraveEnumToLuaTable(Type eType, LuaTable tb)
    {
        foreach (var e in Enum.GetValues(eType))
        {
            tb.Set(e.ToString(), (int)e);
        }
        return tb;
    }
}
