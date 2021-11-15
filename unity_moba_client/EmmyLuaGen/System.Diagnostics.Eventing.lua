---@class System.Diagnostics.Eventing.EventDescriptor : System.ValueType
---@field public Channel System.Byte @  getter
---@field public EventId System.Int32 @  getter
---@field public Keywords System.Int64 @  getter
---@field public Level System.Byte @  getter
---@field public Opcode System.Byte @  getter
---@field public Task System.Int32 @  getter
---@field public Version System.Byte @  getter
System.Diagnostics.Eventing.EventDescriptor = {}
---@type System.Diagnostics.Eventing.EventDescriptor
CS.System.Diagnostics.Eventing.EventDescriptor = System.Diagnostics.Eventing.EventDescriptor

---@class System.Diagnostics.Eventing.EventProvider : System.Object
System.Diagnostics.Eventing.EventProvider = {}
---@type System.Diagnostics.Eventing.EventProvider
CS.System.Diagnostics.Eventing.EventProvider = System.Diagnostics.Eventing.EventProvider

---@return System.Void
function System.Diagnostics.Eventing.EventProvider:Close()end
---@return System.Guid
function System.Diagnostics.Eventing.EventProvider.CreateActivityId()end
---@return System.Void
function System.Diagnostics.Eventing.EventProvider:Dispose()end
---@return System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode
function System.Diagnostics.Eventing.EventProvider.GetLastWriteEventError()end
---@overload fun(level:System.Byte, keywords:System.Int64):System.Boolean
---@return System.Boolean
function System.Diagnostics.Eventing.EventProvider:IsEnabled()end
---@param id System.Guid
---@return System.Void
function System.Diagnostics.Eventing.EventProvider.SetActivityId(id)end
---@overload fun(eventDescriptor:System.Diagnostics.Eventing.EventDescriptor, data:System.String):System.Boolean
---@param eventDescriptor System.Diagnostics.Eventing.EventDescriptor
---@param eventPayload System.Object[]
---@return System.Boolean
function System.Diagnostics.Eventing.EventProvider:WriteEvent(eventDescriptor, eventPayload)end
---@overload fun(eventMessage:System.String, eventLevel:System.Byte, eventKeywords:System.Int64):System.Boolean
---@param eventMessage System.String
---@return System.Boolean
function System.Diagnostics.Eventing.EventProvider:WriteMessageEvent(eventMessage)end
---@param eventDescriptor System.Diagnostics.Eventing.EventDescriptor
---@param relatedActivityId System.Guid
---@param eventPayload System.Object[]
---@return System.Boolean
function System.Diagnostics.Eventing.EventProvider:WriteTransferEvent(eventDescriptor, relatedActivityId, eventPayload)end
---@class System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode : System.Enum
System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode = {}
---@type System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode
CS.System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode = System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode

---@return System.Int32 value:0
System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode.NoError = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode.NoFreeBuffers = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.EventProvider.WriteEventErrorCode.EventTooBig = 2

---@class System.Diagnostics.Eventing.EventProviderTraceListener : System.Diagnostics.TraceListener
---@field public Delimiter System.String @ setter getter
System.Diagnostics.Eventing.EventProviderTraceListener = {}
---@type System.Diagnostics.Eventing.EventProviderTraceListener
CS.System.Diagnostics.Eventing.EventProviderTraceListener = System.Diagnostics.Eventing.EventProviderTraceListener

---@param message System.String
---@return System.Void
function System.Diagnostics.Eventing.EventProviderTraceListener:Write(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.Eventing.EventProviderTraceListener:WriteLine(message)end
