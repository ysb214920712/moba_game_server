---@class UnityEngine.Experimental.XR.Boundary : System.Object
---@field public visible System.Boolean @static setter getter
---@field public configured System.Boolean @static  getter
UnityEngine.Experimental.XR.Boundary = {}
---@type UnityEngine.Experimental.XR.Boundary
CS.UnityEngine.Experimental.XR.Boundary = UnityEngine.Experimental.XR.Boundary

---@overload fun(dimensionsOut:UnityEngine.Vector3, boundaryType:UnityEngine.Experimental.XR.Boundary.Type):System.Boolean
---@param dimensionsOut UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Experimental.XR.Boundary.TryGetDimensions(dimensionsOut)end
---@overload fun(geometry:System.Collections.Generic.List, boundaryType:UnityEngine.Experimental.XR.Boundary.Type):System.Boolean
---@param geometry System.Collections.Generic.List
---@return System.Boolean
function UnityEngine.Experimental.XR.Boundary.TryGetGeometry(geometry)end
---@class UnityEngine.Experimental.XR.Boundary.Type : System.Enum
UnityEngine.Experimental.XR.Boundary.Type = {}
---@type UnityEngine.Experimental.XR.Boundary.Type
CS.UnityEngine.Experimental.XR.Boundary.Type = UnityEngine.Experimental.XR.Boundary.Type

---@return System.Int32 value:0
UnityEngine.Experimental.XR.Boundary.Type.PlayArea = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.Boundary.Type.TrackedArea = 1

---@class UnityEngine.Experimental.XR.TrackableId : System.ValueType
---@field public InvalidId UnityEngine.Experimental.XR.TrackableId @static  getter
UnityEngine.Experimental.XR.TrackableId = {}
---@type UnityEngine.Experimental.XR.TrackableId
CS.UnityEngine.Experimental.XR.TrackableId = UnityEngine.Experimental.XR.TrackableId

---@return System.String
function UnityEngine.Experimental.XR.TrackableId:ToString()end
---@return System.Int32
function UnityEngine.Experimental.XR.TrackableId:GetHashCode()end
---@overload fun(other:UnityEngine.Experimental.XR.TrackableId):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Experimental.XR.TrackableId:Equals(obj)end
---@param id1 UnityEngine.Experimental.XR.TrackableId
---@param id2 UnityEngine.Experimental.XR.TrackableId
---@return System.Boolean
function UnityEngine.Experimental.XR.TrackableId.op_Equality(id1, id2)end
---@param id1 UnityEngine.Experimental.XR.TrackableId
---@param id2 UnityEngine.Experimental.XR.TrackableId
---@return System.Boolean
function UnityEngine.Experimental.XR.TrackableId.op_Inequality(id1, id2)end
---@class UnityEngine.Experimental.XR.FrameReceivedEventArgs : System.ValueType
---@field public CameraSubsystem UnityEngine.Experimental.XR.XRCameraSubsystem @  getter
UnityEngine.Experimental.XR.FrameReceivedEventArgs = {}
---@type UnityEngine.Experimental.XR.FrameReceivedEventArgs
CS.UnityEngine.Experimental.XR.FrameReceivedEventArgs = UnityEngine.Experimental.XR.FrameReceivedEventArgs

---@class UnityEngine.Experimental.XR.XRCameraSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public LastUpdatedFrame System.Int32 @  getter
---@field public LightEstimationRequested System.Boolean @ setter getter
---@field public Material UnityEngine.Material @ setter getter
---@field public Camera UnityEngine.Camera @ setter getter
UnityEngine.Experimental.XR.XRCameraSubsystem = {}
---@type UnityEngine.Experimental.XR.XRCameraSubsystem
CS.UnityEngine.Experimental.XR.XRCameraSubsystem = UnityEngine.Experimental.XR.XRCameraSubsystem

---@param averageBrightness System.Single
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetAverageBrightness(averageBrightness)end
---@param averageColorTemperature System.Single
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetAverageColorTemperature(averageColorTemperature)end
---@param projectionMatrix UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetProjectionMatrix(projectionMatrix)end
---@param displayMatrix UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetDisplayMatrix(displayMatrix)end
---@param timestampNs System.Int64
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetTimestamp(timestampNs)end
---@param shaderName System.String
---@return System.Boolean
function UnityEngine.Experimental.XR.XRCameraSubsystem:TryGetShaderName(shaderName)end
---@param texturesOut System.Collections.Generic.List
---@return System.Void
function UnityEngine.Experimental.XR.XRCameraSubsystem:GetTextures(texturesOut)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRCameraSubsystem:add_FrameReceived(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRCameraSubsystem:remove_FrameReceived(value)end
---@class UnityEngine.Experimental.XR.XRCameraSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
---@field public ProvidesAverageBrightness System.Boolean @  getter
---@field public ProvidesAverageColorTemperature System.Boolean @  getter
---@field public ProvidesProjectionMatrix System.Boolean @  getter
---@field public ProvidesDisplayMatrix System.Boolean @  getter
---@field public ProvidesTimestamp System.Boolean @  getter
UnityEngine.Experimental.XR.XRCameraSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRCameraSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRCameraSubsystemDescriptor = UnityEngine.Experimental.XR.XRCameraSubsystemDescriptor

---@class UnityEngine.Experimental.XR.PointCloudUpdatedEventArgs : System.ValueType
---@field public DepthSubsystem UnityEngine.Experimental.XR.XRDepthSubsystem @  getter
UnityEngine.Experimental.XR.PointCloudUpdatedEventArgs = {}
---@type UnityEngine.Experimental.XR.PointCloudUpdatedEventArgs
CS.UnityEngine.Experimental.XR.PointCloudUpdatedEventArgs = UnityEngine.Experimental.XR.PointCloudUpdatedEventArgs

---@class UnityEngine.Experimental.XR.XRDepthSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public LastUpdatedFrame System.Int32 @  getter
UnityEngine.Experimental.XR.XRDepthSubsystem = {}
---@type UnityEngine.Experimental.XR.XRDepthSubsystem
CS.UnityEngine.Experimental.XR.XRDepthSubsystem = UnityEngine.Experimental.XR.XRDepthSubsystem

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRDepthSubsystem:add_PointCloudUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRDepthSubsystem:remove_PointCloudUpdated(value)end
---@param pointsOut System.Collections.Generic.List
---@return System.Void
function UnityEngine.Experimental.XR.XRDepthSubsystem:GetPoints(pointsOut)end
---@param confidenceOut System.Collections.Generic.List
---@return System.Void
function UnityEngine.Experimental.XR.XRDepthSubsystem:GetConfidence(confidenceOut)end
---@class UnityEngine.Experimental.XR.XRDepthSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
---@field public SupportsFeaturePoints System.Boolean @  getter
UnityEngine.Experimental.XR.XRDepthSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRDepthSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRDepthSubsystemDescriptor = UnityEngine.Experimental.XR.XRDepthSubsystemDescriptor

---@class UnityEngine.Experimental.XR.XRDisplaySubsystem : UnityEngine.Experimental.IntegratedSubsystem
UnityEngine.Experimental.XR.XRDisplaySubsystem = {}
---@type UnityEngine.Experimental.XR.XRDisplaySubsystem
CS.UnityEngine.Experimental.XR.XRDisplaySubsystem = UnityEngine.Experimental.XR.XRDisplaySubsystem

---@class UnityEngine.Experimental.XR.XRDisplaySubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRDisplaySubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRDisplaySubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRDisplaySubsystemDescriptor = UnityEngine.Experimental.XR.XRDisplaySubsystemDescriptor

---@class UnityEngine.Experimental.XR.XRExampleSubsystem : UnityEngine.Experimental.IntegratedSubsystem
UnityEngine.Experimental.XR.XRExampleSubsystem = {}
---@type UnityEngine.Experimental.XR.XRExampleSubsystem
CS.UnityEngine.Experimental.XR.XRExampleSubsystem = UnityEngine.Experimental.XR.XRExampleSubsystem

---@return System.Void
function UnityEngine.Experimental.XR.XRExampleSubsystem:PrintExample()end
---@return System.Boolean
function UnityEngine.Experimental.XR.XRExampleSubsystem:GetBool()end
---@class UnityEngine.Experimental.XR.XRExampleSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
---@field public supportsEditorMode System.Boolean @  getter
---@field public disableBackbufferMSAA System.Boolean @  getter
---@field public stereoscopicBackbuffer System.Boolean @  getter
---@field public usePBufferEGL System.Boolean @  getter
UnityEngine.Experimental.XR.XRExampleSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRExampleSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRExampleSubsystemDescriptor = UnityEngine.Experimental.XR.XRExampleSubsystemDescriptor

---@class UnityEngine.Experimental.XR.XRInputSubsystem : UnityEngine.Experimental.IntegratedSubsystem
UnityEngine.Experimental.XR.XRInputSubsystem = {}
---@type UnityEngine.Experimental.XR.XRInputSubsystem
CS.UnityEngine.Experimental.XR.XRInputSubsystem = UnityEngine.Experimental.XR.XRInputSubsystem

---@class UnityEngine.Experimental.XR.XRInputSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
---@field public disablesLegacyInput System.Boolean @  getter
UnityEngine.Experimental.XR.XRInputSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRInputSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRInputSubsystemDescriptor = UnityEngine.Experimental.XR.XRInputSubsystemDescriptor

---@class UnityEngine.Experimental.XR.MeshGenerationStatus : System.Enum
UnityEngine.Experimental.XR.MeshGenerationStatus = {}
---@type UnityEngine.Experimental.XR.MeshGenerationStatus
CS.UnityEngine.Experimental.XR.MeshGenerationStatus = UnityEngine.Experimental.XR.MeshGenerationStatus

---@return System.Int32 value:0
UnityEngine.Experimental.XR.MeshGenerationStatus.Success = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.MeshGenerationStatus.InvalidMeshId = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.MeshGenerationStatus.GenerationAlreadyInProgress = 2
---@return System.Int32 value:3
UnityEngine.Experimental.XR.MeshGenerationStatus.Canceled = 3
---@return System.Int32 value:4
UnityEngine.Experimental.XR.MeshGenerationStatus.UnknownError = 4

---@class UnityEngine.Experimental.XR.MeshGenerationResult : System.ValueType
---@field public MeshId UnityEngine.Experimental.XR.TrackableId @  getter
---@field public Mesh UnityEngine.Mesh @  getter
---@field public MeshCollider UnityEngine.MeshCollider @  getter
---@field public Status UnityEngine.Experimental.XR.MeshGenerationStatus @  getter
---@field public Attributes UnityEngine.Experimental.XR.MeshVertexAttributes @  getter
UnityEngine.Experimental.XR.MeshGenerationResult = {}
---@type UnityEngine.Experimental.XR.MeshGenerationResult
CS.UnityEngine.Experimental.XR.MeshGenerationResult = UnityEngine.Experimental.XR.MeshGenerationResult

---@overload fun(other:UnityEngine.Experimental.XR.MeshGenerationResult):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshGenerationResult:Equals(obj)end
---@param lhs UnityEngine.Experimental.XR.MeshGenerationResult
---@param rhs UnityEngine.Experimental.XR.MeshGenerationResult
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshGenerationResult.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Experimental.XR.MeshGenerationResult
---@param rhs UnityEngine.Experimental.XR.MeshGenerationResult
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshGenerationResult.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.Experimental.XR.MeshGenerationResult:GetHashCode()end
---@class UnityEngine.Experimental.XR.MeshVertexAttributes : System.Enum
UnityEngine.Experimental.XR.MeshVertexAttributes = {}
---@type UnityEngine.Experimental.XR.MeshVertexAttributes
CS.UnityEngine.Experimental.XR.MeshVertexAttributes = UnityEngine.Experimental.XR.MeshVertexAttributes

---@return System.Int32 value:0
UnityEngine.Experimental.XR.MeshVertexAttributes.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.MeshVertexAttributes.Normals = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.MeshVertexAttributes.Tangents = 2
---@return System.Int32 value:4
UnityEngine.Experimental.XR.MeshVertexAttributes.UVs = 4

---@class UnityEngine.Experimental.XR.MeshChangeState : System.Enum
UnityEngine.Experimental.XR.MeshChangeState = {}
---@type UnityEngine.Experimental.XR.MeshChangeState
CS.UnityEngine.Experimental.XR.MeshChangeState = UnityEngine.Experimental.XR.MeshChangeState

---@return System.Int32 value:0
UnityEngine.Experimental.XR.MeshChangeState.Added = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.MeshChangeState.Updated = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.MeshChangeState.Removed = 2
---@return System.Int32 value:3
UnityEngine.Experimental.XR.MeshChangeState.Unchanged = 3

---@class UnityEngine.Experimental.XR.MeshInfo : System.ValueType
---@field public MeshId UnityEngine.Experimental.XR.TrackableId @ setter getter
---@field public ChangeState UnityEngine.Experimental.XR.MeshChangeState @ setter getter
---@field public PriorityHint System.Int32 @ setter getter
UnityEngine.Experimental.XR.MeshInfo = {}
---@type UnityEngine.Experimental.XR.MeshInfo
CS.UnityEngine.Experimental.XR.MeshInfo = UnityEngine.Experimental.XR.MeshInfo

---@overload fun(other:UnityEngine.Experimental.XR.MeshInfo):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshInfo:Equals(obj)end
---@param lhs UnityEngine.Experimental.XR.MeshInfo
---@param rhs UnityEngine.Experimental.XR.MeshInfo
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshInfo.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Experimental.XR.MeshInfo
---@param rhs UnityEngine.Experimental.XR.MeshInfo
---@return System.Boolean
function UnityEngine.Experimental.XR.MeshInfo.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.Experimental.XR.MeshInfo:GetHashCode()end
---@class UnityEngine.Experimental.XR.XRMeshSubsystem : UnityEngine.Experimental.IntegratedSubsystem
UnityEngine.Experimental.XR.XRMeshSubsystem = {}
---@type UnityEngine.Experimental.XR.XRMeshSubsystem
CS.UnityEngine.Experimental.XR.XRMeshSubsystem = UnityEngine.Experimental.XR.XRMeshSubsystem

---@param meshInfosOut System.Collections.Generic.List
---@return System.Boolean
function UnityEngine.Experimental.XR.XRMeshSubsystem:TryGetMeshInfos(meshInfosOut)end
---@param meshId UnityEngine.Experimental.XR.TrackableId
---@param mesh UnityEngine.Mesh
---@param meshCollider UnityEngine.MeshCollider
---@param attributes UnityEngine.Experimental.XR.MeshVertexAttributes
---@param onMeshGenerationComplete System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRMeshSubsystem:GenerateMeshAsync(meshId, mesh, meshCollider, attributes, onMeshGenerationComplete)end
---@class UnityEngine.Experimental.XR.XRMeshSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRMeshSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRMeshSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRMeshSubsystemDescriptor = UnityEngine.Experimental.XR.XRMeshSubsystemDescriptor

---@class UnityEngine.Experimental.XR.PlaneAlignment : System.Enum
UnityEngine.Experimental.XR.PlaneAlignment = {}
---@type UnityEngine.Experimental.XR.PlaneAlignment
CS.UnityEngine.Experimental.XR.PlaneAlignment = UnityEngine.Experimental.XR.PlaneAlignment

---@return System.Int32 value:1
UnityEngine.Experimental.XR.PlaneAlignment.Horizontal = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.PlaneAlignment.Vertical = 2

---@class UnityEngine.Experimental.XR.BoundedPlane : System.ValueType
---@field public Id UnityEngine.Experimental.XR.TrackableId @ setter getter
---@field public SubsumedById UnityEngine.Experimental.XR.TrackableId @ setter getter
---@field public Pose UnityEngine.Pose @ setter getter
---@field public Center UnityEngine.Vector3 @ setter getter
---@field public Size UnityEngine.Vector2 @ setter getter
---@field public Alignment UnityEngine.Experimental.XR.PlaneAlignment @ setter getter
---@field public Width System.Single @  getter
---@field public Height System.Single @  getter
---@field public Normal UnityEngine.Vector3 @  getter
---@field public Plane UnityEngine.Plane @  getter
UnityEngine.Experimental.XR.BoundedPlane = {}
---@type UnityEngine.Experimental.XR.BoundedPlane
CS.UnityEngine.Experimental.XR.BoundedPlane = UnityEngine.Experimental.XR.BoundedPlane

---@param p0 UnityEngine.Vector3
---@param p1 UnityEngine.Vector3
---@param p2 UnityEngine.Vector3
---@param p3 UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.XR.BoundedPlane:GetCorners(p0, p1, p2, p3)end
---@param boundaryOut System.Collections.Generic.List
---@return System.Boolean
function UnityEngine.Experimental.XR.BoundedPlane:TryGetBoundary(boundaryOut)end
---@class UnityEngine.Experimental.XR.PlaneAddedEventArgs : System.ValueType
---@field public PlaneSubsystem UnityEngine.Experimental.XR.XRPlaneSubsystem @ setter getter
---@field public Plane UnityEngine.Experimental.XR.BoundedPlane @ setter getter
UnityEngine.Experimental.XR.PlaneAddedEventArgs = {}
---@type UnityEngine.Experimental.XR.PlaneAddedEventArgs
CS.UnityEngine.Experimental.XR.PlaneAddedEventArgs = UnityEngine.Experimental.XR.PlaneAddedEventArgs

---@class UnityEngine.Experimental.XR.PlaneUpdatedEventArgs : System.ValueType
---@field public PlaneSubsystem UnityEngine.Experimental.XR.XRPlaneSubsystem @ setter getter
---@field public Plane UnityEngine.Experimental.XR.BoundedPlane @ setter getter
UnityEngine.Experimental.XR.PlaneUpdatedEventArgs = {}
---@type UnityEngine.Experimental.XR.PlaneUpdatedEventArgs
CS.UnityEngine.Experimental.XR.PlaneUpdatedEventArgs = UnityEngine.Experimental.XR.PlaneUpdatedEventArgs

---@class UnityEngine.Experimental.XR.PlaneRemovedEventArgs : System.ValueType
---@field public PlaneSubsystem UnityEngine.Experimental.XR.XRPlaneSubsystem @ setter getter
---@field public Plane UnityEngine.Experimental.XR.BoundedPlane @ setter getter
UnityEngine.Experimental.XR.PlaneRemovedEventArgs = {}
---@type UnityEngine.Experimental.XR.PlaneRemovedEventArgs
CS.UnityEngine.Experimental.XR.PlaneRemovedEventArgs = UnityEngine.Experimental.XR.PlaneRemovedEventArgs

---@class UnityEngine.Experimental.XR.XRPlaneSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public LastUpdatedFrame System.Int32 @  getter
UnityEngine.Experimental.XR.XRPlaneSubsystem = {}
---@type UnityEngine.Experimental.XR.XRPlaneSubsystem
CS.UnityEngine.Experimental.XR.XRPlaneSubsystem = UnityEngine.Experimental.XR.XRPlaneSubsystem

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:add_PlaneAdded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:remove_PlaneAdded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:add_PlaneUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:remove_PlaneUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:add_PlaneRemoved(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:remove_PlaneRemoved(value)end
---@param planeId UnityEngine.Experimental.XR.TrackableId
---@param plane UnityEngine.Experimental.XR.BoundedPlane
---@return System.Boolean
function UnityEngine.Experimental.XR.XRPlaneSubsystem:TryGetPlane(planeId, plane)end
---@param planesOut System.Collections.Generic.List
---@return System.Void
function UnityEngine.Experimental.XR.XRPlaneSubsystem:GetAllPlanes(planesOut)end
---@param planeId UnityEngine.Experimental.XR.TrackableId
---@param boundaryOut System.Collections.Generic.List
---@return System.Boolean
function UnityEngine.Experimental.XR.XRPlaneSubsystem:TryGetPlaneBoundary(planeId, boundaryOut)end
---@class UnityEngine.Experimental.XR.XRPlaneSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRPlaneSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRPlaneSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRPlaneSubsystemDescriptor = UnityEngine.Experimental.XR.XRPlaneSubsystemDescriptor

---@class UnityEngine.Experimental.XR.TrackableType : System.Enum
UnityEngine.Experimental.XR.TrackableType = {}
---@type UnityEngine.Experimental.XR.TrackableType
CS.UnityEngine.Experimental.XR.TrackableType = UnityEngine.Experimental.XR.TrackableType

---@return System.Int32 value:0
UnityEngine.Experimental.XR.TrackableType.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.TrackableType.PlaneWithinPolygon = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.TrackableType.PlaneWithinBounds = 2
---@return System.Int32 value:4
UnityEngine.Experimental.XR.TrackableType.PlaneWithinInfinity = 4

---@class UnityEngine.Experimental.XR.XRRaycastHit : System.ValueType
---@field public TrackableId UnityEngine.Experimental.XR.TrackableId @ setter getter
---@field public Pose UnityEngine.Pose @ setter getter
---@field public Distance System.Single @ setter getter
---@field public HitType UnityEngine.Experimental.XR.TrackableType @ setter getter
UnityEngine.Experimental.XR.XRRaycastHit = {}
---@type UnityEngine.Experimental.XR.XRRaycastHit
CS.UnityEngine.Experimental.XR.XRRaycastHit = UnityEngine.Experimental.XR.XRRaycastHit

---@class UnityEngine.Experimental.XR.XRRaycastSubsystem : UnityEngine.Experimental.IntegratedSubsystem
UnityEngine.Experimental.XR.XRRaycastSubsystem = {}
---@type UnityEngine.Experimental.XR.XRRaycastSubsystem
CS.UnityEngine.Experimental.XR.XRRaycastSubsystem = UnityEngine.Experimental.XR.XRRaycastSubsystem

---@overload fun(screenPoint:UnityEngine.Vector3, hitResults:System.Collections.Generic.List):System.Boolean
---@param screenPoint UnityEngine.Vector3
---@param hitResults System.Collections.Generic.List
---@param trackableTypeMask UnityEngine.Experimental.XR.TrackableType
---@return System.Boolean
function UnityEngine.Experimental.XR.XRRaycastSubsystem:Raycast(screenPoint, hitResults, trackableTypeMask)end
---@overload fun(ray:UnityEngine.Ray, depthSubsystem:UnityEngine.Experimental.XR.XRDepthSubsystem, planeSubsystem:UnityEngine.Experimental.XR.XRPlaneSubsystem, hitResults:System.Collections.Generic.List, trackableTypeMask:UnityEngine.Experimental.XR.TrackableType):System.Void
---@overload fun(ray:UnityEngine.Ray, depthSubsystem:UnityEngine.Experimental.XR.XRDepthSubsystem, planeSubsystem:UnityEngine.Experimental.XR.XRPlaneSubsystem, hitResults:System.Collections.Generic.List):System.Void
---@param ray UnityEngine.Ray
---@param depthSubsystem UnityEngine.Experimental.XR.XRDepthSubsystem
---@param planeSubsystem UnityEngine.Experimental.XR.XRPlaneSubsystem
---@param hitResults System.Collections.Generic.List
---@param trackableTypeMask UnityEngine.Experimental.XR.TrackableType
---@param pointCloudRaycastAngleInDegrees System.Single
---@return System.Void
function UnityEngine.Experimental.XR.XRRaycastSubsystem.Raycast(ray, depthSubsystem, planeSubsystem, hitResults, trackableTypeMask, pointCloudRaycastAngleInDegrees)end
---@class UnityEngine.Experimental.XR.XRRaycastSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRRaycastSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRRaycastSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRRaycastSubsystemDescriptor = UnityEngine.Experimental.XR.XRRaycastSubsystemDescriptor

---@class UnityEngine.Experimental.XR.ReferencePoint : System.ValueType
---@field public Id UnityEngine.Experimental.XR.TrackableId @ setter getter
---@field public TrackingState UnityEngine.Experimental.XR.TrackingState @ setter getter
---@field public Pose UnityEngine.Pose @ setter getter
UnityEngine.Experimental.XR.ReferencePoint = {}
---@type UnityEngine.Experimental.XR.ReferencePoint
CS.UnityEngine.Experimental.XR.ReferencePoint = UnityEngine.Experimental.XR.ReferencePoint

---@class UnityEngine.Experimental.XR.ReferencePointUpdatedEventArgs : System.ValueType
---@field public ReferencePoint UnityEngine.Experimental.XR.ReferencePoint @ setter getter
---@field public PreviousTrackingState UnityEngine.Experimental.XR.TrackingState @ setter getter
---@field public PreviousPose UnityEngine.Pose @ setter getter
UnityEngine.Experimental.XR.ReferencePointUpdatedEventArgs = {}
---@type UnityEngine.Experimental.XR.ReferencePointUpdatedEventArgs
CS.UnityEngine.Experimental.XR.ReferencePointUpdatedEventArgs = UnityEngine.Experimental.XR.ReferencePointUpdatedEventArgs

---@class UnityEngine.Experimental.XR.XRReferencePointSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public LastUpdatedFrame System.Int32 @  getter
UnityEngine.Experimental.XR.XRReferencePointSubsystem = {}
---@type UnityEngine.Experimental.XR.XRReferencePointSubsystem
CS.UnityEngine.Experimental.XR.XRReferencePointSubsystem = UnityEngine.Experimental.XR.XRReferencePointSubsystem

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:add_ReferencePointUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:remove_ReferencePointUpdated(value)end
---@overload fun(position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, referencePointId:UnityEngine.Experimental.XR.TrackableId):System.Boolean
---@param pose UnityEngine.Pose
---@param referencePointId UnityEngine.Experimental.XR.TrackableId
---@return System.Boolean
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:TryAddReferencePoint(pose, referencePointId)end
---@param referencePointId UnityEngine.Experimental.XR.TrackableId
---@return System.Boolean
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:TryRemoveReferencePoint(referencePointId)end
---@param referencePointId UnityEngine.Experimental.XR.TrackableId
---@param referencePoint UnityEngine.Experimental.XR.ReferencePoint
---@return System.Boolean
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:TryGetReferencePoint(referencePointId, referencePoint)end
---@param referencePointsOut System.Collections.Generic.List
---@return System.Void
function UnityEngine.Experimental.XR.XRReferencePointSubsystem:GetAllReferencePoints(referencePointsOut)end
---@class UnityEngine.Experimental.XR.XRReferencePointSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRReferencePointSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRReferencePointSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRReferencePointSubsystemDescriptor = UnityEngine.Experimental.XR.XRReferencePointSubsystemDescriptor

---@class UnityEngine.Experimental.XR.TrackingState : System.Enum
UnityEngine.Experimental.XR.TrackingState = {}
---@type UnityEngine.Experimental.XR.TrackingState
CS.UnityEngine.Experimental.XR.TrackingState = UnityEngine.Experimental.XR.TrackingState

---@return System.Int32 value:0
UnityEngine.Experimental.XR.TrackingState.Unknown = 0
---@return System.Int32 value:1
UnityEngine.Experimental.XR.TrackingState.Tracking = 1
---@return System.Int32 value:2
UnityEngine.Experimental.XR.TrackingState.Unavailable = 2

---@class UnityEngine.Experimental.XR.SessionTrackingStateChangedEventArgs : System.ValueType
---@field public SessionSubsystem UnityEngine.Experimental.XR.XRSessionSubsystem @  getter
---@field public NewState UnityEngine.Experimental.XR.TrackingState @ setter getter
UnityEngine.Experimental.XR.SessionTrackingStateChangedEventArgs = {}
---@type UnityEngine.Experimental.XR.SessionTrackingStateChangedEventArgs
CS.UnityEngine.Experimental.XR.SessionTrackingStateChangedEventArgs = UnityEngine.Experimental.XR.SessionTrackingStateChangedEventArgs

---@class UnityEngine.Experimental.XR.XRSessionSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public TrackingState UnityEngine.Experimental.XR.TrackingState @  getter
---@field public LastUpdatedFrame System.Int32 @  getter
UnityEngine.Experimental.XR.XRSessionSubsystem = {}
---@type UnityEngine.Experimental.XR.XRSessionSubsystem
CS.UnityEngine.Experimental.XR.XRSessionSubsystem = UnityEngine.Experimental.XR.XRSessionSubsystem

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRSessionSubsystem:add_TrackingStateChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.XR.XRSessionSubsystem:remove_TrackingStateChanged(value)end
---@class UnityEngine.Experimental.XR.XRSessionSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.XR.XRSessionSubsystemDescriptor = {}
---@type UnityEngine.Experimental.XR.XRSessionSubsystemDescriptor
CS.UnityEngine.Experimental.XR.XRSessionSubsystemDescriptor = UnityEngine.Experimental.XR.XRSessionSubsystemDescriptor

