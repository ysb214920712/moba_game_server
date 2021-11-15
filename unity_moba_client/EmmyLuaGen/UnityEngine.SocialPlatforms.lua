---@class UnityEngine.SocialPlatforms.Local : System.Object
---@field public localUser UnityEngine.SocialPlatforms.ILocalUser @  getter
UnityEngine.SocialPlatforms.Local = {}
---@type UnityEngine.SocialPlatforms.Local
CS.UnityEngine.SocialPlatforms.Local = UnityEngine.SocialPlatforms.Local

---@param userIDs System.String[]
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:LoadUsers(userIDs, callback)end
---@param id System.String
---@param progress System.Double
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:ReportProgress(id, progress, callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:LoadAchievementDescriptions(callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:LoadAchievements(callback)end
---@param score System.Int64
---@param board System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:ReportScore(score, board, callback)end
---@param leaderboardID System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Local:LoadScores(leaderboardID, callback)end
---@return System.Void
function UnityEngine.SocialPlatforms.Local:ShowAchievementsUI()end
---@return System.Void
function UnityEngine.SocialPlatforms.Local:ShowLeaderboardUI()end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.SocialPlatforms.Local:CreateLeaderboard()end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.SocialPlatforms.Local:CreateAchievement()end
---@class UnityEngine.SocialPlatforms.UserState : System.Enum
UnityEngine.SocialPlatforms.UserState = {}
---@type UnityEngine.SocialPlatforms.UserState
CS.UnityEngine.SocialPlatforms.UserState = UnityEngine.SocialPlatforms.UserState

---@return System.Int32 value:0
UnityEngine.SocialPlatforms.UserState.Online = 0
---@return System.Int32 value:1
UnityEngine.SocialPlatforms.UserState.OnlineAndAway = 1
---@return System.Int32 value:2
UnityEngine.SocialPlatforms.UserState.OnlineAndBusy = 2
---@return System.Int32 value:3
UnityEngine.SocialPlatforms.UserState.Offline = 3
---@return System.Int32 value:4
UnityEngine.SocialPlatforms.UserState.Playing = 4

---@class UnityEngine.SocialPlatforms.UserScope : System.Enum
UnityEngine.SocialPlatforms.UserScope = {}
---@type UnityEngine.SocialPlatforms.UserScope
CS.UnityEngine.SocialPlatforms.UserScope = UnityEngine.SocialPlatforms.UserScope

---@return System.Int32 value:0
UnityEngine.SocialPlatforms.UserScope.Global = 0
---@return System.Int32 value:1
UnityEngine.SocialPlatforms.UserScope.FriendsOnly = 1

---@class UnityEngine.SocialPlatforms.TimeScope : System.Enum
UnityEngine.SocialPlatforms.TimeScope = {}
---@type UnityEngine.SocialPlatforms.TimeScope
CS.UnityEngine.SocialPlatforms.TimeScope = UnityEngine.SocialPlatforms.TimeScope

---@return System.Int32 value:0
UnityEngine.SocialPlatforms.TimeScope.Today = 0
---@return System.Int32 value:1
UnityEngine.SocialPlatforms.TimeScope.Week = 1
---@return System.Int32 value:2
UnityEngine.SocialPlatforms.TimeScope.AllTime = 2

---@class UnityEngine.SocialPlatforms.Range : System.ValueType
---@field public from System.Int32
---@field public count System.Int32
UnityEngine.SocialPlatforms.Range = {}
---@type UnityEngine.SocialPlatforms.Range
CS.UnityEngine.SocialPlatforms.Range = UnityEngine.SocialPlatforms.Range

