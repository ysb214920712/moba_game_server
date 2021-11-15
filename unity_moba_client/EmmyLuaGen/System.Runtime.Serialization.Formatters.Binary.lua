---@class System.Runtime.Serialization.Formatters.Binary.BinaryFormatter : System.Object
---@field public TypeFormat System.Runtime.Serialization.Formatters.FormatterTypeStyle @ setter getter
---@field public AssemblyFormat System.Runtime.Serialization.Formatters.FormatterAssemblyStyle @ setter getter
---@field public FilterLevel System.Runtime.Serialization.Formatters.TypeFilterLevel @ setter getter
---@field public SurrogateSelector System.Runtime.Serialization.ISurrogateSelector @ setter getter
---@field public Binder System.Runtime.Serialization.SerializationBinder @ setter getter
---@field public Context System.Runtime.Serialization.StreamingContext @ setter getter
System.Runtime.Serialization.Formatters.Binary.BinaryFormatter = {}
---@type System.Runtime.Serialization.Formatters.Binary.BinaryFormatter
CS.System.Runtime.Serialization.Formatters.Binary.BinaryFormatter = System.Runtime.Serialization.Formatters.Binary.BinaryFormatter

---@overload fun(serializationStream:System.IO.Stream, handler:System.Runtime.Remoting.Messaging.HeaderHandler):System.Object
---@param serializationStream System.IO.Stream
---@return System.Object
function System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:Deserialize(serializationStream)end
---@param serializationStream System.IO.Stream
---@param handler System.Runtime.Remoting.Messaging.HeaderHandler
---@param methodCallMessage System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return System.Object
function System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:DeserializeMethodResponse(serializationStream, handler, methodCallMessage)end
---@param serializationStream System.IO.Stream
---@param handler System.Runtime.Remoting.Messaging.HeaderHandler
---@return System.Object
function System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:UnsafeDeserialize(serializationStream, handler)end
---@param serializationStream System.IO.Stream
---@param handler System.Runtime.Remoting.Messaging.HeaderHandler
---@param methodCallMessage System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return System.Object
function System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:UnsafeDeserializeMethodResponse(serializationStream, handler, methodCallMessage)end
---@overload fun(serializationStream:System.IO.Stream, graph:System.Object, headers:System.Runtime.Remoting.Messaging.Header[]):System.Void
---@param serializationStream System.IO.Stream
---@param graph System.Object
---@return System.Void
function System.Runtime.Serialization.Formatters.Binary.BinaryFormatter:Serialize(serializationStream, graph)end
