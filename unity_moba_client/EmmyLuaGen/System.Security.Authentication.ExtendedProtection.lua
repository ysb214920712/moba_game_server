---@class System.Security.Authentication.ExtendedProtection.ServiceNameCollection : System.Collections.ReadOnlyCollectionBase
System.Security.Authentication.ExtendedProtection.ServiceNameCollection = {}
---@type System.Security.Authentication.ExtendedProtection.ServiceNameCollection
CS.System.Security.Authentication.ExtendedProtection.ServiceNameCollection = System.Security.Authentication.ExtendedProtection.ServiceNameCollection

---@overload fun(serviceNames:System.Collections.IEnumerable):System.Security.Authentication.ExtendedProtection.ServiceNameCollection
---@param serviceName System.String
---@return System.Security.Authentication.ExtendedProtection.ServiceNameCollection
function System.Security.Authentication.ExtendedProtection.ServiceNameCollection:Merge(serviceName)end
---@param searchServiceName System.String
---@return System.Boolean
function System.Security.Authentication.ExtendedProtection.ServiceNameCollection:Contains(searchServiceName)end
---@class System.Security.Authentication.ExtendedProtection.TokenBindingType : System.Enum
System.Security.Authentication.ExtendedProtection.TokenBindingType = {}
---@type System.Security.Authentication.ExtendedProtection.TokenBindingType
CS.System.Security.Authentication.ExtendedProtection.TokenBindingType = System.Security.Authentication.ExtendedProtection.TokenBindingType

---@return System.Int32 value:0
System.Security.Authentication.ExtendedProtection.TokenBindingType.Provided = 0
---@return System.Int32 value:1
System.Security.Authentication.ExtendedProtection.TokenBindingType.Referred = 1

---@class System.Security.Authentication.ExtendedProtection.TokenBinding : System.Object
---@field public BindingType System.Security.Authentication.ExtendedProtection.TokenBindingType @ setter getter
System.Security.Authentication.ExtendedProtection.TokenBinding = {}
---@type System.Security.Authentication.ExtendedProtection.TokenBinding
CS.System.Security.Authentication.ExtendedProtection.TokenBinding = System.Security.Authentication.ExtendedProtection.TokenBinding

---@return System.Byte[]
function System.Security.Authentication.ExtendedProtection.TokenBinding:GetRawTokenBindingId()end
---@class System.Security.Authentication.ExtendedProtection.ChannelBinding : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
---@field public Size System.Int32 @  getter
System.Security.Authentication.ExtendedProtection.ChannelBinding = {}
---@type System.Security.Authentication.ExtendedProtection.ChannelBinding
CS.System.Security.Authentication.ExtendedProtection.ChannelBinding = System.Security.Authentication.ExtendedProtection.ChannelBinding

---@class System.Security.Authentication.ExtendedProtection.ChannelBindingKind : System.Enum
System.Security.Authentication.ExtendedProtection.ChannelBindingKind = {}
---@type System.Security.Authentication.ExtendedProtection.ChannelBindingKind
CS.System.Security.Authentication.ExtendedProtection.ChannelBindingKind = System.Security.Authentication.ExtendedProtection.ChannelBindingKind

---@return System.Int32 value:0
System.Security.Authentication.ExtendedProtection.ChannelBindingKind.Unknown = 0

---@class System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy : System.Object
---@field public CustomChannelBinding System.Security.Authentication.ExtendedProtection.ChannelBinding @  getter
---@field public CustomServiceNames System.Security.Authentication.ExtendedProtection.ServiceNameCollection @  getter
---@field public OSSupportsExtendedProtection System.Boolean @static  getter
---@field public PolicyEnforcement System.Security.Authentication.ExtendedProtection.PolicyEnforcement @  getter
---@field public ProtectionScenario System.Security.Authentication.ExtendedProtection.ProtectionScenario @  getter
System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy = {}
---@type System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy
CS.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy = System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy

---@return System.String
function System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy:ToString()end
---@class System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter : System.ComponentModel.TypeConverter
System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter = {}
---@type System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter
CS.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter = System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.Security.Authentication.ExtendedProtection.PolicyEnforcement : System.Enum
System.Security.Authentication.ExtendedProtection.PolicyEnforcement = {}
---@type System.Security.Authentication.ExtendedProtection.PolicyEnforcement
CS.System.Security.Authentication.ExtendedProtection.PolicyEnforcement = System.Security.Authentication.ExtendedProtection.PolicyEnforcement

---@return System.Int32 value:0
System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Never = 0
---@return System.Int32 value:1
System.Security.Authentication.ExtendedProtection.PolicyEnforcement.WhenSupported = 1
---@return System.Int32 value:2
System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Always = 2

---@class System.Security.Authentication.ExtendedProtection.ProtectionScenario : System.Enum
System.Security.Authentication.ExtendedProtection.ProtectionScenario = {}
---@type System.Security.Authentication.ExtendedProtection.ProtectionScenario
CS.System.Security.Authentication.ExtendedProtection.ProtectionScenario = System.Security.Authentication.ExtendedProtection.ProtectionScenario

---@return System.Int32 value:0
System.Security.Authentication.ExtendedProtection.ProtectionScenario.TransportSelected = 0
---@return System.Int32 value:1
System.Security.Authentication.ExtendedProtection.ProtectionScenario.TrustedProxy = 1

