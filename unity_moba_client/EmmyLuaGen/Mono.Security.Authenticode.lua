---@class Mono.Security.Authenticode.Authority : System.Enum
Mono.Security.Authenticode.Authority = {}
---@type Mono.Security.Authenticode.Authority
CS.Mono.Security.Authenticode.Authority = Mono.Security.Authenticode.Authority

---@return System.Int32 value:0
Mono.Security.Authenticode.Authority.Individual = 0
---@return System.Int32 value:1
Mono.Security.Authenticode.Authority.Commercial = 1
---@return System.Int32 value:2
Mono.Security.Authenticode.Authority.Maximum = 2

---@class Mono.Security.Authenticode.AuthenticodeBase : System.Object
---@field public spcIndirectDataContext System.String
Mono.Security.Authenticode.AuthenticodeBase = {}
---@type Mono.Security.Authenticode.AuthenticodeBase
CS.Mono.Security.Authenticode.AuthenticodeBase = Mono.Security.Authenticode.AuthenticodeBase

---@class Mono.Security.Authenticode.AuthenticodeDeformatter : Mono.Security.Authenticode.AuthenticodeBase
---@field public FileName System.String @ setter getter
---@field public Hash System.Byte[] @  getter
---@field public Reason System.Int32 @  getter
---@field public Signature System.Byte[] @  getter
---@field public Timestamp System.DateTime @  getter
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public SigningCertificate Mono.Security.X509.X509Certificate @  getter
Mono.Security.Authenticode.AuthenticodeDeformatter = {}
---@type Mono.Security.Authenticode.AuthenticodeDeformatter
CS.Mono.Security.Authenticode.AuthenticodeDeformatter = Mono.Security.Authenticode.AuthenticodeDeformatter

---@return System.Boolean
function Mono.Security.Authenticode.AuthenticodeDeformatter:IsTrusted()end
---@class Mono.Security.Authenticode.AuthenticodeFormatter : Mono.Security.Authenticode.AuthenticodeBase
---@field public Authority Mono.Security.Authenticode.Authority @ setter getter
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public Crl System.Collections.ArrayList @  getter
---@field public Hash System.String @ setter getter
---@field public RSA System.Security.Cryptography.RSA @ setter getter
---@field public TimestampUrl System.Uri @ setter getter
---@field public Description System.String @ setter getter
---@field public Url System.Uri @ setter getter
Mono.Security.Authenticode.AuthenticodeFormatter = {}
---@type Mono.Security.Authenticode.AuthenticodeFormatter
CS.Mono.Security.Authenticode.AuthenticodeFormatter = Mono.Security.Authenticode.AuthenticodeFormatter

---@param signature System.Byte[]
---@return Mono.Security.ASN1
function Mono.Security.Authenticode.AuthenticodeFormatter:TimestampRequest(signature)end
---@param response System.Byte[]
---@return System.Void
function Mono.Security.Authenticode.AuthenticodeFormatter:ProcessTimestamp(response)end
---@param fileName System.String
---@return System.Boolean
function Mono.Security.Authenticode.AuthenticodeFormatter:Sign(fileName)end
---@param fileName System.String
---@return System.Boolean
function Mono.Security.Authenticode.AuthenticodeFormatter:Timestamp(fileName)end
---@class Mono.Security.Authenticode.PrivateKey : System.Object
---@field public Encrypted System.Boolean @  getter
---@field public KeyType System.Int32 @ setter getter
---@field public RSA System.Security.Cryptography.RSA @ setter getter
---@field public Weak System.Boolean @ setter getter
Mono.Security.Authenticode.PrivateKey = {}
---@type Mono.Security.Authenticode.PrivateKey
CS.Mono.Security.Authenticode.PrivateKey = Mono.Security.Authenticode.PrivateKey

---@overload fun(filename:System.String, password:System.String):System.Void
---@param filename System.String
---@return System.Void
function Mono.Security.Authenticode.PrivateKey:Save(filename)end
---@overload fun(filename:System.String, password:System.String):Mono.Security.Authenticode.PrivateKey
---@param filename System.String
---@return Mono.Security.Authenticode.PrivateKey
function Mono.Security.Authenticode.PrivateKey.CreateFromFile(filename)end
---@class Mono.Security.Authenticode.SoftwarePublisherCertificate : System.Object
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public Crls System.Collections.ArrayList @  getter
Mono.Security.Authenticode.SoftwarePublisherCertificate = {}
---@type Mono.Security.Authenticode.SoftwarePublisherCertificate
CS.Mono.Security.Authenticode.SoftwarePublisherCertificate = Mono.Security.Authenticode.SoftwarePublisherCertificate

---@return System.Byte[]
function Mono.Security.Authenticode.SoftwarePublisherCertificate:GetBytes()end
---@param filename System.String
---@return Mono.Security.Authenticode.SoftwarePublisherCertificate
function Mono.Security.Authenticode.SoftwarePublisherCertificate.CreateFromFile(filename)end
