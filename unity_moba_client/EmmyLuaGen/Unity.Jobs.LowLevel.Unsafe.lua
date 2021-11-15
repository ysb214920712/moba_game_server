---@class Unity.Jobs.LowLevel.Unsafe.BatchQueryJob : System.ValueType
Unity.Jobs.LowLevel.Unsafe.BatchQueryJob = {}
---@type Unity.Jobs.LowLevel.Unsafe.BatchQueryJob
CS.Unity.Jobs.LowLevel.Unsafe.BatchQueryJob = Unity.Jobs.LowLevel.Unsafe.BatchQueryJob

---@class Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct : System.ValueType
Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct = {}
---@type Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct
CS.Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct = Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct

---@return System.IntPtr
function Unity.Jobs.LowLevel.Unsafe.BatchQueryJobStruct.Initialize()end
---@class Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility : System.Object
Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility
CS.Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility = Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility

---@param jobs Unity.Jobs.JobHandle
---@param count System.Int32
---@return Unity.Jobs.JobHandle
function Unity.Jobs.LowLevel.Unsafe.JobHandleUnsafeUtility.CombineDependencies(jobs, count)end
---@class Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute : System.Attribute
---@field public ProducerType System.Type @  getter
Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute
CS.Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute = Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute

---@class Unity.Jobs.LowLevel.Unsafe.JobRanges : System.ValueType
---@field public BatchSize System.Int32
---@field public NumJobs System.Int32
---@field public TotalIterationCount System.Int32
---@field public NumPhases System.Int32
---@field public IndicesPerPhase System.Int32
---@field public StartEndIndex System.IntPtr
---@field public PhaseData System.IntPtr
Unity.Jobs.LowLevel.Unsafe.JobRanges = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobRanges
CS.Unity.Jobs.LowLevel.Unsafe.JobRanges = Unity.Jobs.LowLevel.Unsafe.JobRanges

---@class Unity.Jobs.LowLevel.Unsafe.ScheduleMode : System.Enum
Unity.Jobs.LowLevel.Unsafe.ScheduleMode = {}
---@type Unity.Jobs.LowLevel.Unsafe.ScheduleMode
CS.Unity.Jobs.LowLevel.Unsafe.ScheduleMode = Unity.Jobs.LowLevel.Unsafe.ScheduleMode

---@return System.Int32 value:0
Unity.Jobs.LowLevel.Unsafe.ScheduleMode.Run = 0
---@return System.Int32 value:1
Unity.Jobs.LowLevel.Unsafe.ScheduleMode.Batched = 1

---@class Unity.Jobs.LowLevel.Unsafe.JobType : System.Enum
Unity.Jobs.LowLevel.Unsafe.JobType = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobType
CS.Unity.Jobs.LowLevel.Unsafe.JobType = Unity.Jobs.LowLevel.Unsafe.JobType

---@return System.Int32 value:0
Unity.Jobs.LowLevel.Unsafe.JobType.Single = 0
---@return System.Int32 value:1
Unity.Jobs.LowLevel.Unsafe.JobType.ParallelFor = 1

---@class Unity.Jobs.LowLevel.Unsafe.JobsUtility : System.Object
---@field public JobDebuggerEnabled System.Boolean @static setter getter
---@field public JobCompilerEnabled System.Boolean @static setter getter
---@field public MaxJobThreadCount System.Int32
---@field public CacheLineSize System.Int32
Unity.Jobs.LowLevel.Unsafe.JobsUtility = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobsUtility
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility = Unity.Jobs.LowLevel.Unsafe.JobsUtility

---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex System.Int32
---@param beginIndex System.Int32
---@param endIndex System.Int32
---@return System.Void
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.GetJobRange(ranges, jobIndex, beginIndex, endIndex)end
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex System.Int32
---@param beginIndex System.Int32
---@param endIndex System.Int32
---@return System.Boolean
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.GetWorkStealingRange(ranges, jobIndex, beginIndex, endIndex)end
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@return Unity.Jobs.JobHandle
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.Schedule(parameters)end
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param arrayLength System.Int32
---@param innerloopBatchCount System.Int32
---@return Unity.Jobs.JobHandle
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelFor(parameters, arrayLength, innerloopBatchCount)end
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param innerloopBatchCount System.Int32
---@param listData System.Void
---@param listDataAtomicSafetyHandle System.Void
---@return Unity.Jobs.JobHandle
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForDeferArraySize(parameters, innerloopBatchCount, listData, listDataAtomicSafetyHandle)end
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param transfromAccesssArray System.IntPtr
---@return Unity.Jobs.JobHandle
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForTransform(parameters, transfromAccesssArray)end
---@param bufferRangePatchData System.IntPtr
---@param jobdata System.Void
---@param startIndex System.Int32
---@param rangeSize System.Int32
---@return System.Void
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.PatchBufferMinMaxRanges(bufferRangePatchData, jobdata, startIndex, rangeSize)end
---@overload fun(type:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:System.Object, managedJobFunction1:System.Object):System.IntPtr
---@overload fun(type:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:System.Object):System.IntPtr
---@overload fun(type:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:System.Object):System.IntPtr
---@param wrapperJobType System.Type
---@param userJobType System.Type
---@param jobType Unity.Jobs.LowLevel.Unsafe.JobType
---@param managedJobFunction0 System.Object
---@return System.IntPtr
function Unity.Jobs.LowLevel.Unsafe.JobsUtility.CreateJobReflectionData(wrapperJobType, userJobType, jobType, managedJobFunction0)end
---@class Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters : System.ValueType
---@field public Dependency Unity.Jobs.JobHandle
---@field public ScheduleMode System.Int32
---@field public ReflectionData System.IntPtr
---@field public JobDataPtr System.IntPtr
Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters = {}
---@type Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters = Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters

