namespace SRF.Helpers
{
    using System;
    using System.Reflection;
    using XLua;

    public class LuaFunctionReference
    {
        private LuaFunction _luaFunc;
        private SRGameOptionStruct _target;

        public LuaFunctionReference(SRGameOptionStruct target, LuaFunction luaFunc)
        {
            SRDebugUtil.AssertNotNull(target);

            _target = target;
            _luaFunc = luaFunc;
        }

        public object Invoke()
        {
            return _luaFunc.Call(_target.name, _target.value);
        }

        public void DisposeLuaFunc()
        {
            _luaFunc.Dispose();
        }

        public SRGameOptions.SRGameOptionsEnum GetTypeEnum()
        {
            return _target.typeEnum;
        }

        public object GetValue()
        {
            return _target.value;
        }

        public void SetValue(object value)
        {
            _target.value = value;
        }

        public double GetMinValue()
        {
            return _target.minValue;
        }

        public double GetMaxValue()
        {
            return _target.maxValue;
        }

        public double GetIncrement()
        {
            return _target.increment;
        }
    }
}
