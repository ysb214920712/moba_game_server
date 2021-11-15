---@class UnityEngine.Experimental.AI.PolygonId : System.ValueType
UnityEngine.Experimental.AI.PolygonId = {}
---@type UnityEngine.Experimental.AI.PolygonId
CS.UnityEngine.Experimental.AI.PolygonId = UnityEngine.Experimental.AI.PolygonId

---@return System.Boolean
function UnityEngine.Experimental.AI.PolygonId:IsNull()end
---@param x UnityEngine.Experimental.AI.PolygonId
---@param y UnityEngine.Experimental.AI.PolygonId
---@return System.Boolean
function UnityEngine.Experimental.AI.PolygonId.op_Equality(x, y)end
---@param x UnityEngine.Experimental.AI.PolygonId
---@param y UnityEngine.Experimental.AI.PolygonId
---@return System.Boolean
function UnityEngine.Experimental.AI.PolygonId.op_Inequality(x, y)end
---@return System.Int32
function UnityEngine.Experimental.AI.PolygonId:GetHashCode()end
---@overload fun(obj:System.Object):System.Boolean
---@param rhs UnityEngine.Experimental.AI.PolygonId
---@return System.Boolean
function UnityEngine.Experimental.AI.PolygonId:Equals(rhs)end
---@class UnityEngine.Experimental.AI.NavMeshLocation : System.ValueType
---@field public polygon UnityEngine.Experimental.AI.PolygonId @  getter
---@field public position UnityEngine.Vector3 @  getter
UnityEngine.Experimental.AI.NavMeshLocation = {}
---@type UnityEngine.Experimental.AI.NavMeshLocation
CS.UnityEngine.Experimental.AI.NavMeshLocation = UnityEngine.Experimental.AI.NavMeshLocation

---@class UnityEngine.Experimental.AI.PathQueryStatus : System.Enum
UnityEngine.Experimental.AI.PathQueryStatus = {}
---@type UnityEngine.Experimental.AI.PathQueryStatus
CS.UnityEngine.Experimental.AI.PathQueryStatus = UnityEngine.Experimental.AI.PathQueryStatus

---@return System.Int32 value:1
UnityEngine.Experimental.AI.PathQueryStatus.WrongMagic = 1
---@return System.Int32 value:2
UnityEngine.Experimental.AI.PathQueryStatus.WrongVersion = 2
---@return System.Int32 value:4
UnityEngine.Experimental.AI.PathQueryStatus.OutOfMemory = 4
---@return System.Int32 value:8
UnityEngine.Experimental.AI.PathQueryStatus.InvalidParam = 8

---@class UnityEngine.Experimental.AI.NavMeshPolyTypes : System.Enum
UnityEngine.Experimental.AI.NavMeshPolyTypes = {}
---@type UnityEngine.Experimental.AI.NavMeshPolyTypes
CS.UnityEngine.Experimental.AI.NavMeshPolyTypes = UnityEngine.Experimental.AI.NavMeshPolyTypes

---@return System.Int32 value:0
UnityEngine.Experimental.AI.NavMeshPolyTypes.Ground = 0
---@return System.Int32 value:1
UnityEngine.Experimental.AI.NavMeshPolyTypes.OffMeshConnection = 1

---@class UnityEngine.Experimental.AI.NavMeshWorld : System.ValueType
UnityEngine.Experimental.AI.NavMeshWorld = {}
---@type UnityEngine.Experimental.AI.NavMeshWorld
CS.UnityEngine.Experimental.AI.NavMeshWorld = UnityEngine.Experimental.AI.NavMeshWorld

---@return System.Boolean
function UnityEngine.Experimental.AI.NavMeshWorld:IsValid()end
---@return UnityEngine.Experimental.AI.NavMeshWorld
function UnityEngine.Experimental.AI.NavMeshWorld.GetDefaultWorld()end
---@param job Unity.Jobs.JobHandle
---@return System.Void
function UnityEngine.Experimental.AI.NavMeshWorld:AddDependency(job)end
---@class UnityEngine.Experimental.AI.NavMeshQuery : System.ValueType
UnityEngine.Experimental.AI.NavMeshQuery = {}
---@type UnityEngine.Experimental.AI.NavMeshQuery
CS.UnityEngine.Experimental.AI.NavMeshQuery = UnityEngine.Experimental.AI.NavMeshQuery

---@return System.Void
function UnityEngine.Experimental.AI.NavMeshQuery:Dispose()end
---@overload fun(start:UnityEngine.Experimental.AI.NavMeshLocation, _end:UnityEngine.Experimental.AI.NavMeshLocation, areaMask:System.Int32):UnityEngine.Experimental.AI.PathQueryStatus
---@overload fun(start:UnityEngine.Experimental.AI.NavMeshLocation, _end:UnityEngine.Experimental.AI.NavMeshLocation):UnityEngine.Experimental.AI.PathQueryStatus
---@param start UnityEngine.Experimental.AI.NavMeshLocation
---@param _end UnityEngine.Experimental.AI.NavMeshLocation
---@param areaMask System.Int32
---@param costs Unity.Collections.NativeArray
---@return UnityEngine.Experimental.AI.PathQueryStatus
function UnityEngine.Experimental.AI.NavMeshQuery:BeginFindPath(start, _end, areaMask, costs)end
---@param iterations System.Int32
---@param iterationsPerformed System.Int32
---@return UnityEngine.Experimental.AI.PathQueryStatus
function UnityEngine.Experimental.AI.NavMeshQuery:UpdateFindPath(iterations, iterationsPerformed)end
---@param pathSize System.Int32
---@return UnityEngine.Experimental.AI.PathQueryStatus
function UnityEngine.Experimental.AI.NavMeshQuery:EndFindPath(pathSize)end
---@param path Unity.Collections.NativeSlice
---@return System.Int32
function UnityEngine.Experimental.AI.NavMeshQuery:GetPathResult(path)end
---@overload fun(location:UnityEngine.Experimental.AI.NavMeshLocation):System.Boolean
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return System.Boolean
function UnityEngine.Experimental.AI.NavMeshQuery:IsValid(polygon)end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return System.Int32
function UnityEngine.Experimental.AI.NavMeshQuery:GetAgentTypeIdForPolygon(polygon)end
---@param position UnityEngine.Vector3
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:CreateLocation(position, polygon)end
---@overload fun(position:UnityEngine.Vector3, extents:UnityEngine.Vector3, agentTypeID:System.Int32):UnityEngine.Experimental.AI.NavMeshLocation
---@param position UnityEngine.Vector3
---@param extents UnityEngine.Vector3
---@param agentTypeID System.Int32
---@param areaMask System.Int32
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:MapLocation(position, extents, agentTypeID, areaMask)end
---@param locations Unity.Collections.NativeSlice
---@param targets Unity.Collections.NativeSlice
---@param areaMasks Unity.Collections.NativeSlice
---@return System.Void
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocations(locations, targets, areaMasks)end
---@overload fun(locations:Unity.Collections.NativeSlice, targets:Unity.Collections.NativeSlice):System.Void
---@param locations Unity.Collections.NativeSlice
---@param targets Unity.Collections.NativeSlice
---@param areaMask System.Int32
---@return System.Void
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocationsInSameAreas(locations, targets, areaMask)end
---@overload fun(location:UnityEngine.Experimental.AI.NavMeshLocation, target:UnityEngine.Vector3):UnityEngine.Experimental.AI.NavMeshLocation
---@param location UnityEngine.Experimental.AI.NavMeshLocation
---@param target UnityEngine.Vector3
---@param areaMask System.Int32
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocation(location, target, areaMask)end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@param neighbourPolygon UnityEngine.Experimental.AI.PolygonId
---@param left UnityEngine.Vector3
---@param right UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Experimental.AI.NavMeshQuery:GetPortalPoints(polygon, neighbourPolygon, left, right)end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.AI.NavMeshQuery:PolygonLocalToWorldMatrix(polygon)end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.AI.NavMeshQuery:PolygonWorldToLocalMatrix(polygon)end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Experimental.AI.NavMeshPolyTypes
function UnityEngine.Experimental.AI.NavMeshQuery:GetPolygonType(polygon)end
---@overload fun(hit:UnityEngine.AI.NavMeshHit, start:UnityEngine.Experimental.AI.NavMeshLocation, targetPosition:UnityEngine.Vector3, areaMask:System.Int32):UnityEngine.Experimental.AI.PathQueryStatus
---@overload fun(hit:UnityEngine.AI.NavMeshHit, start:UnityEngine.Experimental.AI.NavMeshLocation, targetPosition:UnityEngine.Vector3):UnityEngine.Experimental.AI.PathQueryStatus
---@overload fun(hit:UnityEngine.AI.NavMeshHit, path:Unity.Collections.NativeSlice, pathCount:System.Int32, start:UnityEngine.Experimental.AI.NavMeshLocation, targetPosition:UnityEngine.Vector3):UnityEngine.Experimental.AI.PathQueryStatus
---@overload fun(hit:UnityEngine.AI.NavMeshHit, path:Unity.Collections.NativeSlice, pathCount:System.Int32, start:UnityEngine.Experimental.AI.NavMeshLocation, targetPosition:UnityEngine.Vector3):UnityEngine.Experimental.AI.PathQueryStatus
---@overload fun(hit:UnityEngine.AI.NavMeshHit, path:Unity.Collections.NativeSlice, pathCount:System.Int32, start:UnityEngine.Experimental.AI.NavMeshLocation, targetPosition:UnityEngine.Vector3):UnityEngine.Experimental.AI.PathQueryStatus
---@param hit UnityEngine.AI.NavMeshHit
---@param start UnityEngine.Experimental.AI.NavMeshLocation
---@param targetPosition UnityEngine.Vector3
---@param areaMask System.Int32
---@param costs Unity.Collections.NativeArray
---@return UnityEngine.Experimental.AI.PathQueryStatus
function UnityEngine.Experimental.AI.NavMeshQuery:Raycast(hit, start, targetPosition, areaMask, costs)end
