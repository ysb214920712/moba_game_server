---@class System.Net.Security.AuthenticatedStream : System.IO.Stream
---@field public LeaveInnerStreamOpen System.Boolean @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsMutuallyAuthenticated System.Boolean @  getter
---@field public IsEncrypted System.Boolean @  getter
---@field public IsSigned System.Boolean @  getter
---@field public IsServer System.Boolean @  getter
System.Net.Security.AuthenticatedStream = {}
---@type System.Net.Security.AuthenticatedStream
CS.System.Net.Security.AuthenticatedStream = System.Net.Security.AuthenticatedStream

---@class System.Net.Security.AuthenticationLevel : System.Enum
System.Net.Security.AuthenticationLevel = {}
---@type System.Net.Security.AuthenticationLevel
CS.System.Net.Security.AuthenticationLevel = System.Net.Security.AuthenticationLevel

---@return System.Int32 value:0
System.Net.Security.AuthenticationLevel.None = 0
---@return System.Int32 value:1
System.Net.Security.AuthenticationLevel.MutualAuthRequested = 1
---@return System.Int32 value:2
System.Net.Security.AuthenticationLevel.MutualAuthRequired = 2

---@class System.Net.Security.ProtectionLevel : System.Enum
System.Net.Security.ProtectionLevel = {}
---@type System.Net.Security.ProtectionLevel
CS.System.Net.Security.ProtectionLevel = System.Net.Security.ProtectionLevel

---@return System.Int32 value:0
System.Net.Security.ProtectionLevel.None = 0
---@return System.Int32 value:1
System.Net.Security.ProtectionLevel.Sign = 1
---@return System.Int32 value:2
System.Net.Security.ProtectionLevel.EncryptAndSign = 2

---@class System.Net.Security.EncryptionPolicy : System.Enum
System.Net.Security.EncryptionPolicy = {}
---@type System.Net.Security.EncryptionPolicy
CS.System.Net.Security.EncryptionPolicy = System.Net.Security.EncryptionPolicy

---@return System.Int32 value:0
System.Net.Security.EncryptionPolicy.RequireEncryption = 0
---@return System.Int32 value:1
System.Net.Security.EncryptionPolicy.AllowNoEncryption = 1
---@return System.Int32 value:2
System.Net.Security.EncryptionPolicy.NoEncryption = 2

---@class System.Net.Security.NegotiateStream : System.Net.Security.AuthenticatedStream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanTimeout System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public ImpersonationLevel System.Security.Principal.TokenImpersonationLevel @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsEncrypted System.Boolean @  getter
---@field public IsMutuallyAuthenticated System.Boolean @  getter
---@field public IsServer System.Boolean @  getter
---@field public IsSigned System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public ReadTimeout System.Int32 @ setter getter
---@field public RemoteIdentity System.Security.Principal.IIdentity @  getter
---@field public WriteTimeout System.Int32 @ setter getter
System.Net.Security.NegotiateStream = {}
---@type System.Net.Security.NegotiateStream
CS.System.Net.Security.NegotiateStream = System.Net.Security.NegotiateStream

---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginAuthenticateAsClient(asyncCallback, asyncState)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginRead(buffer, offset, count, asyncCallback, asyncState)end
---@overload fun(policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(credential:System.Net.NetworkCredential, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(credential:System.Net.NetworkCredential, policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginAuthenticateAsServer(asyncCallback, asyncState)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginWrite(buffer, offset, count, asyncCallback, asyncState)end
---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String):System.Void
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String):System.Void
---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Void
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Void
---@return System.Void
function System.Net.Security.NegotiateStream:AuthenticateAsClient()end
---@overload fun(policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy):System.Void
---@overload fun(credential:System.Net.NetworkCredential, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Void
---@overload fun(credential:System.Net.NetworkCredential, policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Void
---@return System.Void
function System.Net.Security.NegotiateStream:AuthenticateAsServer()end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.NegotiateStream:EndAuthenticateAsClient(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Security.NegotiateStream:EndRead(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.NegotiateStream:EndAuthenticateAsServer(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.NegotiateStream:EndWrite(asyncResult)end
---@return System.Void
function System.Net.Security.NegotiateStream:Flush()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.Net.Security.NegotiateStream:Read(buffer, offset, count)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.Net.Security.NegotiateStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.Net.Security.NegotiateStream:SetLength(value)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.Net.Security.NegotiateStream:Write(buffer, offset, count)end
---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String):System.Threading.Tasks.Task
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String):System.Threading.Tasks.Task
---@overload fun(credential:System.Net.NetworkCredential, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Threading.Tasks.Task
---@overload fun(credential:System.Net.NetworkCredential, binding:System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName:System.String, requiredProtectionLevel:System.Net.Security.ProtectionLevel, allowedImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.Net.Security.NegotiateStream:AuthenticateAsClientAsync()end
---@overload fun(policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy):System.Threading.Tasks.Task
---@overload fun(credential:System.Net.NetworkCredential, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Threading.Tasks.Task
---@overload fun(credential:System.Net.NetworkCredential, policy:System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, requiredProtectionLevel:System.Net.Security.ProtectionLevel, requiredImpersonationLevel:System.Security.Principal.TokenImpersonationLevel):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.Net.Security.NegotiateStream:AuthenticateAsServerAsync()end
---@class System.Net.Security.SslPolicyErrors : System.Enum
System.Net.Security.SslPolicyErrors = {}
---@type System.Net.Security.SslPolicyErrors
CS.System.Net.Security.SslPolicyErrors = System.Net.Security.SslPolicyErrors

---@return System.Int32 value:0
System.Net.Security.SslPolicyErrors.None = 0
---@return System.Int32 value:1
System.Net.Security.SslPolicyErrors.RemoteCertificateNotAvailable = 1
---@return System.Int32 value:2
System.Net.Security.SslPolicyErrors.RemoteCertificateNameMismatch = 2

---@class System.Net.Security.SslStream : System.Net.Security.AuthenticatedStream
---@field public TransportContext System.Net.TransportContext @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsMutuallyAuthenticated System.Boolean @  getter
---@field public IsEncrypted System.Boolean @  getter
---@field public IsSigned System.Boolean @  getter
---@field public IsServer System.Boolean @  getter
---@field public SslProtocol System.Security.Authentication.SslProtocols @  getter
---@field public CheckCertRevocationStatus System.Boolean @  getter
---@field public LocalCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public RemoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public CipherAlgorithm System.Security.Authentication.CipherAlgorithmType @  getter
---@field public CipherStrength System.Int32 @  getter
---@field public HashAlgorithm System.Security.Authentication.HashAlgorithmType @  getter
---@field public HashStrength System.Int32 @  getter
---@field public KeyExchangeAlgorithm System.Security.Authentication.ExchangeAlgorithmType @  getter
---@field public KeyExchangeStrength System.Int32 @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanRead System.Boolean @  getter
---@field public CanTimeout System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public ReadTimeout System.Int32 @ setter getter
---@field public WriteTimeout System.Int32 @ setter getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.Net.Security.SslStream = {}
---@type System.Net.Security.SslStream
CS.System.Net.Security.SslStream = System.Net.Security.SslStream

---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation:System.Boolean):System.Void
---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean):System.Void
---@param targetHost System.String
---@return System.Void
function System.Net.Security.SslStream:AuthenticateAsClient(targetHost)end
---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation:System.Boolean, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@param targetHost System.String
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginAuthenticateAsClient(targetHost, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.SslStream:EndAuthenticateAsClient(asyncResult)end
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, checkCertificateRevocation:System.Boolean):System.Void
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean):System.Void
---@param serverCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Void
function System.Net.Security.SslStream:AuthenticateAsServer(serverCertificate)end
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, checkCertificateRevocation:System.Boolean, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean, asyncCallback:System.AsyncCallback, asyncState:System.Object):System.IAsyncResult
---@param serverCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginAuthenticateAsServer(serverCertificate, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.SslStream:EndAuthenticateAsServer(asyncResult)end
---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation:System.Boolean):System.Threading.Tasks.Task
---@overload fun(targetHost:System.String, clientCertificates:System.Security.Cryptography.X509Certificates.X509CertificateCollection, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean):System.Threading.Tasks.Task
---@param targetHost System.String
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:AuthenticateAsClientAsync(targetHost)end
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, checkCertificateRevocation:System.Boolean):System.Threading.Tasks.Task
---@overload fun(serverCertificate:System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired:System.Boolean, enabledSslProtocols:System.Security.Authentication.SslProtocols, checkCertificateRevocation:System.Boolean):System.Threading.Tasks.Task
---@param serverCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:AuthenticateAsServerAsync(serverCertificate)end
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:ShutdownAsync()end
---@param value System.Int64
---@return System.Void
function System.Net.Security.SslStream:SetLength(value)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.Net.Security.SslStream:Seek(offset, origin)end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:FlushAsync(cancellationToken)end
---@return System.Void
function System.Net.Security.SslStream:Flush()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.Net.Security.SslStream:Read(buffer, offset, count)end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param buffer System.Byte[]
---@return System.Void
function System.Net.Security.SslStream:Write(buffer)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginRead(buffer, offset, count, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.Net.Security.SslStream:EndRead(asyncResult)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginWrite(buffer, offset, count, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.Net.Security.SslStream:EndWrite(asyncResult)end
