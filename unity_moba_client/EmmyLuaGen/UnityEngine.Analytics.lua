---@class UnityEngine.Analytics.PerformanceReporting : System.Object
---@field public enabled System.Boolean @static setter getter
---@field public graphicsInitializationFinishTime System.Int64 @static  getter
UnityEngine.Analytics.PerformanceReporting = {}
---@type UnityEngine.Analytics.PerformanceReporting
CS.UnityEngine.Analytics.PerformanceReporting = UnityEngine.Analytics.PerformanceReporting

---@class UnityEngine.Analytics.AnalyticsSessionState : System.Enum
UnityEngine.Analytics.AnalyticsSessionState = {}
---@type UnityEngine.Analytics.AnalyticsSessionState
CS.UnityEngine.Analytics.AnalyticsSessionState = UnityEngine.Analytics.AnalyticsSessionState

---@return System.Int32 value:0
UnityEngine.Analytics.AnalyticsSessionState.kSessionStopped = 0
---@return System.Int32 value:1
UnityEngine.Analytics.AnalyticsSessionState.kSessionStarted = 1
---@return System.Int32 value:2
UnityEngine.Analytics.AnalyticsSessionState.kSessionPaused = 2
---@return System.Int32 value:3
UnityEngine.Analytics.AnalyticsSessionState.kSessionResumed = 3

---@class UnityEngine.Analytics.AnalyticsSessionInfo : System.Object
---@field public sessionState UnityEngine.Analytics.AnalyticsSessionState @static  getter
---@field public sessionId System.Int64 @static  getter
---@field public sessionCount System.Int64 @static  getter
---@field public sessionElapsedTime System.Int64 @static  getter
---@field public sessionFirstRun System.Boolean @static  getter
---@field public userId System.String @static  getter
UnityEngine.Analytics.AnalyticsSessionInfo = {}
---@type UnityEngine.Analytics.AnalyticsSessionInfo
CS.UnityEngine.Analytics.AnalyticsSessionInfo = UnityEngine.Analytics.AnalyticsSessionInfo

---@param value UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged
---@return System.Void
function UnityEngine.Analytics.AnalyticsSessionInfo.add_sessionStateChanged(value)end
---@param value UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged
---@return System.Void
function UnityEngine.Analytics.AnalyticsSessionInfo.remove_sessionStateChanged(value)end
---@class UnityEngine.Analytics.Analytics : System.Object
---@field public initializeOnStartup System.Boolean @static setter getter
---@field public playerOptedOut System.Boolean @static  getter
---@field public limitUserTracking System.Boolean @static setter getter
---@field public deviceStatsEnabled System.Boolean @static setter getter
---@field public enabled System.Boolean @static setter getter
UnityEngine.Analytics.Analytics = {}
---@type UnityEngine.Analytics.Analytics
CS.UnityEngine.Analytics.Analytics = UnityEngine.Analytics.Analytics

---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.ResumeInitialization()end
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.FlushEvents()end
---@param userId System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SetUserId(userId)end
---@param gender UnityEngine.Analytics.Gender
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SetUserGender(gender)end
---@param birthYear System.Int32
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SetUserBirthYear(birthYear)end
---@overload fun(productId:System.String, amount:System.Decimal, currency:System.String, receiptPurchaseData:System.String, signature:System.String):UnityEngine.Analytics.AnalyticsResult
---@overload fun(productId:System.String, amount:System.Decimal, currency:System.String, receiptPurchaseData:System.String, signature:System.String, usingIAPService:System.Boolean):UnityEngine.Analytics.AnalyticsResult
---@param productId System.String
---@param amount System.Decimal
---@param currency System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.Transaction(productId, amount, currency)end
---@overload fun(customEventName:System.String, position:UnityEngine.Vector3):UnityEngine.Analytics.AnalyticsResult
---@overload fun(customEventName:System.String, eventData:System.Collections.Generic.IDictionary):UnityEngine.Analytics.AnalyticsResult
---@param customEventName System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.CustomEvent(customEventName)end
---@overload fun(eventName:System.String, maxEventPerHour:System.Int32, maxItems:System.Int32, vendorKey:System.String):UnityEngine.Analytics.AnalyticsResult
---@overload fun(eventName:System.String, maxEventPerHour:System.Int32, maxItems:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@overload fun(eventName:System.String, maxEventPerHour:System.Int32, maxItems:System.Int32, vendorKey:System.String, ver:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@overload fun(eventName:System.String, maxEventPerHour:System.Int32, maxItems:System.Int32, vendorKey:System.String, ver:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@param eventName System.String
---@param maxEventPerHour System.Int32
---@param maxItems System.Int32
---@param vendorKey System.String
---@param prefix System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.RegisterEvent(eventName, maxEventPerHour, maxItems, vendorKey, prefix)end
---@overload fun(eventName:System.String, parameters:System.Object, ver:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@overload fun(eventName:System.String, parameters:System.Object):UnityEngine.Analytics.AnalyticsResult
---@param eventName System.String
---@param parameters System.Object
---@param ver System.Int32
---@param prefix System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SendEvent(eventName, parameters, ver, prefix)end
---@class UnityEngine.Analytics.Gender : System.Enum
UnityEngine.Analytics.Gender = {}
---@type UnityEngine.Analytics.Gender
CS.UnityEngine.Analytics.Gender = UnityEngine.Analytics.Gender

---@return System.Int32 value:0
UnityEngine.Analytics.Gender.Male = 0
---@return System.Int32 value:1
UnityEngine.Analytics.Gender.Female = 1
---@return System.Int32 value:2
UnityEngine.Analytics.Gender.Unknown = 2

---@class UnityEngine.Analytics.AnalyticsResult : System.Enum
UnityEngine.Analytics.AnalyticsResult = {}
---@type UnityEngine.Analytics.AnalyticsResult
CS.UnityEngine.Analytics.AnalyticsResult = UnityEngine.Analytics.AnalyticsResult

---@return System.Int32 value:0
UnityEngine.Analytics.AnalyticsResult.Ok = 0
---@return System.Int32 value:1
UnityEngine.Analytics.AnalyticsResult.NotInitialized = 1
---@return System.Int32 value:2
UnityEngine.Analytics.AnalyticsResult.AnalyticsDisabled = 2
---@return System.Int32 value:3
UnityEngine.Analytics.AnalyticsResult.TooManyItems = 3
---@return System.Int32 value:4
UnityEngine.Analytics.AnalyticsResult.SizeLimitReached = 4
---@return System.Int32 value:5
UnityEngine.Analytics.AnalyticsResult.TooManyRequests = 5
---@return System.Int32 value:6
UnityEngine.Analytics.AnalyticsResult.InvalidData = 6
---@return System.Int32 value:7
UnityEngine.Analytics.AnalyticsResult.UnsupportedPlatform = 7

