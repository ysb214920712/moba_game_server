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
    public class GameConfigWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(GameConfig);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 3, 7, 7);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "exp_to_level", _m_exp_to_level_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "upgrade_level_info", _m_upgrade_level_info_xlua_st_);
            
			
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "main_tower_config", _g_get_main_tower_config);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "normal_tower_config", _g_get_normal_tower_config);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "main_bullet_config", _g_get_main_bullet_config);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "normal_bullet_config", _g_get_normal_bullet_config);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "normal_hero_level_config", _g_get_normal_hero_level_config);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "add_exp_per_logic", _g_get_add_exp_per_logic);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "gen_monster_frame", _g_get_gen_monster_frame);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "main_tower_config", _s_set_main_tower_config);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "normal_tower_config", _s_set_normal_tower_config);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "main_bullet_config", _s_set_main_bullet_config);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "normal_bullet_config", _s_set_normal_bullet_config);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "normal_hero_level_config", _s_set_normal_hero_level_config);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "add_exp_per_logic", _s_set_add_exp_per_logic);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "gen_monster_frame", _s_set_gen_monster_frame);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new GameConfig();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to GameConfig constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_exp_to_level_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    HeroConfig[] _configs = (HeroConfig[])translator.GetObject(L, 1, typeof(HeroConfig[]));
                    int _exp = LuaAPI.xlua_tointeger(L, 2);
                    
                        var gen_ret = GameConfig.exp_to_level( _configs, _exp );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_upgrade_level_info_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    HeroConfig[] _configs = (HeroConfig[])translator.GetObject(L, 1, typeof(HeroConfig[]));
                    int _exp = LuaAPI.xlua_tointeger(L, 2);
                    int _now = LuaAPI.xlua_tointeger(L, 3);
                    int _total = LuaAPI.xlua_tointeger(L, 4);
                    
                    GameConfig.upgrade_level_info( _configs, _exp, ref _now, ref _total );
                    LuaAPI.xlua_pushinteger(L, _now);
                        
                    LuaAPI.xlua_pushinteger(L, _total);
                        
                    
                    
                    
                    return 2;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_main_tower_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GameConfig.main_tower_config);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_normal_tower_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GameConfig.normal_tower_config);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_main_bullet_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GameConfig.main_bullet_config);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_normal_bullet_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GameConfig.normal_bullet_config);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_normal_hero_level_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GameConfig.normal_hero_level_config);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_add_exp_per_logic(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, GameConfig.add_exp_per_logic);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_gen_monster_frame(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, GameConfig.gen_monster_frame);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_main_tower_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    GameConfig.main_tower_config = (TowerConfig)translator.GetObject(L, 1, typeof(TowerConfig));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_normal_tower_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    GameConfig.normal_tower_config = (TowerConfig)translator.GetObject(L, 1, typeof(TowerConfig));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_main_bullet_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    GameConfig.main_bullet_config = (BulletConfig)translator.GetObject(L, 1, typeof(BulletConfig));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_normal_bullet_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    GameConfig.normal_bullet_config = (BulletConfig)translator.GetObject(L, 1, typeof(BulletConfig));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_normal_hero_level_config(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    GameConfig.normal_hero_level_config = (HeroConfig[])translator.GetObject(L, 1, typeof(HeroConfig[]));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_add_exp_per_logic(RealStatePtr L)
        {
		    try {
                
			    GameConfig.add_exp_per_logic = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_gen_monster_frame(RealStatePtr L)
        {
		    try {
                
			    GameConfig.gen_monster_frame = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
