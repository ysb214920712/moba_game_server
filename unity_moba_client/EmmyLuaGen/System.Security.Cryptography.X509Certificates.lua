---@class System.Security.Cryptography.X509Certificates.X509ContentType : System.Enum
System.Security.Cryptography.X509Certificates.X509ContentType = {}
---@type System.Security.Cryptography.X509Certificates.X509ContentType
CS.System.Security.Cryptography.X509Certificates.X509ContentType = System.Security.Cryptography.X509Certificates.X509ContentType

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509ContentType.Unknown = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509ContentType.Cert = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509ContentType.SerializedCert = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.X509ContentType.Pfx = 3
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509ContentType.SerializedStore = 4
---@return System.Int32 value:5
System.Security.Cryptography.X509Certificates.X509ContentType.Pkcs7 = 5
---@return System.Int32 value:6
System.Security.Cryptography.X509Certificates.X509ContentType.Authenticode = 6

---@class System.Security.Cryptography.X509Certificates.X509KeyStorageFlags : System.Enum
System.Security.Cryptography.X509Certificates.X509KeyStorageFlags = {}
---@type System.Security.Cryptography.X509Certificates.X509KeyStorageFlags
CS.System.Security.Cryptography.X509Certificates.X509KeyStorageFlags = System.Security.Cryptography.X509Certificates.X509KeyStorageFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.DefaultKeySet = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.UserKeySet = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.MachineKeySet = 2
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Exportable = 4

---@class System.Security.Cryptography.X509Certificates.X509Certificate : System.Object
---@field public Issuer System.String @  getter
---@field public Subject System.String @  getter
---@field public Handle System.IntPtr @  getter
System.Security.Cryptography.X509Certificates.X509Certificate = {}
---@type System.Security.Cryptography.X509Certificates.X509Certificate
CS.System.Security.Cryptography.X509Certificates.X509Certificate = System.Security.Cryptography.X509Certificates.X509Certificate

---@param filename System.String
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Security.Cryptography.X509Certificates.X509Certificate.CreateFromCertFile(filename)end
---@param filename System.String
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Security.Cryptography.X509Certificates.X509Certificate.CreateFromSignedFile(filename)end
---@overload fun(obj:System.Object):System.Boolean
---@param other System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509Certificate:Equals(other)end
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:GetCertHash()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetCertHashString()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetEffectiveDateString()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetExpirationDateString()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetFormat()end
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509Certificate:GetHashCode()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetIssuerName()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetKeyAlgorithm()end
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:GetKeyAlgorithmParameters()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetKeyAlgorithmParametersString()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetName()end
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:GetPublicKey()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetPublicKeyString()end
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:GetRawCertData()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetRawCertDataString()end
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:GetSerialNumber()end
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:GetSerialNumberString()end
---@overload fun(fVerbose:System.Boolean):System.String
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate:ToString()end
---@overload fun(contentType:System.Security.Cryptography.X509Certificates.X509ContentType, password:System.String):System.Byte[]
---@overload fun(contentType:System.Security.Cryptography.X509Certificates.X509ContentType, password:System.Security.SecureString):System.Byte[]
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate:Export(contentType)end
---@overload fun(fileName:System.String):System.Void
---@overload fun(rawData:System.Byte[], password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(rawData:System.Byte[], password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(fileName:System.String, password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(fileName:System.String, password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@param rawData System.Byte[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate:Import(rawData)end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate:Dispose()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate:Reset()end
---@class System.Security.Cryptography.X509Certificates.TrustStatus : System.Enum
System.Security.Cryptography.X509Certificates.TrustStatus = {}
---@type System.Security.Cryptography.X509Certificates.TrustStatus
CS.System.Security.Cryptography.X509Certificates.TrustStatus = System.Security.Cryptography.X509Certificates.TrustStatus

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.TrustStatus.Untrusted = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.TrustStatus.UnknownIdentity = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.TrustStatus.KnownIdentity = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.TrustStatus.Trusted = 3

---@class System.Security.Cryptography.X509Certificates.ECDsaCertificateExtensions : System.Object
System.Security.Cryptography.X509Certificates.ECDsaCertificateExtensions = {}
---@type System.Security.Cryptography.X509Certificates.ECDsaCertificateExtensions
CS.System.Security.Cryptography.X509Certificates.ECDsaCertificateExtensions = System.Security.Cryptography.X509Certificates.ECDsaCertificateExtensions

---@class System.Security.Cryptography.X509Certificates.RSACertificateExtensions : System.Object
System.Security.Cryptography.X509Certificates.RSACertificateExtensions = {}
---@type System.Security.Cryptography.X509Certificates.RSACertificateExtensions
CS.System.Security.Cryptography.X509Certificates.RSACertificateExtensions = System.Security.Cryptography.X509Certificates.RSACertificateExtensions

---@class System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation : System.Object
---@field public Description System.String @  getter
---@field public DescriptionUrl System.Uri @  getter
---@field public HashAlgorithm System.String @  getter
---@field public HResult System.Int32 @  getter
---@field public SignatureChain System.Security.Cryptography.X509Certificates.X509Chain @  getter
---@field public SigningCertificate System.Security.Cryptography.X509Certificates.X509Certificate2 @  getter
---@field public Timestamp System.Security.Cryptography.X509Certificates.TimestampInformation @  getter
---@field public TrustStatus System.Security.Cryptography.X509Certificates.TrustStatus @  getter
---@field public VerificationResult System.Security.Cryptography.SignatureVerificationResult @  getter
System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation = {}
---@type System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation
CS.System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation = System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation

---@class System.Security.Cryptography.X509Certificates.TimestampInformation : System.Object
---@field public HashAlgorithm System.String @  getter
---@field public HResult System.Int32 @  getter
---@field public IsValid System.Boolean @  getter
---@field public SignatureChain System.Security.Cryptography.X509Certificates.X509Chain @  getter
---@field public SigningCertificate System.Security.Cryptography.X509Certificates.X509Certificate2 @  getter
---@field public Timestamp System.DateTime @  getter
---@field public VerificationResult System.Security.Cryptography.SignatureVerificationResult @  getter
System.Security.Cryptography.X509Certificates.TimestampInformation = {}
---@type System.Security.Cryptography.X509Certificates.TimestampInformation
CS.System.Security.Cryptography.X509Certificates.TimestampInformation = System.Security.Cryptography.X509Certificates.TimestampInformation

---@class System.Security.Cryptography.X509Certificates.DSACertificateExtensions : System.Object
System.Security.Cryptography.X509Certificates.DSACertificateExtensions = {}
---@type System.Security.Cryptography.X509Certificates.DSACertificateExtensions
CS.System.Security.Cryptography.X509Certificates.DSACertificateExtensions = System.Security.Cryptography.X509Certificates.DSACertificateExtensions

---@class System.Security.Cryptography.X509Certificates.OpenFlags : System.Enum
System.Security.Cryptography.X509Certificates.OpenFlags = {}
---@type System.Security.Cryptography.X509Certificates.OpenFlags
CS.System.Security.Cryptography.X509Certificates.OpenFlags = System.Security.Cryptography.X509Certificates.OpenFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.OpenFlags.ReadOnly = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.OpenFlags.ReadWrite = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.OpenFlags.MaxAllowed = 2
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.OpenFlags.OpenExistingOnly = 4

---@class System.Security.Cryptography.X509Certificates.StoreLocation : System.Enum
System.Security.Cryptography.X509Certificates.StoreLocation = {}
---@type System.Security.Cryptography.X509Certificates.StoreLocation
CS.System.Security.Cryptography.X509Certificates.StoreLocation = System.Security.Cryptography.X509Certificates.StoreLocation

---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.StoreLocation.CurrentUser = 1

---@class System.Security.Cryptography.X509Certificates.StoreName : System.Enum
System.Security.Cryptography.X509Certificates.StoreName = {}
---@type System.Security.Cryptography.X509Certificates.StoreName
CS.System.Security.Cryptography.X509Certificates.StoreName = System.Security.Cryptography.X509Certificates.StoreName

---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.StoreName.AddressBook = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.StoreName.AuthRoot = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.StoreName.CertificateAuthority = 3
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.StoreName.Disallowed = 4
---@return System.Int32 value:5
System.Security.Cryptography.X509Certificates.StoreName.My = 5
---@return System.Int32 value:6
System.Security.Cryptography.X509Certificates.StoreName.Root = 6
---@return System.Int32 value:7
System.Security.Cryptography.X509Certificates.StoreName.TrustedPeople = 7

---@class System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags : System.Enum
System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags = {}
---@type System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags
CS.System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags = System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags.Reversed = 1

---@class System.Security.Cryptography.X509Certificates.X509ChainStatusFlags : System.Enum
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainStatusFlags
CS.System.Security.Cryptography.X509Certificates.X509ChainStatusFlags = System.Security.Cryptography.X509Certificates.X509ChainStatusFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.NoError = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.NotTimeValid = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.NotTimeNested = 2
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.Revoked = 4
---@return System.Int32 value:8
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.NotSignatureValid = 8
---@return System.Int32 value:16
System.Security.Cryptography.X509Certificates.X509ChainStatusFlags.NotValidForUsage = 16

---@class System.Security.Cryptography.X509Certificates.X509FindType : System.Enum
System.Security.Cryptography.X509Certificates.X509FindType = {}
---@type System.Security.Cryptography.X509Certificates.X509FindType
CS.System.Security.Cryptography.X509Certificates.X509FindType = System.Security.Cryptography.X509Certificates.X509FindType

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509FindType.FindByThumbprint = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509FindType.FindBySubjectName = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509FindType.FindBySubjectDistinguishedName = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.X509FindType.FindByIssuerName = 3
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509FindType.FindByIssuerDistinguishedName = 4
---@return System.Int32 value:5
System.Security.Cryptography.X509Certificates.X509FindType.FindBySerialNumber = 5
---@return System.Int32 value:6
System.Security.Cryptography.X509Certificates.X509FindType.FindByTimeValid = 6
---@return System.Int32 value:7
System.Security.Cryptography.X509Certificates.X509FindType.FindByTimeNotYetValid = 7
---@return System.Int32 value:8
System.Security.Cryptography.X509Certificates.X509FindType.FindByTimeExpired = 8
---@return System.Int32 value:9
System.Security.Cryptography.X509Certificates.X509FindType.FindByTemplateName = 9
---@return System.Int32 value:10
System.Security.Cryptography.X509Certificates.X509FindType.FindByApplicationPolicy = 10
---@return System.Int32 value:11
System.Security.Cryptography.X509Certificates.X509FindType.FindByCertificatePolicy = 11
---@return System.Int32 value:12
System.Security.Cryptography.X509Certificates.X509FindType.FindByExtension = 12
---@return System.Int32 value:13
System.Security.Cryptography.X509Certificates.X509FindType.FindByKeyUsage = 13
---@return System.Int32 value:14
System.Security.Cryptography.X509Certificates.X509FindType.FindBySubjectKeyIdentifier = 14

---@class System.Security.Cryptography.X509Certificates.X509IncludeOption : System.Enum
System.Security.Cryptography.X509Certificates.X509IncludeOption = {}
---@type System.Security.Cryptography.X509Certificates.X509IncludeOption
CS.System.Security.Cryptography.X509Certificates.X509IncludeOption = System.Security.Cryptography.X509Certificates.X509IncludeOption

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509IncludeOption.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509IncludeOption.ExcludeRoot = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509IncludeOption.EndCertOnly = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.X509IncludeOption.WholeChain = 3

---@class System.Security.Cryptography.X509Certificates.X509KeyUsageFlags : System.Enum
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags = {}
---@type System.Security.Cryptography.X509Certificates.X509KeyUsageFlags
CS.System.Security.Cryptography.X509Certificates.X509KeyUsageFlags = System.Security.Cryptography.X509Certificates.X509KeyUsageFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags.EncipherOnly = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags.CrlSign = 2
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags.KeyCertSign = 4
---@return System.Int32 value:8
System.Security.Cryptography.X509Certificates.X509KeyUsageFlags.KeyAgreement = 8

---@class System.Security.Cryptography.X509Certificates.X509NameType : System.Enum
System.Security.Cryptography.X509Certificates.X509NameType = {}
---@type System.Security.Cryptography.X509Certificates.X509NameType
CS.System.Security.Cryptography.X509Certificates.X509NameType = System.Security.Cryptography.X509Certificates.X509NameType

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509NameType.SimpleName = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509NameType.EmailName = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509NameType.UpnName = 2
---@return System.Int32 value:3
System.Security.Cryptography.X509Certificates.X509NameType.DnsName = 3
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509NameType.DnsFromAlternativeName = 4
---@return System.Int32 value:5
System.Security.Cryptography.X509Certificates.X509NameType.UrlName = 5

---@class System.Security.Cryptography.X509Certificates.X509RevocationFlag : System.Enum
System.Security.Cryptography.X509Certificates.X509RevocationFlag = {}
---@type System.Security.Cryptography.X509Certificates.X509RevocationFlag
CS.System.Security.Cryptography.X509Certificates.X509RevocationFlag = System.Security.Cryptography.X509Certificates.X509RevocationFlag

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509RevocationFlag.EndCertificateOnly = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509RevocationFlag.EntireChain = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509RevocationFlag.ExcludeRoot = 2

---@class System.Security.Cryptography.X509Certificates.X509RevocationMode : System.Enum
System.Security.Cryptography.X509Certificates.X509RevocationMode = {}
---@type System.Security.Cryptography.X509Certificates.X509RevocationMode
CS.System.Security.Cryptography.X509Certificates.X509RevocationMode = System.Security.Cryptography.X509Certificates.X509RevocationMode

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509RevocationMode.NoCheck = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509RevocationMode.Online = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509RevocationMode.Offline = 2

---@class System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm : System.Enum
System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm = {}
---@type System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm
CS.System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm = System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm.Sha1 = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm.ShortSha1 = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierHashAlgorithm.CapiSha1 = 2

---@class System.Security.Cryptography.X509Certificates.X509VerificationFlags : System.Enum
System.Security.Cryptography.X509Certificates.X509VerificationFlags = {}
---@type System.Security.Cryptography.X509Certificates.X509VerificationFlags
CS.System.Security.Cryptography.X509Certificates.X509VerificationFlags = System.Security.Cryptography.X509Certificates.X509VerificationFlags

---@return System.Int32 value:0
System.Security.Cryptography.X509Certificates.X509VerificationFlags.NoFlag = 0
---@return System.Int32 value:1
System.Security.Cryptography.X509Certificates.X509VerificationFlags.IgnoreNotTimeValid = 1
---@return System.Int32 value:2
System.Security.Cryptography.X509Certificates.X509VerificationFlags.IgnoreCtlNotTimeValid = 2
---@return System.Int32 value:4
System.Security.Cryptography.X509Certificates.X509VerificationFlags.IgnoreNotTimeNested = 4
---@return System.Int32 value:8
System.Security.Cryptography.X509Certificates.X509VerificationFlags.IgnoreInvalidBasicConstraints = 8

---@class System.Security.Cryptography.X509Certificates.PublicKey : System.Object
---@field public EncodedKeyValue System.Security.Cryptography.AsnEncodedData @  getter
---@field public EncodedParameters System.Security.Cryptography.AsnEncodedData @  getter
---@field public Key System.Security.Cryptography.AsymmetricAlgorithm @  getter
---@field public Oid System.Security.Cryptography.Oid @  getter
System.Security.Cryptography.X509Certificates.PublicKey = {}
---@type System.Security.Cryptography.X509Certificates.PublicKey
CS.System.Security.Cryptography.X509Certificates.PublicKey = System.Security.Cryptography.X509Certificates.PublicKey

---@class System.Security.Cryptography.X509Certificates.X500DistinguishedName : System.Security.Cryptography.AsnEncodedData
---@field public Name System.String @  getter
System.Security.Cryptography.X509Certificates.X500DistinguishedName = {}
---@type System.Security.Cryptography.X509Certificates.X500DistinguishedName
CS.System.Security.Cryptography.X509Certificates.X500DistinguishedName = System.Security.Cryptography.X509Certificates.X500DistinguishedName

---@param flag System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags
---@return System.String
function System.Security.Cryptography.X509Certificates.X500DistinguishedName:Decode(flag)end
---@param multiLine System.Boolean
---@return System.String
function System.Security.Cryptography.X509Certificates.X500DistinguishedName:Format(multiLine)end
---@class System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension : System.Security.Cryptography.X509Certificates.X509Extension
---@field public CertificateAuthority System.Boolean @  getter
---@field public HasPathLengthConstraint System.Boolean @  getter
---@field public PathLengthConstraint System.Int32 @  getter
System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension = {}
---@type System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
CS.System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension = System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension:CopyFrom(asnEncodedData)end
---@class System.Security.Cryptography.X509Certificates.X509Certificate2 : System.Security.Cryptography.X509Certificates.X509Certificate
---@field public Archived System.Boolean @ setter getter
---@field public Extensions System.Security.Cryptography.X509Certificates.X509ExtensionCollection @  getter
---@field public FriendlyName System.String @ setter getter
---@field public HasPrivateKey System.Boolean @  getter
---@field public IssuerName System.Security.Cryptography.X509Certificates.X500DistinguishedName @  getter
---@field public NotAfter System.DateTime @  getter
---@field public NotBefore System.DateTime @  getter
---@field public PrivateKey System.Security.Cryptography.AsymmetricAlgorithm @ setter getter
---@field public PublicKey System.Security.Cryptography.X509Certificates.PublicKey @  getter
---@field public RawData System.Byte[] @  getter
---@field public SerialNumber System.String @  getter
---@field public SignatureAlgorithm System.Security.Cryptography.Oid @  getter
---@field public SubjectName System.Security.Cryptography.X509Certificates.X500DistinguishedName @  getter
---@field public Thumbprint System.String @  getter
---@field public Version System.Int32 @  getter
System.Security.Cryptography.X509Certificates.X509Certificate2 = {}
---@type System.Security.Cryptography.X509Certificates.X509Certificate2
CS.System.Security.Cryptography.X509Certificates.X509Certificate2 = System.Security.Cryptography.X509Certificates.X509Certificate2

---@param nameType System.Security.Cryptography.X509Certificates.X509NameType
---@param forIssuer System.Boolean
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate2:GetNameInfo(nameType, forIssuer)end
---@overload fun(fileName:System.String):System.Void
---@overload fun(rawData:System.Byte[], password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(rawData:System.Byte[], password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(fileName:System.String, password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(fileName:System.String, password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@param rawData System.Byte[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2:Import(rawData)end
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@param password System.String
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate2:Export(contentType, password)end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2:Reset()end
---@overload fun(verbose:System.Boolean):System.String
---@return System.String
function System.Security.Cryptography.X509Certificates.X509Certificate2:ToString()end
---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509Certificate2:Verify()end
---@overload fun(fileName:System.String):System.Security.Cryptography.X509Certificates.X509ContentType
---@param rawData System.Byte[]
---@return System.Security.Cryptography.X509Certificates.X509ContentType
function System.Security.Cryptography.X509Certificates.X509Certificate2.GetCertContentType(rawData)end
---@class System.Security.Cryptography.X509Certificates.X509Certificate2Collection : System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@field public Item System.Security.Cryptography.X509Certificates.X509Certificate2 @ setter getter
System.Security.Cryptography.X509Certificates.X509Certificate2Collection = {}
---@type System.Security.Cryptography.X509Certificates.X509Certificate2Collection
CS.System.Security.Cryptography.X509Certificates.X509Certificate2Collection = System.Security.Cryptography.X509Certificates.X509Certificate2Collection

---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Add(certificate)end
---@overload fun(certificates:System.Security.Cryptography.X509Certificates.X509Certificate2Collection):System.Void
---@param certificates System.Security.Cryptography.X509Certificates.X509Certificate2[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:AddRange(certificates)end
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Contains(certificate)end
---@overload fun(contentType:System.Security.Cryptography.X509Certificates.X509ContentType, password:System.String):System.Byte[]
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@return System.Byte[]
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Export(contentType)end
---@param findType System.Security.Cryptography.X509Certificates.X509FindType
---@param findValue System.Object
---@param validOnly System.Boolean
---@return System.Security.Cryptography.X509Certificates.X509Certificate2Collection
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Find(findType, findValue, validOnly)end
---@return System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:GetEnumerator()end
---@overload fun(fileName:System.String):System.Void
---@overload fun(rawData:System.Byte[], password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@overload fun(fileName:System.String, password:System.String, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags):System.Void
---@param rawData System.Byte[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Import(rawData)end
---@param index System.Int32
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Insert(index, certificate)end
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:Remove(certificate)end
---@overload fun(certificates:System.Security.Cryptography.X509Certificates.X509Certificate2Collection):System.Void
---@param certificates System.Security.Cryptography.X509Certificates.X509Certificate2[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Collection:RemoveRange(certificates)end
---@class System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator : System.Object
---@field public Current System.Security.Cryptography.X509Certificates.X509Certificate2 @  getter
System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator = {}
---@type System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
CS.System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator = System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator

---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator:Reset()end
---@class System.Security.Cryptography.X509Certificates.X509CertificateCollection : System.Collections.CollectionBase
---@field public Item System.Security.Cryptography.X509Certificates.X509Certificate @ setter getter
System.Security.Cryptography.X509Certificates.X509CertificateCollection = {}
---@type System.Security.Cryptography.X509Certificates.X509CertificateCollection
CS.System.Security.Cryptography.X509Certificates.X509CertificateCollection = System.Security.Cryptography.X509Certificates.X509CertificateCollection

---@param value System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:Add(value)end
---@overload fun(value:System.Security.Cryptography.X509Certificates.X509CertificateCollection):System.Void
---@param value System.Security.Cryptography.X509Certificates.X509Certificate[]
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:AddRange(value)end
---@param value System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:Contains(value)end
---@param array System.Security.Cryptography.X509Certificates.X509Certificate[]
---@param index System.Int32
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:CopyTo(array, index)end
---@return System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:GetEnumerator()end
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:GetHashCode()end
---@param value System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:Insert(index, value)end
---@param value System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509CertificateCollection:Remove(value)end
---@class System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator : System.Object
---@field public Current System.Security.Cryptography.X509Certificates.X509Certificate @  getter
System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator = {}
---@type System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator
CS.System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator = System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator

---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator:Reset()end
---@class System.Security.Cryptography.X509Certificates.X509Chain : System.Object
---@field public ChainContext System.IntPtr @  getter
---@field public ChainElements System.Security.Cryptography.X509Certificates.X509ChainElementCollection @  getter
---@field public ChainPolicy System.Security.Cryptography.X509Certificates.X509ChainPolicy @ setter getter
---@field public ChainStatus System.Security.Cryptography.X509Certificates.X509ChainStatus[] @  getter
---@field public SafeHandle Microsoft.Win32.SafeHandles.SafeX509ChainHandle @  getter
System.Security.Cryptography.X509Certificates.X509Chain = {}
---@type System.Security.Cryptography.X509Certificates.X509Chain
CS.System.Security.Cryptography.X509Certificates.X509Chain = System.Security.Cryptography.X509Certificates.X509Chain

---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509Chain:Build(certificate)end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Chain:Reset()end
---@return System.Security.Cryptography.X509Certificates.X509Chain
function System.Security.Cryptography.X509Certificates.X509Chain.Create()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Chain:Dispose()end
---@class System.Security.Cryptography.X509Certificates.X509ChainElement : System.Object
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate2 @  getter
---@field public ChainElementStatus System.Security.Cryptography.X509Certificates.X509ChainStatus[] @  getter
---@field public Information System.String @  getter
System.Security.Cryptography.X509Certificates.X509ChainElement = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainElement
CS.System.Security.Cryptography.X509Certificates.X509ChainElement = System.Security.Cryptography.X509Certificates.X509ChainElement

---@class System.Security.Cryptography.X509Certificates.X509ChainElementCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Security.Cryptography.X509Certificates.X509ChainElement @  getter
---@field public SyncRoot System.Object @  getter
System.Security.Cryptography.X509Certificates.X509ChainElementCollection = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainElementCollection
CS.System.Security.Cryptography.X509Certificates.X509ChainElementCollection = System.Security.Cryptography.X509Certificates.X509ChainElementCollection

---@param array System.Security.Cryptography.X509Certificates.X509ChainElement[]
---@param index System.Int32
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509ChainElementCollection:CopyTo(array, index)end
---@return System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
function System.Security.Cryptography.X509Certificates.X509ChainElementCollection:GetEnumerator()end
---@class System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator : System.Object
---@field public Current System.Security.Cryptography.X509Certificates.X509ChainElement @  getter
System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
CS.System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator = System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator

---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator:Reset()end
---@class System.Security.Cryptography.X509Certificates.X509ChainPolicy : System.Object
---@field public ApplicationPolicy System.Security.Cryptography.OidCollection @  getter
---@field public CertificatePolicy System.Security.Cryptography.OidCollection @  getter
---@field public ExtraStore System.Security.Cryptography.X509Certificates.X509Certificate2Collection @ setter getter
---@field public RevocationFlag System.Security.Cryptography.X509Certificates.X509RevocationFlag @ setter getter
---@field public RevocationMode System.Security.Cryptography.X509Certificates.X509RevocationMode @ setter getter
---@field public UrlRetrievalTimeout System.TimeSpan @ setter getter
---@field public VerificationFlags System.Security.Cryptography.X509Certificates.X509VerificationFlags @ setter getter
---@field public VerificationTime System.DateTime @ setter getter
System.Security.Cryptography.X509Certificates.X509ChainPolicy = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainPolicy
CS.System.Security.Cryptography.X509Certificates.X509ChainPolicy = System.Security.Cryptography.X509Certificates.X509ChainPolicy

---@return System.Void
function System.Security.Cryptography.X509Certificates.X509ChainPolicy:Reset()end
---@class System.Security.Cryptography.X509Certificates.X509ChainStatus : System.ValueType
---@field public Status System.Security.Cryptography.X509Certificates.X509ChainStatusFlags @ setter getter
---@field public StatusInformation System.String @ setter getter
System.Security.Cryptography.X509Certificates.X509ChainStatus = {}
---@type System.Security.Cryptography.X509Certificates.X509ChainStatus
CS.System.Security.Cryptography.X509Certificates.X509ChainStatus = System.Security.Cryptography.X509Certificates.X509ChainStatus

---@class System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension : System.Security.Cryptography.X509Certificates.X509Extension
---@field public EnhancedKeyUsages System.Security.Cryptography.OidCollection @  getter
System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension = {}
---@type System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
CS.System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension = System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension:CopyFrom(asnEncodedData)end
---@class System.Security.Cryptography.X509Certificates.X509Extension : System.Security.Cryptography.AsnEncodedData
---@field public Critical System.Boolean @ setter getter
System.Security.Cryptography.X509Certificates.X509Extension = {}
---@type System.Security.Cryptography.X509Certificates.X509Extension
CS.System.Security.Cryptography.X509Certificates.X509Extension = System.Security.Cryptography.X509Certificates.X509Extension

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Extension:CopyFrom(asnEncodedData)end
---@class System.Security.Cryptography.X509Certificates.X509ExtensionCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Item System.Security.Cryptography.X509Certificates.X509Extension @  getter
---@field public Item System.Security.Cryptography.X509Certificates.X509Extension @  getter
System.Security.Cryptography.X509Certificates.X509ExtensionCollection = {}
---@type System.Security.Cryptography.X509Certificates.X509ExtensionCollection
CS.System.Security.Cryptography.X509Certificates.X509ExtensionCollection = System.Security.Cryptography.X509Certificates.X509ExtensionCollection

---@param extension System.Security.Cryptography.X509Certificates.X509Extension
---@return System.Int32
function System.Security.Cryptography.X509Certificates.X509ExtensionCollection:Add(extension)end
---@param array System.Security.Cryptography.X509Certificates.X509Extension[]
---@param index System.Int32
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509ExtensionCollection:CopyTo(array, index)end
---@return System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
function System.Security.Cryptography.X509Certificates.X509ExtensionCollection:GetEnumerator()end
---@class System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator : System.Object
---@field public Current System.Security.Cryptography.X509Certificates.X509Extension @  getter
System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator = {}
---@type System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
CS.System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator = System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator

---@return System.Boolean
function System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator:Reset()end
---@class System.Security.Cryptography.X509Certificates.X509KeyUsageExtension : System.Security.Cryptography.X509Certificates.X509Extension
---@field public KeyUsages System.Security.Cryptography.X509Certificates.X509KeyUsageFlags @  getter
System.Security.Cryptography.X509Certificates.X509KeyUsageExtension = {}
---@type System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
CS.System.Security.Cryptography.X509Certificates.X509KeyUsageExtension = System.Security.Cryptography.X509Certificates.X509KeyUsageExtension

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509KeyUsageExtension:CopyFrom(asnEncodedData)end
---@class System.Security.Cryptography.X509Certificates.X509Store : System.Object
---@field public Certificates System.Security.Cryptography.X509Certificates.X509Certificate2Collection @  getter
---@field public Location System.Security.Cryptography.X509Certificates.StoreLocation @  getter
---@field public Name System.String @  getter
---@field public StoreHandle System.IntPtr @  getter
System.Security.Cryptography.X509Certificates.X509Store = {}
---@type System.Security.Cryptography.X509Certificates.X509Store
CS.System.Security.Cryptography.X509Certificates.X509Store = System.Security.Cryptography.X509Certificates.X509Store

---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:Add(certificate)end
---@param certificates System.Security.Cryptography.X509Certificates.X509Certificate2Collection
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:AddRange(certificates)end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:Close()end
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:Dispose()end
---@param flags System.Security.Cryptography.X509Certificates.OpenFlags
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:Open(flags)end
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate2
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:Remove(certificate)end
---@param certificates System.Security.Cryptography.X509Certificates.X509Certificate2Collection
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509Store:RemoveRange(certificates)end
---@class System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension : System.Security.Cryptography.X509Certificates.X509Extension
---@field public SubjectKeyIdentifier System.String @  getter
System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension = {}
---@type System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
CS.System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension = System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension:CopyFrom(asnEncodedData)end
