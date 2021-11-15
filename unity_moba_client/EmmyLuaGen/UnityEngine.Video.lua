---@class UnityEngine.Video.VideoClip : UnityEngine.Object
---@field public originalPath System.String @  getter
---@field public frameCount System.UInt64 @  getter
---@field public frameRate System.Double @  getter
---@field public length System.Double @  getter
---@field public width System.UInt32 @  getter
---@field public height System.UInt32 @  getter
---@field public pixelAspectRatioNumerator System.UInt32 @  getter
---@field public pixelAspectRatioDenominator System.UInt32 @  getter
---@field public audioTrackCount System.UInt16 @  getter
UnityEngine.Video.VideoClip = {}
---@type UnityEngine.Video.VideoClip
CS.UnityEngine.Video.VideoClip = UnityEngine.Video.VideoClip

---@param audioTrackIdx System.UInt16
---@return System.UInt16
function UnityEngine.Video.VideoClip:GetAudioChannelCount(audioTrackIdx)end
---@param audioTrackIdx System.UInt16
---@return System.UInt32
function UnityEngine.Video.VideoClip:GetAudioSampleRate(audioTrackIdx)end
---@param audioTrackIdx System.UInt16
---@return System.String
function UnityEngine.Video.VideoClip:GetAudioLanguage(audioTrackIdx)end
---@class UnityEngine.Video.VideoRenderMode : System.Enum
UnityEngine.Video.VideoRenderMode = {}
---@type UnityEngine.Video.VideoRenderMode
CS.UnityEngine.Video.VideoRenderMode = UnityEngine.Video.VideoRenderMode

---@return System.Int32 value:0
UnityEngine.Video.VideoRenderMode.CameraFarPlane = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoRenderMode.CameraNearPlane = 1
---@return System.Int32 value:2
UnityEngine.Video.VideoRenderMode.RenderTexture = 2
---@return System.Int32 value:3
UnityEngine.Video.VideoRenderMode.MaterialOverride = 3
---@return System.Int32 value:4
UnityEngine.Video.VideoRenderMode.APIOnly = 4

---@class UnityEngine.Video.Video3DLayout : System.Enum
UnityEngine.Video.Video3DLayout = {}
---@type UnityEngine.Video.Video3DLayout
CS.UnityEngine.Video.Video3DLayout = UnityEngine.Video.Video3DLayout

---@return System.Int32 value:0
UnityEngine.Video.Video3DLayout.No3D = 0
---@return System.Int32 value:1
UnityEngine.Video.Video3DLayout.SideBySide3D = 1
---@return System.Int32 value:2
UnityEngine.Video.Video3DLayout.OverUnder3D = 2

---@class UnityEngine.Video.VideoAspectRatio : System.Enum
UnityEngine.Video.VideoAspectRatio = {}
---@type UnityEngine.Video.VideoAspectRatio
CS.UnityEngine.Video.VideoAspectRatio = UnityEngine.Video.VideoAspectRatio

---@return System.Int32 value:0
UnityEngine.Video.VideoAspectRatio.NoScaling = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoAspectRatio.FitVertically = 1
---@return System.Int32 value:2
UnityEngine.Video.VideoAspectRatio.FitHorizontally = 2
---@return System.Int32 value:3
UnityEngine.Video.VideoAspectRatio.FitInside = 3
---@return System.Int32 value:4
UnityEngine.Video.VideoAspectRatio.FitOutside = 4
---@return System.Int32 value:5
UnityEngine.Video.VideoAspectRatio.Stretch = 5

---@class UnityEngine.Video.VideoTimeSource : System.Enum
UnityEngine.Video.VideoTimeSource = {}
---@type UnityEngine.Video.VideoTimeSource
CS.UnityEngine.Video.VideoTimeSource = UnityEngine.Video.VideoTimeSource

---@return System.Int32 value:0
UnityEngine.Video.VideoTimeSource.AudioDSPTimeSource = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoTimeSource.GameTimeSource = 1

---@class UnityEngine.Video.VideoTimeReference : System.Enum
UnityEngine.Video.VideoTimeReference = {}
---@type UnityEngine.Video.VideoTimeReference
CS.UnityEngine.Video.VideoTimeReference = UnityEngine.Video.VideoTimeReference

---@return System.Int32 value:0
UnityEngine.Video.VideoTimeReference.Freerun = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoTimeReference.InternalTime = 1
---@return System.Int32 value:2
UnityEngine.Video.VideoTimeReference.ExternalTime = 2

---@class UnityEngine.Video.VideoSource : System.Enum
UnityEngine.Video.VideoSource = {}
---@type UnityEngine.Video.VideoSource
CS.UnityEngine.Video.VideoSource = UnityEngine.Video.VideoSource

---@return System.Int32 value:0
UnityEngine.Video.VideoSource.VideoClip = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoSource.Url = 1

---@class UnityEngine.Video.VideoAudioOutputMode : System.Enum
UnityEngine.Video.VideoAudioOutputMode = {}
---@type UnityEngine.Video.VideoAudioOutputMode
CS.UnityEngine.Video.VideoAudioOutputMode = UnityEngine.Video.VideoAudioOutputMode

---@return System.Int32 value:0
UnityEngine.Video.VideoAudioOutputMode.None = 0
---@return System.Int32 value:1
UnityEngine.Video.VideoAudioOutputMode.AudioSource = 1
---@return System.Int32 value:2
UnityEngine.Video.VideoAudioOutputMode.Direct = 2
---@return System.Int32 value:3
UnityEngine.Video.VideoAudioOutputMode.APIOnly = 3

---@class UnityEngine.Video.VideoPlayer : UnityEngine.Behaviour
---@field public source UnityEngine.Video.VideoSource @ setter getter
---@field public url System.String @ setter getter
---@field public clip UnityEngine.Video.VideoClip @ setter getter
---@field public renderMode UnityEngine.Video.VideoRenderMode @ setter getter
---@field public targetCamera UnityEngine.Camera @ setter getter
---@field public targetTexture UnityEngine.RenderTexture @ setter getter
---@field public targetMaterialRenderer UnityEngine.Renderer @ setter getter
---@field public targetMaterialProperty System.String @ setter getter
---@field public aspectRatio UnityEngine.Video.VideoAspectRatio @ setter getter
---@field public targetCameraAlpha System.Single @ setter getter
---@field public targetCamera3DLayout UnityEngine.Video.Video3DLayout @ setter getter
---@field public texture UnityEngine.Texture @  getter
---@field public isPrepared System.Boolean @  getter
---@field public waitForFirstFrame System.Boolean @ setter getter
---@field public playOnAwake System.Boolean @ setter getter
---@field public isPlaying System.Boolean @  getter
---@field public isPaused System.Boolean @  getter
---@field public canSetTime System.Boolean @  getter
---@field public time System.Double @ setter getter
---@field public frame System.Int64 @ setter getter
---@field public clockTime System.Double @  getter
---@field public canStep System.Boolean @  getter
---@field public canSetPlaybackSpeed System.Boolean @  getter
---@field public playbackSpeed System.Single @ setter getter
---@field public isLooping System.Boolean @ setter getter
---@field public canSetTimeSource System.Boolean @  getter
---@field public timeSource UnityEngine.Video.VideoTimeSource @ setter getter
---@field public timeReference UnityEngine.Video.VideoTimeReference @ setter getter
---@field public externalReferenceTime System.Double @ setter getter
---@field public canSetSkipOnDrop System.Boolean @  getter
---@field public skipOnDrop System.Boolean @ setter getter
---@field public frameCount System.UInt64 @  getter
---@field public frameRate System.Single @  getter
---@field public length System.Double @  getter
---@field public width System.UInt32 @  getter
---@field public height System.UInt32 @  getter
---@field public pixelAspectRatioNumerator System.UInt32 @  getter
---@field public pixelAspectRatioDenominator System.UInt32 @  getter
---@field public audioTrackCount System.UInt16 @  getter
---@field public controlledAudioTrackMaxCount System.UInt16 @static  getter
---@field public controlledAudioTrackCount System.UInt16 @ setter getter
---@field public audioOutputMode UnityEngine.Video.VideoAudioOutputMode @ setter getter
---@field public canSetDirectAudioVolume System.Boolean @  getter
---@field public sendFrameReadyEvents System.Boolean @ setter getter
UnityEngine.Video.VideoPlayer = {}
---@type UnityEngine.Video.VideoPlayer
CS.UnityEngine.Video.VideoPlayer = UnityEngine.Video.VideoPlayer

---@return System.Void
function UnityEngine.Video.VideoPlayer:Prepare()end
---@return System.Void
function UnityEngine.Video.VideoPlayer:Play()end
---@return System.Void
function UnityEngine.Video.VideoPlayer:Pause()end
---@return System.Void
function UnityEngine.Video.VideoPlayer:Stop()end
---@return System.Void
function UnityEngine.Video.VideoPlayer:StepForward()end
---@param trackIndex System.UInt16
---@return System.String
function UnityEngine.Video.VideoPlayer:GetAudioLanguageCode(trackIndex)end
---@param trackIndex System.UInt16
---@return System.UInt16
function UnityEngine.Video.VideoPlayer:GetAudioChannelCount(trackIndex)end
---@param trackIndex System.UInt16
---@return System.UInt32
function UnityEngine.Video.VideoPlayer:GetAudioSampleRate(trackIndex)end
---@param trackIndex System.UInt16
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Video.VideoPlayer:EnableAudioTrack(trackIndex, enabled)end
---@param trackIndex System.UInt16
---@return System.Boolean
function UnityEngine.Video.VideoPlayer:IsAudioTrackEnabled(trackIndex)end
---@param trackIndex System.UInt16
---@return System.Single
function UnityEngine.Video.VideoPlayer:GetDirectAudioVolume(trackIndex)end
---@param trackIndex System.UInt16
---@param volume System.Single
---@return System.Void
function UnityEngine.Video.VideoPlayer:SetDirectAudioVolume(trackIndex, volume)end
---@param trackIndex System.UInt16
---@return System.Boolean
function UnityEngine.Video.VideoPlayer:GetDirectAudioMute(trackIndex)end
---@param trackIndex System.UInt16
---@param mute System.Boolean
---@return System.Void
function UnityEngine.Video.VideoPlayer:SetDirectAudioMute(trackIndex, mute)end
---@param trackIndex System.UInt16
---@return UnityEngine.AudioSource
function UnityEngine.Video.VideoPlayer:GetTargetAudioSource(trackIndex)end
---@param trackIndex System.UInt16
---@param source UnityEngine.AudioSource
---@return System.Void
function UnityEngine.Video.VideoPlayer:SetTargetAudioSource(trackIndex, source)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_prepareCompleted(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_prepareCompleted(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_loopPointReached(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_loopPointReached(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_started(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_started(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_frameDropped(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_frameDropped(value)end
---@param value UnityEngine.Video.VideoPlayer.ErrorEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_errorReceived(value)end
---@param value UnityEngine.Video.VideoPlayer.ErrorEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_errorReceived(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_seekCompleted(value)end
---@param value UnityEngine.Video.VideoPlayer.EventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_seekCompleted(value)end
---@param value UnityEngine.Video.VideoPlayer.TimeEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_clockResyncOccurred(value)end
---@param value UnityEngine.Video.VideoPlayer.TimeEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_clockResyncOccurred(value)end
---@param value UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:add_frameReady(value)end
---@param value UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
---@return System.Void
function UnityEngine.Video.VideoPlayer:remove_frameReady(value)end
