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
    public class LuaBridgeBaseWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(LuaBridgeBase);
			Utils.BeginObjectRegister(type, L, translator, 0, 3, 0, 0);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetEntityAttr", _m_GetEntityAttr);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetEntityAttr", _m_SetEntityAttr);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "MoveTrackChange", _m_MoveTrackChange);
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 2, 0, 0);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "Bind", _m_Bind_xlua_st_);
            
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new LuaBridgeBase();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to LuaBridgeBase constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Bind_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    int _bridgeType = LuaAPI.xlua_tointeger(L, 1);
                    UnityEngine.GameObject _go = (UnityEngine.GameObject)translator.GetObject(L, 2, typeof(UnityEngine.GameObject));
                    XLua.LuaTable _luaTbl = (XLua.LuaTable)translator.GetObject(L, 3, typeof(XLua.LuaTable));
                    XLua.LuaTable _LuaDLL = (XLua.LuaTable)translator.GetObject(L, 4, typeof(XLua.LuaTable));
                    
                        var gen_ret = LuaBridgeBase.Bind( _bridgeType, _go, _luaTbl, _LuaDLL );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetEntityAttr(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                LuaBridgeBase gen_to_be_invoked = (LuaBridgeBase)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _attrCode = LuaAPI.lua_tostring(L, 2);
                    int _offset = LuaAPI.xlua_tointeger(L, 3);
                    
                        var gen_ret = gen_to_be_invoked.GetEntityAttr( _attrCode, _offset );
                        LuaAPI.lua_pushnumber(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetEntityAttr(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                LuaBridgeBase gen_to_be_invoked = (LuaBridgeBase)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _attrCode = LuaAPI.lua_tostring(L, 2);
                    int _offset = LuaAPI.xlua_tointeger(L, 3);
                    float _value = (float)LuaAPI.lua_tonumber(L, 4);
                    
                    gen_to_be_invoked.SetEntityAttr( _attrCode, _offset, _value );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MoveTrackChange(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                LuaBridgeBase gen_to_be_invoked = (LuaBridgeBase)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _changeName = LuaAPI.lua_tostring(L, 2);
                    int _index = LuaAPI.xlua_tointeger(L, 3);
                    
                    gen_to_be_invoked.MoveTrackChange( _changeName, _index );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        
        
		
		
		
		
    }
}
