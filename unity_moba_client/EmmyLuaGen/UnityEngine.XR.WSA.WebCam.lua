---@class UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat : System.Enum
UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat = {}
---@type UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat
CS.UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat = UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat.PNG = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat.JPG = 1

---@class UnityEngine.XR.WSA.WebCam.PhotoCapture : System.Object
---@field public SupportedResolutions System.Collections.Generic.IEnumerable @static  getter
UnityEngine.XR.WSA.WebCam.PhotoCapture = {}
---@type UnityEngine.XR.WSA.WebCam.PhotoCapture
CS.UnityEngine.XR.WSA.WebCam.PhotoCapture = UnityEngine.XR.WSA.WebCam.PhotoCapture

---@param showHolograms System.Boolean
---@param onCreatedCallback UnityEngine.XR.WSA.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCapture.CreateAsync(showHolograms, onCreatedCallback)end
---@param setupParams UnityEngine.XR.WSA.WebCam.CameraParameters
---@param onPhotoModeStartedCallback UnityEngine.XR.WSA.WebCam.PhotoCapture.OnPhotoModeStartedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCapture:StartPhotoModeAsync(setupParams, onPhotoModeStartedCallback)end
---@param onPhotoModeStoppedCallback UnityEngine.XR.WSA.WebCam.PhotoCapture.OnPhotoModeStoppedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCapture:StopPhotoModeAsync(onPhotoModeStoppedCallback)end
---@overload fun(filename:System.String, fileOutputFormat:UnityEngine.XR.WSA.WebCam.PhotoCaptureFileOutputFormat, onCapturedPhotoToDiskCallback:UnityEngine.XR.WSA.WebCam.PhotoCapture.OnCapturedToDiskCallback):System.Void
---@param onCapturedPhotoToMemoryCallback UnityEngine.XR.WSA.WebCam.PhotoCapture.OnCapturedToMemoryCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCapture:TakePhotoAsync(onCapturedPhotoToMemoryCallback)end
---@return System.IntPtr
function UnityEngine.XR.WSA.WebCam.PhotoCapture:GetUnsafePointerToVideoDeviceController()end
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCapture:Dispose()end
---@class UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType : System.Enum
UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType = {}
---@type UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType
CS.UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType = UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType.Success = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType.UnknownError = 1

---@class UnityEngine.XR.WSA.WebCam.PhotoCapture.PhotoCaptureResult : System.ValueType
---@field public success System.Boolean @  getter
---@field public resultType UnityEngine.XR.WSA.WebCam.PhotoCapture.CaptureResultType
---@field public hResult System.Int64
UnityEngine.XR.WSA.WebCam.PhotoCapture.PhotoCaptureResult = {}
---@type UnityEngine.XR.WSA.WebCam.PhotoCapture.PhotoCaptureResult
CS.UnityEngine.XR.WSA.WebCam.PhotoCapture.PhotoCaptureResult = UnityEngine.XR.WSA.WebCam.PhotoCapture.PhotoCaptureResult

---@class UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame : System.Object
---@field public dataLength System.Int32 @ setter getter
---@field public hasLocationData System.Boolean @ setter getter
---@field public pixelFormat UnityEngine.XR.WSA.WebCam.CapturePixelFormat @ setter getter
UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame = {}
---@type UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame
CS.UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame = UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame

---@param cameraToWorldMatrix UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:TryGetCameraToWorldMatrix(cameraToWorldMatrix)end
---@overload fun(nearClipPlane:System.Single, farClipPlane:System.Single, projectionMatrix:UnityEngine.Matrix4x4):System.Boolean
---@param projectionMatrix UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:TryGetProjectionMatrix(projectionMatrix)end
---@param targetTexture UnityEngine.Texture2D
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:UploadImageDataToTexture(targetTexture)end
---@return System.IntPtr
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:GetUnsafePointerToBuffer()end
---@param byteBuffer System.Collections.Generic.List
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:CopyRawImageDataIntoBuffer(byteBuffer)end
---@return System.Void
function UnityEngine.XR.WSA.WebCam.PhotoCaptureFrame:Dispose()end
---@class UnityEngine.XR.WSA.WebCam.VideoCapture : System.Object
---@field public SupportedResolutions System.Collections.Generic.IEnumerable @static  getter
---@field public IsRecording System.Boolean @  getter
UnityEngine.XR.WSA.WebCam.VideoCapture = {}
---@type UnityEngine.XR.WSA.WebCam.VideoCapture
CS.UnityEngine.XR.WSA.WebCam.VideoCapture = UnityEngine.XR.WSA.WebCam.VideoCapture

---@param resolution UnityEngine.Resolution
---@return System.Collections.Generic.IEnumerable
function UnityEngine.XR.WSA.WebCam.VideoCapture.GetSupportedFrameRatesForResolution(resolution)end
---@param showHolograms System.Boolean
---@param onCreatedCallback UnityEngine.XR.WSA.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture.CreateAsync(showHolograms, onCreatedCallback)end
---@param setupParams UnityEngine.XR.WSA.WebCam.CameraParameters
---@param audioState UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState
---@param onVideoModeStartedCallback UnityEngine.XR.WSA.WebCam.VideoCapture.OnVideoModeStartedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture:StartVideoModeAsync(setupParams, audioState, onVideoModeStartedCallback)end
---@param onVideoModeStoppedCallback UnityEngine.XR.WSA.WebCam.VideoCapture.OnVideoModeStoppedCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture:StopVideoModeAsync(onVideoModeStoppedCallback)end
---@param filename System.String
---@param onStartedRecordingVideoCallback UnityEngine.XR.WSA.WebCam.VideoCapture.OnStartedRecordingVideoCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture:StartRecordingAsync(filename, onStartedRecordingVideoCallback)end
---@param onStoppedRecordingVideoCallback UnityEngine.XR.WSA.WebCam.VideoCapture.OnStoppedRecordingVideoCallback
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture:StopRecordingAsync(onStoppedRecordingVideoCallback)end
---@return System.IntPtr
function UnityEngine.XR.WSA.WebCam.VideoCapture:GetUnsafePointerToVideoDeviceController()end
---@return System.Void
function UnityEngine.XR.WSA.WebCam.VideoCapture:Dispose()end
---@class UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType : System.Enum
UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType = {}
---@type UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType
CS.UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType = UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType.Success = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType.UnknownError = 1

---@class UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState : System.Enum
UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState = {}
---@type UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState
CS.UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState = UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState.MicAudio = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState.ApplicationAudio = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState.ApplicationAndMicAudio = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.WebCam.VideoCapture.AudioState.None = 3

---@class UnityEngine.XR.WSA.WebCam.VideoCapture.VideoCaptureResult : System.ValueType
---@field public success System.Boolean @  getter
---@field public resultType UnityEngine.XR.WSA.WebCam.VideoCapture.CaptureResultType
---@field public hResult System.Int64
UnityEngine.XR.WSA.WebCam.VideoCapture.VideoCaptureResult = {}
---@type UnityEngine.XR.WSA.WebCam.VideoCapture.VideoCaptureResult
CS.UnityEngine.XR.WSA.WebCam.VideoCapture.VideoCaptureResult = UnityEngine.XR.WSA.WebCam.VideoCapture.VideoCaptureResult

---@class UnityEngine.XR.WSA.WebCam.CapturePixelFormat : System.Enum
UnityEngine.XR.WSA.WebCam.CapturePixelFormat = {}
---@type UnityEngine.XR.WSA.WebCam.CapturePixelFormat
CS.UnityEngine.XR.WSA.WebCam.CapturePixelFormat = UnityEngine.XR.WSA.WebCam.CapturePixelFormat

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.CapturePixelFormat.BGRA32 = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.CapturePixelFormat.NV12 = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.WebCam.CapturePixelFormat.JPEG = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.WebCam.CapturePixelFormat.PNG = 3

---@class UnityEngine.XR.WSA.WebCam.WebCamMode : System.Enum
UnityEngine.XR.WSA.WebCam.WebCamMode = {}
---@type UnityEngine.XR.WSA.WebCam.WebCamMode
CS.UnityEngine.XR.WSA.WebCam.WebCamMode = UnityEngine.XR.WSA.WebCam.WebCamMode

---@return System.Int32 value:0
UnityEngine.XR.WSA.WebCam.WebCamMode.None = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.WebCam.WebCamMode.PhotoMode = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.WebCam.WebCamMode.VideoMode = 2

---@class UnityEngine.XR.WSA.WebCam.WebCam : System.Object
---@field public Mode UnityEngine.XR.WSA.WebCam.WebCamMode @static  getter
UnityEngine.XR.WSA.WebCam.WebCam = {}
---@type UnityEngine.XR.WSA.WebCam.WebCam
CS.UnityEngine.XR.WSA.WebCam.WebCam = UnityEngine.XR.WSA.WebCam.WebCam

---@class UnityEngine.XR.WSA.WebCam.CameraParameters : System.ValueType
---@field public hologramOpacity System.Single @ setter getter
---@field public frameRate System.Single @ setter getter
---@field public cameraResolutionWidth System.Int32 @ setter getter
---@field public cameraResolutionHeight System.Int32 @ setter getter
---@field public pixelFormat UnityEngine.XR.WSA.WebCam.CapturePixelFormat @ setter getter
UnityEngine.XR.WSA.WebCam.CameraParameters = {}
---@type UnityEngine.XR.WSA.WebCam.CameraParameters
CS.UnityEngine.XR.WSA.WebCam.CameraParameters = UnityEngine.XR.WSA.WebCam.CameraParameters

