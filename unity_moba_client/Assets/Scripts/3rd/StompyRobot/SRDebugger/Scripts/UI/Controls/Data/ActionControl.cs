namespace SRDebugger.UI.Controls.Data
{
    using System;
    using SRF;
    using UnityEngine;
    using UnityEngine.UI;

    public class ActionControl : OptionsControlBase
    {
        private SRF.Helpers.MethodReference _method;
        private SRF.Helpers.LuaFunctionReference _luaFunc;

        [RequiredField] public UnityEngine.UI.Button Button;

        [RequiredField] public Text Title;

        public SRF.Helpers.MethodReference Method
        {
            get { return _method; }
        }

        protected override void Start()
        {
            base.Start();
            Button.onClick.AddListener(ButtonOnClick);
        }

        private void ButtonOnClick()
        {
            if (_luaFunc != null)
            {
                _luaFunc.Invoke();
                return;
            }

            if (_method == null)
            {
                Debug.LogWarning("[SRDebugger.Options] No method set for action control", this);
                return;
            }

            try
            {
                _method.Invoke(null);
            }
            catch (Exception e)
            {
                Debug.LogError("[SRDebugger] Exception thrown while executing action.");
                Debug.LogException(e);
            }
        }

        public void SetMethod(string methodName, SRF.Helpers.MethodReference method)
        {
            _method = method;
            Title.text = methodName;
        }

        public void SetLuaFunction(string funcName, SRF.Helpers.LuaFunctionReference luafunc)
        {
            _luaFunc = luafunc;
            Title.text = funcName;
        }
    }
}
