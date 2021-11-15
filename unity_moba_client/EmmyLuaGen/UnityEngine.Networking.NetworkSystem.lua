---@class UnityEngine.Networking.NetworkSystem.StringMessage : UnityEngine.Networking.MessageBase
---@field public value System.String
UnityEngine.Networking.NetworkSystem.StringMessage = {}
---@type UnityEngine.Networking.NetworkSystem.StringMessage
CS.UnityEngine.Networking.NetworkSystem.StringMessage = UnityEngine.Networking.NetworkSystem.StringMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.StringMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.StringMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.IntegerMessage : UnityEngine.Networking.MessageBase
---@field public value System.Int32
UnityEngine.Networking.NetworkSystem.IntegerMessage = {}
---@type UnityEngine.Networking.NetworkSystem.IntegerMessage
CS.UnityEngine.Networking.NetworkSystem.IntegerMessage = UnityEngine.Networking.NetworkSystem.IntegerMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.IntegerMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.IntegerMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.EmptyMessage : UnityEngine.Networking.MessageBase
UnityEngine.Networking.NetworkSystem.EmptyMessage = {}
---@type UnityEngine.Networking.NetworkSystem.EmptyMessage
CS.UnityEngine.Networking.NetworkSystem.EmptyMessage = UnityEngine.Networking.NetworkSystem.EmptyMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.EmptyMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.EmptyMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.ErrorMessage : UnityEngine.Networking.MessageBase
---@field public errorCode System.Int32
UnityEngine.Networking.NetworkSystem.ErrorMessage = {}
---@type UnityEngine.Networking.NetworkSystem.ErrorMessage
CS.UnityEngine.Networking.NetworkSystem.ErrorMessage = UnityEngine.Networking.NetworkSystem.ErrorMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.ErrorMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.ErrorMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.ReadyMessage : UnityEngine.Networking.NetworkSystem.EmptyMessage
UnityEngine.Networking.NetworkSystem.ReadyMessage = {}
---@type UnityEngine.Networking.NetworkSystem.ReadyMessage
CS.UnityEngine.Networking.NetworkSystem.ReadyMessage = UnityEngine.Networking.NetworkSystem.ReadyMessage

---@class UnityEngine.Networking.NetworkSystem.NotReadyMessage : UnityEngine.Networking.NetworkSystem.EmptyMessage
UnityEngine.Networking.NetworkSystem.NotReadyMessage = {}
---@type UnityEngine.Networking.NetworkSystem.NotReadyMessage
CS.UnityEngine.Networking.NetworkSystem.NotReadyMessage = UnityEngine.Networking.NetworkSystem.NotReadyMessage

---@class UnityEngine.Networking.NetworkSystem.AddPlayerMessage : UnityEngine.Networking.MessageBase
---@field public playerControllerId System.Int16
---@field public msgSize System.Int32
---@field public msgData System.Byte[]
UnityEngine.Networking.NetworkSystem.AddPlayerMessage = {}
---@type UnityEngine.Networking.NetworkSystem.AddPlayerMessage
CS.UnityEngine.Networking.NetworkSystem.AddPlayerMessage = UnityEngine.Networking.NetworkSystem.AddPlayerMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.AddPlayerMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.AddPlayerMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.RemovePlayerMessage : UnityEngine.Networking.MessageBase
---@field public playerControllerId System.Int16
UnityEngine.Networking.NetworkSystem.RemovePlayerMessage = {}
---@type UnityEngine.Networking.NetworkSystem.RemovePlayerMessage
CS.UnityEngine.Networking.NetworkSystem.RemovePlayerMessage = UnityEngine.Networking.NetworkSystem.RemovePlayerMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.RemovePlayerMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.RemovePlayerMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage : UnityEngine.Networking.MessageBase
---@field public connectionId System.Int32
---@field public netId UnityEngine.Networking.NetworkInstanceId
---@field public authorityState System.Boolean
UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage = {}
---@type UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage
CS.UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage = UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerAuthorityMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.PeerInfoPlayer : System.ValueType
---@field public netId UnityEngine.Networking.NetworkInstanceId
---@field public playerControllerId System.Int16
UnityEngine.Networking.NetworkSystem.PeerInfoPlayer = {}
---@type UnityEngine.Networking.NetworkSystem.PeerInfoPlayer
CS.UnityEngine.Networking.NetworkSystem.PeerInfoPlayer = UnityEngine.Networking.NetworkSystem.PeerInfoPlayer

---@class UnityEngine.Networking.NetworkSystem.PeerInfoMessage : UnityEngine.Networking.MessageBase
---@field public connectionId System.Int32
---@field public address System.String
---@field public port System.Int32
---@field public isHost System.Boolean
---@field public isYou System.Boolean
---@field public playerIds UnityEngine.Networking.NetworkSystem.PeerInfoPlayer[]
UnityEngine.Networking.NetworkSystem.PeerInfoMessage = {}
---@type UnityEngine.Networking.NetworkSystem.PeerInfoMessage
CS.UnityEngine.Networking.NetworkSystem.PeerInfoMessage = UnityEngine.Networking.NetworkSystem.PeerInfoMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerInfoMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerInfoMessage:Serialize(writer)end
---@return System.String
function UnityEngine.Networking.NetworkSystem.PeerInfoMessage:ToString()end
---@class UnityEngine.Networking.NetworkSystem.PeerListMessage : UnityEngine.Networking.MessageBase
---@field public peers UnityEngine.Networking.NetworkSystem.PeerInfoMessage[]
---@field public oldServerConnectionId System.Int32
UnityEngine.Networking.NetworkSystem.PeerListMessage = {}
---@type UnityEngine.Networking.NetworkSystem.PeerListMessage
CS.UnityEngine.Networking.NetworkSystem.PeerListMessage = UnityEngine.Networking.NetworkSystem.PeerListMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerListMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.PeerListMessage:Serialize(writer)end
---@class UnityEngine.Networking.NetworkSystem.ReconnectMessage : UnityEngine.Networking.MessageBase
---@field public oldConnectionId System.Int32
---@field public playerControllerId System.Int16
---@field public netId UnityEngine.Networking.NetworkInstanceId
---@field public msgSize System.Int32
---@field public msgData System.Byte[]
UnityEngine.Networking.NetworkSystem.ReconnectMessage = {}
---@type UnityEngine.Networking.NetworkSystem.ReconnectMessage
CS.UnityEngine.Networking.NetworkSystem.ReconnectMessage = UnityEngine.Networking.NetworkSystem.ReconnectMessage

---@param reader UnityEngine.Networking.NetworkReader
---@return System.Void
function UnityEngine.Networking.NetworkSystem.ReconnectMessage:Deserialize(reader)end
---@param writer UnityEngine.Networking.NetworkWriter
---@return System.Void
function UnityEngine.Networking.NetworkSystem.ReconnectMessage:Serialize(writer)end
