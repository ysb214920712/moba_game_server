---@class System.Threading.CancellationToken : System.ValueType
---@field public None System.Threading.CancellationToken @static  getter
---@field public IsCancellationRequested System.Boolean @  getter
---@field public CanBeCanceled System.Boolean @  getter
---@field public WaitHandle System.Threading.WaitHandle @  getter
System.Threading.CancellationToken = {}
---@type System.Threading.CancellationToken
CS.System.Threading.CancellationToken = System.Threading.CancellationToken

---@overload fun(callback:System.Action, useSynchronizationContext:System.Boolean):System.Threading.CancellationTokenRegistration
---@overload fun(callback:System.Action, state:System.Object):System.Threading.CancellationTokenRegistration
---@overload fun(callback:System.Action, state:System.Object, useSynchronizationContext:System.Boolean):System.Threading.CancellationTokenRegistration
---@param callback System.Action
---@return System.Threading.CancellationTokenRegistration
function System.Threading.CancellationToken:Register(callback)end
---@overload fun(other:System.Object):System.Boolean
---@param other System.Threading.CancellationToken
---@return System.Boolean
function System.Threading.CancellationToken:Equals(other)end
---@return System.Int32
function System.Threading.CancellationToken:GetHashCode()end
---@param left System.Threading.CancellationToken
---@param right System.Threading.CancellationToken
---@return System.Boolean
function System.Threading.CancellationToken.op_Equality(left, right)end
---@param left System.Threading.CancellationToken
---@param right System.Threading.CancellationToken
---@return System.Boolean
function System.Threading.CancellationToken.op_Inequality(left, right)end
---@return System.Void
function System.Threading.CancellationToken:ThrowIfCancellationRequested()end
---@class System.Threading.CancellationTokenRegistration : System.ValueType
System.Threading.CancellationTokenRegistration = {}
---@type System.Threading.CancellationTokenRegistration
CS.System.Threading.CancellationTokenRegistration = System.Threading.CancellationTokenRegistration

---@return System.Void
function System.Threading.CancellationTokenRegistration:Dispose()end
---@param left System.Threading.CancellationTokenRegistration
---@param right System.Threading.CancellationTokenRegistration
---@return System.Boolean
function System.Threading.CancellationTokenRegistration.op_Equality(left, right)end
---@param left System.Threading.CancellationTokenRegistration
---@param right System.Threading.CancellationTokenRegistration
---@return System.Boolean
function System.Threading.CancellationTokenRegistration.op_Inequality(left, right)end
---@overload fun(other:System.Threading.CancellationTokenRegistration):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Threading.CancellationTokenRegistration:Equals(obj)end
---@return System.Int32
function System.Threading.CancellationTokenRegistration:GetHashCode()end
---@class System.Threading.CancellationTokenSource : System.Object
---@field public IsCancellationRequested System.Boolean @  getter
---@field public Token System.Threading.CancellationToken @  getter
System.Threading.CancellationTokenSource = {}
---@type System.Threading.CancellationTokenSource
CS.System.Threading.CancellationTokenSource = System.Threading.CancellationTokenSource

---@overload fun(throwOnFirstException:System.Boolean):System.Void
---@return System.Void
function System.Threading.CancellationTokenSource:Cancel()end
---@overload fun(delay:System.TimeSpan):System.Void
---@param millisecondsDelay System.Int32
---@return System.Void
function System.Threading.CancellationTokenSource:CancelAfter(millisecondsDelay)end
---@return System.Void
function System.Threading.CancellationTokenSource:Dispose()end
---@overload fun(token1:System.Threading.CancellationToken, token2:System.Threading.CancellationToken):System.Threading.CancellationTokenSource
---@param tokens System.Threading.CancellationToken[]
---@return System.Threading.CancellationTokenSource
function System.Threading.CancellationTokenSource.CreateLinkedTokenSource(tokens)end
---@class System.Threading.CountdownEvent : System.Object
---@field public CurrentCount System.Int32 @  getter
---@field public InitialCount System.Int32 @  getter
---@field public IsSet System.Boolean @  getter
---@field public WaitHandle System.Threading.WaitHandle @  getter
System.Threading.CountdownEvent = {}
---@type System.Threading.CountdownEvent
CS.System.Threading.CountdownEvent = System.Threading.CountdownEvent

---@return System.Void
function System.Threading.CountdownEvent:Dispose()end
---@overload fun(signalCount:System.Int32):System.Boolean
---@return System.Boolean
function System.Threading.CountdownEvent:Signal()end
---@overload fun(signalCount:System.Int32):System.Void
---@return System.Void
function System.Threading.CountdownEvent:AddCount()end
---@overload fun(signalCount:System.Int32):System.Boolean
---@return System.Boolean
function System.Threading.CountdownEvent:TryAddCount()end
---@overload fun(count:System.Int32):System.Void
---@return System.Void
function System.Threading.CountdownEvent:Reset()end
---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Void
function System.Threading.CountdownEvent:Wait()end
---@class System.Threading.LazyThreadSafetyMode : System.Enum
System.Threading.LazyThreadSafetyMode = {}
---@type System.Threading.LazyThreadSafetyMode
CS.System.Threading.LazyThreadSafetyMode = System.Threading.LazyThreadSafetyMode

---@return System.Int32 value:0
System.Threading.LazyThreadSafetyMode.None = 0
---@return System.Int32 value:1
System.Threading.LazyThreadSafetyMode.PublicationOnly = 1
---@return System.Int32 value:2
System.Threading.LazyThreadSafetyMode.ExecutionAndPublication = 2

---@class System.Threading.LazyInitializer : System.Object
System.Threading.LazyInitializer = {}
---@type System.Threading.LazyInitializer
CS.System.Threading.LazyInitializer = System.Threading.LazyInitializer

---@overload fun(target:any, valueFactory:any):any
---@overload fun(target:any, initialized:System.Boolean, syncLock:System.Object):any
---@overload fun(target:any, initialized:System.Boolean, syncLock:System.Object, valueFactory:any):any
---@param target any
---@return any
function System.Threading.LazyInitializer.EnsureInitialized(target)end
---@class System.Threading.ManualResetEventSlim : System.Object
---@field public WaitHandle System.Threading.WaitHandle @  getter
---@field public IsSet System.Boolean @ setter getter
---@field public SpinCount System.Int32 @ setter getter
System.Threading.ManualResetEventSlim = {}
---@type System.Threading.ManualResetEventSlim
CS.System.Threading.ManualResetEventSlim = System.Threading.ManualResetEventSlim

---@return System.Void
function System.Threading.ManualResetEventSlim:Set()end
---@return System.Void
function System.Threading.ManualResetEventSlim:Reset()end
---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Void
function System.Threading.ManualResetEventSlim:Wait()end
---@return System.Void
function System.Threading.ManualResetEventSlim:Dispose()end
---@class System.Threading.SemaphoreSlim : System.Object
---@field public CurrentCount System.Int32 @  getter
---@field public AvailableWaitHandle System.Threading.WaitHandle @  getter
System.Threading.SemaphoreSlim = {}
---@type System.Threading.SemaphoreSlim
CS.System.Threading.SemaphoreSlim = System.Threading.SemaphoreSlim

---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Void
function System.Threading.SemaphoreSlim:Wait()end
---@overload fun(millisecondsTimeout:System.Int32):System.Threading.Tasks.Task
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(timeout:System.TimeSpan):System.Threading.Tasks.Task
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.Threading.SemaphoreSlim:WaitAsync()end
---@overload fun(releaseCount:System.Int32):System.Int32
---@return System.Int32
function System.Threading.SemaphoreSlim:Release()end
---@return System.Void
function System.Threading.SemaphoreSlim:Dispose()end
---@class System.Threading.SpinLock : System.ValueType
---@field public IsHeld System.Boolean @  getter
---@field public IsHeldByCurrentThread System.Boolean @  getter
---@field public IsThreadOwnerTrackingEnabled System.Boolean @  getter
System.Threading.SpinLock = {}
---@type System.Threading.SpinLock
CS.System.Threading.SpinLock = System.Threading.SpinLock

---@param lockTaken System.Boolean
---@return System.Void
function System.Threading.SpinLock:Enter(lockTaken)end
---@overload fun(millisecondsTimeout:System.Int32, lockTaken:System.Boolean):System.Void
---@overload fun(timeout:System.TimeSpan, lockTaken:System.Boolean):System.Void
---@param lockTaken System.Boolean
---@return System.Void
function System.Threading.SpinLock:TryEnter(lockTaken)end
---@overload fun(useMemoryBarrier:System.Boolean):System.Void
---@return System.Void
function System.Threading.SpinLock:Exit()end
---@class System.Threading.SpinWait : System.ValueType
---@field public Count System.Int32 @  getter
---@field public NextSpinWillYield System.Boolean @  getter
System.Threading.SpinWait = {}
---@type System.Threading.SpinWait
CS.System.Threading.SpinWait = System.Threading.SpinWait

---@return System.Void
function System.Threading.SpinWait:SpinOnce()end
---@return System.Void
function System.Threading.SpinWait:Reset()end
---@overload fun(condition:System.Func, millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(condition:System.Func, timeout:System.TimeSpan):System.Boolean
---@param condition System.Func
---@return System.Void
function System.Threading.SpinWait.SpinUntil(condition)end
---@class System.Threading.ThreadLocal : System.Object
---@field public Value any @ setter getter
---@field public Values any @  getter
---@field public IsValueCreated System.Boolean @  getter
System.Threading.ThreadLocal = {}
---@type System.Threading.ThreadLocal
CS.System.Threading.ThreadLocal = System.Threading.ThreadLocal

---@return System.Void
function System.Threading.ThreadLocal:Dispose()end
---@return System.String
function System.Threading.ThreadLocal:ToString()end
---@class System.Threading.AbandonedMutexException : System.SystemException
---@field public Mutex System.Threading.Mutex @  getter
---@field public MutexIndex System.Int32 @  getter
System.Threading.AbandonedMutexException = {}
---@type System.Threading.AbandonedMutexException
CS.System.Threading.AbandonedMutexException = System.Threading.AbandonedMutexException

---@class System.Threading.ApartmentState : System.Enum
System.Threading.ApartmentState = {}
---@type System.Threading.ApartmentState
CS.System.Threading.ApartmentState = System.Threading.ApartmentState

---@return System.Int32 value:0
System.Threading.ApartmentState.STA = 0
---@return System.Int32 value:1
System.Threading.ApartmentState.MTA = 1
---@return System.Int32 value:2
System.Threading.ApartmentState.Unknown = 2

---@class System.Threading.AsyncLocal : System.Object
---@field public Value any @ setter getter
System.Threading.AsyncLocal = {}
---@type System.Threading.AsyncLocal
CS.System.Threading.AsyncLocal = System.Threading.AsyncLocal

---@class System.Threading.AsyncLocalValueChangedArgs : System.ValueType
---@field public PreviousValue any @ setter getter
---@field public CurrentValue any @ setter getter
---@field public ThreadContextChanged System.Boolean @ setter getter
System.Threading.AsyncLocalValueChangedArgs = {}
---@type System.Threading.AsyncLocalValueChangedArgs
CS.System.Threading.AsyncLocalValueChangedArgs = System.Threading.AsyncLocalValueChangedArgs

---@class System.Threading.AutoResetEvent : System.Threading.EventWaitHandle
System.Threading.AutoResetEvent = {}
---@type System.Threading.AutoResetEvent
CS.System.Threading.AutoResetEvent = System.Threading.AutoResetEvent

---@class System.Threading.EventResetMode : System.Enum
System.Threading.EventResetMode = {}
---@type System.Threading.EventResetMode
CS.System.Threading.EventResetMode = System.Threading.EventResetMode

---@return System.Int32 value:0
System.Threading.EventResetMode.AutoReset = 0
---@return System.Int32 value:1
System.Threading.EventResetMode.ManualReset = 1

---@class System.Threading.EventWaitHandle : System.Threading.WaitHandle
System.Threading.EventWaitHandle = {}
---@type System.Threading.EventWaitHandle
CS.System.Threading.EventWaitHandle = System.Threading.EventWaitHandle

---@overload fun(name:System.String, rights:System.Security.AccessControl.EventWaitHandleRights):System.Threading.EventWaitHandle
---@param name System.String
---@return System.Threading.EventWaitHandle
function System.Threading.EventWaitHandle.OpenExisting(name)end
---@overload fun(name:System.String, rights:System.Security.AccessControl.EventWaitHandleRights, result:System.Threading.EventWaitHandle):System.Boolean
---@param name System.String
---@param result System.Threading.EventWaitHandle
---@return System.Boolean
function System.Threading.EventWaitHandle.TryOpenExisting(name, result)end
---@return System.Boolean
function System.Threading.EventWaitHandle:Reset()end
---@return System.Boolean
function System.Threading.EventWaitHandle:Set()end
---@return System.Security.AccessControl.EventWaitHandleSecurity
function System.Threading.EventWaitHandle:GetAccessControl()end
---@param eventSecurity System.Security.AccessControl.EventWaitHandleSecurity
---@return System.Void
function System.Threading.EventWaitHandle:SetAccessControl(eventSecurity)end
---@class System.Threading.AsyncFlowControl : System.ValueType
System.Threading.AsyncFlowControl = {}
---@type System.Threading.AsyncFlowControl
CS.System.Threading.AsyncFlowControl = System.Threading.AsyncFlowControl

---@return System.Void
function System.Threading.AsyncFlowControl:Dispose()end
---@return System.Void
function System.Threading.AsyncFlowControl:Undo()end
---@return System.Int32
function System.Threading.AsyncFlowControl:GetHashCode()end
---@overload fun(obj:System.Threading.AsyncFlowControl):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Threading.AsyncFlowControl:Equals(obj)end
---@param a System.Threading.AsyncFlowControl
---@param b System.Threading.AsyncFlowControl
---@return System.Boolean
function System.Threading.AsyncFlowControl.op_Equality(a, b)end
---@param a System.Threading.AsyncFlowControl
---@param b System.Threading.AsyncFlowControl
---@return System.Boolean
function System.Threading.AsyncFlowControl.op_Inequality(a, b)end
---@class System.Threading.ExecutionContext : System.Object
System.Threading.ExecutionContext = {}
---@type System.Threading.ExecutionContext
CS.System.Threading.ExecutionContext = System.Threading.ExecutionContext

---@return System.Void
function System.Threading.ExecutionContext:Dispose()end
---@param executionContext System.Threading.ExecutionContext
---@param callback System.Threading.ContextCallback
---@param state System.Object
---@return System.Void
function System.Threading.ExecutionContext.Run(executionContext, callback, state)end
---@return System.Threading.ExecutionContext
function System.Threading.ExecutionContext:CreateCopy()end
---@return System.Threading.AsyncFlowControl
function System.Threading.ExecutionContext.SuppressFlow()end
---@return System.Void
function System.Threading.ExecutionContext.RestoreFlow()end
---@return System.Boolean
function System.Threading.ExecutionContext.IsFlowSuppressed()end
---@return System.Threading.ExecutionContext
function System.Threading.ExecutionContext.Capture()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Threading.ExecutionContext:GetObjectData(info, context)end
---@class System.Threading.LockRecursionException : System.Exception
System.Threading.LockRecursionException = {}
---@type System.Threading.LockRecursionException
CS.System.Threading.LockRecursionException = System.Threading.LockRecursionException

---@class System.Threading.ManualResetEvent : System.Threading.EventWaitHandle
System.Threading.ManualResetEvent = {}
---@type System.Threading.ManualResetEvent
CS.System.Threading.ManualResetEvent = System.Threading.ManualResetEvent

---@class System.Threading.Monitor : System.Object
System.Threading.Monitor = {}
---@type System.Threading.Monitor
CS.System.Threading.Monitor = System.Threading.Monitor

---@overload fun(obj:System.Object, lockTaken:System.Boolean):System.Void
---@param obj System.Object
---@return System.Void
function System.Threading.Monitor.Enter(obj)end
---@param obj System.Object
---@return System.Void
function System.Threading.Monitor.Exit(obj)end
---@overload fun(obj:System.Object, millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(obj:System.Object, lockTaken:System.Boolean):System.Void
---@overload fun(obj:System.Object, timeout:System.TimeSpan):System.Boolean
---@overload fun(obj:System.Object, millisecondsTimeout:System.Int32, lockTaken:System.Boolean):System.Void
---@overload fun(obj:System.Object, timeout:System.TimeSpan, lockTaken:System.Boolean):System.Void
---@param obj System.Object
---@return System.Boolean
function System.Threading.Monitor.TryEnter(obj)end
---@param obj System.Object
---@return System.Boolean
function System.Threading.Monitor.IsEntered(obj)end
---@overload fun(obj:System.Object, millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(obj:System.Object, millisecondsTimeout:System.Int32, exitContext:System.Boolean):System.Boolean
---@overload fun(obj:System.Object, timeout:System.TimeSpan):System.Boolean
---@overload fun(obj:System.Object, timeout:System.TimeSpan, exitContext:System.Boolean):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Threading.Monitor.Wait(obj)end
---@param obj System.Object
---@return System.Void
function System.Threading.Monitor.Pulse(obj)end
---@param obj System.Object
---@return System.Void
function System.Threading.Monitor.PulseAll(obj)end
---@class System.Threading.SemaphoreFullException : System.SystemException
System.Threading.SemaphoreFullException = {}
---@type System.Threading.SemaphoreFullException
CS.System.Threading.SemaphoreFullException = System.Threading.SemaphoreFullException

---@class System.Threading.SynchronizationContext : System.Object
---@field public Current System.Threading.SynchronizationContext @static  getter
System.Threading.SynchronizationContext = {}
---@type System.Threading.SynchronizationContext
CS.System.Threading.SynchronizationContext = System.Threading.SynchronizationContext

---@return System.Boolean
function System.Threading.SynchronizationContext:IsWaitNotificationRequired()end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
---@return System.Void
function System.Threading.SynchronizationContext:Send(d, state)end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
---@return System.Void
function System.Threading.SynchronizationContext:Post(d, state)end
---@return System.Void
function System.Threading.SynchronizationContext:OperationStarted()end
---@return System.Void
function System.Threading.SynchronizationContext:OperationCompleted()end
---@param waitHandles System.IntPtr[]
---@param waitAll System.Boolean
---@param millisecondsTimeout System.Int32
---@return System.Int32
function System.Threading.SynchronizationContext:Wait(waitHandles, waitAll, millisecondsTimeout)end
---@param syncContext System.Threading.SynchronizationContext
---@return System.Void
function System.Threading.SynchronizationContext.SetSynchronizationContext(syncContext)end
---@return System.Threading.SynchronizationContext
function System.Threading.SynchronizationContext:CreateCopy()end
---@class System.Threading.SynchronizationLockException : System.SystemException
System.Threading.SynchronizationLockException = {}
---@type System.Threading.SynchronizationLockException
CS.System.Threading.SynchronizationLockException = System.Threading.SynchronizationLockException

---@class System.Threading.Thread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public ExecutionContext System.Threading.ExecutionContext @  getter
---@field public Priority System.Threading.ThreadPriority @ setter getter
---@field public CurrentUICulture System.Globalization.CultureInfo @ setter getter
---@field public CurrentCulture System.Globalization.CultureInfo @ setter getter
---@field public CurrentContext System.Runtime.Remoting.Contexts.Context @static  getter
---@field public CurrentPrincipal System.Security.Principal.IPrincipal @static setter getter
---@field public CurrentThread System.Threading.Thread @static  getter
---@field public ApartmentState System.Threading.ApartmentState @ setter getter
---@field public IsThreadPoolThread System.Boolean @  getter
---@field public IsAlive System.Boolean @  getter
---@field public IsBackground System.Boolean @ setter getter
---@field public Name System.String @ setter getter
---@field public ThreadState System.Threading.ThreadState @  getter
---@field public ManagedThreadId System.Int32 @  getter
System.Threading.Thread = {}
---@type System.Threading.Thread
CS.System.Threading.Thread = System.Threading.Thread

---@overload fun(parameter:System.Object):System.Void
---@return System.Void
function System.Threading.Thread:Start()end
---@param stack System.Threading.CompressedStack
---@return System.Void
function System.Threading.Thread:SetCompressedStack(stack)end
---@return System.Threading.CompressedStack
function System.Threading.Thread:GetCompressedStack()end
---@return System.Void
function System.Threading.Thread.ResetAbort()end
---@return System.Void
function System.Threading.Thread:Suspend()end
---@return System.Void
function System.Threading.Thread:Resume()end
---@return System.Void
function System.Threading.Thread:Interrupt()end
---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@return System.Void
function System.Threading.Thread:Join()end
---@overload fun(timeout:System.TimeSpan):System.Void
---@param millisecondsTimeout System.Int32
---@return System.Void
function System.Threading.Thread.Sleep(millisecondsTimeout)end
---@return System.Boolean
function System.Threading.Thread.Yield()end
---@return System.LocalDataStoreSlot
function System.Threading.Thread.AllocateDataSlot()end
---@param name System.String
---@return System.LocalDataStoreSlot
function System.Threading.Thread.AllocateNamedDataSlot(name)end
---@param name System.String
---@return System.LocalDataStoreSlot
function System.Threading.Thread.GetNamedDataSlot(name)end
---@param name System.String
---@return System.Void
function System.Threading.Thread.FreeNamedDataSlot(name)end
---@param slot System.LocalDataStoreSlot
---@return System.Object
function System.Threading.Thread.GetData(slot)end
---@param slot System.LocalDataStoreSlot
---@param data System.Object
---@return System.Void
function System.Threading.Thread.SetData(slot, data)end
---@return System.Void
function System.Threading.Thread.MemoryBarrier()end
---@return System.AppDomain
function System.Threading.Thread.GetDomain()end
---@return System.Int32
function System.Threading.Thread.GetDomainID()end
---@overload fun(stateInfo:System.Object):System.Void
---@return System.Void
function System.Threading.Thread:Abort()end
---@param iterations System.Int32
---@return System.Void
function System.Threading.Thread.SpinWait(iterations)end
---@overload fun(address:System.Double):System.Double
---@overload fun(address:System.Int16):System.Int16
---@overload fun(address:System.Int32):System.Int32
---@overload fun(address:System.Int64):System.Int64
---@overload fun(address:System.IntPtr):System.IntPtr
---@overload fun(address:System.Object):System.Object
---@overload fun(address:System.SByte):System.SByte
---@overload fun(address:System.Single):System.Single
---@overload fun(address:System.UInt16):System.UInt16
---@overload fun(address:System.UInt32):System.UInt32
---@overload fun(address:System.UInt64):System.UInt64
---@overload fun(address:System.UIntPtr):System.UIntPtr
---@param address System.Byte
---@return System.Byte
function System.Threading.Thread.VolatileRead(address)end
---@overload fun(address:System.Double, value:System.Double):System.Void
---@overload fun(address:System.Int16, value:System.Int16):System.Void
---@overload fun(address:System.Int32, value:System.Int32):System.Void
---@overload fun(address:System.Int64, value:System.Int64):System.Void
---@overload fun(address:System.IntPtr, value:System.IntPtr):System.Void
---@overload fun(address:System.SByte, value:System.SByte):System.Void
---@overload fun(address:System.Single, value:System.Single):System.Void
---@overload fun(address:System.UInt16, value:System.UInt16):System.Void
---@overload fun(address:System.UInt32, value:System.UInt32):System.Void
---@overload fun(address:System.UInt64, value:System.UInt64):System.Void
---@overload fun(address:System.UIntPtr, value:System.UIntPtr):System.Void
---@overload fun(address:System.Object, value:System.Object):System.Void
---@param address System.Byte
---@param value System.Byte
---@return System.Void
function System.Threading.Thread.VolatileWrite(address, value)end
---@return System.Void
function System.Threading.Thread.BeginCriticalRegion()end
---@return System.Void
function System.Threading.Thread.EndCriticalRegion()end
---@return System.Void
function System.Threading.Thread.BeginThreadAffinity()end
---@return System.Void
function System.Threading.Thread.EndThreadAffinity()end
---@return System.Threading.ApartmentState
function System.Threading.Thread:GetApartmentState()end
---@param state System.Threading.ApartmentState
---@return System.Void
function System.Threading.Thread:SetApartmentState(state)end
---@param state System.Threading.ApartmentState
---@return System.Boolean
function System.Threading.Thread:TrySetApartmentState(state)end
---@return System.Int32
function System.Threading.Thread:GetHashCode()end
---@return System.Void
function System.Threading.Thread:DisableComObjectEagerCleanup()end
---@class System.Threading.ThreadAbortException : System.SystemException
---@field public ExceptionState System.Object @  getter
System.Threading.ThreadAbortException = {}
---@type System.Threading.ThreadAbortException
CS.System.Threading.ThreadAbortException = System.Threading.ThreadAbortException

---@class System.Threading.ThreadInterruptedException : System.SystemException
System.Threading.ThreadInterruptedException = {}
---@type System.Threading.ThreadInterruptedException
CS.System.Threading.ThreadInterruptedException = System.Threading.ThreadInterruptedException

---@class System.Threading.ThreadPool : System.Object
System.Threading.ThreadPool = {}
---@type System.Threading.ThreadPool
CS.System.Threading.ThreadPool = System.Threading.ThreadPool

---@param workerThreads System.Int32
---@param completionPortThreads System.Int32
---@return System.Boolean
function System.Threading.ThreadPool.SetMaxThreads(workerThreads, completionPortThreads)end
---@param workerThreads System.Int32
---@param completionPortThreads System.Int32
---@return System.Void
function System.Threading.ThreadPool.GetMaxThreads(workerThreads, completionPortThreads)end
---@param workerThreads System.Int32
---@param completionPortThreads System.Int32
---@return System.Boolean
function System.Threading.ThreadPool.SetMinThreads(workerThreads, completionPortThreads)end
---@param workerThreads System.Int32
---@param completionPortThreads System.Int32
---@return System.Void
function System.Threading.ThreadPool.GetMinThreads(workerThreads, completionPortThreads)end
---@param workerThreads System.Int32
---@param completionPortThreads System.Int32
---@return System.Void
function System.Threading.ThreadPool.GetAvailableThreads(workerThreads, completionPortThreads)end
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, millisecondsTimeOutInterval:System.Int32, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, millisecondsTimeOutInterval:System.Int64, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, timeout:System.TimeSpan, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@param waitObject System.Threading.WaitHandle
---@param callBack System.Threading.WaitOrTimerCallback
---@param state System.Object
---@param millisecondsTimeOutInterval System.UInt32
---@param executeOnlyOnce System.Boolean
---@return System.Threading.RegisteredWaitHandle
function System.Threading.ThreadPool.RegisterWaitForSingleObject(waitObject, callBack, state, millisecondsTimeOutInterval, executeOnlyOnce)end
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, millisecondsTimeOutInterval:System.Int32, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, millisecondsTimeOutInterval:System.Int64, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:System.Threading.WaitOrTimerCallback, state:System.Object, timeout:System.TimeSpan, executeOnlyOnce:System.Boolean):System.Threading.RegisteredWaitHandle
---@param waitObject System.Threading.WaitHandle
---@param callBack System.Threading.WaitOrTimerCallback
---@param state System.Object
---@param millisecondsTimeOutInterval System.UInt32
---@param executeOnlyOnce System.Boolean
---@return System.Threading.RegisteredWaitHandle
function System.Threading.ThreadPool.UnsafeRegisterWaitForSingleObject(waitObject, callBack, state, millisecondsTimeOutInterval, executeOnlyOnce)end
---@overload fun(callBack:System.Threading.WaitCallback, state:System.Object):System.Boolean
---@param callBack System.Threading.WaitCallback
---@return System.Boolean
function System.Threading.ThreadPool.QueueUserWorkItem(callBack)end
---@param callBack System.Threading.WaitCallback
---@param state System.Object
---@return System.Boolean
function System.Threading.ThreadPool.UnsafeQueueUserWorkItem(callBack, state)end
---@param overlapped System.Threading.NativeOverlapped
---@return System.Boolean
function System.Threading.ThreadPool.UnsafeQueueNativeOverlapped(overlapped)end
---@overload fun(osHandle:System.Runtime.InteropServices.SafeHandle):System.Boolean
---@param osHandle System.IntPtr
---@return System.Boolean
function System.Threading.ThreadPool.BindHandle(osHandle)end
---@class System.Threading.ThreadPriority : System.Enum
System.Threading.ThreadPriority = {}
---@type System.Threading.ThreadPriority
CS.System.Threading.ThreadPriority = System.Threading.ThreadPriority

---@return System.Int32 value:0
System.Threading.ThreadPriority.Lowest = 0
---@return System.Int32 value:1
System.Threading.ThreadPriority.BelowNormal = 1
---@return System.Int32 value:2
System.Threading.ThreadPriority.Normal = 2
---@return System.Int32 value:3
System.Threading.ThreadPriority.AboveNormal = 3
---@return System.Int32 value:4
System.Threading.ThreadPriority.Highest = 4

---@class System.Threading.ThreadStartException : System.SystemException
System.Threading.ThreadStartException = {}
---@type System.Threading.ThreadStartException
CS.System.Threading.ThreadStartException = System.Threading.ThreadStartException

---@class System.Threading.ThreadState : System.Enum
System.Threading.ThreadState = {}
---@type System.Threading.ThreadState
CS.System.Threading.ThreadState = System.Threading.ThreadState

---@return System.Int32 value:0
System.Threading.ThreadState.Running = 0
---@return System.Int32 value:1
System.Threading.ThreadState.StopRequested = 1
---@return System.Int32 value:2
System.Threading.ThreadState.SuspendRequested = 2
---@return System.Int32 value:4
System.Threading.ThreadState.Background = 4
---@return System.Int32 value:8
System.Threading.ThreadState.Unstarted = 8

---@class System.Threading.ThreadStateException : System.SystemException
System.Threading.ThreadStateException = {}
---@type System.Threading.ThreadStateException
CS.System.Threading.ThreadStateException = System.Threading.ThreadStateException

---@class System.Threading.Timeout : System.Object
---@field public InfiniteTimeSpan System.TimeSpan
---@field public Infinite System.Int32
System.Threading.Timeout = {}
---@type System.Threading.Timeout
CS.System.Threading.Timeout = System.Threading.Timeout

---@class System.Threading.WaitHandle : System.MarshalByRefObject
---@field public Handle System.IntPtr @ setter getter
---@field public SafeWaitHandle Microsoft.Win32.SafeHandles.SafeWaitHandle @ setter getter
---@field public WaitTimeout System.Int32
System.Threading.WaitHandle = {}
---@type System.Threading.WaitHandle
CS.System.Threading.WaitHandle = System.Threading.WaitHandle

---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(millisecondsTimeout:System.Int32, exitContext:System.Boolean):System.Boolean
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(timeout:System.TimeSpan, exitContext:System.Boolean):System.Boolean
---@return System.Boolean
function System.Threading.WaitHandle:WaitOne()end
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:System.Int32, exitContext:System.Boolean):System.Boolean
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan):System.Boolean
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan, exitContext:System.Boolean):System.Boolean
---@param waitHandles System.Threading.WaitHandle[]
---@return System.Boolean
function System.Threading.WaitHandle.WaitAll(waitHandles)end
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:System.Int32):System.Int32
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:System.Int32, exitContext:System.Boolean):System.Int32
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan):System.Int32
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan, exitContext:System.Boolean):System.Int32
---@param waitHandles System.Threading.WaitHandle[]
---@return System.Int32
function System.Threading.WaitHandle.WaitAny(waitHandles)end
---@overload fun(toSignal:System.Threading.WaitHandle, toWaitOn:System.Threading.WaitHandle, millisecondsTimeout:System.Int32, exitContext:System.Boolean):System.Boolean
---@overload fun(toSignal:System.Threading.WaitHandle, toWaitOn:System.Threading.WaitHandle, timeout:System.TimeSpan, exitContext:System.Boolean):System.Boolean
---@param toSignal System.Threading.WaitHandle
---@param toWaitOn System.Threading.WaitHandle
---@return System.Boolean
function System.Threading.WaitHandle.SignalAndWait(toSignal, toWaitOn)end
---@return System.Void
function System.Threading.WaitHandle:Close()end
---@return System.Void
function System.Threading.WaitHandle:Dispose()end
---@class System.Threading.WaitHandleExtensions : System.Object
System.Threading.WaitHandleExtensions = {}
---@type System.Threading.WaitHandleExtensions
CS.System.Threading.WaitHandleExtensions = System.Threading.WaitHandleExtensions

---@class System.Threading.WaitHandleCannotBeOpenedException : System.ApplicationException
System.Threading.WaitHandleCannotBeOpenedException = {}
---@type System.Threading.WaitHandleCannotBeOpenedException
CS.System.Threading.WaitHandleCannotBeOpenedException = System.Threading.WaitHandleCannotBeOpenedException

---@class System.Threading.CompressedStack : System.Object
System.Threading.CompressedStack = {}
---@type System.Threading.CompressedStack
CS.System.Threading.CompressedStack = System.Threading.CompressedStack

---@return System.Threading.CompressedStack
function System.Threading.CompressedStack:CreateCopy()end
---@return System.Threading.CompressedStack
function System.Threading.CompressedStack.Capture()end
---@return System.Threading.CompressedStack
function System.Threading.CompressedStack.GetCompressedStack()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Threading.CompressedStack:GetObjectData(info, context)end
---@param compressedStack System.Threading.CompressedStack
---@param callback System.Threading.ContextCallback
---@param state System.Object
---@return System.Void
function System.Threading.CompressedStack.Run(compressedStack, callback, state)end
---@class System.Threading.HostExecutionContext : System.Object
System.Threading.HostExecutionContext = {}
---@type System.Threading.HostExecutionContext
CS.System.Threading.HostExecutionContext = System.Threading.HostExecutionContext

---@return System.Threading.HostExecutionContext
function System.Threading.HostExecutionContext:CreateCopy()end
---@overload fun(disposing:System.Boolean):System.Void
---@return System.Void
function System.Threading.HostExecutionContext:Dispose()end
---@class System.Threading.HostExecutionContextManager : System.Object
System.Threading.HostExecutionContextManager = {}
---@type System.Threading.HostExecutionContextManager
CS.System.Threading.HostExecutionContextManager = System.Threading.HostExecutionContextManager

---@return System.Threading.HostExecutionContext
function System.Threading.HostExecutionContextManager:Capture()end
---@param previousState System.Object
---@return System.Void
function System.Threading.HostExecutionContextManager:Revert(previousState)end
---@param hostExecutionContext System.Threading.HostExecutionContext
---@return System.Object
function System.Threading.HostExecutionContextManager:SetHostExecutionContext(hostExecutionContext)end
---@class System.Threading.Interlocked : System.Object
System.Threading.Interlocked = {}
---@type System.Threading.Interlocked
CS.System.Threading.Interlocked = System.Threading.Interlocked

---@overload fun(location1:System.Single, value:System.Single, comparand:System.Single):System.Single
---@overload fun(location1:System.Int64, value:System.Int64, comparand:System.Int64):System.Int64
---@overload fun(location1:System.IntPtr, value:System.IntPtr, comparand:System.IntPtr):System.IntPtr
---@overload fun(location1:System.Double, value:System.Double, comparand:System.Double):System.Double
---@overload fun(location1:System.Object, value:System.Object, comparand:System.Object):System.Object
---@overload fun(location1:any, value:any, comparand:any):any
---@param location1 System.Int32
---@param value System.Int32
---@param comparand System.Int32
---@return System.Int32
function System.Threading.Interlocked.CompareExchange(location1, value, comparand)end
---@overload fun(location:System.Int64):System.Int64
---@param location System.Int32
---@return System.Int32
function System.Threading.Interlocked.Decrement(location)end
---@overload fun(location:System.Int64):System.Int64
---@param location System.Int32
---@return System.Int32
function System.Threading.Interlocked.Increment(location)end
---@overload fun(location1:System.Single, value:System.Single):System.Single
---@overload fun(location1:System.Int64, value:System.Int64):System.Int64
---@overload fun(location1:System.IntPtr, value:System.IntPtr):System.IntPtr
---@overload fun(location1:System.Double, value:System.Double):System.Double
---@overload fun(location1:System.Object, value:System.Object):System.Object
---@overload fun(location1:any, value:any):any
---@param location1 System.Int32
---@param value System.Int32
---@return System.Int32
function System.Threading.Interlocked.Exchange(location1, value)end
---@param location System.Int64
---@return System.Int64
function System.Threading.Interlocked.Read(location)end
---@overload fun(location1:System.Int64, value:System.Int64):System.Int64
---@param location1 System.Int32
---@param value System.Int32
---@return System.Int32
function System.Threading.Interlocked.Add(location1, value)end
---@return System.Void
function System.Threading.Interlocked.MemoryBarrier()end
---@class System.Threading.LockCookie : System.ValueType
System.Threading.LockCookie = {}
---@type System.Threading.LockCookie
CS.System.Threading.LockCookie = System.Threading.LockCookie

---@return System.Int32
function System.Threading.LockCookie:GetHashCode()end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Threading.LockCookie
---@return System.Boolean
function System.Threading.LockCookie:Equals(obj)end
---@param a System.Threading.LockCookie
---@param b System.Threading.LockCookie
---@return System.Boolean
function System.Threading.LockCookie.op_Equality(a, b)end
---@param a System.Threading.LockCookie
---@param b System.Threading.LockCookie
---@return System.Boolean
function System.Threading.LockCookie.op_Inequality(a, b)end
---@class System.Threading.Mutex : System.Threading.WaitHandle
System.Threading.Mutex = {}
---@type System.Threading.Mutex
CS.System.Threading.Mutex = System.Threading.Mutex

---@return System.Security.AccessControl.MutexSecurity
function System.Threading.Mutex:GetAccessControl()end
---@overload fun(name:System.String, rights:System.Security.AccessControl.MutexRights):System.Threading.Mutex
---@param name System.String
---@return System.Threading.Mutex
function System.Threading.Mutex.OpenExisting(name)end
---@overload fun(name:System.String, rights:System.Security.AccessControl.MutexRights, result:System.Threading.Mutex):System.Boolean
---@param name System.String
---@param result System.Threading.Mutex
---@return System.Boolean
function System.Threading.Mutex.TryOpenExisting(name, result)end
---@return System.Void
function System.Threading.Mutex:ReleaseMutex()end
---@param mutexSecurity System.Security.AccessControl.MutexSecurity
---@return System.Void
function System.Threading.Mutex:SetAccessControl(mutexSecurity)end
---@class System.Threading.NativeOverlapped : System.ValueType
---@field public InternalLow System.IntPtr
---@field public InternalHigh System.IntPtr
---@field public OffsetLow System.Int32
---@field public OffsetHigh System.Int32
---@field public EventHandle System.IntPtr
System.Threading.NativeOverlapped = {}
---@type System.Threading.NativeOverlapped
CS.System.Threading.NativeOverlapped = System.Threading.NativeOverlapped

---@class System.Threading.Overlapped : System.Object
---@field public AsyncResult System.IAsyncResult @ setter getter
---@field public EventHandle System.Int32 @ setter getter
---@field public EventHandleIntPtr System.IntPtr @ setter getter
---@field public OffsetHigh System.Int32 @ setter getter
---@field public OffsetLow System.Int32 @ setter getter
System.Threading.Overlapped = {}
---@type System.Threading.Overlapped
CS.System.Threading.Overlapped = System.Threading.Overlapped

---@param nativeOverlappedPtr System.Threading.NativeOverlapped
---@return System.Void
function System.Threading.Overlapped.Free(nativeOverlappedPtr)end
---@param nativeOverlappedPtr System.Threading.NativeOverlapped
---@return System.Threading.Overlapped
function System.Threading.Overlapped.Unpack(nativeOverlappedPtr)end
---@overload fun(iocb:System.Threading.IOCompletionCallback, userData:System.Object):System.Threading.NativeOverlapped
---@param iocb System.Threading.IOCompletionCallback
---@return System.Threading.NativeOverlapped
function System.Threading.Overlapped:Pack(iocb)end
---@overload fun(iocb:System.Threading.IOCompletionCallback, userData:System.Object):System.Threading.NativeOverlapped
---@param iocb System.Threading.IOCompletionCallback
---@return System.Threading.NativeOverlapped
function System.Threading.Overlapped:UnsafePack(iocb)end
---@class System.Threading.ReaderWriterLock : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsReaderLockHeld System.Boolean @  getter
---@field public IsWriterLockHeld System.Boolean @  getter
---@field public WriterSeqNum System.Int32 @  getter
System.Threading.ReaderWriterLock = {}
---@type System.Threading.ReaderWriterLock
CS.System.Threading.ReaderWriterLock = System.Threading.ReaderWriterLock

---@overload fun(timeout:System.TimeSpan):System.Void
---@param millisecondsTimeout System.Int32
---@return System.Void
function System.Threading.ReaderWriterLock:AcquireReaderLock(millisecondsTimeout)end
---@overload fun(timeout:System.TimeSpan):System.Void
---@param millisecondsTimeout System.Int32
---@return System.Void
function System.Threading.ReaderWriterLock:AcquireWriterLock(millisecondsTimeout)end
---@param seqNum System.Int32
---@return System.Boolean
function System.Threading.ReaderWriterLock:AnyWritersSince(seqNum)end
---@param lockCookie System.Threading.LockCookie
---@return System.Void
function System.Threading.ReaderWriterLock:DowngradeFromWriterLock(lockCookie)end
---@return System.Threading.LockCookie
function System.Threading.ReaderWriterLock:ReleaseLock()end
---@return System.Void
function System.Threading.ReaderWriterLock:ReleaseReaderLock()end
---@return System.Void
function System.Threading.ReaderWriterLock:ReleaseWriterLock()end
---@param lockCookie System.Threading.LockCookie
---@return System.Void
function System.Threading.ReaderWriterLock:RestoreLock(lockCookie)end
---@overload fun(timeout:System.TimeSpan):System.Threading.LockCookie
---@param millisecondsTimeout System.Int32
---@return System.Threading.LockCookie
function System.Threading.ReaderWriterLock:UpgradeToWriterLock(millisecondsTimeout)end
---@class System.Threading.RegisteredWaitHandle : System.MarshalByRefObject
System.Threading.RegisteredWaitHandle = {}
---@type System.Threading.RegisteredWaitHandle
CS.System.Threading.RegisteredWaitHandle = System.Threading.RegisteredWaitHandle

---@param waitObject System.Threading.WaitHandle
---@return System.Boolean
function System.Threading.RegisteredWaitHandle:Unregister(waitObject)end
---@class System.Threading.Timer : System.MarshalByRefObject
System.Threading.Timer = {}
---@type System.Threading.Timer
CS.System.Threading.Timer = System.Threading.Timer

---@overload fun(dueTime:System.UInt32, period:System.UInt32):System.Boolean
---@overload fun(dueTime:System.Int64, period:System.Int64):System.Boolean
---@overload fun(dueTime:System.TimeSpan, period:System.TimeSpan):System.Boolean
---@param dueTime System.Int32
---@param period System.Int32
---@return System.Boolean
function System.Threading.Timer:Change(dueTime, period)end
---@overload fun(notifyObject:System.Threading.WaitHandle):System.Boolean
---@return System.Void
function System.Threading.Timer:Dispose()end
---@class System.Threading.Volatile : System.Object
System.Threading.Volatile = {}
---@type System.Threading.Volatile
CS.System.Threading.Volatile = System.Threading.Volatile

---@overload fun(location:System.Byte):System.Byte
---@overload fun(location:System.SByte):System.SByte
---@overload fun(location:System.Int16):System.Int16
---@overload fun(location:System.UInt16):System.UInt16
---@overload fun(location:System.Int32):System.Int32
---@overload fun(location:System.UInt32):System.UInt32
---@overload fun(location:System.Int64):System.Int64
---@overload fun(location:System.UInt64):System.UInt64
---@overload fun(location:System.IntPtr):System.IntPtr
---@overload fun(location:System.UIntPtr):System.UIntPtr
---@overload fun(location:System.Double):System.Double
---@overload fun(location:System.Single):System.Single
---@overload fun(location:any):any
---@param location System.Boolean
---@return System.Boolean
function System.Threading.Volatile.Read(location)end
---@overload fun(location:System.Byte, value:System.Byte):System.Void
---@overload fun(location:System.SByte, value:System.SByte):System.Void
---@overload fun(location:System.Int16, value:System.Int16):System.Void
---@overload fun(location:System.UInt16, value:System.UInt16):System.Void
---@overload fun(location:System.Int32, value:System.Int32):System.Void
---@overload fun(location:System.UInt32, value:System.UInt32):System.Void
---@overload fun(location:System.Int64, value:System.Int64):System.Void
---@overload fun(location:System.UInt64, value:System.UInt64):System.Void
---@overload fun(location:System.IntPtr, value:System.IntPtr):System.Void
---@overload fun(location:System.UIntPtr, value:System.UIntPtr):System.Void
---@overload fun(location:System.Double, value:System.Double):System.Void
---@overload fun(location:System.Single, value:System.Single):System.Void
---@overload fun(location:any, value:any):System.Void
---@param location System.Boolean
---@param value System.Boolean
---@return System.Void
function System.Threading.Volatile.Write(location, value)end
---@class System.Threading.ThreadPoolBoundHandle : System.Object
---@field public Handle System.Runtime.InteropServices.SafeHandle @  getter
System.Threading.ThreadPoolBoundHandle = {}
---@type System.Threading.ThreadPoolBoundHandle
CS.System.Threading.ThreadPoolBoundHandle = System.Threading.ThreadPoolBoundHandle

---@overload fun(callback:System.Threading.IOCompletionCallback, state:System.Object, pinData:System.Object):System.Threading.NativeOverlapped
---@param preAllocated System.Threading.PreAllocatedOverlapped
---@return System.Threading.NativeOverlapped
function System.Threading.ThreadPoolBoundHandle:AllocateNativeOverlapped(preAllocated)end
---@param handle System.Runtime.InteropServices.SafeHandle
---@return System.Threading.ThreadPoolBoundHandle
function System.Threading.ThreadPoolBoundHandle.BindHandle(handle)end
---@return System.Void
function System.Threading.ThreadPoolBoundHandle:Dispose()end
---@param overlapped System.Threading.NativeOverlapped
---@return System.Void
function System.Threading.ThreadPoolBoundHandle:FreeNativeOverlapped(overlapped)end
---@param overlapped System.Threading.NativeOverlapped
---@return System.Object
function System.Threading.ThreadPoolBoundHandle.GetNativeOverlappedState(overlapped)end
---@class System.Threading.PreAllocatedOverlapped : System.Object
System.Threading.PreAllocatedOverlapped = {}
---@type System.Threading.PreAllocatedOverlapped
CS.System.Threading.PreAllocatedOverlapped = System.Threading.PreAllocatedOverlapped

---@return System.Void
function System.Threading.PreAllocatedOverlapped:Dispose()end
---@class System.Threading.LockRecursionPolicy : System.Enum
System.Threading.LockRecursionPolicy = {}
---@type System.Threading.LockRecursionPolicy
CS.System.Threading.LockRecursionPolicy = System.Threading.LockRecursionPolicy

---@return System.Int32 value:0
System.Threading.LockRecursionPolicy.NoRecursion = 0
---@return System.Int32 value:1
System.Threading.LockRecursionPolicy.SupportsRecursion = 1

---@class System.Threading.ReaderWriterLockSlim : System.Object
---@field public IsReadLockHeld System.Boolean @  getter
---@field public IsUpgradeableReadLockHeld System.Boolean @  getter
---@field public IsWriteLockHeld System.Boolean @  getter
---@field public RecursionPolicy System.Threading.LockRecursionPolicy @  getter
---@field public CurrentReadCount System.Int32 @  getter
---@field public RecursiveReadCount System.Int32 @  getter
---@field public RecursiveUpgradeCount System.Int32 @  getter
---@field public RecursiveWriteCount System.Int32 @  getter
---@field public WaitingReadCount System.Int32 @  getter
---@field public WaitingUpgradeCount System.Int32 @  getter
---@field public WaitingWriteCount System.Int32 @  getter
System.Threading.ReaderWriterLockSlim = {}
---@type System.Threading.ReaderWriterLockSlim
CS.System.Threading.ReaderWriterLockSlim = System.Threading.ReaderWriterLockSlim

---@return System.Void
function System.Threading.ReaderWriterLockSlim:EnterReadLock()end
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@param millisecondsTimeout System.Int32
---@return System.Boolean
function System.Threading.ReaderWriterLockSlim:TryEnterReadLock(millisecondsTimeout)end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:EnterWriteLock()end
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@param millisecondsTimeout System.Int32
---@return System.Boolean
function System.Threading.ReaderWriterLockSlim:TryEnterWriteLock(millisecondsTimeout)end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:EnterUpgradeableReadLock()end
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@param millisecondsTimeout System.Int32
---@return System.Boolean
function System.Threading.ReaderWriterLockSlim:TryEnterUpgradeableReadLock(millisecondsTimeout)end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:ExitReadLock()end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:ExitWriteLock()end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:ExitUpgradeableReadLock()end
---@return System.Void
function System.Threading.ReaderWriterLockSlim:Dispose()end
---@class System.Threading.BarrierPostPhaseException : System.Exception
System.Threading.BarrierPostPhaseException = {}
---@type System.Threading.BarrierPostPhaseException
CS.System.Threading.BarrierPostPhaseException = System.Threading.BarrierPostPhaseException

---@class System.Threading.Barrier : System.Object
---@field public ParticipantsRemaining System.Int32 @  getter
---@field public ParticipantCount System.Int32 @  getter
---@field public CurrentPhaseNumber System.Int64 @ setter getter
System.Threading.Barrier = {}
---@type System.Threading.Barrier
CS.System.Threading.Barrier = System.Threading.Barrier

---@return System.Int64
function System.Threading.Barrier:AddParticipant()end
---@param participantCount System.Int32
---@return System.Int64
function System.Threading.Barrier:AddParticipants(participantCount)end
---@return System.Void
function System.Threading.Barrier:RemoveParticipant()end
---@param participantCount System.Int32
---@return System.Void
function System.Threading.Barrier:RemoveParticipants(participantCount)end
---@overload fun(millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Void
---@overload fun(timeout:System.TimeSpan):System.Boolean
---@overload fun(millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@return System.Void
function System.Threading.Barrier:SignalAndWait()end
---@return System.Void
function System.Threading.Barrier:Dispose()end
---@class System.Threading.Semaphore : System.Threading.WaitHandle
System.Threading.Semaphore = {}
---@type System.Threading.Semaphore
CS.System.Threading.Semaphore = System.Threading.Semaphore

---@overload fun(name:System.String, rights:System.Security.AccessControl.SemaphoreRights):System.Threading.Semaphore
---@param name System.String
---@return System.Threading.Semaphore
function System.Threading.Semaphore.OpenExisting(name)end
---@overload fun(name:System.String, rights:System.Security.AccessControl.SemaphoreRights, result:System.Threading.Semaphore):System.Boolean
---@param name System.String
---@param result System.Threading.Semaphore
---@return System.Boolean
function System.Threading.Semaphore.TryOpenExisting(name, result)end
---@overload fun(releaseCount:System.Int32):System.Int32
---@return System.Int32
function System.Threading.Semaphore:Release()end
---@return System.Security.AccessControl.SemaphoreSecurity
function System.Threading.Semaphore:GetAccessControl()end
---@param semaphoreSecurity System.Security.AccessControl.SemaphoreSecurity
---@return System.Void
function System.Threading.Semaphore:SetAccessControl(semaphoreSecurity)end
---@class System.Threading.ThreadExceptionEventArgs : System.EventArgs
---@field public Exception System.Exception @  getter
System.Threading.ThreadExceptionEventArgs = {}
---@type System.Threading.ThreadExceptionEventArgs
CS.System.Threading.ThreadExceptionEventArgs = System.Threading.ThreadExceptionEventArgs

