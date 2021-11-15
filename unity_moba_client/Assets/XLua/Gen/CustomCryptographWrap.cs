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
    public class CustomCryptographWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(CustomCryptograph);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 7, 0, 0);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "Decrypt", _m_Decrypt_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "Encrypt", _m_Encrypt_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "EncryptLua", _m_EncryptLua_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DecryptLua", _m_DecryptLua_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "EncryptBase64Lua", _m_EncryptBase64Lua_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DecryptBase64Lua", _m_DecryptBase64Lua_xlua_st_);
            
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new CustomCryptograph();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to CustomCryptograph constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Decrypt_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
			    int gen_param_count = LuaAPI.lua_gettop(L);
            
                if(gen_param_count == 2&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)&& (LuaAPI.lua_isnil(L, 2) || LuaAPI.lua_type(L, 2) == LuaTypes.LUA_TSTRING)) 
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.Decrypt( _s, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                if(gen_param_count == 2&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)&& (LuaAPI.lua_isnil(L, 2) || LuaAPI.lua_type(L, 2) == LuaTypes.LUA_TSTRING)) 
                {
                    byte[] _orgStrb = LuaAPI.lua_tobytes(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                    CustomCryptograph.Decrypt( _orgStrb, _key );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
            return LuaAPI.luaL_error(L, "invalid arguments to CustomCryptograph.Decrypt!");
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Encrypt_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
			    int gen_param_count = LuaAPI.lua_gettop(L);
            
                if(gen_param_count == 2&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)&& (LuaAPI.lua_isnil(L, 2) || LuaAPI.lua_type(L, 2) == LuaTypes.LUA_TSTRING)) 
                {
                    byte[] _bs = LuaAPI.lua_tobytes(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                    CustomCryptograph.Encrypt( _bs, _key );
                    
                    
                    
                    return 0;
                }
                if(gen_param_count == 2&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)&& (LuaAPI.lua_isnil(L, 2) || LuaAPI.lua_type(L, 2) == LuaTypes.LUA_TSTRING)) 
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.Encrypt( _s, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
            return LuaAPI.luaL_error(L, "invalid arguments to CustomCryptograph.Encrypt!");
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_EncryptLua_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    byte[] _bs = LuaAPI.lua_tobytes(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.EncryptLua( _bs, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DecryptLua_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.DecryptLua( _s, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_EncryptBase64Lua_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.EncryptBase64Lua( _s, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DecryptBase64Lua_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = CustomCryptograph.DecryptBase64Lua( _s, _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        
        
		
		
		
		
    }
}
