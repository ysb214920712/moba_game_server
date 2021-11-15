---@class UnityEngine.XR.WSA.Persistence.WorldAnchorStore : System.Object
---@field public anchorCount System.Int32 @  getter
UnityEngine.XR.WSA.Persistence.WorldAnchorStore = {}
---@type UnityEngine.XR.WSA.Persistence.WorldAnchorStore
CS.UnityEngine.XR.WSA.Persistence.WorldAnchorStore = UnityEngine.XR.WSA.Persistence.WorldAnchorStore

---@param onCompleted UnityEngine.XR.WSA.Persistence.WorldAnchorStore.GetAsyncDelegate
---@return System.Void
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore.GetAsync(onCompleted)end
---@param id System.String
---@param anchor UnityEngine.XR.WSA.WorldAnchor
---@return System.Boolean
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:Save(id, anchor)end
---@param id System.String
---@param go UnityEngine.GameObject
---@return UnityEngine.XR.WSA.WorldAnchor
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:Load(id, go)end
---@param id System.String
---@return System.Boolean
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:Delete(id)end
---@return System.Void
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:Clear()end
---@overload fun(ids:System.String[]):System.Int32
---@return System.String[]
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:GetAllIds()end
---@return System.Void
function UnityEngine.XR.WSA.Persistence.WorldAnchorStore:Dispose()end
