---@class System.Runtime.Versioning.ComponentGuaranteesOptions : System.Enum
System.Runtime.Versioning.ComponentGuaranteesOptions = {}
---@type System.Runtime.Versioning.ComponentGuaranteesOptions
CS.System.Runtime.Versioning.ComponentGuaranteesOptions = System.Runtime.Versioning.ComponentGuaranteesOptions

---@return System.Int32 value:0
System.Runtime.Versioning.ComponentGuaranteesOptions.None = 0
---@return System.Int32 value:1
System.Runtime.Versioning.ComponentGuaranteesOptions.Exchange = 1
---@return System.Int32 value:2
System.Runtime.Versioning.ComponentGuaranteesOptions.Stable = 2

---@class System.Runtime.Versioning.ComponentGuaranteesAttribute : System.Attribute
---@field public Guarantees System.Runtime.Versioning.ComponentGuaranteesOptions @  getter
System.Runtime.Versioning.ComponentGuaranteesAttribute = {}
---@type System.Runtime.Versioning.ComponentGuaranteesAttribute
CS.System.Runtime.Versioning.ComponentGuaranteesAttribute = System.Runtime.Versioning.ComponentGuaranteesAttribute

---@class System.Runtime.Versioning.ResourceConsumptionAttribute : System.Attribute
---@field public ResourceScope System.Runtime.Versioning.ResourceScope @  getter
---@field public ConsumptionScope System.Runtime.Versioning.ResourceScope @  getter
System.Runtime.Versioning.ResourceConsumptionAttribute = {}
---@type System.Runtime.Versioning.ResourceConsumptionAttribute
CS.System.Runtime.Versioning.ResourceConsumptionAttribute = System.Runtime.Versioning.ResourceConsumptionAttribute

---@class System.Runtime.Versioning.ResourceExposureAttribute : System.Attribute
---@field public ResourceExposureLevel System.Runtime.Versioning.ResourceScope @  getter
System.Runtime.Versioning.ResourceExposureAttribute = {}
---@type System.Runtime.Versioning.ResourceExposureAttribute
CS.System.Runtime.Versioning.ResourceExposureAttribute = System.Runtime.Versioning.ResourceExposureAttribute

---@class System.Runtime.Versioning.ResourceScope : System.Enum
System.Runtime.Versioning.ResourceScope = {}
---@type System.Runtime.Versioning.ResourceScope
CS.System.Runtime.Versioning.ResourceScope = System.Runtime.Versioning.ResourceScope

---@return System.Int32 value:0
System.Runtime.Versioning.ResourceScope.None = 0
---@return System.Int32 value:1
System.Runtime.Versioning.ResourceScope.Machine = 1
---@return System.Int32 value:2
System.Runtime.Versioning.ResourceScope.Process = 2
---@return System.Int32 value:4
System.Runtime.Versioning.ResourceScope.AppDomain = 4

---@class System.Runtime.Versioning.VersioningHelper : System.Object
System.Runtime.Versioning.VersioningHelper = {}
---@type System.Runtime.Versioning.VersioningHelper
CS.System.Runtime.Versioning.VersioningHelper = System.Runtime.Versioning.VersioningHelper

---@overload fun(name:System.String, from:System.Runtime.Versioning.ResourceScope, to:System.Runtime.Versioning.ResourceScope, type:System.Type):System.String
---@param name System.String
---@param from System.Runtime.Versioning.ResourceScope
---@param to System.Runtime.Versioning.ResourceScope
---@return System.String
function System.Runtime.Versioning.VersioningHelper.MakeVersionSafeName(name, from, to)end
---@class System.Runtime.Versioning.TargetFrameworkAttribute : System.Attribute
---@field public FrameworkName System.String @  getter
---@field public FrameworkDisplayName System.String @ setter getter
System.Runtime.Versioning.TargetFrameworkAttribute = {}
---@type System.Runtime.Versioning.TargetFrameworkAttribute
CS.System.Runtime.Versioning.TargetFrameworkAttribute = System.Runtime.Versioning.TargetFrameworkAttribute

---@class System.Runtime.Versioning.CompatibilitySwitch : System.Object
System.Runtime.Versioning.CompatibilitySwitch = {}
---@type System.Runtime.Versioning.CompatibilitySwitch
CS.System.Runtime.Versioning.CompatibilitySwitch = System.Runtime.Versioning.CompatibilitySwitch

---@param compatibilitySwitchName System.String
---@return System.Boolean
function System.Runtime.Versioning.CompatibilitySwitch.IsEnabled(compatibilitySwitchName)end
---@param compatibilitySwitchName System.String
---@return System.String
function System.Runtime.Versioning.CompatibilitySwitch.GetValue(compatibilitySwitchName)end
---@class System.Runtime.Versioning.FrameworkName : System.Object
---@field public Identifier System.String @  getter
---@field public Version System.Version @  getter
---@field public Profile System.String @  getter
---@field public FullName System.String @  getter
System.Runtime.Versioning.FrameworkName = {}
---@type System.Runtime.Versioning.FrameworkName
CS.System.Runtime.Versioning.FrameworkName = System.Runtime.Versioning.FrameworkName

---@overload fun(other:System.Runtime.Versioning.FrameworkName):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Runtime.Versioning.FrameworkName:Equals(obj)end
---@return System.Int32
function System.Runtime.Versioning.FrameworkName:GetHashCode()end
---@return System.String
function System.Runtime.Versioning.FrameworkName:ToString()end
---@param left System.Runtime.Versioning.FrameworkName
---@param right System.Runtime.Versioning.FrameworkName
---@return System.Boolean
function System.Runtime.Versioning.FrameworkName.op_Equality(left, right)end
---@param left System.Runtime.Versioning.FrameworkName
---@param right System.Runtime.Versioning.FrameworkName
---@return System.Boolean
function System.Runtime.Versioning.FrameworkName.op_Inequality(left, right)end
