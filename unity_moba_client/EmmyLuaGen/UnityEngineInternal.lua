---@class UnityEngineInternal.MemorylessMode : System.Enum
UnityEngineInternal.MemorylessMode = {}
---@type UnityEngineInternal.MemorylessMode
CS.UnityEngineInternal.MemorylessMode = UnityEngineInternal.MemorylessMode

---@return System.Int32 value:0
UnityEngineInternal.MemorylessMode.Unused = 0
---@return System.Int32 value:1
UnityEngineInternal.MemorylessMode.Forced = 1
---@return System.Int32 value:2
UnityEngineInternal.MemorylessMode.Automatic = 2

---@class UnityEngineInternal.MemorylessManager : System.Object
---@field public depthMemorylessMode UnityEngineInternal.MemorylessMode @static setter getter
UnityEngineInternal.MemorylessManager = {}
---@type UnityEngineInternal.MemorylessManager
CS.UnityEngineInternal.MemorylessManager = UnityEngineInternal.MemorylessManager

---@class UnityEngineInternal.MathfInternal : System.ValueType
---@field public FloatMinNormal System.Single
---@field public FloatMinDenormal System.Single
---@field public IsFlushToZeroEnabled System.Boolean
UnityEngineInternal.MathfInternal = {}
---@type UnityEngineInternal.MathfInternal
CS.UnityEngineInternal.MathfInternal = UnityEngineInternal.MathfInternal

---@class UnityEngineInternal.ScriptingUtils : System.Object
UnityEngineInternal.ScriptingUtils = {}
---@type UnityEngineInternal.ScriptingUtils
CS.UnityEngineInternal.ScriptingUtils = UnityEngineInternal.ScriptingUtils

---@param type System.Type
---@param methodInfo System.Reflection.MethodInfo
---@return System.Delegate
function UnityEngineInternal.ScriptingUtils.CreateDelegate(type, methodInfo)end
---@class UnityEngineInternal.GITextureType : System.Enum
UnityEngineInternal.GITextureType = {}
---@type UnityEngineInternal.GITextureType
CS.UnityEngineInternal.GITextureType = UnityEngineInternal.GITextureType

---@return System.Int32 value:0
UnityEngineInternal.GITextureType.Charting = 0
---@return System.Int32 value:1
UnityEngineInternal.GITextureType.Albedo = 1
---@return System.Int32 value:2
UnityEngineInternal.GITextureType.Emissive = 2
---@return System.Int32 value:3
UnityEngineInternal.GITextureType.Irradiance = 3
---@return System.Int32 value:4
UnityEngineInternal.GITextureType.Directionality = 4
---@return System.Int32 value:5
UnityEngineInternal.GITextureType.Baked = 5
---@return System.Int32 value:6
UnityEngineInternal.GITextureType.BakedDirectional = 6
---@return System.Int32 value:7
UnityEngineInternal.GITextureType.InputWorkspace = 7
---@return System.Int32 value:8
UnityEngineInternal.GITextureType.BakedShadowMask = 8
---@return System.Int32 value:9
UnityEngineInternal.GITextureType.BakedAlbedo = 9
---@return System.Int32 value:10
UnityEngineInternal.GITextureType.BakedEmissive = 10
---@return System.Int32 value:11
UnityEngineInternal.GITextureType.BakedCharting = 11
---@return System.Int32 value:12
UnityEngineInternal.GITextureType.BakedTexelValidity = 12
---@return System.Int32 value:13
UnityEngineInternal.GITextureType.BakedUVOverlap = 13
---@return System.Int32 value:14
UnityEngineInternal.GITextureType.BakedLightmapCulling = 14

---@class UnityEngineInternal.GIDebugVisualisation : System.Object
---@field public cycleMode System.Boolean @static  getter
---@field public pauseCycleMode System.Boolean @static  getter
---@field public texType UnityEngineInternal.GITextureType @static setter getter
UnityEngineInternal.GIDebugVisualisation = {}
---@type UnityEngineInternal.GIDebugVisualisation
CS.UnityEngineInternal.GIDebugVisualisation = UnityEngineInternal.GIDebugVisualisation

---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.ResetRuntimeInputTextures()end
---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.PlayCycleMode()end
---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.PauseCycleMode()end
---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.StopCycleMode()end
---@param skip System.Int32
---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.CycleSkipSystems(skip)end
---@param skip System.Int32
---@return System.Void
function UnityEngineInternal.GIDebugVisualisation.CycleSkipInstances(skip)end
---@class UnityEngineInternal.APIUpdaterRuntimeServices : System.Object
UnityEngineInternal.APIUpdaterRuntimeServices = {}
---@type UnityEngineInternal.APIUpdaterRuntimeServices
CS.UnityEngineInternal.APIUpdaterRuntimeServices = UnityEngineInternal.APIUpdaterRuntimeServices

---@param go UnityEngine.GameObject
---@param sourceInfo System.String
---@param name System.String
---@return UnityEngine.Component
function UnityEngineInternal.APIUpdaterRuntimeServices.AddComponent(go, sourceInfo, name)end
---@class UnityEngineInternal.TypeInferenceRules : System.Enum
UnityEngineInternal.TypeInferenceRules = {}
---@type UnityEngineInternal.TypeInferenceRules
CS.UnityEngineInternal.TypeInferenceRules = UnityEngineInternal.TypeInferenceRules

---@return System.Int32 value:0
UnityEngineInternal.TypeInferenceRules.TypeReferencedByFirstArgument = 0
---@return System.Int32 value:1
UnityEngineInternal.TypeInferenceRules.TypeReferencedBySecondArgument = 1
---@return System.Int32 value:2
UnityEngineInternal.TypeInferenceRules.ArrayOfTypeReferencedByFirstArgument = 2
---@return System.Int32 value:3
UnityEngineInternal.TypeInferenceRules.TypeOfFirstArgument = 3

---@class UnityEngineInternal.TypeInferenceRuleAttribute : System.Attribute
UnityEngineInternal.TypeInferenceRuleAttribute = {}
---@type UnityEngineInternal.TypeInferenceRuleAttribute
CS.UnityEngineInternal.TypeInferenceRuleAttribute = UnityEngineInternal.TypeInferenceRuleAttribute

---@return System.String
function UnityEngineInternal.TypeInferenceRuleAttribute:ToString()end
---@class UnityEngineInternal.GenericStack : System.Collections.Stack
UnityEngineInternal.GenericStack = {}
---@type UnityEngineInternal.GenericStack
CS.UnityEngineInternal.GenericStack = UnityEngineInternal.GenericStack

