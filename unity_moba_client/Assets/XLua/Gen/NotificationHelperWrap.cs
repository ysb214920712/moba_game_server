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
    public class NotificationHelperWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(NotificationHelper);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 10, 0, 0);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "CheckNotificationAuthorization", _m_CheckNotificationAuthorization_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ScheduleRepeatNotification", _m_ScheduleRepeatNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ScheduleNotification", _m_ScheduleNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "RemoveScheduledNotification", _m_RemoveScheduledNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "RemoveDeliveredNotification", _m_RemoveDeliveredNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "RegisterNotificationChannel", _m_RegisterNotificationChannel_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SendRepeatNotification", _m_SendRepeatNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SendNotification", _m_SendNotification_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "CancelNotification", _m_CancelNotification_xlua_st_);
            
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            return LuaAPI.luaL_error(L, "NotificationHelper does not have a constructor!");
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CheckNotificationAuthorization_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    System.Action<bool> _callback = translator.GetDelegate<System.Action<bool>>(L, 1);
                    
                        var gen_ret = NotificationHelper.CheckNotificationAuthorization( _callback );
                        translator.PushAny(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ScheduleRepeatNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _identifier = LuaAPI.lua_tostring(L, 1);
                    int _hour = LuaAPI.xlua_tointeger(L, 2);
                    int _minute = LuaAPI.xlua_tointeger(L, 3);
                    string _content = LuaAPI.lua_tostring(L, 4);
                    
                    NotificationHelper.ScheduleRepeatNotification( _identifier, _hour, _minute, _content );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ScheduleNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _identifier = LuaAPI.lua_tostring(L, 1);
                    int _year = LuaAPI.xlua_tointeger(L, 2);
                    int _month = LuaAPI.xlua_tointeger(L, 3);
                    int _day = LuaAPI.xlua_tointeger(L, 4);
                    int _hour = LuaAPI.xlua_tointeger(L, 5);
                    int _minute = LuaAPI.xlua_tointeger(L, 6);
                    string _content = LuaAPI.lua_tostring(L, 7);
                    
                    NotificationHelper.ScheduleNotification( _identifier, _year, _month, _day, _hour, _minute, _content );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_RemoveScheduledNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _identifier = LuaAPI.lua_tostring(L, 1);
                    
                    NotificationHelper.RemoveScheduledNotification( _identifier );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_RemoveDeliveredNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _identifier = LuaAPI.lua_tostring(L, 1);
                    
                    NotificationHelper.RemoveDeliveredNotification( _identifier );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_RegisterNotificationChannel_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    NotificationHelper.RegisterNotificationChannel(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SendRepeatNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    int _hour = LuaAPI.xlua_tointeger(L, 1);
                    int _minute = LuaAPI.xlua_tointeger(L, 2);
                    string _content = LuaAPI.lua_tostring(L, 3);
                    
                        var gen_ret = NotificationHelper.SendRepeatNotification( _hour, _minute, _content );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SendNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    int _year = LuaAPI.xlua_tointeger(L, 1);
                    int _month = LuaAPI.xlua_tointeger(L, 2);
                    int _day = LuaAPI.xlua_tointeger(L, 3);
                    int _hour = LuaAPI.xlua_tointeger(L, 4);
                    int _minute = LuaAPI.xlua_tointeger(L, 5);
                    string _content = LuaAPI.lua_tostring(L, 6);
                    
                        var gen_ret = NotificationHelper.SendNotification( _year, _month, _day, _hour, _minute, _content );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CancelNotification_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    int _identifier = LuaAPI.xlua_tointeger(L, 1);
                    
                    NotificationHelper.CancelNotification( _identifier );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        
        
		
		
		
		
    }
}
