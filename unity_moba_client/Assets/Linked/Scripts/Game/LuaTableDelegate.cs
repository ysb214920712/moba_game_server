using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using XLua;
#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
#else
using LuaAPI = XLua.LuaDLL.Lua;
#endif

namespace XLua
{
    public partial class LuaFunction : LuaBase
    {
        public void Action()
        {
    #if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnv.luaEnvLock)
            {
    #endif
            var L = luaEnv.L;
            var translator = luaEnv.translator;
            int oldTop = LuaAPI.lua_gettop(L);
            int errFunc = LuaAPI.load_error_func(L, luaEnv.errorFuncRef);
            LuaAPI.lua_getref(L, luaReference);
            int error = LuaAPI.lua_pcall(L, 0, 0, errFunc);
            if (error != 0)
                luaEnv.ThrowExceptionFromError(oldTop);
            LuaAPI.lua_settop(L, oldTop);
    #if THREAD_SAFE || HOTFIX_ENABLE
            }
    #endif
        }

        public void Action<T1, T2, T3>(T1 a1, T2 a2, T3 a3)
        {
    #if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnv.luaEnvLock)
            {
    #endif
            var L = luaEnv.L;
            var translator = luaEnv.translator;
            int oldTop = LuaAPI.lua_gettop(L);
            int errFunc = LuaAPI.load_error_func(L, luaEnv.errorFuncRef);
            LuaAPI.lua_getref(L, luaReference);
            translator.PushByType(L, a1);
            translator.PushByType(L, a2);
            translator.PushByType(L, a3);
            int error = LuaAPI.lua_pcall(L, 3, 0, errFunc);
            if (error != 0)
                luaEnv.ThrowExceptionFromError(oldTop);
            LuaAPI.lua_settop(L, oldTop);
    #if THREAD_SAFE || HOTFIX_ENABLE
            }
    #endif
        }

        public void Action<T1, T2, T3, T4>(T1 a1, T2 a2, T3 a3, T4 a4)
        {
    #if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnv.luaEnvLock)
            {
    #endif
            var L = luaEnv.L;
            var translator = luaEnv.translator;
            int oldTop = LuaAPI.lua_gettop(L);
            int errFunc = LuaAPI.load_error_func(L, luaEnv.errorFuncRef);
            LuaAPI.lua_getref(L, luaReference);
            translator.PushByType(L, a1);
            translator.PushByType(L, a2);
            translator.PushByType(L, a3);
            translator.PushByType(L, a4);
            int error = LuaAPI.lua_pcall(L, 4, 0, errFunc);
            if (error != 0)
                luaEnv.ThrowExceptionFromError(oldTop);
            LuaAPI.lua_settop(L, oldTop);
    #if THREAD_SAFE || HOTFIX_ENABLE
            }
    #endif
        }

        public TResult Func<TResult>()
        {
    #if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnv.luaEnvLock)
            {
    #endif
            var L = luaEnv.L;
            var translator = luaEnv.translator;
            int oldTop = LuaAPI.lua_gettop(L);
            int errFunc = LuaAPI.load_error_func(L, luaEnv.errorFuncRef);
            LuaAPI.lua_getref(L, luaReference);
            int error = LuaAPI.lua_pcall(L, 0, 1, errFunc);
            if (error != 0)
                luaEnv.ThrowExceptionFromError(oldTop);
            TResult ret;
            try
            {
                translator.Get(L, -1, out ret);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                LuaAPI.lua_settop(L, oldTop);
            }
            return ret;
    #if THREAD_SAFE || HOTFIX_ENABLE
            }
    #endif
        }

        public TResult Func<T1, T2, T3, TResult>(T1 a1, T2 a2, T3 a3)
        {
#if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnv.luaEnvLock)
            {
#endif
                var L = luaEnv.L;
                var translator = luaEnv.translator;
                int oldTop = LuaAPI.lua_gettop(L);
                int errFunc = LuaAPI.load_error_func(L, luaEnv.errorFuncRef);
                LuaAPI.lua_getref(L, luaReference);
                translator.PushByType(L, a1);
                translator.PushByType(L, a2);
                translator.PushByType(L, a3);
                int error = LuaAPI.lua_pcall(L, 3, 1, errFunc);
                if (error != 0)
                    luaEnv.ThrowExceptionFromError(oldTop);
                TResult ret;
                try
                {
                    translator.Get(L, -1, out ret);
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    LuaAPI.lua_settop(L, oldTop);
                }
                return ret;
#if THREAD_SAFE || HOTFIX_ENABLE
            }
#endif
        }
    }
}

public class LuaTableDelegate
{
    private LuaTable _delegate;
    private Dictionary<string, bool> _quick = new Dictionary<string, bool>();
    public LuaTableDelegate(){}

    public void Bind(LuaTable t){
         _delegate = t;
         _quick.Clear();
    }

    public bool HasFunc(string funName)
    {
        if (!string.IsNullOrEmpty(funName) && _quick.ContainsKey(funName))
        {
            return _quick[funName];
        }

        if (_delegate != null)
        {
            _quick[funName] = _delegate.Get<string, LuaFunction>(funName) != null;
            return _quick[funName];
        }
        return false;
    }

    public TResult CallLua<T1, TResult>(string funName, T1 t1)
    {
        if (!HasFunc(funName))
        {
            return default(TResult);
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        return func.Func<T1, TResult>(t1);
    }

    public TResult CallLua<TResult>(string funName)
    {
        if (!HasFunc(funName))
        {
            return default(TResult);
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        return func.Func<TResult>();
    }

    public TResult CallLua<T1, T2, TResult>(string funName, T1 t1, T2 t2)
    {
        if (!HasFunc(funName))
        {
            return default(TResult);
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        return func.Func<T1, T2, TResult>(t1, t2);
    }

    public void Action(string funName)
    {
        if (!HasFunc(funName))
        {
            return;
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        func.Action();
    }

    public void Action<T1>(string funName, T1 t1)
    {
        if (!HasFunc(funName))
        {
            return;
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        func.Action<T1>(t1);
    }

    public void Action<T1, T2>(string funName, T1 t1, T2 t2)
    {
        if (!HasFunc(funName))
        {
            return;
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        func.Action<T1, T2>(t1, t2);
    }

    public void Action<T1, T2, T3>(string funName, T1 t1, T2 t2, T3 t3)
    {
        if (!HasFunc(funName))
        {
            return;
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        func.Action<T1, T2, T3>(t1, t2, t3);
    }

    public void Action<T1, T2, T3, T4>(string funName, T1 t1, T2 t2, T3 t3, T4 t4)
    {
        if (!HasFunc(funName))
        {
            return;
        }
        LuaFunction func = _delegate.Get<string, LuaFunction>(funName);
        func.Action<T1, T2, T3, T4>(t1, t2, t3, t4);
    }
}
