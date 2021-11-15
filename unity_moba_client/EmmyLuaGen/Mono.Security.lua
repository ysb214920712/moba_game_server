---@class Mono.Security.ASN1 : System.Object
---@field public Count System.Int32 @  getter
---@field public Tag System.Byte @  getter
---@field public Length System.Int32 @  getter
---@field public Value System.Byte[] @ setter getter
---@field public Item Mono.Security.ASN1 @  getter
Mono.Security.ASN1 = {}
---@type Mono.Security.ASN1
CS.Mono.Security.ASN1 = Mono.Security.ASN1

---@param asn1 System.Byte[]
---@return System.Boolean
function Mono.Security.ASN1:Equals(asn1)end
---@param value System.Byte[]
---@return System.Boolean
function Mono.Security.ASN1:CompareValue(value)end
---@param asn1 Mono.Security.ASN1
---@return Mono.Security.ASN1
function Mono.Security.ASN1:Add(asn1)end
---@return System.Byte[]
function Mono.Security.ASN1:GetBytes()end
---@param index System.Int32
---@param anTag System.Byte
---@return Mono.Security.ASN1
function Mono.Security.ASN1:Element(index, anTag)end
---@return System.String
function Mono.Security.ASN1:ToString()end
---@param filename System.String
---@return System.Void
function Mono.Security.ASN1:SaveToFile(filename)end
---@class Mono.Security.ASN1Convert : System.Object
Mono.Security.ASN1Convert = {}
---@type Mono.Security.ASN1Convert
CS.Mono.Security.ASN1Convert = Mono.Security.ASN1Convert

---@param dt System.DateTime
---@return Mono.Security.ASN1
function Mono.Security.ASN1Convert.FromDateTime(dt)end
---@param value System.Int32
---@return Mono.Security.ASN1
function Mono.Security.ASN1Convert.FromInt32(value)end
---@param oid System.String
---@return Mono.Security.ASN1
function Mono.Security.ASN1Convert.FromOid(oid)end
---@param big System.Byte[]
---@return Mono.Security.ASN1
function Mono.Security.ASN1Convert.FromUnsignedBigInteger(big)end
---@param asn1 Mono.Security.ASN1
---@return System.Int32
function Mono.Security.ASN1Convert.ToInt32(asn1)end
---@param asn1 Mono.Security.ASN1
---@return System.String
function Mono.Security.ASN1Convert.ToOid(asn1)end
---@param time Mono.Security.ASN1
---@return System.DateTime
function Mono.Security.ASN1Convert.ToDateTime(time)end
---@class Mono.Security.PKCS7 : System.Object
Mono.Security.PKCS7 = {}
---@type Mono.Security.PKCS7
CS.Mono.Security.PKCS7 = Mono.Security.PKCS7

---@param oid System.String
---@param value Mono.Security.ASN1
---@return Mono.Security.ASN1
function Mono.Security.PKCS7.Attribute(oid, value)end
---@overload fun(oid:System.String, parameters:Mono.Security.ASN1):Mono.Security.ASN1
---@param oid System.String
---@return Mono.Security.ASN1
function Mono.Security.PKCS7.AlgorithmIdentifier(oid)end
---@param x509 Mono.Security.X509.X509Certificate
---@return Mono.Security.ASN1
function Mono.Security.PKCS7.IssuerAndSerialNumber(x509)end
---@class Mono.Security.StrongName : System.Object
---@field public CanSign System.Boolean @  getter
---@field public RSA System.Security.Cryptography.RSA @ setter getter
---@field public PublicKey System.Byte[] @  getter
---@field public PublicKeyToken System.Byte[] @  getter
---@field public TokenAlgorithm System.String @ setter getter
Mono.Security.StrongName = {}
---@type Mono.Security.StrongName
CS.Mono.Security.StrongName = Mono.Security.StrongName

---@return System.Byte[]
function Mono.Security.StrongName:GetBytes()end
---@param fileName System.String
---@return System.Byte[]
function Mono.Security.StrongName:Hash(fileName)end
---@param fileName System.String
---@return System.Boolean
function Mono.Security.StrongName:Sign(fileName)end
---@overload fun(stream:System.IO.Stream):System.Boolean
---@param fileName System.String
---@return System.Boolean
function Mono.Security.StrongName:Verify(fileName)end
---@class Mono.Security.PKCS7.Oid : System.Object
---@field public rsaEncryption System.String
---@field public data System.String
---@field public signedData System.String
---@field public envelopedData System.String
---@field public signedAndEnvelopedData System.String
---@field public digestedData System.String
---@field public encryptedData System.String
---@field public contentType System.String
---@field public messageDigest System.String
---@field public signingTime System.String
---@field public countersignature System.String
Mono.Security.PKCS7.Oid = {}
---@type Mono.Security.PKCS7.Oid
CS.Mono.Security.PKCS7.Oid = Mono.Security.PKCS7.Oid

---@class Mono.Security.PKCS7.ContentInfo : System.Object
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public Content Mono.Security.ASN1 @ setter getter
---@field public ContentType System.String @ setter getter
Mono.Security.PKCS7.ContentInfo = {}
---@type Mono.Security.PKCS7.ContentInfo
CS.Mono.Security.PKCS7.ContentInfo = Mono.Security.PKCS7.ContentInfo

---@return System.Byte[]
function Mono.Security.PKCS7.ContentInfo:GetBytes()end
---@class Mono.Security.PKCS7.EncryptedData : System.Object
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo @  getter
---@field public EncryptionAlgorithm Mono.Security.PKCS7.ContentInfo @  getter
---@field public EncryptedContent System.Byte[] @  getter
---@field public Version System.Byte @ setter getter
Mono.Security.PKCS7.EncryptedData = {}
---@type Mono.Security.PKCS7.EncryptedData
CS.Mono.Security.PKCS7.EncryptedData = Mono.Security.PKCS7.EncryptedData

---@return System.Byte[]
function Mono.Security.PKCS7.EncryptedData:GetBytes()end
---@class Mono.Security.PKCS7.EnvelopedData : System.Object
---@field public RecipientInfos System.Collections.ArrayList @  getter
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo @  getter
---@field public EncryptionAlgorithm Mono.Security.PKCS7.ContentInfo @  getter
---@field public EncryptedContent System.Byte[] @  getter
---@field public Version System.Byte @ setter getter
Mono.Security.PKCS7.EnvelopedData = {}
---@type Mono.Security.PKCS7.EnvelopedData
CS.Mono.Security.PKCS7.EnvelopedData = Mono.Security.PKCS7.EnvelopedData

---@return System.Byte[]
function Mono.Security.PKCS7.EnvelopedData:GetBytes()end
---@class Mono.Security.PKCS7.RecipientInfo : System.Object
---@field public Oid System.String @  getter
---@field public Key System.Byte[] @  getter
---@field public SubjectKeyIdentifier System.Byte[] @  getter
---@field public Issuer System.String @  getter
---@field public Serial System.Byte[] @  getter
---@field public Version System.Int32 @  getter
Mono.Security.PKCS7.RecipientInfo = {}
---@type Mono.Security.PKCS7.RecipientInfo
CS.Mono.Security.PKCS7.RecipientInfo = Mono.Security.PKCS7.RecipientInfo

---@class Mono.Security.PKCS7.SignedData : System.Object
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo @  getter
---@field public Crls System.Collections.ArrayList @  getter
---@field public HashName System.String @ setter getter
---@field public SignerInfo Mono.Security.PKCS7.SignerInfo @  getter
---@field public Version System.Byte @ setter getter
---@field public UseAuthenticatedAttributes System.Boolean @ setter getter
Mono.Security.PKCS7.SignedData = {}
---@type Mono.Security.PKCS7.SignedData
CS.Mono.Security.PKCS7.SignedData = Mono.Security.PKCS7.SignedData

---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Boolean
function Mono.Security.PKCS7.SignedData:VerifySignature(aa)end
---@return System.Byte[]
function Mono.Security.PKCS7.SignedData:GetBytes()end
---@class Mono.Security.PKCS7.SignerInfo : System.Object
---@field public IssuerName System.String @  getter
---@field public SerialNumber System.Byte[] @  getter
---@field public SubjectKeyIdentifier System.Byte[] @  getter
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public AuthenticatedAttributes System.Collections.ArrayList @  getter
---@field public Certificate Mono.Security.X509.X509Certificate @ setter getter
---@field public HashName System.String @ setter getter
---@field public Key System.Security.Cryptography.AsymmetricAlgorithm @ setter getter
---@field public Signature System.Byte[] @ setter getter
---@field public UnauthenticatedAttributes System.Collections.ArrayList @  getter
---@field public Version System.Byte @ setter getter
Mono.Security.PKCS7.SignerInfo = {}
---@type Mono.Security.PKCS7.SignerInfo
CS.Mono.Security.PKCS7.SignerInfo = Mono.Security.PKCS7.SignerInfo

---@return System.Byte[]
function Mono.Security.PKCS7.SignerInfo:GetBytes()end
