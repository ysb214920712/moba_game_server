namespace SRDebugger.UI.Controls
{
    using System;
    using UnityEngine;

    public abstract class DataBoundControl : OptionsControlBase
    {
        private bool _hasStarted;
        private bool _isReadOnly;
        private object _prevValue;
        private SRF.Helpers.PropertyReference _prop;
        private SRF.Helpers.LuaFunctionReference _luaReference;

        public SRF.Helpers.PropertyReference Property
        {
            get { return _prop; }
        }

        public SRF.Helpers.LuaFunctionReference LuaReference
        {
            get { return _luaReference; }
        }

        public bool IsReadOnly
        {
            get { return _isReadOnly; }
        }

        public string PropertyName { get; private set; }

        #region Data Binding

        public void Bind(string propertyName, SRF.Helpers.PropertyReference prop)
        {
            PropertyName = propertyName;
            _prop = prop;

            _isReadOnly = !prop.CanWrite;

            OnBind(propertyName, prop.PropertyType);
            Refresh();
        }

        public void Bind(string propertyName, Type propertyType, SRF.Helpers.LuaFunctionReference luaReference)
        {
            PropertyName = propertyName;
            _luaReference = luaReference;

            _isReadOnly = false;

            OnBind(propertyName, propertyType);
            Refresh();
        }

        protected void UpdateValue(object newValue)
        {
            if (newValue == _prevValue)
            {
                return;
            }

            if (IsReadOnly)
            {
                return;
            }

            if (_prop != null)
            {
                _prop.SetValue(newValue);
            }
            else if (_luaReference != null)
            {
                _luaReference.SetValue(newValue);
            }
            _prevValue = newValue;
        }

        public void UpdateValueEnd()
        {
            if (_luaReference != null)
            {
                _luaReference.Invoke();
            }
        }

        public override void Refresh()
        {
            object currentValue = null;
            if (_prop != null)
            {
                currentValue = _prop.GetValue();
            }
            else if (_luaReference != null)
            {
                currentValue = _luaReference.GetValue();
            }

            if (currentValue == null)
            {
                return;
            }

            if (currentValue != _prevValue)
            {
                try
                {
                    OnValueUpdated(currentValue);
                }
                catch (Exception e)
                {
                    Debug.LogError("[SROptions] Error refreshing binding.");
                    Debug.LogException(e);
                }
            }

            _prevValue = currentValue;
        }

        protected virtual void OnBind(string propertyName, Type t) {}
        protected abstract void OnValueUpdated(object newValue);

        public abstract bool CanBind(Type type, bool isReadOnly);

        #endregion

        #region Unity

        protected override void Start()
        {
            base.Start();

            Refresh();
            _hasStarted = true;
        }

        protected override void OnEnable()
        {
            base.OnEnable();

            if (_hasStarted)
            {
                Refresh();
            }
        }

        #endregion
    }
}
