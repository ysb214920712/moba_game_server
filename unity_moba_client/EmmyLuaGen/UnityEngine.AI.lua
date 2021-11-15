---@class UnityEngine.AI.NavMeshPathStatus : System.Enum
UnityEngine.AI.NavMeshPathStatus = {}
---@type UnityEngine.AI.NavMeshPathStatus
CS.UnityEngine.AI.NavMeshPathStatus = UnityEngine.AI.NavMeshPathStatus

---@return System.Int32 value:0
UnityEngine.AI.NavMeshPathStatus.PathComplete = 0
---@return System.Int32 value:1
UnityEngine.AI.NavMeshPathStatus.PathPartial = 1
---@return System.Int32 value:2
UnityEngine.AI.NavMeshPathStatus.PathInvalid = 2

---@class UnityEngine.AI.NavMeshPath : System.Object
---@field public corners UnityEngine.Vector3[] @  getter
---@field public status UnityEngine.AI.NavMeshPathStatus @  getter
UnityEngine.AI.NavMeshPath = {}
---@type UnityEngine.AI.NavMeshPath
CS.UnityEngine.AI.NavMeshPath = UnityEngine.AI.NavMeshPath

---@param results UnityEngine.Vector3[]
---@return System.Int32
function UnityEngine.AI.NavMeshPath:GetCornersNonAlloc(results)end
---@return System.Void
function UnityEngine.AI.NavMeshPath:ClearCorners()end
---@class UnityEngine.AI.ObstacleAvoidanceType : System.Enum
UnityEngine.AI.ObstacleAvoidanceType = {}
---@type UnityEngine.AI.ObstacleAvoidanceType
CS.UnityEngine.AI.ObstacleAvoidanceType = UnityEngine.AI.ObstacleAvoidanceType

---@return System.Int32 value:0
UnityEngine.AI.ObstacleAvoidanceType.NoObstacleAvoidance = 0
---@return System.Int32 value:1
UnityEngine.AI.ObstacleAvoidanceType.LowQualityObstacleAvoidance = 1
---@return System.Int32 value:2
UnityEngine.AI.ObstacleAvoidanceType.MedQualityObstacleAvoidance = 2
---@return System.Int32 value:3
UnityEngine.AI.ObstacleAvoidanceType.GoodQualityObstacleAvoidance = 3
---@return System.Int32 value:4
UnityEngine.AI.ObstacleAvoidanceType.HighQualityObstacleAvoidance = 4

---@class UnityEngine.AI.NavMeshAgent : UnityEngine.Behaviour
---@field public destination UnityEngine.Vector3 @ setter getter
---@field public stoppingDistance System.Single @ setter getter
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public nextPosition UnityEngine.Vector3 @ setter getter
---@field public steeringTarget UnityEngine.Vector3 @  getter
---@field public desiredVelocity UnityEngine.Vector3 @  getter
---@field public remainingDistance System.Single @  getter
---@field public baseOffset System.Single @ setter getter
---@field public isOnOffMeshLink System.Boolean @  getter
---@field public currentOffMeshLinkData UnityEngine.AI.OffMeshLinkData @  getter
---@field public nextOffMeshLinkData UnityEngine.AI.OffMeshLinkData @  getter
---@field public autoTraverseOffMeshLink System.Boolean @ setter getter
---@field public autoBraking System.Boolean @ setter getter
---@field public autoRepath System.Boolean @ setter getter
---@field public hasPath System.Boolean @  getter
---@field public pathPending System.Boolean @  getter
---@field public isPathStale System.Boolean @  getter
---@field public pathStatus UnityEngine.AI.NavMeshPathStatus @  getter
---@field public pathEndPosition UnityEngine.Vector3 @  getter
---@field public isStopped System.Boolean @ setter getter
---@field public path UnityEngine.AI.NavMeshPath @ setter getter
---@field public navMeshOwner UnityEngine.Object @  getter
---@field public agentTypeID System.Int32 @ setter getter
---@field public walkableMask System.Int32 @ setter getter
---@field public areaMask System.Int32 @ setter getter
---@field public speed System.Single @ setter getter
---@field public angularSpeed System.Single @ setter getter
---@field public acceleration System.Single @ setter getter
---@field public updatePosition System.Boolean @ setter getter
---@field public updateRotation System.Boolean @ setter getter
---@field public updateUpAxis System.Boolean @ setter getter
---@field public radius System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public obstacleAvoidanceType UnityEngine.AI.ObstacleAvoidanceType @ setter getter
---@field public avoidancePriority System.Int32 @ setter getter
---@field public isOnNavMesh System.Boolean @  getter
UnityEngine.AI.NavMeshAgent = {}
---@type UnityEngine.AI.NavMeshAgent
CS.UnityEngine.AI.NavMeshAgent = UnityEngine.AI.NavMeshAgent

---@param target UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:SetDestination(target)end
---@param activated System.Boolean
---@return System.Void
function UnityEngine.AI.NavMeshAgent:ActivateCurrentOffMeshLink(activated)end
---@return System.Void
function UnityEngine.AI.NavMeshAgent:CompleteOffMeshLink()end
---@param newPosition UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:Warp(newPosition)end
---@param offset UnityEngine.Vector3
---@return System.Void
function UnityEngine.AI.NavMeshAgent:Move(offset)end
---@overload fun(stopUpdates:System.Boolean):System.Void
---@return System.Void
function UnityEngine.AI.NavMeshAgent:Stop()end
---@return System.Void
function UnityEngine.AI.NavMeshAgent:Resume()end
---@return System.Void
function UnityEngine.AI.NavMeshAgent:ResetPath()end
---@param path UnityEngine.AI.NavMeshPath
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:SetPath(path)end
---@param hit UnityEngine.AI.NavMeshHit
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:FindClosestEdge(hit)end
---@param targetPosition UnityEngine.Vector3
---@param hit UnityEngine.AI.NavMeshHit
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:Raycast(targetPosition, hit)end
---@param targetPosition UnityEngine.Vector3
---@param path UnityEngine.AI.NavMeshPath
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:CalculatePath(targetPosition, path)end
---@param areaMask System.Int32
---@param maxDistance System.Single
---@param hit UnityEngine.AI.NavMeshHit
---@return System.Boolean
function UnityEngine.AI.NavMeshAgent:SamplePathPosition(areaMask, maxDistance, hit)end
---@param layer System.Int32
---@param cost System.Single
---@return System.Void
function UnityEngine.AI.NavMeshAgent:SetLayerCost(layer, cost)end
---@param layer System.Int32
---@return System.Single
function UnityEngine.AI.NavMeshAgent:GetLayerCost(layer)end
---@param areaIndex System.Int32
---@param areaCost System.Single
---@return System.Void
function UnityEngine.AI.NavMeshAgent:SetAreaCost(areaIndex, areaCost)end
---@param areaIndex System.Int32
---@return System.Single
function UnityEngine.AI.NavMeshAgent:GetAreaCost(areaIndex)end
---@class UnityEngine.AI.NavMeshObstacleShape : System.Enum
UnityEngine.AI.NavMeshObstacleShape = {}
---@type UnityEngine.AI.NavMeshObstacleShape
CS.UnityEngine.AI.NavMeshObstacleShape = UnityEngine.AI.NavMeshObstacleShape

---@return System.Int32 value:0
UnityEngine.AI.NavMeshObstacleShape.Capsule = 0
---@return System.Int32 value:1
UnityEngine.AI.NavMeshObstacleShape.Box = 1

---@class UnityEngine.AI.NavMeshObstacle : UnityEngine.Behaviour
---@field public height System.Single @ setter getter
---@field public radius System.Single @ setter getter
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public carving System.Boolean @ setter getter
---@field public carveOnlyStationary System.Boolean @ setter getter
---@field public carvingMoveThreshold System.Single @ setter getter
---@field public carvingTimeToStationary System.Single @ setter getter
---@field public shape UnityEngine.AI.NavMeshObstacleShape @ setter getter
---@field public center UnityEngine.Vector3 @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
UnityEngine.AI.NavMeshObstacle = {}
---@type UnityEngine.AI.NavMeshObstacle
CS.UnityEngine.AI.NavMeshObstacle = UnityEngine.AI.NavMeshObstacle

---@class UnityEngine.AI.OffMeshLinkType : System.Enum
UnityEngine.AI.OffMeshLinkType = {}
---@type UnityEngine.AI.OffMeshLinkType
CS.UnityEngine.AI.OffMeshLinkType = UnityEngine.AI.OffMeshLinkType

---@return System.Int32 value:0
UnityEngine.AI.OffMeshLinkType.LinkTypeManual = 0
---@return System.Int32 value:1
UnityEngine.AI.OffMeshLinkType.LinkTypeDropDown = 1
---@return System.Int32 value:2
UnityEngine.AI.OffMeshLinkType.LinkTypeJumpAcross = 2

---@class UnityEngine.AI.OffMeshLinkData : System.ValueType
---@field public valid System.Boolean @  getter
---@field public activated System.Boolean @  getter
---@field public linkType UnityEngine.AI.OffMeshLinkType @  getter
---@field public startPos UnityEngine.Vector3 @  getter
---@field public endPos UnityEngine.Vector3 @  getter
---@field public offMeshLink UnityEngine.AI.OffMeshLink @  getter
UnityEngine.AI.OffMeshLinkData = {}
---@type UnityEngine.AI.OffMeshLinkData
CS.UnityEngine.AI.OffMeshLinkData = UnityEngine.AI.OffMeshLinkData

---@class UnityEngine.AI.OffMeshLink : UnityEngine.Behaviour
---@field public activated System.Boolean @ setter getter
---@field public occupied System.Boolean @  getter
---@field public costOverride System.Single @ setter getter
---@field public biDirectional System.Boolean @ setter getter
---@field public navMeshLayer System.Int32 @ setter getter
---@field public area System.Int32 @ setter getter
---@field public autoUpdatePositions System.Boolean @ setter getter
---@field public startTransform UnityEngine.Transform @ setter getter
---@field public endTransform UnityEngine.Transform @ setter getter
UnityEngine.AI.OffMeshLink = {}
---@type UnityEngine.AI.OffMeshLink
CS.UnityEngine.AI.OffMeshLink = UnityEngine.AI.OffMeshLink

---@return System.Void
function UnityEngine.AI.OffMeshLink:UpdatePositions()end
---@class UnityEngine.AI.NavMeshHit : System.ValueType
---@field public position UnityEngine.Vector3 @ setter getter
---@field public normal UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public mask System.Int32 @ setter getter
---@field public hit System.Boolean @ setter getter
UnityEngine.AI.NavMeshHit = {}
---@type UnityEngine.AI.NavMeshHit
CS.UnityEngine.AI.NavMeshHit = UnityEngine.AI.NavMeshHit

---@class UnityEngine.AI.NavMeshTriangulation : System.ValueType
---@field public layers System.Int32[] @  getter
---@field public vertices UnityEngine.Vector3[]
---@field public indices System.Int32[]
---@field public areas System.Int32[]
UnityEngine.AI.NavMeshTriangulation = {}
---@type UnityEngine.AI.NavMeshTriangulation
CS.UnityEngine.AI.NavMeshTriangulation = UnityEngine.AI.NavMeshTriangulation

---@class UnityEngine.AI.NavMeshData : UnityEngine.Object
---@field public sourceBounds UnityEngine.Bounds @  getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
UnityEngine.AI.NavMeshData = {}
---@type UnityEngine.AI.NavMeshData
CS.UnityEngine.AI.NavMeshData = UnityEngine.AI.NavMeshData

---@class UnityEngine.AI.NavMeshDataInstance : System.ValueType
---@field public valid System.Boolean @  getter
---@field public owner UnityEngine.Object @ setter getter
UnityEngine.AI.NavMeshDataInstance = {}
---@type UnityEngine.AI.NavMeshDataInstance
CS.UnityEngine.AI.NavMeshDataInstance = UnityEngine.AI.NavMeshDataInstance

---@return System.Void
function UnityEngine.AI.NavMeshDataInstance:Remove()end
---@class UnityEngine.AI.NavMeshLinkData : System.ValueType
---@field public startPosition UnityEngine.Vector3 @ setter getter
---@field public endPosition UnityEngine.Vector3 @ setter getter
---@field public costModifier System.Single @ setter getter
---@field public bidirectional System.Boolean @ setter getter
---@field public width System.Single @ setter getter
---@field public area System.Int32 @ setter getter
---@field public agentTypeID System.Int32 @ setter getter
UnityEngine.AI.NavMeshLinkData = {}
---@type UnityEngine.AI.NavMeshLinkData
CS.UnityEngine.AI.NavMeshLinkData = UnityEngine.AI.NavMeshLinkData

---@class UnityEngine.AI.NavMeshLinkInstance : System.ValueType
---@field public valid System.Boolean @  getter
---@field public owner UnityEngine.Object @ setter getter
UnityEngine.AI.NavMeshLinkInstance = {}
---@type UnityEngine.AI.NavMeshLinkInstance
CS.UnityEngine.AI.NavMeshLinkInstance = UnityEngine.AI.NavMeshLinkInstance

---@return System.Void
function UnityEngine.AI.NavMeshLinkInstance:Remove()end
---@class UnityEngine.AI.NavMeshQueryFilter : System.ValueType
---@field public areaMask System.Int32 @ setter getter
---@field public agentTypeID System.Int32 @ setter getter
UnityEngine.AI.NavMeshQueryFilter = {}
---@type UnityEngine.AI.NavMeshQueryFilter
CS.UnityEngine.AI.NavMeshQueryFilter = UnityEngine.AI.NavMeshQueryFilter

---@param areaIndex System.Int32
---@return System.Single
function UnityEngine.AI.NavMeshQueryFilter:GetAreaCost(areaIndex)end
---@param areaIndex System.Int32
---@param cost System.Single
---@return System.Void
function UnityEngine.AI.NavMeshQueryFilter:SetAreaCost(areaIndex, cost)end
---@class UnityEngine.AI.NavMesh : System.Object
---@field public avoidancePredictionTime System.Single @static setter getter
---@field public pathfindingIterationsPerFrame System.Int32 @static setter getter
---@field public AllAreas System.Int32
---@field public onPreUpdate UnityEngine.AI.NavMesh.OnNavMeshPreUpdate
UnityEngine.AI.NavMesh = {}
---@type UnityEngine.AI.NavMesh
CS.UnityEngine.AI.NavMesh = UnityEngine.AI.NavMesh

---@overload fun(sourcePosition:UnityEngine.Vector3, targetPosition:UnityEngine.Vector3, hit:UnityEngine.AI.NavMeshHit, filter:UnityEngine.AI.NavMeshQueryFilter):System.Boolean
---@param sourcePosition UnityEngine.Vector3
---@param targetPosition UnityEngine.Vector3
---@param hit UnityEngine.AI.NavMeshHit
---@param areaMask System.Int32
---@return System.Boolean
function UnityEngine.AI.NavMesh.Raycast(sourcePosition, targetPosition, hit, areaMask)end
---@overload fun(sourcePosition:UnityEngine.Vector3, targetPosition:UnityEngine.Vector3, filter:UnityEngine.AI.NavMeshQueryFilter, path:UnityEngine.AI.NavMeshPath):System.Boolean
---@param sourcePosition UnityEngine.Vector3
---@param targetPosition UnityEngine.Vector3
---@param areaMask System.Int32
---@param path UnityEngine.AI.NavMeshPath
---@return System.Boolean
function UnityEngine.AI.NavMesh.CalculatePath(sourcePosition, targetPosition, areaMask, path)end
---@overload fun(sourcePosition:UnityEngine.Vector3, hit:UnityEngine.AI.NavMeshHit, filter:UnityEngine.AI.NavMeshQueryFilter):System.Boolean
---@param sourcePosition UnityEngine.Vector3
---@param hit UnityEngine.AI.NavMeshHit
---@param areaMask System.Int32
---@return System.Boolean
function UnityEngine.AI.NavMesh.FindClosestEdge(sourcePosition, hit, areaMask)end
---@overload fun(sourcePosition:UnityEngine.Vector3, hit:UnityEngine.AI.NavMeshHit, maxDistance:System.Single, filter:UnityEngine.AI.NavMeshQueryFilter):System.Boolean
---@param sourcePosition UnityEngine.Vector3
---@param hit UnityEngine.AI.NavMeshHit
---@param maxDistance System.Single
---@param areaMask System.Int32
---@return System.Boolean
function UnityEngine.AI.NavMesh.SamplePosition(sourcePosition, hit, maxDistance, areaMask)end
---@param layer System.Int32
---@param cost System.Single
---@return System.Void
function UnityEngine.AI.NavMesh.SetLayerCost(layer, cost)end
---@param layer System.Int32
---@return System.Single
function UnityEngine.AI.NavMesh.GetLayerCost(layer)end
---@param layerName System.String
---@return System.Int32
function UnityEngine.AI.NavMesh.GetNavMeshLayerFromName(layerName)end
---@param areaIndex System.Int32
---@param cost System.Single
---@return System.Void
function UnityEngine.AI.NavMesh.SetAreaCost(areaIndex, cost)end
---@param areaIndex System.Int32
---@return System.Single
function UnityEngine.AI.NavMesh.GetAreaCost(areaIndex)end
---@param areaName System.String
---@return System.Int32
function UnityEngine.AI.NavMesh.GetAreaFromName(areaName)end
---@return UnityEngine.AI.NavMeshTriangulation
function UnityEngine.AI.NavMesh.CalculateTriangulation()end
---@param vertices UnityEngine.Vector3[]
---@param indices System.Int32[]
---@return System.Void
function UnityEngine.AI.NavMesh.Triangulate(vertices, indices)end
---@return System.Void
function UnityEngine.AI.NavMesh.AddOffMeshLinks()end
---@return System.Void
function UnityEngine.AI.NavMesh.RestoreNavMesh()end
---@overload fun(navMeshData:UnityEngine.AI.NavMeshData, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):UnityEngine.AI.NavMeshDataInstance
---@param navMeshData UnityEngine.AI.NavMeshData
---@return UnityEngine.AI.NavMeshDataInstance
function UnityEngine.AI.NavMesh.AddNavMeshData(navMeshData)end
---@param handle UnityEngine.AI.NavMeshDataInstance
---@return System.Void
function UnityEngine.AI.NavMesh.RemoveNavMeshData(handle)end
---@overload fun(link:UnityEngine.AI.NavMeshLinkData, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):UnityEngine.AI.NavMeshLinkInstance
---@param link UnityEngine.AI.NavMeshLinkData
---@return UnityEngine.AI.NavMeshLinkInstance
function UnityEngine.AI.NavMesh.AddLink(link)end
---@param handle UnityEngine.AI.NavMeshLinkInstance
---@return System.Void
function UnityEngine.AI.NavMesh.RemoveLink(handle)end
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.CreateSettings()end
---@param agentTypeID System.Int32
---@return System.Void
function UnityEngine.AI.NavMesh.RemoveSettings(agentTypeID)end
---@param agentTypeID System.Int32
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.GetSettingsByID(agentTypeID)end
---@return System.Int32
function UnityEngine.AI.NavMesh.GetSettingsCount()end
---@param index System.Int32
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.GetSettingsByIndex(index)end
---@param agentTypeID System.Int32
---@return System.String
function UnityEngine.AI.NavMesh.GetSettingsNameFromID(agentTypeID)end
---@return System.Void
function UnityEngine.AI.NavMesh.RemoveAllNavMeshData()end
---@class UnityEngine.AI.NavMeshBuilder : System.Object
UnityEngine.AI.NavMeshBuilder = {}
---@type UnityEngine.AI.NavMeshBuilder
CS.UnityEngine.AI.NavMeshBuilder = UnityEngine.AI.NavMeshBuilder

---@overload fun(root:UnityEngine.Transform, includedLayerMask:System.Int32, geometry:UnityEngine.AI.NavMeshCollectGeometry, defaultArea:System.Int32, markups:System.Collections.Generic.List, results:System.Collections.Generic.List):System.Void
---@param includedWorldBounds UnityEngine.Bounds
---@param includedLayerMask System.Int32
---@param geometry UnityEngine.AI.NavMeshCollectGeometry
---@param defaultArea System.Int32
---@param markups System.Collections.Generic.List
---@param results System.Collections.Generic.List
---@return System.Void
function UnityEngine.AI.NavMeshBuilder.CollectSources(includedWorldBounds, includedLayerMask, geometry, defaultArea, markups, results)end
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AI.NavMeshData
function UnityEngine.AI.NavMeshBuilder.BuildNavMeshData(buildSettings, sources, localBounds, position, rotation)end
---@param data UnityEngine.AI.NavMeshData
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.AI.NavMeshBuilder.UpdateNavMeshData(data, buildSettings, sources, localBounds)end
---@param data UnityEngine.AI.NavMeshData
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@return UnityEngine.AsyncOperation
function UnityEngine.AI.NavMeshBuilder.UpdateNavMeshDataAsync(data, buildSettings, sources, localBounds)end
---@param data UnityEngine.AI.NavMeshData
---@return System.Void
function UnityEngine.AI.NavMeshBuilder.Cancel(data)end
---@class UnityEngine.AI.NavMeshBuildDebugFlags : System.Enum
UnityEngine.AI.NavMeshBuildDebugFlags = {}
---@type UnityEngine.AI.NavMeshBuildDebugFlags
CS.UnityEngine.AI.NavMeshBuildDebugFlags = UnityEngine.AI.NavMeshBuildDebugFlags

---@return System.Int32 value:0
UnityEngine.AI.NavMeshBuildDebugFlags.None = 0
---@return System.Int32 value:1
UnityEngine.AI.NavMeshBuildDebugFlags.InputGeometry = 1
---@return System.Int32 value:2
UnityEngine.AI.NavMeshBuildDebugFlags.Voxels = 2
---@return System.Int32 value:4
UnityEngine.AI.NavMeshBuildDebugFlags.Regions = 4
---@return System.Int32 value:8
UnityEngine.AI.NavMeshBuildDebugFlags.RawContours = 8

---@class UnityEngine.AI.NavMeshBuildSourceShape : System.Enum
UnityEngine.AI.NavMeshBuildSourceShape = {}
---@type UnityEngine.AI.NavMeshBuildSourceShape
CS.UnityEngine.AI.NavMeshBuildSourceShape = UnityEngine.AI.NavMeshBuildSourceShape

---@return System.Int32 value:0
UnityEngine.AI.NavMeshBuildSourceShape.Mesh = 0
---@return System.Int32 value:1
UnityEngine.AI.NavMeshBuildSourceShape.Terrain = 1
---@return System.Int32 value:2
UnityEngine.AI.NavMeshBuildSourceShape.Box = 2
---@return System.Int32 value:3
UnityEngine.AI.NavMeshBuildSourceShape.Sphere = 3
---@return System.Int32 value:4
UnityEngine.AI.NavMeshBuildSourceShape.Capsule = 4
---@return System.Int32 value:5
UnityEngine.AI.NavMeshBuildSourceShape.ModifierBox = 5

---@class UnityEngine.AI.NavMeshCollectGeometry : System.Enum
UnityEngine.AI.NavMeshCollectGeometry = {}
---@type UnityEngine.AI.NavMeshCollectGeometry
CS.UnityEngine.AI.NavMeshCollectGeometry = UnityEngine.AI.NavMeshCollectGeometry

---@return System.Int32 value:0
UnityEngine.AI.NavMeshCollectGeometry.RenderMeshes = 0
---@return System.Int32 value:1
UnityEngine.AI.NavMeshCollectGeometry.PhysicsColliders = 1

---@class UnityEngine.AI.NavMeshBuildSource : System.ValueType
---@field public transform UnityEngine.Matrix4x4 @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
---@field public shape UnityEngine.AI.NavMeshBuildSourceShape @ setter getter
---@field public area System.Int32 @ setter getter
---@field public sourceObject UnityEngine.Object @ setter getter
---@field public component UnityEngine.Component @ setter getter
UnityEngine.AI.NavMeshBuildSource = {}
---@type UnityEngine.AI.NavMeshBuildSource
CS.UnityEngine.AI.NavMeshBuildSource = UnityEngine.AI.NavMeshBuildSource

---@class UnityEngine.AI.NavMeshBuildMarkup : System.ValueType
---@field public overrideArea System.Boolean @ setter getter
---@field public area System.Int32 @ setter getter
---@field public ignoreFromBuild System.Boolean @ setter getter
---@field public root UnityEngine.Transform @ setter getter
UnityEngine.AI.NavMeshBuildMarkup = {}
---@type UnityEngine.AI.NavMeshBuildMarkup
CS.UnityEngine.AI.NavMeshBuildMarkup = UnityEngine.AI.NavMeshBuildMarkup

---@class UnityEngine.AI.NavMeshBuildSettings : System.ValueType
---@field public agentTypeID System.Int32 @ setter getter
---@field public agentRadius System.Single @ setter getter
---@field public agentHeight System.Single @ setter getter
---@field public agentSlope System.Single @ setter getter
---@field public agentClimb System.Single @ setter getter
---@field public minRegionArea System.Single @ setter getter
---@field public overrideVoxelSize System.Boolean @ setter getter
---@field public voxelSize System.Single @ setter getter
---@field public overrideTileSize System.Boolean @ setter getter
---@field public tileSize System.Int32 @ setter getter
---@field public debug UnityEngine.AI.NavMeshBuildDebugSettings @ setter getter
UnityEngine.AI.NavMeshBuildSettings = {}
---@type UnityEngine.AI.NavMeshBuildSettings
CS.UnityEngine.AI.NavMeshBuildSettings = UnityEngine.AI.NavMeshBuildSettings

---@param buildBounds UnityEngine.Bounds
---@return System.String[]
function UnityEngine.AI.NavMeshBuildSettings:ValidationReport(buildBounds)end
---@class UnityEngine.AI.NavMeshBuildDebugSettings : System.ValueType
---@field public flags UnityEngine.AI.NavMeshBuildDebugFlags @ setter getter
UnityEngine.AI.NavMeshBuildDebugSettings = {}
---@type UnityEngine.AI.NavMeshBuildDebugSettings
CS.UnityEngine.AI.NavMeshBuildDebugSettings = UnityEngine.AI.NavMeshBuildDebugSettings

