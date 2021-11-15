---@class System.Net.NetworkInformation.DuplicateAddressDetectionState : System.Enum
System.Net.NetworkInformation.DuplicateAddressDetectionState = {}
---@type System.Net.NetworkInformation.DuplicateAddressDetectionState
CS.System.Net.NetworkInformation.DuplicateAddressDetectionState = System.Net.NetworkInformation.DuplicateAddressDetectionState

---@return System.Int32 value:0
System.Net.NetworkInformation.DuplicateAddressDetectionState.Invalid = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.DuplicateAddressDetectionState.Tentative = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.DuplicateAddressDetectionState.Duplicate = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.DuplicateAddressDetectionState.Deprecated = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.DuplicateAddressDetectionState.Preferred = 4

---@class System.Net.NetworkInformation.GatewayIPAddressInformation : System.Object
---@field public Address System.Net.IPAddress @  getter
System.Net.NetworkInformation.GatewayIPAddressInformation = {}
---@type System.Net.NetworkInformation.GatewayIPAddressInformation
CS.System.Net.NetworkInformation.GatewayIPAddressInformation = System.Net.NetworkInformation.GatewayIPAddressInformation

---@class System.Net.NetworkInformation.GatewayIPAddressInformationCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.NetworkInformation.GatewayIPAddressInformation @  getter
System.Net.NetworkInformation.GatewayIPAddressInformationCollection = {}
---@type System.Net.NetworkInformation.GatewayIPAddressInformationCollection
CS.System.Net.NetworkInformation.GatewayIPAddressInformationCollection = System.Net.NetworkInformation.GatewayIPAddressInformationCollection

---@param array System.Net.NetworkInformation.GatewayIPAddressInformation[]
---@param offset System.Int32
---@return System.Void
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:CopyTo(array, offset)end
---@param address System.Net.NetworkInformation.GatewayIPAddressInformation
---@return System.Void
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:Add(address)end
---@param address System.Net.NetworkInformation.GatewayIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:Contains(address)end
---@return System.Collections.Generic.IEnumerator
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:GetEnumerator()end
---@param address System.Net.NetworkInformation.GatewayIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:Remove(address)end
---@return System.Void
function System.Net.NetworkInformation.GatewayIPAddressInformationCollection:Clear()end
---@class System.Net.NetworkInformation.IPAddressCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.IPAddress @  getter
System.Net.NetworkInformation.IPAddressCollection = {}
---@type System.Net.NetworkInformation.IPAddressCollection
CS.System.Net.NetworkInformation.IPAddressCollection = System.Net.NetworkInformation.IPAddressCollection

---@param array System.Net.IPAddress[]
---@param offset System.Int32
---@return System.Void
function System.Net.NetworkInformation.IPAddressCollection:CopyTo(array, offset)end
---@param address System.Net.IPAddress
---@return System.Void
function System.Net.NetworkInformation.IPAddressCollection:Add(address)end
---@param address System.Net.IPAddress
---@return System.Boolean
function System.Net.NetworkInformation.IPAddressCollection:Contains(address)end
---@return System.Collections.Generic.IEnumerator
function System.Net.NetworkInformation.IPAddressCollection:GetEnumerator()end
---@param address System.Net.IPAddress
---@return System.Boolean
function System.Net.NetworkInformation.IPAddressCollection:Remove(address)end
---@return System.Void
function System.Net.NetworkInformation.IPAddressCollection:Clear()end
---@class System.Net.NetworkInformation.IPAddressInformation : System.Object
---@field public Address System.Net.IPAddress @  getter
---@field public IsDnsEligible System.Boolean @  getter
---@field public IsTransient System.Boolean @  getter
System.Net.NetworkInformation.IPAddressInformation = {}
---@type System.Net.NetworkInformation.IPAddressInformation
CS.System.Net.NetworkInformation.IPAddressInformation = System.Net.NetworkInformation.IPAddressInformation

---@class System.Net.NetworkInformation.IPAddressInformationCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.NetworkInformation.IPAddressInformation @  getter
System.Net.NetworkInformation.IPAddressInformationCollection = {}
---@type System.Net.NetworkInformation.IPAddressInformationCollection
CS.System.Net.NetworkInformation.IPAddressInformationCollection = System.Net.NetworkInformation.IPAddressInformationCollection

---@param array System.Net.NetworkInformation.IPAddressInformation[]
---@param offset System.Int32
---@return System.Void
function System.Net.NetworkInformation.IPAddressInformationCollection:CopyTo(array, offset)end
---@param address System.Net.NetworkInformation.IPAddressInformation
---@return System.Void
function System.Net.NetworkInformation.IPAddressInformationCollection:Add(address)end
---@param address System.Net.NetworkInformation.IPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.IPAddressInformationCollection:Contains(address)end
---@return System.Collections.Generic.IEnumerator
function System.Net.NetworkInformation.IPAddressInformationCollection:GetEnumerator()end
---@param address System.Net.NetworkInformation.IPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.IPAddressInformationCollection:Remove(address)end
---@return System.Void
function System.Net.NetworkInformation.IPAddressInformationCollection:Clear()end
---@class System.Net.NetworkInformation.IPGlobalProperties : System.Object
---@field public DhcpScopeName System.String @  getter
---@field public DomainName System.String @  getter
---@field public HostName System.String @  getter
---@field public IsWinsProxy System.Boolean @  getter
---@field public NodeType System.Net.NetworkInformation.NetBiosNodeType @  getter
System.Net.NetworkInformation.IPGlobalProperties = {}
---@type System.Net.NetworkInformation.IPGlobalProperties
CS.System.Net.NetworkInformation.IPGlobalProperties = System.Net.NetworkInformation.IPGlobalProperties

---@return System.Net.NetworkInformation.IPGlobalProperties
function System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties()end
---@return System.Net.IPEndPoint[]
function System.Net.NetworkInformation.IPGlobalProperties:GetActiveUdpListeners()end
---@return System.Net.IPEndPoint[]
function System.Net.NetworkInformation.IPGlobalProperties:GetActiveTcpListeners()end
---@return System.Net.NetworkInformation.TcpConnectionInformation[]
function System.Net.NetworkInformation.IPGlobalProperties:GetActiveTcpConnections()end
---@return System.Net.NetworkInformation.TcpStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetTcpIPv4Statistics()end
---@return System.Net.NetworkInformation.TcpStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetTcpIPv6Statistics()end
---@return System.Net.NetworkInformation.UdpStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetUdpIPv4Statistics()end
---@return System.Net.NetworkInformation.UdpStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetUdpIPv6Statistics()end
---@return System.Net.NetworkInformation.IcmpV4Statistics
function System.Net.NetworkInformation.IPGlobalProperties:GetIcmpV4Statistics()end
---@return System.Net.NetworkInformation.IcmpV6Statistics
function System.Net.NetworkInformation.IPGlobalProperties:GetIcmpV6Statistics()end
---@return System.Net.NetworkInformation.IPGlobalStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetIPv4GlobalStatistics()end
---@return System.Net.NetworkInformation.IPGlobalStatistics
function System.Net.NetworkInformation.IPGlobalProperties:GetIPv6GlobalStatistics()end
---@return System.Net.NetworkInformation.UnicastIPAddressInformationCollection
function System.Net.NetworkInformation.IPGlobalProperties:GetUnicastAddresses()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.NetworkInformation.IPGlobalProperties:BeginGetUnicastAddresses(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.NetworkInformation.UnicastIPAddressInformationCollection
function System.Net.NetworkInformation.IPGlobalProperties:EndGetUnicastAddresses(asyncResult)end
---@return System.Threading.Tasks.Task
function System.Net.NetworkInformation.IPGlobalProperties:GetUnicastAddressesAsync()end
---@class System.Net.NetworkInformation.IPGlobalStatistics : System.Object
---@field public DefaultTtl System.Int32 @  getter
---@field public ForwardingEnabled System.Boolean @  getter
---@field public NumberOfInterfaces System.Int32 @  getter
---@field public NumberOfIPAddresses System.Int32 @  getter
---@field public OutputPacketRequests System.Int64 @  getter
---@field public OutputPacketRoutingDiscards System.Int64 @  getter
---@field public OutputPacketsDiscarded System.Int64 @  getter
---@field public OutputPacketsWithNoRoute System.Int64 @  getter
---@field public PacketFragmentFailures System.Int64 @  getter
---@field public PacketReassembliesRequired System.Int64 @  getter
---@field public PacketReassemblyFailures System.Int64 @  getter
---@field public PacketReassemblyTimeout System.Int64 @  getter
---@field public PacketsFragmented System.Int64 @  getter
---@field public PacketsReassembled System.Int64 @  getter
---@field public ReceivedPackets System.Int64 @  getter
---@field public ReceivedPacketsDelivered System.Int64 @  getter
---@field public ReceivedPacketsDiscarded System.Int64 @  getter
---@field public ReceivedPacketsForwarded System.Int64 @  getter
---@field public ReceivedPacketsWithAddressErrors System.Int64 @  getter
---@field public ReceivedPacketsWithHeadersErrors System.Int64 @  getter
---@field public ReceivedPacketsWithUnknownProtocol System.Int64 @  getter
---@field public NumberOfRoutes System.Int32 @  getter
System.Net.NetworkInformation.IPGlobalStatistics = {}
---@type System.Net.NetworkInformation.IPGlobalStatistics
CS.System.Net.NetworkInformation.IPGlobalStatistics = System.Net.NetworkInformation.IPGlobalStatistics

---@class System.Net.NetworkInformation.IPInterfaceProperties : System.Object
---@field public IsDnsEnabled System.Boolean @  getter
---@field public DnsSuffix System.String @  getter
---@field public IsDynamicDnsEnabled System.Boolean @  getter
---@field public UnicastAddresses System.Net.NetworkInformation.UnicastIPAddressInformationCollection @  getter
---@field public MulticastAddresses System.Net.NetworkInformation.MulticastIPAddressInformationCollection @  getter
---@field public AnycastAddresses System.Net.NetworkInformation.IPAddressInformationCollection @  getter
---@field public DnsAddresses System.Net.NetworkInformation.IPAddressCollection @  getter
---@field public GatewayAddresses System.Net.NetworkInformation.GatewayIPAddressInformationCollection @  getter
---@field public DhcpServerAddresses System.Net.NetworkInformation.IPAddressCollection @  getter
---@field public WinsServersAddresses System.Net.NetworkInformation.IPAddressCollection @  getter
System.Net.NetworkInformation.IPInterfaceProperties = {}
---@type System.Net.NetworkInformation.IPInterfaceProperties
CS.System.Net.NetworkInformation.IPInterfaceProperties = System.Net.NetworkInformation.IPInterfaceProperties

---@return System.Net.NetworkInformation.IPv4InterfaceProperties
function System.Net.NetworkInformation.IPInterfaceProperties:GetIPv4Properties()end
---@return System.Net.NetworkInformation.IPv6InterfaceProperties
function System.Net.NetworkInformation.IPInterfaceProperties:GetIPv6Properties()end
---@class System.Net.NetworkInformation.IPInterfaceStatistics : System.Object
---@field public BytesReceived System.Int64 @  getter
---@field public BytesSent System.Int64 @  getter
---@field public IncomingPacketsDiscarded System.Int64 @  getter
---@field public IncomingPacketsWithErrors System.Int64 @  getter
---@field public IncomingUnknownProtocolPackets System.Int64 @  getter
---@field public NonUnicastPacketsReceived System.Int64 @  getter
---@field public NonUnicastPacketsSent System.Int64 @  getter
---@field public OutgoingPacketsDiscarded System.Int64 @  getter
---@field public OutgoingPacketsWithErrors System.Int64 @  getter
---@field public OutputQueueLength System.Int64 @  getter
---@field public UnicastPacketsReceived System.Int64 @  getter
---@field public UnicastPacketsSent System.Int64 @  getter
System.Net.NetworkInformation.IPInterfaceStatistics = {}
---@type System.Net.NetworkInformation.IPInterfaceStatistics
CS.System.Net.NetworkInformation.IPInterfaceStatistics = System.Net.NetworkInformation.IPInterfaceStatistics

---@class System.Net.NetworkInformation.IPv4InterfaceStatistics : System.Object
---@field public BytesReceived System.Int64 @  getter
---@field public BytesSent System.Int64 @  getter
---@field public IncomingPacketsDiscarded System.Int64 @  getter
---@field public IncomingPacketsWithErrors System.Int64 @  getter
---@field public IncomingUnknownProtocolPackets System.Int64 @  getter
---@field public NonUnicastPacketsReceived System.Int64 @  getter
---@field public NonUnicastPacketsSent System.Int64 @  getter
---@field public OutgoingPacketsDiscarded System.Int64 @  getter
---@field public OutgoingPacketsWithErrors System.Int64 @  getter
---@field public OutputQueueLength System.Int64 @  getter
---@field public UnicastPacketsReceived System.Int64 @  getter
---@field public UnicastPacketsSent System.Int64 @  getter
System.Net.NetworkInformation.IPv4InterfaceStatistics = {}
---@type System.Net.NetworkInformation.IPv4InterfaceStatistics
CS.System.Net.NetworkInformation.IPv4InterfaceStatistics = System.Net.NetworkInformation.IPv4InterfaceStatistics

---@class System.Net.NetworkInformation.IPStatus : System.Enum
System.Net.NetworkInformation.IPStatus = {}
---@type System.Net.NetworkInformation.IPStatus
CS.System.Net.NetworkInformation.IPStatus = System.Net.NetworkInformation.IPStatus

---@return System.Int32 value:0
System.Net.NetworkInformation.IPStatus.Success = 0

---@class System.Net.NetworkInformation.IPv4InterfaceProperties : System.Object
---@field public UsesWins System.Boolean @  getter
---@field public IsDhcpEnabled System.Boolean @  getter
---@field public IsAutomaticPrivateAddressingActive System.Boolean @  getter
---@field public IsAutomaticPrivateAddressingEnabled System.Boolean @  getter
---@field public Index System.Int32 @  getter
---@field public IsForwardingEnabled System.Boolean @  getter
---@field public Mtu System.Int32 @  getter
System.Net.NetworkInformation.IPv4InterfaceProperties = {}
---@type System.Net.NetworkInformation.IPv4InterfaceProperties
CS.System.Net.NetworkInformation.IPv4InterfaceProperties = System.Net.NetworkInformation.IPv4InterfaceProperties

---@class System.Net.NetworkInformation.IPv6InterfaceProperties : System.Object
---@field public Index System.Int32 @  getter
---@field public Mtu System.Int32 @  getter
System.Net.NetworkInformation.IPv6InterfaceProperties = {}
---@type System.Net.NetworkInformation.IPv6InterfaceProperties
CS.System.Net.NetworkInformation.IPv6InterfaceProperties = System.Net.NetworkInformation.IPv6InterfaceProperties

---@param scopeLevel System.Net.NetworkInformation.ScopeLevel
---@return System.Int64
function System.Net.NetworkInformation.IPv6InterfaceProperties:GetScopeId(scopeLevel)end
---@class System.Net.NetworkInformation.IcmpV4Statistics : System.Object
---@field public AddressMaskRepliesReceived System.Int64 @  getter
---@field public AddressMaskRepliesSent System.Int64 @  getter
---@field public AddressMaskRequestsReceived System.Int64 @  getter
---@field public AddressMaskRequestsSent System.Int64 @  getter
---@field public DestinationUnreachableMessagesReceived System.Int64 @  getter
---@field public DestinationUnreachableMessagesSent System.Int64 @  getter
---@field public EchoRepliesReceived System.Int64 @  getter
---@field public EchoRepliesSent System.Int64 @  getter
---@field public EchoRequestsReceived System.Int64 @  getter
---@field public EchoRequestsSent System.Int64 @  getter
---@field public ErrorsReceived System.Int64 @  getter
---@field public ErrorsSent System.Int64 @  getter
---@field public MessagesReceived System.Int64 @  getter
---@field public MessagesSent System.Int64 @  getter
---@field public ParameterProblemsReceived System.Int64 @  getter
---@field public ParameterProblemsSent System.Int64 @  getter
---@field public RedirectsReceived System.Int64 @  getter
---@field public RedirectsSent System.Int64 @  getter
---@field public SourceQuenchesReceived System.Int64 @  getter
---@field public SourceQuenchesSent System.Int64 @  getter
---@field public TimeExceededMessagesReceived System.Int64 @  getter
---@field public TimeExceededMessagesSent System.Int64 @  getter
---@field public TimestampRepliesReceived System.Int64 @  getter
---@field public TimestampRepliesSent System.Int64 @  getter
---@field public TimestampRequestsReceived System.Int64 @  getter
---@field public TimestampRequestsSent System.Int64 @  getter
System.Net.NetworkInformation.IcmpV4Statistics = {}
---@type System.Net.NetworkInformation.IcmpV4Statistics
CS.System.Net.NetworkInformation.IcmpV4Statistics = System.Net.NetworkInformation.IcmpV4Statistics

---@class System.Net.NetworkInformation.IcmpV6Statistics : System.Object
---@field public DestinationUnreachableMessagesReceived System.Int64 @  getter
---@field public DestinationUnreachableMessagesSent System.Int64 @  getter
---@field public EchoRepliesReceived System.Int64 @  getter
---@field public EchoRepliesSent System.Int64 @  getter
---@field public EchoRequestsReceived System.Int64 @  getter
---@field public EchoRequestsSent System.Int64 @  getter
---@field public ErrorsReceived System.Int64 @  getter
---@field public ErrorsSent System.Int64 @  getter
---@field public MembershipQueriesReceived System.Int64 @  getter
---@field public MembershipQueriesSent System.Int64 @  getter
---@field public MembershipReductionsReceived System.Int64 @  getter
---@field public MembershipReductionsSent System.Int64 @  getter
---@field public MembershipReportsReceived System.Int64 @  getter
---@field public MembershipReportsSent System.Int64 @  getter
---@field public MessagesReceived System.Int64 @  getter
---@field public MessagesSent System.Int64 @  getter
---@field public NeighborAdvertisementsReceived System.Int64 @  getter
---@field public NeighborAdvertisementsSent System.Int64 @  getter
---@field public NeighborSolicitsReceived System.Int64 @  getter
---@field public NeighborSolicitsSent System.Int64 @  getter
---@field public PacketTooBigMessagesReceived System.Int64 @  getter
---@field public PacketTooBigMessagesSent System.Int64 @  getter
---@field public ParameterProblemsReceived System.Int64 @  getter
---@field public ParameterProblemsSent System.Int64 @  getter
---@field public RedirectsReceived System.Int64 @  getter
---@field public RedirectsSent System.Int64 @  getter
---@field public RouterAdvertisementsReceived System.Int64 @  getter
---@field public RouterAdvertisementsSent System.Int64 @  getter
---@field public RouterSolicitsReceived System.Int64 @  getter
---@field public RouterSolicitsSent System.Int64 @  getter
---@field public TimeExceededMessagesReceived System.Int64 @  getter
---@field public TimeExceededMessagesSent System.Int64 @  getter
System.Net.NetworkInformation.IcmpV6Statistics = {}
---@type System.Net.NetworkInformation.IcmpV6Statistics
CS.System.Net.NetworkInformation.IcmpV6Statistics = System.Net.NetworkInformation.IcmpV6Statistics

---@class System.Net.NetworkInformation.MulticastIPAddressInformation : System.Net.NetworkInformation.IPAddressInformation
---@field public AddressPreferredLifetime System.Int64 @  getter
---@field public AddressValidLifetime System.Int64 @  getter
---@field public DhcpLeaseLifetime System.Int64 @  getter
---@field public DuplicateAddressDetectionState System.Net.NetworkInformation.DuplicateAddressDetectionState @  getter
---@field public PrefixOrigin System.Net.NetworkInformation.PrefixOrigin @  getter
---@field public SuffixOrigin System.Net.NetworkInformation.SuffixOrigin @  getter
System.Net.NetworkInformation.MulticastIPAddressInformation = {}
---@type System.Net.NetworkInformation.MulticastIPAddressInformation
CS.System.Net.NetworkInformation.MulticastIPAddressInformation = System.Net.NetworkInformation.MulticastIPAddressInformation

---@class System.Net.NetworkInformation.MulticastIPAddressInformationCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.NetworkInformation.MulticastIPAddressInformation @  getter
System.Net.NetworkInformation.MulticastIPAddressInformationCollection = {}
---@type System.Net.NetworkInformation.MulticastIPAddressInformationCollection
CS.System.Net.NetworkInformation.MulticastIPAddressInformationCollection = System.Net.NetworkInformation.MulticastIPAddressInformationCollection

---@param array System.Net.NetworkInformation.MulticastIPAddressInformation[]
---@param offset System.Int32
---@return System.Void
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:CopyTo(array, offset)end
---@param address System.Net.NetworkInformation.MulticastIPAddressInformation
---@return System.Void
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:Add(address)end
---@param address System.Net.NetworkInformation.MulticastIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:Contains(address)end
---@return System.Collections.Generic.IEnumerator
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:GetEnumerator()end
---@param address System.Net.NetworkInformation.MulticastIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:Remove(address)end
---@return System.Void
function System.Net.NetworkInformation.MulticastIPAddressInformationCollection:Clear()end
---@class System.Net.NetworkInformation.NetworkAvailabilityEventArgs : System.EventArgs
---@field public IsAvailable System.Boolean @  getter
System.Net.NetworkInformation.NetworkAvailabilityEventArgs = {}
---@type System.Net.NetworkInformation.NetworkAvailabilityEventArgs
CS.System.Net.NetworkInformation.NetworkAvailabilityEventArgs = System.Net.NetworkInformation.NetworkAvailabilityEventArgs

---@class System.Net.NetworkInformation.NetworkInformationException : System.ComponentModel.Win32Exception
---@field public ErrorCode System.Int32 @  getter
System.Net.NetworkInformation.NetworkInformationException = {}
---@type System.Net.NetworkInformation.NetworkInformationException
CS.System.Net.NetworkInformation.NetworkInformationException = System.Net.NetworkInformation.NetworkInformationException

---@class System.Net.NetworkInformation.NetworkInformationAccess : System.Enum
System.Net.NetworkInformation.NetworkInformationAccess = {}
---@type System.Net.NetworkInformation.NetworkInformationAccess
CS.System.Net.NetworkInformation.NetworkInformationAccess = System.Net.NetworkInformation.NetworkInformationAccess

---@return System.Int32 value:0
System.Net.NetworkInformation.NetworkInformationAccess.None = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.NetworkInformationAccess.Read = 1

---@class System.Net.NetworkInformation.NetworkInformationPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Access System.String @ setter getter
System.Net.NetworkInformation.NetworkInformationPermissionAttribute = {}
---@type System.Net.NetworkInformation.NetworkInformationPermissionAttribute
CS.System.Net.NetworkInformation.NetworkInformationPermissionAttribute = System.Net.NetworkInformation.NetworkInformationPermissionAttribute

---@return System.Security.IPermission
function System.Net.NetworkInformation.NetworkInformationPermissionAttribute:CreatePermission()end
---@class System.Net.NetworkInformation.NetworkInformationPermission : System.Security.CodeAccessPermission
---@field public Access System.Net.NetworkInformation.NetworkInformationAccess @  getter
System.Net.NetworkInformation.NetworkInformationPermission = {}
---@type System.Net.NetworkInformation.NetworkInformationPermission
CS.System.Net.NetworkInformation.NetworkInformationPermission = System.Net.NetworkInformation.NetworkInformationPermission

---@param access System.Net.NetworkInformation.NetworkInformationAccess
---@return System.Void
function System.Net.NetworkInformation.NetworkInformationPermission:AddPermission(access)end
---@return System.Boolean
function System.Net.NetworkInformation.NetworkInformationPermission:IsUnrestricted()end
---@return System.Security.IPermission
function System.Net.NetworkInformation.NetworkInformationPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.NetworkInformation.NetworkInformationPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.NetworkInformation.NetworkInformationPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Net.NetworkInformation.NetworkInformationPermission:IsSubsetOf(target)end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Net.NetworkInformation.NetworkInformationPermission:FromXml(securityElement)end
---@return System.Security.SecurityElement
function System.Net.NetworkInformation.NetworkInformationPermission:ToXml()end
---@class System.Net.NetworkInformation.NetworkInterface : System.Object
---@field public LoopbackInterfaceIndex System.Int32 @static  getter
---@field public IPv6LoopbackInterfaceIndex System.Int32 @static  getter
---@field public Id System.String @  getter
---@field public Name System.String @  getter
---@field public Description System.String @  getter
---@field public OperationalStatus System.Net.NetworkInformation.OperationalStatus @  getter
---@field public Speed System.Int64 @  getter
---@field public IsReceiveOnly System.Boolean @  getter
---@field public SupportsMulticast System.Boolean @  getter
---@field public NetworkInterfaceType System.Net.NetworkInformation.NetworkInterfaceType @  getter
System.Net.NetworkInformation.NetworkInterface = {}
---@type System.Net.NetworkInformation.NetworkInterface
CS.System.Net.NetworkInformation.NetworkInterface = System.Net.NetworkInformation.NetworkInterface

---@return System.Net.NetworkInformation.NetworkInterface[]
function System.Net.NetworkInformation.NetworkInterface.GetAllNetworkInterfaces()end
---@return System.Boolean
function System.Net.NetworkInformation.NetworkInterface.GetIsNetworkAvailable()end
---@return System.Net.NetworkInformation.IPInterfaceProperties
function System.Net.NetworkInformation.NetworkInterface:GetIPProperties()end
---@return System.Net.NetworkInformation.IPv4InterfaceStatistics
function System.Net.NetworkInformation.NetworkInterface:GetIPv4Statistics()end
---@return System.Net.NetworkInformation.IPInterfaceStatistics
function System.Net.NetworkInformation.NetworkInterface:GetIPStatistics()end
---@return System.Net.NetworkInformation.PhysicalAddress
function System.Net.NetworkInformation.NetworkInterface:GetPhysicalAddress()end
---@param networkInterfaceComponent System.Net.NetworkInformation.NetworkInterfaceComponent
---@return System.Boolean
function System.Net.NetworkInformation.NetworkInterface:Supports(networkInterfaceComponent)end
---@class System.Net.NetworkInformation.NetworkInterfaceComponent : System.Enum
System.Net.NetworkInformation.NetworkInterfaceComponent = {}
---@type System.Net.NetworkInformation.NetworkInterfaceComponent
CS.System.Net.NetworkInformation.NetworkInterfaceComponent = System.Net.NetworkInformation.NetworkInterfaceComponent

---@return System.Int32 value:0
System.Net.NetworkInformation.NetworkInterfaceComponent.IPv4 = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.NetworkInterfaceComponent.IPv6 = 1

---@class System.Net.NetworkInformation.OperationalStatus : System.Enum
System.Net.NetworkInformation.OperationalStatus = {}
---@type System.Net.NetworkInformation.OperationalStatus
CS.System.Net.NetworkInformation.OperationalStatus = System.Net.NetworkInformation.OperationalStatus

---@return System.Int32 value:1
System.Net.NetworkInformation.OperationalStatus.Up = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.OperationalStatus.Down = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.OperationalStatus.Testing = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.OperationalStatus.Unknown = 4
---@return System.Int32 value:5
System.Net.NetworkInformation.OperationalStatus.Dormant = 5
---@return System.Int32 value:6
System.Net.NetworkInformation.OperationalStatus.NotPresent = 6

---@class System.Net.NetworkInformation.PhysicalAddress : System.Object
---@field public None System.Net.NetworkInformation.PhysicalAddress
System.Net.NetworkInformation.PhysicalAddress = {}
---@type System.Net.NetworkInformation.PhysicalAddress
CS.System.Net.NetworkInformation.PhysicalAddress = System.Net.NetworkInformation.PhysicalAddress

---@return System.Int32
function System.Net.NetworkInformation.PhysicalAddress:GetHashCode()end
---@param comparand System.Object
---@return System.Boolean
function System.Net.NetworkInformation.PhysicalAddress:Equals(comparand)end
---@return System.String
function System.Net.NetworkInformation.PhysicalAddress:ToString()end
---@return System.Byte[]
function System.Net.NetworkInformation.PhysicalAddress:GetAddressBytes()end
---@param address System.String
---@return System.Net.NetworkInformation.PhysicalAddress
function System.Net.NetworkInformation.PhysicalAddress.Parse(address)end
---@class System.Net.NetworkInformation.PingOptions : System.Object
---@field public Ttl System.Int32 @ setter getter
---@field public DontFragment System.Boolean @ setter getter
System.Net.NetworkInformation.PingOptions = {}
---@type System.Net.NetworkInformation.PingOptions
CS.System.Net.NetworkInformation.PingOptions = System.Net.NetworkInformation.PingOptions

---@class System.Net.NetworkInformation.PingReply : System.Object
---@field public Status System.Net.NetworkInformation.IPStatus @  getter
---@field public Address System.Net.IPAddress @  getter
---@field public RoundtripTime System.Int64 @  getter
---@field public Options System.Net.NetworkInformation.PingOptions @  getter
---@field public Buffer System.Byte[] @  getter
System.Net.NetworkInformation.PingReply = {}
---@type System.Net.NetworkInformation.PingReply
CS.System.Net.NetworkInformation.PingReply = System.Net.NetworkInformation.PingReply

---@class System.Net.NetworkInformation.PrefixOrigin : System.Enum
System.Net.NetworkInformation.PrefixOrigin = {}
---@type System.Net.NetworkInformation.PrefixOrigin
CS.System.Net.NetworkInformation.PrefixOrigin = System.Net.NetworkInformation.PrefixOrigin

---@return System.Int32 value:0
System.Net.NetworkInformation.PrefixOrigin.Other = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.PrefixOrigin.Manual = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.PrefixOrigin.WellKnown = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.PrefixOrigin.Dhcp = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.PrefixOrigin.RouterAdvertisement = 4

---@class System.Net.NetworkInformation.ScopeLevel : System.Enum
System.Net.NetworkInformation.ScopeLevel = {}
---@type System.Net.NetworkInformation.ScopeLevel
CS.System.Net.NetworkInformation.ScopeLevel = System.Net.NetworkInformation.ScopeLevel

---@return System.Int32 value:0
System.Net.NetworkInformation.ScopeLevel.None = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.ScopeLevel.Interface = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.ScopeLevel.Link = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.ScopeLevel.Subnet = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.ScopeLevel.Admin = 4
---@return System.Int32 value:5
System.Net.NetworkInformation.ScopeLevel.Site = 5

---@class System.Net.NetworkInformation.SuffixOrigin : System.Enum
System.Net.NetworkInformation.SuffixOrigin = {}
---@type System.Net.NetworkInformation.SuffixOrigin
CS.System.Net.NetworkInformation.SuffixOrigin = System.Net.NetworkInformation.SuffixOrigin

---@return System.Int32 value:0
System.Net.NetworkInformation.SuffixOrigin.Other = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.SuffixOrigin.Manual = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.SuffixOrigin.WellKnown = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.SuffixOrigin.OriginDhcp = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.SuffixOrigin.LinkLayerAddress = 4
---@return System.Int32 value:5
System.Net.NetworkInformation.SuffixOrigin.Random = 5

---@class System.Net.NetworkInformation.TcpConnectionInformation : System.Object
---@field public LocalEndPoint System.Net.IPEndPoint @  getter
---@field public RemoteEndPoint System.Net.IPEndPoint @  getter
---@field public State System.Net.NetworkInformation.TcpState @  getter
System.Net.NetworkInformation.TcpConnectionInformation = {}
---@type System.Net.NetworkInformation.TcpConnectionInformation
CS.System.Net.NetworkInformation.TcpConnectionInformation = System.Net.NetworkInformation.TcpConnectionInformation

---@class System.Net.NetworkInformation.TcpState : System.Enum
System.Net.NetworkInformation.TcpState = {}
---@type System.Net.NetworkInformation.TcpState
CS.System.Net.NetworkInformation.TcpState = System.Net.NetworkInformation.TcpState

---@return System.Int32 value:0
System.Net.NetworkInformation.TcpState.Unknown = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.TcpState.Closed = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.TcpState.Listen = 2
---@return System.Int32 value:3
System.Net.NetworkInformation.TcpState.SynSent = 3
---@return System.Int32 value:4
System.Net.NetworkInformation.TcpState.SynReceived = 4
---@return System.Int32 value:5
System.Net.NetworkInformation.TcpState.Established = 5
---@return System.Int32 value:6
System.Net.NetworkInformation.TcpState.FinWait1 = 6
---@return System.Int32 value:7
System.Net.NetworkInformation.TcpState.FinWait2 = 7
---@return System.Int32 value:8
System.Net.NetworkInformation.TcpState.CloseWait = 8
---@return System.Int32 value:9
System.Net.NetworkInformation.TcpState.Closing = 9
---@return System.Int32 value:10
System.Net.NetworkInformation.TcpState.LastAck = 10
---@return System.Int32 value:11
System.Net.NetworkInformation.TcpState.TimeWait = 11
---@return System.Int32 value:12
System.Net.NetworkInformation.TcpState.DeleteTcb = 12

---@class System.Net.NetworkInformation.TcpStatistics : System.Object
---@field public ConnectionsAccepted System.Int64 @  getter
---@field public ConnectionsInitiated System.Int64 @  getter
---@field public CumulativeConnections System.Int64 @  getter
---@field public CurrentConnections System.Int64 @  getter
---@field public ErrorsReceived System.Int64 @  getter
---@field public FailedConnectionAttempts System.Int64 @  getter
---@field public MaximumConnections System.Int64 @  getter
---@field public MaximumTransmissionTimeout System.Int64 @  getter
---@field public MinimumTransmissionTimeout System.Int64 @  getter
---@field public ResetConnections System.Int64 @  getter
---@field public SegmentsReceived System.Int64 @  getter
---@field public SegmentsResent System.Int64 @  getter
---@field public SegmentsSent System.Int64 @  getter
---@field public ResetsSent System.Int64 @  getter
System.Net.NetworkInformation.TcpStatistics = {}
---@type System.Net.NetworkInformation.TcpStatistics
CS.System.Net.NetworkInformation.TcpStatistics = System.Net.NetworkInformation.TcpStatistics

---@class System.Net.NetworkInformation.UdpStatistics : System.Object
---@field public DatagramsReceived System.Int64 @  getter
---@field public DatagramsSent System.Int64 @  getter
---@field public IncomingDatagramsDiscarded System.Int64 @  getter
---@field public IncomingDatagramsWithErrors System.Int64 @  getter
---@field public UdpListeners System.Int32 @  getter
System.Net.NetworkInformation.UdpStatistics = {}
---@type System.Net.NetworkInformation.UdpStatistics
CS.System.Net.NetworkInformation.UdpStatistics = System.Net.NetworkInformation.UdpStatistics

---@class System.Net.NetworkInformation.UnicastIPAddressInformation : System.Net.NetworkInformation.IPAddressInformation
---@field public AddressPreferredLifetime System.Int64 @  getter
---@field public AddressValidLifetime System.Int64 @  getter
---@field public DhcpLeaseLifetime System.Int64 @  getter
---@field public DuplicateAddressDetectionState System.Net.NetworkInformation.DuplicateAddressDetectionState @  getter
---@field public PrefixOrigin System.Net.NetworkInformation.PrefixOrigin @  getter
---@field public SuffixOrigin System.Net.NetworkInformation.SuffixOrigin @  getter
---@field public IPv4Mask System.Net.IPAddress @  getter
---@field public PrefixLength System.Int32 @  getter
System.Net.NetworkInformation.UnicastIPAddressInformation = {}
---@type System.Net.NetworkInformation.UnicastIPAddressInformation
CS.System.Net.NetworkInformation.UnicastIPAddressInformation = System.Net.NetworkInformation.UnicastIPAddressInformation

---@class System.Net.NetworkInformation.UnicastIPAddressInformationCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.NetworkInformation.UnicastIPAddressInformation @  getter
System.Net.NetworkInformation.UnicastIPAddressInformationCollection = {}
---@type System.Net.NetworkInformation.UnicastIPAddressInformationCollection
CS.System.Net.NetworkInformation.UnicastIPAddressInformationCollection = System.Net.NetworkInformation.UnicastIPAddressInformationCollection

---@param array System.Net.NetworkInformation.UnicastIPAddressInformation[]
---@param offset System.Int32
---@return System.Void
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:CopyTo(array, offset)end
---@param address System.Net.NetworkInformation.UnicastIPAddressInformation
---@return System.Void
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:Add(address)end
---@param address System.Net.NetworkInformation.UnicastIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:Contains(address)end
---@return System.Collections.Generic.IEnumerator
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:GetEnumerator()end
---@param address System.Net.NetworkInformation.UnicastIPAddressInformation
---@return System.Boolean
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:Remove(address)end
---@return System.Void
function System.Net.NetworkInformation.UnicastIPAddressInformationCollection:Clear()end
---@class System.Net.NetworkInformation.NetworkInterfaceType : System.Enum
System.Net.NetworkInformation.NetworkInterfaceType = {}
---@type System.Net.NetworkInformation.NetworkInterfaceType
CS.System.Net.NetworkInformation.NetworkInterfaceType = System.Net.NetworkInformation.NetworkInterfaceType

---@return System.Int32 value:1
System.Net.NetworkInformation.NetworkInterfaceType.Unknown = 1
---@return System.Int32 value:6
System.Net.NetworkInformation.NetworkInterfaceType.Ethernet = 6
---@return System.Int32 value:9
System.Net.NetworkInformation.NetworkInterfaceType.TokenRing = 9
---@return System.Int32 value:15
System.Net.NetworkInformation.NetworkInterfaceType.Fddi = 15
---@return System.Int32 value:20
System.Net.NetworkInformation.NetworkInterfaceType.BasicIsdn = 20
---@return System.Int32 value:21
System.Net.NetworkInformation.NetworkInterfaceType.PrimaryIsdn = 21
---@return System.Int32 value:23
System.Net.NetworkInformation.NetworkInterfaceType.Ppp = 23
---@return System.Int32 value:24
System.Net.NetworkInformation.NetworkInterfaceType.Loopback = 24
---@return System.Int32 value:26
System.Net.NetworkInformation.NetworkInterfaceType.Ethernet3Megabit = 26

---@class System.Net.NetworkInformation.NetBiosNodeType : System.Enum
System.Net.NetworkInformation.NetBiosNodeType = {}
---@type System.Net.NetworkInformation.NetBiosNodeType
CS.System.Net.NetworkInformation.NetBiosNodeType = System.Net.NetworkInformation.NetBiosNodeType

---@return System.Int32 value:0
System.Net.NetworkInformation.NetBiosNodeType.Unknown = 0
---@return System.Int32 value:1
System.Net.NetworkInformation.NetBiosNodeType.Broadcast = 1
---@return System.Int32 value:2
System.Net.NetworkInformation.NetBiosNodeType.Peer2Peer = 2
---@return System.Int32 value:4
System.Net.NetworkInformation.NetBiosNodeType.Mixed = 4

---@class System.Net.NetworkInformation.PingException : System.InvalidOperationException
System.Net.NetworkInformation.PingException = {}
---@type System.Net.NetworkInformation.PingException
CS.System.Net.NetworkInformation.PingException = System.Net.NetworkInformation.PingException

---@class System.Net.NetworkInformation.NetworkChange : System.Object
System.Net.NetworkInformation.NetworkChange = {}
---@type System.Net.NetworkInformation.NetworkChange
CS.System.Net.NetworkInformation.NetworkChange = System.Net.NetworkInformation.NetworkChange

---@param value System.Net.NetworkInformation.NetworkAddressChangedEventHandler
---@return System.Void
function System.Net.NetworkInformation.NetworkChange.add_NetworkAddressChanged(value)end
---@param value System.Net.NetworkInformation.NetworkAddressChangedEventHandler
---@return System.Void
function System.Net.NetworkInformation.NetworkChange.remove_NetworkAddressChanged(value)end
---@param value System.Net.NetworkInformation.NetworkAvailabilityChangedEventHandler
---@return System.Void
function System.Net.NetworkInformation.NetworkChange.add_NetworkAvailabilityChanged(value)end
---@param value System.Net.NetworkInformation.NetworkAvailabilityChangedEventHandler
---@return System.Void
function System.Net.NetworkInformation.NetworkChange.remove_NetworkAvailabilityChanged(value)end
---@param nc System.Net.NetworkInformation.NetworkChange
---@return System.Void
function System.Net.NetworkInformation.NetworkChange.RegisterNetworkChange(nc)end
---@class System.Net.NetworkInformation.Ping : System.ComponentModel.Component
System.Net.NetworkInformation.Ping = {}
---@type System.Net.NetworkInformation.Ping
CS.System.Net.NetworkInformation.Ping = System.Net.NetworkInformation.Ping

---@param value System.Net.NetworkInformation.PingCompletedEventHandler
---@return System.Void
function System.Net.NetworkInformation.Ping:add_PingCompleted(value)end
---@param value System.Net.NetworkInformation.PingCompletedEventHandler
---@return System.Void
function System.Net.NetworkInformation.Ping:remove_PingCompleted(value)end
---@overload fun(hostNameOrAddress:System.String):System.Net.NetworkInformation.PingReply
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32):System.Net.NetworkInformation.PingReply
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32):System.Net.NetworkInformation.PingReply
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[]):System.Net.NetworkInformation.PingReply
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[]):System.Net.NetworkInformation.PingReply
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions):System.Net.NetworkInformation.PingReply
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions):System.Net.NetworkInformation.PingReply
---@param address System.Net.IPAddress
---@return System.Net.NetworkInformation.PingReply
function System.Net.NetworkInformation.Ping:Send(address)end
---@overload fun(hostNameOrAddress:System.String, userToken:System.Object):System.Void
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, userToken:System.Object):System.Void
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, userToken:System.Object):System.Void
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[], userToken:System.Object):System.Void
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[], userToken:System.Object):System.Void
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions, userToken:System.Object):System.Void
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions, userToken:System.Object):System.Void
---@param address System.Net.IPAddress
---@param userToken System.Object
---@return System.Void
function System.Net.NetworkInformation.Ping:SendAsync(address, userToken)end
---@return System.Void
function System.Net.NetworkInformation.Ping:SendAsyncCancel()end
---@overload fun(hostNameOrAddress:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32):System.Threading.Tasks.Task
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32):System.Threading.Tasks.Task
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[]):System.Threading.Tasks.Task
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[]):System.Threading.Tasks.Task
---@overload fun(hostNameOrAddress:System.String, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions):System.Threading.Tasks.Task
---@overload fun(address:System.Net.IPAddress, timeout:System.Int32, buffer:System.Byte[], options:System.Net.NetworkInformation.PingOptions):System.Threading.Tasks.Task
---@param address System.Net.IPAddress
---@return System.Threading.Tasks.Task
function System.Net.NetworkInformation.Ping:SendPingAsync(address)end
---@class System.Net.NetworkInformation.PingCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Reply System.Net.NetworkInformation.PingReply @  getter
System.Net.NetworkInformation.PingCompletedEventArgs = {}
---@type System.Net.NetworkInformation.PingCompletedEventArgs
CS.System.Net.NetworkInformation.PingCompletedEventArgs = System.Net.NetworkInformation.PingCompletedEventArgs

