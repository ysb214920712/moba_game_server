---@class System.Web.AspNetHostingPermission : System.Security.CodeAccessPermission
---@field public Level System.Web.AspNetHostingPermissionLevel @ setter getter
System.Web.AspNetHostingPermission = {}
---@type System.Web.AspNetHostingPermission
CS.System.Web.AspNetHostingPermission = System.Web.AspNetHostingPermission

---@return System.Boolean
function System.Web.AspNetHostingPermission:IsUnrestricted()end
---@return System.Security.IPermission
function System.Web.AspNetHostingPermission:Copy()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Web.AspNetHostingPermission:FromXml(securityElement)end
---@return System.Security.SecurityElement
function System.Web.AspNetHostingPermission:ToXml()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Web.AspNetHostingPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Web.AspNetHostingPermission:IsSubsetOf(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Web.AspNetHostingPermission:Union(target)end
---@class System.Web.AspNetHostingPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Level System.Web.AspNetHostingPermissionLevel @ setter getter
System.Web.AspNetHostingPermissionAttribute = {}
---@type System.Web.AspNetHostingPermissionAttribute
CS.System.Web.AspNetHostingPermissionAttribute = System.Web.AspNetHostingPermissionAttribute

---@return System.Security.IPermission
function System.Web.AspNetHostingPermissionAttribute:CreatePermission()end
---@class System.Web.AspNetHostingPermissionLevel : System.Enum
System.Web.AspNetHostingPermissionLevel = {}
---@type System.Web.AspNetHostingPermissionLevel
CS.System.Web.AspNetHostingPermissionLevel = System.Web.AspNetHostingPermissionLevel


