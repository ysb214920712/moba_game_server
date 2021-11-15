---@class UnityEngine.XR.WSA.Sharing.SerializationCompletionReason : System.Enum
UnityEngine.XR.WSA.Sharing.SerializationCompletionReason = {}
---@type UnityEngine.XR.WSA.Sharing.SerializationCompletionReason
CS.UnityEngine.XR.WSA.Sharing.SerializationCompletionReason = UnityEngine.XR.WSA.Sharing.SerializationCompletionReason

---@return System.Int32 value:0
UnityEngine.XR.WSA.Sharing.SerializationCompletionReason.Succeeded = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Sharing.SerializationCompletionReason.NotSupported = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Sharing.SerializationCompletionReason.AccessDenied = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.Sharing.SerializationCompletionReason.UnknownError = 3

---@class UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch : System.Object
---@field public anchorCount System.Int32 @  getter
UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch = {}
---@type UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch
CS.UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch = UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch

---@param transferBatch UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch
---@param onDataAvailable UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.SerializationDataAvailableDelegate
---@param onCompleted UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.SerializationCompleteDelegate
---@return System.Void
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.ExportAsync(transferBatch, onDataAvailable, onCompleted)end
---@overload fun(serializedData:System.Byte[], offset:System.Int32, length:System.Int32, onComplete:UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.DeserializationCompleteDelegate):System.Void
---@param serializedData System.Byte[]
---@param onComplete UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.DeserializationCompleteDelegate
---@return System.Void
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch.ImportAsync(serializedData, onComplete)end
---@param id System.String
---@param anchor UnityEngine.XR.WSA.WorldAnchor
---@return System.Boolean
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch:AddWorldAnchor(id, anchor)end
---@overload fun(ids:System.String[]):System.Int32
---@return System.String[]
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch:GetAllIds()end
---@param id System.String
---@param go UnityEngine.GameObject
---@return UnityEngine.XR.WSA.WorldAnchor
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch:LockObject(id, go)end
---@return System.Void
function UnityEngine.XR.WSA.Sharing.WorldAnchorTransferBatch:Dispose()end
