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
    public class DefinesWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(Defines);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 17, 1, 1);
			
			
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "ABNameSeparatorChar", Defines.ABNameSeparatorChar);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "AssetBoundleSuffix", Defines.AssetBoundleSuffix);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpriteAltasSourceImagePath", Defines.SpriteAltasSourceImagePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpriteAltasPath", Defines.SpriteAltasPath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpritePrefabPath", Defines.SpritePrefabPath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "AssetBundleSourcePath", Defines.AssetBundleSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "AssetBundleSceneSourcePath", Defines.AssetBundleSceneSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpritePackerSourceImagePath", Defines.SpritePackerSourceImagePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpriteAtlasSourcePath", Defines.SpriteAtlasSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpriteBackgroundSourcePath", Defines.SpriteBackgroundSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "EffectTexturePath", Defines.EffectTexturePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LuaEntryFileName", Defines.LuaEntryFileName);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LuaSourcePath", Defines.LuaSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LuaConfigPath", Defines.LuaConfigPath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LuaConfigSourcePath", Defines.LuaConfigSourcePath);
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LuaByteCodePath", Defines.LuaByteCodePath);
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "BundleExtraInfoName", _g_get_BundleExtraInfoName);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "BundleExtraInfoName", _s_set_BundleExtraInfoName);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new Defines();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to Defines constructor!");
            
        }
        
		
        
		
        
        
        
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_BundleExtraInfoName(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushstring(L, Defines.BundleExtraInfoName);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_BundleExtraInfoName(RealStatePtr L)
        {
		    try {
                
			    Defines.BundleExtraInfoName = LuaAPI.lua_tostring(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
