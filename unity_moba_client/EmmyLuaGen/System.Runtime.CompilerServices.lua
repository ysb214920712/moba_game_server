---@class System.Runtime.CompilerServices.AsyncMethodBuilderAttribute : System.Attribute
---@field public BuilderType System.Type @  getter
System.Runtime.CompilerServices.AsyncMethodBuilderAttribute = {}
---@type System.Runtime.CompilerServices.AsyncMethodBuilderAttribute
CS.System.Runtime.CompilerServices.AsyncMethodBuilderAttribute = System.Runtime.CompilerServices.AsyncMethodBuilderAttribute

---@class System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder : System.ValueType
---@field public Task any @  getter
System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder = {}
---@type System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder
CS.System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder = System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder

---@return System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder.Create()end
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:Start(stateMachine)end
---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:SetStateMachine(stateMachine)end
---@param result any
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:SetResult(result)end
---@param exception System.Exception
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:SetException(exception)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:AwaitOnCompleted(awaiter, stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncValueTaskMethodBuilder:AwaitUnsafeOnCompleted(awaiter, stateMachine)end
---@class System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable : System.ValueType
System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable = {}
---@type System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable
CS.System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable = System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable

---@return any
function System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable:GetAwaiter()end
---@class System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable = {}
---@type System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable
CS.System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable = System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable

---@return any
function System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable:GetResult()end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable:UnsafeOnCompleted(continuation)end
---@class System.Runtime.CompilerServices.ValueTaskAwaiter : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.ValueTaskAwaiter = {}
---@type System.Runtime.CompilerServices.ValueTaskAwaiter
CS.System.Runtime.CompilerServices.ValueTaskAwaiter = System.Runtime.CompilerServices.ValueTaskAwaiter

---@return any
function System.Runtime.CompilerServices.ValueTaskAwaiter:GetResult()end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ValueTaskAwaiter:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ValueTaskAwaiter:UnsafeOnCompleted(continuation)end
---@class System.Runtime.CompilerServices.IsByRefLikeAttribute : System.Attribute
System.Runtime.CompilerServices.IsByRefLikeAttribute = {}
---@type System.Runtime.CompilerServices.IsByRefLikeAttribute
CS.System.Runtime.CompilerServices.IsByRefLikeAttribute = System.Runtime.CompilerServices.IsByRefLikeAttribute

---@class System.Runtime.CompilerServices.IsReadOnlyAttribute : System.Attribute
System.Runtime.CompilerServices.IsReadOnlyAttribute = {}
---@type System.Runtime.CompilerServices.IsReadOnlyAttribute
CS.System.Runtime.CompilerServices.IsReadOnlyAttribute = System.Runtime.CompilerServices.IsReadOnlyAttribute

---@class System.Runtime.CompilerServices.RuntimeFeature : System.Object
---@field public PortablePdb System.String
System.Runtime.CompilerServices.RuntimeFeature = {}
---@type System.Runtime.CompilerServices.RuntimeFeature
CS.System.Runtime.CompilerServices.RuntimeFeature = System.Runtime.CompilerServices.RuntimeFeature

---@param feature System.String
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeFeature.IsSupported(feature)end
---@class System.Runtime.CompilerServices.TupleElementNamesAttribute : System.Attribute
---@field public TransformNames System.Collections.Generic.IList @  getter
System.Runtime.CompilerServices.TupleElementNamesAttribute = {}
---@type System.Runtime.CompilerServices.TupleElementNamesAttribute
CS.System.Runtime.CompilerServices.TupleElementNamesAttribute = System.Runtime.CompilerServices.TupleElementNamesAttribute

---@class System.Runtime.CompilerServices.ContractHelper : System.Object
System.Runtime.CompilerServices.ContractHelper = {}
---@type System.Runtime.CompilerServices.ContractHelper
CS.System.Runtime.CompilerServices.ContractHelper = System.Runtime.CompilerServices.ContractHelper

---@param failureKind System.Diagnostics.Contracts.ContractFailureKind
---@param userMessage System.String
---@param conditionText System.String
---@param innerException System.Exception
---@return System.String
function System.Runtime.CompilerServices.ContractHelper.RaiseContractFailedEvent(failureKind, userMessage, conditionText, innerException)end
---@param kind System.Diagnostics.Contracts.ContractFailureKind
---@param displayMessage System.String
---@param userMessage System.String
---@param conditionText System.String
---@param innerException System.Exception
---@return System.Void
function System.Runtime.CompilerServices.ContractHelper.TriggerFailure(kind, displayMessage, userMessage, conditionText, innerException)end
---@class System.Runtime.CompilerServices.AsyncVoidMethodBuilder : System.ValueType
System.Runtime.CompilerServices.AsyncVoidMethodBuilder = {}
---@type System.Runtime.CompilerServices.AsyncVoidMethodBuilder
CS.System.Runtime.CompilerServices.AsyncVoidMethodBuilder = System.Runtime.CompilerServices.AsyncVoidMethodBuilder

---@return System.Runtime.CompilerServices.AsyncVoidMethodBuilder
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder.Create()end
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:Start(stateMachine)end
---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:SetStateMachine(stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:AwaitOnCompleted(awaiter, stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:AwaitUnsafeOnCompleted(awaiter, stateMachine)end
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:SetResult()end
---@param exception System.Exception
---@return System.Void
function System.Runtime.CompilerServices.AsyncVoidMethodBuilder:SetException(exception)end
---@class System.Runtime.CompilerServices.AsyncTaskMethodBuilder : System.ValueType
---@field public Task System.Threading.Tasks.Task @  getter
System.Runtime.CompilerServices.AsyncTaskMethodBuilder = {}
---@type System.Runtime.CompilerServices.AsyncTaskMethodBuilder
CS.System.Runtime.CompilerServices.AsyncTaskMethodBuilder = System.Runtime.CompilerServices.AsyncTaskMethodBuilder

---@return System.Runtime.CompilerServices.AsyncTaskMethodBuilder
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder.Create()end
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:Start(stateMachine)end
---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetStateMachine(stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitOnCompleted(awaiter, stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitUnsafeOnCompleted(awaiter, stateMachine)end
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetResult()end
---@param exception System.Exception
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetException(exception)end
---@class System.Runtime.CompilerServices.AsyncTaskMethodBuilder : System.ValueType
---@field public Task any @  getter
System.Runtime.CompilerServices.AsyncTaskMethodBuilder = {}
---@type System.Runtime.CompilerServices.AsyncTaskMethodBuilder
CS.System.Runtime.CompilerServices.AsyncTaskMethodBuilder = System.Runtime.CompilerServices.AsyncTaskMethodBuilder

---@return System.Runtime.CompilerServices.AsyncTaskMethodBuilder
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder.Create()end
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:Start(stateMachine)end
---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetStateMachine(stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitOnCompleted(awaiter, stateMachine)end
---@param awaiter any
---@param stateMachine any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitUnsafeOnCompleted(awaiter, stateMachine)end
---@param result any
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetResult(result)end
---@param exception System.Exception
---@return System.Void
function System.Runtime.CompilerServices.AsyncTaskMethodBuilder:SetException(exception)end
---@class System.Runtime.CompilerServices.AsyncStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute
System.Runtime.CompilerServices.AsyncStateMachineAttribute = {}
---@type System.Runtime.CompilerServices.AsyncStateMachineAttribute
CS.System.Runtime.CompilerServices.AsyncStateMachineAttribute = System.Runtime.CompilerServices.AsyncStateMachineAttribute

---@class System.Runtime.CompilerServices.CallerFilePathAttribute : System.Attribute
System.Runtime.CompilerServices.CallerFilePathAttribute = {}
---@type System.Runtime.CompilerServices.CallerFilePathAttribute
CS.System.Runtime.CompilerServices.CallerFilePathAttribute = System.Runtime.CompilerServices.CallerFilePathAttribute

---@class System.Runtime.CompilerServices.CallerLineNumberAttribute : System.Attribute
System.Runtime.CompilerServices.CallerLineNumberAttribute = {}
---@type System.Runtime.CompilerServices.CallerLineNumberAttribute
CS.System.Runtime.CompilerServices.CallerLineNumberAttribute = System.Runtime.CompilerServices.CallerLineNumberAttribute

---@class System.Runtime.CompilerServices.CallerMemberNameAttribute : System.Attribute
System.Runtime.CompilerServices.CallerMemberNameAttribute = {}
---@type System.Runtime.CompilerServices.CallerMemberNameAttribute
CS.System.Runtime.CompilerServices.CallerMemberNameAttribute = System.Runtime.CompilerServices.CallerMemberNameAttribute

---@class System.Runtime.CompilerServices.FormattableStringFactory : System.Object
System.Runtime.CompilerServices.FormattableStringFactory = {}
---@type System.Runtime.CompilerServices.FormattableStringFactory
CS.System.Runtime.CompilerServices.FormattableStringFactory = System.Runtime.CompilerServices.FormattableStringFactory

---@param format System.String
---@param arguments System.Object[]
---@return System.FormattableString
function System.Runtime.CompilerServices.FormattableStringFactory.Create(format, arguments)end
---@class System.Runtime.CompilerServices.IteratorStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute
System.Runtime.CompilerServices.IteratorStateMachineAttribute = {}
---@type System.Runtime.CompilerServices.IteratorStateMachineAttribute
CS.System.Runtime.CompilerServices.IteratorStateMachineAttribute = System.Runtime.CompilerServices.IteratorStateMachineAttribute

---@class System.Runtime.CompilerServices.ReferenceAssemblyAttribute : System.Attribute
---@field public Description System.String @  getter
System.Runtime.CompilerServices.ReferenceAssemblyAttribute = {}
---@type System.Runtime.CompilerServices.ReferenceAssemblyAttribute
CS.System.Runtime.CompilerServices.ReferenceAssemblyAttribute = System.Runtime.CompilerServices.ReferenceAssemblyAttribute

---@class System.Runtime.CompilerServices.RuntimeCompatibilityAttribute : System.Attribute
---@field public WrapNonExceptionThrows System.Boolean @ setter getter
System.Runtime.CompilerServices.RuntimeCompatibilityAttribute = {}
---@type System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
CS.System.Runtime.CompilerServices.RuntimeCompatibilityAttribute = System.Runtime.CompilerServices.RuntimeCompatibilityAttribute

---@class System.Runtime.CompilerServices.RuntimeWrappedException : System.Exception
---@field public WrappedException System.Object @  getter
System.Runtime.CompilerServices.RuntimeWrappedException = {}
---@type System.Runtime.CompilerServices.RuntimeWrappedException
CS.System.Runtime.CompilerServices.RuntimeWrappedException = System.Runtime.CompilerServices.RuntimeWrappedException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.CompilerServices.RuntimeWrappedException:GetObjectData(info, context)end
---@class System.Runtime.CompilerServices.StateMachineAttribute : System.Attribute
---@field public StateMachineType System.Type @ setter getter
System.Runtime.CompilerServices.StateMachineAttribute = {}
---@type System.Runtime.CompilerServices.StateMachineAttribute
CS.System.Runtime.CompilerServices.StateMachineAttribute = System.Runtime.CompilerServices.StateMachineAttribute

---@class System.Runtime.CompilerServices.TaskAwaiter : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.TaskAwaiter = {}
---@type System.Runtime.CompilerServices.TaskAwaiter
CS.System.Runtime.CompilerServices.TaskAwaiter = System.Runtime.CompilerServices.TaskAwaiter

---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.TaskAwaiter:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.TaskAwaiter:UnsafeOnCompleted(continuation)end
---@return System.Void
function System.Runtime.CompilerServices.TaskAwaiter:GetResult()end
---@class System.Runtime.CompilerServices.TaskAwaiter : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.TaskAwaiter = {}
---@type System.Runtime.CompilerServices.TaskAwaiter
CS.System.Runtime.CompilerServices.TaskAwaiter = System.Runtime.CompilerServices.TaskAwaiter

---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.TaskAwaiter:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.TaskAwaiter:UnsafeOnCompleted(continuation)end
---@return any
function System.Runtime.CompilerServices.TaskAwaiter:GetResult()end
---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable : System.ValueType
System.Runtime.CompilerServices.ConfiguredTaskAwaitable = {}
---@type System.Runtime.CompilerServices.ConfiguredTaskAwaitable
CS.System.Runtime.CompilerServices.ConfiguredTaskAwaitable = System.Runtime.CompilerServices.ConfiguredTaskAwaitable

---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable:GetAwaiter()end
---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter = {}
---@type System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter
CS.System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter = System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter

---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter:UnsafeOnCompleted(continuation)end
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter:GetResult()end
---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable : System.ValueType
System.Runtime.CompilerServices.ConfiguredTaskAwaitable = {}
---@type System.Runtime.CompilerServices.ConfiguredTaskAwaitable
CS.System.Runtime.CompilerServices.ConfiguredTaskAwaitable = System.Runtime.CompilerServices.ConfiguredTaskAwaitable

---@return any
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable:GetAwaiter()end
---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.ConfiguredTaskAwaitable = {}
---@type System.Runtime.CompilerServices.ConfiguredTaskAwaitable
CS.System.Runtime.CompilerServices.ConfiguredTaskAwaitable = System.Runtime.CompilerServices.ConfiguredTaskAwaitable

---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable:UnsafeOnCompleted(continuation)end
---@return any
function System.Runtime.CompilerServices.ConfiguredTaskAwaitable:GetResult()end
---@class System.Runtime.CompilerServices.TypeForwardedFromAttribute : System.Attribute
---@field public AssemblyFullName System.String @  getter
System.Runtime.CompilerServices.TypeForwardedFromAttribute = {}
---@type System.Runtime.CompilerServices.TypeForwardedFromAttribute
CS.System.Runtime.CompilerServices.TypeForwardedFromAttribute = System.Runtime.CompilerServices.TypeForwardedFromAttribute

---@class System.Runtime.CompilerServices.TypeForwardedToAttribute : System.Attribute
---@field public Destination System.Type @  getter
System.Runtime.CompilerServices.TypeForwardedToAttribute = {}
---@type System.Runtime.CompilerServices.TypeForwardedToAttribute
CS.System.Runtime.CompilerServices.TypeForwardedToAttribute = System.Runtime.CompilerServices.TypeForwardedToAttribute

---@class System.Runtime.CompilerServices.YieldAwaitable : System.ValueType
System.Runtime.CompilerServices.YieldAwaitable = {}
---@type System.Runtime.CompilerServices.YieldAwaitable
CS.System.Runtime.CompilerServices.YieldAwaitable = System.Runtime.CompilerServices.YieldAwaitable

---@return System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter
function System.Runtime.CompilerServices.YieldAwaitable:GetAwaiter()end
---@class System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter : System.ValueType
---@field public IsCompleted System.Boolean @  getter
System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter = {}
---@type System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter
CS.System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter = System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter

---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter:OnCompleted(continuation)end
---@param continuation System.Action
---@return System.Void
function System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter:UnsafeOnCompleted(continuation)end
---@return System.Void
function System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter:GetResult()end
---@class System.Runtime.CompilerServices.AccessedThroughPropertyAttribute : System.Attribute
---@field public PropertyName System.String @  getter
System.Runtime.CompilerServices.AccessedThroughPropertyAttribute = {}
---@type System.Runtime.CompilerServices.AccessedThroughPropertyAttribute
CS.System.Runtime.CompilerServices.AccessedThroughPropertyAttribute = System.Runtime.CompilerServices.AccessedThroughPropertyAttribute

---@class System.Runtime.CompilerServices.LoadHint : System.Enum
System.Runtime.CompilerServices.LoadHint = {}
---@type System.Runtime.CompilerServices.LoadHint
CS.System.Runtime.CompilerServices.LoadHint = System.Runtime.CompilerServices.LoadHint

---@return System.Int32 value:0
System.Runtime.CompilerServices.LoadHint.Default = 0
---@return System.Int32 value:1
System.Runtime.CompilerServices.LoadHint.Always = 1
---@return System.Int32 value:2
System.Runtime.CompilerServices.LoadHint.Sometimes = 2

---@class System.Runtime.CompilerServices.DefaultDependencyAttribute : System.Attribute
---@field public LoadHint System.Runtime.CompilerServices.LoadHint @  getter
System.Runtime.CompilerServices.DefaultDependencyAttribute = {}
---@type System.Runtime.CompilerServices.DefaultDependencyAttribute
CS.System.Runtime.CompilerServices.DefaultDependencyAttribute = System.Runtime.CompilerServices.DefaultDependencyAttribute

---@class System.Runtime.CompilerServices.DependencyAttribute : System.Attribute
---@field public DependentAssembly System.String @  getter
---@field public LoadHint System.Runtime.CompilerServices.LoadHint @  getter
System.Runtime.CompilerServices.DependencyAttribute = {}
---@type System.Runtime.CompilerServices.DependencyAttribute
CS.System.Runtime.CompilerServices.DependencyAttribute = System.Runtime.CompilerServices.DependencyAttribute

---@class System.Runtime.CompilerServices.CallConvCdecl : System.Object
System.Runtime.CompilerServices.CallConvCdecl = {}
---@type System.Runtime.CompilerServices.CallConvCdecl
CS.System.Runtime.CompilerServices.CallConvCdecl = System.Runtime.CompilerServices.CallConvCdecl

---@class System.Runtime.CompilerServices.CallConvStdcall : System.Object
System.Runtime.CompilerServices.CallConvStdcall = {}
---@type System.Runtime.CompilerServices.CallConvStdcall
CS.System.Runtime.CompilerServices.CallConvStdcall = System.Runtime.CompilerServices.CallConvStdcall

---@class System.Runtime.CompilerServices.CallConvThiscall : System.Object
System.Runtime.CompilerServices.CallConvThiscall = {}
---@type System.Runtime.CompilerServices.CallConvThiscall
CS.System.Runtime.CompilerServices.CallConvThiscall = System.Runtime.CompilerServices.CallConvThiscall

---@class System.Runtime.CompilerServices.CallConvFastcall : System.Object
System.Runtime.CompilerServices.CallConvFastcall = {}
---@type System.Runtime.CompilerServices.CallConvFastcall
CS.System.Runtime.CompilerServices.CallConvFastcall = System.Runtime.CompilerServices.CallConvFastcall

---@class System.Runtime.CompilerServices.CompilationRelaxations : System.Enum
System.Runtime.CompilerServices.CompilationRelaxations = {}
---@type System.Runtime.CompilerServices.CompilationRelaxations
CS.System.Runtime.CompilerServices.CompilationRelaxations = System.Runtime.CompilerServices.CompilationRelaxations


---@class System.Runtime.CompilerServices.CompilationRelaxationsAttribute : System.Attribute
---@field public CompilationRelaxations System.Int32 @  getter
System.Runtime.CompilerServices.CompilationRelaxationsAttribute = {}
---@type System.Runtime.CompilerServices.CompilationRelaxationsAttribute
CS.System.Runtime.CompilerServices.CompilationRelaxationsAttribute = System.Runtime.CompilerServices.CompilationRelaxationsAttribute

---@class System.Runtime.CompilerServices.CompilerGeneratedAttribute : System.Attribute
System.Runtime.CompilerServices.CompilerGeneratedAttribute = {}
---@type System.Runtime.CompilerServices.CompilerGeneratedAttribute
CS.System.Runtime.CompilerServices.CompilerGeneratedAttribute = System.Runtime.CompilerServices.CompilerGeneratedAttribute

---@class System.Runtime.CompilerServices.CompilerGlobalScopeAttribute : System.Attribute
System.Runtime.CompilerServices.CompilerGlobalScopeAttribute = {}
---@type System.Runtime.CompilerServices.CompilerGlobalScopeAttribute
CS.System.Runtime.CompilerServices.CompilerGlobalScopeAttribute = System.Runtime.CompilerServices.CompilerGlobalScopeAttribute

---@class System.Runtime.CompilerServices.CompilerMarshalOverride : System.Object
System.Runtime.CompilerServices.CompilerMarshalOverride = {}
---@type System.Runtime.CompilerServices.CompilerMarshalOverride
CS.System.Runtime.CompilerServices.CompilerMarshalOverride = System.Runtime.CompilerServices.CompilerMarshalOverride

---@class System.Runtime.CompilerServices.CustomConstantAttribute : System.Attribute
---@field public Value System.Object @  getter
System.Runtime.CompilerServices.CustomConstantAttribute = {}
---@type System.Runtime.CompilerServices.CustomConstantAttribute
CS.System.Runtime.CompilerServices.CustomConstantAttribute = System.Runtime.CompilerServices.CustomConstantAttribute

---@class System.Runtime.CompilerServices.DateTimeConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute
---@field public Value System.Object @  getter
System.Runtime.CompilerServices.DateTimeConstantAttribute = {}
---@type System.Runtime.CompilerServices.DateTimeConstantAttribute
CS.System.Runtime.CompilerServices.DateTimeConstantAttribute = System.Runtime.CompilerServices.DateTimeConstantAttribute

---@class System.Runtime.CompilerServices.DecimalConstantAttribute : System.Attribute
---@field public Value System.Decimal @  getter
System.Runtime.CompilerServices.DecimalConstantAttribute = {}
---@type System.Runtime.CompilerServices.DecimalConstantAttribute
CS.System.Runtime.CompilerServices.DecimalConstantAttribute = System.Runtime.CompilerServices.DecimalConstantAttribute

---@class System.Runtime.CompilerServices.DisablePrivateReflectionAttribute : System.Attribute
System.Runtime.CompilerServices.DisablePrivateReflectionAttribute = {}
---@type System.Runtime.CompilerServices.DisablePrivateReflectionAttribute
CS.System.Runtime.CompilerServices.DisablePrivateReflectionAttribute = System.Runtime.CompilerServices.DisablePrivateReflectionAttribute

---@class System.Runtime.CompilerServices.DiscardableAttribute : System.Attribute
System.Runtime.CompilerServices.DiscardableAttribute = {}
---@type System.Runtime.CompilerServices.DiscardableAttribute
CS.System.Runtime.CompilerServices.DiscardableAttribute = System.Runtime.CompilerServices.DiscardableAttribute

---@class System.Runtime.CompilerServices.ExtensionAttribute : System.Attribute
System.Runtime.CompilerServices.ExtensionAttribute = {}
---@type System.Runtime.CompilerServices.ExtensionAttribute
CS.System.Runtime.CompilerServices.ExtensionAttribute = System.Runtime.CompilerServices.ExtensionAttribute

---@class System.Runtime.CompilerServices.FixedAddressValueTypeAttribute : System.Attribute
System.Runtime.CompilerServices.FixedAddressValueTypeAttribute = {}
---@type System.Runtime.CompilerServices.FixedAddressValueTypeAttribute
CS.System.Runtime.CompilerServices.FixedAddressValueTypeAttribute = System.Runtime.CompilerServices.FixedAddressValueTypeAttribute

---@class System.Runtime.CompilerServices.FixedBufferAttribute : System.Attribute
---@field public ElementType System.Type @  getter
---@field public Length System.Int32 @  getter
System.Runtime.CompilerServices.FixedBufferAttribute = {}
---@type System.Runtime.CompilerServices.FixedBufferAttribute
CS.System.Runtime.CompilerServices.FixedBufferAttribute = System.Runtime.CompilerServices.FixedBufferAttribute

---@class System.Runtime.CompilerServices.HasCopySemanticsAttribute : System.Attribute
System.Runtime.CompilerServices.HasCopySemanticsAttribute = {}
---@type System.Runtime.CompilerServices.HasCopySemanticsAttribute
CS.System.Runtime.CompilerServices.HasCopySemanticsAttribute = System.Runtime.CompilerServices.HasCopySemanticsAttribute

---@class System.Runtime.CompilerServices.IDispatchConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute
---@field public Value System.Object @  getter
System.Runtime.CompilerServices.IDispatchConstantAttribute = {}
---@type System.Runtime.CompilerServices.IDispatchConstantAttribute
CS.System.Runtime.CompilerServices.IDispatchConstantAttribute = System.Runtime.CompilerServices.IDispatchConstantAttribute

---@class System.Runtime.CompilerServices.IndexerNameAttribute : System.Attribute
System.Runtime.CompilerServices.IndexerNameAttribute = {}
---@type System.Runtime.CompilerServices.IndexerNameAttribute
CS.System.Runtime.CompilerServices.IndexerNameAttribute = System.Runtime.CompilerServices.IndexerNameAttribute

---@class System.Runtime.CompilerServices.InternalsVisibleToAttribute : System.Attribute
---@field public AssemblyName System.String @  getter
---@field public AllInternalsVisible System.Boolean @ setter getter
System.Runtime.CompilerServices.InternalsVisibleToAttribute = {}
---@type System.Runtime.CompilerServices.InternalsVisibleToAttribute
CS.System.Runtime.CompilerServices.InternalsVisibleToAttribute = System.Runtime.CompilerServices.InternalsVisibleToAttribute

---@class System.Runtime.CompilerServices.IsBoxed : System.Object
System.Runtime.CompilerServices.IsBoxed = {}
---@type System.Runtime.CompilerServices.IsBoxed
CS.System.Runtime.CompilerServices.IsBoxed = System.Runtime.CompilerServices.IsBoxed

---@class System.Runtime.CompilerServices.IsByValue : System.Object
System.Runtime.CompilerServices.IsByValue = {}
---@type System.Runtime.CompilerServices.IsByValue
CS.System.Runtime.CompilerServices.IsByValue = System.Runtime.CompilerServices.IsByValue

---@class System.Runtime.CompilerServices.IsConst : System.Object
System.Runtime.CompilerServices.IsConst = {}
---@type System.Runtime.CompilerServices.IsConst
CS.System.Runtime.CompilerServices.IsConst = System.Runtime.CompilerServices.IsConst

---@class System.Runtime.CompilerServices.IsCopyConstructed : System.Object
System.Runtime.CompilerServices.IsCopyConstructed = {}
---@type System.Runtime.CompilerServices.IsCopyConstructed
CS.System.Runtime.CompilerServices.IsCopyConstructed = System.Runtime.CompilerServices.IsCopyConstructed

---@class System.Runtime.CompilerServices.IsExplicitlyDereferenced : System.Object
System.Runtime.CompilerServices.IsExplicitlyDereferenced = {}
---@type System.Runtime.CompilerServices.IsExplicitlyDereferenced
CS.System.Runtime.CompilerServices.IsExplicitlyDereferenced = System.Runtime.CompilerServices.IsExplicitlyDereferenced

---@class System.Runtime.CompilerServices.IsImplicitlyDereferenced : System.Object
System.Runtime.CompilerServices.IsImplicitlyDereferenced = {}
---@type System.Runtime.CompilerServices.IsImplicitlyDereferenced
CS.System.Runtime.CompilerServices.IsImplicitlyDereferenced = System.Runtime.CompilerServices.IsImplicitlyDereferenced

---@class System.Runtime.CompilerServices.IsJitIntrinsic : System.Object
System.Runtime.CompilerServices.IsJitIntrinsic = {}
---@type System.Runtime.CompilerServices.IsJitIntrinsic
CS.System.Runtime.CompilerServices.IsJitIntrinsic = System.Runtime.CompilerServices.IsJitIntrinsic

---@class System.Runtime.CompilerServices.IsLong : System.Object
System.Runtime.CompilerServices.IsLong = {}
---@type System.Runtime.CompilerServices.IsLong
CS.System.Runtime.CompilerServices.IsLong = System.Runtime.CompilerServices.IsLong

---@class System.Runtime.CompilerServices.IsPinned : System.Object
System.Runtime.CompilerServices.IsPinned = {}
---@type System.Runtime.CompilerServices.IsPinned
CS.System.Runtime.CompilerServices.IsPinned = System.Runtime.CompilerServices.IsPinned

---@class System.Runtime.CompilerServices.IsSignUnspecifiedByte : System.Object
System.Runtime.CompilerServices.IsSignUnspecifiedByte = {}
---@type System.Runtime.CompilerServices.IsSignUnspecifiedByte
CS.System.Runtime.CompilerServices.IsSignUnspecifiedByte = System.Runtime.CompilerServices.IsSignUnspecifiedByte

---@class System.Runtime.CompilerServices.IsUdtReturn : System.Object
System.Runtime.CompilerServices.IsUdtReturn = {}
---@type System.Runtime.CompilerServices.IsUdtReturn
CS.System.Runtime.CompilerServices.IsUdtReturn = System.Runtime.CompilerServices.IsUdtReturn

---@class System.Runtime.CompilerServices.IsVolatile : System.Object
System.Runtime.CompilerServices.IsVolatile = {}
---@type System.Runtime.CompilerServices.IsVolatile
CS.System.Runtime.CompilerServices.IsVolatile = System.Runtime.CompilerServices.IsVolatile

---@class System.Runtime.CompilerServices.IUnknownConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute
---@field public Value System.Object @  getter
System.Runtime.CompilerServices.IUnknownConstantAttribute = {}
---@type System.Runtime.CompilerServices.IUnknownConstantAttribute
CS.System.Runtime.CompilerServices.IUnknownConstantAttribute = System.Runtime.CompilerServices.IUnknownConstantAttribute

---@class System.Runtime.CompilerServices.MethodImplOptions : System.Enum
System.Runtime.CompilerServices.MethodImplOptions = {}
---@type System.Runtime.CompilerServices.MethodImplOptions
CS.System.Runtime.CompilerServices.MethodImplOptions = System.Runtime.CompilerServices.MethodImplOptions

---@return System.Int32 value:4
System.Runtime.CompilerServices.MethodImplOptions.Unmanaged = 4

---@class System.Runtime.CompilerServices.MethodCodeType : System.Enum
System.Runtime.CompilerServices.MethodCodeType = {}
---@type System.Runtime.CompilerServices.MethodCodeType
CS.System.Runtime.CompilerServices.MethodCodeType = System.Runtime.CompilerServices.MethodCodeType

---@return System.Int32 value:0
System.Runtime.CompilerServices.MethodCodeType.IL = 0
---@return System.Int32 value:1
System.Runtime.CompilerServices.MethodCodeType.Native = 1
---@return System.Int32 value:2
System.Runtime.CompilerServices.MethodCodeType.OPTIL = 2
---@return System.Int32 value:3
System.Runtime.CompilerServices.MethodCodeType.Runtime = 3

---@class System.Runtime.CompilerServices.MethodImplAttribute : System.Attribute
---@field public Value System.Runtime.CompilerServices.MethodImplOptions @  getter
---@field public MethodCodeType System.Runtime.CompilerServices.MethodCodeType
System.Runtime.CompilerServices.MethodImplAttribute = {}
---@type System.Runtime.CompilerServices.MethodImplAttribute
CS.System.Runtime.CompilerServices.MethodImplAttribute = System.Runtime.CompilerServices.MethodImplAttribute

---@class System.Runtime.CompilerServices.NativeCppClassAttribute : System.Attribute
System.Runtime.CompilerServices.NativeCppClassAttribute = {}
---@type System.Runtime.CompilerServices.NativeCppClassAttribute
CS.System.Runtime.CompilerServices.NativeCppClassAttribute = System.Runtime.CompilerServices.NativeCppClassAttribute

---@class System.Runtime.CompilerServices.RequiredAttributeAttribute : System.Attribute
---@field public RequiredContract System.Type @  getter
System.Runtime.CompilerServices.RequiredAttributeAttribute = {}
---@type System.Runtime.CompilerServices.RequiredAttributeAttribute
CS.System.Runtime.CompilerServices.RequiredAttributeAttribute = System.Runtime.CompilerServices.RequiredAttributeAttribute

---@class System.Runtime.CompilerServices.ScopelessEnumAttribute : System.Attribute
System.Runtime.CompilerServices.ScopelessEnumAttribute = {}
---@type System.Runtime.CompilerServices.ScopelessEnumAttribute
CS.System.Runtime.CompilerServices.ScopelessEnumAttribute = System.Runtime.CompilerServices.ScopelessEnumAttribute

---@class System.Runtime.CompilerServices.SpecialNameAttribute : System.Attribute
System.Runtime.CompilerServices.SpecialNameAttribute = {}
---@type System.Runtime.CompilerServices.SpecialNameAttribute
CS.System.Runtime.CompilerServices.SpecialNameAttribute = System.Runtime.CompilerServices.SpecialNameAttribute

---@class System.Runtime.CompilerServices.SuppressIldasmAttribute : System.Attribute
System.Runtime.CompilerServices.SuppressIldasmAttribute = {}
---@type System.Runtime.CompilerServices.SuppressIldasmAttribute
CS.System.Runtime.CompilerServices.SuppressIldasmAttribute = System.Runtime.CompilerServices.SuppressIldasmAttribute

---@class System.Runtime.CompilerServices.UnsafeValueTypeAttribute : System.Attribute
System.Runtime.CompilerServices.UnsafeValueTypeAttribute = {}
---@type System.Runtime.CompilerServices.UnsafeValueTypeAttribute
CS.System.Runtime.CompilerServices.UnsafeValueTypeAttribute = System.Runtime.CompilerServices.UnsafeValueTypeAttribute

---@class System.Runtime.CompilerServices.StringFreezingAttribute : System.Attribute
System.Runtime.CompilerServices.StringFreezingAttribute = {}
---@type System.Runtime.CompilerServices.StringFreezingAttribute
CS.System.Runtime.CompilerServices.StringFreezingAttribute = System.Runtime.CompilerServices.StringFreezingAttribute

---@class System.Runtime.CompilerServices.ConditionalWeakTable : System.Object
System.Runtime.CompilerServices.ConditionalWeakTable = {}
---@type System.Runtime.CompilerServices.ConditionalWeakTable
CS.System.Runtime.CompilerServices.ConditionalWeakTable = System.Runtime.CompilerServices.ConditionalWeakTable

---@param key any
---@param value any
---@return System.Void
function System.Runtime.CompilerServices.ConditionalWeakTable:Add(key, value)end
---@param key any
---@return System.Boolean
function System.Runtime.CompilerServices.ConditionalWeakTable:Remove(key)end
---@param key any
---@param value any
---@return System.Boolean
function System.Runtime.CompilerServices.ConditionalWeakTable:TryGetValue(key, value)end
---@param key any
---@return any
function System.Runtime.CompilerServices.ConditionalWeakTable:GetOrCreateValue(key)end
---@param key any
---@param createValueCallback any
---@return any
function System.Runtime.CompilerServices.ConditionalWeakTable:GetValue(key, createValueCallback)end
---@class System.Runtime.CompilerServices.RuntimeHelpers : System.Object
---@field public OffsetToStringData System.Int32 @static  getter
System.Runtime.CompilerServices.RuntimeHelpers = {}
---@type System.Runtime.CompilerServices.RuntimeHelpers
CS.System.Runtime.CompilerServices.RuntimeHelpers = System.Runtime.CompilerServices.RuntimeHelpers

---@param array System.Array
---@param fldHandle System.RuntimeFieldHandle
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.InitializeArray(array, fldHandle)end
---@param o System.Object
---@return System.Int32
function System.Runtime.CompilerServices.RuntimeHelpers.GetHashCode(o)end
---@param o1 System.Object
---@param o2 System.Object
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeHelpers.Equals(o1, o2)end
---@param obj System.Object
---@return System.Object
function System.Runtime.CompilerServices.RuntimeHelpers.GetObjectValue(obj)end
---@param type System.RuntimeTypeHandle
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.RunClassConstructor(type)end
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.EnsureSufficientExecutionStack()end
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeHelpers.TryEnsureSufficientExecutionStack()end
---@param code System.Runtime.CompilerServices.RuntimeHelpers.TryCode
---@param backoutCode System.Runtime.CompilerServices.RuntimeHelpers.CleanupCode
---@param userData System.Object
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.ExecuteCodeWithGuaranteedCleanup(code, backoutCode, userData)end
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.PrepareConstrainedRegions()end
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.PrepareConstrainedRegionsNoOP()end
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.ProbeForSufficientStack()end
---@param d System.Delegate
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.PrepareDelegate(d)end
---@param d System.Delegate
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.PrepareContractedDelegate(d)end
---@overload fun(method:System.RuntimeMethodHandle, instantiation:System.RuntimeTypeHandle[]):System.Void
---@param method System.RuntimeMethodHandle
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.PrepareMethod(method)end
---@param module System.ModuleHandle
---@return System.Void
function System.Runtime.CompilerServices.RuntimeHelpers.RunModuleConstructor(module)end
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeHelpers.IsReferenceOrContainsReferences()end
---@class System.Runtime.CompilerServices.RuntimeOps : System.Object
System.Runtime.CompilerServices.RuntimeOps = {}
---@type System.Runtime.CompilerServices.RuntimeOps
CS.System.Runtime.CompilerServices.RuntimeOps = System.Runtime.CompilerServices.RuntimeOps

---@param expando System.Dynamic.ExpandoObject
---@param indexClass System.Object
---@param index System.Int32
---@param name System.String
---@param ignoreCase System.Boolean
---@param value System.Object
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeOps.ExpandoTryGetValue(expando, indexClass, index, name, ignoreCase, value)end
---@param expando System.Dynamic.ExpandoObject
---@param indexClass System.Object
---@param index System.Int32
---@param value System.Object
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.Object
function System.Runtime.CompilerServices.RuntimeOps.ExpandoTrySetValue(expando, indexClass, index, value, name, ignoreCase)end
---@param expando System.Dynamic.ExpandoObject
---@param indexClass System.Object
---@param index System.Int32
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeOps.ExpandoTryDeleteValue(expando, indexClass, index, name, ignoreCase)end
---@param expando System.Dynamic.ExpandoObject
---@param version System.Object
---@return System.Boolean
function System.Runtime.CompilerServices.RuntimeOps.ExpandoCheckVersion(expando, version)end
---@param expando System.Dynamic.ExpandoObject
---@param oldClass System.Object
---@param newClass System.Object
---@return System.Void
function System.Runtime.CompilerServices.RuntimeOps.ExpandoPromoteClass(expando, oldClass, newClass)end
---@param expression System.Linq.Expressions.Expression
---@param hoistedLocals System.Object
---@param locals System.Object[]
---@return System.Linq.Expressions.Expression
function System.Runtime.CompilerServices.RuntimeOps.Quote(expression, hoistedLocals, locals)end
---@param first System.Runtime.CompilerServices.IRuntimeVariables
---@param second System.Runtime.CompilerServices.IRuntimeVariables
---@param indexes System.Int32[]
---@return System.Runtime.CompilerServices.IRuntimeVariables
function System.Runtime.CompilerServices.RuntimeOps.MergeRuntimeVariables(first, second, indexes)end
---@overload fun(data:System.Object[], indexes:System.Int64[]):System.Runtime.CompilerServices.IRuntimeVariables
---@return System.Runtime.CompilerServices.IRuntimeVariables
function System.Runtime.CompilerServices.RuntimeOps.CreateRuntimeVariables()end
---@class System.Runtime.CompilerServices.CallSite : System.Object
---@field public Binder System.Runtime.CompilerServices.CallSiteBinder @  getter
System.Runtime.CompilerServices.CallSite = {}
---@type System.Runtime.CompilerServices.CallSite
CS.System.Runtime.CompilerServices.CallSite = System.Runtime.CompilerServices.CallSite

---@param delegateType System.Type
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@return System.Runtime.CompilerServices.CallSite
function System.Runtime.CompilerServices.CallSite.Create(delegateType, binder)end
---@class System.Runtime.CompilerServices.CallSite : System.Runtime.CompilerServices.CallSite
---@field public Update any @  getter
---@field public Target any
System.Runtime.CompilerServices.CallSite = {}
---@type System.Runtime.CompilerServices.CallSite
CS.System.Runtime.CompilerServices.CallSite = System.Runtime.CompilerServices.CallSite

---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@return System.Runtime.CompilerServices.CallSite
function System.Runtime.CompilerServices.CallSite.Create(binder)end
---@class System.Runtime.CompilerServices.CallSiteBinder : System.Object
---@field public UpdateLabel System.Linq.Expressions.LabelTarget @static  getter
System.Runtime.CompilerServices.CallSiteBinder = {}
---@type System.Runtime.CompilerServices.CallSiteBinder
CS.System.Runtime.CompilerServices.CallSiteBinder = System.Runtime.CompilerServices.CallSiteBinder

---@param args System.Object[]
---@param parameters System.Collections.ObjectModel.ReadOnlyCollection
---@param returnLabel System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.Expression
function System.Runtime.CompilerServices.CallSiteBinder:Bind(args, parameters, returnLabel)end
---@param site any
---@param args System.Object[]
---@return any
function System.Runtime.CompilerServices.CallSiteBinder:BindDelegate(site, args)end
---@class System.Runtime.CompilerServices.CallSiteHelpers : System.Object
System.Runtime.CompilerServices.CallSiteHelpers = {}
---@type System.Runtime.CompilerServices.CallSiteHelpers
CS.System.Runtime.CompilerServices.CallSiteHelpers = System.Runtime.CompilerServices.CallSiteHelpers

---@param mb System.Reflection.MethodBase
---@return System.Boolean
function System.Runtime.CompilerServices.CallSiteHelpers.IsInternalFrame(mb)end
---@class System.Runtime.CompilerServices.CallSiteOps : System.Object
System.Runtime.CompilerServices.CallSiteOps = {}
---@type System.Runtime.CompilerServices.CallSiteOps
CS.System.Runtime.CompilerServices.CallSiteOps = System.Runtime.CompilerServices.CallSiteOps

---@param site any
---@return any
function System.Runtime.CompilerServices.CallSiteOps.CreateMatchmaker(site)end
---@param site System.Runtime.CompilerServices.CallSite
---@return System.Boolean
function System.Runtime.CompilerServices.CallSiteOps.SetNotMatched(site)end
---@param site System.Runtime.CompilerServices.CallSite
---@return System.Boolean
function System.Runtime.CompilerServices.CallSiteOps.GetMatch(site)end
---@param site System.Runtime.CompilerServices.CallSite
---@return System.Void
function System.Runtime.CompilerServices.CallSiteOps.ClearMatch(site)end
---@param site any
---@param rule any
---@return System.Void
function System.Runtime.CompilerServices.CallSiteOps.AddRule(site, rule)end
---@param this any
---@param matched System.Int32
---@return System.Void
function System.Runtime.CompilerServices.CallSiteOps.UpdateRules(this, matched)end
---@param site any
---@return T[]
function System.Runtime.CompilerServices.CallSiteOps.GetRules(site)end
---@param site any
---@return any
function System.Runtime.CompilerServices.CallSiteOps.GetRuleCache(site)end
---@param cache any
---@param rule any
---@param i System.Int32
---@return System.Void
function System.Runtime.CompilerServices.CallSiteOps.MoveRule(cache, rule, i)end
---@param cache any
---@return T[]
function System.Runtime.CompilerServices.CallSiteOps.GetCachedRules(cache)end
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@param site any
---@param args System.Object[]
---@return any
function System.Runtime.CompilerServices.CallSiteOps.Bind(binder, site, args)end
---@class System.Runtime.CompilerServices.Closure : System.Object
---@field public Constants System.Object[]
---@field public Locals System.Object[]
System.Runtime.CompilerServices.Closure = {}
---@type System.Runtime.CompilerServices.Closure
CS.System.Runtime.CompilerServices.Closure = System.Runtime.CompilerServices.Closure

---@class System.Runtime.CompilerServices.DebugInfoGenerator : System.Object
System.Runtime.CompilerServices.DebugInfoGenerator = {}
---@type System.Runtime.CompilerServices.DebugInfoGenerator
CS.System.Runtime.CompilerServices.DebugInfoGenerator = System.Runtime.CompilerServices.DebugInfoGenerator

---@return System.Runtime.CompilerServices.DebugInfoGenerator
function System.Runtime.CompilerServices.DebugInfoGenerator.CreatePdbGenerator()end
---@param method System.Linq.Expressions.LambdaExpression
---@param ilOffset System.Int32
---@param sequencePoint System.Linq.Expressions.DebugInfoExpression
---@return System.Void
function System.Runtime.CompilerServices.DebugInfoGenerator:MarkSequencePoint(method, ilOffset, sequencePoint)end
---@class System.Runtime.CompilerServices.ReadOnlyCollectionBuilder : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public Item any @ setter getter
System.Runtime.CompilerServices.ReadOnlyCollectionBuilder = {}
---@type System.Runtime.CompilerServices.ReadOnlyCollectionBuilder
CS.System.Runtime.CompilerServices.ReadOnlyCollectionBuilder = System.Runtime.CompilerServices.ReadOnlyCollectionBuilder

---@param item any
---@return System.Int32
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:IndexOf(item)end
---@param index System.Int32
---@param item any
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Insert(index, item)end
---@param index System.Int32
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:RemoveAt(index)end
---@param item any
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Add(item)end
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Clear()end
---@param item any
---@return System.Boolean
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Contains(item)end
---@param array T[]
---@param arrayIndex System.Int32
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:CopyTo(array, arrayIndex)end
---@param item any
---@return System.Boolean
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Remove(item)end
---@return any
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:GetEnumerator()end
---@overload fun(index:System.Int32, count:System.Int32):System.Void
---@return System.Void
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:Reverse()end
---@return T[]
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:ToArray()end
---@return any
function System.Runtime.CompilerServices.ReadOnlyCollectionBuilder:ToReadOnlyCollection()end
---@class System.Runtime.CompilerServices.RuleCache : System.Object
System.Runtime.CompilerServices.RuleCache = {}
---@type System.Runtime.CompilerServices.RuleCache
CS.System.Runtime.CompilerServices.RuleCache = System.Runtime.CompilerServices.RuleCache

---@class System.Runtime.CompilerServices.StrongBox : System.Object
---@field public Value any
System.Runtime.CompilerServices.StrongBox = {}
---@type System.Runtime.CompilerServices.StrongBox
CS.System.Runtime.CompilerServices.StrongBox = System.Runtime.CompilerServices.StrongBox

---@class System.Runtime.CompilerServices.DynamicAttribute : System.Attribute
---@field public TransformFlags System.Collections.Generic.IList @  getter
System.Runtime.CompilerServices.DynamicAttribute = {}
---@type System.Runtime.CompilerServices.DynamicAttribute
CS.System.Runtime.CompilerServices.DynamicAttribute = System.Runtime.CompilerServices.DynamicAttribute

---@class System.Runtime.CompilerServices.ExecutionScope : System.Object
---@field public Parent System.Runtime.CompilerServices.ExecutionScope
---@field public Globals System.Object[]
---@field public Locals System.Object[]
System.Runtime.CompilerServices.ExecutionScope = {}
---@type System.Runtime.CompilerServices.ExecutionScope
CS.System.Runtime.CompilerServices.ExecutionScope = System.Runtime.CompilerServices.ExecutionScope

---@return System.Object[]
function System.Runtime.CompilerServices.ExecutionScope:CreateHoistedLocals()end
---@param indexLambda System.Int32
---@param locals System.Object[]
---@return System.Delegate
function System.Runtime.CompilerServices.ExecutionScope:CreateDelegate(indexLambda, locals)end
---@param expression System.Linq.Expressions.Expression
---@param locals System.Object[]
---@return System.Linq.Expressions.Expression
function System.Runtime.CompilerServices.ExecutionScope:IsolateExpression(expression, locals)end
