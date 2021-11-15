---@class UnityEditor.ProjectWindowCallback.EndNameEditAction : UnityEngine.ScriptableObject
UnityEditor.ProjectWindowCallback.EndNameEditAction = {}
---@type UnityEditor.ProjectWindowCallback.EndNameEditAction
CS.UnityEditor.ProjectWindowCallback.EndNameEditAction = UnityEditor.ProjectWindowCallback.EndNameEditAction

---@return System.Void
function UnityEditor.ProjectWindowCallback.EndNameEditAction:OnEnable()end
---@param instanceId System.Int32
---@param pathName System.String
---@param resourceFile System.String
---@return System.Void
function UnityEditor.ProjectWindowCallback.EndNameEditAction:Action(instanceId, pathName, resourceFile)end
---@return System.Void
function UnityEditor.ProjectWindowCallback.EndNameEditAction:CleanUp()end
