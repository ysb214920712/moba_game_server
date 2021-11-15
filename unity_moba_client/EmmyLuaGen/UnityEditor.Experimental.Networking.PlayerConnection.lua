---@class UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility : System.Object
UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility = {}
---@type UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility
CS.UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility = UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility

---@overload fun(parentWindow:UnityEditor.EditorWindow):UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState
---@param parentWindow UnityEditor.EditorWindow
---@param connectedCallback System.Action
---@return UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState
function UnityEditor.Experimental.Networking.PlayerConnection.EditorGUIUtility.GetAttachToPlayerState(parentWindow, connectedCallback)end
---@class UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI : System.Object
UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI = {}
---@type UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI
CS.UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI = UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI

---@overload fun(rect:UnityEngine.Rect, state:UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState):System.Void
---@param rect UnityEngine.Rect
---@param state UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState
---@param style UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.Experimental.Networking.PlayerConnection.EditorGUI.AttachToPlayerDropdown(rect, state, style)end
---@class UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout : System.Object
UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout = {}
---@type UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout
CS.UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout = UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout

---@overload fun(state:UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState):System.Void
---@param state UnityEngine.Experimental.Networking.PlayerConnection.IConnectionState
---@param style UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.Experimental.Networking.PlayerConnection.EditorGUILayout.AttachToPlayerDropdown(state, style)end
