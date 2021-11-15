---@class System.Security.Principal.GenericIdentity : System.Security.Claims.ClaimsIdentity
---@field public Claims System.Collections.Generic.IEnumerable @  getter
---@field public Name System.String @  getter
---@field public AuthenticationType System.String @  getter
---@field public IsAuthenticated System.Boolean @  getter
System.Security.Principal.GenericIdentity = {}
---@type System.Security.Principal.GenericIdentity
CS.System.Security.Principal.GenericIdentity = System.Security.Principal.GenericIdentity

---@return System.Security.Claims.ClaimsIdentity
function System.Security.Principal.GenericIdentity:Clone()end
---@class System.Security.Principal.GenericPrincipal : System.Security.Claims.ClaimsPrincipal
---@field public Identity System.Security.Principal.IIdentity @  getter
System.Security.Principal.GenericPrincipal = {}
---@type System.Security.Principal.GenericPrincipal
CS.System.Security.Principal.GenericPrincipal = System.Security.Principal.GenericPrincipal

---@param role System.String
---@return System.Boolean
function System.Security.Principal.GenericPrincipal:IsInRole(role)end
---@class System.Security.Principal.IdentityNotMappedException : System.SystemException
---@field public UnmappedIdentities System.Security.Principal.IdentityReferenceCollection @  getter
System.Security.Principal.IdentityNotMappedException = {}
---@type System.Security.Principal.IdentityNotMappedException
CS.System.Security.Principal.IdentityNotMappedException = System.Security.Principal.IdentityNotMappedException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Security.Principal.IdentityNotMappedException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Security.Principal.IdentityReference : System.Object
---@field public Value System.String @  getter
System.Security.Principal.IdentityReference = {}
---@type System.Security.Principal.IdentityReference
CS.System.Security.Principal.IdentityReference = System.Security.Principal.IdentityReference

---@param o System.Object
---@return System.Boolean
function System.Security.Principal.IdentityReference:Equals(o)end
---@return System.Int32
function System.Security.Principal.IdentityReference:GetHashCode()end
---@param targetType System.Type
---@return System.Boolean
function System.Security.Principal.IdentityReference:IsValidTargetType(targetType)end
---@return System.String
function System.Security.Principal.IdentityReference:ToString()end
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function System.Security.Principal.IdentityReference:Translate(targetType)end
---@param left System.Security.Principal.IdentityReference
---@param right System.Security.Principal.IdentityReference
---@return System.Boolean
function System.Security.Principal.IdentityReference.op_Equality(left, right)end
---@param left System.Security.Principal.IdentityReference
---@param right System.Security.Principal.IdentityReference
---@return System.Boolean
function System.Security.Principal.IdentityReference.op_Inequality(left, right)end
---@class System.Security.Principal.IdentityReferenceCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Security.Principal.IdentityReference @ setter getter
System.Security.Principal.IdentityReferenceCollection = {}
---@type System.Security.Principal.IdentityReferenceCollection
CS.System.Security.Principal.IdentityReferenceCollection = System.Security.Principal.IdentityReferenceCollection

---@param identity System.Security.Principal.IdentityReference
---@return System.Void
function System.Security.Principal.IdentityReferenceCollection:Add(identity)end
---@return System.Void
function System.Security.Principal.IdentityReferenceCollection:Clear()end
---@param identity System.Security.Principal.IdentityReference
---@return System.Boolean
function System.Security.Principal.IdentityReferenceCollection:Contains(identity)end
---@param array System.Security.Principal.IdentityReference[]
---@param offset System.Int32
---@return System.Void
function System.Security.Principal.IdentityReferenceCollection:CopyTo(array, offset)end
---@return System.Collections.Generic.IEnumerator
function System.Security.Principal.IdentityReferenceCollection:GetEnumerator()end
---@param identity System.Security.Principal.IdentityReference
---@return System.Boolean
function System.Security.Principal.IdentityReferenceCollection:Remove(identity)end
---@overload fun(targetType:System.Type, forceSuccess:System.Boolean):System.Security.Principal.IdentityReferenceCollection
---@param targetType System.Type
---@return System.Security.Principal.IdentityReferenceCollection
function System.Security.Principal.IdentityReferenceCollection:Translate(targetType)end
---@class System.Security.Principal.NTAccount : System.Security.Principal.IdentityReference
---@field public Value System.String @  getter
System.Security.Principal.NTAccount = {}
---@type System.Security.Principal.NTAccount
CS.System.Security.Principal.NTAccount = System.Security.Principal.NTAccount

---@param o System.Object
---@return System.Boolean
function System.Security.Principal.NTAccount:Equals(o)end
---@return System.Int32
function System.Security.Principal.NTAccount:GetHashCode()end
---@param targetType System.Type
---@return System.Boolean
function System.Security.Principal.NTAccount:IsValidTargetType(targetType)end
---@return System.String
function System.Security.Principal.NTAccount:ToString()end
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function System.Security.Principal.NTAccount:Translate(targetType)end
---@param left System.Security.Principal.NTAccount
---@param right System.Security.Principal.NTAccount
---@return System.Boolean
function System.Security.Principal.NTAccount.op_Equality(left, right)end
---@param left System.Security.Principal.NTAccount
---@param right System.Security.Principal.NTAccount
---@return System.Boolean
function System.Security.Principal.NTAccount.op_Inequality(left, right)end
---@class System.Security.Principal.PrincipalPolicy : System.Enum
System.Security.Principal.PrincipalPolicy = {}
---@type System.Security.Principal.PrincipalPolicy
CS.System.Security.Principal.PrincipalPolicy = System.Security.Principal.PrincipalPolicy

---@return System.Int32 value:0
System.Security.Principal.PrincipalPolicy.UnauthenticatedPrincipal = 0
---@return System.Int32 value:1
System.Security.Principal.PrincipalPolicy.NoPrincipal = 1
---@return System.Int32 value:2
System.Security.Principal.PrincipalPolicy.WindowsPrincipal = 2

---@class System.Security.Principal.SecurityIdentifier : System.Security.Principal.IdentityReference
---@field public AccountDomainSid System.Security.Principal.SecurityIdentifier @  getter
---@field public BinaryLength System.Int32 @  getter
---@field public Value System.String @  getter
---@field public MaxBinaryLength System.Int32
---@field public MinBinaryLength System.Int32
System.Security.Principal.SecurityIdentifier = {}
---@type System.Security.Principal.SecurityIdentifier
CS.System.Security.Principal.SecurityIdentifier = System.Security.Principal.SecurityIdentifier

---@param sid System.Security.Principal.SecurityIdentifier
---@return System.Int32
function System.Security.Principal.SecurityIdentifier:CompareTo(sid)end
---@overload fun(sid:System.Security.Principal.SecurityIdentifier):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier:Equals(o)end
---@param binaryForm System.Byte[]
---@param offset System.Int32
---@return System.Void
function System.Security.Principal.SecurityIdentifier:GetBinaryForm(binaryForm, offset)end
---@return System.Int32
function System.Security.Principal.SecurityIdentifier:GetHashCode()end
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier:IsAccountSid()end
---@param sid System.Security.Principal.SecurityIdentifier
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier:IsEqualDomainSid(sid)end
---@param targetType System.Type
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier:IsValidTargetType(targetType)end
---@param type System.Security.Principal.WellKnownSidType
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier:IsWellKnown(type)end
---@return System.String
function System.Security.Principal.SecurityIdentifier:ToString()end
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function System.Security.Principal.SecurityIdentifier:Translate(targetType)end
---@param left System.Security.Principal.SecurityIdentifier
---@param right System.Security.Principal.SecurityIdentifier
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier.op_Equality(left, right)end
---@param left System.Security.Principal.SecurityIdentifier
---@param right System.Security.Principal.SecurityIdentifier
---@return System.Boolean
function System.Security.Principal.SecurityIdentifier.op_Inequality(left, right)end
---@class System.Security.Principal.TokenAccessLevels : System.Enum
System.Security.Principal.TokenAccessLevels = {}
---@type System.Security.Principal.TokenAccessLevels
CS.System.Security.Principal.TokenAccessLevels = System.Security.Principal.TokenAccessLevels

---@return System.Int32 value:1
System.Security.Principal.TokenAccessLevels.AssignPrimary = 1
---@return System.Int32 value:2
System.Security.Principal.TokenAccessLevels.Duplicate = 2
---@return System.Int32 value:4
System.Security.Principal.TokenAccessLevels.Impersonate = 4
---@return System.Int32 value:8
System.Security.Principal.TokenAccessLevels.Query = 8

---@class System.Security.Principal.TokenImpersonationLevel : System.Enum
System.Security.Principal.TokenImpersonationLevel = {}
---@type System.Security.Principal.TokenImpersonationLevel
CS.System.Security.Principal.TokenImpersonationLevel = System.Security.Principal.TokenImpersonationLevel

---@return System.Int32 value:0
System.Security.Principal.TokenImpersonationLevel.None = 0
---@return System.Int32 value:1
System.Security.Principal.TokenImpersonationLevel.Anonymous = 1
---@return System.Int32 value:2
System.Security.Principal.TokenImpersonationLevel.Identification = 2
---@return System.Int32 value:3
System.Security.Principal.TokenImpersonationLevel.Impersonation = 3
---@return System.Int32 value:4
System.Security.Principal.TokenImpersonationLevel.Delegation = 4

---@class System.Security.Principal.WellKnownSidType : System.Enum
System.Security.Principal.WellKnownSidType = {}
---@type System.Security.Principal.WellKnownSidType
CS.System.Security.Principal.WellKnownSidType = System.Security.Principal.WellKnownSidType

---@return System.Int32 value:0
System.Security.Principal.WellKnownSidType.NullSid = 0
---@return System.Int32 value:1
System.Security.Principal.WellKnownSidType.WorldSid = 1
---@return System.Int32 value:2
System.Security.Principal.WellKnownSidType.LocalSid = 2
---@return System.Int32 value:3
System.Security.Principal.WellKnownSidType.CreatorOwnerSid = 3
---@return System.Int32 value:4
System.Security.Principal.WellKnownSidType.CreatorGroupSid = 4
---@return System.Int32 value:5
System.Security.Principal.WellKnownSidType.CreatorOwnerServerSid = 5
---@return System.Int32 value:6
System.Security.Principal.WellKnownSidType.CreatorGroupServerSid = 6
---@return System.Int32 value:7
System.Security.Principal.WellKnownSidType.NTAuthoritySid = 7
---@return System.Int32 value:8
System.Security.Principal.WellKnownSidType.DialupSid = 8
---@return System.Int32 value:9
System.Security.Principal.WellKnownSidType.NetworkSid = 9
---@return System.Int32 value:10
System.Security.Principal.WellKnownSidType.BatchSid = 10
---@return System.Int32 value:11
System.Security.Principal.WellKnownSidType.InteractiveSid = 11
---@return System.Int32 value:12
System.Security.Principal.WellKnownSidType.ServiceSid = 12
---@return System.Int32 value:13
System.Security.Principal.WellKnownSidType.AnonymousSid = 13
---@return System.Int32 value:14
System.Security.Principal.WellKnownSidType.ProxySid = 14
---@return System.Int32 value:15
System.Security.Principal.WellKnownSidType.EnterpriseControllersSid = 15
---@return System.Int32 value:16
System.Security.Principal.WellKnownSidType.SelfSid = 16
---@return System.Int32 value:17
System.Security.Principal.WellKnownSidType.AuthenticatedUserSid = 17
---@return System.Int32 value:18
System.Security.Principal.WellKnownSidType.RestrictedCodeSid = 18
---@return System.Int32 value:19
System.Security.Principal.WellKnownSidType.TerminalServerSid = 19
---@return System.Int32 value:20
System.Security.Principal.WellKnownSidType.RemoteLogonIdSid = 20
---@return System.Int32 value:21
System.Security.Principal.WellKnownSidType.LogonIdsSid = 21
---@return System.Int32 value:22
System.Security.Principal.WellKnownSidType.LocalSystemSid = 22
---@return System.Int32 value:23
System.Security.Principal.WellKnownSidType.LocalServiceSid = 23
---@return System.Int32 value:24
System.Security.Principal.WellKnownSidType.NetworkServiceSid = 24
---@return System.Int32 value:25
System.Security.Principal.WellKnownSidType.BuiltinDomainSid = 25
---@return System.Int32 value:26
System.Security.Principal.WellKnownSidType.BuiltinAdministratorsSid = 26
---@return System.Int32 value:27
System.Security.Principal.WellKnownSidType.BuiltinUsersSid = 27
---@return System.Int32 value:28
System.Security.Principal.WellKnownSidType.BuiltinGuestsSid = 28
---@return System.Int32 value:29
System.Security.Principal.WellKnownSidType.BuiltinPowerUsersSid = 29
---@return System.Int32 value:30
System.Security.Principal.WellKnownSidType.BuiltinAccountOperatorsSid = 30
---@return System.Int32 value:31
System.Security.Principal.WellKnownSidType.BuiltinSystemOperatorsSid = 31
---@return System.Int32 value:32
System.Security.Principal.WellKnownSidType.BuiltinPrintOperatorsSid = 32
---@return System.Int32 value:33
System.Security.Principal.WellKnownSidType.BuiltinBackupOperatorsSid = 33
---@return System.Int32 value:34
System.Security.Principal.WellKnownSidType.BuiltinReplicatorSid = 34
---@return System.Int32 value:35
System.Security.Principal.WellKnownSidType.BuiltinPreWindows2000CompatibleAccessSid = 35
---@return System.Int32 value:36
System.Security.Principal.WellKnownSidType.BuiltinRemoteDesktopUsersSid = 36
---@return System.Int32 value:37
System.Security.Principal.WellKnownSidType.BuiltinNetworkConfigurationOperatorsSid = 37
---@return System.Int32 value:38
System.Security.Principal.WellKnownSidType.AccountAdministratorSid = 38
---@return System.Int32 value:39
System.Security.Principal.WellKnownSidType.AccountGuestSid = 39
---@return System.Int32 value:40
System.Security.Principal.WellKnownSidType.AccountKrbtgtSid = 40
---@return System.Int32 value:41
System.Security.Principal.WellKnownSidType.AccountDomainAdminsSid = 41
---@return System.Int32 value:42
System.Security.Principal.WellKnownSidType.AccountDomainUsersSid = 42
---@return System.Int32 value:43
System.Security.Principal.WellKnownSidType.AccountDomainGuestsSid = 43
---@return System.Int32 value:44
System.Security.Principal.WellKnownSidType.AccountComputersSid = 44
---@return System.Int32 value:45
System.Security.Principal.WellKnownSidType.AccountControllersSid = 45
---@return System.Int32 value:46
System.Security.Principal.WellKnownSidType.AccountCertAdminsSid = 46
---@return System.Int32 value:47
System.Security.Principal.WellKnownSidType.AccountSchemaAdminsSid = 47
---@return System.Int32 value:48
System.Security.Principal.WellKnownSidType.AccountEnterpriseAdminsSid = 48
---@return System.Int32 value:49
System.Security.Principal.WellKnownSidType.AccountPolicyAdminsSid = 49
---@return System.Int32 value:50
System.Security.Principal.WellKnownSidType.AccountRasAndIasServersSid = 50
---@return System.Int32 value:51
System.Security.Principal.WellKnownSidType.NtlmAuthenticationSid = 51
---@return System.Int32 value:52
System.Security.Principal.WellKnownSidType.DigestAuthenticationSid = 52
---@return System.Int32 value:53
System.Security.Principal.WellKnownSidType.SChannelAuthenticationSid = 53
---@return System.Int32 value:54
System.Security.Principal.WellKnownSidType.ThisOrganizationSid = 54
---@return System.Int32 value:55
System.Security.Principal.WellKnownSidType.OtherOrganizationSid = 55
---@return System.Int32 value:56
System.Security.Principal.WellKnownSidType.BuiltinIncomingForestTrustBuildersSid = 56
---@return System.Int32 value:57
System.Security.Principal.WellKnownSidType.BuiltinPerformanceMonitoringUsersSid = 57
---@return System.Int32 value:58
System.Security.Principal.WellKnownSidType.BuiltinPerformanceLoggingUsersSid = 58
---@return System.Int32 value:59
System.Security.Principal.WellKnownSidType.BuiltinAuthorizationAccessSid = 59
---@return System.Int32 value:60
System.Security.Principal.WellKnownSidType.WinBuiltinTerminalServerLicenseServersSid = 60
---@return System.Int32 value:61
System.Security.Principal.WellKnownSidType.WinBuiltinDCOMUsersSid = 61
---@return System.Int32 value:62
System.Security.Principal.WellKnownSidType.WinBuiltinIUsersSid = 62
---@return System.Int32 value:63
System.Security.Principal.WellKnownSidType.WinIUserSid = 63
---@return System.Int32 value:64
System.Security.Principal.WellKnownSidType.WinBuiltinCryptoOperatorsSid = 64
---@return System.Int32 value:65
System.Security.Principal.WellKnownSidType.WinUntrustedLabelSid = 65
---@return System.Int32 value:66
System.Security.Principal.WellKnownSidType.WinLowLabelSid = 66
---@return System.Int32 value:67
System.Security.Principal.WellKnownSidType.WinMediumLabelSid = 67
---@return System.Int32 value:68
System.Security.Principal.WellKnownSidType.WinHighLabelSid = 68
---@return System.Int32 value:69
System.Security.Principal.WellKnownSidType.WinSystemLabelSid = 69
---@return System.Int32 value:70
System.Security.Principal.WellKnownSidType.WinWriteRestrictedCodeSid = 70
---@return System.Int32 value:71
System.Security.Principal.WellKnownSidType.WinCreatorOwnerRightsSid = 71
---@return System.Int32 value:72
System.Security.Principal.WellKnownSidType.WinCacheablePrincipalsGroupSid = 72
---@return System.Int32 value:73
System.Security.Principal.WellKnownSidType.WinNonCacheablePrincipalsGroupSid = 73
---@return System.Int32 value:74
System.Security.Principal.WellKnownSidType.WinEnterpriseReadonlyControllersSid = 74
---@return System.Int32 value:75
System.Security.Principal.WellKnownSidType.WinAccountReadonlyControllersSid = 75
---@return System.Int32 value:76
System.Security.Principal.WellKnownSidType.WinBuiltinEventLogReadersGroup = 76
---@return System.Int32 value:77
System.Security.Principal.WellKnownSidType.WinNewEnterpriseReadonlyControllersSid = 77
---@return System.Int32 value:78
System.Security.Principal.WellKnownSidType.WinBuiltinCertSvcDComAccessGroup = 78
---@return System.Int32 value:79
System.Security.Principal.WellKnownSidType.WinMediumPlusLabelSid = 79
---@return System.Int32 value:80
System.Security.Principal.WellKnownSidType.WinLocalLogonSid = 80
---@return System.Int32 value:81
System.Security.Principal.WellKnownSidType.WinConsoleLogonSid = 81
---@return System.Int32 value:82
System.Security.Principal.WellKnownSidType.WinThisOrganizationCertificateSid = 82
---@return System.Int32 value:83
System.Security.Principal.WellKnownSidType.WinApplicationPackageAuthoritySid = 83
---@return System.Int32 value:84
System.Security.Principal.WellKnownSidType.WinBuiltinAnyPackageSid = 84
---@return System.Int32 value:85
System.Security.Principal.WellKnownSidType.WinCapabilityInternetClientSid = 85
---@return System.Int32 value:86
System.Security.Principal.WellKnownSidType.WinCapabilityInternetClientServerSid = 86
---@return System.Int32 value:87
System.Security.Principal.WellKnownSidType.WinCapabilityPrivateNetworkClientServerSid = 87
---@return System.Int32 value:88
System.Security.Principal.WellKnownSidType.WinCapabilityPicturesLibrarySid = 88
---@return System.Int32 value:89
System.Security.Principal.WellKnownSidType.WinCapabilityVideosLibrarySid = 89
---@return System.Int32 value:90
System.Security.Principal.WellKnownSidType.WinCapabilityMusicLibrarySid = 90
---@return System.Int32 value:91
System.Security.Principal.WellKnownSidType.WinCapabilityDocumentsLibrarySid = 91
---@return System.Int32 value:92
System.Security.Principal.WellKnownSidType.WinCapabilitySharedUserCertificatesSid = 92
---@return System.Int32 value:93
System.Security.Principal.WellKnownSidType.WinCapabilityEnterpriseAuthenticationSid = 93
---@return System.Int32 value:94
System.Security.Principal.WellKnownSidType.WinCapabilityRemovableStorageSid = 94

---@class System.Security.Principal.WindowsAccountType : System.Enum
System.Security.Principal.WindowsAccountType = {}
---@type System.Security.Principal.WindowsAccountType
CS.System.Security.Principal.WindowsAccountType = System.Security.Principal.WindowsAccountType

---@return System.Int32 value:0
System.Security.Principal.WindowsAccountType.Normal = 0
---@return System.Int32 value:1
System.Security.Principal.WindowsAccountType.Guest = 1
---@return System.Int32 value:2
System.Security.Principal.WindowsAccountType.System = 2
---@return System.Int32 value:3
System.Security.Principal.WindowsAccountType.Anonymous = 3

---@class System.Security.Principal.WindowsBuiltInRole : System.Enum
System.Security.Principal.WindowsBuiltInRole = {}
---@type System.Security.Principal.WindowsBuiltInRole
CS.System.Security.Principal.WindowsBuiltInRole = System.Security.Principal.WindowsBuiltInRole


---@class System.Security.Principal.WindowsIdentity : System.Security.Claims.ClaimsIdentity
---@field public AuthenticationType System.String @  getter
---@field public IsAnonymous System.Boolean @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public IsGuest System.Boolean @  getter
---@field public IsSystem System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Token System.IntPtr @  getter
---@field public Groups System.Security.Principal.IdentityReferenceCollection @  getter
---@field public ImpersonationLevel System.Security.Principal.TokenImpersonationLevel @  getter
---@field public Owner System.Security.Principal.SecurityIdentifier @  getter
---@field public User System.Security.Principal.SecurityIdentifier @  getter
---@field public AccessToken Microsoft.Win32.SafeHandles.SafeAccessTokenHandle @  getter
---@field public DeviceClaims System.Collections.Generic.IEnumerable @  getter
---@field public UserClaims System.Collections.Generic.IEnumerable @  getter
---@field public DefaultIssuer System.String
System.Security.Principal.WindowsIdentity = {}
---@type System.Security.Principal.WindowsIdentity
CS.System.Security.Principal.WindowsIdentity = System.Security.Principal.WindowsIdentity

---@return System.Void
function System.Security.Principal.WindowsIdentity:Dispose()end
---@return System.Security.Principal.WindowsIdentity
function System.Security.Principal.WindowsIdentity.GetAnonymous()end
---@overload fun(ifImpersonating:System.Boolean):System.Security.Principal.WindowsIdentity
---@overload fun(desiredAccess:System.Security.Principal.TokenAccessLevels):System.Security.Principal.WindowsIdentity
---@return System.Security.Principal.WindowsIdentity
function System.Security.Principal.WindowsIdentity.GetCurrent()end
---@return System.Security.Principal.WindowsImpersonationContext
function System.Security.Principal.WindowsIdentity:Impersonate()end
---@param userToken System.IntPtr
---@return System.Security.Principal.WindowsImpersonationContext
function System.Security.Principal.WindowsIdentity.Impersonate(userToken)end
---@overload fun(safeAccessTokenHandle:Microsoft.Win32.SafeHandles.SafeAccessTokenHandle, func:any):any
---@param safeAccessTokenHandle Microsoft.Win32.SafeHandles.SafeAccessTokenHandle
---@param action System.Action
---@return System.Void
function System.Security.Principal.WindowsIdentity.RunImpersonated(safeAccessTokenHandle, action)end
---@class System.Security.Principal.WindowsImpersonationContext : System.Object
System.Security.Principal.WindowsImpersonationContext = {}
---@type System.Security.Principal.WindowsImpersonationContext
CS.System.Security.Principal.WindowsImpersonationContext = System.Security.Principal.WindowsImpersonationContext

---@return System.Void
function System.Security.Principal.WindowsImpersonationContext:Dispose()end
---@return System.Void
function System.Security.Principal.WindowsImpersonationContext:Undo()end
---@class System.Security.Principal.WindowsPrincipal : System.Security.Claims.ClaimsPrincipal
---@field public Identity System.Security.Principal.IIdentity @  getter
---@field public DeviceClaims System.Collections.Generic.IEnumerable @  getter
---@field public UserClaims System.Collections.Generic.IEnumerable @  getter
System.Security.Principal.WindowsPrincipal = {}
---@type System.Security.Principal.WindowsPrincipal
CS.System.Security.Principal.WindowsPrincipal = System.Security.Principal.WindowsPrincipal

---@overload fun(role:System.String):System.Boolean
---@overload fun(role:System.Security.Principal.WindowsBuiltInRole):System.Boolean
---@overload fun(sid:System.Security.Principal.SecurityIdentifier):System.Boolean
---@param rid System.Int32
---@return System.Boolean
function System.Security.Principal.WindowsPrincipal:IsInRole(rid)end
