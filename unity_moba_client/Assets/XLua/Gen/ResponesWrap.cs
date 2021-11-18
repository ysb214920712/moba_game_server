#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using XLua;
using System.Collections.Generic;


namespace XLua.CSObjectWrap
{
    using Utils = XLua.Utils;
    public class ResponesWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(Respones);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 1, 7, 7);
			
			
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "OK", _g_get_OK);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "SystemErr", _g_get_SystemErr);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UserIsFreeze", _g_get_UserIsFreeze);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UserIsNotGuest", _g_get_UserIsNotGuest);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "InvalidParams", _g_get_InvalidParams);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UnameIsExist", _g_get_UnameIsExist);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UnameOrUpwdError", _g_get_UnameOrUpwdError);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "OK", _s_set_OK);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "SystemErr", _s_set_SystemErr);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UserIsFreeze", _s_set_UserIsFreeze);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UserIsNotGuest", _s_set_UserIsNotGuest);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "InvalidParams", _s_set_InvalidParams);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UnameIsExist", _s_set_UnameIsExist);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UnameOrUpwdError", _s_set_UnameOrUpwdError);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new Respones();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to Respones constructor!");
            
        }
        
		
        
		
        
        
        
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_OK(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.OK);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_SystemErr(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.SystemErr);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UserIsFreeze(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.UserIsFreeze);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UserIsNotGuest(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.UserIsNotGuest);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_InvalidParams(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.InvalidParams);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UnameIsExist(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.UnameIsExist);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UnameOrUpwdError(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, Respones.UnameOrUpwdError);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_OK(RealStatePtr L)
        {
		    try {
                
			    Respones.OK = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_SystemErr(RealStatePtr L)
        {
		    try {
                
			    Respones.SystemErr = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UserIsFreeze(RealStatePtr L)
        {
		    try {
                
			    Respones.UserIsFreeze = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UserIsNotGuest(RealStatePtr L)
        {
		    try {
                
			    Respones.UserIsNotGuest = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_InvalidParams(RealStatePtr L)
        {
		    try {
                
			    Respones.InvalidParams = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UnameIsExist(RealStatePtr L)
        {
		    try {
                
			    Respones.UnameIsExist = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UnameOrUpwdError(RealStatePtr L)
        {
		    try {
                
			    Respones.UnameOrUpwdError = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
