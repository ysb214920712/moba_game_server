---@class UnityEngine.Profiling.Memory.Experimental.CaptureFlags : System.Enum
UnityEngine.Profiling.Memory.Experimental.CaptureFlags = {}
---@type UnityEngine.Profiling.Memory.Experimental.CaptureFlags
CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags = UnityEngine.Profiling.Memory.Experimental.CaptureFlags

---@return System.Int32 value:1
UnityEngine.Profiling.Memory.Experimental.CaptureFlags.ManagedObjects = 1
---@return System.Int32 value:2
UnityEngine.Profiling.Memory.Experimental.CaptureFlags.NativeObjects = 2
---@return System.Int32 value:4
UnityEngine.Profiling.Memory.Experimental.CaptureFlags.NativeAllocations = 4

---@class UnityEngine.Profiling.Memory.Experimental.MetaData : System.Object
---@field public content System.String
---@field public platform System.String
---@field public screenshot UnityEngine.Texture2D
UnityEngine.Profiling.Memory.Experimental.MetaData = {}
---@type UnityEngine.Profiling.Memory.Experimental.MetaData
CS.UnityEngine.Profiling.Memory.Experimental.MetaData = UnityEngine.Profiling.Memory.Experimental.MetaData

---@class UnityEngine.Profiling.Memory.Experimental.MemoryProfiler : System.Object
UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = {}
---@type UnityEngine.Profiling.Memory.Experimental.MemoryProfiler
CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = UnityEngine.Profiling.Memory.Experimental.MemoryProfiler

---@param value System.Action
---@return System.Void
function UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.add_createMetaData(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.remove_createMetaData(value)end
---@overload fun(path:System.String, finishCallback:System.Action):System.Void
---@param path System.String
---@param finishCallback System.Action
---@param captureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@return System.Void
function UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.TakeSnapshot(path, finishCallback, captureFlags)end
---@overload fun(finishCallback:System.Action):System.Void
---@param finishCallback System.Action
---@param captureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@return System.Void
function UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.TakeTempSnapshot(finishCallback, captureFlags)end
