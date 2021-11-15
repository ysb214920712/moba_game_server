---@class UnityEditor.EventSystems.EventSystemEditor : UnityEditor.Editor
UnityEditor.EventSystems.EventSystemEditor = {}
---@type UnityEditor.EventSystems.EventSystemEditor
CS.UnityEditor.EventSystems.EventSystemEditor = UnityEditor.EventSystems.EventSystemEditor

---@return System.Void
function UnityEditor.EventSystems.EventSystemEditor:OnInspectorGUI()end
---@return System.Boolean
function UnityEditor.EventSystems.EventSystemEditor:HasPreviewGUI()end
---@return System.Boolean
function UnityEditor.EventSystems.EventSystemEditor:RequiresConstantRepaint()end
---@param rect UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.EventSystems.EventSystemEditor:OnPreviewGUI(rect, background)end
---@class UnityEditor.EventSystems.EventTriggerEditor : UnityEditor.Editor
UnityEditor.EventSystems.EventTriggerEditor = {}
---@type UnityEditor.EventSystems.EventTriggerEditor
CS.UnityEditor.EventSystems.EventTriggerEditor = UnityEditor.EventSystems.EventTriggerEditor

---@return System.Void
function UnityEditor.EventSystems.EventTriggerEditor:OnInspectorGUI()end
