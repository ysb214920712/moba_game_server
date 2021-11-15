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
    public class VirtualListWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(VirtualList);
			Utils.BeginObjectRegister(type, L, translator, 0, 15, 10, 10);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ForceRefreshListPosRange", _m_ForceRefreshListPosRange);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetDelegate", _m_SetDelegate);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ResetPosForChanged", _m_ResetPosForChanged);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Fill", _m_Fill);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Remove", _m_Remove);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Insert", _m_Insert);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetEmptyTipStrKey", _m_SetEmptyTipStrKey);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Clear", _m_Clear);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ClearPool", _m_ClearPool);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "UpdateActiveItem", _m_UpdateActiveItem);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "UpdateItemContent", _m_UpdateItemContent);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetItemByIndex", _m_GetItemByIndex);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetItemByTag", _m_GetItemByTag);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "MoveToPos", _m_MoveToPos);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "MoveToItem", _m_MoveToItem);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "modelList", _g_get_modelList);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "layoutType", _g_get_layoutType);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "padingHead", _g_get_padingHead);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "padingTail", _g_get_padingTail);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "spacing", _g_get_spacing);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "cellCount", _g_get_cellCount);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "cellSpacing", _g_get_cellSpacing);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "useMask", _g_get_useMask);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "emptyString", _g_get_emptyString);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "emptyTipTextPrefeb", _g_get_emptyTipTextPrefeb);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "modelList", _s_set_modelList);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "layoutType", _s_set_layoutType);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "padingHead", _s_set_padingHead);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "padingTail", _s_set_padingTail);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "spacing", _s_set_spacing);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "cellCount", _s_set_cellCount);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "cellSpacing", _s_set_cellSpacing);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "useMask", _s_set_useMask);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "emptyString", _s_set_emptyString);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "emptyTipTextPrefeb", _s_set_emptyTipTextPrefeb);
            
			
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
					
					var gen_ret = new VirtualList();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to VirtualList constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ForceRefreshListPosRange(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.ForceRefreshListPosRange(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetDelegate(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    XLua.LuaTable _luaTab = (XLua.LuaTable)translator.GetObject(L, 2, typeof(XLua.LuaTable));
                    
                    gen_to_be_invoked.SetDelegate( _luaTab );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ResetPosForChanged(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.ResetPosForChanged(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Fill(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _listLength = LuaAPI.xlua_tointeger(L, 2);
                    bool _keepPosition = LuaAPI.lua_toboolean(L, 3);
                    
                    gen_to_be_invoked.Fill( _listLength, _keepPosition );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Remove(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _index = LuaAPI.xlua_tointeger(L, 2);
                    
                    gen_to_be_invoked.Remove( _index );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Insert(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _index = LuaAPI.xlua_tointeger(L, 2);
                    
                    gen_to_be_invoked.Insert( _index );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetEmptyTipStrKey(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _key = LuaAPI.lua_tostring(L, 2);
                    string _path = LuaAPI.lua_tostring(L, 3);
                    
                    gen_to_be_invoked.SetEmptyTipStrKey( _key, _path );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Clear(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    bool _destroyPool = LuaAPI.lua_toboolean(L, 2);
                    
                    gen_to_be_invoked.Clear( _destroyPool );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ClearPool(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.ClearPool(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_UpdateActiveItem(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.UpdateActiveItem(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_UpdateItemContent(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _index = LuaAPI.xlua_tointeger(L, 2);
                    
                    gen_to_be_invoked.UpdateItemContent( _index );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetItemByIndex(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _index = LuaAPI.xlua_tointeger(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.GetItemByIndex( _index );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetItemByTag(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string _tag = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.GetItemByTag( _tag );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MoveToPos(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    float _dest = (float)LuaAPI.lua_tonumber(L, 2);
                    
                    gen_to_be_invoked.MoveToPos( _dest );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_MoveToItem(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _index = LuaAPI.xlua_tointeger(L, 2);
                    
                    gen_to_be_invoked.MoveToItem( _index );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_modelList(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.modelList);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_layoutType(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.layoutType);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_padingHead(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.padingHead);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_padingTail(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.padingTail);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_spacing(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.spacing);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_cellCount(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.cellCount);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_cellSpacing(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.cellSpacing);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_useMask(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.useMask);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_emptyString(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushstring(L, gen_to_be_invoked.emptyString);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_emptyTipTextPrefeb(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.emptyTipTextPrefeb);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_modelList(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.modelList = (System.Collections.Generic.List<VirtualList.PrefabInfo>)translator.GetObject(L, 2, typeof(System.Collections.Generic.List<VirtualList.PrefabInfo>));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_layoutType(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                VirtualList.VirtualListLayoutType gen_value;translator.Get(L, 2, out gen_value);
				gen_to_be_invoked.layoutType = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_padingHead(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.padingHead = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_padingTail(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.padingTail = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_spacing(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.spacing = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_cellCount(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.cellCount = LuaAPI.xlua_tointeger(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_cellSpacing(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.cellSpacing = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_useMask(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.useMask = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_emptyString(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.emptyString = LuaAPI.lua_tostring(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_emptyTipTextPrefeb(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                VirtualList gen_to_be_invoked = (VirtualList)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.emptyTipTextPrefeb = (UnityEngine.RectTransform)translator.GetObject(L, 2, typeof(UnityEngine.RectTransform));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
