---@class UnityEngine.XR.ARRenderMode : System.Enum
UnityEngine.XR.ARRenderMode = {}
---@type UnityEngine.XR.ARRenderMode
CS.UnityEngine.XR.ARRenderMode = UnityEngine.XR.ARRenderMode

---@return System.Int32 value:0
UnityEngine.XR.ARRenderMode.StandardBackground = 0
---@return System.Int32 value:1
UnityEngine.XR.ARRenderMode.MaterialAsBackground = 1

---@class UnityEngine.XR.ARBackgroundRenderer : System.Object
---@field public backgroundMaterial UnityEngine.Material @ setter getter
---@field public backgroundTexture UnityEngine.Texture @ setter getter
---@field public camera UnityEngine.Camera @ setter getter
---@field public mode UnityEngine.XR.ARRenderMode @ setter getter
UnityEngine.XR.ARBackgroundRenderer = {}
---@type UnityEngine.XR.ARBackgroundRenderer
CS.UnityEngine.XR.ARBackgroundRenderer = UnityEngine.XR.ARBackgroundRenderer

---@param value System.Action
---@return System.Void
function UnityEngine.XR.ARBackgroundRenderer:add_backgroundRendererChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.ARBackgroundRenderer:remove_backgroundRendererChanged(value)end
---@class UnityEngine.XR.GameViewRenderMode : System.Enum
UnityEngine.XR.GameViewRenderMode = {}
---@type UnityEngine.XR.GameViewRenderMode
CS.UnityEngine.XR.GameViewRenderMode = UnityEngine.XR.GameViewRenderMode

---@return System.Int32 value:1
UnityEngine.XR.GameViewRenderMode.LeftEye = 1
---@return System.Int32 value:2
UnityEngine.XR.GameViewRenderMode.RightEye = 2
---@return System.Int32 value:3
UnityEngine.XR.GameViewRenderMode.BothEyes = 3

---@class UnityEngine.XR.TrackingOriginMode : System.Enum
UnityEngine.XR.TrackingOriginMode = {}
---@type UnityEngine.XR.TrackingOriginMode
CS.UnityEngine.XR.TrackingOriginMode = UnityEngine.XR.TrackingOriginMode

---@return System.Int32 value:0
UnityEngine.XR.TrackingOriginMode.Device = 0
---@return System.Int32 value:1
UnityEngine.XR.TrackingOriginMode.Floor = 1
---@return System.Int32 value:2
UnityEngine.XR.TrackingOriginMode.Unknown = 2

---@class UnityEngine.XR.XRSettings : System.Object
---@field public enabled System.Boolean @static setter getter
---@field public gameViewRenderMode UnityEngine.XR.GameViewRenderMode @static setter getter
---@field public isDeviceActive System.Boolean @static  getter
---@field public showDeviceView System.Boolean @static setter getter
---@field public renderScale System.Single @static setter getter
---@field public eyeTextureResolutionScale System.Single @static setter getter
---@field public eyeTextureWidth System.Int32 @static  getter
---@field public eyeTextureHeight System.Int32 @static  getter
---@field public eyeTextureDesc UnityEngine.RenderTextureDescriptor @static  getter
---@field public deviceEyeTextureDimension UnityEngine.Rendering.TextureDimension @static  getter
---@field public renderViewportScale System.Single @static setter getter
---@field public occlusionMaskScale System.Single @static setter getter
---@field public useOcclusionMesh System.Boolean @static setter getter
---@field public loadedDeviceName System.String @static  getter
---@field public supportedDevices System.String[] @static  getter
---@field public stereoRenderingMode UnityEngine.XR.XRSettings.StereoRenderingMode @static  getter
UnityEngine.XR.XRSettings = {}
---@type UnityEngine.XR.XRSettings
CS.UnityEngine.XR.XRSettings = UnityEngine.XR.XRSettings

---@overload fun(prioritizedDeviceNameList:System.String[]):System.Void
---@param deviceName System.String
---@return System.Void
function UnityEngine.XR.XRSettings.LoadDeviceByName(deviceName)end
---@class UnityEngine.XR.XRSettings.StereoRenderingMode : System.Enum
UnityEngine.XR.XRSettings.StereoRenderingMode = {}
---@type UnityEngine.XR.XRSettings.StereoRenderingMode
CS.UnityEngine.XR.XRSettings.StereoRenderingMode = UnityEngine.XR.XRSettings.StereoRenderingMode

---@return System.Int32 value:0
UnityEngine.XR.XRSettings.StereoRenderingMode.MultiPass = 0
---@return System.Int32 value:1
UnityEngine.XR.XRSettings.StereoRenderingMode.SinglePass = 1
---@return System.Int32 value:2
UnityEngine.XR.XRSettings.StereoRenderingMode.SinglePassInstanced = 2
---@return System.Int32 value:3
UnityEngine.XR.XRSettings.StereoRenderingMode.SinglePassMultiview = 3

---@class UnityEngine.XR.UserPresenceState : System.Enum
UnityEngine.XR.UserPresenceState = {}
---@type UnityEngine.XR.UserPresenceState
CS.UnityEngine.XR.UserPresenceState = UnityEngine.XR.UserPresenceState

---@return System.Int32 value:0
UnityEngine.XR.UserPresenceState.NotPresent = 0
---@return System.Int32 value:1
UnityEngine.XR.UserPresenceState.Present = 1
---@return System.Int32 value:2
UnityEngine.XR.UserPresenceState.Unknown = 2

---@class UnityEngine.XR.TrackingSpaceType : System.Enum
UnityEngine.XR.TrackingSpaceType = {}
---@type UnityEngine.XR.TrackingSpaceType
CS.UnityEngine.XR.TrackingSpaceType = UnityEngine.XR.TrackingSpaceType

---@return System.Int32 value:0
UnityEngine.XR.TrackingSpaceType.Stationary = 0
---@return System.Int32 value:1
UnityEngine.XR.TrackingSpaceType.RoomScale = 1

---@class UnityEngine.XR.XRDevice : System.Object
---@field public isPresent System.Boolean @static  getter
---@field public userPresence UnityEngine.XR.UserPresenceState @static  getter
---@field public family System.String @static  getter
---@field public model System.String @static  getter
---@field public refreshRate System.Single @static  getter
---@field public fovZoomFactor System.Single @static setter getter
---@field public trackingOriginMode UnityEngine.XR.TrackingOriginMode @static  getter
UnityEngine.XR.XRDevice = {}
---@type UnityEngine.XR.XRDevice
CS.UnityEngine.XR.XRDevice = UnityEngine.XR.XRDevice

---@return System.IntPtr
function UnityEngine.XR.XRDevice.GetNativePtr()end
---@return UnityEngine.XR.TrackingSpaceType
function UnityEngine.XR.XRDevice.GetTrackingSpaceType()end
---@param trackingSpaceType UnityEngine.XR.TrackingSpaceType
---@return System.Boolean
function UnityEngine.XR.XRDevice.SetTrackingSpaceType(trackingSpaceType)end
---@param camera UnityEngine.Camera
---@param disabled System.Boolean
---@return System.Void
function UnityEngine.XR.XRDevice.DisableAutoXRCameraTracking(camera, disabled)end
---@return System.Void
function UnityEngine.XR.XRDevice.UpdateEyeTextureMSAASetting()end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.XRDevice.add_deviceLoaded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.XRDevice.remove_deviceLoaded(value)end
---@class UnityEngine.XR.XRStats : System.Object
---@field public gpuTimeLastFrame System.Single @static  getter
UnityEngine.XR.XRStats = {}
---@type UnityEngine.XR.XRStats
CS.UnityEngine.XR.XRStats = UnityEngine.XR.XRStats

---@param gpuTimeLastFrame System.Single
---@return System.Boolean
function UnityEngine.XR.XRStats.TryGetGPUTimeLastFrame(gpuTimeLastFrame)end
---@param droppedFrameCount System.Int32
---@return System.Boolean
function UnityEngine.XR.XRStats.TryGetDroppedFrameCount(droppedFrameCount)end
---@param framePresentCount System.Int32
---@return System.Boolean
function UnityEngine.XR.XRStats.TryGetFramePresentCount(framePresentCount)end
---@class UnityEngine.XR.InputTracking : System.Object
---@field public disablePositionalTracking System.Boolean @static setter getter
UnityEngine.XR.InputTracking = {}
---@type UnityEngine.XR.InputTracking
CS.UnityEngine.XR.InputTracking = UnityEngine.XR.InputTracking

---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.add_trackingAcquired(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.remove_trackingAcquired(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.add_trackingLost(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.remove_trackingLost(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.add_nodeAdded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.remove_nodeAdded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.add_nodeRemoved(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.InputTracking.remove_nodeRemoved(value)end
---@param node UnityEngine.XR.XRNode
---@return UnityEngine.Vector3
function UnityEngine.XR.InputTracking.GetLocalPosition(node)end
---@param node UnityEngine.XR.XRNode
---@return UnityEngine.Quaternion
function UnityEngine.XR.InputTracking.GetLocalRotation(node)end
---@return System.Void
function UnityEngine.XR.InputTracking.Recenter()end
---@param uniqueId System.UInt64
---@return System.String
function UnityEngine.XR.InputTracking.GetNodeName(uniqueId)end
---@param nodeStates System.Collections.Generic.List
---@return System.Void
function UnityEngine.XR.InputTracking.GetNodeStates(nodeStates)end
---@class UnityEngine.XR.XRNode : System.Enum
UnityEngine.XR.XRNode = {}
---@type UnityEngine.XR.XRNode
CS.UnityEngine.XR.XRNode = UnityEngine.XR.XRNode

---@return System.Int32 value:0
UnityEngine.XR.XRNode.LeftEye = 0
---@return System.Int32 value:1
UnityEngine.XR.XRNode.RightEye = 1
---@return System.Int32 value:2
UnityEngine.XR.XRNode.CenterEye = 2
---@return System.Int32 value:3
UnityEngine.XR.XRNode.Head = 3
---@return System.Int32 value:4
UnityEngine.XR.XRNode.LeftHand = 4
---@return System.Int32 value:5
UnityEngine.XR.XRNode.RightHand = 5
---@return System.Int32 value:6
UnityEngine.XR.XRNode.GameController = 6
---@return System.Int32 value:7
UnityEngine.XR.XRNode.TrackingReference = 7
---@return System.Int32 value:8
UnityEngine.XR.XRNode.HardwareTracker = 8

---@class UnityEngine.XR.XRNodeState : System.ValueType
---@field public uniqueID System.UInt64 @ setter getter
---@field public nodeType UnityEngine.XR.XRNode @ setter getter
---@field public tracked System.Boolean @ setter getter
---@field public position UnityEngine.Vector3 @ setter 
---@field public rotation UnityEngine.Quaternion @ setter 
---@field public velocity UnityEngine.Vector3 @ setter 
---@field public angularVelocity UnityEngine.Vector3 @ setter 
---@field public acceleration UnityEngine.Vector3 @ setter 
---@field public angularAcceleration UnityEngine.Vector3 @ setter 
UnityEngine.XR.XRNodeState = {}
---@type UnityEngine.XR.XRNodeState
CS.UnityEngine.XR.XRNodeState = UnityEngine.XR.XRNodeState

---@param position UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetPosition(position)end
---@param rotation UnityEngine.Quaternion
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetRotation(rotation)end
---@param velocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetVelocity(velocity)end
---@param angularVelocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetAngularVelocity(angularVelocity)end
---@param acceleration UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetAcceleration(acceleration)end
---@param angularAcceleration UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.XRNodeState:TryGetAngularAcceleration(angularAcceleration)end
---@class UnityEngine.XR.HapticCapabilities : System.ValueType
---@field public numChannels System.UInt32 @ setter getter
---@field public supportsImpulse System.Boolean @ setter getter
---@field public supportsBuffer System.Boolean @ setter getter
---@field public bufferFrequencyHz System.UInt32 @ setter getter
UnityEngine.XR.HapticCapabilities = {}
---@type UnityEngine.XR.HapticCapabilities
CS.UnityEngine.XR.HapticCapabilities = UnityEngine.XR.HapticCapabilities

---@overload fun(other:UnityEngine.XR.HapticCapabilities):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.XR.HapticCapabilities:Equals(obj)end
---@return System.Int32
function UnityEngine.XR.HapticCapabilities:GetHashCode()end
---@param a UnityEngine.XR.HapticCapabilities
---@param b UnityEngine.XR.HapticCapabilities
---@return System.Boolean
function UnityEngine.XR.HapticCapabilities.op_Equality(a, b)end
---@param a UnityEngine.XR.HapticCapabilities
---@param b UnityEngine.XR.HapticCapabilities
---@return System.Boolean
function UnityEngine.XR.HapticCapabilities.op_Inequality(a, b)end
---@class UnityEngine.XR.InputDevice : System.ValueType
---@field public IsValid System.Boolean @  getter
UnityEngine.XR.InputDevice = {}
---@type UnityEngine.XR.InputDevice
CS.UnityEngine.XR.InputDevice = UnityEngine.XR.InputDevice

---@overload fun(channel:System.UInt32, amplitude:System.Single):System.Boolean
---@param channel System.UInt32
---@param amplitude System.Single
---@param duration System.Single
---@return System.Boolean
function UnityEngine.XR.InputDevice:SendHapticImpulse(channel, amplitude, duration)end
---@param channel System.UInt32
---@param buffer System.Byte[]
---@return System.Boolean
function UnityEngine.XR.InputDevice:SendHapticBuffer(channel, buffer)end
---@param capabilities UnityEngine.XR.HapticCapabilities
---@return System.Boolean
function UnityEngine.XR.InputDevice:TryGetHapticCapabilities(capabilities)end
---@return System.Void
function UnityEngine.XR.InputDevice:StopHaptics()end
---@overload fun(other:UnityEngine.XR.InputDevice):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.XR.InputDevice:Equals(obj)end
---@return System.Int32
function UnityEngine.XR.InputDevice:GetHashCode()end
---@param a UnityEngine.XR.InputDevice
---@param b UnityEngine.XR.InputDevice
---@return System.Boolean
function UnityEngine.XR.InputDevice.op_Equality(a, b)end
---@param a UnityEngine.XR.InputDevice
---@param b UnityEngine.XR.InputDevice
---@return System.Boolean
function UnityEngine.XR.InputDevice.op_Inequality(a, b)end
---@class UnityEngine.XR.InputDevices : System.Object
UnityEngine.XR.InputDevices = {}
---@type UnityEngine.XR.InputDevices
CS.UnityEngine.XR.InputDevices = UnityEngine.XR.InputDevices

---@param node UnityEngine.XR.XRNode
---@return UnityEngine.XR.InputDevice
function UnityEngine.XR.InputDevices.GetDeviceAtXRNode(node)end
