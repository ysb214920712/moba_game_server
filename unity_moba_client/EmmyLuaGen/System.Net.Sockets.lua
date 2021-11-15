---@class System.Net.Sockets.SocketException : System.ComponentModel.Win32Exception
---@field public ErrorCode System.Int32 @  getter
---@field public Message System.String @  getter
---@field public SocketErrorCode System.Net.Sockets.SocketError @  getter
System.Net.Sockets.SocketException = {}
---@type System.Net.Sockets.SocketException
CS.System.Net.Sockets.SocketException = System.Net.Sockets.SocketException

---@class System.Net.Sockets.AddressFamily : System.Enum
System.Net.Sockets.AddressFamily = {}
---@type System.Net.Sockets.AddressFamily
CS.System.Net.Sockets.AddressFamily = System.Net.Sockets.AddressFamily

---@return System.Int32 value:0
System.Net.Sockets.AddressFamily.Unspecified = 0
---@return System.Int32 value:1
System.Net.Sockets.AddressFamily.Unix = 1
---@return System.Int32 value:2
System.Net.Sockets.AddressFamily.InterNetwork = 2
---@return System.Int32 value:3
System.Net.Sockets.AddressFamily.ImpLink = 3
---@return System.Int32 value:4
System.Net.Sockets.AddressFamily.Pup = 4
---@return System.Int32 value:5
System.Net.Sockets.AddressFamily.Chaos = 5
---@return System.Int32 value:6
System.Net.Sockets.AddressFamily.Ipx = 6
---@return System.Int32 value:7
System.Net.Sockets.AddressFamily.Osi = 7
---@return System.Int32 value:8
System.Net.Sockets.AddressFamily.Ecma = 8
---@return System.Int32 value:9
System.Net.Sockets.AddressFamily.DataKit = 9
---@return System.Int32 value:10
System.Net.Sockets.AddressFamily.Ccitt = 10
---@return System.Int32 value:11
System.Net.Sockets.AddressFamily.Sna = 11
---@return System.Int32 value:12
System.Net.Sockets.AddressFamily.DecNet = 12
---@return System.Int32 value:13
System.Net.Sockets.AddressFamily.DataLink = 13
---@return System.Int32 value:14
System.Net.Sockets.AddressFamily.Lat = 14
---@return System.Int32 value:15
System.Net.Sockets.AddressFamily.HyperChannel = 15
---@return System.Int32 value:16
System.Net.Sockets.AddressFamily.AppleTalk = 16
---@return System.Int32 value:17
System.Net.Sockets.AddressFamily.NetBios = 17
---@return System.Int32 value:18
System.Net.Sockets.AddressFamily.VoiceView = 18
---@return System.Int32 value:19
System.Net.Sockets.AddressFamily.FireFox = 19
---@return System.Int32 value:21
System.Net.Sockets.AddressFamily.Banyan = 21
---@return System.Int32 value:22
System.Net.Sockets.AddressFamily.Atm = 22
---@return System.Int32 value:23
System.Net.Sockets.AddressFamily.InterNetworkV6 = 23
---@return System.Int32 value:24
System.Net.Sockets.AddressFamily.Cluster = 24
---@return System.Int32 value:25
System.Net.Sockets.AddressFamily.Ieee12844 = 25
---@return System.Int32 value:26
System.Net.Sockets.AddressFamily.Irda = 26
---@return System.Int32 value:28
System.Net.Sockets.AddressFamily.NetworkDesigners = 28
---@return System.Int32 value:29
System.Net.Sockets.AddressFamily.Max = 29

---@class System.Net.Sockets.IOControlCode : System.Enum
System.Net.Sockets.IOControlCode = {}
---@type System.Net.Sockets.IOControlCode
CS.System.Net.Sockets.IOControlCode = System.Net.Sockets.IOControlCode


---@class System.Net.Sockets.IPPacketInformation : System.ValueType
---@field public Address System.Net.IPAddress @  getter
---@field public Interface System.Int32 @  getter
System.Net.Sockets.IPPacketInformation = {}
---@type System.Net.Sockets.IPPacketInformation
CS.System.Net.Sockets.IPPacketInformation = System.Net.Sockets.IPPacketInformation

---@param packetInformation1 System.Net.Sockets.IPPacketInformation
---@param packetInformation2 System.Net.Sockets.IPPacketInformation
---@return System.Boolean
function System.Net.Sockets.IPPacketInformation.op_Equality(packetInformation1, packetInformation2)end
---@param packetInformation1 System.Net.Sockets.IPPacketInformation
---@param packetInformation2 System.Net.Sockets.IPPacketInformation
---@return System.Boolean
function System.Net.Sockets.IPPacketInformation.op_Inequality(packetInformation1, packetInformation2)end
---@param comparand System.Object
---@return System.Boolean
function System.Net.Sockets.IPPacketInformation:Equals(comparand)end
---@return System.Int32
function System.Net.Sockets.IPPacketInformation:GetHashCode()end
---@class System.Net.Sockets.IPProtectionLevel : System.Enum
System.Net.Sockets.IPProtectionLevel = {}
---@type System.Net.Sockets.IPProtectionLevel
CS.System.Net.Sockets.IPProtectionLevel = System.Net.Sockets.IPProtectionLevel


---@class System.Net.Sockets.LingerOption : System.Object
---@field public Enabled System.Boolean @ setter getter
---@field public LingerTime System.Int32 @ setter getter
System.Net.Sockets.LingerOption = {}
---@type System.Net.Sockets.LingerOption
CS.System.Net.Sockets.LingerOption = System.Net.Sockets.LingerOption

---@class System.Net.Sockets.MulticastOption : System.Object
---@field public Group System.Net.IPAddress @ setter getter
---@field public LocalAddress System.Net.IPAddress @ setter getter
---@field public InterfaceIndex System.Int32 @ setter getter
System.Net.Sockets.MulticastOption = {}
---@type System.Net.Sockets.MulticastOption
CS.System.Net.Sockets.MulticastOption = System.Net.Sockets.MulticastOption

---@class System.Net.Sockets.IPv6MulticastOption : System.Object
---@field public Group System.Net.IPAddress @ setter getter
---@field public InterfaceIndex System.Int64 @ setter getter
System.Net.Sockets.IPv6MulticastOption = {}
---@type System.Net.Sockets.IPv6MulticastOption
CS.System.Net.Sockets.IPv6MulticastOption = System.Net.Sockets.IPv6MulticastOption

---@class System.Net.Sockets.NetworkStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public CanTimeout System.Boolean @  getter
---@field public ReadTimeout System.Int32 @ setter getter
---@field public WriteTimeout System.Int32 @ setter getter
---@field public DataAvailable System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.Net.Sockets.NetworkStream = {}
---@type System.Net.Sockets.NetworkStream
CS.System.Net.Sockets.NetworkStream = System.Net.Sockets.NetworkStream

---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.Net.Sockets.NetworkStream:Seek(offset, origin)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@return System.Int32
function System.Net.Sockets.NetworkStream:Read(buffer, offset, size)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@return System.Void
function System.Net.Sockets.NetworkStream:Write(buffer, offset, size)end
---@param timeout System.Int32
---@return System.Void
function System.Net.Sockets.NetworkStream:Close(timeout)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.NetworkStream:BeginRead(buffer, offset, size, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Sockets.NetworkStream:EndRead(asyncResult)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.NetworkStream:BeginWrite(buffer, offset, size, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Sockets.NetworkStream:EndWrite(asyncResult)end
---@return System.Void
function System.Net.Sockets.NetworkStream:Flush()end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Sockets.NetworkStream:FlushAsync(cancellationToken)end
---@param value System.Int64
---@return System.Void
function System.Net.Sockets.NetworkStream:SetLength(value)end
---@class System.Net.Sockets.ProtocolFamily : System.Enum
System.Net.Sockets.ProtocolFamily = {}
---@type System.Net.Sockets.ProtocolFamily
CS.System.Net.Sockets.ProtocolFamily = System.Net.Sockets.ProtocolFamily

---@return System.Int32 value:0
System.Net.Sockets.ProtocolFamily.Unspecified = 0
---@return System.Int32 value:1
System.Net.Sockets.ProtocolFamily.Unix = 1
---@return System.Int32 value:2
System.Net.Sockets.ProtocolFamily.InterNetwork = 2
---@return System.Int32 value:3
System.Net.Sockets.ProtocolFamily.ImpLink = 3
---@return System.Int32 value:4
System.Net.Sockets.ProtocolFamily.Pup = 4
---@return System.Int32 value:5
System.Net.Sockets.ProtocolFamily.Chaos = 5
---@return System.Int32 value:6
System.Net.Sockets.ProtocolFamily.Ipx = 6
---@return System.Int32 value:7
System.Net.Sockets.ProtocolFamily.Osi = 7
---@return System.Int32 value:8
System.Net.Sockets.ProtocolFamily.Ecma = 8
---@return System.Int32 value:9
System.Net.Sockets.ProtocolFamily.DataKit = 9
---@return System.Int32 value:10
System.Net.Sockets.ProtocolFamily.Ccitt = 10
---@return System.Int32 value:11
System.Net.Sockets.ProtocolFamily.Sna = 11
---@return System.Int32 value:12
System.Net.Sockets.ProtocolFamily.DecNet = 12
---@return System.Int32 value:13
System.Net.Sockets.ProtocolFamily.DataLink = 13
---@return System.Int32 value:14
System.Net.Sockets.ProtocolFamily.Lat = 14
---@return System.Int32 value:15
System.Net.Sockets.ProtocolFamily.HyperChannel = 15
---@return System.Int32 value:16
System.Net.Sockets.ProtocolFamily.AppleTalk = 16
---@return System.Int32 value:17
System.Net.Sockets.ProtocolFamily.NetBios = 17
---@return System.Int32 value:18
System.Net.Sockets.ProtocolFamily.VoiceView = 18
---@return System.Int32 value:19
System.Net.Sockets.ProtocolFamily.FireFox = 19
---@return System.Int32 value:21
System.Net.Sockets.ProtocolFamily.Banyan = 21
---@return System.Int32 value:22
System.Net.Sockets.ProtocolFamily.Atm = 22
---@return System.Int32 value:23
System.Net.Sockets.ProtocolFamily.InterNetworkV6 = 23
---@return System.Int32 value:24
System.Net.Sockets.ProtocolFamily.Cluster = 24
---@return System.Int32 value:25
System.Net.Sockets.ProtocolFamily.Ieee12844 = 25
---@return System.Int32 value:26
System.Net.Sockets.ProtocolFamily.Irda = 26
---@return System.Int32 value:28
System.Net.Sockets.ProtocolFamily.NetworkDesigners = 28
---@return System.Int32 value:29
System.Net.Sockets.ProtocolFamily.Max = 29

---@class System.Net.Sockets.ProtocolType : System.Enum
System.Net.Sockets.ProtocolType = {}
---@type System.Net.Sockets.ProtocolType
CS.System.Net.Sockets.ProtocolType = System.Net.Sockets.ProtocolType

---@return System.Int32 value:0
System.Net.Sockets.ProtocolType.Unspecified = 0
---@return System.Int32 value:1
System.Net.Sockets.ProtocolType.Icmp = 1
---@return System.Int32 value:2
System.Net.Sockets.ProtocolType.Igmp = 2
---@return System.Int32 value:3
System.Net.Sockets.ProtocolType.Ggp = 3
---@return System.Int32 value:4
System.Net.Sockets.ProtocolType.IPv4 = 4
---@return System.Int32 value:6
System.Net.Sockets.ProtocolType.Tcp = 6
---@return System.Int32 value:12
System.Net.Sockets.ProtocolType.Pup = 12
---@return System.Int32 value:17
System.Net.Sockets.ProtocolType.Udp = 17
---@return System.Int32 value:22
System.Net.Sockets.ProtocolType.Idp = 22

---@class System.Net.Sockets.SelectMode : System.Enum
System.Net.Sockets.SelectMode = {}
---@type System.Net.Sockets.SelectMode
CS.System.Net.Sockets.SelectMode = System.Net.Sockets.SelectMode

---@return System.Int32 value:0
System.Net.Sockets.SelectMode.SelectRead = 0
---@return System.Int32 value:1
System.Net.Sockets.SelectMode.SelectWrite = 1
---@return System.Int32 value:2
System.Net.Sockets.SelectMode.SelectError = 2

---@class System.Net.Sockets.Socket : System.Object
---@field public SupportsIPv4 System.Boolean @static  getter
---@field public OSSupportsIPv4 System.Boolean @static  getter
---@field public SupportsIPv6 System.Boolean @static  getter
---@field public OSSupportsIPv6 System.Boolean @static  getter
---@field public Handle System.IntPtr @  getter
---@field public UseOnlyOverlappedIO System.Boolean @ setter getter
---@field public AddressFamily System.Net.Sockets.AddressFamily @  getter
---@field public SocketType System.Net.Sockets.SocketType @  getter
---@field public ProtocolType System.Net.Sockets.ProtocolType @  getter
---@field public ExclusiveAddressUse System.Boolean @ setter getter
---@field public ReceiveBufferSize System.Int32 @ setter getter
---@field public SendBufferSize System.Int32 @ setter getter
---@field public ReceiveTimeout System.Int32 @ setter getter
---@field public SendTimeout System.Int32 @ setter getter
---@field public LingerState System.Net.Sockets.LingerOption @ setter getter
---@field public Ttl System.Int16 @ setter getter
---@field public DontFragment System.Boolean @ setter getter
---@field public DualMode System.Boolean @ setter getter
---@field public Available System.Int32 @  getter
---@field public EnableBroadcast System.Boolean @ setter getter
---@field public IsBound System.Boolean @  getter
---@field public MulticastLoopback System.Boolean @ setter getter
---@field public LocalEndPoint System.Net.EndPoint @  getter
---@field public Blocking System.Boolean @ setter getter
---@field public Connected System.Boolean @ setter getter
---@field public NoDelay System.Boolean @ setter getter
---@field public RemoteEndPoint System.Net.EndPoint @  getter
System.Net.Sockets.Socket = {}
---@type System.Net.Sockets.Socket
CS.System.Net.Sockets.Socket = System.Net.Sockets.Socket

---@overload fun(addresses:System.Net.IPAddress[], port:System.Int32):System.Void
---@overload fun(address:System.Net.IPAddress, port:System.Int32):System.Void
---@overload fun(host:System.String, port:System.Int32):System.Void
---@param remoteEP System.Net.EndPoint
---@return System.Void
function System.Net.Sockets.Socket:Connect(remoteEP)end
---@overload fun(buffers:System.Collections.Generic.IList):System.Int32
---@overload fun(buffer:System.Byte[], socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffer:System.Byte[], size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError):System.Int32
---@param buffer System.Byte[]
---@return System.Int32
function System.Net.Sockets.Socket:Send(buffer)end
---@overload fun(fileName:System.String, preBuffer:System.Byte[], postBuffer:System.Byte[], flags:System.Net.Sockets.TransmitFileOptions):System.Void
---@param fileName System.String
---@return System.Void
function System.Net.Sockets.Socket:SendFile(fileName)end
---@overload fun(buffer:System.Byte[], socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@overload fun(buffer:System.Byte[], size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@param buffer System.Byte[]
---@param remoteEP System.Net.EndPoint
---@return System.Int32
function System.Net.Sockets.Socket:SendTo(buffer, remoteEP)end
---@overload fun(buffers:System.Collections.Generic.IList):System.Int32
---@overload fun(buffer:System.Byte[], socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffer:System.Byte[], size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError):System.Int32
---@param buffer System.Byte[]
---@return System.Int32
function System.Net.Sockets.Socket:Receive(buffer)end
---@overload fun(buffer:System.Byte[], socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@overload fun(buffer:System.Byte[], size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, remoteEP:System.Net.EndPoint):System.Int32
---@param buffer System.Byte[]
---@param remoteEP System.Net.EndPoint
---@return System.Int32
function System.Net.Sockets.Socket:ReceiveFrom(buffer, remoteEP)end
---@overload fun(ioControlCode:System.Net.Sockets.IOControlCode, optionInValue:System.Byte[], optionOutValue:System.Byte[]):System.Int32
---@param ioControlCode System.Int32
---@param optionInValue System.Byte[]
---@param optionOutValue System.Byte[]
---@return System.Int32
function System.Net.Sockets.Socket:IOControl(ioControlCode, optionInValue, optionOutValue)end
---@param level System.Net.Sockets.IPProtectionLevel
---@return System.Void
function System.Net.Sockets.Socket:SetIPProtectionLevel(level)end
---@overload fun(fileName:System.String, preBuffer:System.Byte[], postBuffer:System.Byte[], flags:System.Net.Sockets.TransmitFileOptions, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param fileName System.String
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginSendFile(fileName, callback, state)end
---@overload fun(address:System.Net.IPAddress, port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(host:System.String, port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(addresses:System.Net.IPAddress[], port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param remoteEP System.Net.EndPoint
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginConnect(remoteEP, callback, state)end
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param buffers System.Collections.Generic.IList
---@param socketFlags System.Net.Sockets.SocketFlags
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginSend(buffers, socketFlags, callback, state)end
---@overload fun(asyncResult:System.IAsyncResult, errorCode:System.Net.Sockets.SocketError):System.Int32
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Sockets.Socket:EndSend(asyncResult)end
---@overload fun(buffers:System.Collections.Generic.IList, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(buffer:System.Byte[], offset:System.Int32, size:System.Int32, socketFlags:System.Net.Sockets.SocketFlags, errorCode:System.Net.Sockets.SocketError, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param buffers System.Collections.Generic.IList
---@param socketFlags System.Net.Sockets.SocketFlags
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginReceive(buffers, socketFlags, callback, state)end
---@overload fun(asyncResult:System.IAsyncResult, errorCode:System.Net.Sockets.SocketError):System.Int32
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Sockets.Socket:EndReceive(asyncResult)end
---@overload fun(receiveSize:System.Int32, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(acceptSocket:System.Net.Sockets.Socket, receiveSize:System.Int32, callback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginAccept(callback, state)end
---@overload fun(buffer:System.Byte[], asyncResult:System.IAsyncResult):System.Net.Sockets.Socket
---@overload fun(buffer:System.Byte[], bytesTransferred:System.Int32, asyncResult:System.IAsyncResult):System.Net.Sockets.Socket
---@param asyncResult System.IAsyncResult
---@return System.Net.Sockets.Socket
function System.Net.Sockets.Socket:EndAccept(asyncResult)end
---@return System.Void
function System.Net.Sockets.Socket:Dispose()end
---@param socketType System.Net.Sockets.SocketType
---@param protocolType System.Net.Sockets.ProtocolType
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket.ConnectAsync(socketType, protocolType, e)end
---@param checkRead System.Collections.IList
---@param checkWrite System.Collections.IList
---@param checkError System.Collections.IList
---@param microSeconds System.Int32
---@return System.Void
function System.Net.Sockets.Socket.Select(checkRead, checkWrite, checkError, microSeconds)end
---@param microSeconds System.Int32
---@param mode System.Net.Sockets.SelectMode
---@return System.Boolean
function System.Net.Sockets.Socket:Poll(microSeconds, mode)end
---@return System.Net.Sockets.Socket
function System.Net.Sockets.Socket:Accept()end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:AcceptAsync(e)end
---@param localEP System.Net.EndPoint
---@return System.Void
function System.Net.Sockets.Socket:Bind(localEP)end
---@param backlog System.Int32
---@return System.Void
function System.Net.Sockets.Socket:Listen(backlog)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:ConnectAsync(e)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Void
function System.Net.Sockets.Socket.CancelConnectAsync(e)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Sockets.Socket:EndConnect(asyncResult)end
---@param reuseSocket System.Boolean
---@return System.Void
function System.Net.Sockets.Socket:Disconnect(reuseSocket)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:DisconnectAsync(e)end
---@param reuseSocket System.Boolean
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginDisconnect(reuseSocket, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Sockets.Socket:EndDisconnect(asyncResult)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:ReceiveAsync(e)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:ReceiveFromAsync(e)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEP System.Net.EndPoint
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginReceiveFrom(buffer, offset, size, socketFlags, remoteEP, callback, state)end
---@param asyncResult System.IAsyncResult
---@param endPoint System.Net.EndPoint
---@return System.Int32
function System.Net.Sockets.Socket:EndReceiveFrom(asyncResult, endPoint)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEP System.Net.EndPoint
---@param ipPacketInformation System.Net.Sockets.IPPacketInformation
---@return System.Int32
function System.Net.Sockets.Socket:ReceiveMessageFrom(buffer, offset, size, socketFlags, remoteEP, ipPacketInformation)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:ReceiveMessageFromAsync(e)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEP System.Net.EndPoint
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginReceiveMessageFrom(buffer, offset, size, socketFlags, remoteEP, callback, state)end
---@param asyncResult System.IAsyncResult
---@param socketFlags System.Net.Sockets.SocketFlags
---@param endPoint System.Net.EndPoint
---@param ipPacketInformation System.Net.Sockets.IPPacketInformation
---@return System.Int32
function System.Net.Sockets.Socket:EndReceiveMessageFrom(asyncResult, socketFlags, endPoint, ipPacketInformation)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:SendAsync(e)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:SendToAsync(e)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param size System.Int32
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEP System.Net.EndPoint
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.Socket:BeginSendTo(buffer, offset, size, socketFlags, remoteEP, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Sockets.Socket:EndSendTo(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Sockets.Socket:EndSendFile(asyncResult)end
---@param e System.Net.Sockets.SocketAsyncEventArgs
---@return System.Boolean
function System.Net.Sockets.Socket:SendPacketsAsync(e)end
---@param targetProcessId System.Int32
---@return System.Net.Sockets.SocketInformation
function System.Net.Sockets.Socket:DuplicateAndClose(targetProcessId)end
---@overload fun(optionLevel:System.Net.Sockets.SocketOptionLevel, optionName:System.Net.Sockets.SocketOptionName, optionLength:System.Int32):System.Byte[]
---@overload fun(optionLevel:System.Net.Sockets.SocketOptionLevel, optionName:System.Net.Sockets.SocketOptionName, optionValue:System.Byte[]):System.Void
---@param optionLevel System.Net.Sockets.SocketOptionLevel
---@param optionName System.Net.Sockets.SocketOptionName
---@return System.Object
function System.Net.Sockets.Socket:GetSocketOption(optionLevel, optionName)end
---@overload fun(optionLevel:System.Net.Sockets.SocketOptionLevel, optionName:System.Net.Sockets.SocketOptionName, optionValue:System.Int32):System.Void
---@overload fun(optionLevel:System.Net.Sockets.SocketOptionLevel, optionName:System.Net.Sockets.SocketOptionName, optionValue:System.Byte[]):System.Void
---@overload fun(optionLevel:System.Net.Sockets.SocketOptionLevel, optionName:System.Net.Sockets.SocketOptionName, optionValue:System.Object):System.Void
---@param optionLevel System.Net.Sockets.SocketOptionLevel
---@param optionName System.Net.Sockets.SocketOptionName
---@param optionValue System.Boolean
---@return System.Void
function System.Net.Sockets.Socket:SetSocketOption(optionLevel, optionName, optionValue)end
---@overload fun(timeout:System.Int32):System.Void
---@return System.Void
function System.Net.Sockets.Socket:Close()end
---@param how System.Net.Sockets.SocketShutdown
---@return System.Void
function System.Net.Sockets.Socket:Shutdown(how)end
---@class System.Net.Sockets.SocketAsyncOperation : System.Enum
System.Net.Sockets.SocketAsyncOperation = {}
---@type System.Net.Sockets.SocketAsyncOperation
CS.System.Net.Sockets.SocketAsyncOperation = System.Net.Sockets.SocketAsyncOperation

---@return System.Int32 value:0
System.Net.Sockets.SocketAsyncOperation.None = 0
---@return System.Int32 value:1
System.Net.Sockets.SocketAsyncOperation.Accept = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketAsyncOperation.Connect = 2
---@return System.Int32 value:3
System.Net.Sockets.SocketAsyncOperation.Disconnect = 3
---@return System.Int32 value:4
System.Net.Sockets.SocketAsyncOperation.Receive = 4
---@return System.Int32 value:5
System.Net.Sockets.SocketAsyncOperation.ReceiveFrom = 5
---@return System.Int32 value:6
System.Net.Sockets.SocketAsyncOperation.ReceiveMessageFrom = 6
---@return System.Int32 value:7
System.Net.Sockets.SocketAsyncOperation.Send = 7
---@return System.Int32 value:8
System.Net.Sockets.SocketAsyncOperation.SendPackets = 8
---@return System.Int32 value:9
System.Net.Sockets.SocketAsyncOperation.SendTo = 9

---@class System.Net.Sockets.SendPacketsElement : System.Object
---@field public FilePath System.String @  getter
---@field public Buffer System.Byte[] @  getter
---@field public Count System.Int32 @  getter
---@field public Offset System.Int32 @  getter
---@field public EndOfPacket System.Boolean @  getter
System.Net.Sockets.SendPacketsElement = {}
---@type System.Net.Sockets.SendPacketsElement
CS.System.Net.Sockets.SendPacketsElement = System.Net.Sockets.SendPacketsElement

---@class System.Net.Sockets.SocketClientAccessPolicyProtocol : System.Enum
System.Net.Sockets.SocketClientAccessPolicyProtocol = {}
---@type System.Net.Sockets.SocketClientAccessPolicyProtocol
CS.System.Net.Sockets.SocketClientAccessPolicyProtocol = System.Net.Sockets.SocketClientAccessPolicyProtocol

---@return System.Int32 value:0
System.Net.Sockets.SocketClientAccessPolicyProtocol.Tcp = 0
---@return System.Int32 value:1
System.Net.Sockets.SocketClientAccessPolicyProtocol.Http = 1

---@class System.Net.Sockets.SocketError : System.Enum
System.Net.Sockets.SocketError = {}
---@type System.Net.Sockets.SocketError
CS.System.Net.Sockets.SocketError = System.Net.Sockets.SocketError

---@return System.Int32 value:0
System.Net.Sockets.SocketError.Success = 0

---@class System.Net.Sockets.SocketFlags : System.Enum
System.Net.Sockets.SocketFlags = {}
---@type System.Net.Sockets.SocketFlags
CS.System.Net.Sockets.SocketFlags = System.Net.Sockets.SocketFlags

---@return System.Int32 value:0
System.Net.Sockets.SocketFlags.None = 0
---@return System.Int32 value:1
System.Net.Sockets.SocketFlags.OutOfBand = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketFlags.Peek = 2
---@return System.Int32 value:4
System.Net.Sockets.SocketFlags.DontRoute = 4

---@class System.Net.Sockets.SocketInformation : System.ValueType
---@field public ProtocolInformation System.Byte[] @ setter getter
---@field public Options System.Net.Sockets.SocketInformationOptions @ setter getter
System.Net.Sockets.SocketInformation = {}
---@type System.Net.Sockets.SocketInformation
CS.System.Net.Sockets.SocketInformation = System.Net.Sockets.SocketInformation

---@class System.Net.Sockets.SocketInformationOptions : System.Enum
System.Net.Sockets.SocketInformationOptions = {}
---@type System.Net.Sockets.SocketInformationOptions
CS.System.Net.Sockets.SocketInformationOptions = System.Net.Sockets.SocketInformationOptions

---@return System.Int32 value:1
System.Net.Sockets.SocketInformationOptions.NonBlocking = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketInformationOptions.Connected = 2

---@class System.Net.Sockets.SocketOptionLevel : System.Enum
System.Net.Sockets.SocketOptionLevel = {}
---@type System.Net.Sockets.SocketOptionLevel
CS.System.Net.Sockets.SocketOptionLevel = System.Net.Sockets.SocketOptionLevel

---@return System.Int32 value:0
System.Net.Sockets.SocketOptionLevel.IP = 0

---@class System.Net.Sockets.SocketOptionName : System.Enum
System.Net.Sockets.SocketOptionName = {}
---@type System.Net.Sockets.SocketOptionName
CS.System.Net.Sockets.SocketOptionName = System.Net.Sockets.SocketOptionName

---@return System.Int32 value:1
System.Net.Sockets.SocketOptionName.NoChecksum = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketOptionName.Expedited = 2
---@return System.Int32 value:3
System.Net.Sockets.SocketOptionName.TypeOfService = 3
---@return System.Int32 value:4
System.Net.Sockets.SocketOptionName.IpTimeToLive = 4
---@return System.Int32 value:8
System.Net.Sockets.SocketOptionName.KeepAlive = 8
---@return System.Int32 value:9
System.Net.Sockets.SocketOptionName.MulticastInterface = 9
---@return System.Int32 value:10
System.Net.Sockets.SocketOptionName.MulticastTimeToLive = 10
---@return System.Int32 value:11
System.Net.Sockets.SocketOptionName.MulticastLoopback = 11
---@return System.Int32 value:12
System.Net.Sockets.SocketOptionName.AddMembership = 12
---@return System.Int32 value:13
System.Net.Sockets.SocketOptionName.DropMembership = 13
---@return System.Int32 value:14
System.Net.Sockets.SocketOptionName.DontFragment = 14
---@return System.Int32 value:15
System.Net.Sockets.SocketOptionName.AddSourceMembership = 15
---@return System.Int32 value:16
System.Net.Sockets.SocketOptionName.DropSourceMembership = 16
---@return System.Int32 value:17
System.Net.Sockets.SocketOptionName.BlockSource = 17
---@return System.Int32 value:18
System.Net.Sockets.SocketOptionName.UnblockSource = 18
---@return System.Int32 value:19
System.Net.Sockets.SocketOptionName.PacketInformation = 19
---@return System.Int32 value:20
System.Net.Sockets.SocketOptionName.ChecksumCoverage = 20
---@return System.Int32 value:21
System.Net.Sockets.SocketOptionName.HopLimit = 21
---@return System.Int32 value:23
System.Net.Sockets.SocketOptionName.IPProtectionLevel = 23
---@return System.Int32 value:27
System.Net.Sockets.SocketOptionName.IPv6Only = 27
---@return System.Int32 value:32
System.Net.Sockets.SocketOptionName.Broadcast = 32

---@class System.Net.Sockets.SocketShutdown : System.Enum
System.Net.Sockets.SocketShutdown = {}
---@type System.Net.Sockets.SocketShutdown
CS.System.Net.Sockets.SocketShutdown = System.Net.Sockets.SocketShutdown

---@return System.Int32 value:0
System.Net.Sockets.SocketShutdown.Receive = 0
---@return System.Int32 value:1
System.Net.Sockets.SocketShutdown.Send = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketShutdown.Both = 2

---@class System.Net.Sockets.SocketType : System.Enum
System.Net.Sockets.SocketType = {}
---@type System.Net.Sockets.SocketType
CS.System.Net.Sockets.SocketType = System.Net.Sockets.SocketType

---@return System.Int32 value:1
System.Net.Sockets.SocketType.Stream = 1
---@return System.Int32 value:2
System.Net.Sockets.SocketType.Dgram = 2
---@return System.Int32 value:3
System.Net.Sockets.SocketType.Raw = 3
---@return System.Int32 value:4
System.Net.Sockets.SocketType.Rdm = 4
---@return System.Int32 value:5
System.Net.Sockets.SocketType.Seqpacket = 5

---@class System.Net.Sockets.TcpClient : System.Object
---@field public Client System.Net.Sockets.Socket @ setter getter
---@field public Available System.Int32 @  getter
---@field public Connected System.Boolean @  getter
---@field public ExclusiveAddressUse System.Boolean @ setter getter
---@field public ReceiveBufferSize System.Int32 @ setter getter
---@field public SendBufferSize System.Int32 @ setter getter
---@field public ReceiveTimeout System.Int32 @ setter getter
---@field public SendTimeout System.Int32 @ setter getter
---@field public LingerState System.Net.Sockets.LingerOption @ setter getter
---@field public NoDelay System.Boolean @ setter getter
System.Net.Sockets.TcpClient = {}
---@type System.Net.Sockets.TcpClient
CS.System.Net.Sockets.TcpClient = System.Net.Sockets.TcpClient

---@overload fun(hostname:System.String, port:System.Int32):System.Void
---@overload fun(address:System.Net.IPAddress, port:System.Int32):System.Void
---@overload fun(ipAddresses:System.Net.IPAddress[], port:System.Int32):System.Void
---@param remoteEP System.Net.IPEndPoint
---@return System.Void
function System.Net.Sockets.TcpClient:Connect(remoteEP)end
---@overload fun(address:System.Net.IPAddress, port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(addresses:System.Net.IPAddress[], port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param host System.String
---@param port System.Int32
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.TcpClient:BeginConnect(host, port, requestCallback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Sockets.TcpClient:EndConnect(asyncResult)end
---@overload fun(host:System.String, port:System.Int32):System.Threading.Tasks.Task
---@overload fun(addresses:System.Net.IPAddress[], port:System.Int32):System.Threading.Tasks.Task
---@param address System.Net.IPAddress
---@param port System.Int32
---@return System.Threading.Tasks.Task
function System.Net.Sockets.TcpClient:ConnectAsync(address, port)end
---@return System.Net.Sockets.NetworkStream
function System.Net.Sockets.TcpClient:GetStream()end
---@return System.Void
function System.Net.Sockets.TcpClient:Close()end
---@return System.Void
function System.Net.Sockets.TcpClient:Dispose()end
---@class System.Net.Sockets.TcpListener : System.Object
---@field public Server System.Net.Sockets.Socket @  getter
---@field public LocalEndpoint System.Net.EndPoint @  getter
---@field public ExclusiveAddressUse System.Boolean @ setter getter
System.Net.Sockets.TcpListener = {}
---@type System.Net.Sockets.TcpListener
CS.System.Net.Sockets.TcpListener = System.Net.Sockets.TcpListener

---@param port System.Int32
---@return System.Net.Sockets.TcpListener
function System.Net.Sockets.TcpListener.Create(port)end
---@param allowed System.Boolean
---@return System.Void
function System.Net.Sockets.TcpListener:AllowNatTraversal(allowed)end
---@overload fun(backlog:System.Int32):System.Void
---@return System.Void
function System.Net.Sockets.TcpListener:Start()end
---@return System.Void
function System.Net.Sockets.TcpListener:Stop()end
---@return System.Boolean
function System.Net.Sockets.TcpListener:Pending()end
---@return System.Net.Sockets.Socket
function System.Net.Sockets.TcpListener:AcceptSocket()end
---@return System.Net.Sockets.TcpClient
function System.Net.Sockets.TcpListener:AcceptTcpClient()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.TcpListener:BeginAcceptSocket(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.Sockets.Socket
function System.Net.Sockets.TcpListener:EndAcceptSocket(asyncResult)end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.TcpListener:BeginAcceptTcpClient(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.Sockets.TcpClient
function System.Net.Sockets.TcpListener:EndAcceptTcpClient(asyncResult)end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.TcpListener:AcceptSocketAsync()end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.TcpListener:AcceptTcpClientAsync()end
---@class System.Net.Sockets.TransmitFileOptions : System.Enum
System.Net.Sockets.TransmitFileOptions = {}
---@type System.Net.Sockets.TransmitFileOptions
CS.System.Net.Sockets.TransmitFileOptions = System.Net.Sockets.TransmitFileOptions

---@return System.Int32 value:0
System.Net.Sockets.TransmitFileOptions.UseDefaultWorkerThread = 0
---@return System.Int32 value:1
System.Net.Sockets.TransmitFileOptions.Disconnect = 1
---@return System.Int32 value:2
System.Net.Sockets.TransmitFileOptions.ReuseSocket = 2
---@return System.Int32 value:4
System.Net.Sockets.TransmitFileOptions.WriteBehind = 4

---@class System.Net.Sockets.UdpClient : System.Object
---@field public Client System.Net.Sockets.Socket @ setter getter
---@field public Available System.Int32 @  getter
---@field public Ttl System.Int16 @ setter getter
---@field public DontFragment System.Boolean @ setter getter
---@field public MulticastLoopback System.Boolean @ setter getter
---@field public EnableBroadcast System.Boolean @ setter getter
---@field public ExclusiveAddressUse System.Boolean @ setter getter
System.Net.Sockets.UdpClient = {}
---@type System.Net.Sockets.UdpClient
CS.System.Net.Sockets.UdpClient = System.Net.Sockets.UdpClient

---@param allowed System.Boolean
---@return System.Void
function System.Net.Sockets.UdpClient:AllowNatTraversal(allowed)end
---@return System.Void
function System.Net.Sockets.UdpClient:Close()end
---@return System.Void
function System.Net.Sockets.UdpClient:Dispose()end
---@overload fun(hostname:System.String, port:System.Int32):System.Void
---@overload fun(addr:System.Net.IPAddress, port:System.Int32):System.Void
---@param endPoint System.Net.IPEndPoint
---@return System.Void
function System.Net.Sockets.UdpClient:Connect(endPoint)end
---@overload fun(dgram:System.Byte[], bytes:System.Int32, endPoint:System.Net.IPEndPoint):System.Int32
---@overload fun(dgram:System.Byte[], bytes:System.Int32, hostname:System.String, port:System.Int32):System.Int32
---@param dgram System.Byte[]
---@param bytes System.Int32
---@return System.Int32
function System.Net.Sockets.UdpClient:Send(dgram, bytes)end
---@overload fun(datagram:System.Byte[], bytes:System.Int32, endPoint:System.Net.IPEndPoint, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@overload fun(datagram:System.Byte[], bytes:System.Int32, hostname:System.String, port:System.Int32, requestCallback:System.AsyncCallback, state:System.Object):System.IAsyncResult
---@param datagram System.Byte[]
---@param bytes System.Int32
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.UdpClient:BeginSend(datagram, bytes, requestCallback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Sockets.UdpClient:EndSend(asyncResult)end
---@param remoteEP System.Net.IPEndPoint
---@return System.Byte[]
function System.Net.Sockets.UdpClient:Receive(remoteEP)end
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.UdpClient:BeginReceive(requestCallback, state)end
---@param asyncResult System.IAsyncResult
---@param remoteEP System.Net.IPEndPoint
---@return System.Byte[]
function System.Net.Sockets.UdpClient:EndReceive(asyncResult, remoteEP)end
---@overload fun(ifindex:System.Int32, multicastAddr:System.Net.IPAddress):System.Void
---@overload fun(multicastAddr:System.Net.IPAddress, timeToLive:System.Int32):System.Void
---@overload fun(multicastAddr:System.Net.IPAddress, localAddress:System.Net.IPAddress):System.Void
---@param multicastAddr System.Net.IPAddress
---@return System.Void
function System.Net.Sockets.UdpClient:JoinMulticastGroup(multicastAddr)end
---@overload fun(multicastAddr:System.Net.IPAddress, ifindex:System.Int32):System.Void
---@param multicastAddr System.Net.IPAddress
---@return System.Void
function System.Net.Sockets.UdpClient:DropMulticastGroup(multicastAddr)end
---@overload fun(datagram:System.Byte[], bytes:System.Int32, endPoint:System.Net.IPEndPoint):System.Threading.Tasks.Task
---@overload fun(datagram:System.Byte[], bytes:System.Int32, hostname:System.String, port:System.Int32):System.Threading.Tasks.Task
---@param datagram System.Byte[]
---@param bytes System.Int32
---@return System.Threading.Tasks.Task
function System.Net.Sockets.UdpClient:SendAsync(datagram, bytes)end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.UdpClient:ReceiveAsync()end
---@class System.Net.Sockets.UdpReceiveResult : System.ValueType
---@field public Buffer System.Byte[] @  getter
---@field public RemoteEndPoint System.Net.IPEndPoint @  getter
System.Net.Sockets.UdpReceiveResult = {}
---@type System.Net.Sockets.UdpReceiveResult
CS.System.Net.Sockets.UdpReceiveResult = System.Net.Sockets.UdpReceiveResult

---@return System.Int32
function System.Net.Sockets.UdpReceiveResult:GetHashCode()end
---@overload fun(other:System.Net.Sockets.UdpReceiveResult):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Net.Sockets.UdpReceiveResult:Equals(obj)end
---@param left System.Net.Sockets.UdpReceiveResult
---@param right System.Net.Sockets.UdpReceiveResult
---@return System.Boolean
function System.Net.Sockets.UdpReceiveResult.op_Equality(left, right)end
---@param left System.Net.Sockets.UdpReceiveResult
---@param right System.Net.Sockets.UdpReceiveResult
---@return System.Boolean
function System.Net.Sockets.UdpReceiveResult.op_Inequality(left, right)end
---@class System.Net.Sockets.SocketAsyncEventArgs : System.EventArgs
---@field public ConnectByNameError System.Exception @ setter getter
---@field public AcceptSocket System.Net.Sockets.Socket @ setter getter
---@field public Buffer System.Byte[] @ setter getter
---@field public BufferList System.Collections.Generic.IList @ setter getter
---@field public BytesTransferred System.Int32 @ setter getter
---@field public Count System.Int32 @ setter getter
---@field public DisconnectReuseSocket System.Boolean @ setter getter
---@field public LastOperation System.Net.Sockets.SocketAsyncOperation @ setter getter
---@field public Offset System.Int32 @ setter getter
---@field public RemoteEndPoint System.Net.EndPoint @ setter getter
---@field public ReceiveMessageFromPacketInfo System.Net.Sockets.IPPacketInformation @ setter getter
---@field public SendPacketsElements System.Net.Sockets.SendPacketsElement[] @ setter getter
---@field public SendPacketsFlags System.Net.Sockets.TransmitFileOptions @ setter getter
---@field public SendPacketsSendSize System.Int32 @ setter getter
---@field public SocketError System.Net.Sockets.SocketError @ setter getter
---@field public SocketFlags System.Net.Sockets.SocketFlags @ setter getter
---@field public UserToken System.Object @ setter getter
---@field public ConnectSocket System.Net.Sockets.Socket @  getter
---@field public SocketClientAccessPolicyProtocol System.Net.Sockets.SocketClientAccessPolicyProtocol @ setter getter
System.Net.Sockets.SocketAsyncEventArgs = {}
---@type System.Net.Sockets.SocketAsyncEventArgs
CS.System.Net.Sockets.SocketAsyncEventArgs = System.Net.Sockets.SocketAsyncEventArgs

---@param value System.EventHandler
---@return System.Void
function System.Net.Sockets.SocketAsyncEventArgs:add_Completed(value)end
---@param value System.EventHandler
---@return System.Void
function System.Net.Sockets.SocketAsyncEventArgs:remove_Completed(value)end
---@return System.Void
function System.Net.Sockets.SocketAsyncEventArgs:Dispose()end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.Net.Sockets.SocketAsyncEventArgs:SetBuffer(offset, count)end
---@class System.Net.Sockets.SocketReceiveFromResult : System.ValueType
---@field public ReceivedBytes System.Int32
---@field public RemoteEndPoint System.Net.EndPoint
System.Net.Sockets.SocketReceiveFromResult = {}
---@type System.Net.Sockets.SocketReceiveFromResult
CS.System.Net.Sockets.SocketReceiveFromResult = System.Net.Sockets.SocketReceiveFromResult

---@class System.Net.Sockets.SocketReceiveMessageFromResult : System.ValueType
---@field public ReceivedBytes System.Int32
---@field public SocketFlags System.Net.Sockets.SocketFlags
---@field public RemoteEndPoint System.Net.EndPoint
---@field public PacketInformation System.Net.Sockets.IPPacketInformation
System.Net.Sockets.SocketReceiveMessageFromResult = {}
---@type System.Net.Sockets.SocketReceiveMessageFromResult
CS.System.Net.Sockets.SocketReceiveMessageFromResult = System.Net.Sockets.SocketReceiveMessageFromResult

---@class System.Net.Sockets.SocketTaskExtensions : System.Object
System.Net.Sockets.SocketTaskExtensions = {}
---@type System.Net.Sockets.SocketTaskExtensions
CS.System.Net.Sockets.SocketTaskExtensions = System.Net.Sockets.SocketTaskExtensions

