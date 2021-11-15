---@class UnityEngine.Animations.AnimationPlayableBinding : System.Object
UnityEngine.Animations.AnimationPlayableBinding = {}
---@type UnityEngine.Animations.AnimationPlayableBinding
CS.UnityEngine.Animations.AnimationPlayableBinding = UnityEngine.Animations.AnimationPlayableBinding

---@param name System.String
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Animations.AnimationPlayableBinding.Create(name, key)end
---@class UnityEngine.Animations.AimConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public rotationAtRest UnityEngine.Vector3 @ setter getter
---@field public rotationOffset UnityEngine.Vector3 @ setter getter
---@field public rotationAxis UnityEngine.Animations.Axis @ setter getter
---@field public aimVector UnityEngine.Vector3 @ setter getter
---@field public upVector UnityEngine.Vector3 @ setter getter
---@field public worldUpVector UnityEngine.Vector3 @ setter getter
---@field public worldUpObject UnityEngine.Transform @ setter getter
---@field public worldUpType UnityEngine.Animations.AimConstraint.WorldUpType @ setter getter
---@field public sourceCount System.Int32 @  getter
UnityEngine.Animations.AimConstraint = {}
---@type UnityEngine.Animations.AimConstraint
CS.UnityEngine.Animations.AimConstraint = UnityEngine.Animations.AimConstraint

---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.AimConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.AimConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.AimConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.AimConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.AimConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.AimConstraint:SetSource(index, source)end
---@class UnityEngine.Animations.AimConstraint.WorldUpType : System.Enum
UnityEngine.Animations.AimConstraint.WorldUpType = {}
---@type UnityEngine.Animations.AimConstraint.WorldUpType
CS.UnityEngine.Animations.AimConstraint.WorldUpType = UnityEngine.Animations.AimConstraint.WorldUpType

---@return System.Int32 value:0
UnityEngine.Animations.AimConstraint.WorldUpType.SceneUp = 0
---@return System.Int32 value:1
UnityEngine.Animations.AimConstraint.WorldUpType.ObjectUp = 1
---@return System.Int32 value:2
UnityEngine.Animations.AimConstraint.WorldUpType.ObjectRotationUp = 2
---@return System.Int32 value:3
UnityEngine.Animations.AimConstraint.WorldUpType.Vector = 3
---@return System.Int32 value:4
UnityEngine.Animations.AimConstraint.WorldUpType.None = 4

---@class UnityEngine.Animations.AnimationClipPlayable : System.ValueType
UnityEngine.Animations.AnimationClipPlayable = {}
---@type UnityEngine.Animations.AnimationClipPlayable
CS.UnityEngine.Animations.AnimationClipPlayable = UnityEngine.Animations.AnimationClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.AnimationClip
---@return UnityEngine.Animations.AnimationClipPlayable
function UnityEngine.Animations.AnimationClipPlayable.Create(graph, clip)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationClipPlayable:GetHandle()end
---@param playable UnityEngine.Animations.AnimationClipPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Animations.AnimationClipPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Animations.AnimationClipPlayable
function UnityEngine.Animations.AnimationClipPlayable.op_Explicit(playable)end
---@param other UnityEngine.Animations.AnimationClipPlayable
---@return System.Boolean
function UnityEngine.Animations.AnimationClipPlayable:Equals(other)end
---@return UnityEngine.AnimationClip
function UnityEngine.Animations.AnimationClipPlayable:GetAnimationClip()end
---@return System.Boolean
function UnityEngine.Animations.AnimationClipPlayable:GetApplyFootIK()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Animations.AnimationClipPlayable:SetApplyFootIK(value)end
---@return System.Boolean
function UnityEngine.Animations.AnimationClipPlayable:GetApplyPlayableIK()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Animations.AnimationClipPlayable:SetApplyPlayableIK(value)end
---@class UnityEngine.Animations.AnimationLayerMixerPlayable : System.ValueType
---@field public Null UnityEngine.Animations.AnimationLayerMixerPlayable @static  getter
UnityEngine.Animations.AnimationLayerMixerPlayable = {}
---@type UnityEngine.Animations.AnimationLayerMixerPlayable
CS.UnityEngine.Animations.AnimationLayerMixerPlayable = UnityEngine.Animations.AnimationLayerMixerPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph):UnityEngine.Animations.AnimationLayerMixerPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount System.Int32
---@return UnityEngine.Animations.AnimationLayerMixerPlayable
function UnityEngine.Animations.AnimationLayerMixerPlayable.Create(graph, inputCount)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationLayerMixerPlayable:GetHandle()end
---@param playable UnityEngine.Animations.AnimationLayerMixerPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Animations.AnimationLayerMixerPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Animations.AnimationLayerMixerPlayable
function UnityEngine.Animations.AnimationLayerMixerPlayable.op_Explicit(playable)end
---@param other UnityEngine.Animations.AnimationLayerMixerPlayable
---@return System.Boolean
function UnityEngine.Animations.AnimationLayerMixerPlayable:Equals(other)end
---@param layerIndex System.UInt32
---@return System.Boolean
function UnityEngine.Animations.AnimationLayerMixerPlayable:IsLayerAdditive(layerIndex)end
---@param layerIndex System.UInt32
---@param value System.Boolean
---@return System.Void
function UnityEngine.Animations.AnimationLayerMixerPlayable:SetLayerAdditive(layerIndex, value)end
---@param layerIndex System.UInt32
---@param mask UnityEngine.AvatarMask
---@return System.Void
function UnityEngine.Animations.AnimationLayerMixerPlayable:SetLayerMaskFromAvatarMask(layerIndex, mask)end
---@class UnityEngine.Animations.AnimationMixerPlayable : System.ValueType
---@field public Null UnityEngine.Animations.AnimationMixerPlayable @static  getter
UnityEngine.Animations.AnimationMixerPlayable = {}
---@type UnityEngine.Animations.AnimationMixerPlayable
CS.UnityEngine.Animations.AnimationMixerPlayable = UnityEngine.Animations.AnimationMixerPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph, inputCount:System.Int32):UnityEngine.Animations.AnimationMixerPlayable
---@overload fun(graph:UnityEngine.Playables.PlayableGraph):UnityEngine.Animations.AnimationMixerPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount System.Int32
---@param normalizeWeights System.Boolean
---@return UnityEngine.Animations.AnimationMixerPlayable
function UnityEngine.Animations.AnimationMixerPlayable.Create(graph, inputCount, normalizeWeights)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationMixerPlayable:GetHandle()end
---@param playable UnityEngine.Animations.AnimationMixerPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Animations.AnimationMixerPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Animations.AnimationMixerPlayable
function UnityEngine.Animations.AnimationMixerPlayable.op_Explicit(playable)end
---@param other UnityEngine.Animations.AnimationMixerPlayable
---@return System.Boolean
function UnityEngine.Animations.AnimationMixerPlayable:Equals(other)end
---@class UnityEngine.Animations.AnimationPlayableExtensions : System.Object
UnityEngine.Animations.AnimationPlayableExtensions = {}
---@type UnityEngine.Animations.AnimationPlayableExtensions
CS.UnityEngine.Animations.AnimationPlayableExtensions = UnityEngine.Animations.AnimationPlayableExtensions

---@class UnityEngine.Animations.AnimationPlayableOutput : System.ValueType
---@field public Null UnityEngine.Animations.AnimationPlayableOutput @static  getter
UnityEngine.Animations.AnimationPlayableOutput = {}
---@type UnityEngine.Animations.AnimationPlayableOutput
CS.UnityEngine.Animations.AnimationPlayableOutput = UnityEngine.Animations.AnimationPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name System.String
---@param target UnityEngine.Animator
---@return UnityEngine.Animations.AnimationPlayableOutput
function UnityEngine.Animations.AnimationPlayableOutput.Create(graph, name, target)end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Animations.AnimationPlayableOutput:GetHandle()end
---@param output UnityEngine.Animations.AnimationPlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Animations.AnimationPlayableOutput.op_Implicit(output)end
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Animations.AnimationPlayableOutput
function UnityEngine.Animations.AnimationPlayableOutput.op_Explicit(output)end
---@return UnityEngine.Animator
function UnityEngine.Animations.AnimationPlayableOutput:GetTarget()end
---@param value UnityEngine.Animator
---@return System.Void
function UnityEngine.Animations.AnimationPlayableOutput:SetTarget(value)end
---@class UnityEngine.Animations.AnimatorControllerPlayable : System.ValueType
---@field public Null UnityEngine.Animations.AnimatorControllerPlayable @static  getter
UnityEngine.Animations.AnimatorControllerPlayable = {}
---@type UnityEngine.Animations.AnimatorControllerPlayable
CS.UnityEngine.Animations.AnimatorControllerPlayable = UnityEngine.Animations.AnimatorControllerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param controller UnityEngine.RuntimeAnimatorController
---@return UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.Animations.AnimatorControllerPlayable.Create(graph, controller)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimatorControllerPlayable:GetHandle()end
---@param handle UnityEngine.Playables.PlayableHandle
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetHandle(handle)end
---@param playable UnityEngine.Animations.AnimatorControllerPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Animations.AnimatorControllerPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.Animations.AnimatorControllerPlayable.op_Explicit(playable)end
---@param other UnityEngine.Animations.AnimatorControllerPlayable
---@return System.Boolean
function UnityEngine.Animations.AnimatorControllerPlayable:Equals(other)end
---@overload fun(name:System.String):System.Single
---@param id System.Int32
---@return System.Single
function UnityEngine.Animations.AnimatorControllerPlayable:GetFloat(id)end
---@overload fun(name:System.String, value:System.Single):System.Void
---@param id System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetFloat(id, value)end
---@overload fun(name:System.String):System.Boolean
---@param id System.Int32
---@return System.Boolean
function UnityEngine.Animations.AnimatorControllerPlayable:GetBool(id)end
---@overload fun(name:System.String, value:System.Boolean):System.Void
---@param id System.Int32
---@param value System.Boolean
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetBool(id, value)end
---@overload fun(name:System.String):System.Int32
---@param id System.Int32
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetInteger(id)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param id System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetInteger(id, value)end
---@overload fun(name:System.String):System.Void
---@param id System.Int32
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetTrigger(id)end
---@overload fun(name:System.String):System.Void
---@param id System.Int32
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:ResetTrigger(id)end
---@overload fun(name:System.String):System.Boolean
---@param id System.Int32
---@return System.Boolean
function UnityEngine.Animations.AnimatorControllerPlayable:IsParameterControlledByCurve(id)end
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerCount()end
---@param layerIndex System.Int32
---@return System.String
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerName(layerIndex)end
---@param layerName System.String
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerIndex(layerName)end
---@param layerIndex System.Int32
---@return System.Single
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerWeight(layerIndex)end
---@param layerIndex System.Int32
---@param weight System.Single
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:SetLayerWeight(layerIndex, weight)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorStateInfo(layerIndex)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorStateInfo(layerIndex)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorTransitionInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetAnimatorTransitionInfo(layerIndex)end
---@overload fun(layerIndex:System.Int32, clips:System.Collections.Generic.List):System.Void
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorClipInfo[]
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorClipInfo(layerIndex)end
---@overload fun(layerIndex:System.Int32, clips:System.Collections.Generic.List):System.Void
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorClipInfo[]
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorClipInfo(layerIndex)end
---@param layerIndex System.Int32
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorClipInfoCount(layerIndex)end
---@param layerIndex System.Int32
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorClipInfoCount(layerIndex)end
---@param layerIndex System.Int32
---@return System.Boolean
function UnityEngine.Animations.AnimatorControllerPlayable:IsInTransition(layerIndex)end
---@return System.Int32
function UnityEngine.Animations.AnimatorControllerPlayable:GetParameterCount()end
---@param index System.Int32
---@return UnityEngine.AnimatorControllerParameter
function UnityEngine.Animations.AnimatorControllerPlayable:GetParameter(index)end
---@overload fun(stateNameHash:System.Int32, transitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, transitionDuration:System.Single, layer:System.Int32, fixedTime:System.Single):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single, layer:System.Int32, fixedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@param transitionDuration System.Single
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:CrossFadeInFixedTime(stateNameHash, transitionDuration)end
---@overload fun(stateNameHash:System.Int32, transitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, transitionDuration:System.Single, layer:System.Int32, normalizedTime:System.Single):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, transitionDuration:System.Single, layer:System.Int32, normalizedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@param transitionDuration System.Single
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:CrossFade(stateNameHash, transitionDuration)end
---@overload fun(stateNameHash:System.Int32, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, layer:System.Int32, fixedTime:System.Single):System.Void
---@overload fun(stateName:System.String):System.Void
---@overload fun(stateName:System.String, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, layer:System.Int32, fixedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:PlayInFixedTime(stateNameHash)end
---@overload fun(stateNameHash:System.Int32, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, layer:System.Int32, normalizedTime:System.Single):System.Void
---@overload fun(stateName:System.String):System.Void
---@overload fun(stateName:System.String, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, layer:System.Int32, normalizedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@return System.Void
function UnityEngine.Animations.AnimatorControllerPlayable:Play(stateNameHash)end
---@param layerIndex System.Int32
---@param stateID System.Int32
---@return System.Boolean
function UnityEngine.Animations.AnimatorControllerPlayable:HasState(layerIndex, stateID)end
---@class UnityEngine.Animations.Axis : System.Enum
UnityEngine.Animations.Axis = {}
---@type UnityEngine.Animations.Axis
CS.UnityEngine.Animations.Axis = UnityEngine.Animations.Axis

---@return System.Int32 value:0
UnityEngine.Animations.Axis.None = 0
---@return System.Int32 value:1
UnityEngine.Animations.Axis.X = 1
---@return System.Int32 value:2
UnityEngine.Animations.Axis.Y = 2

---@class UnityEngine.Animations.ConstraintSource : System.ValueType
---@field public sourceTransform UnityEngine.Transform @ setter getter
---@field public weight System.Single @ setter getter
UnityEngine.Animations.ConstraintSource = {}
---@type UnityEngine.Animations.ConstraintSource
CS.UnityEngine.Animations.ConstraintSource = UnityEngine.Animations.ConstraintSource

---@class UnityEngine.Animations.PositionConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public translationAtRest UnityEngine.Vector3 @ setter getter
---@field public translationOffset UnityEngine.Vector3 @ setter getter
---@field public translationAxis UnityEngine.Animations.Axis @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public sourceCount System.Int32 @  getter
UnityEngine.Animations.PositionConstraint = {}
---@type UnityEngine.Animations.PositionConstraint
CS.UnityEngine.Animations.PositionConstraint = UnityEngine.Animations.PositionConstraint

---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.PositionConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.PositionConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.PositionConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.PositionConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.PositionConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.PositionConstraint:SetSource(index, source)end
---@class UnityEngine.Animations.RotationConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public rotationAtRest UnityEngine.Vector3 @ setter getter
---@field public rotationOffset UnityEngine.Vector3 @ setter getter
---@field public rotationAxis UnityEngine.Animations.Axis @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public sourceCount System.Int32 @  getter
UnityEngine.Animations.RotationConstraint = {}
---@type UnityEngine.Animations.RotationConstraint
CS.UnityEngine.Animations.RotationConstraint = UnityEngine.Animations.RotationConstraint

---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.RotationConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.RotationConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.RotationConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.RotationConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.RotationConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.RotationConstraint:SetSource(index, source)end
---@class UnityEngine.Animations.ScaleConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public scaleAtRest UnityEngine.Vector3 @ setter getter
---@field public scaleOffset UnityEngine.Vector3 @ setter getter
---@field public scalingAxis UnityEngine.Animations.Axis @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public sourceCount System.Int32 @  getter
UnityEngine.Animations.ScaleConstraint = {}
---@type UnityEngine.Animations.ScaleConstraint
CS.UnityEngine.Animations.ScaleConstraint = UnityEngine.Animations.ScaleConstraint

---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.ScaleConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.ScaleConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.ScaleConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.ScaleConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ScaleConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.ScaleConstraint:SetSource(index, source)end
---@class UnityEngine.Animations.LookAtConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public roll System.Single @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public rotationAtRest UnityEngine.Vector3 @ setter getter
---@field public rotationOffset UnityEngine.Vector3 @ setter getter
---@field public worldUpObject UnityEngine.Transform @ setter getter
---@field public useUpObject System.Boolean @ setter getter
---@field public sourceCount System.Int32 @  getter
UnityEngine.Animations.LookAtConstraint = {}
---@type UnityEngine.Animations.LookAtConstraint
CS.UnityEngine.Animations.LookAtConstraint = UnityEngine.Animations.LookAtConstraint

---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.LookAtConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.LookAtConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.LookAtConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.LookAtConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.LookAtConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.LookAtConstraint:SetSource(index, source)end
---@class UnityEngine.Animations.ParentConstraint : UnityEngine.Behaviour
---@field public weight System.Single @ setter getter
---@field public constraintActive System.Boolean @ setter getter
---@field public locked System.Boolean @ setter getter
---@field public sourceCount System.Int32 @  getter
---@field public translationAtRest UnityEngine.Vector3 @ setter getter
---@field public rotationAtRest UnityEngine.Vector3 @ setter getter
---@field public translationOffsets UnityEngine.Vector3[] @ setter getter
---@field public rotationOffsets UnityEngine.Vector3[] @ setter getter
---@field public translationAxis UnityEngine.Animations.Axis @ setter getter
---@field public rotationAxis UnityEngine.Animations.Axis @ setter getter
UnityEngine.Animations.ParentConstraint = {}
---@type UnityEngine.Animations.ParentConstraint
CS.UnityEngine.Animations.ParentConstraint = UnityEngine.Animations.ParentConstraint

---@param index System.Int32
---@return UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:GetTranslationOffset(index)end
---@param index System.Int32
---@param value UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animations.ParentConstraint:SetTranslationOffset(index, value)end
---@param index System.Int32
---@return UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:GetRotationOffset(index)end
---@param index System.Int32
---@param value UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animations.ParentConstraint:SetRotationOffset(index, value)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.ParentConstraint:GetSources(sources)end
---@param sources System.Collections.Generic.List
---@return System.Void
function UnityEngine.Animations.ParentConstraint:SetSources(sources)end
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Int32
function UnityEngine.Animations.ParentConstraint:AddSource(source)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Animations.ParentConstraint:RemoveSource(index)end
---@param index System.Int32
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ParentConstraint:GetSource(index)end
---@param index System.Int32
---@param source UnityEngine.Animations.ConstraintSource
---@return System.Void
function UnityEngine.Animations.ParentConstraint:SetSource(index, source)end
