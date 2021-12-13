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
			Utils.BeginObjectRegister(type, L, translator, 0, 6, 10, 10);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetJoystick", _m_SetJoystick);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "alloc_bullet", _m_alloc_bullet);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Remove_Bullet", _m_Remove_Bullet);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetHeroes", _m_GetHeroes);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "remove_monster", _m_remove_monster);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Init", _m_Init);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "stick", _g_get_stick);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "characters", _g_get_characters);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "map_entryA", _g_get_map_entryA);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "map_entryB", _g_get_map_entryB);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "normal_bullet_prefab", _g_get_normal_bullet_prefab);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "main_bullet_prefab", _g_get_main_bullet_prefab);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "A_tower_objects", _g_get_A_tower_objects);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "B_tower_objects", _g_get_B_tower_objects);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "monster_roads", _g_get_monster_roads);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "monster_prefabs", _g_get_monster_prefabs);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "stick", _s_set_stick);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "characters", _s_set_characters);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "map_entryA", _s_set_map_entryA);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "map_entryB", _s_set_map_entryB);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "normal_bullet_prefab", _s_set_normal_bullet_prefab);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "main_bullet_prefab", _s_set_main_bullet_prefab);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "A_tower_objects", _s_set_A_tower_objects);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "B_tower_objects", _s_set_B_tower_objects);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "monster_roads", _s_set_monster_roads);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "monster_prefabs", _s_set_monster_prefabs);
            
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 2, 0, 0);
			
			
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LOGIC_FRAME_TIME", GameZygote.LOGIC_FRAME_TIME);
            
			
			
			
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
        static int _m_alloc_bullet(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _side = LuaAPI.xlua_tointeger(L, 2);
                    int _type = LuaAPI.xlua_tointeger(L, 3);
                    
                        var gen_ret = gen_to_be_invoked.alloc_bullet( _side, _type );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Remove_Bullet(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    Bullet _bullet = (Bullet)translator.GetObject(L, 2, typeof(Bullet));
                    
                    gen_to_be_invoked.Remove_Bullet( _bullet );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetHeroes(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                        var gen_ret = gen_to_be_invoked.GetHeroes(  );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_remove_monster(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    Monster _m = (Monster)translator.GetObject(L, 2, typeof(Monster));
                    
                    gen_to_be_invoked.remove_monster( _m );
                    
                    
                    
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
        static int _g_get_map_entryB(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.map_entryB);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_normal_bullet_prefab(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.normal_bullet_prefab);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_main_bullet_prefab(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.main_bullet_prefab);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_A_tower_objects(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.A_tower_objects);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_B_tower_objects(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.B_tower_objects);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_monster_roads(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.monster_roads);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_monster_prefabs(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.monster_prefabs);
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
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_map_entryB(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.map_entryB = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_normal_bullet_prefab(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.normal_bullet_prefab = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_main_bullet_prefab(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.main_bullet_prefab = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_A_tower_objects(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.A_tower_objects = (UnityEngine.GameObject[])translator.GetObject(L, 2, typeof(UnityEngine.GameObject[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_B_tower_objects(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.B_tower_objects = (UnityEngine.GameObject[])translator.GetObject(L, 2, typeof(UnityEngine.GameObject[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_monster_roads(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.monster_roads = (SWS.PathManager[])translator.GetObject(L, 2, typeof(SWS.PathManager[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_monster_prefabs(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                GameZygote gen_to_be_invoked = (GameZygote)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.monster_prefabs = (UnityEngine.GameObject[])translator.GetObject(L, 2, typeof(UnityEngine.GameObject[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
