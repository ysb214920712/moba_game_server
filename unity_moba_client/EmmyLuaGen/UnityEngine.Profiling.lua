---@class UnityEngine.Profiling.ProfilerArea : System.Enum
UnityEngine.Profiling.ProfilerArea = {}
---@type UnityEngine.Profiling.ProfilerArea
CS.UnityEngine.Profiling.ProfilerArea = UnityEngine.Profiling.ProfilerArea

---@return System.Int32 value:0
UnityEngine.Profiling.ProfilerArea.CPU = 0
---@return System.Int32 value:1
UnityEngine.Profiling.ProfilerArea.GPU = 1
---@return System.Int32 value:2
UnityEngine.Profiling.ProfilerArea.Rendering = 2
---@return System.Int32 value:3
UnityEngine.Profiling.ProfilerArea.Memory = 3
---@return System.Int32 value:4
UnityEngine.Profiling.ProfilerArea.Audio = 4
---@return System.Int32 value:5
UnityEngine.Profiling.ProfilerArea.Video = 5
---@return System.Int32 value:6
UnityEngine.Profiling.ProfilerArea.Physics = 6
---@return System.Int32 value:7
UnityEngine.Profiling.ProfilerArea.Physics2D = 7
---@return System.Int32 value:8
UnityEngine.Profiling.ProfilerArea.NetworkMessages = 8
---@return System.Int32 value:9
UnityEngine.Profiling.ProfilerArea.NetworkOperations = 9
---@return System.Int32 value:10
UnityEngine.Profiling.ProfilerArea.UI = 10
---@return System.Int32 value:11
UnityEngine.Profiling.ProfilerArea.UIDetails = 11
---@return System.Int32 value:12
UnityEngine.Profiling.ProfilerArea.GlobalIllumination = 12

---@class UnityEngine.Profiling.Profiler : System.Object
---@field public supported System.Boolean @static  getter
---@field public logFile System.String @static setter getter
---@field public enableBinaryLog System.Boolean @static setter getter
---@field public maxUsedMemory System.Int32 @static setter getter
---@field public enabled System.Boolean @static setter getter
---@field public areaCount System.Int32 @static  getter
---@field public maxNumberOfSamplesPerFrame System.Int32 @static setter getter
---@field public usedHeapSize System.UInt32 @static  getter
---@field public usedHeapSizeLong System.Int64 @static  getter
UnityEngine.Profiling.Profiler = {}
---@type UnityEngine.Profiling.Profiler
CS.UnityEngine.Profiling.Profiler = UnityEngine.Profiling.Profiler

---@param area UnityEngine.Profiling.ProfilerArea
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Profiling.Profiler.SetAreaEnabled(area, enabled)end
---@param area UnityEngine.Profiling.ProfilerArea
---@return System.Boolean
function UnityEngine.Profiling.Profiler.GetAreaEnabled(area)end
---@param file System.String
---@return System.Void
function UnityEngine.Profiling.Profiler.AddFramesFromFile(file)end
---@param threadGroupName System.String
---@param threadName System.String
---@return System.Void
function UnityEngine.Profiling.Profiler.BeginThreadProfiling(threadGroupName, threadName)end
---@return System.Void
function UnityEngine.Profiling.Profiler.EndThreadProfiling()end
---@overload fun(name:System.String, targetObject:UnityEngine.Object):System.Void
---@param name System.String
---@return System.Void
function UnityEngine.Profiling.Profiler.BeginSample(name)end
---@return System.Void
function UnityEngine.Profiling.Profiler.EndSample()end
---@param o UnityEngine.Object
---@return System.Int32
function UnityEngine.Profiling.Profiler.GetRuntimeMemorySize(o)end
---@param o UnityEngine.Object
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetRuntimeMemorySizeLong(o)end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetMonoHeapSize()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetMonoHeapSizeLong()end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetMonoUsedSize()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetMonoUsedSizeLong()end
---@param size System.UInt32
---@return System.Boolean
function UnityEngine.Profiling.Profiler.SetTempAllocatorRequestedSize(size)end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetTempAllocatorSize()end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetTotalAllocatedMemory()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetTotalAllocatedMemoryLong()end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetTotalUnusedReservedMemory()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetTotalUnusedReservedMemoryLong()end
---@return System.UInt32
function UnityEngine.Profiling.Profiler.GetTotalReservedMemory()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetTotalReservedMemoryLong()end
---@return System.Int64
function UnityEngine.Profiling.Profiler.GetAllocatedMemoryForGraphicsDriver()end
---@class UnityEngine.Profiling.Recorder : System.Object
---@field public isValid System.Boolean @  getter
---@field public enabled System.Boolean @ setter getter
---@field public elapsedNanoseconds System.Int64 @  getter
---@field public sampleBlockCount System.Int32 @  getter
UnityEngine.Profiling.Recorder = {}
---@type UnityEngine.Profiling.Recorder
CS.UnityEngine.Profiling.Recorder = UnityEngine.Profiling.Recorder

---@param samplerName System.String
---@return UnityEngine.Profiling.Recorder
function UnityEngine.Profiling.Recorder.Get(samplerName)end
---@return System.Void
function UnityEngine.Profiling.Recorder:FilterToCurrentThread()end
---@return System.Void
function UnityEngine.Profiling.Recorder:CollectFromAllThreads()end
---@class UnityEngine.Profiling.Sampler : System.Object
---@field public isValid System.Boolean @  getter
---@field public name System.String @  getter
UnityEngine.Profiling.Sampler = {}
---@type UnityEngine.Profiling.Sampler
CS.UnityEngine.Profiling.Sampler = UnityEngine.Profiling.Sampler

---@return UnityEngine.Profiling.Recorder
function UnityEngine.Profiling.Sampler:GetRecorder()end
---@param name System.String
---@return UnityEngine.Profiling.Sampler
function UnityEngine.Profiling.Sampler.Get(name)end
---@param names System.Collections.Generic.List
---@return System.Int32
function UnityEngine.Profiling.Sampler.GetNames(names)end
---@class UnityEngine.Profiling.CustomSampler : UnityEngine.Profiling.Sampler
UnityEngine.Profiling.CustomSampler = {}
---@type UnityEngine.Profiling.CustomSampler
CS.UnityEngine.Profiling.CustomSampler = UnityEngine.Profiling.CustomSampler

---@param name System.String
---@return UnityEngine.Profiling.CustomSampler
function UnityEngine.Profiling.CustomSampler.Create(name)end
---@overload fun(targetObject:UnityEngine.Object):System.Void
---@return System.Void
function UnityEngine.Profiling.CustomSampler:Begin()end
---@return System.Void
function UnityEngine.Profiling.CustomSampler:End()end
