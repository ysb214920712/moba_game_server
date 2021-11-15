---@class System.Security.SuppressUnmanagedCodeSecurityAttribute : System.Attribute
System.Security.SuppressUnmanagedCodeSecurityAttribute = {}
---@type System.Security.SuppressUnmanagedCodeSecurityAttribute
CS.System.Security.SuppressUnmanagedCodeSecurityAttribute = System.Security.SuppressUnmanagedCodeSecurityAttribute

---@class System.Security.UnverifiableCodeAttribute : System.Attribute
System.Security.UnverifiableCodeAttribute = {}
---@type System.Security.UnverifiableCodeAttribute
CS.System.Security.UnverifiableCodeAttribute = System.Security.UnverifiableCodeAttribute

---@class System.Security.AllowPartiallyTrustedCallersAttribute : System.Attribute
---@field public PartialTrustVisibilityLevel System.Security.PartialTrustVisibilityLevel @ setter getter
System.Security.AllowPartiallyTrustedCallersAttribute = {}
---@type System.Security.AllowPartiallyTrustedCallersAttribute
CS.System.Security.AllowPartiallyTrustedCallersAttribute = System.Security.AllowPartiallyTrustedCallersAttribute

---@class System.Security.PartialTrustVisibilityLevel : System.Enum
System.Security.PartialTrustVisibilityLevel = {}
---@type System.Security.PartialTrustVisibilityLevel
CS.System.Security.PartialTrustVisibilityLevel = System.Security.PartialTrustVisibilityLevel

---@return System.Int32 value:0
System.Security.PartialTrustVisibilityLevel.VisibleToAllHosts = 0
---@return System.Int32 value:1
System.Security.PartialTrustVisibilityLevel.NotVisibleByDefault = 1

---@class System.Security.SecurityCriticalScope : System.Enum
System.Security.SecurityCriticalScope = {}
---@type System.Security.SecurityCriticalScope
CS.System.Security.SecurityCriticalScope = System.Security.SecurityCriticalScope

---@return System.Int32 value:0
System.Security.SecurityCriticalScope.Explicit = 0
---@return System.Int32 value:1
System.Security.SecurityCriticalScope.Everything = 1

---@class System.Security.SecurityCriticalAttribute : System.Attribute
---@field public Scope System.Security.SecurityCriticalScope @  getter
System.Security.SecurityCriticalAttribute = {}
---@type System.Security.SecurityCriticalAttribute
CS.System.Security.SecurityCriticalAttribute = System.Security.SecurityCriticalAttribute

---@class System.Security.SecurityTreatAsSafeAttribute : System.Attribute
System.Security.SecurityTreatAsSafeAttribute = {}
---@type System.Security.SecurityTreatAsSafeAttribute
CS.System.Security.SecurityTreatAsSafeAttribute = System.Security.SecurityTreatAsSafeAttribute

---@class System.Security.SecuritySafeCriticalAttribute : System.Attribute
System.Security.SecuritySafeCriticalAttribute = {}
---@type System.Security.SecuritySafeCriticalAttribute
CS.System.Security.SecuritySafeCriticalAttribute = System.Security.SecuritySafeCriticalAttribute

---@class System.Security.SecurityTransparentAttribute : System.Attribute
System.Security.SecurityTransparentAttribute = {}
---@type System.Security.SecurityTransparentAttribute
CS.System.Security.SecurityTransparentAttribute = System.Security.SecurityTransparentAttribute

---@class System.Security.SecurityRuleSet : System.Enum
System.Security.SecurityRuleSet = {}
---@type System.Security.SecurityRuleSet
CS.System.Security.SecurityRuleSet = System.Security.SecurityRuleSet

---@return System.Int32 value:0
System.Security.SecurityRuleSet.None = 0
---@return System.Int32 value:1
System.Security.SecurityRuleSet.Level1 = 1
---@return System.Int32 value:2
System.Security.SecurityRuleSet.Level2 = 2

---@class System.Security.SecurityRulesAttribute : System.Attribute
---@field public SkipVerificationInFullTrust System.Boolean @ setter getter
---@field public RuleSet System.Security.SecurityRuleSet @  getter
System.Security.SecurityRulesAttribute = {}
---@type System.Security.SecurityRulesAttribute
CS.System.Security.SecurityRulesAttribute = System.Security.SecurityRulesAttribute

---@class System.Security.SecurityContextSource : System.Enum
System.Security.SecurityContextSource = {}
---@type System.Security.SecurityContextSource
CS.System.Security.SecurityContextSource = System.Security.SecurityContextSource

---@return System.Int32 value:0
System.Security.SecurityContextSource.CurrentAppDomain = 0
---@return System.Int32 value:1
System.Security.SecurityContextSource.CurrentAssembly = 1

---@class System.Security.SecurityContext : System.Object
System.Security.SecurityContext = {}
---@type System.Security.SecurityContext
CS.System.Security.SecurityContext = System.Security.SecurityContext

---@return System.Security.SecurityContext
function System.Security.SecurityContext:CreateCopy()end
---@return System.Security.SecurityContext
function System.Security.SecurityContext.Capture()end
---@return System.Void
function System.Security.SecurityContext:Dispose()end
---@return System.Boolean
function System.Security.SecurityContext.IsFlowSuppressed()end
---@return System.Boolean
function System.Security.SecurityContext.IsWindowsIdentityFlowSuppressed()end
---@return System.Void
function System.Security.SecurityContext.RestoreFlow()end
---@param securityContext System.Security.SecurityContext
---@param callback System.Threading.ContextCallback
---@param state System.Object
---@return System.Void
function System.Security.SecurityContext.Run(securityContext, callback, state)end
---@return System.Threading.AsyncFlowControl
function System.Security.SecurityContext.SuppressFlow()end
---@return System.Threading.AsyncFlowControl
function System.Security.SecurityContext.SuppressFlowWindowsIdentity()end
---@class System.Security.CodeAccessPermission : System.Object
System.Security.CodeAccessPermission = {}
---@type System.Security.CodeAccessPermission
CS.System.Security.CodeAccessPermission = System.Security.CodeAccessPermission

---@return System.Void
function System.Security.CodeAccessPermission:Assert()end
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Copy()end
---@return System.Void
function System.Security.CodeAccessPermission:Demand()end
---@return System.Void
function System.Security.CodeAccessPermission:Deny()end
---@param obj System.Object
---@return System.Boolean
function System.Security.CodeAccessPermission:Equals(obj)end
---@param elem System.Security.SecurityElement
---@return System.Void
function System.Security.CodeAccessPermission:FromXml(elem)end
---@return System.Int32
function System.Security.CodeAccessPermission:GetHashCode()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.CodeAccessPermission:IsSubsetOf(target)end
---@return System.String
function System.Security.CodeAccessPermission:ToString()end
---@return System.Security.SecurityElement
function System.Security.CodeAccessPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Union(other)end
---@return System.Void
function System.Security.CodeAccessPermission:PermitOnly()end
---@return System.Void
function System.Security.CodeAccessPermission.RevertAll()end
---@return System.Void
function System.Security.CodeAccessPermission.RevertAssert()end
---@return System.Void
function System.Security.CodeAccessPermission.RevertDeny()end
---@return System.Void
function System.Security.CodeAccessPermission.RevertPermitOnly()end
---@class System.Security.HostProtectionException : System.SystemException
---@field public DemandedResources System.Security.Permissions.HostProtectionResource @  getter
---@field public ProtectedResources System.Security.Permissions.HostProtectionResource @  getter
System.Security.HostProtectionException = {}
---@type System.Security.HostProtectionException
CS.System.Security.HostProtectionException = System.Security.HostProtectionException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Security.HostProtectionException:GetObjectData(info, context)end
---@return System.String
function System.Security.HostProtectionException:ToString()end
---@class System.Security.HostSecurityManager : System.Object
---@field public DomainPolicy System.Security.Policy.PolicyLevel @  getter
---@field public Flags System.Security.HostSecurityManagerOptions @  getter
System.Security.HostSecurityManager = {}
---@type System.Security.HostSecurityManager
CS.System.Security.HostSecurityManager = System.Security.HostSecurityManager

---@param applicationEvidence System.Security.Policy.Evidence
---@param activatorEvidence System.Security.Policy.Evidence
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function System.Security.HostSecurityManager:DetermineApplicationTrust(applicationEvidence, activatorEvidence, context)end
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function System.Security.HostSecurityManager:ProvideAppDomainEvidence(inputEvidence)end
---@param loadedAssembly System.Reflection.Assembly
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function System.Security.HostSecurityManager:ProvideAssemblyEvidence(loadedAssembly, inputEvidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.HostSecurityManager:ResolvePolicy(evidence)end
---@param evidenceType System.Type
---@return System.Security.Policy.EvidenceBase
function System.Security.HostSecurityManager:GenerateAppDomainEvidence(evidenceType)end
---@param evidenceType System.Type
---@param assembly System.Reflection.Assembly
---@return System.Security.Policy.EvidenceBase
function System.Security.HostSecurityManager:GenerateAssemblyEvidence(evidenceType, assembly)end
---@return System.Type[]
function System.Security.HostSecurityManager:GetHostSuppliedAppDomainEvidenceTypes()end
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function System.Security.HostSecurityManager:GetHostSuppliedAssemblyEvidenceTypes(assembly)end
---@class System.Security.HostSecurityManagerOptions : System.Enum
System.Security.HostSecurityManagerOptions = {}
---@type System.Security.HostSecurityManagerOptions
CS.System.Security.HostSecurityManagerOptions = System.Security.HostSecurityManagerOptions

---@return System.Int32 value:0
System.Security.HostSecurityManagerOptions.None = 0
---@return System.Int32 value:1
System.Security.HostSecurityManagerOptions.HostAppDomainEvidence = 1
---@return System.Int32 value:2
System.Security.HostSecurityManagerOptions.HostPolicyLevel = 2
---@return System.Int32 value:4
System.Security.HostSecurityManagerOptions.HostAssemblyEvidence = 4

---@class System.Security.NamedPermissionSet : System.Security.PermissionSet
---@field public Description System.String @ setter getter
---@field public Name System.String @ setter getter
System.Security.NamedPermissionSet = {}
---@type System.Security.NamedPermissionSet
CS.System.Security.NamedPermissionSet = System.Security.NamedPermissionSet

---@overload fun(name:System.String):System.Security.NamedPermissionSet
---@return System.Security.PermissionSet
function System.Security.NamedPermissionSet:Copy()end
---@param et System.Security.SecurityElement
---@return System.Void
function System.Security.NamedPermissionSet:FromXml(et)end
---@return System.Security.SecurityElement
function System.Security.NamedPermissionSet:ToXml()end
---@param obj System.Object
---@return System.Boolean
function System.Security.NamedPermissionSet:Equals(obj)end
---@return System.Int32
function System.Security.NamedPermissionSet:GetHashCode()end
---@class System.Security.PermissionSet : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Security.PermissionSet = {}
---@type System.Security.PermissionSet
CS.System.Security.PermissionSet = System.Security.PermissionSet

---@param perm System.Security.IPermission
---@return System.Security.IPermission
function System.Security.PermissionSet:AddPermission(perm)end
---@return System.Void
function System.Security.PermissionSet:Assert()end
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Copy()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Security.PermissionSet:CopyTo(array, index)end
---@return System.Void
function System.Security.PermissionSet:Demand()end
---@return System.Void
function System.Security.PermissionSet:Deny()end
---@param et System.Security.SecurityElement
---@return System.Void
function System.Security.PermissionSet:FromXml(et)end
---@return System.Collections.IEnumerator
function System.Security.PermissionSet:GetEnumerator()end
---@param target System.Security.PermissionSet
---@return System.Boolean
function System.Security.PermissionSet:IsSubsetOf(target)end
---@return System.Void
function System.Security.PermissionSet:PermitOnly()end
---@return System.Boolean
function System.Security.PermissionSet:ContainsNonCodeAccessPermissions()end
---@param inFormat System.String
---@param inData System.Byte[]
---@param outFormat System.String
---@return System.Byte[]
function System.Security.PermissionSet.ConvertPermissionSet(inFormat, inData, outFormat)end
---@param permClass System.Type
---@return System.Security.IPermission
function System.Security.PermissionSet:GetPermission(permClass)end
---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Intersect(other)end
---@return System.Boolean
function System.Security.PermissionSet:IsEmpty()end
---@return System.Boolean
function System.Security.PermissionSet:IsUnrestricted()end
---@param permClass System.Type
---@return System.Security.IPermission
function System.Security.PermissionSet:RemovePermission(permClass)end
---@param perm System.Security.IPermission
---@return System.Security.IPermission
function System.Security.PermissionSet:SetPermission(perm)end
---@return System.String
function System.Security.PermissionSet:ToString()end
---@return System.Security.SecurityElement
function System.Security.PermissionSet:ToXml()end
---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Union(other)end
---@param obj System.Object
---@return System.Boolean
function System.Security.PermissionSet:Equals(obj)end
---@return System.Int32
function System.Security.PermissionSet:GetHashCode()end
---@return System.Void
function System.Security.PermissionSet.RevertAssert()end
---@class System.Security.PolicyLevelType : System.Enum
System.Security.PolicyLevelType = {}
---@type System.Security.PolicyLevelType
CS.System.Security.PolicyLevelType = System.Security.PolicyLevelType

---@return System.Int32 value:0
System.Security.PolicyLevelType.User = 0
---@return System.Int32 value:1
System.Security.PolicyLevelType.Machine = 1
---@return System.Int32 value:2
System.Security.PolicyLevelType.Enterprise = 2
---@return System.Int32 value:3
System.Security.PolicyLevelType.AppDomain = 3

---@class System.Security.SecureString : System.Object
---@field public Length System.Int32 @  getter
System.Security.SecureString = {}
---@type System.Security.SecureString
CS.System.Security.SecureString = System.Security.SecureString

---@param c System.Char
---@return System.Void
function System.Security.SecureString:AppendChar(c)end
---@return System.Void
function System.Security.SecureString:Clear()end
---@return System.Security.SecureString
function System.Security.SecureString:Copy()end
---@return System.Void
function System.Security.SecureString:Dispose()end
---@param index System.Int32
---@param c System.Char
---@return System.Void
function System.Security.SecureString:InsertAt(index, c)end
---@return System.Boolean
function System.Security.SecureString:IsReadOnly()end
---@return System.Void
function System.Security.SecureString:MakeReadOnly()end
---@param index System.Int32
---@return System.Void
function System.Security.SecureString:RemoveAt(index)end
---@param index System.Int32
---@param c System.Char
---@return System.Void
function System.Security.SecureString:SetAt(index, c)end
---@class System.Security.SecurityElement : System.Object
---@field public Attributes System.Collections.Hashtable @ setter getter
---@field public Children System.Collections.ArrayList @ setter getter
---@field public Tag System.String @ setter getter
---@field public Text System.String @ setter getter
System.Security.SecurityElement = {}
---@type System.Security.SecurityElement
CS.System.Security.SecurityElement = System.Security.SecurityElement

---@param name System.String
---@param value System.String
---@return System.Void
function System.Security.SecurityElement:AddAttribute(name, value)end
---@param child System.Security.SecurityElement
---@return System.Void
function System.Security.SecurityElement:AddChild(child)end
---@param name System.String
---@return System.String
function System.Security.SecurityElement:Attribute(name)end
---@return System.Security.SecurityElement
function System.Security.SecurityElement:Copy()end
---@param other System.Security.SecurityElement
---@return System.Boolean
function System.Security.SecurityElement:Equal(other)end
---@param str System.String
---@return System.String
function System.Security.SecurityElement.Escape(str)end
---@param xml System.String
---@return System.Security.SecurityElement
function System.Security.SecurityElement.FromString(xml)end
---@param name System.String
---@return System.Boolean
function System.Security.SecurityElement.IsValidAttributeName(name)end
---@param value System.String
---@return System.Boolean
function System.Security.SecurityElement.IsValidAttributeValue(value)end
---@param tag System.String
---@return System.Boolean
function System.Security.SecurityElement.IsValidTag(tag)end
---@param text System.String
---@return System.Boolean
function System.Security.SecurityElement.IsValidText(text)end
---@param tag System.String
---@return System.Security.SecurityElement
function System.Security.SecurityElement:SearchForChildByTag(tag)end
---@param tag System.String
---@return System.String
function System.Security.SecurityElement:SearchForTextOfTag(tag)end
---@return System.String
function System.Security.SecurityElement:ToString()end
---@class System.Security.SecurityException : System.SystemException
---@field public Action System.Security.Permissions.SecurityAction @ setter getter
---@field public DenySetInstance System.Object @ setter getter
---@field public FailedAssemblyInfo System.Reflection.AssemblyName @ setter getter
---@field public Method System.Reflection.MethodInfo @ setter getter
---@field public PermitOnlySetInstance System.Object @ setter getter
---@field public Url System.String @ setter getter
---@field public Zone System.Security.SecurityZone @ setter getter
---@field public Demanded System.Object @ setter getter
---@field public FirstPermissionThatFailed System.Security.IPermission @ setter getter
---@field public PermissionState System.String @ setter getter
---@field public PermissionType System.Type @ setter getter
---@field public GrantedSet System.String @ setter getter
---@field public RefusedSet System.String @ setter getter
System.Security.SecurityException = {}
---@type System.Security.SecurityException
CS.System.Security.SecurityException = System.Security.SecurityException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Security.SecurityException:GetObjectData(info, context)end
---@return System.String
function System.Security.SecurityException:ToString()end
---@class System.Security.SecurityManager : System.Object
---@field public CheckExecutionRights System.Boolean @static setter getter
---@field public SecurityEnabled System.Boolean @static setter getter
System.Security.SecurityManager = {}
---@type System.Security.SecurityManager
CS.System.Security.SecurityManager = System.Security.SecurityManager

---@param zone System.Collections.ArrayList
---@param origin System.Collections.ArrayList
---@return System.Void
function System.Security.SecurityManager.GetZoneAndOrigin(zone, origin)end
---@param perm System.Security.IPermission
---@return System.Boolean
function System.Security.SecurityManager.IsGranted(perm)end
---@param path System.String
---@param type System.Security.PolicyLevelType
---@return System.Security.Policy.PolicyLevel
function System.Security.SecurityManager.LoadPolicyLevelFromFile(path, type)end
---@param str System.String
---@param type System.Security.PolicyLevelType
---@return System.Security.Policy.PolicyLevel
function System.Security.SecurityManager.LoadPolicyLevelFromString(str, type)end
---@return System.Collections.IEnumerator
function System.Security.SecurityManager.PolicyHierarchy()end
---@overload fun(evidences:System.Security.Policy.Evidence[]):System.Security.PermissionSet
---@overload fun(evidence:System.Security.Policy.Evidence, reqdPset:System.Security.PermissionSet, optPset:System.Security.PermissionSet, denyPset:System.Security.PermissionSet, denied:System.Security.PermissionSet):System.Security.PermissionSet
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.SecurityManager.ResolvePolicy(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.SecurityManager.ResolveSystemPolicy(evidence)end
---@param evidence System.Security.Policy.Evidence
---@return System.Collections.IEnumerator
function System.Security.SecurityManager.ResolvePolicyGroups(evidence)end
---@return System.Void
function System.Security.SecurityManager.SavePolicy()end
---@param level System.Security.Policy.PolicyLevel
---@return System.Void
function System.Security.SecurityManager.SavePolicyLevel(level)end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.SecurityManager.GetStandardSandbox(evidence)end
---@return System.Boolean
function System.Security.SecurityManager.CurrentThreadRequiresSecurityContextCapture()end
---@class System.Security.SecurityState : System.Object
System.Security.SecurityState = {}
---@type System.Security.SecurityState
CS.System.Security.SecurityState = System.Security.SecurityState

---@return System.Void
function System.Security.SecurityState:EnsureState()end
---@return System.Boolean
function System.Security.SecurityState:IsStateAvailable()end
---@class System.Security.SecurityZone : System.Enum
System.Security.SecurityZone = {}
---@type System.Security.SecurityZone
CS.System.Security.SecurityZone = System.Security.SecurityZone

---@return System.Int32 value:0
System.Security.SecurityZone.MyComputer = 0
---@return System.Int32 value:1
System.Security.SecurityZone.Intranet = 1
---@return System.Int32 value:2
System.Security.SecurityZone.Trusted = 2
---@return System.Int32 value:3
System.Security.SecurityZone.Internet = 3
---@return System.Int32 value:4
System.Security.SecurityZone.Untrusted = 4

---@class System.Security.VerificationException : System.SystemException
System.Security.VerificationException = {}
---@type System.Security.VerificationException
CS.System.Security.VerificationException = System.Security.VerificationException

---@class System.Security.XmlSyntaxException : System.SystemException
System.Security.XmlSyntaxException = {}
---@type System.Security.XmlSyntaxException
CS.System.Security.XmlSyntaxException = System.Security.XmlSyntaxException

---@class System.Security.ReadOnlyPermissionSet : System.Security.PermissionSet
System.Security.ReadOnlyPermissionSet = {}
---@type System.Security.ReadOnlyPermissionSet
CS.System.Security.ReadOnlyPermissionSet = System.Security.ReadOnlyPermissionSet

---@class System.Security.ManifestKinds : System.Enum
System.Security.ManifestKinds = {}
---@type System.Security.ManifestKinds
CS.System.Security.ManifestKinds = System.Security.ManifestKinds

---@return System.Int32 value:0
System.Security.ManifestKinds.None = 0
---@return System.Int32 value:1
System.Security.ManifestKinds.Deployment = 1
---@return System.Int32 value:2
System.Security.ManifestKinds.Application = 2
---@return System.Int32 value:3
System.Security.ManifestKinds.ApplicationAndDeployment = 3

---@class System.Security.SecureStringMarshal : System.Object
System.Security.SecureStringMarshal = {}
---@type System.Security.SecureStringMarshal
CS.System.Security.SecureStringMarshal = System.Security.SecureStringMarshal

---@param s System.Security.SecureString
---@return System.IntPtr
function System.Security.SecureStringMarshal.SecureStringToCoTaskMemAnsi(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Security.SecureStringMarshal.SecureStringToGlobalAllocAnsi(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Security.SecureStringMarshal.SecureStringToCoTaskMemUnicode(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Security.SecureStringMarshal.SecureStringToGlobalAllocUnicode(s)end
