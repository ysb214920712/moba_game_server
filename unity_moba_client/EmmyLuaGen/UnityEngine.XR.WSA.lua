---@class UnityEngine.XR.WSA.HolographicStreamerConnectionState : System.Enum
UnityEngine.XR.WSA.HolographicStreamerConnectionState = {}
---@type UnityEngine.XR.WSA.HolographicStreamerConnectionState
CS.UnityEngine.XR.WSA.HolographicStreamerConnectionState = UnityEngine.XR.WSA.HolographicStreamerConnectionState

---@return System.Int32 value:0
UnityEngine.XR.WSA.HolographicStreamerConnectionState.Disconnected = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.HolographicStreamerConnectionState.Connecting = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.HolographicStreamerConnectionState.Connected = 2

---@class UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason : System.Enum
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason = {}
---@type UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason
CS.UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason = UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason

---@return System.Int32 value:0
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.None = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.Unknown = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.Unreachable = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.HandshakeFailed = 3
---@return System.Int32 value:4
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.ProtocolVersionMismatch = 4
---@return System.Int32 value:5
UnityEngine.XR.WSA.HolographicStreamerConnectionFailureReason.ConnectionLost = 5

---@class UnityEngine.XR.WSA.HolographicSettings : System.Object
---@field public IsDisplayOpaque System.Boolean @static  getter
---@field public IsContentProtectionEnabled System.Boolean @static setter getter
---@field public ReprojectionMode UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode @static setter getter
---@field public IsLatentFramePresentation System.Boolean @static  getter
UnityEngine.XR.WSA.HolographicSettings = {}
---@type UnityEngine.XR.WSA.HolographicSettings
CS.UnityEngine.XR.WSA.HolographicSettings = UnityEngine.XR.WSA.HolographicSettings

---@overload fun(position:UnityEngine.Vector3, normal:UnityEngine.Vector3):System.Void
---@overload fun(position:UnityEngine.Vector3, normal:UnityEngine.Vector3, velocity:UnityEngine.Vector3):System.Void
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.XR.WSA.HolographicSettings.SetFocusPointForFrame(position)end
---@param activated System.Boolean
---@return System.Void
function UnityEngine.XR.WSA.HolographicSettings.ActivateLatentFramePresentation(activated)end
---@class UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode : System.Enum
UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode = {}
---@type UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode
CS.UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode = UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode

---@return System.Int32 value:0
UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode.PositionAndOrientation = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode.OrientationOnly = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.HolographicSettings.HolographicReprojectionMode.Disabled = 2

---@class UnityEngine.XR.WSA.SurfaceChange : System.Enum
UnityEngine.XR.WSA.SurfaceChange = {}
---@type UnityEngine.XR.WSA.SurfaceChange
CS.UnityEngine.XR.WSA.SurfaceChange = UnityEngine.XR.WSA.SurfaceChange

---@return System.Int32 value:0
UnityEngine.XR.WSA.SurfaceChange.Added = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.SurfaceChange.Updated = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.SurfaceChange.Removed = 2

---@class UnityEngine.XR.WSA.SurfaceId : System.ValueType
---@field public handle System.Int32
UnityEngine.XR.WSA.SurfaceId = {}
---@type UnityEngine.XR.WSA.SurfaceId
CS.UnityEngine.XR.WSA.SurfaceId = UnityEngine.XR.WSA.SurfaceId

---@class UnityEngine.XR.WSA.SurfaceData : System.ValueType
---@field public id UnityEngine.XR.WSA.SurfaceId
---@field public outputMesh UnityEngine.MeshFilter
---@field public outputAnchor UnityEngine.XR.WSA.WorldAnchor
---@field public outputCollider UnityEngine.MeshCollider
---@field public trianglesPerCubicMeter System.Single
---@field public bakeCollider System.Boolean
UnityEngine.XR.WSA.SurfaceData = {}
---@type UnityEngine.XR.WSA.SurfaceData
CS.UnityEngine.XR.WSA.SurfaceData = UnityEngine.XR.WSA.SurfaceData

---@class UnityEngine.XR.WSA.SurfaceObserver : System.Object
UnityEngine.XR.WSA.SurfaceObserver = {}
---@type UnityEngine.XR.WSA.SurfaceObserver
CS.UnityEngine.XR.WSA.SurfaceObserver = UnityEngine.XR.WSA.SurfaceObserver

---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:Dispose()end
---@param origin UnityEngine.Vector3
---@param extents UnityEngine.Vector3
---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:SetVolumeAsAxisAlignedBox(origin, extents)end
---@param origin UnityEngine.Vector3
---@param radiusMeters System.Single
---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:SetVolumeAsSphere(origin, radiusMeters)end
---@param origin UnityEngine.Vector3
---@param extents UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:SetVolumeAsOrientedBox(origin, extents, orientation)end
---@param planes UnityEngine.Plane[]
---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:SetVolumeAsFrustum(planes)end
---@param onSurfaceChanged UnityEngine.XR.WSA.SurfaceObserver.SurfaceChangedDelegate
---@return System.Void
function UnityEngine.XR.WSA.SurfaceObserver:Update(onSurfaceChanged)end
---@param dataRequest UnityEngine.XR.WSA.SurfaceData
---@param onDataReady UnityEngine.XR.WSA.SurfaceObserver.SurfaceDataReadyDelegate
---@return System.Boolean
function UnityEngine.XR.WSA.SurfaceObserver:RequestMeshAsync(dataRequest, onDataReady)end
---@class UnityEngine.XR.WSA.WorldAnchor : UnityEngine.Component
---@field public isLocated System.Boolean @  getter
UnityEngine.XR.WSA.WorldAnchor = {}
---@type UnityEngine.XR.WSA.WorldAnchor
CS.UnityEngine.XR.WSA.WorldAnchor = UnityEngine.XR.WSA.WorldAnchor

---@param value UnityEngine.XR.WSA.WorldAnchor.OnTrackingChangedDelegate
---@return System.Void
function UnityEngine.XR.WSA.WorldAnchor:add_OnTrackingChanged(value)end
---@param value UnityEngine.XR.WSA.WorldAnchor.OnTrackingChangedDelegate
---@return System.Void
function UnityEngine.XR.WSA.WorldAnchor:remove_OnTrackingChanged(value)end
---@param spatialAnchorPtr System.IntPtr
---@return System.Void
function UnityEngine.XR.WSA.WorldAnchor:SetNativeSpatialAnchorPtr(spatialAnchorPtr)end
---@return System.IntPtr
function UnityEngine.XR.WSA.WorldAnchor:GetNativeSpatialAnchorPtr()end
---@class UnityEngine.XR.WSA.PositionalLocatorState : System.Enum
UnityEngine.XR.WSA.PositionalLocatorState = {}
---@type UnityEngine.XR.WSA.PositionalLocatorState
CS.UnityEngine.XR.WSA.PositionalLocatorState = UnityEngine.XR.WSA.PositionalLocatorState

---@return System.Int32 value:0
UnityEngine.XR.WSA.PositionalLocatorState.Unavailable = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.PositionalLocatorState.OrientationOnly = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.PositionalLocatorState.Activating = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.PositionalLocatorState.Active = 3
---@return System.Int32 value:4
UnityEngine.XR.WSA.PositionalLocatorState.Inhibited = 4

---@class UnityEngine.XR.WSA.WorldManager : System.Object
---@field public state UnityEngine.XR.WSA.PositionalLocatorState @static  getter
UnityEngine.XR.WSA.WorldManager = {}
---@type UnityEngine.XR.WSA.WorldManager
CS.UnityEngine.XR.WSA.WorldManager = UnityEngine.XR.WSA.WorldManager

---@param value UnityEngine.XR.WSA.WorldManager.OnPositionalLocatorStateChangedDelegate
---@return System.Void
function UnityEngine.XR.WSA.WorldManager.add_OnPositionalLocatorStateChanged(value)end
---@param value UnityEngine.XR.WSA.WorldManager.OnPositionalLocatorStateChangedDelegate
---@return System.Void
function UnityEngine.XR.WSA.WorldManager.remove_OnPositionalLocatorStateChanged(value)end
---@return System.IntPtr
function UnityEngine.XR.WSA.WorldManager.GetNativeISpatialCoordinateSystemPtr()end
---@class UnityEngine.XR.WSA.HolographicRemoting : System.Object
---@field public ConnectionState UnityEngine.XR.WSA.HolographicStreamerConnectionState @static  getter
UnityEngine.XR.WSA.HolographicRemoting = {}
---@type UnityEngine.XR.WSA.HolographicRemoting
CS.UnityEngine.XR.WSA.HolographicRemoting = UnityEngine.XR.WSA.HolographicRemoting

---@overload fun(clientName:System.String):System.Void
---@param clientName System.String
---@param maxBitRate System.Int32
---@return System.Void
function UnityEngine.XR.WSA.HolographicRemoting.Connect(clientName, maxBitRate)end
---@return System.Void
function UnityEngine.XR.WSA.HolographicRemoting.Disconnect()end
