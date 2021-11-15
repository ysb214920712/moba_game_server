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
    public class ReferGameObjectsWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(ReferGameObjects);
			Utils.BeginObjectRegister(type, L, translator, 0, 5, 4, 3);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Get", _m_Get);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SaveCache", _m_SaveCache);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetCache", _m_GetCache);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "HasKey", _m_HasKey);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ExportToLuaTable", _m_ExportToLuaTable);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "Length", _g_get_Length);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "names", _g_get_names);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "monos", _g_get_monos);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "isDestroyed", _g_get_isDestroyed);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "names", _s_set_names);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "monos", _s_set_monos);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "isDestroyed", _s_set_isDestroyed);
            
			
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
					
					var gen_ret = new ReferGameObjects();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to ReferGameObjects constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Get(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _n = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.Get( _n );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SaveCache(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _k = LuaAPI.lua_tostring(L, 2);
                    object _v = translator.GetObject(L, 3, typeof(object));
                    
                    gen_to_be_invoked.SaveCache( _k, _v );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetCache(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _k = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.GetCache( _k );
                        translator.PushAny(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_HasKey(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _key = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.HasKey( _key );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ExportToLuaTable(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    XLua.LuaTable _tb = (XLua.LuaTable)translator.GetObject(L, 2, typeof(XLua.LuaTable));
                    
                    gen_to_be_invoked.ExportToLuaTable( _tb );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_Length(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.Length);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_names(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.names);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_monos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.monos);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_isDestroyed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.isDestroyed);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_names(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.names = (System.Collections.Generic.List<string>)translator.GetObject(L, 2, typeof(System.Collections.Generic.List<string>));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_monos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.monos = (UnityEngine.Object[])translator.GetObject(L, 2, typeof(UnityEngine.Object[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_isDestroyed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                ReferGameObjects gen_to_be_invoked = (ReferGameObjects)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.isDestroyed = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
