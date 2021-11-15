---@class UnityEngine.Networking.Utility : System.Object
---@field public useRandomSourceID System.Boolean @static setter getter
UnityEngine.Networking.Utility = {}
---@type UnityEngine.Networking.Utility
CS.UnityEngine.Networking.Utility = UnityEngine.Networking.Utility

---@return UnityEngine.Networking.Types.SourceID
function UnityEngine.Networking.Utility.GetSourceID()end
---@param newAppID UnityEngine.Networking.Types.AppID
---@return System.Void
function UnityEngine.Networking.Utility.SetAppID(newAppID)end
---@return UnityEngine.Networking.Types.AppID
function UnityEngine.Networking.Utility.GetAppID()end
---@param netId UnityEngine.Networking.Types.NetworkID
---@param accessToken UnityEngine.Networking.Types.NetworkAccessToken
---@return System.Void
function UnityEngine.Networking.Utility.SetAccessTokenForNetwork(netId, accessToken)end
---@param netId UnityEngine.Networking.Types.NetworkID
---@return UnityEngine.Networking.Types.NetworkAccessToken
function UnityEngine.Networking.Utility.GetAccessTokenForNetwork(netId)end
---@class UnityEngine.Networking.NetworkTransport : System.Object
---@field public IsStarted System.Boolean @static  getter
UnityEngine.Networking.NetworkTransport = {}
---@type UnityEngine.Networking.NetworkTransport
CS.UnityEngine.Networking.NetworkTransport = UnityEngine.Networking.NetworkTransport

---@param hostId System.Int32
---@param endPoint System.Net.EndPoint
---@param exceptionConnectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.ConnectEndPoint(hostId, endPoint, exceptionConnectionId, error)end
---@overload fun(config:UnityEngine.Networking.GlobalConfig):System.Void
---@return System.Void
function UnityEngine.Networking.NetworkTransport.Init()end
---@return System.Void
function UnityEngine.Networking.NetworkTransport.Shutdown()end
---@param go UnityEngine.GameObject
---@return System.String
function UnityEngine.Networking.NetworkTransport.GetAssetId(go)end
---@param id System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkTransport.AddSceneId(id)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetNextSceneId()end
---@overload fun(topology:UnityEngine.Networking.HostTopology, minTimeout:System.Int32, maxTimeout:System.Int32, port:System.Int32):System.Int32
---@overload fun(topology:UnityEngine.Networking.HostTopology, minTimeout:System.Int32, maxTimeout:System.Int32, port:System.Int32, ip:System.String):System.Int32
---@param topology UnityEngine.Networking.HostTopology
---@param minTimeout System.Int32
---@param maxTimeout System.Int32
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.AddHostWithSimulator(topology, minTimeout, maxTimeout)end
---@overload fun(topology:UnityEngine.Networking.HostTopology, port:System.Int32):System.Int32
---@overload fun(topology:UnityEngine.Networking.HostTopology, port:System.Int32, ip:System.String):System.Int32
---@param topology UnityEngine.Networking.HostTopology
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.AddHost(topology)end
---@overload fun(topology:UnityEngine.Networking.HostTopology, port:System.Int32, ip:System.String):System.Int32
---@param topology UnityEngine.Networking.HostTopology
---@param port System.Int32
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.AddWebsocketHost(topology, port)end
---@param hostId System.Int32
---@param address System.String
---@param port System.Int32
---@param network UnityEngine.Networking.Types.NetworkID
---@param source UnityEngine.Networking.Types.SourceID
---@param node UnityEngine.Networking.Types.NodeID
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkTransport.ConnectAsNetworkHost(hostId, address, port, network, source, node, error)end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkTransport.DisconnectNetworkHost(hostId, error)end
---@param hostId System.Int32
---@param error System.Byte
---@return UnityEngine.Networking.NetworkEventType
function UnityEngine.Networking.NetworkTransport.ReceiveRelayEventFromHost(hostId, error)end
---@overload fun(hostId:System.Int32, address:System.String, port:System.Int32, exceptionConnectionId:System.Int32, relaySlotId:System.Int32, network:UnityEngine.Networking.Types.NetworkID, source:UnityEngine.Networking.Types.SourceID, node:UnityEngine.Networking.Types.NodeID, bytesPerSec:System.Int32, bucketSizeFactor:System.Single, error:System.Byte):System.Int32
---@param hostId System.Int32
---@param address System.String
---@param port System.Int32
---@param exceptionConnectionId System.Int32
---@param relaySlotId System.Int32
---@param network UnityEngine.Networking.Types.NetworkID
---@param source UnityEngine.Networking.Types.SourceID
---@param node UnityEngine.Networking.Types.NodeID
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.ConnectToNetworkPeer(hostId, address, port, exceptionConnectionId, relaySlotId, network, source, node, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetCurrentIncomingMessageAmount()end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetCurrentOutgoingMessageAmount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetIncomingMessageQueueSize(hostId, error)end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingMessageQueueSize(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetCurrentRTT(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetCurrentRtt(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetIncomingPacketLossCount(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetNetworkLostPacketNum(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetIncomingPacketCount(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingPacketNetworkLossPercent(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingPacketOverflowLossPercent(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetMaxAllowedBandwidth(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetAckBufferCount(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetIncomingPacketDropCountForAllHosts()end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetIncomingPacketCountForAllHosts()end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingPacketCount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingPacketCountForHost(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingPacketCountForConnection(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingMessageCount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingMessageCountForHost(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingMessageCountForConnection(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingUserBytesCount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingUserBytesCountForHost(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingUserBytesCountForConnection(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingSystemBytesCount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingSystemBytesCountForHost(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingSystemBytesCountForConnection(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingFullBytesCount()end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingFullBytesCountForHost(hostId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetOutgoingFullBytesCountForConnection(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetPacketSentRate(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetPacketReceivedRate(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetRemotePacketReceivedRate(hostId, connectionId, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetNetIOTimeuS()end
---@overload fun(hostId:System.Int32, connectionId:System.Int32, address:System.String, port:System.Int32, network:UnityEngine.Networking.Types.NetworkID, dstNode:UnityEngine.Networking.Types.NodeID, error:System.Byte):System.Void
---@param hostId System.Int32
---@param connectionId System.Int32
---@param port System.Int32
---@param network System.UInt64
---@param dstNode System.UInt16
---@param error System.Byte
---@return System.String
function UnityEngine.Networking.NetworkTransport.GetConnectionInfo(hostId, connectionId, port, network, dstNode, error)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetNetworkTimestamp()end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param remoteTime System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetRemoteDelayTimeMS(hostId, connectionId, remoteTime, error)end
---@param hostId System.Int32
---@param channelId System.Int32
---@param buffer System.Byte[]
---@param size System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.StartSendMulticast(hostId, channelId, buffer, size, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.SendMulticast(hostId, connectionId, error)end
---@param hostId System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.FinishSendMulticast(hostId, error)end
---@param hostId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.RemoveHost(hostId)end
---@param hostId System.Int32
---@param address System.String
---@param port System.Int32
---@param exeptionConnectionId System.Int32
---@param error System.Byte
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.Connect(hostId, address, port, exeptionConnectionId, error)end
---@param hostId System.Int32
---@param address System.String
---@param port System.Int32
---@param exeptionConnectionId System.Int32
---@param error System.Byte
---@param conf UnityEngine.Networking.ConnectionSimulatorConfig
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.ConnectWithSimulator(hostId, address, port, exeptionConnectionId, error, conf)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.Disconnect(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param channelId System.Int32
---@param buffer System.Byte[]
---@param size System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.Send(hostId, connectionId, channelId, buffer, size, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param channelId System.Int32
---@param buffer System.Byte[]
---@param size System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.QueueMessageForSending(hostId, connectionId, channelId, buffer, size, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.SendQueuedMessages(hostId, connectionId, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param channelId System.Int32
---@param buffer System.Byte[]
---@param bufferSize System.Int32
---@param receivedSize System.Int32
---@param error System.Byte
---@return UnityEngine.Networking.NetworkEventType
function UnityEngine.Networking.NetworkTransport.Receive(hostId, connectionId, channelId, buffer, bufferSize, receivedSize, error)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param channelId System.Int32
---@param buffer System.Byte[]
---@param bufferSize System.Int32
---@param receivedSize System.Int32
---@param error System.Byte
---@return UnityEngine.Networking.NetworkEventType
function UnityEngine.Networking.NetworkTransport.ReceiveFromHost(hostId, connectionId, channelId, buffer, bufferSize, receivedSize, error)end
---@param direction System.Int32
---@param packetStatId System.Int32
---@param numMsgs System.Int32
---@param numBytes System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkTransport.SetPacketStat(direction, packetStatId, numMsgs, numBytes)end
---@param hostId System.Int32
---@param connectionId System.Int32
---@param notificationLevel System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.NotifyWhenConnectionReadyForSend(hostId, connectionId, notificationLevel, error)end
---@param hostId System.Int32
---@return System.Int32
function UnityEngine.Networking.NetworkTransport.GetHostPort(hostId)end
---@param hostId System.Int32
---@param broadcastPort System.Int32
---@param key System.Int32
---@param version System.Int32
---@param subversion System.Int32
---@param buffer System.Byte[]
---@param size System.Int32
---@param timeout System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.StartBroadcastDiscovery(hostId, broadcastPort, key, version, subversion, buffer, size, timeout, error)end
---@return System.Void
function UnityEngine.Networking.NetworkTransport.StopBroadcastDiscovery()end
---@return System.Boolean
function UnityEngine.Networking.NetworkTransport.IsBroadcastDiscoveryRunning()end
---@param hostId System.Int32
---@param key System.Int32
---@param version System.Int32
---@param subversion System.Int32
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkTransport.SetBroadcastCredentials(hostId, key, version, subversion, error)end
---@overload fun(hostId:System.Int32, address:System.String, port:System.Int32, error:System.Byte):System.Void
---@param hostId System.Int32
---@param port System.Int32
---@param error System.Byte
---@return System.String
function UnityEngine.Networking.NetworkTransport.GetBroadcastConnectionInfo(hostId, port, error)end
---@param hostId System.Int32
---@param buffer System.Byte[]
---@param bufferSize System.Int32
---@param receivedSize System.Int32
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkTransport.GetBroadcastConnectionMessage(hostId, buffer, bufferSize, receivedSize, error)end
---@class UnityEngine.Networking.NetworkEventType : System.Enum
UnityEngine.Networking.NetworkEventType = {}
---@type UnityEngine.Networking.NetworkEventType
CS.UnityEngine.Networking.NetworkEventType = UnityEngine.Networking.NetworkEventType

---@return System.Int32 value:0
UnityEngine.Networking.NetworkEventType.DataEvent = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkEventType.ConnectEvent = 1
---@return System.Int32 value:2
UnityEngine.Networking.NetworkEventType.DisconnectEvent = 2
---@return System.Int32 value:3
UnityEngine.Networking.NetworkEventType.Nothing = 3
---@return System.Int32 value:4
UnityEngine.Networking.NetworkEventType.BroadcastEvent = 4

---@class UnityEngine.Networking.QosType : System.Enum
UnityEngine.Networking.QosType = {}
---@type UnityEngine.Networking.QosType
CS.UnityEngine.Networking.QosType = UnityEngine.Networking.QosType

---@return System.Int32 value:0
UnityEngine.Networking.QosType.Unreliable = 0
---@return System.Int32 value:1
UnityEngine.Networking.QosType.UnreliableFragmented = 1
---@return System.Int32 value:2
UnityEngine.Networking.QosType.UnreliableSequenced = 2
---@return System.Int32 value:3
UnityEngine.Networking.QosType.Reliable = 3
---@return System.Int32 value:4
UnityEngine.Networking.QosType.ReliableFragmented = 4
---@return System.Int32 value:5
UnityEngine.Networking.QosType.ReliableSequenced = 5
---@return System.Int32 value:6
UnityEngine.Networking.QosType.StateUpdate = 6
---@return System.Int32 value:7
UnityEngine.Networking.QosType.ReliableStateUpdate = 7
---@return System.Int32 value:8
UnityEngine.Networking.QosType.AllCostDelivery = 8
---@return System.Int32 value:9
UnityEngine.Networking.QosType.UnreliableFragmentedSequenced = 9
---@return System.Int32 value:10
UnityEngine.Networking.QosType.ReliableFragmentedSequenced = 10

---@class UnityEngine.Networking.NetworkError : System.Enum
UnityEngine.Networking.NetworkError = {}
---@type UnityEngine.Networking.NetworkError
CS.UnityEngine.Networking.NetworkError = UnityEngine.Networking.NetworkError

---@return System.Int32 value:0
UnityEngine.Networking.NetworkError.Ok = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkError.WrongHost = 1
---@return System.Int32 value:2
UnityEngine.Networking.NetworkError.WrongConnection = 2
---@return System.Int32 value:3
UnityEngine.Networking.NetworkError.WrongChannel = 3
---@return System.Int32 value:4
UnityEngine.Networking.NetworkError.NoResources = 4
---@return System.Int32 value:5
UnityEngine.Networking.NetworkError.BadMessage = 5
---@return System.Int32 value:6
UnityEngine.Networking.NetworkError.Timeout = 6
---@return System.Int32 value:7
UnityEngine.Networking.NetworkError.MessageToLong = 7
---@return System.Int32 value:8
UnityEngine.Networking.NetworkError.WrongOperation = 8
---@return System.Int32 value:9
UnityEngine.Networking.NetworkError.VersionMismatch = 9
---@return System.Int32 value:10
UnityEngine.Networking.NetworkError.CRCMismatch = 10
---@return System.Int32 value:11
UnityEngine.Networking.NetworkError.DNSFailure = 11
---@return System.Int32 value:12
UnityEngine.Networking.NetworkError.UsageError = 12

---@class UnityEngine.Networking.ReactorModel : System.Enum
UnityEngine.Networking.ReactorModel = {}
---@type UnityEngine.Networking.ReactorModel
CS.UnityEngine.Networking.ReactorModel = UnityEngine.Networking.ReactorModel

---@return System.Int32 value:0
UnityEngine.Networking.ReactorModel.SelectReactor = 0
---@return System.Int32 value:1
UnityEngine.Networking.ReactorModel.FixRateReactor = 1

---@class UnityEngine.Networking.ConnectionAcksType : System.Enum
UnityEngine.Networking.ConnectionAcksType = {}
---@type UnityEngine.Networking.ConnectionAcksType
CS.UnityEngine.Networking.ConnectionAcksType = UnityEngine.Networking.ConnectionAcksType

---@return System.Int32 value:1
UnityEngine.Networking.ConnectionAcksType.Acks32 = 1
---@return System.Int32 value:2
UnityEngine.Networking.ConnectionAcksType.Acks64 = 2
---@return System.Int32 value:3
UnityEngine.Networking.ConnectionAcksType.Acks96 = 3

---@class UnityEngine.Networking.ChannelQOS : System.Object
---@field public QOS UnityEngine.Networking.QosType @  getter
---@field public BelongsToSharedOrderChannel System.Boolean @  getter
UnityEngine.Networking.ChannelQOS = {}
---@type UnityEngine.Networking.ChannelQOS
CS.UnityEngine.Networking.ChannelQOS = UnityEngine.Networking.ChannelQOS

---@class UnityEngine.Networking.ConnectionConfig : System.Object
---@field public PacketSize System.UInt16 @ setter getter
---@field public FragmentSize System.UInt16 @ setter getter
---@field public ResendTimeout System.UInt32 @ setter getter
---@field public DisconnectTimeout System.UInt32 @ setter getter
---@field public ConnectTimeout System.UInt32 @ setter getter
---@field public MinUpdateTimeout System.UInt32 @ setter getter
---@field public PingTimeout System.UInt32 @ setter getter
---@field public ReducedPingTimeout System.UInt32 @ setter getter
---@field public AllCostTimeout System.UInt32 @ setter getter
---@field public NetworkDropThreshold System.Byte @ setter getter
---@field public OverflowDropThreshold System.Byte @ setter getter
---@field public MaxConnectionAttempt System.Byte @ setter getter
---@field public AckDelay System.UInt32 @ setter getter
---@field public SendDelay System.UInt32 @ setter getter
---@field public MaxCombinedReliableMessageSize System.UInt16 @ setter getter
---@field public MaxCombinedReliableMessageCount System.UInt16 @ setter getter
---@field public MaxSentMessageQueueSize System.UInt16 @ setter getter
---@field public AcksType UnityEngine.Networking.ConnectionAcksType @ setter getter
---@field public IsAcksLong System.Boolean @ setter getter
---@field public UsePlatformSpecificProtocols System.Boolean @ setter getter
---@field public InitialBandwidth System.UInt32 @ setter getter
---@field public BandwidthPeakFactor System.Single @ setter getter
---@field public WebSocketReceiveBufferMaxSize System.UInt16 @ setter getter
---@field public UdpSocketReceiveBufferMaxSize System.UInt32 @ setter getter
---@field public SSLCertFilePath System.String @ setter getter
---@field public SSLPrivateKeyFilePath System.String @ setter getter
---@field public SSLCAFilePath System.String @ setter getter
---@field public ChannelCount System.Int32 @  getter
---@field public SharedOrderChannelCount System.Int32 @  getter
---@field public Channels System.Collections.Generic.List @  getter
UnityEngine.Networking.ConnectionConfig = {}
---@type UnityEngine.Networking.ConnectionConfig
CS.UnityEngine.Networking.ConnectionConfig = UnityEngine.Networking.ConnectionConfig

---@param config UnityEngine.Networking.ConnectionConfig
---@return System.Void
function UnityEngine.Networking.ConnectionConfig.Validate(config)end
---@param value UnityEngine.Networking.QosType
---@return System.Byte
function UnityEngine.Networking.ConnectionConfig:AddChannel(value)end
---@param channelIndices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Networking.ConnectionConfig:MakeChannelsSharedOrder(channelIndices)end
---@param idx System.Byte
---@return UnityEngine.Networking.QosType
function UnityEngine.Networking.ConnectionConfig:GetChannel(idx)end
---@param idx System.Byte
---@return System.Collections.Generic.IList
function UnityEngine.Networking.ConnectionConfig:GetSharedOrderChannels(idx)end
---@class UnityEngine.Networking.HostTopology : System.Object
---@field public DefaultConfig UnityEngine.Networking.ConnectionConfig @  getter
---@field public MaxDefaultConnections System.Int32 @  getter
---@field public SpecialConnectionConfigsCount System.Int32 @  getter
---@field public SpecialConnectionConfigs System.Collections.Generic.List @  getter
---@field public ReceivedMessagePoolSize System.UInt16 @ setter getter
---@field public SentMessagePoolSize System.UInt16 @ setter getter
---@field public MessagePoolSizeGrowthFactor System.Single @ setter getter
UnityEngine.Networking.HostTopology = {}
---@type UnityEngine.Networking.HostTopology
CS.UnityEngine.Networking.HostTopology = UnityEngine.Networking.HostTopology

---@param i System.Int32
---@return UnityEngine.Networking.ConnectionConfig
function UnityEngine.Networking.HostTopology:GetSpecialConnectionConfig(i)end
---@param config UnityEngine.Networking.ConnectionConfig
---@return System.Int32
function UnityEngine.Networking.HostTopology:AddSpecialConnectionConfig(config)end
---@class UnityEngine.Networking.GlobalConfig : System.Object
---@field public ThreadAwakeTimeout System.UInt32 @ setter getter
---@field public ReactorModel UnityEngine.Networking.ReactorModel @ setter getter
---@field public ReactorMaximumReceivedMessages System.UInt16 @ setter getter
---@field public ReactorMaximumSentMessages System.UInt16 @ setter getter
---@field public MaxPacketSize System.UInt16 @ setter getter
---@field public MaxHosts System.UInt16 @ setter getter
---@field public ThreadPoolSize System.Byte @ setter getter
---@field public MinTimerTimeout System.UInt32 @ setter getter
---@field public MaxTimerTimeout System.UInt32 @ setter getter
---@field public MinNetSimulatorTimeout System.UInt32 @ setter getter
---@field public MaxNetSimulatorTimeout System.UInt32 @ setter getter
---@field public NetworkEventAvailable System.Action @ setter getter
---@field public ConnectionReadyForSend System.Action @ setter getter
UnityEngine.Networking.GlobalConfig = {}
---@type UnityEngine.Networking.GlobalConfig
CS.UnityEngine.Networking.GlobalConfig = UnityEngine.Networking.GlobalConfig

---@class UnityEngine.Networking.ConnectionSimulatorConfig : System.Object
UnityEngine.Networking.ConnectionSimulatorConfig = {}
---@type UnityEngine.Networking.ConnectionSimulatorConfig
CS.UnityEngine.Networking.ConnectionSimulatorConfig = UnityEngine.Networking.ConnectionSimulatorConfig

---@return System.Void
function UnityEngine.Networking.ConnectionSimulatorConfig:Dispose()end
---@class UnityEngine.Networking.MultipartFormDataSection : System.Object
---@field public sectionName System.String @  getter
---@field public sectionData System.Byte[] @  getter
---@field public fileName System.String @  getter
---@field public contentType System.String @  getter
UnityEngine.Networking.MultipartFormDataSection = {}
---@type UnityEngine.Networking.MultipartFormDataSection
CS.UnityEngine.Networking.MultipartFormDataSection = UnityEngine.Networking.MultipartFormDataSection

---@class UnityEngine.Networking.MultipartFormFileSection : System.Object
---@field public sectionName System.String @  getter
---@field public sectionData System.Byte[] @  getter
---@field public fileName System.String @  getter
---@field public contentType System.String @  getter
UnityEngine.Networking.MultipartFormFileSection = {}
---@type UnityEngine.Networking.MultipartFormFileSection
CS.UnityEngine.Networking.MultipartFormFileSection = UnityEngine.Networking.MultipartFormFileSection

---@class UnityEngine.Networking.UnityWebRequestAsyncOperation : UnityEngine.AsyncOperation
---@field public webRequest UnityEngine.Networking.UnityWebRequest @ setter getter
UnityEngine.Networking.UnityWebRequestAsyncOperation = {}
---@type UnityEngine.Networking.UnityWebRequestAsyncOperation
CS.UnityEngine.Networking.UnityWebRequestAsyncOperation = UnityEngine.Networking.UnityWebRequestAsyncOperation

---@class UnityEngine.Networking.UnityWebRequest : System.Object
---@field public disposeCertificateHandlerOnDispose System.Boolean @ setter getter
---@field public disposeDownloadHandlerOnDispose System.Boolean @ setter getter
---@field public disposeUploadHandlerOnDispose System.Boolean @ setter getter
---@field public method System.String @ setter getter
---@field public error System.String @  getter
---@field public useHttpContinue System.Boolean @ setter getter
---@field public url System.String @ setter getter
---@field public uri System.Uri @ setter getter
---@field public responseCode System.Int64 @  getter
---@field public uploadProgress System.Single @  getter
---@field public isModifiable System.Boolean @  getter
---@field public isDone System.Boolean @  getter
---@field public isNetworkError System.Boolean @  getter
---@field public isHttpError System.Boolean @  getter
---@field public downloadProgress System.Single @  getter
---@field public uploadedBytes System.UInt64 @  getter
---@field public downloadedBytes System.UInt64 @  getter
---@field public redirectLimit System.Int32 @ setter getter
---@field public chunkedTransfer System.Boolean @ setter getter
---@field public uploadHandler UnityEngine.Networking.UploadHandler @ setter getter
---@field public downloadHandler UnityEngine.Networking.DownloadHandler @ setter getter
---@field public certificateHandler UnityEngine.Networking.CertificateHandler @ setter getter
---@field public timeout System.Int32 @ setter getter
---@field public isError System.Boolean @  getter
---@field public kHttpVerbGET System.String
---@field public kHttpVerbHEAD System.String
---@field public kHttpVerbPOST System.String
---@field public kHttpVerbPUT System.String
---@field public kHttpVerbCREATE System.String
---@field public kHttpVerbDELETE System.String
UnityEngine.Networking.UnityWebRequest = {}
---@type UnityEngine.Networking.UnityWebRequest
CS.UnityEngine.Networking.UnityWebRequest = UnityEngine.Networking.UnityWebRequest

---@overload fun(uri:System.Uri):System.Void
---@return System.Void
function UnityEngine.Networking.UnityWebRequest.ClearCookieCache()end
---@return System.Void
function UnityEngine.Networking.UnityWebRequest:Dispose()end
---@return UnityEngine.AsyncOperation
function UnityEngine.Networking.UnityWebRequest:Send()end
---@return UnityEngine.Networking.UnityWebRequestAsyncOperation
function UnityEngine.Networking.UnityWebRequest:SendWebRequest()end
---@return System.Void
function UnityEngine.Networking.UnityWebRequest:Abort()end
---@param name System.String
---@return System.String
function UnityEngine.Networking.UnityWebRequest:GetRequestHeader(name)end
---@param name System.String
---@param value System.String
---@return System.Void
function UnityEngine.Networking.UnityWebRequest:SetRequestHeader(name, value)end
---@param name System.String
---@return System.String
function UnityEngine.Networking.UnityWebRequest:GetResponseHeader(name)end
---@return System.Collections.Generic.Dictionary
function UnityEngine.Networking.UnityWebRequest:GetResponseHeaders()end
---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Get(uri)end
---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Delete(uri)end
---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Head(uri)end
---@overload fun(uri:System.String, nonReadable:System.Boolean):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.GetTexture(uri)end
---@param uri System.String
---@param audioType UnityEngine.AudioType
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.GetAudioClip(uri, audioType)end
---@overload fun(uri:System.String, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, version:System.UInt32, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, hash:UnityEngine.Hash128, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, cachedAssetBundle:UnityEngine.CachedAssetBundle, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.GetAssetBundle(uri)end
---@overload fun(uri:System.Uri, bodyData:System.Byte[]):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, bodyData:System.String):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, bodyData:System.String):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@param bodyData System.Byte[]
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Put(uri, bodyData)end
---@overload fun(uri:System.Uri, postData:System.String):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, formData:UnityEngine.WWWForm):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, formData:UnityEngine.WWWForm):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, multipartFormSections:System.Collections.Generic.List):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, multipartFormSections:System.Collections.Generic.List):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, formFields:System.Collections.Generic.Dictionary):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, formFields:System.Collections.Generic.Dictionary):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, multipartFormSections:System.Collections.Generic.List, boundary:System.Byte[]):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, multipartFormSections:System.Collections.Generic.List, boundary:System.Byte[]):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@param postData System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Post(uri, postData)end
---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityEngine.Networking.UnityWebRequest.EscapeURL(s)end
---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityEngine.Networking.UnityWebRequest.UnEscapeURL(s)end
---@param multipartFormSections System.Collections.Generic.List
---@param boundary System.Byte[]
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.SerializeFormSections(multipartFormSections, boundary)end
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.GenerateBoundary()end
---@param formFields System.Collections.Generic.Dictionary
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.SerializeSimpleForm(formFields)end
---@class UnityEngine.Networking.CertificateHandler : System.Object
UnityEngine.Networking.CertificateHandler = {}
---@type UnityEngine.Networking.CertificateHandler
CS.UnityEngine.Networking.CertificateHandler = UnityEngine.Networking.CertificateHandler

---@return System.Void
function UnityEngine.Networking.CertificateHandler:Dispose()end
---@class UnityEngine.Networking.DownloadHandler : System.Object
---@field public isDone System.Boolean @  getter
---@field public data System.Byte[] @  getter
---@field public text System.String @  getter
UnityEngine.Networking.DownloadHandler = {}
---@type UnityEngine.Networking.DownloadHandler
CS.UnityEngine.Networking.DownloadHandler = UnityEngine.Networking.DownloadHandler

---@return System.Void
function UnityEngine.Networking.DownloadHandler:Dispose()end
---@class UnityEngine.Networking.DownloadHandlerBuffer : UnityEngine.Networking.DownloadHandler
UnityEngine.Networking.DownloadHandlerBuffer = {}
---@type UnityEngine.Networking.DownloadHandlerBuffer
CS.UnityEngine.Networking.DownloadHandlerBuffer = UnityEngine.Networking.DownloadHandlerBuffer

---@param www UnityEngine.Networking.UnityWebRequest
---@return System.String
function UnityEngine.Networking.DownloadHandlerBuffer.GetContent(www)end
---@class UnityEngine.Networking.DownloadHandlerScript : UnityEngine.Networking.DownloadHandler
UnityEngine.Networking.DownloadHandlerScript = {}
---@type UnityEngine.Networking.DownloadHandlerScript
CS.UnityEngine.Networking.DownloadHandlerScript = UnityEngine.Networking.DownloadHandlerScript

---@class UnityEngine.Networking.DownloadHandlerFile : UnityEngine.Networking.DownloadHandler
---@field public removeFileOnAbort System.Boolean @ setter getter
UnityEngine.Networking.DownloadHandlerFile = {}
---@type UnityEngine.Networking.DownloadHandlerFile
CS.UnityEngine.Networking.DownloadHandlerFile = UnityEngine.Networking.DownloadHandlerFile

---@class UnityEngine.Networking.UploadHandler : System.Object
---@field public data System.Byte[] @  getter
---@field public contentType System.String @ setter getter
---@field public progress System.Single @  getter
UnityEngine.Networking.UploadHandler = {}
---@type UnityEngine.Networking.UploadHandler
CS.UnityEngine.Networking.UploadHandler = UnityEngine.Networking.UploadHandler

---@return System.Void
function UnityEngine.Networking.UploadHandler:Dispose()end
---@class UnityEngine.Networking.UploadHandlerRaw : UnityEngine.Networking.UploadHandler
UnityEngine.Networking.UploadHandlerRaw = {}
---@type UnityEngine.Networking.UploadHandlerRaw
CS.UnityEngine.Networking.UploadHandlerRaw = UnityEngine.Networking.UploadHandlerRaw

---@class UnityEngine.Networking.UploadHandlerFile : UnityEngine.Networking.UploadHandler
UnityEngine.Networking.UploadHandlerFile = {}
---@type UnityEngine.Networking.UploadHandlerFile
CS.UnityEngine.Networking.UploadHandlerFile = UnityEngine.Networking.UploadHandlerFile

---@class UnityEngine.Networking.UnityWebRequestAssetBundle : System.Object
UnityEngine.Networking.UnityWebRequestAssetBundle = {}
---@type UnityEngine.Networking.UnityWebRequestAssetBundle
CS.UnityEngine.Networking.UnityWebRequestAssetBundle = UnityEngine.Networking.UnityWebRequestAssetBundle

---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, version:System.UInt32, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, version:System.UInt32, crc:System.UInt32):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, hash:UnityEngine.Hash128):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, hash:UnityEngine.Hash128):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, hash:UnityEngine.Hash128):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, hash:UnityEngine.Hash128):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, cachedAssetBundle:UnityEngine.CachedAssetBundle):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, cachedAssetBundle:UnityEngine.CachedAssetBundle):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, cachedAssetBundle:UnityEngine.CachedAssetBundle):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, cachedAssetBundle:UnityEngine.CachedAssetBundle):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestAssetBundle.GetAssetBundle(uri)end
---@class UnityEngine.Networking.DownloadHandlerAssetBundle : UnityEngine.Networking.DownloadHandler
---@field public assetBundle UnityEngine.AssetBundle @  getter
UnityEngine.Networking.DownloadHandlerAssetBundle = {}
---@type UnityEngine.Networking.DownloadHandlerAssetBundle
CS.UnityEngine.Networking.DownloadHandlerAssetBundle = UnityEngine.Networking.DownloadHandlerAssetBundle

---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.AssetBundle
function UnityEngine.Networking.DownloadHandlerAssetBundle.GetContent(www)end
---@class UnityEngine.Networking.UnityWebRequestMultimedia : System.Object
UnityEngine.Networking.UnityWebRequestMultimedia = {}
---@type UnityEngine.Networking.UnityWebRequestMultimedia
CS.UnityEngine.Networking.UnityWebRequestMultimedia = UnityEngine.Networking.UnityWebRequestMultimedia

---@overload fun(uri:System.Uri, audioType:UnityEngine.AudioType):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@param audioType UnityEngine.AudioType
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestMultimedia.GetAudioClip(uri, audioType)end
---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestMultimedia.GetMovieTexture(uri)end
---@class UnityEngine.Networking.DownloadHandlerAudioClip : UnityEngine.Networking.DownloadHandler
---@field public audioClip UnityEngine.AudioClip @  getter
---@field public streamAudio System.Boolean @ setter getter
---@field public compressed System.Boolean @ setter getter
UnityEngine.Networking.DownloadHandlerAudioClip = {}
---@type UnityEngine.Networking.DownloadHandlerAudioClip
CS.UnityEngine.Networking.DownloadHandlerAudioClip = UnityEngine.Networking.DownloadHandlerAudioClip

---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.AudioClip
function UnityEngine.Networking.DownloadHandlerAudioClip.GetContent(www)end
---@class UnityEngine.Networking.DownloadHandlerMovieTexture : UnityEngine.Networking.DownloadHandler
---@field public movieTexture UnityEngine.MovieTexture @  getter
UnityEngine.Networking.DownloadHandlerMovieTexture = {}
---@type UnityEngine.Networking.DownloadHandlerMovieTexture
CS.UnityEngine.Networking.DownloadHandlerMovieTexture = UnityEngine.Networking.DownloadHandlerMovieTexture

---@param uwr UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.MovieTexture
function UnityEngine.Networking.DownloadHandlerMovieTexture.GetContent(uwr)end
---@class UnityEngine.Networking.UnityWebRequestTexture : System.Object
UnityEngine.Networking.UnityWebRequestTexture = {}
---@type UnityEngine.Networking.UnityWebRequestTexture
CS.UnityEngine.Networking.UnityWebRequestTexture = UnityEngine.Networking.UnityWebRequestTexture

---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, nonReadable:System.Boolean):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, nonReadable:System.Boolean):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestTexture.GetTexture(uri)end
---@class UnityEngine.Networking.DownloadHandlerTexture : UnityEngine.Networking.DownloadHandler
---@field public texture UnityEngine.Texture2D @  getter
UnityEngine.Networking.DownloadHandlerTexture = {}
---@type UnityEngine.Networking.DownloadHandlerTexture
CS.UnityEngine.Networking.DownloadHandlerTexture = UnityEngine.Networking.DownloadHandlerTexture

---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.Texture2D
function UnityEngine.Networking.DownloadHandlerTexture.GetContent(www)end
---@class UnityEngine.Networking.ClientScene : System.Object
---@field public localPlayers System.Collections.Generic.List @static  getter
---@field public ready System.Boolean @static  getter
---@field public readyConnection UnityEngine.Networking.NetworkConnection @static  getter
---@field public reconnectId System.Int32 @static  getter
---@field public objects System.Collections.Generic.Dictionary @static  getter
---@field public prefabs System.Collections.Generic.Dictionary @static  getter
---@field public spawnableObjects System.Collections.Generic.Dictionary @static  getter
---@field public ReconnectIdInvalid System.Int32
---@field public ReconnectIdHost System.Int32
UnityEngine.Networking.ClientScene = {}
---@type UnityEngine.Networking.ClientScene
CS.UnityEngine.Networking.ClientScene = UnityEngine.Networking.ClientScene

---@param newReconnectId System.Int32
---@param peers UnityEngine.Networking.NetworkSystem.PeerInfoMessage[]
---@return System.Void
function UnityEngine.Networking.ClientScene.SetReconnectId(newReconnectId, peers)end
---@overload fun(readyConn:UnityEngine.Networking.NetworkConnection, playerControllerId:System.Int16):System.Boolean
---@overload fun(readyConn:UnityEngine.Networking.NetworkConnection, playerControllerId:System.Int16, extraMessage:UnityEngine.Networking.MessageBase):System.Boolean
---@param playerControllerId System.Int16
---@return System.Boolean
function UnityEngine.Networking.ClientScene.AddPlayer(playerControllerId)end
---@param extraMessage UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.ClientScene.SendReconnectMessage(extraMessage)end
---@param playerControllerId System.Int16
---@return System.Boolean
function UnityEngine.Networking.ClientScene.RemovePlayer(playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.ClientScene.Ready(conn)end
---@return UnityEngine.Networking.NetworkClient
function UnityEngine.Networking.ClientScene.ConnectLocalServer()end
---@overload fun(prefab:UnityEngine.GameObject, newAssetId:UnityEngine.Networking.NetworkHash128):System.Void
---@overload fun(prefab:UnityEngine.GameObject, spawnHandler:UnityEngine.Networking.SpawnDelegate, unspawnHandler:UnityEngine.Networking.UnSpawnDelegate):System.Void
---@param prefab UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.ClientScene.RegisterPrefab(prefab)end
---@param prefab UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.ClientScene.UnregisterPrefab(prefab)end
---@param assetId UnityEngine.Networking.NetworkHash128
---@param spawnHandler UnityEngine.Networking.SpawnDelegate
---@param unspawnHandler UnityEngine.Networking.UnSpawnDelegate
---@return System.Void
function UnityEngine.Networking.ClientScene.RegisterSpawnHandler(assetId, spawnHandler, unspawnHandler)end
---@param assetId UnityEngine.Networking.NetworkHash128
---@return System.Void
function UnityEngine.Networking.ClientScene.UnregisterSpawnHandler(assetId)end
---@return System.Void
function UnityEngine.Networking.ClientScene.ClearSpawners()end
---@return System.Void
function UnityEngine.Networking.ClientScene.DestroyAllClientObjects()end
---@param netId UnityEngine.Networking.NetworkInstanceId
---@param obj UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.ClientScene.SetLocalObject(netId, obj)end
---@param netId UnityEngine.Networking.NetworkInstanceId
---@return UnityEngine.GameObject
function UnityEngine.Networking.ClientScene.FindLocalObject(netId)end
---@class UnityEngine.Networking.NetworkSettingsAttribute : System.Attribute
---@field public channel System.Int32
---@field public sendInterval System.Single
UnityEngine.Networking.NetworkSettingsAttribute = {}
---@type UnityEngine.Networking.NetworkSettingsAttribute
CS.UnityEngine.Networking.NetworkSettingsAttribute = UnityEngine.Networking.NetworkSettingsAttribute

---@class UnityEngine.Networking.SyncVarAttribute : System.Attribute
---@field public hook System.String
UnityEngine.Networking.SyncVarAttribute = {}
---@type UnityEngine.Networking.SyncVarAttribute
CS.UnityEngine.Networking.SyncVarAttribute = UnityEngine.Networking.SyncVarAttribute

---@class UnityEngine.Networking.CommandAttribute : System.Attribute
---@field public channel System.Int32
UnityEngine.Networking.CommandAttribute = {}
---@type UnityEngine.Networking.CommandAttribute
CS.UnityEngine.Networking.CommandAttribute = UnityEngine.Networking.CommandAttribute

---@class UnityEngine.Networking.ClientRpcAttribute : System.Attribute
---@field public channel System.Int32
UnityEngine.Networking.ClientRpcAttribute = {}
---@type UnityEngine.Networking.ClientRpcAttribute
CS.UnityEngine.Networking.ClientRpcAttribute = UnityEngine.Networking.ClientRpcAttribute

---@class UnityEngine.Networking.TargetRpcAttribute : System.Attribute
---@field public channel System.Int32
UnityEngine.Networking.TargetRpcAttribute = {}
---@type UnityEngine.Networking.TargetRpcAttribute
CS.UnityEngine.Networking.TargetRpcAttribute = UnityEngine.Networking.TargetRpcAttribute

---@class UnityEngine.Networking.SyncEventAttribute : System.Attribute
---@field public channel System.Int32
UnityEngine.Networking.SyncEventAttribute = {}
---@type UnityEngine.Networking.SyncEventAttribute
CS.UnityEngine.Networking.SyncEventAttribute = UnityEngine.Networking.SyncEventAttribute

---@class UnityEngine.Networking.ServerAttribute : System.Attribute
UnityEngine.Networking.ServerAttribute = {}
---@type UnityEngine.Networking.ServerAttribute
CS.UnityEngine.Networking.ServerAttribute = UnityEngine.Networking.ServerAttribute

---@class UnityEngine.Networking.ServerCallbackAttribute : System.Attribute
UnityEngine.Networking.ServerCallbackAttribute = {}
---@type UnityEngine.Networking.ServerCallbackAttribute
CS.UnityEngine.Networking.ServerCallbackAttribute = UnityEngine.Networking.ServerCallbackAttribute

---@class UnityEngine.Networking.ClientAttribute : System.Attribute
UnityEngine.Networking.ClientAttribute = {}
---@type UnityEngine.Networking.ClientAttribute
CS.UnityEngine.Networking.ClientAttribute = UnityEngine.Networking.ClientAttribute

---@class UnityEngine.Networking.ClientCallbackAttribute : System.Attribute
UnityEngine.Networking.ClientCallbackAttribute = {}
---@type UnityEngine.Networking.ClientCallbackAttribute
CS.UnityEngine.Networking.ClientCallbackAttribute = UnityEngine.Networking.ClientCallbackAttribute

---@class UnityEngine.Networking.LogFilter : System.Object
---@field public currentLogLevel System.Int32 @static setter getter
---@field public logDebug System.Boolean @static  getter
---@field public logInfo System.Boolean @static  getter
---@field public logWarn System.Boolean @static  getter
---@field public logError System.Boolean @static  getter
---@field public logFatal System.Boolean @static  getter
---@field public Debug System.Int32
---@field public Info System.Int32
---@field public Warn System.Int32
---@field public Error System.Int32
---@field public Fatal System.Int32
---@field public current UnityEngine.Networking.LogFilter.FilterLevel
UnityEngine.Networking.LogFilter = {}
---@type UnityEngine.Networking.LogFilter
CS.UnityEngine.Networking.LogFilter = UnityEngine.Networking.LogFilter

---@class UnityEngine.Networking.LogFilter.FilterLevel : System.Enum
UnityEngine.Networking.LogFilter.FilterLevel = {}
---@type UnityEngine.Networking.LogFilter.FilterLevel
CS.UnityEngine.Networking.LogFilter.FilterLevel = UnityEngine.Networking.LogFilter.FilterLevel

---@return System.Int32 value:0
UnityEngine.Networking.LogFilter.FilterLevel.Developer = 0
---@return System.Int32 value:1
UnityEngine.Networking.LogFilter.FilterLevel.Debug = 1
---@return System.Int32 value:2
UnityEngine.Networking.LogFilter.FilterLevel.Info = 2
---@return System.Int32 value:3
UnityEngine.Networking.LogFilter.FilterLevel.Warn = 3
---@return System.Int32 value:4
UnityEngine.Networking.LogFilter.FilterLevel.Error = 4
---@return System.Int32 value:5
UnityEngine.Networking.LogFilter.FilterLevel.Fatal = 5

---@class UnityEngine.Networking.MessageBase : System.Object
UnityEngine.Networking.MessageBase = {}
---@type UnityEngine.Networking.MessageBase
CS.UnityEngine.Networking.MessageBase = UnityEngine.Networking.MessageBase

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.MessageBase:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.MessageBase:Serialize(writer)end
---@class UnityEngine.Networking.NetworkAnimator : UnityEngine.Networking.NetworkBehaviour
---@field public animator UnityEngine.Animator @ setter getter
---@field public param0 System.String
---@field public param1 System.String
---@field public param2 System.String
---@field public param3 System.String
---@field public param4 System.String
---@field public param5 System.String
UnityEngine.Networking.NetworkAnimator = {}
---@type UnityEngine.Networking.NetworkAnimator
CS.UnityEngine.Networking.NetworkAnimator = UnityEngine.Networking.NetworkAnimator

---@param index System.Int32
---@param value System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkAnimator:SetParameterAutoSend(index, value)end
---@param index System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkAnimator:GetParameterAutoSend(index)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param forceAll System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkAnimator:OnSerialize(writer, forceAll)end
---@param reader UnityEngine.Networking.NetworkReader
---@param initialState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkAnimator:OnDeserialize(reader, initialState)end
---@overload fun(triggerName:System.String):System.Void
---@param hash System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkAnimator:SetTrigger(hash)end
---@class UnityEngine.Networking.NetworkBehaviour : UnityEngine.MonoBehaviour
---@field public localPlayerAuthority System.Boolean @  getter
---@field public isServer System.Boolean @  getter
---@field public isClient System.Boolean @  getter
---@field public isLocalPlayer System.Boolean @  getter
---@field public hasAuthority System.Boolean @  getter
---@field public netId UnityEngine.Networking.NetworkInstanceId @  getter
---@field public connectionToServer UnityEngine.Networking.NetworkConnection @  getter
---@field public connectionToClient UnityEngine.Networking.NetworkConnection @  getter
---@field public playerControllerId System.Int16 @  getter
UnityEngine.Networking.NetworkBehaviour = {}
---@type UnityEngine.Networking.NetworkBehaviour
CS.UnityEngine.Networking.NetworkBehaviour = UnityEngine.Networking.NetworkBehaviour

---@param cmdHash System.Int32
---@param reader UnityEngine.Networking.NetworkReader
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:InvokeCommand(cmdHash, reader)end
---@param cmdHash System.Int32
---@param reader UnityEngine.Networking.NetworkReader
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:InvokeRPC(cmdHash, reader)end
---@param cmdHash System.Int32
---@param reader UnityEngine.Networking.NetworkReader
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:InvokeSyncEvent(cmdHash, reader)end
---@param cmdHash System.Int32
---@param reader UnityEngine.Networking.NetworkReader
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:InvokeSyncList(cmdHash, reader)end
---@param dirtyBit System.UInt32
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:SetDirtyBit(dirtyBit)end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:ClearAllDirtyBits()end
---@param writer UnityEngine.Networking.NetworkWriter
---@param initialState System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:OnSerialize(writer, initialState)end
---@param reader UnityEngine.Networking.NetworkReader
---@param initialState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnDeserialize(reader, initialState)end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:PreStartClient()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnNetworkDestroy()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnStartServer()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnStartClient()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnStartLocalPlayer()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnStartAuthority()end
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnStopAuthority()end
---@param observers System.Collections.Generic.HashSet
---@param initialize System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:OnRebuildObservers(observers, initialize)end
---@param vis System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkBehaviour:OnSetLocalVisibility(vis)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkBehaviour:OnCheckObserver(conn)end
---@return System.Int32
function UnityEngine.Networking.NetworkBehaviour:GetNetworkChannel()end
---@return System.Single
function UnityEngine.Networking.NetworkBehaviour:GetNetworkSendInterval()end
---@class UnityEngine.Networking.NetworkClient : System.Object
---@field public allClients System.Collections.Generic.List @static  getter
---@field public active System.Boolean @static  getter
---@field public serverIp System.String @  getter
---@field public serverPort System.Int32 @  getter
---@field public connection UnityEngine.Networking.NetworkConnection @  getter
---@field public peers UnityEngine.Networking.NetworkSystem.PeerInfoMessage[] @  getter
---@field public handlers System.Collections.Generic.Dictionary @  getter
---@field public numChannels System.Int32 @  getter
---@field public hostTopology UnityEngine.Networking.HostTopology @  getter
---@field public hostPort System.Int32 @ setter getter
---@field public isConnected System.Boolean @  getter
---@field public networkConnectionClass System.Type @  getter
UnityEngine.Networking.NetworkClient = {}
---@type UnityEngine.Networking.NetworkClient
CS.UnityEngine.Networking.NetworkClient = UnityEngine.Networking.NetworkClient

---@return System.Void
function UnityEngine.Networking.NetworkClient:SetNetworkConnectionClass()end
---@overload fun(config:UnityEngine.Networking.ConnectionConfig, maxConnections:System.Int32):System.Boolean
---@param topology UnityEngine.Networking.HostTopology
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:Configure(topology)end
---@overload fun(secureTunnelEndPoint:System.Net.EndPoint):System.Void
---@overload fun(serverIp:System.String, serverPort:System.Int32):System.Void
---@param matchInfo UnityEngine.Networking.Match.MatchInfo
---@return System.Void
function UnityEngine.Networking.NetworkClient:Connect(matchInfo)end
---@overload fun(serverIp:System.String, serverPort:System.Int32):System.Boolean
---@param secureTunnelEndPoint System.Net.EndPoint
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:ReconnectToNewHost(secureTunnelEndPoint)end
---@param serverIp System.String
---@param serverPort System.Int32
---@param latency System.Int32
---@param packetLoss System.Single
---@return System.Void
function UnityEngine.Networking.NetworkClient:ConnectWithSimulator(serverIp, serverPort, latency, packetLoss)end
---@return System.Void
function UnityEngine.Networking.NetworkClient:Disconnect()end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:Send(msgType, msg)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:SendWriter(writer, channelId)end
---@param data System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:SendBytes(data, numBytes, channelId)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:SendUnreliable(msgType, msg)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkClient:SendByChannel(msgType, msg, channelId)end
---@param seconds System.Single
---@return System.Void
function UnityEngine.Networking.NetworkClient:SetMaxDelay(seconds)end
---@return System.Void
function UnityEngine.Networking.NetworkClient:Shutdown()end
---@param numMsgs System.Int32
---@param numBufferedMsgs System.Int32
---@param numBytes System.Int32
---@param lastBufferedPerSecond System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkClient:GetStatsOut(numMsgs, numBufferedMsgs, numBytes, lastBufferedPerSecond)end
---@param numMsgs System.Int32
---@param numBytes System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkClient:GetStatsIn(numMsgs, numBytes)end
---@return System.Collections.Generic.Dictionary
function UnityEngine.Networking.NetworkClient:GetConnectionStats()end
---@return System.Void
function UnityEngine.Networking.NetworkClient:ResetConnectionStats()end
---@return System.Int32
function UnityEngine.Networking.NetworkClient:GetRTT()end
---@param msgType System.Int16
---@param handler UnityEngine.Networking.NetworkMessageDelegate
---@return System.Void
function UnityEngine.Networking.NetworkClient:RegisterHandler(msgType, handler)end
---@param msgType System.Int16
---@param handler UnityEngine.Networking.NetworkMessageDelegate
---@return System.Void
function UnityEngine.Networking.NetworkClient:RegisterHandlerSafe(msgType, handler)end
---@param msgType System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkClient:UnregisterHandler(msgType)end
---@return System.Collections.Generic.Dictionary
function UnityEngine.Networking.NetworkClient.GetTotalConnectionStats()end
---@return System.Void
function UnityEngine.Networking.NetworkClient.ShutdownAll()end
---@class UnityEngine.Networking.NetworkConnection : System.Object
---@field public playerControllers System.Collections.Generic.List @  getter
---@field public clientOwnedObjects System.Collections.Generic.HashSet @  getter
---@field public isConnected System.Boolean @  getter
---@field public lastError UnityEngine.Networking.NetworkError @ setter getter
---@field public hostId System.Int32
---@field public connectionId System.Int32
---@field public isReady System.Boolean
---@field public address System.String
---@field public lastMessageTime System.Single
---@field public logNetworkMessages System.Boolean
UnityEngine.Networking.NetworkConnection = {}
---@type UnityEngine.Networking.NetworkConnection
CS.UnityEngine.Networking.NetworkConnection = UnityEngine.Networking.NetworkConnection

---@param networkAddress System.String
---@param networkHostId System.Int32
---@param networkConnectionId System.Int32
---@param hostTopology UnityEngine.Networking.HostTopology
---@return System.Void
function UnityEngine.Networking.NetworkConnection:Initialize(networkAddress, networkHostId, networkConnectionId, hostTopology)end
---@return System.Void
function UnityEngine.Networking.NetworkConnection:Dispose()end
---@param channelId System.Int32
---@param option UnityEngine.Networking.ChannelOption
---@param value System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:SetChannelOption(channelId, option, value)end
---@return System.Void
function UnityEngine.Networking.NetworkConnection:Disconnect()end
---@param msgType System.Int16
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:CheckHandler(msgType)end
---@param msgType System.Int16
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:InvokeHandlerNoData(msgType)end
---@overload fun(msgType:System.Int16, reader:UnityEngine.Networking.NetworkReader, channelId:System.Int32):System.Boolean
---@param netMsg UnityEngine.Networking.NetworkMessage
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:InvokeHandler(netMsg)end
---@param msgType System.Int16
---@param handler UnityEngine.Networking.NetworkMessageDelegate
---@return System.Void
function UnityEngine.Networking.NetworkConnection:RegisterHandler(msgType, handler)end
---@param msgType System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkConnection:UnregisterHandler(msgType)end
---@return System.Void
function UnityEngine.Networking.NetworkConnection:FlushChannels()end
---@param seconds System.Single
---@return System.Void
function UnityEngine.Networking.NetworkConnection:SetMaxDelay(seconds)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:Send(msgType, msg)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:SendUnreliable(msgType, msg)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:SendByChannel(msgType, msg, channelId)end
---@param bytes System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:SendBytes(bytes, numBytes, channelId)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:SendWriter(writer, channelId)end
---@return System.Void
function UnityEngine.Networking.NetworkConnection:ResetStats()end
---@param numMsgs System.Int32
---@param numBufferedMsgs System.Int32
---@param numBytes System.Int32
---@param lastBufferedPerSecond System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkConnection:GetStatsOut(numMsgs, numBufferedMsgs, numBytes, lastBufferedPerSecond)end
---@param numMsgs System.Int32
---@param numBytes System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkConnection:GetStatsIn(numMsgs, numBytes)end
---@return System.String
function UnityEngine.Networking.NetworkConnection:ToString()end
---@param bytes System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkConnection:TransportReceive(bytes, numBytes, channelId)end
---@param bytes System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkConnection:TransportRecieve(bytes, numBytes, channelId)end
---@param bytes System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@param error System.Byte
---@return System.Boolean
function UnityEngine.Networking.NetworkConnection:TransportSend(bytes, numBytes, channelId, error)end
---@class UnityEngine.Networking.NetworkConnection.PacketStat : System.Object
---@field public msgType System.Int16
---@field public count System.Int32
---@field public bytes System.Int32
UnityEngine.Networking.NetworkConnection.PacketStat = {}
---@type UnityEngine.Networking.NetworkConnection.PacketStat
CS.UnityEngine.Networking.NetworkConnection.PacketStat = UnityEngine.Networking.NetworkConnection.PacketStat

---@return System.String
function UnityEngine.Networking.NetworkConnection.PacketStat:ToString()end
---@class UnityEngine.Networking.NetworkCRC : System.Object
---@field public scripts System.Collections.Generic.Dictionary @  getter
---@field public scriptCRCCheck System.Boolean @static setter getter
UnityEngine.Networking.NetworkCRC = {}
---@type UnityEngine.Networking.NetworkCRC
CS.UnityEngine.Networking.NetworkCRC = UnityEngine.Networking.NetworkCRC

---@param callingAssembly System.Reflection.Assembly
---@return System.Void
function UnityEngine.Networking.NetworkCRC.ReinitializeScriptCRCs(callingAssembly)end
---@param name System.String
---@param channel System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkCRC.RegisterBehaviour(name, channel)end
---@class UnityEngine.Networking.NetworkBroadcastResult : System.ValueType
---@field public serverAddress System.String
---@field public broadcastData System.Byte[]
UnityEngine.Networking.NetworkBroadcastResult = {}
---@type UnityEngine.Networking.NetworkBroadcastResult
CS.UnityEngine.Networking.NetworkBroadcastResult = UnityEngine.Networking.NetworkBroadcastResult

---@class UnityEngine.Networking.NetworkDiscovery : UnityEngine.MonoBehaviour
---@field public broadcastPort System.Int32 @ setter getter
---@field public broadcastKey System.Int32 @ setter getter
---@field public broadcastVersion System.Int32 @ setter getter
---@field public broadcastSubVersion System.Int32 @ setter getter
---@field public broadcastInterval System.Int32 @ setter getter
---@field public useNetworkManager System.Boolean @ setter getter
---@field public broadcastData System.String @ setter getter
---@field public showGUI System.Boolean @ setter getter
---@field public offsetX System.Int32 @ setter getter
---@field public offsetY System.Int32 @ setter getter
---@field public hostId System.Int32 @ setter getter
---@field public running System.Boolean @ setter getter
---@field public isServer System.Boolean @ setter getter
---@field public isClient System.Boolean @ setter getter
---@field public broadcastsReceived System.Collections.Generic.Dictionary @  getter
UnityEngine.Networking.NetworkDiscovery = {}
---@type UnityEngine.Networking.NetworkDiscovery
CS.UnityEngine.Networking.NetworkDiscovery = UnityEngine.Networking.NetworkDiscovery

---@return System.Boolean
function UnityEngine.Networking.NetworkDiscovery:Initialize()end
---@return System.Boolean
function UnityEngine.Networking.NetworkDiscovery:StartAsClient()end
---@return System.Boolean
function UnityEngine.Networking.NetworkDiscovery:StartAsServer()end
---@return System.Void
function UnityEngine.Networking.NetworkDiscovery:StopBroadcast()end
---@param fromAddress System.String
---@param data System.String
---@return System.Void
function UnityEngine.Networking.NetworkDiscovery:OnReceivedBroadcast(fromAddress, data)end
---@class UnityEngine.Networking.NetworkHash128 : System.ValueType
---@field public i0 System.Byte
---@field public i1 System.Byte
---@field public i2 System.Byte
---@field public i3 System.Byte
---@field public i4 System.Byte
---@field public i5 System.Byte
---@field public i6 System.Byte
---@field public i7 System.Byte
---@field public i8 System.Byte
---@field public i9 System.Byte
---@field public i10 System.Byte
---@field public i11 System.Byte
---@field public i12 System.Byte
---@field public i13 System.Byte
---@field public i14 System.Byte
---@field public i15 System.Byte
UnityEngine.Networking.NetworkHash128 = {}
---@type UnityEngine.Networking.NetworkHash128
CS.UnityEngine.Networking.NetworkHash128 = UnityEngine.Networking.NetworkHash128

---@return System.Void
function UnityEngine.Networking.NetworkHash128:Reset()end
---@return System.Boolean
function UnityEngine.Networking.NetworkHash128:IsValid()end
---@param text System.String
---@return UnityEngine.Networking.NetworkHash128
function UnityEngine.Networking.NetworkHash128.Parse(text)end
---@return System.String
function UnityEngine.Networking.NetworkHash128:ToString()end
---@class UnityEngine.Networking.NetworkIdentity : UnityEngine.MonoBehaviour
---@field public isClient System.Boolean @  getter
---@field public isServer System.Boolean @  getter
---@field public hasAuthority System.Boolean @  getter
---@field public netId UnityEngine.Networking.NetworkInstanceId @  getter
---@field public sceneId UnityEngine.Networking.NetworkSceneId @  getter
---@field public serverOnly System.Boolean @ setter getter
---@field public localPlayerAuthority System.Boolean @ setter getter
---@field public clientAuthorityOwner UnityEngine.Networking.NetworkConnection @  getter
---@field public assetId UnityEngine.Networking.NetworkHash128 @  getter
---@field public isLocalPlayer System.Boolean @  getter
---@field public playerControllerId System.Int16 @  getter
---@field public connectionToServer UnityEngine.Networking.NetworkConnection @  getter
---@field public connectionToClient UnityEngine.Networking.NetworkConnection @  getter
---@field public observers System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public clientAuthorityCallback UnityEngine.Networking.NetworkIdentity.ClientAuthorityCallback
UnityEngine.Networking.NetworkIdentity = {}
---@type UnityEngine.Networking.NetworkIdentity
CS.UnityEngine.Networking.NetworkIdentity = UnityEngine.Networking.NetworkIdentity

---@param newSceneId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkIdentity:ForceSceneId(newSceneId)end
---@param initialize System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkIdentity:RebuildObservers(initialize)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkIdentity:RemoveClientAuthority(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkIdentity:AssignClientAuthority(conn)end
---@class UnityEngine.Networking.NetworkInstanceId : System.ValueType
---@field public Value System.UInt32 @  getter
---@field public Invalid UnityEngine.Networking.NetworkInstanceId
UnityEngine.Networking.NetworkInstanceId = {}
---@type UnityEngine.Networking.NetworkInstanceId
CS.UnityEngine.Networking.NetworkInstanceId = UnityEngine.Networking.NetworkInstanceId

---@return System.Boolean
function UnityEngine.Networking.NetworkInstanceId:IsEmpty()end
---@return System.Int32
function UnityEngine.Networking.NetworkInstanceId:GetHashCode()end
---@overload fun(other:UnityEngine.Networking.NetworkInstanceId):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Networking.NetworkInstanceId:Equals(obj)end
---@param c1 UnityEngine.Networking.NetworkInstanceId
---@param c2 UnityEngine.Networking.NetworkInstanceId
---@return System.Boolean
function UnityEngine.Networking.NetworkInstanceId.op_Equality(c1, c2)end
---@param c1 UnityEngine.Networking.NetworkInstanceId
---@param c2 UnityEngine.Networking.NetworkInstanceId
---@return System.Boolean
function UnityEngine.Networking.NetworkInstanceId.op_Inequality(c1, c2)end
---@return System.String
function UnityEngine.Networking.NetworkInstanceId:ToString()end
---@class UnityEngine.Networking.NetworkLobbyManager : UnityEngine.Networking.NetworkManager
---@field public showLobbyGUI System.Boolean @ setter getter
---@field public maxPlayers System.Int32 @ setter getter
---@field public maxPlayersPerConnection System.Int32 @ setter getter
---@field public minPlayers System.Int32 @ setter getter
---@field public lobbyPlayerPrefab UnityEngine.Networking.NetworkLobbyPlayer @ setter getter
---@field public gamePlayerPrefab UnityEngine.GameObject @ setter getter
---@field public lobbyScene System.String @ setter getter
---@field public playScene System.String @ setter getter
---@field public lobbySlots UnityEngine.Networking.NetworkLobbyPlayer[]
UnityEngine.Networking.NetworkLobbyManager = {}
---@type UnityEngine.Networking.NetworkLobbyManager
CS.UnityEngine.Networking.NetworkLobbyManager = UnityEngine.Networking.NetworkLobbyManager

---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:CheckReadyToBegin()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:ServerReturnToLobby()end
---@return System.Boolean
function UnityEngine.Networking.NetworkLobbyManager:SendReturnToLobby()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnServerConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnServerDisconnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param playerControllerId System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnServerAddPlayer(conn, playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param player UnityEngine.Networking.PlayerController
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnServerRemovePlayer(conn, player)end
---@param sceneName System.String
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:ServerChangeScene(sceneName)end
---@param sceneName System.String
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnServerSceneChanged(sceneName)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnStartServer()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnStartHost()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnStopHost()end
---@param lobbyClient UnityEngine.Networking.NetworkClient
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnStartClient(lobbyClient)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnClientConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnClientDisconnect(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnStopClient()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnClientSceneChanged(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyStartHost()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyStopHost()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyStartServer()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerDisconnect(conn)end
---@param sceneName System.String
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerSceneChanged(sceneName)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param playerControllerId System.Int16
---@return UnityEngine.GameObject
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerCreateLobbyPlayer(conn, playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param playerControllerId System.Int16
---@return UnityEngine.GameObject
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerCreateGamePlayer(conn, playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param playerControllerId System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerPlayerRemoved(conn, playerControllerId)end
---@param lobbyPlayer UnityEngine.GameObject
---@param gamePlayer UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerSceneLoadedForPlayer(lobbyPlayer, gamePlayer)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyServerPlayersReady()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientEnter()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientExit()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientDisconnect(conn)end
---@param lobbyClient UnityEngine.Networking.NetworkClient
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyStartClient(lobbyClient)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyStopClient()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientSceneChanged(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:OnLobbyClientAddPlayerFailed()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyManager:TryToAddPlayer()end
---@class UnityEngine.Networking.NetworkLobbyPlayer : UnityEngine.Networking.NetworkBehaviour
---@field public slot System.Byte @ setter getter
---@field public readyToBegin System.Boolean @ setter getter
---@field public ShowLobbyGUI System.Boolean
UnityEngine.Networking.NetworkLobbyPlayer = {}
---@type UnityEngine.Networking.NetworkLobbyPlayer
CS.UnityEngine.Networking.NetworkLobbyPlayer = UnityEngine.Networking.NetworkLobbyPlayer

---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:OnStartClient()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:SendReadyToBeginMessage()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:SendNotReadyToBeginMessage()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:SendSceneLoadedMessage()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:RemovePlayer()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:OnClientEnterLobby()end
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:OnClientExitLobby()end
---@param readyState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:OnClientReady(readyState)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param initialState System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkLobbyPlayer:OnSerialize(writer, initialState)end
---@param reader UnityEngine.Networking.NetworkReader
---@param initialState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkLobbyPlayer:OnDeserialize(reader, initialState)end
---@class UnityEngine.Networking.PlayerSpawnMethod : System.Enum
UnityEngine.Networking.PlayerSpawnMethod = {}
---@type UnityEngine.Networking.PlayerSpawnMethod
CS.UnityEngine.Networking.PlayerSpawnMethod = UnityEngine.Networking.PlayerSpawnMethod

---@return System.Int32 value:0
UnityEngine.Networking.PlayerSpawnMethod.Random = 0
---@return System.Int32 value:1
UnityEngine.Networking.PlayerSpawnMethod.RoundRobin = 1

---@class UnityEngine.Networking.NetworkManager : UnityEngine.MonoBehaviour
---@field public networkPort System.Int32 @ setter getter
---@field public serverBindToIP System.Boolean @ setter getter
---@field public serverBindAddress System.String @ setter getter
---@field public networkAddress System.String @ setter getter
---@field public dontDestroyOnLoad System.Boolean @ setter getter
---@field public runInBackground System.Boolean @ setter getter
---@field public scriptCRCCheck System.Boolean @ setter getter
---@field public sendPeerInfo System.Boolean @ setter getter
---@field public maxDelay System.Single @ setter getter
---@field public logLevel UnityEngine.Networking.LogFilter.FilterLevel @ setter getter
---@field public playerPrefab UnityEngine.GameObject @ setter getter
---@field public autoCreatePlayer System.Boolean @ setter getter
---@field public playerSpawnMethod UnityEngine.Networking.PlayerSpawnMethod @ setter getter
---@field public offlineScene System.String @ setter getter
---@field public onlineScene System.String @ setter getter
---@field public spawnPrefabs System.Collections.Generic.List @  getter
---@field public startPositions System.Collections.Generic.List @  getter
---@field public customConfig System.Boolean @ setter getter
---@field public connectionConfig UnityEngine.Networking.ConnectionConfig @  getter
---@field public globalConfig UnityEngine.Networking.GlobalConfig @  getter
---@field public maxConnections System.Int32 @ setter getter
---@field public channels System.Collections.Generic.List @  getter
---@field public secureTunnelEndpoint System.Net.EndPoint @ setter getter
---@field public useWebSockets System.Boolean @ setter getter
---@field public useSimulator System.Boolean @ setter getter
---@field public simulatedLatency System.Int32 @ setter getter
---@field public packetLossPercentage System.Single @ setter getter
---@field public matchHost System.String @ setter getter
---@field public matchPort System.Int32 @ setter getter
---@field public clientLoadedScene System.Boolean @ setter getter
---@field public migrationManager UnityEngine.Networking.NetworkMigrationManager @  getter
---@field public numPlayers System.Int32 @  getter
---@field public defaultTransport UnityEngine.Networking.INetworkTransport @static  getter
---@field public activeTransport UnityEngine.Networking.INetworkTransport @static setter getter
---@field public matchName System.String
---@field public matchSize System.UInt32
---@field public networkSceneName System.String
---@field public isNetworkActive System.Boolean
---@field public client UnityEngine.Networking.NetworkClient
---@field public matchInfo UnityEngine.Networking.Match.MatchInfo
---@field public matchMaker UnityEngine.Networking.Match.NetworkMatch
---@field public matches System.Collections.Generic.List
---@field public singleton UnityEngine.Networking.NetworkManager
UnityEngine.Networking.NetworkManager = {}
---@type UnityEngine.Networking.NetworkManager
CS.UnityEngine.Networking.NetworkManager = UnityEngine.Networking.NetworkManager

---@param man UnityEngine.Networking.NetworkMigrationManager
---@return System.Void
function UnityEngine.Networking.NetworkManager:SetupMigrationManager(man)end
---@overload fun(info:UnityEngine.Networking.Match.MatchInfo):System.Boolean
---@overload fun(config:UnityEngine.Networking.ConnectionConfig, maxConnections:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkManager:StartServer()end
---@param externalClient UnityEngine.Networking.NetworkClient
---@return System.Void
function UnityEngine.Networking.NetworkManager:UseExternalClient(externalClient)end
---@overload fun(matchInfo:UnityEngine.Networking.Match.MatchInfo):UnityEngine.Networking.NetworkClient
---@overload fun(info:UnityEngine.Networking.Match.MatchInfo, config:UnityEngine.Networking.ConnectionConfig):UnityEngine.Networking.NetworkClient
---@overload fun(info:UnityEngine.Networking.Match.MatchInfo, config:UnityEngine.Networking.ConnectionConfig, hostPort:System.Int32):UnityEngine.Networking.NetworkClient
---@return UnityEngine.Networking.NetworkClient
function UnityEngine.Networking.NetworkManager:StartClient()end
---@overload fun(info:UnityEngine.Networking.Match.MatchInfo):UnityEngine.Networking.NetworkClient
---@overload fun(config:UnityEngine.Networking.ConnectionConfig, maxConnections:System.Int32):UnityEngine.Networking.NetworkClient
---@return UnityEngine.Networking.NetworkClient
function UnityEngine.Networking.NetworkManager:StartHost()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:StopHost()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:StopServer()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:StopClient()end
---@param newSceneName System.String
---@return System.Void
function UnityEngine.Networking.NetworkManager:ServerChangeScene(newSceneName)end
---@param start UnityEngine.Transform
---@return System.Void
function UnityEngine.Networking.NetworkManager.RegisterStartPosition(start)end
---@param start UnityEngine.Transform
---@return System.Void
function UnityEngine.Networking.NetworkManager.UnRegisterStartPosition(start)end
---@return System.Boolean
function UnityEngine.Networking.NetworkManager:IsClientConnected()end
---@return System.Void
function UnityEngine.Networking.NetworkManager.Shutdown()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerDisconnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerReady(conn)end
---@overload fun(conn:UnityEngine.Networking.NetworkConnection, playerControllerId:System.Int16, extraMessageReader:UnityEngine.Networking.NetworkReader):System.Void
---@param conn UnityEngine.Networking.NetworkConnection
---@param playerControllerId System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerAddPlayer(conn, playerControllerId)end
---@return UnityEngine.Transform
function UnityEngine.Networking.NetworkManager:GetStartPosition()end
---@param conn UnityEngine.Networking.NetworkConnection
---@param player UnityEngine.Networking.PlayerController
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerRemovePlayer(conn, player)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param errorCode System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerError(conn, errorCode)end
---@param sceneName System.String
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnServerSceneChanged(sceneName)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnClientConnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnClientDisconnect(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param errorCode System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnClientError(conn, errorCode)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnClientNotReady(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnClientSceneChanged(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkManager:StartMatchMaker()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:StopMatchMaker()end
---@param newHost System.String
---@param port System.Int32
---@param https System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkManager:SetMatchHost(newHost, port, https)end
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStartHost()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStartServer()end
---@param client UnityEngine.Networking.NetworkClient
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStartClient(client)end
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStopServer()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStopClient()end
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnStopHost()end
---@param success System.Boolean
---@param extendedInfo System.String
---@param matchInfo UnityEngine.Networking.Match.MatchInfo
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnMatchCreate(success, extendedInfo, matchInfo)end
---@param success System.Boolean
---@param extendedInfo System.String
---@param matchList System.Collections.Generic.List
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnMatchList(success, extendedInfo, matchList)end
---@param success System.Boolean
---@param extendedInfo System.String
---@param matchInfo UnityEngine.Networking.Match.MatchInfo
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnMatchJoined(success, extendedInfo, matchInfo)end
---@param success System.Boolean
---@param extendedInfo System.String
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnDestroyMatch(success, extendedInfo)end
---@param success System.Boolean
---@param extendedInfo System.String
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnDropConnection(success, extendedInfo)end
---@param success System.Boolean
---@param extendedInfo System.String
---@return System.Void
function UnityEngine.Networking.NetworkManager:OnSetMatchAttributes(success, extendedInfo)end
---@class UnityEngine.Networking.NetworkManagerHUD : UnityEngine.MonoBehaviour
---@field public manager UnityEngine.Networking.NetworkManager
---@field public showGUI System.Boolean
---@field public offsetX System.Int32
---@field public offsetY System.Int32
UnityEngine.Networking.NetworkManagerHUD = {}
---@type UnityEngine.Networking.NetworkManagerHUD
CS.UnityEngine.Networking.NetworkManagerHUD = UnityEngine.Networking.NetworkManagerHUD

---@class UnityEngine.Networking.NetworkMigrationManager : UnityEngine.MonoBehaviour
---@field public hostMigration System.Boolean @ setter getter
---@field public showGUI System.Boolean @ setter getter
---@field public offsetX System.Int32 @ setter getter
---@field public offsetY System.Int32 @ setter getter
---@field public client UnityEngine.Networking.NetworkClient @  getter
---@field public waitingToBecomeNewHost System.Boolean @ setter getter
---@field public waitingReconnectToNewHost System.Boolean @ setter getter
---@field public disconnectedFromHost System.Boolean @  getter
---@field public hostWasShutdown System.Boolean @  getter
---@field public matchInfo UnityEngine.Networking.Match.MatchInfo @  getter
---@field public oldServerConnectionId System.Int32 @  getter
---@field public newHostAddress System.String @ setter getter
---@field public peers UnityEngine.Networking.NetworkSystem.PeerInfoMessage[] @  getter
---@field public pendingPlayers System.Collections.Generic.Dictionary @  getter
UnityEngine.Networking.NetworkMigrationManager = {}
---@type UnityEngine.Networking.NetworkMigrationManager
CS.UnityEngine.Networking.NetworkMigrationManager = UnityEngine.Networking.NetworkMigrationManager

---@param reconnectId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkMigrationManager:Reset(reconnectId)end
---@param newClient UnityEngine.Networking.NetworkClient
---@param newMatchInfo UnityEngine.Networking.Match.MatchInfo
---@return System.Void
function UnityEngine.Networking.NetworkMigrationManager:Initialize(newClient, newMatchInfo)end
---@return System.Void
function UnityEngine.Networking.NetworkMigrationManager:DisablePlayerObjects()end
---@return System.Void
function UnityEngine.Networking.NetworkMigrationManager:SendPeerInfo()end
---@param newConnection UnityEngine.Networking.NetworkConnection
---@param oldObject UnityEngine.GameObject
---@param oldConnectionId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkMigrationManager:ReconnectObjectForConnection(newConnection, oldObject, oldConnectionId)end
---@param newConnection UnityEngine.Networking.NetworkConnection
---@param oldPlayer UnityEngine.GameObject
---@param oldConnectionId System.Int32
---@param playerControllerId System.Int16
---@return System.Boolean
function UnityEngine.Networking.NetworkMigrationManager:ReconnectPlayerForConnection(newConnection, oldPlayer, oldConnectionId, playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkMigrationManager:LostHostOnClient(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkMigrationManager:LostHostOnHost()end
---@param port System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkMigrationManager:BecomeNewHost(port)end
---@param newHostInfo UnityEngine.Networking.NetworkSystem.PeerInfoMessage
---@param youAreNewHost System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkMigrationManager:FindNewHost(newHostInfo, youAreNewHost)end
---@class UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption : System.Enum
UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption = {}
---@type UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption
CS.UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption = UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption

---@return System.Int32 value:0
UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption.StayInOnlineScene = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkMigrationManager.SceneChangeOption.SwitchToOfflineScene = 1

---@class UnityEngine.Networking.NetworkMigrationManager.PendingPlayerInfo : System.ValueType
---@field public netId UnityEngine.Networking.NetworkInstanceId
---@field public playerControllerId System.Int16
---@field public obj UnityEngine.GameObject
UnityEngine.Networking.NetworkMigrationManager.PendingPlayerInfo = {}
---@type UnityEngine.Networking.NetworkMigrationManager.PendingPlayerInfo
CS.UnityEngine.Networking.NetworkMigrationManager.PendingPlayerInfo = UnityEngine.Networking.NetworkMigrationManager.PendingPlayerInfo

---@class UnityEngine.Networking.NetworkMigrationManager.ConnectionPendingPlayers : System.ValueType
---@field public players System.Collections.Generic.List
UnityEngine.Networking.NetworkMigrationManager.ConnectionPendingPlayers = {}
---@type UnityEngine.Networking.NetworkMigrationManager.ConnectionPendingPlayers
CS.UnityEngine.Networking.NetworkMigrationManager.ConnectionPendingPlayers = UnityEngine.Networking.NetworkMigrationManager.ConnectionPendingPlayers

---@class UnityEngine.Networking.NetworkProximityChecker : UnityEngine.Networking.NetworkBehaviour
---@field public visRange System.Int32
---@field public visUpdateInterval System.Single
---@field public checkMethod UnityEngine.Networking.NetworkProximityChecker.CheckMethod
---@field public forceHidden System.Boolean
UnityEngine.Networking.NetworkProximityChecker = {}
---@type UnityEngine.Networking.NetworkProximityChecker
CS.UnityEngine.Networking.NetworkProximityChecker = UnityEngine.Networking.NetworkProximityChecker

---@param newObserver UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkProximityChecker:OnCheckObserver(newObserver)end
---@param observers System.Collections.Generic.HashSet
---@param initial System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkProximityChecker:OnRebuildObservers(observers, initial)end
---@param vis System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkProximityChecker:OnSetLocalVisibility(vis)end
---@class UnityEngine.Networking.NetworkProximityChecker.CheckMethod : System.Enum
UnityEngine.Networking.NetworkProximityChecker.CheckMethod = {}
---@type UnityEngine.Networking.NetworkProximityChecker.CheckMethod
CS.UnityEngine.Networking.NetworkProximityChecker.CheckMethod = UnityEngine.Networking.NetworkProximityChecker.CheckMethod

---@return System.Int32 value:0
UnityEngine.Networking.NetworkProximityChecker.CheckMethod.Physics3D = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkProximityChecker.CheckMethod.Physics2D = 1

---@class UnityEngine.Networking.NetworkReader : System.Object
---@field public Position System.UInt32 @  getter
---@field public Length System.Int32 @  getter
UnityEngine.Networking.NetworkReader = {}
---@type UnityEngine.Networking.NetworkReader
CS.UnityEngine.Networking.NetworkReader = UnityEngine.Networking.NetworkReader

---@return System.Void
function UnityEngine.Networking.NetworkReader:SeekZero()end
---@return System.UInt32
function UnityEngine.Networking.NetworkReader:ReadPackedUInt32()end
---@return System.UInt64
function UnityEngine.Networking.NetworkReader:ReadPackedUInt64()end
---@return UnityEngine.Networking.NetworkInstanceId
function UnityEngine.Networking.NetworkReader:ReadNetworkId()end
---@return UnityEngine.Networking.NetworkSceneId
function UnityEngine.Networking.NetworkReader:ReadSceneId()end
---@return System.Byte
function UnityEngine.Networking.NetworkReader:ReadByte()end
---@return System.SByte
function UnityEngine.Networking.NetworkReader:ReadSByte()end
---@return System.Int16
function UnityEngine.Networking.NetworkReader:ReadInt16()end
---@return System.UInt16
function UnityEngine.Networking.NetworkReader:ReadUInt16()end
---@return System.Int32
function UnityEngine.Networking.NetworkReader:ReadInt32()end
---@return System.UInt32
function UnityEngine.Networking.NetworkReader:ReadUInt32()end
---@return System.Int64
function UnityEngine.Networking.NetworkReader:ReadInt64()end
---@return System.UInt64
function UnityEngine.Networking.NetworkReader:ReadUInt64()end
---@return System.Decimal
function UnityEngine.Networking.NetworkReader:ReadDecimal()end
---@return System.Single
function UnityEngine.Networking.NetworkReader:ReadSingle()end
---@return System.Double
function UnityEngine.Networking.NetworkReader:ReadDouble()end
---@return System.String
function UnityEngine.Networking.NetworkReader:ReadString()end
---@return System.Char
function UnityEngine.Networking.NetworkReader:ReadChar()end
---@return System.Boolean
function UnityEngine.Networking.NetworkReader:ReadBoolean()end
---@param count System.Int32
---@return System.Byte[]
function UnityEngine.Networking.NetworkReader:ReadBytes(count)end
---@return System.Byte[]
function UnityEngine.Networking.NetworkReader:ReadBytesAndSize()end
---@return UnityEngine.Vector2
function UnityEngine.Networking.NetworkReader:ReadVector2()end
---@return UnityEngine.Vector3
function UnityEngine.Networking.NetworkReader:ReadVector3()end
---@return UnityEngine.Vector4
function UnityEngine.Networking.NetworkReader:ReadVector4()end
---@return UnityEngine.Color
function UnityEngine.Networking.NetworkReader:ReadColor()end
---@return UnityEngine.Color32
function UnityEngine.Networking.NetworkReader:ReadColor32()end
---@return UnityEngine.Quaternion
function UnityEngine.Networking.NetworkReader:ReadQuaternion()end
---@return UnityEngine.Rect
function UnityEngine.Networking.NetworkReader:ReadRect()end
---@return UnityEngine.Plane
function UnityEngine.Networking.NetworkReader:ReadPlane()end
---@return UnityEngine.Ray
function UnityEngine.Networking.NetworkReader:ReadRay()end
---@return UnityEngine.Matrix4x4
function UnityEngine.Networking.NetworkReader:ReadMatrix4x4()end
---@return UnityEngine.Networking.NetworkHash128
function UnityEngine.Networking.NetworkReader:ReadNetworkHash128()end
---@return UnityEngine.Transform
function UnityEngine.Networking.NetworkReader:ReadTransform()end
---@return UnityEngine.GameObject
function UnityEngine.Networking.NetworkReader:ReadGameObject()end
---@return UnityEngine.Networking.NetworkIdentity
function UnityEngine.Networking.NetworkReader:ReadNetworkIdentity()end
---@return System.String
function UnityEngine.Networking.NetworkReader:ToString()end
---@return any
function UnityEngine.Networking.NetworkReader:ReadMessage()end
---@class UnityEngine.Networking.NetworkSceneId : System.ValueType
---@field public Value System.UInt32 @  getter
UnityEngine.Networking.NetworkSceneId = {}
---@type UnityEngine.Networking.NetworkSceneId
CS.UnityEngine.Networking.NetworkSceneId = UnityEngine.Networking.NetworkSceneId

---@return System.Boolean
function UnityEngine.Networking.NetworkSceneId:IsEmpty()end
---@return System.Int32
function UnityEngine.Networking.NetworkSceneId:GetHashCode()end
---@overload fun(other:UnityEngine.Networking.NetworkSceneId):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Networking.NetworkSceneId:Equals(obj)end
---@param c1 UnityEngine.Networking.NetworkSceneId
---@param c2 UnityEngine.Networking.NetworkSceneId
---@return System.Boolean
function UnityEngine.Networking.NetworkSceneId.op_Equality(c1, c2)end
---@param c1 UnityEngine.Networking.NetworkSceneId
---@param c2 UnityEngine.Networking.NetworkSceneId
---@return System.Boolean
function UnityEngine.Networking.NetworkSceneId.op_Inequality(c1, c2)end
---@return System.String
function UnityEngine.Networking.NetworkSceneId:ToString()end
---@class UnityEngine.Networking.NetworkServer : System.Object
---@field public localConnections System.Collections.Generic.List @static  getter
---@field public listenPort System.Int32 @static  getter
---@field public serverHostId System.Int32 @static  getter
---@field public connections System.Collections.ObjectModel.ReadOnlyCollection @static  getter
---@field public handlers System.Collections.Generic.Dictionary @static  getter
---@field public hostTopology UnityEngine.Networking.HostTopology @static  getter
---@field public objects System.Collections.Generic.Dictionary @static  getter
---@field public sendPeerInfo System.Boolean @static setter getter
---@field public dontListen System.Boolean @static setter getter
---@field public useWebSockets System.Boolean @static setter getter
---@field public active System.Boolean @static  getter
---@field public localClientActive System.Boolean @static  getter
---@field public numChannels System.Int32 @static  getter
---@field public maxDelay System.Single @static setter getter
---@field public networkConnectionClass System.Type @static  getter
UnityEngine.Networking.NetworkServer = {}
---@type UnityEngine.Networking.NetworkServer
CS.UnityEngine.Networking.NetworkServer = UnityEngine.Networking.NetworkServer

---@return System.Void
function UnityEngine.Networking.NetworkServer.SetNetworkConnectionClass()end
---@overload fun(config:UnityEngine.Networking.ConnectionConfig, maxConnections:System.Int32):System.Boolean
---@param topology UnityEngine.Networking.HostTopology
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.Configure(topology)end
---@return System.Void
function UnityEngine.Networking.NetworkServer.Reset()end
---@return System.Void
function UnityEngine.Networking.NetworkServer.Shutdown()end
---@overload fun(matchInfo:UnityEngine.Networking.Match.MatchInfo, listenPort:System.Int32):System.Boolean
---@overload fun(ipAddress:System.String, serverPort:System.Int32):System.Boolean
---@param serverPort System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.Listen(serverPort)end
---@param relayIp System.String
---@param relayPort System.Int32
---@param netGuid UnityEngine.Networking.Types.NetworkID
---@param sourceId UnityEngine.Networking.Types.SourceID
---@param nodeId UnityEngine.Networking.Types.NodeID
---@return System.Void
function UnityEngine.Networking.NetworkServer.ListenRelay(relayIp, relayPort, netGuid, sourceId, nodeId)end
---@param oldClient UnityEngine.Networking.NetworkClient
---@param port System.Int32
---@param matchInfo UnityEngine.Networking.Match.MatchInfo
---@param oldConnectionId System.Int32
---@param peers UnityEngine.Networking.NetworkSystem.PeerInfoMessage[]
---@return UnityEngine.Networking.NetworkClient
function UnityEngine.Networking.NetworkServer.BecomeHost(oldClient, port, matchInfo, oldConnectionId, peers)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendToAll(msgType, msg)end
---@param contextObj UnityEngine.GameObject
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendToReady(contextObj, msgType, msg)end
---@param contextObj UnityEngine.GameObject
---@param writer UnityEngine.Networking.NetworkWriter
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.SendWriterToReady(contextObj, writer, channelId)end
---@param contextObj UnityEngine.GameObject
---@param buffer System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.SendBytesToReady(contextObj, buffer, numBytes, channelId)end
---@param player UnityEngine.GameObject
---@param buffer System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.SendBytesToPlayer(player, buffer, numBytes, channelId)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendUnreliableToAll(msgType, msg)end
---@param contextObj UnityEngine.GameObject
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendUnreliableToReady(contextObj, msgType, msg)end
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendByChannelToAll(msgType, msg, channelId)end
---@param contextObj UnityEngine.GameObject
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@param channelId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SendByChannelToReady(contextObj, msgType, msg, channelId)end
---@return System.Void
function UnityEngine.Networking.NetworkServer.DisconnectAll()end
---@param msgType System.Int16
---@param handler UnityEngine.Networking.NetworkMessageDelegate
---@return System.Void
function UnityEngine.Networking.NetworkServer.RegisterHandler(msgType, handler)end
---@param msgType System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkServer.UnregisterHandler(msgType)end
---@return System.Void
function UnityEngine.Networking.NetworkServer.ClearHandlers()end
---@return System.Void
function UnityEngine.Networking.NetworkServer.ClearSpawners()end
---@param numMsgs System.Int32
---@param numBufferedMsgs System.Int32
---@param numBytes System.Int32
---@param lastBufferedPerSecond System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.GetStatsOut(numMsgs, numBufferedMsgs, numBytes, lastBufferedPerSecond)end
---@param numMsgs System.Int32
---@param numBytes System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.GetStatsIn(numMsgs, numBytes)end
---@param player UnityEngine.GameObject
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Void
function UnityEngine.Networking.NetworkServer.SendToClientOfPlayer(player, msgType, msg)end
---@param connectionId System.Int32
---@param msgType System.Int16
---@param msg UnityEngine.Networking.MessageBase
---@return System.Void
function UnityEngine.Networking.NetworkServer.SendToClient(connectionId, msgType, msg)end
---@overload fun(conn:UnityEngine.Networking.NetworkConnection, player:UnityEngine.GameObject, playerControllerId:System.Int16, assetId:UnityEngine.Networking.NetworkHash128):System.Boolean
---@param conn UnityEngine.Networking.NetworkConnection
---@param player UnityEngine.GameObject
---@param playerControllerId System.Int16
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.ReplacePlayerForConnection(conn, player, playerControllerId)end
---@overload fun(conn:UnityEngine.Networking.NetworkConnection, player:UnityEngine.GameObject, playerControllerId:System.Int16, assetId:UnityEngine.Networking.NetworkHash128):System.Boolean
---@param conn UnityEngine.Networking.NetworkConnection
---@param player UnityEngine.GameObject
---@param playerControllerId System.Int16
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.AddPlayerForConnection(conn, player, playerControllerId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServer.SetClientReady(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkServer.SetAllClientsNotReady()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServer.SetClientNotReady(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServer.DestroyPlayersForConnection(conn)end
---@return System.Void
function UnityEngine.Networking.NetworkServer.ClearLocalObjects()end
---@overload fun(obj:UnityEngine.GameObject, assetId:UnityEngine.Networking.NetworkHash128):System.Void
---@param obj UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.NetworkServer.Spawn(obj)end
---@overload fun(obj:UnityEngine.GameObject, conn:UnityEngine.Networking.NetworkConnection):System.Boolean
---@overload fun(obj:UnityEngine.GameObject, assetId:UnityEngine.Networking.NetworkHash128, conn:UnityEngine.Networking.NetworkConnection):System.Boolean
---@param obj UnityEngine.GameObject
---@param player UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SpawnWithClientAuthority(obj, player)end
---@param obj UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.NetworkServer.Destroy(obj)end
---@param obj UnityEngine.GameObject
---@return System.Void
function UnityEngine.Networking.NetworkServer.UnSpawn(obj)end
---@param netId UnityEngine.Networking.NetworkInstanceId
---@return UnityEngine.GameObject
function UnityEngine.Networking.NetworkServer.FindLocalObject(netId)end
---@return System.Collections.Generic.Dictionary
function UnityEngine.Networking.NetworkServer.GetConnectionStats()end
---@return System.Void
function UnityEngine.Networking.NetworkServer.ResetConnectionStats()end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.AddExternalConnection(conn)end
---@param connectionId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServer.RemoveExternalConnection(connectionId)end
---@return System.Boolean
function UnityEngine.Networking.NetworkServer.SpawnObjects()end
---@param targetConnection UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServer:SendNetworkInfo(targetConnection)end
---@class UnityEngine.Networking.NetworkServerSimple : System.Object
---@field public listenPort System.Int32 @ setter getter
---@field public serverHostId System.Int32 @ setter getter
---@field public hostTopology UnityEngine.Networking.HostTopology @  getter
---@field public useWebSockets System.Boolean @ setter getter
---@field public connections System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public handlers System.Collections.Generic.Dictionary @  getter
---@field public messageBuffer System.Byte[] @  getter
---@field public messageReader UnityEngine.Networking.NetworkReader @  getter
---@field public networkConnectionClass System.Type @  getter
UnityEngine.Networking.NetworkServerSimple = {}
---@type UnityEngine.Networking.NetworkServerSimple
CS.UnityEngine.Networking.NetworkServerSimple = UnityEngine.Networking.NetworkServerSimple

---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:SetNetworkConnectionClass()end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:Initialize()end
---@overload fun(config:UnityEngine.Networking.ConnectionConfig, maxConnections:System.Int32):System.Boolean
---@param topology UnityEngine.Networking.HostTopology
---@return System.Boolean
function UnityEngine.Networking.NetworkServerSimple:Configure(topology)end
---@overload fun(ipAddress:System.String, serverListenPort:System.Int32):System.Boolean
---@overload fun(serverListenPort:System.Int32, topology:UnityEngine.Networking.HostTopology):System.Boolean
---@param serverListenPort System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkServerSimple:Listen(serverListenPort)end
---@param relayIp System.String
---@param relayPort System.Int32
---@param netGuid UnityEngine.Networking.Types.NetworkID
---@param sourceId UnityEngine.Networking.Types.SourceID
---@param nodeId UnityEngine.Networking.Types.NodeID
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:ListenRelay(relayIp, relayPort, netGuid, sourceId, nodeId)end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:Stop()end
---@param msgType System.Int16
---@param handler UnityEngine.Networking.NetworkMessageDelegate
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:RegisterHandler(msgType, handler)end
---@param msgType System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:UnregisterHandler(msgType)end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:ClearHandlers()end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:UpdateConnections()end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:Update()end
---@param connectionId System.Int32
---@return UnityEngine.Networking.NetworkConnection
function UnityEngine.Networking.NetworkServerSimple:FindConnection(connectionId)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Boolean
function UnityEngine.Networking.NetworkServerSimple:SetConnectionAtIndex(conn)end
---@param connectionId System.Int32
---@return System.Boolean
function UnityEngine.Networking.NetworkServerSimple:RemoveConnectionAtIndex(connectionId)end
---@param connectionId System.Int32
---@param bytes System.Byte[]
---@param numBytes System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:SendBytesTo(connectionId, bytes, numBytes, channelId)end
---@param connectionId System.Int32
---@param writer UnityEngine.Networking.NetworkWriter
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:SendWriterTo(connectionId, writer, channelId)end
---@param connectionId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:Disconnect(connectionId)end
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:DisconnectAllConnections()end
---@param connectionId System.Int32
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnConnectError(connectionId, error)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnDataError(conn, error)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param error System.Byte
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnDisconnectError(conn, error)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnConnected(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnDisconnected(conn)end
---@param conn UnityEngine.Networking.NetworkConnection
---@param receivedSize System.Int32
---@param channelId System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkServerSimple:OnData(conn, receivedSize, channelId)end
---@class UnityEngine.Networking.NetworkStartPosition : UnityEngine.MonoBehaviour
UnityEngine.Networking.NetworkStartPosition = {}
---@type UnityEngine.Networking.NetworkStartPosition
CS.UnityEngine.Networking.NetworkStartPosition = UnityEngine.Networking.NetworkStartPosition

---@return System.Void
function UnityEngine.Networking.NetworkStartPosition:Awake()end
---@return System.Void
function UnityEngine.Networking.NetworkStartPosition:OnDestroy()end
---@class UnityEngine.Networking.NetworkTransformChild : UnityEngine.Networking.NetworkBehaviour
---@field public target UnityEngine.Transform @ setter getter
---@field public childIndex System.UInt32 @  getter
---@field public sendInterval System.Single @ setter getter
---@field public syncRotationAxis UnityEngine.Networking.NetworkTransform.AxisSyncMode @ setter getter
---@field public rotationSyncCompression UnityEngine.Networking.NetworkTransform.CompressionSyncMode @ setter getter
---@field public movementThreshold System.Single @ setter getter
---@field public interpolateRotation System.Single @ setter getter
---@field public interpolateMovement System.Single @ setter getter
---@field public clientMoveCallback3D UnityEngine.Networking.NetworkTransform.ClientMoveCallback3D @ setter getter
---@field public lastSyncTime System.Single @  getter
---@field public targetSyncPosition UnityEngine.Vector3 @  getter
---@field public targetSyncRotation3D UnityEngine.Quaternion @  getter
UnityEngine.Networking.NetworkTransformChild = {}
---@type UnityEngine.Networking.NetworkTransformChild
CS.UnityEngine.Networking.NetworkTransformChild = UnityEngine.Networking.NetworkTransformChild

---@param writer UnityEngine.Networking.NetworkWriter
---@param initialState System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkTransformChild:OnSerialize(writer, initialState)end
---@param reader UnityEngine.Networking.NetworkReader
---@param initialState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkTransformChild:OnDeserialize(reader, initialState)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransformChild:GetNetworkChannel()end
---@return System.Single
function UnityEngine.Networking.NetworkTransformChild:GetNetworkSendInterval()end
---@class UnityEngine.Networking.NetworkTransform : UnityEngine.Networking.NetworkBehaviour
---@field public transformSyncMode UnityEngine.Networking.NetworkTransform.TransformSyncMode @ setter getter
---@field public sendInterval System.Single @ setter getter
---@field public syncRotationAxis UnityEngine.Networking.NetworkTransform.AxisSyncMode @ setter getter
---@field public rotationSyncCompression UnityEngine.Networking.NetworkTransform.CompressionSyncMode @ setter getter
---@field public syncSpin System.Boolean @ setter getter
---@field public movementTheshold System.Single @ setter getter
---@field public velocityThreshold System.Single @ setter getter
---@field public snapThreshold System.Single @ setter getter
---@field public interpolateRotation System.Single @ setter getter
---@field public interpolateMovement System.Single @ setter getter
---@field public clientMoveCallback3D UnityEngine.Networking.NetworkTransform.ClientMoveCallback3D @ setter getter
---@field public clientMoveCallback2D UnityEngine.Networking.NetworkTransform.ClientMoveCallback2D @ setter getter
---@field public characterContoller UnityEngine.CharacterController @  getter
---@field public rigidbody3D UnityEngine.Rigidbody @  getter
---@field public rigidbody2D UnityEngine.Rigidbody2D @  getter
---@field public lastSyncTime System.Single @  getter
---@field public targetSyncPosition UnityEngine.Vector3 @  getter
---@field public targetSyncVelocity UnityEngine.Vector3 @  getter
---@field public targetSyncRotation3D UnityEngine.Quaternion @  getter
---@field public targetSyncRotation2D System.Single @  getter
---@field public grounded System.Boolean @ setter getter
UnityEngine.Networking.NetworkTransform = {}
---@type UnityEngine.Networking.NetworkTransform
CS.UnityEngine.Networking.NetworkTransform = UnityEngine.Networking.NetworkTransform

---@return System.Void
function UnityEngine.Networking.NetworkTransform:OnStartServer()end
---@param writer UnityEngine.Networking.NetworkWriter
---@param initialState System.Boolean
---@return System.Boolean
function UnityEngine.Networking.NetworkTransform:OnSerialize(writer, initialState)end
---@param reader UnityEngine.Networking.NetworkReader
---@param initialState System.Boolean
---@return System.Void
function UnityEngine.Networking.NetworkTransform:OnDeserialize(reader, initialState)end
---@param netMsg UnityEngine.Networking.NetworkMessage
---@return System.Void
function UnityEngine.Networking.NetworkTransform.HandleTransform(netMsg)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param velocity UnityEngine.Vector3
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeVelocity3D(writer, velocity, compression)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param velocity UnityEngine.Vector2
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeVelocity2D(writer, velocity, compression)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param rot UnityEngine.Quaternion
---@param mode UnityEngine.Networking.NetworkTransform.AxisSyncMode
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeRotation3D(writer, rot, mode, compression)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param rot System.Single
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeRotation2D(writer, rot, compression)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param angularVelocity UnityEngine.Vector3
---@param mode UnityEngine.Networking.NetworkTransform.AxisSyncMode
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeSpin3D(writer, angularVelocity, mode, compression)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param angularVelocity System.Single
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Void
function UnityEngine.Networking.NetworkTransform.SerializeSpin2D(writer, angularVelocity, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return UnityEngine.Vector3
function UnityEngine.Networking.NetworkTransform.UnserializeVelocity3D(reader, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return UnityEngine.Vector3
function UnityEngine.Networking.NetworkTransform.UnserializeVelocity2D(reader, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param mode UnityEngine.Networking.NetworkTransform.AxisSyncMode
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return UnityEngine.Quaternion
function UnityEngine.Networking.NetworkTransform.UnserializeRotation3D(reader, mode, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Single
function UnityEngine.Networking.NetworkTransform.UnserializeRotation2D(reader, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param mode UnityEngine.Networking.NetworkTransform.AxisSyncMode
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return UnityEngine.Vector3
function UnityEngine.Networking.NetworkTransform.UnserializeSpin3D(reader, mode, compression)end
---@param reader UnityEngine.Networking.NetworkReader
---@param compression UnityEngine.Networking.NetworkTransform.CompressionSyncMode
---@return System.Single
function UnityEngine.Networking.NetworkTransform.UnserializeSpin2D(reader, compression)end
---@return System.Int32
function UnityEngine.Networking.NetworkTransform:GetNetworkChannel()end
---@return System.Single
function UnityEngine.Networking.NetworkTransform:GetNetworkSendInterval()end
---@return System.Void
function UnityEngine.Networking.NetworkTransform:OnStartAuthority()end
---@class UnityEngine.Networking.NetworkTransform.TransformSyncMode : System.Enum
UnityEngine.Networking.NetworkTransform.TransformSyncMode = {}
---@type UnityEngine.Networking.NetworkTransform.TransformSyncMode
CS.UnityEngine.Networking.NetworkTransform.TransformSyncMode = UnityEngine.Networking.NetworkTransform.TransformSyncMode

---@return System.Int32 value:0
UnityEngine.Networking.NetworkTransform.TransformSyncMode.SyncNone = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkTransform.TransformSyncMode.SyncTransform = 1
---@return System.Int32 value:2
UnityEngine.Networking.NetworkTransform.TransformSyncMode.SyncRigidbody2D = 2
---@return System.Int32 value:3
UnityEngine.Networking.NetworkTransform.TransformSyncMode.SyncRigidbody3D = 3
---@return System.Int32 value:4
UnityEngine.Networking.NetworkTransform.TransformSyncMode.SyncCharacterController = 4

---@class UnityEngine.Networking.NetworkTransform.AxisSyncMode : System.Enum
UnityEngine.Networking.NetworkTransform.AxisSyncMode = {}
---@type UnityEngine.Networking.NetworkTransform.AxisSyncMode
CS.UnityEngine.Networking.NetworkTransform.AxisSyncMode = UnityEngine.Networking.NetworkTransform.AxisSyncMode

---@return System.Int32 value:0
UnityEngine.Networking.NetworkTransform.AxisSyncMode.None = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisX = 1
---@return System.Int32 value:2
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisY = 2
---@return System.Int32 value:3
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisZ = 3
---@return System.Int32 value:4
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisXY = 4
---@return System.Int32 value:5
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisXZ = 5
---@return System.Int32 value:6
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisYZ = 6
---@return System.Int32 value:7
UnityEngine.Networking.NetworkTransform.AxisSyncMode.AxisXYZ = 7

---@class UnityEngine.Networking.NetworkTransform.CompressionSyncMode : System.Enum
UnityEngine.Networking.NetworkTransform.CompressionSyncMode = {}
---@type UnityEngine.Networking.NetworkTransform.CompressionSyncMode
CS.UnityEngine.Networking.NetworkTransform.CompressionSyncMode = UnityEngine.Networking.NetworkTransform.CompressionSyncMode

---@return System.Int32 value:0
UnityEngine.Networking.NetworkTransform.CompressionSyncMode.None = 0
---@return System.Int32 value:1
UnityEngine.Networking.NetworkTransform.CompressionSyncMode.Low = 1
---@return System.Int32 value:2
UnityEngine.Networking.NetworkTransform.CompressionSyncMode.High = 2

---@class UnityEngine.Networking.NetworkTransformVisualizer : UnityEngine.Networking.NetworkBehaviour
---@field public visualizerPrefab UnityEngine.GameObject @ setter getter
UnityEngine.Networking.NetworkTransformVisualizer = {}
---@type UnityEngine.Networking.NetworkTransformVisualizer
CS.UnityEngine.Networking.NetworkTransformVisualizer = UnityEngine.Networking.NetworkTransformVisualizer

---@return System.Void
function UnityEngine.Networking.NetworkTransformVisualizer:OnStartClient()end
---@return System.Void
function UnityEngine.Networking.NetworkTransformVisualizer:OnStartLocalPlayer()end
---@class UnityEngine.Networking.NetworkWriter : System.Object
---@field public Position System.Int16 @  getter
UnityEngine.Networking.NetworkWriter = {}
---@type UnityEngine.Networking.NetworkWriter
CS.UnityEngine.Networking.NetworkWriter = UnityEngine.Networking.NetworkWriter

---@return System.Byte[]
function UnityEngine.Networking.NetworkWriter:ToArray()end
---@return System.Byte[]
function UnityEngine.Networking.NetworkWriter:AsArray()end
---@param value System.UInt32
---@return System.Void
function UnityEngine.Networking.NetworkWriter:WritePackedUInt32(value)end
---@param value System.UInt64
---@return System.Void
function UnityEngine.Networking.NetworkWriter:WritePackedUInt64(value)end
---@overload fun(value:System.Byte):System.Void
---@overload fun(value:System.SByte):System.Void
---@overload fun(value:System.Int16):System.Void
---@overload fun(value:System.UInt16):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:UnityEngine.Networking.NetworkInstanceId):System.Void
---@overload fun(value:UnityEngine.Networking.NetworkSceneId):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(value:UnityEngine.Vector2):System.Void
---@overload fun(value:UnityEngine.Vector3):System.Void
---@overload fun(value:UnityEngine.Vector4):System.Void
---@overload fun(value:UnityEngine.Color):System.Void
---@overload fun(value:UnityEngine.Color32):System.Void
---@overload fun(value:UnityEngine.Quaternion):System.Void
---@overload fun(value:UnityEngine.Rect):System.Void
---@overload fun(value:UnityEngine.Plane):System.Void
---@overload fun(value:UnityEngine.Ray):System.Void
---@overload fun(value:UnityEngine.Matrix4x4):System.Void
---@overload fun(value:UnityEngine.Networking.NetworkHash128):System.Void
---@overload fun(value:UnityEngine.Networking.NetworkIdentity):System.Void
---@overload fun(value:UnityEngine.Transform):System.Void
---@overload fun(value:UnityEngine.GameObject):System.Void
---@overload fun(msg:UnityEngine.Networking.MessageBase):System.Void
---@overload fun(buffer:System.Byte[], count:System.Int32):System.Void
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param value System.Char
---@return System.Void
function UnityEngine.Networking.NetworkWriter:Write(value)end
---@param buffer System.Byte[]
---@param count System.Int32
---@return System.Void
function UnityEngine.Networking.NetworkWriter:WriteBytesAndSize(buffer, count)end
---@param buffer System.Byte[]
---@return System.Void
function UnityEngine.Networking.NetworkWriter:WriteBytesFull(buffer)end
---@return System.Void
function UnityEngine.Networking.NetworkWriter:SeekZero()end
---@param msgType System.Int16
---@return System.Void
function UnityEngine.Networking.NetworkWriter:StartMessage(msgType)end
---@return System.Void
function UnityEngine.Networking.NetworkWriter:FinishMessage()end
---@class UnityEngine.Networking.PlayerController : System.Object
---@field public IsValid System.Boolean @  getter
---@field public playerControllerId System.Int16
---@field public unetView UnityEngine.Networking.NetworkIdentity
---@field public gameObject UnityEngine.GameObject
---@field public MaxPlayersPerClient System.Int32
UnityEngine.Networking.PlayerController = {}
---@type UnityEngine.Networking.PlayerController
CS.UnityEngine.Networking.PlayerController = UnityEngine.Networking.PlayerController

---@return System.String
function UnityEngine.Networking.PlayerController:ToString()end
---@class UnityEngine.Networking.SyncListString : UnityEngine.Networking.SyncList
UnityEngine.Networking.SyncListString = {}
---@type UnityEngine.Networking.SyncListString
CS.UnityEngine.Networking.SyncListString = UnityEngine.Networking.SyncListString

---@param reader UnityEngine.Networking.NetworkReader
---@return UnityEngine.Networking.SyncListString
function UnityEngine.Networking.SyncListString.ReadInstance(reader)end
---@param reader UnityEngine.Networking.NetworkReader
---@param syncList UnityEngine.Networking.SyncListString
---@return System.Void
function UnityEngine.Networking.SyncListString.ReadReference(reader, syncList)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param items UnityEngine.Networking.SyncListString
---@return System.Void
function UnityEngine.Networking.SyncListString.WriteInstance(writer, items)end
---@class UnityEngine.Networking.SyncListFloat : UnityEngine.Networking.SyncList
UnityEngine.Networking.SyncListFloat = {}
---@type UnityEngine.Networking.SyncListFloat
CS.UnityEngine.Networking.SyncListFloat = UnityEngine.Networking.SyncListFloat

---@param reader UnityEngine.Networking.NetworkReader
---@return UnityEngine.Networking.SyncListFloat
function UnityEngine.Networking.SyncListFloat.ReadInstance(reader)end
---@param reader UnityEngine.Networking.NetworkReader
---@param syncList UnityEngine.Networking.SyncListFloat
---@return System.Void
function UnityEngine.Networking.SyncListFloat.ReadReference(reader, syncList)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param items UnityEngine.Networking.SyncListFloat
---@return System.Void
function UnityEngine.Networking.SyncListFloat.WriteInstance(writer, items)end
---@class UnityEngine.Networking.SyncListInt : UnityEngine.Networking.SyncList
UnityEngine.Networking.SyncListInt = {}
---@type UnityEngine.Networking.SyncListInt
CS.UnityEngine.Networking.SyncListInt = UnityEngine.Networking.SyncListInt

---@param reader UnityEngine.Networking.NetworkReader
---@return UnityEngine.Networking.SyncListInt
function UnityEngine.Networking.SyncListInt.ReadInstance(reader)end
---@param reader UnityEngine.Networking.NetworkReader
---@param syncList UnityEngine.Networking.SyncListInt
---@return System.Void
function UnityEngine.Networking.SyncListInt.ReadReference(reader, syncList)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param items UnityEngine.Networking.SyncListInt
---@return System.Void
function UnityEngine.Networking.SyncListInt.WriteInstance(writer, items)end
---@class UnityEngine.Networking.SyncListUInt : UnityEngine.Networking.SyncList
UnityEngine.Networking.SyncListUInt = {}
---@type UnityEngine.Networking.SyncListUInt
CS.UnityEngine.Networking.SyncListUInt = UnityEngine.Networking.SyncListUInt

---@param reader UnityEngine.Networking.NetworkReader
---@return UnityEngine.Networking.SyncListUInt
function UnityEngine.Networking.SyncListUInt.ReadInstance(reader)end
---@param reader UnityEngine.Networking.NetworkReader
---@param syncList UnityEngine.Networking.SyncListUInt
---@return System.Void
function UnityEngine.Networking.SyncListUInt.ReadReference(reader, syncList)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param items UnityEngine.Networking.SyncListUInt
---@return System.Void
function UnityEngine.Networking.SyncListUInt.WriteInstance(writer, items)end
---@class UnityEngine.Networking.SyncListBool : UnityEngine.Networking.SyncList
UnityEngine.Networking.SyncListBool = {}
---@type UnityEngine.Networking.SyncListBool
CS.UnityEngine.Networking.SyncListBool = UnityEngine.Networking.SyncListBool

---@param reader UnityEngine.Networking.NetworkReader
---@return UnityEngine.Networking.SyncListBool
function UnityEngine.Networking.SyncListBool.ReadInstance(reader)end
---@param reader UnityEngine.Networking.NetworkReader
---@param syncList UnityEngine.Networking.SyncListBool
---@return System.Void
function UnityEngine.Networking.SyncListBool.ReadReference(reader, syncList)end
---@param writer UnityEngine.Networking.NetworkWriter
---@param items UnityEngine.Networking.SyncListBool
---@return System.Void
function UnityEngine.Networking.SyncListBool.WriteInstance(writer, items)end
---@class UnityEngine.Networking.SyncListStruct : any
---@field public Count System.UInt16 @  getter
UnityEngine.Networking.SyncListStruct = {}
---@type UnityEngine.Networking.SyncListStruct
CS.UnityEngine.Networking.SyncListStruct = UnityEngine.Networking.SyncListStruct

---@param item any
---@return System.Void
function UnityEngine.Networking.SyncListStruct:AddInternal(item)end
---@param i System.Int32
---@return any
function UnityEngine.Networking.SyncListStruct:GetItem(i)end
---@class UnityEngine.Networking.SyncList : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Callback any @ setter getter
---@field public Item any @ setter getter
UnityEngine.Networking.SyncList = {}
---@type UnityEngine.Networking.SyncList
CS.UnityEngine.Networking.SyncList = UnityEngine.Networking.SyncList

---@param beh UnityEngine.Networking.NetworkBehaviour
---@param cmdHash System.Int32
---@return System.Void
function UnityEngine.Networking.SyncList:InitializeBehaviour(beh, cmdHash)end
---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.SyncList:HandleMsg(reader)end
---@param item any
---@return System.Void
function UnityEngine.Networking.SyncList:Add(item)end
---@return System.Void
function UnityEngine.Networking.SyncList:Clear()end
---@param item any
---@return System.Boolean
function UnityEngine.Networking.SyncList:Contains(item)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function UnityEngine.Networking.SyncList:CopyTo(array, index)end
---@param item any
---@return System.Int32
function UnityEngine.Networking.SyncList:IndexOf(item)end
---@param index System.Int32
---@param item any
---@return System.Void
function UnityEngine.Networking.SyncList:Insert(index, item)end
---@param item any
---@return System.Boolean
function UnityEngine.Networking.SyncList:Remove(item)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Networking.SyncList:RemoveAt(index)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Networking.SyncList:Dirty(index)end
---@return any
function UnityEngine.Networking.SyncList:GetEnumerator()end
