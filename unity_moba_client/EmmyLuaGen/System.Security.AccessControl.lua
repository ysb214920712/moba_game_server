---@class System.Security.AccessControl.AccessControlActions : System.Enum
System.Security.AccessControl.AccessControlActions = {}
---@type System.Security.AccessControl.AccessControlActions
CS.System.Security.AccessControl.AccessControlActions = System.Security.AccessControl.AccessControlActions

---@return System.Int32 value:0
System.Security.AccessControl.AccessControlActions.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.AccessControlActions.View = 1
---@return System.Int32 value:2
System.Security.AccessControl.AccessControlActions.Change = 2

---@class System.Security.AccessControl.AccessControlModification : System.Enum
System.Security.AccessControl.AccessControlModification = {}
---@type System.Security.AccessControl.AccessControlModification
CS.System.Security.AccessControl.AccessControlModification = System.Security.AccessControl.AccessControlModification

---@return System.Int32 value:0
System.Security.AccessControl.AccessControlModification.Add = 0
---@return System.Int32 value:1
System.Security.AccessControl.AccessControlModification.Set = 1
---@return System.Int32 value:2
System.Security.AccessControl.AccessControlModification.Reset = 2
---@return System.Int32 value:3
System.Security.AccessControl.AccessControlModification.Remove = 3
---@return System.Int32 value:4
System.Security.AccessControl.AccessControlModification.RemoveAll = 4
---@return System.Int32 value:5
System.Security.AccessControl.AccessControlModification.RemoveSpecific = 5

---@class System.Security.AccessControl.AccessControlSections : System.Enum
System.Security.AccessControl.AccessControlSections = {}
---@type System.Security.AccessControl.AccessControlSections
CS.System.Security.AccessControl.AccessControlSections = System.Security.AccessControl.AccessControlSections

---@return System.Int32 value:0
System.Security.AccessControl.AccessControlSections.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.AccessControlSections.Audit = 1
---@return System.Int32 value:2
System.Security.AccessControl.AccessControlSections.Access = 2
---@return System.Int32 value:4
System.Security.AccessControl.AccessControlSections.Owner = 4

---@class System.Security.AccessControl.AccessControlType : System.Enum
System.Security.AccessControl.AccessControlType = {}
---@type System.Security.AccessControl.AccessControlType
CS.System.Security.AccessControl.AccessControlType = System.Security.AccessControl.AccessControlType

---@return System.Int32 value:0
System.Security.AccessControl.AccessControlType.Allow = 0
---@return System.Int32 value:1
System.Security.AccessControl.AccessControlType.Deny = 1

---@class System.Security.AccessControl.AccessRule : System.Security.AccessControl.AuthorizationRule
---@field public AccessControlType System.Security.AccessControl.AccessControlType @  getter
System.Security.AccessControl.AccessRule = {}
---@type System.Security.AccessControl.AccessRule
CS.System.Security.AccessControl.AccessRule = System.Security.AccessControl.AccessRule

---@class System.Security.AccessControl.AccessRule : System.Security.AccessControl.AccessRule
---@field public Rights any @  getter
System.Security.AccessControl.AccessRule = {}
---@type System.Security.AccessControl.AccessRule
CS.System.Security.AccessControl.AccessRule = System.Security.AccessControl.AccessRule

---@class System.Security.AccessControl.AceEnumerator : System.Object
---@field public Current System.Security.AccessControl.GenericAce @  getter
System.Security.AccessControl.AceEnumerator = {}
---@type System.Security.AccessControl.AceEnumerator
CS.System.Security.AccessControl.AceEnumerator = System.Security.AccessControl.AceEnumerator

---@return System.Boolean
function System.Security.AccessControl.AceEnumerator:MoveNext()end
---@return System.Void
function System.Security.AccessControl.AceEnumerator:Reset()end
---@class System.Security.AccessControl.AceFlags : System.Enum
System.Security.AccessControl.AceFlags = {}
---@type System.Security.AccessControl.AceFlags
CS.System.Security.AccessControl.AceFlags = System.Security.AccessControl.AceFlags

---@return System.Int32 value:0
System.Security.AccessControl.AceFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.AceFlags.ObjectInherit = 1
---@return System.Int32 value:2
System.Security.AccessControl.AceFlags.ContainerInherit = 2
---@return System.Int32 value:4
System.Security.AccessControl.AceFlags.NoPropagateInherit = 4
---@return System.Int32 value:8
System.Security.AccessControl.AceFlags.InheritOnly = 8

---@class System.Security.AccessControl.AceQualifier : System.Enum
System.Security.AccessControl.AceQualifier = {}
---@type System.Security.AccessControl.AceQualifier
CS.System.Security.AccessControl.AceQualifier = System.Security.AccessControl.AceQualifier

---@return System.Int32 value:0
System.Security.AccessControl.AceQualifier.AccessAllowed = 0
---@return System.Int32 value:1
System.Security.AccessControl.AceQualifier.AccessDenied = 1
---@return System.Int32 value:2
System.Security.AccessControl.AceQualifier.SystemAudit = 2
---@return System.Int32 value:3
System.Security.AccessControl.AceQualifier.SystemAlarm = 3

---@class System.Security.AccessControl.AceType : System.Enum
System.Security.AccessControl.AceType = {}
---@type System.Security.AccessControl.AceType
CS.System.Security.AccessControl.AceType = System.Security.AccessControl.AceType

---@return System.Int32 value:0
System.Security.AccessControl.AceType.AccessAllowed = 0
---@return System.Int32 value:1
System.Security.AccessControl.AceType.AccessDenied = 1
---@return System.Int32 value:2
System.Security.AccessControl.AceType.SystemAudit = 2
---@return System.Int32 value:3
System.Security.AccessControl.AceType.SystemAlarm = 3
---@return System.Int32 value:4
System.Security.AccessControl.AceType.AccessAllowedCompound = 4
---@return System.Int32 value:5
System.Security.AccessControl.AceType.AccessAllowedObject = 5
---@return System.Int32 value:6
System.Security.AccessControl.AceType.AccessDeniedObject = 6
---@return System.Int32 value:7
System.Security.AccessControl.AceType.SystemAuditObject = 7
---@return System.Int32 value:8
System.Security.AccessControl.AceType.SystemAlarmObject = 8
---@return System.Int32 value:9
System.Security.AccessControl.AceType.AccessAllowedCallback = 9
---@return System.Int32 value:10
System.Security.AccessControl.AceType.AccessDeniedCallback = 10
---@return System.Int32 value:11
System.Security.AccessControl.AceType.AccessAllowedCallbackObject = 11
---@return System.Int32 value:12
System.Security.AccessControl.AceType.AccessDeniedCallbackObject = 12
---@return System.Int32 value:13
System.Security.AccessControl.AceType.SystemAuditCallback = 13
---@return System.Int32 value:14
System.Security.AccessControl.AceType.SystemAlarmCallback = 14
---@return System.Int32 value:15
System.Security.AccessControl.AceType.SystemAuditCallbackObject = 15
---@return System.Int32 value:16
System.Security.AccessControl.AceType.SystemAlarmCallbackObject = 16

---@class System.Security.AccessControl.AuditFlags : System.Enum
System.Security.AccessControl.AuditFlags = {}
---@type System.Security.AccessControl.AuditFlags
CS.System.Security.AccessControl.AuditFlags = System.Security.AccessControl.AuditFlags

---@return System.Int32 value:0
System.Security.AccessControl.AuditFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.AuditFlags.Success = 1
---@return System.Int32 value:2
System.Security.AccessControl.AuditFlags.Failure = 2

---@class System.Security.AccessControl.AuditRule : System.Security.AccessControl.AuthorizationRule
---@field public AuditFlags System.Security.AccessControl.AuditFlags @  getter
System.Security.AccessControl.AuditRule = {}
---@type System.Security.AccessControl.AuditRule
CS.System.Security.AccessControl.AuditRule = System.Security.AccessControl.AuditRule

---@class System.Security.AccessControl.AuditRule : System.Security.AccessControl.AuditRule
---@field public Rights any @  getter
System.Security.AccessControl.AuditRule = {}
---@type System.Security.AccessControl.AuditRule
CS.System.Security.AccessControl.AuditRule = System.Security.AccessControl.AuditRule

---@class System.Security.AccessControl.AuthorizationRule : System.Object
---@field public IdentityReference System.Security.Principal.IdentityReference @  getter
---@field public InheritanceFlags System.Security.AccessControl.InheritanceFlags @  getter
---@field public IsInherited System.Boolean @  getter
---@field public PropagationFlags System.Security.AccessControl.PropagationFlags @  getter
System.Security.AccessControl.AuthorizationRule = {}
---@type System.Security.AccessControl.AuthorizationRule
CS.System.Security.AccessControl.AuthorizationRule = System.Security.AccessControl.AuthorizationRule

---@class System.Security.AccessControl.AuthorizationRuleCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.Security.AccessControl.AuthorizationRule @  getter
System.Security.AccessControl.AuthorizationRuleCollection = {}
---@type System.Security.AccessControl.AuthorizationRuleCollection
CS.System.Security.AccessControl.AuthorizationRuleCollection = System.Security.AccessControl.AuthorizationRuleCollection

---@param rule System.Security.AccessControl.AuthorizationRule
---@return System.Void
function System.Security.AccessControl.AuthorizationRuleCollection:AddRule(rule)end
---@param rules System.Security.AccessControl.AuthorizationRule[]
---@param index System.Int32
---@return System.Void
function System.Security.AccessControl.AuthorizationRuleCollection:CopyTo(rules, index)end
---@class System.Security.AccessControl.CommonAce : System.Security.AccessControl.QualifiedAce
---@field public BinaryLength System.Int32 @  getter
System.Security.AccessControl.CommonAce = {}
---@type System.Security.AccessControl.CommonAce
CS.System.Security.AccessControl.CommonAce = System.Security.AccessControl.CommonAce

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.CommonAce:GetBinaryForm(binaryForm, offset)end
---@param isCallback System.Boolean
---@return System.Int32
function System.Security.AccessControl.CommonAce.MaxOpaqueLength(isCallback)end
---@class System.Security.AccessControl.CommonAcl : System.Security.AccessControl.GenericAcl
---@field public BinaryLength System.Int32 @  getter
---@field public Count System.Int32 @  getter
---@field public IsCanonical System.Boolean @  getter
---@field public IsContainer System.Boolean @  getter
---@field public IsDS System.Boolean @  getter
---@field public Revision System.Byte @  getter
---@field public Item System.Security.AccessControl.GenericAce @ setter getter
System.Security.AccessControl.CommonAcl = {}
---@type System.Security.AccessControl.CommonAcl
CS.System.Security.AccessControl.CommonAcl = System.Security.AccessControl.CommonAcl

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.CommonAcl:GetBinaryForm(binaryForm, offset)end
---@param sid System.Security.Principal.SecurityIdentifier
---@return System.Void
function System.Security.AccessControl.CommonAcl:Purge(sid)end
---@return System.Void
function System.Security.AccessControl.CommonAcl:RemoveInheritedAces()end
---@class System.Security.AccessControl.CommonObjectSecurity : System.Security.AccessControl.ObjectSecurity
System.Security.AccessControl.CommonObjectSecurity = {}
---@type System.Security.AccessControl.CommonObjectSecurity
CS.System.Security.AccessControl.CommonObjectSecurity = System.Security.AccessControl.CommonObjectSecurity

---@param includeExplicit System.Boolean
---@param includeInherited System.Boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function System.Security.AccessControl.CommonObjectSecurity:GetAccessRules(includeExplicit, includeInherited, targetType)end
---@param includeExplicit System.Boolean
---@param includeInherited System.Boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function System.Security.AccessControl.CommonObjectSecurity:GetAuditRules(includeExplicit, includeInherited, targetType)end
---@class System.Security.AccessControl.CommonSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor
---@field public ControlFlags System.Security.AccessControl.ControlFlags @  getter
---@field public DiscretionaryAcl System.Security.AccessControl.DiscretionaryAcl @ setter getter
---@field public Group System.Security.Principal.SecurityIdentifier @ setter getter
---@field public IsContainer System.Boolean @  getter
---@field public IsDiscretionaryAclCanonical System.Boolean @  getter
---@field public IsDS System.Boolean @  getter
---@field public IsSystemAclCanonical System.Boolean @  getter
---@field public Owner System.Security.Principal.SecurityIdentifier @ setter getter
---@field public SystemAcl System.Security.AccessControl.SystemAcl @ setter getter
System.Security.AccessControl.CommonSecurityDescriptor = {}
---@type System.Security.AccessControl.CommonSecurityDescriptor
CS.System.Security.AccessControl.CommonSecurityDescriptor = System.Security.AccessControl.CommonSecurityDescriptor

---@param sid System.Security.Principal.SecurityIdentifier
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:PurgeAccessControl(sid)end
---@param sid System.Security.Principal.SecurityIdentifier
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:PurgeAudit(sid)end
---@param isProtected System.Boolean
---@param preserveInheritance System.Boolean
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:SetDiscretionaryAclProtection(isProtected, preserveInheritance)end
---@param isProtected System.Boolean
---@param preserveInheritance System.Boolean
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:SetSystemAclProtection(isProtected, preserveInheritance)end
---@param revision System.Byte
---@param trusted System.Int32
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:AddDiscretionaryAcl(revision, trusted)end
---@param revision System.Byte
---@param trusted System.Int32
---@return System.Void
function System.Security.AccessControl.CommonSecurityDescriptor:AddSystemAcl(revision, trusted)end
---@class System.Security.AccessControl.CompoundAce : System.Security.AccessControl.KnownAce
---@field public BinaryLength System.Int32 @  getter
---@field public CompoundAceType System.Security.AccessControl.CompoundAceType @ setter getter
System.Security.AccessControl.CompoundAce = {}
---@type System.Security.AccessControl.CompoundAce
CS.System.Security.AccessControl.CompoundAce = System.Security.AccessControl.CompoundAce

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.CompoundAce:GetBinaryForm(binaryForm, offset)end
---@class System.Security.AccessControl.CompoundAceType : System.Enum
System.Security.AccessControl.CompoundAceType = {}
---@type System.Security.AccessControl.CompoundAceType
CS.System.Security.AccessControl.CompoundAceType = System.Security.AccessControl.CompoundAceType


---@class System.Security.AccessControl.ControlFlags : System.Enum
System.Security.AccessControl.ControlFlags = {}
---@type System.Security.AccessControl.ControlFlags
CS.System.Security.AccessControl.ControlFlags = System.Security.AccessControl.ControlFlags

---@return System.Int32 value:0
System.Security.AccessControl.ControlFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.ControlFlags.OwnerDefaulted = 1
---@return System.Int32 value:2
System.Security.AccessControl.ControlFlags.GroupDefaulted = 2
---@return System.Int32 value:4
System.Security.AccessControl.ControlFlags.DiscretionaryAclPresent = 4
---@return System.Int32 value:8
System.Security.AccessControl.ControlFlags.DiscretionaryAclDefaulted = 8
---@return System.Int32 value:16
System.Security.AccessControl.ControlFlags.SystemAclPresent = 16

---@class System.Security.AccessControl.CryptoKeyAccessRule : System.Security.AccessControl.AccessRule
---@field public CryptoKeyRights System.Security.AccessControl.CryptoKeyRights @  getter
System.Security.AccessControl.CryptoKeyAccessRule = {}
---@type System.Security.AccessControl.CryptoKeyAccessRule
CS.System.Security.AccessControl.CryptoKeyAccessRule = System.Security.AccessControl.CryptoKeyAccessRule

---@class System.Security.AccessControl.CryptoKeyAuditRule : System.Security.AccessControl.AuditRule
---@field public CryptoKeyRights System.Security.AccessControl.CryptoKeyRights @  getter
System.Security.AccessControl.CryptoKeyAuditRule = {}
---@type System.Security.AccessControl.CryptoKeyAuditRule
CS.System.Security.AccessControl.CryptoKeyAuditRule = System.Security.AccessControl.CryptoKeyAuditRule

---@class System.Security.AccessControl.CryptoKeyRights : System.Enum
System.Security.AccessControl.CryptoKeyRights = {}
---@type System.Security.AccessControl.CryptoKeyRights
CS.System.Security.AccessControl.CryptoKeyRights = System.Security.AccessControl.CryptoKeyRights

---@return System.Int32 value:1
System.Security.AccessControl.CryptoKeyRights.ReadData = 1
---@return System.Int32 value:2
System.Security.AccessControl.CryptoKeyRights.WriteData = 2
---@return System.Int32 value:8
System.Security.AccessControl.CryptoKeyRights.ReadExtendedAttributes = 8

---@class System.Security.AccessControl.CryptoKeySecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.CryptoKeySecurity = {}
---@type System.Security.AccessControl.CryptoKeySecurity
CS.System.Security.AccessControl.CryptoKeySecurity = System.Security.AccessControl.CryptoKeySecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.CryptoKeySecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Boolean
function System.Security.AccessControl.CryptoKeySecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAccessRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.CryptoKeySecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.CryptoKeyAuditRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAuditRule
---@return System.Boolean
function System.Security.AccessControl.CryptoKeySecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAuditRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAuditRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.CryptoKeyAuditRule
---@return System.Void
function System.Security.AccessControl.CryptoKeySecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.CustomAce : System.Security.AccessControl.GenericAce
---@field public BinaryLength System.Int32 @  getter
---@field public OpaqueLength System.Int32 @  getter
---@field public MaxOpaqueLength System.Int32
System.Security.AccessControl.CustomAce = {}
---@type System.Security.AccessControl.CustomAce
CS.System.Security.AccessControl.CustomAce = System.Security.AccessControl.CustomAce

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.CustomAce:GetBinaryForm(binaryForm, offset)end
---@return System.Byte[]
function System.Security.AccessControl.CustomAce:GetOpaque()end
---@param opaque System.Byte[]
---@return System.Void
function System.Security.AccessControl.CustomAce:SetOpaque(opaque)end
---@class System.Security.AccessControl.DirectoryObjectSecurity : System.Security.AccessControl.ObjectSecurity
System.Security.AccessControl.DirectoryObjectSecurity = {}
---@type System.Security.AccessControl.DirectoryObjectSecurity
CS.System.Security.AccessControl.DirectoryObjectSecurity = System.Security.AccessControl.DirectoryObjectSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@param objectType System.Guid
---@param inheritedObjectType System.Guid
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.DirectoryObjectSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type, objectType, inheritedObjectType)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@param objectType System.Guid
---@param inheritedObjectType System.Guid
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.DirectoryObjectSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags, objectType, inheritedObjectType)end
---@param includeExplicit System.Boolean
---@param includeInherited System.Boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function System.Security.AccessControl.DirectoryObjectSecurity:GetAccessRules(includeExplicit, includeInherited, targetType)end
---@param includeExplicit System.Boolean
---@param includeInherited System.Boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function System.Security.AccessControl.DirectoryObjectSecurity:GetAuditRules(includeExplicit, includeInherited, targetType)end
---@class System.Security.AccessControl.DirectorySecurity : System.Security.AccessControl.FileSystemSecurity
System.Security.AccessControl.DirectorySecurity = {}
---@type System.Security.AccessControl.DirectorySecurity
CS.System.Security.AccessControl.DirectorySecurity = System.Security.AccessControl.DirectorySecurity

---@class System.Security.AccessControl.DiscretionaryAcl : System.Security.AccessControl.CommonAcl
System.Security.AccessControl.DiscretionaryAcl = {}
---@type System.Security.AccessControl.DiscretionaryAcl
CS.System.Security.AccessControl.DiscretionaryAcl = System.Security.AccessControl.DiscretionaryAcl

---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAccessRule
---@return System.Void
function System.Security.AccessControl.DiscretionaryAcl:AddAccess(accessType, sid, rule)end
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Boolean
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Boolean
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAccessRule
---@return System.Boolean
function System.Security.AccessControl.DiscretionaryAcl:RemoveAccess(accessType, sid, rule)end
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAccessRule
---@return System.Void
function System.Security.AccessControl.DiscretionaryAcl:RemoveAccessSpecific(accessType, sid, rule)end
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAccessRule
---@return System.Void
function System.Security.AccessControl.DiscretionaryAcl:SetAccess(accessType, sid, rule)end
---@class System.Security.AccessControl.EventWaitHandleAccessRule : System.Security.AccessControl.AccessRule
---@field public EventWaitHandleRights System.Security.AccessControl.EventWaitHandleRights @  getter
System.Security.AccessControl.EventWaitHandleAccessRule = {}
---@type System.Security.AccessControl.EventWaitHandleAccessRule
CS.System.Security.AccessControl.EventWaitHandleAccessRule = System.Security.AccessControl.EventWaitHandleAccessRule

---@class System.Security.AccessControl.EventWaitHandleAuditRule : System.Security.AccessControl.AuditRule
---@field public EventWaitHandleRights System.Security.AccessControl.EventWaitHandleRights @  getter
System.Security.AccessControl.EventWaitHandleAuditRule = {}
---@type System.Security.AccessControl.EventWaitHandleAuditRule
CS.System.Security.AccessControl.EventWaitHandleAuditRule = System.Security.AccessControl.EventWaitHandleAuditRule

---@class System.Security.AccessControl.EventWaitHandleRights : System.Enum
System.Security.AccessControl.EventWaitHandleRights = {}
---@type System.Security.AccessControl.EventWaitHandleRights
CS.System.Security.AccessControl.EventWaitHandleRights = System.Security.AccessControl.EventWaitHandleRights

---@return System.Int32 value:2
System.Security.AccessControl.EventWaitHandleRights.Modify = 2

---@class System.Security.AccessControl.EventWaitHandleSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.EventWaitHandleSecurity = {}
---@type System.Security.AccessControl.EventWaitHandleSecurity
CS.System.Security.AccessControl.EventWaitHandleSecurity = System.Security.AccessControl.EventWaitHandleSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.EventWaitHandleSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Boolean
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAccessRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.EventWaitHandleSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.EventWaitHandleAuditRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAuditRule
---@return System.Boolean
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAuditRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAuditRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.EventWaitHandleAuditRule
---@return System.Void
function System.Security.AccessControl.EventWaitHandleSecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.FileSecurity : System.Security.AccessControl.FileSystemSecurity
System.Security.AccessControl.FileSecurity = {}
---@type System.Security.AccessControl.FileSecurity
CS.System.Security.AccessControl.FileSecurity = System.Security.AccessControl.FileSecurity

---@class System.Security.AccessControl.FileSystemAccessRule : System.Security.AccessControl.AccessRule
---@field public FileSystemRights System.Security.AccessControl.FileSystemRights @  getter
System.Security.AccessControl.FileSystemAccessRule = {}
---@type System.Security.AccessControl.FileSystemAccessRule
CS.System.Security.AccessControl.FileSystemAccessRule = System.Security.AccessControl.FileSystemAccessRule

---@class System.Security.AccessControl.FileSystemAuditRule : System.Security.AccessControl.AuditRule
---@field public FileSystemRights System.Security.AccessControl.FileSystemRights @  getter
System.Security.AccessControl.FileSystemAuditRule = {}
---@type System.Security.AccessControl.FileSystemAuditRule
CS.System.Security.AccessControl.FileSystemAuditRule = System.Security.AccessControl.FileSystemAuditRule

---@class System.Security.AccessControl.FileSystemRights : System.Enum
System.Security.AccessControl.FileSystemRights = {}
---@type System.Security.AccessControl.FileSystemRights
CS.System.Security.AccessControl.FileSystemRights = System.Security.AccessControl.FileSystemRights

---@return System.Int32 value:1
System.Security.AccessControl.FileSystemRights.ListDirectory = 1
---@return System.Int32 value:2
System.Security.AccessControl.FileSystemRights.CreateFiles = 2
---@return System.Int32 value:4
System.Security.AccessControl.FileSystemRights.CreateDirectories = 4
---@return System.Int32 value:8
System.Security.AccessControl.FileSystemRights.ReadExtendedAttributes = 8
---@return System.Int32 value:16
System.Security.AccessControl.FileSystemRights.WriteExtendedAttributes = 16

---@class System.Security.AccessControl.FileSystemSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.FileSystemSecurity = {}
---@type System.Security.AccessControl.FileSystemSecurity
CS.System.Security.AccessControl.FileSystemSecurity = System.Security.AccessControl.FileSystemSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.FileSystemSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Boolean
function System.Security.AccessControl.FileSystemSecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.FileSystemAccessRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.FileSystemSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.FileSystemAuditRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.FileSystemAuditRule
---@return System.Boolean
function System.Security.AccessControl.FileSystemSecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.FileSystemAuditRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.FileSystemAuditRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.FileSystemAuditRule
---@return System.Void
function System.Security.AccessControl.FileSystemSecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.GenericAce : System.Object
---@field public AceFlags System.Security.AccessControl.AceFlags @ setter getter
---@field public AceType System.Security.AccessControl.AceType @  getter
---@field public AuditFlags System.Security.AccessControl.AuditFlags @  getter
---@field public BinaryLength System.Int32 @  getter
---@field public InheritanceFlags System.Security.AccessControl.InheritanceFlags @  getter
---@field public IsInherited System.Boolean @  getter
---@field public PropagationFlags System.Security.AccessControl.PropagationFlags @  getter
System.Security.AccessControl.GenericAce = {}
---@type System.Security.AccessControl.GenericAce
CS.System.Security.AccessControl.GenericAce = System.Security.AccessControl.GenericAce

---@return System.Security.AccessControl.GenericAce
function System.Security.AccessControl.GenericAce:Copy()end
---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Security.AccessControl.GenericAce
function System.Security.AccessControl.GenericAce.CreateFromBinaryForm(binaryForm, offset)end
---@param o System.Object
---@return System.Boolean
function System.Security.AccessControl.GenericAce:Equals(o)end
---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.GenericAce:GetBinaryForm(binaryForm, offset)end
---@return System.Int32
function System.Security.AccessControl.GenericAce:GetHashCode()end
---@param left System.Security.AccessControl.GenericAce
---@param right System.Security.AccessControl.GenericAce
---@return System.Boolean
function System.Security.AccessControl.GenericAce.op_Equality(left, right)end
---@param left System.Security.AccessControl.GenericAce
---@param right System.Security.AccessControl.GenericAce
---@return System.Boolean
function System.Security.AccessControl.GenericAce.op_Inequality(left, right)end
---@class System.Security.AccessControl.GenericAcl : System.Object
---@field public BinaryLength System.Int32 @  getter
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Security.AccessControl.GenericAce @ setter getter
---@field public Revision System.Byte @  getter
---@field public SyncRoot System.Object @  getter
---@field public AclRevision System.Byte
---@field public AclRevisionDS System.Byte
---@field public MaxBinaryLength System.Int32
System.Security.AccessControl.GenericAcl = {}
---@type System.Security.AccessControl.GenericAcl
CS.System.Security.AccessControl.GenericAcl = System.Security.AccessControl.GenericAcl

---@param array System.Security.AccessControl.GenericAce[]
---@param index System.Int32
---@return System.Void
function System.Security.AccessControl.GenericAcl:CopyTo(array, index)end
---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.GenericAcl:GetBinaryForm(binaryForm, offset)end
---@return System.Security.AccessControl.AceEnumerator
function System.Security.AccessControl.GenericAcl:GetEnumerator()end
---@class System.Security.AccessControl.GenericSecurityDescriptor : System.Object
---@field public BinaryLength System.Int32 @  getter
---@field public ControlFlags System.Security.AccessControl.ControlFlags @  getter
---@field public Group System.Security.Principal.SecurityIdentifier @ setter getter
---@field public Owner System.Security.Principal.SecurityIdentifier @ setter getter
---@field public Revision System.Byte @static  getter
System.Security.AccessControl.GenericSecurityDescriptor = {}
---@type System.Security.AccessControl.GenericSecurityDescriptor
CS.System.Security.AccessControl.GenericSecurityDescriptor = System.Security.AccessControl.GenericSecurityDescriptor

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.GenericSecurityDescriptor:GetBinaryForm(binaryForm, offset)end
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.String
function System.Security.AccessControl.GenericSecurityDescriptor:GetSddlForm(includeSections)end
---@return System.Boolean
function System.Security.AccessControl.GenericSecurityDescriptor.IsSddlConversionSupported()end
---@class System.Security.AccessControl.InheritanceFlags : System.Enum
System.Security.AccessControl.InheritanceFlags = {}
---@type System.Security.AccessControl.InheritanceFlags
CS.System.Security.AccessControl.InheritanceFlags = System.Security.AccessControl.InheritanceFlags

---@return System.Int32 value:0
System.Security.AccessControl.InheritanceFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.InheritanceFlags.ContainerInherit = 1
---@return System.Int32 value:2
System.Security.AccessControl.InheritanceFlags.ObjectInherit = 2

---@class System.Security.AccessControl.KnownAce : System.Security.AccessControl.GenericAce
---@field public AccessMask System.Int32 @ setter getter
---@field public SecurityIdentifier System.Security.Principal.SecurityIdentifier @ setter getter
System.Security.AccessControl.KnownAce = {}
---@type System.Security.AccessControl.KnownAce
CS.System.Security.AccessControl.KnownAce = System.Security.AccessControl.KnownAce

---@class System.Security.AccessControl.MutexAccessRule : System.Security.AccessControl.AccessRule
---@field public MutexRights System.Security.AccessControl.MutexRights @  getter
System.Security.AccessControl.MutexAccessRule = {}
---@type System.Security.AccessControl.MutexAccessRule
CS.System.Security.AccessControl.MutexAccessRule = System.Security.AccessControl.MutexAccessRule

---@class System.Security.AccessControl.MutexAuditRule : System.Security.AccessControl.AuditRule
---@field public MutexRights System.Security.AccessControl.MutexRights @  getter
System.Security.AccessControl.MutexAuditRule = {}
---@type System.Security.AccessControl.MutexAuditRule
CS.System.Security.AccessControl.MutexAuditRule = System.Security.AccessControl.MutexAuditRule

---@class System.Security.AccessControl.MutexRights : System.Enum
System.Security.AccessControl.MutexRights = {}
---@type System.Security.AccessControl.MutexRights
CS.System.Security.AccessControl.MutexRights = System.Security.AccessControl.MutexRights

---@return System.Int32 value:1
System.Security.AccessControl.MutexRights.Modify = 1

---@class System.Security.AccessControl.MutexSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.MutexSecurity = {}
---@type System.Security.AccessControl.MutexSecurity
CS.System.Security.AccessControl.MutexSecurity = System.Security.AccessControl.MutexSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.MutexSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Boolean
function System.Security.AccessControl.MutexSecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.MutexAccessRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.MutexSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.MutexAuditRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.MutexAuditRule
---@return System.Boolean
function System.Security.AccessControl.MutexSecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.MutexAuditRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.MutexAuditRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.MutexAuditRule
---@return System.Void
function System.Security.AccessControl.MutexSecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.NativeObjectSecurity : System.Security.AccessControl.CommonObjectSecurity
System.Security.AccessControl.NativeObjectSecurity = {}
---@type System.Security.AccessControl.NativeObjectSecurity
CS.System.Security.AccessControl.NativeObjectSecurity = System.Security.AccessControl.NativeObjectSecurity

---@class System.Security.AccessControl.ObjectAccessRule : System.Security.AccessControl.AccessRule
---@field public InheritedObjectType System.Guid @  getter
---@field public ObjectFlags System.Security.AccessControl.ObjectAceFlags @  getter
---@field public ObjectType System.Guid @  getter
System.Security.AccessControl.ObjectAccessRule = {}
---@type System.Security.AccessControl.ObjectAccessRule
CS.System.Security.AccessControl.ObjectAccessRule = System.Security.AccessControl.ObjectAccessRule

---@class System.Security.AccessControl.ObjectAce : System.Security.AccessControl.QualifiedAce
---@field public BinaryLength System.Int32 @  getter
---@field public InheritedObjectAceType System.Guid @ setter getter
---@field public ObjectAceFlags System.Security.AccessControl.ObjectAceFlags @ setter getter
---@field public ObjectAceType System.Guid @ setter getter
System.Security.AccessControl.ObjectAce = {}
---@type System.Security.AccessControl.ObjectAce
CS.System.Security.AccessControl.ObjectAce = System.Security.AccessControl.ObjectAce

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.ObjectAce:GetBinaryForm(binaryForm, offset)end
---@param isCallback System.Boolean
---@return System.Int32
function System.Security.AccessControl.ObjectAce.MaxOpaqueLength(isCallback)end
---@class System.Security.AccessControl.ObjectAceFlags : System.Enum
System.Security.AccessControl.ObjectAceFlags = {}
---@type System.Security.AccessControl.ObjectAceFlags
CS.System.Security.AccessControl.ObjectAceFlags = System.Security.AccessControl.ObjectAceFlags

---@return System.Int32 value:0
System.Security.AccessControl.ObjectAceFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.ObjectAceFlags.ObjectAceTypePresent = 1
---@return System.Int32 value:2
System.Security.AccessControl.ObjectAceFlags.InheritedObjectAceTypePresent = 2

---@class System.Security.AccessControl.ObjectAuditRule : System.Security.AccessControl.AuditRule
---@field public InheritedObjectType System.Guid @  getter
---@field public ObjectFlags System.Security.AccessControl.ObjectAceFlags @  getter
---@field public ObjectType System.Guid @  getter
System.Security.AccessControl.ObjectAuditRule = {}
---@type System.Security.AccessControl.ObjectAuditRule
CS.System.Security.AccessControl.ObjectAuditRule = System.Security.AccessControl.ObjectAuditRule

---@class System.Security.AccessControl.ObjectSecurity : System.Object
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
---@field public AreAccessRulesCanonical System.Boolean @  getter
---@field public AreAccessRulesProtected System.Boolean @  getter
---@field public AreAuditRulesCanonical System.Boolean @  getter
---@field public AreAuditRulesProtected System.Boolean @  getter
System.Security.AccessControl.ObjectSecurity = {}
---@type System.Security.AccessControl.ObjectSecurity
CS.System.Security.AccessControl.ObjectSecurity = System.Security.AccessControl.ObjectSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.ObjectSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.ObjectSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function System.Security.AccessControl.ObjectSecurity:GetGroup(targetType)end
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function System.Security.AccessControl.ObjectSecurity:GetOwner(targetType)end
---@return System.Byte[]
function System.Security.AccessControl.ObjectSecurity:GetSecurityDescriptorBinaryForm()end
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.String
function System.Security.AccessControl.ObjectSecurity:GetSecurityDescriptorSddlForm(includeSections)end
---@return System.Boolean
function System.Security.AccessControl.ObjectSecurity.IsSddlConversionSupported()end
---@param modification System.Security.AccessControl.AccessControlModification
---@param rule System.Security.AccessControl.AccessRule
---@param modified System.Boolean
---@return System.Boolean
function System.Security.AccessControl.ObjectSecurity:ModifyAccessRule(modification, rule, modified)end
---@param modification System.Security.AccessControl.AccessControlModification
---@param rule System.Security.AccessControl.AuditRule
---@param modified System.Boolean
---@return System.Boolean
function System.Security.AccessControl.ObjectSecurity:ModifyAuditRule(modification, rule, modified)end
---@param identity System.Security.Principal.IdentityReference
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:PurgeAccessRules(identity)end
---@param identity System.Security.Principal.IdentityReference
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:PurgeAuditRules(identity)end
---@param isProtected System.Boolean
---@param preserveInheritance System.Boolean
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetAccessRuleProtection(isProtected, preserveInheritance)end
---@param isProtected System.Boolean
---@param preserveInheritance System.Boolean
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetAuditRuleProtection(isProtected, preserveInheritance)end
---@param identity System.Security.Principal.IdentityReference
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetGroup(identity)end
---@param identity System.Security.Principal.IdentityReference
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetOwner(identity)end
---@overload fun(binaryForm:System.Byte[], includeSections:System.Security.AccessControl.AccessControlSections):System.Void
---@param binaryForm System.Byte[]
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetSecurityDescriptorBinaryForm(binaryForm)end
---@overload fun(sddlForm:System.String, includeSections:System.Security.AccessControl.AccessControlSections):System.Void
---@param sddlForm System.String
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetSecurityDescriptorSddlForm(sddlForm)end
---@class System.Security.AccessControl.ObjectSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.ObjectSecurity = {}
---@type System.Security.AccessControl.ObjectSecurity
CS.System.Security.AccessControl.ObjectSecurity = System.Security.AccessControl.ObjectSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.ObjectSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:AddAccessRule(rule)end
---@param rule any
---@return System.Boolean
function System.Security.AccessControl.ObjectSecurity:RemoveAccessRule(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:RemoveAccessRuleAll(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:ResetAccessRule(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.ObjectSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:AddAuditRule(rule)end
---@param rule any
---@return System.Boolean
function System.Security.AccessControl.ObjectSecurity:RemoveAuditRule(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:RemoveAuditRuleAll(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule any
---@return System.Void
function System.Security.AccessControl.ObjectSecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.PrivilegeNotHeldException : System.UnauthorizedAccessException
---@field public PrivilegeName System.String @  getter
System.Security.AccessControl.PrivilegeNotHeldException = {}
---@type System.Security.AccessControl.PrivilegeNotHeldException
CS.System.Security.AccessControl.PrivilegeNotHeldException = System.Security.AccessControl.PrivilegeNotHeldException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Security.AccessControl.PrivilegeNotHeldException:GetObjectData(info, context)end
---@class System.Security.AccessControl.PropagationFlags : System.Enum
System.Security.AccessControl.PropagationFlags = {}
---@type System.Security.AccessControl.PropagationFlags
CS.System.Security.AccessControl.PropagationFlags = System.Security.AccessControl.PropagationFlags

---@return System.Int32 value:0
System.Security.AccessControl.PropagationFlags.None = 0
---@return System.Int32 value:1
System.Security.AccessControl.PropagationFlags.NoPropagateInherit = 1
---@return System.Int32 value:2
System.Security.AccessControl.PropagationFlags.InheritOnly = 2

---@class System.Security.AccessControl.QualifiedAce : System.Security.AccessControl.KnownAce
---@field public AceQualifier System.Security.AccessControl.AceQualifier @  getter
---@field public IsCallback System.Boolean @  getter
---@field public OpaqueLength System.Int32 @  getter
System.Security.AccessControl.QualifiedAce = {}
---@type System.Security.AccessControl.QualifiedAce
CS.System.Security.AccessControl.QualifiedAce = System.Security.AccessControl.QualifiedAce

---@return System.Byte[]
function System.Security.AccessControl.QualifiedAce:GetOpaque()end
---@param opaque System.Byte[]
---@return System.Void
function System.Security.AccessControl.QualifiedAce:SetOpaque(opaque)end
---@class System.Security.AccessControl.RawAcl : System.Security.AccessControl.GenericAcl
---@field public BinaryLength System.Int32 @  getter
---@field public Count System.Int32 @  getter
---@field public Item System.Security.AccessControl.GenericAce @ setter getter
---@field public Revision System.Byte @  getter
System.Security.AccessControl.RawAcl = {}
---@type System.Security.AccessControl.RawAcl
CS.System.Security.AccessControl.RawAcl = System.Security.AccessControl.RawAcl

---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.AccessControl.RawAcl:GetBinaryForm(binaryForm, offset)end
---@param index System.Int32
---@param ace System.Security.AccessControl.GenericAce
---@return System.Void
function System.Security.AccessControl.RawAcl:InsertAce(index, ace)end
---@param index System.Int32
---@return System.Void
function System.Security.AccessControl.RawAcl:RemoveAce(index)end
---@class System.Security.AccessControl.RawSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor
---@field public ControlFlags System.Security.AccessControl.ControlFlags @  getter
---@field public DiscretionaryAcl System.Security.AccessControl.RawAcl @ setter getter
---@field public Group System.Security.Principal.SecurityIdentifier @ setter getter
---@field public Owner System.Security.Principal.SecurityIdentifier @ setter getter
---@field public ResourceManagerControl System.Byte @ setter getter
---@field public SystemAcl System.Security.AccessControl.RawAcl @ setter getter
System.Security.AccessControl.RawSecurityDescriptor = {}
---@type System.Security.AccessControl.RawSecurityDescriptor
CS.System.Security.AccessControl.RawSecurityDescriptor = System.Security.AccessControl.RawSecurityDescriptor

---@param flags System.Security.AccessControl.ControlFlags
---@return System.Void
function System.Security.AccessControl.RawSecurityDescriptor:SetFlags(flags)end
---@class System.Security.AccessControl.RegistryAccessRule : System.Security.AccessControl.AccessRule
---@field public RegistryRights System.Security.AccessControl.RegistryRights @  getter
System.Security.AccessControl.RegistryAccessRule = {}
---@type System.Security.AccessControl.RegistryAccessRule
CS.System.Security.AccessControl.RegistryAccessRule = System.Security.AccessControl.RegistryAccessRule

---@class System.Security.AccessControl.RegistryAuditRule : System.Security.AccessControl.AuditRule
---@field public RegistryRights System.Security.AccessControl.RegistryRights @  getter
System.Security.AccessControl.RegistryAuditRule = {}
---@type System.Security.AccessControl.RegistryAuditRule
CS.System.Security.AccessControl.RegistryAuditRule = System.Security.AccessControl.RegistryAuditRule

---@class System.Security.AccessControl.RegistryRights : System.Enum
System.Security.AccessControl.RegistryRights = {}
---@type System.Security.AccessControl.RegistryRights
CS.System.Security.AccessControl.RegistryRights = System.Security.AccessControl.RegistryRights

---@return System.Int32 value:1
System.Security.AccessControl.RegistryRights.QueryValues = 1
---@return System.Int32 value:2
System.Security.AccessControl.RegistryRights.SetValue = 2
---@return System.Int32 value:4
System.Security.AccessControl.RegistryRights.CreateSubKey = 4
---@return System.Int32 value:8
System.Security.AccessControl.RegistryRights.EnumerateSubKeys = 8

---@class System.Security.AccessControl.RegistrySecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.RegistrySecurity = {}
---@type System.Security.AccessControl.RegistrySecurity
CS.System.Security.AccessControl.RegistrySecurity = System.Security.AccessControl.RegistrySecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.RegistrySecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Boolean
function System.Security.AccessControl.RegistrySecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.RegistryAccessRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.RegistrySecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.RegistryAuditRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.RegistryAuditRule
---@return System.Boolean
function System.Security.AccessControl.RegistrySecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.RegistryAuditRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.RegistryAuditRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.RegistryAuditRule
---@return System.Void
function System.Security.AccessControl.RegistrySecurity:SetAuditRule(rule)end
---@class System.Security.AccessControl.ResourceType : System.Enum
System.Security.AccessControl.ResourceType = {}
---@type System.Security.AccessControl.ResourceType
CS.System.Security.AccessControl.ResourceType = System.Security.AccessControl.ResourceType

---@return System.Int32 value:0
System.Security.AccessControl.ResourceType.Unknown = 0
---@return System.Int32 value:1
System.Security.AccessControl.ResourceType.FileObject = 1
---@return System.Int32 value:2
System.Security.AccessControl.ResourceType.Service = 2
---@return System.Int32 value:3
System.Security.AccessControl.ResourceType.Printer = 3
---@return System.Int32 value:4
System.Security.AccessControl.ResourceType.RegistryKey = 4
---@return System.Int32 value:5
System.Security.AccessControl.ResourceType.LMShare = 5
---@return System.Int32 value:6
System.Security.AccessControl.ResourceType.KernelObject = 6
---@return System.Int32 value:7
System.Security.AccessControl.ResourceType.WindowObject = 7
---@return System.Int32 value:8
System.Security.AccessControl.ResourceType.DSObject = 8
---@return System.Int32 value:9
System.Security.AccessControl.ResourceType.DSObjectAll = 9
---@return System.Int32 value:10
System.Security.AccessControl.ResourceType.ProviderDefined = 10
---@return System.Int32 value:11
System.Security.AccessControl.ResourceType.WmiGuidObject = 11
---@return System.Int32 value:12
System.Security.AccessControl.ResourceType.RegistryWow6432Key = 12

---@class System.Security.AccessControl.SecurityInfos : System.Enum
System.Security.AccessControl.SecurityInfos = {}
---@type System.Security.AccessControl.SecurityInfos
CS.System.Security.AccessControl.SecurityInfos = System.Security.AccessControl.SecurityInfos

---@return System.Int32 value:1
System.Security.AccessControl.SecurityInfos.Owner = 1
---@return System.Int32 value:2
System.Security.AccessControl.SecurityInfos.Group = 2

---@class System.Security.AccessControl.SystemAcl : System.Security.AccessControl.CommonAcl
System.Security.AccessControl.SystemAcl = {}
---@type System.Security.AccessControl.SystemAcl
CS.System.Security.AccessControl.SystemAcl = System.Security.AccessControl.SystemAcl

---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAuditRule
---@return System.Void
function System.Security.AccessControl.SystemAcl:AddAudit(sid, rule)end
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Boolean
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Boolean
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAuditRule
---@return System.Boolean
function System.Security.AccessControl.SystemAcl:RemoveAudit(sid, rule)end
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAuditRule
---@return System.Void
function System.Security.AccessControl.SystemAcl:RemoveAuditSpecific(sid, rule)end
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags):System.Void
---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:System.Int32, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):System.Void
---@param sid System.Security.Principal.SecurityIdentifier
---@param rule System.Security.AccessControl.ObjectAuditRule
---@return System.Void
function System.Security.AccessControl.SystemAcl:SetAudit(sid, rule)end
---@class System.Security.AccessControl.SemaphoreAccessRule : System.Security.AccessControl.AccessRule
---@field public SemaphoreRights System.Security.AccessControl.SemaphoreRights @  getter
System.Security.AccessControl.SemaphoreAccessRule = {}
---@type System.Security.AccessControl.SemaphoreAccessRule
CS.System.Security.AccessControl.SemaphoreAccessRule = System.Security.AccessControl.SemaphoreAccessRule

---@class System.Security.AccessControl.SemaphoreAuditRule : System.Security.AccessControl.AuditRule
---@field public SemaphoreRights System.Security.AccessControl.SemaphoreRights @  getter
System.Security.AccessControl.SemaphoreAuditRule = {}
---@type System.Security.AccessControl.SemaphoreAuditRule
CS.System.Security.AccessControl.SemaphoreAuditRule = System.Security.AccessControl.SemaphoreAuditRule

---@class System.Security.AccessControl.SemaphoreRights : System.Enum
System.Security.AccessControl.SemaphoreRights = {}
---@type System.Security.AccessControl.SemaphoreRights
CS.System.Security.AccessControl.SemaphoreRights = System.Security.AccessControl.SemaphoreRights

---@return System.Int32 value:2
System.Security.AccessControl.SemaphoreRights.Modify = 2

---@class System.Security.AccessControl.SemaphoreSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.Security.AccessControl.SemaphoreSecurity = {}
---@type System.Security.AccessControl.SemaphoreSecurity
CS.System.Security.AccessControl.SemaphoreSecurity = System.Security.AccessControl.SemaphoreSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.Security.AccessControl.SemaphoreSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:AddAccessRule(rule)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Boolean
function System.Security.AccessControl.SemaphoreSecurity:RemoveAccessRule(rule)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:RemoveAccessRuleAll(rule)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:ResetAccessRule(rule)end
---@param rule System.Security.AccessControl.SemaphoreAccessRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:SetAccessRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.Security.AccessControl.SemaphoreSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.Security.AccessControl.SemaphoreAuditRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:AddAuditRule(rule)end
---@param rule System.Security.AccessControl.SemaphoreAuditRule
---@return System.Boolean
function System.Security.AccessControl.SemaphoreSecurity:RemoveAuditRule(rule)end
---@param rule System.Security.AccessControl.SemaphoreAuditRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:RemoveAuditRuleAll(rule)end
---@param rule System.Security.AccessControl.SemaphoreAuditRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.Security.AccessControl.SemaphoreAuditRule
---@return System.Void
function System.Security.AccessControl.SemaphoreSecurity:SetAuditRule(rule)end
