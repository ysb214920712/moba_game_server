---@class UnityEngine.VR.VRDeviceType : System.Enum
UnityEngine.VR.VRDeviceType = {}
---@type UnityEngine.VR.VRDeviceType
CS.UnityEngine.VR.VRDeviceType = UnityEngine.VR.VRDeviceType

---@return System.Int32 value:0
UnityEngine.VR.VRDeviceType.None = 0
---@return System.Int32 value:1
UnityEngine.VR.VRDeviceType.Stereo = 1
---@return System.Int32 value:2
UnityEngine.VR.VRDeviceType.Split = 2
---@return System.Int32 value:3
UnityEngine.VR.VRDeviceType.Oculus = 3
---@return System.Int32 value:4
UnityEngine.VR.VRDeviceType.PlayStationVR = 4
---@return System.Int32 value:5
UnityEngine.VR.VRDeviceType.Unknown = 5

---@class UnityEngine.VR.TrackingSpaceType : System.Enum
UnityEngine.VR.TrackingSpaceType = {}
---@type UnityEngine.VR.TrackingSpaceType
CS.UnityEngine.VR.TrackingSpaceType = UnityEngine.VR.TrackingSpaceType

---@return System.Int32 value:0
UnityEngine.VR.TrackingSpaceType.Stationary = 0
---@return System.Int32 value:1
UnityEngine.VR.TrackingSpaceType.RoomScale = 1

---@class UnityEngine.VR.UserPresenceState : System.Enum
UnityEngine.VR.UserPresenceState = {}
---@type UnityEngine.VR.UserPresenceState
CS.UnityEngine.VR.UserPresenceState = UnityEngine.VR.UserPresenceState

---@return System.Int32 value:0
UnityEngine.VR.UserPresenceState.NotPresent = 0
---@return System.Int32 value:1
UnityEngine.VR.UserPresenceState.Present = 1
---@return System.Int32 value:2
UnityEngine.VR.UserPresenceState.Unknown = 2

---@class UnityEngine.VR.VRSettings : System.Object
---@field public enabled System.Boolean @static setter getter
---@field public isDeviceActive System.Boolean @static  getter
---@field public showDeviceView System.Boolean @static setter getter
---@field public renderScale System.Single @static setter getter
---@field public eyeTextureWidth System.Int32 @static  getter
---@field public eyeTextureHeight System.Int32 @static  getter
---@field public renderViewportScale System.Single @static setter getter
---@field public occlusionMaskScale System.Single @static setter getter
---@field public loadedDevice UnityEngine.VR.VRDeviceType @static setter getter
---@field public loadedDeviceName System.String @static  getter
---@field public supportedDevices System.String[] @static  getter
UnityEngine.VR.VRSettings = {}
---@type UnityEngine.VR.VRSettings
CS.UnityEngine.VR.VRSettings = UnityEngine.VR.VRSettings

---@overload fun(prioritizedDeviceNameList:System.String[]):System.Void
---@param deviceName System.String
---@return System.Void
function UnityEngine.VR.VRSettings.LoadDeviceByName(deviceName)end
---@class UnityEngine.VR.VRDevice : System.Object
---@field public isPresent System.Boolean @static  getter
---@field public userPresence UnityEngine.XR.UserPresenceState @static  getter
---@field public family System.String @static  getter
---@field public model System.String @static  getter
---@field public refreshRate System.Single @static  getter
UnityEngine.VR.VRDevice = {}
---@type UnityEngine.VR.VRDevice
CS.UnityEngine.VR.VRDevice = UnityEngine.VR.VRDevice

---@return UnityEngine.XR.TrackingSpaceType
function UnityEngine.VR.VRDevice.GetTrackingSpaceType()end
---@param trackingSpaceType UnityEngine.XR.TrackingSpaceType
---@return System.Boolean
function UnityEngine.VR.VRDevice.SetTrackingSpaceType(trackingSpaceType)end
---@return System.IntPtr
function UnityEngine.VR.VRDevice.GetNativePtr()end
---@param camera UnityEngine.Camera
---@param disabled System.Boolean
---@return System.Void
function UnityEngine.VR.VRDevice.DisableAutoVRCameraTracking(camera, disabled)end
---@class UnityEngine.VR.VRStats : System.Object
---@field public gpuTimeLastFrame System.Single @static  getter
UnityEngine.VR.VRStats = {}
---@type UnityEngine.VR.VRStats
CS.UnityEngine.VR.VRStats = UnityEngine.VR.VRStats

---@param gpuTimeLastFrame System.Single
---@return System.Boolean
function UnityEngine.VR.VRStats.TryGetGPUTimeLastFrame(gpuTimeLastFrame)end
---@param droppedFrameCount System.Int32
---@return System.Boolean
function UnityEngine.VR.VRStats.TryGetDroppedFrameCount(droppedFrameCount)end
---@param framePresentCount System.Int32
---@return System.Boolean
function UnityEngine.VR.VRStats.TryGetFramePresentCount(framePresentCount)end
---@class UnityEngine.VR.InputTracking : System.Object
---@field public disablePositionalTracking System.Boolean @static setter getter
UnityEngine.VR.InputTracking = {}
---@type UnityEngine.VR.InputTracking
CS.UnityEngine.VR.InputTracking = UnityEngine.VR.InputTracking

---@param node UnityEngine.VR.VRNode
---@return UnityEngine.Vector3
function UnityEngine.VR.InputTracking.GetLocalPosition(node)end
---@return System.Void
function UnityEngine.VR.InputTracking.Recenter()end
---@param uniqueID System.UInt64
---@return System.String
function UnityEngine.VR.InputTracking.GetNodeName(uniqueID)end
---@param nodeStates System.Collections.Generic.List
---@return System.Void
function UnityEngine.VR.InputTracking.GetNodeStates(nodeStates)end
---@class UnityEngine.VR.VRNode : System.Enum
UnityEngine.VR.VRNode = {}
---@type UnityEngine.VR.VRNode
CS.UnityEngine.VR.VRNode = UnityEngine.VR.VRNode

---@return System.Int32 value:0
UnityEngine.VR.VRNode.LeftEye = 0
---@return System.Int32 value:1
UnityEngine.VR.VRNode.RightEye = 1
---@return System.Int32 value:2
UnityEngine.VR.VRNode.CenterEye = 2
---@return System.Int32 value:3
UnityEngine.VR.VRNode.Head = 3
---@return System.Int32 value:4
UnityEngine.VR.VRNode.LeftHand = 4
---@return System.Int32 value:5
UnityEngine.VR.VRNode.RightHand = 5
---@return System.Int32 value:6
UnityEngine.VR.VRNode.GameController = 6
---@return System.Int32 value:7
UnityEngine.VR.VRNode.TrackingReference = 7
---@return System.Int32 value:8
UnityEngine.VR.VRNode.HardwareTracker = 8

---@class UnityEngine.VR.VRNodeState : System.ValueType
---@field public uniqueID System.UInt64 @ setter getter
---@field public nodeType UnityEngine.VR.VRNode @ setter getter
---@field public tracked System.Boolean @ setter getter
---@field public position UnityEngine.Vector3 @ setter 
---@field public rotation UnityEngine.Quaternion @ setter 
---@field public velocity UnityEngine.Vector3 @ setter 
---@field public angularVelocity UnityEngine.Vector3 @ setter 
---@field public acceleration UnityEngine.Vector3 @ setter 
---@field public angularAcceleration UnityEngine.Vector3 @ setter 
UnityEngine.VR.VRNodeState = {}
---@type UnityEngine.VR.VRNodeState
CS.UnityEngine.VR.VRNodeState = UnityEngine.VR.VRNodeState

---@param position UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetPosition(position)end
---@param rotation UnityEngine.Quaternion
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetRotation(rotation)end
---@param velocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetVelocity(velocity)end
---@param angularVelocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetAngularVelocity(angularVelocity)end
---@param acceleration UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetAcceleration(acceleration)end
---@param angularAcceleration UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.VR.VRNodeState:TryGetAngularAcceleration(angularAcceleration)end
