---@class System.Threading.Tasks.ValueTask : System.ValueType
---@field public IsCompleted System.Boolean @  getter
---@field public IsCompletedSuccessfully System.Boolean @  getter
---@field public IsFaulted System.Boolean @  getter
---@field public IsCanceled System.Boolean @  getter
---@field public Result any @  getter
System.Threading.Tasks.ValueTask = {}
---@type System.Threading.Tasks.ValueTask
CS.System.Threading.Tasks.ValueTask = System.Threading.Tasks.ValueTask

---@return System.Int32
function System.Threading.Tasks.ValueTask:GetHashCode()end
---@overload fun(other:System.Threading.Tasks.ValueTask):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Threading.Tasks.ValueTask:Equals(obj)end
---@param left System.Threading.Tasks.ValueTask
---@param right System.Threading.Tasks.ValueTask
---@return System.Boolean
function System.Threading.Tasks.ValueTask.op_Equality(left, right)end
---@param left System.Threading.Tasks.ValueTask
---@param right System.Threading.Tasks.ValueTask
---@return System.Boolean
function System.Threading.Tasks.ValueTask.op_Inequality(left, right)end
---@return any
function System.Threading.Tasks.ValueTask:AsTask()end
---@return any
function System.Threading.Tasks.ValueTask:GetAwaiter()end
---@param continueOnCapturedContext System.Boolean
---@return any
function System.Threading.Tasks.ValueTask:ConfigureAwait(continueOnCapturedContext)end
---@return System.String
function System.Threading.Tasks.ValueTask:ToString()end
---@return any
function System.Threading.Tasks.ValueTask.CreateAsyncMethodBuilder()end
---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair : System.Object
---@field public Completion System.Threading.Tasks.Task @  getter
---@field public ConcurrentScheduler System.Threading.Tasks.TaskScheduler @  getter
---@field public ExclusiveScheduler System.Threading.Tasks.TaskScheduler @  getter
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair = {}
---@type System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair

---@return System.Void
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair:Complete()end
---@class System.Threading.Tasks.Task : System.Threading.Tasks.Task
---@field public Result any @  getter
---@field public Factory any @static  getter
System.Threading.Tasks.Task = {}
---@type System.Threading.Tasks.Task
CS.System.Threading.Tasks.Task = System.Threading.Tasks.Task

---@return any
function System.Threading.Tasks.Task:GetAwaiter()end
---@param continueOnCapturedContext System.Boolean
---@return any
function System.Threading.Tasks.Task:ConfigureAwait(continueOnCapturedContext)end
---@overload fun(continuationFunction:any):any
---@overload fun(continuationAction:any, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(continuationAction:any, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationAction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(continuationAction:any, state:System.Object):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(continuationFunction:any, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(continuationFunction:any, state:System.Object):any
---@overload fun(continuationAction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(continuationAction:any, state:System.Object, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationAction:any, state:System.Object, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(continuationFunction:any, state:System.Object, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationFunction:any, state:System.Object, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(continuationAction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationAction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param continuationAction any
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:ContinueWith(continuationAction)end
---@class System.Threading.Tasks.TaskFactory : System.Object
---@field public CancellationToken System.Threading.CancellationToken @  getter
---@field public Scheduler System.Threading.Tasks.TaskScheduler @  getter
---@field public CreationOptions System.Threading.Tasks.TaskCreationOptions @  getter
---@field public ContinuationOptions System.Threading.Tasks.TaskContinuationOptions @  getter
System.Threading.Tasks.TaskFactory = {}
---@type System.Threading.Tasks.TaskFactory
CS.System.Threading.Tasks.TaskFactory = System.Threading.Tasks.TaskFactory

---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(_function:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(_function:any, state:System.Object):any
---@overload fun(_function:any, state:System.Object, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(_function:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(_function:any, state:System.Object, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param _function any
---@return any
function System.Threading.Tasks.TaskFactory:StartNew(_function)end
---@overload fun(asyncResult:System.IAsyncResult, endMethod:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:System.Func, endMethod:any, state:System.Object):any
---@overload fun(asyncResult:System.IAsyncResult, endMethod:any, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(beginMethod:System.Func, endMethod:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, arg3:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, arg3:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@param asyncResult System.IAsyncResult
---@param endMethod any
---@return any
function System.Threading.Tasks.TaskFactory:FromAsync(asyncResult, endMethod)end
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction any
---@return any
function System.Threading.Tasks.TaskFactory:ContinueWhenAll(tasks, continuationFunction)end
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction any
---@return any
function System.Threading.Tasks.TaskFactory:ContinueWhenAny(tasks, continuationFunction)end
---@class System.Threading.Tasks.ParallelOptions : System.Object
---@field public TaskScheduler System.Threading.Tasks.TaskScheduler @ setter getter
---@field public MaxDegreeOfParallelism System.Int32 @ setter getter
---@field public CancellationToken System.Threading.CancellationToken @ setter getter
System.Threading.Tasks.ParallelOptions = {}
---@type System.Threading.Tasks.ParallelOptions
CS.System.Threading.Tasks.ParallelOptions = System.Threading.Tasks.ParallelOptions

---@class System.Threading.Tasks.Parallel : System.Object
System.Threading.Tasks.Parallel = {}
---@type System.Threading.Tasks.Parallel
CS.System.Threading.Tasks.Parallel = System.Threading.Tasks.Parallel

---@overload fun(parallelOptions:System.Threading.Tasks.ParallelOptions, actions:System.Action[]):System.Void
---@param actions System.Action[]
---@return System.Void
function System.Threading.Tasks.Parallel.Invoke(actions)end
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, parallelOptions:System.Threading.Tasks.ParallelOptions, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, parallelOptions:System.Threading.Tasks.ParallelOptions, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, parallelOptions:System.Threading.Tasks.ParallelOptions, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, parallelOptions:System.Threading.Tasks.ParallelOptions, body:System.Action):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@param fromInclusive System.Int32
---@param toExclusive System.Int32
---@param body System.Action
---@return System.Threading.Tasks.ParallelLoopResult
function System.Threading.Tasks.Parallel.For(fromInclusive, toExclusive, body)end
---@overload fun(source:any, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:any, body:any, localFinally:any):System.Threading.Tasks.ParallelLoopResult
---@param source any
---@param body any
---@return System.Threading.Tasks.ParallelLoopResult
function System.Threading.Tasks.Parallel.ForEach(source, body)end
---@class System.Threading.Tasks.ParallelLoopState : System.Object
---@field public ShouldExitCurrentIteration System.Boolean @  getter
---@field public IsStopped System.Boolean @  getter
---@field public IsExceptional System.Boolean @  getter
---@field public LowestBreakIteration System.Nullable @  getter
System.Threading.Tasks.ParallelLoopState = {}
---@type System.Threading.Tasks.ParallelLoopState
CS.System.Threading.Tasks.ParallelLoopState = System.Threading.Tasks.ParallelLoopState

---@return System.Void
function System.Threading.Tasks.ParallelLoopState:Stop()end
---@return System.Void
function System.Threading.Tasks.ParallelLoopState:Break()end
---@class System.Threading.Tasks.ParallelLoopResult : System.ValueType
---@field public IsCompleted System.Boolean @  getter
---@field public LowestBreakIteration System.Nullable @  getter
System.Threading.Tasks.ParallelLoopResult = {}
---@type System.Threading.Tasks.ParallelLoopResult
CS.System.Threading.Tasks.ParallelLoopResult = System.Threading.Tasks.ParallelLoopResult

---@class System.Threading.Tasks.TaskStatus : System.Enum
System.Threading.Tasks.TaskStatus = {}
---@type System.Threading.Tasks.TaskStatus
CS.System.Threading.Tasks.TaskStatus = System.Threading.Tasks.TaskStatus

---@return System.Int32 value:0
System.Threading.Tasks.TaskStatus.Created = 0
---@return System.Int32 value:1
System.Threading.Tasks.TaskStatus.WaitingForActivation = 1
---@return System.Int32 value:2
System.Threading.Tasks.TaskStatus.WaitingToRun = 2
---@return System.Int32 value:3
System.Threading.Tasks.TaskStatus.Running = 3
---@return System.Int32 value:4
System.Threading.Tasks.TaskStatus.WaitingForChildrenToComplete = 4
---@return System.Int32 value:5
System.Threading.Tasks.TaskStatus.RanToCompletion = 5
---@return System.Int32 value:6
System.Threading.Tasks.TaskStatus.Canceled = 6
---@return System.Int32 value:7
System.Threading.Tasks.TaskStatus.Faulted = 7

---@class System.Threading.Tasks.Task : System.Object
---@field public Id System.Int32 @  getter
---@field public CurrentId System.Nullable @static  getter
---@field public Exception System.AggregateException @  getter
---@field public Status System.Threading.Tasks.TaskStatus @  getter
---@field public IsCanceled System.Boolean @  getter
---@field public IsCompleted System.Boolean @  getter
---@field public IsCompletedSuccessfully System.Boolean @  getter
---@field public CreationOptions System.Threading.Tasks.TaskCreationOptions @  getter
---@field public AsyncState System.Object @  getter
---@field public Factory System.Threading.Tasks.TaskFactory @static  getter
---@field public CompletedTask System.Threading.Tasks.Task @static  getter
---@field public IsFaulted System.Boolean @  getter
System.Threading.Tasks.Task = {}
---@type System.Threading.Tasks.Task
CS.System.Threading.Tasks.Task = System.Threading.Tasks.Task

---@overload fun(scheduler:System.Threading.Tasks.TaskScheduler):System.Void
---@return System.Void
function System.Threading.Tasks.Task:Start()end
---@overload fun(scheduler:System.Threading.Tasks.TaskScheduler):System.Void
---@return System.Void
function System.Threading.Tasks.Task:RunSynchronously()end
---@return System.Void
function System.Threading.Tasks.Task:Dispose()end
---@return System.Runtime.CompilerServices.TaskAwaiter
function System.Threading.Tasks.Task:GetAwaiter()end
---@param continueOnCapturedContext System.Boolean
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable
function System.Threading.Tasks.Task:ConfigureAwait(continueOnCapturedContext)end
---@return System.Runtime.CompilerServices.YieldAwaitable
function System.Threading.Tasks.Task.Yield()end
---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Void
function System.Threading.Tasks.Task:Wait()end
---@overload fun(continuationFunction:any):any
---@overload fun(continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(continuationAction:System.Action, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationAction:System.Action, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(continuationAction:System.Action, state:System.Object):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(continuationFunction:any, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(continuationFunction:any, state:System.Object):any
---@overload fun(continuationAction:System.Action, state:System.Object, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(continuationAction:System.Action, state:System.Object, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationAction:System.Action, state:System.Object, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(continuationFunction:any, state:System.Object, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationFunction:any, state:System.Object, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(continuationAction:System.Action, state:System.Object, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(continuationFunction:any, state:System.Object, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param continuationAction System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:ContinueWith(continuationAction)end
---@overload fun(tasks:System.Threading.Tasks.Task[], millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(tasks:System.Threading.Tasks.Task[], timeout:System.TimeSpan):System.Boolean
---@overload fun(tasks:System.Threading.Tasks.Task[], cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(tasks:System.Threading.Tasks.Task[], millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@param tasks System.Threading.Tasks.Task[]
---@return System.Void
function System.Threading.Tasks.Task.WaitAll(tasks)end
---@overload fun(tasks:System.Threading.Tasks.Task[], millisecondsTimeout:System.Int32):System.Int32
---@overload fun(tasks:System.Threading.Tasks.Task[], timeout:System.TimeSpan):System.Int32
---@overload fun(tasks:System.Threading.Tasks.Task[], cancellationToken:System.Threading.CancellationToken):System.Int32
---@overload fun(tasks:System.Threading.Tasks.Task[], millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Int32
---@param tasks System.Threading.Tasks.Task[]
---@return System.Int32
function System.Threading.Tasks.Task.WaitAny(tasks)end
---@param result any
---@return any
function System.Threading.Tasks.Task.FromResult(result)end
---@overload fun(exception:System.Exception):any
---@param exception System.Exception
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.FromException(exception)end
---@overload fun(cancellationToken:System.Threading.CancellationToken):any
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.FromCanceled(cancellationToken)end
---@overload fun(_function:any):any
---@overload fun(_function:System.Func):System.Threading.Tasks.Task
---@overload fun(_function:any):any
---@overload fun(action:System.Action, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(_function:System.Func, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken):any
---@param action System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.Run(action)end
---@overload fun(delay:System.TimeSpan):System.Threading.Tasks.Task
---@overload fun(millisecondsDelay:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(delay:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param millisecondsDelay System.Int32
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.Delay(millisecondsDelay)end
---@overload fun(tasks:System.Threading.Tasks.Task[]):System.Threading.Tasks.Task
---@overload fun(tasks:any):any
---@overload fun(tasks:System.Threading.Tasks.Task):any
---@param tasks System.Collections.Generic.IEnumerable
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAll(tasks)end
---@overload fun(tasks:System.Collections.Generic.IEnumerable):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task):any
---@overload fun(tasks:any):any
---@param tasks System.Threading.Tasks.Task[]
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAny(tasks)end
---@class System.Threading.Tasks.TaskCreationOptions : System.Enum
System.Threading.Tasks.TaskCreationOptions = {}
---@type System.Threading.Tasks.TaskCreationOptions
CS.System.Threading.Tasks.TaskCreationOptions = System.Threading.Tasks.TaskCreationOptions

---@return System.Int32 value:0
System.Threading.Tasks.TaskCreationOptions.None = 0
---@return System.Int32 value:1
System.Threading.Tasks.TaskCreationOptions.PreferFairness = 1
---@return System.Int32 value:2
System.Threading.Tasks.TaskCreationOptions.LongRunning = 2
---@return System.Int32 value:4
System.Threading.Tasks.TaskCreationOptions.AttachedToParent = 4

---@class System.Threading.Tasks.TaskContinuationOptions : System.Enum
System.Threading.Tasks.TaskContinuationOptions = {}
---@type System.Threading.Tasks.TaskContinuationOptions
CS.System.Threading.Tasks.TaskContinuationOptions = System.Threading.Tasks.TaskContinuationOptions

---@return System.Int32 value:0
System.Threading.Tasks.TaskContinuationOptions.None = 0
---@return System.Int32 value:1
System.Threading.Tasks.TaskContinuationOptions.PreferFairness = 1
---@return System.Int32 value:2
System.Threading.Tasks.TaskContinuationOptions.LongRunning = 2
---@return System.Int32 value:4
System.Threading.Tasks.TaskContinuationOptions.AttachedToParent = 4
---@return System.Int32 value:8
System.Threading.Tasks.TaskContinuationOptions.DenyChildAttach = 8

---@class System.Threading.Tasks.TaskCanceledException : System.OperationCanceledException
---@field public Task System.Threading.Tasks.Task @  getter
System.Threading.Tasks.TaskCanceledException = {}
---@type System.Threading.Tasks.TaskCanceledException
CS.System.Threading.Tasks.TaskCanceledException = System.Threading.Tasks.TaskCanceledException

---@class System.Threading.Tasks.TaskCompletionSource : System.Object
---@field public Task any @  getter
System.Threading.Tasks.TaskCompletionSource = {}
---@type System.Threading.Tasks.TaskCompletionSource
CS.System.Threading.Tasks.TaskCompletionSource = System.Threading.Tasks.TaskCompletionSource

---@overload fun(exceptions:System.Collections.Generic.IEnumerable):System.Boolean
---@param exception System.Exception
---@return System.Boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetException(exception)end
---@overload fun(exceptions:System.Collections.Generic.IEnumerable):System.Void
---@param exception System.Exception
---@return System.Void
function System.Threading.Tasks.TaskCompletionSource:SetException(exception)end
---@param result any
---@return System.Boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetResult(result)end
---@param result any
---@return System.Void
function System.Threading.Tasks.TaskCompletionSource:SetResult(result)end
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetCanceled()end
---@return System.Void
function System.Threading.Tasks.TaskCompletionSource:SetCanceled()end
---@class System.Threading.Tasks.TaskFactory : System.Object
---@field public CancellationToken System.Threading.CancellationToken @  getter
---@field public Scheduler System.Threading.Tasks.TaskScheduler @  getter
---@field public CreationOptions System.Threading.Tasks.TaskCreationOptions @  getter
---@field public ContinuationOptions System.Threading.Tasks.TaskContinuationOptions @  getter
System.Threading.Tasks.TaskFactory = {}
---@type System.Threading.Tasks.TaskFactory
CS.System.Threading.Tasks.TaskFactory = System.Threading.Tasks.TaskFactory

---@overload fun(_function:any):any
---@overload fun(action:System.Action, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(action:System.Action, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(action:System.Action, state:System.Object):System.Threading.Tasks.Task
---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(_function:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(_function:any, state:System.Object):any
---@overload fun(action:System.Action, state:System.Object, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(action:System.Action, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(_function:any, state:System.Object, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(_function:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(action:System.Action, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(_function:any, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(action:System.Action, state:System.Object, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(_function:any, state:System.Object, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param action System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:StartNew(action)end
---@overload fun(asyncResult:System.IAsyncResult, endMethod:any):any
---@overload fun(asyncResult:System.IAsyncResult, endMethod:System.Action, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(beginMethod:System.Func, endMethod:System.Action, state:System.Object):System.Threading.Tasks.Task
---@overload fun(asyncResult:System.IAsyncResult, endMethod:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:System.Func, endMethod:any, state:System.Object):any
---@overload fun(asyncResult:System.IAsyncResult, endMethod:System.Action, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(beginMethod:System.Func, endMethod:System.Action, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, state:System.Object):System.Threading.Tasks.Task
---@overload fun(asyncResult:System.IAsyncResult, endMethod:any, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(beginMethod:System.Func, endMethod:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, arg2:any, state:System.Object):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:any, arg1:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, arg2:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, arg2:any, arg3:any, state:System.Object):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, arg3:any, state:System.Object):any
---@overload fun(beginMethod:any, endMethod:System.Action, arg1:any, arg2:any, arg3:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):System.Threading.Tasks.Task
---@overload fun(beginMethod:any, endMethod:any, arg1:any, arg2:any, arg3:any, state:System.Object, creationOptions:System.Threading.Tasks.TaskCreationOptions):any
---@param asyncResult System.IAsyncResult
---@param endMethod System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:FromAsync(asyncResult, endMethod)end
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@param tasks System.Threading.Tasks.Task[]
---@param continuationAction System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:ContinueWhenAll(tasks, continuationAction)end
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationAction:System.Action, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationFunction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):any
---@overload fun(tasks:System.Threading.Tasks.Task, continuationAction:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):System.Threading.Tasks.Task
---@param tasks System.Threading.Tasks.Task[]
---@param continuationAction System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:ContinueWhenAny(tasks, continuationAction)end
---@class System.Threading.Tasks.TaskScheduler : System.Object
---@field public MaximumConcurrencyLevel System.Int32 @  getter
---@field public Default System.Threading.Tasks.TaskScheduler @static  getter
---@field public Current System.Threading.Tasks.TaskScheduler @static  getter
---@field public Id System.Int32 @  getter
System.Threading.Tasks.TaskScheduler = {}
---@type System.Threading.Tasks.TaskScheduler
CS.System.Threading.Tasks.TaskScheduler = System.Threading.Tasks.TaskScheduler

---@return System.Threading.Tasks.TaskScheduler
function System.Threading.Tasks.TaskScheduler.FromCurrentSynchronizationContext()end
---@param value System.EventHandler
---@return System.Void
function System.Threading.Tasks.TaskScheduler.add_UnobservedTaskException(value)end
---@param value System.EventHandler
---@return System.Void
function System.Threading.Tasks.TaskScheduler.remove_UnobservedTaskException(value)end
---@class System.Threading.Tasks.UnobservedTaskExceptionEventArgs : System.EventArgs
---@field public Observed System.Boolean @  getter
---@field public Exception System.AggregateException @  getter
System.Threading.Tasks.UnobservedTaskExceptionEventArgs = {}
---@type System.Threading.Tasks.UnobservedTaskExceptionEventArgs
CS.System.Threading.Tasks.UnobservedTaskExceptionEventArgs = System.Threading.Tasks.UnobservedTaskExceptionEventArgs

---@return System.Void
function System.Threading.Tasks.UnobservedTaskExceptionEventArgs:SetObserved()end
---@class System.Threading.Tasks.TaskSchedulerException : System.Exception
System.Threading.Tasks.TaskSchedulerException = {}
---@type System.Threading.Tasks.TaskSchedulerException
CS.System.Threading.Tasks.TaskSchedulerException = System.Threading.Tasks.TaskSchedulerException

---@class System.Threading.Tasks.TaskExtensions : System.Object
System.Threading.Tasks.TaskExtensions = {}
---@type System.Threading.Tasks.TaskExtensions
CS.System.Threading.Tasks.TaskExtensions = System.Threading.Tasks.TaskExtensions

