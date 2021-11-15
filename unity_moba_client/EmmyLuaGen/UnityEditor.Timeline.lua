---@class UnityEditor.Timeline.TimelineEditor : System.Object
---@field public inspectedDirector UnityEngine.Playables.PlayableDirector @static  getter
---@field public masterDirector UnityEngine.Playables.PlayableDirector @static  getter
---@field public inspectedAsset UnityEngine.Timeline.TimelineAsset @static  getter
---@field public masterAsset UnityEngine.Timeline.TimelineAsset @static  getter
---@field public playableDirector UnityEngine.Playables.PlayableDirector @static  getter
---@field public timelineAsset UnityEngine.Timeline.TimelineAsset @static  getter
UnityEditor.Timeline.TimelineEditor = {}
---@type UnityEditor.Timeline.TimelineEditor
CS.UnityEditor.Timeline.TimelineEditor = UnityEditor.Timeline.TimelineEditor

---@param reason UnityEditor.Timeline.RefreshReason
---@return System.Void
function UnityEditor.Timeline.TimelineEditor.Refresh(reason)end
---@class UnityEditor.Timeline.RefreshReason : System.Enum
UnityEditor.Timeline.RefreshReason = {}
---@type UnityEditor.Timeline.RefreshReason
CS.UnityEditor.Timeline.RefreshReason = UnityEditor.Timeline.RefreshReason

---@return System.Int32 value:1
UnityEditor.Timeline.RefreshReason.WindowNeedsRedraw = 1
---@return System.Int32 value:2
UnityEditor.Timeline.RefreshReason.SceneNeedsUpdate = 2

---@class UnityEditor.Timeline.DirectorNamedColorInspector : UnityEditor.Editor
UnityEditor.Timeline.DirectorNamedColorInspector = {}
---@type UnityEditor.Timeline.DirectorNamedColorInspector
CS.UnityEditor.Timeline.DirectorNamedColorInspector = UnityEditor.Timeline.DirectorNamedColorInspector

---@return System.Void
function UnityEditor.Timeline.DirectorNamedColorInspector:OnInspectorGUI()end
