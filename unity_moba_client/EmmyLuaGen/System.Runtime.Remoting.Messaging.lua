---@class System.Runtime.Remoting.Messaging.CallContext : System.Object
---@field public HostContext System.Object @static setter getter
System.Runtime.Remoting.Messaging.CallContext = {}
---@type System.Runtime.Remoting.Messaging.CallContext
CS.System.Runtime.Remoting.Messaging.CallContext = System.Runtime.Remoting.Messaging.CallContext

---@param name System.String
---@return System.Void
function System.Runtime.Remoting.Messaging.CallContext.FreeNamedDataSlot(name)end
---@param name System.String
---@return System.Object
function System.Runtime.Remoting.Messaging.CallContext.LogicalGetData(name)end
---@param name System.String
---@return System.Object
function System.Runtime.Remoting.Messaging.CallContext.GetData(name)end
---@param name System.String
---@param data System.Object
---@return System.Void
function System.Runtime.Remoting.Messaging.CallContext.SetData(name, data)end
---@param name System.String
---@param data System.Object
---@return System.Void
function System.Runtime.Remoting.Messaging.CallContext.LogicalSetData(name, data)end
---@return System.Runtime.Remoting.Messaging.Header[]
function System.Runtime.Remoting.Messaging.CallContext.GetHeaders()end
---@param headers System.Runtime.Remoting.Messaging.Header[]
---@return System.Void
function System.Runtime.Remoting.Messaging.CallContext.SetHeaders(headers)end
---@class System.Runtime.Remoting.Messaging.LogicalCallContext : System.Object
---@field public HasInfo System.Boolean @  getter
System.Runtime.Remoting.Messaging.LogicalCallContext = {}
---@type System.Runtime.Remoting.Messaging.LogicalCallContext
CS.System.Runtime.Remoting.Messaging.LogicalCallContext = System.Runtime.Remoting.Messaging.LogicalCallContext

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.LogicalCallContext:GetObjectData(info, context)end
---@return System.Object
function System.Runtime.Remoting.Messaging.LogicalCallContext:Clone()end
---@param name System.String
---@return System.Void
function System.Runtime.Remoting.Messaging.LogicalCallContext:FreeNamedDataSlot(name)end
---@param name System.String
---@return System.Object
function System.Runtime.Remoting.Messaging.LogicalCallContext:GetData(name)end
---@param name System.String
---@param data System.Object
---@return System.Void
function System.Runtime.Remoting.Messaging.LogicalCallContext:SetData(name, data)end
---@class System.Runtime.Remoting.Messaging.AsyncResult : System.Object
---@field public AsyncState System.Object @  getter
---@field public AsyncWaitHandle System.Threading.WaitHandle @  getter
---@field public CompletedSynchronously System.Boolean @  getter
---@field public IsCompleted System.Boolean @  getter
---@field public EndInvokeCalled System.Boolean @ setter getter
---@field public AsyncDelegate System.Object @  getter
---@field public NextSink System.Runtime.Remoting.Messaging.IMessageSink @  getter
System.Runtime.Remoting.Messaging.AsyncResult = {}
---@type System.Runtime.Remoting.Messaging.AsyncResult
CS.System.Runtime.Remoting.Messaging.AsyncResult = System.Runtime.Remoting.Messaging.AsyncResult

---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function System.Runtime.Remoting.Messaging.AsyncResult:AsyncProcessMessage(msg, replySink)end
---@return System.Runtime.Remoting.Messaging.IMessage
function System.Runtime.Remoting.Messaging.AsyncResult:GetReplyMessage()end
---@param mc System.Runtime.Remoting.Messaging.IMessageCtrl
---@return System.Void
function System.Runtime.Remoting.Messaging.AsyncResult:SetMessageCtrl(mc)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function System.Runtime.Remoting.Messaging.AsyncResult:SyncProcessMessage(msg)end
---@class System.Runtime.Remoting.Messaging.ConstructionCall : System.Runtime.Remoting.Messaging.MethodCall
---@field public ActivationType System.Type @  getter
---@field public ActivationTypeName System.String @  getter
---@field public Activator System.Runtime.Remoting.Activation.IActivator @ setter getter
---@field public CallSiteActivationAttributes System.Object[] @  getter
---@field public ContextProperties System.Collections.IList @  getter
---@field public Properties System.Collections.IDictionary @  getter
System.Runtime.Remoting.Messaging.ConstructionCall = {}
---@type System.Runtime.Remoting.Messaging.ConstructionCall
CS.System.Runtime.Remoting.Messaging.ConstructionCall = System.Runtime.Remoting.Messaging.ConstructionCall

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.ConstructionCall:GetObjectData(info, context)end
---@class System.Runtime.Remoting.Messaging.ConstructionResponse : System.Runtime.Remoting.Messaging.MethodResponse
---@field public Properties System.Collections.IDictionary @  getter
System.Runtime.Remoting.Messaging.ConstructionResponse = {}
---@type System.Runtime.Remoting.Messaging.ConstructionResponse
CS.System.Runtime.Remoting.Messaging.ConstructionResponse = System.Runtime.Remoting.Messaging.ConstructionResponse

---@class System.Runtime.Remoting.Messaging.Header : System.Object
---@field public HeaderNamespace System.String
---@field public MustUnderstand System.Boolean
---@field public Name System.String
---@field public Value System.Object
System.Runtime.Remoting.Messaging.Header = {}
---@type System.Runtime.Remoting.Messaging.Header
CS.System.Runtime.Remoting.Messaging.Header = System.Runtime.Remoting.Messaging.Header

---@class System.Runtime.Remoting.Messaging.InternalMessageWrapper : System.Object
System.Runtime.Remoting.Messaging.InternalMessageWrapper = {}
---@type System.Runtime.Remoting.Messaging.InternalMessageWrapper
CS.System.Runtime.Remoting.Messaging.InternalMessageWrapper = System.Runtime.Remoting.Messaging.InternalMessageWrapper

---@class System.Runtime.Remoting.Messaging.MethodCall : System.Object
---@field public ArgCount System.Int32 @  getter
---@field public Args System.Object[] @  getter
---@field public HasVarArgs System.Boolean @  getter
---@field public InArgCount System.Int32 @  getter
---@field public InArgs System.Object[] @  getter
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext @  getter
---@field public MethodBase System.Reflection.MethodBase @  getter
---@field public MethodName System.String @  getter
---@field public MethodSignature System.Object @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public TypeName System.String @  getter
---@field public Uri System.String @ setter getter
System.Runtime.Remoting.Messaging.MethodCall = {}
---@type System.Runtime.Remoting.Messaging.MethodCall
CS.System.Runtime.Remoting.Messaging.MethodCall = System.Runtime.Remoting.Messaging.MethodCall

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodCall:GetObjectData(info, context)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodCall:GetArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodCall:GetArgName(index)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodCall:GetInArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodCall:GetInArgName(index)end
---@param h System.Runtime.Remoting.Messaging.Header[]
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodCall:HeaderHandler(h)end
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodCall:Init()end
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodCall:ResolveMethod()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param ctx System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodCall:RootSetObjectData(info, ctx)end
---@class System.Runtime.Remoting.Messaging.MethodCallMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper
---@field public ArgCount System.Int32 @  getter
---@field public Args System.Object[] @ setter getter
---@field public HasVarArgs System.Boolean @  getter
---@field public InArgCount System.Int32 @  getter
---@field public InArgs System.Object[] @  getter
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext @  getter
---@field public MethodBase System.Reflection.MethodBase @  getter
---@field public MethodName System.String @  getter
---@field public MethodSignature System.Object @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public TypeName System.String @  getter
---@field public Uri System.String @ setter getter
System.Runtime.Remoting.Messaging.MethodCallMessageWrapper = {}
---@type System.Runtime.Remoting.Messaging.MethodCallMessageWrapper
CS.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper = System.Runtime.Remoting.Messaging.MethodCallMessageWrapper

---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodCallMessageWrapper:GetArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodCallMessageWrapper:GetArgName(index)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodCallMessageWrapper:GetInArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodCallMessageWrapper:GetInArgName(index)end
---@class System.Runtime.Remoting.Messaging.MethodResponse : System.Object
---@field public ArgCount System.Int32 @  getter
---@field public Args System.Object[] @  getter
---@field public Exception System.Exception @  getter
---@field public HasVarArgs System.Boolean @  getter
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext @  getter
---@field public MethodBase System.Reflection.MethodBase @  getter
---@field public MethodName System.String @  getter
---@field public MethodSignature System.Object @  getter
---@field public OutArgCount System.Int32 @  getter
---@field public OutArgs System.Object[] @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public ReturnValue System.Object @  getter
---@field public TypeName System.String @  getter
---@field public Uri System.String @ setter getter
System.Runtime.Remoting.Messaging.MethodResponse = {}
---@type System.Runtime.Remoting.Messaging.MethodResponse
CS.System.Runtime.Remoting.Messaging.MethodResponse = System.Runtime.Remoting.Messaging.MethodResponse

---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodResponse:GetArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodResponse:GetArgName(index)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodResponse:GetObjectData(info, context)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodResponse:GetOutArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodResponse:GetOutArgName(index)end
---@param h System.Runtime.Remoting.Messaging.Header[]
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodResponse:HeaderHandler(h)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param ctx System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Messaging.MethodResponse:RootSetObjectData(info, ctx)end
---@class System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper
---@field public ArgCount System.Int32 @  getter
---@field public Args System.Object[] @ setter getter
---@field public Exception System.Exception @ setter getter
---@field public HasVarArgs System.Boolean @  getter
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext @  getter
---@field public MethodBase System.Reflection.MethodBase @  getter
---@field public MethodName System.String @  getter
---@field public MethodSignature System.Object @  getter
---@field public OutArgCount System.Int32 @  getter
---@field public OutArgs System.Object[] @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public ReturnValue System.Object @ setter getter
---@field public TypeName System.String @  getter
---@field public Uri System.String @ setter getter
System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper = {}
---@type System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper
CS.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper = System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper

---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper:GetArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper:GetArgName(index)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper:GetOutArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper:GetOutArgName(index)end
---@class System.Runtime.Remoting.Messaging.OneWayAttribute : System.Attribute
System.Runtime.Remoting.Messaging.OneWayAttribute = {}
---@type System.Runtime.Remoting.Messaging.OneWayAttribute
CS.System.Runtime.Remoting.Messaging.OneWayAttribute = System.Runtime.Remoting.Messaging.OneWayAttribute

---@class System.Runtime.Remoting.Messaging.RemotingSurrogateSelector : System.Object
---@field public Filter System.Runtime.Remoting.Messaging.MessageSurrogateFilter @ setter getter
System.Runtime.Remoting.Messaging.RemotingSurrogateSelector = {}
---@type System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
CS.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector = System.Runtime.Remoting.Messaging.RemotingSurrogateSelector

---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Void
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:ChainSelector(selector)end
---@return System.Runtime.Serialization.ISurrogateSelector
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:GetNextSelector()end
---@return System.Object
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:GetRootObject()end
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param ssout System.Runtime.Serialization.ISurrogateSelector
---@return System.Runtime.Serialization.ISerializationSurrogate
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:GetSurrogate(type, context, ssout)end
---@param obj System.Object
---@return System.Void
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:SetRootObject(obj)end
---@return System.Void
function System.Runtime.Remoting.Messaging.RemotingSurrogateSelector:UseSoapFormat()end
---@class System.Runtime.Remoting.Messaging.ReturnMessage : System.Object
---@field public ArgCount System.Int32 @  getter
---@field public Args System.Object[] @  getter
---@field public HasVarArgs System.Boolean @  getter
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext @  getter
---@field public MethodBase System.Reflection.MethodBase @  getter
---@field public MethodName System.String @  getter
---@field public MethodSignature System.Object @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public TypeName System.String @  getter
---@field public Uri System.String @ setter getter
---@field public Exception System.Exception @  getter
---@field public OutArgCount System.Int32 @  getter
---@field public OutArgs System.Object[] @  getter
---@field public ReturnValue System.Object @  getter
System.Runtime.Remoting.Messaging.ReturnMessage = {}
---@type System.Runtime.Remoting.Messaging.ReturnMessage
CS.System.Runtime.Remoting.Messaging.ReturnMessage = System.Runtime.Remoting.Messaging.ReturnMessage

---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.ReturnMessage:GetArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.ReturnMessage:GetArgName(index)end
---@param argNum System.Int32
---@return System.Object
function System.Runtime.Remoting.Messaging.ReturnMessage:GetOutArg(argNum)end
---@param index System.Int32
---@return System.String
function System.Runtime.Remoting.Messaging.ReturnMessage:GetOutArgName(index)end
