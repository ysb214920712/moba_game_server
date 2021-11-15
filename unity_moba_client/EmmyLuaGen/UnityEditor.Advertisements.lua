---@class UnityEditor.Advertisements.AdvertisementSettings : System.Object
---@field public enabled System.Boolean @static setter getter
---@field public testMode System.Boolean @static setter getter
---@field public initializeOnStartup System.Boolean @static setter getter
UnityEditor.Advertisements.AdvertisementSettings = {}
---@type UnityEditor.Advertisements.AdvertisementSettings
CS.UnityEditor.Advertisements.AdvertisementSettings = UnityEditor.Advertisements.AdvertisementSettings

---@param platform UnityEngine.RuntimePlatform
---@return System.String
function UnityEditor.Advertisements.AdvertisementSettings.GetGameId(platform)end
---@param platform UnityEngine.RuntimePlatform
---@param gameId System.String
---@return System.Void
function UnityEditor.Advertisements.AdvertisementSettings.SetGameId(platform, gameId)end
---@param platform UnityEngine.RuntimePlatform
---@return System.Boolean
function UnityEditor.Advertisements.AdvertisementSettings.IsPlatformEnabled(platform)end
---@param platform UnityEngine.RuntimePlatform
---@param value System.Boolean
---@return System.Void
function UnityEditor.Advertisements.AdvertisementSettings.SetPlatformEnabled(platform, value)end
---@param platformName System.String
---@return System.String
function UnityEditor.Advertisements.AdvertisementSettings.GetPlatformGameId(platformName)end
---@param platformName System.String
---@param gameId System.String
---@return System.Void
function UnityEditor.Advertisements.AdvertisementSettings.SetPlatformGameId(platformName, gameId)end
