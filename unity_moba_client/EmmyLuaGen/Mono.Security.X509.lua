---@class Mono.Security.X509.PKCS5 : System.Object
---@field public pbeWithMD2AndDESCBC System.String
---@field public pbeWithMD5AndDESCBC System.String
---@field public pbeWithMD2AndRC2CBC System.String
---@field public pbeWithMD5AndRC2CBC System.String
---@field public pbeWithSHA1AndDESCBC System.String
---@field public pbeWithSHA1AndRC2CBC System.String
Mono.Security.X509.PKCS5 = {}
---@type Mono.Security.X509.PKCS5
CS.Mono.Security.X509.PKCS5 = Mono.Security.X509.PKCS5

---@class Mono.Security.X509.PKCS9 : System.Object
---@field public friendlyName System.String
---@field public localKeyId System.String
Mono.Security.X509.PKCS9 = {}
---@type Mono.Security.X509.PKCS9
CS.Mono.Security.X509.PKCS9 = Mono.Security.X509.PKCS9

---@class Mono.Security.X509.PKCS12 : System.Object
---@field public Password System.String @ setter 
---@field public IterationCount System.Int32 @ setter getter
---@field public Keys System.Collections.ArrayList @  getter
---@field public Secrets System.Collections.ArrayList @  getter
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public MaximumPasswordLength System.Int32 @static setter getter
---@field public pbeWithSHAAnd128BitRC4 System.String
---@field public pbeWithSHAAnd40BitRC4 System.String
---@field public pbeWithSHAAnd3KeyTripleDESCBC System.String
---@field public pbeWithSHAAnd2KeyTripleDESCBC System.String
---@field public pbeWithSHAAnd128BitRC2CBC System.String
---@field public pbeWithSHAAnd40BitRC2CBC System.String
---@field public keyBag System.String
---@field public pkcs8ShroudedKeyBag System.String
---@field public certBag System.String
---@field public crlBag System.String
---@field public secretBag System.String
---@field public safeContentsBag System.String
---@field public x509Certificate System.String
---@field public sdsiCertificate System.String
---@field public x509Crl System.String
---@field public CryptoApiPasswordLimit System.Int32
Mono.Security.X509.PKCS12 = {}
---@type Mono.Security.X509.PKCS12
CS.Mono.Security.X509.PKCS12 = Mono.Security.X509.PKCS12

---@overload fun(algorithmOid:System.String, salt:System.Byte[], iterationCount:System.Int32, encryptedData:System.Byte[]):System.Byte[]
---@param ed Mono.Security.PKCS7.EncryptedData
---@return System.Byte[]
function Mono.Security.X509.PKCS12:Decrypt(ed)end
---@param algorithmOid System.String
---@param salt System.Byte[]
---@param iterationCount System.Int32
---@param data System.Byte[]
---@return System.Byte[]
function Mono.Security.X509.PKCS12:Encrypt(algorithmOid, salt, iterationCount, data)end
---@return System.Byte[]
function Mono.Security.X509.PKCS12:GetBytes()end
---@overload fun(cert:Mono.Security.X509.X509Certificate, attributes:System.Collections.IDictionary):System.Void
---@param cert Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.PKCS12:AddCertificate(cert)end
---@overload fun(cert:Mono.Security.X509.X509Certificate, attrs:System.Collections.IDictionary):System.Void
---@param cert Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.PKCS12:RemoveCertificate(cert)end
---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm, attributes:System.Collections.IDictionary):System.Void
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function Mono.Security.X509.PKCS12:AddPkcs8ShroudedKeyBag(aa)end
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function Mono.Security.X509.PKCS12:RemovePkcs8ShroudedKeyBag(aa)end
---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm, attributes:System.Collections.IDictionary):System.Void
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function Mono.Security.X509.PKCS12:AddKeyBag(aa)end
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function Mono.Security.X509.PKCS12:RemoveKeyBag(aa)end
---@overload fun(secret:System.Byte[], attributes:System.Collections.IDictionary):System.Void
---@param secret System.Byte[]
---@return System.Void
function Mono.Security.X509.PKCS12:AddSecretBag(secret)end
---@param secret System.Byte[]
---@return System.Void
function Mono.Security.X509.PKCS12:RemoveSecretBag(secret)end
---@param attrs System.Collections.IDictionary
---@return System.Security.Cryptography.AsymmetricAlgorithm
function Mono.Security.X509.PKCS12:GetAsymmetricAlgorithm(attrs)end
---@param attrs System.Collections.IDictionary
---@return System.Byte[]
function Mono.Security.X509.PKCS12:GetSecret(attrs)end
---@param attrs System.Collections.IDictionary
---@return Mono.Security.X509.X509Certificate
function Mono.Security.X509.PKCS12:GetCertificate(attrs)end
---@overload fun(cert:Mono.Security.X509.X509Certificate):System.Collections.IDictionary
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Collections.IDictionary
function Mono.Security.X509.PKCS12:GetAttributes(aa)end
---@param filename System.String
---@return System.Void
function Mono.Security.X509.PKCS12:SaveToFile(filename)end
---@return System.Object
function Mono.Security.X509.PKCS12:Clone()end
---@overload fun(filename:System.String, password:System.String):Mono.Security.X509.PKCS12
---@param filename System.String
---@return Mono.Security.X509.PKCS12
function Mono.Security.X509.PKCS12.LoadFromFile(filename)end
---@class Mono.Security.X509.X501 : System.Object
Mono.Security.X509.X501 = {}
---@type Mono.Security.X509.X501
CS.Mono.Security.X509.X501 = Mono.Security.X509.X501

---@overload fun(seq:Mono.Security.ASN1, reversed:System.Boolean, separator:System.String, quotes:System.Boolean):System.String
---@param seq Mono.Security.ASN1
---@return System.String
function Mono.Security.X509.X501.ToString(seq)end
---@param rdn System.String
---@return Mono.Security.ASN1
function Mono.Security.X509.X501.FromString(rdn)end
---@class Mono.Security.X509.X509Builder : System.Object
---@field public Hash System.String @ setter getter
Mono.Security.X509.X509Builder = {}
---@type Mono.Security.X509.X509Builder
CS.Mono.Security.X509.X509Builder = Mono.Security.X509.X509Builder

---@overload fun(key:System.Security.Cryptography.RSA):System.Byte[]
---@overload fun(key:System.Security.Cryptography.DSA):System.Byte[]
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Byte[]
function Mono.Security.X509.X509Builder:Sign(aa)end
---@class Mono.Security.X509.X509Crl : System.Object
---@field public Entries System.Collections.ArrayList @  getter
---@field public Item Mono.Security.X509.X509Crl.X509CrlEntry @  getter
---@field public Item Mono.Security.X509.X509Crl.X509CrlEntry @  getter
---@field public Extensions Mono.Security.X509.X509ExtensionCollection @  getter
---@field public Hash System.Byte[] @  getter
---@field public IssuerName System.String @  getter
---@field public NextUpdate System.DateTime @  getter
---@field public ThisUpdate System.DateTime @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public Signature System.Byte[] @  getter
---@field public RawData System.Byte[] @  getter
---@field public Version System.Byte @  getter
---@field public IsCurrent System.Boolean @  getter
Mono.Security.X509.X509Crl = {}
---@type Mono.Security.X509.X509Crl
CS.Mono.Security.X509.X509Crl = Mono.Security.X509.X509Crl

---@param instant System.DateTime
---@return System.Boolean
function Mono.Security.X509.X509Crl:WasCurrent(instant)end
---@return System.Byte[]
function Mono.Security.X509.X509Crl:GetBytes()end
---@overload fun(serialNumber:System.Byte[]):Mono.Security.X509.X509Crl.X509CrlEntry
---@param x509 Mono.Security.X509.X509Certificate
---@return Mono.Security.X509.X509Crl.X509CrlEntry
function Mono.Security.X509.X509Crl:GetCrlEntry(x509)end
---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm):System.Boolean
---@param x509 Mono.Security.X509.X509Certificate
---@return System.Boolean
function Mono.Security.X509.X509Crl:VerifySignature(x509)end
---@param filename System.String
---@return Mono.Security.X509.X509Crl
function Mono.Security.X509.X509Crl.CreateFromFile(filename)end
---@class Mono.Security.X509.X509Certificate : System.Object
---@field public DSA System.Security.Cryptography.DSA @ setter getter
---@field public Extensions Mono.Security.X509.X509ExtensionCollection @  getter
---@field public Hash System.Byte[] @  getter
---@field public IssuerName System.String @  getter
---@field public KeyAlgorithm System.String @  getter
---@field public KeyAlgorithmParameters System.Byte[] @ setter getter
---@field public PublicKey System.Byte[] @  getter
---@field public RSA System.Security.Cryptography.RSA @ setter getter
---@field public RawData System.Byte[] @  getter
---@field public SerialNumber System.Byte[] @  getter
---@field public Signature System.Byte[] @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public SignatureAlgorithmParameters System.Byte[] @  getter
---@field public SubjectName System.String @  getter
---@field public ValidFrom System.DateTime @  getter
---@field public ValidUntil System.DateTime @  getter
---@field public Version System.Int32 @  getter
---@field public IsCurrent System.Boolean @  getter
---@field public IssuerUniqueIdentifier System.Byte[] @  getter
---@field public SubjectUniqueIdentifier System.Byte[] @  getter
---@field public IsSelfSigned System.Boolean @  getter
Mono.Security.X509.X509Certificate = {}
---@type Mono.Security.X509.X509Certificate
CS.Mono.Security.X509.X509Certificate = Mono.Security.X509.X509Certificate

---@param instant System.DateTime
---@return System.Boolean
function Mono.Security.X509.X509Certificate:WasCurrent(instant)end
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Boolean
function Mono.Security.X509.X509Certificate:VerifySignature(aa)end
---@param hash System.Byte[]
---@param hashAlgorithm System.String
---@param signature System.Byte[]
---@return System.Boolean
function Mono.Security.X509.X509Certificate:CheckSignature(hash, hashAlgorithm, signature)end
---@return Mono.Security.ASN1
function Mono.Security.X509.X509Certificate:GetIssuerName()end
---@return Mono.Security.ASN1
function Mono.Security.X509.X509Certificate:GetSubjectName()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function Mono.Security.X509.X509Certificate:GetObjectData(info, context)end
---@class Mono.Security.X509.X509CertificateBuilder : Mono.Security.X509.X509Builder
---@field public Version System.Byte @ setter getter
---@field public SerialNumber System.Byte[] @ setter getter
---@field public IssuerName System.String @ setter getter
---@field public NotBefore System.DateTime @ setter getter
---@field public NotAfter System.DateTime @ setter getter
---@field public SubjectName System.String @ setter getter
---@field public SubjectPublicKey System.Security.Cryptography.AsymmetricAlgorithm @ setter getter
---@field public IssuerUniqueId System.Byte[] @ setter getter
---@field public SubjectUniqueId System.Byte[] @ setter getter
---@field public Extensions Mono.Security.X509.X509ExtensionCollection @  getter
Mono.Security.X509.X509CertificateBuilder = {}
---@type Mono.Security.X509.X509CertificateBuilder
CS.Mono.Security.X509.X509CertificateBuilder = Mono.Security.X509.X509CertificateBuilder

---@class Mono.Security.X509.X509CertificateCollection : System.Collections.CollectionBase
---@field public Item Mono.Security.X509.X509Certificate @ setter getter
Mono.Security.X509.X509CertificateCollection = {}
---@type Mono.Security.X509.X509CertificateCollection
CS.Mono.Security.X509.X509CertificateCollection = Mono.Security.X509.X509CertificateCollection

---@param value Mono.Security.X509.X509Certificate
---@return System.Int32
function Mono.Security.X509.X509CertificateCollection:Add(value)end
---@overload fun(value:Mono.Security.X509.X509CertificateCollection):System.Void
---@param value Mono.Security.X509.X509Certificate[]
---@return System.Void
function Mono.Security.X509.X509CertificateCollection:AddRange(value)end
---@param value Mono.Security.X509.X509Certificate
---@return System.Boolean
function Mono.Security.X509.X509CertificateCollection:Contains(value)end
---@param array Mono.Security.X509.X509Certificate[]
---@param index System.Int32
---@return System.Void
function Mono.Security.X509.X509CertificateCollection:CopyTo(array, index)end
---@return Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator
function Mono.Security.X509.X509CertificateCollection:GetEnumerator()end
---@return System.Int32
function Mono.Security.X509.X509CertificateCollection:GetHashCode()end
---@param value Mono.Security.X509.X509Certificate
---@return System.Int32
function Mono.Security.X509.X509CertificateCollection:IndexOf(value)end
---@param index System.Int32
---@param value Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.X509CertificateCollection:Insert(index, value)end
---@param value Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.X509CertificateCollection:Remove(value)end
---@class Mono.Security.X509.X509Chain : System.Object
---@field public Chain Mono.Security.X509.X509CertificateCollection @  getter
---@field public Root Mono.Security.X509.X509Certificate @  getter
---@field public Status Mono.Security.X509.X509ChainStatusFlags @  getter
---@field public TrustAnchors Mono.Security.X509.X509CertificateCollection @ setter getter
Mono.Security.X509.X509Chain = {}
---@type Mono.Security.X509.X509Chain
CS.Mono.Security.X509.X509Chain = Mono.Security.X509.X509Chain

---@param x509 Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.X509Chain:LoadCertificate(x509)end
---@param collection Mono.Security.X509.X509CertificateCollection
---@return System.Void
function Mono.Security.X509.X509Chain:LoadCertificates(collection)end
---@param issuerName System.String
---@return Mono.Security.X509.X509Certificate
function Mono.Security.X509.X509Chain:FindByIssuerName(issuerName)end
---@param leaf Mono.Security.X509.X509Certificate
---@return System.Boolean
function Mono.Security.X509.X509Chain:Build(leaf)end
---@return System.Void
function Mono.Security.X509.X509Chain:Reset()end
---@class Mono.Security.X509.X509ChainStatusFlags : System.Enum
Mono.Security.X509.X509ChainStatusFlags = {}
---@type Mono.Security.X509.X509ChainStatusFlags
CS.Mono.Security.X509.X509ChainStatusFlags = Mono.Security.X509.X509ChainStatusFlags

---@return System.Int32 value:0
Mono.Security.X509.X509ChainStatusFlags.NoError = 0
---@return System.Int32 value:1
Mono.Security.X509.X509ChainStatusFlags.NotTimeValid = 1
---@return System.Int32 value:2
Mono.Security.X509.X509ChainStatusFlags.NotTimeNested = 2

---@class Mono.Security.X509.X509Extension : System.Object
---@field public ASN1 Mono.Security.ASN1 @  getter
---@field public Oid System.String @  getter
---@field public Critical System.Boolean @ setter getter
---@field public Name System.String @  getter
---@field public Value Mono.Security.ASN1 @  getter
Mono.Security.X509.X509Extension = {}
---@type Mono.Security.X509.X509Extension
CS.Mono.Security.X509.X509Extension = Mono.Security.X509.X509Extension

---@param obj System.Object
---@return System.Boolean
function Mono.Security.X509.X509Extension:Equals(obj)end
---@return System.Byte[]
function Mono.Security.X509.X509Extension:GetBytes()end
---@return System.Int32
function Mono.Security.X509.X509Extension:GetHashCode()end
---@return System.String
function Mono.Security.X509.X509Extension:ToString()end
---@class Mono.Security.X509.X509ExtensionCollection : System.Collections.CollectionBase
---@field public Item Mono.Security.X509.X509Extension @  getter
---@field public Item Mono.Security.X509.X509Extension @  getter
Mono.Security.X509.X509ExtensionCollection = {}
---@type Mono.Security.X509.X509ExtensionCollection
CS.Mono.Security.X509.X509ExtensionCollection = Mono.Security.X509.X509ExtensionCollection

---@param extension Mono.Security.X509.X509Extension
---@return System.Int32
function Mono.Security.X509.X509ExtensionCollection:Add(extension)end
---@overload fun(collection:Mono.Security.X509.X509ExtensionCollection):System.Void
---@param extension Mono.Security.X509.X509Extension[]
---@return System.Void
function Mono.Security.X509.X509ExtensionCollection:AddRange(extension)end
---@overload fun(oid:System.String):System.Boolean
---@param extension Mono.Security.X509.X509Extension
---@return System.Boolean
function Mono.Security.X509.X509ExtensionCollection:Contains(extension)end
---@param extensions Mono.Security.X509.X509Extension[]
---@param index System.Int32
---@return System.Void
function Mono.Security.X509.X509ExtensionCollection:CopyTo(extensions, index)end
---@overload fun(oid:System.String):System.Int32
---@param extension Mono.Security.X509.X509Extension
---@return System.Int32
function Mono.Security.X509.X509ExtensionCollection:IndexOf(extension)end
---@param index System.Int32
---@param extension Mono.Security.X509.X509Extension
---@return System.Void
function Mono.Security.X509.X509ExtensionCollection:Insert(index, extension)end
---@overload fun(oid:System.String):System.Void
---@param extension Mono.Security.X509.X509Extension
---@return System.Void
function Mono.Security.X509.X509ExtensionCollection:Remove(extension)end
---@return System.Byte[]
function Mono.Security.X509.X509ExtensionCollection:GetBytes()end
---@class Mono.Security.X509.X509Store : System.Object
---@field public Certificates Mono.Security.X509.X509CertificateCollection @  getter
---@field public Crls System.Collections.ArrayList @  getter
---@field public Name System.String @  getter
Mono.Security.X509.X509Store = {}
---@type Mono.Security.X509.X509Store
CS.Mono.Security.X509.X509Store = Mono.Security.X509.X509Store

---@return System.Void
function Mono.Security.X509.X509Store:Clear()end
---@overload fun(crl:Mono.Security.X509.X509Crl):System.Void
---@param certificate Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.X509Store:Import(certificate)end
---@overload fun(crl:Mono.Security.X509.X509Crl):System.Void
---@param certificate Mono.Security.X509.X509Certificate
---@return System.Void
function Mono.Security.X509.X509Store:Remove(certificate)end
---@class Mono.Security.X509.X509StoreManager : System.Object
---@field public CurrentUser Mono.Security.X509.X509Stores @static  getter
---@field public LocalMachine Mono.Security.X509.X509Stores @static  getter
---@field public NewCurrentUser Mono.Security.X509.X509Stores @static  getter
---@field public NewLocalMachine Mono.Security.X509.X509Stores @static  getter
---@field public IntermediateCACertificates Mono.Security.X509.X509CertificateCollection @static  getter
---@field public IntermediateCACrls System.Collections.ArrayList @static  getter
---@field public TrustedRootCertificates Mono.Security.X509.X509CertificateCollection @static  getter
---@field public TrustedRootCACrls System.Collections.ArrayList @static  getter
---@field public UntrustedCertificates Mono.Security.X509.X509CertificateCollection @static  getter
Mono.Security.X509.X509StoreManager = {}
---@type Mono.Security.X509.X509StoreManager
CS.Mono.Security.X509.X509StoreManager = Mono.Security.X509.X509StoreManager

---@class Mono.Security.X509.X509Stores : System.Object
---@field public Personal Mono.Security.X509.X509Store @  getter
---@field public OtherPeople Mono.Security.X509.X509Store @  getter
---@field public IntermediateCA Mono.Security.X509.X509Store @  getter
---@field public TrustedRoot Mono.Security.X509.X509Store @  getter
---@field public Untrusted Mono.Security.X509.X509Store @  getter
Mono.Security.X509.X509Stores = {}
---@type Mono.Security.X509.X509Stores
CS.Mono.Security.X509.X509Stores = Mono.Security.X509.X509Stores

---@return System.Void
function Mono.Security.X509.X509Stores:Clear()end
---@param storeName System.String
---@param create System.Boolean
---@return Mono.Security.X509.X509Store
function Mono.Security.X509.X509Stores:Open(storeName, create)end
---@class Mono.Security.X509.X520 : System.Object
Mono.Security.X509.X520 = {}
---@type Mono.Security.X509.X520
CS.Mono.Security.X509.X520 = Mono.Security.X509.X520

---@class Mono.Security.X509.PKCS12.DeriveBytes : System.Object
---@field public HashName System.String @ setter getter
---@field public IterationCount System.Int32 @ setter getter
---@field public Password System.Byte[] @ setter getter
---@field public Salt System.Byte[] @ setter getter
Mono.Security.X509.PKCS12.DeriveBytes = {}
---@type Mono.Security.X509.PKCS12.DeriveBytes
CS.Mono.Security.X509.PKCS12.DeriveBytes = Mono.Security.X509.PKCS12.DeriveBytes

---@param size System.Int32
---@return System.Byte[]
function Mono.Security.X509.PKCS12.DeriveBytes:DeriveKey(size)end
---@param size System.Int32
---@return System.Byte[]
function Mono.Security.X509.PKCS12.DeriveBytes:DeriveIV(size)end
---@param size System.Int32
---@return System.Byte[]
function Mono.Security.X509.PKCS12.DeriveBytes:DeriveMAC(size)end
---@class Mono.Security.X509.X509Crl.X509CrlEntry : System.Object
---@field public SerialNumber System.Byte[] @  getter
---@field public RevocationDate System.DateTime @  getter
---@field public Extensions Mono.Security.X509.X509ExtensionCollection @  getter
Mono.Security.X509.X509Crl.X509CrlEntry = {}
---@type Mono.Security.X509.X509Crl.X509CrlEntry
CS.Mono.Security.X509.X509Crl.X509CrlEntry = Mono.Security.X509.X509Crl.X509CrlEntry

---@return System.Byte[]
function Mono.Security.X509.X509Crl.X509CrlEntry:GetBytes()end
---@class Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator : System.Object
---@field public Current Mono.Security.X509.X509Certificate @  getter
Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator = {}
---@type Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator
CS.Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator = Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator

---@return System.Boolean
function Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator:MoveNext()end
---@return System.Void
function Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator:Reset()end
---@class Mono.Security.X509.X509Stores.Names : System.Object
---@field public Personal System.String
---@field public OtherPeople System.String
---@field public IntermediateCA System.String
---@field public TrustedRoot System.String
---@field public Untrusted System.String
Mono.Security.X509.X509Stores.Names = {}
---@type Mono.Security.X509.X509Stores.Names
CS.Mono.Security.X509.X509Stores.Names = Mono.Security.X509.X509Stores.Names

---@class Mono.Security.X509.X520.AttributeTypeAndValue : System.Object
---@field public Value System.String @ setter getter
---@field public ASN1 Mono.Security.ASN1 @  getter
Mono.Security.X509.X520.AttributeTypeAndValue = {}
---@type Mono.Security.X509.X520.AttributeTypeAndValue
CS.Mono.Security.X509.X520.AttributeTypeAndValue = Mono.Security.X509.X520.AttributeTypeAndValue

---@overload fun(encoding:System.Byte):System.Byte[]
---@return System.Byte[]
function Mono.Security.X509.X520.AttributeTypeAndValue:GetBytes()end
---@class Mono.Security.X509.X520.Name : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.Name = {}
---@type Mono.Security.X509.X520.Name
CS.Mono.Security.X509.X520.Name = Mono.Security.X509.X520.Name

---@class Mono.Security.X509.X520.CommonName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.CommonName = {}
---@type Mono.Security.X509.X520.CommonName
CS.Mono.Security.X509.X520.CommonName = Mono.Security.X509.X520.CommonName

---@class Mono.Security.X509.X520.SerialNumber : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.SerialNumber = {}
---@type Mono.Security.X509.X520.SerialNumber
CS.Mono.Security.X509.X520.SerialNumber = Mono.Security.X509.X520.SerialNumber

---@class Mono.Security.X509.X520.LocalityName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.LocalityName = {}
---@type Mono.Security.X509.X520.LocalityName
CS.Mono.Security.X509.X520.LocalityName = Mono.Security.X509.X520.LocalityName

---@class Mono.Security.X509.X520.StateOrProvinceName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.StateOrProvinceName = {}
---@type Mono.Security.X509.X520.StateOrProvinceName
CS.Mono.Security.X509.X520.StateOrProvinceName = Mono.Security.X509.X520.StateOrProvinceName

---@class Mono.Security.X509.X520.OrganizationName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.OrganizationName = {}
---@type Mono.Security.X509.X520.OrganizationName
CS.Mono.Security.X509.X520.OrganizationName = Mono.Security.X509.X520.OrganizationName

---@class Mono.Security.X509.X520.OrganizationalUnitName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.OrganizationalUnitName = {}
---@type Mono.Security.X509.X520.OrganizationalUnitName
CS.Mono.Security.X509.X520.OrganizationalUnitName = Mono.Security.X509.X520.OrganizationalUnitName

---@class Mono.Security.X509.X520.EmailAddress : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.EmailAddress = {}
---@type Mono.Security.X509.X520.EmailAddress
CS.Mono.Security.X509.X520.EmailAddress = Mono.Security.X509.X520.EmailAddress

---@class Mono.Security.X509.X520.DomainComponent : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.DomainComponent = {}
---@type Mono.Security.X509.X520.DomainComponent
CS.Mono.Security.X509.X520.DomainComponent = Mono.Security.X509.X520.DomainComponent

---@class Mono.Security.X509.X520.UserId : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.UserId = {}
---@type Mono.Security.X509.X520.UserId
CS.Mono.Security.X509.X520.UserId = Mono.Security.X509.X520.UserId

---@class Mono.Security.X509.X520.Oid : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.Oid = {}
---@type Mono.Security.X509.X520.Oid
CS.Mono.Security.X509.X520.Oid = Mono.Security.X509.X520.Oid

---@class Mono.Security.X509.X520.Title : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.Title = {}
---@type Mono.Security.X509.X520.Title
CS.Mono.Security.X509.X520.Title = Mono.Security.X509.X520.Title

---@class Mono.Security.X509.X520.CountryName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.CountryName = {}
---@type Mono.Security.X509.X520.CountryName
CS.Mono.Security.X509.X520.CountryName = Mono.Security.X509.X520.CountryName

---@class Mono.Security.X509.X520.DnQualifier : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.DnQualifier = {}
---@type Mono.Security.X509.X520.DnQualifier
CS.Mono.Security.X509.X520.DnQualifier = Mono.Security.X509.X520.DnQualifier

---@class Mono.Security.X509.X520.Surname : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.Surname = {}
---@type Mono.Security.X509.X520.Surname
CS.Mono.Security.X509.X520.Surname = Mono.Security.X509.X520.Surname

---@class Mono.Security.X509.X520.GivenName : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.GivenName = {}
---@type Mono.Security.X509.X520.GivenName
CS.Mono.Security.X509.X520.GivenName = Mono.Security.X509.X520.GivenName

---@class Mono.Security.X509.X520.Initial : Mono.Security.X509.X520.AttributeTypeAndValue
Mono.Security.X509.X520.Initial = {}
---@type Mono.Security.X509.X520.Initial
CS.Mono.Security.X509.X520.Initial = Mono.Security.X509.X520.Initial

---@class Mono.Security.X509.PKCS12.DeriveBytes.Purpose : System.Enum
Mono.Security.X509.PKCS12.DeriveBytes.Purpose = {}
---@type Mono.Security.X509.PKCS12.DeriveBytes.Purpose
CS.Mono.Security.X509.PKCS12.DeriveBytes.Purpose = Mono.Security.X509.PKCS12.DeriveBytes.Purpose

---@return System.Int32 value:0
Mono.Security.X509.PKCS12.DeriveBytes.Purpose.Key = 0
---@return System.Int32 value:1
Mono.Security.X509.PKCS12.DeriveBytes.Purpose.IV = 1
---@return System.Int32 value:2
Mono.Security.X509.PKCS12.DeriveBytes.Purpose.MAC = 2

