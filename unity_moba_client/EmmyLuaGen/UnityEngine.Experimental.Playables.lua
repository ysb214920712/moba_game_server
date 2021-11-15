---@class UnityEngine.Experimental.Playables.CameraPlayable : System.ValueType
UnityEngine.Experimental.Playables.CameraPlayable = {}
---@type UnityEngine.Experimental.Playables.CameraPlayable
CS.UnityEngine.Experimental.Playables.CameraPlayable = UnityEngine.Experimental.Playables.CameraPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param camera UnityEngine.Camera
---@return UnityEngine.Experimental.Playables.CameraPlayable
function UnityEngine.Experimental.Playables.CameraPlayable.Create(graph, camera)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.CameraPlayable:GetHandle()end
---@param playable UnityEngine.Experimental.Playables.CameraPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Experimental.Playables.CameraPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.CameraPlayable
function UnityEngine.Experimental.Playables.CameraPlayable.op_Explicit(playable)end
---@param other UnityEngine.Experimental.Playables.CameraPlayable
---@return System.Boolean
function UnityEngine.Experimental.Playables.CameraPlayable:Equals(other)end
---@return UnityEngine.Camera
function UnityEngine.Experimental.Playables.CameraPlayable:GetCamera()end
---@param value UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Playables.CameraPlayable:SetCamera(value)end
---@class UnityEngine.Experimental.Playables.MaterialEffectPlayable : System.ValueType
UnityEngine.Experimental.Playables.MaterialEffectPlayable = {}
---@type UnityEngine.Experimental.Playables.MaterialEffectPlayable
CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable = UnityEngine.Experimental.Playables.MaterialEffectPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph, material:UnityEngine.Material):UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param material UnityEngine.Material
---@param pass System.Int32
---@return UnityEngine.Experimental.Playables.MaterialEffectPlayable
function UnityEngine.Experimental.Playables.MaterialEffectPlayable.Create(graph, material, pass)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetHandle()end
---@param playable UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Experimental.Playables.MaterialEffectPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.MaterialEffectPlayable
function UnityEngine.Experimental.Playables.MaterialEffectPlayable.op_Explicit(playable)end
---@param other UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return System.Boolean
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:Equals(other)end
---@return UnityEngine.Material
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetMaterial()end
---@param value UnityEngine.Material
---@return System.Void
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetMaterial(value)end
---@return System.Int32
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetPass()end
---@param value System.Int32
---@return System.Void
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetPass(value)end
---@class UnityEngine.Experimental.Playables.TextureMixerPlayable : System.ValueType
UnityEngine.Experimental.Playables.TextureMixerPlayable = {}
---@type UnityEngine.Experimental.Playables.TextureMixerPlayable
CS.UnityEngine.Experimental.Playables.TextureMixerPlayable = UnityEngine.Experimental.Playables.TextureMixerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Experimental.Playables.TextureMixerPlayable
function UnityEngine.Experimental.Playables.TextureMixerPlayable.Create(graph)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.TextureMixerPlayable:GetHandle()end
---@param playable UnityEngine.Experimental.Playables.TextureMixerPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Experimental.Playables.TextureMixerPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.TextureMixerPlayable
function UnityEngine.Experimental.Playables.TextureMixerPlayable.op_Explicit(playable)end
---@param other UnityEngine.Experimental.Playables.TextureMixerPlayable
---@return System.Boolean
function UnityEngine.Experimental.Playables.TextureMixerPlayable:Equals(other)end
---@class UnityEngine.Experimental.Playables.TexturePlayableBinding : System.Object
UnityEngine.Experimental.Playables.TexturePlayableBinding = {}
---@type UnityEngine.Experimental.Playables.TexturePlayableBinding
CS.UnityEngine.Experimental.Playables.TexturePlayableBinding = UnityEngine.Experimental.Playables.TexturePlayableBinding

---@param name System.String
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Experimental.Playables.TexturePlayableBinding.Create(name, key)end
---@class UnityEngine.Experimental.Playables.TexturePlayableOutput : System.ValueType
---@field public Null UnityEngine.Experimental.Playables.TexturePlayableOutput @static  getter
UnityEngine.Experimental.Playables.TexturePlayableOutput = {}
---@type UnityEngine.Experimental.Playables.TexturePlayableOutput
CS.UnityEngine.Experimental.Playables.TexturePlayableOutput = UnityEngine.Experimental.Playables.TexturePlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name System.String
---@param target UnityEngine.RenderTexture
---@return UnityEngine.Experimental.Playables.TexturePlayableOutput
function UnityEngine.Experimental.Playables.TexturePlayableOutput.Create(graph, name, target)end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Experimental.Playables.TexturePlayableOutput:GetHandle()end
---@param output UnityEngine.Experimental.Playables.TexturePlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Experimental.Playables.TexturePlayableOutput.op_Implicit(output)end
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Experimental.Playables.TexturePlayableOutput
function UnityEngine.Experimental.Playables.TexturePlayableOutput.op_Explicit(output)end
---@return UnityEngine.RenderTexture
function UnityEngine.Experimental.Playables.TexturePlayableOutput:GetTarget()end
---@param value UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.Experimental.Playables.TexturePlayableOutput:SetTarget(value)end
