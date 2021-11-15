---@class UnityEngine.Apple.ReplayKit.ReplayKit : System.Object
---@field public APIAvailable System.Boolean @static  getter
---@field public broadcastingAPIAvailable System.Boolean @static  getter
---@field public recordingAvailable System.Boolean @static  getter
---@field public isRecording System.Boolean @static  getter
---@field public isBroadcasting System.Boolean @static  getter
---@field public cameraEnabled System.Boolean @static setter getter
---@field public microphoneEnabled System.Boolean @static setter getter
---@field public broadcastURL System.String @static  getter
---@field public lastError System.String @static  getter
UnityEngine.Apple.ReplayKit.ReplayKit = {}
---@type UnityEngine.Apple.ReplayKit.ReplayKit
CS.UnityEngine.Apple.ReplayKit.ReplayKit = UnityEngine.Apple.ReplayKit.ReplayKit

---@overload fun(enableMicrophone:System.Boolean):System.Boolean
---@overload fun(enableMicrophone:System.Boolean, enableCamera:System.Boolean):System.Boolean
---@return System.Boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.StartRecording()end
---@overload fun(callback:UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback, enableMicrophone:System.Boolean):System.Void
---@overload fun(callback:UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback, enableMicrophone:System.Boolean, enableCamera:System.Boolean):System.Void
---@param callback UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback
---@return System.Void
function UnityEngine.Apple.ReplayKit.ReplayKit.StartBroadcasting(callback)end
---@return System.Boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.StopRecording()end
---@return System.Void
function UnityEngine.Apple.ReplayKit.ReplayKit.StopBroadcasting()end
---@return System.Boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.Preview()end
---@return System.Boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.Discard()end
---@param posX System.Single
---@param posY System.Single
---@return System.Boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.ShowCameraPreviewAt(posX, posY)end
---@return System.Void
function UnityEngine.Apple.ReplayKit.ReplayKit.HideCameraPreview()end
