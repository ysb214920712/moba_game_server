---@class Unity.Jobs.IJobExtensions : System.Object
Unity.Jobs.IJobExtensions = {}
---@type Unity.Jobs.IJobExtensions
CS.Unity.Jobs.IJobExtensions = Unity.Jobs.IJobExtensions

---@class Unity.Jobs.IJobParallelForExtensions : System.Object
Unity.Jobs.IJobParallelForExtensions = {}
---@type Unity.Jobs.IJobParallelForExtensions
CS.Unity.Jobs.IJobParallelForExtensions = Unity.Jobs.IJobParallelForExtensions

---@class Unity.Jobs.JobHandle : System.ValueType
---@field public IsCompleted System.Boolean @  getter
Unity.Jobs.JobHandle = {}
---@type Unity.Jobs.JobHandle
CS.Unity.Jobs.JobHandle = Unity.Jobs.JobHandle

---@return System.Void
function Unity.Jobs.JobHandle:Complete()end
---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle):System.Void
---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle, job2:Unity.Jobs.JobHandle):System.Void
---@param jobs Unity.Collections.NativeArray
---@return System.Void
function Unity.Jobs.JobHandle.CompleteAll(jobs)end
---@return System.Void
function Unity.Jobs.JobHandle.ScheduleBatchedJobs()end
---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle):Unity.Jobs.JobHandle
---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle, job2:Unity.Jobs.JobHandle):Unity.Jobs.JobHandle
---@param jobs Unity.Collections.NativeArray
---@return Unity.Jobs.JobHandle
function Unity.Jobs.JobHandle.CombineDependencies(jobs)end
---@param jobHandle Unity.Jobs.JobHandle
---@param dependsOn Unity.Jobs.JobHandle
---@return System.Boolean
function Unity.Jobs.JobHandle.CheckFenceIsDependencyOrDidSyncFence(jobHandle, dependsOn)end
