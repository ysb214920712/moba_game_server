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
    public class GameZygoteWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(GameZygote);
			Utils.BeginObjectRegister(type, L, translator, 0, 2, 3, 3);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetJoystick", _m_SetJoystick);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Init", _m_Init);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "stick", _g_get_stick);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "characters", _g_get_characters);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "map_entryA", _g_get_map_entryA);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "stick", _s_set_stick);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "characters", _s_set_characters);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "map_entryA", _s_set_map_entryA);
            
			
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
					
					var gen_ret = new GameZygote();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to GameZygote constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetJoystick(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    joystick _stick = (joystick)translator.GetObject(L, 2, typeof(joystick));
                    
                    gen_to_be_invoked.SetJoystick( _stick );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Init(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.Init(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_stick(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.stick);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_characters(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.characters);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_map_entryA(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.map_entryA);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_stick(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.stick = (joystick)translator.GetObject(L, 2, typeof(joystick));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_characters(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.characters = (UnityEngine.GameObject[])translator.GetObject(L, 2, typeof(UnityEngine.GameObject[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_map_entryA(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.map_entryA = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
