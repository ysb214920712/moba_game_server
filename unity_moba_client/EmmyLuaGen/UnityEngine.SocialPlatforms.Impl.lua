---@class UnityEngine.SocialPlatforms.Impl.LocalUser : UnityEngine.SocialPlatforms.Impl.UserProfile
---@field public friends UnityEngine.SocialPlatforms.IUserProfile[] @  getter
---@field public authenticated System.Boolean @  getter
---@field public underage System.Boolean @  getter
UnityEngine.SocialPlatforms.Impl.LocalUser = {}
---@type UnityEngine.SocialPlatforms.Impl.LocalUser
CS.UnityEngine.SocialPlatforms.Impl.LocalUser = UnityEngine.SocialPlatforms.Impl.LocalUser

---@overload fun(callback:System.Action):System.Void
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.LocalUser:Authenticate(callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.LocalUser:LoadFriends(callback)end
---@param friends UnityEngine.SocialPlatforms.IUserProfile[]
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetFriends(friends)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetAuthenticated(value)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetUnderage(value)end
---@class UnityEngine.SocialPlatforms.Impl.UserProfile : System.Object
---@field public userName System.String @  getter
---@field public id System.String @  getter
---@field public isFriend System.Boolean @  getter
---@field public state UnityEngine.SocialPlatforms.UserState @  getter
---@field public image UnityEngine.Texture2D @  getter
UnityEngine.SocialPlatforms.Impl.UserProfile = {}
---@type UnityEngine.SocialPlatforms.Impl.UserProfile
CS.UnityEngine.SocialPlatforms.Impl.UserProfile = UnityEngine.SocialPlatforms.Impl.UserProfile

---@return System.String
function UnityEngine.SocialPlatforms.Impl.UserProfile:ToString()end
---@param name System.String
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetUserName(name)end
---@param id System.String
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetUserID(id)end
---@param image UnityEngine.Texture2D
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetImage(image)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetIsFriend(value)end
---@param state UnityEngine.SocialPlatforms.UserState
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetState(state)end
---@class UnityEngine.SocialPlatforms.Impl.Achievement : System.Object
---@field public id System.String @ setter getter
---@field public percentCompleted System.Double @ setter getter
---@field public completed System.Boolean @  getter
---@field public hidden System.Boolean @  getter
---@field public lastReportedDate System.DateTime @  getter
UnityEngine.SocialPlatforms.Impl.Achievement = {}
---@type UnityEngine.SocialPlatforms.Impl.Achievement
CS.UnityEngine.SocialPlatforms.Impl.Achievement = UnityEngine.SocialPlatforms.Impl.Achievement

---@return System.String
function UnityEngine.SocialPlatforms.Impl.Achievement:ToString()end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Achievement:ReportProgress(callback)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Achievement:SetCompleted(value)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Achievement:SetHidden(value)end
---@param date System.DateTime
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Achievement:SetLastReportedDate(date)end
---@class UnityEngine.SocialPlatforms.Impl.AchievementDescription : System.Object
---@field public id System.String @ setter getter
---@field public title System.String @  getter
---@field public image UnityEngine.Texture2D @  getter
---@field public achievedDescription System.String @  getter
---@field public unachievedDescription System.String @  getter
---@field public hidden System.Boolean @  getter
---@field public points System.Int32 @  getter
UnityEngine.SocialPlatforms.Impl.AchievementDescription = {}
---@type UnityEngine.SocialPlatforms.Impl.AchievementDescription
CS.UnityEngine.SocialPlatforms.Impl.AchievementDescription = UnityEngine.SocialPlatforms.Impl.AchievementDescription

---@return System.String
function UnityEngine.SocialPlatforms.Impl.AchievementDescription:ToString()end
---@param image UnityEngine.Texture2D
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.AchievementDescription:SetImage(image)end
---@class UnityEngine.SocialPlatforms.Impl.Score : System.Object
---@field public leaderboardID System.String @ setter getter
---@field public value System.Int64 @ setter getter
---@field public date System.DateTime @  getter
---@field public formattedValue System.String @  getter
---@field public userID System.String @  getter
---@field public rank System.Int32 @  getter
UnityEngine.SocialPlatforms.Impl.Score = {}
---@type UnityEngine.SocialPlatforms.Impl.Score
CS.UnityEngine.SocialPlatforms.Impl.Score = UnityEngine.SocialPlatforms.Impl.Score

---@return System.String
function UnityEngine.SocialPlatforms.Impl.Score:ToString()end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Score:ReportScore(callback)end
---@param date System.DateTime
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Score:SetDate(date)end
---@param value System.String
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Score:SetFormattedValue(value)end
---@param userID System.String
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Score:SetUserID(userID)end
---@param rank System.Int32
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Score:SetRank(rank)end
---@class UnityEngine.SocialPlatforms.Impl.Leaderboard : System.Object
---@field public loading System.Boolean @  getter
---@field public id System.String @ setter getter
---@field public userScope UnityEngine.SocialPlatforms.UserScope @ setter getter
---@field public range UnityEngine.SocialPlatforms.Range @ setter getter
---@field public timeScope UnityEngine.SocialPlatforms.TimeScope @ setter getter
---@field public localUserScore UnityEngine.SocialPlatforms.IScore @  getter
---@field public maxRange System.UInt32 @  getter
---@field public scores UnityEngine.SocialPlatforms.IScore[] @  getter
---@field public title System.String @  getter
UnityEngine.SocialPlatforms.Impl.Leaderboard = {}
---@type UnityEngine.SocialPlatforms.Impl.Leaderboard
CS.UnityEngine.SocialPlatforms.Impl.Leaderboard = UnityEngine.SocialPlatforms.Impl.Leaderboard

---@param userIDs System.String[]
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetUserFilter(userIDs)end
---@return System.String
function UnityEngine.SocialPlatforms.Impl.Leaderboard:ToString()end
---@param callback System.Action
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:LoadScores(callback)end
---@param score UnityEngine.SocialPlatforms.IScore
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetLocalUserScore(score)end
---@param maxRange System.UInt32
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetMaxRange(maxRange)end
---@param scores UnityEngine.SocialPlatforms.IScore[]
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetScores(scores)end
---@param title System.String
---@return System.Void
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetTitle(title)end
---@return System.String[]
function UnityEngine.SocialPlatforms.Impl.Leaderboard:GetUserFilter()end
