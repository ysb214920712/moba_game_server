---@class System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement : System.Configuration.ConfigurationElement
---@field public CustomServiceNames System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection @  getter
---@field public PolicyEnforcement System.Security.Authentication.ExtendedProtection.PolicyEnforcement @ setter getter
---@field public ProtectionScenario System.Security.Authentication.ExtendedProtection.ProtectionScenario @ setter getter
System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement = {}
---@type System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement
CS.System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement = System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement

---@return System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy
function System.Security.Authentication.ExtendedProtection.Configuration.ExtendedProtectionPolicyElement:BuildPolicy()end
---@class System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement : System.Configuration.ConfigurationElement
---@field public Name System.String @ setter getter
System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement = {}
---@type System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement
CS.System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement = System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement

---@class System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement @  getter
---@field public Item System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement @  getter
System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection = {}
---@type System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection
CS.System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection = System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection

---@param element System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement
---@return System.Void
function System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection:Add(element)end
---@return System.Void
function System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection:Clear()end
---@param element System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement
---@return System.Int32
function System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection:IndexOf(element)end
---@overload fun(element:System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElement):System.Void
---@param name System.String
---@return System.Void
function System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection:Remove(name)end
---@param index System.Int32
---@return System.Void
function System.Security.Authentication.ExtendedProtection.Configuration.ServiceNameElementCollection:RemoveAt(index)end
