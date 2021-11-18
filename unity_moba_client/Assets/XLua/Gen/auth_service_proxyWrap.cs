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
    public class auth_service_proxyWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(auth_service_proxy);
			Utils.BeginObjectRegister(type, L, translator, 0, 6, 0, 0);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "init", _m_init);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "guest_login", _m_guest_login);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "uname_login", _m_uname_login);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "do_account_upgrade", _m_do_account_upgrade);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "edit_profile", _m_edit_profile);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "user_login_out", _m_user_login_out);
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 1, 0, 0);
			
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new auth_service_proxy();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to auth_service_proxy constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_init(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.init(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_guest_login(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.guest_login(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_uname_login(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _uname = LuaAPI.lua_tostring(L, 2);
                    string _upwd = LuaAPI.lua_tostring(L, 3);
                    
                    gen_to_be_invoked.uname_login( _uname, _upwd );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_do_account_upgrade(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _uname = LuaAPI.lua_tostring(L, 2);
                    string _upwd_md5 = LuaAPI.lua_tostring(L, 3);
                    
                    gen_to_be_invoked.do_account_upgrade( _uname, _upwd_md5 );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_edit_profile(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _unick = LuaAPI.lua_tostring(L, 2);
                    int _uface = LuaAPI.xlua_tointeger(L, 3);
                    int _usex = LuaAPI.xlua_tointeger(L, 4);
                    
                    gen_to_be_invoked.edit_profile( _unick, _uface, _usex );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_user_login_out(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                auth_service_proxy gen_to_be_invoked = (auth_service_proxy)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.user_login_out(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        
        
		
		
		
		
    }
}
