---@class UnityEditor.Build.Reporting.BuildFile : System.ValueType
---@field public path System.String @  getter
---@field public role System.String @  getter
---@field public size System.UInt64 @  getter
UnityEditor.Build.Reporting.BuildFile = {}
---@type UnityEditor.Build.Reporting.BuildFile
CS.UnityEditor.Build.Reporting.BuildFile = UnityEditor.Build.Reporting.BuildFile

---@return System.String
function UnityEditor.Build.Reporting.BuildFile:ToString()end
---@class UnityEditor.Build.Reporting.BuildReport : UnityEngine.Object
---@field public files UnityEditor.Build.Reporting.BuildFile[] @  getter
---@field public steps UnityEditor.Build.Reporting.BuildStep[] @  getter
---@field public summary UnityEditor.Build.Reporting.BuildSummary @  getter
---@field public strippingInfo UnityEditor.Build.Reporting.StrippingInfo @  getter
UnityEditor.Build.Reporting.BuildReport = {}
---@type UnityEditor.Build.Reporting.BuildReport
CS.UnityEditor.Build.Reporting.BuildReport = UnityEditor.Build.Reporting.BuildReport

---@class UnityEditor.Build.Reporting.BuildResult : System.Enum
UnityEditor.Build.Reporting.BuildResult = {}
---@type UnityEditor.Build.Reporting.BuildResult
CS.UnityEditor.Build.Reporting.BuildResult = UnityEditor.Build.Reporting.BuildResult

---@return System.Int32 value:0
UnityEditor.Build.Reporting.BuildResult.Unknown = 0
---@return System.Int32 value:1
UnityEditor.Build.Reporting.BuildResult.Succeeded = 1
---@return System.Int32 value:2
UnityEditor.Build.Reporting.BuildResult.Failed = 2
---@return System.Int32 value:3
UnityEditor.Build.Reporting.BuildResult.Cancelled = 3

---@class UnityEditor.Build.Reporting.BuildStep : System.ValueType
---@field public name System.String @  getter
---@field public duration System.TimeSpan @  getter
---@field public messages UnityEditor.Build.Reporting.BuildStepMessage[] @  getter
---@field public depth System.Int32 @  getter
UnityEditor.Build.Reporting.BuildStep = {}
---@type UnityEditor.Build.Reporting.BuildStep
CS.UnityEditor.Build.Reporting.BuildStep = UnityEditor.Build.Reporting.BuildStep

---@return System.String
function UnityEditor.Build.Reporting.BuildStep:ToString()end
---@class UnityEditor.Build.Reporting.BuildStepMessage : System.ValueType
---@field public type UnityEngine.LogType @  getter
---@field public content System.String @  getter
UnityEditor.Build.Reporting.BuildStepMessage = {}
---@type UnityEditor.Build.Reporting.BuildStepMessage
CS.UnityEditor.Build.Reporting.BuildStepMessage = UnityEditor.Build.Reporting.BuildStepMessage

---@class UnityEditor.Build.Reporting.BuildSummary : System.ValueType
---@field public buildStartedAt System.DateTime @  getter
---@field public guid UnityEditor.GUID @  getter
---@field public platform UnityEditor.BuildTarget @  getter
---@field public platformGroup UnityEditor.BuildTargetGroup @  getter
---@field public options UnityEditor.BuildOptions @  getter
---@field public outputPath System.String @  getter
---@field public totalSize System.UInt64 @  getter
---@field public totalTime System.TimeSpan @  getter
---@field public buildEndedAt System.DateTime @  getter
---@field public totalErrors System.Int32 @  getter
---@field public totalWarnings System.Int32 @  getter
---@field public result UnityEditor.Build.Reporting.BuildResult @  getter
UnityEditor.Build.Reporting.BuildSummary = {}
---@type UnityEditor.Build.Reporting.BuildSummary
CS.UnityEditor.Build.Reporting.BuildSummary = UnityEditor.Build.Reporting.BuildSummary

---@class UnityEditor.Build.Reporting.CommonRoles : System.Object
---@field public scene System.String @static  getter
---@field public sharedAssets System.String @static  getter
---@field public resourcesFile System.String @static  getter
---@field public assetBundle System.String @static  getter
---@field public manifestAssetBundle System.String @static  getter
---@field public assetBundleTextManifest System.String @static  getter
---@field public managedLibrary System.String @static  getter
---@field public dependentManagedLibrary System.String @static  getter
---@field public executable System.String @static  getter
---@field public streamingResourceFile System.String @static  getter
---@field public streamingAsset System.String @static  getter
---@field public bootConfig System.String @static  getter
---@field public builtInResources System.String @static  getter
---@field public builtInShaders System.String @static  getter
---@field public appInfo System.String @static  getter
---@field public managedEngineApi System.String @static  getter
---@field public monoRuntime System.String @static  getter
---@field public monoConfig System.String @static  getter
---@field public debugInfo System.String @static  getter
---@field public globalGameManagers System.String @static  getter
---@field public crashHandler System.String @static  getter
---@field public engineLibrary System.String @static  getter
UnityEditor.Build.Reporting.CommonRoles = {}
---@type UnityEditor.Build.Reporting.CommonRoles
CS.UnityEditor.Build.Reporting.CommonRoles = UnityEditor.Build.Reporting.CommonRoles

---@class UnityEditor.Build.Reporting.StrippingInfo : UnityEngine.ScriptableObject
---@field public includedModules System.Collections.Generic.IEnumerable @  getter
UnityEditor.Build.Reporting.StrippingInfo = {}
---@type UnityEditor.Build.Reporting.StrippingInfo
CS.UnityEditor.Build.Reporting.StrippingInfo = UnityEditor.Build.Reporting.StrippingInfo

---@param entityName System.String
---@return System.Collections.Generic.IEnumerable
function UnityEditor.Build.Reporting.StrippingInfo:GetReasonsForIncluding(entityName)end
