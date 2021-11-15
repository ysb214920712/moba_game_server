---@class Mono.Security.Protocol.Tls.CipherAlgorithmType : System.Enum
Mono.Security.Protocol.Tls.CipherAlgorithmType = {}
---@type Mono.Security.Protocol.Tls.CipherAlgorithmType
CS.Mono.Security.Protocol.Tls.CipherAlgorithmType = Mono.Security.Protocol.Tls.CipherAlgorithmType

---@return System.Int32 value:0
Mono.Security.Protocol.Tls.CipherAlgorithmType.Des = 0
---@return System.Int32 value:1
Mono.Security.Protocol.Tls.CipherAlgorithmType.None = 1
---@return System.Int32 value:2
Mono.Security.Protocol.Tls.CipherAlgorithmType.Rc2 = 2
---@return System.Int32 value:3
Mono.Security.Protocol.Tls.CipherAlgorithmType.Rc4 = 3
---@return System.Int32 value:4
Mono.Security.Protocol.Tls.CipherAlgorithmType.Rijndael = 4
---@return System.Int32 value:5
Mono.Security.Protocol.Tls.CipherAlgorithmType.SkipJack = 5
---@return System.Int32 value:6
Mono.Security.Protocol.Tls.CipherAlgorithmType.TripleDes = 6

---@class Mono.Security.Protocol.Tls.ExchangeAlgorithmType : System.Enum
Mono.Security.Protocol.Tls.ExchangeAlgorithmType = {}
---@type Mono.Security.Protocol.Tls.ExchangeAlgorithmType
CS.Mono.Security.Protocol.Tls.ExchangeAlgorithmType = Mono.Security.Protocol.Tls.ExchangeAlgorithmType

---@return System.Int32 value:0
Mono.Security.Protocol.Tls.ExchangeAlgorithmType.DiffieHellman = 0
---@return System.Int32 value:1
Mono.Security.Protocol.Tls.ExchangeAlgorithmType.Fortezza = 1
---@return System.Int32 value:2
Mono.Security.Protocol.Tls.ExchangeAlgorithmType.None = 2
---@return System.Int32 value:3
Mono.Security.Protocol.Tls.ExchangeAlgorithmType.RsaKeyX = 3
---@return System.Int32 value:4
Mono.Security.Protocol.Tls.ExchangeAlgorithmType.RsaSign = 4

---@class Mono.Security.Protocol.Tls.HashAlgorithmType : System.Enum
Mono.Security.Protocol.Tls.HashAlgorithmType = {}
---@type Mono.Security.Protocol.Tls.HashAlgorithmType
CS.Mono.Security.Protocol.Tls.HashAlgorithmType = Mono.Security.Protocol.Tls.HashAlgorithmType

---@return System.Int32 value:0
Mono.Security.Protocol.Tls.HashAlgorithmType.Md5 = 0
---@return System.Int32 value:1
Mono.Security.Protocol.Tls.HashAlgorithmType.None = 1
---@return System.Int32 value:2
Mono.Security.Protocol.Tls.HashAlgorithmType.Sha1 = 2

---@class Mono.Security.Protocol.Tls.SecurityCompressionType : System.Enum
Mono.Security.Protocol.Tls.SecurityCompressionType = {}
---@type Mono.Security.Protocol.Tls.SecurityCompressionType
CS.Mono.Security.Protocol.Tls.SecurityCompressionType = Mono.Security.Protocol.Tls.SecurityCompressionType

---@return System.Int32 value:0
Mono.Security.Protocol.Tls.SecurityCompressionType.None = 0
---@return System.Int32 value:1
Mono.Security.Protocol.Tls.SecurityCompressionType.Zlib = 1

---@class Mono.Security.Protocol.Tls.SecurityProtocolType : System.Enum
Mono.Security.Protocol.Tls.SecurityProtocolType = {}
---@type Mono.Security.Protocol.Tls.SecurityProtocolType
CS.Mono.Security.Protocol.Tls.SecurityProtocolType = Mono.Security.Protocol.Tls.SecurityProtocolType


---@class Mono.Security.Protocol.Tls.SslClientStream : Mono.Security.Protocol.Tls.SslStreamBase
---@field public ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection @  getter
---@field public SelectedClientCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public ServerCertValidationDelegate Mono.Security.Protocol.Tls.CertificateValidationCallback @ setter getter
---@field public ClientCertSelectionDelegate Mono.Security.Protocol.Tls.CertificateSelectionCallback @ setter getter
---@field public PrivateKeyCertSelectionDelegate Mono.Security.Protocol.Tls.PrivateKeySelectionCallback @ setter getter
Mono.Security.Protocol.Tls.SslClientStream = {}
---@type Mono.Security.Protocol.Tls.SslClientStream
CS.Mono.Security.Protocol.Tls.SslClientStream = Mono.Security.Protocol.Tls.SslClientStream

---@param value Mono.Security.Protocol.Tls.CertificateValidationCallback2
---@return System.Void
function Mono.Security.Protocol.Tls.SslClientStream:add_ServerCertValidation2(value)end
---@param value Mono.Security.Protocol.Tls.CertificateValidationCallback2
---@return System.Void
function Mono.Security.Protocol.Tls.SslClientStream:remove_ServerCertValidation2(value)end
---@class Mono.Security.Protocol.Tls.SslServerStream : Mono.Security.Protocol.Tls.SslStreamBase
---@field public ClientCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public ClientCertValidationDelegate Mono.Security.Protocol.Tls.CertificateValidationCallback @ setter getter
---@field public PrivateKeyCertSelectionDelegate Mono.Security.Protocol.Tls.PrivateKeySelectionCallback @ setter getter
Mono.Security.Protocol.Tls.SslServerStream = {}
---@type Mono.Security.Protocol.Tls.SslServerStream
CS.Mono.Security.Protocol.Tls.SslServerStream = Mono.Security.Protocol.Tls.SslServerStream

---@param value Mono.Security.Protocol.Tls.CertificateValidationCallback2
---@return System.Void
function Mono.Security.Protocol.Tls.SslServerStream:add_ClientCertValidation2(value)end
---@param value Mono.Security.Protocol.Tls.CertificateValidationCallback2
---@return System.Void
function Mono.Security.Protocol.Tls.SslServerStream:remove_ClientCertValidation2(value)end
---@class Mono.Security.Protocol.Tls.SslStreamBase : System.IO.Stream
---@field public CheckCertRevocationStatus System.Boolean @ setter getter
---@field public CipherAlgorithm Mono.Security.Protocol.Tls.CipherAlgorithmType @  getter
---@field public CipherStrength System.Int32 @  getter
---@field public HashAlgorithm Mono.Security.Protocol.Tls.HashAlgorithmType @  getter
---@field public HashStrength System.Int32 @  getter
---@field public KeyExchangeStrength System.Int32 @  getter
---@field public KeyExchangeAlgorithm Mono.Security.Protocol.Tls.ExchangeAlgorithmType @  getter
---@field public SecurityProtocol Mono.Security.Protocol.Tls.SecurityProtocolType @  getter
---@field public ServerCertificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
Mono.Security.Protocol.Tls.SslStreamBase = {}
---@type Mono.Security.Protocol.Tls.SslStreamBase
CS.Mono.Security.Protocol.Tls.SslStreamBase = Mono.Security.Protocol.Tls.SslStreamBase

---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function Mono.Security.Protocol.Tls.SslStreamBase:BeginRead(buffer, offset, count, callback, state)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function Mono.Security.Protocol.Tls.SslStreamBase:BeginWrite(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function Mono.Security.Protocol.Tls.SslStreamBase:EndRead(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function Mono.Security.Protocol.Tls.SslStreamBase:EndWrite(asyncResult)end
---@return System.Void
function Mono.Security.Protocol.Tls.SslStreamBase:Close()end
---@return System.Void
function Mono.Security.Protocol.Tls.SslStreamBase:Flush()end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Int32
---@param buffer System.Byte[]
---@return System.Int32
function Mono.Security.Protocol.Tls.SslStreamBase:Read(buffer)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function Mono.Security.Protocol.Tls.SslStreamBase:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function Mono.Security.Protocol.Tls.SslStreamBase:SetLength(value)end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param buffer System.Byte[]
---@return System.Void
function Mono.Security.Protocol.Tls.SslStreamBase:Write(buffer)end
