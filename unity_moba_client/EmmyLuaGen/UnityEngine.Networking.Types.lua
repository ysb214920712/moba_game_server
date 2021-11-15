---@class UnityEngine.Networking.Types.NetworkAccessLevel : System.Enum
UnityEngine.Networking.Types.NetworkAccessLevel = {}
---@type UnityEngine.Networking.Types.NetworkAccessLevel
CS.UnityEngine.Networking.Types.NetworkAccessLevel = UnityEngine.Networking.Types.NetworkAccessLevel

---@return System.Int32 value:0
UnityEngine.Networking.Types.NetworkAccessLevel.Invalid = 0
---@return System.Int32 value:1
UnityEngine.Networking.Types.NetworkAccessLevel.User = 1
---@return System.Int32 value:2
UnityEngine.Networking.Types.NetworkAccessLevel.Owner = 2

---@class UnityEngine.Networking.Types.AppID : System.Enum
UnityEngine.Networking.Types.AppID = {}
---@type UnityEngine.Networking.Types.AppID
CS.UnityEngine.Networking.Types.AppID = UnityEngine.Networking.Types.AppID


---@class UnityEngine.Networking.Types.SourceID : System.Enum
UnityEngine.Networking.Types.SourceID = {}
---@type UnityEngine.Networking.Types.SourceID
CS.UnityEngine.Networking.Types.SourceID = UnityEngine.Networking.Types.SourceID


---@class UnityEngine.Networking.Types.NetworkID : System.Enum
UnityEngine.Networking.Types.NetworkID = {}
---@type UnityEngine.Networking.Types.NetworkID
CS.UnityEngine.Networking.Types.NetworkID = UnityEngine.Networking.Types.NetworkID


---@class UnityEngine.Networking.Types.NodeID : System.Enum
UnityEngine.Networking.Types.NodeID = {}
---@type UnityEngine.Networking.Types.NodeID
CS.UnityEngine.Networking.Types.NodeID = UnityEngine.Networking.Types.NodeID

---@return System.Int32 value:0
UnityEngine.Networking.Types.NodeID.Invalid = 0

---@class UnityEngine.Networking.Types.HostPriority : System.Enum
UnityEngine.Networking.Types.HostPriority = {}
---@type UnityEngine.Networking.Types.HostPriority
CS.UnityEngine.Networking.Types.HostPriority = UnityEngine.Networking.Types.HostPriority


---@class UnityEngine.Networking.Types.NetworkAccessToken : System.Object
---@field public array System.Byte[]
UnityEngine.Networking.Types.NetworkAccessToken = {}
---@type UnityEngine.Networking.Types.NetworkAccessToken
CS.UnityEngine.Networking.Types.NetworkAccessToken = UnityEngine.Networking.Types.NetworkAccessToken

---@return System.String
function UnityEngine.Networking.Types.NetworkAccessToken:GetByteString()end
---@return System.Boolean
function UnityEngine.Networking.Types.NetworkAccessToken:IsValid()end
