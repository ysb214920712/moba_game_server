---@class System.Net.SecurityProtocolType : System.Enum
System.Net.SecurityProtocolType = {}
---@type System.Net.SecurityProtocolType
CS.System.Net.SecurityProtocolType = System.Net.SecurityProtocolType

---@return System.Int32 value:0
System.Net.SecurityProtocolType.SystemDefault = 0

---@class System.Net.AuthenticationSchemes : System.Enum
System.Net.AuthenticationSchemes = {}
---@type System.Net.AuthenticationSchemes
CS.System.Net.AuthenticationSchemes = System.Net.AuthenticationSchemes

---@return System.Int32 value:0
System.Net.AuthenticationSchemes.None = 0
---@return System.Int32 value:1
System.Net.AuthenticationSchemes.Digest = 1
---@return System.Int32 value:2
System.Net.AuthenticationSchemes.Negotiate = 2
---@return System.Int32 value:4
System.Net.AuthenticationSchemes.Ntlm = 4
---@return System.Int32 value:6
System.Net.AuthenticationSchemes.IntegratedWindowsAuthentication = 6

---@class System.Net.Authorization : System.Object
---@field public Message System.String @  getter
---@field public ConnectionGroupId System.String @  getter
---@field public Complete System.Boolean @  getter
---@field public ProtectionRealm System.String[] @ setter getter
---@field public MutuallyAuthenticated System.Boolean @ setter getter
System.Net.Authorization = {}
---@type System.Net.Authorization
CS.System.Net.Authorization = System.Net.Authorization

---@class System.Net.CredentialCache : System.Object
---@field public DefaultCredentials System.Net.ICredentials @static  getter
---@field public DefaultNetworkCredentials System.Net.NetworkCredential @static  getter
System.Net.CredentialCache = {}
---@type System.Net.CredentialCache
CS.System.Net.CredentialCache = System.Net.CredentialCache

---@overload fun(host:System.String, port:System.Int32, authenticationType:System.String, credential:System.Net.NetworkCredential):System.Void
---@param uriPrefix System.Uri
---@param authType System.String
---@param cred System.Net.NetworkCredential
---@return System.Void
function System.Net.CredentialCache:Add(uriPrefix, authType, cred)end
---@overload fun(host:System.String, port:System.Int32, authenticationType:System.String):System.Void
---@param uriPrefix System.Uri
---@param authType System.String
---@return System.Void
function System.Net.CredentialCache:Remove(uriPrefix, authType)end
---@overload fun(host:System.String, port:System.Int32, authenticationType:System.String):System.Net.NetworkCredential
---@param uriPrefix System.Uri
---@param authType System.String
---@return System.Net.NetworkCredential
function System.Net.CredentialCache:GetCredential(uriPrefix, authType)end
---@return System.Collections.IEnumerator
function System.Net.CredentialCache:GetEnumerator()end
---@class System.Net.DnsEndPoint : System.Net.EndPoint
---@field public Host System.String @  getter
---@field public AddressFamily System.Net.Sockets.AddressFamily @  getter
---@field public Port System.Int32 @  getter
System.Net.DnsEndPoint = {}
---@type System.Net.DnsEndPoint
CS.System.Net.DnsEndPoint = System.Net.DnsEndPoint

---@param comparand System.Object
---@return System.Boolean
function System.Net.DnsEndPoint:Equals(comparand)end
---@return System.Int32
function System.Net.DnsEndPoint:GetHashCode()end
---@return System.String
function System.Net.DnsEndPoint:ToString()end
---@class System.Net.EndPoint : System.Object
---@field public AddressFamily System.Net.Sockets.AddressFamily @  getter
System.Net.EndPoint = {}
---@type System.Net.EndPoint
CS.System.Net.EndPoint = System.Net.EndPoint

---@return System.Net.SocketAddress
function System.Net.EndPoint:Serialize()end
---@param socketAddress System.Net.SocketAddress
---@return System.Net.EndPoint
function System.Net.EndPoint:Create(socketAddress)end
---@class System.Net.FtpStatusCode : System.Enum
System.Net.FtpStatusCode = {}
---@type System.Net.FtpStatusCode
CS.System.Net.FtpStatusCode = System.Net.FtpStatusCode

---@return System.Int32 value:0
System.Net.FtpStatusCode.Undefined = 0

---@class System.Net.GlobalProxySelection : System.Object
---@field public Select System.Net.IWebProxy @static setter getter
System.Net.GlobalProxySelection = {}
---@type System.Net.GlobalProxySelection
CS.System.Net.GlobalProxySelection = System.Net.GlobalProxySelection

---@return System.Net.IWebProxy
function System.Net.GlobalProxySelection.GetEmptyWebProxy()end
---@class System.Net.HttpListenerException : System.ComponentModel.Win32Exception
---@field public ErrorCode System.Int32 @  getter
System.Net.HttpListenerException = {}
---@type System.Net.HttpListenerException
CS.System.Net.HttpListenerException = System.Net.HttpListenerException

---@class System.Net.HttpRequestHeader : System.Enum
System.Net.HttpRequestHeader = {}
---@type System.Net.HttpRequestHeader
CS.System.Net.HttpRequestHeader = System.Net.HttpRequestHeader

---@return System.Int32 value:0
System.Net.HttpRequestHeader.CacheControl = 0
---@return System.Int32 value:1
System.Net.HttpRequestHeader.Connection = 1
---@return System.Int32 value:2
System.Net.HttpRequestHeader.Date = 2
---@return System.Int32 value:3
System.Net.HttpRequestHeader.KeepAlive = 3
---@return System.Int32 value:4
System.Net.HttpRequestHeader.Pragma = 4
---@return System.Int32 value:5
System.Net.HttpRequestHeader.Trailer = 5
---@return System.Int32 value:6
System.Net.HttpRequestHeader.TransferEncoding = 6
---@return System.Int32 value:7
System.Net.HttpRequestHeader.Upgrade = 7
---@return System.Int32 value:8
System.Net.HttpRequestHeader.Via = 8
---@return System.Int32 value:9
System.Net.HttpRequestHeader.Warning = 9
---@return System.Int32 value:10
System.Net.HttpRequestHeader.Allow = 10
---@return System.Int32 value:11
System.Net.HttpRequestHeader.ContentLength = 11
---@return System.Int32 value:12
System.Net.HttpRequestHeader.ContentType = 12
---@return System.Int32 value:13
System.Net.HttpRequestHeader.ContentEncoding = 13
---@return System.Int32 value:14
System.Net.HttpRequestHeader.ContentLanguage = 14
---@return System.Int32 value:15
System.Net.HttpRequestHeader.ContentLocation = 15
---@return System.Int32 value:16
System.Net.HttpRequestHeader.ContentMd5 = 16
---@return System.Int32 value:17
System.Net.HttpRequestHeader.ContentRange = 17
---@return System.Int32 value:18
System.Net.HttpRequestHeader.Expires = 18
---@return System.Int32 value:19
System.Net.HttpRequestHeader.LastModified = 19
---@return System.Int32 value:20
System.Net.HttpRequestHeader.Accept = 20
---@return System.Int32 value:21
System.Net.HttpRequestHeader.AcceptCharset = 21
---@return System.Int32 value:22
System.Net.HttpRequestHeader.AcceptEncoding = 22
---@return System.Int32 value:23
System.Net.HttpRequestHeader.AcceptLanguage = 23
---@return System.Int32 value:24
System.Net.HttpRequestHeader.Authorization = 24
---@return System.Int32 value:25
System.Net.HttpRequestHeader.Cookie = 25
---@return System.Int32 value:26
System.Net.HttpRequestHeader.Expect = 26
---@return System.Int32 value:27
System.Net.HttpRequestHeader.From = 27
---@return System.Int32 value:28
System.Net.HttpRequestHeader.Host = 28
---@return System.Int32 value:29
System.Net.HttpRequestHeader.IfMatch = 29
---@return System.Int32 value:30
System.Net.HttpRequestHeader.IfModifiedSince = 30
---@return System.Int32 value:31
System.Net.HttpRequestHeader.IfNoneMatch = 31
---@return System.Int32 value:32
System.Net.HttpRequestHeader.IfRange = 32
---@return System.Int32 value:33
System.Net.HttpRequestHeader.IfUnmodifiedSince = 33
---@return System.Int32 value:34
System.Net.HttpRequestHeader.MaxForwards = 34
---@return System.Int32 value:35
System.Net.HttpRequestHeader.ProxyAuthorization = 35
---@return System.Int32 value:36
System.Net.HttpRequestHeader.Referer = 36
---@return System.Int32 value:37
System.Net.HttpRequestHeader.Range = 37
---@return System.Int32 value:38
System.Net.HttpRequestHeader.Te = 38
---@return System.Int32 value:39
System.Net.HttpRequestHeader.Translate = 39
---@return System.Int32 value:40
System.Net.HttpRequestHeader.UserAgent = 40

---@class System.Net.HttpResponseHeader : System.Enum
System.Net.HttpResponseHeader = {}
---@type System.Net.HttpResponseHeader
CS.System.Net.HttpResponseHeader = System.Net.HttpResponseHeader

---@return System.Int32 value:0
System.Net.HttpResponseHeader.CacheControl = 0
---@return System.Int32 value:1
System.Net.HttpResponseHeader.Connection = 1
---@return System.Int32 value:2
System.Net.HttpResponseHeader.Date = 2
---@return System.Int32 value:3
System.Net.HttpResponseHeader.KeepAlive = 3
---@return System.Int32 value:4
System.Net.HttpResponseHeader.Pragma = 4
---@return System.Int32 value:5
System.Net.HttpResponseHeader.Trailer = 5
---@return System.Int32 value:6
System.Net.HttpResponseHeader.TransferEncoding = 6
---@return System.Int32 value:7
System.Net.HttpResponseHeader.Upgrade = 7
---@return System.Int32 value:8
System.Net.HttpResponseHeader.Via = 8
---@return System.Int32 value:9
System.Net.HttpResponseHeader.Warning = 9
---@return System.Int32 value:10
System.Net.HttpResponseHeader.Allow = 10
---@return System.Int32 value:11
System.Net.HttpResponseHeader.ContentLength = 11
---@return System.Int32 value:12
System.Net.HttpResponseHeader.ContentType = 12
---@return System.Int32 value:13
System.Net.HttpResponseHeader.ContentEncoding = 13
---@return System.Int32 value:14
System.Net.HttpResponseHeader.ContentLanguage = 14
---@return System.Int32 value:15
System.Net.HttpResponseHeader.ContentLocation = 15
---@return System.Int32 value:16
System.Net.HttpResponseHeader.ContentMd5 = 16
---@return System.Int32 value:17
System.Net.HttpResponseHeader.ContentRange = 17
---@return System.Int32 value:18
System.Net.HttpResponseHeader.Expires = 18
---@return System.Int32 value:19
System.Net.HttpResponseHeader.LastModified = 19
---@return System.Int32 value:20
System.Net.HttpResponseHeader.AcceptRanges = 20
---@return System.Int32 value:21
System.Net.HttpResponseHeader.Age = 21
---@return System.Int32 value:22
System.Net.HttpResponseHeader.ETag = 22
---@return System.Int32 value:23
System.Net.HttpResponseHeader.Location = 23
---@return System.Int32 value:24
System.Net.HttpResponseHeader.ProxyAuthenticate = 24
---@return System.Int32 value:25
System.Net.HttpResponseHeader.RetryAfter = 25
---@return System.Int32 value:26
System.Net.HttpResponseHeader.Server = 26
---@return System.Int32 value:27
System.Net.HttpResponseHeader.SetCookie = 27
---@return System.Int32 value:28
System.Net.HttpResponseHeader.Vary = 28
---@return System.Int32 value:29
System.Net.HttpResponseHeader.WwwAuthenticate = 29

---@class System.Net.HttpStatusCode : System.Enum
System.Net.HttpStatusCode = {}
---@type System.Net.HttpStatusCode
CS.System.Net.HttpStatusCode = System.Net.HttpStatusCode


---@class System.Net.HttpVersion : System.Object
---@field public Version10 System.Version
---@field public Version11 System.Version
System.Net.HttpVersion = {}
---@type System.Net.HttpVersion
CS.System.Net.HttpVersion = System.Net.HttpVersion

---@class System.Net.IPAddress : System.Object
---@field public Address System.Int64 @ setter getter
---@field public AddressFamily System.Net.Sockets.AddressFamily @  getter
---@field public ScopeId System.Int64 @ setter getter
---@field public IsIPv6Multicast System.Boolean @  getter
---@field public IsIPv6LinkLocal System.Boolean @  getter
---@field public IsIPv6SiteLocal System.Boolean @  getter
---@field public IsIPv6Teredo System.Boolean @  getter
---@field public IsIPv4MappedToIPv6 System.Boolean @  getter
---@field public Any System.Net.IPAddress
---@field public Loopback System.Net.IPAddress
---@field public Broadcast System.Net.IPAddress
---@field public None System.Net.IPAddress
---@field public IPv6Any System.Net.IPAddress
---@field public IPv6Loopback System.Net.IPAddress
---@field public IPv6None System.Net.IPAddress
System.Net.IPAddress = {}
---@type System.Net.IPAddress
CS.System.Net.IPAddress = System.Net.IPAddress

---@param ipString System.String
---@param address System.Net.IPAddress
---@return System.Boolean
function System.Net.IPAddress.TryParse(ipString, address)end
---@param ipString System.String
---@return System.Net.IPAddress
function System.Net.IPAddress.Parse(ipString)end
---@return System.Byte[]
function System.Net.IPAddress:GetAddressBytes()end
---@return System.String
function System.Net.IPAddress:ToString()end
---@overload fun(host:System.Int32):System.Int32
---@overload fun(host:System.Int16):System.Int16
---@param host System.Int64
---@return System.Int64
function System.Net.IPAddress.HostToNetworkOrder(host)end
---@overload fun(network:System.Int32):System.Int32
---@overload fun(network:System.Int16):System.Int16
---@param network System.Int64
---@return System.Int64
function System.Net.IPAddress.NetworkToHostOrder(network)end
---@param address System.Net.IPAddress
---@return System.Boolean
function System.Net.IPAddress.IsLoopback(address)end
---@param comparand System.Object
---@return System.Boolean
function System.Net.IPAddress:Equals(comparand)end
---@return System.Int32
function System.Net.IPAddress:GetHashCode()end
---@return System.Net.IPAddress
function System.Net.IPAddress:MapToIPv6()end
---@return System.Net.IPAddress
function System.Net.IPAddress:MapToIPv4()end
---@class System.Net.IPEndPoint : System.Net.EndPoint
---@field public AddressFamily System.Net.Sockets.AddressFamily @  getter
---@field public Address System.Net.IPAddress @ setter getter
---@field public Port System.Int32 @ setter getter
---@field public MinPort System.Int32
---@field public MaxPort System.Int32
System.Net.IPEndPoint = {}
---@type System.Net.IPEndPoint
CS.System.Net.IPEndPoint = System.Net.IPEndPoint

---@return System.String
function System.Net.IPEndPoint:ToString()end
---@return System.Net.SocketAddress
function System.Net.IPEndPoint:Serialize()end
---@param socketAddress System.Net.SocketAddress
---@return System.Net.EndPoint
function System.Net.IPEndPoint:Create(socketAddress)end
---@param comparand System.Object
---@return System.Boolean
function System.Net.IPEndPoint:Equals(comparand)end
---@return System.Int32
function System.Net.IPEndPoint:GetHashCode()end
---@class System.Net.IPHostEntry : System.Object
---@field public HostName System.String @ setter getter
---@field public Aliases System.String[] @ setter getter
---@field public AddressList System.Net.IPAddress[] @ setter getter
System.Net.IPHostEntry = {}
---@type System.Net.IPHostEntry
CS.System.Net.IPHostEntry = System.Net.IPHostEntry

---@class System.Net.NetworkAccess : System.Enum
System.Net.NetworkAccess = {}
---@type System.Net.NetworkAccess
CS.System.Net.NetworkAccess = System.Net.NetworkAccess


---@class System.Net.NetworkCredential : System.Object
---@field public UserName System.String @ setter getter
---@field public Password System.String @ setter getter
---@field public SecurePassword System.Security.SecureString @ setter getter
---@field public Domain System.String @ setter getter
System.Net.NetworkCredential = {}
---@type System.Net.NetworkCredential
CS.System.Net.NetworkCredential = System.Net.NetworkCredential

---@overload fun(host:System.String, port:System.Int32, authenticationType:System.String):System.Net.NetworkCredential
---@param uri System.Uri
---@param authType System.String
---@return System.Net.NetworkCredential
function System.Net.NetworkCredential:GetCredential(uri, authType)end
---@class System.Net.ProtocolViolationException : System.InvalidOperationException
System.Net.ProtocolViolationException = {}
---@type System.Net.ProtocolViolationException
CS.System.Net.ProtocolViolationException = System.Net.ProtocolViolationException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.ProtocolViolationException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.SocketAddress : System.Object
---@field public Family System.Net.Sockets.AddressFamily @  getter
---@field public Size System.Int32 @  getter
---@field public Item System.Byte @ setter getter
System.Net.SocketAddress = {}
---@type System.Net.SocketAddress
CS.System.Net.SocketAddress = System.Net.SocketAddress

---@param comparand System.Object
---@return System.Boolean
function System.Net.SocketAddress:Equals(comparand)end
---@return System.Int32
function System.Net.SocketAddress:GetHashCode()end
---@return System.String
function System.Net.SocketAddress:ToString()end
---@class System.Net.TransportContext : System.Object
System.Net.TransportContext = {}
---@type System.Net.TransportContext
CS.System.Net.TransportContext = System.Net.TransportContext

---@param kind System.Security.Authentication.ExtendedProtection.ChannelBindingKind
---@return System.Security.Authentication.ExtendedProtection.ChannelBinding
function System.Net.TransportContext:GetChannelBinding(kind)end
---@return System.Collections.Generic.IEnumerable
function System.Net.TransportContext:GetTlsTokenBindings()end
---@class System.Net.TransportType : System.Enum
System.Net.TransportType = {}
---@type System.Net.TransportType
CS.System.Net.TransportType = System.Net.TransportType

---@return System.Int32 value:1
System.Net.TransportType.Udp = 1
---@return System.Int32 value:2
System.Net.TransportType.Tcp = 2
---@return System.Int32 value:3
System.Net.TransportType.All = 3

---@class System.Net.WebException : System.InvalidOperationException
---@field public Status System.Net.WebExceptionStatus @  getter
---@field public Response System.Net.WebResponse @  getter
System.Net.WebException = {}
---@type System.Net.WebException
CS.System.Net.WebException = System.Net.WebException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.WebException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.WebExceptionStatus : System.Enum
System.Net.WebExceptionStatus = {}
---@type System.Net.WebExceptionStatus
CS.System.Net.WebExceptionStatus = System.Net.WebExceptionStatus

---@return System.Int32 value:0
System.Net.WebExceptionStatus.Success = 0
---@return System.Int32 value:1
System.Net.WebExceptionStatus.NameResolutionFailure = 1
---@return System.Int32 value:2
System.Net.WebExceptionStatus.ConnectFailure = 2
---@return System.Int32 value:3
System.Net.WebExceptionStatus.ReceiveFailure = 3
---@return System.Int32 value:4
System.Net.WebExceptionStatus.SendFailure = 4
---@return System.Int32 value:5
System.Net.WebExceptionStatus.PipelineFailure = 5
---@return System.Int32 value:6
System.Net.WebExceptionStatus.RequestCanceled = 6
---@return System.Int32 value:7
System.Net.WebExceptionStatus.ProtocolError = 7
---@return System.Int32 value:8
System.Net.WebExceptionStatus.ConnectionClosed = 8
---@return System.Int32 value:9
System.Net.WebExceptionStatus.TrustFailure = 9
---@return System.Int32 value:10
System.Net.WebExceptionStatus.SecureChannelFailure = 10
---@return System.Int32 value:11
System.Net.WebExceptionStatus.ServerProtocolViolation = 11
---@return System.Int32 value:12
System.Net.WebExceptionStatus.KeepAliveFailure = 12
---@return System.Int32 value:13
System.Net.WebExceptionStatus.Pending = 13
---@return System.Int32 value:14
System.Net.WebExceptionStatus.Timeout = 14
---@return System.Int32 value:15
System.Net.WebExceptionStatus.ProxyNameResolutionFailure = 15
---@return System.Int32 value:16
System.Net.WebExceptionStatus.UnknownError = 16
---@return System.Int32 value:17
System.Net.WebExceptionStatus.MessageLengthLimitExceeded = 17
---@return System.Int32 value:18
System.Net.WebExceptionStatus.CacheEntryNotFound = 18
---@return System.Int32 value:19
System.Net.WebExceptionStatus.RequestProhibitedByCachePolicy = 19
---@return System.Int32 value:20
System.Net.WebExceptionStatus.RequestProhibitedByProxy = 20

---@class System.Net.WebHeaderCollection : System.Collections.Specialized.NameValueCollection
---@field public Item System.String @ setter getter
---@field public Item System.String @ setter getter
---@field public Count System.Int32 @  getter
---@field public Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection @  getter
---@field public AllKeys System.String[] @  getter
System.Net.WebHeaderCollection = {}
---@type System.Net.WebHeaderCollection
CS.System.Net.WebHeaderCollection = System.Net.WebHeaderCollection

---@overload fun(header:System.Net.HttpRequestHeader, value:System.String):System.Void
---@overload fun(header:System.Net.HttpResponseHeader, value:System.String):System.Void
---@overload fun(name:System.String, value:System.String):System.Void
---@param header System.String
---@return System.Void
function System.Net.WebHeaderCollection:Add(header)end
---@overload fun(header:System.Net.HttpResponseHeader, value:System.String):System.Void
---@overload fun(name:System.String, value:System.String):System.Void
---@param header System.Net.HttpRequestHeader
---@param value System.String
---@return System.Void
function System.Net.WebHeaderCollection:Set(header, value)end
---@overload fun(header:System.Net.HttpResponseHeader):System.Void
---@overload fun(name:System.String):System.Void
---@param header System.Net.HttpRequestHeader
---@return System.Void
function System.Net.WebHeaderCollection:Remove(header)end
---@overload fun(header:System.String):System.String[]
---@param index System.Int32
---@return System.String[]
function System.Net.WebHeaderCollection:GetValues(index)end
---@return System.String
function System.Net.WebHeaderCollection:ToString()end
---@return System.Byte[]
function System.Net.WebHeaderCollection:ToByteArray()end
---@overload fun(headerName:System.String, response:System.Boolean):System.Boolean
---@param headerName System.String
---@return System.Boolean
function System.Net.WebHeaderCollection.IsRestricted(headerName)end
---@param sender System.Object
---@return System.Void
function System.Net.WebHeaderCollection:OnDeserialization(sender)end
---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.WebHeaderCollection:GetObjectData(serializationInfo, streamingContext)end
---@overload fun(name:System.String):System.String
---@param index System.Int32
---@return System.String
function System.Net.WebHeaderCollection:Get(index)end
---@return System.Collections.IEnumerator
function System.Net.WebHeaderCollection:GetEnumerator()end
---@param index System.Int32
---@return System.String
function System.Net.WebHeaderCollection:GetKey(index)end
---@return System.Void
function System.Net.WebHeaderCollection:Clear()end
---@class System.Net.WebPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Connect System.String @ setter getter
---@field public Accept System.String @ setter getter
---@field public ConnectPattern System.String @ setter getter
---@field public AcceptPattern System.String @ setter getter
System.Net.WebPermissionAttribute = {}
---@type System.Net.WebPermissionAttribute
CS.System.Net.WebPermissionAttribute = System.Net.WebPermissionAttribute

---@return System.Security.IPermission
function System.Net.WebPermissionAttribute:CreatePermission()end
---@class System.Net.WebPermission : System.Security.CodeAccessPermission
---@field public ConnectList System.Collections.IEnumerator @  getter
---@field public AcceptList System.Collections.IEnumerator @  getter
System.Net.WebPermission = {}
---@type System.Net.WebPermission
CS.System.Net.WebPermission = System.Net.WebPermission

---@overload fun(access:System.Net.NetworkAccess, uriRegex:System.Text.RegularExpressions.Regex):System.Void
---@param access System.Net.NetworkAccess
---@param uriString System.String
---@return System.Void
function System.Net.WebPermission:AddPermission(access, uriString)end
---@return System.Boolean
function System.Net.WebPermission:IsUnrestricted()end
---@return System.Security.IPermission
function System.Net.WebPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Net.WebPermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.WebPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.WebPermission:Intersect(target)end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Net.WebPermission:FromXml(securityElement)end
---@return System.Security.SecurityElement
function System.Net.WebPermission:ToXml()end
---@class System.Net.WebRequest : System.MarshalByRefObject
---@field public CreatorInstance System.Net.IWebRequestCreate @  getter
---@field public DefaultCachePolicy System.Net.Cache.RequestCachePolicy @static setter getter
---@field public CachePolicy System.Net.Cache.RequestCachePolicy @ setter getter
---@field public Method System.String @ setter getter
---@field public RequestUri System.Uri @  getter
---@field public ConnectionGroupName System.String @ setter getter
---@field public Headers System.Net.WebHeaderCollection @ setter getter
---@field public ContentLength System.Int64 @ setter getter
---@field public ContentType System.String @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public PreAuthenticate System.Boolean @ setter getter
---@field public Timeout System.Int32 @ setter getter
---@field public AuthenticationLevel System.Net.Security.AuthenticationLevel @ setter getter
---@field public ImpersonationLevel System.Security.Principal.TokenImpersonationLevel @ setter getter
---@field public DefaultWebProxy System.Net.IWebProxy @static setter getter
System.Net.WebRequest = {}
---@type System.Net.WebRequest
CS.System.Net.WebRequest = System.Net.WebRequest

---@param creator System.Net.IWebRequestCreate
---@return System.Void
function System.Net.WebRequest.RegisterPortableWebRequestCreator(creator)end
---@overload fun(requestUri:System.Uri):System.Net.WebRequest
---@param requestUriString System.String
---@return System.Net.WebRequest
function System.Net.WebRequest.Create(requestUriString)end
---@param requestUri System.Uri
---@return System.Net.WebRequest
function System.Net.WebRequest.CreateDefault(requestUri)end
---@overload fun(requestUri:System.Uri):System.Net.HttpWebRequest
---@param requestUriString System.String
---@return System.Net.HttpWebRequest
function System.Net.WebRequest.CreateHttp(requestUriString)end
---@param prefix System.String
---@param creator System.Net.IWebRequestCreate
---@return System.Boolean
function System.Net.WebRequest.RegisterPrefix(prefix, creator)end
---@return System.IO.Stream
function System.Net.WebRequest:GetRequestStream()end
---@return System.Net.WebResponse
function System.Net.WebRequest:GetResponse()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.WebRequest:BeginGetResponse(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.WebResponse
function System.Net.WebRequest:EndGetResponse(asyncResult)end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.WebRequest:BeginGetRequestStream(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.IO.Stream
function System.Net.WebRequest:EndGetRequestStream(asyncResult)end
---@return System.Threading.Tasks.Task
function System.Net.WebRequest:GetRequestStreamAsync()end
---@return System.Threading.Tasks.Task
function System.Net.WebRequest:GetResponseAsync()end
---@return System.Void
function System.Net.WebRequest:Abort()end
---@return System.Net.IWebProxy
function System.Net.WebRequest.GetSystemWebProxy()end
---@class System.Net.WebRequestMethods : System.Object
System.Net.WebRequestMethods = {}
---@type System.Net.WebRequestMethods
CS.System.Net.WebRequestMethods = System.Net.WebRequestMethods

---@class System.Net.WebRequestMethods.Ftp : System.Object
---@field public DownloadFile System.String
---@field public ListDirectory System.String
---@field public UploadFile System.String
---@field public DeleteFile System.String
---@field public AppendFile System.String
---@field public GetFileSize System.String
---@field public UploadFileWithUniqueName System.String
---@field public MakeDirectory System.String
---@field public RemoveDirectory System.String
---@field public ListDirectoryDetails System.String
---@field public GetDateTimestamp System.String
---@field public PrintWorkingDirectory System.String
---@field public Rename System.String
System.Net.WebRequestMethods.Ftp = {}
---@type System.Net.WebRequestMethods.Ftp
CS.System.Net.WebRequestMethods.Ftp = System.Net.WebRequestMethods.Ftp

---@class System.Net.WebRequestMethods.Http : System.Object
---@field public Get System.String
---@field public Connect System.String
---@field public Head System.String
---@field public Put System.String
---@field public Post System.String
---@field public MkCol System.String
System.Net.WebRequestMethods.Http = {}
---@type System.Net.WebRequestMethods.Http
CS.System.Net.WebRequestMethods.Http = System.Net.WebRequestMethods.Http

---@class System.Net.WebRequestMethods.File : System.Object
---@field public DownloadFile System.String
---@field public UploadFile System.String
System.Net.WebRequestMethods.File = {}
---@type System.Net.WebRequestMethods.File
CS.System.Net.WebRequestMethods.File = System.Net.WebRequestMethods.File

---@class System.Net.WebResponse : System.MarshalByRefObject
---@field public IsFromCache System.Boolean @  getter
---@field public IsMutuallyAuthenticated System.Boolean @  getter
---@field public ContentLength System.Int64 @ setter getter
---@field public ContentType System.String @ setter getter
---@field public ResponseUri System.Uri @  getter
---@field public Headers System.Net.WebHeaderCollection @  getter
---@field public SupportsHeaders System.Boolean @  getter
System.Net.WebResponse = {}
---@type System.Net.WebResponse
CS.System.Net.WebResponse = System.Net.WebResponse

---@return System.Void
function System.Net.WebResponse:Close()end
---@return System.Void
function System.Net.WebResponse:Dispose()end
---@return System.IO.Stream
function System.Net.WebResponse:GetResponseStream()end
---@class System.Net.WebUtility : System.Object
System.Net.WebUtility = {}
---@type System.Net.WebUtility
CS.System.Net.WebUtility = System.Net.WebUtility

---@overload fun(value:System.String, output:System.IO.TextWriter):System.Void
---@param value System.String
---@return System.String
function System.Net.WebUtility.HtmlEncode(value)end
---@overload fun(value:System.String, output:System.IO.TextWriter):System.Void
---@param value System.String
---@return System.String
function System.Net.WebUtility.HtmlDecode(value)end
---@param value System.String
---@return System.String
function System.Net.WebUtility.UrlEncode(value)end
---@param value System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Byte[]
function System.Net.WebUtility.UrlEncodeToBytes(value, offset, count)end
---@param encodedValue System.String
---@return System.String
function System.Net.WebUtility.UrlDecode(encodedValue)end
---@param encodedValue System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Byte[]
function System.Net.WebUtility.UrlDecodeToBytes(encodedValue, offset, count)end
---@class System.Net.WriteStreamClosedEventArgs : System.EventArgs
---@field public Error System.Exception @  getter
System.Net.WriteStreamClosedEventArgs = {}
---@type System.Net.WriteStreamClosedEventArgs
CS.System.Net.WriteStreamClosedEventArgs = System.Net.WriteStreamClosedEventArgs

---@class System.Net.Cookie : System.Object
---@field public Comment System.String @ setter getter
---@field public CommentUri System.Uri @ setter getter
---@field public HttpOnly System.Boolean @ setter getter
---@field public Discard System.Boolean @ setter getter
---@field public Domain System.String @ setter getter
---@field public Expired System.Boolean @ setter getter
---@field public Expires System.DateTime @ setter getter
---@field public Name System.String @ setter getter
---@field public Path System.String @ setter getter
---@field public Port System.String @ setter getter
---@field public Secure System.Boolean @ setter getter
---@field public TimeStamp System.DateTime @  getter
---@field public Value System.String @ setter getter
---@field public Version System.Int32 @ setter getter
System.Net.Cookie = {}
---@type System.Net.Cookie
CS.System.Net.Cookie = System.Net.Cookie

---@param comparand System.Object
---@return System.Boolean
function System.Net.Cookie:Equals(comparand)end
---@return System.Int32
function System.Net.Cookie:GetHashCode()end
---@return System.String
function System.Net.Cookie:ToString()end
---@class System.Net.CookieCollection : System.Object
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Net.Cookie @  getter
---@field public Item System.Net.Cookie @  getter
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Net.CookieCollection = {}
---@type System.Net.CookieCollection
CS.System.Net.CookieCollection = System.Net.CookieCollection

---@overload fun(cookies:System.Net.CookieCollection):System.Void
---@param cookie System.Net.Cookie
---@return System.Void
function System.Net.CookieCollection:Add(cookie)end
---@overload fun(array:System.Net.Cookie[], index:System.Int32):System.Void
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Net.CookieCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Net.CookieCollection:GetEnumerator()end
---@class System.Net.CookieContainer : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public MaxCookieSize System.Int32 @ setter getter
---@field public PerDomainCapacity System.Int32 @ setter getter
---@field public DefaultCookieLimit System.Int32
---@field public DefaultPerDomainCookieLimit System.Int32
---@field public DefaultCookieLengthLimit System.Int32
System.Net.CookieContainer = {}
---@type System.Net.CookieContainer
CS.System.Net.CookieContainer = System.Net.CookieContainer

---@overload fun(cookies:System.Net.CookieCollection):System.Void
---@overload fun(uri:System.Uri, cookie:System.Net.Cookie):System.Void
---@overload fun(uri:System.Uri, cookies:System.Net.CookieCollection):System.Void
---@param cookie System.Net.Cookie
---@return System.Void
function System.Net.CookieContainer:Add(cookie)end
---@param uri System.Uri
---@return System.Net.CookieCollection
function System.Net.CookieContainer:GetCookies(uri)end
---@param uri System.Uri
---@return System.String
function System.Net.CookieContainer:GetCookieHeader(uri)end
---@param uri System.Uri
---@param cookieHeader System.String
---@return System.Void
function System.Net.CookieContainer:SetCookies(uri, cookieHeader)end
---@class System.Net.CookieException : System.FormatException
System.Net.CookieException = {}
---@type System.Net.CookieException
CS.System.Net.CookieException = System.Net.CookieException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.CookieException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.FileWebRequest : System.Net.WebRequest
---@field public ConnectionGroupName System.String @ setter getter
---@field public ContentLength System.Int64 @ setter getter
---@field public ContentType System.String @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public Headers System.Net.WebHeaderCollection @  getter
---@field public Method System.String @ setter getter
---@field public PreAuthenticate System.Boolean @ setter getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public Timeout System.Int32 @ setter getter
---@field public RequestUri System.Uri @  getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
System.Net.FileWebRequest = {}
---@type System.Net.FileWebRequest
CS.System.Net.FileWebRequest = System.Net.FileWebRequest

---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.FileWebRequest:BeginGetRequestStream(callback, state)end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.FileWebRequest:BeginGetResponse(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.IO.Stream
function System.Net.FileWebRequest:EndGetRequestStream(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Net.WebResponse
function System.Net.FileWebRequest:EndGetResponse(asyncResult)end
---@return System.IO.Stream
function System.Net.FileWebRequest:GetRequestStream()end
---@return System.Net.WebResponse
function System.Net.FileWebRequest:GetResponse()end
---@return System.Void
function System.Net.FileWebRequest:Abort()end
---@class System.Net.FileWebResponse : System.Net.WebResponse
---@field public ContentLength System.Int64 @  getter
---@field public ContentType System.String @  getter
---@field public Headers System.Net.WebHeaderCollection @  getter
---@field public SupportsHeaders System.Boolean @  getter
---@field public ResponseUri System.Uri @  getter
System.Net.FileWebResponse = {}
---@type System.Net.FileWebResponse
CS.System.Net.FileWebResponse = System.Net.FileWebResponse

---@return System.Void
function System.Net.FileWebResponse:Close()end
---@return System.IO.Stream
function System.Net.FileWebResponse:GetResponseStream()end
---@class System.Net.WebClient : System.ComponentModel.Component
---@field public AllowReadStreamBuffering System.Boolean @ setter getter
---@field public AllowWriteStreamBuffering System.Boolean @ setter getter
---@field public Encoding System.Text.Encoding @ setter getter
---@field public BaseAddress System.String @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public Headers System.Net.WebHeaderCollection @ setter getter
---@field public QueryString System.Collections.Specialized.NameValueCollection @ setter getter
---@field public ResponseHeaders System.Net.WebHeaderCollection @  getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public CachePolicy System.Net.Cache.RequestCachePolicy @ setter getter
---@field public IsBusy System.Boolean @  getter
System.Net.WebClient = {}
---@type System.Net.WebClient
CS.System.Net.WebClient = System.Net.WebClient

---@param value System.Net.WriteStreamClosedEventHandler
---@return System.Void
function System.Net.WebClient:add_WriteStreamClosed(value)end
---@param value System.Net.WriteStreamClosedEventHandler
---@return System.Void
function System.Net.WebClient:remove_WriteStreamClosed(value)end
---@overload fun(address:System.Uri):System.Byte[]
---@param address System.String
---@return System.Byte[]
function System.Net.WebClient:DownloadData(address)end
---@overload fun(address:System.Uri, fileName:System.String):System.Void
---@param address System.String
---@param fileName System.String
---@return System.Void
function System.Net.WebClient:DownloadFile(address, fileName)end
---@overload fun(address:System.Uri):System.IO.Stream
---@param address System.String
---@return System.IO.Stream
function System.Net.WebClient:OpenRead(address)end
---@overload fun(address:System.Uri):System.IO.Stream
---@overload fun(address:System.String, method:System.String):System.IO.Stream
---@overload fun(address:System.Uri, method:System.String):System.IO.Stream
---@param address System.String
---@return System.IO.Stream
function System.Net.WebClient:OpenWrite(address)end
---@overload fun(address:System.Uri, data:System.Byte[]):System.Byte[]
---@overload fun(address:System.String, method:System.String, data:System.Byte[]):System.Byte[]
---@overload fun(address:System.Uri, method:System.String, data:System.Byte[]):System.Byte[]
---@param address System.String
---@param data System.Byte[]
---@return System.Byte[]
function System.Net.WebClient:UploadData(address, data)end
---@overload fun(address:System.Uri, fileName:System.String):System.Byte[]
---@overload fun(address:System.String, method:System.String, fileName:System.String):System.Byte[]
---@overload fun(address:System.Uri, method:System.String, fileName:System.String):System.Byte[]
---@param address System.String
---@param fileName System.String
---@return System.Byte[]
function System.Net.WebClient:UploadFile(address, fileName)end
---@overload fun(address:System.Uri, data:System.Collections.Specialized.NameValueCollection):System.Byte[]
---@overload fun(address:System.String, method:System.String, data:System.Collections.Specialized.NameValueCollection):System.Byte[]
---@overload fun(address:System.Uri, method:System.String, data:System.Collections.Specialized.NameValueCollection):System.Byte[]
---@param address System.String
---@param data System.Collections.Specialized.NameValueCollection
---@return System.Byte[]
function System.Net.WebClient:UploadValues(address, data)end
---@overload fun(address:System.Uri, data:System.String):System.String
---@overload fun(address:System.String, method:System.String, data:System.String):System.String
---@overload fun(address:System.Uri, method:System.String, data:System.String):System.String
---@param address System.String
---@param data System.String
---@return System.String
function System.Net.WebClient:UploadString(address, data)end
---@overload fun(address:System.Uri):System.String
---@param address System.String
---@return System.String
function System.Net.WebClient:DownloadString(address)end
---@param value System.Net.OpenReadCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_OpenReadCompleted(value)end
---@param value System.Net.OpenReadCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_OpenReadCompleted(value)end
---@overload fun(address:System.Uri, userToken:System.Object):System.Void
---@param address System.Uri
---@return System.Void
function System.Net.WebClient:OpenReadAsync(address)end
---@param value System.Net.OpenWriteCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_OpenWriteCompleted(value)end
---@param value System.Net.OpenWriteCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_OpenWriteCompleted(value)end
---@overload fun(address:System.Uri, method:System.String):System.Void
---@overload fun(address:System.Uri, method:System.String, userToken:System.Object):System.Void
---@param address System.Uri
---@return System.Void
function System.Net.WebClient:OpenWriteAsync(address)end
---@param value System.Net.DownloadStringCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_DownloadStringCompleted(value)end
---@param value System.Net.DownloadStringCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_DownloadStringCompleted(value)end
---@overload fun(address:System.Uri, userToken:System.Object):System.Void
---@param address System.Uri
---@return System.Void
function System.Net.WebClient:DownloadStringAsync(address)end
---@param value System.Net.DownloadDataCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_DownloadDataCompleted(value)end
---@param value System.Net.DownloadDataCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_DownloadDataCompleted(value)end
---@overload fun(address:System.Uri, userToken:System.Object):System.Void
---@param address System.Uri
---@return System.Void
function System.Net.WebClient:DownloadDataAsync(address)end
---@param value System.ComponentModel.AsyncCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_DownloadFileCompleted(value)end
---@param value System.ComponentModel.AsyncCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_DownloadFileCompleted(value)end
---@overload fun(address:System.Uri, fileName:System.String, userToken:System.Object):System.Void
---@param address System.Uri
---@param fileName System.String
---@return System.Void
function System.Net.WebClient:DownloadFileAsync(address, fileName)end
---@param value System.Net.UploadStringCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_UploadStringCompleted(value)end
---@param value System.Net.UploadStringCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_UploadStringCompleted(value)end
---@overload fun(address:System.Uri, method:System.String, data:System.String):System.Void
---@overload fun(address:System.Uri, method:System.String, data:System.String, userToken:System.Object):System.Void
---@param address System.Uri
---@param data System.String
---@return System.Void
function System.Net.WebClient:UploadStringAsync(address, data)end
---@param value System.Net.UploadDataCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_UploadDataCompleted(value)end
---@param value System.Net.UploadDataCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_UploadDataCompleted(value)end
---@overload fun(address:System.Uri, method:System.String, data:System.Byte[]):System.Void
---@overload fun(address:System.Uri, method:System.String, data:System.Byte[], userToken:System.Object):System.Void
---@param address System.Uri
---@param data System.Byte[]
---@return System.Void
function System.Net.WebClient:UploadDataAsync(address, data)end
---@param value System.Net.UploadFileCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_UploadFileCompleted(value)end
---@param value System.Net.UploadFileCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_UploadFileCompleted(value)end
---@overload fun(address:System.Uri, method:System.String, fileName:System.String):System.Void
---@overload fun(address:System.Uri, method:System.String, fileName:System.String, userToken:System.Object):System.Void
---@param address System.Uri
---@param fileName System.String
---@return System.Void
function System.Net.WebClient:UploadFileAsync(address, fileName)end
---@param value System.Net.UploadValuesCompletedEventHandler
---@return System.Void
function System.Net.WebClient:add_UploadValuesCompleted(value)end
---@param value System.Net.UploadValuesCompletedEventHandler
---@return System.Void
function System.Net.WebClient:remove_UploadValuesCompleted(value)end
---@overload fun(address:System.Uri, method:System.String, data:System.Collections.Specialized.NameValueCollection):System.Void
---@overload fun(address:System.Uri, method:System.String, data:System.Collections.Specialized.NameValueCollection, userToken:System.Object):System.Void
---@param address System.Uri
---@param data System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Net.WebClient:UploadValuesAsync(address, data)end
---@return System.Void
function System.Net.WebClient:CancelAsync()end
---@overload fun(address:System.Uri):System.Threading.Tasks.Task
---@param address System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:DownloadStringTaskAsync(address)end
---@overload fun(address:System.Uri):System.Threading.Tasks.Task
---@param address System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:OpenReadTaskAsync(address)end
---@overload fun(address:System.Uri):System.Threading.Tasks.Task
---@overload fun(address:System.String, method:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.Uri, method:System.String):System.Threading.Tasks.Task
---@param address System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:OpenWriteTaskAsync(address)end
---@overload fun(address:System.Uri, data:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.String, method:System.String, data:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.Uri, method:System.String, data:System.String):System.Threading.Tasks.Task
---@param address System.String
---@param data System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:UploadStringTaskAsync(address, data)end
---@overload fun(address:System.Uri):System.Threading.Tasks.Task
---@param address System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:DownloadDataTaskAsync(address)end
---@overload fun(address:System.Uri, fileName:System.String):System.Threading.Tasks.Task
---@param address System.String
---@param fileName System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:DownloadFileTaskAsync(address, fileName)end
---@overload fun(address:System.Uri, data:System.Byte[]):System.Threading.Tasks.Task
---@overload fun(address:System.String, method:System.String, data:System.Byte[]):System.Threading.Tasks.Task
---@overload fun(address:System.Uri, method:System.String, data:System.Byte[]):System.Threading.Tasks.Task
---@param address System.String
---@param data System.Byte[]
---@return System.Threading.Tasks.Task
function System.Net.WebClient:UploadDataTaskAsync(address, data)end
---@overload fun(address:System.Uri, fileName:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.String, method:System.String, fileName:System.String):System.Threading.Tasks.Task
---@overload fun(address:System.Uri, method:System.String, fileName:System.String):System.Threading.Tasks.Task
---@param address System.String
---@param fileName System.String
---@return System.Threading.Tasks.Task
function System.Net.WebClient:UploadFileTaskAsync(address, fileName)end
---@overload fun(address:System.Uri, data:System.Collections.Specialized.NameValueCollection):System.Threading.Tasks.Task
---@overload fun(address:System.String, method:System.String, data:System.Collections.Specialized.NameValueCollection):System.Threading.Tasks.Task
---@overload fun(address:System.Uri, method:System.String, data:System.Collections.Specialized.NameValueCollection):System.Threading.Tasks.Task
---@param address System.String
---@param data System.Collections.Specialized.NameValueCollection
---@return System.Threading.Tasks.Task
function System.Net.WebClient:UploadValuesTaskAsync(address, data)end
---@param value System.Net.DownloadProgressChangedEventHandler
---@return System.Void
function System.Net.WebClient:add_DownloadProgressChanged(value)end
---@param value System.Net.DownloadProgressChangedEventHandler
---@return System.Void
function System.Net.WebClient:remove_DownloadProgressChanged(value)end
---@param value System.Net.UploadProgressChangedEventHandler
---@return System.Void
function System.Net.WebClient:add_UploadProgressChanged(value)end
---@param value System.Net.UploadProgressChangedEventHandler
---@return System.Void
function System.Net.WebClient:remove_UploadProgressChanged(value)end
---@class System.Net.OpenReadCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.IO.Stream @  getter
System.Net.OpenReadCompletedEventArgs = {}
---@type System.Net.OpenReadCompletedEventArgs
CS.System.Net.OpenReadCompletedEventArgs = System.Net.OpenReadCompletedEventArgs

---@class System.Net.OpenWriteCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.IO.Stream @  getter
System.Net.OpenWriteCompletedEventArgs = {}
---@type System.Net.OpenWriteCompletedEventArgs
CS.System.Net.OpenWriteCompletedEventArgs = System.Net.OpenWriteCompletedEventArgs

---@class System.Net.DownloadStringCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.String @  getter
System.Net.DownloadStringCompletedEventArgs = {}
---@type System.Net.DownloadStringCompletedEventArgs
CS.System.Net.DownloadStringCompletedEventArgs = System.Net.DownloadStringCompletedEventArgs

---@class System.Net.DownloadDataCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.Byte[] @  getter
System.Net.DownloadDataCompletedEventArgs = {}
---@type System.Net.DownloadDataCompletedEventArgs
CS.System.Net.DownloadDataCompletedEventArgs = System.Net.DownloadDataCompletedEventArgs

---@class System.Net.UploadStringCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.String @  getter
System.Net.UploadStringCompletedEventArgs = {}
---@type System.Net.UploadStringCompletedEventArgs
CS.System.Net.UploadStringCompletedEventArgs = System.Net.UploadStringCompletedEventArgs

---@class System.Net.UploadDataCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.Byte[] @  getter
System.Net.UploadDataCompletedEventArgs = {}
---@type System.Net.UploadDataCompletedEventArgs
CS.System.Net.UploadDataCompletedEventArgs = System.Net.UploadDataCompletedEventArgs

---@class System.Net.UploadFileCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.Byte[] @  getter
System.Net.UploadFileCompletedEventArgs = {}
---@type System.Net.UploadFileCompletedEventArgs
CS.System.Net.UploadFileCompletedEventArgs = System.Net.UploadFileCompletedEventArgs

---@class System.Net.UploadValuesCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.Byte[] @  getter
System.Net.UploadValuesCompletedEventArgs = {}
---@type System.Net.UploadValuesCompletedEventArgs
CS.System.Net.UploadValuesCompletedEventArgs = System.Net.UploadValuesCompletedEventArgs

---@class System.Net.DownloadProgressChangedEventArgs : System.ComponentModel.ProgressChangedEventArgs
---@field public BytesReceived System.Int64 @  getter
---@field public TotalBytesToReceive System.Int64 @  getter
System.Net.DownloadProgressChangedEventArgs = {}
---@type System.Net.DownloadProgressChangedEventArgs
CS.System.Net.DownloadProgressChangedEventArgs = System.Net.DownloadProgressChangedEventArgs

---@class System.Net.UploadProgressChangedEventArgs : System.ComponentModel.ProgressChangedEventArgs
---@field public BytesReceived System.Int64 @  getter
---@field public TotalBytesToReceive System.Int64 @  getter
---@field public BytesSent System.Int64 @  getter
---@field public TotalBytesToSend System.Int64 @  getter
System.Net.UploadProgressChangedEventArgs = {}
---@type System.Net.UploadProgressChangedEventArgs
CS.System.Net.UploadProgressChangedEventArgs = System.Net.UploadProgressChangedEventArgs

---@class System.Net.WebProxy : System.Object
---@field public Address System.Uri @ setter getter
---@field public BypassProxyOnLocal System.Boolean @ setter getter
---@field public BypassList System.String[] @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public BypassArrayList System.Collections.ArrayList @  getter
System.Net.WebProxy = {}
---@type System.Net.WebProxy
CS.System.Net.WebProxy = System.Net.WebProxy

---@param destination System.Uri
---@return System.Uri
function System.Net.WebProxy:GetProxy(destination)end
---@param host System.Uri
---@return System.Boolean
function System.Net.WebProxy:IsBypassed(host)end
---@return System.Net.WebProxy
function System.Net.WebProxy.GetDefaultProxy()end
---@return System.Net.IWebProxy
function System.Net.WebProxy.CreateDefaultProxy()end
---@class System.Net.AuthenticationManager : System.Object
---@field public CredentialPolicy System.Net.ICredentialPolicy @static setter getter
---@field public CustomTargetNameDictionary System.Collections.Specialized.StringDictionary @static  getter
---@field public RegisteredModules System.Collections.IEnumerator @static  getter
System.Net.AuthenticationManager = {}
---@type System.Net.AuthenticationManager
CS.System.Net.AuthenticationManager = System.Net.AuthenticationManager

---@param challenge System.String
---@param request System.Net.WebRequest
---@param credentials System.Net.ICredentials
---@return System.Net.Authorization
function System.Net.AuthenticationManager.Authenticate(challenge, request, credentials)end
---@param request System.Net.WebRequest
---@param credentials System.Net.ICredentials
---@return System.Net.Authorization
function System.Net.AuthenticationManager.PreAuthenticate(request, credentials)end
---@param authenticationModule System.Net.IAuthenticationModule
---@return System.Void
function System.Net.AuthenticationManager.Register(authenticationModule)end
---@overload fun(authenticationScheme:System.String):System.Void
---@param authenticationModule System.Net.IAuthenticationModule
---@return System.Void
function System.Net.AuthenticationManager.Unregister(authenticationModule)end
---@class System.Net.DecompressionMethods : System.Enum
System.Net.DecompressionMethods = {}
---@type System.Net.DecompressionMethods
CS.System.Net.DecompressionMethods = System.Net.DecompressionMethods

---@return System.Int32 value:0
System.Net.DecompressionMethods.None = 0
---@return System.Int32 value:1
System.Net.DecompressionMethods.GZip = 1
---@return System.Int32 value:2
System.Net.DecompressionMethods.Deflate = 2

---@class System.Net.Dns : System.Object
System.Net.Dns = {}
---@type System.Net.Dns
CS.System.Net.Dns = System.Net.Dns

---@param hostName System.String
---@param requestCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.Net.Dns.BeginGetHostByName(hostName, requestCallback, stateObject)end
---@param hostName System.String
---@param requestCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.Net.Dns.BeginResolve(hostName, requestCallback, stateObject)end
---@param hostNameOrAddress System.String
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Dns.BeginGetHostAddresses(hostNameOrAddress, requestCallback, state)end
---@overload fun(address:System.Net.IPAddress, requestCallback:System.AsyncCallback, stateObject:System.Object):System.IAsyncResult
---@param hostNameOrAddress System.String
---@param requestCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.Net.Dns.BeginGetHostEntry(hostNameOrAddress, requestCallback, stateObject)end
---@param asyncResult System.IAsyncResult
---@return System.Net.IPHostEntry
function System.Net.Dns.EndGetHostByName(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Net.IPHostEntry
function System.Net.Dns.EndResolve(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Net.IPAddress[]
function System.Net.Dns.EndGetHostAddresses(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Net.IPHostEntry
function System.Net.Dns.EndGetHostEntry(asyncResult)end
---@overload fun(address:System.String):System.Net.IPHostEntry
---@param address System.Net.IPAddress
---@return System.Net.IPHostEntry
function System.Net.Dns.GetHostByAddress(address)end
---@overload fun(address:System.Net.IPAddress):System.Net.IPHostEntry
---@param hostNameOrAddress System.String
---@return System.Net.IPHostEntry
function System.Net.Dns.GetHostEntry(hostNameOrAddress)end
---@param hostNameOrAddress System.String
---@return System.Net.IPAddress[]
function System.Net.Dns.GetHostAddresses(hostNameOrAddress)end
---@param hostName System.String
---@return System.Net.IPHostEntry
function System.Net.Dns.GetHostByName(hostName)end
---@return System.String
function System.Net.Dns.GetHostName()end
---@param hostName System.String
---@return System.Net.IPHostEntry
function System.Net.Dns.Resolve(hostName)end
---@param hostNameOrAddress System.String
---@return System.Threading.Tasks.Task
function System.Net.Dns.GetHostAddressesAsync(hostNameOrAddress)end
---@overload fun(hostNameOrAddress:System.String):System.Threading.Tasks.Task
---@param address System.Net.IPAddress
---@return System.Threading.Tasks.Task
function System.Net.Dns.GetHostEntryAsync(address)end
---@class System.Net.DnsPermission : System.Security.CodeAccessPermission
System.Net.DnsPermission = {}
---@type System.Net.DnsPermission
CS.System.Net.DnsPermission = System.Net.DnsPermission

---@return System.Security.IPermission
function System.Net.DnsPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.DnsPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Net.DnsPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Net.DnsPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Net.DnsPermission:ToXml()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Net.DnsPermission:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.DnsPermission:Union(target)end
---@class System.Net.DnsPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
System.Net.DnsPermissionAttribute = {}
---@type System.Net.DnsPermissionAttribute
CS.System.Net.DnsPermissionAttribute = System.Net.DnsPermissionAttribute

---@return System.Security.IPermission
function System.Net.DnsPermissionAttribute:CreatePermission()end
---@class System.Net.EndpointPermission : System.Object
---@field public Hostname System.String @  getter
---@field public Port System.Int32 @  getter
---@field public Transport System.Net.TransportType @  getter
System.Net.EndpointPermission = {}
---@type System.Net.EndpointPermission
CS.System.Net.EndpointPermission = System.Net.EndpointPermission

---@param obj System.Object
---@return System.Boolean
function System.Net.EndpointPermission:Equals(obj)end
---@return System.Int32
function System.Net.EndpointPermission:GetHashCode()end
---@return System.String
function System.Net.EndpointPermission:ToString()end
---@class System.Net.FtpWebRequest : System.Net.WebRequest
---@field public ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection @ setter getter
---@field public ConnectionGroupName System.String @ setter getter
---@field public ContentType System.String @ setter getter
---@field public ContentLength System.Int64 @ setter getter
---@field public ContentOffset System.Int64 @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public DefaultCachePolicy System.Net.Cache.RequestCachePolicy @static setter getter
---@field public EnableSsl System.Boolean @ setter getter
---@field public Headers System.Net.WebHeaderCollection @ setter getter
---@field public KeepAlive System.Boolean @ setter getter
---@field public Method System.String @ setter getter
---@field public PreAuthenticate System.Boolean @ setter getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public ReadWriteTimeout System.Int32 @ setter getter
---@field public RenameTo System.String @ setter getter
---@field public RequestUri System.Uri @  getter
---@field public ServicePoint System.Net.ServicePoint @  getter
---@field public UsePassive System.Boolean @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public UseBinary System.Boolean @ setter getter
---@field public Timeout System.Int32 @ setter getter
System.Net.FtpWebRequest = {}
---@type System.Net.FtpWebRequest
CS.System.Net.FtpWebRequest = System.Net.FtpWebRequest

---@return System.Void
function System.Net.FtpWebRequest:Abort()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.FtpWebRequest:BeginGetResponse(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.WebResponse
function System.Net.FtpWebRequest:EndGetResponse(asyncResult)end
---@return System.Net.WebResponse
function System.Net.FtpWebRequest:GetResponse()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.FtpWebRequest:BeginGetRequestStream(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.IO.Stream
function System.Net.FtpWebRequest:EndGetRequestStream(asyncResult)end
---@return System.IO.Stream
function System.Net.FtpWebRequest:GetRequestStream()end
---@class System.Net.FtpWebResponse : System.Net.WebResponse
---@field public ContentLength System.Int64 @  getter
---@field public Headers System.Net.WebHeaderCollection @  getter
---@field public ResponseUri System.Uri @  getter
---@field public LastModified System.DateTime @ setter getter
---@field public BannerMessage System.String @ setter getter
---@field public WelcomeMessage System.String @ setter getter
---@field public ExitMessage System.String @ setter getter
---@field public StatusCode System.Net.FtpStatusCode @ setter getter
---@field public SupportsHeaders System.Boolean @  getter
---@field public StatusDescription System.String @ setter getter
System.Net.FtpWebResponse = {}
---@type System.Net.FtpWebResponse
CS.System.Net.FtpWebResponse = System.Net.FtpWebResponse

---@return System.Void
function System.Net.FtpWebResponse:Close()end
---@return System.IO.Stream
function System.Net.FtpWebResponse:GetResponseStream()end
---@class System.Net.HttpListener : System.Object
---@field public AuthenticationSchemes System.Net.AuthenticationSchemes @ setter getter
---@field public AuthenticationSchemeSelectorDelegate System.Net.AuthenticationSchemeSelector @ setter getter
---@field public ExtendedProtectionSelectorDelegate System.Net.HttpListener.ExtendedProtectionSelector @ setter getter
---@field public IgnoreWriteExceptions System.Boolean @ setter getter
---@field public IsListening System.Boolean @  getter
---@field public IsSupported System.Boolean @static  getter
---@field public Prefixes System.Net.HttpListenerPrefixCollection @  getter
---@field public TimeoutManager System.Net.HttpListenerTimeoutManager @  getter
---@field public ExtendedProtectionPolicy System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy @ setter getter
---@field public DefaultServiceNames System.Security.Authentication.ExtendedProtection.ServiceNameCollection @  getter
---@field public Realm System.String @ setter getter
---@field public UnsafeConnectionNtlmAuthentication System.Boolean @ setter getter
System.Net.HttpListener = {}
---@type System.Net.HttpListener
CS.System.Net.HttpListener = System.Net.HttpListener

---@return System.Void
function System.Net.HttpListener:Abort()end
---@return System.Void
function System.Net.HttpListener:Close()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.HttpListener:BeginGetContext(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.HttpListenerContext
function System.Net.HttpListener:EndGetContext(asyncResult)end
---@return System.Net.HttpListenerContext
function System.Net.HttpListener:GetContext()end
---@return System.Void
function System.Net.HttpListener:Start()end
---@return System.Void
function System.Net.HttpListener:Stop()end
---@return System.Threading.Tasks.Task
function System.Net.HttpListener:GetContextAsync()end
---@class System.Net.HttpListenerBasicIdentity : System.Security.Principal.GenericIdentity
---@field public Password System.String @  getter
System.Net.HttpListenerBasicIdentity = {}
---@type System.Net.HttpListenerBasicIdentity
CS.System.Net.HttpListenerBasicIdentity = System.Net.HttpListenerBasicIdentity

---@class System.Net.HttpListenerContext : System.Object
---@field public Request System.Net.HttpListenerRequest @  getter
---@field public Response System.Net.HttpListenerResponse @  getter
---@field public User System.Security.Principal.IPrincipal @  getter
System.Net.HttpListenerContext = {}
---@type System.Net.HttpListenerContext
CS.System.Net.HttpListenerContext = System.Net.HttpListenerContext

---@overload fun(subProtocol:System.String, keepAliveInterval:System.TimeSpan):System.Threading.Tasks.Task
---@overload fun(subProtocol:System.String, receiveBufferSize:System.Int32, keepAliveInterval:System.TimeSpan):System.Threading.Tasks.Task
---@overload fun(subProtocol:System.String, receiveBufferSize:System.Int32, keepAliveInterval:System.TimeSpan, internalBuffer:System.ArraySegment):System.Threading.Tasks.Task
---@param subProtocol System.String
---@return System.Threading.Tasks.Task
function System.Net.HttpListenerContext:AcceptWebSocketAsync(subProtocol)end
---@class System.Net.HttpListenerPrefixCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
System.Net.HttpListenerPrefixCollection = {}
---@type System.Net.HttpListenerPrefixCollection
CS.System.Net.HttpListenerPrefixCollection = System.Net.HttpListenerPrefixCollection

---@param uriPrefix System.String
---@return System.Void
function System.Net.HttpListenerPrefixCollection:Add(uriPrefix)end
---@return System.Void
function System.Net.HttpListenerPrefixCollection:Clear()end
---@param uriPrefix System.String
---@return System.Boolean
function System.Net.HttpListenerPrefixCollection:Contains(uriPrefix)end
---@overload fun(array:System.Array, offset:System.Int32):System.Void
---@param array System.String[]
---@param offset System.Int32
---@return System.Void
function System.Net.HttpListenerPrefixCollection:CopyTo(array, offset)end
---@return System.Collections.Generic.IEnumerator
function System.Net.HttpListenerPrefixCollection:GetEnumerator()end
---@param uriPrefix System.String
---@return System.Boolean
function System.Net.HttpListenerPrefixCollection:Remove(uriPrefix)end
---@class System.Net.HttpListenerRequest : System.Object
---@field public AcceptTypes System.String[] @  getter
---@field public ClientCertificateError System.Int32 @  getter
---@field public ContentEncoding System.Text.Encoding @  getter
---@field public ContentLength64 System.Int64 @  getter
---@field public ContentType System.String @  getter
---@field public Cookies System.Net.CookieCollection @  getter
---@field public HasEntityBody System.Boolean @  getter
---@field public Headers System.Collections.Specialized.NameValueCollection @  getter
---@field public HttpMethod System.String @  getter
---@field public InputStream System.IO.Stream @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsLocal System.Boolean @  getter
---@field public IsSecureConnection System.Boolean @  getter
---@field public KeepAlive System.Boolean @  getter
---@field public LocalEndPoint System.Net.IPEndPoint @  getter
---@field public ProtocolVersion System.Version @  getter
---@field public QueryString System.Collections.Specialized.NameValueCollection @  getter
---@field public RawUrl System.String @  getter
---@field public RemoteEndPoint System.Net.IPEndPoint @  getter
---@field public RequestTraceIdentifier System.Guid @  getter
---@field public Url System.Uri @  getter
---@field public UrlReferrer System.Uri @  getter
---@field public UserAgent System.String @  getter
---@field public UserHostAddress System.String @  getter
---@field public UserHostName System.String @  getter
---@field public UserLanguages System.String[] @  getter
---@field public ServiceName System.String @  getter
---@field public TransportContext System.Net.TransportContext @  getter
---@field public IsWebSocketRequest System.Boolean @  getter
System.Net.HttpListenerRequest = {}
---@type System.Net.HttpListenerRequest
CS.System.Net.HttpListenerRequest = System.Net.HttpListenerRequest

---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.HttpListenerRequest:BeginGetClientCertificate(requestCallback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Security.Cryptography.X509Certificates.X509Certificate2
function System.Net.HttpListenerRequest:EndGetClientCertificate(asyncResult)end
---@return System.Security.Cryptography.X509Certificates.X509Certificate2
function System.Net.HttpListenerRequest:GetClientCertificate()end
---@return System.Threading.Tasks.Task
function System.Net.HttpListenerRequest:GetClientCertificateAsync()end
---@class System.Net.HttpListenerResponse : System.Object
---@field public ContentEncoding System.Text.Encoding @ setter getter
---@field public ContentLength64 System.Int64 @ setter getter
---@field public ContentType System.String @ setter getter
---@field public Cookies System.Net.CookieCollection @ setter getter
---@field public Headers System.Net.WebHeaderCollection @ setter getter
---@field public KeepAlive System.Boolean @ setter getter
---@field public OutputStream System.IO.Stream @  getter
---@field public ProtocolVersion System.Version @ setter getter
---@field public RedirectLocation System.String @ setter getter
---@field public SendChunked System.Boolean @ setter getter
---@field public StatusCode System.Int32 @ setter getter
---@field public StatusDescription System.String @ setter getter
System.Net.HttpListenerResponse = {}
---@type System.Net.HttpListenerResponse
CS.System.Net.HttpListenerResponse = System.Net.HttpListenerResponse

---@return System.Void
function System.Net.HttpListenerResponse:Abort()end
---@param name System.String
---@param value System.String
---@return System.Void
function System.Net.HttpListenerResponse:AddHeader(name, value)end
---@param cookie System.Net.Cookie
---@return System.Void
function System.Net.HttpListenerResponse:AppendCookie(cookie)end
---@param name System.String
---@param value System.String
---@return System.Void
function System.Net.HttpListenerResponse:AppendHeader(name, value)end
---@overload fun(responseEntity:System.Byte[], willBlock:System.Boolean):System.Void
---@return System.Void
function System.Net.HttpListenerResponse:Close()end
---@param templateResponse System.Net.HttpListenerResponse
---@return System.Void
function System.Net.HttpListenerResponse:CopyFrom(templateResponse)end
---@param url System.String
---@return System.Void
function System.Net.HttpListenerResponse:Redirect(url)end
---@param cookie System.Net.Cookie
---@return System.Void
function System.Net.HttpListenerResponse:SetCookie(cookie)end
---@class System.Net.HttpListenerTimeoutManager : System.Object
---@field public EntityBody System.TimeSpan @ setter getter
---@field public DrainEntityBody System.TimeSpan @ setter getter
---@field public RequestQueue System.TimeSpan @ setter getter
---@field public IdleConnection System.TimeSpan @ setter getter
---@field public HeaderWait System.TimeSpan @ setter getter
---@field public MinSendBytesPerSecond System.Int64 @ setter getter
System.Net.HttpListenerTimeoutManager = {}
---@type System.Net.HttpListenerTimeoutManager
CS.System.Net.HttpListenerTimeoutManager = System.Net.HttpListenerTimeoutManager

---@class System.Net.HttpWebRequest : System.Net.WebRequest
---@field public Accept System.String @ setter getter
---@field public Address System.Uri @ setter getter
---@field public AllowAutoRedirect System.Boolean @ setter getter
---@field public AllowWriteStreamBuffering System.Boolean @ setter getter
---@field public AllowReadStreamBuffering System.Boolean @ setter getter
---@field public AutomaticDecompression System.Net.DecompressionMethods @ setter getter
---@field public ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection @ setter getter
---@field public Connection System.String @ setter getter
---@field public ConnectionGroupName System.String @ setter getter
---@field public ContentLength System.Int64 @ setter getter
---@field public ContentType System.String @ setter getter
---@field public ContinueDelegate System.Net.HttpContinueDelegate @ setter getter
---@field public CookieContainer System.Net.CookieContainer @ setter getter
---@field public Credentials System.Net.ICredentials @ setter getter
---@field public Date System.DateTime @ setter getter
---@field public DefaultCachePolicy System.Net.Cache.RequestCachePolicy @static setter getter
---@field public DefaultMaximumErrorResponseLength System.Int32 @static setter getter
---@field public Expect System.String @ setter getter
---@field public HaveResponse System.Boolean @  getter
---@field public Headers System.Net.WebHeaderCollection @ setter getter
---@field public Host System.String @ setter getter
---@field public IfModifiedSince System.DateTime @ setter getter
---@field public KeepAlive System.Boolean @ setter getter
---@field public MaximumAutomaticRedirections System.Int32 @ setter getter
---@field public MaximumResponseHeadersLength System.Int32 @ setter getter
---@field public DefaultMaximumResponseHeadersLength System.Int32 @static setter getter
---@field public ReadWriteTimeout System.Int32 @ setter getter
---@field public ContinueTimeout System.Int32 @ setter getter
---@field public MediaType System.String @ setter getter
---@field public Method System.String @ setter getter
---@field public Pipelined System.Boolean @ setter getter
---@field public PreAuthenticate System.Boolean @ setter getter
---@field public ProtocolVersion System.Version @ setter getter
---@field public Proxy System.Net.IWebProxy @ setter getter
---@field public Referer System.String @ setter getter
---@field public RequestUri System.Uri @  getter
---@field public SendChunked System.Boolean @ setter getter
---@field public ServicePoint System.Net.ServicePoint @  getter
---@field public SupportsCookieContainer System.Boolean @  getter
---@field public Timeout System.Int32 @ setter getter
---@field public TransferEncoding System.String @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
---@field public UserAgent System.String @ setter getter
---@field public UnsafeAuthenticatedConnectionSharing System.Boolean @ setter getter
---@field public ServerCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback @ setter getter
System.Net.HttpWebRequest = {}
---@type System.Net.HttpWebRequest
CS.System.Net.HttpWebRequest = System.Net.HttpWebRequest

---@overload fun(range:System.Int64):System.Void
---@overload fun(from:System.Int32, to:System.Int32):System.Void
---@overload fun(from:System.Int64, to:System.Int64):System.Void
---@overload fun(rangeSpecifier:System.String, range:System.Int32):System.Void
---@overload fun(rangeSpecifier:System.String, range:System.Int64):System.Void
---@overload fun(rangeSpecifier:System.String, from:System.Int32, to:System.Int32):System.Void
---@overload fun(rangeSpecifier:System.String, from:System.Int64, to:System.Int64):System.Void
---@param range System.Int32
---@return System.Void
function System.Net.HttpWebRequest:AddRange(range)end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.HttpWebRequest:BeginGetRequestStream(callback, state)end
---@overload fun(asyncResult:System.IAsyncResult, context:System.Net.TransportContext):System.IO.Stream
---@param asyncResult System.IAsyncResult
---@return System.IO.Stream
function System.Net.HttpWebRequest:EndGetRequestStream(asyncResult)end
---@overload fun(context:System.Net.TransportContext):System.IO.Stream
---@return System.IO.Stream
function System.Net.HttpWebRequest:GetRequestStream()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.HttpWebRequest:BeginGetResponse(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Net.WebResponse
function System.Net.HttpWebRequest:EndGetResponse(asyncResult)end
---@return System.Net.WebResponse
function System.Net.HttpWebRequest:GetResponse()end
---@return System.Void
function System.Net.HttpWebRequest:Abort()end
---@class System.Net.HttpWebResponse : System.Net.WebResponse
---@field public CharacterSet System.String @  getter
---@field public ContentEncoding System.String @  getter
---@field public ContentLength System.Int64 @  getter
---@field public ContentType System.String @  getter
---@field public Cookies System.Net.CookieCollection @ setter getter
---@field public Headers System.Net.WebHeaderCollection @  getter
---@field public IsMutuallyAuthenticated System.Boolean @  getter
---@field public LastModified System.DateTime @  getter
---@field public Method System.String @  getter
---@field public ProtocolVersion System.Version @  getter
---@field public ResponseUri System.Uri @  getter
---@field public Server System.String @  getter
---@field public StatusCode System.Net.HttpStatusCode @  getter
---@field public StatusDescription System.String @  getter
---@field public SupportsHeaders System.Boolean @  getter
System.Net.HttpWebResponse = {}
---@type System.Net.HttpWebResponse
CS.System.Net.HttpWebResponse = System.Net.HttpWebResponse

---@param headerName System.String
---@return System.String
function System.Net.HttpWebResponse:GetResponseHeader(headerName)end
---@return System.IO.Stream
function System.Net.HttpWebResponse:GetResponseStream()end
---@return System.Void
function System.Net.HttpWebResponse:Close()end
---@class System.Net.ServicePoint : System.Object
---@field public Address System.Uri @  getter
---@field public BindIPEndPointDelegate System.Net.BindIPEndPoint @ setter getter
---@field public ConnectionLeaseTimeout System.Int32 @ setter getter
---@field public ConnectionLimit System.Int32 @ setter getter
---@field public ConnectionName System.String @  getter
---@field public CurrentConnections System.Int32 @  getter
---@field public IdleSince System.DateTime @  getter
---@field public MaxIdleTime System.Int32 @ setter getter
---@field public ProtocolVersion System.Version @  getter
---@field public ReceiveBufferSize System.Int32 @ setter getter
---@field public SupportsPipelining System.Boolean @  getter
---@field public Expect100Continue System.Boolean @ setter getter
---@field public UseNagleAlgorithm System.Boolean @ setter getter
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public ClientCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
System.Net.ServicePoint = {}
---@type System.Net.ServicePoint
CS.System.Net.ServicePoint = System.Net.ServicePoint

---@param enabled System.Boolean
---@param keepAliveTime System.Int32
---@param keepAliveInterval System.Int32
---@return System.Void
function System.Net.ServicePoint:SetTcpKeepAlive(enabled, keepAliveTime, keepAliveInterval)end
---@param connectionGroupName System.String
---@return System.Boolean
function System.Net.ServicePoint:CloseConnectionGroup(connectionGroupName)end
---@class System.Net.ServicePointManager : System.Object
---@field public CertificatePolicy System.Net.ICertificatePolicy @static setter getter
---@field public CheckCertificateRevocationList System.Boolean @static setter getter
---@field public DefaultConnectionLimit System.Int32 @static setter getter
---@field public DnsRefreshTimeout System.Int32 @static setter getter
---@field public EnableDnsRoundRobin System.Boolean @static setter getter
---@field public MaxServicePointIdleTime System.Int32 @static setter getter
---@field public MaxServicePoints System.Int32 @static setter getter
---@field public ReusePort System.Boolean @static setter getter
---@field public SecurityProtocol System.Net.SecurityProtocolType @static setter getter
---@field public ServerCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback @static setter getter
---@field public EncryptionPolicy System.Net.Security.EncryptionPolicy @static  getter
---@field public Expect100Continue System.Boolean @static setter getter
---@field public UseNagleAlgorithm System.Boolean @static setter getter
---@field public DefaultNonPersistentConnectionLimit System.Int32
---@field public DefaultPersistentConnectionLimit System.Int32
System.Net.ServicePointManager = {}
---@type System.Net.ServicePointManager
CS.System.Net.ServicePointManager = System.Net.ServicePointManager

---@param enabled System.Boolean
---@param keepAliveTime System.Int32
---@param keepAliveInterval System.Int32
---@return System.Void
function System.Net.ServicePointManager.SetTcpKeepAlive(enabled, keepAliveTime, keepAliveInterval)end
---@overload fun(uriString:System.String, proxy:System.Net.IWebProxy):System.Net.ServicePoint
---@overload fun(address:System.Uri, proxy:System.Net.IWebProxy):System.Net.ServicePoint
---@param address System.Uri
---@return System.Net.ServicePoint
function System.Net.ServicePointManager.FindServicePoint(address)end
---@class System.Net.SocketPermission : System.Security.CodeAccessPermission
---@field public AcceptList System.Collections.IEnumerator @  getter
---@field public ConnectList System.Collections.IEnumerator @  getter
---@field public AllPorts System.Int32
System.Net.SocketPermission = {}
---@type System.Net.SocketPermission
CS.System.Net.SocketPermission = System.Net.SocketPermission

---@param access System.Net.NetworkAccess
---@param transport System.Net.TransportType
---@param hostName System.String
---@param portNumber System.Int32
---@return System.Void
function System.Net.SocketPermission:AddPermission(access, transport, hostName, portNumber)end
---@return System.Security.IPermission
function System.Net.SocketPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.SocketPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Net.SocketPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Net.SocketPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Net.SocketPermission:ToXml()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Net.SocketPermission:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.SocketPermission:Union(target)end
---@class System.Net.SocketPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Access System.String @ setter getter
---@field public Host System.String @ setter getter
---@field public Port System.String @ setter getter
---@field public Transport System.String @ setter getter
System.Net.SocketPermissionAttribute = {}
---@type System.Net.SocketPermissionAttribute
CS.System.Net.SocketPermissionAttribute = System.Net.SocketPermissionAttribute

---@return System.Security.IPermission
function System.Net.SocketPermissionAttribute:CreatePermission()end
