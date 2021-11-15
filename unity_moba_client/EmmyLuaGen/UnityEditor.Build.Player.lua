---@class UnityEditor.Build.Player.ScriptCompilationOptions : System.Enum
UnityEditor.Build.Player.ScriptCompilationOptions = {}
---@type UnityEditor.Build.Player.ScriptCompilationOptions
CS.UnityEditor.Build.Player.ScriptCompilationOptions = UnityEditor.Build.Player.ScriptCompilationOptions

---@return System.Int32 value:0
UnityEditor.Build.Player.ScriptCompilationOptions.None = 0
---@return System.Int32 value:1
UnityEditor.Build.Player.ScriptCompilationOptions.DevelopmentBuild = 1
---@return System.Int32 value:2
UnityEditor.Build.Player.ScriptCompilationOptions.Assertions = 2

---@class UnityEditor.Build.Player.ScriptCompilationSettings : System.ValueType
---@field public target UnityEditor.BuildTarget @ setter getter
---@field public group UnityEditor.BuildTargetGroup @ setter getter
---@field public options UnityEditor.Build.Player.ScriptCompilationOptions @ setter getter
UnityEditor.Build.Player.ScriptCompilationSettings = {}
---@type UnityEditor.Build.Player.ScriptCompilationSettings
CS.UnityEditor.Build.Player.ScriptCompilationSettings = UnityEditor.Build.Player.ScriptCompilationSettings

---@class UnityEditor.Build.Player.ScriptCompilationResult : System.ValueType
---@field public assemblies System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public typeDB UnityEditor.Build.Player.TypeDB @  getter
UnityEditor.Build.Player.ScriptCompilationResult = {}
---@type UnityEditor.Build.Player.ScriptCompilationResult
CS.UnityEditor.Build.Player.ScriptCompilationResult = UnityEditor.Build.Player.ScriptCompilationResult

---@class UnityEditor.Build.Player.PlayerBuildInterface : System.Object
---@field public ExtraTypesProvider System.Func
UnityEditor.Build.Player.PlayerBuildInterface = {}
---@type UnityEditor.Build.Player.PlayerBuildInterface
CS.UnityEditor.Build.Player.PlayerBuildInterface = UnityEditor.Build.Player.PlayerBuildInterface

---@param input UnityEditor.Build.Player.ScriptCompilationSettings
---@param outputFolder System.String
---@return UnityEditor.Build.Player.ScriptCompilationResult
function UnityEditor.Build.Player.PlayerBuildInterface.CompilePlayerScripts(input, outputFolder)end
---@class UnityEditor.Build.Player.TypeDB : System.Object
UnityEditor.Build.Player.TypeDB = {}
---@type UnityEditor.Build.Player.TypeDB
CS.UnityEditor.Build.Player.TypeDB = UnityEditor.Build.Player.TypeDB

---@return System.Void
function UnityEditor.Build.Player.TypeDB:Dispose()end
---@return UnityEngine.Hash128
function UnityEditor.Build.Player.TypeDB:GetHash128()end
---@param obj System.Object
---@return System.Boolean
function UnityEditor.Build.Player.TypeDB:Equals(obj)end
---@return System.Int32
function UnityEditor.Build.Player.TypeDB:GetHashCode()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function UnityEditor.Build.Player.TypeDB:GetObjectData(info, context)end
