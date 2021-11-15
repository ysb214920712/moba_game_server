---@class UnityEngine.Internal.VR.VRTestMock : System.Object
UnityEngine.Internal.VR.VRTestMock = {}
---@type UnityEngine.Internal.VR.VRTestMock
CS.UnityEngine.Internal.VR.VRTestMock = UnityEngine.Internal.VR.VRTestMock

---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.Reset()end
---@param nodeType UnityEngine.XR.XRNode
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.AddTrackedDevice(nodeType)end
---@param nodeType UnityEngine.XR.XRNode
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateTrackedDevice(nodeType, position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateLeftEye(position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateRightEye(position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateCenterEye(position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateHead(position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateLeftHand(position, rotation)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateRightHand(position, rotation)end
---@param controllerName System.String
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.AddController(controllerName)end
---@param controllerName System.String
---@param axis System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateControllerAxis(controllerName, axis, value)end
---@param controllerName System.String
---@param button System.Int32
---@param pressed System.Boolean
---@return System.Void
function UnityEngine.Internal.VR.VRTestMock.UpdateControllerButton(controllerName, button, pressed)end
