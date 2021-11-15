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
    public class PhoneHelperWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(PhoneHelper);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 29, 3, 2);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "getGameActivity", _m_getGameActivity_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "HasReadWritePermission", _m_HasReadWritePermission_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "RequestReadWritePermission", _m_RequestReadWritePermission_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ShouldShowRequestReadWritePermissionRationale", _m_ShouldShowRequestReadWritePermissionRationale_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "OpenSelfSettings", _m_OpenSelfSettings_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DeviceUDID", _m_DeviceUDID_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "IDFA", _m_IDFA_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "MacAddress", _m_MacAddress_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "AndroidID", _m_AndroidID_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "Country", _m_Country_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "Language", _m_Language_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "MUID", _m_MUID_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "IsPlayWithWifi", _m_IsPlayWithWifi_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "NSLog", _m_NSLog_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GoComment", _m_GoComment_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "IsExistObb", _m_IsExistObb_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "StartDownloadObb", _m_StartDownloadObb_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ContinueDownloadObb", _m_ContinueDownloadObb_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ResumeDownloadObbOnCell", _m_ResumeDownloadObbOnCell_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "RestartApplication", _m_RestartApplication_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ForceQuit", _m_ForceQuit_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "HasNotch", _m_HasNotch_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetNotchHeight", _m_GetNotchHeight_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "TestException", _m_TestException_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "MakeCrash", _m_MakeCrash_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetUriScheme", _m_GetUriScheme_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ShareImageWithSystem", _m_ShareImageWithSystem_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "NeedRequestTrackinggAuthorization", _m_NeedRequestTrackinggAuthorization_xlua_st_);
            
			
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UICanvasSize", _g_get_UICanvasSize);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UIResolution", _g_get_UIResolution);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "UICanvasTrans", _g_get_UICanvasTrans);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UIResolution", _s_set_UIResolution);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "UICanvasTrans", _s_set_UICanvasTrans);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            return LuaAPI.luaL_error(L, "PhoneHelper does not have a constructor!");
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_getGameActivity_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.getGameActivity(  );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_HasReadWritePermission_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.HasReadWritePermission(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_RequestReadWritePermission_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.RequestReadWritePermission(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ShouldShowRequestReadWritePermissionRationale_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.ShouldShowRequestReadWritePermissionRationale(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_OpenSelfSettings_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.OpenSelfSettings(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DeviceUDID_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
			    int gen_param_count = LuaAPI.lua_gettop(L);
            
                if(gen_param_count == 0) 
                {
                    
                        var gen_ret = PhoneHelper.DeviceUDID(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                if(gen_param_count == 1&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)) 
                {
                    string _channel = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = PhoneHelper.DeviceUDID( _channel );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
            return LuaAPI.luaL_error(L, "invalid arguments to PhoneHelper.DeviceUDID!");
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_IDFA_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _channel = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = PhoneHelper.IDFA( _channel );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MacAddress_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.MacAddress(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_AndroidID_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.AndroidID(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Country_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.Country(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Language_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.Language(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MUID_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.MUID(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_IsPlayWithWifi_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.IsPlayWithWifi(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_NSLog_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _text = LuaAPI.lua_tostring(L, 1);
                    
                    PhoneHelper.NSLog( _text );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GoComment_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.GoComment(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_IsExistObb_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.IsExistObb(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_StartDownloadObb_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.StartDownloadObb(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ContinueDownloadObb_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.ContinueDownloadObb(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ResumeDownloadObbOnCell_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.ResumeDownloadObbOnCell(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_RestartApplication_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.RestartApplication(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ForceQuit_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.ForceQuit(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_HasNotch_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.HasNotch(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetNotchHeight_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.GetNotchHeight(  );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_TestException_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.TestException(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MakeCrash_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    PhoneHelper.MakeCrash(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetUriScheme_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.GetUriScheme(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ShareImageWithSystem_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _path = LuaAPI.lua_tostring(L, 1);
                    string _title = LuaAPI.lua_tostring(L, 2);
                    
                    PhoneHelper.ShareImageWithSystem( _path, _title );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_NeedRequestTrackinggAuthorization_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = PhoneHelper.NeedRequestTrackinggAuthorization(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UICanvasSize(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.PushUnityEngineVector2(L, PhoneHelper.UICanvasSize);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UIResolution(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.PushUnityEngineVector2(L, PhoneHelper.UIResolution);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_UICanvasTrans(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, PhoneHelper.UICanvasTrans);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UIResolution(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			UnityEngine.Vector2 gen_value;translator.Get(L, 1, out gen_value);
				PhoneHelper.UIResolution = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_UICanvasTrans(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    PhoneHelper.UICanvasTrans = (UnityEngine.RectTransform)translator.GetObject(L, 1, typeof(UnityEngine.RectTransform));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
