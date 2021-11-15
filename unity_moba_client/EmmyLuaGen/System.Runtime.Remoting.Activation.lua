---@class System.Runtime.Remoting.Activation.ActivatorLevel : System.Enum
System.Runtime.Remoting.Activation.ActivatorLevel = {}
---@type System.Runtime.Remoting.Activation.ActivatorLevel
CS.System.Runtime.Remoting.Activation.ActivatorLevel = System.Runtime.Remoting.Activation.ActivatorLevel

---@return System.Int32 value:4
System.Runtime.Remoting.Activation.ActivatorLevel.Construction = 4

---@class System.Runtime.Remoting.Activation.UrlAttribute : System.Runtime.Remoting.Contexts.ContextAttribute
---@field public UrlValue System.String @  getter
System.Runtime.Remoting.Activation.UrlAttribute = {}
---@type System.Runtime.Remoting.Activation.UrlAttribute
CS.System.Runtime.Remoting.Activation.UrlAttribute = System.Runtime.Remoting.Activation.UrlAttribute

---@param o System.Object
---@return System.Boolean
function System.Runtime.Remoting.Activation.UrlAttribute:Equals(o)end
---@return System.Int32
function System.Runtime.Remoting.Activation.UrlAttribute:GetHashCode()end
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Void
function System.Runtime.Remoting.Activation.UrlAttribute:GetPropertiesForNewContext(ctorMsg)end
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Boolean
function System.Runtime.Remoting.Activation.UrlAttribute:IsContextOK(ctx, msg)end
