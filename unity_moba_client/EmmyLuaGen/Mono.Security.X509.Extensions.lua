---@class Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
---@field public Identifier System.Byte[] @ setter getter
Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension = {}
---@type Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension
CS.Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension = Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension

---@return System.String
function Mono.Security.X509.Extensions.AuthorityKeyIdentifierExtension:ToString()end
---@class Mono.Security.X509.Extensions.BasicConstraintsExtension : Mono.Security.X509.X509Extension
---@field public CertificateAuthority System.Boolean @ setter getter
---@field public Name System.String @  getter
---@field public PathLenConstraint System.Int32 @ setter getter
---@field public NoPathLengthConstraint System.Int32
Mono.Security.X509.Extensions.BasicConstraintsExtension = {}
---@type Mono.Security.X509.Extensions.BasicConstraintsExtension
CS.Mono.Security.X509.Extensions.BasicConstraintsExtension = Mono.Security.X509.Extensions.BasicConstraintsExtension

---@return System.String
function Mono.Security.X509.Extensions.BasicConstraintsExtension:ToString()end
---@class Mono.Security.X509.Extensions.CRLDistributionPointsExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
---@field public DistributionPoints System.Collections.Generic.IEnumerable @  getter
Mono.Security.X509.Extensions.CRLDistributionPointsExtension = {}
---@type Mono.Security.X509.Extensions.CRLDistributionPointsExtension
CS.Mono.Security.X509.Extensions.CRLDistributionPointsExtension = Mono.Security.X509.Extensions.CRLDistributionPointsExtension

---@return System.String
function Mono.Security.X509.Extensions.CRLDistributionPointsExtension:ToString()end
---@class Mono.Security.X509.Extensions.CertificatePoliciesExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
Mono.Security.X509.Extensions.CertificatePoliciesExtension = {}
---@type Mono.Security.X509.Extensions.CertificatePoliciesExtension
CS.Mono.Security.X509.Extensions.CertificatePoliciesExtension = Mono.Security.X509.Extensions.CertificatePoliciesExtension

---@return System.String
function Mono.Security.X509.Extensions.CertificatePoliciesExtension:ToString()end
---@class Mono.Security.X509.Extensions.ExtendedKeyUsageExtension : Mono.Security.X509.X509Extension
---@field public KeyPurpose System.Collections.ArrayList @  getter
---@field public Name System.String @  getter
Mono.Security.X509.Extensions.ExtendedKeyUsageExtension = {}
---@type Mono.Security.X509.Extensions.ExtendedKeyUsageExtension
CS.Mono.Security.X509.Extensions.ExtendedKeyUsageExtension = Mono.Security.X509.Extensions.ExtendedKeyUsageExtension

---@return System.String
function Mono.Security.X509.Extensions.ExtendedKeyUsageExtension:ToString()end
---@class Mono.Security.X509.Extensions.KeyAttributesExtension : Mono.Security.X509.X509Extension
---@field public KeyIdentifier System.Byte[] @  getter
---@field public Name System.String @  getter
---@field public NotAfter System.DateTime @  getter
---@field public NotBefore System.DateTime @  getter
Mono.Security.X509.Extensions.KeyAttributesExtension = {}
---@type Mono.Security.X509.Extensions.KeyAttributesExtension
CS.Mono.Security.X509.Extensions.KeyAttributesExtension = Mono.Security.X509.Extensions.KeyAttributesExtension

---@param usage Mono.Security.X509.Extensions.KeyUsages
---@return System.Boolean
function Mono.Security.X509.Extensions.KeyAttributesExtension:Support(usage)end
---@return System.String
function Mono.Security.X509.Extensions.KeyAttributesExtension:ToString()end
---@class Mono.Security.X509.Extensions.KeyUsages : System.Enum
Mono.Security.X509.Extensions.KeyUsages = {}
---@type Mono.Security.X509.Extensions.KeyUsages
CS.Mono.Security.X509.Extensions.KeyUsages = Mono.Security.X509.Extensions.KeyUsages

---@return System.Int32 value:0
Mono.Security.X509.Extensions.KeyUsages.none = 0
---@return System.Int32 value:1
Mono.Security.X509.Extensions.KeyUsages.encipherOnly = 1
---@return System.Int32 value:2
Mono.Security.X509.Extensions.KeyUsages.cRLSign = 2
---@return System.Int32 value:4
Mono.Security.X509.Extensions.KeyUsages.keyCertSign = 4
---@return System.Int32 value:8
Mono.Security.X509.Extensions.KeyUsages.keyAgreement = 8

---@class Mono.Security.X509.Extensions.KeyUsageExtension : Mono.Security.X509.X509Extension
---@field public KeyUsage Mono.Security.X509.Extensions.KeyUsages @ setter getter
---@field public Name System.String @  getter
Mono.Security.X509.Extensions.KeyUsageExtension = {}
---@type Mono.Security.X509.Extensions.KeyUsageExtension
CS.Mono.Security.X509.Extensions.KeyUsageExtension = Mono.Security.X509.Extensions.KeyUsageExtension

---@param usage Mono.Security.X509.Extensions.KeyUsages
---@return System.Boolean
function Mono.Security.X509.Extensions.KeyUsageExtension:Support(usage)end
---@return System.String
function Mono.Security.X509.Extensions.KeyUsageExtension:ToString()end
---@class Mono.Security.X509.Extensions.NetscapeCertTypeExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
Mono.Security.X509.Extensions.NetscapeCertTypeExtension = {}
---@type Mono.Security.X509.Extensions.NetscapeCertTypeExtension
CS.Mono.Security.X509.Extensions.NetscapeCertTypeExtension = Mono.Security.X509.Extensions.NetscapeCertTypeExtension

---@param usage Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes
---@return System.Boolean
function Mono.Security.X509.Extensions.NetscapeCertTypeExtension:Support(usage)end
---@return System.String
function Mono.Security.X509.Extensions.NetscapeCertTypeExtension:ToString()end
---@class Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension = {}
---@type Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension
CS.Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension = Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension

---@return System.String
function Mono.Security.X509.Extensions.PrivateKeyUsagePeriodExtension:ToString()end
---@class Mono.Security.X509.Extensions.SubjectAltNameExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
---@field public RFC822 System.String[] @  getter
---@field public DNSNames System.String[] @  getter
---@field public IPAddresses System.String[] @  getter
---@field public UniformResourceIdentifiers System.String[] @  getter
Mono.Security.X509.Extensions.SubjectAltNameExtension = {}
---@type Mono.Security.X509.Extensions.SubjectAltNameExtension
CS.Mono.Security.X509.Extensions.SubjectAltNameExtension = Mono.Security.X509.Extensions.SubjectAltNameExtension

---@return System.String
function Mono.Security.X509.Extensions.SubjectAltNameExtension:ToString()end
---@class Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension : Mono.Security.X509.X509Extension
---@field public Name System.String @  getter
---@field public Identifier System.Byte[] @ setter getter
Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension = {}
---@type Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
CS.Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension = Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension

---@return System.String
function Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension:ToString()end
---@class Mono.Security.X509.Extensions.CRLDistributionPointsExtension.DistributionPoint : System.Object
---@field public Name System.String @ setter getter
---@field public Reasons Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags @ setter getter
---@field public CRLIssuer System.String @ setter getter
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.DistributionPoint = {}
---@type Mono.Security.X509.Extensions.CRLDistributionPointsExtension.DistributionPoint
CS.Mono.Security.X509.Extensions.CRLDistributionPointsExtension.DistributionPoint = Mono.Security.X509.Extensions.CRLDistributionPointsExtension.DistributionPoint

---@class Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags : System.Enum
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags = {}
---@type Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags
CS.Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags = Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags

---@return System.Int32 value:0
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.Unused = 0
---@return System.Int32 value:1
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.KeyCompromise = 1
---@return System.Int32 value:2
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.CACompromise = 2
---@return System.Int32 value:3
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.AffiliationChanged = 3
---@return System.Int32 value:4
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.Superseded = 4
---@return System.Int32 value:5
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.CessationOfOperation = 5
---@return System.Int32 value:6
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.CertificateHold = 6
---@return System.Int32 value:7
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.PrivilegeWithdrawn = 7
---@return System.Int32 value:8
Mono.Security.X509.Extensions.CRLDistributionPointsExtension.ReasonFlags.AACompromise = 8

---@class Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes : System.Enum
Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes = {}
---@type Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes
CS.Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes = Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes

---@return System.Int32 value:1
Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes.ObjectSigningCA = 1
---@return System.Int32 value:2
Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes.SmimeCA = 2
---@return System.Int32 value:4
Mono.Security.X509.Extensions.NetscapeCertTypeExtension.CertTypes.SslCA = 4

