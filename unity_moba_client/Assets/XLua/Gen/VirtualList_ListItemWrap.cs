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
    public class VirtualListListItemWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(VirtualList.ListItem);
			Utils.BeginObjectRegister(type, L, translator, 0, 1, 7, 7);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Export", _m_Export);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "gameObject", _g_get_gameObject);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "tag", _g_get_tag);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "prefabName", _g_get_prefabName);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "index", _g_get_index);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "startPos", _g_get_startPos);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "endPos", _g_get_endPos);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "size", _g_get_size);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "gameObject", _s_set_gameObject);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "tag", _s_set_tag);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "prefabName", _s_set_prefabName);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "index", _s_set_index);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "startPos", _s_set_startPos);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "endPos", _s_set_endPos);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "size", _s_set_size);
            
			
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
					
					var gen_ret = new VirtualList.ListItem();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to VirtualList.ListItem constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Export(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    XLua.LuaTable _tb = (XLua.LuaTable)translator.GetObject(L, 2, typeof(XLua.LuaTable));
                    
                        var gen_ret = gen_to_be_invoked.Export( _tb );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_gameObject(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.gameObject);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_tag(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushstring(L, gen_to_be_invoked.tag);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_prefabName(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushstring(L, gen_to_be_invoked.prefabName);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_index(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.index);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_startPos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.startPos);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_endPos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.endPos);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_size(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.size);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_gameObject(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.gameObject = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_tag(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.tag = LuaAPI.lua_tostring(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_prefabName(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.prefabName = LuaAPI.lua_tostring(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_index(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.index = LuaAPI.xlua_tointeger(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_startPos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.startPos = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_endPos(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.endPos = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_size(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList.ListItem gen_to_be_invoked = (VirtualList.ListItem)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.size = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
