---@class UnityEngine.Experimental.Audio.AudioSampleProvider : System.Object
---@field public id System.UInt32 @ setter getter
---@field public trackIndex System.UInt16 @ setter getter
---@field public owner UnityEngine.Object @ setter getter
---@field public valid System.Boolean @  getter
---@field public channelCount System.UInt16 @ setter getter
---@field public sampleRate System.UInt32 @ setter getter
---@field public maxSampleFrameCount System.UInt32 @  getter
---@field public availableSampleFrameCount System.UInt32 @  getter
---@field public freeSampleFrameCount System.UInt32 @  getter
---@field public freeSampleFrameCountLowThreshold System.UInt32 @ setter getter
---@field public enableSampleFramesAvailableEvents System.Boolean @ setter getter
---@field public enableSilencePadding System.Boolean @ setter getter
---@field public consumeSampleFramesNativeFunction UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction @static  getter
UnityEngine.Experimental.Audio.AudioSampleProvider = {}
---@type UnityEngine.Experimental.Audio.AudioSampleProvider
CS.UnityEngine.Experimental.Audio.AudioSampleProvider = UnityEngine.Experimental.Audio.AudioSampleProvider

---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:Dispose()end
---@param sampleFrames Unity.Collections.NativeArray
---@return System.UInt32
function UnityEngine.Experimental.Audio.AudioSampleProvider:ConsumeSampleFrames(sampleFrames)end
---@param value UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:add_sampleFramesAvailable(value)end
---@param value UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:remove_sampleFramesAvailable(value)end
---@param value UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:add_sampleFramesOverflow(value)end
---@param value UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:remove_sampleFramesOverflow(value)end
---@param handler UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
---@param userData System.IntPtr
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesAvailableNativeHandler(handler, userData)end
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesAvailableNativeHandler()end
---@param handler UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
---@param userData System.IntPtr
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesOverflowNativeHandler(handler, userData)end
---@return System.Void
function UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesOverflowNativeHandler()end
