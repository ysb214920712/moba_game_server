---@class UnityEngine.Experimental.Video.VideoClipPlayable : System.ValueType
UnityEngine.Experimental.Video.VideoClipPlayable = {}
---@type UnityEngine.Experimental.Video.VideoClipPlayable
CS.UnityEngine.Experimental.Video.VideoClipPlayable = UnityEngine.Experimental.Video.VideoClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.Video.VideoClip
---@param looping System.Boolean
---@return UnityEngine.Experimental.Video.VideoClipPlayable
function UnityEngine.Experimental.Video.VideoClipPlayable.Create(graph, clip, looping)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Video.VideoClipPlayable:GetHandle()end
---@param playable UnityEngine.Experimental.Video.VideoClipPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Experimental.Video.VideoClipPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Video.VideoClipPlayable
function UnityEngine.Experimental.Video.VideoClipPlayable.op_Explicit(playable)end
---@param other UnityEngine.Experimental.Video.VideoClipPlayable
---@return System.Boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:Equals(other)end
---@return UnityEngine.Video.VideoClip
function UnityEngine.Experimental.Video.VideoClipPlayable:GetClip()end
---@param value UnityEngine.Video.VideoClip
---@return System.Void
function UnityEngine.Experimental.Video.VideoClipPlayable:SetClip(value)end
---@return System.Boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:GetLooped()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Experimental.Video.VideoClipPlayable:SetLooped(value)end
---@return System.Boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:IsPlaying()end
---@return System.Double
function UnityEngine.Experimental.Video.VideoClipPlayable:GetStartDelay()end
---@return System.Double
function UnityEngine.Experimental.Video.VideoClipPlayable:GetPauseDelay()end
---@overload fun(startTime:System.Double, startDelay:System.Double, duration:System.Double):System.Void
---@param startTime System.Double
---@param startDelay System.Double
---@return System.Void
function UnityEngine.Experimental.Video.VideoClipPlayable:Seek(startTime, startDelay)end
---@class UnityEngine.Experimental.Video.VideoPlayerExtensions : System.Object
UnityEngine.Experimental.Video.VideoPlayerExtensions = {}
---@type UnityEngine.Experimental.Video.VideoPlayerExtensions
CS.UnityEngine.Experimental.Video.VideoPlayerExtensions = UnityEngine.Experimental.Video.VideoPlayerExtensions

