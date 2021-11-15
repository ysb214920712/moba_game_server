---@class System.Management.Instrumentation.InstanceNotFoundException : System.Management.Instrumentation.InstrumentationException
System.Management.Instrumentation.InstanceNotFoundException = {}
---@type System.Management.Instrumentation.InstanceNotFoundException
CS.System.Management.Instrumentation.InstanceNotFoundException = System.Management.Instrumentation.InstanceNotFoundException

---@class System.Management.Instrumentation.InstrumentationException : System.Management.Instrumentation.InstrumentationBaseException
System.Management.Instrumentation.InstrumentationException = {}
---@type System.Management.Instrumentation.InstrumentationException
CS.System.Management.Instrumentation.InstrumentationException = System.Management.Instrumentation.InstrumentationException

---@class System.Management.Instrumentation.InstrumentationBaseException : System.Exception
System.Management.Instrumentation.InstrumentationBaseException = {}
---@type System.Management.Instrumentation.InstrumentationBaseException
CS.System.Management.Instrumentation.InstrumentationBaseException = System.Management.Instrumentation.InstrumentationBaseException

---@class System.Management.Instrumentation.ManagementBindAttribute : System.Management.Instrumentation.ManagementNewInstanceAttribute
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementBindAttribute = {}
---@type System.Management.Instrumentation.ManagementBindAttribute
CS.System.Management.Instrumentation.ManagementBindAttribute = System.Management.Instrumentation.ManagementBindAttribute

---@class System.Management.Instrumentation.ManagementNewInstanceAttribute : System.Management.Instrumentation.ManagementMemberAttribute
System.Management.Instrumentation.ManagementNewInstanceAttribute = {}
---@type System.Management.Instrumentation.ManagementNewInstanceAttribute
CS.System.Management.Instrumentation.ManagementNewInstanceAttribute = System.Management.Instrumentation.ManagementNewInstanceAttribute

---@class System.Management.Instrumentation.ManagementMemberAttribute : System.Attribute
---@field public Name System.String @ setter getter
System.Management.Instrumentation.ManagementMemberAttribute = {}
---@type System.Management.Instrumentation.ManagementMemberAttribute
CS.System.Management.Instrumentation.ManagementMemberAttribute = System.Management.Instrumentation.ManagementMemberAttribute

---@class System.Management.Instrumentation.ManagementCommitAttribute : System.Management.Instrumentation.ManagementMemberAttribute
System.Management.Instrumentation.ManagementCommitAttribute = {}
---@type System.Management.Instrumentation.ManagementCommitAttribute
CS.System.Management.Instrumentation.ManagementCommitAttribute = System.Management.Instrumentation.ManagementCommitAttribute

---@class System.Management.Instrumentation.ManagementConfigurationAttribute : System.Management.Instrumentation.ManagementMemberAttribute
---@field public Mode System.Management.Instrumentation.ManagementConfigurationType @ setter getter
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementConfigurationAttribute = {}
---@type System.Management.Instrumentation.ManagementConfigurationAttribute
CS.System.Management.Instrumentation.ManagementConfigurationAttribute = System.Management.Instrumentation.ManagementConfigurationAttribute

---@class System.Management.Instrumentation.ManagementConfigurationType : System.Enum
System.Management.Instrumentation.ManagementConfigurationType = {}
---@type System.Management.Instrumentation.ManagementConfigurationType
CS.System.Management.Instrumentation.ManagementConfigurationType = System.Management.Instrumentation.ManagementConfigurationType

---@return System.Int32 value:0
System.Management.Instrumentation.ManagementConfigurationType.Apply = 0
---@return System.Int32 value:1
System.Management.Instrumentation.ManagementConfigurationType.OnCommit = 1

---@class System.Management.Instrumentation.ManagementCreateAttribute : System.Management.Instrumentation.ManagementNewInstanceAttribute
System.Management.Instrumentation.ManagementCreateAttribute = {}
---@type System.Management.Instrumentation.ManagementCreateAttribute
CS.System.Management.Instrumentation.ManagementCreateAttribute = System.Management.Instrumentation.ManagementCreateAttribute

---@class System.Management.Instrumentation.ManagementEntityAttribute : System.Attribute
---@field public External System.Boolean @ setter getter
---@field public Name System.String @ setter getter
---@field public Singleton System.Boolean @ setter getter
System.Management.Instrumentation.ManagementEntityAttribute = {}
---@type System.Management.Instrumentation.ManagementEntityAttribute
CS.System.Management.Instrumentation.ManagementEntityAttribute = System.Management.Instrumentation.ManagementEntityAttribute

---@class System.Management.Instrumentation.ManagementEnumeratorAttribute : System.Management.Instrumentation.ManagementNewInstanceAttribute
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementEnumeratorAttribute = {}
---@type System.Management.Instrumentation.ManagementEnumeratorAttribute
CS.System.Management.Instrumentation.ManagementEnumeratorAttribute = System.Management.Instrumentation.ManagementEnumeratorAttribute

---@class System.Management.Instrumentation.ManagementHostingModel : System.Enum
System.Management.Instrumentation.ManagementHostingModel = {}
---@type System.Management.Instrumentation.ManagementHostingModel
CS.System.Management.Instrumentation.ManagementHostingModel = System.Management.Instrumentation.ManagementHostingModel

---@return System.Int32 value:0
System.Management.Instrumentation.ManagementHostingModel.Decoupled = 0
---@return System.Int32 value:1
System.Management.Instrumentation.ManagementHostingModel.NetworkService = 1
---@return System.Int32 value:2
System.Management.Instrumentation.ManagementHostingModel.LocalService = 2
---@return System.Int32 value:3
System.Management.Instrumentation.ManagementHostingModel.LocalSystem = 3

---@class System.Management.Instrumentation.ManagementKeyAttribute : System.Management.Instrumentation.ManagementMemberAttribute
System.Management.Instrumentation.ManagementKeyAttribute = {}
---@type System.Management.Instrumentation.ManagementKeyAttribute
CS.System.Management.Instrumentation.ManagementKeyAttribute = System.Management.Instrumentation.ManagementKeyAttribute

---@class System.Management.Instrumentation.ManagementNameAttribute : System.Attribute
---@field public Name System.String @  getter
System.Management.Instrumentation.ManagementNameAttribute = {}
---@type System.Management.Instrumentation.ManagementNameAttribute
CS.System.Management.Instrumentation.ManagementNameAttribute = System.Management.Instrumentation.ManagementNameAttribute

---@class System.Management.Instrumentation.ManagementProbeAttribute : System.Management.Instrumentation.ManagementMemberAttribute
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementProbeAttribute = {}
---@type System.Management.Instrumentation.ManagementProbeAttribute
CS.System.Management.Instrumentation.ManagementProbeAttribute = System.Management.Instrumentation.ManagementProbeAttribute

---@class System.Management.Instrumentation.ManagementReferenceAttribute : System.Attribute
---@field public Type System.String @ setter getter
System.Management.Instrumentation.ManagementReferenceAttribute = {}
---@type System.Management.Instrumentation.ManagementReferenceAttribute
CS.System.Management.Instrumentation.ManagementReferenceAttribute = System.Management.Instrumentation.ManagementReferenceAttribute

---@class System.Management.Instrumentation.ManagementRemoveAttribute : System.Management.Instrumentation.ManagementMemberAttribute
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementRemoveAttribute = {}
---@type System.Management.Instrumentation.ManagementRemoveAttribute
CS.System.Management.Instrumentation.ManagementRemoveAttribute = System.Management.Instrumentation.ManagementRemoveAttribute

---@class System.Management.Instrumentation.ManagementTaskAttribute : System.Management.Instrumentation.ManagementMemberAttribute
---@field public Schema System.Type @ setter getter
System.Management.Instrumentation.ManagementTaskAttribute = {}
---@type System.Management.Instrumentation.ManagementTaskAttribute
CS.System.Management.Instrumentation.ManagementTaskAttribute = System.Management.Instrumentation.ManagementTaskAttribute

---@class System.Management.Instrumentation.WmiConfigurationAttribute : System.Attribute
---@field public HostingGroup System.String @ setter getter
---@field public HostingModel System.Management.Instrumentation.ManagementHostingModel @ setter getter
---@field public IdentifyLevel System.Boolean @ setter getter
---@field public NamespaceSecurity System.String @ setter getter
---@field public Scope System.String @  getter
---@field public SecurityRestriction System.String @ setter getter
System.Management.Instrumentation.WmiConfigurationAttribute = {}
---@type System.Management.Instrumentation.WmiConfigurationAttribute
CS.System.Management.Instrumentation.WmiConfigurationAttribute = System.Management.Instrumentation.WmiConfigurationAttribute

