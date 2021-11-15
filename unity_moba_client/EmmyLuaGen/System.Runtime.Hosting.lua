---@class System.Runtime.Hosting.ActivationArguments : System.Security.Policy.EvidenceBase
---@field public ActivationContext System.ActivationContext @  getter
---@field public ActivationData System.String[] @  getter
---@field public ApplicationIdentity System.ApplicationIdentity @  getter
System.Runtime.Hosting.ActivationArguments = {}
---@type System.Runtime.Hosting.ActivationArguments
CS.System.Runtime.Hosting.ActivationArguments = System.Runtime.Hosting.ActivationArguments

---@class System.Runtime.Hosting.ApplicationActivator : System.Object
System.Runtime.Hosting.ApplicationActivator = {}
---@type System.Runtime.Hosting.ApplicationActivator
CS.System.Runtime.Hosting.ApplicationActivator = System.Runtime.Hosting.ApplicationActivator

---@overload fun(activationContext:System.ActivationContext, activationCustomData:System.String[]):System.Runtime.Remoting.ObjectHandle
---@param activationContext System.ActivationContext
---@return System.Runtime.Remoting.ObjectHandle
function System.Runtime.Hosting.ApplicationActivator:CreateInstance(activationContext)end
