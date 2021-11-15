---@class UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform : System.Object
---@field public localUser UnityEngine.SocialPlatforms.ILocalUser @  getter
UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform = {}
---@type UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
CS.UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform = UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform

---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadAchievementDescriptions(callback)end
---@param id System.String
---@param progress System.Double
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ReportProgress(id, progress, callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadAchievements(callback)end
---@param score System.Int64
---@param board System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ReportScore(score, board, callback)end
---@overload fun(board:UnityEngine.SocialPlatforms.ILeaderboard, callback:System.Action):System.Void
---@param category System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadScores(category, callback)end
---@param board UnityEngine.SocialPlatforms.ILeaderboard
---@return System.Boolean
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:GetLoading(board)end
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ShowAchievementsUI()end
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ShowLeaderboardUI()end
---@param userIds System.String[]
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadUsers(userIds, callback)end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:CreateLeaderboard()end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:CreateAchievement()end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.ResetAllAchievements(callback)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.ShowDefaultAchievementCompletionBanner(value)end
---@param leaderboardID System.String
---@param timeScope UnityEngine.SocialPlatforms.TimeScope
---@return System.Void
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.ShowLeaderboardUI(leaderboardID, timeScope)end
