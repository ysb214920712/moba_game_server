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
    
    public class LuaBridgeTypeWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(LuaBridgeType), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(LuaBridgeType), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(LuaBridgeType), L, null, 7, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Base", LuaBridgeType.Base);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Application", LuaBridgeType.Application);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "DragableUI", LuaBridgeType.DragableUI);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Dragable3D", LuaBridgeType.Dragable3D);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "PressUI", LuaBridgeType.PressUI);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "AnimatorEvent", LuaBridgeType.AnimatorEvent);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(LuaBridgeType), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushLuaBridgeType(L, (LuaBridgeType)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Base"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.Base);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Application"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.Application);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "DragableUI"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.DragableUI);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Dragable3D"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.Dragable3D);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "PressUI"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.PressUI);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "AnimatorEvent"))
                {
                    translator.PushLuaBridgeType(L, LuaBridgeType.AnimatorEvent);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for LuaBridgeType!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for LuaBridgeType! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityBehaviourFuncWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityBehaviourFunc), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityBehaviourFunc), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityBehaviourFunc), L, null, 22, 0, 0);

            Utils.RegisterEnumType(L, typeof(UnityBehaviourFunc));

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityBehaviourFunc), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityBehaviourFunc(L, (UnityBehaviourFunc)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

                try
				{
                    translator.TranslateToEnumToTop(L, typeof(UnityBehaviourFunc), 1);
				}
				catch (System.Exception e)
				{
					return LuaAPI.luaL_error(L, "cast to " + typeof(UnityBehaviourFunc) + " exception:" + e);
				}

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityBehaviourFunc! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class TutorialTestEnumWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(Tutorial.TestEnum), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(Tutorial.TestEnum), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(Tutorial.TestEnum), L, null, 3, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E1", Tutorial.TestEnum.E1);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E2", Tutorial.TestEnum.E2);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(Tutorial.TestEnum), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushTutorialTestEnum(L, (Tutorial.TestEnum)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "E1"))
                {
                    translator.PushTutorialTestEnum(L, Tutorial.TestEnum.E1);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "E2"))
                {
                    translator.PushTutorialTestEnum(L, Tutorial.TestEnum.E2);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for Tutorial.TestEnum!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for Tutorial.TestEnum! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class XLuaTestMyEnumWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(XLuaTest.MyEnum), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(XLuaTest.MyEnum), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(XLuaTest.MyEnum), L, null, 3, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E1", XLuaTest.MyEnum.E1);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E2", XLuaTest.MyEnum.E2);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(XLuaTest.MyEnum), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushXLuaTestMyEnum(L, (XLuaTest.MyEnum)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "E1"))
                {
                    translator.PushXLuaTestMyEnum(L, XLuaTest.MyEnum.E1);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "E2"))
                {
                    translator.PushXLuaTestMyEnum(L, XLuaTest.MyEnum.E2);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for XLuaTest.MyEnum!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for XLuaTest.MyEnum! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class TutorialDerivedClassTestEnumInnerWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(Tutorial.DerivedClass.TestEnumInner), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(Tutorial.DerivedClass.TestEnumInner), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(Tutorial.DerivedClass.TestEnumInner), L, null, 3, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E3", Tutorial.DerivedClass.TestEnumInner.E3);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "E4", Tutorial.DerivedClass.TestEnumInner.E4);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(Tutorial.DerivedClass.TestEnumInner), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushTutorialDerivedClassTestEnumInner(L, (Tutorial.DerivedClass.TestEnumInner)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "E3"))
                {
                    translator.PushTutorialDerivedClassTestEnumInner(L, Tutorial.DerivedClass.TestEnumInner.E3);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "E4"))
                {
                    translator.PushTutorialDerivedClassTestEnumInner(L, Tutorial.DerivedClass.TestEnumInner.E4);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for Tutorial.DerivedClass.TestEnumInner!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for Tutorial.DerivedClass.TestEnumInner! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineAnimatorUpdateModeWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.AnimatorUpdateMode), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.AnimatorUpdateMode), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.AnimatorUpdateMode), L, null, 4, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Normal", UnityEngine.AnimatorUpdateMode.Normal);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "AnimatePhysics", UnityEngine.AnimatorUpdateMode.AnimatePhysics);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "UnscaledTime", UnityEngine.AnimatorUpdateMode.UnscaledTime);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.AnimatorUpdateMode), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineAnimatorUpdateMode(L, (UnityEngine.AnimatorUpdateMode)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Normal"))
                {
                    translator.PushUnityEngineAnimatorUpdateMode(L, UnityEngine.AnimatorUpdateMode.Normal);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "AnimatePhysics"))
                {
                    translator.PushUnityEngineAnimatorUpdateMode(L, UnityEngine.AnimatorUpdateMode.AnimatePhysics);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "UnscaledTime"))
                {
                    translator.PushUnityEngineAnimatorUpdateMode(L, UnityEngine.AnimatorUpdateMode.UnscaledTime);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.AnimatorUpdateMode!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.AnimatorUpdateMode! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineForceModeWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.ForceMode), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.ForceMode), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.ForceMode), L, null, 5, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Force", UnityEngine.ForceMode.Force);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Acceleration", UnityEngine.ForceMode.Acceleration);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Impulse", UnityEngine.ForceMode.Impulse);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "VelocityChange", UnityEngine.ForceMode.VelocityChange);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.ForceMode), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineForceMode(L, (UnityEngine.ForceMode)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Force"))
                {
                    translator.PushUnityEngineForceMode(L, UnityEngine.ForceMode.Force);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Acceleration"))
                {
                    translator.PushUnityEngineForceMode(L, UnityEngine.ForceMode.Acceleration);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Impulse"))
                {
                    translator.PushUnityEngineForceMode(L, UnityEngine.ForceMode.Impulse);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "VelocityChange"))
                {
                    translator.PushUnityEngineForceMode(L, UnityEngine.ForceMode.VelocityChange);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.ForceMode!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.ForceMode! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineRuntimePlatformWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.RuntimePlatform), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.RuntimePlatform), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.RuntimePlatform), L, null, 36, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "OSXEditor", UnityEngine.RuntimePlatform.OSXEditor);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "OSXPlayer", UnityEngine.RuntimePlatform.OSXPlayer);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WindowsPlayer", UnityEngine.RuntimePlatform.WindowsPlayer);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WindowsEditor", UnityEngine.RuntimePlatform.WindowsEditor);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "IPhonePlayer", UnityEngine.RuntimePlatform.IPhonePlayer);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Android", UnityEngine.RuntimePlatform.Android);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LinuxPlayer", UnityEngine.RuntimePlatform.LinuxPlayer);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LinuxEditor", UnityEngine.RuntimePlatform.LinuxEditor);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WebGLPlayer", UnityEngine.RuntimePlatform.WebGLPlayer);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WSAPlayerX86", UnityEngine.RuntimePlatform.WSAPlayerX86);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WSAPlayerX64", UnityEngine.RuntimePlatform.WSAPlayerX64);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "WSAPlayerARM", UnityEngine.RuntimePlatform.WSAPlayerARM);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "PS4", UnityEngine.RuntimePlatform.PS4);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "XboxOne", UnityEngine.RuntimePlatform.XboxOne);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "tvOS", UnityEngine.RuntimePlatform.tvOS);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Switch", UnityEngine.RuntimePlatform.Switch);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Lumin", UnityEngine.RuntimePlatform.Lumin);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.RuntimePlatform), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineRuntimePlatform(L, (UnityEngine.RuntimePlatform)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "OSXEditor"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.OSXEditor);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "OSXPlayer"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.OSXPlayer);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WindowsPlayer"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WindowsPlayer);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WindowsEditor"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WindowsEditor);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "IPhonePlayer"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.IPhonePlayer);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Android"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.Android);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "LinuxPlayer"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.LinuxPlayer);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "LinuxEditor"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.LinuxEditor);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WebGLPlayer"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WebGLPlayer);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WSAPlayerX86"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WSAPlayerX86);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WSAPlayerX64"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WSAPlayerX64);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "WSAPlayerARM"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.WSAPlayerARM);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "PS4"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.PS4);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "XboxOne"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.XboxOne);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "tvOS"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.tvOS);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Switch"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.Switch);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Lumin"))
                {
                    translator.PushUnityEngineRuntimePlatform(L, UnityEngine.RuntimePlatform.Lumin);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.RuntimePlatform!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.RuntimePlatform! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineUISelectableTransitionWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.UI.Selectable.Transition), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.UI.Selectable.Transition), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.UI.Selectable.Transition), L, null, 5, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "None", UnityEngine.UI.Selectable.Transition.None);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "ColorTint", UnityEngine.UI.Selectable.Transition.ColorTint);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SpriteSwap", UnityEngine.UI.Selectable.Transition.SpriteSwap);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Animation", UnityEngine.UI.Selectable.Transition.Animation);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.UI.Selectable.Transition), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineUISelectableTransition(L, (UnityEngine.UI.Selectable.Transition)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "None"))
                {
                    translator.PushUnityEngineUISelectableTransition(L, UnityEngine.UI.Selectable.Transition.None);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "ColorTint"))
                {
                    translator.PushUnityEngineUISelectableTransition(L, UnityEngine.UI.Selectable.Transition.ColorTint);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "SpriteSwap"))
                {
                    translator.PushUnityEngineUISelectableTransition(L, UnityEngine.UI.Selectable.Transition.SpriteSwap);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Animation"))
                {
                    translator.PushUnityEngineUISelectableTransition(L, UnityEngine.UI.Selectable.Transition.Animation);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.UI.Selectable.Transition!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.UI.Selectable.Transition! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineAINavMeshPathStatusWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.AI.NavMeshPathStatus), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.AI.NavMeshPathStatus), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.AI.NavMeshPathStatus), L, null, 4, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "PathComplete", UnityEngine.AI.NavMeshPathStatus.PathComplete);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "PathPartial", UnityEngine.AI.NavMeshPathStatus.PathPartial);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "PathInvalid", UnityEngine.AI.NavMeshPathStatus.PathInvalid);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.AI.NavMeshPathStatus), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineAINavMeshPathStatus(L, (UnityEngine.AI.NavMeshPathStatus)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "PathComplete"))
                {
                    translator.PushUnityEngineAINavMeshPathStatus(L, UnityEngine.AI.NavMeshPathStatus.PathComplete);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "PathPartial"))
                {
                    translator.PushUnityEngineAINavMeshPathStatus(L, UnityEngine.AI.NavMeshPathStatus.PathPartial);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "PathInvalid"))
                {
                    translator.PushUnityEngineAINavMeshPathStatus(L, UnityEngine.AI.NavMeshPathStatus.PathInvalid);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.AI.NavMeshPathStatus!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.AI.NavMeshPathStatus! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class UnityEngineAIObstacleAvoidanceTypeWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(UnityEngine.AI.ObstacleAvoidanceType), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(UnityEngine.AI.ObstacleAvoidanceType), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(UnityEngine.AI.ObstacleAvoidanceType), L, null, 6, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "NoObstacleAvoidance", UnityEngine.AI.ObstacleAvoidanceType.NoObstacleAvoidance);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LowQualityObstacleAvoidance", UnityEngine.AI.ObstacleAvoidanceType.LowQualityObstacleAvoidance);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "MedQualityObstacleAvoidance", UnityEngine.AI.ObstacleAvoidanceType.MedQualityObstacleAvoidance);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "GoodQualityObstacleAvoidance", UnityEngine.AI.ObstacleAvoidanceType.GoodQualityObstacleAvoidance);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "HighQualityObstacleAvoidance", UnityEngine.AI.ObstacleAvoidanceType.HighQualityObstacleAvoidance);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(UnityEngine.AI.ObstacleAvoidanceType), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushUnityEngineAIObstacleAvoidanceType(L, (UnityEngine.AI.ObstacleAvoidanceType)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "NoObstacleAvoidance"))
                {
                    translator.PushUnityEngineAIObstacleAvoidanceType(L, UnityEngine.AI.ObstacleAvoidanceType.NoObstacleAvoidance);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "LowQualityObstacleAvoidance"))
                {
                    translator.PushUnityEngineAIObstacleAvoidanceType(L, UnityEngine.AI.ObstacleAvoidanceType.LowQualityObstacleAvoidance);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "MedQualityObstacleAvoidance"))
                {
                    translator.PushUnityEngineAIObstacleAvoidanceType(L, UnityEngine.AI.ObstacleAvoidanceType.MedQualityObstacleAvoidance);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "GoodQualityObstacleAvoidance"))
                {
                    translator.PushUnityEngineAIObstacleAvoidanceType(L, UnityEngine.AI.ObstacleAvoidanceType.GoodQualityObstacleAvoidance);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "HighQualityObstacleAvoidance"))
                {
                    translator.PushUnityEngineAIObstacleAvoidanceType(L, UnityEngine.AI.ObstacleAvoidanceType.HighQualityObstacleAvoidance);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for UnityEngine.AI.ObstacleAvoidanceType!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for UnityEngine.AI.ObstacleAvoidanceType! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class VibrateTypesWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(VibrateTypes), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(VibrateTypes), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(VibrateTypes), L, null, 11, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Selection", VibrateTypes.Selection);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Success", VibrateTypes.Success);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Warning", VibrateTypes.Warning);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Failure", VibrateTypes.Failure);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Skill", VibrateTypes.Skill);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "LightImpact", VibrateTypes.LightImpact);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "MediumImpact", VibrateTypes.MediumImpact);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "HeavyImpact", VibrateTypes.HeavyImpact);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "RigidImpact", VibrateTypes.RigidImpact);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "SoftImpact", VibrateTypes.SoftImpact);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(VibrateTypes), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushVibrateTypes(L, (VibrateTypes)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Selection"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.Selection);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Success"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.Success);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Warning"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.Warning);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Failure"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.Failure);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Skill"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.Skill);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "LightImpact"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.LightImpact);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "MediumImpact"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.MediumImpact);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "HeavyImpact"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.HeavyImpact);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "RigidImpact"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.RigidImpact);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "SoftImpact"))
                {
                    translator.PushVibrateTypes(L, VibrateTypes.SoftImpact);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for VibrateTypes!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for VibrateTypes! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class DGTweeningLoopTypeWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(DG.Tweening.LoopType), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(DG.Tweening.LoopType), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(DG.Tweening.LoopType), L, null, 4, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Restart", DG.Tweening.LoopType.Restart);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Yoyo", DG.Tweening.LoopType.Yoyo);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Incremental", DG.Tweening.LoopType.Incremental);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(DG.Tweening.LoopType), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushDGTweeningLoopType(L, (DG.Tweening.LoopType)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Restart"))
                {
                    translator.PushDGTweeningLoopType(L, DG.Tweening.LoopType.Restart);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Yoyo"))
                {
                    translator.PushDGTweeningLoopType(L, DG.Tweening.LoopType.Yoyo);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Incremental"))
                {
                    translator.PushDGTweeningLoopType(L, DG.Tweening.LoopType.Incremental);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for DG.Tweening.LoopType!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for DG.Tweening.LoopType! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class DGTweeningEaseWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(DG.Tweening.Ease), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(DG.Tweening.Ease), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(DG.Tweening.Ease), L, null, 39, 0, 0);

            Utils.RegisterEnumType(L, typeof(DG.Tweening.Ease));

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(DG.Tweening.Ease), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushDGTweeningEase(L, (DG.Tweening.Ease)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

                try
				{
                    translator.TranslateToEnumToTop(L, typeof(DG.Tweening.Ease), 1);
				}
				catch (System.Exception e)
				{
					return LuaAPI.luaL_error(L, "cast to " + typeof(DG.Tweening.Ease) + " exception:" + e);
				}

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for DG.Tweening.Ease! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class TMProTextureMappingOptionsWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(TMPro.TextureMappingOptions), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(TMPro.TextureMappingOptions), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(TMPro.TextureMappingOptions), L, null, 5, 0, 0);

            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Character", TMPro.TextureMappingOptions.Character);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Line", TMPro.TextureMappingOptions.Line);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "Paragraph", TMPro.TextureMappingOptions.Paragraph);
            
            Utils.RegisterObject(L, translator, Utils.CLS_IDX, "MatchAspect", TMPro.TextureMappingOptions.MatchAspect);
            

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(TMPro.TextureMappingOptions), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushTMProTextureMappingOptions(L, (TMPro.TextureMappingOptions)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

			    if (LuaAPI.xlua_is_eq_str(L, 1, "Character"))
                {
                    translator.PushTMProTextureMappingOptions(L, TMPro.TextureMappingOptions.Character);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Line"))
                {
                    translator.PushTMProTextureMappingOptions(L, TMPro.TextureMappingOptions.Line);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "Paragraph"))
                {
                    translator.PushTMProTextureMappingOptions(L, TMPro.TextureMappingOptions.Paragraph);
                }
				else if (LuaAPI.xlua_is_eq_str(L, 1, "MatchAspect"))
                {
                    translator.PushTMProTextureMappingOptions(L, TMPro.TextureMappingOptions.MatchAspect);
                }
				else
                {
                    return LuaAPI.luaL_error(L, "invalid string for TMPro.TextureMappingOptions!");
                }

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for TMPro.TextureMappingOptions! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
    public class TMProTextAlignmentOptionsWrap
    {
		public static void __Register(RealStatePtr L)
        {
		    ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
		    Utils.BeginObjectRegister(typeof(TMPro.TextAlignmentOptions), L, translator, 0, 0, 0, 0);
			Utils.EndObjectRegister(typeof(TMPro.TextAlignmentOptions), L, translator, null, null, null, null, null);
			
			Utils.BeginClassRegister(typeof(TMPro.TextAlignmentOptions), L, null, 37, 0, 0);

            Utils.RegisterEnumType(L, typeof(TMPro.TextAlignmentOptions));

			Utils.RegisterFunc(L, Utils.CLS_IDX, "__CastFrom", __CastFrom);
            
            Utils.EndClassRegister(typeof(TMPro.TextAlignmentOptions), L, translator);
        }
		
		[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CastFrom(RealStatePtr L)
		{
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			LuaTypes lua_type = LuaAPI.lua_type(L, 1);
            if (lua_type == LuaTypes.LUA_TNUMBER)
            {
                translator.PushTMProTextAlignmentOptions(L, (TMPro.TextAlignmentOptions)LuaAPI.xlua_tointeger(L, 1));
            }
			
            else if(lua_type == LuaTypes.LUA_TSTRING)
            {

                try
				{
                    translator.TranslateToEnumToTop(L, typeof(TMPro.TextAlignmentOptions), 1);
				}
				catch (System.Exception e)
				{
					return LuaAPI.luaL_error(L, "cast to " + typeof(TMPro.TextAlignmentOptions) + " exception:" + e);
				}

            }
			
            else
            {
                return LuaAPI.luaL_error(L, "invalid lua type for TMPro.TextAlignmentOptions! Expect number or string, got + " + lua_type);
            }

            return 1;
		}
	}
    
}