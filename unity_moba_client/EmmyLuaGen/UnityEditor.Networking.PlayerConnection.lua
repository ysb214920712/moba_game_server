---@class UnityEditor.Networking.PlayerConnection.ConnectedPlayer : System.Object
---@field public PlayerId System.Int32 @  getter
---@field public playerId System.Int32 @  getter
---@field public name System.String @  getter
UnityEditor.Networking.PlayerConnection.ConnectedPlayer = {}
---@type UnityEditor.Networking.PlayerConnection.ConnectedPlayer
CS.UnityEditor.Networking.PlayerConnection.ConnectedPlayer = UnityEditor.Networking.PlayerConnection.ConnectedPlayer

---@class UnityEditor.Networking.PlayerConnection.EditorConnection : UnityEditor.ScriptableSingleton
---@field public ConnectedPlayers System.Collections.Generic.List @  getter
UnityEditor.Networking.PlayerConnection.EditorConnection = {}
---@type UnityEditor.Networking.PlayerConnection.EditorConnection
CS.UnityEditor.Networking.PlayerConnection.EditorConnection = UnityEditor.Networking.PlayerConnection.EditorConnection

---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:Initialize()end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:Register(messageId, callback)end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:Unregister(messageId, callback)end
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:RegisterConnection(callback)end
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:RegisterDisconnection(callback)end
---@overload fun(messageId:System.Guid, data:System.Byte[], playerId:System.Int32):System.Void
---@param messageId System.Guid
---@param data System.Byte[]
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:Send(messageId, data)end
---@return System.Void
function UnityEditor.Networking.PlayerConnection.EditorConnection:DisconnectAll()end
