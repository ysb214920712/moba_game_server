---@class UnityEngine.Audio.AudioMixerUpdateMode : System.Enum
UnityEngine.Audio.AudioMixerUpdateMode = {}
---@type UnityEngine.Audio.AudioMixerUpdateMode
CS.UnityEngine.Audio.AudioMixerUpdateMode = UnityEngine.Audio.AudioMixerUpdateMode

---@return System.Int32 value:0
UnityEngine.Audio.AudioMixerUpdateMode.Normal = 0
---@return System.Int32 value:1
UnityEngine.Audio.AudioMixerUpdateMode.UnscaledTime = 1

---@class UnityEngine.Audio.AudioMixer : UnityEngine.Object
---@field public outputAudioMixerGroup UnityEngine.Audio.AudioMixerGroup @ setter getter
---@field public updateMode UnityEngine.Audio.AudioMixerUpdateMode @ setter getter
UnityEngine.Audio.AudioMixer = {}
---@type UnityEngine.Audio.AudioMixer
CS.UnityEngine.Audio.AudioMixer = UnityEngine.Audio.AudioMixer

---@param subPath System.String
---@return UnityEngine.Audio.AudioMixerGroup[]
function UnityEngine.Audio.AudioMixer:FindMatchingGroups(subPath)end
---@param name System.String
---@return UnityEngine.Audio.AudioMixerSnapshot
function UnityEngine.Audio.AudioMixer:FindSnapshot(name)end
---@param snapshots UnityEngine.Audio.AudioMixerSnapshot[]
---@param weights System.Single[]
---@param timeToReach System.Single
---@return System.Void
function UnityEngine.Audio.AudioMixer:TransitionToSnapshots(snapshots, weights, timeToReach)end
---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEngine.Audio.AudioMixer:SetFloat(name, value)end
---@param name System.String
---@return System.Boolean
function UnityEngine.Audio.AudioMixer:ClearFloat(name)end
---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEngine.Audio.AudioMixer:GetFloat(name, value)end
---@class UnityEngine.Audio.AudioMixerSnapshot : UnityEngine.Object
---@field public audioMixer UnityEngine.Audio.AudioMixer @  getter
UnityEngine.Audio.AudioMixerSnapshot = {}
---@type UnityEngine.Audio.AudioMixerSnapshot
CS.UnityEngine.Audio.AudioMixerSnapshot = UnityEngine.Audio.AudioMixerSnapshot

---@param timeToReach System.Single
---@return System.Void
function UnityEngine.Audio.AudioMixerSnapshot:TransitionTo(timeToReach)end
---@class UnityEngine.Audio.AudioMixerGroup : UnityEngine.Object
---@field public audioMixer UnityEngine.Audio.AudioMixer @  getter
UnityEngine.Audio.AudioMixerGroup = {}
---@type UnityEngine.Audio.AudioMixerGroup
CS.UnityEngine.Audio.AudioMixerGroup = UnityEngine.Audio.AudioMixerGroup

---@class UnityEngine.Audio.AudioPlayableOutput : System.ValueType
---@field public Null UnityEngine.Audio.AudioPlayableOutput @static  getter
UnityEngine.Audio.AudioPlayableOutput = {}
---@type UnityEngine.Audio.AudioPlayableOutput
CS.UnityEngine.Audio.AudioPlayableOutput = UnityEngine.Audio.AudioPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name System.String
---@param target UnityEngine.AudioSource
---@return UnityEngine.Audio.AudioPlayableOutput
function UnityEngine.Audio.AudioPlayableOutput.Create(graph, name, target)end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Audio.AudioPlayableOutput:GetHandle()end
---@param output UnityEngine.Audio.AudioPlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Audio.AudioPlayableOutput.op_Implicit(output)end
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Audio.AudioPlayableOutput
function UnityEngine.Audio.AudioPlayableOutput.op_Explicit(output)end
---@return UnityEngine.AudioSource
function UnityEngine.Audio.AudioPlayableOutput:GetTarget()end
---@param value UnityEngine.AudioSource
---@return System.Void
function UnityEngine.Audio.AudioPlayableOutput:SetTarget(value)end
---@return System.Boolean
function UnityEngine.Audio.AudioPlayableOutput:GetEvaluateOnSeek()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Audio.AudioPlayableOutput:SetEvaluateOnSeek(value)end
---@class UnityEngine.Audio.AudioClipPlayable : System.ValueType
UnityEngine.Audio.AudioClipPlayable = {}
---@type UnityEngine.Audio.AudioClipPlayable
CS.UnityEngine.Audio.AudioClipPlayable = UnityEngine.Audio.AudioClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.AudioClip
---@param looping System.Boolean
---@return UnityEngine.Audio.AudioClipPlayable
function UnityEngine.Audio.AudioClipPlayable.Create(graph, clip, looping)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Audio.AudioClipPlayable:GetHandle()end
---@param playable UnityEngine.Audio.AudioClipPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Audio.AudioClipPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Audio.AudioClipPlayable
function UnityEngine.Audio.AudioClipPlayable.op_Explicit(playable)end
---@param other UnityEngine.Audio.AudioClipPlayable
---@return System.Boolean
function UnityEngine.Audio.AudioClipPlayable:Equals(other)end
---@return UnityEngine.AudioClip
function UnityEngine.Audio.AudioClipPlayable:GetClip()end
---@param value UnityEngine.AudioClip
---@return System.Void
function UnityEngine.Audio.AudioClipPlayable:SetClip(value)end
---@return System.Boolean
function UnityEngine.Audio.AudioClipPlayable:GetLooped()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Audio.AudioClipPlayable:SetLooped(value)end
---@return System.Boolean
function UnityEngine.Audio.AudioClipPlayable:IsPlaying()end
---@return System.Boolean
function UnityEngine.Audio.AudioClipPlayable:IsChannelPlaying()end
---@return System.Double
function UnityEngine.Audio.AudioClipPlayable:GetStartDelay()end
---@return System.Double
function UnityEngine.Audio.AudioClipPlayable:GetPauseDelay()end
---@overload fun(startTime:System.Double, startDelay:System.Double, duration:System.Double):System.Void
---@param startTime System.Double
---@param startDelay System.Double
---@return System.Void
function UnityEngine.Audio.AudioClipPlayable:Seek(startTime, startDelay)end
---@class UnityEngine.Audio.AudioMixerPlayable : System.ValueType
UnityEngine.Audio.AudioMixerPlayable = {}
---@type UnityEngine.Audio.AudioMixerPlayable
CS.UnityEngine.Audio.AudioMixerPlayable = UnityEngine.Audio.AudioMixerPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph, inputCount:System.Int32):UnityEngine.Audio.AudioMixerPlayable
---@overload fun(graph:UnityEngine.Playables.PlayableGraph):UnityEngine.Audio.AudioMixerPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount System.Int32
---@param normalizeInputVolumes System.Boolean
---@return UnityEngine.Audio.AudioMixerPlayable
function UnityEngine.Audio.AudioMixerPlayable.Create(graph, inputCount, normalizeInputVolumes)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Audio.AudioMixerPlayable:GetHandle()end
---@param playable UnityEngine.Audio.AudioMixerPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Audio.AudioMixerPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Audio.AudioMixerPlayable
function UnityEngine.Audio.AudioMixerPlayable.op_Explicit(playable)end
---@param other UnityEngine.Audio.AudioMixerPlayable
---@return System.Boolean
function UnityEngine.Audio.AudioMixerPlayable:Equals(other)end
---@class UnityEngine.Audio.AudioPlayableBinding : System.Object
UnityEngine.Audio.AudioPlayableBinding = {}
---@type UnityEngine.Audio.AudioPlayableBinding
CS.UnityEngine.Audio.AudioPlayableBinding = UnityEngine.Audio.AudioPlayableBinding

---@param name System.String
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Audio.AudioPlayableBinding.Create(name, key)end
