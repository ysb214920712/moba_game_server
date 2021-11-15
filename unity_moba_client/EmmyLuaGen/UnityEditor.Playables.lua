---@class UnityEditor.Playables.Utility : System.Object
UnityEditor.Playables.Utility = {}
---@type UnityEditor.Playables.Utility
CS.UnityEditor.Playables.Utility = UnityEditor.Playables.Utility

---@param value System.Action
---@return System.Void
function UnityEditor.Playables.Utility.add_graphCreated(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Playables.Utility.remove_graphCreated(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Playables.Utility.add_destroyingGraph(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Playables.Utility.remove_destroyingGraph(value)end
---@return UnityEngine.Playables.PlayableGraph[]
function UnityEditor.Playables.Utility.GetAllGraphs()end
