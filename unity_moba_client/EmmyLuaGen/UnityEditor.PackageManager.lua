---@class UnityEditor.PackageManager.AuthorInfo : System.Object
---@field public name System.String @  getter
---@field public email System.String @  getter
---@field public url System.String @  getter
UnityEditor.PackageManager.AuthorInfo = {}
---@type UnityEditor.PackageManager.AuthorInfo
CS.UnityEditor.PackageManager.AuthorInfo = UnityEditor.PackageManager.AuthorInfo

---@class UnityEditor.PackageManager.BuildUtilities : System.Object
UnityEditor.PackageManager.BuildUtilities = {}
---@type UnityEditor.PackageManager.BuildUtilities
CS.UnityEditor.PackageManager.BuildUtilities = UnityEditor.PackageManager.BuildUtilities

---@param cb UnityEditor.PackageManager.IShouldIncludeInBuildCallback
---@return System.Void
function UnityEditor.PackageManager.BuildUtilities.RegisterShouldIncludeInBuildCallback(cb)end
---@class UnityEditor.PackageManager.Client : System.Object
UnityEditor.PackageManager.Client = {}
---@type UnityEditor.PackageManager.Client
CS.UnityEditor.PackageManager.Client = UnityEditor.PackageManager.Client

---@overload fun():UnityEditor.PackageManager.Requests.ListRequest
---@param offlineMode System.Boolean
---@return UnityEditor.PackageManager.Requests.ListRequest
function UnityEditor.PackageManager.Client.List(offlineMode)end
---@param packageIdOrName System.String
---@return UnityEditor.PackageManager.Requests.AddRequest
function UnityEditor.PackageManager.Client.Add(packageIdOrName)end
---@param packageIdOrName System.String
---@return UnityEditor.PackageManager.Requests.RemoveRequest
function UnityEditor.PackageManager.Client.Remove(packageIdOrName)end
---@param packageIdOrName System.String
---@return UnityEditor.PackageManager.Requests.SearchRequest
function UnityEditor.PackageManager.Client.Search(packageIdOrName)end
---@return UnityEditor.PackageManager.Requests.SearchRequest
function UnityEditor.PackageManager.Client.SearchAll()end
---@return UnityEditor.PackageManager.Requests.ResetToEditorDefaultsRequest
function UnityEditor.PackageManager.Client.ResetToEditorDefaults()end
---@class UnityEditor.PackageManager.DependencyInfo : System.ValueType
---@field public version System.String @  getter
---@field public name System.String @  getter
UnityEditor.PackageManager.DependencyInfo = {}
---@type UnityEditor.PackageManager.DependencyInfo
CS.UnityEditor.PackageManager.DependencyInfo = UnityEditor.PackageManager.DependencyInfo

---@class UnityEditor.PackageManager.Error : System.Object
---@field public errorCode UnityEditor.PackageManager.ErrorCode @  getter
---@field public message System.String @  getter
UnityEditor.PackageManager.Error = {}
---@type UnityEditor.PackageManager.Error
CS.UnityEditor.PackageManager.Error = UnityEditor.PackageManager.Error

---@class UnityEditor.PackageManager.ErrorCode : System.Enum
UnityEditor.PackageManager.ErrorCode = {}
---@type UnityEditor.PackageManager.ErrorCode
CS.UnityEditor.PackageManager.ErrorCode = UnityEditor.PackageManager.ErrorCode

---@return System.Int32 value:0
UnityEditor.PackageManager.ErrorCode.Unknown = 0
---@return System.Int32 value:1
UnityEditor.PackageManager.ErrorCode.NotFound = 1
---@return System.Int32 value:2
UnityEditor.PackageManager.ErrorCode.Forbidden = 2
---@return System.Int32 value:3
UnityEditor.PackageManager.ErrorCode.InvalidParameter = 3
---@return System.Int32 value:4
UnityEditor.PackageManager.ErrorCode.Conflict = 4

---@class UnityEditor.PackageManager.PackageCollection : System.Object
---@field public error UnityEditor.PackageManager.Error @  getter
UnityEditor.PackageManager.PackageCollection = {}
---@type UnityEditor.PackageManager.PackageCollection
CS.UnityEditor.PackageManager.PackageCollection = UnityEditor.PackageManager.PackageCollection

---@class UnityEditor.PackageManager.PackageInfo : System.Object
---@field public packageId System.String @  getter
---@field public version System.String @  getter
---@field public source UnityEditor.PackageManager.PackageSource @  getter
---@field public resolvedPath System.String @  getter
---@field public assetPath System.String @  getter
---@field public name System.String @  getter
---@field public displayName System.String @  getter
---@field public category System.String @  getter
---@field public description System.String @  getter
---@field public status UnityEditor.PackageManager.PackageStatus @  getter
---@field public errors UnityEditor.PackageManager.Error[] @  getter
---@field public versions UnityEditor.PackageManager.VersionsInfo @  getter
---@field public dependencies UnityEditor.PackageManager.DependencyInfo[] @  getter
---@field public resolvedDependencies UnityEditor.PackageManager.DependencyInfo[] @  getter
---@field public keywords System.String[] @  getter
---@field public author UnityEditor.PackageManager.AuthorInfo @  getter
UnityEditor.PackageManager.PackageInfo = {}
---@type UnityEditor.PackageManager.PackageInfo
CS.UnityEditor.PackageManager.PackageInfo = UnityEditor.PackageManager.PackageInfo

---@class UnityEditor.PackageManager.PackageSource : System.Enum
UnityEditor.PackageManager.PackageSource = {}
---@type UnityEditor.PackageManager.PackageSource
CS.UnityEditor.PackageManager.PackageSource = UnityEditor.PackageManager.PackageSource

---@return System.Int32 value:0
UnityEditor.PackageManager.PackageSource.Unknown = 0
---@return System.Int32 value:1
UnityEditor.PackageManager.PackageSource.Registry = 1
---@return System.Int32 value:2
UnityEditor.PackageManager.PackageSource.BuiltIn = 2
---@return System.Int32 value:3
UnityEditor.PackageManager.PackageSource.Embedded = 3
---@return System.Int32 value:4
UnityEditor.PackageManager.PackageSource.Local = 4
---@return System.Int32 value:5
UnityEditor.PackageManager.PackageSource.Git = 5

---@class UnityEditor.PackageManager.PackageStatus : System.Enum
UnityEditor.PackageManager.PackageStatus = {}
---@type UnityEditor.PackageManager.PackageStatus
CS.UnityEditor.PackageManager.PackageStatus = UnityEditor.PackageManager.PackageStatus

---@return System.Int32 value:0
UnityEditor.PackageManager.PackageStatus.Unknown = 0
---@return System.Int32 value:1
UnityEditor.PackageManager.PackageStatus.Unavailable = 1
---@return System.Int32 value:2
UnityEditor.PackageManager.PackageStatus.InProgress = 2
---@return System.Int32 value:3
UnityEditor.PackageManager.PackageStatus.Error = 3
---@return System.Int32 value:4
UnityEditor.PackageManager.PackageStatus.Available = 4

---@class UnityEditor.PackageManager.StatusCode : System.Enum
UnityEditor.PackageManager.StatusCode = {}
---@type UnityEditor.PackageManager.StatusCode
CS.UnityEditor.PackageManager.StatusCode = UnityEditor.PackageManager.StatusCode

---@return System.Int32 value:0
UnityEditor.PackageManager.StatusCode.InProgress = 0
---@return System.Int32 value:1
UnityEditor.PackageManager.StatusCode.Success = 1
---@return System.Int32 value:2
UnityEditor.PackageManager.StatusCode.Failure = 2

---@class UnityEditor.PackageManager.VersionsInfo : System.Object
---@field public all System.String[] @  getter
---@field public compatible System.String[] @  getter
---@field public recommended System.String @  getter
---@field public latest System.String @  getter
---@field public latestCompatible System.String @  getter
UnityEditor.PackageManager.VersionsInfo = {}
---@type UnityEditor.PackageManager.VersionsInfo
CS.UnityEditor.PackageManager.VersionsInfo = UnityEditor.PackageManager.VersionsInfo

