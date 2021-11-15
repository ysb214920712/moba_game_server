using System;
using System.Collections.Generic;
using XLua;

public struct SRGameOptionStruct
{
    public string category;
    public string name;
    public Object value;
    public double minValue;
    public double maxValue;
    public double increment;
    public SRGameOptions.SRGameOptionsEnum typeEnum;
    public LuaFunction callback;
}

public class SRGameOptions
{
    [GCOptimize]
    public enum SRGameOptionsEnum
    {
        Float = 0,
        Double = 1,
        Int = 2,
        String = 3,
        Bool = 4,
        Function = 5,
    }

    private static List<SRGameOptionStruct> _options = new List<SRGameOptionStruct>();
    private static LuaFunction _initFunc;

    public static void initAddFunctions(LuaFunction luaFunction)
    {
        _initFunc = luaFunction;
    }

    public static void AddDebuggerOption(SRGameOptionsEnum optionEnum, string category, string name, string value, LuaFunction luaFunction, double minValue, double maxValue, double increment)
    {
        var obj = new SRGameOptionStruct();
        obj.category = category;
        obj.name = name;
        obj.minValue = minValue;
        obj.maxValue = maxValue;
        obj.increment = increment;
        obj.typeEnum = optionEnum;
        obj.callback = luaFunction;

        switch (optionEnum)
        {
            case SRGameOptionsEnum.Float:
                obj.value = Convert.ToSingle(value); ;
                break;
            case SRGameOptionsEnum.Double:
                obj.value = Convert.ToDouble(value); ;
                break;
            case SRGameOptionsEnum.Int:
                obj.value = Convert.ToInt32(value); ;
                break;
            case SRGameOptionsEnum.String:
                obj.value = value;
                break;
            case SRGameOptionsEnum.Bool:
                obj.value = Convert.ToBoolean(value);
                break;
            default:
                break;
        }

        _options.Add(obj);
    }

    public static List<SRGameOptionStruct> GetSRGameOptionList()
    {
        ClearSRGameOptionList();
        if (_initFunc != null)
            _initFunc.Call();

        return _options;
    }

    public static void ClearSRGameOptionList()
    {
        _options.Clear();
    }
    
    public static void Clear()
    {
        if (_initFunc != null)
        {
            _initFunc.Dispose();
            _initFunc = null;
        }
        ClearSRGameOptionList();
    }
}