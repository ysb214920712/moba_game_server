---@class UnityEngine.tvOS.Remote : System.Object
---@field public allowExitToHome System.Boolean @static setter getter
---@field public allowRemoteRotation System.Boolean @static setter getter
---@field public reportAbsoluteDpadValues System.Boolean @static setter getter
---@field public touchesEnabled System.Boolean @static setter getter
UnityEngine.tvOS.Remote = {}
---@type UnityEngine.tvOS.Remote
CS.UnityEngine.tvOS.Remote = UnityEngine.tvOS.Remote

---@class UnityEngine.tvOS.DeviceGeneration : System.Enum
UnityEngine.tvOS.DeviceGeneration = {}
---@type UnityEngine.tvOS.DeviceGeneration
CS.UnityEngine.tvOS.DeviceGeneration = UnityEngine.tvOS.DeviceGeneration

---@return System.Int32 value:0
UnityEngine.tvOS.DeviceGeneration.Unknown = 0

---@class UnityEngine.tvOS.Device : System.Object
---@field public systemVersion System.String @static  getter
---@field public generation UnityEngine.tvOS.DeviceGeneration @static  getter
---@field public vendorIdentifier System.String @static  getter
---@field public advertisingIdentifier System.String @static  getter
---@field public advertisingTrackingEnabled System.Boolean @static  getter
UnityEngine.tvOS.Device = {}
---@type UnityEngine.tvOS.Device
CS.UnityEngine.tvOS.Device = UnityEngine.tvOS.Device

---@param path System.String
---@return System.Void
function UnityEngine.tvOS.Device.SetNoBackupFlag(path)end
---@param path System.String
---@return System.Void
function UnityEngine.tvOS.Device.ResetNoBackupFlag(path)end
