---@class UnityEngine.Windows.LicenseInformation : System.Object
---@field public isOnAppTrial System.Boolean @static  getter
UnityEngine.Windows.LicenseInformation = {}
---@type UnityEngine.Windows.LicenseInformation
CS.UnityEngine.Windows.LicenseInformation = UnityEngine.Windows.LicenseInformation

---@return System.String
function UnityEngine.Windows.LicenseInformation.PurchaseApp()end
---@class UnityEngine.Windows.CrashReporting : System.Object
---@field public crashReportFolder System.String @static  getter
UnityEngine.Windows.CrashReporting = {}
---@type UnityEngine.Windows.CrashReporting
CS.UnityEngine.Windows.CrashReporting = UnityEngine.Windows.CrashReporting

---@class UnityEngine.Windows.Crypto : System.Object
UnityEngine.Windows.Crypto = {}
---@type UnityEngine.Windows.Crypto
CS.UnityEngine.Windows.Crypto = UnityEngine.Windows.Crypto

---@param buffer System.Byte[]
---@return System.Byte[]
function UnityEngine.Windows.Crypto.ComputeMD5Hash(buffer)end
---@param buffer System.Byte[]
---@return System.Byte[]
function UnityEngine.Windows.Crypto.ComputeSHA1Hash(buffer)end
---@class UnityEngine.Windows.Directory : System.Object
---@field public temporaryFolder System.String @static  getter
---@field public localFolder System.String @static  getter
---@field public roamingFolder System.String @static  getter
UnityEngine.Windows.Directory = {}
---@type UnityEngine.Windows.Directory
CS.UnityEngine.Windows.Directory = UnityEngine.Windows.Directory

---@param path System.String
---@return System.Void
function UnityEngine.Windows.Directory.CreateDirectory(path)end
---@param path System.String
---@return System.Boolean
function UnityEngine.Windows.Directory.Exists(path)end
---@param path System.String
---@return System.Void
function UnityEngine.Windows.Directory.Delete(path)end
---@class UnityEngine.Windows.File : System.Object
UnityEngine.Windows.File = {}
---@type UnityEngine.Windows.File
CS.UnityEngine.Windows.File = UnityEngine.Windows.File

---@param path System.String
---@return System.Byte[]
function UnityEngine.Windows.File.ReadAllBytes(path)end
---@param path System.String
---@param bytes System.Byte[]
---@return System.Void
function UnityEngine.Windows.File.WriteAllBytes(path, bytes)end
---@param path System.String
---@return System.Boolean
function UnityEngine.Windows.File.Exists(path)end
---@param path System.String
---@return System.Void
function UnityEngine.Windows.File.Delete(path)end
