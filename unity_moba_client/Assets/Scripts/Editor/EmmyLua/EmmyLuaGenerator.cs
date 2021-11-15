using System;
using System.Collections.Generic;
using System.Reflection;
using System.Reflection.Emit;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Linq;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEditor;
using UnityEngine.Profiling;
using XLua;

public static class EmmyLuaGenerator
{
    public static string target_path = Application.dataPath + "/../EmmyLuaGen/";
    private static Regex regex = new Regex(@"`[0-9]\[[\w\s\d`.,\[\]]+\]");
    private static Regex regex2 = new Regex(@"`[0-9].[\w\s\d`.,\[\]]+");

    private static Type[] GetTypes()
    {
        var unityTypes = from assembly in AppDomain.CurrentDomain.GetAssemblies()
            where !(assembly.ManifestModule is ModuleBuilder)
                    && assembly.FullName != "UnityEditor"
            from type in assembly.GetExportedTypes()
            where type.BaseType != typeof(MulticastDelegate)
                    && !type.IsInterface
            select type;

        var arr = unityTypes.ToArray();

        return arr;
    }

    static bool IsOverride(MethodBase method)
    {
        var m = method as MethodInfo;
        return m != null && !m.IsConstructor && m.IsVirtual && (m.GetBaseDefinition().DeclaringType != m.DeclaringType);
    }

    static int OverloadCosting(MethodBase mi)
    {
        int costing = 0;

        if (!mi.IsStatic)
        {
            costing++;
        }

        foreach (var paraminfo in mi.GetParameters())
        {
            if ((!paraminfo.ParameterType.IsPrimitive ) && (paraminfo.IsIn || !paraminfo.IsOut))
            {
                costing++;
            }
        }
        costing = costing * 10000 + (mi.GetParameters().Length + (mi.IsStatic ? 0 : 1));
        return costing;
    }

    private static bool isObsolete(MemberInfo mb)
    {
        if (mb == null) return false;
        ObsoleteAttribute oa = mb.GetCustomAttributes(typeof(ObsoleteAttribute), false).FirstOrDefault() as ObsoleteAttribute;
        return oa != null && oa.IsError;
    }

    private static bool isObsolete(Type type)
    {
        if (type == null) return false;
        if (isObsolete(type as MemberInfo))
        {
            return true;
        }
        return (type.DeclaringType != null) ? isObsolete(type.DeclaringType) : false;
    }

    [MenuItem("EmmyLua/GenAnnotation")]
    public static void GenAnnotation()
    {
        if (Directory.Exists(target_path))
            Directory.Delete(target_path, true);

        Directory.CreateDirectory(target_path);

        List<string> spaces = new List<string>();
        foreach (var annotation_type in GetTypes())
        {
            string name;
            if (string.IsNullOrEmpty(annotation_type.Namespace))
            {
                name = "CSGlobal";
            } else {
                name = annotation_type.Namespace;
                List<int> sub_indexs = new List<int>();
                int ii = name.IndexOf('.');
                while (ii > -1 && ii < name.Length)
                {
                    sub_indexs.Add(ii);
                    ii = name.IndexOf('.', ii + 1);
                }
                foreach(var i in sub_indexs)
                {
                    spaces.Add(name.Substring(0, i));
                }
                spaces.Add(name);
            }

            string filePath = target_path + name + ".lua";
            GenOneFile(annotation_type, filePath);
        }
        spaces = spaces.Distinct().ToList();

        GenNamespaceFile(spaces);
    }

    private static string GetParamName(string name)
    {
        if (name == "function" || name == "end" ||name == "local")
            name = "_" + name;
        else if (string.IsNullOrEmpty(name))
            name = "nil";

        return name;
    }

    private static string GetTypeName(Type type)
    {
        string name = type.FullName;
        if (!string.IsNullOrEmpty(name)) {
            name = name.Replace('+', '.').Replace("&", "").Replace("*", "");
            int idx = name.IndexOf('`');
            if (idx > 0)
                name = name.Substring(0, idx);

            name = name.Replace("[,]","[][]").Replace("[,,]","[][][]");
        } else {
            name = "any";
        }
        return name;
    }

    private static string GenPropertyInfo(Type type)
    {
        string str = string.Empty;
        if (type.BaseType != null && type.BaseType.ToString() == "System.Enum"){
            return str;
        }

        var propertyInfos = type.GetProperties(BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly);
        foreach (PropertyInfo property in propertyInfos)
        {
            var getMethod = property.GetMethod;
            var setMethod = property.SetMethod;
            bool isStatic = false;
            if (getMethod != null)
                isStatic = getMethod.IsStatic;
            else if (setMethod != null)
                isStatic = setMethod.IsStatic;

            str += string.Format("---@field public {0} {1} @{2} {3} {4}\n", property.Name, GetTypeName(property.PropertyType), isStatic ? "static" : "", setMethod != null ? "setter" : "", getMethod != null ? "getter" : "");
        }
        var fieldInfos = type.GetFields(BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly);
        foreach(FieldInfo field in fieldInfos) {
            str += string.Format("---@field public {0} {1}\n", field.Name, GetTypeName(field.FieldType));
        }

        return str;
    }

    private static string GenEnumInfo(Type type)
    {
        string str = string.Empty;
        if (type.BaseType != null && type.BaseType.ToString() == "System.Enum"){
            var enumInfos = type.GetEnumValues();
            for(int i = 0; i < enumInfos.Length; i++) {
                if (type.GetEnumName(i) != null && type.GetEnumName(i) != string.Empty) {
                    str += string.Format("---@return System.Int32 value:{0}\n", i);
                    str += string.Format("{0}.{1} = {2}\n", type.FullName.Replace('+', '.'), type.GetEnumName(i), i);
                }
            }
            str += "\n";
        }
        return str;
    }

    private static string GenConstructor(Type type)
    {
        string str = string.Empty;
        if (!type.IsAbstract) {
            var constructors = type.GetConstructors(BindingFlags.Instance | BindingFlags.Public | BindingFlags.IgnoreCase).Cast<MethodBase>()
                .Where(constructor => !isObsolete(constructor))
                .GroupBy(method => (method.Name), (k, v) => {
                    var overloads = new List<MethodBase>();
                    List<int> def_vals = new List<int>();
                    bool isOverride = false;
                    foreach (var overload in v.Cast<MethodBase>().OrderBy(mb => OverloadCosting(mb)))
                    {
                        int def_count = 0;
                        overloads.Add(overload);
                        def_vals.Add(def_count);

                        if (!isOverride)
                        {
                            isOverride = IsOverride(overload);
                        }

                        var ps = overload.GetParameters();
                        for (int i = ps.Length - 1; i >=0; i--)
                        {
                            if(ps[i].IsOptional ||
                            (ps[i].IsDefined(typeof(ParamArrayAttribute), false) && i > 0 && ps[i - 1].IsOptional))
                            {
                                def_count++;
                                overloads.Add(overload);
                                def_vals.Add(def_count);
                            }
                            else
                            {
                                break;
                            }
                        }
                    }

                    return new {
                        Name = k,
                        IsStatic = overloads[0].IsStatic && (!overloads[0].IsDefined(typeof(ExtensionAttribute), false) || overloads[0].GetParameters()[0].ParameterType.IsInterface),
                        Overloads = overloads,
                        DefaultValues = def_vals
                    };
                })
                .ToList();

            foreach (var constructor in constructors)
            {
                int defaultParamUse = 0;
                for (int i = 1; i < constructor.Overloads.Count; i++)
                {
                    var overload = constructor.Overloads[i];
                    str += "---@overload fun(";
                    bool hasDefault = false;
                    int paramNum = overload.GetParameters().Count();
                    bool writed = false;
                    for (int j = 0; j < paramNum; j++)
                    {
                        var param = overload.GetParameters()[j];
                        if (param.HasDefaultValue)
                        {
                            hasDefault = true;
                            if (paramNum - defaultParamUse - 1 > j) {
                                str += string.Format("{0}{1}:{2}", writed ? ", " : "", GetParamName(param.Name), GetTypeName(param.ParameterType));
                                writed = true;
                            }
                        } else
                        {
                            str += string.Format("{0}{1}:{2}", writed ? ", " : "", GetParamName(param.Name), GetTypeName(param.ParameterType));
                            writed = true;
                        }
                    }
                    if (hasDefault)
                        defaultParamUse++;

                    str += string.Format("):{0}\n", (overload is ConstructorInfo) ? (overload as ConstructorInfo).DeclaringType.Name : "");
                }

                var method = constructor.Overloads[0];
                string paramStr = string.Empty;
                foreach (var param in method.GetParameters())
                {
                    str += string.Format("---@param {0} {1}\n", GetParamName(param.Name), GetTypeName(param.ParameterType));
                    if (paramStr == string.Empty)
                        paramStr += GetParamName(param.Name);
                    else
                        paramStr += string.Format(", {0}", GetParamName(param.Name));
                }
                str += string.Format("---@return {0}\n", (method is ConstructorInfo) ? (method as ConstructorInfo).DeclaringType.Name : "");
                str += string.Format("function {0}({1})end\n", GetTypeName(type), paramStr);
            }
        }
        return str;
    }

    private static string GenMethodInfo(Type type)
    {
        string str = string.Empty;

        var publicStaticMethodInfos = type.GetMethods(BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.IgnoreCase | BindingFlags.DeclaredOnly)
            .Where(method => !method.IsDefined(typeof(ExtensionAttribute), false))
            .Where(method => !method.IsSpecialName || (!method.Name.StartsWith("get_") && !method.Name.StartsWith("set_")))
            .GroupBy(method => (method.Name + ((method.IsStatic && (!method.IsDefined(typeof(ExtensionAttribute), false) || method.GetParameters()[0].ParameterType.IsInterface)) ? "_xlua_st_" : "")), (k, v) => {
                var overloads = new List<MethodBase>();
                List<int> def_vals = new List<int>();
                bool isOverride = false;
                foreach (var overload in v.Cast<MethodBase>().OrderBy(mb => OverloadCosting(mb)))
                {
                    int def_count = 0;
                    overloads.Add(overload);
                    def_vals.Add(def_count);

                    if (!isOverride)
                    {
                        isOverride = IsOverride(overload);
                    }

                    var ps = overload.GetParameters();
                    for (int i = ps.Length - 1; i >=0; i--)
                    {
                        if(ps[i].IsOptional ||
                        (ps[i].IsDefined(typeof(ParamArrayAttribute), false) && i > 0 && ps[i - 1].IsOptional))
                        {
                            def_count++;
                            overloads.Add(overload);
                            def_vals.Add(def_count);
                        }
                        else
                        {
                            break;
                        }
                    }
                }

                return new {
                    Name = k,
                    IsStatic = overloads[0].IsStatic && (!overloads[0].IsDefined(typeof(ExtensionAttribute), false) || overloads[0].GetParameters()[0].ParameterType.IsInterface),
                    Overloads = overloads,
                    DefaultValues = def_vals
                };
            })
            .ToList();

        foreach (var methodInfo in publicStaticMethodInfos)
        {
            int defaultParamUse = 0;
            for (int i = 1; i < methodInfo.Overloads.Count; i++)
            {
                var overload = methodInfo.Overloads[i];
                str += "---@overload fun(";
                bool hasDefault = false;
                int paramNum = overload.GetParameters().Count();
                bool writed = false;
                for (int j = 0; j < paramNum; j++)
                {
                    var param = overload.GetParameters()[j];
                    if (param.HasDefaultValue)
                    {
                        hasDefault = true;
                        if (paramNum - defaultParamUse - 1 > j) {
                            str += string.Format("{0}{1}:{2}", writed ? ", " : "", GetParamName(param.Name), GetTypeName(param.ParameterType));
                            writed = true;
                        }
                    } else
                    {
                        str += string.Format("{0}{1}:{2}", writed ? ", " : "", GetParamName(param.Name), GetTypeName(param.ParameterType));
                        writed = true;
                    }
                }
                if (hasDefault)
                    defaultParamUse++;

                str += string.Format("):{0}\n", (overload is MethodInfo) ? GetTypeName((overload as MethodInfo).ReturnType) : "");
            }

            var method = methodInfo.Overloads[0];
            string paramStr = string.Empty;
            foreach (var param in method.GetParameters())
            {
                str += string.Format("---@param {0} {1}\n", GetParamName(param.Name), GetTypeName(param.ParameterType));
                if (paramStr == string.Empty)
                    paramStr += GetParamName(param.Name);
                else
                    paramStr += string.Format(", {0}", GetParamName(param.Name));
            }
            str += string.Format("---@return {0}\n", (method is MethodInfo) ? GetTypeName((method as MethodInfo).ReturnType) : "");
            str += string.Format("function {0}{1}{2}({3})end\n", GetTypeName(type), method.IsStatic ? "." : ":", method.Name, paramStr);
        }

        return str;
    }

    private static void GenNamespaceFile(List<string> spaces)
    {
        string path = target_path + "CSNamespaces.lua";

        string genCode = string.Empty;
        genCode += "---@class CS\nCS = {}\n";
        foreach(var s in spaces)
        {
            if (string.IsNullOrEmpty(s))
                continue;
            
            genCode += string.Format("---@class {0}\n", s);
            genCode += string.Format("{0} = {{}}\n", s);
            genCode += string.Format("CS.{0} = {1}\n", s, s);
        }

        StreamWriter textWriter = new StreamWriter(path, true, Encoding.UTF8);
        try
        {
            textWriter.Write(genCode);
            textWriter.Close();
        }
        catch (Exception e)
        {
            Debug.LogError("gen emmylua file fail! err=" + e.Message + ", stack=" + e.StackTrace);
        }
    }

    private static void GenOneFile(Type type, string filePath)
    {
        string genCode = string.Empty;
        string type_name = GetTypeName(type);
        if (type_name.Contains(".<"))
            return;
        
        if (type.BaseType == null)
            genCode += string.Format("---@class {0}\n", type_name);
        else
            genCode += string.Format("---@class {0} : {1}\n", type_name, GetTypeName(type.BaseType));
        
        genCode += GenPropertyInfo(type);
        genCode += string.Format("{0} = {{}}\n", type_name);
        genCode += string.Format("---@type {0}\n", type_name);
        genCode += string.Format("CS.{0} = {1}\n", type_name, type_name);
        genCode += "\n";
        genCode += GenEnumInfo(type);
        //构造函数导出注释到lua后无法与类本身进行区分，暂不执行导出构造函数
        // genCode += GenConstructor(type);
        genCode += GenMethodInfo(type);

        StreamWriter textWriter = new StreamWriter(filePath, true, Encoding.UTF8);
        try
        {
            textWriter.Write(genCode);
            textWriter.Close();
        }
        catch (Exception e)
        {
            Debug.LogError("gen emmylua file fail! err=" + e.Message + ", stack=" + e.StackTrace);
        }
    }

    [MenuItem("EmmyLua/ParseProtocol")]
    public static void ParseProtocol()
    {
        string server_protocol_path = "../server/game/player";
        string gen_client_path = "EmmyLuaGen/EmmyLuaParseProtocol.lua";
        string client_str = "";

        string[] serverFiles = Directory.GetFiles(server_protocol_path);
        foreach(string file in serverFiles)
        {
            StreamReader sr = new StreamReader(file);
            string line = sr.ReadLine();
            while(line != null) {
                Match m = Regex.Match(line, @"function M:rpc_([\w,\s\(\)]*)");
                if (!m.Success) {
                    m = Regex.Match(line, @"function player_t:rpc_([\w,\s\(\)]*)");
                }
                if (m.Success) {
                    client_str += "function Rpc." + m.Groups[1] + " end\n";
                }
                line = sr.ReadLine();
            }
            sr.Close();
        }

        StreamWriter sw = new StreamWriter(gen_client_path);
        sw.Write(client_str);
        sw.Close();
    }
}
