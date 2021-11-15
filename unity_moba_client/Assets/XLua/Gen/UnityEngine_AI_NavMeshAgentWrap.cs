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
    public class UnityEngineAINavMeshAgentWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(UnityEngine.AI.NavMeshAgent);
			Utils.BeginObjectRegister(type, L, translator, 0, 13, 35, 22);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetDestination", _m_SetDestination);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ActivateCurrentOffMeshLink", _m_ActivateCurrentOffMeshLink);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "CompleteOffMeshLink", _m_CompleteOffMeshLink);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Warp", _m_Warp);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Move", _m_Move);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "ResetPath", _m_ResetPath);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetPath", _m_SetPath);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "FindClosestEdge", _m_FindClosestEdge);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "Raycast", _m_Raycast);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "CalculatePath", _m_CalculatePath);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SamplePathPosition", _m_SamplePathPosition);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetAreaCost", _m_SetAreaCost);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetAreaCost", _m_GetAreaCost);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "destination", _g_get_destination);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "stoppingDistance", _g_get_stoppingDistance);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "velocity", _g_get_velocity);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "nextPosition", _g_get_nextPosition);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "steeringTarget", _g_get_steeringTarget);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "desiredVelocity", _g_get_desiredVelocity);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "remainingDistance", _g_get_remainingDistance);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "baseOffset", _g_get_baseOffset);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "isOnOffMeshLink", _g_get_isOnOffMeshLink);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "currentOffMeshLinkData", _g_get_currentOffMeshLinkData);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "nextOffMeshLinkData", _g_get_nextOffMeshLinkData);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "autoTraverseOffMeshLink", _g_get_autoTraverseOffMeshLink);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "autoBraking", _g_get_autoBraking);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "autoRepath", _g_get_autoRepath);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "hasPath", _g_get_hasPath);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "pathPending", _g_get_pathPending);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "isPathStale", _g_get_isPathStale);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "pathStatus", _g_get_pathStatus);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "pathEndPosition", _g_get_pathEndPosition);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "isStopped", _g_get_isStopped);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "path", _g_get_path);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "navMeshOwner", _g_get_navMeshOwner);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "agentTypeID", _g_get_agentTypeID);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "areaMask", _g_get_areaMask);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "speed", _g_get_speed);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "angularSpeed", _g_get_angularSpeed);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "acceleration", _g_get_acceleration);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "updatePosition", _g_get_updatePosition);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "updateRotation", _g_get_updateRotation);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "updateUpAxis", _g_get_updateUpAxis);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "radius", _g_get_radius);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "height", _g_get_height);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "obstacleAvoidanceType", _g_get_obstacleAvoidanceType);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "avoidancePriority", _g_get_avoidancePriority);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "isOnNavMesh", _g_get_isOnNavMesh);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "destination", _s_set_destination);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "stoppingDistance", _s_set_stoppingDistance);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "velocity", _s_set_velocity);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "nextPosition", _s_set_nextPosition);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "baseOffset", _s_set_baseOffset);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "autoTraverseOffMeshLink", _s_set_autoTraverseOffMeshLink);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "autoBraking", _s_set_autoBraking);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "autoRepath", _s_set_autoRepath);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "isStopped", _s_set_isStopped);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "path", _s_set_path);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "agentTypeID", _s_set_agentTypeID);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "areaMask", _s_set_areaMask);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "speed", _s_set_speed);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "angularSpeed", _s_set_angularSpeed);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "acceleration", _s_set_acceleration);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "updatePosition", _s_set_updatePosition);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "updateRotation", _s_set_updateRotation);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "updateUpAxis", _s_set_updateUpAxis);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "radius", _s_set_radius);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "height", _s_set_height);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "obstacleAvoidanceType", _s_set_obstacleAvoidanceType);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "avoidancePriority", _s_set_avoidancePriority);
            
			
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
					
					var gen_ret = new UnityEngine.AI.NavMeshAgent();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to UnityEngine.AI.NavMeshAgent constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetDestination(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.Vector3 _target;translator.Get(L, 2, out _target);
                    
                        var gen_ret = gen_to_be_invoked.SetDestination( _target );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ActivateCurrentOffMeshLink(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    bool _activated = LuaAPI.lua_toboolean(L, 2);
                    
                    gen_to_be_invoked.ActivateCurrentOffMeshLink( _activated );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CompleteOffMeshLink(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.CompleteOffMeshLink(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Warp(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.Vector3 _newPosition;translator.Get(L, 2, out _newPosition);
                    
                        var gen_ret = gen_to_be_invoked.Warp( _newPosition );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Move(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.Vector3 _offset;translator.Get(L, 2, out _offset);
                    
                    gen_to_be_invoked.Move( _offset );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ResetPath(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                    gen_to_be_invoked.ResetPath(  );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetPath(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.AI.NavMeshPath _path = (UnityEngine.AI.NavMeshPath)translator.GetObject(L, 2, typeof(UnityEngine.AI.NavMeshPath));
                    
                        var gen_ret = gen_to_be_invoked.SetPath( _path );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_FindClosestEdge(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.AI.NavMeshHit _hit;
                    
                        var gen_ret = gen_to_be_invoked.FindClosestEdge( out _hit );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    translator.Push(L, _hit);
                        
                    
                    
                    
                    return 2;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Raycast(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.Vector3 _targetPosition;translator.Get(L, 2, out _targetPosition);
                    UnityEngine.AI.NavMeshHit _hit;
                    
                        var gen_ret = gen_to_be_invoked.Raycast( _targetPosition, out _hit );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    translator.Push(L, _hit);
                        
                    
                    
                    
                    return 2;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CalculatePath(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    UnityEngine.Vector3 _targetPosition;translator.Get(L, 2, out _targetPosition);
                    UnityEngine.AI.NavMeshPath _path = (UnityEngine.AI.NavMeshPath)translator.GetObject(L, 3, typeof(UnityEngine.AI.NavMeshPath));
                    
                        var gen_ret = gen_to_be_invoked.CalculatePath( _targetPosition, _path );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SamplePathPosition(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _areaMask = LuaAPI.xlua_tointeger(L, 2);
                    float _maxDistance = (float)LuaAPI.lua_tonumber(L, 3);
                    UnityEngine.AI.NavMeshHit _hit;
                    
                        var gen_ret = gen_to_be_invoked.SamplePathPosition( _areaMask, _maxDistance, out _hit );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    translator.Push(L, _hit);
                        
                    
                    
                    
                    return 2;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetAreaCost(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _areaIndex = LuaAPI.xlua_tointeger(L, 2);
                    float _areaCost = (float)LuaAPI.lua_tonumber(L, 3);
                    
                    gen_to_be_invoked.SetAreaCost( _areaIndex, _areaCost );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetAreaCost(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    int _areaIndex = LuaAPI.xlua_tointeger(L, 2);
                    
                        var gen_ret = gen_to_be_invoked.GetAreaCost( _areaIndex );
                        LuaAPI.lua_pushnumber(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_destination(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.destination);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_stoppingDistance(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.stoppingDistance);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_velocity(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.velocity);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_nextPosition(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.nextPosition);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_steeringTarget(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.steeringTarget);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_desiredVelocity(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.desiredVelocity);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_remainingDistance(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.remainingDistance);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_baseOffset(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.baseOffset);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_isOnOffMeshLink(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.isOnOffMeshLink);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_currentOffMeshLinkData(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.currentOffMeshLinkData);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_nextOffMeshLinkData(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.nextOffMeshLinkData);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_autoTraverseOffMeshLink(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.autoTraverseOffMeshLink);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_autoBraking(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.autoBraking);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_autoRepath(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.autoRepath);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_hasPath(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.hasPath);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_pathPending(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.pathPending);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_isPathStale(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.isPathStale);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_pathStatus(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineAINavMeshPathStatus(L, gen_to_be_invoked.pathStatus);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_pathEndPosition(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineVector3(L, gen_to_be_invoked.pathEndPosition);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_isStopped(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.isStopped);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_path(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.path);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_navMeshOwner(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.Push(L, gen_to_be_invoked.navMeshOwner);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_agentTypeID(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.agentTypeID);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_areaMask(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.areaMask);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_speed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.speed);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_angularSpeed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.angularSpeed);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_acceleration(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.acceleration);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_updatePosition(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.updatePosition);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_updateRotation(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.updateRotation);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_updateUpAxis(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.updateUpAxis);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_radius(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.radius);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_height(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushnumber(L, gen_to_be_invoked.height);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_obstacleAvoidanceType(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                translator.PushUnityEngineAIObstacleAvoidanceType(L, gen_to_be_invoked.obstacleAvoidanceType);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_avoidancePriority(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.xlua_pushinteger(L, gen_to_be_invoked.avoidancePriority);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_isOnNavMesh(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushboolean(L, gen_to_be_invoked.isOnNavMesh);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_destination(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                UnityEngine.Vector3 gen_value;translator.Get(L, 2, out gen_value);
				gen_to_be_invoked.destination = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_stoppingDistance(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.stoppingDistance = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_velocity(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                UnityEngine.Vector3 gen_value;translator.Get(L, 2, out gen_value);
				gen_to_be_invoked.velocity = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_nextPosition(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                UnityEngine.Vector3 gen_value;translator.Get(L, 2, out gen_value);
				gen_to_be_invoked.nextPosition = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_baseOffset(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.baseOffset = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_autoTraverseOffMeshLink(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.autoTraverseOffMeshLink = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_autoBraking(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.autoBraking = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_autoRepath(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.autoRepath = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_isStopped(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.isStopped = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_path(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.path = (UnityEngine.AI.NavMeshPath)translator.GetObject(L, 2, typeof(UnityEngine.AI.NavMeshPath));
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_agentTypeID(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.agentTypeID = LuaAPI.xlua_tointeger(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_areaMask(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.areaMask = LuaAPI.xlua_tointeger(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_speed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.speed = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_angularSpeed(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.angularSpeed = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_acceleration(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.acceleration = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_updatePosition(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.updatePosition = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_updateRotation(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.updateRotation = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_updateUpAxis(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.updateUpAxis = LuaAPI.lua_toboolean(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_radius(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.radius = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_height(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.height = (float)LuaAPI.lua_tonumber(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_obstacleAvoidanceType(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                UnityEngine.AI.ObstacleAvoidanceType gen_value;translator.Get(L, 2, out gen_value);
				gen_to_be_invoked.obstacleAvoidanceType = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_avoidancePriority(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                UnityEngine.AI.NavMeshAgent gen_to_be_invoked = (UnityEngine.AI.NavMeshAgent)translator.FastGetCSObj(L, 1);
                gen_to_be_invoked.avoidancePriority = LuaAPI.xlua_tointeger(L, 2);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
