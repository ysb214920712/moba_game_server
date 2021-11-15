---@class UnityEngine.Diagnostics.PlayerConnection : System.Object
---@field public connected System.Boolean @static  getter
UnityEngine.Diagnostics.PlayerConnection = {}
---@type UnityEngine.Diagnostics.PlayerConnection
CS.UnityEngine.Diagnostics.PlayerConnection = UnityEngine.Diagnostics.PlayerConnection

---@param remoteFilePath System.String
---@param data System.Byte[]
---@return System.Void
function UnityEngine.Diagnostics.PlayerConnection.SendFile(remoteFilePath, data)end
---@class UnityEngine.Diagnostics.ForcedCrashCategory : System.Enum
UnityEngine.Diagnostics.ForcedCrashCategory = {}
---@type UnityEngine.Diagnostics.ForcedCrashCategory
CS.UnityEngine.Diagnostics.ForcedCrashCategory = UnityEngine.Diagnostics.ForcedCrashCategory

---@return System.Int32 value:0
UnityEngine.Diagnostics.ForcedCrashCategory.AccessViolation = 0
---@return System.Int32 value:1
UnityEngine.Diagnostics.ForcedCrashCategory.FatalError = 1
---@return System.Int32 value:2
UnityEngine.Diagnostics.ForcedCrashCategory.Abort = 2
---@return System.Int32 value:3
UnityEngine.Diagnostics.ForcedCrashCategory.PureVirtualFunction = 3

---@class UnityEngine.Diagnostics.Utils : System.Object
UnityEngine.Diagnostics.Utils = {}
---@type UnityEngine.Diagnostics.Utils
CS.UnityEngine.Diagnostics.Utils = UnityEngine.Diagnostics.Utils

---@param crashCategory UnityEngine.Diagnostics.ForcedCrashCategory
---@return System.Void
function UnityEngine.Diagnostics.Utils.ForceCrash(crashCategory)end
---@param message System.String
---@return System.Void
function UnityEngine.Diagnostics.Utils.NativeAssert(message)end
---@param message System.String
---@return System.Void
function UnityEngine.Diagnostics.Utils.NativeError(message)end
---@param message System.String
---@return System.Void
function UnityEngine.Diagnostics.Utils.NativeWarning(message)end
