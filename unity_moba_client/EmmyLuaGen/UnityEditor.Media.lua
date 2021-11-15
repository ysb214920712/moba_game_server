---@class UnityEditor.Media.MediaRational : System.ValueType
---@field public numerator System.Int32
---@field public denominator System.Int32
UnityEditor.Media.MediaRational = {}
---@type UnityEditor.Media.MediaRational
CS.UnityEditor.Media.MediaRational = UnityEditor.Media.MediaRational

---@class UnityEditor.Media.VideoTrackAttributes : System.ValueType
---@field public frameRate UnityEditor.Media.MediaRational
---@field public width System.UInt32
---@field public height System.UInt32
---@field public includeAlpha System.Boolean
---@field public bitRateMode UnityEditor.VideoBitrateMode
UnityEditor.Media.VideoTrackAttributes = {}
---@type UnityEditor.Media.VideoTrackAttributes
CS.UnityEditor.Media.VideoTrackAttributes = UnityEditor.Media.VideoTrackAttributes

---@class UnityEditor.Media.AudioTrackAttributes : System.ValueType
---@field public sampleRate UnityEditor.Media.MediaRational
---@field public channelCount System.UInt16
---@field public language System.String
UnityEditor.Media.AudioTrackAttributes = {}
---@type UnityEditor.Media.AudioTrackAttributes
CS.UnityEditor.Media.AudioTrackAttributes = UnityEditor.Media.AudioTrackAttributes

---@class UnityEditor.Media.MediaEncoder : System.Object
---@field public m_Ptr System.IntPtr
UnityEditor.Media.MediaEncoder = {}
---@type UnityEditor.Media.MediaEncoder
CS.UnityEditor.Media.MediaEncoder = UnityEditor.Media.MediaEncoder

---@param texture UnityEngine.Texture2D
---@return System.Boolean
function UnityEditor.Media.MediaEncoder:AddFrame(texture)end
---@overload fun(trackIndex:System.UInt16, interleavedSamples:Unity.Collections.NativeArray):System.Boolean
---@param interleavedSamples Unity.Collections.NativeArray
---@return System.Boolean
function UnityEditor.Media.MediaEncoder:AddSamples(interleavedSamples)end
---@return System.Void
function UnityEditor.Media.MediaEncoder:Dispose()end
