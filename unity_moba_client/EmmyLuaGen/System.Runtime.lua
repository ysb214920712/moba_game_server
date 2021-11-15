---@class System.Runtime.AssemblyTargetedPatchBandAttribute : System.Attribute
---@field public TargetedPatchBand System.String @  getter
System.Runtime.AssemblyTargetedPatchBandAttribute = {}
---@type System.Runtime.AssemblyTargetedPatchBandAttribute
CS.System.Runtime.AssemblyTargetedPatchBandAttribute = System.Runtime.AssemblyTargetedPatchBandAttribute

---@class System.Runtime.TargetedPatchingOptOutAttribute : System.Attribute
---@field public Reason System.String @  getter
System.Runtime.TargetedPatchingOptOutAttribute = {}
---@type System.Runtime.TargetedPatchingOptOutAttribute
CS.System.Runtime.TargetedPatchingOptOutAttribute = System.Runtime.TargetedPatchingOptOutAttribute

---@class System.Runtime.GCLargeObjectHeapCompactionMode : System.Enum
System.Runtime.GCLargeObjectHeapCompactionMode = {}
---@type System.Runtime.GCLargeObjectHeapCompactionMode
CS.System.Runtime.GCLargeObjectHeapCompactionMode = System.Runtime.GCLargeObjectHeapCompactionMode

---@return System.Int32 value:1
System.Runtime.GCLargeObjectHeapCompactionMode.Default = 1

---@class System.Runtime.GCLatencyMode : System.Enum
System.Runtime.GCLatencyMode = {}
---@type System.Runtime.GCLatencyMode
CS.System.Runtime.GCLatencyMode = System.Runtime.GCLatencyMode

---@return System.Int32 value:0
System.Runtime.GCLatencyMode.Batch = 0
---@return System.Int32 value:1
System.Runtime.GCLatencyMode.Interactive = 1
---@return System.Int32 value:2
System.Runtime.GCLatencyMode.LowLatency = 2
---@return System.Int32 value:3
System.Runtime.GCLatencyMode.SustainedLowLatency = 3
---@return System.Int32 value:4
System.Runtime.GCLatencyMode.NoGCRegion = 4

---@class System.Runtime.GCSettings : System.Object
---@field public IsServerGC System.Boolean @static  getter
---@field public LatencyMode System.Runtime.GCLatencyMode @static setter getter
---@field public LargeObjectHeapCompactionMode System.Runtime.GCLargeObjectHeapCompactionMode @static setter getter
System.Runtime.GCSettings = {}
---@type System.Runtime.GCSettings
CS.System.Runtime.GCSettings = System.Runtime.GCSettings

---@class System.Runtime.MemoryFailPoint : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
System.Runtime.MemoryFailPoint = {}
---@type System.Runtime.MemoryFailPoint
CS.System.Runtime.MemoryFailPoint = System.Runtime.MemoryFailPoint

---@return System.Void
function System.Runtime.MemoryFailPoint:Dispose()end
---@class System.Runtime.ProfileOptimization : System.Object
System.Runtime.ProfileOptimization = {}
---@type System.Runtime.ProfileOptimization
CS.System.Runtime.ProfileOptimization = System.Runtime.ProfileOptimization

---@param directoryPath System.String
---@return System.Void
function System.Runtime.ProfileOptimization.SetProfileRoot(directoryPath)end
---@param profile System.String
---@return System.Void
function System.Runtime.ProfileOptimization.StartProfile(profile)end
