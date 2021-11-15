---@class UnityEditor.Experimental.SceneManagement.PrefabStage : System.Object
---@field public scene UnityEngine.SceneManagement.Scene @  getter
---@field public prefabContentsRoot UnityEngine.GameObject @  getter
---@field public stageHandle UnityEditor.SceneManagement.StageHandle @  getter
---@field public prefabAssetPath System.String @  getter
UnityEditor.Experimental.SceneManagement.PrefabStage = {}
---@type UnityEditor.Experimental.SceneManagement.PrefabStage
CS.UnityEditor.Experimental.SceneManagement.PrefabStage = UnityEditor.Experimental.SceneManagement.PrefabStage

---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.add_prefabStageOpened(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.remove_prefabStageOpened(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.add_prefabStageClosing(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.remove_prefabStageClosing(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.add_prefabSaving(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.remove_prefabSaving(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.add_prefabSaved(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage.remove_prefabSaved(value)end
---@param gameObject UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.Experimental.SceneManagement.PrefabStage:IsPartOfPrefabContents(gameObject)end
---@return System.Void
function UnityEditor.Experimental.SceneManagement.PrefabStage:ClearDirtiness()end
---@class UnityEditor.Experimental.SceneManagement.PrefabStageUtility : System.Object
UnityEditor.Experimental.SceneManagement.PrefabStageUtility = {}
---@type UnityEditor.Experimental.SceneManagement.PrefabStageUtility
CS.UnityEditor.Experimental.SceneManagement.PrefabStageUtility = UnityEditor.Experimental.SceneManagement.PrefabStageUtility

---@return UnityEditor.Experimental.SceneManagement.PrefabStage
function UnityEditor.Experimental.SceneManagement.PrefabStageUtility.GetCurrentPrefabStage()end
---@param gameObject UnityEngine.GameObject
---@return UnityEditor.Experimental.SceneManagement.PrefabStage
function UnityEditor.Experimental.SceneManagement.PrefabStageUtility.GetPrefabStage(gameObject)end
