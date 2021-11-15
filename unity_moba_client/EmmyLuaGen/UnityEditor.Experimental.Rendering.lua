---@class UnityEditor.Experimental.Rendering.SceneStateHash : System.ValueType
---@field public sceneObjectsHash UnityEngine.Hash128 @  getter
---@field public skySettingsHash UnityEngine.Hash128 @  getter
---@field public ambientProbeHash UnityEngine.Hash128 @  getter
UnityEditor.Experimental.Rendering.SceneStateHash = {}
---@type UnityEditor.Experimental.Rendering.SceneStateHash
CS.UnityEditor.Experimental.Rendering.SceneStateHash = UnityEditor.Experimental.Rendering.SceneStateHash

---@overload fun(obj:System.Object):System.Boolean
---@param other UnityEditor.Experimental.Rendering.SceneStateHash
---@return System.Boolean
function UnityEditor.Experimental.Rendering.SceneStateHash:Equals(other)end
---@return System.Int32
function UnityEditor.Experimental.Rendering.SceneStateHash:GetHashCode()end
---@class UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem : System.Object
---@field public stageCount System.Int32 @  getter
---@field public stateHash UnityEngine.Hash128 @ setter getter
UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem = {}
---@type UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem
CS.UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem = UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem

---@param sceneStateHash UnityEditor.Experimental.Rendering.SceneStateHash
---@param handle UnityEditor.Experimental.Rendering.IScriptableBakedReflectionSystemStageNotifier
---@return System.Void
function UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem:Tick(sceneStateHash, handle)end
---@return System.Void
function UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem:SynchronizeReflectionProbes()end
---@return System.Void
function UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem:Clear()end
---@return System.Void
function UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem:Cancel()end
---@return System.Boolean
function UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystem:BakeAllReflectionProbes()end
---@class UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystemSettings : System.Object
---@field public system UnityEditor.Experimental.Rendering.IScriptableBakedReflectionSystem @static setter getter
UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystemSettings = {}
---@type UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystemSettings
CS.UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystemSettings = UnityEditor.Experimental.Rendering.ScriptableBakedReflectionSystemSettings

