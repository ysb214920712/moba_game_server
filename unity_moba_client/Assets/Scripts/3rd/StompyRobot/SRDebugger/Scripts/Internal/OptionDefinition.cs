using System;

namespace SRDebugger.Internal
{
    public class OptionDefinition
    {
        private OptionDefinition(string name, string category, int sortPriority)
        {
            Name = name;
            Category = category;
            SortPriority = sortPriority;
        }

        public OptionDefinition(string name, string category, int sortPriority, SRF.Helpers.MethodReference method)
            : this(name, category, sortPriority)
        {
            Method = method;
        }

        public OptionDefinition(string name, string category, int sortPriority, SRF.Helpers.PropertyReference property)
            : this(name, category, sortPriority)
        {
            Property = property;
        }

        public OptionDefinition(string name, string category, int sortPriority, SRF.Helpers.LuaFunctionReference luaFunction)
            : this(name, category, sortPriority)
        {
            LuaFunc = luaFunction;
        }

        public bool CanWrite()
        {
            if (Property != null)
            {
                return Property.CanWrite;
            }
            else if (LuaFunc != null)
            {
                return true;
            }

            return true;
        }

        public Type GetValueType()
        {
            if (Property != null)
            {
                return Property.GetType();
            }
            else if (LuaFunc != null)
            {
                switch (LuaFunc.GetTypeEnum())
                {
                    case SRGameOptions.SRGameOptionsEnum.Bool:
                        return typeof(bool);
                    case SRGameOptions.SRGameOptionsEnum.Double:
                        return typeof(double);
                    case SRGameOptions.SRGameOptionsEnum.Float:
                        return typeof(float);
                    case SRGameOptions.SRGameOptionsEnum.Function:
                        return null;
                    case SRGameOptions.SRGameOptionsEnum.Int:
                        return typeof(int);
                    case SRGameOptions.SRGameOptionsEnum.String:
                        return typeof(string);
                    default:
                        return null;
                }
            }
            return null;
        }

        public void SetValue(object val)
        {
            if (Property != null)
            {
                Property.SetValue(Convert.ChangeType(val, Property.PropertyType));
            }
            else if (LuaFunc != null)
            {
                LuaFunc.SetValue(val);
            }
        }

        public object GetValue()
        {
            if (Property != null)
            {
                return Property.GetValue();
            }
            else if (LuaFunc != null)
            {
                return LuaFunc.GetValue();
            }

            return null;
        }

        public SROptions.NumberRangeAttribute GetNumberRangeAttribute()
        {
            if (Property != null)
            {
                return Property.GetAttribute<SROptions.NumberRangeAttribute>();
            }
            return null;
        }

        public void Clear()
        {
            LuaFunc.DisposeLuaFunc();
            LuaFunc = null;
        }

        public string Name { get; private set; }
        public string Category { get; private set; }
        public int SortPriority { get; private set; }
        public SRF.Helpers.MethodReference Method { get; private set; }
        public SRF.Helpers.PropertyReference Property { get; private set; }
        public SRF.Helpers.LuaFunctionReference LuaFunc { get; private set; }
    }
}
