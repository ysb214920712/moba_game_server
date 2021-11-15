---@class Unity.Profiling.ProfilerMarker : System.ValueType
Unity.Profiling.ProfilerMarker = {}
---@type Unity.Profiling.ProfilerMarker
CS.Unity.Profiling.ProfilerMarker = Unity.Profiling.ProfilerMarker

---@overload fun(contextUnityObject:UnityEngine.Object):System.Void
---@return System.Void
function Unity.Profiling.ProfilerMarker:Begin()end
---@return System.Void
function Unity.Profiling.ProfilerMarker:End()end
---@return Unity.Profiling.ProfilerMarker.AutoScope
function Unity.Profiling.ProfilerMarker:Auto()end
---@class Unity.Profiling.ProfilerMarker.AutoScope : System.ValueType
Unity.Profiling.ProfilerMarker.AutoScope = {}
---@type Unity.Profiling.ProfilerMarker.AutoScope
CS.Unity.Profiling.ProfilerMarker.AutoScope = Unity.Profiling.ProfilerMarker.AutoScope

---@return System.Void
function Unity.Profiling.ProfilerMarker.AutoScope:Dispose()end
