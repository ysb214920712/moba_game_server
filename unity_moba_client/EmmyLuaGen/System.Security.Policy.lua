---@class System.Security.Policy.AllMembershipCondition : System.Object
System.Security.Policy.AllMembershipCondition = {}
---@type System.Security.Policy.AllMembershipCondition
CS.System.Security.Policy.AllMembershipCondition = System.Security.Policy.AllMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.AllMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.AllMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.AllMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.AllMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.AllMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.AllMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.AllMembershipCondition:ToXml()end
---@class System.Security.Policy.ApplicationDirectory : System.Security.Policy.EvidenceBase
---@field public Directory System.String @  getter
System.Security.Policy.ApplicationDirectory = {}
---@type System.Security.Policy.ApplicationDirectory
CS.System.Security.Policy.ApplicationDirectory = System.Security.Policy.ApplicationDirectory

---@return System.Object
function System.Security.Policy.ApplicationDirectory:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.ApplicationDirectory:Equals(o)end
---@return System.Int32
function System.Security.Policy.ApplicationDirectory:GetHashCode()end
---@return System.String
function System.Security.Policy.ApplicationDirectory:ToString()end
---@class System.Security.Policy.ApplicationDirectoryMembershipCondition : System.Object
System.Security.Policy.ApplicationDirectoryMembershipCondition = {}
---@type System.Security.Policy.ApplicationDirectoryMembershipCondition
CS.System.Security.Policy.ApplicationDirectoryMembershipCondition = System.Security.Policy.ApplicationDirectoryMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.ApplicationDirectoryMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.ApplicationDirectoryMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.ApplicationDirectoryMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.ApplicationDirectoryMembershipCondition:ToXml()end
---@class System.Security.Policy.ApplicationSecurityInfo : System.Object
---@field public ApplicationEvidence System.Security.Policy.Evidence @ setter getter
---@field public ApplicationId System.ApplicationId @ setter getter
---@field public DefaultRequestSet System.Security.PermissionSet @ setter getter
---@field public DeploymentId System.ApplicationId @ setter getter
System.Security.Policy.ApplicationSecurityInfo = {}
---@type System.Security.Policy.ApplicationSecurityInfo
CS.System.Security.Policy.ApplicationSecurityInfo = System.Security.Policy.ApplicationSecurityInfo

---@class System.Security.Policy.ApplicationSecurityManager : System.Object
---@field public ApplicationTrustManager System.Security.Policy.IApplicationTrustManager @static  getter
---@field public UserApplicationTrusts System.Security.Policy.ApplicationTrustCollection @static  getter
System.Security.Policy.ApplicationSecurityManager = {}
---@type System.Security.Policy.ApplicationSecurityManager
CS.System.Security.Policy.ApplicationSecurityManager = System.Security.Policy.ApplicationSecurityManager

---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return System.Boolean
function System.Security.Policy.ApplicationSecurityManager.DetermineApplicationTrust(activationContext, context)end
---@class System.Security.Policy.ApplicationTrust : System.Security.Policy.EvidenceBase
---@field public ApplicationIdentity System.ApplicationIdentity @ setter getter
---@field public DefaultGrantSet System.Security.Policy.PolicyStatement @ setter getter
---@field public ExtraInfo System.Object @ setter getter
---@field public IsApplicationTrustedToRun System.Boolean @ setter getter
---@field public Persist System.Boolean @ setter getter
---@field public FullTrustAssemblies System.Collections.Generic.IList @  getter
System.Security.Policy.ApplicationTrust = {}
---@type System.Security.Policy.ApplicationTrust
CS.System.Security.Policy.ApplicationTrust = System.Security.Policy.ApplicationTrust

---@param element System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.ApplicationTrust:FromXml(element)end
---@return System.Security.SecurityElement
function System.Security.Policy.ApplicationTrust:ToXml()end
---@class System.Security.Policy.ApplicationTrustCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Item System.Security.Policy.ApplicationTrust @  getter
---@field public Item System.Security.Policy.ApplicationTrust @  getter
System.Security.Policy.ApplicationTrustCollection = {}
---@type System.Security.Policy.ApplicationTrustCollection
CS.System.Security.Policy.ApplicationTrustCollection = System.Security.Policy.ApplicationTrustCollection

---@param trust System.Security.Policy.ApplicationTrust
---@return System.Int32
function System.Security.Policy.ApplicationTrustCollection:Add(trust)end
---@overload fun(trusts:System.Security.Policy.ApplicationTrustCollection):System.Void
---@param trusts System.Security.Policy.ApplicationTrust[]
---@return System.Void
function System.Security.Policy.ApplicationTrustCollection:AddRange(trusts)end
---@return System.Void
function System.Security.Policy.ApplicationTrustCollection:Clear()end
---@param array System.Security.Policy.ApplicationTrust[]
---@param index System.Int32
---@return System.Void
function System.Security.Policy.ApplicationTrustCollection:CopyTo(array, index)end
---@param applicationIdentity System.ApplicationIdentity
---@param versionMatch System.Security.Policy.ApplicationVersionMatch
---@return System.Security.Policy.ApplicationTrustCollection
function System.Security.Policy.ApplicationTrustCollection:Find(applicationIdentity, versionMatch)end
---@return System.Security.Policy.ApplicationTrustEnumerator
function System.Security.Policy.ApplicationTrustCollection:GetEnumerator()end
---@overload fun(applicationIdentity:System.ApplicationIdentity, versionMatch:System.Security.Policy.ApplicationVersionMatch):System.Void
---@param trust System.Security.Policy.ApplicationTrust
---@return System.Void
function System.Security.Policy.ApplicationTrustCollection:Remove(trust)end
---@overload fun(trusts:System.Security.Policy.ApplicationTrustCollection):System.Void
---@param trusts System.Security.Policy.ApplicationTrust[]
---@return System.Void
function System.Security.Policy.ApplicationTrustCollection:RemoveRange(trusts)end
---@class System.Security.Policy.ApplicationTrustEnumerator : System.Object
---@field public Current System.Security.Policy.ApplicationTrust @  getter
System.Security.Policy.ApplicationTrustEnumerator = {}
---@type System.Security.Policy.ApplicationTrustEnumerator
CS.System.Security.Policy.ApplicationTrustEnumerator = System.Security.Policy.ApplicationTrustEnumerator

---@return System.Boolean
function System.Security.Policy.ApplicationTrustEnumerator:MoveNext()end
---@return System.Void
function System.Security.Policy.ApplicationTrustEnumerator:Reset()end
---@class System.Security.Policy.ApplicationVersionMatch : System.Enum
System.Security.Policy.ApplicationVersionMatch = {}
---@type System.Security.Policy.ApplicationVersionMatch
CS.System.Security.Policy.ApplicationVersionMatch = System.Security.Policy.ApplicationVersionMatch

---@return System.Int32 value:0
System.Security.Policy.ApplicationVersionMatch.MatchExactVersion = 0
---@return System.Int32 value:1
System.Security.Policy.ApplicationVersionMatch.MatchAllVersions = 1

---@class System.Security.Policy.CodeConnectAccess : System.Object
---@field public Port System.Int32 @  getter
---@field public Scheme System.String @  getter
---@field public AnyScheme System.String
---@field public DefaultPort System.Int32
---@field public OriginPort System.Int32
---@field public OriginScheme System.String
System.Security.Policy.CodeConnectAccess = {}
---@type System.Security.Policy.CodeConnectAccess
CS.System.Security.Policy.CodeConnectAccess = System.Security.Policy.CodeConnectAccess

---@param o System.Object
---@return System.Boolean
function System.Security.Policy.CodeConnectAccess:Equals(o)end
---@return System.Int32
function System.Security.Policy.CodeConnectAccess:GetHashCode()end
---@param allowPort System.Int32
---@return System.Security.Policy.CodeConnectAccess
function System.Security.Policy.CodeConnectAccess.CreateAnySchemeAccess(allowPort)end
---@param allowPort System.Int32
---@return System.Security.Policy.CodeConnectAccess
function System.Security.Policy.CodeConnectAccess.CreateOriginSchemeAccess(allowPort)end
---@class System.Security.Policy.CodeGroup : System.Object
---@field public MergeLogic System.String @  getter
---@field public PolicyStatement System.Security.Policy.PolicyStatement @ setter getter
---@field public Description System.String @ setter getter
---@field public MembershipCondition System.Security.Policy.IMembershipCondition @ setter getter
---@field public Name System.String @ setter getter
---@field public Children System.Collections.IList @ setter getter
---@field public AttributeString System.String @  getter
---@field public PermissionSetName System.String @  getter
System.Security.Policy.CodeGroup = {}
---@type System.Security.Policy.CodeGroup
CS.System.Security.Policy.CodeGroup = System.Security.Policy.CodeGroup

---@return System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.CodeGroup:Resolve(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:ResolveMatchingCodeGroups(evidence)end
---@param group System.Security.Policy.CodeGroup
---@return System.Void
function System.Security.Policy.CodeGroup:AddChild(group)end
---@overload fun(cg:System.Security.Policy.CodeGroup, compareChildren:System.Boolean):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.CodeGroup:Equals(o)end
---@param group System.Security.Policy.CodeGroup
---@return System.Void
function System.Security.Policy.CodeGroup:RemoveChild(group)end
---@return System.Int32
function System.Security.Policy.CodeGroup:GetHashCode()end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.CodeGroup:FromXml(e)end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.CodeGroup:ToXml()end
---@class System.Security.Policy.Evidence : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Locked System.Boolean @ setter getter
---@field public SyncRoot System.Object @  getter
System.Security.Policy.Evidence = {}
---@type System.Security.Policy.Evidence
CS.System.Security.Policy.Evidence = System.Security.Policy.Evidence

---@param id System.Object
---@return System.Void
function System.Security.Policy.Evidence:AddAssembly(id)end
---@param id System.Object
---@return System.Void
function System.Security.Policy.Evidence:AddHost(id)end
---@return System.Void
function System.Security.Policy.Evidence:Clear()end
---@return System.Security.Policy.Evidence
function System.Security.Policy.Evidence:Clone()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Security.Policy.Evidence:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Security.Policy.Evidence:GetEnumerator()end
---@return System.Collections.IEnumerator
function System.Security.Policy.Evidence:GetAssemblyEnumerator()end
---@return System.Collections.IEnumerator
function System.Security.Policy.Evidence:GetHostEnumerator()end
---@param evidence System.Security.Policy.Evidence
---@return System.Void
function System.Security.Policy.Evidence:Merge(evidence)end
---@param t System.Type
---@return System.Void
function System.Security.Policy.Evidence:RemoveType(t)end
---@param evidence any
---@return System.Void
function System.Security.Policy.Evidence:AddAssemblyEvidence(evidence)end
---@param evidence any
---@return System.Void
function System.Security.Policy.Evidence:AddHostEvidence(evidence)end
---@return any
function System.Security.Policy.Evidence:GetAssemblyEvidence()end
---@return any
function System.Security.Policy.Evidence:GetHostEvidence()end
---@class System.Security.Policy.EvidenceBase : System.Object
System.Security.Policy.EvidenceBase = {}
---@type System.Security.Policy.EvidenceBase
CS.System.Security.Policy.EvidenceBase = System.Security.Policy.EvidenceBase

---@return System.Security.Policy.EvidenceBase
function System.Security.Policy.EvidenceBase:Clone()end
---@class System.Security.Policy.FileCodeGroup : System.Security.Policy.CodeGroup
---@field public MergeLogic System.String @  getter
---@field public AttributeString System.String @  getter
---@field public PermissionSetName System.String @  getter
System.Security.Policy.FileCodeGroup = {}
---@type System.Security.Policy.FileCodeGroup
CS.System.Security.Policy.FileCodeGroup = System.Security.Policy.FileCodeGroup

---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FileCodeGroup:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.FileCodeGroup:Resolve(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FileCodeGroup:ResolveMatchingCodeGroups(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.FileCodeGroup:Equals(o)end
---@return System.Int32
function System.Security.Policy.FileCodeGroup:GetHashCode()end
---@class System.Security.Policy.FirstMatchCodeGroup : System.Security.Policy.CodeGroup
---@field public MergeLogic System.String @  getter
System.Security.Policy.FirstMatchCodeGroup = {}
---@type System.Security.Policy.FirstMatchCodeGroup
CS.System.Security.Policy.FirstMatchCodeGroup = System.Security.Policy.FirstMatchCodeGroup

---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FirstMatchCodeGroup:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.FirstMatchCodeGroup:Resolve(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FirstMatchCodeGroup:ResolveMatchingCodeGroups(evidence)end
---@class System.Security.Policy.GacInstalled : System.Security.Policy.EvidenceBase
System.Security.Policy.GacInstalled = {}
---@type System.Security.Policy.GacInstalled
CS.System.Security.Policy.GacInstalled = System.Security.Policy.GacInstalled

---@return System.Object
function System.Security.Policy.GacInstalled:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.GacInstalled:CreateIdentityPermission(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.GacInstalled:Equals(o)end
---@return System.Int32
function System.Security.Policy.GacInstalled:GetHashCode()end
---@return System.String
function System.Security.Policy.GacInstalled:ToString()end
---@class System.Security.Policy.GacMembershipCondition : System.Object
System.Security.Policy.GacMembershipCondition = {}
---@type System.Security.Policy.GacMembershipCondition
CS.System.Security.Policy.GacMembershipCondition = System.Security.Policy.GacMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.GacMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.GacMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.GacMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.GacMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.GacMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.GacMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.GacMembershipCondition:ToXml()end
---@class System.Security.Policy.Hash : System.Security.Policy.EvidenceBase
---@field public MD5 System.Byte[] @  getter
---@field public SHA1 System.Byte[] @  getter
---@field public SHA256 System.Byte[] @  getter
System.Security.Policy.Hash = {}
---@type System.Security.Policy.Hash
CS.System.Security.Policy.Hash = System.Security.Policy.Hash

---@param hashAlg System.Security.Cryptography.HashAlgorithm
---@return System.Byte[]
function System.Security.Policy.Hash:GenerateHash(hashAlg)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Security.Policy.Hash:GetObjectData(info, context)end
---@return System.String
function System.Security.Policy.Hash:ToString()end
---@param md5 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateMD5(md5)end
---@param sha1 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateSHA1(sha1)end
---@param sha256 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateSHA256(sha256)end
---@class System.Security.Policy.HashMembershipCondition : System.Object
---@field public HashAlgorithm System.Security.Cryptography.HashAlgorithm @ setter getter
---@field public HashValue System.Byte[] @ setter getter
System.Security.Policy.HashMembershipCondition = {}
---@type System.Security.Policy.HashMembershipCondition
CS.System.Security.Policy.HashMembershipCondition = System.Security.Policy.HashMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.HashMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.HashMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.HashMembershipCondition:Equals(o)end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.HashMembershipCondition:ToXml()end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.HashMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.HashMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.HashMembershipCondition:ToString()end
---@class System.Security.Policy.NetCodeGroup : System.Security.Policy.CodeGroup
---@field public AttributeString System.String @  getter
---@field public MergeLogic System.String @  getter
---@field public PermissionSetName System.String @  getter
---@field public AbsentOriginScheme System.String
---@field public AnyOtherOriginScheme System.String
System.Security.Policy.NetCodeGroup = {}
---@type System.Security.Policy.NetCodeGroup
CS.System.Security.Policy.NetCodeGroup = System.Security.Policy.NetCodeGroup

---@param originScheme System.String
---@param connectAccess System.Security.Policy.CodeConnectAccess
---@return System.Void
function System.Security.Policy.NetCodeGroup:AddConnectAccess(originScheme, connectAccess)end
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.NetCodeGroup:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.NetCodeGroup:Equals(o)end
---@return System.Collections.DictionaryEntry[]
function System.Security.Policy.NetCodeGroup:GetConnectAccessRules()end
---@return System.Int32
function System.Security.Policy.NetCodeGroup:GetHashCode()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.NetCodeGroup:Resolve(evidence)end
---@return System.Void
function System.Security.Policy.NetCodeGroup:ResetConnectAccess()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.NetCodeGroup:ResolveMatchingCodeGroups(evidence)end
---@class System.Security.Policy.PermissionRequestEvidence : System.Security.Policy.EvidenceBase
---@field public DeniedPermissions System.Security.PermissionSet @  getter
---@field public OptionalPermissions System.Security.PermissionSet @  getter
---@field public RequestedPermissions System.Security.PermissionSet @  getter
System.Security.Policy.PermissionRequestEvidence = {}
---@type System.Security.Policy.PermissionRequestEvidence
CS.System.Security.Policy.PermissionRequestEvidence = System.Security.Policy.PermissionRequestEvidence

---@return System.Security.Policy.PermissionRequestEvidence
function System.Security.Policy.PermissionRequestEvidence:Copy()end
---@return System.String
function System.Security.Policy.PermissionRequestEvidence:ToString()end
---@class System.Security.Policy.PolicyException : System.SystemException
System.Security.Policy.PolicyException = {}
---@type System.Security.Policy.PolicyException
CS.System.Security.Policy.PolicyException = System.Security.Policy.PolicyException

---@class System.Security.Policy.PolicyLevel : System.Object
---@field public FullTrustAssemblies System.Collections.IList @  getter
---@field public Label System.String @  getter
---@field public NamedPermissionSets System.Collections.IList @  getter
---@field public RootCodeGroup System.Security.Policy.CodeGroup @ setter getter
---@field public StoreLocation System.String @  getter
---@field public Type System.Security.PolicyLevelType @  getter
System.Security.Policy.PolicyLevel = {}
---@type System.Security.Policy.PolicyLevel
CS.System.Security.Policy.PolicyLevel = System.Security.Policy.PolicyLevel

---@overload fun(snMC:System.Security.Policy.StrongNameMembershipCondition):System.Void
---@param sn System.Security.Policy.StrongName
---@return System.Void
function System.Security.Policy.PolicyLevel:AddFullTrustAssembly(sn)end
---@param permSet System.Security.NamedPermissionSet
---@return System.Void
function System.Security.Policy.PolicyLevel:AddNamedPermissionSet(permSet)end
---@param name System.String
---@param pSet System.Security.PermissionSet
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:ChangeNamedPermissionSet(name, pSet)end
---@return System.Security.Policy.PolicyLevel
function System.Security.Policy.PolicyLevel.CreateAppDomainLevel()end
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.PolicyLevel:FromXml(e)end
---@param name System.String
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:GetNamedPermissionSet(name)end
---@return System.Void
function System.Security.Policy.PolicyLevel:Recover()end
---@overload fun(snMC:System.Security.Policy.StrongNameMembershipCondition):System.Void
---@param sn System.Security.Policy.StrongName
---@return System.Void
function System.Security.Policy.PolicyLevel:RemoveFullTrustAssembly(sn)end
---@overload fun(name:System.String):System.Security.NamedPermissionSet
---@param permSet System.Security.NamedPermissionSet
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:RemoveNamedPermissionSet(permSet)end
---@return System.Void
function System.Security.Policy.PolicyLevel:Reset()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.PolicyLevel:Resolve(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.PolicyLevel:ResolveMatchingCodeGroups(evidence)end
---@return System.Security.SecurityElement
function System.Security.Policy.PolicyLevel:ToXml()end
---@class System.Security.Policy.PolicyStatement : System.Object
---@field public PermissionSet System.Security.PermissionSet @ setter getter
---@field public Attributes System.Security.Policy.PolicyStatementAttribute @ setter getter
---@field public AttributeString System.String @  getter
System.Security.Policy.PolicyStatement = {}
---@type System.Security.Policy.PolicyStatement
CS.System.Security.Policy.PolicyStatement = System.Security.Policy.PolicyStatement

---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.PolicyStatement:Copy()end
---@overload fun(et:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param et System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.PolicyStatement:FromXml(et)end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.PolicyStatement:ToXml()end
---@param obj System.Object
---@return System.Boolean
function System.Security.Policy.PolicyStatement:Equals(obj)end
---@return System.Int32
function System.Security.Policy.PolicyStatement:GetHashCode()end
---@class System.Security.Policy.PolicyStatementAttribute : System.Enum
System.Security.Policy.PolicyStatementAttribute = {}
---@type System.Security.Policy.PolicyStatementAttribute
CS.System.Security.Policy.PolicyStatementAttribute = System.Security.Policy.PolicyStatementAttribute

---@return System.Int32 value:0
System.Security.Policy.PolicyStatementAttribute.Nothing = 0
---@return System.Int32 value:1
System.Security.Policy.PolicyStatementAttribute.Exclusive = 1
---@return System.Int32 value:2
System.Security.Policy.PolicyStatementAttribute.LevelFinal = 2
---@return System.Int32 value:3
System.Security.Policy.PolicyStatementAttribute.All = 3

---@class System.Security.Policy.Publisher : System.Security.Policy.EvidenceBase
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate @  getter
System.Security.Policy.Publisher = {}
---@type System.Security.Policy.Publisher
CS.System.Security.Policy.Publisher = System.Security.Policy.Publisher

---@return System.Object
function System.Security.Policy.Publisher:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Publisher:CreateIdentityPermission(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.Publisher:Equals(o)end
---@return System.Int32
function System.Security.Policy.Publisher:GetHashCode()end
---@return System.String
function System.Security.Policy.Publisher:ToString()end
---@class System.Security.Policy.PublisherMembershipCondition : System.Object
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate @ setter getter
System.Security.Policy.PublisherMembershipCondition = {}
---@type System.Security.Policy.PublisherMembershipCondition
CS.System.Security.Policy.PublisherMembershipCondition = System.Security.Policy.PublisherMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.PublisherMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.PublisherMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.PublisherMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.PublisherMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.PublisherMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.PublisherMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.PublisherMembershipCondition:ToXml()end
---@class System.Security.Policy.Site : System.Security.Policy.EvidenceBase
---@field public Name System.String @  getter
System.Security.Policy.Site = {}
---@type System.Security.Policy.Site
CS.System.Security.Policy.Site = System.Security.Policy.Site

---@param url System.String
---@return System.Security.Policy.Site
function System.Security.Policy.Site.CreateFromUrl(url)end
---@return System.Object
function System.Security.Policy.Site:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Site:CreateIdentityPermission(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.Site:Equals(o)end
---@return System.Int32
function System.Security.Policy.Site:GetHashCode()end
---@return System.String
function System.Security.Policy.Site:ToString()end
---@class System.Security.Policy.SiteMembershipCondition : System.Object
---@field public Site System.String @ setter getter
System.Security.Policy.SiteMembershipCondition = {}
---@type System.Security.Policy.SiteMembershipCondition
CS.System.Security.Policy.SiteMembershipCondition = System.Security.Policy.SiteMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.SiteMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.SiteMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.SiteMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.SiteMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.SiteMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.SiteMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.SiteMembershipCondition:ToXml()end
---@class System.Security.Policy.StrongName : System.Security.Policy.EvidenceBase
---@field public Name System.String @  getter
---@field public PublicKey System.Security.Permissions.StrongNamePublicKeyBlob @  getter
---@field public Version System.Version @  getter
System.Security.Policy.StrongName = {}
---@type System.Security.Policy.StrongName
CS.System.Security.Policy.StrongName = System.Security.Policy.StrongName

---@return System.Object
function System.Security.Policy.StrongName:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.StrongName:CreateIdentityPermission(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.StrongName:Equals(o)end
---@return System.Int32
function System.Security.Policy.StrongName:GetHashCode()end
---@return System.String
function System.Security.Policy.StrongName:ToString()end
---@class System.Security.Policy.StrongNameMembershipCondition : System.Object
---@field public Name System.String @ setter getter
---@field public Version System.Version @ setter getter
---@field public PublicKey System.Security.Permissions.StrongNamePublicKeyBlob @ setter getter
System.Security.Policy.StrongNameMembershipCondition = {}
---@type System.Security.Policy.StrongNameMembershipCondition
CS.System.Security.Policy.StrongNameMembershipCondition = System.Security.Policy.StrongNameMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.StrongNameMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.StrongNameMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.StrongNameMembershipCondition:Equals(o)end
---@return System.Int32
function System.Security.Policy.StrongNameMembershipCondition:GetHashCode()end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.StrongNameMembershipCondition:FromXml(e)end
---@return System.String
function System.Security.Policy.StrongNameMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.StrongNameMembershipCondition:ToXml()end
---@class System.Security.Policy.TrustManagerContext : System.Object
---@field public IgnorePersistedDecision System.Boolean @ setter getter
---@field public KeepAlive System.Boolean @ setter getter
---@field public NoPrompt System.Boolean @ setter getter
---@field public Persist System.Boolean @ setter getter
---@field public PreviousApplicationIdentity System.ApplicationIdentity @ setter getter
---@field public UIContext System.Security.Policy.TrustManagerUIContext @ setter getter
System.Security.Policy.TrustManagerContext = {}
---@type System.Security.Policy.TrustManagerContext
CS.System.Security.Policy.TrustManagerContext = System.Security.Policy.TrustManagerContext

---@class System.Security.Policy.TrustManagerUIContext : System.Enum
System.Security.Policy.TrustManagerUIContext = {}
---@type System.Security.Policy.TrustManagerUIContext
CS.System.Security.Policy.TrustManagerUIContext = System.Security.Policy.TrustManagerUIContext

---@return System.Int32 value:0
System.Security.Policy.TrustManagerUIContext.Install = 0
---@return System.Int32 value:1
System.Security.Policy.TrustManagerUIContext.Upgrade = 1
---@return System.Int32 value:2
System.Security.Policy.TrustManagerUIContext.Run = 2

---@class System.Security.Policy.UnionCodeGroup : System.Security.Policy.CodeGroup
---@field public MergeLogic System.String @  getter
System.Security.Policy.UnionCodeGroup = {}
---@type System.Security.Policy.UnionCodeGroup
CS.System.Security.Policy.UnionCodeGroup = System.Security.Policy.UnionCodeGroup

---@return System.Security.Policy.CodeGroup
function System.Security.Policy.UnionCodeGroup:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.UnionCodeGroup:Resolve(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.UnionCodeGroup:ResolveMatchingCodeGroups(evidence)end
---@class System.Security.Policy.Url : System.Security.Policy.EvidenceBase
---@field public Value System.String @  getter
System.Security.Policy.Url = {}
---@type System.Security.Policy.Url
CS.System.Security.Policy.Url = System.Security.Policy.Url

---@return System.Object
function System.Security.Policy.Url:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Url:CreateIdentityPermission(evidence)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.Url:Equals(o)end
---@return System.Int32
function System.Security.Policy.Url:GetHashCode()end
---@return System.String
function System.Security.Policy.Url:ToString()end
---@class System.Security.Policy.UrlMembershipCondition : System.Object
---@field public Url System.String @ setter getter
System.Security.Policy.UrlMembershipCondition = {}
---@type System.Security.Policy.UrlMembershipCondition
CS.System.Security.Policy.UrlMembershipCondition = System.Security.Policy.UrlMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.UrlMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.UrlMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.UrlMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.UrlMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.UrlMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.UrlMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.UrlMembershipCondition:ToXml()end
---@class System.Security.Policy.Zone : System.Security.Policy.EvidenceBase
---@field public SecurityZone System.Security.SecurityZone @  getter
System.Security.Policy.Zone = {}
---@type System.Security.Policy.Zone
CS.System.Security.Policy.Zone = System.Security.Policy.Zone

---@return System.Object
function System.Security.Policy.Zone:Copy()end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Zone:CreateIdentityPermission(evidence)end
---@param url System.String
---@return System.Security.Policy.Zone
function System.Security.Policy.Zone.CreateFromUrl(url)end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.Zone:Equals(o)end
---@return System.Int32
function System.Security.Policy.Zone:GetHashCode()end
---@return System.String
function System.Security.Policy.Zone:ToString()end
---@class System.Security.Policy.ZoneMembershipCondition : System.Object
---@field public SecurityZone System.Security.SecurityZone @ setter getter
System.Security.Policy.ZoneMembershipCondition = {}
---@type System.Security.Policy.ZoneMembershipCondition
CS.System.Security.Policy.ZoneMembershipCondition = System.Security.Policy.ZoneMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return System.Boolean
function System.Security.Policy.ZoneMembershipCondition:Check(evidence)end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.ZoneMembershipCondition:Copy()end
---@param o System.Object
---@return System.Boolean
function System.Security.Policy.ZoneMembershipCondition:Equals(o)end
---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel):System.Void
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Policy.ZoneMembershipCondition:FromXml(e)end
---@return System.Int32
function System.Security.Policy.ZoneMembershipCondition:GetHashCode()end
---@return System.String
function System.Security.Policy.ZoneMembershipCondition:ToString()end
---@overload fun(level:System.Security.Policy.PolicyLevel):System.Security.SecurityElement
---@return System.Security.SecurityElement
function System.Security.Policy.ZoneMembershipCondition:ToXml()end
