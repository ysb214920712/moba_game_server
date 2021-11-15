---@class System.Net.WebSockets.HttpListenerWebSocketContext : System.Net.WebSockets.WebSocketContext
---@field public RequestUri System.Uri @  getter
---@field public Headers System.Collections.Specialized.NameValueCollection @  getter
---@field public Origin System.String @  getter
---@field public SecWebSocketProtocols System.Collections.Generic.IEnumerable @  getter
---@field public SecWebSocketVersion System.String @  getter
---@field public SecWebSocketKey System.String @  getter
---@field public CookieCollection System.Net.CookieCollection @  getter
---@field public User System.Security.Principal.IPrincipal @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsLocal System.Boolean @  getter
---@field public IsSecureConnection System.Boolean @  getter
---@field public WebSocket System.Net.WebSockets.WebSocket @  getter
System.Net.WebSockets.HttpListenerWebSocketContext = {}
---@type System.Net.WebSockets.HttpListenerWebSocketContext
CS.System.Net.WebSockets.HttpListenerWebSocketContext = System.Net.WebSockets.HttpListenerWebSocketContext

---@class System.Net.WebSockets.ClientWebSocket : System.Net.WebSockets.WebSocket
---@field public Options System.Net.WebSockets.ClientWebSocketOptions @  getter
---@field public CloseStatus System.Nullable @  getter
---@field public CloseStatusDescription System.String @  getter
---@field public SubProtocol System.String @  getter
---@field public State System.Net.WebSockets.WebSocketState @  getter
System.Net.WebSockets.ClientWebSocket = {}
---@type System.Net.WebSockets.ClientWebSocket
CS.System.Net.WebSockets.ClientWebSocket = System.Net.WebSockets.ClientWebSocket

---@param uri System.Uri
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:ConnectAsync(uri, cancellationToken)end
---@param buffer System.ArraySegment
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage System.Boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:SendAsync(buffer, messageType, endOfMessage, cancellationToken)end
---@param buffer System.ArraySegment
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:ReceiveAsync(buffer, cancellationToken)end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription System.String
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:CloseAsync(closeStatus, statusDescription, cancellationToken)end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription System.String
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:CloseOutputAsync(closeStatus, statusDescription, cancellationToken)end
---@return System.Void
function System.Net.WebSockets.ClientWebSocket:Abort()end
---@return System.Void
function System.Net.WebSockets.ClientWebSocket:Dispose()end
---@class System.Net.WebSockets.ClientWebSocketOptions : System.Object
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection @ setter getter
---@field public Cookies System.Net.CookieContainer @ setter getter
---@field public KeepAliveInterval System.TimeSpan @ setter getter
System.Net.WebSockets.ClientWebSocketOptions = {}
---@type System.Net.WebSockets.ClientWebSocketOptions
CS.System.Net.WebSockets.ClientWebSocketOptions = System.Net.WebSockets.ClientWebSocketOptions

---@param headerName System.String
---@param headerValue System.String
---@return System.Void
function System.Net.WebSockets.ClientWebSocketOptions:SetRequestHeader(headerName, headerValue)end
---@param subProtocol System.String
---@return System.Void
function System.Net.WebSockets.ClientWebSocketOptions:AddSubProtocol(subProtocol)end
---@overload fun(receiveBufferSize:System.Int32, sendBufferSize:System.Int32, buffer:System.ArraySegment):System.Void
---@param receiveBufferSize System.Int32
---@param sendBufferSize System.Int32
---@return System.Void
function System.Net.WebSockets.ClientWebSocketOptions:SetBuffer(receiveBufferSize, sendBufferSize)end
---@class System.Net.WebSockets.WebSocket : System.Object
---@field public CloseStatus System.Nullable @  getter
---@field public CloseStatusDescription System.String @  getter
---@field public SubProtocol System.String @  getter
---@field public State System.Net.WebSockets.WebSocketState @  getter
---@field public DefaultKeepAliveInterval System.TimeSpan @static  getter
System.Net.WebSockets.WebSocket = {}
---@type System.Net.WebSockets.WebSocket
CS.System.Net.WebSockets.WebSocket = System.Net.WebSockets.WebSocket

---@return System.Void
function System.Net.WebSockets.WebSocket:Abort()end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription System.String
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:CloseAsync(closeStatus, statusDescription, cancellationToken)end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription System.String
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:CloseOutputAsync(closeStatus, statusDescription, cancellationToken)end
---@return System.Void
function System.Net.WebSockets.WebSocket:Dispose()end
---@param buffer System.ArraySegment
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:ReceiveAsync(buffer, cancellationToken)end
---@param buffer System.ArraySegment
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage System.Boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:SendAsync(buffer, messageType, endOfMessage, cancellationToken)end
---@param receiveBufferSize System.Int32
---@param sendBufferSize System.Int32
---@return System.ArraySegment
function System.Net.WebSockets.WebSocket.CreateClientBuffer(receiveBufferSize, sendBufferSize)end
---@param receiveBufferSize System.Int32
---@return System.ArraySegment
function System.Net.WebSockets.WebSocket.CreateServerBuffer(receiveBufferSize)end
---@return System.Boolean
function System.Net.WebSockets.WebSocket.IsApplicationTargeting45()end
---@return System.Void
function System.Net.WebSockets.WebSocket.RegisterPrefixes()end
---@param innerStream System.IO.Stream
---@param subProtocol System.String
---@param receiveBufferSize System.Int32
---@param sendBufferSize System.Int32
---@param keepAliveInterval System.TimeSpan
---@param useZeroMaskingKey System.Boolean
---@param internalBuffer System.ArraySegment
---@return System.Net.WebSockets.WebSocket
function System.Net.WebSockets.WebSocket.CreateClientWebSocket(innerStream, subProtocol, receiveBufferSize, sendBufferSize, keepAliveInterval, useZeroMaskingKey, internalBuffer)end
---@class System.Net.WebSockets.WebSocketCloseStatus : System.Enum
System.Net.WebSockets.WebSocketCloseStatus = {}
---@type System.Net.WebSockets.WebSocketCloseStatus
CS.System.Net.WebSockets.WebSocketCloseStatus = System.Net.WebSockets.WebSocketCloseStatus


---@class System.Net.WebSockets.WebSocketContext : System.Object
---@field public RequestUri System.Uri @  getter
---@field public Headers System.Collections.Specialized.NameValueCollection @  getter
---@field public Origin System.String @  getter
---@field public SecWebSocketProtocols System.Collections.Generic.IEnumerable @  getter
---@field public SecWebSocketVersion System.String @  getter
---@field public SecWebSocketKey System.String @  getter
---@field public CookieCollection System.Net.CookieCollection @  getter
---@field public User System.Security.Principal.IPrincipal @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsLocal System.Boolean @  getter
---@field public IsSecureConnection System.Boolean @  getter
---@field public WebSocket System.Net.WebSockets.WebSocket @  getter
System.Net.WebSockets.WebSocketContext = {}
---@type System.Net.WebSockets.WebSocketContext
CS.System.Net.WebSockets.WebSocketContext = System.Net.WebSockets.WebSocketContext

---@class System.Net.WebSockets.WebSocketError : System.Enum
System.Net.WebSockets.WebSocketError = {}
---@type System.Net.WebSockets.WebSocketError
CS.System.Net.WebSockets.WebSocketError = System.Net.WebSockets.WebSocketError

---@return System.Int32 value:0
System.Net.WebSockets.WebSocketError.Success = 0
---@return System.Int32 value:1
System.Net.WebSockets.WebSocketError.InvalidMessageType = 1
---@return System.Int32 value:2
System.Net.WebSockets.WebSocketError.Faulted = 2
---@return System.Int32 value:3
System.Net.WebSockets.WebSocketError.NativeError = 3
---@return System.Int32 value:4
System.Net.WebSockets.WebSocketError.NotAWebSocket = 4
---@return System.Int32 value:5
System.Net.WebSockets.WebSocketError.UnsupportedVersion = 5
---@return System.Int32 value:6
System.Net.WebSockets.WebSocketError.UnsupportedProtocol = 6
---@return System.Int32 value:7
System.Net.WebSockets.WebSocketError.HeaderError = 7
---@return System.Int32 value:8
System.Net.WebSockets.WebSocketError.ConnectionClosedPrematurely = 8
---@return System.Int32 value:9
System.Net.WebSockets.WebSocketError.InvalidState = 9

---@class System.Net.WebSockets.WebSocketException : System.ComponentModel.Win32Exception
---@field public ErrorCode System.Int32 @  getter
---@field public WebSocketErrorCode System.Net.WebSockets.WebSocketError @  getter
System.Net.WebSockets.WebSocketException = {}
---@type System.Net.WebSockets.WebSocketException
CS.System.Net.WebSockets.WebSocketException = System.Net.WebSockets.WebSocketException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.WebSockets.WebSocketException:GetObjectData(info, context)end
---@class System.Net.WebSockets.WebSocketMessageType : System.Enum
System.Net.WebSockets.WebSocketMessageType = {}
---@type System.Net.WebSockets.WebSocketMessageType
CS.System.Net.WebSockets.WebSocketMessageType = System.Net.WebSockets.WebSocketMessageType

---@return System.Int32 value:0
System.Net.WebSockets.WebSocketMessageType.Text = 0
---@return System.Int32 value:1
System.Net.WebSockets.WebSocketMessageType.Binary = 1
---@return System.Int32 value:2
System.Net.WebSockets.WebSocketMessageType.Close = 2

---@class System.Net.WebSockets.WebSocketReceiveResult : System.Object
---@field public Count System.Int32 @  getter
---@field public EndOfMessage System.Boolean @  getter
---@field public MessageType System.Net.WebSockets.WebSocketMessageType @  getter
---@field public CloseStatus System.Nullable @  getter
---@field public CloseStatusDescription System.String @  getter
System.Net.WebSockets.WebSocketReceiveResult = {}
---@type System.Net.WebSockets.WebSocketReceiveResult
CS.System.Net.WebSockets.WebSocketReceiveResult = System.Net.WebSockets.WebSocketReceiveResult

---@class System.Net.WebSockets.WebSocketState : System.Enum
System.Net.WebSockets.WebSocketState = {}
---@type System.Net.WebSockets.WebSocketState
CS.System.Net.WebSockets.WebSocketState = System.Net.WebSockets.WebSocketState

---@return System.Int32 value:0
System.Net.WebSockets.WebSocketState.None = 0
---@return System.Int32 value:1
System.Net.WebSockets.WebSocketState.Connecting = 1
---@return System.Int32 value:2
System.Net.WebSockets.WebSocketState.Open = 2
---@return System.Int32 value:3
System.Net.WebSockets.WebSocketState.CloseSent = 3
---@return System.Int32 value:4
System.Net.WebSockets.WebSocketState.CloseReceived = 4
---@return System.Int32 value:5
System.Net.WebSockets.WebSocketState.Closed = 5
---@return System.Int32 value:6
System.Net.WebSockets.WebSocketState.Aborted = 6

