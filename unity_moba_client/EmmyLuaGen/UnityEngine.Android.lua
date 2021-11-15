---@class UnityEngine.Android.Permission : System.ValueType
---@field public Camera System.String
---@field public Microphone System.String
---@field public FineLocation System.String
---@field public CoarseLocation System.String
---@field public ExternalStorageRead System.String
---@field public ExternalStorageWrite System.String
UnityEngine.Android.Permission = {}
---@type UnityEngine.Android.Permission
CS.UnityEngine.Android.Permission = UnityEngine.Android.Permission

---@param permission System.String
---@return System.Boolean
function UnityEngine.Android.Permission.HasUserAuthorizedPermission(permission)end
---@param permission System.String
---@return System.Void
function UnityEngine.Android.Permission.RequestUserPermission(permission)end
