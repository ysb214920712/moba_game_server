#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using System;


namespace XLua
{
    public partial class ObjectTranslator
    {
        
        class IniterAdderLuaBridgeType
        {
            static IniterAdderLuaBridgeType()
            {
                LuaEnv.AddIniter(Init);
            }
			
			static void Init(LuaEnv luaenv, ObjectTranslator translator)
			{
			
				translator.RegisterPushAndGetAndUpdate<LuaBridgeType>(translator.PushLuaBridgeType, translator.Get, translator.UpdateLuaBridgeType);
				translator.RegisterPushAndGetAndUpdate<UnityBehaviourFunc>(translator.PushUnityBehaviourFunc, translator.Get, translator.UpdateUnityBehaviourFunc);
				translator.RegisterPushAndGetAndUpdate<XLuaTest.Pedding>(translator.PushXLuaTestPedding, translator.Get, translator.UpdateXLuaTestPedding);
				translator.RegisterPushAndGetAndUpdate<XLuaTest.MyStruct>(translator.PushXLuaTestMyStruct, translator.Get, translator.UpdateXLuaTestMyStruct);
				translator.RegisterPushAndGetAndUpdate<XLuaTest.PushAsTableStruct>(translator.PushXLuaTestPushAsTableStruct, translator.Get, translator.UpdateXLuaTestPushAsTableStruct);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector2>(translator.PushUnityEngineVector2, translator.Get, translator.UpdateUnityEngineVector2);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector3>(translator.PushUnityEngineVector3, translator.Get, translator.UpdateUnityEngineVector3);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector4>(translator.PushUnityEngineVector4, translator.Get, translator.UpdateUnityEngineVector4);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Color>(translator.PushUnityEngineColor, translator.Get, translator.UpdateUnityEngineColor);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Quaternion>(translator.PushUnityEngineQuaternion, translator.Get, translator.UpdateUnityEngineQuaternion);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Ray>(translator.PushUnityEngineRay, translator.Get, translator.UpdateUnityEngineRay);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Bounds>(translator.PushUnityEngineBounds, translator.Get, translator.UpdateUnityEngineBounds);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Ray2D>(translator.PushUnityEngineRay2D, translator.Get, translator.UpdateUnityEngineRay2D);
				translator.RegisterPushAndGetAndUpdate<SRGameOptions.SRGameOptionsEnum>(translator.PushSRGameOptionsSRGameOptionsEnum, translator.Get, translator.UpdateSRGameOptionsSRGameOptionsEnum);
				translator.RegisterPushAndGetAndUpdate<Tutorial.TestEnum>(translator.PushTutorialTestEnum, translator.Get, translator.UpdateTutorialTestEnum);
				translator.RegisterPushAndGetAndUpdate<XLuaTest.MyEnum>(translator.PushXLuaTestMyEnum, translator.Get, translator.UpdateXLuaTestMyEnum);
				translator.RegisterPushAndGetAndUpdate<Tutorial.DerivedClass.TestEnumInner>(translator.PushTutorialDerivedClassTestEnumInner, translator.Get, translator.UpdateTutorialDerivedClassTestEnumInner);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AnimatorUpdateMode>(translator.PushUnityEngineAnimatorUpdateMode, translator.Get, translator.UpdateUnityEngineAnimatorUpdateMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.ForceMode>(translator.PushUnityEngineForceMode, translator.Get, translator.UpdateUnityEngineForceMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.RuntimePlatform>(translator.PushUnityEngineRuntimePlatform, translator.Get, translator.UpdateUnityEngineRuntimePlatform);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.UI.Selectable.Transition>(translator.PushUnityEngineUISelectableTransition, translator.Get, translator.UpdateUnityEngineUISelectableTransition);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AI.NavMeshPathStatus>(translator.PushUnityEngineAINavMeshPathStatus, translator.Get, translator.UpdateUnityEngineAINavMeshPathStatus);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AI.ObstacleAvoidanceType>(translator.PushUnityEngineAIObstacleAvoidanceType, translator.Get, translator.UpdateUnityEngineAIObstacleAvoidanceType);
				translator.RegisterPushAndGetAndUpdate<VibrateTypes>(translator.PushVibrateTypes, translator.Get, translator.UpdateVibrateTypes);
				translator.RegisterPushAndGetAndUpdate<DG.Tweening.LoopType>(translator.PushDGTweeningLoopType, translator.Get, translator.UpdateDGTweeningLoopType);
				translator.RegisterPushAndGetAndUpdate<DG.Tweening.Ease>(translator.PushDGTweeningEase, translator.Get, translator.UpdateDGTweeningEase);
				translator.RegisterPushAndGetAndUpdate<TMPro.TextureMappingOptions>(translator.PushTMProTextureMappingOptions, translator.Get, translator.UpdateTMProTextureMappingOptions);
				translator.RegisterPushAndGetAndUpdate<TMPro.TextAlignmentOptions>(translator.PushTMProTextAlignmentOptions, translator.Get, translator.UpdateTMProTextAlignmentOptions);
			
			}
        }
        
        static IniterAdderLuaBridgeType s_IniterAdderLuaBridgeType_dumb_obj = new IniterAdderLuaBridgeType();
        static IniterAdderLuaBridgeType IniterAdderLuaBridgeType_dumb_obj {get{return s_IniterAdderLuaBridgeType_dumb_obj;}}
        
        
        int LuaBridgeType_TypeID = -1;
		int LuaBridgeType_EnumRef = -1;
        
        public void PushLuaBridgeType(RealStatePtr L, LuaBridgeType val)
        {
            if (LuaBridgeType_TypeID == -1)
            {
			    bool is_first;
                LuaBridgeType_TypeID = getTypeId(L, typeof(LuaBridgeType), out is_first);
				
				if (LuaBridgeType_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(LuaBridgeType));
				    LuaBridgeType_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, LuaBridgeType_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, LuaBridgeType_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for LuaBridgeType ,value="+val);
            }
			
			LuaAPI.lua_getref(L, LuaBridgeType_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out LuaBridgeType val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != LuaBridgeType_TypeID)
				{
				    throw new Exception("invalid userdata for LuaBridgeType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for LuaBridgeType");
                }
				val = (LuaBridgeType)e;
                
            }
            else
            {
                val = (LuaBridgeType)objectCasters.GetCaster(typeof(LuaBridgeType))(L, index, null);
            }
        }
		
        public void UpdateLuaBridgeType(RealStatePtr L, int index, LuaBridgeType val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != LuaBridgeType_TypeID)
				{
				    throw new Exception("invalid userdata for LuaBridgeType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for LuaBridgeType ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityBehaviourFunc_TypeID = -1;
		int UnityBehaviourFunc_EnumRef = -1;
        
        public void PushUnityBehaviourFunc(RealStatePtr L, UnityBehaviourFunc val)
        {
            if (UnityBehaviourFunc_TypeID == -1)
            {
			    bool is_first;
                UnityBehaviourFunc_TypeID = getTypeId(L, typeof(UnityBehaviourFunc), out is_first);
				
				if (UnityBehaviourFunc_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityBehaviourFunc));
				    UnityBehaviourFunc_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityBehaviourFunc_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityBehaviourFunc_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityBehaviourFunc ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityBehaviourFunc_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityBehaviourFunc val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityBehaviourFunc_TypeID)
				{
				    throw new Exception("invalid userdata for UnityBehaviourFunc");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityBehaviourFunc");
                }
				val = (UnityBehaviourFunc)e;
                
            }
            else
            {
                val = (UnityBehaviourFunc)objectCasters.GetCaster(typeof(UnityBehaviourFunc))(L, index, null);
            }
        }
		
        public void UpdateUnityBehaviourFunc(RealStatePtr L, int index, UnityBehaviourFunc val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityBehaviourFunc_TypeID)
				{
				    throw new Exception("invalid userdata for UnityBehaviourFunc");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityBehaviourFunc ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int XLuaTestPedding_TypeID = -1;
        public void PushXLuaTestPedding(RealStatePtr L, XLuaTest.Pedding val)
        {
            if (XLuaTestPedding_TypeID == -1)
            {
			    bool is_first;
                XLuaTestPedding_TypeID = getTypeId(L, typeof(XLuaTest.Pedding), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 1, XLuaTestPedding_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for XLuaTest.Pedding ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out XLuaTest.Pedding val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestPedding_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.Pedding");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for XLuaTest.Pedding");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (XLuaTest.Pedding)objectCasters.GetCaster(typeof(XLuaTest.Pedding))(L, index, null);
            }
        }
		
        public void UpdateXLuaTestPedding(RealStatePtr L, int index, XLuaTest.Pedding val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestPedding_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.Pedding");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for XLuaTest.Pedding ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int XLuaTestMyStruct_TypeID = -1;
        public void PushXLuaTestMyStruct(RealStatePtr L, XLuaTest.MyStruct val)
        {
            if (XLuaTestMyStruct_TypeID == -1)
            {
			    bool is_first;
                XLuaTestMyStruct_TypeID = getTypeId(L, typeof(XLuaTest.MyStruct), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 25, XLuaTestMyStruct_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for XLuaTest.MyStruct ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out XLuaTest.MyStruct val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestMyStruct_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.MyStruct");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for XLuaTest.MyStruct");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (XLuaTest.MyStruct)objectCasters.GetCaster(typeof(XLuaTest.MyStruct))(L, index, null);
            }
        }
		
        public void UpdateXLuaTestMyStruct(RealStatePtr L, int index, XLuaTest.MyStruct val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestMyStruct_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.MyStruct");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for XLuaTest.MyStruct ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int XLuaTestPushAsTableStruct_TypeID = -1;
        public void PushXLuaTestPushAsTableStruct(RealStatePtr L, XLuaTest.PushAsTableStruct val)
        {
            if (XLuaTestPushAsTableStruct_TypeID == -1)
            {
			    bool is_first;
                XLuaTestPushAsTableStruct_TypeID = getTypeId(L, typeof(XLuaTest.PushAsTableStruct), out is_first);
				
            }
			
			
			LuaAPI.xlua_pushcstable(L, 2, XLuaTestPushAsTableStruct_TypeID);
			
			LuaAPI.xlua_pushasciistring(L, "x");
			LuaAPI.xlua_pushinteger(L, val.x);
			LuaAPI.lua_rawset(L, -3);
			
			LuaAPI.xlua_pushasciistring(L, "y");
			LuaAPI.xlua_pushinteger(L, val.y);
			LuaAPI.lua_rawset(L, -3);
			
			
        }
		
        public void Get(RealStatePtr L, int index, out XLuaTest.PushAsTableStruct val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestPushAsTableStruct_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.PushAsTableStruct");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for XLuaTest.PushAsTableStruct");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (XLuaTest.PushAsTableStruct)objectCasters.GetCaster(typeof(XLuaTest.PushAsTableStruct))(L, index, null);
            }
        }
		
        public void UpdateXLuaTestPushAsTableStruct(RealStatePtr L, int index, XLuaTest.PushAsTableStruct val)
        {
		    
			if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TTABLE)
            {
			    return;
			}
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector2_TypeID = -1;
        public void PushUnityEngineVector2(RealStatePtr L, UnityEngine.Vector2 val)
        {
            if (UnityEngineVector2_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector2_TypeID = getTypeId(L, typeof(UnityEngine.Vector2), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 8, UnityEngineVector2_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector2 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector2 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector2_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector2");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector2");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector2)objectCasters.GetCaster(typeof(UnityEngine.Vector2))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector2(RealStatePtr L, int index, UnityEngine.Vector2 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector2_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector2");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector2 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector3_TypeID = -1;
        public void PushUnityEngineVector3(RealStatePtr L, UnityEngine.Vector3 val)
        {
            if (UnityEngineVector3_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector3_TypeID = getTypeId(L, typeof(UnityEngine.Vector3), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 12, UnityEngineVector3_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector3 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector3 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector3_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector3");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector3");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector3)objectCasters.GetCaster(typeof(UnityEngine.Vector3))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector3(RealStatePtr L, int index, UnityEngine.Vector3 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector3_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector3");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector3 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector4_TypeID = -1;
        public void PushUnityEngineVector4(RealStatePtr L, UnityEngine.Vector4 val)
        {
            if (UnityEngineVector4_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector4_TypeID = getTypeId(L, typeof(UnityEngine.Vector4), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineVector4_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector4 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector4 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector4_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector4");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector4");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector4)objectCasters.GetCaster(typeof(UnityEngine.Vector4))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector4(RealStatePtr L, int index, UnityEngine.Vector4 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector4_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector4");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector4 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineColor_TypeID = -1;
        public void PushUnityEngineColor(RealStatePtr L, UnityEngine.Color val)
        {
            if (UnityEngineColor_TypeID == -1)
            {
			    bool is_first;
                UnityEngineColor_TypeID = getTypeId(L, typeof(UnityEngine.Color), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineColor_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Color ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Color val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineColor_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Color");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Color");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Color)objectCasters.GetCaster(typeof(UnityEngine.Color))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineColor(RealStatePtr L, int index, UnityEngine.Color val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineColor_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Color");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Color ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineQuaternion_TypeID = -1;
        public void PushUnityEngineQuaternion(RealStatePtr L, UnityEngine.Quaternion val)
        {
            if (UnityEngineQuaternion_TypeID == -1)
            {
			    bool is_first;
                UnityEngineQuaternion_TypeID = getTypeId(L, typeof(UnityEngine.Quaternion), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineQuaternion_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Quaternion ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Quaternion val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineQuaternion_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Quaternion");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Quaternion");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Quaternion)objectCasters.GetCaster(typeof(UnityEngine.Quaternion))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineQuaternion(RealStatePtr L, int index, UnityEngine.Quaternion val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineQuaternion_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Quaternion");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Quaternion ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRay_TypeID = -1;
        public void PushUnityEngineRay(RealStatePtr L, UnityEngine.Ray val)
        {
            if (UnityEngineRay_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRay_TypeID = getTypeId(L, typeof(UnityEngine.Ray), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 24, UnityEngineRay_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Ray ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Ray val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Ray");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Ray)objectCasters.GetCaster(typeof(UnityEngine.Ray))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRay(RealStatePtr L, int index, UnityEngine.Ray val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Ray ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineBounds_TypeID = -1;
        public void PushUnityEngineBounds(RealStatePtr L, UnityEngine.Bounds val)
        {
            if (UnityEngineBounds_TypeID == -1)
            {
			    bool is_first;
                UnityEngineBounds_TypeID = getTypeId(L, typeof(UnityEngine.Bounds), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 24, UnityEngineBounds_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Bounds ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Bounds val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineBounds_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Bounds");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Bounds");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Bounds)objectCasters.GetCaster(typeof(UnityEngine.Bounds))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineBounds(RealStatePtr L, int index, UnityEngine.Bounds val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineBounds_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Bounds");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Bounds ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRay2D_TypeID = -1;
        public void PushUnityEngineRay2D(RealStatePtr L, UnityEngine.Ray2D val)
        {
            if (UnityEngineRay2D_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRay2D_TypeID = getTypeId(L, typeof(UnityEngine.Ray2D), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineRay2D_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Ray2D ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Ray2D val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay2D_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray2D");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Ray2D");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Ray2D)objectCasters.GetCaster(typeof(UnityEngine.Ray2D))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRay2D(RealStatePtr L, int index, UnityEngine.Ray2D val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay2D_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray2D");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Ray2D ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int SRGameOptionsSRGameOptionsEnum_TypeID = -1;
		int SRGameOptionsSRGameOptionsEnum_EnumRef = -1;
        
        public void PushSRGameOptionsSRGameOptionsEnum(RealStatePtr L, SRGameOptions.SRGameOptionsEnum val)
        {
            if (SRGameOptionsSRGameOptionsEnum_TypeID == -1)
            {
			    bool is_first;
                SRGameOptionsSRGameOptionsEnum_TypeID = getTypeId(L, typeof(SRGameOptions.SRGameOptionsEnum), out is_first);
				
				if (SRGameOptionsSRGameOptionsEnum_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(SRGameOptions.SRGameOptionsEnum));
				    SRGameOptionsSRGameOptionsEnum_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, SRGameOptionsSRGameOptionsEnum_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, SRGameOptionsSRGameOptionsEnum_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for SRGameOptions.SRGameOptionsEnum ,value="+val);
            }
			
			LuaAPI.lua_getref(L, SRGameOptionsSRGameOptionsEnum_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out SRGameOptions.SRGameOptionsEnum val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != SRGameOptionsSRGameOptionsEnum_TypeID)
				{
				    throw new Exception("invalid userdata for SRGameOptions.SRGameOptionsEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for SRGameOptions.SRGameOptionsEnum");
                }
				val = (SRGameOptions.SRGameOptionsEnum)e;
                
            }
            else
            {
                val = (SRGameOptions.SRGameOptionsEnum)objectCasters.GetCaster(typeof(SRGameOptions.SRGameOptionsEnum))(L, index, null);
            }
        }
		
        public void UpdateSRGameOptionsSRGameOptionsEnum(RealStatePtr L, int index, SRGameOptions.SRGameOptionsEnum val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != SRGameOptionsSRGameOptionsEnum_TypeID)
				{
				    throw new Exception("invalid userdata for SRGameOptions.SRGameOptionsEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for SRGameOptions.SRGameOptionsEnum ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int TutorialTestEnum_TypeID = -1;
		int TutorialTestEnum_EnumRef = -1;
        
        public void PushTutorialTestEnum(RealStatePtr L, Tutorial.TestEnum val)
        {
            if (TutorialTestEnum_TypeID == -1)
            {
			    bool is_first;
                TutorialTestEnum_TypeID = getTypeId(L, typeof(Tutorial.TestEnum), out is_first);
				
				if (TutorialTestEnum_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(Tutorial.TestEnum));
				    TutorialTestEnum_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, TutorialTestEnum_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, TutorialTestEnum_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for Tutorial.TestEnum ,value="+val);
            }
			
			LuaAPI.lua_getref(L, TutorialTestEnum_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out Tutorial.TestEnum val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TutorialTestEnum_TypeID)
				{
				    throw new Exception("invalid userdata for Tutorial.TestEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for Tutorial.TestEnum");
                }
				val = (Tutorial.TestEnum)e;
                
            }
            else
            {
                val = (Tutorial.TestEnum)objectCasters.GetCaster(typeof(Tutorial.TestEnum))(L, index, null);
            }
        }
		
        public void UpdateTutorialTestEnum(RealStatePtr L, int index, Tutorial.TestEnum val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TutorialTestEnum_TypeID)
				{
				    throw new Exception("invalid userdata for Tutorial.TestEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for Tutorial.TestEnum ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int XLuaTestMyEnum_TypeID = -1;
		int XLuaTestMyEnum_EnumRef = -1;
        
        public void PushXLuaTestMyEnum(RealStatePtr L, XLuaTest.MyEnum val)
        {
            if (XLuaTestMyEnum_TypeID == -1)
            {
			    bool is_first;
                XLuaTestMyEnum_TypeID = getTypeId(L, typeof(XLuaTest.MyEnum), out is_first);
				
				if (XLuaTestMyEnum_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(XLuaTest.MyEnum));
				    XLuaTestMyEnum_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, XLuaTestMyEnum_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, XLuaTestMyEnum_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for XLuaTest.MyEnum ,value="+val);
            }
			
			LuaAPI.lua_getref(L, XLuaTestMyEnum_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out XLuaTest.MyEnum val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestMyEnum_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.MyEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for XLuaTest.MyEnum");
                }
				val = (XLuaTest.MyEnum)e;
                
            }
            else
            {
                val = (XLuaTest.MyEnum)objectCasters.GetCaster(typeof(XLuaTest.MyEnum))(L, index, null);
            }
        }
		
        public void UpdateXLuaTestMyEnum(RealStatePtr L, int index, XLuaTest.MyEnum val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != XLuaTestMyEnum_TypeID)
				{
				    throw new Exception("invalid userdata for XLuaTest.MyEnum");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for XLuaTest.MyEnum ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int TutorialDerivedClassTestEnumInner_TypeID = -1;
		int TutorialDerivedClassTestEnumInner_EnumRef = -1;
        
        public void PushTutorialDerivedClassTestEnumInner(RealStatePtr L, Tutorial.DerivedClass.TestEnumInner val)
        {
            if (TutorialDerivedClassTestEnumInner_TypeID == -1)
            {
			    bool is_first;
                TutorialDerivedClassTestEnumInner_TypeID = getTypeId(L, typeof(Tutorial.DerivedClass.TestEnumInner), out is_first);
				
				if (TutorialDerivedClassTestEnumInner_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(Tutorial.DerivedClass.TestEnumInner));
				    TutorialDerivedClassTestEnumInner_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, TutorialDerivedClassTestEnumInner_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, TutorialDerivedClassTestEnumInner_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for Tutorial.DerivedClass.TestEnumInner ,value="+val);
            }
			
			LuaAPI.lua_getref(L, TutorialDerivedClassTestEnumInner_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out Tutorial.DerivedClass.TestEnumInner val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TutorialDerivedClassTestEnumInner_TypeID)
				{
				    throw new Exception("invalid userdata for Tutorial.DerivedClass.TestEnumInner");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for Tutorial.DerivedClass.TestEnumInner");
                }
				val = (Tutorial.DerivedClass.TestEnumInner)e;
                
            }
            else
            {
                val = (Tutorial.DerivedClass.TestEnumInner)objectCasters.GetCaster(typeof(Tutorial.DerivedClass.TestEnumInner))(L, index, null);
            }
        }
		
        public void UpdateTutorialDerivedClassTestEnumInner(RealStatePtr L, int index, Tutorial.DerivedClass.TestEnumInner val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TutorialDerivedClassTestEnumInner_TypeID)
				{
				    throw new Exception("invalid userdata for Tutorial.DerivedClass.TestEnumInner");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for Tutorial.DerivedClass.TestEnumInner ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAnimatorUpdateMode_TypeID = -1;
		int UnityEngineAnimatorUpdateMode_EnumRef = -1;
        
        public void PushUnityEngineAnimatorUpdateMode(RealStatePtr L, UnityEngine.AnimatorUpdateMode val)
        {
            if (UnityEngineAnimatorUpdateMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAnimatorUpdateMode_TypeID = getTypeId(L, typeof(UnityEngine.AnimatorUpdateMode), out is_first);
				
				if (UnityEngineAnimatorUpdateMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.AnimatorUpdateMode));
				    UnityEngineAnimatorUpdateMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineAnimatorUpdateMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineAnimatorUpdateMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.AnimatorUpdateMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineAnimatorUpdateMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AnimatorUpdateMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAnimatorUpdateMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AnimatorUpdateMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.AnimatorUpdateMode");
                }
				val = (UnityEngine.AnimatorUpdateMode)e;
                
            }
            else
            {
                val = (UnityEngine.AnimatorUpdateMode)objectCasters.GetCaster(typeof(UnityEngine.AnimatorUpdateMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAnimatorUpdateMode(RealStatePtr L, int index, UnityEngine.AnimatorUpdateMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAnimatorUpdateMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AnimatorUpdateMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.AnimatorUpdateMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineForceMode_TypeID = -1;
		int UnityEngineForceMode_EnumRef = -1;
        
        public void PushUnityEngineForceMode(RealStatePtr L, UnityEngine.ForceMode val)
        {
            if (UnityEngineForceMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineForceMode_TypeID = getTypeId(L, typeof(UnityEngine.ForceMode), out is_first);
				
				if (UnityEngineForceMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.ForceMode));
				    UnityEngineForceMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineForceMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineForceMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.ForceMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineForceMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.ForceMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineForceMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.ForceMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.ForceMode");
                }
				val = (UnityEngine.ForceMode)e;
                
            }
            else
            {
                val = (UnityEngine.ForceMode)objectCasters.GetCaster(typeof(UnityEngine.ForceMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineForceMode(RealStatePtr L, int index, UnityEngine.ForceMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineForceMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.ForceMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.ForceMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRuntimePlatform_TypeID = -1;
		int UnityEngineRuntimePlatform_EnumRef = -1;
        
        public void PushUnityEngineRuntimePlatform(RealStatePtr L, UnityEngine.RuntimePlatform val)
        {
            if (UnityEngineRuntimePlatform_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRuntimePlatform_TypeID = getTypeId(L, typeof(UnityEngine.RuntimePlatform), out is_first);
				
				if (UnityEngineRuntimePlatform_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.RuntimePlatform));
				    UnityEngineRuntimePlatform_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineRuntimePlatform_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineRuntimePlatform_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.RuntimePlatform ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineRuntimePlatform_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.RuntimePlatform val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRuntimePlatform_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.RuntimePlatform");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.RuntimePlatform");
                }
				val = (UnityEngine.RuntimePlatform)e;
                
            }
            else
            {
                val = (UnityEngine.RuntimePlatform)objectCasters.GetCaster(typeof(UnityEngine.RuntimePlatform))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRuntimePlatform(RealStatePtr L, int index, UnityEngine.RuntimePlatform val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRuntimePlatform_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.RuntimePlatform");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.RuntimePlatform ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineUISelectableTransition_TypeID = -1;
		int UnityEngineUISelectableTransition_EnumRef = -1;
        
        public void PushUnityEngineUISelectableTransition(RealStatePtr L, UnityEngine.UI.Selectable.Transition val)
        {
            if (UnityEngineUISelectableTransition_TypeID == -1)
            {
			    bool is_first;
                UnityEngineUISelectableTransition_TypeID = getTypeId(L, typeof(UnityEngine.UI.Selectable.Transition), out is_first);
				
				if (UnityEngineUISelectableTransition_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.UI.Selectable.Transition));
				    UnityEngineUISelectableTransition_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineUISelectableTransition_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineUISelectableTransition_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.UI.Selectable.Transition ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineUISelectableTransition_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.UI.Selectable.Transition val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineUISelectableTransition_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.UI.Selectable.Transition");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.UI.Selectable.Transition");
                }
				val = (UnityEngine.UI.Selectable.Transition)e;
                
            }
            else
            {
                val = (UnityEngine.UI.Selectable.Transition)objectCasters.GetCaster(typeof(UnityEngine.UI.Selectable.Transition))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineUISelectableTransition(RealStatePtr L, int index, UnityEngine.UI.Selectable.Transition val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineUISelectableTransition_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.UI.Selectable.Transition");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.UI.Selectable.Transition ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAINavMeshPathStatus_TypeID = -1;
		int UnityEngineAINavMeshPathStatus_EnumRef = -1;
        
        public void PushUnityEngineAINavMeshPathStatus(RealStatePtr L, UnityEngine.AI.NavMeshPathStatus val)
        {
            if (UnityEngineAINavMeshPathStatus_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAINavMeshPathStatus_TypeID = getTypeId(L, typeof(UnityEngine.AI.NavMeshPathStatus), out is_first);
				
				if (UnityEngineAINavMeshPathStatus_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.AI.NavMeshPathStatus));
				    UnityEngineAINavMeshPathStatus_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineAINavMeshPathStatus_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineAINavMeshPathStatus_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.AI.NavMeshPathStatus ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineAINavMeshPathStatus_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AI.NavMeshPathStatus val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAINavMeshPathStatus_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.NavMeshPathStatus");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.AI.NavMeshPathStatus");
                }
				val = (UnityEngine.AI.NavMeshPathStatus)e;
                
            }
            else
            {
                val = (UnityEngine.AI.NavMeshPathStatus)objectCasters.GetCaster(typeof(UnityEngine.AI.NavMeshPathStatus))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAINavMeshPathStatus(RealStatePtr L, int index, UnityEngine.AI.NavMeshPathStatus val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAINavMeshPathStatus_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.NavMeshPathStatus");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.AI.NavMeshPathStatus ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAIObstacleAvoidanceType_TypeID = -1;
		int UnityEngineAIObstacleAvoidanceType_EnumRef = -1;
        
        public void PushUnityEngineAIObstacleAvoidanceType(RealStatePtr L, UnityEngine.AI.ObstacleAvoidanceType val)
        {
            if (UnityEngineAIObstacleAvoidanceType_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAIObstacleAvoidanceType_TypeID = getTypeId(L, typeof(UnityEngine.AI.ObstacleAvoidanceType), out is_first);
				
				if (UnityEngineAIObstacleAvoidanceType_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.AI.ObstacleAvoidanceType));
				    UnityEngineAIObstacleAvoidanceType_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineAIObstacleAvoidanceType_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineAIObstacleAvoidanceType_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.AI.ObstacleAvoidanceType ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineAIObstacleAvoidanceType_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AI.ObstacleAvoidanceType val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAIObstacleAvoidanceType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.ObstacleAvoidanceType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.AI.ObstacleAvoidanceType");
                }
				val = (UnityEngine.AI.ObstacleAvoidanceType)e;
                
            }
            else
            {
                val = (UnityEngine.AI.ObstacleAvoidanceType)objectCasters.GetCaster(typeof(UnityEngine.AI.ObstacleAvoidanceType))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAIObstacleAvoidanceType(RealStatePtr L, int index, UnityEngine.AI.ObstacleAvoidanceType val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAIObstacleAvoidanceType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.ObstacleAvoidanceType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.AI.ObstacleAvoidanceType ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int VibrateTypes_TypeID = -1;
		int VibrateTypes_EnumRef = -1;
        
        public void PushVibrateTypes(RealStatePtr L, VibrateTypes val)
        {
            if (VibrateTypes_TypeID == -1)
            {
			    bool is_first;
                VibrateTypes_TypeID = getTypeId(L, typeof(VibrateTypes), out is_first);
				
				if (VibrateTypes_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(VibrateTypes));
				    VibrateTypes_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, VibrateTypes_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, VibrateTypes_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for VibrateTypes ,value="+val);
            }
			
			LuaAPI.lua_getref(L, VibrateTypes_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out VibrateTypes val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != VibrateTypes_TypeID)
				{
				    throw new Exception("invalid userdata for VibrateTypes");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for VibrateTypes");
                }
				val = (VibrateTypes)e;
                
            }
            else
            {
                val = (VibrateTypes)objectCasters.GetCaster(typeof(VibrateTypes))(L, index, null);
            }
        }
		
        public void UpdateVibrateTypes(RealStatePtr L, int index, VibrateTypes val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != VibrateTypes_TypeID)
				{
				    throw new Exception("invalid userdata for VibrateTypes");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for VibrateTypes ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int DGTweeningLoopType_TypeID = -1;
		int DGTweeningLoopType_EnumRef = -1;
        
        public void PushDGTweeningLoopType(RealStatePtr L, DG.Tweening.LoopType val)
        {
            if (DGTweeningLoopType_TypeID == -1)
            {
			    bool is_first;
                DGTweeningLoopType_TypeID = getTypeId(L, typeof(DG.Tweening.LoopType), out is_first);
				
				if (DGTweeningLoopType_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(DG.Tweening.LoopType));
				    DGTweeningLoopType_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, DGTweeningLoopType_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, DGTweeningLoopType_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for DG.Tweening.LoopType ,value="+val);
            }
			
			LuaAPI.lua_getref(L, DGTweeningLoopType_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out DG.Tweening.LoopType val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningLoopType_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.LoopType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for DG.Tweening.LoopType");
                }
				val = (DG.Tweening.LoopType)e;
                
            }
            else
            {
                val = (DG.Tweening.LoopType)objectCasters.GetCaster(typeof(DG.Tweening.LoopType))(L, index, null);
            }
        }
		
        public void UpdateDGTweeningLoopType(RealStatePtr L, int index, DG.Tweening.LoopType val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningLoopType_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.LoopType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for DG.Tweening.LoopType ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int DGTweeningEase_TypeID = -1;
		int DGTweeningEase_EnumRef = -1;
        
        public void PushDGTweeningEase(RealStatePtr L, DG.Tweening.Ease val)
        {
            if (DGTweeningEase_TypeID == -1)
            {
			    bool is_first;
                DGTweeningEase_TypeID = getTypeId(L, typeof(DG.Tweening.Ease), out is_first);
				
				if (DGTweeningEase_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(DG.Tweening.Ease));
				    DGTweeningEase_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, DGTweeningEase_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, DGTweeningEase_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for DG.Tweening.Ease ,value="+val);
            }
			
			LuaAPI.lua_getref(L, DGTweeningEase_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out DG.Tweening.Ease val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningEase_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.Ease");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for DG.Tweening.Ease");
                }
				val = (DG.Tweening.Ease)e;
                
            }
            else
            {
                val = (DG.Tweening.Ease)objectCasters.GetCaster(typeof(DG.Tweening.Ease))(L, index, null);
            }
        }
		
        public void UpdateDGTweeningEase(RealStatePtr L, int index, DG.Tweening.Ease val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningEase_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.Ease");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for DG.Tweening.Ease ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int TMProTextureMappingOptions_TypeID = -1;
		int TMProTextureMappingOptions_EnumRef = -1;
        
        public void PushTMProTextureMappingOptions(RealStatePtr L, TMPro.TextureMappingOptions val)
        {
            if (TMProTextureMappingOptions_TypeID == -1)
            {
			    bool is_first;
                TMProTextureMappingOptions_TypeID = getTypeId(L, typeof(TMPro.TextureMappingOptions), out is_first);
				
				if (TMProTextureMappingOptions_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(TMPro.TextureMappingOptions));
				    TMProTextureMappingOptions_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, TMProTextureMappingOptions_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, TMProTextureMappingOptions_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for TMPro.TextureMappingOptions ,value="+val);
            }
			
			LuaAPI.lua_getref(L, TMProTextureMappingOptions_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out TMPro.TextureMappingOptions val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TMProTextureMappingOptions_TypeID)
				{
				    throw new Exception("invalid userdata for TMPro.TextureMappingOptions");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for TMPro.TextureMappingOptions");
                }
				val = (TMPro.TextureMappingOptions)e;
                
            }
            else
            {
                val = (TMPro.TextureMappingOptions)objectCasters.GetCaster(typeof(TMPro.TextureMappingOptions))(L, index, null);
            }
        }
		
        public void UpdateTMProTextureMappingOptions(RealStatePtr L, int index, TMPro.TextureMappingOptions val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TMProTextureMappingOptions_TypeID)
				{
				    throw new Exception("invalid userdata for TMPro.TextureMappingOptions");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for TMPro.TextureMappingOptions ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int TMProTextAlignmentOptions_TypeID = -1;
		int TMProTextAlignmentOptions_EnumRef = -1;
        
        public void PushTMProTextAlignmentOptions(RealStatePtr L, TMPro.TextAlignmentOptions val)
        {
            if (TMProTextAlignmentOptions_TypeID == -1)
            {
			    bool is_first;
                TMProTextAlignmentOptions_TypeID = getTypeId(L, typeof(TMPro.TextAlignmentOptions), out is_first);
				
				if (TMProTextAlignmentOptions_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(TMPro.TextAlignmentOptions));
				    TMProTextAlignmentOptions_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, TMProTextAlignmentOptions_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, TMProTextAlignmentOptions_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for TMPro.TextAlignmentOptions ,value="+val);
            }
			
			LuaAPI.lua_getref(L, TMProTextAlignmentOptions_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out TMPro.TextAlignmentOptions val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TMProTextAlignmentOptions_TypeID)
				{
				    throw new Exception("invalid userdata for TMPro.TextAlignmentOptions");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for TMPro.TextAlignmentOptions");
                }
				val = (TMPro.TextAlignmentOptions)e;
                
            }
            else
            {
                val = (TMPro.TextAlignmentOptions)objectCasters.GetCaster(typeof(TMPro.TextAlignmentOptions))(L, index, null);
            }
        }
		
        public void UpdateTMProTextAlignmentOptions(RealStatePtr L, int index, TMPro.TextAlignmentOptions val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != TMProTextAlignmentOptions_TypeID)
				{
				    throw new Exception("invalid userdata for TMPro.TextAlignmentOptions");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for TMPro.TextAlignmentOptions ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        
		// table cast optimze
		
        
    }
	
	public partial class StaticLuaCallbacks
    {
	    internal static bool __tryArrayGet(Type type, RealStatePtr L, ObjectTranslator translator, object obj, int index)
		{
		
			if (type == typeof(LuaBridgeType[]))
			{
			    LuaBridgeType[] array = obj as LuaBridgeType[];
				translator.PushLuaBridgeType(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityBehaviourFunc[]))
			{
			    UnityBehaviourFunc[] array = obj as UnityBehaviourFunc[];
				translator.PushUnityBehaviourFunc(L, array[index]);
				return true;
			}
			else if (type == typeof(XLuaTest.Pedding[]))
			{
			    XLuaTest.Pedding[] array = obj as XLuaTest.Pedding[];
				translator.PushXLuaTestPedding(L, array[index]);
				return true;
			}
			else if (type == typeof(XLuaTest.MyStruct[]))
			{
			    XLuaTest.MyStruct[] array = obj as XLuaTest.MyStruct[];
				translator.PushXLuaTestMyStruct(L, array[index]);
				return true;
			}
			else if (type == typeof(XLuaTest.PushAsTableStruct[]))
			{
			    XLuaTest.PushAsTableStruct[] array = obj as XLuaTest.PushAsTableStruct[];
				translator.PushXLuaTestPushAsTableStruct(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector2[]))
			{
			    UnityEngine.Vector2[] array = obj as UnityEngine.Vector2[];
				translator.PushUnityEngineVector2(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector3[]))
			{
			    UnityEngine.Vector3[] array = obj as UnityEngine.Vector3[];
				translator.PushUnityEngineVector3(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector4[]))
			{
			    UnityEngine.Vector4[] array = obj as UnityEngine.Vector4[];
				translator.PushUnityEngineVector4(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Color[]))
			{
			    UnityEngine.Color[] array = obj as UnityEngine.Color[];
				translator.PushUnityEngineColor(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Quaternion[]))
			{
			    UnityEngine.Quaternion[] array = obj as UnityEngine.Quaternion[];
				translator.PushUnityEngineQuaternion(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray[]))
			{
			    UnityEngine.Ray[] array = obj as UnityEngine.Ray[];
				translator.PushUnityEngineRay(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Bounds[]))
			{
			    UnityEngine.Bounds[] array = obj as UnityEngine.Bounds[];
				translator.PushUnityEngineBounds(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray2D[]))
			{
			    UnityEngine.Ray2D[] array = obj as UnityEngine.Ray2D[];
				translator.PushUnityEngineRay2D(L, array[index]);
				return true;
			}
			else if (type == typeof(SRGameOptions.SRGameOptionsEnum[]))
			{
			    SRGameOptions.SRGameOptionsEnum[] array = obj as SRGameOptions.SRGameOptionsEnum[];
				translator.PushSRGameOptionsSRGameOptionsEnum(L, array[index]);
				return true;
			}
			else if (type == typeof(Tutorial.TestEnum[]))
			{
			    Tutorial.TestEnum[] array = obj as Tutorial.TestEnum[];
				translator.PushTutorialTestEnum(L, array[index]);
				return true;
			}
			else if (type == typeof(XLuaTest.MyEnum[]))
			{
			    XLuaTest.MyEnum[] array = obj as XLuaTest.MyEnum[];
				translator.PushXLuaTestMyEnum(L, array[index]);
				return true;
			}
			else if (type == typeof(Tutorial.DerivedClass.TestEnumInner[]))
			{
			    Tutorial.DerivedClass.TestEnumInner[] array = obj as Tutorial.DerivedClass.TestEnumInner[];
				translator.PushTutorialDerivedClassTestEnumInner(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AnimatorUpdateMode[]))
			{
			    UnityEngine.AnimatorUpdateMode[] array = obj as UnityEngine.AnimatorUpdateMode[];
				translator.PushUnityEngineAnimatorUpdateMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.ForceMode[]))
			{
			    UnityEngine.ForceMode[] array = obj as UnityEngine.ForceMode[];
				translator.PushUnityEngineForceMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.RuntimePlatform[]))
			{
			    UnityEngine.RuntimePlatform[] array = obj as UnityEngine.RuntimePlatform[];
				translator.PushUnityEngineRuntimePlatform(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.UI.Selectable.Transition[]))
			{
			    UnityEngine.UI.Selectable.Transition[] array = obj as UnityEngine.UI.Selectable.Transition[];
				translator.PushUnityEngineUISelectableTransition(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.NavMeshPathStatus[]))
			{
			    UnityEngine.AI.NavMeshPathStatus[] array = obj as UnityEngine.AI.NavMeshPathStatus[];
				translator.PushUnityEngineAINavMeshPathStatus(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.ObstacleAvoidanceType[]))
			{
			    UnityEngine.AI.ObstacleAvoidanceType[] array = obj as UnityEngine.AI.ObstacleAvoidanceType[];
				translator.PushUnityEngineAIObstacleAvoidanceType(L, array[index]);
				return true;
			}
			else if (type == typeof(VibrateTypes[]))
			{
			    VibrateTypes[] array = obj as VibrateTypes[];
				translator.PushVibrateTypes(L, array[index]);
				return true;
			}
			else if (type == typeof(DG.Tweening.LoopType[]))
			{
			    DG.Tweening.LoopType[] array = obj as DG.Tweening.LoopType[];
				translator.PushDGTweeningLoopType(L, array[index]);
				return true;
			}
			else if (type == typeof(DG.Tweening.Ease[]))
			{
			    DG.Tweening.Ease[] array = obj as DG.Tweening.Ease[];
				translator.PushDGTweeningEase(L, array[index]);
				return true;
			}
			else if (type == typeof(TMPro.TextureMappingOptions[]))
			{
			    TMPro.TextureMappingOptions[] array = obj as TMPro.TextureMappingOptions[];
				translator.PushTMProTextureMappingOptions(L, array[index]);
				return true;
			}
			else if (type == typeof(TMPro.TextAlignmentOptions[]))
			{
			    TMPro.TextAlignmentOptions[] array = obj as TMPro.TextAlignmentOptions[];
				translator.PushTMProTextAlignmentOptions(L, array[index]);
				return true;
			}
            return false;
		}
		
		internal static bool __tryArraySet(Type type, RealStatePtr L, ObjectTranslator translator, object obj, int array_idx, int obj_idx)
		{
		
			if (type == typeof(LuaBridgeType[]))
			{
			    LuaBridgeType[] array = obj as LuaBridgeType[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityBehaviourFunc[]))
			{
			    UnityBehaviourFunc[] array = obj as UnityBehaviourFunc[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(XLuaTest.Pedding[]))
			{
			    XLuaTest.Pedding[] array = obj as XLuaTest.Pedding[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(XLuaTest.MyStruct[]))
			{
			    XLuaTest.MyStruct[] array = obj as XLuaTest.MyStruct[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(XLuaTest.PushAsTableStruct[]))
			{
			    XLuaTest.PushAsTableStruct[] array = obj as XLuaTest.PushAsTableStruct[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector2[]))
			{
			    UnityEngine.Vector2[] array = obj as UnityEngine.Vector2[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector3[]))
			{
			    UnityEngine.Vector3[] array = obj as UnityEngine.Vector3[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector4[]))
			{
			    UnityEngine.Vector4[] array = obj as UnityEngine.Vector4[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Color[]))
			{
			    UnityEngine.Color[] array = obj as UnityEngine.Color[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Quaternion[]))
			{
			    UnityEngine.Quaternion[] array = obj as UnityEngine.Quaternion[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray[]))
			{
			    UnityEngine.Ray[] array = obj as UnityEngine.Ray[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Bounds[]))
			{
			    UnityEngine.Bounds[] array = obj as UnityEngine.Bounds[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray2D[]))
			{
			    UnityEngine.Ray2D[] array = obj as UnityEngine.Ray2D[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(SRGameOptions.SRGameOptionsEnum[]))
			{
			    SRGameOptions.SRGameOptionsEnum[] array = obj as SRGameOptions.SRGameOptionsEnum[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(Tutorial.TestEnum[]))
			{
			    Tutorial.TestEnum[] array = obj as Tutorial.TestEnum[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(XLuaTest.MyEnum[]))
			{
			    XLuaTest.MyEnum[] array = obj as XLuaTest.MyEnum[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(Tutorial.DerivedClass.TestEnumInner[]))
			{
			    Tutorial.DerivedClass.TestEnumInner[] array = obj as Tutorial.DerivedClass.TestEnumInner[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AnimatorUpdateMode[]))
			{
			    UnityEngine.AnimatorUpdateMode[] array = obj as UnityEngine.AnimatorUpdateMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.ForceMode[]))
			{
			    UnityEngine.ForceMode[] array = obj as UnityEngine.ForceMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.RuntimePlatform[]))
			{
			    UnityEngine.RuntimePlatform[] array = obj as UnityEngine.RuntimePlatform[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.UI.Selectable.Transition[]))
			{
			    UnityEngine.UI.Selectable.Transition[] array = obj as UnityEngine.UI.Selectable.Transition[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.NavMeshPathStatus[]))
			{
			    UnityEngine.AI.NavMeshPathStatus[] array = obj as UnityEngine.AI.NavMeshPathStatus[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.ObstacleAvoidanceType[]))
			{
			    UnityEngine.AI.ObstacleAvoidanceType[] array = obj as UnityEngine.AI.ObstacleAvoidanceType[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(VibrateTypes[]))
			{
			    VibrateTypes[] array = obj as VibrateTypes[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(DG.Tweening.LoopType[]))
			{
			    DG.Tweening.LoopType[] array = obj as DG.Tweening.LoopType[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(DG.Tweening.Ease[]))
			{
			    DG.Tweening.Ease[] array = obj as DG.Tweening.Ease[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(TMPro.TextureMappingOptions[]))
			{
			    TMPro.TextureMappingOptions[] array = obj as TMPro.TextureMappingOptions[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(TMPro.TextAlignmentOptions[]))
			{
			    TMPro.TextAlignmentOptions[] array = obj as TMPro.TextAlignmentOptions[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
            return false;
		}
	}
}