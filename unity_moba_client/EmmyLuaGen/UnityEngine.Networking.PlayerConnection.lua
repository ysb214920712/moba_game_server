---@class UnityEngine.Networking.PlayerConnection.MessageEventArgs : System.Object
---@field public playerId System.Int32
---@field public data System.Byte[]
UnityEngine.Networking.PlayerConnection.MessageEventArgs = {}
---@type UnityEngine.Networking.PlayerConnection.MessageEventArgs
CS.UnityEngine.Networking.PlayerConnection.MessageEventArgs = UnityEngine.Networking.PlayerConnection.MessageEventArgs

---@class UnityEngine.Networking.PlayerConnection.PlayerConnection : UnityEngine.ScriptableObject
---@field public instance UnityEngine.Networking.PlayerConnection.PlayerConnection @static  getter
---@field public isConnected System.Boolean @  getter
UnityEngine.Networking.PlayerConnection.PlayerConnection = {}
---@type UnityEngine.Networking.PlayerConnection.PlayerConnection
CS.UnityEngine.Networking.PlayerConnection.PlayerConnection = UnityEngine.Networking.PlayerConnection.PlayerConnection

---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:OnEnable()end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Register(messageId, callback)end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Unregister(messageId, callback)end
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterConnection(callback)end
---@param callback UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterDisconnection(callback)end
---@param messageId System.Guid
---@param data System.Byte[]
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Send(messageId, data)end
---@param messageId System.Guid
---@param timeout System.Int32
---@return System.Boolean
function UnityEngine.Networking.PlayerConnection.PlayerConnection:BlockUntilRecvMsg(messageId, timeout)end
---@return System.Void
function UnityEngine.Networking.PlayerConnection.PlayerConnection:DisconnectAll()end
