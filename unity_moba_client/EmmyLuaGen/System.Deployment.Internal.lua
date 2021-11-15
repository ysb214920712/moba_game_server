---@class System.Deployment.Internal.InternalActivationContextHelper : System.Object
System.Deployment.Internal.InternalActivationContextHelper = {}
---@type System.Deployment.Internal.InternalActivationContextHelper
CS.System.Deployment.Internal.InternalActivationContextHelper = System.Deployment.Internal.InternalActivationContextHelper

---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetActivationContextData(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetApplicationComponentManifest(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Byte[]
function System.Deployment.Internal.InternalActivationContextHelper.GetApplicationManifestBytes(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetDeploymentComponentManifest(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Byte[]
function System.Deployment.Internal.InternalActivationContextHelper.GetDeploymentManifestBytes(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Boolean
function System.Deployment.Internal.InternalActivationContextHelper.IsFirstRun(appInfo)end
---@param appInfo System.ActivationContext
---@return System.Void
function System.Deployment.Internal.InternalActivationContextHelper.PrepareForExecution(appInfo)end
---@class System.Deployment.Internal.InternalApplicationIdentityHelper : System.Object
System.Deployment.Internal.InternalApplicationIdentityHelper = {}
---@type System.Deployment.Internal.InternalApplicationIdentityHelper
CS.System.Deployment.Internal.InternalApplicationIdentityHelper = System.Deployment.Internal.InternalApplicationIdentityHelper

---@param id System.ApplicationIdentity
---@return System.Object
function System.Deployment.Internal.InternalApplicationIdentityHelper.GetInternalAppId(id)end
