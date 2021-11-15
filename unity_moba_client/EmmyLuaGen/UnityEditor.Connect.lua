---@class UnityEditor.Connect.UnityOAuth : System.Object
UnityEditor.Connect.UnityOAuth = {}
---@type UnityEditor.Connect.UnityOAuth
CS.UnityEditor.Connect.UnityOAuth = UnityEditor.Connect.UnityOAuth

---@param value System.Action
---@return System.Void
function UnityEditor.Connect.UnityOAuth.add_UserLoggedIn(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Connect.UnityOAuth.remove_UserLoggedIn(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Connect.UnityOAuth.add_UserLoggedOut(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Connect.UnityOAuth.remove_UserLoggedOut(value)end
---@param clientId System.String
---@param callback System.Action
---@return System.Void
function UnityEditor.Connect.UnityOAuth.GetAuthorizationCodeAsync(clientId, callback)end
---@class UnityEditor.Connect.UnityOAuth.AuthCodeResponse : System.ValueType
---@field public AuthCode System.String @ setter getter
---@field public Exception System.Exception @ setter getter
UnityEditor.Connect.UnityOAuth.AuthCodeResponse = {}
---@type UnityEditor.Connect.UnityOAuth.AuthCodeResponse
CS.UnityEditor.Connect.UnityOAuth.AuthCodeResponse = UnityEditor.Connect.UnityOAuth.AuthCodeResponse

