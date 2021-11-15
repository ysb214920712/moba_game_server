---@class System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties : System.Object
---@field public Count System.Int32 @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Object @ setter getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public SyncRoot System.Object @  getter
---@field public Values System.Collections.ICollection @  getter
System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties = {}
---@type System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties
CS.System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties = System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:Add(key, value)end
---@return System.Void
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:Clear()end
---@param key System.Object
---@return System.Boolean
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:Contains(key)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:CopyTo(array, index)end
---@return System.Collections.IDictionaryEnumerator
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:GetEnumerator()end
---@param key System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties:Remove(key)end
---@class System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties
System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties = {}
---@type System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties
CS.System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties = System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties

---@class System.Runtime.Remoting.Channels.BaseChannelWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties
---@field public Properties System.Collections.IDictionary @  getter
System.Runtime.Remoting.Channels.BaseChannelWithProperties = {}
---@type System.Runtime.Remoting.Channels.BaseChannelWithProperties
CS.System.Runtime.Remoting.Channels.BaseChannelWithProperties = System.Runtime.Remoting.Channels.BaseChannelWithProperties

---@class System.Runtime.Remoting.Channels.ChannelDataStore : System.Object
---@field public ChannelUris System.String[] @ setter getter
---@field public Item System.Object @ setter getter
System.Runtime.Remoting.Channels.ChannelDataStore = {}
---@type System.Runtime.Remoting.Channels.ChannelDataStore
CS.System.Runtime.Remoting.Channels.ChannelDataStore = System.Runtime.Remoting.Channels.ChannelDataStore

---@class System.Runtime.Remoting.Channels.ChannelServices : System.Object
---@field public RegisteredChannels System.Runtime.Remoting.Channels.IChannel[] @static  getter
System.Runtime.Remoting.Channels.ChannelServices = {}
---@type System.Runtime.Remoting.Channels.ChannelServices
CS.System.Runtime.Remoting.Channels.ChannelServices = System.Runtime.Remoting.Channels.ChannelServices

---@param provider System.Runtime.Remoting.Channels.IServerChannelSinkProvider
---@param channel System.Runtime.Remoting.Channels.IChannelReceiver
---@return System.Runtime.Remoting.Channels.IServerChannelSink
function System.Runtime.Remoting.Channels.ChannelServices.CreateServerChannelSinkChain(provider, channel)end
---@param sinkStack System.Runtime.Remoting.Channels.IServerChannelSinkStack
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replyMsg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Channels.ServerProcessing
function System.Runtime.Remoting.Channels.ChannelServices.DispatchMessage(sinkStack, msg, replyMsg)end
---@param name System.String
---@return System.Runtime.Remoting.Channels.IChannel
function System.Runtime.Remoting.Channels.ChannelServices.GetChannel(name)end
---@param obj System.Object
---@return System.Collections.IDictionary
function System.Runtime.Remoting.Channels.ChannelServices.GetChannelSinkProperties(obj)end
---@param obj System.MarshalByRefObject
---@return System.String[]
function System.Runtime.Remoting.Channels.ChannelServices.GetUrlsForObject(obj)end
---@overload fun(chnl:System.Runtime.Remoting.Channels.IChannel, ensureSecurity:System.Boolean):System.Void
---@param chnl System.Runtime.Remoting.Channels.IChannel
---@return System.Void
function System.Runtime.Remoting.Channels.ChannelServices.RegisterChannel(chnl)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function System.Runtime.Remoting.Channels.ChannelServices.SyncDispatchMessage(msg)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function System.Runtime.Remoting.Channels.ChannelServices.AsyncDispatchMessage(msg, replySink)end
---@param chnl System.Runtime.Remoting.Channels.IChannel
---@return System.Void
function System.Runtime.Remoting.Channels.ChannelServices.UnregisterChannel(chnl)end
---@class System.Runtime.Remoting.Channels.ClientChannelSinkStack : System.Object
System.Runtime.Remoting.Channels.ClientChannelSinkStack = {}
---@type System.Runtime.Remoting.Channels.ClientChannelSinkStack
CS.System.Runtime.Remoting.Channels.ClientChannelSinkStack = System.Runtime.Remoting.Channels.ClientChannelSinkStack

---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
---@return System.Void
function System.Runtime.Remoting.Channels.ClientChannelSinkStack:AsyncProcessResponse(headers, stream)end
---@param e System.Exception
---@return System.Void
function System.Runtime.Remoting.Channels.ClientChannelSinkStack:DispatchException(e)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Void
function System.Runtime.Remoting.Channels.ClientChannelSinkStack:DispatchReplyMessage(msg)end
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@return System.Object
function System.Runtime.Remoting.Channels.ClientChannelSinkStack:Pop(sink)end
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@param state System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.ClientChannelSinkStack:Push(sink, state)end
---@class System.Runtime.Remoting.Channels.ServerChannelSinkStack : System.Object
System.Runtime.Remoting.Channels.ServerChannelSinkStack = {}
---@type System.Runtime.Remoting.Channels.ServerChannelSinkStack
CS.System.Runtime.Remoting.Channels.ServerChannelSinkStack = System.Runtime.Remoting.Channels.ServerChannelSinkStack

---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@return System.IO.Stream
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:GetResponseStream(msg, headers)end
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@return System.Object
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:Pop(sink)end
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:Push(sink, state)end
---@param ar System.IAsyncResult
---@return System.Void
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:ServerCallback(ar)end
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:Store(sink, state)end
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state System.Object
---@return System.Void
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:StoreAndDispatch(sink, state)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
---@return System.Void
function System.Runtime.Remoting.Channels.ServerChannelSinkStack:AsyncProcessResponse(msg, headers, stream)end
---@class System.Runtime.Remoting.Channels.ServerProcessing : System.Enum
System.Runtime.Remoting.Channels.ServerProcessing = {}
---@type System.Runtime.Remoting.Channels.ServerProcessing
CS.System.Runtime.Remoting.Channels.ServerProcessing = System.Runtime.Remoting.Channels.ServerProcessing

---@return System.Int32 value:0
System.Runtime.Remoting.Channels.ServerProcessing.Complete = 0
---@return System.Int32 value:1
System.Runtime.Remoting.Channels.ServerProcessing.OneWay = 1
---@return System.Int32 value:2
System.Runtime.Remoting.Channels.ServerProcessing.Async = 2

---@class System.Runtime.Remoting.Channels.SinkProviderData : System.Object
---@field public Children System.Collections.IList @  getter
---@field public Name System.String @  getter
---@field public Properties System.Collections.IDictionary @  getter
System.Runtime.Remoting.Channels.SinkProviderData = {}
---@type System.Runtime.Remoting.Channels.SinkProviderData
CS.System.Runtime.Remoting.Channels.SinkProviderData = System.Runtime.Remoting.Channels.SinkProviderData

---@class System.Runtime.Remoting.Channels.TransportHeaders : System.Object
---@field public Item System.Object @ setter getter
System.Runtime.Remoting.Channels.TransportHeaders = {}
---@type System.Runtime.Remoting.Channels.TransportHeaders
CS.System.Runtime.Remoting.Channels.TransportHeaders = System.Runtime.Remoting.Channels.TransportHeaders

---@return System.Collections.IEnumerator
function System.Runtime.Remoting.Channels.TransportHeaders:GetEnumerator()end
