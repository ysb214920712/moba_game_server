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
    public class VibrateHelperWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(VibrateHelper);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 9, 0, 0);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "Vibrate", _m_Vibrate_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ContinuousVibrate", _m_ContinuousVibrate_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "VibrateByType", _m_VibrateByType_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "PlayIOSHapticPattern", _m_PlayIOSHapticPattern_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "IsSupportedVibrate", _m_IsSupportedVibrate_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "CancelVibrate", _m_CancelVibrate_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SetVibrateEnabled", _m_SetVibrateEnabled_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SetVibrateParams", _m_SetVibrateParams_xlua_st_);
            
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            return LuaAPI.luaL_error(L, "VibrateHelper does not have a constructor!");
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Vibrate_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    VibrateHelper.Vibrate(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ContinuousVibrate_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    float _seconds = (float)LuaAPI.lua_tonumber(L, 1);
                    float _amplitude = (float)LuaAPI.lua_tonumber(L, 2);
                    
                    VibrateHelper.ContinuousVibrate( _seconds, _amplitude );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_VibrateByType_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    VibrateTypes _vibrateType;translator.Get(L, 1, out _vibrateType);
                    
                    VibrateHelper.VibrateByType( _vibrateType );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_PlayIOSHapticPattern_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _path = LuaAPI.lua_tostring(L, 1);
                    
                    VibrateHelper.PlayIOSHapticPattern( _path );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_IsSupportedVibrate_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = VibrateHelper.IsSupportedVibrate(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CancelVibrate_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                    VibrateHelper.CancelVibrate(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetVibrateEnabled_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    bool _enable = LuaAPI.lua_toboolean(L, 1);
                    
                    VibrateHelper.SetVibrateEnabled( _enable );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetVibrateParams_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    long _lightDuration = LuaAPI.lua_toint64(L, 1);
                    long _mediumDuration = LuaAPI.lua_toint64(L, 2);
                    long _heavyDuration = LuaAPI.lua_toint64(L, 3);
                    long _rigidDuration = LuaAPI.lua_toint64(L, 4);
                    long _softDuration = LuaAPI.lua_toint64(L, 5);
                    int _lightAmplitude = LuaAPI.xlua_tointeger(L, 6);
                    int _mediumAmplitude = LuaAPI.xlua_tointeger(L, 7);
                    int _heavyAmplitude = LuaAPI.xlua_tointeger(L, 8);
                    int _rigidAmplitude = LuaAPI.xlua_tointeger(L, 9);
                    int _softAmplitude = LuaAPI.xlua_tointeger(L, 10);
                    
                    VibrateHelper.SetVibrateParams( _lightDuration, _mediumDuration, _heavyDuration, _rigidDuration, _softDuration, _lightAmplitude, _mediumAmplitude, _heavyAmplitude, _rigidAmplitude, _softAmplitude );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        
        
		
		
		
		
    }
}
