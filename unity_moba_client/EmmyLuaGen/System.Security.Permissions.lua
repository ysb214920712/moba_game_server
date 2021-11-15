---@class System.Security.Permissions.CodeAccessSecurityAttribute : System.Security.Permissions.SecurityAttribute
System.Security.Permissions.CodeAccessSecurityAttribute = {}
---@type System.Security.Permissions.CodeAccessSecurityAttribute
CS.System.Security.Permissions.CodeAccessSecurityAttribute = System.Security.Permissions.CodeAccessSecurityAttribute

---@class System.Security.Permissions.EnvironmentPermission : System.Security.CodeAccessPermission
System.Security.Permissions.EnvironmentPermission = {}
---@type System.Security.Permissions.EnvironmentPermission
CS.System.Security.Permissions.EnvironmentPermission = System.Security.Permissions.EnvironmentPermission

---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList System.String
---@return System.Void
function System.Security.Permissions.EnvironmentPermission:AddPathList(flag, pathList)end
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.EnvironmentPermission:FromXml(esd)end
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@return System.String
function System.Security.Permissions.EnvironmentPermission:GetPathList(flag)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.EnvironmentPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.EnvironmentPermission:IsUnrestricted()end
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList System.String
---@return System.Void
function System.Security.Permissions.EnvironmentPermission:SetPathList(flag, pathList)end
---@return System.Security.SecurityElement
function System.Security.Permissions.EnvironmentPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Union(other)end
---@class System.Security.Permissions.EnvironmentPermissionAccess : System.Enum
System.Security.Permissions.EnvironmentPermissionAccess = {}
---@type System.Security.Permissions.EnvironmentPermissionAccess
CS.System.Security.Permissions.EnvironmentPermissionAccess = System.Security.Permissions.EnvironmentPermissionAccess

---@return System.Int32 value:0
System.Security.Permissions.EnvironmentPermissionAccess.NoAccess = 0
---@return System.Int32 value:1
System.Security.Permissions.EnvironmentPermissionAccess.Read = 1
---@return System.Int32 value:2
System.Security.Permissions.EnvironmentPermissionAccess.Write = 2
---@return System.Int32 value:3
System.Security.Permissions.EnvironmentPermissionAccess.AllAccess = 3

---@class System.Security.Permissions.EnvironmentPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All System.String @ setter getter
---@field public Read System.String @ setter getter
---@field public Write System.String @ setter getter
System.Security.Permissions.EnvironmentPermissionAttribute = {}
---@type System.Security.Permissions.EnvironmentPermissionAttribute
CS.System.Security.Permissions.EnvironmentPermissionAttribute = System.Security.Permissions.EnvironmentPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.FileDialogPermission : System.Security.CodeAccessPermission
---@field public Access System.Security.Permissions.FileDialogPermissionAccess @ setter getter
System.Security.Permissions.FileDialogPermission = {}
---@type System.Security.Permissions.FileDialogPermission
CS.System.Security.Permissions.FileDialogPermission = System.Security.Permissions.FileDialogPermission

---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.FileDialogPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.FileDialogPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.FileDialogPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.FileDialogPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Union(target)end
---@class System.Security.Permissions.FileDialogPermissionAccess : System.Enum
System.Security.Permissions.FileDialogPermissionAccess = {}
---@type System.Security.Permissions.FileDialogPermissionAccess
CS.System.Security.Permissions.FileDialogPermissionAccess = System.Security.Permissions.FileDialogPermissionAccess

---@return System.Int32 value:0
System.Security.Permissions.FileDialogPermissionAccess.None = 0
---@return System.Int32 value:1
System.Security.Permissions.FileDialogPermissionAccess.Open = 1
---@return System.Int32 value:2
System.Security.Permissions.FileDialogPermissionAccess.Save = 2
---@return System.Int32 value:3
System.Security.Permissions.FileDialogPermissionAccess.OpenSave = 3

---@class System.Security.Permissions.FileDialogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Open System.Boolean @ setter getter
---@field public Save System.Boolean @ setter getter
System.Security.Permissions.FileDialogPermissionAttribute = {}
---@type System.Security.Permissions.FileDialogPermissionAttribute
CS.System.Security.Permissions.FileDialogPermissionAttribute = System.Security.Permissions.FileDialogPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.FileIOPermission : System.Security.CodeAccessPermission
---@field public AllFiles System.Security.Permissions.FileIOPermissionAccess @ setter getter
---@field public AllLocalFiles System.Security.Permissions.FileIOPermissionAccess @ setter getter
System.Security.Permissions.FileIOPermission = {}
---@type System.Security.Permissions.FileIOPermission
CS.System.Security.Permissions.FileIOPermission = System.Security.Permissions.FileIOPermission

---@overload fun(access:System.Security.Permissions.FileIOPermissionAccess, pathList:System.String[]):System.Void
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param path System.String
---@return System.Void
function System.Security.Permissions.FileIOPermission:AddPathList(access, path)end
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.FileIOPermission:FromXml(esd)end
---@param access System.Security.Permissions.FileIOPermissionAccess
---@return System.String[]
function System.Security.Permissions.FileIOPermission:GetPathList(access)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.FileIOPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.FileIOPermission:IsUnrestricted()end
---@overload fun(access:System.Security.Permissions.FileIOPermissionAccess, pathList:System.String[]):System.Void
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param path System.String
---@return System.Void
function System.Security.Permissions.FileIOPermission:SetPathList(access, path)end
---@return System.Security.SecurityElement
function System.Security.Permissions.FileIOPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Union(other)end
---@param obj System.Object
---@return System.Boolean
function System.Security.Permissions.FileIOPermission:Equals(obj)end
---@return System.Int32
function System.Security.Permissions.FileIOPermission:GetHashCode()end
---@class System.Security.Permissions.FileIOPermissionAccess : System.Enum
System.Security.Permissions.FileIOPermissionAccess = {}
---@type System.Security.Permissions.FileIOPermissionAccess
CS.System.Security.Permissions.FileIOPermissionAccess = System.Security.Permissions.FileIOPermissionAccess

---@return System.Int32 value:0
System.Security.Permissions.FileIOPermissionAccess.NoAccess = 0
---@return System.Int32 value:1
System.Security.Permissions.FileIOPermissionAccess.Read = 1
---@return System.Int32 value:2
System.Security.Permissions.FileIOPermissionAccess.Write = 2
---@return System.Int32 value:4
System.Security.Permissions.FileIOPermissionAccess.Append = 4

---@class System.Security.Permissions.FileIOPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All System.String @ setter getter
---@field public Append System.String @ setter getter
---@field public PathDiscovery System.String @ setter getter
---@field public Read System.String @ setter getter
---@field public Write System.String @ setter getter
---@field public AllFiles System.Security.Permissions.FileIOPermissionAccess @ setter getter
---@field public AllLocalFiles System.Security.Permissions.FileIOPermissionAccess @ setter getter
---@field public ChangeAccessControl System.String @ setter getter
---@field public ViewAccessControl System.String @ setter getter
---@field public ViewAndModify System.String @ setter getter
System.Security.Permissions.FileIOPermissionAttribute = {}
---@type System.Security.Permissions.FileIOPermissionAttribute
CS.System.Security.Permissions.FileIOPermissionAttribute = System.Security.Permissions.FileIOPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.GacIdentityPermission : System.Security.CodeAccessPermission
System.Security.Permissions.GacIdentityPermission = {}
---@type System.Security.Permissions.GacIdentityPermission
CS.System.Security.Permissions.GacIdentityPermission = System.Security.Permissions.GacIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.GacIdentityPermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Union(target)end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.GacIdentityPermission:FromXml(securityElement)end
---@return System.Security.SecurityElement
function System.Security.Permissions.GacIdentityPermission:ToXml()end
---@class System.Security.Permissions.GacIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
System.Security.Permissions.GacIdentityPermissionAttribute = {}
---@type System.Security.Permissions.GacIdentityPermissionAttribute
CS.System.Security.Permissions.GacIdentityPermissionAttribute = System.Security.Permissions.GacIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.HostProtectionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public ExternalProcessMgmt System.Boolean @ setter getter
---@field public ExternalThreading System.Boolean @ setter getter
---@field public MayLeakOnAbort System.Boolean @ setter getter
---@field public SecurityInfrastructure System.Boolean @ setter getter
---@field public SelfAffectingProcessMgmt System.Boolean @ setter getter
---@field public SelfAffectingThreading System.Boolean @ setter getter
---@field public SharedState System.Boolean @ setter getter
---@field public Synchronization System.Boolean @ setter getter
---@field public UI System.Boolean @ setter getter
---@field public Resources System.Security.Permissions.HostProtectionResource @ setter getter
System.Security.Permissions.HostProtectionAttribute = {}
---@type System.Security.Permissions.HostProtectionAttribute
CS.System.Security.Permissions.HostProtectionAttribute = System.Security.Permissions.HostProtectionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.HostProtectionAttribute:CreatePermission()end
---@class System.Security.Permissions.HostProtectionResource : System.Enum
System.Security.Permissions.HostProtectionResource = {}
---@type System.Security.Permissions.HostProtectionResource
CS.System.Security.Permissions.HostProtectionResource = System.Security.Permissions.HostProtectionResource

---@return System.Int32 value:0
System.Security.Permissions.HostProtectionResource.None = 0
---@return System.Int32 value:1
System.Security.Permissions.HostProtectionResource.Synchronization = 1
---@return System.Int32 value:2
System.Security.Permissions.HostProtectionResource.SharedState = 2
---@return System.Int32 value:4
System.Security.Permissions.HostProtectionResource.ExternalProcessMgmt = 4
---@return System.Int32 value:8
System.Security.Permissions.HostProtectionResource.SelfAffectingProcessMgmt = 8

---@class System.Security.Permissions.IsolatedStorageContainment : System.Enum
System.Security.Permissions.IsolatedStorageContainment = {}
---@type System.Security.Permissions.IsolatedStorageContainment
CS.System.Security.Permissions.IsolatedStorageContainment = System.Security.Permissions.IsolatedStorageContainment

---@return System.Int32 value:0
System.Security.Permissions.IsolatedStorageContainment.None = 0

---@class System.Security.Permissions.IsolatedStorageFilePermission : System.Security.Permissions.IsolatedStoragePermission
System.Security.Permissions.IsolatedStorageFilePermission = {}
---@type System.Security.Permissions.IsolatedStorageFilePermission
CS.System.Security.Permissions.IsolatedStorageFilePermission = System.Security.Permissions.IsolatedStorageFilePermission

---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.IsolatedStorageFilePermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Union(target)end
---@return System.Security.SecurityElement
function System.Security.Permissions.IsolatedStorageFilePermission:ToXml()end
---@class System.Security.Permissions.IsolatedStorageFilePermissionAttribute : System.Security.Permissions.IsolatedStoragePermissionAttribute
System.Security.Permissions.IsolatedStorageFilePermissionAttribute = {}
---@type System.Security.Permissions.IsolatedStorageFilePermissionAttribute
CS.System.Security.Permissions.IsolatedStorageFilePermissionAttribute = System.Security.Permissions.IsolatedStorageFilePermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.IsolatedStoragePermission : System.Security.CodeAccessPermission
---@field public UserQuota System.Int64 @ setter getter
---@field public UsageAllowed System.Security.Permissions.IsolatedStorageContainment @ setter getter
System.Security.Permissions.IsolatedStoragePermission = {}
---@type System.Security.Permissions.IsolatedStoragePermission
CS.System.Security.Permissions.IsolatedStoragePermission = System.Security.Permissions.IsolatedStoragePermission

---@return System.Boolean
function System.Security.Permissions.IsolatedStoragePermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.IsolatedStoragePermission:ToXml()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.IsolatedStoragePermission:FromXml(esd)end
---@class System.Security.Permissions.IsolatedStoragePermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public UsageAllowed System.Security.Permissions.IsolatedStorageContainment @ setter getter
---@field public UserQuota System.Int64 @ setter getter
System.Security.Permissions.IsolatedStoragePermissionAttribute = {}
---@type System.Security.Permissions.IsolatedStoragePermissionAttribute
CS.System.Security.Permissions.IsolatedStoragePermissionAttribute = System.Security.Permissions.IsolatedStoragePermissionAttribute

---@class System.Security.Permissions.KeyContainerPermission : System.Security.CodeAccessPermission
---@field public AccessEntries System.Security.Permissions.KeyContainerPermissionAccessEntryCollection @  getter
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags @  getter
System.Security.Permissions.KeyContainerPermission = {}
---@type System.Security.Permissions.KeyContainerPermission
CS.System.Security.Permissions.KeyContainerPermission = System.Security.Permissions.KeyContainerPermission

---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Copy()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.KeyContainerPermission:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.KeyContainerPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.KeyContainerPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.KeyContainerPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Union(target)end
---@class System.Security.Permissions.KeyContainerPermissionAccessEntry : System.Object
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags @ setter getter
---@field public KeyContainerName System.String @ setter getter
---@field public KeySpec System.Int32 @ setter getter
---@field public KeyStore System.String @ setter getter
---@field public ProviderName System.String @ setter getter
---@field public ProviderType System.Int32 @ setter getter
System.Security.Permissions.KeyContainerPermissionAccessEntry = {}
---@type System.Security.Permissions.KeyContainerPermissionAccessEntry
CS.System.Security.Permissions.KeyContainerPermissionAccessEntry = System.Security.Permissions.KeyContainerPermissionAccessEntry

---@param o System.Object
---@return System.Boolean
function System.Security.Permissions.KeyContainerPermissionAccessEntry:Equals(o)end
---@return System.Int32
function System.Security.Permissions.KeyContainerPermissionAccessEntry:GetHashCode()end
---@class System.Security.Permissions.KeyContainerPermissionAccessEntryCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Security.Permissions.KeyContainerPermissionAccessEntry @  getter
---@field public SyncRoot System.Object @  getter
System.Security.Permissions.KeyContainerPermissionAccessEntryCollection = {}
---@type System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
CS.System.Security.Permissions.KeyContainerPermissionAccessEntryCollection = System.Security.Permissions.KeyContainerPermissionAccessEntryCollection

---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return System.Int32
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Add(accessEntry)end
---@return System.Void
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Clear()end
---@param array System.Security.Permissions.KeyContainerPermissionAccessEntry[]
---@param index System.Int32
---@return System.Void
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:CopyTo(array, index)end
---@return System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:GetEnumerator()end
---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return System.Int32
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:IndexOf(accessEntry)end
---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return System.Void
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Remove(accessEntry)end
---@class System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator : System.Object
---@field public Current System.Security.Permissions.KeyContainerPermissionAccessEntry @  getter
System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator = {}
---@type System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
CS.System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator = System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator

---@return System.Boolean
function System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator:MoveNext()end
---@return System.Void
function System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator:Reset()end
---@class System.Security.Permissions.KeyContainerPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags @ setter getter
---@field public KeyContainerName System.String @ setter getter
---@field public KeySpec System.Int32 @ setter getter
---@field public KeyStore System.String @ setter getter
---@field public ProviderName System.String @ setter getter
---@field public ProviderType System.Int32 @ setter getter
System.Security.Permissions.KeyContainerPermissionAttribute = {}
---@type System.Security.Permissions.KeyContainerPermissionAttribute
CS.System.Security.Permissions.KeyContainerPermissionAttribute = System.Security.Permissions.KeyContainerPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.KeyContainerPermissionFlags : System.Enum
System.Security.Permissions.KeyContainerPermissionFlags = {}
---@type System.Security.Permissions.KeyContainerPermissionFlags
CS.System.Security.Permissions.KeyContainerPermissionFlags = System.Security.Permissions.KeyContainerPermissionFlags

---@return System.Int32 value:0
System.Security.Permissions.KeyContainerPermissionFlags.NoFlags = 0
---@return System.Int32 value:1
System.Security.Permissions.KeyContainerPermissionFlags.Create = 1
---@return System.Int32 value:2
System.Security.Permissions.KeyContainerPermissionFlags.Open = 2
---@return System.Int32 value:4
System.Security.Permissions.KeyContainerPermissionFlags.Delete = 4

---@class System.Security.Permissions.PermissionSetAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public File System.String @ setter getter
---@field public Hex System.String @ setter getter
---@field public Name System.String @ setter getter
---@field public UnicodeEncoded System.Boolean @ setter getter
---@field public XML System.String @ setter getter
System.Security.Permissions.PermissionSetAttribute = {}
---@type System.Security.Permissions.PermissionSetAttribute
CS.System.Security.Permissions.PermissionSetAttribute = System.Security.Permissions.PermissionSetAttribute

---@return System.Security.IPermission
function System.Security.Permissions.PermissionSetAttribute:CreatePermission()end
---@return System.Security.PermissionSet
function System.Security.Permissions.PermissionSetAttribute:CreatePermissionSet()end
---@class System.Security.Permissions.PermissionState : System.Enum
System.Security.Permissions.PermissionState = {}
---@type System.Security.Permissions.PermissionState
CS.System.Security.Permissions.PermissionState = System.Security.Permissions.PermissionState

---@return System.Int32 value:0
System.Security.Permissions.PermissionState.None = 0
---@return System.Int32 value:1
System.Security.Permissions.PermissionState.Unrestricted = 1

---@class System.Security.Permissions.PrincipalPermission : System.Object
System.Security.Permissions.PrincipalPermission = {}
---@type System.Security.Permissions.PrincipalPermission
CS.System.Security.Permissions.PrincipalPermission = System.Security.Permissions.PrincipalPermission

---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Copy()end
---@return System.Void
function System.Security.Permissions.PrincipalPermission:Demand()end
---@param elem System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.PrincipalPermission:FromXml(elem)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.PrincipalPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.PrincipalPermission:IsUnrestricted()end
---@return System.String
function System.Security.Permissions.PrincipalPermission:ToString()end
---@return System.Security.SecurityElement
function System.Security.Permissions.PrincipalPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Union(other)end
---@param obj System.Object
---@return System.Boolean
function System.Security.Permissions.PrincipalPermission:Equals(obj)end
---@return System.Int32
function System.Security.Permissions.PrincipalPermission:GetHashCode()end
---@class System.Security.Permissions.PrincipalPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Authenticated System.Boolean @ setter getter
---@field public Name System.String @ setter getter
---@field public Role System.String @ setter getter
System.Security.Permissions.PrincipalPermissionAttribute = {}
---@type System.Security.Permissions.PrincipalPermissionAttribute
CS.System.Security.Permissions.PrincipalPermissionAttribute = System.Security.Permissions.PrincipalPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.PublisherIdentityPermission : System.Security.CodeAccessPermission
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate @ setter getter
System.Security.Permissions.PublisherIdentityPermission = {}
---@type System.Security.Permissions.PublisherIdentityPermission
CS.System.Security.Permissions.PublisherIdentityPermission = System.Security.Permissions.PublisherIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.PublisherIdentityPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.PublisherIdentityPermission:IsSubsetOf(target)end
---@return System.Security.SecurityElement
function System.Security.Permissions.PublisherIdentityPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Union(target)end
---@class System.Security.Permissions.PublisherIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public CertFile System.String @ setter getter
---@field public SignedFile System.String @ setter getter
---@field public X509Certificate System.String @ setter getter
System.Security.Permissions.PublisherIdentityPermissionAttribute = {}
---@type System.Security.Permissions.PublisherIdentityPermissionAttribute
CS.System.Security.Permissions.PublisherIdentityPermissionAttribute = System.Security.Permissions.PublisherIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.ReflectionPermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.ReflectionPermissionFlag @ setter getter
System.Security.Permissions.ReflectionPermission = {}
---@type System.Security.Permissions.ReflectionPermission
CS.System.Security.Permissions.ReflectionPermission = System.Security.Permissions.ReflectionPermission

---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.ReflectionPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.ReflectionPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.ReflectionPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.ReflectionPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Union(other)end
---@class System.Security.Permissions.ReflectionPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.ReflectionPermissionFlag @ setter getter
---@field public MemberAccess System.Boolean @ setter getter
---@field public ReflectionEmit System.Boolean @ setter getter
---@field public RestrictedMemberAccess System.Boolean @ setter getter
---@field public TypeInformation System.Boolean @ setter getter
System.Security.Permissions.ReflectionPermissionAttribute = {}
---@type System.Security.Permissions.ReflectionPermissionAttribute
CS.System.Security.Permissions.ReflectionPermissionAttribute = System.Security.Permissions.ReflectionPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.ReflectionPermissionFlag : System.Enum
System.Security.Permissions.ReflectionPermissionFlag = {}
---@type System.Security.Permissions.ReflectionPermissionFlag
CS.System.Security.Permissions.ReflectionPermissionFlag = System.Security.Permissions.ReflectionPermissionFlag

---@return System.Int32 value:0
System.Security.Permissions.ReflectionPermissionFlag.NoFlags = 0
---@return System.Int32 value:1
System.Security.Permissions.ReflectionPermissionFlag.TypeInformation = 1
---@return System.Int32 value:2
System.Security.Permissions.ReflectionPermissionFlag.MemberAccess = 2
---@return System.Int32 value:4
System.Security.Permissions.ReflectionPermissionFlag.ReflectionEmit = 4

---@class System.Security.Permissions.RegistryPermission : System.Security.CodeAccessPermission
System.Security.Permissions.RegistryPermission = {}
---@type System.Security.Permissions.RegistryPermission
CS.System.Security.Permissions.RegistryPermission = System.Security.Permissions.RegistryPermission

---@overload fun(access:System.Security.Permissions.RegistryPermissionAccess, control:System.Security.AccessControl.AccessControlActions, pathList:System.String):System.Void
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param pathList System.String
---@return System.Void
function System.Security.Permissions.RegistryPermission:AddPathList(access, pathList)end
---@param access System.Security.Permissions.RegistryPermissionAccess
---@return System.String
function System.Security.Permissions.RegistryPermission:GetPathList(access)end
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param pathList System.String
---@return System.Void
function System.Security.Permissions.RegistryPermission:SetPathList(access, pathList)end
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.RegistryPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.RegistryPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.RegistryPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.RegistryPermission:ToXml()end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Union(other)end
---@class System.Security.Permissions.RegistryPermissionAccess : System.Enum
System.Security.Permissions.RegistryPermissionAccess = {}
---@type System.Security.Permissions.RegistryPermissionAccess
CS.System.Security.Permissions.RegistryPermissionAccess = System.Security.Permissions.RegistryPermissionAccess

---@return System.Int32 value:0
System.Security.Permissions.RegistryPermissionAccess.NoAccess = 0
---@return System.Int32 value:1
System.Security.Permissions.RegistryPermissionAccess.Read = 1
---@return System.Int32 value:2
System.Security.Permissions.RegistryPermissionAccess.Write = 2
---@return System.Int32 value:4
System.Security.Permissions.RegistryPermissionAccess.Create = 4

---@class System.Security.Permissions.RegistryPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All System.String @ setter getter
---@field public Create System.String @ setter getter
---@field public Read System.String @ setter getter
---@field public Write System.String @ setter getter
---@field public ChangeAccessControl System.String @ setter getter
---@field public ViewAccessControl System.String @ setter getter
---@field public ViewAndModify System.String @ setter getter
System.Security.Permissions.RegistryPermissionAttribute = {}
---@type System.Security.Permissions.RegistryPermissionAttribute
CS.System.Security.Permissions.RegistryPermissionAttribute = System.Security.Permissions.RegistryPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.SecurityAction : System.Enum
System.Security.Permissions.SecurityAction = {}
---@type System.Security.Permissions.SecurityAction
CS.System.Security.Permissions.SecurityAction = System.Security.Permissions.SecurityAction

---@return System.Int32 value:2
System.Security.Permissions.SecurityAction.Demand = 2
---@return System.Int32 value:3
System.Security.Permissions.SecurityAction.Assert = 3
---@return System.Int32 value:4
System.Security.Permissions.SecurityAction.Deny = 4
---@return System.Int32 value:5
System.Security.Permissions.SecurityAction.PermitOnly = 5
---@return System.Int32 value:6
System.Security.Permissions.SecurityAction.LinkDemand = 6
---@return System.Int32 value:7
System.Security.Permissions.SecurityAction.InheritanceDemand = 7
---@return System.Int32 value:8
System.Security.Permissions.SecurityAction.RequestMinimum = 8

---@class System.Security.Permissions.SecurityAttribute : System.Attribute
---@field public Unrestricted System.Boolean @ setter getter
---@field public Action System.Security.Permissions.SecurityAction @ setter getter
System.Security.Permissions.SecurityAttribute = {}
---@type System.Security.Permissions.SecurityAttribute
CS.System.Security.Permissions.SecurityAttribute = System.Security.Permissions.SecurityAttribute

---@return System.Security.IPermission
function System.Security.Permissions.SecurityAttribute:CreatePermission()end
---@class System.Security.Permissions.SecurityPermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.SecurityPermissionFlag @ setter getter
System.Security.Permissions.SecurityPermission = {}
---@type System.Security.Permissions.SecurityPermission
CS.System.Security.Permissions.SecurityPermission = System.Security.Permissions.SecurityPermission

---@return System.Boolean
function System.Security.Permissions.SecurityPermission:IsUnrestricted()end
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.SecurityPermission:IsSubsetOf(target)end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.SecurityPermission:FromXml(esd)end
---@return System.Security.SecurityElement
function System.Security.Permissions.SecurityPermission:ToXml()end
---@class System.Security.Permissions.SecurityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Assertion System.Boolean @ setter getter
---@field public BindingRedirects System.Boolean @ setter getter
---@field public ControlAppDomain System.Boolean @ setter getter
---@field public ControlDomainPolicy System.Boolean @ setter getter
---@field public ControlEvidence System.Boolean @ setter getter
---@field public ControlPolicy System.Boolean @ setter getter
---@field public ControlPrincipal System.Boolean @ setter getter
---@field public ControlThread System.Boolean @ setter getter
---@field public Execution System.Boolean @ setter getter
---@field public Infrastructure System.Boolean @ setter getter
---@field public RemotingConfiguration System.Boolean @ setter getter
---@field public SerializationFormatter System.Boolean @ setter getter
---@field public SkipVerification System.Boolean @ setter getter
---@field public UnmanagedCode System.Boolean @ setter getter
---@field public Flags System.Security.Permissions.SecurityPermissionFlag @ setter getter
System.Security.Permissions.SecurityPermissionAttribute = {}
---@type System.Security.Permissions.SecurityPermissionAttribute
CS.System.Security.Permissions.SecurityPermissionAttribute = System.Security.Permissions.SecurityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.SecurityPermissionFlag : System.Enum
System.Security.Permissions.SecurityPermissionFlag = {}
---@type System.Security.Permissions.SecurityPermissionFlag
CS.System.Security.Permissions.SecurityPermissionFlag = System.Security.Permissions.SecurityPermissionFlag

---@return System.Int32 value:0
System.Security.Permissions.SecurityPermissionFlag.NoFlags = 0
---@return System.Int32 value:1
System.Security.Permissions.SecurityPermissionFlag.Assertion = 1
---@return System.Int32 value:2
System.Security.Permissions.SecurityPermissionFlag.UnmanagedCode = 2
---@return System.Int32 value:4
System.Security.Permissions.SecurityPermissionFlag.SkipVerification = 4
---@return System.Int32 value:8
System.Security.Permissions.SecurityPermissionFlag.Execution = 8

---@class System.Security.Permissions.SiteIdentityPermission : System.Security.CodeAccessPermission
---@field public Site System.String @ setter getter
System.Security.Permissions.SiteIdentityPermission = {}
---@type System.Security.Permissions.SiteIdentityPermission
CS.System.Security.Permissions.SiteIdentityPermission = System.Security.Permissions.SiteIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.SiteIdentityPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.SiteIdentityPermission:IsSubsetOf(target)end
---@return System.Security.SecurityElement
function System.Security.Permissions.SiteIdentityPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Union(target)end
---@class System.Security.Permissions.SiteIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Site System.String @ setter getter
System.Security.Permissions.SiteIdentityPermissionAttribute = {}
---@type System.Security.Permissions.SiteIdentityPermissionAttribute
CS.System.Security.Permissions.SiteIdentityPermissionAttribute = System.Security.Permissions.SiteIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.StrongNameIdentityPermission : System.Security.CodeAccessPermission
---@field public Name System.String @ setter getter
---@field public PublicKey System.Security.Permissions.StrongNamePublicKeyBlob @ setter getter
---@field public Version System.Version @ setter getter
System.Security.Permissions.StrongNameIdentityPermission = {}
---@type System.Security.Permissions.StrongNameIdentityPermission
CS.System.Security.Permissions.StrongNameIdentityPermission = System.Security.Permissions.StrongNameIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Copy()end
---@param e System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.StrongNameIdentityPermission:FromXml(e)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.StrongNameIdentityPermission:IsSubsetOf(target)end
---@return System.Security.SecurityElement
function System.Security.Permissions.StrongNameIdentityPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Union(target)end
---@class System.Security.Permissions.StrongNameIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Name System.String @ setter getter
---@field public PublicKey System.String @ setter getter
---@field public Version System.String @ setter getter
System.Security.Permissions.StrongNameIdentityPermissionAttribute = {}
---@type System.Security.Permissions.StrongNameIdentityPermissionAttribute
CS.System.Security.Permissions.StrongNameIdentityPermissionAttribute = System.Security.Permissions.StrongNameIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.StrongNamePublicKeyBlob : System.Object
System.Security.Permissions.StrongNamePublicKeyBlob = {}
---@type System.Security.Permissions.StrongNamePublicKeyBlob
CS.System.Security.Permissions.StrongNamePublicKeyBlob = System.Security.Permissions.StrongNamePublicKeyBlob

---@param obj System.Object
---@return System.Boolean
function System.Security.Permissions.StrongNamePublicKeyBlob:Equals(obj)end
---@return System.Int32
function System.Security.Permissions.StrongNamePublicKeyBlob:GetHashCode()end
---@return System.String
function System.Security.Permissions.StrongNamePublicKeyBlob:ToString()end
---@class System.Security.Permissions.UIPermission : System.Security.CodeAccessPermission
---@field public Clipboard System.Security.Permissions.UIPermissionClipboard @ setter getter
---@field public Window System.Security.Permissions.UIPermissionWindow @ setter getter
System.Security.Permissions.UIPermission = {}
---@type System.Security.Permissions.UIPermission
CS.System.Security.Permissions.UIPermission = System.Security.Permissions.UIPermission

---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.UIPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.UIPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.UIPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.UIPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Union(target)end
---@class System.Security.Permissions.UIPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Clipboard System.Security.Permissions.UIPermissionClipboard @ setter getter
---@field public Window System.Security.Permissions.UIPermissionWindow @ setter getter
System.Security.Permissions.UIPermissionAttribute = {}
---@type System.Security.Permissions.UIPermissionAttribute
CS.System.Security.Permissions.UIPermissionAttribute = System.Security.Permissions.UIPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.UIPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.UIPermissionClipboard : System.Enum
System.Security.Permissions.UIPermissionClipboard = {}
---@type System.Security.Permissions.UIPermissionClipboard
CS.System.Security.Permissions.UIPermissionClipboard = System.Security.Permissions.UIPermissionClipboard

---@return System.Int32 value:0
System.Security.Permissions.UIPermissionClipboard.NoClipboard = 0
---@return System.Int32 value:1
System.Security.Permissions.UIPermissionClipboard.OwnClipboard = 1
---@return System.Int32 value:2
System.Security.Permissions.UIPermissionClipboard.AllClipboard = 2

---@class System.Security.Permissions.UIPermissionWindow : System.Enum
System.Security.Permissions.UIPermissionWindow = {}
---@type System.Security.Permissions.UIPermissionWindow
CS.System.Security.Permissions.UIPermissionWindow = System.Security.Permissions.UIPermissionWindow

---@return System.Int32 value:0
System.Security.Permissions.UIPermissionWindow.NoWindows = 0
---@return System.Int32 value:1
System.Security.Permissions.UIPermissionWindow.SafeSubWindows = 1
---@return System.Int32 value:2
System.Security.Permissions.UIPermissionWindow.SafeTopLevelWindows = 2
---@return System.Int32 value:3
System.Security.Permissions.UIPermissionWindow.AllWindows = 3

---@class System.Security.Permissions.UrlIdentityPermission : System.Security.CodeAccessPermission
---@field public Url System.String @ setter getter
System.Security.Permissions.UrlIdentityPermission = {}
---@type System.Security.Permissions.UrlIdentityPermission
CS.System.Security.Permissions.UrlIdentityPermission = System.Security.Permissions.UrlIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Copy()end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.UrlIdentityPermission:FromXml(esd)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.UrlIdentityPermission:IsSubsetOf(target)end
---@return System.Security.SecurityElement
function System.Security.Permissions.UrlIdentityPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Union(target)end
---@class System.Security.Permissions.UrlIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Url System.String @ setter getter
System.Security.Permissions.UrlIdentityPermissionAttribute = {}
---@type System.Security.Permissions.UrlIdentityPermissionAttribute
CS.System.Security.Permissions.UrlIdentityPermissionAttribute = System.Security.Permissions.UrlIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.ZoneIdentityPermission : System.Security.CodeAccessPermission
---@field public SecurityZone System.Security.SecurityZone @ setter getter
System.Security.Permissions.ZoneIdentityPermission = {}
---@type System.Security.Permissions.ZoneIdentityPermission
CS.System.Security.Permissions.ZoneIdentityPermission = System.Security.Permissions.ZoneIdentityPermission

---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.ZoneIdentityPermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Intersect(target)end
---@param esd System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.ZoneIdentityPermission:FromXml(esd)end
---@return System.Security.SecurityElement
function System.Security.Permissions.ZoneIdentityPermission:ToXml()end
---@class System.Security.Permissions.ZoneIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Zone System.Security.SecurityZone @ setter getter
System.Security.Permissions.ZoneIdentityPermissionAttribute = {}
---@type System.Security.Permissions.ZoneIdentityPermissionAttribute
CS.System.Security.Permissions.ZoneIdentityPermissionAttribute = System.Security.Permissions.ZoneIdentityPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.TypeDescriptorPermissionFlags : System.Enum
System.Security.Permissions.TypeDescriptorPermissionFlags = {}
---@type System.Security.Permissions.TypeDescriptorPermissionFlags
CS.System.Security.Permissions.TypeDescriptorPermissionFlags = System.Security.Permissions.TypeDescriptorPermissionFlags

---@return System.Int32 value:0
System.Security.Permissions.TypeDescriptorPermissionFlags.NoFlags = 0
---@return System.Int32 value:1
System.Security.Permissions.TypeDescriptorPermissionFlags.RestrictedRegistrationAccess = 1

---@class System.Security.Permissions.TypeDescriptorPermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.TypeDescriptorPermissionFlags @ setter getter
System.Security.Permissions.TypeDescriptorPermission = {}
---@type System.Security.Permissions.TypeDescriptorPermission
CS.System.Security.Permissions.TypeDescriptorPermission = System.Security.Permissions.TypeDescriptorPermission

---@return System.Boolean
function System.Security.Permissions.TypeDescriptorPermission:IsUnrestricted()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.TypeDescriptorPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.TypeDescriptorPermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.TypeDescriptorPermission:Intersect(target)end
---@return System.Security.IPermission
function System.Security.Permissions.TypeDescriptorPermission:Copy()end
---@return System.Security.SecurityElement
function System.Security.Permissions.TypeDescriptorPermission:ToXml()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.TypeDescriptorPermission:FromXml(securityElement)end
---@class System.Security.Permissions.ResourcePermissionBase : System.Security.CodeAccessPermission
---@field public Any System.String
---@field public Local System.String
System.Security.Permissions.ResourcePermissionBase = {}
---@type System.Security.Permissions.ResourcePermissionBase
CS.System.Security.Permissions.ResourcePermissionBase = System.Security.Permissions.ResourcePermissionBase

---@return System.Security.IPermission
function System.Security.Permissions.ResourcePermissionBase:Copy()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.ResourcePermissionBase:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ResourcePermissionBase:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.ResourcePermissionBase:IsSubsetOf(target)end
---@return System.Boolean
function System.Security.Permissions.ResourcePermissionBase:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Security.Permissions.ResourcePermissionBase:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ResourcePermissionBase:Union(target)end
---@class System.Security.Permissions.ResourcePermissionBaseEntry : System.Object
---@field public PermissionAccess System.Int32 @  getter
---@field public PermissionAccessPath System.String[] @  getter
System.Security.Permissions.ResourcePermissionBaseEntry = {}
---@type System.Security.Permissions.ResourcePermissionBaseEntry
CS.System.Security.Permissions.ResourcePermissionBaseEntry = System.Security.Permissions.ResourcePermissionBaseEntry

---@class System.Security.Permissions.StorePermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.StorePermissionFlags @ setter getter
System.Security.Permissions.StorePermission = {}
---@type System.Security.Permissions.StorePermission
CS.System.Security.Permissions.StorePermission = System.Security.Permissions.StorePermission

---@return System.Boolean
function System.Security.Permissions.StorePermission:IsUnrestricted()end
---@return System.Security.IPermission
function System.Security.Permissions.StorePermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StorePermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StorePermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Security.Permissions.StorePermission:IsSubsetOf(target)end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Security.Permissions.StorePermission:FromXml(securityElement)end
---@return System.Security.SecurityElement
function System.Security.Permissions.StorePermission:ToXml()end
---@class System.Security.Permissions.StorePermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.StorePermissionFlags @ setter getter
---@field public AddToStore System.Boolean @ setter getter
---@field public CreateStore System.Boolean @ setter getter
---@field public DeleteStore System.Boolean @ setter getter
---@field public EnumerateCertificates System.Boolean @ setter getter
---@field public EnumerateStores System.Boolean @ setter getter
---@field public OpenStore System.Boolean @ setter getter
---@field public RemoveFromStore System.Boolean @ setter getter
System.Security.Permissions.StorePermissionAttribute = {}
---@type System.Security.Permissions.StorePermissionAttribute
CS.System.Security.Permissions.StorePermissionAttribute = System.Security.Permissions.StorePermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.StorePermissionAttribute:CreatePermission()end
---@class System.Security.Permissions.StorePermissionFlags : System.Enum
System.Security.Permissions.StorePermissionFlags = {}
---@type System.Security.Permissions.StorePermissionFlags
CS.System.Security.Permissions.StorePermissionFlags = System.Security.Permissions.StorePermissionFlags

---@return System.Int32 value:0
System.Security.Permissions.StorePermissionFlags.NoFlags = 0
---@return System.Int32 value:1
System.Security.Permissions.StorePermissionFlags.CreateStore = 1
---@return System.Int32 value:2
System.Security.Permissions.StorePermissionFlags.DeleteStore = 2
---@return System.Int32 value:4
System.Security.Permissions.StorePermissionFlags.EnumerateStores = 4

---@class System.Security.Permissions.TypeDescriptorPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.TypeDescriptorPermissionFlags @ setter getter
---@field public RestrictedRegistrationAccess System.Boolean @ setter getter
System.Security.Permissions.TypeDescriptorPermissionAttribute = {}
---@type System.Security.Permissions.TypeDescriptorPermissionAttribute
CS.System.Security.Permissions.TypeDescriptorPermissionAttribute = System.Security.Permissions.TypeDescriptorPermissionAttribute

---@return System.Security.IPermission
function System.Security.Permissions.TypeDescriptorPermissionAttribute:CreatePermission()end
