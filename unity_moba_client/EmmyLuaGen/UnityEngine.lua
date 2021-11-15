---@class UnityEngine.AnimationEvent : System.Object
---@field public data System.String @ setter getter
---@field public stringParameter System.String @ setter getter
---@field public floatParameter System.Single @ setter getter
---@field public intParameter System.Int32 @ setter getter
---@field public objectReferenceParameter UnityEngine.Object @ setter getter
---@field public functionName System.String @ setter getter
---@field public time System.Single @ setter getter
---@field public messageOptions UnityEngine.SendMessageOptions @ setter getter
---@field public isFiredByLegacy System.Boolean @  getter
---@field public isFiredByAnimator System.Boolean @  getter
---@field public animationState UnityEngine.AnimationState @  getter
---@field public animatorStateInfo UnityEngine.AnimatorStateInfo @  getter
---@field public animatorClipInfo UnityEngine.AnimatorClipInfo @  getter
UnityEngine.AnimationEvent = {}
---@type UnityEngine.AnimationEvent
CS.UnityEngine.AnimationEvent = UnityEngine.AnimationEvent

---@class UnityEngine.AnimationClip : UnityEngine.Motion
---@field public events UnityEngine.AnimationEvent[] @ setter getter
---@field public length System.Single @  getter
---@field public frameRate System.Single @ setter getter
---@field public wrapMode UnityEngine.WrapMode @ setter getter
---@field public localBounds UnityEngine.Bounds @ setter getter
---@field public legacy System.Boolean @ setter getter
---@field public humanMotion System.Boolean @  getter
---@field public empty System.Boolean @  getter
---@field public hasGenericRootTransform System.Boolean @  getter
---@field public hasMotionFloatCurves System.Boolean @  getter
---@field public hasMotionCurves System.Boolean @  getter
---@field public hasRootCurves System.Boolean @  getter
UnityEngine.AnimationClip = {}
---@type UnityEngine.AnimationClip
CS.UnityEngine.AnimationClip = UnityEngine.AnimationClip

---@param evt UnityEngine.AnimationEvent
---@return System.Void
function UnityEngine.AnimationClip:AddEvent(evt)end
---@param go UnityEngine.GameObject
---@param time System.Single
---@return System.Void
function UnityEngine.AnimationClip:SampleAnimation(go, time)end
---@param relativePath System.String
---@param type System.Type
---@param propertyName System.String
---@param curve UnityEngine.AnimationCurve
---@return System.Void
function UnityEngine.AnimationClip:SetCurve(relativePath, type, propertyName, curve)end
---@return System.Void
function UnityEngine.AnimationClip:EnsureQuaternionContinuity()end
---@return System.Void
function UnityEngine.AnimationClip:ClearCurves()end
---@class UnityEngine.PlayMode : System.Enum
UnityEngine.PlayMode = {}
---@type UnityEngine.PlayMode
CS.UnityEngine.PlayMode = UnityEngine.PlayMode

---@return System.Int32 value:0
UnityEngine.PlayMode.StopSameLayer = 0

---@class UnityEngine.QueueMode : System.Enum
UnityEngine.QueueMode = {}
---@type UnityEngine.QueueMode
CS.UnityEngine.QueueMode = UnityEngine.QueueMode

---@return System.Int32 value:0
UnityEngine.QueueMode.CompleteOthers = 0

---@class UnityEngine.AnimationBlendMode : System.Enum
UnityEngine.AnimationBlendMode = {}
---@type UnityEngine.AnimationBlendMode
CS.UnityEngine.AnimationBlendMode = UnityEngine.AnimationBlendMode

---@return System.Int32 value:0
UnityEngine.AnimationBlendMode.Blend = 0
---@return System.Int32 value:1
UnityEngine.AnimationBlendMode.Additive = 1

---@class UnityEngine.AnimationPlayMode : System.Enum
UnityEngine.AnimationPlayMode = {}
---@type UnityEngine.AnimationPlayMode
CS.UnityEngine.AnimationPlayMode = UnityEngine.AnimationPlayMode

---@return System.Int32 value:0
UnityEngine.AnimationPlayMode.Stop = 0
---@return System.Int32 value:1
UnityEngine.AnimationPlayMode.Queue = 1
---@return System.Int32 value:2
UnityEngine.AnimationPlayMode.Mix = 2

---@class UnityEngine.AnimationCullingType : System.Enum
UnityEngine.AnimationCullingType = {}
---@type UnityEngine.AnimationCullingType
CS.UnityEngine.AnimationCullingType = UnityEngine.AnimationCullingType

---@return System.Int32 value:0
UnityEngine.AnimationCullingType.AlwaysAnimate = 0
---@return System.Int32 value:1
UnityEngine.AnimationCullingType.BasedOnRenderers = 1
---@return System.Int32 value:2
UnityEngine.AnimationCullingType.BasedOnClipBounds = 2
---@return System.Int32 value:3
UnityEngine.AnimationCullingType.BasedOnUserBounds = 3

---@class UnityEngine.Animation : UnityEngine.Behaviour
---@field public clip UnityEngine.AnimationClip @ setter getter
---@field public playAutomatically System.Boolean @ setter getter
---@field public wrapMode UnityEngine.WrapMode @ setter getter
---@field public isPlaying System.Boolean @  getter
---@field public Item UnityEngine.AnimationState @  getter
---@field public animatePhysics System.Boolean @ setter getter
---@field public animateOnlyIfVisible System.Boolean @ setter getter
---@field public cullingType UnityEngine.AnimationCullingType @ setter getter
---@field public localBounds UnityEngine.Bounds @ setter getter
UnityEngine.Animation = {}
---@type UnityEngine.Animation
CS.UnityEngine.Animation = UnityEngine.Animation

---@overload fun(name:System.String):System.Void
---@return System.Void
function UnityEngine.Animation:Stop()end
---@overload fun(name:System.String):System.Void
---@return System.Void
function UnityEngine.Animation:Rewind()end
---@return System.Void
function UnityEngine.Animation:Sample()end
---@param name System.String
---@return System.Boolean
function UnityEngine.Animation:IsPlaying(name)end
---@overload fun(mode:UnityEngine.PlayMode):System.Boolean
---@overload fun(animation:System.String):System.Boolean
---@overload fun(mode:UnityEngine.AnimationPlayMode):System.Boolean
---@overload fun(animation:System.String, mode:UnityEngine.PlayMode):System.Boolean
---@overload fun(animation:System.String, mode:UnityEngine.AnimationPlayMode):System.Boolean
---@return System.Boolean
function UnityEngine.Animation:Play()end
---@overload fun(animation:System.String, fadeLength:System.Single):System.Void
---@overload fun(animation:System.String, fadeLength:System.Single, mode:UnityEngine.PlayMode):System.Void
---@param animation System.String
---@return System.Void
function UnityEngine.Animation:CrossFade(animation)end
---@overload fun(animation:System.String, targetWeight:System.Single):System.Void
---@overload fun(animation:System.String, targetWeight:System.Single, fadeLength:System.Single):System.Void
---@param animation System.String
---@return System.Void
function UnityEngine.Animation:Blend(animation)end
---@overload fun(animation:System.String, fadeLength:System.Single):UnityEngine.AnimationState
---@overload fun(animation:System.String, fadeLength:System.Single, queue:UnityEngine.QueueMode):UnityEngine.AnimationState
---@overload fun(animation:System.String, fadeLength:System.Single, queue:UnityEngine.QueueMode, mode:UnityEngine.PlayMode):UnityEngine.AnimationState
---@param animation System.String
---@return UnityEngine.AnimationState
function UnityEngine.Animation:CrossFadeQueued(animation)end
---@overload fun(animation:System.String, queue:UnityEngine.QueueMode):UnityEngine.AnimationState
---@overload fun(animation:System.String, queue:UnityEngine.QueueMode, mode:UnityEngine.PlayMode):UnityEngine.AnimationState
---@param animation System.String
---@return UnityEngine.AnimationState
function UnityEngine.Animation:PlayQueued(animation)end
---@overload fun(clip:UnityEngine.AnimationClip, newName:System.String, firstFrame:System.Int32, lastFrame:System.Int32):System.Void
---@overload fun(clip:UnityEngine.AnimationClip, newName:System.String, firstFrame:System.Int32, lastFrame:System.Int32, addLoopFrame:System.Boolean):System.Void
---@param clip UnityEngine.AnimationClip
---@param newName System.String
---@return System.Void
function UnityEngine.Animation:AddClip(clip, newName)end
---@overload fun(clipName:System.String):System.Void
---@param clip UnityEngine.AnimationClip
---@return System.Void
function UnityEngine.Animation:RemoveClip(clip)end
---@return System.Int32
function UnityEngine.Animation:GetClipCount()end
---@param layer System.Int32
---@return System.Void
function UnityEngine.Animation:SyncLayer(layer)end
---@return System.Collections.IEnumerator
function UnityEngine.Animation:GetEnumerator()end
---@param name System.String
---@return UnityEngine.AnimationClip
function UnityEngine.Animation:GetClip(name)end
---@class UnityEngine.AnimationState : UnityEngine.TrackedReference
---@field public enabled System.Boolean @ setter getter
---@field public weight System.Single @ setter getter
---@field public wrapMode UnityEngine.WrapMode @ setter getter
---@field public time System.Single @ setter getter
---@field public normalizedTime System.Single @ setter getter
---@field public speed System.Single @ setter getter
---@field public normalizedSpeed System.Single @ setter getter
---@field public length System.Single @  getter
---@field public layer System.Int32 @ setter getter
---@field public clip UnityEngine.AnimationClip @  getter
---@field public name System.String @ setter getter
---@field public blendMode UnityEngine.AnimationBlendMode @ setter getter
UnityEngine.AnimationState = {}
---@type UnityEngine.AnimationState
CS.UnityEngine.AnimationState = UnityEngine.AnimationState

---@overload fun(mix:UnityEngine.Transform, recursive:System.Boolean):System.Void
---@param mix UnityEngine.Transform
---@return System.Void
function UnityEngine.AnimationState:AddMixingTransform(mix)end
---@param mix UnityEngine.Transform
---@return System.Void
function UnityEngine.AnimationState:RemoveMixingTransform(mix)end
---@class UnityEngine.AnimationInfo : System.ValueType
---@field public clip UnityEngine.AnimationClip @  getter
---@field public weight System.Single @  getter
UnityEngine.AnimationInfo = {}
---@type UnityEngine.AnimationInfo
CS.UnityEngine.AnimationInfo = UnityEngine.AnimationInfo

---@class UnityEngine.Animator : UnityEngine.Behaviour
---@field public isOptimizable System.Boolean @  getter
---@field public isHuman System.Boolean @  getter
---@field public hasRootMotion System.Boolean @  getter
---@field public humanScale System.Single @  getter
---@field public isInitialized System.Boolean @  getter
---@field public deltaPosition UnityEngine.Vector3 @  getter
---@field public deltaRotation UnityEngine.Quaternion @  getter
---@field public velocity UnityEngine.Vector3 @  getter
---@field public angularVelocity UnityEngine.Vector3 @  getter
---@field public rootPosition UnityEngine.Vector3 @ setter getter
---@field public rootRotation UnityEngine.Quaternion @ setter getter
---@field public applyRootMotion System.Boolean @ setter getter
---@field public linearVelocityBlending System.Boolean @ setter getter
---@field public animatePhysics System.Boolean @ setter getter
---@field public updateMode UnityEngine.AnimatorUpdateMode @ setter getter
---@field public hasTransformHierarchy System.Boolean @  getter
---@field public gravityWeight System.Single @  getter
---@field public bodyPosition UnityEngine.Vector3 @ setter getter
---@field public bodyRotation UnityEngine.Quaternion @ setter getter
---@field public stabilizeFeet System.Boolean @ setter getter
---@field public layerCount System.Int32 @  getter
---@field public parameters UnityEngine.AnimatorControllerParameter[] @  getter
---@field public parameterCount System.Int32 @  getter
---@field public feetPivotActive System.Single @ setter getter
---@field public pivotWeight System.Single @  getter
---@field public pivotPosition UnityEngine.Vector3 @  getter
---@field public isMatchingTarget System.Boolean @  getter
---@field public speed System.Single @ setter getter
---@field public targetPosition UnityEngine.Vector3 @  getter
---@field public targetRotation UnityEngine.Quaternion @  getter
---@field public cullingMode UnityEngine.AnimatorCullingMode @ setter getter
---@field public playbackTime System.Single @ setter getter
---@field public recorderStartTime System.Single @ setter getter
---@field public recorderStopTime System.Single @ setter getter
---@field public recorderMode UnityEngine.AnimatorRecorderMode @  getter
---@field public runtimeAnimatorController UnityEngine.RuntimeAnimatorController @ setter getter
---@field public hasBoundPlayables System.Boolean @  getter
---@field public avatar UnityEngine.Avatar @ setter getter
---@field public playableGraph UnityEngine.Playables.PlayableGraph @  getter
---@field public layersAffectMassCenter System.Boolean @ setter getter
---@field public leftFeetBottomHeight System.Single @  getter
---@field public rightFeetBottomHeight System.Single @  getter
---@field public logWarnings System.Boolean @ setter getter
---@field public fireEvents System.Boolean @ setter getter
---@field public keepAnimatorControllerStateOnDisable System.Boolean @ setter getter
UnityEngine.Animator = {}
---@type UnityEngine.Animator
CS.UnityEngine.Animator = UnityEngine.Animator

---@param layerIndex System.Int32
---@return UnityEngine.AnimationInfo[]
function UnityEngine.Animator:GetCurrentAnimationClipState(layerIndex)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimationInfo[]
function UnityEngine.Animator:GetNextAnimationClipState(layerIndex)end
---@return System.Void
function UnityEngine.Animator:Stop()end
---@overload fun(name:System.String):System.Single
---@param id System.Int32
---@return System.Single
function UnityEngine.Animator:GetFloat(id)end
---@overload fun(id:System.Int32, value:System.Single, dampTime:System.Single, deltaTime:System.Single):System.Void
---@overload fun(name:System.String, value:System.Single):System.Void
---@overload fun(name:System.String, value:System.Single, dampTime:System.Single, deltaTime:System.Single):System.Void
---@param id System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Animator:SetFloat(id, value)end
---@overload fun(name:System.String):System.Boolean
---@param id System.Int32
---@return System.Boolean
function UnityEngine.Animator:GetBool(id)end
---@overload fun(name:System.String, value:System.Boolean):System.Void
---@param id System.Int32
---@param value System.Boolean
---@return System.Void
function UnityEngine.Animator:SetBool(id, value)end
---@overload fun(name:System.String):System.Int32
---@param id System.Int32
---@return System.Int32
function UnityEngine.Animator:GetInteger(id)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param id System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.Animator:SetInteger(id, value)end
---@overload fun(name:System.String):System.Void
---@param id System.Int32
---@return System.Void
function UnityEngine.Animator:SetTrigger(id)end
---@overload fun(name:System.String):System.Void
---@param id System.Int32
---@return System.Void
function UnityEngine.Animator:ResetTrigger(id)end
---@overload fun(name:System.String):System.Boolean
---@param id System.Int32
---@return System.Boolean
function UnityEngine.Animator:IsParameterControlledByCurve(id)end
---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Animator:GetIKPosition(goal)end
---@param goal UnityEngine.AvatarIKGoal
---@param goalPosition UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animator:SetIKPosition(goal, goalPosition)end
---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Animator:GetIKRotation(goal)end
---@param goal UnityEngine.AvatarIKGoal
---@param goalRotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Animator:SetIKRotation(goal, goalRotation)end
---@param goal UnityEngine.AvatarIKGoal
---@return System.Single
function UnityEngine.Animator:GetIKPositionWeight(goal)end
---@param goal UnityEngine.AvatarIKGoal
---@param value System.Single
---@return System.Void
function UnityEngine.Animator:SetIKPositionWeight(goal, value)end
---@param goal UnityEngine.AvatarIKGoal
---@return System.Single
function UnityEngine.Animator:GetIKRotationWeight(goal)end
---@param goal UnityEngine.AvatarIKGoal
---@param value System.Single
---@return System.Void
function UnityEngine.Animator:SetIKRotationWeight(goal, value)end
---@param hint UnityEngine.AvatarIKHint
---@return UnityEngine.Vector3
function UnityEngine.Animator:GetIKHintPosition(hint)end
---@param hint UnityEngine.AvatarIKHint
---@param hintPosition UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animator:SetIKHintPosition(hint, hintPosition)end
---@param hint UnityEngine.AvatarIKHint
---@return System.Single
function UnityEngine.Animator:GetIKHintPositionWeight(hint)end
---@param hint UnityEngine.AvatarIKHint
---@param value System.Single
---@return System.Void
function UnityEngine.Animator:SetIKHintPositionWeight(hint, value)end
---@param lookAtPosition UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animator:SetLookAtPosition(lookAtPosition)end
---@overload fun(weight:System.Single, bodyWeight:System.Single):System.Void
---@overload fun(weight:System.Single, bodyWeight:System.Single, headWeight:System.Single):System.Void
---@overload fun(weight:System.Single, bodyWeight:System.Single, headWeight:System.Single, eyesWeight:System.Single):System.Void
---@overload fun(weight:System.Single, bodyWeight:System.Single, headWeight:System.Single, eyesWeight:System.Single, clampWeight:System.Single):System.Void
---@param weight System.Single
---@return System.Void
function UnityEngine.Animator:SetLookAtWeight(weight)end
---@param humanBoneId UnityEngine.HumanBodyBones
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Animator:SetBoneLocalRotation(humanBoneId, rotation)end
---@return any
function UnityEngine.Animator:GetBehaviour()end
---@overload fun(fullPathHash:System.Int32, layerIndex:System.Int32):UnityEngine.StateMachineBehaviour[]
---@return T[]
function UnityEngine.Animator:GetBehaviours()end
---@param layerIndex System.Int32
---@return System.String
function UnityEngine.Animator:GetLayerName(layerIndex)end
---@param layerName System.String
---@return System.Int32
function UnityEngine.Animator:GetLayerIndex(layerName)end
---@param layerIndex System.Int32
---@return System.Single
function UnityEngine.Animator:GetLayerWeight(layerIndex)end
---@param layerIndex System.Int32
---@param weight System.Single
---@return System.Void
function UnityEngine.Animator:SetLayerWeight(layerIndex, weight)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animator:GetCurrentAnimatorStateInfo(layerIndex)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animator:GetNextAnimatorStateInfo(layerIndex)end
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorTransitionInfo
function UnityEngine.Animator:GetAnimatorTransitionInfo(layerIndex)end
---@param layerIndex System.Int32
---@return System.Int32
function UnityEngine.Animator:GetCurrentAnimatorClipInfoCount(layerIndex)end
---@param layerIndex System.Int32
---@return System.Int32
function UnityEngine.Animator:GetNextAnimatorClipInfoCount(layerIndex)end
---@overload fun(layerIndex:System.Int32, clips:System.Collections.Generic.List):System.Void
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorClipInfo[]
function UnityEngine.Animator:GetCurrentAnimatorClipInfo(layerIndex)end
---@overload fun(layerIndex:System.Int32, clips:System.Collections.Generic.List):System.Void
---@param layerIndex System.Int32
---@return UnityEngine.AnimatorClipInfo[]
function UnityEngine.Animator:GetNextAnimatorClipInfo(layerIndex)end
---@param layerIndex System.Int32
---@return System.Boolean
function UnityEngine.Animator:IsInTransition(layerIndex)end
---@param index System.Int32
---@return UnityEngine.AnimatorControllerParameter
function UnityEngine.Animator:GetParameter(index)end
---@overload fun(matchPosition:UnityEngine.Vector3, matchRotation:UnityEngine.Quaternion, targetBodyPart:UnityEngine.AvatarTarget, weightMask:UnityEngine.MatchTargetWeightMask, startNormalizedTime:System.Single, targetNormalizedTime:System.Single):System.Void
---@param matchPosition UnityEngine.Vector3
---@param matchRotation UnityEngine.Quaternion
---@param targetBodyPart UnityEngine.AvatarTarget
---@param weightMask UnityEngine.MatchTargetWeightMask
---@param startNormalizedTime System.Single
---@return System.Void
function UnityEngine.Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime)end
---@overload fun(completeMatch:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Animator:InterruptMatchTarget()end
---@param normalizedTime System.Single
---@return System.Void
function UnityEngine.Animator:ForceStateNormalizedTime(normalizedTime)end
---@overload fun(stateHashName:System.Int32, fixedTransitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateHashName:System.Int32, fixedTransitionDuration:System.Single, layer:System.Int32, fixedTimeOffset:System.Single):System.Void
---@overload fun(stateHashName:System.Int32, fixedTransitionDuration:System.Single, layer:System.Int32, fixedTimeOffset:System.Single, normalizedTransitionTime:System.Single):System.Void
---@overload fun(stateName:System.String, fixedTransitionDuration:System.Single):System.Void
---@overload fun(stateName:System.String, fixedTransitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, fixedTransitionDuration:System.Single, layer:System.Int32, fixedTimeOffset:System.Single):System.Void
---@overload fun(stateName:System.String, fixedTransitionDuration:System.Single, layer:System.Int32, fixedTimeOffset:System.Single, normalizedTransitionTime:System.Single):System.Void
---@param stateHashName System.Int32
---@param fixedTransitionDuration System.Single
---@return System.Void
function UnityEngine.Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration)end
---@return System.Void
function UnityEngine.Animator:WriteDefaultValues()end
---@overload fun(stateHashName:System.Int32, normalizedTransitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateHashName:System.Int32, normalizedTransitionDuration:System.Single, layer:System.Int32, normalizedTimeOffset:System.Single):System.Void
---@overload fun(stateHashName:System.Int32, normalizedTransitionDuration:System.Single, layer:System.Int32, normalizedTimeOffset:System.Single, normalizedTransitionTime:System.Single):System.Void
---@overload fun(stateName:System.String, normalizedTransitionDuration:System.Single):System.Void
---@overload fun(stateName:System.String, normalizedTransitionDuration:System.Single, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, normalizedTransitionDuration:System.Single, layer:System.Int32, normalizedTimeOffset:System.Single):System.Void
---@overload fun(stateName:System.String, normalizedTransitionDuration:System.Single, layer:System.Int32, normalizedTimeOffset:System.Single, normalizedTransitionTime:System.Single):System.Void
---@param stateHashName System.Int32
---@param normalizedTransitionDuration System.Single
---@return System.Void
function UnityEngine.Animator:CrossFade(stateHashName, normalizedTransitionDuration)end
---@overload fun(stateNameHash:System.Int32, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, layer:System.Int32, fixedTime:System.Single):System.Void
---@overload fun(stateName:System.String):System.Void
---@overload fun(stateName:System.String, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, layer:System.Int32, fixedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@return System.Void
function UnityEngine.Animator:PlayInFixedTime(stateNameHash)end
---@overload fun(stateNameHash:System.Int32, layer:System.Int32):System.Void
---@overload fun(stateNameHash:System.Int32, layer:System.Int32, normalizedTime:System.Single):System.Void
---@overload fun(stateName:System.String):System.Void
---@overload fun(stateName:System.String, layer:System.Int32):System.Void
---@overload fun(stateName:System.String, layer:System.Int32, normalizedTime:System.Single):System.Void
---@param stateNameHash System.Int32
---@return System.Void
function UnityEngine.Animator:Play(stateNameHash)end
---@param targetIndex UnityEngine.AvatarTarget
---@param targetNormalizedTime System.Single
---@return System.Void
function UnityEngine.Animator:SetTarget(targetIndex, targetNormalizedTime)end
---@param transform UnityEngine.Transform
---@return System.Boolean
function UnityEngine.Animator:IsControlled(transform)end
---@param humanBoneId UnityEngine.HumanBodyBones
---@return UnityEngine.Transform
function UnityEngine.Animator:GetBoneTransform(humanBoneId)end
---@return System.Void
function UnityEngine.Animator:StartPlayback()end
---@return System.Void
function UnityEngine.Animator:StopPlayback()end
---@param frameCount System.Int32
---@return System.Void
function UnityEngine.Animator:StartRecording(frameCount)end
---@return System.Void
function UnityEngine.Animator:StopRecording()end
---@param layerIndex System.Int32
---@param stateID System.Int32
---@return System.Boolean
function UnityEngine.Animator:HasState(layerIndex, stateID)end
---@param name System.String
---@return System.Int32
function UnityEngine.Animator.StringToHash(name)end
---@param deltaTime System.Single
---@return System.Void
function UnityEngine.Animator:Update(deltaTime)end
---@return System.Void
function UnityEngine.Animator:Rebind()end
---@return System.Void
function UnityEngine.Animator:ApplyBuiltinRootMotion()end
---@overload fun(name:System.String):UnityEngine.Vector3
---@param id System.Int32
---@return UnityEngine.Vector3
function UnityEngine.Animator:GetVector(id)end
---@overload fun(name:System.String, value:UnityEngine.Vector3):System.Void
---@param id System.Int32
---@param value UnityEngine.Vector3
---@return System.Void
function UnityEngine.Animator:SetVector(id, value)end
---@overload fun(name:System.String):UnityEngine.Quaternion
---@param id System.Int32
---@return UnityEngine.Quaternion
function UnityEngine.Animator:GetQuaternion(id)end
---@overload fun(name:System.String, value:UnityEngine.Quaternion):System.Void
---@param id System.Int32
---@param value UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Animator:SetQuaternion(id, value)end
---@class UnityEngine.SharedBetweenAnimatorsAttribute : System.Attribute
UnityEngine.SharedBetweenAnimatorsAttribute = {}
---@type UnityEngine.SharedBetweenAnimatorsAttribute
CS.UnityEngine.SharedBetweenAnimatorsAttribute = UnityEngine.SharedBetweenAnimatorsAttribute

---@class UnityEngine.StateMachineBehaviour : UnityEngine.ScriptableObject
UnityEngine.StateMachineBehaviour = {}
---@type UnityEngine.StateMachineBehaviour
CS.UnityEngine.StateMachineBehaviour = UnityEngine.StateMachineBehaviour

---@overload fun(animator:UnityEngine.Animator, stateInfo:UnityEngine.AnimatorStateInfo, layerIndex:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateEnter(animator, stateInfo, layerIndex)end
---@overload fun(animator:UnityEngine.Animator, stateInfo:UnityEngine.AnimatorStateInfo, layerIndex:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateUpdate(animator, stateInfo, layerIndex)end
---@overload fun(animator:UnityEngine.Animator, stateInfo:UnityEngine.AnimatorStateInfo, layerIndex:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateExit(animator, stateInfo, layerIndex)end
---@overload fun(animator:UnityEngine.Animator, stateInfo:UnityEngine.AnimatorStateInfo, layerIndex:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateMove(animator, stateInfo, layerIndex)end
---@overload fun(animator:UnityEngine.Animator, stateInfo:UnityEngine.AnimatorStateInfo, layerIndex:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateIK(animator, stateInfo, layerIndex)end
---@overload fun(animator:UnityEngine.Animator, stateMachinePathHash:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateMachinePathHash System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateMachineEnter(animator, stateMachinePathHash)end
---@overload fun(animator:UnityEngine.Animator, stateMachinePathHash:System.Int32, controller:UnityEngine.Animations.AnimatorControllerPlayable):System.Void
---@param animator UnityEngine.Animator
---@param stateMachinePathHash System.Int32
---@return System.Void
function UnityEngine.StateMachineBehaviour:OnStateMachineExit(animator, stateMachinePathHash)end
---@class UnityEngine.AvatarTarget : System.Enum
UnityEngine.AvatarTarget = {}
---@type UnityEngine.AvatarTarget
CS.UnityEngine.AvatarTarget = UnityEngine.AvatarTarget

---@return System.Int32 value:0
UnityEngine.AvatarTarget.Root = 0
---@return System.Int32 value:1
UnityEngine.AvatarTarget.Body = 1
---@return System.Int32 value:2
UnityEngine.AvatarTarget.LeftFoot = 2
---@return System.Int32 value:3
UnityEngine.AvatarTarget.RightFoot = 3
---@return System.Int32 value:4
UnityEngine.AvatarTarget.LeftHand = 4
---@return System.Int32 value:5
UnityEngine.AvatarTarget.RightHand = 5

---@class UnityEngine.AvatarIKGoal : System.Enum
UnityEngine.AvatarIKGoal = {}
---@type UnityEngine.AvatarIKGoal
CS.UnityEngine.AvatarIKGoal = UnityEngine.AvatarIKGoal

---@return System.Int32 value:0
UnityEngine.AvatarIKGoal.LeftFoot = 0
---@return System.Int32 value:1
UnityEngine.AvatarIKGoal.RightFoot = 1
---@return System.Int32 value:2
UnityEngine.AvatarIKGoal.LeftHand = 2
---@return System.Int32 value:3
UnityEngine.AvatarIKGoal.RightHand = 3

---@class UnityEngine.AvatarIKHint : System.Enum
UnityEngine.AvatarIKHint = {}
---@type UnityEngine.AvatarIKHint
CS.UnityEngine.AvatarIKHint = UnityEngine.AvatarIKHint

---@return System.Int32 value:0
UnityEngine.AvatarIKHint.LeftKnee = 0
---@return System.Int32 value:1
UnityEngine.AvatarIKHint.RightKnee = 1
---@return System.Int32 value:2
UnityEngine.AvatarIKHint.LeftElbow = 2
---@return System.Int32 value:3
UnityEngine.AvatarIKHint.RightElbow = 3

---@class UnityEngine.AnimatorControllerParameterType : System.Enum
UnityEngine.AnimatorControllerParameterType = {}
---@type UnityEngine.AnimatorControllerParameterType
CS.UnityEngine.AnimatorControllerParameterType = UnityEngine.AnimatorControllerParameterType

---@return System.Int32 value:1
UnityEngine.AnimatorControllerParameterType.Float = 1
---@return System.Int32 value:3
UnityEngine.AnimatorControllerParameterType.Int = 3

---@class UnityEngine.AnimatorRecorderMode : System.Enum
UnityEngine.AnimatorRecorderMode = {}
---@type UnityEngine.AnimatorRecorderMode
CS.UnityEngine.AnimatorRecorderMode = UnityEngine.AnimatorRecorderMode

---@return System.Int32 value:0
UnityEngine.AnimatorRecorderMode.Offline = 0
---@return System.Int32 value:1
UnityEngine.AnimatorRecorderMode.Playback = 1
---@return System.Int32 value:2
UnityEngine.AnimatorRecorderMode.Record = 2

---@class UnityEngine.DurationUnit : System.Enum
UnityEngine.DurationUnit = {}
---@type UnityEngine.DurationUnit
CS.UnityEngine.DurationUnit = UnityEngine.DurationUnit

---@return System.Int32 value:0
UnityEngine.DurationUnit.Fixed = 0
---@return System.Int32 value:1
UnityEngine.DurationUnit.Normalized = 1

---@class UnityEngine.AnimatorCullingMode : System.Enum
UnityEngine.AnimatorCullingMode = {}
---@type UnityEngine.AnimatorCullingMode
CS.UnityEngine.AnimatorCullingMode = UnityEngine.AnimatorCullingMode

---@return System.Int32 value:0
UnityEngine.AnimatorCullingMode.AlwaysAnimate = 0
---@return System.Int32 value:1
UnityEngine.AnimatorCullingMode.CullUpdateTransforms = 1
---@return System.Int32 value:2
UnityEngine.AnimatorCullingMode.CullCompletely = 2

---@class UnityEngine.AnimatorUpdateMode : System.Enum
UnityEngine.AnimatorUpdateMode = {}
---@type UnityEngine.AnimatorUpdateMode
CS.UnityEngine.AnimatorUpdateMode = UnityEngine.AnimatorUpdateMode

---@return System.Int32 value:0
UnityEngine.AnimatorUpdateMode.Normal = 0
---@return System.Int32 value:1
UnityEngine.AnimatorUpdateMode.AnimatePhysics = 1
---@return System.Int32 value:2
UnityEngine.AnimatorUpdateMode.UnscaledTime = 2

---@class UnityEngine.AnimatorClipInfo : System.ValueType
---@field public clip UnityEngine.AnimationClip @  getter
---@field public weight System.Single @  getter
UnityEngine.AnimatorClipInfo = {}
---@type UnityEngine.AnimatorClipInfo
CS.UnityEngine.AnimatorClipInfo = UnityEngine.AnimatorClipInfo

---@class UnityEngine.AnimatorStateInfo : System.ValueType
---@field public fullPathHash System.Int32 @  getter
---@field public nameHash System.Int32 @  getter
---@field public shortNameHash System.Int32 @  getter
---@field public normalizedTime System.Single @  getter
---@field public length System.Single @  getter
---@field public speed System.Single @  getter
---@field public speedMultiplier System.Single @  getter
---@field public tagHash System.Int32 @  getter
---@field public loop System.Boolean @  getter
UnityEngine.AnimatorStateInfo = {}
---@type UnityEngine.AnimatorStateInfo
CS.UnityEngine.AnimatorStateInfo = UnityEngine.AnimatorStateInfo

---@param name System.String
---@return System.Boolean
function UnityEngine.AnimatorStateInfo:IsName(name)end
---@param tag System.String
---@return System.Boolean
function UnityEngine.AnimatorStateInfo:IsTag(tag)end
---@class UnityEngine.AnimatorTransitionInfo : System.ValueType
---@field public fullPathHash System.Int32 @  getter
---@field public nameHash System.Int32 @  getter
---@field public userNameHash System.Int32 @  getter
---@field public durationUnit UnityEngine.DurationUnit @  getter
---@field public duration System.Single @  getter
---@field public normalizedTime System.Single @  getter
---@field public anyState System.Boolean @  getter
UnityEngine.AnimatorTransitionInfo = {}
---@type UnityEngine.AnimatorTransitionInfo
CS.UnityEngine.AnimatorTransitionInfo = UnityEngine.AnimatorTransitionInfo

---@param name System.String
---@return System.Boolean
function UnityEngine.AnimatorTransitionInfo:IsName(name)end
---@param name System.String
---@return System.Boolean
function UnityEngine.AnimatorTransitionInfo:IsUserName(name)end
---@class UnityEngine.MatchTargetWeightMask : System.ValueType
---@field public positionXYZWeight UnityEngine.Vector3 @ setter getter
---@field public rotationWeight System.Single @ setter getter
UnityEngine.MatchTargetWeightMask = {}
---@type UnityEngine.MatchTargetWeightMask
CS.UnityEngine.MatchTargetWeightMask = UnityEngine.MatchTargetWeightMask

---@class UnityEngine.AnimatorControllerParameter : System.Object
---@field public name System.String @ setter getter
---@field public nameHash System.Int32 @  getter
---@field public type UnityEngine.AnimatorControllerParameterType @ setter getter
---@field public defaultFloat System.Single @ setter getter
---@field public defaultInt System.Int32 @ setter getter
---@field public defaultBool System.Boolean @ setter getter
UnityEngine.AnimatorControllerParameter = {}
---@type UnityEngine.AnimatorControllerParameter
CS.UnityEngine.AnimatorControllerParameter = UnityEngine.AnimatorControllerParameter

---@param o System.Object
---@return System.Boolean
function UnityEngine.AnimatorControllerParameter:Equals(o)end
---@return System.Int32
function UnityEngine.AnimatorControllerParameter:GetHashCode()end
---@class UnityEngine.AnimationClipPair : System.Object
---@field public originalClip UnityEngine.AnimationClip
---@field public overrideClip UnityEngine.AnimationClip
UnityEngine.AnimationClipPair = {}
---@type UnityEngine.AnimationClipPair
CS.UnityEngine.AnimationClipPair = UnityEngine.AnimationClipPair

---@class UnityEngine.AnimatorOverrideController : UnityEngine.RuntimeAnimatorController
---@field public runtimeAnimatorController UnityEngine.RuntimeAnimatorController @ setter getter
---@field public Item UnityEngine.AnimationClip @ setter getter
---@field public Item UnityEngine.AnimationClip @ setter getter
---@field public overridesCount System.Int32 @  getter
---@field public clips UnityEngine.AnimationClipPair[] @ setter getter
UnityEngine.AnimatorOverrideController = {}
---@type UnityEngine.AnimatorOverrideController
CS.UnityEngine.AnimatorOverrideController = UnityEngine.AnimatorOverrideController

---@param overrides System.Collections.Generic.List
---@return System.Void
function UnityEngine.AnimatorOverrideController:GetOverrides(overrides)end
---@param overrides System.Collections.Generic.IList
---@return System.Void
function UnityEngine.AnimatorOverrideController:ApplyOverrides(overrides)end
---@class UnityEngine.AnimatorUtility : System.Object
UnityEngine.AnimatorUtility = {}
---@type UnityEngine.AnimatorUtility
CS.UnityEngine.AnimatorUtility = UnityEngine.AnimatorUtility

---@param go UnityEngine.GameObject
---@param exposedTransforms System.String[]
---@return System.Void
function UnityEngine.AnimatorUtility.OptimizeTransformHierarchy(go, exposedTransforms)end
---@param go UnityEngine.GameObject
---@return System.Void
function UnityEngine.AnimatorUtility.DeoptimizeTransformHierarchy(go)end
---@class UnityEngine.BodyDof : System.Enum
UnityEngine.BodyDof = {}
---@type UnityEngine.BodyDof
CS.UnityEngine.BodyDof = UnityEngine.BodyDof

---@return System.Int32 value:0
UnityEngine.BodyDof.SpineFrontBack = 0
---@return System.Int32 value:1
UnityEngine.BodyDof.SpineLeftRight = 1
---@return System.Int32 value:2
UnityEngine.BodyDof.SpineRollLeftRight = 2
---@return System.Int32 value:3
UnityEngine.BodyDof.ChestFrontBack = 3
---@return System.Int32 value:4
UnityEngine.BodyDof.ChestLeftRight = 4
---@return System.Int32 value:5
UnityEngine.BodyDof.ChestRollLeftRight = 5
---@return System.Int32 value:6
UnityEngine.BodyDof.UpperChestFrontBack = 6
---@return System.Int32 value:7
UnityEngine.BodyDof.UpperChestLeftRight = 7
---@return System.Int32 value:8
UnityEngine.BodyDof.UpperChestRollLeftRight = 8
---@return System.Int32 value:9
UnityEngine.BodyDof.LastBodyDof = 9

---@class UnityEngine.HeadDof : System.Enum
UnityEngine.HeadDof = {}
---@type UnityEngine.HeadDof
CS.UnityEngine.HeadDof = UnityEngine.HeadDof

---@return System.Int32 value:0
UnityEngine.HeadDof.NeckFrontBack = 0
---@return System.Int32 value:1
UnityEngine.HeadDof.NeckLeftRight = 1
---@return System.Int32 value:2
UnityEngine.HeadDof.NeckRollLeftRight = 2
---@return System.Int32 value:3
UnityEngine.HeadDof.HeadFrontBack = 3
---@return System.Int32 value:4
UnityEngine.HeadDof.HeadLeftRight = 4
---@return System.Int32 value:5
UnityEngine.HeadDof.HeadRollLeftRight = 5
---@return System.Int32 value:6
UnityEngine.HeadDof.LeftEyeDownUp = 6
---@return System.Int32 value:7
UnityEngine.HeadDof.LeftEyeInOut = 7
---@return System.Int32 value:8
UnityEngine.HeadDof.RightEyeDownUp = 8
---@return System.Int32 value:9
UnityEngine.HeadDof.RightEyeInOut = 9
---@return System.Int32 value:10
UnityEngine.HeadDof.JawDownUp = 10
---@return System.Int32 value:11
UnityEngine.HeadDof.JawLeftRight = 11
---@return System.Int32 value:12
UnityEngine.HeadDof.LastHeadDof = 12

---@class UnityEngine.LegDof : System.Enum
UnityEngine.LegDof = {}
---@type UnityEngine.LegDof
CS.UnityEngine.LegDof = UnityEngine.LegDof

---@return System.Int32 value:0
UnityEngine.LegDof.UpperLegFrontBack = 0
---@return System.Int32 value:1
UnityEngine.LegDof.UpperLegInOut = 1
---@return System.Int32 value:2
UnityEngine.LegDof.UpperLegRollInOut = 2
---@return System.Int32 value:3
UnityEngine.LegDof.LegCloseOpen = 3
---@return System.Int32 value:4
UnityEngine.LegDof.LegRollInOut = 4
---@return System.Int32 value:5
UnityEngine.LegDof.FootCloseOpen = 5
---@return System.Int32 value:6
UnityEngine.LegDof.FootInOut = 6
---@return System.Int32 value:7
UnityEngine.LegDof.ToesUpDown = 7
---@return System.Int32 value:8
UnityEngine.LegDof.LastLegDof = 8

---@class UnityEngine.ArmDof : System.Enum
UnityEngine.ArmDof = {}
---@type UnityEngine.ArmDof
CS.UnityEngine.ArmDof = UnityEngine.ArmDof

---@return System.Int32 value:0
UnityEngine.ArmDof.ShoulderDownUp = 0
---@return System.Int32 value:1
UnityEngine.ArmDof.ShoulderFrontBack = 1
---@return System.Int32 value:2
UnityEngine.ArmDof.ArmDownUp = 2
---@return System.Int32 value:3
UnityEngine.ArmDof.ArmFrontBack = 3
---@return System.Int32 value:4
UnityEngine.ArmDof.ArmRollInOut = 4
---@return System.Int32 value:5
UnityEngine.ArmDof.ForeArmCloseOpen = 5
---@return System.Int32 value:6
UnityEngine.ArmDof.ForeArmRollInOut = 6
---@return System.Int32 value:7
UnityEngine.ArmDof.HandDownUp = 7
---@return System.Int32 value:8
UnityEngine.ArmDof.HandInOut = 8
---@return System.Int32 value:9
UnityEngine.ArmDof.LastArmDof = 9

---@class UnityEngine.FingerDof : System.Enum
UnityEngine.FingerDof = {}
---@type UnityEngine.FingerDof
CS.UnityEngine.FingerDof = UnityEngine.FingerDof

---@return System.Int32 value:0
UnityEngine.FingerDof.ProximalDownUp = 0
---@return System.Int32 value:1
UnityEngine.FingerDof.ProximalInOut = 1
---@return System.Int32 value:2
UnityEngine.FingerDof.IntermediateCloseOpen = 2
---@return System.Int32 value:3
UnityEngine.FingerDof.DistalCloseOpen = 3
---@return System.Int32 value:4
UnityEngine.FingerDof.LastFingerDof = 4

---@class UnityEngine.HumanPartDof : System.Enum
UnityEngine.HumanPartDof = {}
---@type UnityEngine.HumanPartDof
CS.UnityEngine.HumanPartDof = UnityEngine.HumanPartDof

---@return System.Int32 value:0
UnityEngine.HumanPartDof.Body = 0
---@return System.Int32 value:1
UnityEngine.HumanPartDof.Head = 1
---@return System.Int32 value:2
UnityEngine.HumanPartDof.LeftLeg = 2
---@return System.Int32 value:3
UnityEngine.HumanPartDof.RightLeg = 3
---@return System.Int32 value:4
UnityEngine.HumanPartDof.LeftArm = 4
---@return System.Int32 value:5
UnityEngine.HumanPartDof.RightArm = 5
---@return System.Int32 value:6
UnityEngine.HumanPartDof.LeftThumb = 6
---@return System.Int32 value:7
UnityEngine.HumanPartDof.LeftIndex = 7
---@return System.Int32 value:8
UnityEngine.HumanPartDof.LeftMiddle = 8
---@return System.Int32 value:9
UnityEngine.HumanPartDof.LeftRing = 9
---@return System.Int32 value:10
UnityEngine.HumanPartDof.LeftLittle = 10
---@return System.Int32 value:11
UnityEngine.HumanPartDof.RightThumb = 11
---@return System.Int32 value:12
UnityEngine.HumanPartDof.RightIndex = 12
---@return System.Int32 value:13
UnityEngine.HumanPartDof.RightMiddle = 13
---@return System.Int32 value:14
UnityEngine.HumanPartDof.RightRing = 14
---@return System.Int32 value:15
UnityEngine.HumanPartDof.RightLittle = 15
---@return System.Int32 value:16
UnityEngine.HumanPartDof.LastHumanPartDof = 16

---@class UnityEngine.HumanBodyBones : System.Enum
UnityEngine.HumanBodyBones = {}
---@type UnityEngine.HumanBodyBones
CS.UnityEngine.HumanBodyBones = UnityEngine.HumanBodyBones

---@return System.Int32 value:0
UnityEngine.HumanBodyBones.Hips = 0
---@return System.Int32 value:1
UnityEngine.HumanBodyBones.LeftUpperLeg = 1
---@return System.Int32 value:2
UnityEngine.HumanBodyBones.RightUpperLeg = 2
---@return System.Int32 value:3
UnityEngine.HumanBodyBones.LeftLowerLeg = 3
---@return System.Int32 value:4
UnityEngine.HumanBodyBones.RightLowerLeg = 4
---@return System.Int32 value:5
UnityEngine.HumanBodyBones.LeftFoot = 5
---@return System.Int32 value:6
UnityEngine.HumanBodyBones.RightFoot = 6
---@return System.Int32 value:7
UnityEngine.HumanBodyBones.Spine = 7
---@return System.Int32 value:8
UnityEngine.HumanBodyBones.Chest = 8
---@return System.Int32 value:9
UnityEngine.HumanBodyBones.Neck = 9
---@return System.Int32 value:10
UnityEngine.HumanBodyBones.Head = 10
---@return System.Int32 value:11
UnityEngine.HumanBodyBones.LeftShoulder = 11
---@return System.Int32 value:12
UnityEngine.HumanBodyBones.RightShoulder = 12
---@return System.Int32 value:13
UnityEngine.HumanBodyBones.LeftUpperArm = 13
---@return System.Int32 value:14
UnityEngine.HumanBodyBones.RightUpperArm = 14
---@return System.Int32 value:15
UnityEngine.HumanBodyBones.LeftLowerArm = 15
---@return System.Int32 value:16
UnityEngine.HumanBodyBones.RightLowerArm = 16
---@return System.Int32 value:17
UnityEngine.HumanBodyBones.LeftHand = 17
---@return System.Int32 value:18
UnityEngine.HumanBodyBones.RightHand = 18
---@return System.Int32 value:19
UnityEngine.HumanBodyBones.LeftToes = 19
---@return System.Int32 value:20
UnityEngine.HumanBodyBones.RightToes = 20
---@return System.Int32 value:21
UnityEngine.HumanBodyBones.LeftEye = 21
---@return System.Int32 value:22
UnityEngine.HumanBodyBones.RightEye = 22
---@return System.Int32 value:23
UnityEngine.HumanBodyBones.Jaw = 23
---@return System.Int32 value:24
UnityEngine.HumanBodyBones.LeftThumbProximal = 24
---@return System.Int32 value:25
UnityEngine.HumanBodyBones.LeftThumbIntermediate = 25
---@return System.Int32 value:26
UnityEngine.HumanBodyBones.LeftThumbDistal = 26
---@return System.Int32 value:27
UnityEngine.HumanBodyBones.LeftIndexProximal = 27
---@return System.Int32 value:28
UnityEngine.HumanBodyBones.LeftIndexIntermediate = 28
---@return System.Int32 value:29
UnityEngine.HumanBodyBones.LeftIndexDistal = 29
---@return System.Int32 value:30
UnityEngine.HumanBodyBones.LeftMiddleProximal = 30
---@return System.Int32 value:31
UnityEngine.HumanBodyBones.LeftMiddleIntermediate = 31
---@return System.Int32 value:32
UnityEngine.HumanBodyBones.LeftMiddleDistal = 32
---@return System.Int32 value:33
UnityEngine.HumanBodyBones.LeftRingProximal = 33
---@return System.Int32 value:34
UnityEngine.HumanBodyBones.LeftRingIntermediate = 34
---@return System.Int32 value:35
UnityEngine.HumanBodyBones.LeftRingDistal = 35
---@return System.Int32 value:36
UnityEngine.HumanBodyBones.LeftLittleProximal = 36
---@return System.Int32 value:37
UnityEngine.HumanBodyBones.LeftLittleIntermediate = 37
---@return System.Int32 value:38
UnityEngine.HumanBodyBones.LeftLittleDistal = 38
---@return System.Int32 value:39
UnityEngine.HumanBodyBones.RightThumbProximal = 39
---@return System.Int32 value:40
UnityEngine.HumanBodyBones.RightThumbIntermediate = 40
---@return System.Int32 value:41
UnityEngine.HumanBodyBones.RightThumbDistal = 41
---@return System.Int32 value:42
UnityEngine.HumanBodyBones.RightIndexProximal = 42
---@return System.Int32 value:43
UnityEngine.HumanBodyBones.RightIndexIntermediate = 43
---@return System.Int32 value:44
UnityEngine.HumanBodyBones.RightIndexDistal = 44
---@return System.Int32 value:45
UnityEngine.HumanBodyBones.RightMiddleProximal = 45
---@return System.Int32 value:46
UnityEngine.HumanBodyBones.RightMiddleIntermediate = 46
---@return System.Int32 value:47
UnityEngine.HumanBodyBones.RightMiddleDistal = 47
---@return System.Int32 value:48
UnityEngine.HumanBodyBones.RightRingProximal = 48
---@return System.Int32 value:49
UnityEngine.HumanBodyBones.RightRingIntermediate = 49
---@return System.Int32 value:50
UnityEngine.HumanBodyBones.RightRingDistal = 50
---@return System.Int32 value:51
UnityEngine.HumanBodyBones.RightLittleProximal = 51
---@return System.Int32 value:52
UnityEngine.HumanBodyBones.RightLittleIntermediate = 52
---@return System.Int32 value:53
UnityEngine.HumanBodyBones.RightLittleDistal = 53
---@return System.Int32 value:54
UnityEngine.HumanBodyBones.UpperChest = 54
---@return System.Int32 value:55
UnityEngine.HumanBodyBones.LastBone = 55

---@class UnityEngine.Avatar : UnityEngine.Object
---@field public isValid System.Boolean @  getter
---@field public isHuman System.Boolean @  getter
UnityEngine.Avatar = {}
---@type UnityEngine.Avatar
CS.UnityEngine.Avatar = UnityEngine.Avatar

---@class UnityEngine.SkeletonBone : System.ValueType
---@field public transformModified System.Int32 @ setter getter
---@field public name System.String
---@field public position UnityEngine.Vector3
---@field public rotation UnityEngine.Quaternion
---@field public scale UnityEngine.Vector3
UnityEngine.SkeletonBone = {}
---@type UnityEngine.SkeletonBone
CS.UnityEngine.SkeletonBone = UnityEngine.SkeletonBone

---@class UnityEngine.HumanLimit : System.ValueType
---@field public useDefaultValues System.Boolean @ setter getter
---@field public min UnityEngine.Vector3 @ setter getter
---@field public max UnityEngine.Vector3 @ setter getter
---@field public center UnityEngine.Vector3 @ setter getter
---@field public axisLength System.Single @ setter getter
UnityEngine.HumanLimit = {}
---@type UnityEngine.HumanLimit
CS.UnityEngine.HumanLimit = UnityEngine.HumanLimit

---@class UnityEngine.HumanBone : System.ValueType
---@field public boneName System.String @ setter getter
---@field public humanName System.String @ setter getter
---@field public limit UnityEngine.HumanLimit
UnityEngine.HumanBone = {}
---@type UnityEngine.HumanBone
CS.UnityEngine.HumanBone = UnityEngine.HumanBone

---@class UnityEngine.HumanDescription : System.ValueType
---@field public upperArmTwist System.Single @ setter getter
---@field public lowerArmTwist System.Single @ setter getter
---@field public upperLegTwist System.Single @ setter getter
---@field public lowerLegTwist System.Single @ setter getter
---@field public armStretch System.Single @ setter getter
---@field public legStretch System.Single @ setter getter
---@field public feetSpacing System.Single @ setter getter
---@field public hasTranslationDoF System.Boolean @ setter getter
---@field public human UnityEngine.HumanBone[]
---@field public skeleton UnityEngine.SkeletonBone[]
UnityEngine.HumanDescription = {}
---@type UnityEngine.HumanDescription
CS.UnityEngine.HumanDescription = UnityEngine.HumanDescription

---@class UnityEngine.AvatarBuilder : System.Object
UnityEngine.AvatarBuilder = {}
---@type UnityEngine.AvatarBuilder
CS.UnityEngine.AvatarBuilder = UnityEngine.AvatarBuilder

---@param go UnityEngine.GameObject
---@param humanDescription UnityEngine.HumanDescription
---@return UnityEngine.Avatar
function UnityEngine.AvatarBuilder.BuildHumanAvatar(go, humanDescription)end
---@param go UnityEngine.GameObject
---@param rootMotionTransformName System.String
---@return UnityEngine.Avatar
function UnityEngine.AvatarBuilder.BuildGenericAvatar(go, rootMotionTransformName)end
---@class UnityEngine.AvatarMaskBodyPart : System.Enum
UnityEngine.AvatarMaskBodyPart = {}
---@type UnityEngine.AvatarMaskBodyPart
CS.UnityEngine.AvatarMaskBodyPart = UnityEngine.AvatarMaskBodyPart

---@return System.Int32 value:0
UnityEngine.AvatarMaskBodyPart.Root = 0
---@return System.Int32 value:1
UnityEngine.AvatarMaskBodyPart.Body = 1
---@return System.Int32 value:2
UnityEngine.AvatarMaskBodyPart.Head = 2
---@return System.Int32 value:3
UnityEngine.AvatarMaskBodyPart.LeftLeg = 3
---@return System.Int32 value:4
UnityEngine.AvatarMaskBodyPart.RightLeg = 4
---@return System.Int32 value:5
UnityEngine.AvatarMaskBodyPart.LeftArm = 5
---@return System.Int32 value:6
UnityEngine.AvatarMaskBodyPart.RightArm = 6
---@return System.Int32 value:7
UnityEngine.AvatarMaskBodyPart.LeftFingers = 7
---@return System.Int32 value:8
UnityEngine.AvatarMaskBodyPart.RightFingers = 8
---@return System.Int32 value:9
UnityEngine.AvatarMaskBodyPart.LeftFootIK = 9
---@return System.Int32 value:10
UnityEngine.AvatarMaskBodyPart.RightFootIK = 10
---@return System.Int32 value:11
UnityEngine.AvatarMaskBodyPart.LeftHandIK = 11
---@return System.Int32 value:12
UnityEngine.AvatarMaskBodyPart.RightHandIK = 12
---@return System.Int32 value:13
UnityEngine.AvatarMaskBodyPart.LastBodyPart = 13

---@class UnityEngine.AvatarMask : UnityEngine.Object
---@field public humanoidBodyPartCount System.Int32 @  getter
---@field public transformCount System.Int32 @ setter getter
UnityEngine.AvatarMask = {}
---@type UnityEngine.AvatarMask
CS.UnityEngine.AvatarMask = UnityEngine.AvatarMask

---@param index UnityEngine.AvatarMaskBodyPart
---@return System.Boolean
function UnityEngine.AvatarMask:GetHumanoidBodyPartActive(index)end
---@param index UnityEngine.AvatarMaskBodyPart
---@param value System.Boolean
---@return System.Void
function UnityEngine.AvatarMask:SetHumanoidBodyPartActive(index, value)end
---@overload fun(transform:UnityEngine.Transform, recursive:System.Boolean):System.Void
---@param transform UnityEngine.Transform
---@return System.Void
function UnityEngine.AvatarMask:AddTransformPath(transform)end
---@overload fun(transform:UnityEngine.Transform, recursive:System.Boolean):System.Void
---@param transform UnityEngine.Transform
---@return System.Void
function UnityEngine.AvatarMask:RemoveTransformPath(transform)end
---@param index System.Int32
---@return System.String
function UnityEngine.AvatarMask:GetTransformPath(index)end
---@param index System.Int32
---@param path System.String
---@return System.Void
function UnityEngine.AvatarMask:SetTransformPath(index, path)end
---@param index System.Int32
---@return System.Boolean
function UnityEngine.AvatarMask:GetTransformActive(index)end
---@param index System.Int32
---@param value System.Boolean
---@return System.Void
function UnityEngine.AvatarMask:SetTransformActive(index, value)end
---@class UnityEngine.HumanPose : System.ValueType
---@field public bodyPosition UnityEngine.Vector3
---@field public bodyRotation UnityEngine.Quaternion
---@field public muscles System.Single[]
UnityEngine.HumanPose = {}
---@type UnityEngine.HumanPose
CS.UnityEngine.HumanPose = UnityEngine.HumanPose

---@class UnityEngine.HumanPoseHandler : System.Object
UnityEngine.HumanPoseHandler = {}
---@type UnityEngine.HumanPoseHandler
CS.UnityEngine.HumanPoseHandler = UnityEngine.HumanPoseHandler

---@return System.Void
function UnityEngine.HumanPoseHandler:Dispose()end
---@param humanPose UnityEngine.HumanPose
---@return System.Void
function UnityEngine.HumanPoseHandler:GetHumanPose(humanPose)end
---@param humanPose UnityEngine.HumanPose
---@return System.Void
function UnityEngine.HumanPoseHandler:SetHumanPose(humanPose)end
---@class UnityEngine.HumanTrait : System.Object
---@field public MuscleCount System.Int32 @static  getter
---@field public MuscleName System.String[] @static  getter
---@field public BoneCount System.Int32 @static  getter
---@field public BoneName System.String[] @static  getter
---@field public RequiredBoneCount System.Int32 @static  getter
UnityEngine.HumanTrait = {}
---@type UnityEngine.HumanTrait
CS.UnityEngine.HumanTrait = UnityEngine.HumanTrait

---@param i System.Int32
---@param dofIndex System.Int32
---@return System.Int32
function UnityEngine.HumanTrait.MuscleFromBone(i, dofIndex)end
---@param i System.Int32
---@return System.Int32
function UnityEngine.HumanTrait.BoneFromMuscle(i)end
---@param i System.Int32
---@return System.Boolean
function UnityEngine.HumanTrait.RequiredBone(i)end
---@param i System.Int32
---@return System.Single
function UnityEngine.HumanTrait.GetMuscleDefaultMin(i)end
---@param i System.Int32
---@return System.Single
function UnityEngine.HumanTrait.GetMuscleDefaultMax(i)end
---@param i System.Int32
---@return System.Single
function UnityEngine.HumanTrait.GetBoneDefaultHierarchyMass(i)end
---@param i System.Int32
---@return System.Int32
function UnityEngine.HumanTrait.GetParentBone(i)end
---@class UnityEngine.Motion : UnityEngine.Object
---@field public averageDuration System.Single @  getter
---@field public averageAngularSpeed System.Single @  getter
---@field public averageSpeed UnityEngine.Vector3 @  getter
---@field public apparentSpeed System.Single @  getter
---@field public isLooping System.Boolean @  getter
---@field public legacy System.Boolean @  getter
---@field public isHumanMotion System.Boolean @  getter
---@field public isAnimatorMotion System.Boolean @  getter
UnityEngine.Motion = {}
---@type UnityEngine.Motion
CS.UnityEngine.Motion = UnityEngine.Motion

---@param val System.Boolean
---@return System.Boolean
function UnityEngine.Motion:ValidateIfRetargetable(val)end
---@class UnityEngine.RuntimeAnimatorController : UnityEngine.Object
---@field public animationClips UnityEngine.AnimationClip[] @  getter
UnityEngine.RuntimeAnimatorController = {}
---@type UnityEngine.RuntimeAnimatorController
CS.UnityEngine.RuntimeAnimatorController = UnityEngine.RuntimeAnimatorController

---@class UnityEngine.AssetBundleLoadResult : System.Enum
UnityEngine.AssetBundleLoadResult = {}
---@type UnityEngine.AssetBundleLoadResult
CS.UnityEngine.AssetBundleLoadResult = UnityEngine.AssetBundleLoadResult

---@return System.Int32 value:0
UnityEngine.AssetBundleLoadResult.Success = 0
---@return System.Int32 value:1
UnityEngine.AssetBundleLoadResult.Cancelled = 1
---@return System.Int32 value:2
UnityEngine.AssetBundleLoadResult.NotMatchingCrc = 2
---@return System.Int32 value:3
UnityEngine.AssetBundleLoadResult.FailedCache = 3
---@return System.Int32 value:4
UnityEngine.AssetBundleLoadResult.NotValidAssetBundle = 4
---@return System.Int32 value:5
UnityEngine.AssetBundleLoadResult.NoSerializedData = 5
---@return System.Int32 value:6
UnityEngine.AssetBundleLoadResult.NotCompatible = 6
---@return System.Int32 value:7
UnityEngine.AssetBundleLoadResult.AlreadyLoaded = 7
---@return System.Int32 value:8
UnityEngine.AssetBundleLoadResult.FailedRead = 8
---@return System.Int32 value:9
UnityEngine.AssetBundleLoadResult.FailedDecompression = 9
---@return System.Int32 value:10
UnityEngine.AssetBundleLoadResult.FailedWrite = 10
---@return System.Int32 value:11
UnityEngine.AssetBundleLoadResult.FailedDeleteRecompressionTarget = 11
---@return System.Int32 value:12
UnityEngine.AssetBundleLoadResult.RecompressionTargetIsLoaded = 12
---@return System.Int32 value:13
UnityEngine.AssetBundleLoadResult.RecompressionTargetExistsButNotArchive = 13

---@class UnityEngine.AssetBundle : UnityEngine.Object
---@field public mainAsset UnityEngine.Object @  getter
---@field public isStreamedSceneAssetBundle System.Boolean @  getter
UnityEngine.AssetBundle = {}
---@type UnityEngine.AssetBundle
CS.UnityEngine.AssetBundle = UnityEngine.AssetBundle

---@param unloadAllObjects System.Boolean
---@return System.Void
function UnityEngine.AssetBundle.UnloadAllAssetBundles(unloadAllObjects)end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.AssetBundle.GetAllLoadedAssetBundles()end
---@overload fun(path:System.String, crc:System.UInt32):UnityEngine.AssetBundleCreateRequest
---@overload fun(path:System.String, crc:System.UInt32, offset:System.UInt64):UnityEngine.AssetBundleCreateRequest
---@param path System.String
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromFileAsync(path)end
---@overload fun(path:System.String, crc:System.UInt32):UnityEngine.AssetBundle
---@overload fun(path:System.String, crc:System.UInt32, offset:System.UInt64):UnityEngine.AssetBundle
---@param path System.String
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromFile(path)end
---@overload fun(binary:System.Byte[], crc:System.UInt32):UnityEngine.AssetBundleCreateRequest
---@param binary System.Byte[]
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromMemoryAsync(binary)end
---@overload fun(binary:System.Byte[], crc:System.UInt32):UnityEngine.AssetBundle
---@param binary System.Byte[]
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromMemory(binary)end
---@overload fun(stream:System.IO.Stream, crc:System.UInt32):UnityEngine.AssetBundleCreateRequest
---@overload fun(stream:System.IO.Stream, crc:System.UInt32, managedReadBufferSize:System.UInt32):UnityEngine.AssetBundleCreateRequest
---@param stream System.IO.Stream
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromStreamAsync(stream)end
---@overload fun(stream:System.IO.Stream, crc:System.UInt32):UnityEngine.AssetBundle
---@overload fun(stream:System.IO.Stream, crc:System.UInt32, managedReadBufferSize:System.UInt32):UnityEngine.AssetBundle
---@param stream System.IO.Stream
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromStream(stream)end
---@param name System.String
---@return System.Boolean
function UnityEngine.AssetBundle:Contains(name)end
---@overload fun(name:System.String):UnityEngine.Object
---@param name System.String
---@return UnityEngine.Object
function UnityEngine.AssetBundle:Load(name)end
---@overload fun():T[]
---@return UnityEngine.Object[]
function UnityEngine.AssetBundle:LoadAll()end
---@overload fun(name:System.String):any
---@overload fun(name:System.String, type:System.Type):UnityEngine.Object
---@param name System.String
---@return UnityEngine.Object
function UnityEngine.AssetBundle:LoadAsset(name)end
---@overload fun(name:System.String):UnityEngine.AssetBundleRequest
---@overload fun(name:System.String, type:System.Type):UnityEngine.AssetBundleRequest
---@param name System.String
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAssetAsync(name)end
---@overload fun(name:System.String):T[]
---@overload fun(name:System.String, type:System.Type):UnityEngine.Object[]
---@param name System.String
---@return UnityEngine.Object[]
function UnityEngine.AssetBundle:LoadAssetWithSubAssets(name)end
---@overload fun(name:System.String):UnityEngine.AssetBundleRequest
---@overload fun(name:System.String, type:System.Type):UnityEngine.AssetBundleRequest
---@param name System.String
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAssetWithSubAssetsAsync(name)end
---@overload fun():T[]
---@overload fun(type:System.Type):UnityEngine.Object[]
---@return UnityEngine.Object[]
function UnityEngine.AssetBundle:LoadAllAssets()end
---@overload fun():UnityEngine.AssetBundleRequest
---@overload fun(type:System.Type):UnityEngine.AssetBundleRequest
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAllAssetsAsync()end
---@return System.String[]
function UnityEngine.AssetBundle:AllAssetNames()end
---@param unloadAllLoadedObjects System.Boolean
---@return System.Void
function UnityEngine.AssetBundle:Unload(unloadAllLoadedObjects)end
---@return System.String[]
function UnityEngine.AssetBundle:GetAllAssetNames()end
---@return System.String[]
function UnityEngine.AssetBundle:GetAllScenePaths()end
---@overload fun(inputPath:System.String, outputPath:System.String, method:UnityEngine.BuildCompression, expectedCRC:System.UInt32):UnityEngine.AssetBundleRecompressOperation
---@overload fun(inputPath:System.String, outputPath:System.String, method:UnityEngine.BuildCompression):UnityEngine.AssetBundleRecompressOperation
---@param inputPath System.String
---@param outputPath System.String
---@param method UnityEngine.BuildCompression
---@param expectedCRC System.UInt32
---@param priority UnityEngine.ThreadPriority
---@return UnityEngine.AssetBundleRecompressOperation
function UnityEngine.AssetBundle.RecompressAssetBundleAsync(inputPath, outputPath, method, expectedCRC, priority)end
---@param path System.String
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.CreateFromFile(path)end
---@param binary System.Byte[]
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.CreateFromMemory(binary)end
---@param binary System.Byte[]
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.CreateFromMemoryImmediate(binary)end
---@class UnityEngine.AssetBundleCreateRequest : UnityEngine.AsyncOperation
---@field public assetBundle UnityEngine.AssetBundle @  getter
UnityEngine.AssetBundleCreateRequest = {}
---@type UnityEngine.AssetBundleCreateRequest
CS.UnityEngine.AssetBundleCreateRequest = UnityEngine.AssetBundleCreateRequest

---@class UnityEngine.AssetBundleManifest : UnityEngine.Object
UnityEngine.AssetBundleManifest = {}
---@type UnityEngine.AssetBundleManifest
CS.UnityEngine.AssetBundleManifest = UnityEngine.AssetBundleManifest

---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllAssetBundles()end
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllAssetBundlesWithVariant()end
---@param assetBundleName System.String
---@return UnityEngine.Hash128
function UnityEngine.AssetBundleManifest:GetAssetBundleHash(assetBundleName)end
---@param assetBundleName System.String
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetDirectDependencies(assetBundleName)end
---@param assetBundleName System.String
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllDependencies(assetBundleName)end
---@class UnityEngine.AssetBundleRecompressOperation : UnityEngine.AsyncOperation
---@field public humanReadableResult System.String @  getter
---@field public inputPath System.String @  getter
---@field public outputPath System.String @  getter
---@field public result UnityEngine.AssetBundleLoadResult @  getter
---@field public success System.Boolean @  getter
UnityEngine.AssetBundleRecompressOperation = {}
---@type UnityEngine.AssetBundleRecompressOperation
CS.UnityEngine.AssetBundleRecompressOperation = UnityEngine.AssetBundleRecompressOperation

---@class UnityEngine.AssetBundleRequest : UnityEngine.AsyncOperation
---@field public asset UnityEngine.Object @  getter
---@field public allAssets UnityEngine.Object[] @  getter
UnityEngine.AssetBundleRequest = {}
---@type UnityEngine.AssetBundleRequest
CS.UnityEngine.AssetBundleRequest = UnityEngine.AssetBundleRequest

---@class UnityEngine.CompressionType : System.Enum
UnityEngine.CompressionType = {}
---@type UnityEngine.CompressionType
CS.UnityEngine.CompressionType = UnityEngine.CompressionType

---@return System.Int32 value:0
UnityEngine.CompressionType.None = 0
---@return System.Int32 value:1
UnityEngine.CompressionType.Lzma = 1
---@return System.Int32 value:2
UnityEngine.CompressionType.Lz4 = 2
---@return System.Int32 value:3
UnityEngine.CompressionType.Lz4HC = 3

---@class UnityEngine.CompressionLevel : System.Enum
UnityEngine.CompressionLevel = {}
---@type UnityEngine.CompressionLevel
CS.UnityEngine.CompressionLevel = UnityEngine.CompressionLevel

---@return System.Int32 value:0
UnityEngine.CompressionLevel.None = 0
---@return System.Int32 value:1
UnityEngine.CompressionLevel.Fastest = 1
---@return System.Int32 value:2
UnityEngine.CompressionLevel.Fast = 2
---@return System.Int32 value:3
UnityEngine.CompressionLevel.Normal = 3
---@return System.Int32 value:4
UnityEngine.CompressionLevel.High = 4
---@return System.Int32 value:5
UnityEngine.CompressionLevel.Maximum = 5

---@class UnityEngine.BuildCompression : System.ValueType
---@field public compression UnityEngine.CompressionType @ setter getter
---@field public level UnityEngine.CompressionLevel @ setter getter
---@field public blockSize System.UInt32 @ setter getter
---@field public Uncompressed UnityEngine.BuildCompression
---@field public LZ4 UnityEngine.BuildCompression
---@field public LZMA UnityEngine.BuildCompression
---@field public UncompressedRuntime UnityEngine.BuildCompression
---@field public LZ4Runtime UnityEngine.BuildCompression
UnityEngine.BuildCompression = {}
---@type UnityEngine.BuildCompression
CS.UnityEngine.BuildCompression = UnityEngine.BuildCompression

---@class UnityEngine.AudioSpeakerMode : System.Enum
UnityEngine.AudioSpeakerMode = {}
---@type UnityEngine.AudioSpeakerMode
CS.UnityEngine.AudioSpeakerMode = UnityEngine.AudioSpeakerMode

---@return System.Int32 value:0
UnityEngine.AudioSpeakerMode.Raw = 0
---@return System.Int32 value:1
UnityEngine.AudioSpeakerMode.Mono = 1
---@return System.Int32 value:2
UnityEngine.AudioSpeakerMode.Stereo = 2
---@return System.Int32 value:3
UnityEngine.AudioSpeakerMode.Quad = 3
---@return System.Int32 value:4
UnityEngine.AudioSpeakerMode.Surround = 4
---@return System.Int32 value:5
UnityEngine.AudioSpeakerMode.Mode5point1 = 5
---@return System.Int32 value:6
UnityEngine.AudioSpeakerMode.Mode7point1 = 6
---@return System.Int32 value:7
UnityEngine.AudioSpeakerMode.Prologic = 7

---@class UnityEngine.AudioDataLoadState : System.Enum
UnityEngine.AudioDataLoadState = {}
---@type UnityEngine.AudioDataLoadState
CS.UnityEngine.AudioDataLoadState = UnityEngine.AudioDataLoadState

---@return System.Int32 value:0
UnityEngine.AudioDataLoadState.Unloaded = 0
---@return System.Int32 value:1
UnityEngine.AudioDataLoadState.Loading = 1
---@return System.Int32 value:2
UnityEngine.AudioDataLoadState.Loaded = 2
---@return System.Int32 value:3
UnityEngine.AudioDataLoadState.Failed = 3

---@class UnityEngine.AudioConfiguration : System.ValueType
---@field public speakerMode UnityEngine.AudioSpeakerMode
---@field public dspBufferSize System.Int32
---@field public sampleRate System.Int32
---@field public numRealVoices System.Int32
---@field public numVirtualVoices System.Int32
UnityEngine.AudioConfiguration = {}
---@type UnityEngine.AudioConfiguration
CS.UnityEngine.AudioConfiguration = UnityEngine.AudioConfiguration

---@class UnityEngine.AudioSettings : System.Object
---@field public driverCapabilities UnityEngine.AudioSpeakerMode @static  getter
---@field public speakerMode UnityEngine.AudioSpeakerMode @static setter getter
---@field public dspTime System.Double @static  getter
---@field public outputSampleRate System.Int32 @static setter getter
---@field public driverCaps UnityEngine.AudioSpeakerMode @static  getter
UnityEngine.AudioSettings = {}
---@type UnityEngine.AudioSettings
CS.UnityEngine.AudioSettings = UnityEngine.AudioSettings

---@param bufferLength System.Int32
---@param numBuffers System.Int32
---@return System.Void
function UnityEngine.AudioSettings.GetDSPBufferSize(bufferLength, numBuffers)end
---@param bufferLength System.Int32
---@param numBuffers System.Int32
---@return System.Void
function UnityEngine.AudioSettings.SetDSPBufferSize(bufferLength, numBuffers)end
---@return System.String[]
function UnityEngine.AudioSettings.GetSpatializerPluginNames()end
---@return System.String
function UnityEngine.AudioSettings.GetSpatializerPluginName()end
---@param pluginName System.String
---@return System.Void
function UnityEngine.AudioSettings.SetSpatializerPluginName(pluginName)end
---@return UnityEngine.AudioConfiguration
function UnityEngine.AudioSettings.GetConfiguration()end
---@param config UnityEngine.AudioConfiguration
---@return System.Boolean
function UnityEngine.AudioSettings.Reset(config)end
---@param value UnityEngine.AudioSettings.AudioConfigurationChangeHandler
---@return System.Void
function UnityEngine.AudioSettings.add_OnAudioConfigurationChanged(value)end
---@param value UnityEngine.AudioSettings.AudioConfigurationChangeHandler
---@return System.Void
function UnityEngine.AudioSettings.remove_OnAudioConfigurationChanged(value)end
---@class UnityEngine.AudioCompressionFormat : System.Enum
UnityEngine.AudioCompressionFormat = {}
---@type UnityEngine.AudioCompressionFormat
CS.UnityEngine.AudioCompressionFormat = UnityEngine.AudioCompressionFormat

---@return System.Int32 value:0
UnityEngine.AudioCompressionFormat.PCM = 0
---@return System.Int32 value:1
UnityEngine.AudioCompressionFormat.Vorbis = 1
---@return System.Int32 value:2
UnityEngine.AudioCompressionFormat.ADPCM = 2
---@return System.Int32 value:3
UnityEngine.AudioCompressionFormat.MP3 = 3
---@return System.Int32 value:4
UnityEngine.AudioCompressionFormat.VAG = 4
---@return System.Int32 value:5
UnityEngine.AudioCompressionFormat.HEVAG = 5
---@return System.Int32 value:6
UnityEngine.AudioCompressionFormat.XMA = 6
---@return System.Int32 value:7
UnityEngine.AudioCompressionFormat.AAC = 7
---@return System.Int32 value:8
UnityEngine.AudioCompressionFormat.GCADPCM = 8
---@return System.Int32 value:9
UnityEngine.AudioCompressionFormat.ATRAC9 = 9

---@class UnityEngine.AudioClipLoadType : System.Enum
UnityEngine.AudioClipLoadType = {}
---@type UnityEngine.AudioClipLoadType
CS.UnityEngine.AudioClipLoadType = UnityEngine.AudioClipLoadType

---@return System.Int32 value:0
UnityEngine.AudioClipLoadType.DecompressOnLoad = 0
---@return System.Int32 value:1
UnityEngine.AudioClipLoadType.CompressedInMemory = 1
---@return System.Int32 value:2
UnityEngine.AudioClipLoadType.Streaming = 2

---@class UnityEngine.AudioClip : UnityEngine.Object
---@field public length System.Single @  getter
---@field public samples System.Int32 @  getter
---@field public channels System.Int32 @  getter
---@field public frequency System.Int32 @  getter
---@field public isReadyToPlay System.Boolean @  getter
---@field public loadType UnityEngine.AudioClipLoadType @  getter
---@field public preloadAudioData System.Boolean @  getter
---@field public ambisonic System.Boolean @  getter
---@field public loadState UnityEngine.AudioDataLoadState @  getter
---@field public loadInBackground System.Boolean @  getter
UnityEngine.AudioClip = {}
---@type UnityEngine.AudioClip
CS.UnityEngine.AudioClip = UnityEngine.AudioClip

---@return System.Boolean
function UnityEngine.AudioClip:LoadAudioData()end
---@return System.Boolean
function UnityEngine.AudioClip:UnloadAudioData()end
---@param data System.Single[]
---@param offsetSamples System.Int32
---@return System.Boolean
function UnityEngine.AudioClip:GetData(data, offsetSamples)end
---@param data System.Single[]
---@param offsetSamples System.Int32
---@return System.Boolean
function UnityEngine.AudioClip:SetData(data, offsetSamples)end
---@overload fun(name:System.String, lengthSamples:System.Int32, channels:System.Int32, frequency:System.Int32, _3D:System.Boolean, stream:System.Boolean):UnityEngine.AudioClip
---@overload fun(name:System.String, lengthSamples:System.Int32, channels:System.Int32, frequency:System.Int32, stream:System.Boolean, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback):UnityEngine.AudioClip
---@overload fun(name:System.String, lengthSamples:System.Int32, channels:System.Int32, frequency:System.Int32, _3D:System.Boolean, stream:System.Boolean, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback):UnityEngine.AudioClip
---@overload fun(name:System.String, lengthSamples:System.Int32, channels:System.Int32, frequency:System.Int32, stream:System.Boolean, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback, pcmsetpositioncallback:UnityEngine.AudioClip.PCMSetPositionCallback):UnityEngine.AudioClip
---@overload fun(name:System.String, lengthSamples:System.Int32, channels:System.Int32, frequency:System.Int32, _3D:System.Boolean, stream:System.Boolean, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback, pcmsetpositioncallback:UnityEngine.AudioClip.PCMSetPositionCallback):UnityEngine.AudioClip
---@param name System.String
---@param lengthSamples System.Int32
---@param channels System.Int32
---@param frequency System.Int32
---@param stream System.Boolean
---@return UnityEngine.AudioClip
function UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, stream)end
---@class UnityEngine.AudioVelocityUpdateMode : System.Enum
UnityEngine.AudioVelocityUpdateMode = {}
---@type UnityEngine.AudioVelocityUpdateMode
CS.UnityEngine.AudioVelocityUpdateMode = UnityEngine.AudioVelocityUpdateMode

---@return System.Int32 value:0
UnityEngine.AudioVelocityUpdateMode.Auto = 0
---@return System.Int32 value:1
UnityEngine.AudioVelocityUpdateMode.Fixed = 1
---@return System.Int32 value:2
UnityEngine.AudioVelocityUpdateMode.Dynamic = 2

---@class UnityEngine.AudioBehaviour : UnityEngine.Behaviour
UnityEngine.AudioBehaviour = {}
---@type UnityEngine.AudioBehaviour
CS.UnityEngine.AudioBehaviour = UnityEngine.AudioBehaviour

---@class UnityEngine.AudioListener : UnityEngine.AudioBehaviour
---@field public volume System.Single @static setter getter
---@field public pause System.Boolean @static setter getter
---@field public velocityUpdateMode UnityEngine.AudioVelocityUpdateMode @ setter getter
UnityEngine.AudioListener = {}
---@type UnityEngine.AudioListener
CS.UnityEngine.AudioListener = UnityEngine.AudioListener

---@overload fun(samples:System.Single[], channel:System.Int32):System.Void
---@param numSamples System.Int32
---@param channel System.Int32
---@return System.Single[]
function UnityEngine.AudioListener.GetOutputData(numSamples, channel)end
---@overload fun(samples:System.Single[], channel:System.Int32, window:UnityEngine.FFTWindow):System.Void
---@param numSamples System.Int32
---@param channel System.Int32
---@param window UnityEngine.FFTWindow
---@return System.Single[]
function UnityEngine.AudioListener.GetSpectrumData(numSamples, channel, window)end
---@class UnityEngine.FFTWindow : System.Enum
UnityEngine.FFTWindow = {}
---@type UnityEngine.FFTWindow
CS.UnityEngine.FFTWindow = UnityEngine.FFTWindow

---@return System.Int32 value:0
UnityEngine.FFTWindow.Rectangular = 0
---@return System.Int32 value:1
UnityEngine.FFTWindow.Triangle = 1
---@return System.Int32 value:2
UnityEngine.FFTWindow.Hamming = 2
---@return System.Int32 value:3
UnityEngine.FFTWindow.Hanning = 3
---@return System.Int32 value:4
UnityEngine.FFTWindow.Blackman = 4
---@return System.Int32 value:5
UnityEngine.FFTWindow.BlackmanHarris = 5

---@class UnityEngine.AudioRolloffMode : System.Enum
UnityEngine.AudioRolloffMode = {}
---@type UnityEngine.AudioRolloffMode
CS.UnityEngine.AudioRolloffMode = UnityEngine.AudioRolloffMode

---@return System.Int32 value:0
UnityEngine.AudioRolloffMode.Logarithmic = 0
---@return System.Int32 value:1
UnityEngine.AudioRolloffMode.Linear = 1
---@return System.Int32 value:2
UnityEngine.AudioRolloffMode.Custom = 2

---@class UnityEngine.AudioSourceCurveType : System.Enum
UnityEngine.AudioSourceCurveType = {}
---@type UnityEngine.AudioSourceCurveType
CS.UnityEngine.AudioSourceCurveType = UnityEngine.AudioSourceCurveType

---@return System.Int32 value:0
UnityEngine.AudioSourceCurveType.CustomRolloff = 0
---@return System.Int32 value:1
UnityEngine.AudioSourceCurveType.SpatialBlend = 1
---@return System.Int32 value:2
UnityEngine.AudioSourceCurveType.ReverbZoneMix = 2
---@return System.Int32 value:3
UnityEngine.AudioSourceCurveType.Spread = 3

---@class UnityEngine.AudioSource : UnityEngine.AudioBehaviour
---@field public volume System.Single @ setter getter
---@field public pitch System.Single @ setter getter
---@field public time System.Single @ setter getter
---@field public timeSamples System.Int32 @ setter getter
---@field public clip UnityEngine.AudioClip @ setter getter
---@field public outputAudioMixerGroup UnityEngine.Audio.AudioMixerGroup @ setter getter
---@field public isPlaying System.Boolean @  getter
---@field public isVirtual System.Boolean @  getter
---@field public loop System.Boolean @ setter getter
---@field public ignoreListenerVolume System.Boolean @ setter getter
---@field public playOnAwake System.Boolean @ setter getter
---@field public ignoreListenerPause System.Boolean @ setter getter
---@field public velocityUpdateMode UnityEngine.AudioVelocityUpdateMode @ setter getter
---@field public panStereo System.Single @ setter getter
---@field public spatialBlend System.Single @ setter getter
---@field public spatialize System.Boolean @ setter getter
---@field public spatializePostEffects System.Boolean @ setter getter
---@field public reverbZoneMix System.Single @ setter getter
---@field public bypassEffects System.Boolean @ setter getter
---@field public bypassListenerEffects System.Boolean @ setter getter
---@field public bypassReverbZones System.Boolean @ setter getter
---@field public dopplerLevel System.Single @ setter getter
---@field public spread System.Single @ setter getter
---@field public priority System.Int32 @ setter getter
---@field public mute System.Boolean @ setter getter
---@field public minDistance System.Single @ setter getter
---@field public maxDistance System.Single @ setter getter
---@field public rolloffMode UnityEngine.AudioRolloffMode @ setter getter
---@field public minVolume System.Single @ setter getter
---@field public maxVolume System.Single @ setter getter
---@field public rolloffFactor System.Single @ setter getter
---@field public panLevel System.Single @ setter getter
---@field public pan System.Single @ setter getter
UnityEngine.AudioSource = {}
---@type UnityEngine.AudioSource
CS.UnityEngine.AudioSource = UnityEngine.AudioSource

---@overload fun(delay:System.UInt64):System.Void
---@return System.Void
function UnityEngine.AudioSource:Play()end
---@param delay System.Single
---@return System.Void
function UnityEngine.AudioSource:PlayDelayed(delay)end
---@param time System.Double
---@return System.Void
function UnityEngine.AudioSource:PlayScheduled(time)end
---@param time System.Double
---@return System.Void
function UnityEngine.AudioSource:SetScheduledStartTime(time)end
---@param time System.Double
---@return System.Void
function UnityEngine.AudioSource:SetScheduledEndTime(time)end
---@return System.Void
function UnityEngine.AudioSource:Stop()end
---@return System.Void
function UnityEngine.AudioSource:Pause()end
---@return System.Void
function UnityEngine.AudioSource:UnPause()end
---@overload fun(clip:UnityEngine.AudioClip, volumeScale:System.Single):System.Void
---@param clip UnityEngine.AudioClip
---@return System.Void
function UnityEngine.AudioSource:PlayOneShot(clip)end
---@overload fun(clip:UnityEngine.AudioClip, position:UnityEngine.Vector3, volume:System.Single):System.Void
---@param clip UnityEngine.AudioClip
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.AudioSource.PlayClipAtPoint(clip, position)end
---@param type UnityEngine.AudioSourceCurveType
---@param curve UnityEngine.AnimationCurve
---@return System.Void
function UnityEngine.AudioSource:SetCustomCurve(type, curve)end
---@param type UnityEngine.AudioSourceCurveType
---@return UnityEngine.AnimationCurve
function UnityEngine.AudioSource:GetCustomCurve(type)end
---@overload fun(samples:System.Single[], channel:System.Int32):System.Void
---@param numSamples System.Int32
---@param channel System.Int32
---@return System.Single[]
function UnityEngine.AudioSource:GetOutputData(numSamples, channel)end
---@overload fun(samples:System.Single[], channel:System.Int32, window:UnityEngine.FFTWindow):System.Void
---@param numSamples System.Int32
---@param channel System.Int32
---@param window UnityEngine.FFTWindow
---@return System.Single[]
function UnityEngine.AudioSource:GetSpectrumData(numSamples, channel, window)end
---@param index System.Int32
---@param value System.Single
---@return System.Boolean
function UnityEngine.AudioSource:SetSpatializerFloat(index, value)end
---@param index System.Int32
---@param value System.Single
---@return System.Boolean
function UnityEngine.AudioSource:GetSpatializerFloat(index, value)end
---@param index System.Int32
---@param value System.Single
---@return System.Boolean
function UnityEngine.AudioSource:SetAmbisonicDecoderFloat(index, value)end
---@param index System.Int32
---@param value System.Single
---@return System.Boolean
function UnityEngine.AudioSource:GetAmbisonicDecoderFloat(index, value)end
---@class UnityEngine.AudioReverbPreset : System.Enum
UnityEngine.AudioReverbPreset = {}
---@type UnityEngine.AudioReverbPreset
CS.UnityEngine.AudioReverbPreset = UnityEngine.AudioReverbPreset

---@return System.Int32 value:0
UnityEngine.AudioReverbPreset.Off = 0
---@return System.Int32 value:1
UnityEngine.AudioReverbPreset.Generic = 1
---@return System.Int32 value:2
UnityEngine.AudioReverbPreset.PaddedCell = 2
---@return System.Int32 value:3
UnityEngine.AudioReverbPreset.Room = 3
---@return System.Int32 value:4
UnityEngine.AudioReverbPreset.Bathroom = 4
---@return System.Int32 value:5
UnityEngine.AudioReverbPreset.Livingroom = 5
---@return System.Int32 value:6
UnityEngine.AudioReverbPreset.Stoneroom = 6
---@return System.Int32 value:7
UnityEngine.AudioReverbPreset.Auditorium = 7
---@return System.Int32 value:8
UnityEngine.AudioReverbPreset.Concerthall = 8
---@return System.Int32 value:9
UnityEngine.AudioReverbPreset.Cave = 9
---@return System.Int32 value:10
UnityEngine.AudioReverbPreset.Arena = 10
---@return System.Int32 value:11
UnityEngine.AudioReverbPreset.Hangar = 11
---@return System.Int32 value:12
UnityEngine.AudioReverbPreset.CarpetedHallway = 12
---@return System.Int32 value:13
UnityEngine.AudioReverbPreset.Hallway = 13
---@return System.Int32 value:14
UnityEngine.AudioReverbPreset.StoneCorridor = 14
---@return System.Int32 value:15
UnityEngine.AudioReverbPreset.Alley = 15
---@return System.Int32 value:16
UnityEngine.AudioReverbPreset.Forest = 16
---@return System.Int32 value:17
UnityEngine.AudioReverbPreset.City = 17
---@return System.Int32 value:18
UnityEngine.AudioReverbPreset.Mountains = 18
---@return System.Int32 value:19
UnityEngine.AudioReverbPreset.Quarry = 19
---@return System.Int32 value:20
UnityEngine.AudioReverbPreset.Plain = 20
---@return System.Int32 value:21
UnityEngine.AudioReverbPreset.ParkingLot = 21
---@return System.Int32 value:22
UnityEngine.AudioReverbPreset.SewerPipe = 22
---@return System.Int32 value:23
UnityEngine.AudioReverbPreset.Underwater = 23
---@return System.Int32 value:24
UnityEngine.AudioReverbPreset.Drugged = 24
---@return System.Int32 value:25
UnityEngine.AudioReverbPreset.Dizzy = 25
---@return System.Int32 value:26
UnityEngine.AudioReverbPreset.Psychotic = 26
---@return System.Int32 value:27
UnityEngine.AudioReverbPreset.User = 27

---@class UnityEngine.AudioReverbZone : UnityEngine.Behaviour
---@field public minDistance System.Single @ setter getter
---@field public maxDistance System.Single @ setter getter
---@field public reverbPreset UnityEngine.AudioReverbPreset @ setter getter
---@field public room System.Int32 @ setter getter
---@field public roomHF System.Int32 @ setter getter
---@field public roomLF System.Int32 @ setter getter
---@field public decayTime System.Single @ setter getter
---@field public decayHFRatio System.Single @ setter getter
---@field public reflections System.Int32 @ setter getter
---@field public reflectionsDelay System.Single @ setter getter
---@field public reverb System.Int32 @ setter getter
---@field public reverbDelay System.Single @ setter getter
---@field public HFReference System.Single @ setter getter
---@field public LFReference System.Single @ setter getter
---@field public roomRolloffFactor System.Single @ setter getter
---@field public diffusion System.Single @ setter getter
---@field public density System.Single @ setter getter
UnityEngine.AudioReverbZone = {}
---@type UnityEngine.AudioReverbZone
CS.UnityEngine.AudioReverbZone = UnityEngine.AudioReverbZone

---@class UnityEngine.AudioLowPassFilter : UnityEngine.Behaviour
---@field public cutoffFrequency System.Single @ setter getter
---@field public customCutoffCurve UnityEngine.AnimationCurve @ setter getter
---@field public lowpassResonanceQ System.Single @ setter getter
---@field public lowpassResonaceQ System.Single @ setter getter
UnityEngine.AudioLowPassFilter = {}
---@type UnityEngine.AudioLowPassFilter
CS.UnityEngine.AudioLowPassFilter = UnityEngine.AudioLowPassFilter

---@class UnityEngine.AudioHighPassFilter : UnityEngine.Behaviour
---@field public cutoffFrequency System.Single @ setter getter
---@field public highpassResonanceQ System.Single @ setter getter
---@field public highpassResonaceQ System.Single @ setter getter
UnityEngine.AudioHighPassFilter = {}
---@type UnityEngine.AudioHighPassFilter
CS.UnityEngine.AudioHighPassFilter = UnityEngine.AudioHighPassFilter

---@class UnityEngine.AudioDistortionFilter : UnityEngine.Behaviour
---@field public distortionLevel System.Single @ setter getter
UnityEngine.AudioDistortionFilter = {}
---@type UnityEngine.AudioDistortionFilter
CS.UnityEngine.AudioDistortionFilter = UnityEngine.AudioDistortionFilter

---@class UnityEngine.AudioEchoFilter : UnityEngine.Behaviour
---@field public delay System.Single @ setter getter
---@field public decayRatio System.Single @ setter getter
---@field public dryMix System.Single @ setter getter
---@field public wetMix System.Single @ setter getter
UnityEngine.AudioEchoFilter = {}
---@type UnityEngine.AudioEchoFilter
CS.UnityEngine.AudioEchoFilter = UnityEngine.AudioEchoFilter

---@class UnityEngine.AudioChorusFilter : UnityEngine.Behaviour
---@field public dryMix System.Single @ setter getter
---@field public wetMix1 System.Single @ setter getter
---@field public wetMix2 System.Single @ setter getter
---@field public wetMix3 System.Single @ setter getter
---@field public delay System.Single @ setter getter
---@field public rate System.Single @ setter getter
---@field public depth System.Single @ setter getter
---@field public feedback System.Single @ setter getter
UnityEngine.AudioChorusFilter = {}
---@type UnityEngine.AudioChorusFilter
CS.UnityEngine.AudioChorusFilter = UnityEngine.AudioChorusFilter

---@class UnityEngine.AudioReverbFilter : UnityEngine.Behaviour
---@field public reverbPreset UnityEngine.AudioReverbPreset @ setter getter
---@field public dryLevel System.Single @ setter getter
---@field public room System.Single @ setter getter
---@field public roomHF System.Single @ setter getter
---@field public roomRolloffFactor System.Single @ setter getter
---@field public decayTime System.Single @ setter getter
---@field public decayHFRatio System.Single @ setter getter
---@field public reflectionsLevel System.Single @ setter getter
---@field public reflectionsDelay System.Single @ setter getter
---@field public reverbLevel System.Single @ setter getter
---@field public reverbDelay System.Single @ setter getter
---@field public diffusion System.Single @ setter getter
---@field public density System.Single @ setter getter
---@field public hfReference System.Single @ setter getter
---@field public roomLF System.Single @ setter getter
---@field public lfReference System.Single @ setter getter
---@field public lFReference System.Single @ setter getter
UnityEngine.AudioReverbFilter = {}
---@type UnityEngine.AudioReverbFilter
CS.UnityEngine.AudioReverbFilter = UnityEngine.AudioReverbFilter

---@class UnityEngine.Microphone : System.Object
---@field public devices System.String[] @static  getter
UnityEngine.Microphone = {}
---@type UnityEngine.Microphone
CS.UnityEngine.Microphone = UnityEngine.Microphone

---@param deviceName System.String
---@param loop System.Boolean
---@param lengthSec System.Int32
---@param frequency System.Int32
---@return UnityEngine.AudioClip
function UnityEngine.Microphone.Start(deviceName, loop, lengthSec, frequency)end
---@param deviceName System.String
---@return System.Void
function UnityEngine.Microphone.End(deviceName)end
---@param deviceName System.String
---@return System.Boolean
function UnityEngine.Microphone.IsRecording(deviceName)end
---@param deviceName System.String
---@return System.Int32
function UnityEngine.Microphone.GetPosition(deviceName)end
---@param deviceName System.String
---@param minFreq System.Int32
---@param maxFreq System.Int32
---@return System.Void
function UnityEngine.Microphone.GetDeviceCaps(deviceName, minFreq, maxFreq)end
---@class UnityEngine.MovieTexture : UnityEngine.Texture
---@field public audioClip UnityEngine.AudioClip @  getter
---@field public loop System.Boolean @ setter getter
---@field public isPlaying System.Boolean @  getter
---@field public isReadyToPlay System.Boolean @  getter
---@field public duration System.Single @  getter
UnityEngine.MovieTexture = {}
---@type UnityEngine.MovieTexture
CS.UnityEngine.MovieTexture = UnityEngine.MovieTexture

---@return System.Void
function UnityEngine.MovieTexture:Play()end
---@return System.Void
function UnityEngine.MovieTexture:Stop()end
---@return System.Void
function UnityEngine.MovieTexture:Pause()end
---@class UnityEngine.WebCamDevice : System.ValueType
---@field public name System.String @  getter
---@field public isFrontFacing System.Boolean @  getter
---@field public kind UnityEngine.WebCamKind @  getter
---@field public depthCameraName System.String @  getter
---@field public isAutoFocusPointSupported System.Boolean @  getter
---@field public availableResolutions UnityEngine.Resolution[] @  getter
UnityEngine.WebCamDevice = {}
---@type UnityEngine.WebCamDevice
CS.UnityEngine.WebCamDevice = UnityEngine.WebCamDevice

---@class UnityEngine.WebCamTexture : UnityEngine.Texture
---@field public isPlaying System.Boolean @  getter
---@field public deviceName System.String @ setter getter
---@field public requestedFPS System.Single @ setter getter
---@field public requestedWidth System.Int32 @ setter getter
---@field public requestedHeight System.Int32 @ setter getter
---@field public devices UnityEngine.WebCamDevice[] @static  getter
---@field public videoRotationAngle System.Int32 @  getter
---@field public videoVerticallyMirrored System.Boolean @  getter
---@field public didUpdateThisFrame System.Boolean @  getter
---@field public autoFocusPoint System.Nullable @ setter getter
---@field public isDepth System.Boolean @  getter
UnityEngine.WebCamTexture = {}
---@type UnityEngine.WebCamTexture
CS.UnityEngine.WebCamTexture = UnityEngine.WebCamTexture

---@return System.Void
function UnityEngine.WebCamTexture:Play()end
---@return System.Void
function UnityEngine.WebCamTexture:Pause()end
---@return System.Void
function UnityEngine.WebCamTexture:Stop()end
---@param x System.Int32
---@param y System.Int32
---@return UnityEngine.Color
function UnityEngine.WebCamTexture:GetPixel(x, y)end
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32):UnityEngine.Color[]
---@return UnityEngine.Color[]
function UnityEngine.WebCamTexture:GetPixels()end
---@overload fun(colors:UnityEngine.Color32[]):UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.WebCamTexture:GetPixels32()end
---@class UnityEngine.AudioRenderer : System.Object
UnityEngine.AudioRenderer = {}
---@type UnityEngine.AudioRenderer
CS.UnityEngine.AudioRenderer = UnityEngine.AudioRenderer

---@return System.Boolean
function UnityEngine.AudioRenderer.Start()end
---@return System.Boolean
function UnityEngine.AudioRenderer.Stop()end
---@return System.Int32
function UnityEngine.AudioRenderer.GetSampleCountForCaptureFrame()end
---@param buffer Unity.Collections.NativeArray
---@return System.Boolean
function UnityEngine.AudioRenderer.Render(buffer)end
---@class UnityEngine.WebCamFlags : System.Enum
UnityEngine.WebCamFlags = {}
---@type UnityEngine.WebCamFlags
CS.UnityEngine.WebCamFlags = UnityEngine.WebCamFlags

---@return System.Int32 value:1
UnityEngine.WebCamFlags.FrontFacing = 1

---@class UnityEngine.WebCamKind : System.Enum
UnityEngine.WebCamKind = {}
---@type UnityEngine.WebCamKind
CS.UnityEngine.WebCamKind = UnityEngine.WebCamKind

---@return System.Int32 value:1
UnityEngine.WebCamKind.WideAngle = 1
---@return System.Int32 value:2
UnityEngine.WebCamKind.Telephoto = 2

---@class UnityEngine.ClothSphereColliderPair : System.ValueType
---@field public first UnityEngine.SphereCollider @ setter getter
---@field public second UnityEngine.SphereCollider @ setter getter
UnityEngine.ClothSphereColliderPair = {}
---@type UnityEngine.ClothSphereColliderPair
CS.UnityEngine.ClothSphereColliderPair = UnityEngine.ClothSphereColliderPair

---@class UnityEngine.Cloth : UnityEngine.Component
---@field public selfCollision System.Boolean @ setter getter
---@field public vertices UnityEngine.Vector3[] @  getter
---@field public normals UnityEngine.Vector3[] @  getter
---@field public useContinuousCollision System.Single @ setter getter
---@field public coefficients UnityEngine.ClothSkinningCoefficient[] @ setter getter
---@field public solverFrequency System.Boolean @ setter getter
---@field public capsuleColliders UnityEngine.CapsuleCollider[] @ setter getter
---@field public sphereColliders UnityEngine.ClothSphereColliderPair[] @ setter getter
---@field public sleepThreshold System.Single @ setter getter
---@field public bendingStiffness System.Single @ setter getter
---@field public stretchingStiffness System.Single @ setter getter
---@field public damping System.Single @ setter getter
---@field public externalAcceleration UnityEngine.Vector3 @ setter getter
---@field public randomAcceleration UnityEngine.Vector3 @ setter getter
---@field public useGravity System.Boolean @ setter getter
---@field public enabled System.Boolean @ setter getter
---@field public friction System.Single @ setter getter
---@field public collisionMassScale System.Single @ setter getter
---@field public enableContinuousCollision System.Boolean @ setter getter
---@field public useVirtualParticles System.Single @ setter getter
---@field public worldVelocityScale System.Single @ setter getter
---@field public worldAccelerationScale System.Single @ setter getter
---@field public clothSolverFrequency System.Single @ setter getter
---@field public useTethers System.Boolean @ setter getter
---@field public stiffnessFrequency System.Single @ setter getter
---@field public selfCollisionDistance System.Single @ setter getter
---@field public selfCollisionStiffness System.Single @ setter getter
UnityEngine.Cloth = {}
---@type UnityEngine.Cloth
CS.UnityEngine.Cloth = UnityEngine.Cloth

---@return System.Void
function UnityEngine.Cloth:ClearTransformMotion()end
---@overload fun(enabled:System.Boolean, interpolationTime:System.Single):System.Void
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Cloth:SetEnabledFading(enabled)end
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:GetVirtualParticleIndices(indices)end
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:SetVirtualParticleIndices(indices)end
---@param weights System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:GetVirtualParticleWeights(weights)end
---@param weights System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:SetVirtualParticleWeights(weights)end
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:GetSelfAndInterCollisionIndices(indices)end
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Cloth:SetSelfAndInterCollisionIndices(indices)end
---@class UnityEngine.ClothSkinningCoefficient : System.ValueType
---@field public maxDistance System.Single
---@field public collisionSphereDistance System.Single
UnityEngine.ClothSkinningCoefficient = {}
---@type UnityEngine.ClothSkinningCoefficient
CS.UnityEngine.ClothSkinningCoefficient = UnityEngine.ClothSkinningCoefficient

---@class UnityEngine.ClusterInputType : System.Enum
UnityEngine.ClusterInputType = {}
---@type UnityEngine.ClusterInputType
CS.UnityEngine.ClusterInputType = UnityEngine.ClusterInputType

---@return System.Int32 value:0
UnityEngine.ClusterInputType.Button = 0
---@return System.Int32 value:1
UnityEngine.ClusterInputType.Axis = 1
---@return System.Int32 value:2
UnityEngine.ClusterInputType.Tracker = 2
---@return System.Int32 value:3
UnityEngine.ClusterInputType.CustomProvidedInput = 3

---@class UnityEngine.ClusterInput : System.Object
UnityEngine.ClusterInput = {}
---@type UnityEngine.ClusterInput
CS.UnityEngine.ClusterInput = UnityEngine.ClusterInput

---@param name System.String
---@return System.Single
function UnityEngine.ClusterInput.GetAxis(name)end
---@param name System.String
---@return System.Boolean
function UnityEngine.ClusterInput.GetButton(name)end
---@param name System.String
---@return UnityEngine.Vector3
function UnityEngine.ClusterInput.GetTrackerPosition(name)end
---@param name System.String
---@return UnityEngine.Quaternion
function UnityEngine.ClusterInput.GetTrackerRotation(name)end
---@param name System.String
---@param value System.Single
---@return System.Void
function UnityEngine.ClusterInput.SetAxis(name, value)end
---@param name System.String
---@param value System.Boolean
---@return System.Void
function UnityEngine.ClusterInput.SetButton(name, value)end
---@param name System.String
---@param value UnityEngine.Vector3
---@return System.Void
function UnityEngine.ClusterInput.SetTrackerPosition(name, value)end
---@param name System.String
---@param value UnityEngine.Quaternion
---@return System.Void
function UnityEngine.ClusterInput.SetTrackerRotation(name, value)end
---@param name System.String
---@param deviceName System.String
---@param serverUrl System.String
---@param index System.Int32
---@param type UnityEngine.ClusterInputType
---@return System.Boolean
function UnityEngine.ClusterInput.AddInput(name, deviceName, serverUrl, index, type)end
---@param name System.String
---@param deviceName System.String
---@param serverUrl System.String
---@param index System.Int32
---@param type UnityEngine.ClusterInputType
---@return System.Boolean
function UnityEngine.ClusterInput.EditInput(name, deviceName, serverUrl, index, type)end
---@param name System.String
---@return System.Boolean
function UnityEngine.ClusterInput.CheckConnectionToServer(name)end
---@class UnityEngine.ClusterNetwork : System.Object
---@field public isMasterOfCluster System.Boolean @static  getter
---@field public isDisconnected System.Boolean @static  getter
---@field public nodeIndex System.Int32 @static setter getter
UnityEngine.ClusterNetwork = {}
---@type UnityEngine.ClusterNetwork
CS.UnityEngine.ClusterNetwork = UnityEngine.ClusterNetwork

---@class UnityEngine.AndroidInput : System.Object
---@field public touchCountSecondary System.Int32 @static  getter
---@field public secondaryTouchEnabled System.Boolean @static  getter
---@field public secondaryTouchWidth System.Int32 @static  getter
---@field public secondaryTouchHeight System.Int32 @static  getter
UnityEngine.AndroidInput = {}
---@type UnityEngine.AndroidInput
CS.UnityEngine.AndroidInput = UnityEngine.AndroidInput

---@param index System.Int32
---@return UnityEngine.Touch
function UnityEngine.AndroidInput.GetSecondaryTouch(index)end
---@class UnityEngine.AndroidJavaObject : System.Object
UnityEngine.AndroidJavaObject = {}
---@type UnityEngine.AndroidJavaObject
CS.UnityEngine.AndroidJavaObject = UnityEngine.AndroidJavaObject

---@return System.Void
function UnityEngine.AndroidJavaObject:Dispose()end
---@overload fun(methodName:System.String, args:System.Object[]):any
---@param methodName System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.AndroidJavaObject:Call(methodName, args)end
---@overload fun(methodName:System.String, args:System.Object[]):any
---@param methodName System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.AndroidJavaObject:CallStatic(methodName, args)end
---@param fieldName System.String
---@return any
function UnityEngine.AndroidJavaObject:Get(fieldName)end
---@param fieldName System.String
---@param val any
---@return System.Void
function UnityEngine.AndroidJavaObject:Set(fieldName, val)end
---@param fieldName System.String
---@return any
function UnityEngine.AndroidJavaObject:GetStatic(fieldName)end
---@param fieldName System.String
---@param val any
---@return System.Void
function UnityEngine.AndroidJavaObject:SetStatic(fieldName, val)end
---@return System.IntPtr
function UnityEngine.AndroidJavaObject:GetRawObject()end
---@return System.IntPtr
function UnityEngine.AndroidJavaObject:GetRawClass()end
---@class UnityEngine.AndroidJavaClass : UnityEngine.AndroidJavaObject
UnityEngine.AndroidJavaClass = {}
---@type UnityEngine.AndroidJavaClass
CS.UnityEngine.AndroidJavaClass = UnityEngine.AndroidJavaClass

---@class UnityEngine.AndroidJavaException : System.Exception
---@field public StackTrace System.String @  getter
UnityEngine.AndroidJavaException = {}
---@type UnityEngine.AndroidJavaException
CS.UnityEngine.AndroidJavaException = UnityEngine.AndroidJavaException

---@class UnityEngine.AndroidJavaProxy : System.Object
---@field public javaInterface UnityEngine.AndroidJavaClass
UnityEngine.AndroidJavaProxy = {}
---@type UnityEngine.AndroidJavaProxy
CS.UnityEngine.AndroidJavaProxy = UnityEngine.AndroidJavaProxy

---@overload fun(methodName:System.String, javaArgs:UnityEngine.AndroidJavaObject[]):UnityEngine.AndroidJavaObject
---@param methodName System.String
---@param args System.Object[]
---@return UnityEngine.AndroidJavaObject
function UnityEngine.AndroidJavaProxy:Invoke(methodName, args)end
---@param obj UnityEngine.AndroidJavaObject
---@return System.Boolean
function UnityEngine.AndroidJavaProxy:equals(obj)end
---@return System.Int32
function UnityEngine.AndroidJavaProxy:hashCode()end
---@return System.String
function UnityEngine.AndroidJavaProxy:toString()end
---@class UnityEngine.jvalue : System.ValueType
---@field public z System.Boolean
---@field public b System.Byte
---@field public c System.Char
---@field public s System.Int16
---@field public i System.Int32
---@field public j System.Int64
---@field public f System.Single
---@field public d System.Double
---@field public l System.IntPtr
UnityEngine.jvalue = {}
---@type UnityEngine.jvalue
CS.UnityEngine.jvalue = UnityEngine.jvalue

---@class UnityEngine.AndroidJNIHelper : System.Object
---@field public debug System.Boolean @static setter getter
UnityEngine.AndroidJNIHelper = {}
---@type UnityEngine.AndroidJNIHelper
CS.UnityEngine.AndroidJNIHelper = UnityEngine.AndroidJNIHelper

---@overload fun(javaClass:System.IntPtr, signature:System.String):System.IntPtr
---@overload fun(jclass:System.IntPtr, args:System.Object[]):System.IntPtr
---@param javaClass System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetConstructorID(javaClass)end
---@overload fun(javaClass:System.IntPtr, methodName:System.String, signature:System.String):System.IntPtr
---@overload fun(javaClass:System.IntPtr, methodName:System.String, signature:System.String, isStatic:System.Boolean):System.IntPtr
---@overload fun(jclass:System.IntPtr, methodName:System.String, args:System.Object[], isStatic:System.Boolean):System.IntPtr
---@overload fun(jclass:System.IntPtr, methodName:System.String, args:System.Object[], isStatic:System.Boolean):System.IntPtr
---@param javaClass System.IntPtr
---@param methodName System.String
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetMethodID(javaClass, methodName)end
---@overload fun(jclass:System.IntPtr, fieldName:System.String, isStatic:System.Boolean):System.IntPtr
---@overload fun(javaClass:System.IntPtr, fieldName:System.String, signature:System.String):System.IntPtr
---@overload fun(javaClass:System.IntPtr, fieldName:System.String, signature:System.String, isStatic:System.Boolean):System.IntPtr
---@param javaClass System.IntPtr
---@param fieldName System.String
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetFieldID(javaClass, fieldName)end
---@param jrunnable UnityEngine.AndroidJavaRunnable
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.CreateJavaRunnable(jrunnable)end
---@param proxy UnityEngine.AndroidJavaProxy
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.CreateJavaProxy(proxy)end
---@param array System.Array
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.ConvertToJNIArray(array)end
---@param args System.Object[]
---@return UnityEngine.jvalue[]
function UnityEngine.AndroidJNIHelper.CreateJNIArgArray(args)end
---@param args System.Object[]
---@param jniArgs UnityEngine.jvalue[]
---@return System.Void
function UnityEngine.AndroidJNIHelper.DeleteJNIArgArray(args, jniArgs)end
---@overload fun(args:System.Object[]):System.String
---@overload fun(args:System.Object[]):System.String
---@param obj System.Object
---@return System.String
function UnityEngine.AndroidJNIHelper.GetSignature(obj)end
---@param array System.IntPtr
---@return any
function UnityEngine.AndroidJNIHelper.ConvertFromJNIArray(array)end
---@class UnityEngine.AndroidJNI : System.Object
UnityEngine.AndroidJNI = {}
---@type UnityEngine.AndroidJNI
CS.UnityEngine.AndroidJNI = UnityEngine.AndroidJNI

---@return System.Int32
function UnityEngine.AndroidJNI.AttachCurrentThread()end
---@return System.Int32
function UnityEngine.AndroidJNI.DetachCurrentThread()end
---@return System.Int32
function UnityEngine.AndroidJNI.GetVersion()end
---@param name System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.FindClass(name)end
---@param refMethod System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.FromReflectedMethod(refMethod)end
---@param refField System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.FromReflectedField(refField)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param isStatic System.Boolean
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToReflectedMethod(clazz, methodID, isStatic)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param isStatic System.Boolean
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToReflectedField(clazz, fieldID, isStatic)end
---@param clazz System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetSuperclass(clazz)end
---@param clazz1 System.IntPtr
---@param clazz2 System.IntPtr
---@return System.Boolean
function UnityEngine.AndroidJNI.IsAssignableFrom(clazz1, clazz2)end
---@param obj System.IntPtr
---@return System.Int32
function UnityEngine.AndroidJNI.Throw(obj)end
---@param clazz System.IntPtr
---@param message System.String
---@return System.Int32
function UnityEngine.AndroidJNI.ThrowNew(clazz, message)end
---@return System.IntPtr
function UnityEngine.AndroidJNI.ExceptionOccurred()end
---@return System.Void
function UnityEngine.AndroidJNI.ExceptionDescribe()end
---@return System.Void
function UnityEngine.AndroidJNI.ExceptionClear()end
---@param message System.String
---@return System.Void
function UnityEngine.AndroidJNI.FatalError(message)end
---@param capacity System.Int32
---@return System.Int32
function UnityEngine.AndroidJNI.PushLocalFrame(capacity)end
---@param ptr System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.PopLocalFrame(ptr)end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewGlobalRef(obj)end
---@param obj System.IntPtr
---@return System.Void
function UnityEngine.AndroidJNI.DeleteGlobalRef(obj)end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewLocalRef(obj)end
---@param obj System.IntPtr
---@return System.Void
function UnityEngine.AndroidJNI.DeleteLocalRef(obj)end
---@param obj1 System.IntPtr
---@param obj2 System.IntPtr
---@return System.Boolean
function UnityEngine.AndroidJNI.IsSameObject(obj1, obj2)end
---@param capacity System.Int32
---@return System.Int32
function UnityEngine.AndroidJNI.EnsureLocalCapacity(capacity)end
---@param clazz System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.AllocObject(clazz)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewObject(clazz, methodID, args)end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectClass(obj)end
---@param obj System.IntPtr
---@param clazz System.IntPtr
---@return System.Boolean
function UnityEngine.AndroidJNI.IsInstanceOf(obj, clazz)end
---@param clazz System.IntPtr
---@param name System.String
---@param sig System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetMethodID(clazz, name, sig)end
---@param clazz System.IntPtr
---@param name System.String
---@param sig System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetFieldID(clazz, name, sig)end
---@param clazz System.IntPtr
---@param name System.String
---@param sig System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticMethodID(clazz, name, sig)end
---@param clazz System.IntPtr
---@param name System.String
---@param sig System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticFieldID(clazz, name, sig)end
---@param bytes System.String
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewStringUTF(bytes)end
---@param str System.IntPtr
---@return System.Int32
function UnityEngine.AndroidJNI.GetStringUTFLength(str)end
---@param str System.IntPtr
---@return System.String
function UnityEngine.AndroidJNI.GetStringUTFChars(str)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.String
function UnityEngine.AndroidJNI.CallStringMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallObjectMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int32
function UnityEngine.AndroidJNI.CallIntMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Boolean
function UnityEngine.AndroidJNI.CallBooleanMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int16
function UnityEngine.AndroidJNI.CallShortMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Byte
function UnityEngine.AndroidJNI.CallByteMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Char
function UnityEngine.AndroidJNI.CallCharMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Single
function UnityEngine.AndroidJNI.CallFloatMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Double
function UnityEngine.AndroidJNI.CallDoubleMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int64
function UnityEngine.AndroidJNI.CallLongMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Void
function UnityEngine.AndroidJNI.CallVoidMethod(obj, methodID, args)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.String
function UnityEngine.AndroidJNI.GetStringField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Boolean
function UnityEngine.AndroidJNI.GetBooleanField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Byte
function UnityEngine.AndroidJNI.GetByteField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNI.GetCharField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int16
function UnityEngine.AndroidJNI.GetShortField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int32
function UnityEngine.AndroidJNI.GetIntField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int64
function UnityEngine.AndroidJNI.GetLongField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Single
function UnityEngine.AndroidJNI.GetFloatField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Double
function UnityEngine.AndroidJNI.GetDoubleField(obj, fieldID)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.String
---@return System.Void
function UnityEngine.AndroidJNI.SetStringField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
---@return System.Void
function UnityEngine.AndroidJNI.SetObjectField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Boolean
---@return System.Void
function UnityEngine.AndroidJNI.SetBooleanField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Byte
---@return System.Void
function UnityEngine.AndroidJNI.SetByteField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
---@return System.Void
function UnityEngine.AndroidJNI.SetCharField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int16
---@return System.Void
function UnityEngine.AndroidJNI.SetShortField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int32
---@return System.Void
function UnityEngine.AndroidJNI.SetIntField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int64
---@return System.Void
function UnityEngine.AndroidJNI.SetLongField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Single
---@return System.Void
function UnityEngine.AndroidJNI.SetFloatField(obj, fieldID, val)end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Double
---@return System.Void
function UnityEngine.AndroidJNI.SetDoubleField(obj, fieldID, val)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.String
function UnityEngine.AndroidJNI.CallStaticStringMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallStaticObjectMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int32
function UnityEngine.AndroidJNI.CallStaticIntMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Boolean
function UnityEngine.AndroidJNI.CallStaticBooleanMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int16
function UnityEngine.AndroidJNI.CallStaticShortMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Byte
function UnityEngine.AndroidJNI.CallStaticByteMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Char
function UnityEngine.AndroidJNI.CallStaticCharMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Single
function UnityEngine.AndroidJNI.CallStaticFloatMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Double
function UnityEngine.AndroidJNI.CallStaticDoubleMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Int64
function UnityEngine.AndroidJNI.CallStaticLongMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.Void
function UnityEngine.AndroidJNI.CallStaticVoidMethod(clazz, methodID, args)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.String
function UnityEngine.AndroidJNI.GetStaticStringField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticObjectField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Boolean
function UnityEngine.AndroidJNI.GetStaticBooleanField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Byte
function UnityEngine.AndroidJNI.GetStaticByteField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNI.GetStaticCharField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int16
function UnityEngine.AndroidJNI.GetStaticShortField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int32
function UnityEngine.AndroidJNI.GetStaticIntField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Int64
function UnityEngine.AndroidJNI.GetStaticLongField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Single
function UnityEngine.AndroidJNI.GetStaticFloatField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Double
function UnityEngine.AndroidJNI.GetStaticDoubleField(clazz, fieldID)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.String
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticStringField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticObjectField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Boolean
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticBooleanField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Byte
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticByteField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticCharField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int16
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticShortField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int32
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticIntField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Int64
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticLongField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Single
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticFloatField(clazz, fieldID, val)end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Double
---@return System.Void
function UnityEngine.AndroidJNI.SetStaticDoubleField(clazz, fieldID, val)end
---@param array System.Boolean[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToBooleanArray(array)end
---@param array System.Byte[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToByteArray(array)end
---@param array System.Char[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToCharArray(array)end
---@param array System.Int16[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToShortArray(array)end
---@param array System.Int32[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToIntArray(array)end
---@param array System.Int64[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToLongArray(array)end
---@param array System.Single[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToFloatArray(array)end
---@param array System.Double[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToDoubleArray(array)end
---@overload fun(array:System.IntPtr[], arrayClass:System.IntPtr):System.IntPtr
---@param array System.IntPtr[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToObjectArray(array)end
---@param array System.IntPtr
---@return System.Boolean[]
function UnityEngine.AndroidJNI.FromBooleanArray(array)end
---@param array System.IntPtr
---@return System.Byte[]
function UnityEngine.AndroidJNI.FromByteArray(array)end
---@param array System.IntPtr
---@return System.Char[]
function UnityEngine.AndroidJNI.FromCharArray(array)end
---@param array System.IntPtr
---@return System.Int16[]
function UnityEngine.AndroidJNI.FromShortArray(array)end
---@param array System.IntPtr
---@return System.Int32[]
function UnityEngine.AndroidJNI.FromIntArray(array)end
---@param array System.IntPtr
---@return System.Int64[]
function UnityEngine.AndroidJNI.FromLongArray(array)end
---@param array System.IntPtr
---@return System.Single[]
function UnityEngine.AndroidJNI.FromFloatArray(array)end
---@param array System.IntPtr
---@return System.Double[]
function UnityEngine.AndroidJNI.FromDoubleArray(array)end
---@param array System.IntPtr
---@return System.IntPtr[]
function UnityEngine.AndroidJNI.FromObjectArray(array)end
---@param array System.IntPtr
---@return System.Int32
function UnityEngine.AndroidJNI.GetArrayLength(array)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewBooleanArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewByteArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewCharArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewShortArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewIntArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewLongArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewFloatArray(size)end
---@param size System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewDoubleArray(size)end
---@param size System.Int32
---@param clazz System.IntPtr
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewObjectArray(size, clazz, obj)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Boolean
function UnityEngine.AndroidJNI.GetBooleanArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Byte
function UnityEngine.AndroidJNI.GetByteArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Char
function UnityEngine.AndroidJNI.GetCharArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Int16
function UnityEngine.AndroidJNI.GetShortArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Int32
function UnityEngine.AndroidJNI.GetIntArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Int64
function UnityEngine.AndroidJNI.GetLongArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Single
function UnityEngine.AndroidJNI.GetFloatArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.Double
function UnityEngine.AndroidJNI.GetDoubleArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectArrayElement(array, index)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Byte
---@return System.Void
function UnityEngine.AndroidJNI.SetBooleanArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.SByte
---@return System.Void
function UnityEngine.AndroidJNI.SetByteArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Char
---@return System.Void
function UnityEngine.AndroidJNI.SetCharArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Int16
---@return System.Void
function UnityEngine.AndroidJNI.SetShortArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Int32
---@return System.Void
function UnityEngine.AndroidJNI.SetIntArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Int64
---@return System.Void
function UnityEngine.AndroidJNI.SetLongArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Single
---@return System.Void
function UnityEngine.AndroidJNI.SetFloatArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param val System.Double
---@return System.Void
function UnityEngine.AndroidJNI.SetDoubleArrayElement(array, index, val)end
---@param array System.IntPtr
---@param index System.Int32
---@param obj System.IntPtr
---@return System.Void
function UnityEngine.AndroidJNI.SetObjectArrayElement(array, index, obj)end
---@class UnityEngine.WeightedMode : System.Enum
UnityEngine.WeightedMode = {}
---@type UnityEngine.WeightedMode
CS.UnityEngine.WeightedMode = UnityEngine.WeightedMode

---@return System.Int32 value:0
UnityEngine.WeightedMode.None = 0
---@return System.Int32 value:1
UnityEngine.WeightedMode.In = 1
---@return System.Int32 value:2
UnityEngine.WeightedMode.Out = 2
---@return System.Int32 value:3
UnityEngine.WeightedMode.Both = 3

---@class UnityEngine.Keyframe : System.ValueType
---@field public time System.Single @ setter getter
---@field public value System.Single @ setter getter
---@field public inTangent System.Single @ setter getter
---@field public outTangent System.Single @ setter getter
---@field public inWeight System.Single @ setter getter
---@field public outWeight System.Single @ setter getter
---@field public weightedMode UnityEngine.WeightedMode @ setter getter
---@field public tangentMode System.Int32 @ setter getter
UnityEngine.Keyframe = {}
---@type UnityEngine.Keyframe
CS.UnityEngine.Keyframe = UnityEngine.Keyframe

---@class UnityEngine.WrapMode : System.Enum
UnityEngine.WrapMode = {}
---@type UnityEngine.WrapMode
CS.UnityEngine.WrapMode = UnityEngine.WrapMode

---@return System.Int32 value:0
UnityEngine.WrapMode.Default = 0
---@return System.Int32 value:1
UnityEngine.WrapMode.Clamp = 1
---@return System.Int32 value:2
UnityEngine.WrapMode.Loop = 2
---@return System.Int32 value:4
UnityEngine.WrapMode.PingPong = 4

---@class UnityEngine.AnimationCurve : System.Object
---@field public keys UnityEngine.Keyframe[] @ setter getter
---@field public Item UnityEngine.Keyframe @  getter
---@field public length System.Int32 @  getter
---@field public preWrapMode UnityEngine.WrapMode @ setter getter
---@field public postWrapMode UnityEngine.WrapMode @ setter getter
UnityEngine.AnimationCurve = {}
---@type UnityEngine.AnimationCurve
CS.UnityEngine.AnimationCurve = UnityEngine.AnimationCurve

---@param time System.Single
---@return System.Single
function UnityEngine.AnimationCurve:Evaluate(time)end
---@overload fun(key:UnityEngine.Keyframe):System.Int32
---@param time System.Single
---@param value System.Single
---@return System.Int32
function UnityEngine.AnimationCurve:AddKey(time, value)end
---@param index System.Int32
---@param key UnityEngine.Keyframe
---@return System.Int32
function UnityEngine.AnimationCurve:MoveKey(index, key)end
---@param index System.Int32
---@return System.Void
function UnityEngine.AnimationCurve:RemoveKey(index)end
---@param index System.Int32
---@param weight System.Single
---@return System.Void
function UnityEngine.AnimationCurve:SmoothTangents(index, weight)end
---@param timeStart System.Single
---@param timeEnd System.Single
---@param value System.Single
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.Constant(timeStart, timeEnd, value)end
---@param timeStart System.Single
---@param valueStart System.Single
---@param timeEnd System.Single
---@param valueEnd System.Single
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.Linear(timeStart, valueStart, timeEnd, valueEnd)end
---@param timeStart System.Single
---@param valueStart System.Single
---@param timeEnd System.Single
---@param valueEnd System.Single
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.EaseInOut(timeStart, valueStart, timeEnd, valueEnd)end
---@overload fun(other:UnityEngine.AnimationCurve):System.Boolean
---@param o System.Object
---@return System.Boolean
function UnityEngine.AnimationCurve:Equals(o)end
---@return System.Int32
function UnityEngine.AnimationCurve:GetHashCode()end
---@class UnityEngine.Application : System.Object
---@field public isLoadingLevel System.Boolean @static  getter
---@field public streamedBytes System.Int32 @static  getter
---@field public webSecurityEnabled System.Boolean @static  getter
---@field public isPlaying System.Boolean @static  getter
---@field public isFocused System.Boolean @static  getter
---@field public platform UnityEngine.RuntimePlatform @static  getter
---@field public buildGUID System.String @static  getter
---@field public isMobilePlatform System.Boolean @static  getter
---@field public isConsolePlatform System.Boolean @static  getter
---@field public runInBackground System.Boolean @static setter getter
---@field public isBatchMode System.Boolean @static  getter
---@field public dataPath System.String @static  getter
---@field public streamingAssetsPath System.String @static  getter
---@field public persistentDataPath System.String @static  getter
---@field public temporaryCachePath System.String @static  getter
---@field public absoluteURL System.String @static  getter
---@field public unityVersion System.String @static  getter
---@field public version System.String @static  getter
---@field public installerName System.String @static  getter
---@field public identifier System.String @static  getter
---@field public installMode UnityEngine.ApplicationInstallMode @static  getter
---@field public sandboxType UnityEngine.ApplicationSandboxType @static  getter
---@field public productName System.String @static  getter
---@field public companyName System.String @static  getter
---@field public cloudProjectId System.String @static  getter
---@field public targetFrameRate System.Int32 @static setter getter
---@field public systemLanguage UnityEngine.SystemLanguage @static  getter
---@field public stackTraceLogType UnityEngine.StackTraceLogType @static setter getter
---@field public consoleLogPath System.String @static  getter
---@field public backgroundLoadingPriority UnityEngine.ThreadPriority @static setter getter
---@field public internetReachability UnityEngine.NetworkReachability @static  getter
---@field public genuine System.Boolean @static  getter
---@field public genuineCheckAvailable System.Boolean @static  getter
---@field public isShowingSplashScreen System.Boolean @static  getter
---@field public isPlayer System.Boolean @static  getter
---@field public isEditor System.Boolean @static  getter
---@field public levelCount System.Int32 @static  getter
---@field public loadedLevel System.Int32 @static  getter
---@field public loadedLevelName System.String @static  getter
UnityEngine.Application = {}
---@type UnityEngine.Application
CS.UnityEngine.Application = UnityEngine.Application

---@overload fun(exitCode:System.Int32):System.Void
---@return System.Void
function UnityEngine.Application.Quit()end
---@return System.Void
function UnityEngine.Application.CancelQuit()end
---@return System.Void
function UnityEngine.Application.Unload()end
---@overload fun(levelName:System.String):System.Single
---@param levelIndex System.Int32
---@return System.Single
function UnityEngine.Application.GetStreamProgressForLevel(levelIndex)end
---@overload fun(levelName:System.String):System.Boolean
---@param levelIndex System.Int32
---@return System.Boolean
function UnityEngine.Application.CanStreamedLevelBeLoaded(levelIndex)end
---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEngine.Application.IsPlaying(obj)end
---@return System.String[]
function UnityEngine.Application.GetBuildTags()end
---@param buildTags System.String[]
---@return System.Void
function UnityEngine.Application.SetBuildTags(buildTags)end
---@return System.Boolean
function UnityEngine.Application.HasProLicense()end
---@param script System.String
---@return System.Void
function UnityEngine.Application.ExternalEval(script)end
---@param delegateMethod UnityEngine.Application.AdvertisingIdentifierCallback
---@return System.Boolean
function UnityEngine.Application.RequestAdvertisingIdentifierAsync(delegateMethod)end
---@param url System.String
---@return System.Void
function UnityEngine.Application.OpenURL(url)end
---@param mode System.Int32
---@return System.Void
function UnityEngine.Application.ForceCrash(mode)end
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function UnityEngine.Application.GetStackTraceLogType(logType)end
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
---@return System.Void
function UnityEngine.Application.SetStackTraceLogType(logType, stackTraceType)end
---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function UnityEngine.Application.RequestUserAuthorization(mode)end
---@param mode UnityEngine.UserAuthorization
---@return System.Boolean
function UnityEngine.Application.HasUserAuthorization(mode)end
---@param value UnityEngine.Application.LowMemoryCallback
---@return System.Void
function UnityEngine.Application.add_lowMemory(value)end
---@param value UnityEngine.Application.LowMemoryCallback
---@return System.Void
function UnityEngine.Application.remove_lowMemory(value)end
---@param value UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.add_logMessageReceived(value)end
---@param value UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.remove_logMessageReceived(value)end
---@param value UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.add_logMessageReceivedThreaded(value)end
---@param value UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.remove_logMessageReceivedThreaded(value)end
---@param functionName System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Application.ExternalCall(functionName, args)end
---@param o UnityEngine.Object
---@return System.Void
function UnityEngine.Application.DontDestroyOnLoad(o)end
---@overload fun(filename:System.String, superSize:System.Int32):System.Void
---@param filename System.String
---@return System.Void
function UnityEngine.Application.CaptureScreenshot(filename)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Application.add_onBeforeRender(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Application.remove_onBeforeRender(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Application.add_focusChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Application.remove_focusChanged(value)end
---@param value System.Func
---@return System.Void
function UnityEngine.Application.add_wantsToQuit(value)end
---@param value System.Func
---@return System.Void
function UnityEngine.Application.remove_wantsToQuit(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Application.add_quitting(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Application.remove_quitting(value)end
---@param handler UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.RegisterLogCallback(handler)end
---@param handler UnityEngine.Application.LogCallback
---@return System.Void
function UnityEngine.Application.RegisterLogCallbackThreaded(handler)end
---@overload fun(name:System.String):System.Void
---@param index System.Int32
---@return System.Void
function UnityEngine.Application.LoadLevel(index)end
---@overload fun(name:System.String):System.Void
---@param index System.Int32
---@return System.Void
function UnityEngine.Application.LoadLevelAdditive(index)end
---@overload fun(levelName:System.String):UnityEngine.AsyncOperation
---@param index System.Int32
---@return UnityEngine.AsyncOperation
function UnityEngine.Application.LoadLevelAsync(index)end
---@overload fun(levelName:System.String):UnityEngine.AsyncOperation
---@param index System.Int32
---@return UnityEngine.AsyncOperation
function UnityEngine.Application.LoadLevelAdditiveAsync(index)end
---@overload fun(scenePath:System.String):System.Boolean
---@param index System.Int32
---@return System.Boolean
function UnityEngine.Application.UnloadLevel(index)end
---@class UnityEngine.StackTraceLogType : System.Enum
UnityEngine.StackTraceLogType = {}
---@type UnityEngine.StackTraceLogType
CS.UnityEngine.StackTraceLogType = UnityEngine.StackTraceLogType

---@return System.Int32 value:0
UnityEngine.StackTraceLogType.None = 0
---@return System.Int32 value:1
UnityEngine.StackTraceLogType.ScriptOnly = 1
---@return System.Int32 value:2
UnityEngine.StackTraceLogType.Full = 2

---@class UnityEngine.NetworkReachability : System.Enum
UnityEngine.NetworkReachability = {}
---@type UnityEngine.NetworkReachability
CS.UnityEngine.NetworkReachability = UnityEngine.NetworkReachability

---@return System.Int32 value:0
UnityEngine.NetworkReachability.NotReachable = 0
---@return System.Int32 value:1
UnityEngine.NetworkReachability.ReachableViaCarrierDataNetwork = 1
---@return System.Int32 value:2
UnityEngine.NetworkReachability.ReachableViaLocalAreaNetwork = 2

---@class UnityEngine.UserAuthorization : System.Enum
UnityEngine.UserAuthorization = {}
---@type UnityEngine.UserAuthorization
CS.UnityEngine.UserAuthorization = UnityEngine.UserAuthorization

---@return System.Int32 value:1
UnityEngine.UserAuthorization.WebCam = 1

---@class UnityEngine.ApplicationInstallMode : System.Enum
UnityEngine.ApplicationInstallMode = {}
---@type UnityEngine.ApplicationInstallMode
CS.UnityEngine.ApplicationInstallMode = UnityEngine.ApplicationInstallMode

---@return System.Int32 value:0
UnityEngine.ApplicationInstallMode.Unknown = 0
---@return System.Int32 value:1
UnityEngine.ApplicationInstallMode.Store = 1
---@return System.Int32 value:2
UnityEngine.ApplicationInstallMode.DeveloperBuild = 2
---@return System.Int32 value:3
UnityEngine.ApplicationInstallMode.Adhoc = 3
---@return System.Int32 value:4
UnityEngine.ApplicationInstallMode.Enterprise = 4
---@return System.Int32 value:5
UnityEngine.ApplicationInstallMode.Editor = 5

---@class UnityEngine.ApplicationSandboxType : System.Enum
UnityEngine.ApplicationSandboxType = {}
---@type UnityEngine.ApplicationSandboxType
CS.UnityEngine.ApplicationSandboxType = UnityEngine.ApplicationSandboxType

---@return System.Int32 value:0
UnityEngine.ApplicationSandboxType.Unknown = 0
---@return System.Int32 value:1
UnityEngine.ApplicationSandboxType.NotSandboxed = 1
---@return System.Int32 value:2
UnityEngine.ApplicationSandboxType.Sandboxed = 2
---@return System.Int32 value:3
UnityEngine.ApplicationSandboxType.SandboxBroken = 3

---@class UnityEngine.AsyncOperation : UnityEngine.YieldInstruction
---@field public isDone System.Boolean @  getter
---@field public progress System.Single @  getter
---@field public priority System.Int32 @ setter getter
---@field public allowSceneActivation System.Boolean @ setter getter
UnityEngine.AsyncOperation = {}
---@type UnityEngine.AsyncOperation
CS.UnityEngine.AsyncOperation = UnityEngine.AsyncOperation

---@param value System.Action
---@return System.Void
function UnityEngine.AsyncOperation:add_completed(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.AsyncOperation:remove_completed(value)end
---@class UnityEngine.DisallowMultipleComponent : System.Attribute
UnityEngine.DisallowMultipleComponent = {}
---@type UnityEngine.DisallowMultipleComponent
CS.UnityEngine.DisallowMultipleComponent = UnityEngine.DisallowMultipleComponent

---@class UnityEngine.RequireComponent : System.Attribute
---@field public m_Type0 System.Type
---@field public m_Type1 System.Type
---@field public m_Type2 System.Type
UnityEngine.RequireComponent = {}
---@type UnityEngine.RequireComponent
CS.UnityEngine.RequireComponent = UnityEngine.RequireComponent

---@class UnityEngine.AddComponentMenu : System.Attribute
---@field public componentMenu System.String @  getter
---@field public componentOrder System.Int32 @  getter
UnityEngine.AddComponentMenu = {}
---@type UnityEngine.AddComponentMenu
CS.UnityEngine.AddComponentMenu = UnityEngine.AddComponentMenu

---@class UnityEngine.CreateAssetMenuAttribute : System.Attribute
---@field public menuName System.String @ setter getter
---@field public fileName System.String @ setter getter
---@field public order System.Int32 @ setter getter
UnityEngine.CreateAssetMenuAttribute = {}
---@type UnityEngine.CreateAssetMenuAttribute
CS.UnityEngine.CreateAssetMenuAttribute = UnityEngine.CreateAssetMenuAttribute

---@class UnityEngine.ContextMenu : System.Attribute
---@field public menuItem System.String
---@field public validate System.Boolean
---@field public priority System.Int32
UnityEngine.ContextMenu = {}
---@type UnityEngine.ContextMenu
CS.UnityEngine.ContextMenu = UnityEngine.ContextMenu

---@class UnityEngine.ExecuteInEditMode : System.Attribute
UnityEngine.ExecuteInEditMode = {}
---@type UnityEngine.ExecuteInEditMode
CS.UnityEngine.ExecuteInEditMode = UnityEngine.ExecuteInEditMode

---@class UnityEngine.ExecuteAlways : System.Attribute
UnityEngine.ExecuteAlways = {}
---@type UnityEngine.ExecuteAlways
CS.UnityEngine.ExecuteAlways = UnityEngine.ExecuteAlways

---@class UnityEngine.HideInInspector : System.Attribute
UnityEngine.HideInInspector = {}
---@type UnityEngine.HideInInspector
CS.UnityEngine.HideInInspector = UnityEngine.HideInInspector

---@class UnityEngine.HelpURLAttribute : System.Attribute
---@field public URL System.String @  getter
UnityEngine.HelpURLAttribute = {}
---@type UnityEngine.HelpURLAttribute
CS.UnityEngine.HelpURLAttribute = UnityEngine.HelpURLAttribute

---@class UnityEngine.DefaultExecutionOrder : System.Attribute
---@field public order System.Int32 @ setter getter
UnityEngine.DefaultExecutionOrder = {}
---@type UnityEngine.DefaultExecutionOrder
CS.UnityEngine.DefaultExecutionOrder = UnityEngine.DefaultExecutionOrder

---@class UnityEngine.AssemblyIsEditorAssembly : System.Attribute
UnityEngine.AssemblyIsEditorAssembly = {}
---@type UnityEngine.AssemblyIsEditorAssembly
CS.UnityEngine.AssemblyIsEditorAssembly = UnityEngine.AssemblyIsEditorAssembly

---@class UnityEngine.ExcludeFromPresetAttribute : System.Attribute
UnityEngine.ExcludeFromPresetAttribute = {}
---@type UnityEngine.ExcludeFromPresetAttribute
CS.UnityEngine.ExcludeFromPresetAttribute = UnityEngine.ExcludeFromPresetAttribute

---@class UnityEngine.AudioType : System.Enum
UnityEngine.AudioType = {}
---@type UnityEngine.AudioType
CS.UnityEngine.AudioType = UnityEngine.AudioType

---@return System.Int32 value:0
UnityEngine.AudioType.UNKNOWN = 0
---@return System.Int32 value:1
UnityEngine.AudioType.ACC = 1
---@return System.Int32 value:2
UnityEngine.AudioType.AIFF = 2
---@return System.Int32 value:10
UnityEngine.AudioType.IT = 10
---@return System.Int32 value:12
UnityEngine.AudioType.MOD = 12

---@class UnityEngine.SendMessageOptions : System.Enum
UnityEngine.SendMessageOptions = {}
---@type UnityEngine.SendMessageOptions
CS.UnityEngine.SendMessageOptions = UnityEngine.SendMessageOptions

---@return System.Int32 value:0
UnityEngine.SendMessageOptions.RequireReceiver = 0
---@return System.Int32 value:1
UnityEngine.SendMessageOptions.DontRequireReceiver = 1

---@class UnityEngine.PrimitiveType : System.Enum
UnityEngine.PrimitiveType = {}
---@type UnityEngine.PrimitiveType
CS.UnityEngine.PrimitiveType = UnityEngine.PrimitiveType

---@return System.Int32 value:0
UnityEngine.PrimitiveType.Sphere = 0
---@return System.Int32 value:1
UnityEngine.PrimitiveType.Capsule = 1
---@return System.Int32 value:2
UnityEngine.PrimitiveType.Cylinder = 2
---@return System.Int32 value:3
UnityEngine.PrimitiveType.Cube = 3
---@return System.Int32 value:4
UnityEngine.PrimitiveType.Plane = 4
---@return System.Int32 value:5
UnityEngine.PrimitiveType.Quad = 5

---@class UnityEngine.Space : System.Enum
UnityEngine.Space = {}
---@type UnityEngine.Space
CS.UnityEngine.Space = UnityEngine.Space

---@return System.Int32 value:0
UnityEngine.Space.World = 0
---@return System.Int32 value:1
UnityEngine.Space.Self = 1

---@class UnityEngine.RuntimePlatform : System.Enum
UnityEngine.RuntimePlatform = {}
---@type UnityEngine.RuntimePlatform
CS.UnityEngine.RuntimePlatform = UnityEngine.RuntimePlatform

---@return System.Int32 value:0
UnityEngine.RuntimePlatform.OSXEditor = 0
---@return System.Int32 value:1
UnityEngine.RuntimePlatform.OSXPlayer = 1
---@return System.Int32 value:2
UnityEngine.RuntimePlatform.WindowsPlayer = 2
---@return System.Int32 value:3
UnityEngine.RuntimePlatform.OSXWebPlayer = 3
---@return System.Int32 value:4
UnityEngine.RuntimePlatform.OSXDashboardPlayer = 4
---@return System.Int32 value:5
UnityEngine.RuntimePlatform.WindowsWebPlayer = 5
---@return System.Int32 value:7
UnityEngine.RuntimePlatform.WindowsEditor = 7
---@return System.Int32 value:8
UnityEngine.RuntimePlatform.IPhonePlayer = 8
---@return System.Int32 value:9
UnityEngine.RuntimePlatform.PS3 = 9
---@return System.Int32 value:10
UnityEngine.RuntimePlatform.XBOX360 = 10
---@return System.Int32 value:11
UnityEngine.RuntimePlatform.Android = 11
---@return System.Int32 value:12
UnityEngine.RuntimePlatform.NaCl = 12
---@return System.Int32 value:13
UnityEngine.RuntimePlatform.LinuxPlayer = 13
---@return System.Int32 value:15
UnityEngine.RuntimePlatform.FlashPlayer = 15
---@return System.Int32 value:16
UnityEngine.RuntimePlatform.LinuxEditor = 16
---@return System.Int32 value:17
UnityEngine.RuntimePlatform.WebGLPlayer = 17
---@return System.Int32 value:18
UnityEngine.RuntimePlatform.MetroPlayerX86 = 18
---@return System.Int32 value:19
UnityEngine.RuntimePlatform.WSAPlayerX64 = 19
---@return System.Int32 value:20
UnityEngine.RuntimePlatform.WSAPlayerARM = 20
---@return System.Int32 value:21
UnityEngine.RuntimePlatform.WP8Player = 21
---@return System.Int32 value:22
UnityEngine.RuntimePlatform.BB10Player = 22
---@return System.Int32 value:23
UnityEngine.RuntimePlatform.TizenPlayer = 23
---@return System.Int32 value:24
UnityEngine.RuntimePlatform.PSP2 = 24
---@return System.Int32 value:25
UnityEngine.RuntimePlatform.PS4 = 25
---@return System.Int32 value:26
UnityEngine.RuntimePlatform.PSM = 26
---@return System.Int32 value:27
UnityEngine.RuntimePlatform.XboxOne = 27
---@return System.Int32 value:28
UnityEngine.RuntimePlatform.SamsungTVPlayer = 28
---@return System.Int32 value:30
UnityEngine.RuntimePlatform.WiiU = 30
---@return System.Int32 value:31
UnityEngine.RuntimePlatform.tvOS = 31
---@return System.Int32 value:32
UnityEngine.RuntimePlatform.Switch = 32
---@return System.Int32 value:33
UnityEngine.RuntimePlatform.Lumin = 33

---@class UnityEngine.SystemLanguage : System.Enum
UnityEngine.SystemLanguage = {}
---@type UnityEngine.SystemLanguage
CS.UnityEngine.SystemLanguage = UnityEngine.SystemLanguage

---@return System.Int32 value:0
UnityEngine.SystemLanguage.Afrikaans = 0
---@return System.Int32 value:1
UnityEngine.SystemLanguage.Arabic = 1
---@return System.Int32 value:2
UnityEngine.SystemLanguage.Basque = 2
---@return System.Int32 value:3
UnityEngine.SystemLanguage.Belarusian = 3
---@return System.Int32 value:4
UnityEngine.SystemLanguage.Bulgarian = 4
---@return System.Int32 value:5
UnityEngine.SystemLanguage.Catalan = 5
---@return System.Int32 value:6
UnityEngine.SystemLanguage.Chinese = 6
---@return System.Int32 value:7
UnityEngine.SystemLanguage.Czech = 7
---@return System.Int32 value:8
UnityEngine.SystemLanguage.Danish = 8
---@return System.Int32 value:9
UnityEngine.SystemLanguage.Dutch = 9
---@return System.Int32 value:10
UnityEngine.SystemLanguage.English = 10
---@return System.Int32 value:11
UnityEngine.SystemLanguage.Estonian = 11
---@return System.Int32 value:12
UnityEngine.SystemLanguage.Faroese = 12
---@return System.Int32 value:13
UnityEngine.SystemLanguage.Finnish = 13
---@return System.Int32 value:14
UnityEngine.SystemLanguage.French = 14
---@return System.Int32 value:15
UnityEngine.SystemLanguage.German = 15
---@return System.Int32 value:16
UnityEngine.SystemLanguage.Greek = 16
---@return System.Int32 value:17
UnityEngine.SystemLanguage.Hebrew = 17
---@return System.Int32 value:18
UnityEngine.SystemLanguage.Hungarian = 18
---@return System.Int32 value:19
UnityEngine.SystemLanguage.Icelandic = 19
---@return System.Int32 value:20
UnityEngine.SystemLanguage.Indonesian = 20
---@return System.Int32 value:21
UnityEngine.SystemLanguage.Italian = 21
---@return System.Int32 value:22
UnityEngine.SystemLanguage.Japanese = 22
---@return System.Int32 value:23
UnityEngine.SystemLanguage.Korean = 23
---@return System.Int32 value:24
UnityEngine.SystemLanguage.Latvian = 24
---@return System.Int32 value:25
UnityEngine.SystemLanguage.Lithuanian = 25
---@return System.Int32 value:26
UnityEngine.SystemLanguage.Norwegian = 26
---@return System.Int32 value:27
UnityEngine.SystemLanguage.Polish = 27
---@return System.Int32 value:28
UnityEngine.SystemLanguage.Portuguese = 28
---@return System.Int32 value:29
UnityEngine.SystemLanguage.Romanian = 29
---@return System.Int32 value:30
UnityEngine.SystemLanguage.Russian = 30
---@return System.Int32 value:31
UnityEngine.SystemLanguage.SerboCroatian = 31
---@return System.Int32 value:32
UnityEngine.SystemLanguage.Slovak = 32
---@return System.Int32 value:33
UnityEngine.SystemLanguage.Slovenian = 33
---@return System.Int32 value:34
UnityEngine.SystemLanguage.Spanish = 34
---@return System.Int32 value:35
UnityEngine.SystemLanguage.Swedish = 35
---@return System.Int32 value:36
UnityEngine.SystemLanguage.Thai = 36
---@return System.Int32 value:37
UnityEngine.SystemLanguage.Turkish = 37
---@return System.Int32 value:38
UnityEngine.SystemLanguage.Ukrainian = 38
---@return System.Int32 value:39
UnityEngine.SystemLanguage.Vietnamese = 39
---@return System.Int32 value:40
UnityEngine.SystemLanguage.ChineseSimplified = 40
---@return System.Int32 value:41
UnityEngine.SystemLanguage.ChineseTraditional = 41
---@return System.Int32 value:42
UnityEngine.SystemLanguage.Unknown = 42

---@class UnityEngine.LogType : System.Enum
UnityEngine.LogType = {}
---@type UnityEngine.LogType
CS.UnityEngine.LogType = UnityEngine.LogType

---@return System.Int32 value:0
UnityEngine.LogType.Error = 0
---@return System.Int32 value:1
UnityEngine.LogType.Assert = 1
---@return System.Int32 value:2
UnityEngine.LogType.Warning = 2
---@return System.Int32 value:3
UnityEngine.LogType.Log = 3
---@return System.Int32 value:4
UnityEngine.LogType.Exception = 4

---@class UnityEngine.ThreadPriority : System.Enum
UnityEngine.ThreadPriority = {}
---@type UnityEngine.ThreadPriority
CS.UnityEngine.ThreadPriority = UnityEngine.ThreadPriority

---@return System.Int32 value:0
UnityEngine.ThreadPriority.Low = 0
---@return System.Int32 value:1
UnityEngine.ThreadPriority.BelowNormal = 1
---@return System.Int32 value:2
UnityEngine.ThreadPriority.Normal = 2

---@class UnityEngine.BeforeRenderOrderAttribute : System.Attribute
---@field public order System.Int32 @ setter getter
UnityEngine.BeforeRenderOrderAttribute = {}
---@type UnityEngine.BeforeRenderOrderAttribute
CS.UnityEngine.BeforeRenderOrderAttribute = UnityEngine.BeforeRenderOrderAttribute

---@class UnityEngine.Behaviour : UnityEngine.Component
---@field public enabled System.Boolean @ setter getter
---@field public isActiveAndEnabled System.Boolean @  getter
UnityEngine.Behaviour = {}
---@type UnityEngine.Behaviour
CS.UnityEngine.Behaviour = UnityEngine.Behaviour

---@class UnityEngine.BillboardAsset : UnityEngine.Object
---@field public width System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public bottom System.Single @ setter getter
---@field public imageCount System.Int32 @  getter
---@field public vertexCount System.Int32 @  getter
---@field public indexCount System.Int32 @  getter
---@field public material UnityEngine.Material @ setter getter
UnityEngine.BillboardAsset = {}
---@type UnityEngine.BillboardAsset
CS.UnityEngine.BillboardAsset = UnityEngine.BillboardAsset

---@overload fun(imageTexCoords:System.Collections.Generic.List):System.Void
---@return UnityEngine.Vector4[]
function UnityEngine.BillboardAsset:GetImageTexCoords()end
---@overload fun(imageTexCoords:UnityEngine.Vector4[]):System.Void
---@param imageTexCoords System.Collections.Generic.List
---@return System.Void
function UnityEngine.BillboardAsset:SetImageTexCoords(imageTexCoords)end
---@overload fun(vertices:System.Collections.Generic.List):System.Void
---@return UnityEngine.Vector2[]
function UnityEngine.BillboardAsset:GetVertices()end
---@overload fun(vertices:UnityEngine.Vector2[]):System.Void
---@param vertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.BillboardAsset:SetVertices(vertices)end
---@overload fun(indices:System.Collections.Generic.List):System.Void
---@return System.UInt16[]
function UnityEngine.BillboardAsset:GetIndices()end
---@overload fun(indices:System.UInt16[]):System.Void
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.BillboardAsset:SetIndices(indices)end
---@class UnityEngine.BillboardRenderer : UnityEngine.Renderer
---@field public billboard UnityEngine.BillboardAsset @ setter getter
UnityEngine.BillboardRenderer = {}
---@type UnityEngine.BillboardRenderer
CS.UnityEngine.BillboardRenderer = UnityEngine.BillboardRenderer

---@class UnityEngine.Bounds : System.ValueType
---@field public center UnityEngine.Vector3 @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
---@field public extents UnityEngine.Vector3 @ setter getter
---@field public min UnityEngine.Vector3 @ setter getter
---@field public max UnityEngine.Vector3 @ setter getter
UnityEngine.Bounds = {}
---@type UnityEngine.Bounds
CS.UnityEngine.Bounds = UnityEngine.Bounds

---@return System.Int32
function UnityEngine.Bounds:GetHashCode()end
---@overload fun(other:UnityEngine.Bounds):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Bounds:Equals(other)end
---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.Bounds.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.Bounds.op_Inequality(lhs, rhs)end
---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
---@return System.Void
function UnityEngine.Bounds:SetMinMax(min, max)end
---@overload fun(bounds:UnityEngine.Bounds):System.Void
---@param point UnityEngine.Vector3
---@return System.Void
function UnityEngine.Bounds:Encapsulate(point)end
---@overload fun(amount:UnityEngine.Vector3):System.Void
---@param amount System.Single
---@return System.Void
function UnityEngine.Bounds:Expand(amount)end
---@param bounds UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.Bounds:Intersects(bounds)end
---@overload fun(ray:UnityEngine.Ray, distance:System.Single):System.Boolean
---@param ray UnityEngine.Ray
---@return System.Boolean
function UnityEngine.Bounds:IntersectRay(ray)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Bounds:ToString()end
---@param point UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Bounds:Contains(point)end
---@param point UnityEngine.Vector3
---@return System.Single
function UnityEngine.Bounds:SqrDistance(point)end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Bounds:ClosestPoint(point)end
---@class UnityEngine.BoundsInt : System.ValueType
---@field public x System.Int32 @ setter getter
---@field public y System.Int32 @ setter getter
---@field public z System.Int32 @ setter getter
---@field public center UnityEngine.Vector3 @  getter
---@field public min UnityEngine.Vector3Int @ setter getter
---@field public max UnityEngine.Vector3Int @ setter getter
---@field public xMin System.Int32 @ setter getter
---@field public yMin System.Int32 @ setter getter
---@field public zMin System.Int32 @ setter getter
---@field public xMax System.Int32 @ setter getter
---@field public yMax System.Int32 @ setter getter
---@field public zMax System.Int32 @ setter getter
---@field public position UnityEngine.Vector3Int @ setter getter
---@field public size UnityEngine.Vector3Int @ setter getter
---@field public allPositionsWithin UnityEngine.BoundsInt.PositionEnumerator @  getter
UnityEngine.BoundsInt = {}
---@type UnityEngine.BoundsInt
CS.UnityEngine.BoundsInt = UnityEngine.BoundsInt

---@param minPosition UnityEngine.Vector3Int
---@param maxPosition UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.BoundsInt:SetMinMax(minPosition, maxPosition)end
---@param bounds UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.BoundsInt:ClampToBounds(bounds)end
---@param position UnityEngine.Vector3Int
---@return System.Boolean
function UnityEngine.BoundsInt:Contains(position)end
---@return System.String
function UnityEngine.BoundsInt:ToString()end
---@param lhs UnityEngine.BoundsInt
---@param rhs UnityEngine.BoundsInt
---@return System.Boolean
function UnityEngine.BoundsInt.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.BoundsInt
---@param rhs UnityEngine.BoundsInt
---@return System.Boolean
function UnityEngine.BoundsInt.op_Inequality(lhs, rhs)end
---@overload fun(other:UnityEngine.BoundsInt):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.BoundsInt:Equals(other)end
---@return System.Int32
function UnityEngine.BoundsInt:GetHashCode()end
---@class UnityEngine.BoundsInt.PositionEnumerator : System.ValueType
---@field public Current UnityEngine.Vector3Int @  getter
UnityEngine.BoundsInt.PositionEnumerator = {}
---@type UnityEngine.BoundsInt.PositionEnumerator
CS.UnityEngine.BoundsInt.PositionEnumerator = UnityEngine.BoundsInt.PositionEnumerator

---@return UnityEngine.BoundsInt.PositionEnumerator
function UnityEngine.BoundsInt.PositionEnumerator:GetEnumerator()end
---@return System.Boolean
function UnityEngine.BoundsInt.PositionEnumerator:MoveNext()end
---@return System.Void
function UnityEngine.BoundsInt.PositionEnumerator:Reset()end
---@class UnityEngine.CachedAssetBundle : System.ValueType
---@field public name System.String @ setter getter
---@field public hash UnityEngine.Hash128 @ setter getter
UnityEngine.CachedAssetBundle = {}
---@type UnityEngine.CachedAssetBundle
CS.UnityEngine.CachedAssetBundle = UnityEngine.CachedAssetBundle

---@class UnityEngine.Cache : System.ValueType
---@field public valid System.Boolean @  getter
---@field public ready System.Boolean @  getter
---@field public readOnly System.Boolean @  getter
---@field public path System.String @  getter
---@field public index System.Int32 @  getter
---@field public spaceFree System.Int64 @  getter
---@field public maximumAvailableStorageSpace System.Int64 @ setter getter
---@field public spaceOccupied System.Int64 @  getter
---@field public expirationDelay System.Int32 @ setter getter
UnityEngine.Cache = {}
---@type UnityEngine.Cache
CS.UnityEngine.Cache = UnityEngine.Cache

---@param lhs UnityEngine.Cache
---@param rhs UnityEngine.Cache
---@return System.Boolean
function UnityEngine.Cache.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Cache
---@param rhs UnityEngine.Cache
---@return System.Boolean
function UnityEngine.Cache.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.Cache:GetHashCode()end
---@overload fun(other:UnityEngine.Cache):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Cache:Equals(other)end
---@overload fun(expiration:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.Cache:ClearCache()end
---@class UnityEngine.CacheIndex : System.ValueType
---@field public name System.String
---@field public bytesUsed System.Int32
---@field public expires System.Int32
UnityEngine.CacheIndex = {}
---@type UnityEngine.CacheIndex
CS.UnityEngine.CacheIndex = UnityEngine.CacheIndex

---@class UnityEngine.Caching : System.Object
---@field public compressionEnabled System.Boolean @static setter getter
---@field public ready System.Boolean @static  getter
---@field public spaceUsed System.Int32 @static  getter
---@field public spaceOccupied System.Int64 @static  getter
---@field public spaceAvailable System.Int32 @static  getter
---@field public spaceFree System.Int64 @static  getter
---@field public maximumAvailableDiskSpace System.Int64 @static setter getter
---@field public expirationDelay System.Int32 @static setter getter
---@field public cacheCount System.Int32 @static  getter
---@field public defaultCache UnityEngine.Cache @static  getter
---@field public currentCacheForWriting UnityEngine.Cache @static setter getter
UnityEngine.Caching = {}
---@type UnityEngine.Caching
CS.UnityEngine.Caching = UnityEngine.Caching

---@overload fun(expiration:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.Caching.ClearCache()end
---@param assetBundleName System.String
---@param hash UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Caching.ClearCachedVersion(assetBundleName, hash)end
---@param assetBundleName System.String
---@param hash UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Caching.ClearOtherCachedVersions(assetBundleName, hash)end
---@param assetBundleName System.String
---@return System.Boolean
function UnityEngine.Caching.ClearAllCachedVersions(assetBundleName)end
---@param assetBundleName System.String
---@param outCachedVersions System.Collections.Generic.List
---@return System.Void
function UnityEngine.Caching.GetCachedVersions(assetBundleName, outCachedVersions)end
---@overload fun(url:System.String, version:System.Int32):System.Boolean
---@overload fun(url:System.String, hash:UnityEngine.Hash128):System.Boolean
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return System.Boolean
function UnityEngine.Caching.IsVersionCached(cachedBundle)end
---@overload fun(url:System.String, version:System.Int32):System.Boolean
---@overload fun(url:System.String, hash:UnityEngine.Hash128):System.Boolean
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return System.Boolean
function UnityEngine.Caching.MarkAsUsed(cachedBundle)end
---@overload fun(url:System.String, version:System.Int32):System.Void
---@overload fun(url:System.String, hash:UnityEngine.Hash128):System.Void
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return System.Void
function UnityEngine.Caching.SetNoBackupFlag(cachedBundle)end
---@overload fun(url:System.String, version:System.Int32):System.Void
---@overload fun(url:System.String, hash:UnityEngine.Hash128):System.Void
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return System.Void
function UnityEngine.Caching.ResetNoBackupFlag(cachedBundle)end
---@param url System.String
---@return System.Int32
function UnityEngine.Caching.GetVersionFromCache(url)end
---@param cachePath System.String
---@return UnityEngine.Cache
function UnityEngine.Caching.AddCache(cachePath)end
---@param cacheIndex System.Int32
---@return UnityEngine.Cache
function UnityEngine.Caching.GetCacheAt(cacheIndex)end
---@param cachePath System.String
---@return UnityEngine.Cache
function UnityEngine.Caching.GetCacheByPath(cachePath)end
---@param cachePaths System.Collections.Generic.List
---@return System.Void
function UnityEngine.Caching.GetAllCachePaths(cachePaths)end
---@param cache UnityEngine.Cache
---@return System.Boolean
function UnityEngine.Caching.RemoveCache(cache)end
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
---@return System.Void
function UnityEngine.Caching.MoveCacheBefore(src, dst)end
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
---@return System.Void
function UnityEngine.Caching.MoveCacheAfter(src, dst)end
---@return System.Boolean
function UnityEngine.Caching.CleanCache()end
---@class UnityEngine.Camera : UnityEngine.Behaviour
---@field public nearClipPlane System.Single @ setter getter
---@field public farClipPlane System.Single @ setter getter
---@field public fieldOfView System.Single @ setter getter
---@field public renderingPath UnityEngine.RenderingPath @ setter getter
---@field public actualRenderingPath UnityEngine.RenderingPath @  getter
---@field public allowHDR System.Boolean @ setter getter
---@field public allowMSAA System.Boolean @ setter getter
---@field public allowDynamicResolution System.Boolean @ setter getter
---@field public forceIntoRenderTexture System.Boolean @ setter getter
---@field public orthographicSize System.Single @ setter getter
---@field public orthographic System.Boolean @ setter getter
---@field public opaqueSortMode UnityEngine.Rendering.OpaqueSortMode @ setter getter
---@field public transparencySortMode UnityEngine.TransparencySortMode @ setter getter
---@field public transparencySortAxis UnityEngine.Vector3 @ setter getter
---@field public depth System.Single @ setter getter
---@field public aspect System.Single @ setter getter
---@field public velocity UnityEngine.Vector3 @  getter
---@field public cullingMask System.Int32 @ setter getter
---@field public eventMask System.Int32 @ setter getter
---@field public layerCullSpherical System.Boolean @ setter getter
---@field public cameraType UnityEngine.CameraType @ setter getter
---@field public layerCullDistances System.Single[] @ setter getter
---@field public useOcclusionCulling System.Boolean @ setter getter
---@field public cullingMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public backgroundColor UnityEngine.Color @ setter getter
---@field public clearFlags UnityEngine.CameraClearFlags @ setter getter
---@field public depthTextureMode UnityEngine.DepthTextureMode @ setter getter
---@field public clearStencilAfterLightingPass System.Boolean @ setter getter
---@field public usePhysicalProperties System.Boolean @ setter getter
---@field public sensorSize UnityEngine.Vector2 @ setter getter
---@field public lensShift UnityEngine.Vector2 @ setter getter
---@field public focalLength System.Single @ setter getter
---@field public gateFit UnityEngine.Camera.GateFitMode @ setter getter
---@field public rect UnityEngine.Rect @ setter getter
---@field public pixelRect UnityEngine.Rect @ setter getter
---@field public pixelWidth System.Int32 @  getter
---@field public pixelHeight System.Int32 @  getter
---@field public scaledPixelWidth System.Int32 @  getter
---@field public scaledPixelHeight System.Int32 @  getter
---@field public targetTexture UnityEngine.RenderTexture @ setter getter
---@field public activeTexture UnityEngine.RenderTexture @  getter
---@field public targetDisplay System.Int32 @ setter getter
---@field public cameraToWorldMatrix UnityEngine.Matrix4x4 @  getter
---@field public worldToCameraMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public projectionMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public nonJitteredProjectionMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public useJitteredProjectionMatrixForTransparentRendering System.Boolean @ setter getter
---@field public previousViewProjectionMatrix UnityEngine.Matrix4x4 @  getter
---@field public main UnityEngine.Camera @static  getter
---@field public current UnityEngine.Camera @static  getter
---@field public scene UnityEngine.SceneManagement.Scene @ setter getter
---@field public stereoEnabled System.Boolean @  getter
---@field public stereoSeparation System.Single @ setter getter
---@field public stereoConvergence System.Single @ setter getter
---@field public areVRStereoViewMatricesWithinSingleCullTolerance System.Boolean @  getter
---@field public stereoTargetEye UnityEngine.StereoTargetEyeMask @ setter getter
---@field public stereoActiveEye UnityEngine.Camera.MonoOrStereoscopicEye @  getter
---@field public allCamerasCount System.Int32 @static  getter
---@field public allCameras UnityEngine.Camera[] @static  getter
---@field public commandBufferCount System.Int32 @  getter
---@field public isOrthoGraphic System.Boolean @ setter getter
---@field public mainCamera UnityEngine.Camera @static  getter
---@field public near System.Single @ setter getter
---@field public far System.Single @ setter getter
---@field public fov System.Single @ setter getter
---@field public hdr System.Boolean @ setter getter
---@field public stereoMirrorMode System.Boolean @ setter getter
---@field public onPreCull UnityEngine.Camera.CameraCallback
---@field public onPreRender UnityEngine.Camera.CameraCallback
---@field public onPostRender UnityEngine.Camera.CameraCallback
UnityEngine.Camera = {}
---@type UnityEngine.Camera
CS.UnityEngine.Camera = UnityEngine.Camera

---@return System.Void
function UnityEngine.Camera:Reset()end
---@return System.Void
function UnityEngine.Camera:ResetTransparencySortSettings()end
---@return System.Void
function UnityEngine.Camera:ResetAspect()end
---@return System.Void
function UnityEngine.Camera:ResetCullingMatrix()end
---@param shader UnityEngine.Shader
---@param replacementTag System.String
---@return System.Void
function UnityEngine.Camera:SetReplacementShader(shader, replacementTag)end
---@return System.Void
function UnityEngine.Camera:ResetReplacementShader()end
---@overload fun(colorBuffer:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer):System.Void
---@param colorBuffer UnityEngine.RenderBuffer
---@param depthBuffer UnityEngine.RenderBuffer
---@return System.Void
function UnityEngine.Camera:SetTargetBuffers(colorBuffer, depthBuffer)end
---@return System.Void
function UnityEngine.Camera:ResetWorldToCameraMatrix()end
---@return System.Void
function UnityEngine.Camera:ResetProjectionMatrix()end
---@param clipPlane UnityEngine.Vector4
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:CalculateObliqueMatrix(clipPlane)end
---@overload fun(position:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:WorldToScreenPoint(position)end
---@overload fun(position:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:WorldToViewportPoint(position)end
---@overload fun(position:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ViewportToWorldPoint(position)end
---@overload fun(position:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ScreenToWorldPoint(position)end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ScreenToViewportPoint(position)end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ViewportToScreenPoint(position)end
---@overload fun(pos:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@return UnityEngine.Ray
function UnityEngine.Camera:ViewportPointToRay(pos)end
---@overload fun(pos:UnityEngine.Vector3, eye:UnityEngine.Camera.MonoOrStereoscopicEye):UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@return UnityEngine.Ray
function UnityEngine.Camera:ScreenPointToRay(pos)end
---@param viewport UnityEngine.Rect
---@param z System.Single
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@param outCorners UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.Camera:CalculateFrustumCorners(viewport, z, eye, outCorners)end
---@overload fun(output:UnityEngine.Matrix4x4, focalLength:System.Single, sensorSize:UnityEngine.Vector2, lensShift:UnityEngine.Vector2, nearClip:System.Single, farClip:System.Single):System.Void
---@param output UnityEngine.Matrix4x4
---@param focalLength System.Single
---@param sensorSize UnityEngine.Vector2
---@param lensShift UnityEngine.Vector2
---@param nearClip System.Single
---@param farClip System.Single
---@param gateFitParameters UnityEngine.Camera.GateFitParameters
---@return System.Void
function UnityEngine.Camera.CalculateProjectionMatrixFromPhysicalProperties(output, focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters)end
---@param focalLength System.Single
---@param sensorSize System.Single
---@return System.Single
function UnityEngine.Camera.FocalLengthToFOV(focalLength, sensorSize)end
---@param fov System.Single
---@param sensorSize System.Single
---@return System.Single
function UnityEngine.Camera.FOVToFocalLength(fov, sensorSize)end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoNonJitteredProjectionMatrix(eye)end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoViewMatrix(eye)end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return System.Void
function UnityEngine.Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye)end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoProjectionMatrix(eye)end
---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Camera:SetStereoProjectionMatrix(eye, matrix)end
---@return System.Void
function UnityEngine.Camera:ResetStereoProjectionMatrices()end
---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Camera:SetStereoViewMatrix(eye, matrix)end
---@return System.Void
function UnityEngine.Camera:ResetStereoViewMatrices()end
---@param cameras UnityEngine.Camera[]
---@return System.Int32
function UnityEngine.Camera.GetAllCameras(cameras)end
---@overload fun(cubemap:UnityEngine.RenderTexture):System.Boolean
---@overload fun(cubemap:UnityEngine.Cubemap, faceMask:System.Int32):System.Boolean
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:System.Int32):System.Boolean
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:System.Int32, stereoEye:UnityEngine.Camera.MonoOrStereoscopicEye):System.Boolean
---@param cubemap UnityEngine.Cubemap
---@return System.Boolean
function UnityEngine.Camera:RenderToCubemap(cubemap)end
---@return System.Void
function UnityEngine.Camera:Render()end
---@param shader UnityEngine.Shader
---@param replacementTag System.String
---@return System.Void
function UnityEngine.Camera:RenderWithShader(shader, replacementTag)end
---@return System.Void
function UnityEngine.Camera:RenderDontRestore()end
---@param cur UnityEngine.Camera
---@return System.Void
function UnityEngine.Camera.SetupCurrent(cur)end
---@param other UnityEngine.Camera
---@return System.Void
function UnityEngine.Camera:CopyFrom(other)end
---@param evt UnityEngine.Rendering.CameraEvent
---@return System.Void
function UnityEngine.Camera:RemoveCommandBuffers(evt)end
---@return System.Void
function UnityEngine.Camera:RemoveAllCommandBuffers()end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Camera:AddCommandBuffer(evt, buffer)end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
---@return System.Void
function UnityEngine.Camera:AddCommandBufferAsync(evt, buffer, queueType)end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Camera:RemoveCommandBuffer(evt, buffer)end
---@param evt UnityEngine.Rendering.CameraEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function UnityEngine.Camera:GetCommandBuffers(evt)end
---@return System.Single
function UnityEngine.Camera:GetScreenWidth()end
---@return System.Single
function UnityEngine.Camera:GetScreenHeight()end
---@return System.Void
function UnityEngine.Camera:DoClear()end
---@return System.Void
function UnityEngine.Camera:ResetFieldOfView()end
---@param leftMatrix UnityEngine.Matrix4x4
---@param rightMatrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Camera:SetStereoViewMatrices(leftMatrix, rightMatrix)end
---@param leftMatrix UnityEngine.Matrix4x4
---@param rightMatrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Camera:SetStereoProjectionMatrices(leftMatrix, rightMatrix)end
---@return UnityEngine.Matrix4x4[]
function UnityEngine.Camera:GetStereoViewMatrices()end
---@return UnityEngine.Matrix4x4[]
function UnityEngine.Camera:GetStereoProjectionMatrices()end
---@class UnityEngine.Camera.GateFitMode : System.Enum
UnityEngine.Camera.GateFitMode = {}
---@type UnityEngine.Camera.GateFitMode
CS.UnityEngine.Camera.GateFitMode = UnityEngine.Camera.GateFitMode

---@return System.Int32 value:0
UnityEngine.Camera.GateFitMode.None = 0
---@return System.Int32 value:1
UnityEngine.Camera.GateFitMode.Vertical = 1
---@return System.Int32 value:2
UnityEngine.Camera.GateFitMode.Horizontal = 2
---@return System.Int32 value:3
UnityEngine.Camera.GateFitMode.Fill = 3
---@return System.Int32 value:4
UnityEngine.Camera.GateFitMode.Overscan = 4

---@class UnityEngine.Camera.GateFitParameters : System.ValueType
---@field public mode UnityEngine.Camera.GateFitMode @ setter getter
---@field public aspect System.Single @ setter getter
UnityEngine.Camera.GateFitParameters = {}
---@type UnityEngine.Camera.GateFitParameters
CS.UnityEngine.Camera.GateFitParameters = UnityEngine.Camera.GateFitParameters

---@class UnityEngine.Camera.StereoscopicEye : System.Enum
UnityEngine.Camera.StereoscopicEye = {}
---@type UnityEngine.Camera.StereoscopicEye
CS.UnityEngine.Camera.StereoscopicEye = UnityEngine.Camera.StereoscopicEye

---@return System.Int32 value:0
UnityEngine.Camera.StereoscopicEye.Left = 0
---@return System.Int32 value:1
UnityEngine.Camera.StereoscopicEye.Right = 1

---@class UnityEngine.Camera.MonoOrStereoscopicEye : System.Enum
UnityEngine.Camera.MonoOrStereoscopicEye = {}
---@type UnityEngine.Camera.MonoOrStereoscopicEye
CS.UnityEngine.Camera.MonoOrStereoscopicEye = UnityEngine.Camera.MonoOrStereoscopicEye

---@return System.Int32 value:0
UnityEngine.Camera.MonoOrStereoscopicEye.Left = 0
---@return System.Int32 value:1
UnityEngine.Camera.MonoOrStereoscopicEye.Right = 1
---@return System.Int32 value:2
UnityEngine.Camera.MonoOrStereoscopicEye.Mono = 2

---@class UnityEngine.Color : System.ValueType
---@field public red UnityEngine.Color @static  getter
---@field public green UnityEngine.Color @static  getter
---@field public blue UnityEngine.Color @static  getter
---@field public white UnityEngine.Color @static  getter
---@field public black UnityEngine.Color @static  getter
---@field public yellow UnityEngine.Color @static  getter
---@field public cyan UnityEngine.Color @static  getter
---@field public magenta UnityEngine.Color @static  getter
---@field public gray UnityEngine.Color @static  getter
---@field public grey UnityEngine.Color @static  getter
---@field public clear UnityEngine.Color @static  getter
---@field public grayscale System.Single @  getter
---@field public linear UnityEngine.Color @  getter
---@field public gamma UnityEngine.Color @  getter
---@field public maxColorComponent System.Single @  getter
---@field public Item System.Single @ setter getter
---@field public r System.Single
---@field public g System.Single
---@field public b System.Single
---@field public a System.Single
UnityEngine.Color = {}
---@type UnityEngine.Color
CS.UnityEngine.Color = UnityEngine.Color

---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Color:ToString()end
---@return System.Int32
function UnityEngine.Color:GetHashCode()end
---@overload fun(other:UnityEngine.Color):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Color:Equals(other)end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Color.op_Addition(a, b)end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Color.op_Subtraction(a, b)end
---@overload fun(b:System.Single, a:UnityEngine.Color):UnityEngine.Color
---@overload fun(a:UnityEngine.Color, b:UnityEngine.Color):UnityEngine.Color
---@param a UnityEngine.Color
---@param b System.Single
---@return UnityEngine.Color
function UnityEngine.Color.op_Multiply(a, b)end
---@param a UnityEngine.Color
---@param b System.Single
---@return UnityEngine.Color
function UnityEngine.Color.op_Division(a, b)end
---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return System.Boolean
function UnityEngine.Color.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return System.Boolean
function UnityEngine.Color.op_Inequality(lhs, rhs)end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t System.Single
---@return UnityEngine.Color
function UnityEngine.Color.Lerp(a, b, t)end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t System.Single
---@return UnityEngine.Color
function UnityEngine.Color.LerpUnclamped(a, b, t)end
---@overload fun(v:UnityEngine.Vector4):UnityEngine.Color
---@param c UnityEngine.Color
---@return UnityEngine.Vector4
function UnityEngine.Color.op_Implicit(c)end
---@param rgbColor UnityEngine.Color
---@param H System.Single
---@param S System.Single
---@param V System.Single
---@return System.Void
function UnityEngine.Color.RGBToHSV(rgbColor, H, S, V)end
---@overload fun(H:System.Single, S:System.Single, V:System.Single, hdr:System.Boolean):UnityEngine.Color
---@param H System.Single
---@param S System.Single
---@param V System.Single
---@return UnityEngine.Color
function UnityEngine.Color.HSVToRGB(H, S, V)end
---@class UnityEngine.Color32 : System.ValueType
---@field public r System.Byte
---@field public g System.Byte
---@field public b System.Byte
---@field public a System.Byte
UnityEngine.Color32 = {}
---@type UnityEngine.Color32
CS.UnityEngine.Color32 = UnityEngine.Color32

---@overload fun(c:UnityEngine.Color32):UnityEngine.Color
---@param c UnityEngine.Color
---@return UnityEngine.Color32
function UnityEngine.Color32.op_Implicit(c)end
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t System.Single
---@return UnityEngine.Color32
function UnityEngine.Color32.Lerp(a, b, t)end
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t System.Single
---@return UnityEngine.Color32
function UnityEngine.Color32.LerpUnclamped(a, b, t)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Color32:ToString()end
---@class UnityEngine.ColorUtility : System.Object
UnityEngine.ColorUtility = {}
---@type UnityEngine.ColorUtility
CS.UnityEngine.ColorUtility = UnityEngine.ColorUtility

---@param htmlString System.String
---@param color UnityEngine.Color
---@return System.Boolean
function UnityEngine.ColorUtility.TryParseHtmlString(htmlString, color)end
---@param color UnityEngine.Color
---@return System.String
function UnityEngine.ColorUtility.ToHtmlStringRGB(color)end
---@param color UnityEngine.Color
---@return System.String
function UnityEngine.ColorUtility.ToHtmlStringRGBA(color)end
---@class UnityEngine.Component : UnityEngine.Object
---@field public transform UnityEngine.Transform @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public tag System.String @ setter getter
---@field public rigidbody UnityEngine.Component @  getter
---@field public rigidbody2D UnityEngine.Component @  getter
---@field public camera UnityEngine.Component @  getter
---@field public light UnityEngine.Component @  getter
---@field public animation UnityEngine.Component @  getter
---@field public constantForce UnityEngine.Component @  getter
---@field public renderer UnityEngine.Component @  getter
---@field public audio UnityEngine.Component @  getter
---@field public guiText UnityEngine.Component @  getter
---@field public networkView UnityEngine.Component @  getter
---@field public guiElement UnityEngine.Component @  getter
---@field public guiTexture UnityEngine.Component @  getter
---@field public collider UnityEngine.Component @  getter
---@field public collider2D UnityEngine.Component @  getter
---@field public hingeJoint UnityEngine.Component @  getter
---@field public particleSystem UnityEngine.Component @  getter
UnityEngine.Component = {}
---@type UnityEngine.Component
CS.UnityEngine.Component = UnityEngine.Component

---@overload fun(type:System.Type):UnityEngine.Component
---@overload fun(type:System.String):UnityEngine.Component
---@return any
function UnityEngine.Component:GetComponent()end
---@overload fun(includeInactive:System.Boolean):any
---@overload fun(t:System.Type):UnityEngine.Component
---@overload fun(t:System.Type, includeInactive:System.Boolean):UnityEngine.Component
---@return any
function UnityEngine.Component:GetComponentInChildren()end
---@overload fun(includeInactive:System.Boolean):T[]
---@overload fun(t:System.Type):UnityEngine.Component[]
---@overload fun(results:any):System.Void
---@overload fun(t:System.Type, includeInactive:System.Boolean):UnityEngine.Component[]
---@overload fun(includeInactive:System.Boolean, result:any):System.Void
---@return T[]
function UnityEngine.Component:GetComponentsInChildren()end
---@overload fun(t:System.Type):UnityEngine.Component
---@return any
function UnityEngine.Component:GetComponentInParent()end
---@overload fun(includeInactive:System.Boolean):T[]
---@overload fun(t:System.Type):UnityEngine.Component[]
---@overload fun(t:System.Type, includeInactive:System.Boolean):UnityEngine.Component[]
---@overload fun(includeInactive:System.Boolean, results:any):System.Void
---@return T[]
function UnityEngine.Component:GetComponentsInParent()end
---@overload fun(type:System.Type):UnityEngine.Component[]
---@overload fun(results:any):System.Void
---@overload fun(type:System.Type, results:System.Collections.Generic.List):System.Void
---@return T[]
function UnityEngine.Component:GetComponents()end
---@param tag System.String
---@return System.Boolean
function UnityEngine.Component:CompareTag(tag)end
---@overload fun(methodName:System.String, value:System.Object):System.Void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.Component:SendMessageUpwards(methodName)end
---@overload fun(methodName:System.String, value:System.Object):System.Void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.Component:SendMessage(methodName)end
---@overload fun(methodName:System.String, parameter:System.Object):System.Void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, parameter:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.Component:BroadcastMessage(methodName)end
---@class UnityEngine.ComputeBuffer : System.Object
---@field public count System.Int32 @  getter
---@field public stride System.Int32 @  getter
UnityEngine.ComputeBuffer = {}
---@type UnityEngine.ComputeBuffer
CS.UnityEngine.ComputeBuffer = UnityEngine.ComputeBuffer

---@return System.Void
function UnityEngine.ComputeBuffer:Dispose()end
---@return System.Void
function UnityEngine.ComputeBuffer:Release()end
---@return System.Boolean
function UnityEngine.ComputeBuffer:IsValid()end
---@overload fun(data:any):System.Void
---@overload fun(data:any):System.Void
---@overload fun(data:System.Array, managedBufferStartIndex:System.Int32, computeBufferStartIndex:System.Int32, count:System.Int32):System.Void
---@overload fun(data:any, managedBufferStartIndex:System.Int32, computeBufferStartIndex:System.Int32, count:System.Int32):System.Void
---@overload fun(data:any, nativeBufferStartIndex:System.Int32, computeBufferStartIndex:System.Int32, count:System.Int32):System.Void
---@param data System.Array
---@return System.Void
function UnityEngine.ComputeBuffer:SetData(data)end
---@overload fun(data:System.Array, managedBufferStartIndex:System.Int32, computeBufferStartIndex:System.Int32, count:System.Int32):System.Void
---@param data System.Array
---@return System.Void
function UnityEngine.ComputeBuffer:GetData(data)end
---@param counterValue System.UInt32
---@return System.Void
function UnityEngine.ComputeBuffer:SetCounterValue(counterValue)end
---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes System.Int32
---@return System.Void
function UnityEngine.ComputeBuffer.CopyCount(src, dst, dstOffsetBytes)end
---@return System.IntPtr
function UnityEngine.ComputeBuffer:GetNativeBufferPtr()end
---@class UnityEngine.Coroutine : UnityEngine.YieldInstruction
UnityEngine.Coroutine = {}
---@type UnityEngine.Coroutine
CS.UnityEngine.Coroutine = UnityEngine.Coroutine

---@class UnityEngine.CrashReport : System.Object
---@field public reports UnityEngine.CrashReport[] @static  getter
---@field public lastReport UnityEngine.CrashReport @static  getter
---@field public time System.DateTime
---@field public text System.String
UnityEngine.CrashReport = {}
---@type UnityEngine.CrashReport
CS.UnityEngine.CrashReport = UnityEngine.CrashReport

---@return System.Void
function UnityEngine.CrashReport.RemoveAll()end
---@return System.Void
function UnityEngine.CrashReport:Remove()end
---@class UnityEngine.BoundingSphere : System.ValueType
---@field public position UnityEngine.Vector3
---@field public radius System.Single
UnityEngine.BoundingSphere = {}
---@type UnityEngine.BoundingSphere
CS.UnityEngine.BoundingSphere = UnityEngine.BoundingSphere

---@class UnityEngine.CullingGroupEvent : System.ValueType
---@field public index System.Int32 @  getter
---@field public isVisible System.Boolean @  getter
---@field public wasVisible System.Boolean @  getter
---@field public hasBecomeVisible System.Boolean @  getter
---@field public hasBecomeInvisible System.Boolean @  getter
---@field public currentDistance System.Int32 @  getter
---@field public previousDistance System.Int32 @  getter
UnityEngine.CullingGroupEvent = {}
---@type UnityEngine.CullingGroupEvent
CS.UnityEngine.CullingGroupEvent = UnityEngine.CullingGroupEvent

---@class UnityEngine.CullingGroup : System.Object
---@field public onStateChanged UnityEngine.CullingGroup.StateChanged @ setter getter
---@field public enabled System.Boolean @ setter getter
---@field public targetCamera UnityEngine.Camera @ setter getter
UnityEngine.CullingGroup = {}
---@type UnityEngine.CullingGroup
CS.UnityEngine.CullingGroup = UnityEngine.CullingGroup

---@return System.Void
function UnityEngine.CullingGroup:Dispose()end
---@param array UnityEngine.BoundingSphere[]
---@return System.Void
function UnityEngine.CullingGroup:SetBoundingSpheres(array)end
---@param count System.Int32
---@return System.Void
function UnityEngine.CullingGroup:SetBoundingSphereCount(count)end
---@param index System.Int32
---@return System.Void
function UnityEngine.CullingGroup:EraseSwapBack(index)end
---@param index System.Int32
---@param myArray T[]
---@param size System.Int32
---@return System.Void
function UnityEngine.CullingGroup.EraseSwapBack(index, myArray, size)end
---@overload fun(distanceIndex:System.Int32, result:System.Int32[], firstIndex:System.Int32):System.Int32
---@overload fun(visible:System.Boolean, distanceIndex:System.Int32, result:System.Int32[], firstIndex:System.Int32):System.Int32
---@param visible System.Boolean
---@param result System.Int32[]
---@param firstIndex System.Int32
---@return System.Int32
function UnityEngine.CullingGroup:QueryIndices(visible, result, firstIndex)end
---@param index System.Int32
---@return System.Boolean
function UnityEngine.CullingGroup:IsVisible(index)end
---@param index System.Int32
---@return System.Int32
function UnityEngine.CullingGroup:GetDistance(index)end
---@param distances System.Single[]
---@return System.Void
function UnityEngine.CullingGroup:SetBoundingDistances(distances)end
---@overload fun(transform:UnityEngine.Transform):System.Void
---@param point UnityEngine.Vector3
---@return System.Void
function UnityEngine.CullingGroup:SetDistanceReferencePoint(point)end
---@class UnityEngine.CursorMode : System.Enum
UnityEngine.CursorMode = {}
---@type UnityEngine.CursorMode
CS.UnityEngine.CursorMode = UnityEngine.CursorMode

---@return System.Int32 value:0
UnityEngine.CursorMode.Auto = 0
---@return System.Int32 value:1
UnityEngine.CursorMode.ForceSoftware = 1

---@class UnityEngine.CursorLockMode : System.Enum
UnityEngine.CursorLockMode = {}
---@type UnityEngine.CursorLockMode
CS.UnityEngine.CursorLockMode = UnityEngine.CursorLockMode

---@return System.Int32 value:0
UnityEngine.CursorLockMode.None = 0
---@return System.Int32 value:1
UnityEngine.CursorLockMode.Locked = 1
---@return System.Int32 value:2
UnityEngine.CursorLockMode.Confined = 2

---@class UnityEngine.Cursor : System.Object
---@field public visible System.Boolean @static setter getter
---@field public lockState UnityEngine.CursorLockMode @static setter getter
UnityEngine.Cursor = {}
---@type UnityEngine.Cursor
CS.UnityEngine.Cursor = UnityEngine.Cursor

---@param texture UnityEngine.Texture2D
---@param hotspot UnityEngine.Vector2
---@param cursorMode UnityEngine.CursorMode
---@return System.Void
function UnityEngine.Cursor.SetCursor(texture, hotspot, cursorMode)end
---@class UnityEngine.CustomYieldInstruction : System.Object
---@field public keepWaiting System.Boolean @  getter
---@field public Current System.Object @  getter
UnityEngine.CustomYieldInstruction = {}
---@type UnityEngine.CustomYieldInstruction
CS.UnityEngine.CustomYieldInstruction = UnityEngine.CustomYieldInstruction

---@return System.Boolean
function UnityEngine.CustomYieldInstruction:MoveNext()end
---@return System.Void
function UnityEngine.CustomYieldInstruction:Reset()end
---@class UnityEngine.Debug : System.Object
---@field public unityLogger UnityEngine.ILogger @static  getter
---@field public developerConsoleVisible System.Boolean @static setter getter
---@field public isDebugBuild System.Boolean @static  getter
---@field public logger UnityEngine.ILogger @static  getter
UnityEngine.Debug = {}
---@type UnityEngine.Debug
CS.UnityEngine.Debug = UnityEngine.Debug

---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, color:UnityEngine.Color):System.Void
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, color:UnityEngine.Color, duration:System.Single):System.Void
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, color:UnityEngine.Color, duration:System.Single, depthTest:System.Boolean):System.Void
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@return System.Void
function UnityEngine.Debug.DrawLine(start, _end)end
---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3, color:UnityEngine.Color):System.Void
---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3, color:UnityEngine.Color, duration:System.Single):System.Void
---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3, color:UnityEngine.Color, duration:System.Single, depthTest:System.Boolean):System.Void
---@param start UnityEngine.Vector3
---@param dir UnityEngine.Vector3
---@return System.Void
function UnityEngine.Debug.DrawRay(start, dir)end
---@return System.Void
function UnityEngine.Debug.Break()end
---@return System.Void
function UnityEngine.Debug.DebugBreak()end
---@overload fun(message:System.Object, context:UnityEngine.Object):System.Void
---@param message System.Object
---@return System.Void
function UnityEngine.Debug.Log(message)end
---@overload fun(context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Debug.LogFormat(format, args)end
---@overload fun(message:System.Object, context:UnityEngine.Object):System.Void
---@param message System.Object
---@return System.Void
function UnityEngine.Debug.LogError(message)end
---@overload fun(context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Debug.LogErrorFormat(format, args)end
---@return System.Void
function UnityEngine.Debug.ClearDeveloperConsole()end
---@overload fun(exception:System.Exception, context:UnityEngine.Object):System.Void
---@param exception System.Exception
---@return System.Void
function UnityEngine.Debug.LogException(exception)end
---@overload fun(message:System.Object, context:UnityEngine.Object):System.Void
---@param message System.Object
---@return System.Void
function UnityEngine.Debug.LogWarning(message)end
---@overload fun(context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Debug.LogWarningFormat(format, args)end
---@overload fun(condition:System.Boolean, context:UnityEngine.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String):System.Void
---@overload fun(condition:System.Boolean, message:System.Object, context:UnityEngine.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String, context:UnityEngine.Object):System.Void
---@overload fun(condition:System.Boolean, format:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function UnityEngine.Debug.Assert(condition)end
---@overload fun(condition:System.Boolean, context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Debug.AssertFormat(condition, format, args)end
---@overload fun(message:System.Object, context:UnityEngine.Object):System.Void
---@param message System.Object
---@return System.Void
function UnityEngine.Debug.LogAssertion(message)end
---@overload fun(context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Debug.LogAssertionFormat(format, args)end
---@class UnityEngine.Display : System.Object
---@field public renderingWidth System.Int32 @  getter
---@field public renderingHeight System.Int32 @  getter
---@field public systemWidth System.Int32 @  getter
---@field public systemHeight System.Int32 @  getter
---@field public colorBuffer UnityEngine.RenderBuffer @  getter
---@field public depthBuffer UnityEngine.RenderBuffer @  getter
---@field public active System.Boolean @  getter
---@field public main UnityEngine.Display @static  getter
---@field public displays UnityEngine.Display[]
UnityEngine.Display = {}
---@type UnityEngine.Display
CS.UnityEngine.Display = UnityEngine.Display

---@overload fun(width:System.Int32, height:System.Int32, refreshRate:System.Int32):System.Void
---@return System.Void
function UnityEngine.Display:Activate()end
---@param width System.Int32
---@param height System.Int32
---@param x System.Int32
---@param y System.Int32
---@return System.Void
function UnityEngine.Display:SetParams(width, height, x, y)end
---@param w System.Int32
---@param h System.Int32
---@return System.Void
function UnityEngine.Display:SetRenderingResolution(w, h)end
---@return System.Boolean
function UnityEngine.Display.MultiDisplayLicense()end
---@param inputMouseCoordinates UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Display.RelativeMouseAt(inputMouseCoordinates)end
---@param value UnityEngine.Display.DisplaysUpdatedDelegate
---@return System.Void
function UnityEngine.Display.add_onDisplaysUpdated(value)end
---@param value UnityEngine.Display.DisplaysUpdatedDelegate
---@return System.Void
function UnityEngine.Display.remove_onDisplaysUpdated(value)end
---@class UnityEngine.EventProvider : System.Object
UnityEngine.EventProvider = {}
---@type UnityEngine.EventProvider
CS.UnityEngine.EventProvider = UnityEngine.EventProvider

---@param value System.Int32
---@param text System.String
---@return System.Void
function UnityEngine.EventProvider.WriteCustomEvent(value, text)end
---@class UnityEngine.ExcludeFromObjectFactoryAttribute : System.Attribute
UnityEngine.ExcludeFromObjectFactoryAttribute = {}
---@type UnityEngine.ExcludeFromObjectFactoryAttribute
CS.UnityEngine.ExcludeFromObjectFactoryAttribute = UnityEngine.ExcludeFromObjectFactoryAttribute

---@class UnityEngine.ExposedPropertyResolver : System.ValueType
UnityEngine.ExposedPropertyResolver = {}
---@type UnityEngine.ExposedPropertyResolver
CS.UnityEngine.ExposedPropertyResolver = UnityEngine.ExposedPropertyResolver

---@class UnityEngine.ExposedReference : System.ValueType
---@field public exposedName UnityEngine.PropertyName
---@field public defaultValue UnityEngine.Object
UnityEngine.ExposedReference = {}
---@type UnityEngine.ExposedReference
CS.UnityEngine.ExposedReference = UnityEngine.ExposedReference

---@param resolver UnityEngine.IExposedPropertyTable
---@return any
function UnityEngine.ExposedReference:Resolve(resolver)end
---@class UnityEngine.FlareLayer : UnityEngine.Behaviour
UnityEngine.FlareLayer = {}
---@type UnityEngine.FlareLayer
CS.UnityEngine.FlareLayer = UnityEngine.FlareLayer

---@class UnityEngine.GameObject : UnityEngine.Object
---@field public transform UnityEngine.Transform @  getter
---@field public layer System.Int32 @ setter getter
---@field public active System.Boolean @ setter getter
---@field public activeSelf System.Boolean @  getter
---@field public activeInHierarchy System.Boolean @  getter
---@field public isStatic System.Boolean @ setter getter
---@field public tag System.String @ setter getter
---@field public scene UnityEngine.SceneManagement.Scene @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public rigidbody UnityEngine.Component @  getter
---@field public rigidbody2D UnityEngine.Component @  getter
---@field public camera UnityEngine.Component @  getter
---@field public light UnityEngine.Component @  getter
---@field public animation UnityEngine.Component @  getter
---@field public constantForce UnityEngine.Component @  getter
---@field public renderer UnityEngine.Component @  getter
---@field public audio UnityEngine.Component @  getter
---@field public guiText UnityEngine.Component @  getter
---@field public networkView UnityEngine.Component @  getter
---@field public guiElement UnityEngine.Component @  getter
---@field public guiTexture UnityEngine.Component @  getter
---@field public collider UnityEngine.Component @  getter
---@field public collider2D UnityEngine.Component @  getter
---@field public hingeJoint UnityEngine.Component @  getter
---@field public particleSystem UnityEngine.Component @  getter
UnityEngine.GameObject = {}
---@type UnityEngine.GameObject
CS.UnityEngine.GameObject = UnityEngine.GameObject

---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function UnityEngine.GameObject.CreatePrimitive(type)end
---@overload fun(type:System.Type):UnityEngine.Component
---@overload fun(type:System.String):UnityEngine.Component
---@return any
function UnityEngine.GameObject:GetComponent()end
---@overload fun(includeInactive:System.Boolean):any
---@overload fun(type:System.Type):UnityEngine.Component
---@overload fun(type:System.Type, includeInactive:System.Boolean):UnityEngine.Component
---@return any
function UnityEngine.GameObject:GetComponentInChildren()end
---@overload fun(type:System.Type):UnityEngine.Component
---@return any
function UnityEngine.GameObject:GetComponentInParent()end
---@overload fun(type:System.Type):UnityEngine.Component[]
---@overload fun(results:any):System.Void
---@overload fun(type:System.Type, results:System.Collections.Generic.List):System.Void
---@return T[]
function UnityEngine.GameObject:GetComponents()end
---@overload fun(includeInactive:System.Boolean):T[]
---@overload fun(type:System.Type):UnityEngine.Component[]
---@overload fun(results:any):System.Void
---@overload fun(type:System.Type, includeInactive:System.Boolean):UnityEngine.Component[]
---@overload fun(includeInactive:System.Boolean, results:any):System.Void
---@return T[]
function UnityEngine.GameObject:GetComponentsInChildren()end
---@overload fun(includeInactive:System.Boolean):T[]
---@overload fun(type:System.Type):UnityEngine.Component[]
---@overload fun(type:System.Type, includeInactive:System.Boolean):UnityEngine.Component[]
---@overload fun(includeInactive:System.Boolean, results:any):System.Void
---@return T[]
function UnityEngine.GameObject:GetComponentsInParent()end
---@param tag System.String
---@return UnityEngine.GameObject
function UnityEngine.GameObject.FindWithTag(tag)end
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, value:System.Object):System.Void
---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.GameObject:SendMessageUpwards(methodName)end
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, value:System.Object):System.Void
---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.GameObject:SendMessage(methodName)end
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):System.Void
---@overload fun(methodName:System.String, parameter:System.Object):System.Void
---@overload fun(methodName:System.String, parameter:System.Object, options:UnityEngine.SendMessageOptions):System.Void
---@param methodName System.String
---@return System.Void
function UnityEngine.GameObject:BroadcastMessage(methodName)end
---@overload fun(componentType:System.Type):UnityEngine.Component
---@overload fun(className:System.String):UnityEngine.Component
---@return any
function UnityEngine.GameObject:AddComponent()end
---@param value System.Boolean
---@return System.Void
function UnityEngine.GameObject:SetActive(value)end
---@param state System.Boolean
---@return System.Void
function UnityEngine.GameObject:SetActiveRecursively(state)end
---@param tag System.String
---@return System.Boolean
function UnityEngine.GameObject:CompareTag(tag)end
---@param tag System.String
---@return UnityEngine.GameObject
function UnityEngine.GameObject.FindGameObjectWithTag(tag)end
---@param tag System.String
---@return UnityEngine.GameObject[]
function UnityEngine.GameObject.FindGameObjectsWithTag(tag)end
---@param name System.String
---@return UnityEngine.GameObject
function UnityEngine.GameObject.Find(name)end
---@param clip UnityEngine.Object
---@param time System.Single
---@return System.Void
function UnityEngine.GameObject:SampleAnimation(clip, time)end
---@param animation UnityEngine.Object
---@return System.Void
function UnityEngine.GameObject:PlayAnimation(animation)end
---@return System.Void
function UnityEngine.GameObject:StopAnimation()end
---@class UnityEngine.GeometryUtility : System.Object
UnityEngine.GeometryUtility = {}
---@type UnityEngine.GeometryUtility
CS.UnityEngine.GeometryUtility = UnityEngine.GeometryUtility

---@overload fun(worldToProjectionMatrix:UnityEngine.Matrix4x4):UnityEngine.Plane[]
---@overload fun(camera:UnityEngine.Camera, planes:UnityEngine.Plane[]):System.Void
---@overload fun(worldToProjectionMatrix:UnityEngine.Matrix4x4, planes:UnityEngine.Plane[]):System.Void
---@param camera UnityEngine.Camera
---@return UnityEngine.Plane[]
function UnityEngine.GeometryUtility.CalculateFrustumPlanes(camera)end
---@param positions UnityEngine.Vector3[]
---@param transform UnityEngine.Matrix4x4
---@return UnityEngine.Bounds
function UnityEngine.GeometryUtility.CalculateBounds(positions, transform)end
---@param vertices UnityEngine.Vector3[]
---@param plane UnityEngine.Plane
---@return System.Boolean
function UnityEngine.GeometryUtility.TryCreatePlaneFromPolygon(vertices, plane)end
---@param planes UnityEngine.Plane[]
---@param bounds UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.GeometryUtility.TestPlanesAABB(planes, bounds)end
---@class UnityEngine.Gizmos : System.Object
---@field public color UnityEngine.Color @static setter getter
---@field public matrix UnityEngine.Matrix4x4 @static setter getter
UnityEngine.Gizmos = {}
---@type UnityEngine.Gizmos
CS.UnityEngine.Gizmos = UnityEngine.Gizmos

---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return System.Void
function UnityEngine.Gizmos.DrawLine(from, to)end
---@param center UnityEngine.Vector3
---@param radius System.Single
---@return System.Void
function UnityEngine.Gizmos.DrawWireSphere(center, radius)end
---@param center UnityEngine.Vector3
---@param radius System.Single
---@return System.Void
function UnityEngine.Gizmos.DrawSphere(center, radius)end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@return System.Void
function UnityEngine.Gizmos.DrawWireCube(center, size)end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@return System.Void
function UnityEngine.Gizmos.DrawCube(center, size)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3):System.Void
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.Gizmos.DrawMesh(mesh)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3):System.Void
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.Gizmos.DrawWireMesh(mesh)end
---@overload fun(center:UnityEngine.Vector3, name:System.String, allowScaling:System.Boolean):System.Void
---@param center UnityEngine.Vector3
---@param name System.String
---@return System.Void
function UnityEngine.Gizmos.DrawIcon(center, name)end
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, mat:UnityEngine.Material):System.Void
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@return System.Void
function UnityEngine.Gizmos.DrawGUITexture(screenRect, texture)end
---@param center UnityEngine.Vector3
---@param fov System.Single
---@param maxRange System.Single
---@param minRange System.Single
---@param aspect System.Single
---@return System.Void
function UnityEngine.Gizmos.DrawFrustum(center, fov, maxRange, minRange, aspect)end
---@overload fun(from:UnityEngine.Vector3, direction:UnityEngine.Vector3):System.Void
---@param r UnityEngine.Ray
---@return System.Void
function UnityEngine.Gizmos.DrawRay(r)end
---@class UnityEngine.GradientColorKey : System.ValueType
---@field public color UnityEngine.Color
---@field public time System.Single
UnityEngine.GradientColorKey = {}
---@type UnityEngine.GradientColorKey
CS.UnityEngine.GradientColorKey = UnityEngine.GradientColorKey

---@class UnityEngine.GradientAlphaKey : System.ValueType
---@field public alpha System.Single
---@field public time System.Single
UnityEngine.GradientAlphaKey = {}
---@type UnityEngine.GradientAlphaKey
CS.UnityEngine.GradientAlphaKey = UnityEngine.GradientAlphaKey

---@class UnityEngine.GradientMode : System.Enum
UnityEngine.GradientMode = {}
---@type UnityEngine.GradientMode
CS.UnityEngine.GradientMode = UnityEngine.GradientMode

---@return System.Int32 value:0
UnityEngine.GradientMode.Blend = 0
---@return System.Int32 value:1
UnityEngine.GradientMode.Fixed = 1

---@class UnityEngine.Gradient : System.Object
---@field public colorKeys UnityEngine.GradientColorKey[] @ setter getter
---@field public alphaKeys UnityEngine.GradientAlphaKey[] @ setter getter
---@field public mode UnityEngine.GradientMode @ setter getter
UnityEngine.Gradient = {}
---@type UnityEngine.Gradient
CS.UnityEngine.Gradient = UnityEngine.Gradient

---@param time System.Single
---@return UnityEngine.Color
function UnityEngine.Gradient:Evaluate(time)end
---@param colorKeys UnityEngine.GradientColorKey[]
---@param alphaKeys UnityEngine.GradientAlphaKey[]
---@return System.Void
function UnityEngine.Gradient:SetKeys(colorKeys, alphaKeys)end
---@overload fun(other:UnityEngine.Gradient):System.Boolean
---@param o System.Object
---@return System.Boolean
function UnityEngine.Gradient:Equals(o)end
---@return System.Int32
function UnityEngine.Gradient:GetHashCode()end
---@class UnityEngine.FullScreenMode : System.Enum
UnityEngine.FullScreenMode = {}
---@type UnityEngine.FullScreenMode
CS.UnityEngine.FullScreenMode = UnityEngine.FullScreenMode

---@return System.Int32 value:0
UnityEngine.FullScreenMode.ExclusiveFullScreen = 0
---@return System.Int32 value:1
UnityEngine.FullScreenMode.FullScreenWindow = 1
---@return System.Int32 value:2
UnityEngine.FullScreenMode.MaximizedWindow = 2
---@return System.Int32 value:3
UnityEngine.FullScreenMode.Windowed = 3

---@class UnityEngine.TextureCompressionQuality : System.Enum
UnityEngine.TextureCompressionQuality = {}
---@type UnityEngine.TextureCompressionQuality
CS.UnityEngine.TextureCompressionQuality = UnityEngine.TextureCompressionQuality

---@return System.Int32 value:0
UnityEngine.TextureCompressionQuality.Fast = 0

---@class UnityEngine.SleepTimeout : System.Object
---@field public NeverSleep System.Int32
---@field public SystemSetting System.Int32
UnityEngine.SleepTimeout = {}
---@type UnityEngine.SleepTimeout
CS.UnityEngine.SleepTimeout = UnityEngine.SleepTimeout

---@class UnityEngine.Screen : System.Object
---@field public width System.Int32 @static  getter
---@field public height System.Int32 @static  getter
---@field public dpi System.Single @static  getter
---@field public orientation UnityEngine.ScreenOrientation @static setter getter
---@field public sleepTimeout System.Int32 @static setter getter
---@field public autorotateToPortrait System.Boolean @static setter getter
---@field public autorotateToPortraitUpsideDown System.Boolean @static setter getter
---@field public autorotateToLandscapeLeft System.Boolean @static setter getter
---@field public autorotateToLandscapeRight System.Boolean @static setter getter
---@field public currentResolution UnityEngine.Resolution @static  getter
---@field public fullScreen System.Boolean @static setter getter
---@field public fullScreenMode UnityEngine.FullScreenMode @static setter getter
---@field public safeArea UnityEngine.Rect @static  getter
---@field public resolutions UnityEngine.Resolution[] @static  getter
---@field public GetResolution UnityEngine.Resolution[] @static  getter
---@field public showCursor System.Boolean @static setter getter
---@field public lockCursor System.Boolean @static setter getter
UnityEngine.Screen = {}
---@type UnityEngine.Screen
CS.UnityEngine.Screen = UnityEngine.Screen

---@overload fun(width:System.Int32, height:System.Int32, fullscreen:System.Boolean, preferredRefreshRate:System.Int32):System.Void
---@overload fun(width:System.Int32, height:System.Int32, fullscreenMode:UnityEngine.FullScreenMode):System.Void
---@overload fun(width:System.Int32, height:System.Int32, fullscreenMode:UnityEngine.FullScreenMode, preferredRefreshRate:System.Int32):System.Void
---@param width System.Int32
---@param height System.Int32
---@param fullscreen System.Boolean
---@return System.Void
function UnityEngine.Screen.SetResolution(width, height, fullscreen)end
---@class UnityEngine.RenderBuffer : System.ValueType
UnityEngine.RenderBuffer = {}
---@type UnityEngine.RenderBuffer
CS.UnityEngine.RenderBuffer = UnityEngine.RenderBuffer

---@return System.IntPtr
function UnityEngine.RenderBuffer:GetNativeRenderBufferPtr()end
---@class UnityEngine.Graphics : System.Object
---@field public activeColorGamut UnityEngine.ColorGamut @static  getter
---@field public activeTier UnityEngine.Rendering.GraphicsTier @static setter getter
---@field public activeColorBuffer UnityEngine.RenderBuffer @static  getter
---@field public activeDepthBuffer UnityEngine.RenderBuffer @static  getter
---@field public deviceName System.String @static  getter
---@field public deviceVendor System.String @static  getter
---@field public deviceVersion System.String @static  getter
UnityEngine.Graphics = {}
---@type UnityEngine.Graphics
CS.UnityEngine.Graphics = UnityEngine.Graphics

---@return System.Void
function UnityEngine.Graphics.ClearRandomWriteTargets()end
---@param buffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Graphics.ExecuteCommandBuffer(buffer)end
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
---@return System.Void
function UnityEngine.Graphics.ExecuteCommandBufferAsync(buffer, queueType)end
---@overload fun(rt:UnityEngine.RenderTexture):System.Void
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:System.Int32):System.Void
---@overload fun(colorBuffers:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer):System.Void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer):System.Void
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:System.Int32, face:UnityEngine.CubemapFace):System.Void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:System.Int32):System.Void
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:System.Int32, face:UnityEngine.CubemapFace, depthSlice:System.Int32):System.Void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:System.Int32, face:UnityEngine.CubemapFace):System.Void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:System.Int32, face:UnityEngine.CubemapFace, depthSlice:System.Int32):System.Void
---@param setup UnityEngine.RenderTargetSetup
---@return System.Void
function UnityEngine.Graphics.SetRenderTarget(setup)end
---@overload fun(index:System.Int32, uav:UnityEngine.ComputeBuffer):System.Void
---@overload fun(index:System.Int32, uav:UnityEngine.ComputeBuffer, preserveCounterValue:System.Boolean):System.Void
---@param index System.Int32
---@param uav UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.Graphics.SetRandomWriteTarget(index, uav)end
---@overload fun(src:UnityEngine.Texture, srcElement:System.Int32, dst:UnityEngine.Texture, dstElement:System.Int32):System.Void
---@overload fun(src:UnityEngine.Texture, srcElement:System.Int32, srcMip:System.Int32, dst:UnityEngine.Texture, dstElement:System.Int32, dstMip:System.Int32):System.Void
---@overload fun(src:UnityEngine.Texture, srcElement:System.Int32, srcMip:System.Int32, srcX:System.Int32, srcY:System.Int32, srcWidth:System.Int32, srcHeight:System.Int32, dst:UnityEngine.Texture, dstElement:System.Int32, dstMip:System.Int32, dstX:System.Int32, dstY:System.Int32):System.Void
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@return System.Void
function UnityEngine.Graphics.CopyTexture(src, dst)end
---@overload fun(src:UnityEngine.Texture, srcElement:System.Int32, dst:UnityEngine.Texture, dstElement:System.Int32):System.Boolean
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@return System.Boolean
function UnityEngine.Graphics.ConvertTexture(src, dst)end
---@overload fun(stage:UnityEngine.Rendering.SynchronisationStage):UnityEngine.Rendering.GPUFence
---@return UnityEngine.Rendering.GPUFence
function UnityEngine.Graphics.CreateGPUFence()end
---@overload fun(fence:UnityEngine.Rendering.GPUFence, stage:UnityEngine.Rendering.SynchronisationStage):System.Void
---@param fence UnityEngine.Rendering.GPUFence
---@return System.Void
function UnityEngine.Graphics.WaitOnGPUFence(fence)end
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, mat:UnityEngine.Material):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, color:UnityEngine.Color):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, mat:UnityEngine.Material):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, color:UnityEngine.Color, mat:UnityEngine.Material):System.Void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:System.Int32, rightBorder:System.Int32, topBorder:System.Int32, bottomBorder:System.Int32, color:UnityEngine.Color, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@return System.Void
function UnityEngine.Graphics.DrawTexture(screenRect, texture)end
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, materialIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, materialIndex:System.Int32):System.Void
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Graphics.DrawMeshNow(mesh, matrix)end
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, materialIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, materialIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean, receiveShadows:System.Boolean, useLightProbes:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:System.Boolean, receiveShadows:System.Boolean, useLightProbes:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform, useLightProbes:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):System.Void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform, useLightProbes:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:System.Int32, camera:UnityEngine.Camera, submeshIndex:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):System.Void
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Graphics.DrawMesh(mesh, matrix)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:System.Collections.Generic.List, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):System.Void
---@param mesh UnityEngine.Mesh
---@param submeshIndex System.Int32
---@param material UnityEngine.Material
---@param matrices UnityEngine.Matrix4x4[]
---@return System.Void
function UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:System.Boolean, layer:System.Int32, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):System.Void
---@param mesh UnityEngine.Mesh
---@param submeshIndex System.Int32
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs)end
---@overload fun(topology:UnityEngine.MeshTopology, vertexCount:System.Int32, instanceCount:System.Int32):System.Void
---@param topology UnityEngine.MeshTopology
---@param vertexCount System.Int32
---@return System.Void
function UnityEngine.Graphics.DrawProcedural(topology, vertexCount)end
---@overload fun(topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32):System.Void
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Graphics.DrawProceduralIndirect(topology, bufferWithArgs)end
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material):System.Void
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2):System.Void
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.Graphics.Blit(source, dest)end
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
---@param mat UnityEngine.Material
---@param offsets UnityEngine.Vector2[]
---@return System.Void
function UnityEngine.Graphics.BlitMultiTap(source, dest, mat, offsets)end
---@class UnityEngine.GL : System.Object
---@field public wireframe System.Boolean @static setter getter
---@field public sRGBWrite System.Boolean @static setter getter
---@field public invertCulling System.Boolean @static setter getter
---@field public modelview UnityEngine.Matrix4x4 @static setter getter
---@field public TRIANGLES System.Int32
---@field public TRIANGLE_STRIP System.Int32
---@field public QUADS System.Int32
---@field public LINES System.Int32
---@field public LINE_STRIP System.Int32
UnityEngine.GL = {}
---@type UnityEngine.GL
CS.UnityEngine.GL = UnityEngine.GL

---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.GL.Vertex3(x, y, z)end
---@param v UnityEngine.Vector3
---@return System.Void
function UnityEngine.GL.Vertex(v)end
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.GL.TexCoord3(x, y, z)end
---@param v UnityEngine.Vector3
---@return System.Void
function UnityEngine.GL.TexCoord(v)end
---@param x System.Single
---@param y System.Single
---@return System.Void
function UnityEngine.GL.TexCoord2(x, y)end
---@param unit System.Int32
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.GL.MultiTexCoord3(unit, x, y, z)end
---@param unit System.Int32
---@param v UnityEngine.Vector3
---@return System.Void
function UnityEngine.GL.MultiTexCoord(unit, v)end
---@param unit System.Int32
---@param x System.Single
---@param y System.Single
---@return System.Void
function UnityEngine.GL.MultiTexCoord2(unit, x, y)end
---@param c UnityEngine.Color
---@return System.Void
function UnityEngine.GL.Color(c)end
---@return System.Void
function UnityEngine.GL.Flush()end
---@return System.Void
function UnityEngine.GL.RenderTargetBarrier()end
---@param m UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.GL.MultMatrix(m)end
---@overload fun(callback:System.IntPtr, eventID:System.Int32):System.Void
---@param eventID System.Int32
---@return System.Void
function UnityEngine.GL.IssuePluginEvent(eventID)end
---@param revertBackFaces System.Boolean
---@return System.Void
function UnityEngine.GL.SetRevertBackfacing(revertBackFaces)end
---@return System.Void
function UnityEngine.GL.PushMatrix()end
---@return System.Void
function UnityEngine.GL.PopMatrix()end
---@return System.Void
function UnityEngine.GL.LoadIdentity()end
---@return System.Void
function UnityEngine.GL.LoadOrtho()end
---@overload fun(left:System.Single, right:System.Single, bottom:System.Single, top:System.Single):System.Void
---@return System.Void
function UnityEngine.GL.LoadPixelMatrix()end
---@param mat UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.GL.LoadProjectionMatrix(mat)end
---@return System.Void
function UnityEngine.GL.InvalidateState()end
---@param proj UnityEngine.Matrix4x4
---@param renderIntoTexture System.Boolean
---@return UnityEngine.Matrix4x4
function UnityEngine.GL.GetGPUProjectionMatrix(proj, renderIntoTexture)end
---@param mode System.Int32
---@return System.Void
function UnityEngine.GL.Begin(mode)end
---@return System.Void
function UnityEngine.GL.End()end
---@overload fun(clearDepth:System.Boolean, clearColor:System.Boolean, backgroundColor:UnityEngine.Color, depth:System.Single):System.Void
---@param clearDepth System.Boolean
---@param clearColor System.Boolean
---@param backgroundColor UnityEngine.Color
---@return System.Void
function UnityEngine.GL.Clear(clearDepth, clearColor, backgroundColor)end
---@param pixelRect UnityEngine.Rect
---@return System.Void
function UnityEngine.GL.Viewport(pixelRect)end
---@param clearDepth System.Boolean
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.GL.ClearWithSkybox(clearDepth, camera)end
---@class UnityEngine.ScalableBufferManager : System.Object
---@field public widthScaleFactor System.Single @static  getter
---@field public heightScaleFactor System.Single @static  getter
UnityEngine.ScalableBufferManager = {}
---@type UnityEngine.ScalableBufferManager
CS.UnityEngine.ScalableBufferManager = UnityEngine.ScalableBufferManager

---@param widthScale System.Single
---@param heightScale System.Single
---@return System.Void
function UnityEngine.ScalableBufferManager.ResizeBuffers(widthScale, heightScale)end
---@class UnityEngine.FrameTiming : System.ValueType
---@field public cpuTimePresentCalled System.UInt64
---@field public cpuFrameTime System.Double
---@field public cpuTimeFrameComplete System.UInt64
---@field public gpuFrameTime System.Double
---@field public heightScale System.Single
---@field public widthScale System.Single
---@field public syncInterval System.UInt32
UnityEngine.FrameTiming = {}
---@type UnityEngine.FrameTiming
CS.UnityEngine.FrameTiming = UnityEngine.FrameTiming

---@class UnityEngine.FrameTimingManager : System.Object
UnityEngine.FrameTimingManager = {}
---@type UnityEngine.FrameTimingManager
CS.UnityEngine.FrameTimingManager = UnityEngine.FrameTimingManager

---@return System.Void
function UnityEngine.FrameTimingManager.CaptureFrameTimings()end
---@param numFrames System.UInt32
---@param timings UnityEngine.FrameTiming[]
---@return System.UInt32
function UnityEngine.FrameTimingManager.GetLatestTimings(numFrames, timings)end
---@return System.Single
function UnityEngine.FrameTimingManager.GetVSyncsPerSecond()end
---@return System.UInt64
function UnityEngine.FrameTimingManager.GetGpuTimerFrequency()end
---@return System.UInt64
function UnityEngine.FrameTimingManager.GetCpuTimerFrequency()end
---@class UnityEngine.LightmapData : System.Object
---@field public lightmapLight UnityEngine.Texture2D @ setter getter
---@field public lightmapColor UnityEngine.Texture2D @ setter getter
---@field public lightmapDir UnityEngine.Texture2D @ setter getter
---@field public shadowMask UnityEngine.Texture2D @ setter getter
---@field public lightmap UnityEngine.Texture2D @ setter getter
---@field public lightmapFar UnityEngine.Texture2D @ setter getter
---@field public lightmapNear UnityEngine.Texture2D @ setter getter
UnityEngine.LightmapData = {}
---@type UnityEngine.LightmapData
CS.UnityEngine.LightmapData = UnityEngine.LightmapData

---@class UnityEngine.LightmapSettings : UnityEngine.Object
---@field public lightmaps UnityEngine.LightmapData[] @static setter getter
---@field public lightmapsMode UnityEngine.LightmapsMode @static setter getter
---@field public lightProbes UnityEngine.LightProbes @static setter getter
---@field public lightmapsModeLegacy UnityEngine.LightmapsModeLegacy @static setter getter
---@field public bakedColorSpace UnityEngine.ColorSpace @static setter getter
UnityEngine.LightmapSettings = {}
---@type UnityEngine.LightmapSettings
CS.UnityEngine.LightmapSettings = UnityEngine.LightmapSettings

---@class UnityEngine.LightProbes : UnityEngine.Object
---@field public positions UnityEngine.Vector3[] @  getter
---@field public bakedProbes UnityEngine.Rendering.SphericalHarmonicsL2[] @ setter getter
---@field public count System.Int32 @  getter
---@field public cellCount System.Int32 @  getter
---@field public coefficients System.Single[] @ setter getter
UnityEngine.LightProbes = {}
---@type UnityEngine.LightProbes
CS.UnityEngine.LightProbes = UnityEngine.LightProbes

---@param position UnityEngine.Vector3
---@param renderer UnityEngine.Renderer
---@param probe UnityEngine.Rendering.SphericalHarmonicsL2
---@return System.Void
function UnityEngine.LightProbes.GetInterpolatedProbe(position, renderer, probe)end
---@overload fun(positions:System.Collections.Generic.List, lightProbes:System.Collections.Generic.List, occlusionProbes:System.Collections.Generic.List):System.Void
---@param positions UnityEngine.Vector3[]
---@param lightProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
---@param occlusionProbes UnityEngine.Vector4[]
---@return System.Void
function UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(positions, lightProbes, occlusionProbes)end
---@param position UnityEngine.Vector3
---@param renderer UnityEngine.Renderer
---@param coefficients System.Single[]
---@return System.Void
function UnityEngine.LightProbes:GetInterpolatedLightProbe(position, renderer, coefficients)end
---@class UnityEngine.Resolution : System.ValueType
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public refreshRate System.Int32 @ setter getter
UnityEngine.Resolution = {}
---@type UnityEngine.Resolution
CS.UnityEngine.Resolution = UnityEngine.Resolution

---@return System.String
function UnityEngine.Resolution:ToString()end
---@class UnityEngine.RenderTargetSetup : System.ValueType
---@field public color UnityEngine.RenderBuffer[]
---@field public depth UnityEngine.RenderBuffer
---@field public mipLevel System.Int32
---@field public cubemapFace UnityEngine.CubemapFace
---@field public depthSlice System.Int32
---@field public colorLoad UnityEngine.Rendering.RenderBufferLoadAction[]
---@field public colorStore UnityEngine.Rendering.RenderBufferStoreAction[]
---@field public depthLoad UnityEngine.Rendering.RenderBufferLoadAction
---@field public depthStore UnityEngine.Rendering.RenderBufferStoreAction
UnityEngine.RenderTargetSetup = {}
---@type UnityEngine.RenderTargetSetup
CS.UnityEngine.RenderTargetSetup = UnityEngine.RenderTargetSetup

---@class UnityEngine.QualitySettings : UnityEngine.Object
---@field public currentLevel UnityEngine.QualityLevel @static setter getter
---@field public pixelLightCount System.Int32 @static setter getter
---@field public shadows UnityEngine.ShadowQuality @static setter getter
---@field public shadowProjection UnityEngine.ShadowProjection @static setter getter
---@field public shadowCascades System.Int32 @static setter getter
---@field public shadowDistance System.Single @static setter getter
---@field public shadowResolution UnityEngine.ShadowResolution @static setter getter
---@field public shadowmaskMode UnityEngine.ShadowmaskMode @static setter getter
---@field public shadowNearPlaneOffset System.Single @static setter getter
---@field public shadowCascade2Split System.Single @static setter getter
---@field public shadowCascade4Split UnityEngine.Vector3 @static setter getter
---@field public lodBias System.Single @static setter getter
---@field public anisotropicFiltering UnityEngine.AnisotropicFiltering @static setter getter
---@field public masterTextureLimit System.Int32 @static setter getter
---@field public maximumLODLevel System.Int32 @static setter getter
---@field public particleRaycastBudget System.Int32 @static setter getter
---@field public softParticles System.Boolean @static setter getter
---@field public softVegetation System.Boolean @static setter getter
---@field public vSyncCount System.Int32 @static setter getter
---@field public antiAliasing System.Int32 @static setter getter
---@field public asyncUploadTimeSlice System.Int32 @static setter getter
---@field public asyncUploadBufferSize System.Int32 @static setter getter
---@field public asyncUploadPersistentBuffer System.Boolean @static setter getter
---@field public realtimeReflectionProbes System.Boolean @static setter getter
---@field public billboardsFaceCameraPosition System.Boolean @static setter getter
---@field public resolutionScalingFixedDPIFactor System.Single @static setter getter
---@field public blendWeights UnityEngine.BlendWeights @static setter getter
---@field public streamingMipmapsActive System.Boolean @static setter getter
---@field public streamingMipmapsMemoryBudget System.Single @static setter getter
---@field public streamingMipmapsRenderersPerFrame System.Int32 @static setter getter
---@field public streamingMipmapsMaxLevelReduction System.Int32 @static setter getter
---@field public streamingMipmapsAddAllCameras System.Boolean @static setter getter
---@field public streamingMipmapsMaxFileIORequests System.Int32 @static setter getter
---@field public maxQueuedFrames System.Int32 @static setter getter
---@field public names System.String[] @static  getter
---@field public desiredColorSpace UnityEngine.ColorSpace @static  getter
---@field public activeColorSpace UnityEngine.ColorSpace @static  getter
UnityEngine.QualitySettings = {}
---@type UnityEngine.QualitySettings
CS.UnityEngine.QualitySettings = UnityEngine.QualitySettings

---@overload fun(applyExpensiveChanges:System.Boolean):System.Void
---@return System.Void
function UnityEngine.QualitySettings.IncreaseLevel()end
---@overload fun(applyExpensiveChanges:System.Boolean):System.Void
---@return System.Void
function UnityEngine.QualitySettings.DecreaseLevel()end
---@overload fun(index:System.Int32, applyExpensiveChanges:System.Boolean):System.Void
---@param index System.Int32
---@return System.Void
function UnityEngine.QualitySettings.SetQualityLevel(index)end
---@return System.Int32
function UnityEngine.QualitySettings.GetQualityLevel()end
---@class UnityEngine.RendererExtensions : System.Object
UnityEngine.RendererExtensions = {}
---@type UnityEngine.RendererExtensions
CS.UnityEngine.RendererExtensions = UnityEngine.RendererExtensions

---@class UnityEngine.ImageEffectTransformsToLDR : System.Attribute
UnityEngine.ImageEffectTransformsToLDR = {}
---@type UnityEngine.ImageEffectTransformsToLDR
CS.UnityEngine.ImageEffectTransformsToLDR = UnityEngine.ImageEffectTransformsToLDR

---@class UnityEngine.ImageEffectAllowedInSceneView : System.Attribute
UnityEngine.ImageEffectAllowedInSceneView = {}
---@type UnityEngine.ImageEffectAllowedInSceneView
CS.UnityEngine.ImageEffectAllowedInSceneView = UnityEngine.ImageEffectAllowedInSceneView

---@class UnityEngine.ImageEffectOpaque : System.Attribute
UnityEngine.ImageEffectOpaque = {}
---@type UnityEngine.ImageEffectOpaque
CS.UnityEngine.ImageEffectOpaque = UnityEngine.ImageEffectOpaque

---@class UnityEngine.ImageEffectAfterScale : System.Attribute
UnityEngine.ImageEffectAfterScale = {}
---@type UnityEngine.ImageEffectAfterScale
CS.UnityEngine.ImageEffectAfterScale = UnityEngine.ImageEffectAfterScale

---@class UnityEngine.Mesh : UnityEngine.Object
---@field public uv1 UnityEngine.Vector2[] @ setter getter
---@field public indexFormat UnityEngine.Rendering.IndexFormat @ setter getter
---@field public vertexBufferCount System.Int32 @  getter
---@field public blendShapeCount System.Int32 @  getter
---@field public boneWeights UnityEngine.BoneWeight[] @ setter getter
---@field public bindposes UnityEngine.Matrix4x4[] @ setter getter
---@field public isReadable System.Boolean @  getter
---@field public vertexCount System.Int32 @  getter
---@field public subMeshCount System.Int32 @ setter getter
---@field public bounds UnityEngine.Bounds @ setter getter
---@field public vertices UnityEngine.Vector3[] @ setter getter
---@field public normals UnityEngine.Vector3[] @ setter getter
---@field public tangents UnityEngine.Vector4[] @ setter getter
---@field public uv UnityEngine.Vector2[] @ setter getter
---@field public uv2 UnityEngine.Vector2[] @ setter getter
---@field public uv3 UnityEngine.Vector2[] @ setter getter
---@field public uv4 UnityEngine.Vector2[] @ setter getter
---@field public uv5 UnityEngine.Vector2[] @ setter getter
---@field public uv6 UnityEngine.Vector2[] @ setter getter
---@field public uv7 UnityEngine.Vector2[] @ setter getter
---@field public uv8 UnityEngine.Vector2[] @ setter getter
---@field public colors UnityEngine.Color[] @ setter getter
---@field public colors32 UnityEngine.Color32[] @ setter getter
---@field public triangles System.Int32[] @ setter getter
UnityEngine.Mesh = {}
---@type UnityEngine.Mesh
CS.UnityEngine.Mesh = UnityEngine.Mesh

---@param index System.Int32
---@return System.IntPtr
function UnityEngine.Mesh:GetNativeVertexBufferPtr(index)end
---@return System.IntPtr
function UnityEngine.Mesh:GetNativeIndexBufferPtr()end
---@return System.Void
function UnityEngine.Mesh:ClearBlendShapes()end
---@param shapeIndex System.Int32
---@return System.String
function UnityEngine.Mesh:GetBlendShapeName(shapeIndex)end
---@param blendShapeName System.String
---@return System.Int32
function UnityEngine.Mesh:GetBlendShapeIndex(blendShapeName)end
---@param shapeIndex System.Int32
---@return System.Int32
function UnityEngine.Mesh:GetBlendShapeFrameCount(shapeIndex)end
---@param shapeIndex System.Int32
---@param frameIndex System.Int32
---@return System.Single
function UnityEngine.Mesh:GetBlendShapeFrameWeight(shapeIndex, frameIndex)end
---@param shapeIndex System.Int32
---@param frameIndex System.Int32
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.Mesh:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents)end
---@param shapeName System.String
---@param frameWeight System.Single
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.Mesh:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents)end
---@param uvSetIndex System.Int32
---@return System.Single
function UnityEngine.Mesh:GetUVDistributionMetric(uvSetIndex)end
---@param vertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetVertices(vertices)end
---@param inVertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:SetVertices(inVertices)end
---@param normals System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetNormals(normals)end
---@param inNormals System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:SetNormals(inNormals)end
---@param tangents System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetTangents(tangents)end
---@param inTangents System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:SetTangents(inTangents)end
---@overload fun(colors:System.Collections.Generic.List):System.Void
---@param colors System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetColors(colors)end
---@overload fun(inColors:System.Collections.Generic.List):System.Void
---@param inColors System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:SetColors(inColors)end
---@overload fun(channel:System.Int32, uvs:System.Collections.Generic.List):System.Void
---@overload fun(channel:System.Int32, uvs:System.Collections.Generic.List):System.Void
---@param channel System.Int32
---@param uvs System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:SetUVs(channel, uvs)end
---@overload fun(channel:System.Int32, uvs:System.Collections.Generic.List):System.Void
---@overload fun(channel:System.Int32, uvs:System.Collections.Generic.List):System.Void
---@param channel System.Int32
---@param uvs System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetUVs(channel, uvs)end
---@overload fun(submesh:System.Int32, applyBaseVertex:System.Boolean):System.Int32[]
---@overload fun(triangles:System.Collections.Generic.List, submesh:System.Int32):System.Void
---@overload fun(triangles:System.Collections.Generic.List, submesh:System.Int32, applyBaseVertex:System.Boolean):System.Void
---@param submesh System.Int32
---@return System.Int32[]
function UnityEngine.Mesh:GetTriangles(submesh)end
---@overload fun(submesh:System.Int32, applyBaseVertex:System.Boolean):System.Int32[]
---@overload fun(indices:System.Collections.Generic.List, submesh:System.Int32):System.Void
---@overload fun(indices:System.Collections.Generic.List, submesh:System.Int32, applyBaseVertex:System.Boolean):System.Void
---@param submesh System.Int32
---@return System.Int32[]
function UnityEngine.Mesh:GetIndices(submesh)end
---@param submesh System.Int32
---@return System.UInt32
function UnityEngine.Mesh:GetIndexStart(submesh)end
---@param submesh System.Int32
---@return System.UInt32
function UnityEngine.Mesh:GetIndexCount(submesh)end
---@param submesh System.Int32
---@return System.UInt32
function UnityEngine.Mesh:GetBaseVertex(submesh)end
---@overload fun(triangles:System.Collections.Generic.List, submesh:System.Int32):System.Void
---@overload fun(triangles:System.Int32[], submesh:System.Int32, calculateBounds:System.Boolean):System.Void
---@overload fun(triangles:System.Collections.Generic.List, submesh:System.Int32, calculateBounds:System.Boolean):System.Void
---@overload fun(triangles:System.Int32[], submesh:System.Int32, calculateBounds:System.Boolean, baseVertex:System.Int32):System.Void
---@overload fun(triangles:System.Collections.Generic.List, submesh:System.Int32, calculateBounds:System.Boolean, baseVertex:System.Int32):System.Void
---@param triangles System.Int32[]
---@param submesh System.Int32
---@return System.Void
function UnityEngine.Mesh:SetTriangles(triangles, submesh)end
---@overload fun(indices:System.Int32[], topology:UnityEngine.MeshTopology, submesh:System.Int32, calculateBounds:System.Boolean):System.Void
---@overload fun(indices:System.Int32[], topology:UnityEngine.MeshTopology, submesh:System.Int32, calculateBounds:System.Boolean, baseVertex:System.Int32):System.Void
---@param indices System.Int32[]
---@param topology UnityEngine.MeshTopology
---@param submesh System.Int32
---@return System.Void
function UnityEngine.Mesh:SetIndices(indices, topology, submesh)end
---@param bindposes System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetBindposes(bindposes)end
---@param boneWeights System.Collections.Generic.List
---@return System.Void
function UnityEngine.Mesh:GetBoneWeights(boneWeights)end
---@overload fun(keepVertexLayout:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Mesh:Clear()end
---@return System.Void
function UnityEngine.Mesh:RecalculateBounds()end
---@return System.Void
function UnityEngine.Mesh:RecalculateNormals()end
---@return System.Void
function UnityEngine.Mesh:RecalculateTangents()end
---@return System.Void
function UnityEngine.Mesh:MarkDynamic()end
---@param markNoLongerReadable System.Boolean
---@return System.Void
function UnityEngine.Mesh:UploadMeshData(markNoLongerReadable)end
---@param submesh System.Int32
---@return UnityEngine.MeshTopology
function UnityEngine.Mesh:GetTopology(submesh)end
---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:System.Boolean):System.Void
---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:System.Boolean, useMatrices:System.Boolean):System.Void
---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:System.Boolean, useMatrices:System.Boolean, hasLightmapData:System.Boolean):System.Void
---@param combine UnityEngine.CombineInstance[]
---@return System.Void
function UnityEngine.Mesh:CombineMeshes(combine)end
---@return System.Void
function UnityEngine.Mesh:Optimize()end
---@class UnityEngine.Renderer : UnityEngine.Component
---@field public lightmapTilingOffset UnityEngine.Vector4 @ setter getter
---@field public lightProbeAnchor UnityEngine.Transform @ setter getter
---@field public castShadows System.Boolean @ setter getter
---@field public motionVectors System.Boolean @ setter getter
---@field public useLightProbes System.Boolean @ setter getter
---@field public bounds UnityEngine.Bounds @  getter
---@field public enabled System.Boolean @ setter getter
---@field public isVisible System.Boolean @  getter
---@field public shadowCastingMode UnityEngine.Rendering.ShadowCastingMode @ setter getter
---@field public receiveShadows System.Boolean @ setter getter
---@field public motionVectorGenerationMode UnityEngine.MotionVectorGenerationMode @ setter getter
---@field public lightProbeUsage UnityEngine.Rendering.LightProbeUsage @ setter getter
---@field public reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage @ setter getter
---@field public renderingLayerMask System.UInt32 @ setter getter
---@field public rendererPriority System.Int32 @ setter getter
---@field public sortingLayerName System.String @ setter getter
---@field public sortingLayerID System.Int32 @ setter getter
---@field public sortingOrder System.Int32 @ setter getter
---@field public allowOcclusionWhenDynamic System.Boolean @ setter getter
---@field public isPartOfStaticBatch System.Boolean @  getter
---@field public worldToLocalMatrix UnityEngine.Matrix4x4 @  getter
---@field public localToWorldMatrix UnityEngine.Matrix4x4 @  getter
---@field public lightProbeProxyVolumeOverride UnityEngine.GameObject @ setter getter
---@field public probeAnchor UnityEngine.Transform @ setter getter
---@field public lightmapIndex System.Int32 @ setter getter
---@field public realtimeLightmapIndex System.Int32 @ setter getter
---@field public lightmapScaleOffset UnityEngine.Vector4 @ setter getter
---@field public realtimeLightmapScaleOffset UnityEngine.Vector4 @ setter getter
---@field public materials UnityEngine.Material[] @ setter getter
---@field public material UnityEngine.Material @ setter getter
---@field public sharedMaterial UnityEngine.Material @ setter getter
---@field public sharedMaterials UnityEngine.Material[] @ setter getter
UnityEngine.Renderer = {}
---@type UnityEngine.Renderer
CS.UnityEngine.Renderer = UnityEngine.Renderer

---@return System.Boolean
function UnityEngine.Renderer:HasPropertyBlock()end
---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:System.Int32):System.Void
---@param properties UnityEngine.MaterialPropertyBlock
---@return System.Void
function UnityEngine.Renderer:SetPropertyBlock(properties)end
---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:System.Int32):System.Void
---@param properties UnityEngine.MaterialPropertyBlock
---@return System.Void
function UnityEngine.Renderer:GetPropertyBlock(properties)end
---@param m System.Collections.Generic.List
---@return System.Void
function UnityEngine.Renderer:GetMaterials(m)end
---@param m System.Collections.Generic.List
---@return System.Void
function UnityEngine.Renderer:GetSharedMaterials(m)end
---@param result System.Collections.Generic.List
---@return System.Void
function UnityEngine.Renderer:GetClosestReflectionProbes(result)end
---@class UnityEngine.Projector : UnityEngine.Behaviour
---@field public isOrthoGraphic System.Boolean @ setter getter
---@field public orthoGraphicSize System.Single @ setter getter
---@field public nearClipPlane System.Single @ setter getter
---@field public farClipPlane System.Single @ setter getter
---@field public fieldOfView System.Single @ setter getter
---@field public aspectRatio System.Single @ setter getter
---@field public orthographic System.Boolean @ setter getter
---@field public orthographicSize System.Single @ setter getter
---@field public ignoreLayers System.Int32 @ setter getter
---@field public material UnityEngine.Material @ setter getter
UnityEngine.Projector = {}
---@type UnityEngine.Projector
CS.UnityEngine.Projector = UnityEngine.Projector

---@class UnityEngine.Shader : UnityEngine.Object
---@field public globalShaderHardwareTier UnityEngine.Rendering.ShaderHardwareTier @static setter getter
---@field public maximumLOD System.Int32 @ setter getter
---@field public globalMaximumLOD System.Int32 @static setter getter
---@field public isSupported System.Boolean @  getter
---@field public globalRenderPipeline System.String @static setter getter
---@field public renderQueue System.Int32 @  getter
UnityEngine.Shader = {}
---@type UnityEngine.Shader
CS.UnityEngine.Shader = UnityEngine.Shader

---@param propertyName System.String
---@param mode UnityEngine.TexGenMode
---@return System.Void
function UnityEngine.Shader.SetGlobalTexGenMode(propertyName, mode)end
---@param propertyName System.String
---@param matrixName System.String
---@return System.Void
function UnityEngine.Shader.SetGlobalTextureMatrixName(propertyName, matrixName)end
---@param name System.String
---@return UnityEngine.Shader
function UnityEngine.Shader.Find(name)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Shader.EnableKeyword(keyword)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Shader.DisableKeyword(keyword)end
---@param keyword System.String
---@return System.Boolean
function UnityEngine.Shader.IsKeywordEnabled(keyword)end
---@return System.Void
function UnityEngine.Shader.WarmupAllShaders()end
---@param name System.String
---@return System.Int32
function UnityEngine.Shader.PropertyToID(name)end
---@overload fun(name:System.String, value:System.Single):System.Void
---@param nameID System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Shader.SetGlobalFloat(nameID, value)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param nameID System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.Shader.SetGlobalInt(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.Shader.SetGlobalVector(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Color):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.Shader.SetGlobalColor(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Shader.SetGlobalMatrix(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Texture):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Texture
---@return System.Void
function UnityEngine.Shader.SetGlobalTexture(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.ComputeBuffer):System.Void
---@param nameID System.Int32
---@param value UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Shader.SetGlobalBuffer(nameID, value)end
---@overload fun(nameID:System.Int32, values:System.Single[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Single[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Shader.SetGlobalFloatArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Vector4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Shader.SetGlobalVectorArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Matrix4x4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Shader.SetGlobalMatrixArray(nameID, values)end
---@overload fun(name:System.String):System.Single
---@param nameID System.Int32
---@return System.Single
function UnityEngine.Shader.GetGlobalFloat(nameID)end
---@overload fun(name:System.String):System.Int32
---@param nameID System.Int32
---@return System.Int32
function UnityEngine.Shader.GetGlobalInt(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4
---@param nameID System.Int32
---@return UnityEngine.Vector4
function UnityEngine.Shader.GetGlobalVector(nameID)end
---@overload fun(name:System.String):UnityEngine.Color
---@param nameID System.Int32
---@return UnityEngine.Color
function UnityEngine.Shader.GetGlobalColor(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4
function UnityEngine.Shader.GetGlobalMatrix(nameID)end
---@overload fun(name:System.String):UnityEngine.Texture
---@param nameID System.Int32
---@return UnityEngine.Texture
function UnityEngine.Shader.GetGlobalTexture(nameID)end
---@overload fun(name:System.String):System.Single[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return System.Single[]
function UnityEngine.Shader.GetGlobalFloatArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Vector4[]
function UnityEngine.Shader.GetGlobalVectorArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4[]
function UnityEngine.Shader.GetGlobalMatrixArray(nameID)end
---@class UnityEngine.LightmapsModeLegacy : System.Enum
UnityEngine.LightmapsModeLegacy = {}
---@type UnityEngine.LightmapsModeLegacy
CS.UnityEngine.LightmapsModeLegacy = UnityEngine.LightmapsModeLegacy

---@return System.Int32 value:0
UnityEngine.LightmapsModeLegacy.Single = 0
---@return System.Int32 value:1
UnityEngine.LightmapsModeLegacy.Dual = 1
---@return System.Int32 value:2
UnityEngine.LightmapsModeLegacy.Directional = 2

---@class UnityEngine.TrailRenderer : UnityEngine.Renderer
---@field public numPositions System.Int32 @  getter
---@field public time System.Single @ setter getter
---@field public startWidth System.Single @ setter getter
---@field public endWidth System.Single @ setter getter
---@field public widthMultiplier System.Single @ setter getter
---@field public autodestruct System.Boolean @ setter getter
---@field public emitting System.Boolean @ setter getter
---@field public numCornerVertices System.Int32 @ setter getter
---@field public numCapVertices System.Int32 @ setter getter
---@field public minVertexDistance System.Single @ setter getter
---@field public startColor UnityEngine.Color @ setter getter
---@field public endColor UnityEngine.Color @ setter getter
---@field public positionCount System.Int32 @  getter
---@field public shadowBias System.Single @ setter getter
---@field public generateLightingData System.Boolean @ setter getter
---@field public textureMode UnityEngine.LineTextureMode @ setter getter
---@field public alignment UnityEngine.LineAlignment @ setter getter
---@field public widthCurve UnityEngine.AnimationCurve @ setter getter
---@field public colorGradient UnityEngine.Gradient @ setter getter
UnityEngine.TrailRenderer = {}
---@type UnityEngine.TrailRenderer
CS.UnityEngine.TrailRenderer = UnityEngine.TrailRenderer

---@param index System.Int32
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.TrailRenderer:SetPosition(index, position)end
---@param index System.Int32
---@return UnityEngine.Vector3
function UnityEngine.TrailRenderer:GetPosition(index)end
---@return System.Void
function UnityEngine.TrailRenderer:Clear()end
---@overload fun(mesh:UnityEngine.Mesh):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@param mesh UnityEngine.Mesh
---@param useTransform System.Boolean
---@return System.Void
function UnityEngine.TrailRenderer:BakeMesh(mesh, useTransform)end
---@param positions UnityEngine.Vector3[]
---@return System.Int32
function UnityEngine.TrailRenderer:GetPositions(positions)end
---@param positions UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.TrailRenderer:SetPositions(positions)end
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.TrailRenderer:AddPosition(position)end
---@param positions UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.TrailRenderer:AddPositions(positions)end
---@class UnityEngine.LineRenderer : UnityEngine.Renderer
---@field public numPositions System.Int32 @ setter getter
---@field public startWidth System.Single @ setter getter
---@field public endWidth System.Single @ setter getter
---@field public widthMultiplier System.Single @ setter getter
---@field public numCornerVertices System.Int32 @ setter getter
---@field public numCapVertices System.Int32 @ setter getter
---@field public useWorldSpace System.Boolean @ setter getter
---@field public loop System.Boolean @ setter getter
---@field public startColor UnityEngine.Color @ setter getter
---@field public endColor UnityEngine.Color @ setter getter
---@field public positionCount System.Int32 @ setter getter
---@field public shadowBias System.Single @ setter getter
---@field public generateLightingData System.Boolean @ setter getter
---@field public textureMode UnityEngine.LineTextureMode @ setter getter
---@field public alignment UnityEngine.LineAlignment @ setter getter
---@field public widthCurve UnityEngine.AnimationCurve @ setter getter
---@field public colorGradient UnityEngine.Gradient @ setter getter
UnityEngine.LineRenderer = {}
---@type UnityEngine.LineRenderer
CS.UnityEngine.LineRenderer = UnityEngine.LineRenderer

---@param start System.Single
---@param _end System.Single
---@return System.Void
function UnityEngine.LineRenderer:SetWidth(start, _end)end
---@param start UnityEngine.Color
---@param _end UnityEngine.Color
---@return System.Void
function UnityEngine.LineRenderer:SetColors(start, _end)end
---@param count System.Int32
---@return System.Void
function UnityEngine.LineRenderer:SetVertexCount(count)end
---@param index System.Int32
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.LineRenderer:SetPosition(index, position)end
---@param index System.Int32
---@return UnityEngine.Vector3
function UnityEngine.LineRenderer:GetPosition(index)end
---@param tolerance System.Single
---@return System.Void
function UnityEngine.LineRenderer:Simplify(tolerance)end
---@overload fun(mesh:UnityEngine.Mesh):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@param mesh UnityEngine.Mesh
---@param useTransform System.Boolean
---@return System.Void
function UnityEngine.LineRenderer:BakeMesh(mesh, useTransform)end
---@param positions UnityEngine.Vector3[]
---@return System.Int32
function UnityEngine.LineRenderer:GetPositions(positions)end
---@param positions UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.LineRenderer:SetPositions(positions)end
---@class UnityEngine.MaterialPropertyBlock : System.Object
---@field public isEmpty System.Boolean @  getter
UnityEngine.MaterialPropertyBlock = {}
---@type UnityEngine.MaterialPropertyBlock
CS.UnityEngine.MaterialPropertyBlock = UnityEngine.MaterialPropertyBlock

---@overload fun(name:System.String, value:System.Single):System.Void
---@param nameID System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.MaterialPropertyBlock:AddFloat(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.MaterialPropertyBlock:AddVector(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Color):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.MaterialPropertyBlock:AddColor(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.MaterialPropertyBlock:AddMatrix(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Texture):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Texture
---@return System.Void
function UnityEngine.MaterialPropertyBlock:AddTexture(nameID, value)end
---@return System.Void
function UnityEngine.MaterialPropertyBlock:Clear()end
---@overload fun(name:System.String, value:System.Single):System.Void
---@param nameID System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetFloat(nameID, value)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param nameID System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetInt(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetVector(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Color):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetColor(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetMatrix(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.ComputeBuffer):System.Void
---@param nameID System.Int32
---@param value UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetBuffer(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Texture):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Texture
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetTexture(nameID, value)end
---@overload fun(nameID:System.Int32, values:System.Single[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Single[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetFloatArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Vector4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetVectorArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Matrix4x4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.MaterialPropertyBlock:SetMatrixArray(nameID, values)end
---@overload fun(name:System.String):System.Single
---@param nameID System.Int32
---@return System.Single
function UnityEngine.MaterialPropertyBlock:GetFloat(nameID)end
---@overload fun(name:System.String):System.Int32
---@param nameID System.Int32
---@return System.Int32
function UnityEngine.MaterialPropertyBlock:GetInt(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4
---@param nameID System.Int32
---@return UnityEngine.Vector4
function UnityEngine.MaterialPropertyBlock:GetVector(nameID)end
---@overload fun(name:System.String):UnityEngine.Color
---@param nameID System.Int32
---@return UnityEngine.Color
function UnityEngine.MaterialPropertyBlock:GetColor(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4
function UnityEngine.MaterialPropertyBlock:GetMatrix(nameID)end
---@overload fun(name:System.String):UnityEngine.Texture
---@param nameID System.Int32
---@return UnityEngine.Texture
function UnityEngine.MaterialPropertyBlock:GetTexture(nameID)end
---@overload fun(name:System.String):System.Single[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return System.Single[]
function UnityEngine.MaterialPropertyBlock:GetFloatArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Vector4[]
function UnityEngine.MaterialPropertyBlock:GetVectorArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4[]
function UnityEngine.MaterialPropertyBlock:GetMatrixArray(nameID)end
---@overload fun(lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[]):System.Void
---@overload fun(lightProbes:System.Collections.Generic.List, sourceStart:System.Int32, destStart:System.Int32, count:System.Int32):System.Void
---@overload fun(lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[], sourceStart:System.Int32, destStart:System.Int32, count:System.Int32):System.Void
---@param lightProbes System.Collections.Generic.List
---@return System.Void
function UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes)end
---@overload fun(occlusionProbes:UnityEngine.Vector4[]):System.Void
---@overload fun(occlusionProbes:System.Collections.Generic.List, sourceStart:System.Int32, destStart:System.Int32, count:System.Int32):System.Void
---@overload fun(occlusionProbes:UnityEngine.Vector4[], sourceStart:System.Int32, destStart:System.Int32, count:System.Int32):System.Void
---@param occlusionProbes System.Collections.Generic.List
---@return System.Void
function UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes)end
---@class UnityEngine.RenderSettings : UnityEngine.Object
---@field public ambientSkyboxAmount System.Single @static setter getter
---@field public fog System.Boolean @static setter getter
---@field public fogStartDistance System.Single @static setter getter
---@field public fogEndDistance System.Single @static setter getter
---@field public fogMode UnityEngine.FogMode @static setter getter
---@field public fogColor UnityEngine.Color @static setter getter
---@field public fogDensity System.Single @static setter getter
---@field public ambientMode UnityEngine.Rendering.AmbientMode @static setter getter
---@field public ambientSkyColor UnityEngine.Color @static setter getter
---@field public ambientEquatorColor UnityEngine.Color @static setter getter
---@field public ambientGroundColor UnityEngine.Color @static setter getter
---@field public ambientIntensity System.Single @static setter getter
---@field public ambientLight UnityEngine.Color @static setter getter
---@field public subtractiveShadowColor UnityEngine.Color @static setter getter
---@field public skybox UnityEngine.Material @static setter getter
---@field public sun UnityEngine.Light @static setter getter
---@field public ambientProbe UnityEngine.Rendering.SphericalHarmonicsL2 @static setter getter
---@field public customReflection UnityEngine.Cubemap @static setter getter
---@field public reflectionIntensity System.Single @static setter getter
---@field public reflectionBounces System.Int32 @static setter getter
---@field public defaultReflectionMode UnityEngine.Rendering.DefaultReflectionMode @static setter getter
---@field public defaultReflectionResolution System.Int32 @static setter getter
---@field public haloStrength System.Single @static setter getter
---@field public flareStrength System.Single @static setter getter
---@field public flareFadeSpeed System.Single @static setter getter
UnityEngine.RenderSettings = {}
---@type UnityEngine.RenderSettings
CS.UnityEngine.RenderSettings = UnityEngine.RenderSettings

---@class UnityEngine.Material : UnityEngine.Object
---@field public shader UnityEngine.Shader @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public mainTexture UnityEngine.Texture @ setter getter
---@field public mainTextureOffset UnityEngine.Vector2 @ setter getter
---@field public mainTextureScale UnityEngine.Vector2 @ setter getter
---@field public renderQueue System.Int32 @ setter getter
---@field public globalIlluminationFlags UnityEngine.MaterialGlobalIlluminationFlags @ setter getter
---@field public doubleSidedGI System.Boolean @ setter getter
---@field public enableInstancing System.Boolean @ setter getter
---@field public passCount System.Int32 @  getter
---@field public shaderKeywords System.String[] @ setter getter
UnityEngine.Material = {}
---@type UnityEngine.Material
CS.UnityEngine.Material = UnityEngine.Material

---@param scriptContents System.String
---@return UnityEngine.Material
function UnityEngine.Material.Create(scriptContents)end
---@overload fun(name:System.String):System.Boolean
---@param nameID System.Int32
---@return System.Boolean
function UnityEngine.Material:HasProperty(nameID)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Material:EnableKeyword(keyword)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Material:DisableKeyword(keyword)end
---@param keyword System.String
---@return System.Boolean
function UnityEngine.Material:IsKeywordEnabled(keyword)end
---@param passName System.String
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Material:SetShaderPassEnabled(passName, enabled)end
---@param passName System.String
---@return System.Boolean
function UnityEngine.Material:GetShaderPassEnabled(passName)end
---@param pass System.Int32
---@return System.String
function UnityEngine.Material:GetPassName(pass)end
---@param passName System.String
---@return System.Int32
function UnityEngine.Material:FindPass(passName)end
---@param tag System.String
---@param val System.String
---@return System.Void
function UnityEngine.Material:SetOverrideTag(tag, val)end
---@overload fun(tag:System.String, searchFallbacks:System.Boolean, defaultValue:System.String):System.String
---@param tag System.String
---@param searchFallbacks System.Boolean
---@return System.String
function UnityEngine.Material:GetTag(tag, searchFallbacks)end
---@param start UnityEngine.Material
---@param _end UnityEngine.Material
---@param t System.Single
---@return System.Void
function UnityEngine.Material:Lerp(start, _end, t)end
---@param pass System.Int32
---@return System.Boolean
function UnityEngine.Material:SetPass(pass)end
---@param mat UnityEngine.Material
---@return System.Void
function UnityEngine.Material:CopyPropertiesFromMaterial(mat)end
---@overload fun(outNames:System.Collections.Generic.List):System.Void
---@return System.String[]
function UnityEngine.Material:GetTexturePropertyNames()end
---@overload fun(outNames:System.Collections.Generic.List):System.Void
---@return System.Int32[]
function UnityEngine.Material:GetTexturePropertyNameIDs()end
---@overload fun(name:System.String, value:System.Single):System.Void
---@param nameID System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Material:SetFloat(nameID, value)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param nameID System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.Material:SetInt(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Color):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.Material:SetColor(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.Material:SetVector(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Material:SetMatrix(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Texture):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Texture
---@return System.Void
function UnityEngine.Material:SetTexture(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.ComputeBuffer):System.Void
---@param nameID System.Int32
---@param value UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Material:SetBuffer(nameID, value)end
---@overload fun(nameID:System.Int32, values:System.Single[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Single[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Material:SetFloatArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Color[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Color[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Material:SetColorArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Vector4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Material:SetVectorArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:UnityEngine.Matrix4x4[]):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param nameID System.Int32
---@param values System.Collections.Generic.List
---@return System.Void
function UnityEngine.Material:SetMatrixArray(nameID, values)end
---@overload fun(name:System.String):System.Single
---@param nameID System.Int32
---@return System.Single
function UnityEngine.Material:GetFloat(nameID)end
---@overload fun(name:System.String):System.Int32
---@param nameID System.Int32
---@return System.Int32
function UnityEngine.Material:GetInt(nameID)end
---@overload fun(name:System.String):UnityEngine.Color
---@param nameID System.Int32
---@return UnityEngine.Color
function UnityEngine.Material:GetColor(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4
---@param nameID System.Int32
---@return UnityEngine.Vector4
function UnityEngine.Material:GetVector(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4
function UnityEngine.Material:GetMatrix(nameID)end
---@overload fun(name:System.String):UnityEngine.Texture
---@param nameID System.Int32
---@return UnityEngine.Texture
function UnityEngine.Material:GetTexture(nameID)end
---@overload fun(name:System.String):System.Single[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return System.Single[]
function UnityEngine.Material:GetFloatArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Color[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Color[]
function UnityEngine.Material:GetColorArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Vector4[]
function UnityEngine.Material:GetVectorArray(nameID)end
---@overload fun(name:System.String):UnityEngine.Matrix4x4[]
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(name:System.String, values:System.Collections.Generic.List):System.Void
---@param nameID System.Int32
---@return UnityEngine.Matrix4x4[]
function UnityEngine.Material:GetMatrixArray(nameID)end
---@overload fun(name:System.String, value:UnityEngine.Vector2):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector2
---@return System.Void
function UnityEngine.Material:SetTextureOffset(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector2):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector2
---@return System.Void
function UnityEngine.Material:SetTextureScale(nameID, value)end
---@overload fun(name:System.String):UnityEngine.Vector2
---@param nameID System.Int32
---@return UnityEngine.Vector2
function UnityEngine.Material:GetTextureOffset(nameID)end
---@overload fun(name:System.String):UnityEngine.Vector2
---@param nameID System.Int32
---@return UnityEngine.Vector2
function UnityEngine.Material:GetTextureScale(nameID)end
---@class UnityEngine.OcclusionPortal : UnityEngine.Component
---@field public open System.Boolean @ setter getter
UnityEngine.OcclusionPortal = {}
---@type UnityEngine.OcclusionPortal
CS.UnityEngine.OcclusionPortal = UnityEngine.OcclusionPortal

---@class UnityEngine.OcclusionArea : UnityEngine.Component
---@field public center UnityEngine.Vector3 @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
UnityEngine.OcclusionArea = {}
---@type UnityEngine.OcclusionArea
CS.UnityEngine.OcclusionArea = UnityEngine.OcclusionArea

---@class UnityEngine.Flare : UnityEngine.Object
UnityEngine.Flare = {}
---@type UnityEngine.Flare
CS.UnityEngine.Flare = UnityEngine.Flare

---@class UnityEngine.LensFlare : UnityEngine.Behaviour
---@field public brightness System.Single @ setter getter
---@field public fadeSpeed System.Single @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public flare UnityEngine.Flare @ setter getter
UnityEngine.LensFlare = {}
---@type UnityEngine.LensFlare
CS.UnityEngine.LensFlare = UnityEngine.LensFlare

---@class UnityEngine.LightBakingOutput : System.ValueType
---@field public probeOcclusionLightIndex System.Int32
---@field public occlusionMaskChannel System.Int32
---@field public lightmapBakeType UnityEngine.LightmapBakeType
---@field public mixedLightingMode UnityEngine.MixedLightingMode
---@field public isBaked System.Boolean
UnityEngine.LightBakingOutput = {}
---@type UnityEngine.LightBakingOutput
CS.UnityEngine.LightBakingOutput = UnityEngine.LightBakingOutput

---@class UnityEngine.LightShadowCasterMode : System.Enum
UnityEngine.LightShadowCasterMode = {}
---@type UnityEngine.LightShadowCasterMode
CS.UnityEngine.LightShadowCasterMode = UnityEngine.LightShadowCasterMode

---@return System.Int32 value:0
UnityEngine.LightShadowCasterMode.Default = 0
---@return System.Int32 value:1
UnityEngine.LightShadowCasterMode.NonLightmappedOnly = 1
---@return System.Int32 value:2
UnityEngine.LightShadowCasterMode.Everything = 2

---@class UnityEngine.Light : UnityEngine.Behaviour
---@field public type UnityEngine.LightType @ setter getter
---@field public spotAngle System.Single @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public colorTemperature System.Single @ setter getter
---@field public intensity System.Single @ setter getter
---@field public bounceIntensity System.Single @ setter getter
---@field public shadowCustomResolution System.Int32 @ setter getter
---@field public shadowBias System.Single @ setter getter
---@field public shadowNormalBias System.Single @ setter getter
---@field public shadowNearPlane System.Single @ setter getter
---@field public range System.Single @ setter getter
---@field public flare UnityEngine.Flare @ setter getter
---@field public bakingOutput UnityEngine.LightBakingOutput @ setter getter
---@field public cullingMask System.Int32 @ setter getter
---@field public lightShadowCasterMode UnityEngine.LightShadowCasterMode @ setter getter
---@field public shadowRadius System.Single @ setter getter
---@field public shadowAngle System.Single @ setter getter
---@field public shadows UnityEngine.LightShadows @ setter getter
---@field public shadowStrength System.Single @ setter getter
---@field public shadowResolution UnityEngine.Rendering.LightShadowResolution @ setter getter
---@field public shadowSoftness System.Single @ setter getter
---@field public shadowSoftnessFade System.Single @ setter getter
---@field public layerShadowCullDistances System.Single[] @ setter getter
---@field public cookieSize System.Single @ setter getter
---@field public cookie UnityEngine.Texture @ setter getter
---@field public renderMode UnityEngine.LightRenderMode @ setter getter
---@field public bakedIndex System.Int32 @ setter getter
---@field public areaSize UnityEngine.Vector2 @ setter getter
---@field public lightmapBakeType UnityEngine.LightmapBakeType @ setter getter
---@field public commandBufferCount System.Int32 @  getter
---@field public pixelLightCount System.Int32 @static setter getter
---@field public shadowConstantBias System.Single @ setter getter
---@field public shadowObjectSizeBias System.Single @ setter getter
---@field public attenuate System.Boolean @ setter getter
---@field public lightmappingMode UnityEngine.LightmappingMode @ setter getter
---@field public isBaked System.Boolean @  getter
---@field public alreadyLightmapped System.Boolean @ setter getter
UnityEngine.Light = {}
---@type UnityEngine.Light
CS.UnityEngine.Light = UnityEngine.Light

---@return System.Void
function UnityEngine.Light:Reset()end
---@return System.Void
function UnityEngine.Light:SetLightDirty()end
---@overload fun(evt:UnityEngine.Rendering.LightEvent, buffer:UnityEngine.Rendering.CommandBuffer, shadowPassMask:UnityEngine.Rendering.ShadowMapPass):System.Void
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Light:AddCommandBuffer(evt, buffer)end
---@overload fun(evt:UnityEngine.Rendering.LightEvent, buffer:UnityEngine.Rendering.CommandBuffer, shadowPassMask:UnityEngine.Rendering.ShadowMapPass, queueType:UnityEngine.Rendering.ComputeQueueType):System.Void
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
---@return System.Void
function UnityEngine.Light:AddCommandBufferAsync(evt, buffer, queueType)end
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Light:RemoveCommandBuffer(evt, buffer)end
---@param evt UnityEngine.Rendering.LightEvent
---@return System.Void
function UnityEngine.Light:RemoveCommandBuffers(evt)end
---@return System.Void
function UnityEngine.Light:RemoveAllCommandBuffers()end
---@param evt UnityEngine.Rendering.LightEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function UnityEngine.Light:GetCommandBuffers(evt)end
---@param type UnityEngine.LightType
---@param layer System.Int32
---@return UnityEngine.Light[]
function UnityEngine.Light.GetLights(type, layer)end
---@class UnityEngine.Skybox : UnityEngine.Behaviour
---@field public material UnityEngine.Material @ setter getter
UnityEngine.Skybox = {}
---@type UnityEngine.Skybox
CS.UnityEngine.Skybox = UnityEngine.Skybox

---@class UnityEngine.MeshFilter : UnityEngine.Component
---@field public sharedMesh UnityEngine.Mesh @ setter getter
---@field public mesh UnityEngine.Mesh @ setter getter
UnityEngine.MeshFilter = {}
---@type UnityEngine.MeshFilter
CS.UnityEngine.MeshFilter = UnityEngine.MeshFilter

---@class UnityEngine.RenderingPath : System.Enum
UnityEngine.RenderingPath = {}
---@type UnityEngine.RenderingPath
CS.UnityEngine.RenderingPath = UnityEngine.RenderingPath

---@return System.Int32 value:0
UnityEngine.RenderingPath.VertexLit = 0
---@return System.Int32 value:1
UnityEngine.RenderingPath.Forward = 1
---@return System.Int32 value:2
UnityEngine.RenderingPath.DeferredLighting = 2
---@return System.Int32 value:3
UnityEngine.RenderingPath.DeferredShading = 3

---@class UnityEngine.TransparencySortMode : System.Enum
UnityEngine.TransparencySortMode = {}
---@type UnityEngine.TransparencySortMode
CS.UnityEngine.TransparencySortMode = UnityEngine.TransparencySortMode

---@return System.Int32 value:0
UnityEngine.TransparencySortMode.Default = 0
---@return System.Int32 value:1
UnityEngine.TransparencySortMode.Perspective = 1
---@return System.Int32 value:2
UnityEngine.TransparencySortMode.Orthographic = 2
---@return System.Int32 value:3
UnityEngine.TransparencySortMode.CustomAxis = 3

---@class UnityEngine.StereoTargetEyeMask : System.Enum
UnityEngine.StereoTargetEyeMask = {}
---@type UnityEngine.StereoTargetEyeMask
CS.UnityEngine.StereoTargetEyeMask = UnityEngine.StereoTargetEyeMask

---@return System.Int32 value:0
UnityEngine.StereoTargetEyeMask.None = 0
---@return System.Int32 value:1
UnityEngine.StereoTargetEyeMask.Left = 1
---@return System.Int32 value:2
UnityEngine.StereoTargetEyeMask.Right = 2
---@return System.Int32 value:3
UnityEngine.StereoTargetEyeMask.Both = 3

---@class UnityEngine.CameraType : System.Enum
UnityEngine.CameraType = {}
---@type UnityEngine.CameraType
CS.UnityEngine.CameraType = UnityEngine.CameraType

---@return System.Int32 value:1
UnityEngine.CameraType.Game = 1
---@return System.Int32 value:2
UnityEngine.CameraType.SceneView = 2
---@return System.Int32 value:4
UnityEngine.CameraType.Preview = 4

---@class UnityEngine.ComputeBufferType : System.Enum
UnityEngine.ComputeBufferType = {}
---@type UnityEngine.ComputeBufferType
CS.UnityEngine.ComputeBufferType = UnityEngine.ComputeBufferType

---@return System.Int32 value:0
UnityEngine.ComputeBufferType.Default = 0
---@return System.Int32 value:1
UnityEngine.ComputeBufferType.Raw = 1
---@return System.Int32 value:2
UnityEngine.ComputeBufferType.Append = 2
---@return System.Int32 value:4
UnityEngine.ComputeBufferType.Counter = 4

---@class UnityEngine.LightType : System.Enum
UnityEngine.LightType = {}
---@type UnityEngine.LightType
CS.UnityEngine.LightType = UnityEngine.LightType

---@return System.Int32 value:0
UnityEngine.LightType.Spot = 0
---@return System.Int32 value:1
UnityEngine.LightType.Directional = 1
---@return System.Int32 value:2
UnityEngine.LightType.Point = 2
---@return System.Int32 value:3
UnityEngine.LightType.Rectangle = 3
---@return System.Int32 value:4
UnityEngine.LightType.Disc = 4

---@class UnityEngine.LightRenderMode : System.Enum
UnityEngine.LightRenderMode = {}
---@type UnityEngine.LightRenderMode
CS.UnityEngine.LightRenderMode = UnityEngine.LightRenderMode

---@return System.Int32 value:0
UnityEngine.LightRenderMode.Auto = 0
---@return System.Int32 value:1
UnityEngine.LightRenderMode.ForcePixel = 1
---@return System.Int32 value:2
UnityEngine.LightRenderMode.ForceVertex = 2

---@class UnityEngine.LightShadows : System.Enum
UnityEngine.LightShadows = {}
---@type UnityEngine.LightShadows
CS.UnityEngine.LightShadows = UnityEngine.LightShadows

---@return System.Int32 value:0
UnityEngine.LightShadows.None = 0
---@return System.Int32 value:1
UnityEngine.LightShadows.Hard = 1
---@return System.Int32 value:2
UnityEngine.LightShadows.Soft = 2

---@class UnityEngine.FogMode : System.Enum
UnityEngine.FogMode = {}
---@type UnityEngine.FogMode
CS.UnityEngine.FogMode = UnityEngine.FogMode

---@return System.Int32 value:1
UnityEngine.FogMode.Linear = 1
---@return System.Int32 value:2
UnityEngine.FogMode.Exponential = 2

---@class UnityEngine.LightmapBakeType : System.Enum
UnityEngine.LightmapBakeType = {}
---@type UnityEngine.LightmapBakeType
CS.UnityEngine.LightmapBakeType = UnityEngine.LightmapBakeType

---@return System.Int32 value:1
UnityEngine.LightmapBakeType.Mixed = 1
---@return System.Int32 value:2
UnityEngine.LightmapBakeType.Baked = 2

---@class UnityEngine.MixedLightingMode : System.Enum
UnityEngine.MixedLightingMode = {}
---@type UnityEngine.MixedLightingMode
CS.UnityEngine.MixedLightingMode = UnityEngine.MixedLightingMode

---@return System.Int32 value:0
UnityEngine.MixedLightingMode.IndirectOnly = 0
---@return System.Int32 value:1
UnityEngine.MixedLightingMode.Subtractive = 1
---@return System.Int32 value:2
UnityEngine.MixedLightingMode.Shadowmask = 2

---@class UnityEngine.QualityLevel : System.Enum
UnityEngine.QualityLevel = {}
---@type UnityEngine.QualityLevel
CS.UnityEngine.QualityLevel = UnityEngine.QualityLevel

---@return System.Int32 value:0
UnityEngine.QualityLevel.Fastest = 0
---@return System.Int32 value:1
UnityEngine.QualityLevel.Fast = 1
---@return System.Int32 value:2
UnityEngine.QualityLevel.Simple = 2
---@return System.Int32 value:3
UnityEngine.QualityLevel.Good = 3
---@return System.Int32 value:4
UnityEngine.QualityLevel.Beautiful = 4
---@return System.Int32 value:5
UnityEngine.QualityLevel.Fantastic = 5

---@class UnityEngine.ShadowProjection : System.Enum
UnityEngine.ShadowProjection = {}
---@type UnityEngine.ShadowProjection
CS.UnityEngine.ShadowProjection = UnityEngine.ShadowProjection

---@return System.Int32 value:0
UnityEngine.ShadowProjection.CloseFit = 0
---@return System.Int32 value:1
UnityEngine.ShadowProjection.StableFit = 1

---@class UnityEngine.ShadowQuality : System.Enum
UnityEngine.ShadowQuality = {}
---@type UnityEngine.ShadowQuality
CS.UnityEngine.ShadowQuality = UnityEngine.ShadowQuality

---@return System.Int32 value:0
UnityEngine.ShadowQuality.Disable = 0
---@return System.Int32 value:1
UnityEngine.ShadowQuality.HardOnly = 1
---@return System.Int32 value:2
UnityEngine.ShadowQuality.All = 2

---@class UnityEngine.ShadowResolution : System.Enum
UnityEngine.ShadowResolution = {}
---@type UnityEngine.ShadowResolution
CS.UnityEngine.ShadowResolution = UnityEngine.ShadowResolution

---@return System.Int32 value:0
UnityEngine.ShadowResolution.Low = 0
---@return System.Int32 value:1
UnityEngine.ShadowResolution.Medium = 1
---@return System.Int32 value:2
UnityEngine.ShadowResolution.High = 2
---@return System.Int32 value:3
UnityEngine.ShadowResolution.VeryHigh = 3

---@class UnityEngine.ShadowmaskMode : System.Enum
UnityEngine.ShadowmaskMode = {}
---@type UnityEngine.ShadowmaskMode
CS.UnityEngine.ShadowmaskMode = UnityEngine.ShadowmaskMode

---@return System.Int32 value:0
UnityEngine.ShadowmaskMode.Shadowmask = 0
---@return System.Int32 value:1
UnityEngine.ShadowmaskMode.DistanceShadowmask = 1

---@class UnityEngine.CameraClearFlags : System.Enum
UnityEngine.CameraClearFlags = {}
---@type UnityEngine.CameraClearFlags
CS.UnityEngine.CameraClearFlags = UnityEngine.CameraClearFlags

---@return System.Int32 value:1
UnityEngine.CameraClearFlags.Skybox = 1
---@return System.Int32 value:2
UnityEngine.CameraClearFlags.SolidColor = 2
---@return System.Int32 value:3
UnityEngine.CameraClearFlags.Depth = 3
---@return System.Int32 value:4
UnityEngine.CameraClearFlags.Nothing = 4

---@class UnityEngine.DepthTextureMode : System.Enum
UnityEngine.DepthTextureMode = {}
---@type UnityEngine.DepthTextureMode
CS.UnityEngine.DepthTextureMode = UnityEngine.DepthTextureMode

---@return System.Int32 value:0
UnityEngine.DepthTextureMode.None = 0
---@return System.Int32 value:1
UnityEngine.DepthTextureMode.Depth = 1
---@return System.Int32 value:2
UnityEngine.DepthTextureMode.DepthNormals = 2

---@class UnityEngine.TexGenMode : System.Enum
UnityEngine.TexGenMode = {}
---@type UnityEngine.TexGenMode
CS.UnityEngine.TexGenMode = UnityEngine.TexGenMode

---@return System.Int32 value:0
UnityEngine.TexGenMode.None = 0
---@return System.Int32 value:1
UnityEngine.TexGenMode.SphereMap = 1
---@return System.Int32 value:2
UnityEngine.TexGenMode.Object = 2
---@return System.Int32 value:3
UnityEngine.TexGenMode.EyeLinear = 3
---@return System.Int32 value:4
UnityEngine.TexGenMode.CubeReflect = 4
---@return System.Int32 value:5
UnityEngine.TexGenMode.CubeNormal = 5

---@class UnityEngine.AnisotropicFiltering : System.Enum
UnityEngine.AnisotropicFiltering = {}
---@type UnityEngine.AnisotropicFiltering
CS.UnityEngine.AnisotropicFiltering = UnityEngine.AnisotropicFiltering

---@return System.Int32 value:0
UnityEngine.AnisotropicFiltering.Disable = 0
---@return System.Int32 value:1
UnityEngine.AnisotropicFiltering.Enable = 1
---@return System.Int32 value:2
UnityEngine.AnisotropicFiltering.ForceEnable = 2

---@class UnityEngine.BlendWeights : System.Enum
UnityEngine.BlendWeights = {}
---@type UnityEngine.BlendWeights
CS.UnityEngine.BlendWeights = UnityEngine.BlendWeights

---@return System.Int32 value:1
UnityEngine.BlendWeights.OneBone = 1
---@return System.Int32 value:2
UnityEngine.BlendWeights.TwoBones = 2

---@class UnityEngine.MeshTopology : System.Enum
UnityEngine.MeshTopology = {}
---@type UnityEngine.MeshTopology
CS.UnityEngine.MeshTopology = UnityEngine.MeshTopology

---@return System.Int32 value:0
UnityEngine.MeshTopology.Triangles = 0
---@return System.Int32 value:2
UnityEngine.MeshTopology.Quads = 2
---@return System.Int32 value:3
UnityEngine.MeshTopology.Lines = 3
---@return System.Int32 value:4
UnityEngine.MeshTopology.LineStrip = 4

---@class UnityEngine.SkinQuality : System.Enum
UnityEngine.SkinQuality = {}
---@type UnityEngine.SkinQuality
CS.UnityEngine.SkinQuality = UnityEngine.SkinQuality

---@return System.Int32 value:0
UnityEngine.SkinQuality.Auto = 0
---@return System.Int32 value:1
UnityEngine.SkinQuality.Bone1 = 1
---@return System.Int32 value:2
UnityEngine.SkinQuality.Bone2 = 2

---@class UnityEngine.ColorSpace : System.Enum
UnityEngine.ColorSpace = {}
---@type UnityEngine.ColorSpace
CS.UnityEngine.ColorSpace = UnityEngine.ColorSpace

---@return System.Int32 value:0
UnityEngine.ColorSpace.Gamma = 0
---@return System.Int32 value:1
UnityEngine.ColorSpace.Linear = 1

---@class UnityEngine.ColorGamut : System.Enum
UnityEngine.ColorGamut = {}
---@type UnityEngine.ColorGamut
CS.UnityEngine.ColorGamut = UnityEngine.ColorGamut

---@return System.Int32 value:0
UnityEngine.ColorGamut.sRGB = 0
---@return System.Int32 value:1
UnityEngine.ColorGamut.Rec709 = 1
---@return System.Int32 value:2
UnityEngine.ColorGamut.Rec2020 = 2
---@return System.Int32 value:3
UnityEngine.ColorGamut.DisplayP3 = 3
---@return System.Int32 value:4
UnityEngine.ColorGamut.HDR10 = 4
---@return System.Int32 value:5
UnityEngine.ColorGamut.DolbyHDR = 5

---@class UnityEngine.ScreenOrientation : System.Enum
UnityEngine.ScreenOrientation = {}
---@type UnityEngine.ScreenOrientation
CS.UnityEngine.ScreenOrientation = UnityEngine.ScreenOrientation

---@return System.Int32 value:0
UnityEngine.ScreenOrientation.Unknown = 0
---@return System.Int32 value:1
UnityEngine.ScreenOrientation.Portrait = 1
---@return System.Int32 value:2
UnityEngine.ScreenOrientation.PortraitUpsideDown = 2
---@return System.Int32 value:3
UnityEngine.ScreenOrientation.LandscapeLeft = 3
---@return System.Int32 value:4
UnityEngine.ScreenOrientation.LandscapeRight = 4
---@return System.Int32 value:5
UnityEngine.ScreenOrientation.AutoRotation = 5

---@class UnityEngine.FilterMode : System.Enum
UnityEngine.FilterMode = {}
---@type UnityEngine.FilterMode
CS.UnityEngine.FilterMode = UnityEngine.FilterMode

---@return System.Int32 value:0
UnityEngine.FilterMode.Point = 0
---@return System.Int32 value:1
UnityEngine.FilterMode.Bilinear = 1
---@return System.Int32 value:2
UnityEngine.FilterMode.Trilinear = 2

---@class UnityEngine.TextureWrapMode : System.Enum
UnityEngine.TextureWrapMode = {}
---@type UnityEngine.TextureWrapMode
CS.UnityEngine.TextureWrapMode = UnityEngine.TextureWrapMode

---@return System.Int32 value:0
UnityEngine.TextureWrapMode.Repeat = 0
---@return System.Int32 value:1
UnityEngine.TextureWrapMode.Clamp = 1
---@return System.Int32 value:2
UnityEngine.TextureWrapMode.Mirror = 2
---@return System.Int32 value:3
UnityEngine.TextureWrapMode.MirrorOnce = 3

---@class UnityEngine.NPOTSupport : System.Enum
UnityEngine.NPOTSupport = {}
---@type UnityEngine.NPOTSupport
CS.UnityEngine.NPOTSupport = UnityEngine.NPOTSupport

---@return System.Int32 value:0
UnityEngine.NPOTSupport.None = 0
---@return System.Int32 value:1
UnityEngine.NPOTSupport.Restricted = 1
---@return System.Int32 value:2
UnityEngine.NPOTSupport.Full = 2

---@class UnityEngine.TextureFormat : System.Enum
UnityEngine.TextureFormat = {}
---@type UnityEngine.TextureFormat
CS.UnityEngine.TextureFormat = UnityEngine.TextureFormat

---@return System.Int32 value:1
UnityEngine.TextureFormat.Alpha8 = 1
---@return System.Int32 value:2
UnityEngine.TextureFormat.ARGB4444 = 2
---@return System.Int32 value:3
UnityEngine.TextureFormat.RGB24 = 3
---@return System.Int32 value:4
UnityEngine.TextureFormat.RGBA32 = 4
---@return System.Int32 value:5
UnityEngine.TextureFormat.ARGB32 = 5
---@return System.Int32 value:7
UnityEngine.TextureFormat.RGB565 = 7
---@return System.Int32 value:9
UnityEngine.TextureFormat.R16 = 9
---@return System.Int32 value:10
UnityEngine.TextureFormat.DXT1 = 10
---@return System.Int32 value:12
UnityEngine.TextureFormat.DXT5 = 12
---@return System.Int32 value:13
UnityEngine.TextureFormat.RGBA4444 = 13
---@return System.Int32 value:14
UnityEngine.TextureFormat.BGRA32 = 14
---@return System.Int32 value:15
UnityEngine.TextureFormat.RHalf = 15
---@return System.Int32 value:16
UnityEngine.TextureFormat.RGHalf = 16
---@return System.Int32 value:17
UnityEngine.TextureFormat.RGBAHalf = 17
---@return System.Int32 value:18
UnityEngine.TextureFormat.RFloat = 18
---@return System.Int32 value:19
UnityEngine.TextureFormat.RGFloat = 19
---@return System.Int32 value:20
UnityEngine.TextureFormat.RGBAFloat = 20
---@return System.Int32 value:21
UnityEngine.TextureFormat.YUY2 = 21
---@return System.Int32 value:22
UnityEngine.TextureFormat.RGB9e5Float = 22
---@return System.Int32 value:24
UnityEngine.TextureFormat.BC6H = 24
---@return System.Int32 value:25
UnityEngine.TextureFormat.BC7 = 25
---@return System.Int32 value:26
UnityEngine.TextureFormat.BC4 = 26
---@return System.Int32 value:27
UnityEngine.TextureFormat.BC5 = 27
---@return System.Int32 value:28
UnityEngine.TextureFormat.DXT1Crunched = 28
---@return System.Int32 value:29
UnityEngine.TextureFormat.DXT5Crunched = 29
---@return System.Int32 value:30
UnityEngine.TextureFormat.PVRTC_RGB2 = 30
---@return System.Int32 value:31
UnityEngine.TextureFormat.PVRTC_RGBA2 = 31
---@return System.Int32 value:32
UnityEngine.TextureFormat.PVRTC_RGB4 = 32
---@return System.Int32 value:33
UnityEngine.TextureFormat.PVRTC_RGBA4 = 33
---@return System.Int32 value:34
UnityEngine.TextureFormat.ETC_RGB4 = 34
---@return System.Int32 value:41
UnityEngine.TextureFormat.EAC_R = 41
---@return System.Int32 value:42
UnityEngine.TextureFormat.EAC_R_SIGNED = 42
---@return System.Int32 value:43
UnityEngine.TextureFormat.EAC_RG = 43
---@return System.Int32 value:44
UnityEngine.TextureFormat.EAC_RG_SIGNED = 44
---@return System.Int32 value:45
UnityEngine.TextureFormat.ETC2_RGB = 45
---@return System.Int32 value:46
UnityEngine.TextureFormat.ETC2_RGBA1 = 46
---@return System.Int32 value:47
UnityEngine.TextureFormat.ETC2_RGBA8 = 47
---@return System.Int32 value:48
UnityEngine.TextureFormat.ASTC_RGB_4x4 = 48
---@return System.Int32 value:49
UnityEngine.TextureFormat.ASTC_RGB_5x5 = 49
---@return System.Int32 value:50
UnityEngine.TextureFormat.ASTC_RGB_6x6 = 50
---@return System.Int32 value:51
UnityEngine.TextureFormat.ASTC_RGB_8x8 = 51
---@return System.Int32 value:52
UnityEngine.TextureFormat.ASTC_RGB_10x10 = 52
---@return System.Int32 value:53
UnityEngine.TextureFormat.ASTC_RGB_12x12 = 53
---@return System.Int32 value:54
UnityEngine.TextureFormat.ASTC_RGBA_4x4 = 54
---@return System.Int32 value:55
UnityEngine.TextureFormat.ASTC_RGBA_5x5 = 55
---@return System.Int32 value:56
UnityEngine.TextureFormat.ASTC_RGBA_6x6 = 56
---@return System.Int32 value:57
UnityEngine.TextureFormat.ASTC_RGBA_8x8 = 57
---@return System.Int32 value:58
UnityEngine.TextureFormat.ASTC_RGBA_10x10 = 58
---@return System.Int32 value:59
UnityEngine.TextureFormat.ASTC_RGBA_12x12 = 59
---@return System.Int32 value:60
UnityEngine.TextureFormat.ETC_RGB4_3DS = 60

---@class UnityEngine.CubemapFace : System.Enum
UnityEngine.CubemapFace = {}
---@type UnityEngine.CubemapFace
CS.UnityEngine.CubemapFace = UnityEngine.CubemapFace

---@return System.Int32 value:0
UnityEngine.CubemapFace.PositiveX = 0
---@return System.Int32 value:1
UnityEngine.CubemapFace.NegativeX = 1
---@return System.Int32 value:2
UnityEngine.CubemapFace.PositiveY = 2
---@return System.Int32 value:3
UnityEngine.CubemapFace.NegativeY = 3
---@return System.Int32 value:4
UnityEngine.CubemapFace.PositiveZ = 4
---@return System.Int32 value:5
UnityEngine.CubemapFace.NegativeZ = 5

---@class UnityEngine.RenderTextureFormat : System.Enum
UnityEngine.RenderTextureFormat = {}
---@type UnityEngine.RenderTextureFormat
CS.UnityEngine.RenderTextureFormat = UnityEngine.RenderTextureFormat

---@return System.Int32 value:0
UnityEngine.RenderTextureFormat.ARGB32 = 0
---@return System.Int32 value:1
UnityEngine.RenderTextureFormat.Depth = 1
---@return System.Int32 value:2
UnityEngine.RenderTextureFormat.ARGBHalf = 2
---@return System.Int32 value:3
UnityEngine.RenderTextureFormat.Shadowmap = 3
---@return System.Int32 value:4
UnityEngine.RenderTextureFormat.RGB565 = 4
---@return System.Int32 value:5
UnityEngine.RenderTextureFormat.ARGB4444 = 5
---@return System.Int32 value:6
UnityEngine.RenderTextureFormat.ARGB1555 = 6
---@return System.Int32 value:7
UnityEngine.RenderTextureFormat.Default = 7
---@return System.Int32 value:8
UnityEngine.RenderTextureFormat.ARGB2101010 = 8
---@return System.Int32 value:9
UnityEngine.RenderTextureFormat.DefaultHDR = 9
---@return System.Int32 value:10
UnityEngine.RenderTextureFormat.ARGB64 = 10
---@return System.Int32 value:11
UnityEngine.RenderTextureFormat.ARGBFloat = 11
---@return System.Int32 value:12
UnityEngine.RenderTextureFormat.RGFloat = 12
---@return System.Int32 value:13
UnityEngine.RenderTextureFormat.RGHalf = 13
---@return System.Int32 value:14
UnityEngine.RenderTextureFormat.RFloat = 14
---@return System.Int32 value:15
UnityEngine.RenderTextureFormat.RHalf = 15
---@return System.Int32 value:16
UnityEngine.RenderTextureFormat.R8 = 16
---@return System.Int32 value:17
UnityEngine.RenderTextureFormat.ARGBInt = 17
---@return System.Int32 value:18
UnityEngine.RenderTextureFormat.RGInt = 18
---@return System.Int32 value:19
UnityEngine.RenderTextureFormat.RInt = 19
---@return System.Int32 value:20
UnityEngine.RenderTextureFormat.BGRA32 = 20
---@return System.Int32 value:22
UnityEngine.RenderTextureFormat.RGB111110Float = 22
---@return System.Int32 value:23
UnityEngine.RenderTextureFormat.RG32 = 23
---@return System.Int32 value:24
UnityEngine.RenderTextureFormat.RGBAUShort = 24
---@return System.Int32 value:25
UnityEngine.RenderTextureFormat.RG16 = 25
---@return System.Int32 value:26
UnityEngine.RenderTextureFormat.BGRA10101010_XR = 26
---@return System.Int32 value:27
UnityEngine.RenderTextureFormat.BGR101010_XR = 27

---@class UnityEngine.VRTextureUsage : System.Enum
UnityEngine.VRTextureUsage = {}
---@type UnityEngine.VRTextureUsage
CS.UnityEngine.VRTextureUsage = UnityEngine.VRTextureUsage

---@return System.Int32 value:0
UnityEngine.VRTextureUsage.None = 0
---@return System.Int32 value:1
UnityEngine.VRTextureUsage.OneEye = 1
---@return System.Int32 value:2
UnityEngine.VRTextureUsage.TwoEyes = 2

---@class UnityEngine.RenderTextureCreationFlags : System.Enum
UnityEngine.RenderTextureCreationFlags = {}
---@type UnityEngine.RenderTextureCreationFlags
CS.UnityEngine.RenderTextureCreationFlags = UnityEngine.RenderTextureCreationFlags

---@return System.Int32 value:1
UnityEngine.RenderTextureCreationFlags.MipMap = 1
---@return System.Int32 value:2
UnityEngine.RenderTextureCreationFlags.AutoGenerateMips = 2
---@return System.Int32 value:4
UnityEngine.RenderTextureCreationFlags.SRGB = 4
---@return System.Int32 value:8
UnityEngine.RenderTextureCreationFlags.EyeTexture = 8

---@class UnityEngine.RenderTextureReadWrite : System.Enum
UnityEngine.RenderTextureReadWrite = {}
---@type UnityEngine.RenderTextureReadWrite
CS.UnityEngine.RenderTextureReadWrite = UnityEngine.RenderTextureReadWrite

---@return System.Int32 value:0
UnityEngine.RenderTextureReadWrite.Default = 0
---@return System.Int32 value:1
UnityEngine.RenderTextureReadWrite.Linear = 1
---@return System.Int32 value:2
UnityEngine.RenderTextureReadWrite.sRGB = 2

---@class UnityEngine.RenderTextureMemoryless : System.Enum
UnityEngine.RenderTextureMemoryless = {}
---@type UnityEngine.RenderTextureMemoryless
CS.UnityEngine.RenderTextureMemoryless = UnityEngine.RenderTextureMemoryless

---@return System.Int32 value:0
UnityEngine.RenderTextureMemoryless.None = 0
---@return System.Int32 value:1
UnityEngine.RenderTextureMemoryless.Color = 1
---@return System.Int32 value:2
UnityEngine.RenderTextureMemoryless.Depth = 2

---@class UnityEngine.LightmapsMode : System.Enum
UnityEngine.LightmapsMode = {}
---@type UnityEngine.LightmapsMode
CS.UnityEngine.LightmapsMode = UnityEngine.LightmapsMode

---@return System.Int32 value:0
UnityEngine.LightmapsMode.NonDirectional = 0
---@return System.Int32 value:1
UnityEngine.LightmapsMode.CombinedDirectional = 1
---@return System.Int32 value:2
UnityEngine.LightmapsMode.SeparateDirectional = 2

---@class UnityEngine.MaterialGlobalIlluminationFlags : System.Enum
UnityEngine.MaterialGlobalIlluminationFlags = {}
---@type UnityEngine.MaterialGlobalIlluminationFlags
CS.UnityEngine.MaterialGlobalIlluminationFlags = UnityEngine.MaterialGlobalIlluminationFlags

---@return System.Int32 value:0
UnityEngine.MaterialGlobalIlluminationFlags.None = 0
---@return System.Int32 value:1
UnityEngine.MaterialGlobalIlluminationFlags.RealtimeEmissive = 1
---@return System.Int32 value:2
UnityEngine.MaterialGlobalIlluminationFlags.BakedEmissive = 2
---@return System.Int32 value:3
UnityEngine.MaterialGlobalIlluminationFlags.AnyEmissive = 3
---@return System.Int32 value:4
UnityEngine.MaterialGlobalIlluminationFlags.EmissiveIsBlack = 4

---@class UnityEngine.LightProbeProxyVolume : UnityEngine.Behaviour
---@field public isFeatureSupported System.Boolean @static  getter
---@field public boundsGlobal UnityEngine.Bounds @  getter
---@field public sizeCustom UnityEngine.Vector3 @ setter getter
---@field public originCustom UnityEngine.Vector3 @ setter getter
---@field public probeDensity System.Single @ setter getter
---@field public gridResolutionX System.Int32 @ setter getter
---@field public gridResolutionY System.Int32 @ setter getter
---@field public gridResolutionZ System.Int32 @ setter getter
---@field public boundingBoxMode UnityEngine.LightProbeProxyVolume.BoundingBoxMode @ setter getter
---@field public resolutionMode UnityEngine.LightProbeProxyVolume.ResolutionMode @ setter getter
---@field public probePositionMode UnityEngine.LightProbeProxyVolume.ProbePositionMode @ setter getter
---@field public refreshMode UnityEngine.LightProbeProxyVolume.RefreshMode @ setter getter
---@field public qualityMode UnityEngine.LightProbeProxyVolume.QualityMode @ setter getter
UnityEngine.LightProbeProxyVolume = {}
---@type UnityEngine.LightProbeProxyVolume
CS.UnityEngine.LightProbeProxyVolume = UnityEngine.LightProbeProxyVolume

---@return System.Void
function UnityEngine.LightProbeProxyVolume:Update()end
---@class UnityEngine.LightProbeProxyVolume.ResolutionMode : System.Enum
UnityEngine.LightProbeProxyVolume.ResolutionMode = {}
---@type UnityEngine.LightProbeProxyVolume.ResolutionMode
CS.UnityEngine.LightProbeProxyVolume.ResolutionMode = UnityEngine.LightProbeProxyVolume.ResolutionMode

---@return System.Int32 value:0
UnityEngine.LightProbeProxyVolume.ResolutionMode.Automatic = 0
---@return System.Int32 value:1
UnityEngine.LightProbeProxyVolume.ResolutionMode.Custom = 1

---@class UnityEngine.LightProbeProxyVolume.BoundingBoxMode : System.Enum
UnityEngine.LightProbeProxyVolume.BoundingBoxMode = {}
---@type UnityEngine.LightProbeProxyVolume.BoundingBoxMode
CS.UnityEngine.LightProbeProxyVolume.BoundingBoxMode = UnityEngine.LightProbeProxyVolume.BoundingBoxMode

---@return System.Int32 value:0
UnityEngine.LightProbeProxyVolume.BoundingBoxMode.AutomaticLocal = 0
---@return System.Int32 value:1
UnityEngine.LightProbeProxyVolume.BoundingBoxMode.AutomaticWorld = 1
---@return System.Int32 value:2
UnityEngine.LightProbeProxyVolume.BoundingBoxMode.Custom = 2

---@class UnityEngine.LightProbeProxyVolume.ProbePositionMode : System.Enum
UnityEngine.LightProbeProxyVolume.ProbePositionMode = {}
---@type UnityEngine.LightProbeProxyVolume.ProbePositionMode
CS.UnityEngine.LightProbeProxyVolume.ProbePositionMode = UnityEngine.LightProbeProxyVolume.ProbePositionMode

---@return System.Int32 value:0
UnityEngine.LightProbeProxyVolume.ProbePositionMode.CellCorner = 0
---@return System.Int32 value:1
UnityEngine.LightProbeProxyVolume.ProbePositionMode.CellCenter = 1

---@class UnityEngine.LightProbeProxyVolume.RefreshMode : System.Enum
UnityEngine.LightProbeProxyVolume.RefreshMode = {}
---@type UnityEngine.LightProbeProxyVolume.RefreshMode
CS.UnityEngine.LightProbeProxyVolume.RefreshMode = UnityEngine.LightProbeProxyVolume.RefreshMode

---@return System.Int32 value:0
UnityEngine.LightProbeProxyVolume.RefreshMode.Automatic = 0
---@return System.Int32 value:1
UnityEngine.LightProbeProxyVolume.RefreshMode.EveryFrame = 1
---@return System.Int32 value:2
UnityEngine.LightProbeProxyVolume.RefreshMode.ViaScripting = 2

---@class UnityEngine.LightProbeProxyVolume.QualityMode : System.Enum
UnityEngine.LightProbeProxyVolume.QualityMode = {}
---@type UnityEngine.LightProbeProxyVolume.QualityMode
CS.UnityEngine.LightProbeProxyVolume.QualityMode = UnityEngine.LightProbeProxyVolume.QualityMode

---@return System.Int32 value:0
UnityEngine.LightProbeProxyVolume.QualityMode.Low = 0
---@return System.Int32 value:1
UnityEngine.LightProbeProxyVolume.QualityMode.Normal = 1

---@class UnityEngine.CustomRenderTextureInitializationSource : System.Enum
UnityEngine.CustomRenderTextureInitializationSource = {}
---@type UnityEngine.CustomRenderTextureInitializationSource
CS.UnityEngine.CustomRenderTextureInitializationSource = UnityEngine.CustomRenderTextureInitializationSource

---@return System.Int32 value:0
UnityEngine.CustomRenderTextureInitializationSource.TextureAndColor = 0
---@return System.Int32 value:1
UnityEngine.CustomRenderTextureInitializationSource.Material = 1

---@class UnityEngine.CustomRenderTextureUpdateMode : System.Enum
UnityEngine.CustomRenderTextureUpdateMode = {}
---@type UnityEngine.CustomRenderTextureUpdateMode
CS.UnityEngine.CustomRenderTextureUpdateMode = UnityEngine.CustomRenderTextureUpdateMode

---@return System.Int32 value:0
UnityEngine.CustomRenderTextureUpdateMode.OnLoad = 0
---@return System.Int32 value:1
UnityEngine.CustomRenderTextureUpdateMode.Realtime = 1
---@return System.Int32 value:2
UnityEngine.CustomRenderTextureUpdateMode.OnDemand = 2

---@class UnityEngine.CustomRenderTextureUpdateZoneSpace : System.Enum
UnityEngine.CustomRenderTextureUpdateZoneSpace = {}
---@type UnityEngine.CustomRenderTextureUpdateZoneSpace
CS.UnityEngine.CustomRenderTextureUpdateZoneSpace = UnityEngine.CustomRenderTextureUpdateZoneSpace

---@return System.Int32 value:0
UnityEngine.CustomRenderTextureUpdateZoneSpace.Normalized = 0
---@return System.Int32 value:1
UnityEngine.CustomRenderTextureUpdateZoneSpace.Pixel = 1

---@class UnityEngine.MotionVectorGenerationMode : System.Enum
UnityEngine.MotionVectorGenerationMode = {}
---@type UnityEngine.MotionVectorGenerationMode
CS.UnityEngine.MotionVectorGenerationMode = UnityEngine.MotionVectorGenerationMode

---@return System.Int32 value:0
UnityEngine.MotionVectorGenerationMode.Camera = 0
---@return System.Int32 value:1
UnityEngine.MotionVectorGenerationMode.Object = 1
---@return System.Int32 value:2
UnityEngine.MotionVectorGenerationMode.ForceNoMotion = 2

---@class UnityEngine.LineTextureMode : System.Enum
UnityEngine.LineTextureMode = {}
---@type UnityEngine.LineTextureMode
CS.UnityEngine.LineTextureMode = UnityEngine.LineTextureMode

---@return System.Int32 value:0
UnityEngine.LineTextureMode.Stretch = 0
---@return System.Int32 value:1
UnityEngine.LineTextureMode.Tile = 1
---@return System.Int32 value:2
UnityEngine.LineTextureMode.DistributePerSegment = 2
---@return System.Int32 value:3
UnityEngine.LineTextureMode.RepeatPerSegment = 3

---@class UnityEngine.LineAlignment : System.Enum
UnityEngine.LineAlignment = {}
---@type UnityEngine.LineAlignment
CS.UnityEngine.LineAlignment = UnityEngine.LineAlignment

---@return System.Int32 value:0
UnityEngine.LineAlignment.View = 0
---@return System.Int32 value:1
UnityEngine.LineAlignment.Local = 1

---@class UnityEngine.SkinnedMeshRenderer : UnityEngine.Renderer
---@field public quality UnityEngine.SkinQuality @ setter getter
---@field public updateWhenOffscreen System.Boolean @ setter getter
---@field public forceMatrixRecalculationPerRender System.Boolean @ setter getter
---@field public rootBone UnityEngine.Transform @ setter getter
---@field public bones UnityEngine.Transform[] @ setter getter
---@field public sharedMesh UnityEngine.Mesh @ setter getter
---@field public skinnedMotionVectors System.Boolean @ setter getter
---@field public localBounds UnityEngine.Bounds @ setter getter
UnityEngine.SkinnedMeshRenderer = {}
---@type UnityEngine.SkinnedMeshRenderer
CS.UnityEngine.SkinnedMeshRenderer = UnityEngine.SkinnedMeshRenderer

---@param index System.Int32
---@return System.Single
function UnityEngine.SkinnedMeshRenderer:GetBlendShapeWeight(index)end
---@param index System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.SkinnedMeshRenderer:SetBlendShapeWeight(index, value)end
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh)end
---@class UnityEngine.MeshRenderer : UnityEngine.Renderer
---@field public additionalVertexStreams UnityEngine.Mesh @ setter getter
---@field public subMeshStartIndex System.Int32 @  getter
UnityEngine.MeshRenderer = {}
---@type UnityEngine.MeshRenderer
CS.UnityEngine.MeshRenderer = UnityEngine.MeshRenderer

---@class UnityEngine.RectOffset : System.Object
---@field public left System.Int32 @ setter getter
---@field public right System.Int32 @ setter getter
---@field public top System.Int32 @ setter getter
---@field public bottom System.Int32 @ setter getter
---@field public horizontal System.Int32 @  getter
---@field public vertical System.Int32 @  getter
UnityEngine.RectOffset = {}
---@type UnityEngine.RectOffset
CS.UnityEngine.RectOffset = UnityEngine.RectOffset

---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.RectOffset:Add(rect)end
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.RectOffset:Remove(rect)end
---@return System.String
function UnityEngine.RectOffset:ToString()end
---@class UnityEngine.GUIElement : UnityEngine.Behaviour
UnityEngine.GUIElement = {}
---@type UnityEngine.GUIElement
CS.UnityEngine.GUIElement = UnityEngine.GUIElement

---@overload fun(screenPosition:UnityEngine.Vector3, camera:UnityEngine.Camera):System.Boolean
---@param screenPosition UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.GUIElement:HitTest(screenPosition)end
---@overload fun(camera:UnityEngine.Camera):UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIElement:GetScreenRect()end
---@class UnityEngine.GUITexture : UnityEngine.GUIElement
---@field public color UnityEngine.Color @ setter getter
---@field public texture UnityEngine.Texture @ setter getter
---@field public pixelInset UnityEngine.Rect @ setter getter
---@field public border UnityEngine.RectOffset @ setter getter
UnityEngine.GUITexture = {}
---@type UnityEngine.GUITexture
CS.UnityEngine.GUITexture = UnityEngine.GUITexture

---@class UnityEngine.GUILayer : UnityEngine.Behaviour
UnityEngine.GUILayer = {}
---@type UnityEngine.GUILayer
CS.UnityEngine.GUILayer = UnityEngine.GUILayer

---@param screenPosition UnityEngine.Vector3
---@return UnityEngine.GUIElement
function UnityEngine.GUILayer:HitTest(screenPosition)end
---@class UnityEngine.FullScreenMovieControlMode : System.Enum
UnityEngine.FullScreenMovieControlMode = {}
---@type UnityEngine.FullScreenMovieControlMode
CS.UnityEngine.FullScreenMovieControlMode = UnityEngine.FullScreenMovieControlMode

---@return System.Int32 value:0
UnityEngine.FullScreenMovieControlMode.Full = 0
---@return System.Int32 value:1
UnityEngine.FullScreenMovieControlMode.Minimal = 1
---@return System.Int32 value:2
UnityEngine.FullScreenMovieControlMode.CancelOnInput = 2
---@return System.Int32 value:3
UnityEngine.FullScreenMovieControlMode.Hidden = 3

---@class UnityEngine.FullScreenMovieScalingMode : System.Enum
UnityEngine.FullScreenMovieScalingMode = {}
---@type UnityEngine.FullScreenMovieScalingMode
CS.UnityEngine.FullScreenMovieScalingMode = UnityEngine.FullScreenMovieScalingMode

---@return System.Int32 value:0
UnityEngine.FullScreenMovieScalingMode.None = 0
---@return System.Int32 value:1
UnityEngine.FullScreenMovieScalingMode.AspectFit = 1
---@return System.Int32 value:2
UnityEngine.FullScreenMovieScalingMode.AspectFill = 2
---@return System.Int32 value:3
UnityEngine.FullScreenMovieScalingMode.Fill = 3

---@class UnityEngine.AndroidActivityIndicatorStyle : System.Enum
UnityEngine.AndroidActivityIndicatorStyle = {}
---@type UnityEngine.AndroidActivityIndicatorStyle
CS.UnityEngine.AndroidActivityIndicatorStyle = UnityEngine.AndroidActivityIndicatorStyle

---@return System.Int32 value:0
UnityEngine.AndroidActivityIndicatorStyle.Large = 0
---@return System.Int32 value:1
UnityEngine.AndroidActivityIndicatorStyle.InversedLarge = 1
---@return System.Int32 value:2
UnityEngine.AndroidActivityIndicatorStyle.Small = 2
---@return System.Int32 value:3
UnityEngine.AndroidActivityIndicatorStyle.InversedSmall = 3

---@class UnityEngine.Handheld : System.Object
---@field public use32BitDisplayBuffer System.Boolean @static setter getter
UnityEngine.Handheld = {}
---@type UnityEngine.Handheld
CS.UnityEngine.Handheld = UnityEngine.Handheld

---@overload fun(path:System.String, bgColor:UnityEngine.Color):System.Boolean
---@overload fun(path:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.FullScreenMovieControlMode):System.Boolean
---@overload fun(path:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.FullScreenMovieControlMode, scalingMode:UnityEngine.FullScreenMovieScalingMode):System.Boolean
---@param path System.String
---@return System.Boolean
function UnityEngine.Handheld.PlayFullScreenMovie(path)end
---@return System.Void
function UnityEngine.Handheld.Vibrate()end
---@overload fun(style:UnityEngine.AndroidActivityIndicatorStyle):System.Void
---@param style UnityEngine.iOS.ActivityIndicatorStyle
---@return System.Void
function UnityEngine.Handheld.SetActivityIndicatorStyle(style)end
---@return System.Int32
function UnityEngine.Handheld.GetActivityIndicatorStyle()end
---@return System.Void
function UnityEngine.Handheld.StartActivityIndicator()end
---@return System.Void
function UnityEngine.Handheld.StopActivityIndicator()end
---@return System.Void
function UnityEngine.Handheld.ClearShaderCache()end
---@class UnityEngine.TouchScreenKeyboard : System.Object
---@field public isSupported System.Boolean @static  getter
---@field public text System.String @ setter getter
---@field public hideInput System.Boolean @static setter getter
---@field public active System.Boolean @ setter getter
---@field public done System.Boolean @  getter
---@field public wasCanceled System.Boolean @  getter
---@field public status UnityEngine.TouchScreenKeyboard.Status @  getter
---@field public characterLimit System.Int32 @ setter getter
---@field public canGetSelection System.Boolean @  getter
---@field public canSetSelection System.Boolean @  getter
---@field public selection UnityEngine.RangeInt @ setter getter
---@field public type UnityEngine.TouchScreenKeyboardType @  getter
---@field public targetDisplay System.Int32 @ setter getter
---@field public area UnityEngine.Rect @static  getter
---@field public visible System.Boolean @static  getter
UnityEngine.TouchScreenKeyboard = {}
---@type UnityEngine.TouchScreenKeyboard
CS.UnityEngine.TouchScreenKeyboard = UnityEngine.TouchScreenKeyboard

---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean, multiline:System.Boolean):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean, multiline:System.Boolean, secure:System.Boolean):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean, multiline:System.Boolean, secure:System.Boolean, alert:System.Boolean):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean, multiline:System.Boolean, secure:System.Boolean, alert:System.Boolean, textPlaceholder:System.String):UnityEngine.TouchScreenKeyboard
---@overload fun(text:System.String, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:System.Boolean, multiline:System.Boolean, secure:System.Boolean, alert:System.Boolean, textPlaceholder:System.String, characterLimit:System.Int32):UnityEngine.TouchScreenKeyboard
---@param text System.String
---@return UnityEngine.TouchScreenKeyboard
function UnityEngine.TouchScreenKeyboard.Open(text)end
---@class UnityEngine.TouchScreenKeyboard.Status : System.Enum
UnityEngine.TouchScreenKeyboard.Status = {}
---@type UnityEngine.TouchScreenKeyboard.Status
CS.UnityEngine.TouchScreenKeyboard.Status = UnityEngine.TouchScreenKeyboard.Status

---@return System.Int32 value:0
UnityEngine.TouchScreenKeyboard.Status.Visible = 0
---@return System.Int32 value:1
UnityEngine.TouchScreenKeyboard.Status.Done = 1
---@return System.Int32 value:2
UnityEngine.TouchScreenKeyboard.Status.Canceled = 2
---@return System.Int32 value:3
UnityEngine.TouchScreenKeyboard.Status.LostFocus = 3

---@class UnityEngine.Hash128 : System.ValueType
---@field public isValid System.Boolean @  getter
UnityEngine.Hash128 = {}
---@type UnityEngine.Hash128
CS.UnityEngine.Hash128 = UnityEngine.Hash128

---@overload fun(obj:System.Object):System.Int32
---@param rhs UnityEngine.Hash128
---@return System.Int32
function UnityEngine.Hash128:CompareTo(rhs)end
---@return System.String
function UnityEngine.Hash128:ToString()end
---@param hashString System.String
---@return UnityEngine.Hash128
function UnityEngine.Hash128.Parse(hashString)end
---@param hashString System.String
---@return UnityEngine.Hash128
function UnityEngine.Hash128.Compute(hashString)end
---@overload fun(obj:UnityEngine.Hash128):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Hash128:Equals(obj)end
---@return System.Int32
function UnityEngine.Hash128:GetHashCode()end
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Hash128.op_Equality(hash1, hash2)end
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Hash128.op_Inequality(hash1, hash2)end
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Hash128.op_LessThan(x, y)end
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return System.Boolean
function UnityEngine.Hash128.op_GreaterThan(x, y)end
---@class UnityEngine.HashUtilities : System.Object
UnityEngine.HashUtilities = {}
---@type UnityEngine.HashUtilities
CS.UnityEngine.HashUtilities = UnityEngine.HashUtilities

---@param inHash UnityEngine.Hash128
---@param outHash UnityEngine.Hash128
---@return System.Void
function UnityEngine.HashUtilities.AppendHash(inHash, outHash)end
---@param value UnityEngine.Matrix4x4
---@param hash UnityEngine.Hash128
---@return System.Void
function UnityEngine.HashUtilities.QuantisedMatrixHash(value, hash)end
---@param value UnityEngine.Vector3
---@param hash UnityEngine.Hash128
---@return System.Void
function UnityEngine.HashUtilities.QuantisedVectorHash(value, hash)end
---@param value any
---@param hash UnityEngine.Hash128
---@return System.Void
function UnityEngine.HashUtilities.ComputeHash128(value, hash)end
---@class UnityEngine.HashUnsafeUtilities : System.Object
UnityEngine.HashUnsafeUtilities = {}
---@type UnityEngine.HashUnsafeUtilities
CS.UnityEngine.HashUnsafeUtilities = UnityEngine.HashUnsafeUtilities

---@overload fun(data:System.Void, dataSize:System.UInt64, hash1:System.UInt64, hash2:System.UInt64):System.Void
---@param data System.Void
---@param dataSize System.UInt64
---@param hash UnityEngine.Hash128
---@return System.Void
function UnityEngine.HashUnsafeUtilities.ComputeHash128(data, dataSize, hash)end
---@class UnityEngine.TouchPhase : System.Enum
UnityEngine.TouchPhase = {}
---@type UnityEngine.TouchPhase
CS.UnityEngine.TouchPhase = UnityEngine.TouchPhase

---@return System.Int32 value:0
UnityEngine.TouchPhase.Began = 0
---@return System.Int32 value:1
UnityEngine.TouchPhase.Moved = 1
---@return System.Int32 value:2
UnityEngine.TouchPhase.Stationary = 2
---@return System.Int32 value:3
UnityEngine.TouchPhase.Ended = 3
---@return System.Int32 value:4
UnityEngine.TouchPhase.Canceled = 4

---@class UnityEngine.IMECompositionMode : System.Enum
UnityEngine.IMECompositionMode = {}
---@type UnityEngine.IMECompositionMode
CS.UnityEngine.IMECompositionMode = UnityEngine.IMECompositionMode

---@return System.Int32 value:0
UnityEngine.IMECompositionMode.Auto = 0
---@return System.Int32 value:1
UnityEngine.IMECompositionMode.On = 1
---@return System.Int32 value:2
UnityEngine.IMECompositionMode.Off = 2

---@class UnityEngine.TouchType : System.Enum
UnityEngine.TouchType = {}
---@type UnityEngine.TouchType
CS.UnityEngine.TouchType = UnityEngine.TouchType

---@return System.Int32 value:0
UnityEngine.TouchType.Direct = 0
---@return System.Int32 value:1
UnityEngine.TouchType.Indirect = 1
---@return System.Int32 value:2
UnityEngine.TouchType.Stylus = 2

---@class UnityEngine.Touch : System.ValueType
---@field public fingerId System.Int32 @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public rawPosition UnityEngine.Vector2 @ setter getter
---@field public deltaPosition UnityEngine.Vector2 @ setter getter
---@field public deltaTime System.Single @ setter getter
---@field public tapCount System.Int32 @ setter getter
---@field public phase UnityEngine.TouchPhase @ setter getter
---@field public pressure System.Single @ setter getter
---@field public maximumPossiblePressure System.Single @ setter getter
---@field public type UnityEngine.TouchType @ setter getter
---@field public altitudeAngle System.Single @ setter getter
---@field public azimuthAngle System.Single @ setter getter
---@field public radius System.Single @ setter getter
---@field public radiusVariance System.Single @ setter getter
UnityEngine.Touch = {}
---@type UnityEngine.Touch
CS.UnityEngine.Touch = UnityEngine.Touch

---@class UnityEngine.DeviceOrientation : System.Enum
UnityEngine.DeviceOrientation = {}
---@type UnityEngine.DeviceOrientation
CS.UnityEngine.DeviceOrientation = UnityEngine.DeviceOrientation

---@return System.Int32 value:0
UnityEngine.DeviceOrientation.Unknown = 0
---@return System.Int32 value:1
UnityEngine.DeviceOrientation.Portrait = 1
---@return System.Int32 value:2
UnityEngine.DeviceOrientation.PortraitUpsideDown = 2
---@return System.Int32 value:3
UnityEngine.DeviceOrientation.LandscapeLeft = 3
---@return System.Int32 value:4
UnityEngine.DeviceOrientation.LandscapeRight = 4
---@return System.Int32 value:5
UnityEngine.DeviceOrientation.FaceUp = 5
---@return System.Int32 value:6
UnityEngine.DeviceOrientation.FaceDown = 6

---@class UnityEngine.AccelerationEvent : System.ValueType
---@field public acceleration UnityEngine.Vector3 @  getter
---@field public deltaTime System.Single @  getter
UnityEngine.AccelerationEvent = {}
---@type UnityEngine.AccelerationEvent
CS.UnityEngine.AccelerationEvent = UnityEngine.AccelerationEvent

---@class UnityEngine.Gyroscope : System.Object
---@field public rotationRate UnityEngine.Vector3 @  getter
---@field public rotationRateUnbiased UnityEngine.Vector3 @  getter
---@field public gravity UnityEngine.Vector3 @  getter
---@field public userAcceleration UnityEngine.Vector3 @  getter
---@field public attitude UnityEngine.Quaternion @  getter
---@field public enabled System.Boolean @ setter getter
---@field public updateInterval System.Single @ setter getter
UnityEngine.Gyroscope = {}
---@type UnityEngine.Gyroscope
CS.UnityEngine.Gyroscope = UnityEngine.Gyroscope

---@class UnityEngine.LocationInfo : System.ValueType
---@field public latitude System.Single @  getter
---@field public longitude System.Single @  getter
---@field public altitude System.Single @  getter
---@field public horizontalAccuracy System.Single @  getter
---@field public verticalAccuracy System.Single @  getter
---@field public timestamp System.Double @  getter
UnityEngine.LocationInfo = {}
---@type UnityEngine.LocationInfo
CS.UnityEngine.LocationInfo = UnityEngine.LocationInfo

---@class UnityEngine.LocationServiceStatus : System.Enum
UnityEngine.LocationServiceStatus = {}
---@type UnityEngine.LocationServiceStatus
CS.UnityEngine.LocationServiceStatus = UnityEngine.LocationServiceStatus

---@return System.Int32 value:0
UnityEngine.LocationServiceStatus.Stopped = 0
---@return System.Int32 value:1
UnityEngine.LocationServiceStatus.Initializing = 1
---@return System.Int32 value:2
UnityEngine.LocationServiceStatus.Running = 2
---@return System.Int32 value:3
UnityEngine.LocationServiceStatus.Failed = 3

---@class UnityEngine.LocationService : System.Object
---@field public isEnabledByUser System.Boolean @  getter
---@field public status UnityEngine.LocationServiceStatus @  getter
---@field public lastData UnityEngine.LocationInfo @  getter
UnityEngine.LocationService = {}
---@type UnityEngine.LocationService
CS.UnityEngine.LocationService = UnityEngine.LocationService

---@overload fun(desiredAccuracyInMeters:System.Single):System.Void
---@overload fun(desiredAccuracyInMeters:System.Single, updateDistanceInMeters:System.Single):System.Void
---@return System.Void
function UnityEngine.LocationService:Start()end
---@return System.Void
function UnityEngine.LocationService:Stop()end
---@class UnityEngine.Compass : System.Object
---@field public magneticHeading System.Single @  getter
---@field public trueHeading System.Single @  getter
---@field public headingAccuracy System.Single @  getter
---@field public rawVector UnityEngine.Vector3 @  getter
---@field public timestamp System.Double @  getter
---@field public enabled System.Boolean @ setter getter
UnityEngine.Compass = {}
---@type UnityEngine.Compass
CS.UnityEngine.Compass = UnityEngine.Compass

---@class UnityEngine.Input : System.Object
---@field public simulateMouseWithTouches System.Boolean @static setter getter
---@field public anyKey System.Boolean @static  getter
---@field public anyKeyDown System.Boolean @static  getter
---@field public inputString System.String @static  getter
---@field public mousePosition UnityEngine.Vector3 @static  getter
---@field public mouseScrollDelta UnityEngine.Vector2 @static  getter
---@field public imeCompositionMode UnityEngine.IMECompositionMode @static setter getter
---@field public compositionString System.String @static  getter
---@field public imeIsSelected System.Boolean @static  getter
---@field public compositionCursorPos UnityEngine.Vector2 @static setter getter
---@field public eatKeyPressOnTextFieldFocus System.Boolean @static setter getter
---@field public mousePresent System.Boolean @static  getter
---@field public touchCount System.Int32 @static  getter
---@field public touchPressureSupported System.Boolean @static  getter
---@field public stylusTouchSupported System.Boolean @static  getter
---@field public touchSupported System.Boolean @static  getter
---@field public multiTouchEnabled System.Boolean @static setter getter
---@field public isGyroAvailable System.Boolean @static  getter
---@field public deviceOrientation UnityEngine.DeviceOrientation @static  getter
---@field public acceleration UnityEngine.Vector3 @static  getter
---@field public compensateSensors System.Boolean @static setter getter
---@field public accelerationEventCount System.Int32 @static  getter
---@field public backButtonLeavesApp System.Boolean @static setter getter
---@field public location UnityEngine.LocationService @static  getter
---@field public compass UnityEngine.Compass @static  getter
---@field public gyro UnityEngine.Gyroscope @static  getter
---@field public touches UnityEngine.Touch[] @static  getter
---@field public accelerationEvents UnityEngine.AccelerationEvent[] @static  getter
UnityEngine.Input = {}
---@type UnityEngine.Input
CS.UnityEngine.Input = UnityEngine.Input

---@param axisName System.String
---@return System.Single
function UnityEngine.Input.GetAxis(axisName)end
---@param axisName System.String
---@return System.Single
function UnityEngine.Input.GetAxisRaw(axisName)end
---@param buttonName System.String
---@return System.Boolean
function UnityEngine.Input.GetButton(buttonName)end
---@param buttonName System.String
---@return System.Boolean
function UnityEngine.Input.GetButtonDown(buttonName)end
---@param buttonName System.String
---@return System.Boolean
function UnityEngine.Input.GetButtonUp(buttonName)end
---@param button System.Int32
---@return System.Boolean
function UnityEngine.Input.GetMouseButton(button)end
---@param button System.Int32
---@return System.Boolean
function UnityEngine.Input.GetMouseButtonDown(button)end
---@param button System.Int32
---@return System.Boolean
function UnityEngine.Input.GetMouseButtonUp(button)end
---@return System.Void
function UnityEngine.Input.ResetInputAxes()end
---@param joystickName System.String
---@return System.Boolean
function UnityEngine.Input.IsJoystickPreconfigured(joystickName)end
---@return System.String[]
function UnityEngine.Input.GetJoystickNames()end
---@param index System.Int32
---@return UnityEngine.Touch
function UnityEngine.Input.GetTouch(index)end
---@param index System.Int32
---@return UnityEngine.AccelerationEvent
function UnityEngine.Input.GetAccelerationEvent(index)end
---@overload fun(name:System.String):System.Boolean
---@param key UnityEngine.KeyCode
---@return System.Boolean
function UnityEngine.Input.GetKey(key)end
---@overload fun(name:System.String):System.Boolean
---@param key UnityEngine.KeyCode
---@return System.Boolean
function UnityEngine.Input.GetKeyUp(key)end
---@overload fun(name:System.String):System.Boolean
---@param key UnityEngine.KeyCode
---@return System.Boolean
function UnityEngine.Input.GetKeyDown(key)end
---@class UnityEngine.KeyCode : System.Enum
UnityEngine.KeyCode = {}
---@type UnityEngine.KeyCode
CS.UnityEngine.KeyCode = UnityEngine.KeyCode

---@return System.Int32 value:0
UnityEngine.KeyCode.None = 0
---@return System.Int32 value:8
UnityEngine.KeyCode.Backspace = 8
---@return System.Int32 value:9
UnityEngine.KeyCode.Tab = 9
---@return System.Int32 value:12
UnityEngine.KeyCode.Clear = 12
---@return System.Int32 value:13
UnityEngine.KeyCode.Return = 13
---@return System.Int32 value:19
UnityEngine.KeyCode.Pause = 19
---@return System.Int32 value:27
UnityEngine.KeyCode.Escape = 27
---@return System.Int32 value:32
UnityEngine.KeyCode.Space = 32
---@return System.Int32 value:33
UnityEngine.KeyCode.Exclaim = 33
---@return System.Int32 value:34
UnityEngine.KeyCode.DoubleQuote = 34
---@return System.Int32 value:35
UnityEngine.KeyCode.Hash = 35
---@return System.Int32 value:36
UnityEngine.KeyCode.Dollar = 36
---@return System.Int32 value:37
UnityEngine.KeyCode.Percent = 37
---@return System.Int32 value:38
UnityEngine.KeyCode.Ampersand = 38
---@return System.Int32 value:39
UnityEngine.KeyCode.Quote = 39
---@return System.Int32 value:40
UnityEngine.KeyCode.LeftParen = 40
---@return System.Int32 value:41
UnityEngine.KeyCode.RightParen = 41
---@return System.Int32 value:42
UnityEngine.KeyCode.Asterisk = 42
---@return System.Int32 value:43
UnityEngine.KeyCode.Plus = 43
---@return System.Int32 value:44
UnityEngine.KeyCode.Comma = 44
---@return System.Int32 value:45
UnityEngine.KeyCode.Minus = 45
---@return System.Int32 value:46
UnityEngine.KeyCode.Period = 46
---@return System.Int32 value:47
UnityEngine.KeyCode.Slash = 47
---@return System.Int32 value:48
UnityEngine.KeyCode.Alpha0 = 48
---@return System.Int32 value:49
UnityEngine.KeyCode.Alpha1 = 49
---@return System.Int32 value:50
UnityEngine.KeyCode.Alpha2 = 50
---@return System.Int32 value:51
UnityEngine.KeyCode.Alpha3 = 51
---@return System.Int32 value:52
UnityEngine.KeyCode.Alpha4 = 52
---@return System.Int32 value:53
UnityEngine.KeyCode.Alpha5 = 53
---@return System.Int32 value:54
UnityEngine.KeyCode.Alpha6 = 54
---@return System.Int32 value:55
UnityEngine.KeyCode.Alpha7 = 55
---@return System.Int32 value:56
UnityEngine.KeyCode.Alpha8 = 56
---@return System.Int32 value:57
UnityEngine.KeyCode.Alpha9 = 57
---@return System.Int32 value:58
UnityEngine.KeyCode.Colon = 58
---@return System.Int32 value:59
UnityEngine.KeyCode.Semicolon = 59
---@return System.Int32 value:60
UnityEngine.KeyCode.Less = 60
---@return System.Int32 value:61
UnityEngine.KeyCode.Equals = 61
---@return System.Int32 value:62
UnityEngine.KeyCode.Greater = 62
---@return System.Int32 value:63
UnityEngine.KeyCode.Question = 63
---@return System.Int32 value:64
UnityEngine.KeyCode.At = 64
---@return System.Int32 value:91
UnityEngine.KeyCode.LeftBracket = 91
---@return System.Int32 value:92
UnityEngine.KeyCode.Backslash = 92
---@return System.Int32 value:93
UnityEngine.KeyCode.RightBracket = 93
---@return System.Int32 value:94
UnityEngine.KeyCode.Caret = 94
---@return System.Int32 value:95
UnityEngine.KeyCode.Underscore = 95
---@return System.Int32 value:96
UnityEngine.KeyCode.BackQuote = 96
---@return System.Int32 value:97
UnityEngine.KeyCode.A = 97
---@return System.Int32 value:98
UnityEngine.KeyCode.B = 98
---@return System.Int32 value:99
UnityEngine.KeyCode.C = 99
---@return System.Int32 value:100
UnityEngine.KeyCode.D = 100
---@return System.Int32 value:101
UnityEngine.KeyCode.E = 101
---@return System.Int32 value:102
UnityEngine.KeyCode.F = 102
---@return System.Int32 value:103
UnityEngine.KeyCode.G = 103
---@return System.Int32 value:104
UnityEngine.KeyCode.H = 104
---@return System.Int32 value:105
UnityEngine.KeyCode.I = 105
---@return System.Int32 value:106
UnityEngine.KeyCode.J = 106
---@return System.Int32 value:107
UnityEngine.KeyCode.K = 107
---@return System.Int32 value:108
UnityEngine.KeyCode.L = 108
---@return System.Int32 value:109
UnityEngine.KeyCode.M = 109
---@return System.Int32 value:110
UnityEngine.KeyCode.N = 110
---@return System.Int32 value:111
UnityEngine.KeyCode.O = 111
---@return System.Int32 value:112
UnityEngine.KeyCode.P = 112
---@return System.Int32 value:113
UnityEngine.KeyCode.Q = 113
---@return System.Int32 value:114
UnityEngine.KeyCode.R = 114
---@return System.Int32 value:115
UnityEngine.KeyCode.S = 115
---@return System.Int32 value:116
UnityEngine.KeyCode.T = 116
---@return System.Int32 value:117
UnityEngine.KeyCode.U = 117
---@return System.Int32 value:118
UnityEngine.KeyCode.V = 118
---@return System.Int32 value:119
UnityEngine.KeyCode.W = 119
---@return System.Int32 value:120
UnityEngine.KeyCode.X = 120
---@return System.Int32 value:121
UnityEngine.KeyCode.Y = 121
---@return System.Int32 value:122
UnityEngine.KeyCode.Z = 122
---@return System.Int32 value:123
UnityEngine.KeyCode.LeftCurlyBracket = 123
---@return System.Int32 value:124
UnityEngine.KeyCode.Pipe = 124
---@return System.Int32 value:125
UnityEngine.KeyCode.RightCurlyBracket = 125
---@return System.Int32 value:126
UnityEngine.KeyCode.Tilde = 126
---@return System.Int32 value:127
UnityEngine.KeyCode.Delete = 127
---@return System.Int32 value:256
UnityEngine.KeyCode.Keypad0 = 256
---@return System.Int32 value:257
UnityEngine.KeyCode.Keypad1 = 257
---@return System.Int32 value:258
UnityEngine.KeyCode.Keypad2 = 258
---@return System.Int32 value:259
UnityEngine.KeyCode.Keypad3 = 259
---@return System.Int32 value:260
UnityEngine.KeyCode.Keypad4 = 260
---@return System.Int32 value:261
UnityEngine.KeyCode.Keypad5 = 261
---@return System.Int32 value:262
UnityEngine.KeyCode.Keypad6 = 262
---@return System.Int32 value:263
UnityEngine.KeyCode.Keypad7 = 263
---@return System.Int32 value:264
UnityEngine.KeyCode.Keypad8 = 264
---@return System.Int32 value:265
UnityEngine.KeyCode.Keypad9 = 265
---@return System.Int32 value:266
UnityEngine.KeyCode.KeypadPeriod = 266
---@return System.Int32 value:267
UnityEngine.KeyCode.KeypadDivide = 267
---@return System.Int32 value:268
UnityEngine.KeyCode.KeypadMultiply = 268
---@return System.Int32 value:269
UnityEngine.KeyCode.KeypadMinus = 269
---@return System.Int32 value:270
UnityEngine.KeyCode.KeypadPlus = 270
---@return System.Int32 value:271
UnityEngine.KeyCode.KeypadEnter = 271
---@return System.Int32 value:272
UnityEngine.KeyCode.KeypadEquals = 272
---@return System.Int32 value:273
UnityEngine.KeyCode.UpArrow = 273
---@return System.Int32 value:274
UnityEngine.KeyCode.DownArrow = 274
---@return System.Int32 value:275
UnityEngine.KeyCode.RightArrow = 275
---@return System.Int32 value:276
UnityEngine.KeyCode.LeftArrow = 276
---@return System.Int32 value:277
UnityEngine.KeyCode.Insert = 277
---@return System.Int32 value:278
UnityEngine.KeyCode.Home = 278
---@return System.Int32 value:279
UnityEngine.KeyCode.End = 279
---@return System.Int32 value:280
UnityEngine.KeyCode.PageUp = 280
---@return System.Int32 value:281
UnityEngine.KeyCode.PageDown = 281
---@return System.Int32 value:282
UnityEngine.KeyCode.F1 = 282
---@return System.Int32 value:283
UnityEngine.KeyCode.F2 = 283
---@return System.Int32 value:284
UnityEngine.KeyCode.F3 = 284
---@return System.Int32 value:285
UnityEngine.KeyCode.F4 = 285
---@return System.Int32 value:286
UnityEngine.KeyCode.F5 = 286
---@return System.Int32 value:287
UnityEngine.KeyCode.F6 = 287
---@return System.Int32 value:288
UnityEngine.KeyCode.F7 = 288
---@return System.Int32 value:289
UnityEngine.KeyCode.F8 = 289
---@return System.Int32 value:290
UnityEngine.KeyCode.F9 = 290
---@return System.Int32 value:291
UnityEngine.KeyCode.F10 = 291
---@return System.Int32 value:292
UnityEngine.KeyCode.F11 = 292
---@return System.Int32 value:293
UnityEngine.KeyCode.F12 = 293
---@return System.Int32 value:294
UnityEngine.KeyCode.F13 = 294
---@return System.Int32 value:295
UnityEngine.KeyCode.F14 = 295
---@return System.Int32 value:296
UnityEngine.KeyCode.F15 = 296
---@return System.Int32 value:300
UnityEngine.KeyCode.Numlock = 300
---@return System.Int32 value:301
UnityEngine.KeyCode.CapsLock = 301
---@return System.Int32 value:302
UnityEngine.KeyCode.ScrollLock = 302
---@return System.Int32 value:303
UnityEngine.KeyCode.RightShift = 303
---@return System.Int32 value:304
UnityEngine.KeyCode.LeftShift = 304
---@return System.Int32 value:305
UnityEngine.KeyCode.RightControl = 305
---@return System.Int32 value:306
UnityEngine.KeyCode.LeftControl = 306
---@return System.Int32 value:307
UnityEngine.KeyCode.RightAlt = 307
---@return System.Int32 value:308
UnityEngine.KeyCode.LeftAlt = 308
---@return System.Int32 value:309
UnityEngine.KeyCode.RightApple = 309
---@return System.Int32 value:310
UnityEngine.KeyCode.LeftCommand = 310
---@return System.Int32 value:311
UnityEngine.KeyCode.LeftWindows = 311
---@return System.Int32 value:312
UnityEngine.KeyCode.RightWindows = 312
---@return System.Int32 value:313
UnityEngine.KeyCode.AltGr = 313
---@return System.Int32 value:315
UnityEngine.KeyCode.Help = 315
---@return System.Int32 value:316
UnityEngine.KeyCode.Print = 316
---@return System.Int32 value:317
UnityEngine.KeyCode.SysReq = 317
---@return System.Int32 value:318
UnityEngine.KeyCode.Break = 318
---@return System.Int32 value:319
UnityEngine.KeyCode.Menu = 319
---@return System.Int32 value:323
UnityEngine.KeyCode.Mouse0 = 323
---@return System.Int32 value:324
UnityEngine.KeyCode.Mouse1 = 324
---@return System.Int32 value:325
UnityEngine.KeyCode.Mouse2 = 325

---@class UnityEngine.LayerMask : System.ValueType
---@field public value System.Int32 @ setter getter
UnityEngine.LayerMask = {}
---@type UnityEngine.LayerMask
CS.UnityEngine.LayerMask = UnityEngine.LayerMask

---@overload fun(mask:UnityEngine.LayerMask):System.Int32
---@param intVal System.Int32
---@return UnityEngine.LayerMask
function UnityEngine.LayerMask.op_Implicit(intVal)end
---@param layer System.Int32
---@return System.String
function UnityEngine.LayerMask.LayerToName(layer)end
---@param layerName System.String
---@return System.Int32
function UnityEngine.LayerMask.NameToLayer(layerName)end
---@param layerNames System.String[]
---@return System.Int32
function UnityEngine.LayerMask.GetMask(layerNames)end
---@class UnityEngine.LightmappingMode : System.Enum
UnityEngine.LightmappingMode = {}
---@type UnityEngine.LightmappingMode
CS.UnityEngine.LightmappingMode = UnityEngine.LightmappingMode

---@return System.Int32 value:1
UnityEngine.LightmappingMode.Mixed = 1
---@return System.Int32 value:2
UnityEngine.LightmappingMode.Baked = 2

---@class UnityEngine.LightProbeGroup : UnityEngine.Behaviour
---@field public probePositions UnityEngine.Vector3[] @ setter getter
---@field public dering System.Boolean @ setter getter
UnityEngine.LightProbeGroup = {}
---@type UnityEngine.LightProbeGroup
CS.UnityEngine.LightProbeGroup = UnityEngine.LightProbeGroup

---@class UnityEngine.LineUtility : System.Object
UnityEngine.LineUtility = {}
---@type UnityEngine.LineUtility
CS.UnityEngine.LineUtility = UnityEngine.LineUtility

---@overload fun(points:System.Collections.Generic.List, tolerance:System.Single, simplifiedPoints:System.Collections.Generic.List):System.Void
---@overload fun(points:System.Collections.Generic.List, tolerance:System.Single, pointsToKeep:System.Collections.Generic.List):System.Void
---@overload fun(points:System.Collections.Generic.List, tolerance:System.Single, simplifiedPoints:System.Collections.Generic.List):System.Void
---@param points System.Collections.Generic.List
---@param tolerance System.Single
---@param pointsToKeep System.Collections.Generic.List
---@return System.Void
function UnityEngine.LineUtility.Simplify(points, tolerance, pointsToKeep)end
---@class UnityEngine.LODFadeMode : System.Enum
UnityEngine.LODFadeMode = {}
---@type UnityEngine.LODFadeMode
CS.UnityEngine.LODFadeMode = UnityEngine.LODFadeMode

---@return System.Int32 value:0
UnityEngine.LODFadeMode.None = 0
---@return System.Int32 value:1
UnityEngine.LODFadeMode.CrossFade = 1
---@return System.Int32 value:2
UnityEngine.LODFadeMode.SpeedTree = 2

---@class UnityEngine.LOD : System.ValueType
---@field public screenRelativeTransitionHeight System.Single
---@field public fadeTransitionWidth System.Single
---@field public renderers UnityEngine.Renderer[]
UnityEngine.LOD = {}
---@type UnityEngine.LOD
CS.UnityEngine.LOD = UnityEngine.LOD

---@class UnityEngine.LODGroup : UnityEngine.Component
---@field public localReferencePoint UnityEngine.Vector3 @ setter getter
---@field public size System.Single @ setter getter
---@field public lodCount System.Int32 @  getter
---@field public fadeMode UnityEngine.LODFadeMode @ setter getter
---@field public animateCrossFading System.Boolean @ setter getter
---@field public enabled System.Boolean @ setter getter
---@field public crossFadeAnimationDuration System.Single @static setter getter
UnityEngine.LODGroup = {}
---@type UnityEngine.LODGroup
CS.UnityEngine.LODGroup = UnityEngine.LODGroup

---@return System.Void
function UnityEngine.LODGroup:RecalculateBounds()end
---@return UnityEngine.LOD[]
function UnityEngine.LODGroup:GetLODs()end
---@param lods UnityEngine.LOD[]
---@return System.Void
function UnityEngine.LODGroup:SetLODS(lods)end
---@param lods UnityEngine.LOD[]
---@return System.Void
function UnityEngine.LODGroup:SetLODs(lods)end
---@param index System.Int32
---@return System.Void
function UnityEngine.LODGroup:ForceLOD(index)end
---@class UnityEngine.FrustumPlanes : System.ValueType
---@field public left System.Single
---@field public right System.Single
---@field public bottom System.Single
---@field public top System.Single
---@field public zNear System.Single
---@field public zFar System.Single
UnityEngine.FrustumPlanes = {}
---@type UnityEngine.FrustumPlanes
CS.UnityEngine.FrustumPlanes = UnityEngine.FrustumPlanes

---@class UnityEngine.Matrix4x4 : System.ValueType
---@field public rotation UnityEngine.Quaternion @  getter
---@field public lossyScale UnityEngine.Vector3 @  getter
---@field public isIdentity System.Boolean @  getter
---@field public determinant System.Single @  getter
---@field public decomposeProjection UnityEngine.FrustumPlanes @  getter
---@field public inverse UnityEngine.Matrix4x4 @  getter
---@field public transpose UnityEngine.Matrix4x4 @  getter
---@field public Item System.Single @ setter getter
---@field public Item System.Single @ setter getter
---@field public zero UnityEngine.Matrix4x4 @static  getter
---@field public identity UnityEngine.Matrix4x4 @static  getter
---@field public m00 System.Single
---@field public m10 System.Single
---@field public m20 System.Single
---@field public m30 System.Single
---@field public m01 System.Single
---@field public m11 System.Single
---@field public m21 System.Single
---@field public m31 System.Single
---@field public m02 System.Single
---@field public m12 System.Single
---@field public m22 System.Single
---@field public m32 System.Single
---@field public m03 System.Single
---@field public m13 System.Single
---@field public m23 System.Single
---@field public m33 System.Single
UnityEngine.Matrix4x4 = {}
---@type UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4 = UnityEngine.Matrix4x4

---@return System.Boolean
function UnityEngine.Matrix4x4:ValidTRS()end
---@param m UnityEngine.Matrix4x4
---@return System.Single
function UnityEngine.Matrix4x4.Determinant(m)end
---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.TRS(pos, q, s)end
---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
---@return System.Void
function UnityEngine.Matrix4x4:SetTRS(pos, q, s)end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Inverse(m)end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Transpose(m)end
---@param left System.Single
---@param right System.Single
---@param bottom System.Single
---@param top System.Single
---@param zNear System.Single
---@param zFar System.Single
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Ortho(left, right, bottom, top, zNear, zFar)end
---@param fov System.Single
---@param aspect System.Single
---@param zNear System.Single
---@param zFar System.Single
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Perspective(fov, aspect, zNear, zFar)end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param up UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.LookAt(from, to, up)end
---@overload fun(fp:UnityEngine.FrustumPlanes):UnityEngine.Matrix4x4
---@param left System.Single
---@param right System.Single
---@param bottom System.Single
---@param top System.Single
---@param zNear System.Single
---@param zFar System.Single
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Frustum(left, right, bottom, top, zNear, zFar)end
---@return System.Int32
function UnityEngine.Matrix4x4:GetHashCode()end
---@overload fun(other:UnityEngine.Matrix4x4):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Matrix4x4:Equals(other)end
---@overload fun(lhs:UnityEngine.Matrix4x4, vector:UnityEngine.Vector4):UnityEngine.Vector4
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.op_Multiply(lhs, rhs)end
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.Matrix4x4.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return System.Boolean
function UnityEngine.Matrix4x4.op_Inequality(lhs, rhs)end
---@param index System.Int32
---@return UnityEngine.Vector4
function UnityEngine.Matrix4x4:GetColumn(index)end
---@param index System.Int32
---@return UnityEngine.Vector4
function UnityEngine.Matrix4x4:GetRow(index)end
---@param index System.Int32
---@param column UnityEngine.Vector4
---@return System.Void
function UnityEngine.Matrix4x4:SetColumn(index, column)end
---@param index System.Int32
---@param row UnityEngine.Vector4
---@return System.Void
function UnityEngine.Matrix4x4:SetRow(index, row)end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyPoint(point)end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyPoint3x4(point)end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyVector(vector)end
---@param plane UnityEngine.Plane
---@return UnityEngine.Plane
function UnityEngine.Matrix4x4:TransformPlane(plane)end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Scale(vector)end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Translate(vector)end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Rotate(q)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Matrix4x4:ToString()end
---@class UnityEngine.Vector3 : System.ValueType
---@field public Item System.Single @ setter getter
---@field public normalized UnityEngine.Vector3 @  getter
---@field public magnitude System.Single @  getter
---@field public sqrMagnitude System.Single @  getter
---@field public zero UnityEngine.Vector3 @static  getter
---@field public one UnityEngine.Vector3 @static  getter
---@field public forward UnityEngine.Vector3 @static  getter
---@field public back UnityEngine.Vector3 @static  getter
---@field public up UnityEngine.Vector3 @static  getter
---@field public down UnityEngine.Vector3 @static  getter
---@field public left UnityEngine.Vector3 @static  getter
---@field public right UnityEngine.Vector3 @static  getter
---@field public positiveInfinity UnityEngine.Vector3 @static  getter
---@field public negativeInfinity UnityEngine.Vector3 @static  getter
---@field public fwd UnityEngine.Vector3 @static  getter
---@field public kEpsilon System.Single
---@field public kEpsilonNormalSqrt System.Single
---@field public x System.Single
---@field public y System.Single
---@field public z System.Single
UnityEngine.Vector3 = {}
---@type UnityEngine.Vector3
CS.UnityEngine.Vector3 = UnityEngine.Vector3

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Slerp(a, b, t)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.SlerpUnclamped(a, b, t)end
---@overload fun(normal:UnityEngine.Vector3, tangent:UnityEngine.Vector3, binormal:UnityEngine.Vector3):System.Void
---@param normal UnityEngine.Vector3
---@param tangent UnityEngine.Vector3
---@return System.Void
function UnityEngine.Vector3.OrthoNormalize(normal, tangent)end
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxRadiansDelta System.Single
---@param maxMagnitudeDelta System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Lerp(a, b, t)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.LerpUnclamped(a, b, t)end
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxDistanceDelta System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.MoveTowards(current, target, maxDistanceDelta)end
---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:System.Single, maxSpeed:System.Single):UnityEngine.Vector3
---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:System.Single, maxSpeed:System.Single, deltaTime:System.Single):UnityEngine.Vector3
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.SmoothDamp(current, target, currentVelocity, smoothTime)end
---@param newX System.Single
---@param newY System.Single
---@param newZ System.Single
---@return System.Void
function UnityEngine.Vector3:Set(newX, newY, newZ)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Scale(a, b)end
---@param scale UnityEngine.Vector3
---@return System.Void
function UnityEngine.Vector3:Scale(scale)end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Cross(lhs, rhs)end
---@return System.Int32
function UnityEngine.Vector3:GetHashCode()end
---@overload fun(other:UnityEngine.Vector3):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Vector3:Equals(other)end
---@param inDirection UnityEngine.Vector3
---@param inNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Reflect(inDirection, inNormal)end
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Normalize(value)end
---@return System.Void
function UnityEngine.Vector3:Normalize()end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.Dot(lhs, rhs)end
---@param vector UnityEngine.Vector3
---@param onNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Project(vector, onNormal)end
---@param vector UnityEngine.Vector3
---@param planeNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.ProjectOnPlane(vector, planeNormal)end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.Angle(from, to)end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.SignedAngle(from, to, axis)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.Distance(a, b)end
---@param vector UnityEngine.Vector3
---@param maxLength System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.ClampMagnitude(vector, maxLength)end
---@param vector UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.Magnitude(vector)end
---@param vector UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.SqrMagnitude(vector)end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Min(lhs, rhs)end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Max(lhs, rhs)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.op_Addition(a, b)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.op_Subtraction(a, b)end
---@param a UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.op_UnaryNegation(a)end
---@overload fun(d:System.Single, a:UnityEngine.Vector3):UnityEngine.Vector3
---@param a UnityEngine.Vector3
---@param d System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.op_Multiply(a, d)end
---@param a UnityEngine.Vector3
---@param d System.Single
---@return UnityEngine.Vector3
function UnityEngine.Vector3.op_Division(a, d)end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Vector3.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Vector3.op_Inequality(lhs, rhs)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Vector3:ToString()end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return System.Single
function UnityEngine.Vector3.AngleBetween(from, to)end
---@param excludeThis UnityEngine.Vector3
---@param fromThat UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Exclude(excludeThis, fromThat)end
---@class UnityEngine.Quaternion : System.ValueType
---@field public Item System.Single @ setter getter
---@field public identity UnityEngine.Quaternion @static  getter
---@field public eulerAngles UnityEngine.Vector3 @ setter getter
---@field public normalized UnityEngine.Quaternion @  getter
---@field public x System.Single
---@field public y System.Single
---@field public z System.Single
---@field public w System.Single
---@field public kEpsilon System.Single
UnityEngine.Quaternion = {}
---@type UnityEngine.Quaternion
CS.UnityEngine.Quaternion = UnityEngine.Quaternion

---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.FromToRotation(fromDirection, toDirection)end
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Inverse(rotation)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Slerp(a, b, t)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.SlerpUnclamped(a, b, t)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Lerp(a, b, t)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.LerpUnclamped(a, b, t)end
---@param angle System.Single
---@param axis UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.AngleAxis(angle, axis)end
---@overload fun(forward:UnityEngine.Vector3, upwards:UnityEngine.Vector3):UnityEngine.Quaternion
---@param forward UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.LookRotation(forward)end
---@param newX System.Single
---@param newY System.Single
---@param newZ System.Single
---@param newW System.Single
---@return System.Void
function UnityEngine.Quaternion:Set(newX, newY, newZ, newW)end
---@overload fun(rotation:UnityEngine.Quaternion, point:UnityEngine.Vector3):UnityEngine.Vector3
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.op_Multiply(lhs, rhs)end
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return System.Boolean
function UnityEngine.Quaternion.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return System.Boolean
function UnityEngine.Quaternion.op_Inequality(lhs, rhs)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return System.Single
function UnityEngine.Quaternion.Dot(a, b)end
---@overload fun(view:UnityEngine.Vector3, up:UnityEngine.Vector3):System.Void
---@param view UnityEngine.Vector3
---@return System.Void
function UnityEngine.Quaternion:SetLookRotation(view)end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return System.Single
function UnityEngine.Quaternion.Angle(a, b)end
---@overload fun(euler:UnityEngine.Vector3):UnityEngine.Quaternion
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Euler(x, y, z)end
---@param angle System.Single
---@param axis UnityEngine.Vector3
---@return System.Void
function UnityEngine.Quaternion:ToAngleAxis(angle, axis)end
---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return System.Void
function UnityEngine.Quaternion:SetFromToRotation(fromDirection, toDirection)end
---@param from UnityEngine.Quaternion
---@param to UnityEngine.Quaternion
---@param maxDegreesDelta System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.RotateTowards(from, to, maxDegreesDelta)end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Normalize(q)end
---@return System.Void
function UnityEngine.Quaternion:Normalize()end
---@return System.Int32
function UnityEngine.Quaternion:GetHashCode()end
---@overload fun(other:UnityEngine.Quaternion):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Quaternion:Equals(other)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Quaternion:ToString()end
---@overload fun(euler:UnityEngine.Vector3):UnityEngine.Quaternion
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.EulerRotation(x, y, z)end
---@overload fun(euler:UnityEngine.Vector3):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Quaternion:SetEulerRotation(x, y, z)end
---@return UnityEngine.Vector3
function UnityEngine.Quaternion:ToEuler()end
---@overload fun(euler:UnityEngine.Vector3):UnityEngine.Quaternion
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.EulerAngles(x, y, z)end
---@param axis UnityEngine.Vector3
---@param angle System.Single
---@return System.Void
function UnityEngine.Quaternion:ToAxisAngle(axis, angle)end
---@overload fun(euler:UnityEngine.Vector3):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Quaternion:SetEulerAngles(x, y, z)end
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEngine.Quaternion.ToEulerAngles(rotation)end
---@return UnityEngine.Vector3
function UnityEngine.Quaternion:ToEulerAngles()end
---@param axis UnityEngine.Vector3
---@param angle System.Single
---@return System.Void
function UnityEngine.Quaternion:SetAxisAngle(axis, angle)end
---@param axis UnityEngine.Vector3
---@param angle System.Single
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.AxisAngle(axis, angle)end
---@class UnityEngine.Mathf : System.ValueType
---@field public PI System.Single
---@field public Infinity System.Single
---@field public NegativeInfinity System.Single
---@field public Deg2Rad System.Single
---@field public Rad2Deg System.Single
---@field public Epsilon System.Single
UnityEngine.Mathf = {}
---@type UnityEngine.Mathf
CS.UnityEngine.Mathf = UnityEngine.Mathf

---@param value System.Int32
---@return System.Int32
function UnityEngine.Mathf.ClosestPowerOfTwo(value)end
---@param value System.Int32
---@return System.Boolean
function UnityEngine.Mathf.IsPowerOfTwo(value)end
---@param value System.Int32
---@return System.Int32
function UnityEngine.Mathf.NextPowerOfTwo(value)end
---@param value System.Single
---@return System.Single
function UnityEngine.Mathf.GammaToLinearSpace(value)end
---@param value System.Single
---@return System.Single
function UnityEngine.Mathf.LinearToGammaSpace(value)end
---@param kelvin System.Single
---@return UnityEngine.Color
function UnityEngine.Mathf.CorrelatedColorTemperatureToRGB(kelvin)end
---@param val System.Single
---@return System.UInt16
function UnityEngine.Mathf.FloatToHalf(val)end
---@param val System.UInt16
---@return System.Single
function UnityEngine.Mathf.HalfToFloat(val)end
---@param x System.Single
---@param y System.Single
---@return System.Single
function UnityEngine.Mathf.PerlinNoise(x, y)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Sin(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Cos(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Tan(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Asin(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Acos(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Atan(f)end
---@param y System.Single
---@param x System.Single
---@return System.Single
function UnityEngine.Mathf.Atan2(y, x)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Sqrt(f)end
---@overload fun(value:System.Int32):System.Int32
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Abs(f)end
---@overload fun(a:System.Int32, b:System.Int32):System.Int32
---@overload fun(values:System.Single[]):System.Single
---@overload fun(values:System.Int32[]):System.Int32
---@param a System.Single
---@param b System.Single
---@return System.Single
function UnityEngine.Mathf.Min(a, b)end
---@overload fun(a:System.Int32, b:System.Int32):System.Int32
---@overload fun(values:System.Single[]):System.Single
---@overload fun(values:System.Int32[]):System.Int32
---@param a System.Single
---@param b System.Single
---@return System.Single
function UnityEngine.Mathf.Max(a, b)end
---@param f System.Single
---@param p System.Single
---@return System.Single
function UnityEngine.Mathf.Pow(f, p)end
---@param power System.Single
---@return System.Single
function UnityEngine.Mathf.Exp(power)end
---@overload fun(f:System.Single, p:System.Single):System.Single
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Log(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Log10(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Ceil(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Floor(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Round(f)end
---@param f System.Single
---@return System.Int32
function UnityEngine.Mathf.CeilToInt(f)end
---@param f System.Single
---@return System.Int32
function UnityEngine.Mathf.FloorToInt(f)end
---@param f System.Single
---@return System.Int32
function UnityEngine.Mathf.RoundToInt(f)end
---@param f System.Single
---@return System.Single
function UnityEngine.Mathf.Sign(f)end
---@overload fun(value:System.Int32, min:System.Int32, max:System.Int32):System.Int32
---@param value System.Single
---@param min System.Single
---@param max System.Single
---@return System.Single
function UnityEngine.Mathf.Clamp(value, min, max)end
---@param value System.Single
---@return System.Single
function UnityEngine.Mathf.Clamp01(value)end
---@param a System.Single
---@param b System.Single
---@param t System.Single
---@return System.Single
function UnityEngine.Mathf.Lerp(a, b, t)end
---@param a System.Single
---@param b System.Single
---@param t System.Single
---@return System.Single
function UnityEngine.Mathf.LerpUnclamped(a, b, t)end
---@param a System.Single
---@param b System.Single
---@param t System.Single
---@return System.Single
function UnityEngine.Mathf.LerpAngle(a, b, t)end
---@param current System.Single
---@param target System.Single
---@param maxDelta System.Single
---@return System.Single
function UnityEngine.Mathf.MoveTowards(current, target, maxDelta)end
---@param current System.Single
---@param target System.Single
---@param maxDelta System.Single
---@return System.Single
function UnityEngine.Mathf.MoveTowardsAngle(current, target, maxDelta)end
---@param from System.Single
---@param to System.Single
---@param t System.Single
---@return System.Single
function UnityEngine.Mathf.SmoothStep(from, to, t)end
---@param value System.Single
---@param absmax System.Single
---@param gamma System.Single
---@return System.Single
function UnityEngine.Mathf.Gamma(value, absmax, gamma)end
---@param a System.Single
---@param b System.Single
---@return System.Boolean
function UnityEngine.Mathf.Approximately(a, b)end
---@overload fun(current:System.Single, target:System.Single, currentVelocity:System.Single, smoothTime:System.Single, maxSpeed:System.Single):System.Single
---@overload fun(current:System.Single, target:System.Single, currentVelocity:System.Single, smoothTime:System.Single, maxSpeed:System.Single, deltaTime:System.Single):System.Single
---@param current System.Single
---@param target System.Single
---@param currentVelocity System.Single
---@param smoothTime System.Single
---@return System.Single
function UnityEngine.Mathf.SmoothDamp(current, target, currentVelocity, smoothTime)end
---@overload fun(current:System.Single, target:System.Single, currentVelocity:System.Single, smoothTime:System.Single, maxSpeed:System.Single):System.Single
---@overload fun(current:System.Single, target:System.Single, currentVelocity:System.Single, smoothTime:System.Single, maxSpeed:System.Single, deltaTime:System.Single):System.Single
---@param current System.Single
---@param target System.Single
---@param currentVelocity System.Single
---@param smoothTime System.Single
---@return System.Single
function UnityEngine.Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime)end
---@param t System.Single
---@param length System.Single
---@return System.Single
function UnityEngine.Mathf.Repeat(t, length)end
---@param t System.Single
---@param length System.Single
---@return System.Single
function UnityEngine.Mathf.PingPong(t, length)end
---@param a System.Single
---@param b System.Single
---@param value System.Single
---@return System.Single
function UnityEngine.Mathf.InverseLerp(a, b, value)end
---@param current System.Single
---@param target System.Single
---@return System.Single
function UnityEngine.Mathf.DeltaAngle(current, target)end
---@class UnityEngine.BoneWeight : System.ValueType
---@field public weight0 System.Single @ setter getter
---@field public weight1 System.Single @ setter getter
---@field public weight2 System.Single @ setter getter
---@field public weight3 System.Single @ setter getter
---@field public boneIndex0 System.Int32 @ setter getter
---@field public boneIndex1 System.Int32 @ setter getter
---@field public boneIndex2 System.Int32 @ setter getter
---@field public boneIndex3 System.Int32 @ setter getter
UnityEngine.BoneWeight = {}
---@type UnityEngine.BoneWeight
CS.UnityEngine.BoneWeight = UnityEngine.BoneWeight

---@return System.Int32
function UnityEngine.BoneWeight:GetHashCode()end
---@overload fun(other:UnityEngine.BoneWeight):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.BoneWeight:Equals(other)end
---@param lhs UnityEngine.BoneWeight
---@param rhs UnityEngine.BoneWeight
---@return System.Boolean
function UnityEngine.BoneWeight.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.BoneWeight
---@param rhs UnityEngine.BoneWeight
---@return System.Boolean
function UnityEngine.BoneWeight.op_Inequality(lhs, rhs)end
---@class UnityEngine.CombineInstance : System.ValueType
---@field public mesh UnityEngine.Mesh @ setter getter
---@field public subMeshIndex System.Int32 @ setter getter
---@field public transform UnityEngine.Matrix4x4 @ setter getter
---@field public lightmapScaleOffset UnityEngine.Vector4 @ setter getter
---@field public realtimeLightmapScaleOffset UnityEngine.Vector4 @ setter getter
UnityEngine.CombineInstance = {}
---@type UnityEngine.CombineInstance
CS.UnityEngine.CombineInstance = UnityEngine.CombineInstance

---@class UnityEngine.MonoBehaviour : UnityEngine.Behaviour
---@field public useGUILayout System.Boolean @ setter getter
---@field public runInEditMode System.Boolean @ setter getter
UnityEngine.MonoBehaviour = {}
---@type UnityEngine.MonoBehaviour
CS.UnityEngine.MonoBehaviour = UnityEngine.MonoBehaviour

---@overload fun(methodName:System.String):System.Boolean
---@return System.Boolean
function UnityEngine.MonoBehaviour:IsInvoking()end
---@overload fun(methodName:System.String):System.Void
---@return System.Void
function UnityEngine.MonoBehaviour:CancelInvoke()end
---@param methodName System.String
---@param time System.Single
---@return System.Void
function UnityEngine.MonoBehaviour:Invoke(methodName, time)end
---@param methodName System.String
---@param time System.Single
---@param repeatRate System.Single
---@return System.Void
function UnityEngine.MonoBehaviour:InvokeRepeating(methodName, time, repeatRate)end
---@overload fun(routine:System.Collections.IEnumerator):UnityEngine.Coroutine
---@overload fun(methodName:System.String, value:System.Object):UnityEngine.Coroutine
---@param methodName System.String
---@return UnityEngine.Coroutine
function UnityEngine.MonoBehaviour:StartCoroutine(methodName)end
---@param routine System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function UnityEngine.MonoBehaviour:StartCoroutine_Auto(routine)end
---@overload fun(routine:UnityEngine.Coroutine):System.Void
---@overload fun(methodName:System.String):System.Void
---@param routine System.Collections.IEnumerator
---@return System.Void
function UnityEngine.MonoBehaviour:StopCoroutine(routine)end
---@return System.Void
function UnityEngine.MonoBehaviour:StopAllCoroutines()end
---@param message System.Object
---@return System.Void
function UnityEngine.MonoBehaviour.print(message)end
---@class UnityEngine.RPCMode : System.Enum
UnityEngine.RPCMode = {}
---@type UnityEngine.RPCMode
CS.UnityEngine.RPCMode = UnityEngine.RPCMode


---@class UnityEngine.ConnectionTesterStatus : System.Enum
UnityEngine.ConnectionTesterStatus = {}
---@type UnityEngine.ConnectionTesterStatus
CS.UnityEngine.ConnectionTesterStatus = UnityEngine.ConnectionTesterStatus


---@class UnityEngine.NetworkConnectionError : System.Enum
UnityEngine.NetworkConnectionError = {}
---@type UnityEngine.NetworkConnectionError
CS.UnityEngine.NetworkConnectionError = UnityEngine.NetworkConnectionError


---@class UnityEngine.NetworkDisconnection : System.Enum
UnityEngine.NetworkDisconnection = {}
---@type UnityEngine.NetworkDisconnection
CS.UnityEngine.NetworkDisconnection = UnityEngine.NetworkDisconnection


---@class UnityEngine.MasterServerEvent : System.Enum
UnityEngine.MasterServerEvent = {}
---@type UnityEngine.MasterServerEvent
CS.UnityEngine.MasterServerEvent = UnityEngine.MasterServerEvent


---@class UnityEngine.NetworkStateSynchronization : System.Enum
UnityEngine.NetworkStateSynchronization = {}
---@type UnityEngine.NetworkStateSynchronization
CS.UnityEngine.NetworkStateSynchronization = UnityEngine.NetworkStateSynchronization


---@class UnityEngine.NetworkPeerType : System.Enum
UnityEngine.NetworkPeerType = {}
---@type UnityEngine.NetworkPeerType
CS.UnityEngine.NetworkPeerType = UnityEngine.NetworkPeerType


---@class UnityEngine.NetworkLogLevel : System.Enum
UnityEngine.NetworkLogLevel = {}
---@type UnityEngine.NetworkLogLevel
CS.UnityEngine.NetworkLogLevel = UnityEngine.NetworkLogLevel


---@class UnityEngine.NetworkPlayer : System.ValueType
---@field public ipAddress System.String @  getter
---@field public port System.Int32 @  getter
---@field public guid System.String @  getter
---@field public externalIP System.String @  getter
---@field public externalPort System.Int32 @  getter
UnityEngine.NetworkPlayer = {}
---@type UnityEngine.NetworkPlayer
CS.UnityEngine.NetworkPlayer = UnityEngine.NetworkPlayer

---@class UnityEngine.NetworkViewID : System.ValueType
---@field public unassigned UnityEngine.NetworkViewID @static  getter
---@field public isMine System.Boolean @  getter
---@field public owner UnityEngine.NetworkPlayer @  getter
UnityEngine.NetworkViewID = {}
---@type UnityEngine.NetworkViewID
CS.UnityEngine.NetworkViewID = UnityEngine.NetworkViewID

---@class UnityEngine.NetworkView : UnityEngine.Behaviour
---@field public observed UnityEngine.Component @ setter getter
---@field public stateSynchronization UnityEngine.NetworkStateSynchronization @ setter getter
---@field public viewID UnityEngine.NetworkViewID @ setter getter
---@field public group System.Int32 @ setter getter
---@field public isMine System.Boolean @  getter
---@field public owner UnityEngine.NetworkPlayer @  getter
UnityEngine.NetworkView = {}
---@type UnityEngine.NetworkView
CS.UnityEngine.NetworkView = UnityEngine.NetworkView

---@overload fun(name:System.String, target:UnityEngine.NetworkPlayer, args:System.Object[]):System.Void
---@param name System.String
---@param mode UnityEngine.RPCMode
---@param args System.Object[]
---@return System.Void
function UnityEngine.NetworkView:RPC(name, mode, args)end
---@class UnityEngine.Network : System.Object
---@field public incomingPassword System.String @static setter getter
---@field public logLevel UnityEngine.NetworkLogLevel @static setter getter
---@field public connections UnityEngine.NetworkPlayer[] @static  getter
---@field public player UnityEngine.NetworkPlayer @static  getter
---@field public isClient System.Boolean @static  getter
---@field public isServer System.Boolean @static  getter
---@field public peerType UnityEngine.NetworkPeerType @static  getter
---@field public sendRate System.Single @static setter getter
---@field public isMessageQueueRunning System.Boolean @static setter getter
---@field public time System.Double @static  getter
---@field public minimumAllocatableViewIDs System.Int32 @static setter getter
---@field public useNat System.Boolean @static setter getter
---@field public natFacilitatorIP System.String @static setter getter
---@field public natFacilitatorPort System.Int32 @static setter getter
---@field public connectionTesterIP System.String @static setter getter
---@field public connectionTesterPort System.Int32 @static setter getter
---@field public maxConnections System.Int32 @static setter getter
---@field public proxyIP System.String @static setter getter
---@field public proxyPort System.Int32 @static setter getter
---@field public useProxy System.Boolean @static setter getter
---@field public proxyPassword System.String @static setter getter
UnityEngine.Network = {}
---@type UnityEngine.Network
CS.UnityEngine.Network = UnityEngine.Network

---@overload fun(connections:System.Int32, listenPort:System.Int32, useNat:System.Boolean):UnityEngine.NetworkConnectionError
---@param connections System.Int32
---@param listenPort System.Int32
---@return UnityEngine.NetworkConnectionError
function UnityEngine.Network.InitializeServer(connections, listenPort)end
---@return System.Void
function UnityEngine.Network.InitializeSecurity()end
---@overload fun(hostData:UnityEngine.HostData):UnityEngine.NetworkConnectionError
---@overload fun(IP:System.String, remotePort:System.Int32):UnityEngine.NetworkConnectionError
---@overload fun(IPs:System.String[], remotePort:System.Int32):UnityEngine.NetworkConnectionError
---@overload fun(GUID:System.String, password:System.String):UnityEngine.NetworkConnectionError
---@overload fun(hostData:UnityEngine.HostData, password:System.String):UnityEngine.NetworkConnectionError
---@overload fun(IP:System.String, remotePort:System.Int32, password:System.String):UnityEngine.NetworkConnectionError
---@overload fun(IPs:System.String[], remotePort:System.Int32, password:System.String):UnityEngine.NetworkConnectionError
---@param GUID System.String
---@return UnityEngine.NetworkConnectionError
function UnityEngine.Network.Connect(GUID)end
---@overload fun(timeout:System.Int32):System.Void
---@return System.Void
function UnityEngine.Network.Disconnect()end
---@param target UnityEngine.NetworkPlayer
---@param sendDisconnectionNotification System.Boolean
---@return System.Void
function UnityEngine.Network.CloseConnection(target, sendDisconnectionNotification)end
---@return UnityEngine.NetworkViewID
function UnityEngine.Network.AllocateViewID()end
---@param prefab UnityEngine.Object
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param group System.Int32
---@return UnityEngine.Object
function UnityEngine.Network.Instantiate(prefab, position, rotation, group)end
---@overload fun(gameObject:UnityEngine.GameObject):System.Void
---@param viewID UnityEngine.NetworkViewID
---@return System.Void
function UnityEngine.Network.Destroy(viewID)end
---@param playerID UnityEngine.NetworkPlayer
---@return System.Void
function UnityEngine.Network.DestroyPlayerObjects(playerID)end
---@overload fun(viewID:UnityEngine.NetworkViewID):System.Void
---@overload fun(playerID:UnityEngine.NetworkPlayer, group:System.Int32):System.Void
---@param playerID UnityEngine.NetworkPlayer
---@return System.Void
function UnityEngine.Network.RemoveRPCs(playerID)end
---@param group System.Int32
---@return System.Void
function UnityEngine.Network.RemoveRPCsInGroup(group)end
---@param prefix System.Int32
---@return System.Void
function UnityEngine.Network.SetLevelPrefix(prefix)end
---@param player UnityEngine.NetworkPlayer
---@return System.Int32
function UnityEngine.Network.GetLastPing(player)end
---@param player UnityEngine.NetworkPlayer
---@return System.Int32
function UnityEngine.Network.GetAveragePing(player)end
---@param player UnityEngine.NetworkPlayer
---@param group System.Int32
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Network.SetReceivingEnabled(player, group, enabled)end
---@overload fun(player:UnityEngine.NetworkPlayer, group:System.Int32, enabled:System.Boolean):System.Void
---@param group System.Int32
---@param enabled System.Boolean
---@return System.Void
function UnityEngine.Network.SetSendingEnabled(group, enabled)end
---@overload fun(forceTest:System.Boolean):UnityEngine.ConnectionTesterStatus
---@return UnityEngine.ConnectionTesterStatus
function UnityEngine.Network.TestConnection()end
---@overload fun(forceTest:System.Boolean):UnityEngine.ConnectionTesterStatus
---@return UnityEngine.ConnectionTesterStatus
function UnityEngine.Network.TestConnectionNAT()end
---@return System.Boolean
function UnityEngine.Network.HavePublicAddress()end
---@class UnityEngine.BitStream : System.Object
---@field public isReading System.Boolean @  getter
---@field public isWriting System.Boolean @  getter
UnityEngine.BitStream = {}
---@type UnityEngine.BitStream
CS.UnityEngine.BitStream = UnityEngine.BitStream

---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Int16):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:UnityEngine.Quaternion):System.Void
---@overload fun(value:UnityEngine.Vector3):System.Void
---@overload fun(value:UnityEngine.NetworkPlayer):System.Void
---@overload fun(viewID:UnityEngine.NetworkViewID):System.Void
---@overload fun(value:System.Single, maxDelta:System.Single):System.Void
---@overload fun(value:UnityEngine.Quaternion, maxDelta:System.Single):System.Void
---@overload fun(value:UnityEngine.Vector3, maxDelta:System.Single):System.Void
---@param value System.Boolean
---@return System.Void
function UnityEngine.BitStream:Serialize(value)end
---@class UnityEngine.RPC : System.Attribute
UnityEngine.RPC = {}
---@type UnityEngine.RPC
CS.UnityEngine.RPC = UnityEngine.RPC

---@class UnityEngine.HostData : System.Object
---@field public useNat System.Boolean @ setter getter
---@field public gameType System.String @ setter getter
---@field public gameName System.String @ setter getter
---@field public connectedPlayers System.Int32 @ setter getter
---@field public playerLimit System.Int32 @ setter getter
---@field public ip System.String[] @ setter getter
---@field public port System.Int32 @ setter getter
---@field public passwordProtected System.Boolean @ setter getter
---@field public comment System.String @ setter getter
---@field public guid System.String @ setter getter
UnityEngine.HostData = {}
---@type UnityEngine.HostData
CS.UnityEngine.HostData = UnityEngine.HostData

---@class UnityEngine.MasterServer : System.Object
---@field public ipAddress System.String @static setter getter
---@field public port System.Int32 @static setter getter
---@field public updateRate System.Int32 @static setter getter
---@field public dedicatedServer System.Boolean @static setter getter
UnityEngine.MasterServer = {}
---@type UnityEngine.MasterServer
CS.UnityEngine.MasterServer = UnityEngine.MasterServer

---@param gameTypeName System.String
---@return System.Void
function UnityEngine.MasterServer.RequestHostList(gameTypeName)end
---@return UnityEngine.HostData[]
function UnityEngine.MasterServer.PollHostList()end
---@overload fun(gameTypeName:System.String, gameName:System.String, comment:System.String):System.Void
---@param gameTypeName System.String
---@param gameName System.String
---@return System.Void
function UnityEngine.MasterServer.RegisterHost(gameTypeName, gameName)end
---@return System.Void
function UnityEngine.MasterServer.UnregisterHost()end
---@return System.Void
function UnityEngine.MasterServer.ClearHostList()end
---@class UnityEngine.NetworkMessageInfo : System.ValueType
---@field public timestamp System.Double @  getter
---@field public sender UnityEngine.NetworkPlayer @  getter
---@field public networkView UnityEngine.NetworkView @  getter
UnityEngine.NetworkMessageInfo = {}
---@type UnityEngine.NetworkMessageInfo
CS.UnityEngine.NetworkMessageInfo = UnityEngine.NetworkMessageInfo

---@class UnityEngine.Ping : System.Object
---@field public isDone System.Boolean @  getter
---@field public time System.Int32 @  getter
---@field public ip System.String @  getter
UnityEngine.Ping = {}
---@type UnityEngine.Ping
CS.UnityEngine.Ping = UnityEngine.Ping

---@return System.Void
function UnityEngine.Ping:DestroyPing()end
---@class UnityEngine.Plane : System.ValueType
---@field public normal UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public flipped UnityEngine.Plane @  getter
UnityEngine.Plane = {}
---@type UnityEngine.Plane
CS.UnityEngine.Plane = UnityEngine.Plane

---@param inNormal UnityEngine.Vector3
---@param inPoint UnityEngine.Vector3
---@return System.Void
function UnityEngine.Plane:SetNormalAndPosition(inNormal, inPoint)end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
---@return System.Void
function UnityEngine.Plane:Set3Points(a, b, c)end
---@return System.Void
function UnityEngine.Plane:Flip()end
---@param translation UnityEngine.Vector3
---@return System.Void
function UnityEngine.Plane:Translate(translation)end
---@param plane UnityEngine.Plane
---@param translation UnityEngine.Vector3
---@return UnityEngine.Plane
function UnityEngine.Plane.Translate(plane, translation)end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Plane:ClosestPointOnPlane(point)end
---@param point UnityEngine.Vector3
---@return System.Single
function UnityEngine.Plane:GetDistanceToPoint(point)end
---@param point UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Plane:GetSide(point)end
---@param inPt0 UnityEngine.Vector3
---@param inPt1 UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Plane:SameSide(inPt0, inPt1)end
---@param ray UnityEngine.Ray
---@param enter System.Single
---@return System.Boolean
function UnityEngine.Plane:Raycast(ray, enter)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Plane:ToString()end
---@class UnityEngine.PlayerPrefsException : System.Exception
UnityEngine.PlayerPrefsException = {}
---@type UnityEngine.PlayerPrefsException
CS.UnityEngine.PlayerPrefsException = UnityEngine.PlayerPrefsException

---@class UnityEngine.PlayerPrefs : System.Object
UnityEngine.PlayerPrefs = {}
---@type UnityEngine.PlayerPrefs
CS.UnityEngine.PlayerPrefs = UnityEngine.PlayerPrefs

---@param key System.String
---@param value System.Int32
---@return System.Void
function UnityEngine.PlayerPrefs.SetInt(key, value)end
---@overload fun(key:System.String, defaultValue:System.Int32):System.Int32
---@param key System.String
---@return System.Int32
function UnityEngine.PlayerPrefs.GetInt(key)end
---@param key System.String
---@param value System.Single
---@return System.Void
function UnityEngine.PlayerPrefs.SetFloat(key, value)end
---@overload fun(key:System.String, defaultValue:System.Single):System.Single
---@param key System.String
---@return System.Single
function UnityEngine.PlayerPrefs.GetFloat(key)end
---@param key System.String
---@param value System.String
---@return System.Void
function UnityEngine.PlayerPrefs.SetString(key, value)end
---@overload fun(key:System.String, defaultValue:System.String):System.String
---@param key System.String
---@return System.String
function UnityEngine.PlayerPrefs.GetString(key)end
---@param key System.String
---@return System.Boolean
function UnityEngine.PlayerPrefs.HasKey(key)end
---@param key System.String
---@return System.Void
function UnityEngine.PlayerPrefs.DeleteKey(key)end
---@return System.Void
function UnityEngine.PlayerPrefs.DeleteAll()end
---@return System.Void
function UnityEngine.PlayerPrefs.Save()end
---@class UnityEngine.Pose : System.ValueType
---@field public forward UnityEngine.Vector3 @  getter
---@field public right UnityEngine.Vector3 @  getter
---@field public up UnityEngine.Vector3 @  getter
---@field public identity UnityEngine.Pose @static  getter
---@field public position UnityEngine.Vector3
---@field public rotation UnityEngine.Quaternion
UnityEngine.Pose = {}
---@type UnityEngine.Pose
CS.UnityEngine.Pose = UnityEngine.Pose

---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Pose:ToString()end
---@overload fun(lhs:UnityEngine.Transform):UnityEngine.Pose
---@param lhs UnityEngine.Pose
---@return UnityEngine.Pose
function UnityEngine.Pose:GetTransformedBy(lhs)end
---@overload fun(other:UnityEngine.Pose):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Pose:Equals(obj)end
---@return System.Int32
function UnityEngine.Pose:GetHashCode()end
---@param a UnityEngine.Pose
---@param b UnityEngine.Pose
---@return System.Boolean
function UnityEngine.Pose.op_Equality(a, b)end
---@param a UnityEngine.Pose
---@param b UnityEngine.Pose
---@return System.Boolean
function UnityEngine.Pose.op_Inequality(a, b)end
---@class UnityEngine.PropertyAttribute : System.Attribute
---@field public order System.Int32 @ setter getter
UnityEngine.PropertyAttribute = {}
---@type UnityEngine.PropertyAttribute
CS.UnityEngine.PropertyAttribute = UnityEngine.PropertyAttribute

---@class UnityEngine.ContextMenuItemAttribute : UnityEngine.PropertyAttribute
---@field public name System.String
---@field public function System.String
UnityEngine.ContextMenuItemAttribute = {}
---@type UnityEngine.ContextMenuItemAttribute
CS.UnityEngine.ContextMenuItemAttribute = UnityEngine.ContextMenuItemAttribute

---@class UnityEngine.TooltipAttribute : UnityEngine.PropertyAttribute
---@field public tooltip System.String
UnityEngine.TooltipAttribute = {}
---@type UnityEngine.TooltipAttribute
CS.UnityEngine.TooltipAttribute = UnityEngine.TooltipAttribute

---@class UnityEngine.SpaceAttribute : UnityEngine.PropertyAttribute
---@field public height System.Single
UnityEngine.SpaceAttribute = {}
---@type UnityEngine.SpaceAttribute
CS.UnityEngine.SpaceAttribute = UnityEngine.SpaceAttribute

---@class UnityEngine.HeaderAttribute : UnityEngine.PropertyAttribute
---@field public header System.String
UnityEngine.HeaderAttribute = {}
---@type UnityEngine.HeaderAttribute
CS.UnityEngine.HeaderAttribute = UnityEngine.HeaderAttribute

---@class UnityEngine.RangeAttribute : UnityEngine.PropertyAttribute
---@field public min System.Single
---@field public max System.Single
UnityEngine.RangeAttribute = {}
---@type UnityEngine.RangeAttribute
CS.UnityEngine.RangeAttribute = UnityEngine.RangeAttribute

---@class UnityEngine.MinAttribute : UnityEngine.PropertyAttribute
---@field public min System.Single
UnityEngine.MinAttribute = {}
---@type UnityEngine.MinAttribute
CS.UnityEngine.MinAttribute = UnityEngine.MinAttribute

---@class UnityEngine.MultilineAttribute : UnityEngine.PropertyAttribute
---@field public lines System.Int32
UnityEngine.MultilineAttribute = {}
---@type UnityEngine.MultilineAttribute
CS.UnityEngine.MultilineAttribute = UnityEngine.MultilineAttribute

---@class UnityEngine.TextAreaAttribute : UnityEngine.PropertyAttribute
---@field public minLines System.Int32
---@field public maxLines System.Int32
UnityEngine.TextAreaAttribute = {}
---@type UnityEngine.TextAreaAttribute
CS.UnityEngine.TextAreaAttribute = UnityEngine.TextAreaAttribute

---@class UnityEngine.ColorUsageAttribute : UnityEngine.PropertyAttribute
---@field public showAlpha System.Boolean
---@field public hdr System.Boolean
---@field public minBrightness System.Single
---@field public maxBrightness System.Single
---@field public minExposureValue System.Single
---@field public maxExposureValue System.Single
UnityEngine.ColorUsageAttribute = {}
---@type UnityEngine.ColorUsageAttribute
CS.UnityEngine.ColorUsageAttribute = UnityEngine.ColorUsageAttribute

---@class UnityEngine.GradientUsageAttribute : UnityEngine.PropertyAttribute
---@field public hdr System.Boolean
UnityEngine.GradientUsageAttribute = {}
---@type UnityEngine.GradientUsageAttribute
CS.UnityEngine.GradientUsageAttribute = UnityEngine.GradientUsageAttribute

---@class UnityEngine.DelayedAttribute : UnityEngine.PropertyAttribute
UnityEngine.DelayedAttribute = {}
---@type UnityEngine.DelayedAttribute
CS.UnityEngine.DelayedAttribute = UnityEngine.DelayedAttribute

---@class UnityEngine.PropertyName : System.ValueType
UnityEngine.PropertyName = {}
---@type UnityEngine.PropertyName
CS.UnityEngine.PropertyName = UnityEngine.PropertyName

---@param prop UnityEngine.PropertyName
---@return System.Boolean
function UnityEngine.PropertyName.IsNullOrEmpty(prop)end
---@param lhs UnityEngine.PropertyName
---@param rhs UnityEngine.PropertyName
---@return System.Boolean
function UnityEngine.PropertyName.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.PropertyName
---@param rhs UnityEngine.PropertyName
---@return System.Boolean
function UnityEngine.PropertyName.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.PropertyName:GetHashCode()end
---@overload fun(other:UnityEngine.PropertyName):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.PropertyName:Equals(other)end
---@overload fun(name:System.String):UnityEngine.PropertyName
---@param id System.Int32
---@return UnityEngine.PropertyName
function UnityEngine.PropertyName.op_Implicit(id)end
---@return System.String
function UnityEngine.PropertyName:ToString()end
---@class UnityEngine.Random : System.Object
---@field public seed System.Int32 @static setter getter
---@field public state UnityEngine.Random.State @static setter getter
---@field public value System.Single @static  getter
---@field public insideUnitSphere UnityEngine.Vector3 @static  getter
---@field public insideUnitCircle UnityEngine.Vector2 @static  getter
---@field public onUnitSphere UnityEngine.Vector3 @static  getter
---@field public rotation UnityEngine.Quaternion @static  getter
---@field public rotationUniform UnityEngine.Quaternion @static  getter
UnityEngine.Random = {}
---@type UnityEngine.Random
CS.UnityEngine.Random = UnityEngine.Random

---@param seed System.Int32
---@return System.Void
function UnityEngine.Random.InitState(seed)end
---@overload fun(min:System.Int32, max:System.Int32):System.Int32
---@param min System.Single
---@param max System.Single
---@return System.Single
function UnityEngine.Random.Range(min, max)end
---@overload fun(min:System.Int32, max:System.Int32):System.Int32
---@param min System.Single
---@param max System.Single
---@return System.Single
function UnityEngine.Random.RandomRange(min, max)end
---@overload fun(hueMin:System.Single, hueMax:System.Single):UnityEngine.Color
---@overload fun(hueMin:System.Single, hueMax:System.Single, saturationMin:System.Single, saturationMax:System.Single):UnityEngine.Color
---@overload fun(hueMin:System.Single, hueMax:System.Single, saturationMin:System.Single, saturationMax:System.Single, valueMin:System.Single, valueMax:System.Single):UnityEngine.Color
---@overload fun(hueMin:System.Single, hueMax:System.Single, saturationMin:System.Single, saturationMax:System.Single, valueMin:System.Single, valueMax:System.Single, alphaMin:System.Single, alphaMax:System.Single):UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Random.ColorHSV()end
---@class UnityEngine.Random.State : System.ValueType
UnityEngine.Random.State = {}
---@type UnityEngine.Random.State
CS.UnityEngine.Random.State = UnityEngine.Random.State

---@class UnityEngine.RangeInt : System.ValueType
---@field public end System.Int32 @  getter
---@field public start System.Int32
---@field public length System.Int32
UnityEngine.RangeInt = {}
---@type UnityEngine.RangeInt
CS.UnityEngine.RangeInt = UnityEngine.RangeInt

---@class UnityEngine.Ray : System.ValueType
---@field public origin UnityEngine.Vector3 @ setter getter
---@field public direction UnityEngine.Vector3 @ setter getter
UnityEngine.Ray = {}
---@type UnityEngine.Ray
CS.UnityEngine.Ray = UnityEngine.Ray

---@param distance System.Single
---@return UnityEngine.Vector3
function UnityEngine.Ray:GetPoint(distance)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Ray:ToString()end
---@class UnityEngine.Ray2D : System.ValueType
---@field public origin UnityEngine.Vector2 @ setter getter
---@field public direction UnityEngine.Vector2 @ setter getter
UnityEngine.Ray2D = {}
---@type UnityEngine.Ray2D
CS.UnityEngine.Ray2D = UnityEngine.Ray2D

---@param distance System.Single
---@return UnityEngine.Vector2
function UnityEngine.Ray2D:GetPoint(distance)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Ray2D:ToString()end
---@class UnityEngine.Rect : System.ValueType
---@field public zero UnityEngine.Rect @static  getter
---@field public x System.Single @ setter getter
---@field public y System.Single @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public center UnityEngine.Vector2 @ setter getter
---@field public min UnityEngine.Vector2 @ setter getter
---@field public max UnityEngine.Vector2 @ setter getter
---@field public width System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public size UnityEngine.Vector2 @ setter getter
---@field public xMin System.Single @ setter getter
---@field public yMin System.Single @ setter getter
---@field public xMax System.Single @ setter getter
---@field public yMax System.Single @ setter getter
---@field public left System.Single @  getter
---@field public right System.Single @  getter
---@field public top System.Single @  getter
---@field public bottom System.Single @  getter
UnityEngine.Rect = {}
---@type UnityEngine.Rect
CS.UnityEngine.Rect = UnityEngine.Rect

---@param xmin System.Single
---@param ymin System.Single
---@param xmax System.Single
---@param ymax System.Single
---@return UnityEngine.Rect
function UnityEngine.Rect.MinMaxRect(xmin, ymin, xmax, ymax)end
---@param x System.Single
---@param y System.Single
---@param width System.Single
---@param height System.Single
---@return System.Void
function UnityEngine.Rect:Set(x, y, width, height)end
---@overload fun(point:UnityEngine.Vector3):System.Boolean
---@overload fun(point:UnityEngine.Vector3, allowInverse:System.Boolean):System.Boolean
---@param point UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Rect:Contains(point)end
---@overload fun(other:UnityEngine.Rect, allowInverse:System.Boolean):System.Boolean
---@param other UnityEngine.Rect
---@return System.Boolean
function UnityEngine.Rect:Overlaps(other)end
---@param rectangle UnityEngine.Rect
---@param normalizedRectCoordinates UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rect.NormalizedToPoint(rectangle, normalizedRectCoordinates)end
---@param rectangle UnityEngine.Rect
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rect.PointToNormalized(rectangle, point)end
---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return System.Boolean
function UnityEngine.Rect.op_Inequality(lhs, rhs)end
---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return System.Boolean
function UnityEngine.Rect.op_Equality(lhs, rhs)end
---@return System.Int32
function UnityEngine.Rect:GetHashCode()end
---@overload fun(other:UnityEngine.Rect):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Rect:Equals(other)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Rect:ToString()end
---@class UnityEngine.RectInt : System.ValueType
---@field public x System.Int32 @ setter getter
---@field public y System.Int32 @ setter getter
---@field public center UnityEngine.Vector2 @  getter
---@field public min UnityEngine.Vector2Int @ setter getter
---@field public max UnityEngine.Vector2Int @ setter getter
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public xMin System.Int32 @ setter getter
---@field public yMin System.Int32 @ setter getter
---@field public xMax System.Int32 @ setter getter
---@field public yMax System.Int32 @ setter getter
---@field public position UnityEngine.Vector2Int @ setter getter
---@field public size UnityEngine.Vector2Int @ setter getter
---@field public allPositionsWithin UnityEngine.RectInt.PositionEnumerator @  getter
UnityEngine.RectInt = {}
---@type UnityEngine.RectInt
CS.UnityEngine.RectInt = UnityEngine.RectInt

---@param minPosition UnityEngine.Vector2Int
---@param maxPosition UnityEngine.Vector2Int
---@return System.Void
function UnityEngine.RectInt:SetMinMax(minPosition, maxPosition)end
---@param bounds UnityEngine.RectInt
---@return System.Void
function UnityEngine.RectInt:ClampToBounds(bounds)end
---@param position UnityEngine.Vector2Int
---@return System.Boolean
function UnityEngine.RectInt:Contains(position)end
---@return System.String
function UnityEngine.RectInt:ToString()end
---@param other UnityEngine.RectInt
---@return System.Boolean
function UnityEngine.RectInt:Equals(other)end
---@class UnityEngine.RectInt.PositionEnumerator : System.ValueType
---@field public Current UnityEngine.Vector2Int @  getter
UnityEngine.RectInt.PositionEnumerator = {}
---@type UnityEngine.RectInt.PositionEnumerator
CS.UnityEngine.RectInt.PositionEnumerator = UnityEngine.RectInt.PositionEnumerator

---@return UnityEngine.RectInt.PositionEnumerator
function UnityEngine.RectInt.PositionEnumerator:GetEnumerator()end
---@return System.Boolean
function UnityEngine.RectInt.PositionEnumerator:MoveNext()end
---@return System.Void
function UnityEngine.RectInt.PositionEnumerator:Reset()end
---@class UnityEngine.ReflectionProbe : UnityEngine.Behaviour
---@field public type UnityEngine.Rendering.ReflectionProbeType @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
---@field public center UnityEngine.Vector3 @ setter getter
---@field public nearClipPlane System.Single @ setter getter
---@field public farClipPlane System.Single @ setter getter
---@field public intensity System.Single @ setter getter
---@field public bounds UnityEngine.Bounds @  getter
---@field public hdr System.Boolean @ setter getter
---@field public shadowDistance System.Single @ setter getter
---@field public resolution System.Int32 @ setter getter
---@field public cullingMask System.Int32 @ setter getter
---@field public clearFlags UnityEngine.Rendering.ReflectionProbeClearFlags @ setter getter
---@field public backgroundColor UnityEngine.Color @ setter getter
---@field public blendDistance System.Single @ setter getter
---@field public boxProjection System.Boolean @ setter getter
---@field public mode UnityEngine.Rendering.ReflectionProbeMode @ setter getter
---@field public importance System.Int32 @ setter getter
---@field public refreshMode UnityEngine.Rendering.ReflectionProbeRefreshMode @ setter getter
---@field public timeSlicingMode UnityEngine.Rendering.ReflectionProbeTimeSlicingMode @ setter getter
---@field public bakedTexture UnityEngine.Texture @ setter getter
---@field public customBakedTexture UnityEngine.Texture @ setter getter
---@field public realtimeTexture UnityEngine.RenderTexture @ setter getter
---@field public texture UnityEngine.Texture @  getter
---@field public textureHDRDecodeValues UnityEngine.Vector4 @  getter
---@field public minBakedCubemapResolution System.Int32 @static  getter
---@field public maxBakedCubemapResolution System.Int32 @static  getter
---@field public defaultTextureHDRDecodeValues UnityEngine.Vector4 @static  getter
---@field public defaultTexture UnityEngine.Texture @static  getter
UnityEngine.ReflectionProbe = {}
---@type UnityEngine.ReflectionProbe
CS.UnityEngine.ReflectionProbe = UnityEngine.ReflectionProbe

---@return System.Void
function UnityEngine.ReflectionProbe:Reset()end
---@overload fun(targetTexture:UnityEngine.RenderTexture):System.Int32
---@return System.Int32
function UnityEngine.ReflectionProbe:RenderProbe()end
---@param renderId System.Int32
---@return System.Boolean
function UnityEngine.ReflectionProbe:IsFinishedRendering(renderId)end
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@param blend System.Single
---@param target UnityEngine.RenderTexture
---@return System.Boolean
function UnityEngine.ReflectionProbe.BlendCubemap(src, dst, blend, target)end
---@param value System.Action
---@return System.Void
function UnityEngine.ReflectionProbe.add_reflectionProbeChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.ReflectionProbe.remove_reflectionProbeChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.ReflectionProbe.add_defaultReflectionSet(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.ReflectionProbe.remove_defaultReflectionSet(value)end
---@class UnityEngine.ReflectionProbe.ReflectionProbeEvent : System.Enum
UnityEngine.ReflectionProbe.ReflectionProbeEvent = {}
---@type UnityEngine.ReflectionProbe.ReflectionProbeEvent
CS.UnityEngine.ReflectionProbe.ReflectionProbeEvent = UnityEngine.ReflectionProbe.ReflectionProbeEvent

---@return System.Int32 value:0
UnityEngine.ReflectionProbe.ReflectionProbeEvent.ReflectionProbeAdded = 0
---@return System.Int32 value:1
UnityEngine.ReflectionProbe.ReflectionProbeEvent.ReflectionProbeRemoved = 1

---@class UnityEngine.ResourceRequest : UnityEngine.AsyncOperation
---@field public asset UnityEngine.Object @  getter
UnityEngine.ResourceRequest = {}
---@type UnityEngine.ResourceRequest
CS.UnityEngine.ResourceRequest = UnityEngine.ResourceRequest

---@class UnityEngine.Resources : System.Object
UnityEngine.Resources = {}
---@type UnityEngine.Resources
CS.UnityEngine.Resources = UnityEngine.Resources

---@overload fun(type:System.Type):UnityEngine.Object[]
---@return T[]
function UnityEngine.Resources.FindObjectsOfTypeAll()end
---@overload fun(path:System.String):any
---@overload fun(path:System.String, systemTypeInstance:System.Type):UnityEngine.Object
---@param path System.String
---@return UnityEngine.Object
function UnityEngine.Resources.Load(path)end
---@overload fun(path:System.String):UnityEngine.ResourceRequest
---@overload fun(path:System.String, type:System.Type):UnityEngine.ResourceRequest
---@param path System.String
---@return UnityEngine.ResourceRequest
function UnityEngine.Resources.LoadAsync(path)end
---@overload fun(path:System.String):T[]
---@overload fun(path:System.String, systemTypeInstance:System.Type):UnityEngine.Object[]
---@param path System.String
---@return UnityEngine.Object[]
function UnityEngine.Resources.LoadAll(path)end
---@overload fun(type:System.Type, path:System.String):UnityEngine.Object
---@param path System.String
---@return any
function UnityEngine.Resources.GetBuiltinResource(path)end
---@param assetToUnload UnityEngine.Object
---@return System.Void
function UnityEngine.Resources.UnloadAsset(assetToUnload)end
---@return UnityEngine.AsyncOperation
function UnityEngine.Resources.UnloadUnusedAssets()end
---@overload fun(assetPath:System.String, type:System.Type):UnityEngine.Object
---@param assetPath System.String
---@return any
function UnityEngine.Resources.LoadAssetAtPath(assetPath)end
---@class UnityEngine.RuntimeInitializeLoadType : System.Enum
UnityEngine.RuntimeInitializeLoadType = {}
---@type UnityEngine.RuntimeInitializeLoadType
CS.UnityEngine.RuntimeInitializeLoadType = UnityEngine.RuntimeInitializeLoadType

---@return System.Int32 value:0
UnityEngine.RuntimeInitializeLoadType.AfterSceneLoad = 0
---@return System.Int32 value:1
UnityEngine.RuntimeInitializeLoadType.BeforeSceneLoad = 1

---@class UnityEngine.RuntimeInitializeOnLoadMethodAttribute : UnityEngine.Scripting.PreserveAttribute
---@field public loadType UnityEngine.RuntimeInitializeLoadType @ setter getter
UnityEngine.RuntimeInitializeOnLoadMethodAttribute = {}
---@type UnityEngine.RuntimeInitializeOnLoadMethodAttribute
CS.UnityEngine.RuntimeInitializeOnLoadMethodAttribute = UnityEngine.RuntimeInitializeOnLoadMethodAttribute

---@class UnityEngine.ScriptableObject : UnityEngine.Object
UnityEngine.ScriptableObject = {}
---@type UnityEngine.ScriptableObject
CS.UnityEngine.ScriptableObject = UnityEngine.ScriptableObject

---@return System.Void
function UnityEngine.ScriptableObject:SetDirty()end
---@overload fun(className:System.String):UnityEngine.ScriptableObject
---@overload fun(type:System.Type):UnityEngine.ScriptableObject
---@return any
function UnityEngine.ScriptableObject.CreateInstance()end
---@class UnityEngine.Security : System.Object
UnityEngine.Security = {}
---@type UnityEngine.Security
CS.UnityEngine.Security = UnityEngine.Security

---@overload fun(assemblyData:System.Byte[], authorizationKey:System.String):System.Reflection.Assembly
---@param assemblyData System.Byte[]
---@return System.Reflection.Assembly
function UnityEngine.Security.LoadAndVerifyAssembly(assemblyData)end
---@overload fun(ip:System.String, atPort:System.Int32, timeout:System.Int32):System.Boolean
---@param ip System.String
---@param atPort System.Int32
---@return System.Boolean
function UnityEngine.Security.PrefetchSocketPolicy(ip, atPort)end
---@class UnityEngine.Types : System.Object
UnityEngine.Types = {}
---@type UnityEngine.Types
CS.UnityEngine.Types = UnityEngine.Types

---@param typeName System.String
---@param assemblyName System.String
---@return System.Type
function UnityEngine.Types.GetType(typeName, assemblyName)end
---@class UnityEngine.SelectionBaseAttribute : System.Attribute
UnityEngine.SelectionBaseAttribute = {}
---@type UnityEngine.SelectionBaseAttribute
CS.UnityEngine.SelectionBaseAttribute = UnityEngine.SelectionBaseAttribute

---@class UnityEngine.SerializePrivateVariables : System.Attribute
UnityEngine.SerializePrivateVariables = {}
---@type UnityEngine.SerializePrivateVariables
CS.UnityEngine.SerializePrivateVariables = UnityEngine.SerializePrivateVariables

---@class UnityEngine.SerializeField : System.Attribute
UnityEngine.SerializeField = {}
---@type UnityEngine.SerializeField
CS.UnityEngine.SerializeField = UnityEngine.SerializeField

---@class UnityEngine.PreferBinarySerialization : System.Attribute
UnityEngine.PreferBinarySerialization = {}
---@type UnityEngine.PreferBinarySerialization
CS.UnityEngine.PreferBinarySerialization = UnityEngine.PreferBinarySerialization

---@class UnityEngine.ShaderVariantCollection : UnityEngine.Object
---@field public shaderCount System.Int32 @  getter
---@field public variantCount System.Int32 @  getter
---@field public isWarmedUp System.Boolean @  getter
UnityEngine.ShaderVariantCollection = {}
---@type UnityEngine.ShaderVariantCollection
CS.UnityEngine.ShaderVariantCollection = UnityEngine.ShaderVariantCollection

---@return System.Void
function UnityEngine.ShaderVariantCollection:Clear()end
---@return System.Void
function UnityEngine.ShaderVariantCollection:WarmUp()end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return System.Boolean
function UnityEngine.ShaderVariantCollection:Add(variant)end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return System.Boolean
function UnityEngine.ShaderVariantCollection:Remove(variant)end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return System.Boolean
function UnityEngine.ShaderVariantCollection:Contains(variant)end
---@class UnityEngine.ShaderVariantCollection.ShaderVariant : System.ValueType
---@field public shader UnityEngine.Shader
---@field public passType UnityEngine.Rendering.PassType
---@field public keywords System.String[]
UnityEngine.ShaderVariantCollection.ShaderVariant = {}
---@type UnityEngine.ShaderVariantCollection.ShaderVariant
CS.UnityEngine.ShaderVariantCollection.ShaderVariant = UnityEngine.ShaderVariantCollection.ShaderVariant

---@class UnityEngine.ComputeShader : UnityEngine.Object
UnityEngine.ComputeShader = {}
---@type UnityEngine.ComputeShader
CS.UnityEngine.ComputeShader = UnityEngine.ComputeShader

---@param name System.String
---@return System.Int32
function UnityEngine.ComputeShader:FindKernel(name)end
---@param name System.String
---@return System.Boolean
function UnityEngine.ComputeShader:HasKernel(name)end
---@overload fun(name:System.String, val:System.Single):System.Void
---@param nameID System.Int32
---@param val System.Single
---@return System.Void
function UnityEngine.ComputeShader:SetFloat(nameID, val)end
---@overload fun(name:System.String, val:System.Int32):System.Void
---@param nameID System.Int32
---@param val System.Int32
---@return System.Void
function UnityEngine.ComputeShader:SetInt(nameID, val)end
---@overload fun(name:System.String, val:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param val UnityEngine.Vector4
---@return System.Void
function UnityEngine.ComputeShader:SetVector(nameID, val)end
---@overload fun(name:System.String, val:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param val UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.ComputeShader:SetMatrix(nameID, val)end
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):System.Void
---@param nameID System.Int32
---@param values UnityEngine.Vector4[]
---@return System.Void
function UnityEngine.ComputeShader:SetVectorArray(nameID, values)end
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param nameID System.Int32
---@param values UnityEngine.Matrix4x4[]
---@return System.Void
function UnityEngine.ComputeShader:SetMatrixArray(nameID, values)end
---@overload fun(kernelIndex:System.Int32, nameID:System.Int32, texture:UnityEngine.Texture, mipLevel:System.Int32):System.Void
---@overload fun(kernelIndex:System.Int32, name:System.String, texture:UnityEngine.Texture):System.Void
---@overload fun(kernelIndex:System.Int32, name:System.String, texture:UnityEngine.Texture, mipLevel:System.Int32):System.Void
---@param kernelIndex System.Int32
---@param nameID System.Int32
---@param texture UnityEngine.Texture
---@return System.Void
function UnityEngine.ComputeShader:SetTexture(kernelIndex, nameID, texture)end
---@overload fun(kernelIndex:System.Int32, name:System.String, globalTextureName:System.String):System.Void
---@param kernelIndex System.Int32
---@param nameID System.Int32
---@param globalTextureNameID System.Int32
---@return System.Void
function UnityEngine.ComputeShader:SetTextureFromGlobal(kernelIndex, nameID, globalTextureNameID)end
---@overload fun(kernelIndex:System.Int32, name:System.String, buffer:UnityEngine.ComputeBuffer):System.Void
---@param kernelIndex System.Int32
---@param nameID System.Int32
---@param buffer UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.ComputeShader:SetBuffer(kernelIndex, nameID, buffer)end
---@param kernelIndex System.Int32
---@param x System.UInt32
---@param y System.UInt32
---@param z System.UInt32
---@return System.Void
function UnityEngine.ComputeShader:GetKernelThreadGroupSizes(kernelIndex, x, y, z)end
---@param kernelIndex System.Int32
---@param threadGroupsX System.Int32
---@param threadGroupsY System.Int32
---@param threadGroupsZ System.Int32
---@return System.Void
function UnityEngine.ComputeShader:Dispatch(kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ)end
---@overload fun(name:System.String, values:System.Single[]):System.Void
---@param nameID System.Int32
---@param values System.Single[]
---@return System.Void
function UnityEngine.ComputeShader:SetFloats(nameID, values)end
---@overload fun(name:System.String, values:System.Int32[]):System.Void
---@param nameID System.Int32
---@param values System.Int32[]
---@return System.Void
function UnityEngine.ComputeShader:SetInts(nameID, values)end
---@overload fun(name:System.String, val:System.Boolean):System.Void
---@param nameID System.Int32
---@param val System.Boolean
---@return System.Void
function UnityEngine.ComputeShader:SetBool(nameID, val)end
---@overload fun(kernelIndex:System.Int32, argsBuffer:UnityEngine.ComputeBuffer, argsOffset:System.UInt32):System.Void
---@param kernelIndex System.Int32
---@param argsBuffer UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer)end
---@class UnityEngine.SortingLayer : System.ValueType
---@field public id System.Int32 @  getter
---@field public name System.String @  getter
---@field public value System.Int32 @  getter
---@field public layers UnityEngine.SortingLayer[] @static  getter
UnityEngine.SortingLayer = {}
---@type UnityEngine.SortingLayer
CS.UnityEngine.SortingLayer = UnityEngine.SortingLayer

---@param id System.Int32
---@return System.Int32
function UnityEngine.SortingLayer.GetLayerValueFromID(id)end
---@param name System.String
---@return System.Int32
function UnityEngine.SortingLayer.GetLayerValueFromName(name)end
---@param name System.String
---@return System.Int32
function UnityEngine.SortingLayer.NameToID(name)end
---@param id System.Int32
---@return System.String
function UnityEngine.SortingLayer.IDToName(id)end
---@param id System.Int32
---@return System.Boolean
function UnityEngine.SortingLayer.IsValid(id)end
---@class UnityEngine.StackTraceUtility : System.Object
UnityEngine.StackTraceUtility = {}
---@type UnityEngine.StackTraceUtility
CS.UnityEngine.StackTraceUtility = UnityEngine.StackTraceUtility

---@return System.String
function UnityEngine.StackTraceUtility.ExtractStackTrace()end
---@param exception System.Object
---@return System.String
function UnityEngine.StackTraceUtility.ExtractStringFromException(exception)end
---@class UnityEngine.UnityException : System.SystemException
UnityEngine.UnityException = {}
---@type UnityEngine.UnityException
CS.UnityEngine.UnityException = UnityEngine.UnityException

---@class UnityEngine.MissingComponentException : System.SystemException
UnityEngine.MissingComponentException = {}
---@type UnityEngine.MissingComponentException
CS.UnityEngine.MissingComponentException = UnityEngine.MissingComponentException

---@class UnityEngine.UnassignedReferenceException : System.SystemException
UnityEngine.UnassignedReferenceException = {}
---@type UnityEngine.UnassignedReferenceException
CS.UnityEngine.UnassignedReferenceException = UnityEngine.UnassignedReferenceException

---@class UnityEngine.MissingReferenceException : System.SystemException
UnityEngine.MissingReferenceException = {}
---@type UnityEngine.MissingReferenceException
CS.UnityEngine.MissingReferenceException = UnityEngine.MissingReferenceException

---@class UnityEngine.BatteryStatus : System.Enum
UnityEngine.BatteryStatus = {}
---@type UnityEngine.BatteryStatus
CS.UnityEngine.BatteryStatus = UnityEngine.BatteryStatus

---@return System.Int32 value:0
UnityEngine.BatteryStatus.Unknown = 0
---@return System.Int32 value:1
UnityEngine.BatteryStatus.Charging = 1
---@return System.Int32 value:2
UnityEngine.BatteryStatus.Discharging = 2
---@return System.Int32 value:3
UnityEngine.BatteryStatus.NotCharging = 3
---@return System.Int32 value:4
UnityEngine.BatteryStatus.Full = 4

---@class UnityEngine.OperatingSystemFamily : System.Enum
UnityEngine.OperatingSystemFamily = {}
---@type UnityEngine.OperatingSystemFamily
CS.UnityEngine.OperatingSystemFamily = UnityEngine.OperatingSystemFamily

---@return System.Int32 value:0
UnityEngine.OperatingSystemFamily.Other = 0
---@return System.Int32 value:1
UnityEngine.OperatingSystemFamily.MacOSX = 1
---@return System.Int32 value:2
UnityEngine.OperatingSystemFamily.Windows = 2
---@return System.Int32 value:3
UnityEngine.OperatingSystemFamily.Linux = 3

---@class UnityEngine.DeviceType : System.Enum
UnityEngine.DeviceType = {}
---@type UnityEngine.DeviceType
CS.UnityEngine.DeviceType = UnityEngine.DeviceType

---@return System.Int32 value:0
UnityEngine.DeviceType.Unknown = 0
---@return System.Int32 value:1
UnityEngine.DeviceType.Handheld = 1
---@return System.Int32 value:2
UnityEngine.DeviceType.Console = 2
---@return System.Int32 value:3
UnityEngine.DeviceType.Desktop = 3

---@class UnityEngine.SystemInfo : System.Object
---@field public batteryLevel System.Single @static  getter
---@field public batteryStatus UnityEngine.BatteryStatus @static  getter
---@field public operatingSystem System.String @static  getter
---@field public operatingSystemFamily UnityEngine.OperatingSystemFamily @static  getter
---@field public processorType System.String @static  getter
---@field public processorFrequency System.Int32 @static  getter
---@field public processorCount System.Int32 @static  getter
---@field public systemMemorySize System.Int32 @static  getter
---@field public deviceUniqueIdentifier System.String @static  getter
---@field public deviceName System.String @static  getter
---@field public deviceModel System.String @static  getter
---@field public supportsAccelerometer System.Boolean @static  getter
---@field public supportsGyroscope System.Boolean @static  getter
---@field public supportsLocationService System.Boolean @static  getter
---@field public supportsVibration System.Boolean @static  getter
---@field public supportsAudio System.Boolean @static  getter
---@field public deviceType UnityEngine.DeviceType @static  getter
---@field public graphicsMemorySize System.Int32 @static  getter
---@field public graphicsDeviceName System.String @static  getter
---@field public graphicsDeviceVendor System.String @static  getter
---@field public graphicsDeviceID System.Int32 @static  getter
---@field public graphicsDeviceVendorID System.Int32 @static  getter
---@field public graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType @static  getter
---@field public graphicsUVStartsAtTop System.Boolean @static  getter
---@field public graphicsDeviceVersion System.String @static  getter
---@field public graphicsShaderLevel System.Int32 @static  getter
---@field public graphicsMultiThreaded System.Boolean @static  getter
---@field public hasHiddenSurfaceRemovalOnGPU System.Boolean @static  getter
---@field public hasDynamicUniformArrayIndexingInFragmentShaders System.Boolean @static  getter
---@field public supportsShadows System.Boolean @static  getter
---@field public supportsRawShadowDepthSampling System.Boolean @static  getter
---@field public supportsRenderTextures System.Boolean @static  getter
---@field public supportsMotionVectors System.Boolean @static  getter
---@field public supportsRenderToCubemap System.Boolean @static  getter
---@field public supportsImageEffects System.Boolean @static  getter
---@field public supports3DTextures System.Boolean @static  getter
---@field public supports2DArrayTextures System.Boolean @static  getter
---@field public supports3DRenderTextures System.Boolean @static  getter
---@field public supportsCubemapArrayTextures System.Boolean @static  getter
---@field public copyTextureSupport UnityEngine.Rendering.CopyTextureSupport @static  getter
---@field public supportsComputeShaders System.Boolean @static  getter
---@field public supportsInstancing System.Boolean @static  getter
---@field public supportsHardwareQuadTopology System.Boolean @static  getter
---@field public supports32bitsIndexBuffer System.Boolean @static  getter
---@field public supportsSparseTextures System.Boolean @static  getter
---@field public supportedRenderTargetCount System.Int32 @static  getter
---@field public supportsSeparatedRenderTargetsBlend System.Boolean @static  getter
---@field public supportsMultisampledTextures System.Int32 @static  getter
---@field public supportsMultisampleAutoResolve System.Boolean @static  getter
---@field public supportsTextureWrapMirrorOnce System.Int32 @static  getter
---@field public usesReversedZBuffer System.Boolean @static  getter
---@field public supportsStencil System.Int32 @static  getter
---@field public npotSupport UnityEngine.NPOTSupport @static  getter
---@field public maxTextureSize System.Int32 @static  getter
---@field public maxCubemapSize System.Int32 @static  getter
---@field public supportsAsyncCompute System.Boolean @static  getter
---@field public supportsGPUFence System.Boolean @static  getter
---@field public supportsAsyncGPUReadback System.Boolean @static  getter
---@field public supportsMipStreaming System.Boolean @static  getter
---@field public graphicsPixelFillrate System.Int32 @static  getter
---@field public supportsVertexPrograms System.Boolean @static  getter
---@field public unsupportedIdentifier System.String
UnityEngine.SystemInfo = {}
---@type UnityEngine.SystemInfo
CS.UnityEngine.SystemInfo = UnityEngine.SystemInfo

---@param format UnityEngine.RenderTextureFormat
---@return System.Boolean
function UnityEngine.SystemInfo.SupportsRenderTextureFormat(format)end
---@param format UnityEngine.RenderTextureFormat
---@return System.Boolean
function UnityEngine.SystemInfo.SupportsBlendingOnRenderTextureFormat(format)end
---@param format UnityEngine.TextureFormat
---@return System.Boolean
function UnityEngine.SystemInfo.SupportsTextureFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return System.Boolean
function UnityEngine.SystemInfo.IsFormatSupported(format, usage)end
---@class UnityEngine.TextAsset : UnityEngine.Object
---@field public text System.String @  getter
---@field public bytes System.Byte[] @  getter
UnityEngine.TextAsset = {}
---@type UnityEngine.TextAsset
CS.UnityEngine.TextAsset = UnityEngine.TextAsset

---@return System.String
function UnityEngine.TextAsset:ToString()end
---@class UnityEngine.Texture : UnityEngine.Object
---@field public masterTextureLimit System.Int32 @static setter getter
---@field public anisotropicFiltering UnityEngine.AnisotropicFiltering @static setter getter
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public dimension UnityEngine.Rendering.TextureDimension @ setter getter
---@field public isReadable System.Boolean @  getter
---@field public wrapMode UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeU UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeV UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeW UnityEngine.TextureWrapMode @ setter getter
---@field public filterMode UnityEngine.FilterMode @ setter getter
---@field public anisoLevel System.Int32 @ setter getter
---@field public mipMapBias System.Single @ setter getter
---@field public texelSize UnityEngine.Vector2 @  getter
---@field public updateCount System.UInt32 @  getter
---@field public imageContentsHash UnityEngine.Hash128 @ setter getter
---@field public totalTextureMemory System.UInt64 @static  getter
---@field public desiredTextureMemory System.UInt64 @static  getter
---@field public targetTextureMemory System.UInt64 @static  getter
---@field public currentTextureMemory System.UInt64 @static  getter
---@field public nonStreamingTextureMemory System.UInt64 @static  getter
---@field public streamingMipmapUploadCount System.UInt64 @static  getter
---@field public streamingRendererCount System.UInt64 @static  getter
---@field public streamingTextureCount System.UInt64 @static  getter
---@field public nonStreamingTextureCount System.UInt64 @static  getter
---@field public streamingTexturePendingLoadCount System.UInt64 @static  getter
---@field public streamingTextureLoadingCount System.UInt64 @static  getter
---@field public streamingTextureForceLoadAll System.Boolean @static setter getter
---@field public streamingTextureDiscardUnusedMips System.Boolean @static setter getter
UnityEngine.Texture = {}
---@type UnityEngine.Texture
CS.UnityEngine.Texture = UnityEngine.Texture

---@param forcedMin System.Int32
---@param globalMax System.Int32
---@return System.Void
function UnityEngine.Texture.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax)end
---@return System.IntPtr
function UnityEngine.Texture:GetNativeTexturePtr()end
---@return System.Int32
function UnityEngine.Texture:GetNativeTextureID()end
---@return System.Void
function UnityEngine.Texture:IncrementUpdateCount()end
---@return System.Void
function UnityEngine.Texture.SetStreamingTextureMaterialDebugProperties()end
---@class UnityEngine.Texture2D : UnityEngine.Texture
---@field public mipmapCount System.Int32 @  getter
---@field public format UnityEngine.TextureFormat @  getter
---@field public whiteTexture UnityEngine.Texture2D @static  getter
---@field public blackTexture UnityEngine.Texture2D @static  getter
---@field public isReadable System.Boolean @  getter
---@field public streamingMipmaps System.Boolean @  getter
---@field public streamingMipmapsPriority System.Int32 @  getter
---@field public requestedMipmapLevel System.Int32 @ setter getter
---@field public desiredMipmapLevel System.Int32 @  getter
---@field public loadingMipmapLevel System.Int32 @  getter
---@field public loadedMipmapLevel System.Int32 @  getter
---@field public alphaIsTransparency System.Boolean @ setter getter
UnityEngine.Texture2D = {}
---@type UnityEngine.Texture2D
CS.UnityEngine.Texture2D = UnityEngine.Texture2D

---@param highQuality System.Boolean
---@return System.Void
function UnityEngine.Texture2D:Compress(highQuality)end
---@return System.Void
function UnityEngine.Texture2D:ClearRequestedMipmapLevel()end
---@return System.Boolean
function UnityEngine.Texture2D:IsRequestedMipmapLevelLoaded()end
---@param nativeTex System.IntPtr
---@return System.Void
function UnityEngine.Texture2D:UpdateExternalTexture(nativeTex)end
---@overload fun():any
---@return System.Byte[]
function UnityEngine.Texture2D:GetRawTextureData()end
---@overload fun(miplevel:System.Int32):UnityEngine.Color[]
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32):UnityEngine.Color[]
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32, miplevel:System.Int32):UnityEngine.Color[]
---@return UnityEngine.Color[]
function UnityEngine.Texture2D:GetPixels()end
---@overload fun(miplevel:System.Int32):UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.Texture2D:GetPixels32()end
---@overload fun(textures:UnityEngine.Texture2D[], padding:System.Int32, maximumAtlasSize:System.Int32):UnityEngine.Rect[]
---@overload fun(textures:UnityEngine.Texture2D[], padding:System.Int32, maximumAtlasSize:System.Int32, makeNoLongerReadable:System.Boolean):UnityEngine.Rect[]
---@param textures UnityEngine.Texture2D[]
---@param padding System.Int32
---@return UnityEngine.Rect[]
function UnityEngine.Texture2D:PackTextures(textures, padding)end
---@param width System.Int32
---@param height System.Int32
---@param format UnityEngine.TextureFormat
---@param mipChain System.Boolean
---@param linear System.Boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture2D
function UnityEngine.Texture2D.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex)end
---@param x System.Int32
---@param y System.Int32
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.Texture2D:SetPixel(x, y, color)end
---@overload fun(colors:UnityEngine.Color[], miplevel:System.Int32):System.Void
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32, colors:UnityEngine.Color[]):System.Void
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32, colors:UnityEngine.Color[], miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color[]
---@return System.Void
function UnityEngine.Texture2D:SetPixels(colors)end
---@param x System.Int32
---@param y System.Int32
---@return UnityEngine.Color
function UnityEngine.Texture2D:GetPixel(x, y)end
---@param x System.Single
---@param y System.Single
---@return UnityEngine.Color
function UnityEngine.Texture2D:GetPixelBilinear(x, y)end
---@overload fun(data:System.Byte[]):System.Void
---@overload fun(data:any):System.Void
---@param data System.IntPtr
---@param size System.Int32
---@return System.Void
function UnityEngine.Texture2D:LoadRawTextureData(data, size)end
---@overload fun(updateMipmaps:System.Boolean):System.Void
---@overload fun(updateMipmaps:System.Boolean, makeNoLongerReadable:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Texture2D:Apply()end
---@overload fun(width:System.Int32, height:System.Int32, format:UnityEngine.TextureFormat, hasMipMap:System.Boolean):System.Boolean
---@param width System.Int32
---@param height System.Int32
---@return System.Boolean
function UnityEngine.Texture2D:Resize(width, height)end
---@overload fun(source:UnityEngine.Rect, destX:System.Int32, destY:System.Int32, recalculateMipMaps:System.Boolean):System.Void
---@param source UnityEngine.Rect
---@param destX System.Int32
---@param destY System.Int32
---@return System.Void
function UnityEngine.Texture2D:ReadPixels(source, destX, destY)end
---@param sizes UnityEngine.Vector2[]
---@param padding System.Int32
---@param atlasSize System.Int32
---@param results System.Collections.Generic.List
---@return System.Boolean
function UnityEngine.Texture2D.GenerateAtlas(sizes, padding, atlasSize, results)end
---@overload fun(colors:UnityEngine.Color32[], miplevel:System.Int32):System.Void
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32, colors:UnityEngine.Color32[]):System.Void
---@overload fun(x:System.Int32, y:System.Int32, blockWidth:System.Int32, blockHeight:System.Int32, colors:UnityEngine.Color32[], miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color32[]
---@return System.Void
function UnityEngine.Texture2D:SetPixels32(colors)end
---@class UnityEngine.Texture2D.EXRFlags : System.Enum
UnityEngine.Texture2D.EXRFlags = {}
---@type UnityEngine.Texture2D.EXRFlags
CS.UnityEngine.Texture2D.EXRFlags = UnityEngine.Texture2D.EXRFlags

---@return System.Int32 value:0
UnityEngine.Texture2D.EXRFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Texture2D.EXRFlags.OutputAsFloat = 1
---@return System.Int32 value:2
UnityEngine.Texture2D.EXRFlags.CompressZIP = 2
---@return System.Int32 value:4
UnityEngine.Texture2D.EXRFlags.CompressRLE = 4

---@class UnityEngine.Cubemap : UnityEngine.Texture
---@field public mipmapCount System.Int32 @  getter
---@field public format UnityEngine.TextureFormat @  getter
---@field public isReadable System.Boolean @  getter
UnityEngine.Cubemap = {}
---@type UnityEngine.Cubemap
CS.UnityEngine.Cubemap = UnityEngine.Cubemap

---@overload fun(smoothRegionWidthInPixels:System.Int32):System.Void
---@return System.Void
function UnityEngine.Cubemap:SmoothEdges()end
---@overload fun(face:UnityEngine.CubemapFace, miplevel:System.Int32):UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@return UnityEngine.Color[]
function UnityEngine.Cubemap:GetPixels(face)end
---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace, miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@return System.Void
function UnityEngine.Cubemap:SetPixels(colors, face)end
---@param width System.Int32
---@param format UnityEngine.TextureFormat
---@param mipmap System.Boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Cubemap
function UnityEngine.Cubemap.CreateExternalTexture(width, format, mipmap, nativeTex)end
---@param face UnityEngine.CubemapFace
---@param x System.Int32
---@param y System.Int32
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.Cubemap:SetPixel(face, x, y, color)end
---@param face UnityEngine.CubemapFace
---@param x System.Int32
---@param y System.Int32
---@return UnityEngine.Color
function UnityEngine.Cubemap:GetPixel(face, x, y)end
---@overload fun(updateMipmaps:System.Boolean):System.Void
---@overload fun(updateMipmaps:System.Boolean, makeNoLongerReadable:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Cubemap:Apply()end
---@class UnityEngine.Texture3D : UnityEngine.Texture
---@field public depth System.Int32 @  getter
---@field public format UnityEngine.TextureFormat @  getter
---@field public isReadable System.Boolean @  getter
UnityEngine.Texture3D = {}
---@type UnityEngine.Texture3D
CS.UnityEngine.Texture3D = UnityEngine.Texture3D

---@overload fun(miplevel:System.Int32):UnityEngine.Color[]
---@return UnityEngine.Color[]
function UnityEngine.Texture3D:GetPixels()end
---@overload fun(miplevel:System.Int32):UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.Texture3D:GetPixels32()end
---@overload fun(colors:UnityEngine.Color[], miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color[]
---@return System.Void
function UnityEngine.Texture3D:SetPixels(colors)end
---@overload fun(colors:UnityEngine.Color32[], miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color32[]
---@return System.Void
function UnityEngine.Texture3D:SetPixels32(colors)end
---@overload fun(updateMipmaps:System.Boolean):System.Void
---@overload fun(updateMipmaps:System.Boolean, makeNoLongerReadable:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Texture3D:Apply()end
---@class UnityEngine.Texture2DArray : UnityEngine.Texture
---@field public depth System.Int32 @  getter
---@field public format UnityEngine.TextureFormat @  getter
---@field public isReadable System.Boolean @  getter
UnityEngine.Texture2DArray = {}
---@type UnityEngine.Texture2DArray
CS.UnityEngine.Texture2DArray = UnityEngine.Texture2DArray

---@overload fun(arrayElement:System.Int32, miplevel:System.Int32):UnityEngine.Color[]
---@param arrayElement System.Int32
---@return UnityEngine.Color[]
function UnityEngine.Texture2DArray:GetPixels(arrayElement)end
---@overload fun(arrayElement:System.Int32, miplevel:System.Int32):UnityEngine.Color32[]
---@param arrayElement System.Int32
---@return UnityEngine.Color32[]
function UnityEngine.Texture2DArray:GetPixels32(arrayElement)end
---@overload fun(colors:UnityEngine.Color[], arrayElement:System.Int32, miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color[]
---@param arrayElement System.Int32
---@return System.Void
function UnityEngine.Texture2DArray:SetPixels(colors, arrayElement)end
---@overload fun(colors:UnityEngine.Color32[], arrayElement:System.Int32, miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color32[]
---@param arrayElement System.Int32
---@return System.Void
function UnityEngine.Texture2DArray:SetPixels32(colors, arrayElement)end
---@overload fun(updateMipmaps:System.Boolean):System.Void
---@overload fun(updateMipmaps:System.Boolean, makeNoLongerReadable:System.Boolean):System.Void
---@return System.Void
function UnityEngine.Texture2DArray:Apply()end
---@class UnityEngine.CubemapArray : UnityEngine.Texture
---@field public cubemapCount System.Int32 @  getter
---@field public format UnityEngine.TextureFormat @  getter
---@field public isReadable System.Boolean @  getter
UnityEngine.CubemapArray = {}
---@type UnityEngine.CubemapArray
CS.UnityEngine.CubemapArray = UnityEngine.CubemapArray

---@overload fun(face:UnityEngine.CubemapFace, arrayElement:System.Int32, miplevel:System.Int32):UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement System.Int32
---@return UnityEngine.Color[]
function UnityEngine.CubemapArray:GetPixels(face, arrayElement)end
---@overload fun(face:UnityEngine.CubemapFace, arrayElement:System.Int32, miplevel:System.Int32):UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement System.Int32
---@return UnityEngine.Color32[]
function UnityEngine.CubemapArray:GetPixels32(face, arrayElement)end
---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace, arrayElement:System.Int32, miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement System.Int32
---@return System.Void
function UnityEngine.CubemapArray:SetPixels(colors, face, arrayElement)end
---@overload fun(colors:UnityEngine.Color32[], face:UnityEngine.CubemapFace, arrayElement:System.Int32, miplevel:System.Int32):System.Void
---@param colors UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement System.Int32
---@return System.Void
function UnityEngine.CubemapArray:SetPixels32(colors, face, arrayElement)end
---@overload fun(updateMipmaps:System.Boolean):System.Void
---@overload fun(updateMipmaps:System.Boolean, makeNoLongerReadable:System.Boolean):System.Void
---@return System.Void
function UnityEngine.CubemapArray:Apply()end
---@class UnityEngine.SparseTexture : UnityEngine.Texture
---@field public tileWidth System.Int32 @  getter
---@field public tileHeight System.Int32 @  getter
---@field public isCreated System.Boolean @  getter
UnityEngine.SparseTexture = {}
---@type UnityEngine.SparseTexture
CS.UnityEngine.SparseTexture = UnityEngine.SparseTexture

---@param tileX System.Int32
---@param tileY System.Int32
---@param miplevel System.Int32
---@param data UnityEngine.Color32[]
---@return System.Void
function UnityEngine.SparseTexture:UpdateTile(tileX, tileY, miplevel, data)end
---@param tileX System.Int32
---@param tileY System.Int32
---@param miplevel System.Int32
---@param data System.Byte[]
---@return System.Void
function UnityEngine.SparseTexture:UpdateTileRaw(tileX, tileY, miplevel, data)end
---@param tileX System.Int32
---@param tileY System.Int32
---@param miplevel System.Int32
---@return System.Void
function UnityEngine.SparseTexture:UnloadTile(tileX, tileY, miplevel)end
---@class UnityEngine.RenderTexture : UnityEngine.Texture
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public dimension UnityEngine.Rendering.TextureDimension @ setter getter
---@field public useMipMap System.Boolean @ setter getter
---@field public sRGB System.Boolean @  getter
---@field public format UnityEngine.RenderTextureFormat @ setter getter
---@field public vrUsage UnityEngine.VRTextureUsage @ setter getter
---@field public memorylessMode UnityEngine.RenderTextureMemoryless @ setter getter
---@field public autoGenerateMips System.Boolean @ setter getter
---@field public volumeDepth System.Int32 @ setter getter
---@field public antiAliasing System.Int32 @ setter getter
---@field public bindTextureMS System.Boolean @ setter getter
---@field public enableRandomWrite System.Boolean @ setter getter
---@field public useDynamicScale System.Boolean @ setter getter
---@field public isPowerOfTwo System.Boolean @ setter getter
---@field public active UnityEngine.RenderTexture @static setter getter
---@field public colorBuffer UnityEngine.RenderBuffer @  getter
---@field public depthBuffer UnityEngine.RenderBuffer @  getter
---@field public depth System.Int32 @ setter getter
---@field public descriptor UnityEngine.RenderTextureDescriptor @ setter getter
---@field public generateMips System.Boolean @ setter getter
---@field public isCubemap System.Boolean @ setter getter
---@field public isVolume System.Boolean @ setter getter
---@field public enabled System.Boolean @static setter getter
UnityEngine.RenderTexture = {}
---@type UnityEngine.RenderTexture
CS.UnityEngine.RenderTexture = UnityEngine.RenderTexture

---@return System.IntPtr
function UnityEngine.RenderTexture:GetNativeDepthBufferPtr()end
---@overload fun(discardColor:System.Boolean, discardDepth:System.Boolean):System.Void
---@return System.Void
function UnityEngine.RenderTexture:DiscardContents()end
---@return System.Void
function UnityEngine.RenderTexture:MarkRestoreExpected()end
---@overload fun(target:UnityEngine.RenderTexture):System.Void
---@return System.Void
function UnityEngine.RenderTexture:ResolveAntiAliasedSurface()end
---@param propertyName System.String
---@return System.Void
function UnityEngine.RenderTexture:SetGlobalShaderProperty(propertyName)end
---@return System.Boolean
function UnityEngine.RenderTexture:Create()end
---@return System.Void
function UnityEngine.RenderTexture:Release()end
---@return System.Boolean
function UnityEngine.RenderTexture:IsCreated()end
---@return System.Void
function UnityEngine.RenderTexture:GenerateMips()end
---@overload fun(equirect:UnityEngine.RenderTexture):System.Void
---@param equirect UnityEngine.RenderTexture
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return System.Void
function UnityEngine.RenderTexture:ConvertToEquirect(equirect, eye)end
---@param rt UnityEngine.RenderTexture
---@return System.Boolean
function UnityEngine.RenderTexture.SupportsStencil(rt)end
---@param temp UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.RenderTexture.ReleaseTemporary(temp)end
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32):UnityEngine.RenderTexture
---@overload fun(desc:UnityEngine.RenderTextureDescriptor):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, memorylessMode:UnityEngine.RenderTextureMemoryless):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage):UnityEngine.RenderTexture
---@overload fun(width:System.Int32, height:System.Int32, depthBuffer:System.Int32, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage, useDynamicScale:System.Boolean):UnityEngine.RenderTexture
---@param width System.Int32
---@param height System.Int32
---@return UnityEngine.RenderTexture
function UnityEngine.RenderTexture.GetTemporary(width, height)end
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.RenderTexture:SetBorderColor(color)end
---@return UnityEngine.Vector2
function UnityEngine.RenderTexture:GetTexelOffset()end
---@class UnityEngine.CustomRenderTextureUpdateZone : System.ValueType
---@field public updateZoneCenter UnityEngine.Vector3
---@field public updateZoneSize UnityEngine.Vector3
---@field public rotation System.Single
---@field public passIndex System.Int32
---@field public needSwap System.Boolean
UnityEngine.CustomRenderTextureUpdateZone = {}
---@type UnityEngine.CustomRenderTextureUpdateZone
CS.UnityEngine.CustomRenderTextureUpdateZone = UnityEngine.CustomRenderTextureUpdateZone

---@class UnityEngine.CustomRenderTexture : UnityEngine.RenderTexture
---@field public material UnityEngine.Material @ setter getter
---@field public initializationMaterial UnityEngine.Material @ setter getter
---@field public initializationTexture UnityEngine.Texture @ setter getter
---@field public initializationSource UnityEngine.CustomRenderTextureInitializationSource @ setter getter
---@field public initializationColor UnityEngine.Color @ setter getter
---@field public updateMode UnityEngine.CustomRenderTextureUpdateMode @ setter getter
---@field public initializationMode UnityEngine.CustomRenderTextureUpdateMode @ setter getter
---@field public updateZoneSpace UnityEngine.CustomRenderTextureUpdateZoneSpace @ setter getter
---@field public shaderPass System.Int32 @ setter getter
---@field public cubemapFaceMask System.UInt32 @ setter getter
---@field public doubleBuffered System.Boolean @ setter getter
---@field public wrapUpdateZones System.Boolean @ setter getter
UnityEngine.CustomRenderTexture = {}
---@type UnityEngine.CustomRenderTexture
CS.UnityEngine.CustomRenderTexture = UnityEngine.CustomRenderTexture

---@overload fun(count:System.Int32):System.Void
---@return System.Void
function UnityEngine.CustomRenderTexture:Update()end
---@return System.Void
function UnityEngine.CustomRenderTexture:Initialize()end
---@return System.Void
function UnityEngine.CustomRenderTexture:ClearUpdateZones()end
---@param updateZones System.Collections.Generic.List
---@return System.Void
function UnityEngine.CustomRenderTexture:GetUpdateZones(updateZones)end
---@param updateZones UnityEngine.CustomRenderTextureUpdateZone[]
---@return System.Void
function UnityEngine.CustomRenderTexture:SetUpdateZones(updateZones)end
---@class UnityEngine.RenderTextureDescriptor : System.ValueType
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public msaaSamples System.Int32 @ setter getter
---@field public volumeDepth System.Int32 @ setter getter
---@field public colorFormat UnityEngine.RenderTextureFormat @ setter getter
---@field public depthBufferBits System.Int32 @ setter getter
---@field public dimension UnityEngine.Rendering.TextureDimension @ setter getter
---@field public shadowSamplingMode UnityEngine.Rendering.ShadowSamplingMode @ setter getter
---@field public vrUsage UnityEngine.VRTextureUsage @ setter getter
---@field public flags UnityEngine.RenderTextureCreationFlags @  getter
---@field public memoryless UnityEngine.RenderTextureMemoryless @ setter getter
---@field public sRGB System.Boolean @ setter getter
---@field public useMipMap System.Boolean @ setter getter
---@field public autoGenerateMips System.Boolean @ setter getter
---@field public enableRandomWrite System.Boolean @ setter getter
---@field public bindMS System.Boolean @ setter getter
UnityEngine.RenderTextureDescriptor = {}
---@type UnityEngine.RenderTextureDescriptor
CS.UnityEngine.RenderTextureDescriptor = UnityEngine.RenderTextureDescriptor

---@class UnityEngine.Time : System.Object
---@field public time System.Single @static  getter
---@field public timeSinceLevelLoad System.Single @static  getter
---@field public deltaTime System.Single @static  getter
---@field public fixedTime System.Single @static  getter
---@field public unscaledTime System.Single @static  getter
---@field public fixedUnscaledTime System.Single @static  getter
---@field public unscaledDeltaTime System.Single @static  getter
---@field public fixedUnscaledDeltaTime System.Single @static  getter
---@field public fixedDeltaTime System.Single @static setter getter
---@field public maximumDeltaTime System.Single @static setter getter
---@field public smoothDeltaTime System.Single @static  getter
---@field public maximumParticleDeltaTime System.Single @static setter getter
---@field public timeScale System.Single @static setter getter
---@field public frameCount System.Int32 @static  getter
---@field public renderedFrameCount System.Int32 @static  getter
---@field public realtimeSinceStartup System.Single @static  getter
---@field public captureFramerate System.Int32 @static setter getter
---@field public inFixedTimeStep System.Boolean @static  getter
UnityEngine.Time = {}
---@type UnityEngine.Time
CS.UnityEngine.Time = UnityEngine.Time

---@class UnityEngine.TouchScreenKeyboardType : System.Enum
UnityEngine.TouchScreenKeyboardType = {}
---@type UnityEngine.TouchScreenKeyboardType
CS.UnityEngine.TouchScreenKeyboardType = UnityEngine.TouchScreenKeyboardType

---@return System.Int32 value:0
UnityEngine.TouchScreenKeyboardType.Default = 0
---@return System.Int32 value:1
UnityEngine.TouchScreenKeyboardType.ASCIICapable = 1
---@return System.Int32 value:2
UnityEngine.TouchScreenKeyboardType.NumbersAndPunctuation = 2
---@return System.Int32 value:3
UnityEngine.TouchScreenKeyboardType.URL = 3
---@return System.Int32 value:4
UnityEngine.TouchScreenKeyboardType.NumberPad = 4
---@return System.Int32 value:5
UnityEngine.TouchScreenKeyboardType.PhonePad = 5
---@return System.Int32 value:6
UnityEngine.TouchScreenKeyboardType.NamePhonePad = 6
---@return System.Int32 value:7
UnityEngine.TouchScreenKeyboardType.EmailAddress = 7
---@return System.Int32 value:8
UnityEngine.TouchScreenKeyboardType.NintendoNetworkAccount = 8
---@return System.Int32 value:9
UnityEngine.TouchScreenKeyboardType.Social = 9
---@return System.Int32 value:10
UnityEngine.TouchScreenKeyboardType.Search = 10

---@class UnityEngine.TrackedReference : System.Object
UnityEngine.TrackedReference = {}
---@type UnityEngine.TrackedReference
CS.UnityEngine.TrackedReference = UnityEngine.TrackedReference

---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return System.Boolean
function UnityEngine.TrackedReference.op_Equality(x, y)end
---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return System.Boolean
function UnityEngine.TrackedReference.op_Inequality(x, y)end
---@param o System.Object
---@return System.Boolean
function UnityEngine.TrackedReference:Equals(o)end
---@return System.Int32
function UnityEngine.TrackedReference:GetHashCode()end
---@param exists UnityEngine.TrackedReference
---@return System.Boolean
function UnityEngine.TrackedReference.op_Implicit(exists)end
---@class UnityEngine.UnityAPICompatibilityVersionAttribute : System.Attribute
---@field public version System.String @  getter
UnityEngine.UnityAPICompatibilityVersionAttribute = {}
---@type UnityEngine.UnityAPICompatibilityVersionAttribute
CS.UnityEngine.UnityAPICompatibilityVersionAttribute = UnityEngine.UnityAPICompatibilityVersionAttribute

---@class UnityEngine.HideFlags : System.Enum
UnityEngine.HideFlags = {}
---@type UnityEngine.HideFlags
CS.UnityEngine.HideFlags = UnityEngine.HideFlags

---@return System.Int32 value:0
UnityEngine.HideFlags.None = 0
---@return System.Int32 value:1
UnityEngine.HideFlags.HideInHierarchy = 1
---@return System.Int32 value:2
UnityEngine.HideFlags.HideInInspector = 2
---@return System.Int32 value:4
UnityEngine.HideFlags.DontSaveInEditor = 4
---@return System.Int32 value:8
UnityEngine.HideFlags.NotEditable = 8

---@class UnityEngine.Object : System.Object
---@field public name System.String @ setter getter
---@field public hideFlags UnityEngine.HideFlags @ setter getter
UnityEngine.Object = {}
---@type UnityEngine.Object
CS.UnityEngine.Object = UnityEngine.Object

---@return System.Int32
function UnityEngine.Object:GetInstanceID()end
---@return System.Int32
function UnityEngine.Object:GetHashCode()end
---@param other System.Object
---@return System.Boolean
function UnityEngine.Object:Equals(other)end
---@param exists UnityEngine.Object
---@return System.Boolean
function UnityEngine.Object.op_Implicit(exists)end
---@overload fun(original:any):any
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform):UnityEngine.Object
---@overload fun(original:any, parent:UnityEngine.Transform):any
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform, instantiateInWorldSpace:System.Boolean):UnityEngine.Object
---@overload fun(original:any, parent:UnityEngine.Transform, worldPositionStays:System.Boolean):any
---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):UnityEngine.Object
---@overload fun(original:any, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):any
---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, parent:UnityEngine.Transform):UnityEngine.Object
---@overload fun(original:any, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, parent:UnityEngine.Transform):any
---@param original UnityEngine.Object
---@return UnityEngine.Object
function UnityEngine.Object.Instantiate(original)end
---@overload fun(obj:UnityEngine.Object, t:System.Single):System.Void
---@param obj UnityEngine.Object
---@return System.Void
function UnityEngine.Object.Destroy(obj)end
---@overload fun(obj:UnityEngine.Object, allowDestroyingAssets:System.Boolean):System.Void
---@param obj UnityEngine.Object
---@return System.Void
function UnityEngine.Object.DestroyImmediate(obj)end
---@overload fun(type:System.Type):UnityEngine.Object[]
---@return T[]
function UnityEngine.Object.FindObjectsOfType()end
---@param target UnityEngine.Object
---@return System.Void
function UnityEngine.Object.DontDestroyOnLoad(target)end
---@overload fun(obj:UnityEngine.Object, t:System.Single):System.Void
---@param obj UnityEngine.Object
---@return System.Void
function UnityEngine.Object.DestroyObject(obj)end
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.Object.FindSceneObjectsOfType(type)end
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.Object.FindObjectsOfTypeIncludingAssets(type)end
---@overload fun(type:System.Type):UnityEngine.Object
---@return any
function UnityEngine.Object.FindObjectOfType()end
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.Object.FindObjectsOfTypeAll(type)end
---@return System.String
function UnityEngine.Object:ToString()end
---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return System.Boolean
function UnityEngine.Object.op_Equality(x, y)end
---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return System.Boolean
function UnityEngine.Object.op_Inequality(x, y)end
---@class UnityEngine.UnityEventQueueSystem : System.Object
UnityEngine.UnityEventQueueSystem = {}
---@type UnityEngine.UnityEventQueueSystem
CS.UnityEngine.UnityEventQueueSystem = UnityEngine.UnityEventQueueSystem

---@param eventPayloadName System.String
---@return System.String
function UnityEngine.UnityEventQueueSystem.GenerateEventIdForPayload(eventPayloadName)end
---@return System.IntPtr
function UnityEngine.UnityEventQueueSystem.GetGlobalEventQueue()end
---@class UnityEngine.Vector2 : System.ValueType
---@field public Item System.Single @ setter getter
---@field public normalized UnityEngine.Vector2 @  getter
---@field public magnitude System.Single @  getter
---@field public sqrMagnitude System.Single @  getter
---@field public zero UnityEngine.Vector2 @static  getter
---@field public one UnityEngine.Vector2 @static  getter
---@field public up UnityEngine.Vector2 @static  getter
---@field public down UnityEngine.Vector2 @static  getter
---@field public left UnityEngine.Vector2 @static  getter
---@field public right UnityEngine.Vector2 @static  getter
---@field public positiveInfinity UnityEngine.Vector2 @static  getter
---@field public negativeInfinity UnityEngine.Vector2 @static  getter
---@field public x System.Single
---@field public y System.Single
---@field public kEpsilon System.Single
---@field public kEpsilonNormalSqrt System.Single
UnityEngine.Vector2 = {}
---@type UnityEngine.Vector2
CS.UnityEngine.Vector2 = UnityEngine.Vector2

---@param newX System.Single
---@param newY System.Single
---@return System.Void
function UnityEngine.Vector2:Set(newX, newY)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Lerp(a, b, t)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.LerpUnclamped(a, b, t)end
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param maxDistanceDelta System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.MoveTowards(current, target, maxDistanceDelta)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Scale(a, b)end
---@param scale UnityEngine.Vector2
---@return System.Void
function UnityEngine.Vector2:Scale(scale)end
---@return System.Void
function UnityEngine.Vector2:Normalize()end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Vector2:ToString()end
---@return System.Int32
function UnityEngine.Vector2:GetHashCode()end
---@overload fun(other:UnityEngine.Vector2):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Vector2:Equals(other)end
---@param inDirection UnityEngine.Vector2
---@param inNormal UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Reflect(inDirection, inNormal)end
---@param inDirection UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Perpendicular(inDirection)end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return System.Single
function UnityEngine.Vector2.Dot(lhs, rhs)end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return System.Single
function UnityEngine.Vector2.Angle(from, to)end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return System.Single
function UnityEngine.Vector2.SignedAngle(from, to)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return System.Single
function UnityEngine.Vector2.Distance(a, b)end
---@param vector UnityEngine.Vector2
---@param maxLength System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.ClampMagnitude(vector, maxLength)end
---@param a UnityEngine.Vector2
---@return System.Single
function UnityEngine.Vector2.SqrMagnitude(a)end
---@return System.Single
function UnityEngine.Vector2:SqrMagnitude()end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Min(lhs, rhs)end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Max(lhs, rhs)end
---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:System.Single, maxSpeed:System.Single):UnityEngine.Vector2
---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:System.Single, maxSpeed:System.Single, deltaTime:System.Single):UnityEngine.Vector2
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.SmoothDamp(current, target, currentVelocity, smoothTime)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_Addition(a, b)end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_Subtraction(a, b)end
---@overload fun(d:System.Single, a:UnityEngine.Vector2):UnityEngine.Vector2
---@overload fun(a:UnityEngine.Vector2, b:UnityEngine.Vector2):UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param d System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_Multiply(a, d)end
---@overload fun(a:UnityEngine.Vector2, b:UnityEngine.Vector2):UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param d System.Single
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_Division(a, d)end
---@param a UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_UnaryNegation(a)end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Vector2.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Vector2.op_Inequality(lhs, rhs)end
---@overload fun(v:UnityEngine.Vector2):UnityEngine.Vector3
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector2
function UnityEngine.Vector2.op_Implicit(v)end
---@class UnityEngine.Vector2Int : System.ValueType
---@field public x System.Int32 @ setter getter
---@field public y System.Int32 @ setter getter
---@field public Item System.Int32 @ setter getter
---@field public magnitude System.Single @  getter
---@field public sqrMagnitude System.Int32 @  getter
---@field public zero UnityEngine.Vector2Int @static  getter
---@field public one UnityEngine.Vector2Int @static  getter
---@field public up UnityEngine.Vector2Int @static  getter
---@field public down UnityEngine.Vector2Int @static  getter
---@field public left UnityEngine.Vector2Int @static  getter
---@field public right UnityEngine.Vector2Int @static  getter
UnityEngine.Vector2Int = {}
---@type UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int = UnityEngine.Vector2Int

---@param x System.Int32
---@param y System.Int32
---@return System.Void
function UnityEngine.Vector2Int:Set(x, y)end
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return System.Single
function UnityEngine.Vector2Int.Distance(a, b)end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.Min(lhs, rhs)end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.Max(lhs, rhs)end
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.Scale(a, b)end
---@param scale UnityEngine.Vector2Int
---@return System.Void
function UnityEngine.Vector2Int:Scale(scale)end
---@param min UnityEngine.Vector2Int
---@param max UnityEngine.Vector2Int
---@return System.Void
function UnityEngine.Vector2Int:Clamp(min, max)end
---@param v UnityEngine.Vector2Int
---@return UnityEngine.Vector2
function UnityEngine.Vector2Int.op_Implicit(v)end
---@param v UnityEngine.Vector2Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector2Int.op_Explicit(v)end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.FloorToInt(v)end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.CeilToInt(v)end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.RoundToInt(v)end
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.op_Addition(a, b)end
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.op_Subtraction(a, b)end
---@overload fun(a:UnityEngine.Vector2Int, b:UnityEngine.Vector2Int):UnityEngine.Vector2Int
---@param a UnityEngine.Vector2Int
---@param b System.Int32
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.op_Multiply(a, b)end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return System.Boolean
function UnityEngine.Vector2Int.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return System.Boolean
function UnityEngine.Vector2Int.op_Inequality(lhs, rhs)end
---@overload fun(other:UnityEngine.Vector2Int):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Vector2Int:Equals(other)end
---@return System.Int32
function UnityEngine.Vector2Int:GetHashCode()end
---@return System.String
function UnityEngine.Vector2Int:ToString()end
---@class UnityEngine.Vector3Int : System.ValueType
---@field public x System.Int32 @ setter getter
---@field public y System.Int32 @ setter getter
---@field public z System.Int32 @ setter getter
---@field public Item System.Int32 @ setter getter
---@field public magnitude System.Single @  getter
---@field public sqrMagnitude System.Int32 @  getter
---@field public zero UnityEngine.Vector3Int @static  getter
---@field public one UnityEngine.Vector3Int @static  getter
---@field public up UnityEngine.Vector3Int @static  getter
---@field public down UnityEngine.Vector3Int @static  getter
---@field public left UnityEngine.Vector3Int @static  getter
---@field public right UnityEngine.Vector3Int @static  getter
UnityEngine.Vector3Int = {}
---@type UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int = UnityEngine.Vector3Int

---@param x System.Int32
---@param y System.Int32
---@param z System.Int32
---@return System.Void
function UnityEngine.Vector3Int:Set(x, y, z)end
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return System.Single
function UnityEngine.Vector3Int.Distance(a, b)end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.Min(lhs, rhs)end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.Max(lhs, rhs)end
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.Scale(a, b)end
---@param scale UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.Vector3Int:Scale(scale)end
---@param min UnityEngine.Vector3Int
---@param max UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.Vector3Int:Clamp(min, max)end
---@param v UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Vector3Int.op_Implicit(v)end
---@param v UnityEngine.Vector3Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector3Int.op_Explicit(v)end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.FloorToInt(v)end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.CeilToInt(v)end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.RoundToInt(v)end
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.op_Addition(a, b)end
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.op_Subtraction(a, b)end
---@overload fun(a:UnityEngine.Vector3Int, b:UnityEngine.Vector3Int):UnityEngine.Vector3Int
---@param a UnityEngine.Vector3Int
---@param b System.Int32
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.op_Multiply(a, b)end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return System.Boolean
function UnityEngine.Vector3Int.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return System.Boolean
function UnityEngine.Vector3Int.op_Inequality(lhs, rhs)end
---@overload fun(other:UnityEngine.Vector3Int):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Vector3Int:Equals(other)end
---@return System.Int32
function UnityEngine.Vector3Int:GetHashCode()end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Vector3Int:ToString()end
---@class UnityEngine.Vector4 : System.ValueType
---@field public Item System.Single @ setter getter
---@field public normalized UnityEngine.Vector4 @  getter
---@field public magnitude System.Single @  getter
---@field public sqrMagnitude System.Single @  getter
---@field public zero UnityEngine.Vector4 @static  getter
---@field public one UnityEngine.Vector4 @static  getter
---@field public positiveInfinity UnityEngine.Vector4 @static  getter
---@field public negativeInfinity UnityEngine.Vector4 @static  getter
---@field public kEpsilon System.Single
---@field public x System.Single
---@field public y System.Single
---@field public z System.Single
---@field public w System.Single
UnityEngine.Vector4 = {}
---@type UnityEngine.Vector4
CS.UnityEngine.Vector4 = UnityEngine.Vector4

---@param newX System.Single
---@param newY System.Single
---@param newZ System.Single
---@param newW System.Single
---@return System.Void
function UnityEngine.Vector4:Set(newX, newY, newZ, newW)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t System.Single
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Lerp(a, b, t)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t System.Single
---@return UnityEngine.Vector4
function UnityEngine.Vector4.LerpUnclamped(a, b, t)end
---@param current UnityEngine.Vector4
---@param target UnityEngine.Vector4
---@param maxDistanceDelta System.Single
---@return UnityEngine.Vector4
function UnityEngine.Vector4.MoveTowards(current, target, maxDistanceDelta)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Scale(a, b)end
---@param scale UnityEngine.Vector4
---@return System.Void
function UnityEngine.Vector4:Scale(scale)end
---@return System.Int32
function UnityEngine.Vector4:GetHashCode()end
---@overload fun(other:UnityEngine.Vector4):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Vector4:Equals(other)end
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Normalize(a)end
---@return System.Void
function UnityEngine.Vector4:Normalize()end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return System.Single
function UnityEngine.Vector4.Dot(a, b)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Project(a, b)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return System.Single
function UnityEngine.Vector4.Distance(a, b)end
---@param a UnityEngine.Vector4
---@return System.Single
function UnityEngine.Vector4.Magnitude(a)end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Min(lhs, rhs)end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Max(lhs, rhs)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_Addition(a, b)end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_Subtraction(a, b)end
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_UnaryNegation(a)end
---@overload fun(d:System.Single, a:UnityEngine.Vector4):UnityEngine.Vector4
---@param a UnityEngine.Vector4
---@param d System.Single
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_Multiply(a, d)end
---@param a UnityEngine.Vector4
---@param d System.Single
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_Division(a, d)end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return System.Boolean
function UnityEngine.Vector4.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return System.Boolean
function UnityEngine.Vector4.op_Inequality(lhs, rhs)end
---@overload fun(v:UnityEngine.Vector4):UnityEngine.Vector3
---@overload fun(v:UnityEngine.Vector2):UnityEngine.Vector4
---@overload fun(v:UnityEngine.Vector4):UnityEngine.Vector2
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector4
function UnityEngine.Vector4.op_Implicit(v)end
---@overload fun(format:System.String):System.String
---@return System.String
function UnityEngine.Vector4:ToString()end
---@param a UnityEngine.Vector4
---@return System.Single
function UnityEngine.Vector4.SqrMagnitude(a)end
---@return System.Single
function UnityEngine.Vector4:SqrMagnitude()end
---@class UnityEngine.WaitForEndOfFrame : UnityEngine.YieldInstruction
UnityEngine.WaitForEndOfFrame = {}
---@type UnityEngine.WaitForEndOfFrame
CS.UnityEngine.WaitForEndOfFrame = UnityEngine.WaitForEndOfFrame

---@class UnityEngine.WaitForFixedUpdate : UnityEngine.YieldInstruction
UnityEngine.WaitForFixedUpdate = {}
---@type UnityEngine.WaitForFixedUpdate
CS.UnityEngine.WaitForFixedUpdate = UnityEngine.WaitForFixedUpdate

---@class UnityEngine.WaitForSeconds : UnityEngine.YieldInstruction
UnityEngine.WaitForSeconds = {}
---@type UnityEngine.WaitForSeconds
CS.UnityEngine.WaitForSeconds = UnityEngine.WaitForSeconds

---@class UnityEngine.WaitForSecondsRealtime : UnityEngine.CustomYieldInstruction
---@field public waitTime System.Single @ setter getter
---@field public keepWaiting System.Boolean @  getter
UnityEngine.WaitForSecondsRealtime = {}
---@type UnityEngine.WaitForSecondsRealtime
CS.UnityEngine.WaitForSecondsRealtime = UnityEngine.WaitForSecondsRealtime

---@class UnityEngine.WaitUntil : UnityEngine.CustomYieldInstruction
---@field public keepWaiting System.Boolean @  getter
UnityEngine.WaitUntil = {}
---@type UnityEngine.WaitUntil
CS.UnityEngine.WaitUntil = UnityEngine.WaitUntil

---@class UnityEngine.WaitWhile : UnityEngine.CustomYieldInstruction
---@field public keepWaiting System.Boolean @  getter
UnityEngine.WaitWhile = {}
---@type UnityEngine.WaitWhile
CS.UnityEngine.WaitWhile = UnityEngine.WaitWhile

---@class UnityEngine.YieldInstruction : System.Object
UnityEngine.YieldInstruction = {}
---@type UnityEngine.YieldInstruction
CS.UnityEngine.YieldInstruction = UnityEngine.YieldInstruction

---@class UnityEngine.DynamicGI : System.Object
---@field public indirectScale System.Single @static setter getter
---@field public updateThreshold System.Single @static setter getter
---@field public materialUpdateTimeSlice System.Int32 @static setter getter
---@field public synchronousMode System.Boolean @static setter getter
---@field public isConverged System.Boolean @static  getter
UnityEngine.DynamicGI = {}
---@type UnityEngine.DynamicGI
CS.UnityEngine.DynamicGI = UnityEngine.DynamicGI

---@param renderer UnityEngine.Renderer
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.DynamicGI.SetEmissive(renderer, color)end
---@param input System.Single[]
---@return System.Void
function UnityEngine.DynamicGI.SetEnvironmentData(input)end
---@return System.Void
function UnityEngine.DynamicGI.UpdateEnvironment()end
---@overload fun(renderer:UnityEngine.Object):System.Void
---@overload fun(renderer:UnityEngine.Object, x:System.Int32, y:System.Int32, width:System.Int32, height:System.Int32):System.Void
---@param renderer UnityEngine.Renderer
---@return System.Void
function UnityEngine.DynamicGI.UpdateMaterials(renderer)end
---@class UnityEngine.iPhoneScreenOrientation : System.Enum
UnityEngine.iPhoneScreenOrientation = {}
---@type UnityEngine.iPhoneScreenOrientation
CS.UnityEngine.iPhoneScreenOrientation = UnityEngine.iPhoneScreenOrientation

---@return System.Int32 value:0
UnityEngine.iPhoneScreenOrientation.Unknown = 0
---@return System.Int32 value:1
UnityEngine.iPhoneScreenOrientation.Portrait = 1
---@return System.Int32 value:2
UnityEngine.iPhoneScreenOrientation.PortraitUpsideDown = 2
---@return System.Int32 value:3
UnityEngine.iPhoneScreenOrientation.LandscapeLeft = 3
---@return System.Int32 value:4
UnityEngine.iPhoneScreenOrientation.LandscapeRight = 4
---@return System.Int32 value:5
UnityEngine.iPhoneScreenOrientation.AutoRotation = 5
---@return System.Int32 value:6
UnityEngine.iPhoneScreenOrientation.Landscape = 6

---@class UnityEngine.iPhoneNetworkReachability : System.Enum
UnityEngine.iPhoneNetworkReachability = {}
---@type UnityEngine.iPhoneNetworkReachability
CS.UnityEngine.iPhoneNetworkReachability = UnityEngine.iPhoneNetworkReachability

---@return System.Int32 value:0
UnityEngine.iPhoneNetworkReachability.NotReachable = 0
---@return System.Int32 value:1
UnityEngine.iPhoneNetworkReachability.ReachableViaCarrierDataNetwork = 1
---@return System.Int32 value:2
UnityEngine.iPhoneNetworkReachability.ReachableViaWiFiNetwork = 2

---@class UnityEngine.iPhoneGeneration : System.Enum
UnityEngine.iPhoneGeneration = {}
---@type UnityEngine.iPhoneGeneration
CS.UnityEngine.iPhoneGeneration = UnityEngine.iPhoneGeneration

---@return System.Int32 value:0
UnityEngine.iPhoneGeneration.Unknown = 0
---@return System.Int32 value:1
UnityEngine.iPhoneGeneration.iPhone = 1
---@return System.Int32 value:2
UnityEngine.iPhoneGeneration.iPhone3G = 2
---@return System.Int32 value:3
UnityEngine.iPhoneGeneration.iPhone3GS = 3
---@return System.Int32 value:4
UnityEngine.iPhoneGeneration.iPodTouch1Gen = 4
---@return System.Int32 value:5
UnityEngine.iPhoneGeneration.iPodTouch2Gen = 5
---@return System.Int32 value:6
UnityEngine.iPhoneGeneration.iPodTouch3Gen = 6
---@return System.Int32 value:7
UnityEngine.iPhoneGeneration.iPad1Gen = 7
---@return System.Int32 value:8
UnityEngine.iPhoneGeneration.iPhone4 = 8
---@return System.Int32 value:9
UnityEngine.iPhoneGeneration.iPodTouch4Gen = 9
---@return System.Int32 value:10
UnityEngine.iPhoneGeneration.iPad2Gen = 10
---@return System.Int32 value:11
UnityEngine.iPhoneGeneration.iPhone4S = 11
---@return System.Int32 value:12
UnityEngine.iPhoneGeneration.iPad3Gen = 12
---@return System.Int32 value:13
UnityEngine.iPhoneGeneration.iPhone5 = 13
---@return System.Int32 value:14
UnityEngine.iPhoneGeneration.iPodTouch5Gen = 14
---@return System.Int32 value:15
UnityEngine.iPhoneGeneration.iPadMini1Gen = 15
---@return System.Int32 value:16
UnityEngine.iPhoneGeneration.iPad4Gen = 16
---@return System.Int32 value:17
UnityEngine.iPhoneGeneration.iPhone5C = 17
---@return System.Int32 value:18
UnityEngine.iPhoneGeneration.iPhone5S = 18
---@return System.Int32 value:19
UnityEngine.iPhoneGeneration.iPhoneUnknown = 19
---@return System.Int32 value:20
UnityEngine.iPhoneGeneration.iPadUnknown = 20
---@return System.Int32 value:21
UnityEngine.iPhoneGeneration.iPodTouchUnknown = 21

---@class UnityEngine.iPhoneSettings : System.Object
---@field public screenOrientation UnityEngine.iPhoneScreenOrientation @static  getter
---@field public uniqueIdentifier System.String @static  getter
---@field public name System.String @static  getter
---@field public model System.String @static  getter
---@field public systemName System.String @static  getter
---@field public internetReachability UnityEngine.iPhoneNetworkReachability @static  getter
---@field public systemVersion System.String @static  getter
---@field public generation UnityEngine.iPhoneGeneration @static  getter
---@field public verticalOrientation System.Boolean @static  getter
---@field public screenCanDarken System.Boolean @static  getter
---@field public locationServiceEnabledByUser System.Boolean @static  getter
---@field public locationServiceStatus UnityEngine.LocationServiceStatus @static  getter
UnityEngine.iPhoneSettings = {}
---@type UnityEngine.iPhoneSettings
CS.UnityEngine.iPhoneSettings = UnityEngine.iPhoneSettings

---@overload fun(desiredAccuracyInMeters:System.Single):System.Void
---@overload fun(desiredAccuracyInMeters:System.Single, updateDistanceInMeters:System.Single):System.Void
---@return System.Void
function UnityEngine.iPhoneSettings.StartLocationServiceUpdates()end
---@return System.Void
function UnityEngine.iPhoneSettings.StopLocationServiceUpdates()end
---@class UnityEngine.iPhoneTouchPhase : System.Enum
UnityEngine.iPhoneTouchPhase = {}
---@type UnityEngine.iPhoneTouchPhase
CS.UnityEngine.iPhoneTouchPhase = UnityEngine.iPhoneTouchPhase

---@return System.Int32 value:0
UnityEngine.iPhoneTouchPhase.Began = 0
---@return System.Int32 value:1
UnityEngine.iPhoneTouchPhase.Moved = 1
---@return System.Int32 value:2
UnityEngine.iPhoneTouchPhase.Stationary = 2
---@return System.Int32 value:3
UnityEngine.iPhoneTouchPhase.Ended = 3
---@return System.Int32 value:4
UnityEngine.iPhoneTouchPhase.Canceled = 4

---@class UnityEngine.iPhoneTouch : System.ValueType
---@field public positionDelta UnityEngine.Vector2 @  getter
---@field public timeDelta System.Single @  getter
---@field public fingerId System.Int32 @  getter
---@field public position UnityEngine.Vector2 @  getter
---@field public deltaPosition UnityEngine.Vector2 @  getter
---@field public deltaTime System.Single @  getter
---@field public tapCount System.Int32 @  getter
---@field public phase UnityEngine.iPhoneTouchPhase @  getter
UnityEngine.iPhoneTouch = {}
---@type UnityEngine.iPhoneTouch
CS.UnityEngine.iPhoneTouch = UnityEngine.iPhoneTouch

---@class UnityEngine.iPhoneMovieControlMode : System.Enum
UnityEngine.iPhoneMovieControlMode = {}
---@type UnityEngine.iPhoneMovieControlMode
CS.UnityEngine.iPhoneMovieControlMode = UnityEngine.iPhoneMovieControlMode

---@return System.Int32 value:0
UnityEngine.iPhoneMovieControlMode.Full = 0
---@return System.Int32 value:1
UnityEngine.iPhoneMovieControlMode.Minimal = 1
---@return System.Int32 value:2
UnityEngine.iPhoneMovieControlMode.CancelOnTouch = 2
---@return System.Int32 value:3
UnityEngine.iPhoneMovieControlMode.Hidden = 3
---@return System.Int32 value:4
UnityEngine.iPhoneMovieControlMode.VolumeOnly = 4

---@class UnityEngine.iPhoneMovieScalingMode : System.Enum
UnityEngine.iPhoneMovieScalingMode = {}
---@type UnityEngine.iPhoneMovieScalingMode
CS.UnityEngine.iPhoneMovieScalingMode = UnityEngine.iPhoneMovieScalingMode

---@return System.Int32 value:0
UnityEngine.iPhoneMovieScalingMode.None = 0
---@return System.Int32 value:1
UnityEngine.iPhoneMovieScalingMode.AspectFit = 1
---@return System.Int32 value:2
UnityEngine.iPhoneMovieScalingMode.AspectFill = 2
---@return System.Int32 value:3
UnityEngine.iPhoneMovieScalingMode.Fill = 3

---@class UnityEngine.iPhoneUtils : System.Object
---@field public isApplicationGenuine System.Boolean @static  getter
---@field public isApplicationGenuineAvailable System.Boolean @static  getter
UnityEngine.iPhoneUtils = {}
---@type UnityEngine.iPhoneUtils
CS.UnityEngine.iPhoneUtils = UnityEngine.iPhoneUtils

---@overload fun(path:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode):System.Void
---@overload fun(path:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode, scalingMode:UnityEngine.iPhoneMovieScalingMode):System.Void
---@param path System.String
---@param bgColor UnityEngine.Color
---@return System.Void
function UnityEngine.iPhoneUtils.PlayMovie(path, bgColor)end
---@overload fun(url:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode):System.Void
---@overload fun(url:System.String, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode, scalingMode:UnityEngine.iPhoneMovieScalingMode):System.Void
---@param url System.String
---@param bgColor UnityEngine.Color
---@return System.Void
function UnityEngine.iPhoneUtils.PlayMovieURL(url, bgColor)end
---@return System.Void
function UnityEngine.iPhoneUtils.Vibrate()end
---@class UnityEngine.iPhoneKeyboardType : System.Enum
UnityEngine.iPhoneKeyboardType = {}
---@type UnityEngine.iPhoneKeyboardType
CS.UnityEngine.iPhoneKeyboardType = UnityEngine.iPhoneKeyboardType

---@return System.Int32 value:0
UnityEngine.iPhoneKeyboardType.Default = 0
---@return System.Int32 value:1
UnityEngine.iPhoneKeyboardType.ASCIICapable = 1
---@return System.Int32 value:2
UnityEngine.iPhoneKeyboardType.NumbersAndPunctuation = 2
---@return System.Int32 value:3
UnityEngine.iPhoneKeyboardType.URL = 3
---@return System.Int32 value:4
UnityEngine.iPhoneKeyboardType.NumberPad = 4
---@return System.Int32 value:5
UnityEngine.iPhoneKeyboardType.PhonePad = 5
---@return System.Int32 value:6
UnityEngine.iPhoneKeyboardType.NamePhonePad = 6
---@return System.Int32 value:7
UnityEngine.iPhoneKeyboardType.EmailAddress = 7

---@class UnityEngine.iPhoneKeyboard : System.Object
---@field public text System.String @ setter getter
---@field public hideInput System.Boolean @static setter getter
---@field public active System.Boolean @ setter getter
---@field public done System.Boolean @  getter
---@field public area UnityEngine.Rect @static  getter
---@field public visible System.Boolean @static  getter
UnityEngine.iPhoneKeyboard = {}
---@type UnityEngine.iPhoneKeyboard
CS.UnityEngine.iPhoneKeyboard = UnityEngine.iPhoneKeyboard

---@class UnityEngine.iPhoneAccelerationEvent : System.ValueType
---@field public timeDelta System.Single @  getter
---@field public acceleration UnityEngine.Vector3 @  getter
---@field public deltaTime System.Single @  getter
UnityEngine.iPhoneAccelerationEvent = {}
---@type UnityEngine.iPhoneAccelerationEvent
CS.UnityEngine.iPhoneAccelerationEvent = UnityEngine.iPhoneAccelerationEvent

---@class UnityEngine.iPhoneOrientation : System.Enum
UnityEngine.iPhoneOrientation = {}
---@type UnityEngine.iPhoneOrientation
CS.UnityEngine.iPhoneOrientation = UnityEngine.iPhoneOrientation

---@return System.Int32 value:0
UnityEngine.iPhoneOrientation.Unknown = 0
---@return System.Int32 value:1
UnityEngine.iPhoneOrientation.Portrait = 1
---@return System.Int32 value:2
UnityEngine.iPhoneOrientation.PortraitUpsideDown = 2
---@return System.Int32 value:3
UnityEngine.iPhoneOrientation.LandscapeLeft = 3
---@return System.Int32 value:4
UnityEngine.iPhoneOrientation.LandscapeRight = 4
---@return System.Int32 value:5
UnityEngine.iPhoneOrientation.FaceUp = 5
---@return System.Int32 value:6
UnityEngine.iPhoneOrientation.FaceDown = 6

---@class UnityEngine.iPhoneInput : System.Object
---@field public orientation UnityEngine.iPhoneOrientation @static  getter
---@field public lastLocation UnityEngine.LocationInfo @static  getter
---@field public accelerationEvents UnityEngine.iPhoneAccelerationEvent[] @static  getter
---@field public touches UnityEngine.iPhoneTouch[] @static  getter
---@field public touchCount System.Int32 @static  getter
---@field public multiTouchEnabled System.Boolean @static setter getter
---@field public accelerationEventCount System.Int32 @static  getter
---@field public acceleration UnityEngine.Vector3 @static  getter
UnityEngine.iPhoneInput = {}
---@type UnityEngine.iPhoneInput
CS.UnityEngine.iPhoneInput = UnityEngine.iPhoneInput

---@param index System.Int32
---@return UnityEngine.iPhoneTouch
function UnityEngine.iPhoneInput.GetTouch(index)end
---@param index System.Int32
---@return UnityEngine.iPhoneAccelerationEvent
function UnityEngine.iPhoneInput.GetAccelerationEvent(index)end
---@class UnityEngine.iPhone : System.Object
---@field public generation UnityEngine.iPhoneGeneration @static  getter
---@field public vendorIdentifier System.String @static  getter
---@field public advertisingIdentifier System.String @static  getter
---@field public advertisingTrackingEnabled System.Boolean @static  getter
UnityEngine.iPhone = {}
---@type UnityEngine.iPhone
CS.UnityEngine.iPhone = UnityEngine.iPhone

---@param path System.String
---@return System.Void
function UnityEngine.iPhone.SetNoBackupFlag(path)end
---@param path System.String
---@return System.Void
function UnityEngine.iPhone.ResetNoBackupFlag(path)end
---@class UnityEngine.iOSActivityIndicatorStyle : System.Enum
UnityEngine.iOSActivityIndicatorStyle = {}
---@type UnityEngine.iOSActivityIndicatorStyle
CS.UnityEngine.iOSActivityIndicatorStyle = UnityEngine.iOSActivityIndicatorStyle

---@return System.Int32 value:0
UnityEngine.iOSActivityIndicatorStyle.DontShow = 0
---@return System.Int32 value:1
UnityEngine.iOSActivityIndicatorStyle.WhiteLarge = 1
---@return System.Int32 value:2
UnityEngine.iOSActivityIndicatorStyle.White = 2
---@return System.Int32 value:3
UnityEngine.iOSActivityIndicatorStyle.Gray = 3

---@class UnityEngine.CalendarIdentifier : System.Enum
UnityEngine.CalendarIdentifier = {}
---@type UnityEngine.CalendarIdentifier
CS.UnityEngine.CalendarIdentifier = UnityEngine.CalendarIdentifier

---@return System.Int32 value:0
UnityEngine.CalendarIdentifier.GregorianCalendar = 0
---@return System.Int32 value:1
UnityEngine.CalendarIdentifier.BuddhistCalendar = 1
---@return System.Int32 value:2
UnityEngine.CalendarIdentifier.ChineseCalendar = 2
---@return System.Int32 value:3
UnityEngine.CalendarIdentifier.HebrewCalendar = 3
---@return System.Int32 value:4
UnityEngine.CalendarIdentifier.IslamicCalendar = 4
---@return System.Int32 value:5
UnityEngine.CalendarIdentifier.IslamicCivilCalendar = 5
---@return System.Int32 value:6
UnityEngine.CalendarIdentifier.JapaneseCalendar = 6
---@return System.Int32 value:7
UnityEngine.CalendarIdentifier.RepublicOfChinaCalendar = 7
---@return System.Int32 value:8
UnityEngine.CalendarIdentifier.PersianCalendar = 8
---@return System.Int32 value:9
UnityEngine.CalendarIdentifier.IndianCalendar = 9
---@return System.Int32 value:10
UnityEngine.CalendarIdentifier.ISO8601Calendar = 10

---@class UnityEngine.CalendarUnit : System.Enum
UnityEngine.CalendarUnit = {}
---@type UnityEngine.CalendarUnit
CS.UnityEngine.CalendarUnit = UnityEngine.CalendarUnit

---@return System.Int32 value:0
UnityEngine.CalendarUnit.Era = 0
---@return System.Int32 value:1
UnityEngine.CalendarUnit.Year = 1
---@return System.Int32 value:2
UnityEngine.CalendarUnit.Month = 2
---@return System.Int32 value:3
UnityEngine.CalendarUnit.Day = 3
---@return System.Int32 value:4
UnityEngine.CalendarUnit.Hour = 4
---@return System.Int32 value:5
UnityEngine.CalendarUnit.Minute = 5
---@return System.Int32 value:6
UnityEngine.CalendarUnit.Second = 6
---@return System.Int32 value:7
UnityEngine.CalendarUnit.Week = 7
---@return System.Int32 value:8
UnityEngine.CalendarUnit.Weekday = 8
---@return System.Int32 value:9
UnityEngine.CalendarUnit.WeekdayOrdinal = 9
---@return System.Int32 value:10
UnityEngine.CalendarUnit.Quarter = 10

---@class UnityEngine.LocalNotification : System.Object
---@field public fireDate System.DateTime @ setter getter
---@field public timeZone System.String @ setter getter
---@field public repeatInterval UnityEngine.CalendarUnit @ setter getter
---@field public repeatCalendar UnityEngine.CalendarIdentifier @ setter getter
---@field public alertBody System.String @ setter getter
---@field public alertAction System.String @ setter getter
---@field public hasAction System.Boolean @ setter getter
---@field public alertLaunchImage System.String @ setter getter
---@field public applicationIconBadgeNumber System.Int32 @ setter getter
---@field public soundName System.String @ setter getter
---@field public defaultSoundName System.String @static  getter
---@field public userInfo System.Collections.IDictionary @ setter getter
UnityEngine.LocalNotification = {}
---@type UnityEngine.LocalNotification
CS.UnityEngine.LocalNotification = UnityEngine.LocalNotification

---@class UnityEngine.RemoteNotification : System.Object
---@field public alertBody System.String @  getter
---@field public hasAction System.Boolean @  getter
---@field public applicationIconBadgeNumber System.Int32 @  getter
---@field public soundName System.String @  getter
---@field public userInfo System.Collections.IDictionary @  getter
UnityEngine.RemoteNotification = {}
---@type UnityEngine.RemoteNotification
CS.UnityEngine.RemoteNotification = UnityEngine.RemoteNotification

---@class UnityEngine.RemoteNotificationType : System.Enum
UnityEngine.RemoteNotificationType = {}
---@type UnityEngine.RemoteNotificationType
CS.UnityEngine.RemoteNotificationType = UnityEngine.RemoteNotificationType

---@return System.Int32 value:0
UnityEngine.RemoteNotificationType.None = 0
---@return System.Int32 value:1
UnityEngine.RemoteNotificationType.Badge = 1
---@return System.Int32 value:2
UnityEngine.RemoteNotificationType.Sound = 2
---@return System.Int32 value:3
UnityEngine.RemoteNotificationType.Alert = 3

---@class UnityEngine.NotificationServices : System.Object
UnityEngine.NotificationServices = {}
---@type UnityEngine.NotificationServices
CS.UnityEngine.NotificationServices = UnityEngine.NotificationServices

---@param notificationTypes UnityEngine.RemoteNotificationType
---@return System.Void
function UnityEngine.NotificationServices.RegisterForRemoteNotificationTypes(notificationTypes)end
---@class UnityEngine.ADBannerView : System.Object
---@field public loaded System.Boolean @  getter
---@field public visible System.Boolean @ setter getter
---@field public layout UnityEngine.ADBannerView.Layout @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public size UnityEngine.Vector2 @  getter
UnityEngine.ADBannerView = {}
---@type UnityEngine.ADBannerView
CS.UnityEngine.ADBannerView = UnityEngine.ADBannerView

---@param value UnityEngine.ADBannerView.BannerWasClickedDelegate
---@return System.Void
function UnityEngine.ADBannerView.add_onBannerWasClicked(value)end
---@param value UnityEngine.ADBannerView.BannerWasClickedDelegate
---@return System.Void
function UnityEngine.ADBannerView.remove_onBannerWasClicked(value)end
---@param value UnityEngine.ADBannerView.BannerWasLoadedDelegate
---@return System.Void
function UnityEngine.ADBannerView.add_onBannerWasLoaded(value)end
---@param value UnityEngine.ADBannerView.BannerWasLoadedDelegate
---@return System.Void
function UnityEngine.ADBannerView.remove_onBannerWasLoaded(value)end
---@param type UnityEngine.ADBannerView.Type
---@return System.Boolean
function UnityEngine.ADBannerView.IsAvailable(type)end
---@class UnityEngine.ADBannerView.Layout : System.Enum
UnityEngine.ADBannerView.Layout = {}
---@type UnityEngine.ADBannerView.Layout
CS.UnityEngine.ADBannerView.Layout = UnityEngine.ADBannerView.Layout

---@return System.Int32 value:0
UnityEngine.ADBannerView.Layout.Top = 0
---@return System.Int32 value:1
UnityEngine.ADBannerView.Layout.Bottom = 1
---@return System.Int32 value:2
UnityEngine.ADBannerView.Layout.CenterLeft = 2
---@return System.Int32 value:4
UnityEngine.ADBannerView.Layout.TopRight = 4
---@return System.Int32 value:5
UnityEngine.ADBannerView.Layout.BottomRight = 5
---@return System.Int32 value:6
UnityEngine.ADBannerView.Layout.CenterRight = 6
---@return System.Int32 value:8
UnityEngine.ADBannerView.Layout.TopCenter = 8
---@return System.Int32 value:9
UnityEngine.ADBannerView.Layout.BottomCenter = 9
---@return System.Int32 value:10
UnityEngine.ADBannerView.Layout.Center = 10

---@class UnityEngine.ADBannerView.Type : System.Enum
UnityEngine.ADBannerView.Type = {}
---@type UnityEngine.ADBannerView.Type
CS.UnityEngine.ADBannerView.Type = UnityEngine.ADBannerView.Type

---@return System.Int32 value:0
UnityEngine.ADBannerView.Type.Banner = 0
---@return System.Int32 value:1
UnityEngine.ADBannerView.Type.MediumRect = 1

---@class UnityEngine.ADInterstitialAd : System.Object
---@field public isAvailable System.Boolean @static  getter
---@field public loaded System.Boolean @  getter
UnityEngine.ADInterstitialAd = {}
---@type UnityEngine.ADInterstitialAd
CS.UnityEngine.ADInterstitialAd = UnityEngine.ADInterstitialAd

---@param value UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate
---@return System.Void
function UnityEngine.ADInterstitialAd.add_onInterstitialWasLoaded(value)end
---@param value UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate
---@return System.Void
function UnityEngine.ADInterstitialAd.remove_onInterstitialWasLoaded(value)end
---@return System.Void
function UnityEngine.ADInterstitialAd:Show()end
---@return System.Void
function UnityEngine.ADInterstitialAd:ReloadAd()end
---@class UnityEngine.Logger : System.Object
---@field public logHandler UnityEngine.ILogHandler @ setter getter
---@field public logEnabled System.Boolean @ setter getter
---@field public filterLogType UnityEngine.LogType @ setter getter
UnityEngine.Logger = {}
---@type UnityEngine.Logger
CS.UnityEngine.Logger = UnityEngine.Logger

---@param logType UnityEngine.LogType
---@return System.Boolean
function UnityEngine.Logger:IsLogTypeAllowed(logType)end
---@overload fun(logType:UnityEngine.LogType, message:System.Object):System.Void
---@overload fun(tag:System.String, message:System.Object):System.Void
---@overload fun(logType:UnityEngine.LogType, message:System.Object, context:UnityEngine.Object):System.Void
---@overload fun(logType:UnityEngine.LogType, tag:System.String, message:System.Object):System.Void
---@overload fun(tag:System.String, message:System.Object, context:UnityEngine.Object):System.Void
---@overload fun(logType:UnityEngine.LogType, tag:System.String, message:System.Object, context:UnityEngine.Object):System.Void
---@param message System.Object
---@return System.Void
function UnityEngine.Logger:Log(message)end
---@overload fun(tag:System.String, message:System.Object, context:UnityEngine.Object):System.Void
---@param tag System.String
---@param message System.Object
---@return System.Void
function UnityEngine.Logger:LogWarning(tag, message)end
---@overload fun(tag:System.String, message:System.Object, context:UnityEngine.Object):System.Void
---@param tag System.String
---@param message System.Object
---@return System.Void
function UnityEngine.Logger:LogError(tag, message)end
---@overload fun(logType:UnityEngine.LogType, context:UnityEngine.Object, format:System.String, args:System.Object[]):System.Void
---@param logType UnityEngine.LogType
---@param format System.String
---@param args System.Object[]
---@return System.Void
function UnityEngine.Logger:LogFormat(logType, format, args)end
---@overload fun(exception:System.Exception, context:UnityEngine.Object):System.Void
---@param exception System.Exception
---@return System.Void
function UnityEngine.Logger:LogException(exception)end
---@class UnityEngine.StaticBatchingUtility : System.Object
UnityEngine.StaticBatchingUtility = {}
---@type UnityEngine.StaticBatchingUtility
CS.UnityEngine.StaticBatchingUtility = UnityEngine.StaticBatchingUtility

---@overload fun(gos:UnityEngine.GameObject[], staticBatchRoot:UnityEngine.GameObject):System.Void
---@param staticBatchRoot UnityEngine.GameObject
---@return System.Void
function UnityEngine.StaticBatchingUtility.Combine(staticBatchRoot)end
---@class UnityEngine.DrivenTransformProperties : System.Enum
UnityEngine.DrivenTransformProperties = {}
---@type UnityEngine.DrivenTransformProperties
CS.UnityEngine.DrivenTransformProperties = UnityEngine.DrivenTransformProperties

---@return System.Int32 value:0
UnityEngine.DrivenTransformProperties.None = 0
---@return System.Int32 value:2
UnityEngine.DrivenTransformProperties.AnchoredPositionX = 2
---@return System.Int32 value:4
UnityEngine.DrivenTransformProperties.AnchoredPositionY = 4
---@return System.Int32 value:6
UnityEngine.DrivenTransformProperties.AnchoredPosition = 6
---@return System.Int32 value:8
UnityEngine.DrivenTransformProperties.AnchoredPositionZ = 8
---@return System.Int32 value:14
UnityEngine.DrivenTransformProperties.AnchoredPosition3D = 14
---@return System.Int32 value:16
UnityEngine.DrivenTransformProperties.Rotation = 16

---@class UnityEngine.DrivenRectTransformTracker : System.ValueType
UnityEngine.DrivenRectTransformTracker = {}
---@type UnityEngine.DrivenRectTransformTracker
CS.UnityEngine.DrivenRectTransformTracker = UnityEngine.DrivenRectTransformTracker

---@return System.Void
function UnityEngine.DrivenRectTransformTracker.StopRecordingUndo()end
---@return System.Void
function UnityEngine.DrivenRectTransformTracker.StartRecordingUndo()end
---@param driver UnityEngine.Object
---@param rectTransform UnityEngine.RectTransform
---@param drivenProperties UnityEngine.DrivenTransformProperties
---@return System.Void
function UnityEngine.DrivenRectTransformTracker:Add(driver, rectTransform, drivenProperties)end
---@overload fun(revertValues:System.Boolean):System.Void
---@return System.Void
function UnityEngine.DrivenRectTransformTracker:Clear()end
---@class UnityEngine.RectTransform : UnityEngine.Transform
---@field public rect UnityEngine.Rect @  getter
---@field public anchorMin UnityEngine.Vector2 @ setter getter
---@field public anchorMax UnityEngine.Vector2 @ setter getter
---@field public anchoredPosition UnityEngine.Vector2 @ setter getter
---@field public sizeDelta UnityEngine.Vector2 @ setter getter
---@field public pivot UnityEngine.Vector2 @ setter getter
---@field public anchoredPosition3D UnityEngine.Vector3 @ setter getter
---@field public offsetMin UnityEngine.Vector2 @ setter getter
---@field public offsetMax UnityEngine.Vector2 @ setter getter
UnityEngine.RectTransform = {}
---@type UnityEngine.RectTransform
CS.UnityEngine.RectTransform = UnityEngine.RectTransform

---@param value UnityEngine.RectTransform.ReapplyDrivenProperties
---@return System.Void
function UnityEngine.RectTransform.add_reapplyDrivenProperties(value)end
---@param value UnityEngine.RectTransform.ReapplyDrivenProperties
---@return System.Void
function UnityEngine.RectTransform.remove_reapplyDrivenProperties(value)end
---@return System.Void
function UnityEngine.RectTransform:ForceUpdateRectTransforms()end
---@param fourCornersArray UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.RectTransform:GetLocalCorners(fourCornersArray)end
---@param fourCornersArray UnityEngine.Vector3[]
---@return System.Void
function UnityEngine.RectTransform:GetWorldCorners(fourCornersArray)end
---@param edge UnityEngine.RectTransform.Edge
---@param inset System.Single
---@param size System.Single
---@return System.Void
function UnityEngine.RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size)end
---@param axis UnityEngine.RectTransform.Axis
---@param size System.Single
---@return System.Void
function UnityEngine.RectTransform:SetSizeWithCurrentAnchors(axis, size)end
---@class UnityEngine.RectTransform.Edge : System.Enum
UnityEngine.RectTransform.Edge = {}
---@type UnityEngine.RectTransform.Edge
CS.UnityEngine.RectTransform.Edge = UnityEngine.RectTransform.Edge

---@return System.Int32 value:0
UnityEngine.RectTransform.Edge.Left = 0
---@return System.Int32 value:1
UnityEngine.RectTransform.Edge.Right = 1
---@return System.Int32 value:2
UnityEngine.RectTransform.Edge.Top = 2
---@return System.Int32 value:3
UnityEngine.RectTransform.Edge.Bottom = 3

---@class UnityEngine.RectTransform.Axis : System.Enum
UnityEngine.RectTransform.Axis = {}
---@type UnityEngine.RectTransform.Axis
CS.UnityEngine.RectTransform.Axis = UnityEngine.RectTransform.Axis

---@return System.Int32 value:0
UnityEngine.RectTransform.Axis.Horizontal = 0
---@return System.Int32 value:1
UnityEngine.RectTransform.Axis.Vertical = 1

---@class UnityEngine.Transform : UnityEngine.Component
---@field public position UnityEngine.Vector3 @ setter getter
---@field public localPosition UnityEngine.Vector3 @ setter getter
---@field public eulerAngles UnityEngine.Vector3 @ setter getter
---@field public localEulerAngles UnityEngine.Vector3 @ setter getter
---@field public right UnityEngine.Vector3 @ setter getter
---@field public up UnityEngine.Vector3 @ setter getter
---@field public forward UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public localRotation UnityEngine.Quaternion @ setter getter
---@field public localScale UnityEngine.Vector3 @ setter getter
---@field public parent UnityEngine.Transform @ setter getter
---@field public worldToLocalMatrix UnityEngine.Matrix4x4 @  getter
---@field public localToWorldMatrix UnityEngine.Matrix4x4 @  getter
---@field public root UnityEngine.Transform @  getter
---@field public childCount System.Int32 @  getter
---@field public lossyScale UnityEngine.Vector3 @  getter
---@field public hasChanged System.Boolean @ setter getter
---@field public hierarchyCapacity System.Int32 @ setter getter
---@field public hierarchyCount System.Int32 @  getter
UnityEngine.Transform = {}
---@type UnityEngine.Transform
CS.UnityEngine.Transform = UnityEngine.Transform

---@overload fun(parent:UnityEngine.Transform, worldPositionStays:System.Boolean):System.Void
---@param p UnityEngine.Transform
---@return System.Void
function UnityEngine.Transform:SetParent(p)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Transform:SetPositionAndRotation(position, rotation)end
---@overload fun(translation:UnityEngine.Vector3):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, relativeTo:UnityEngine.Space):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, relativeTo:UnityEngine.Transform):System.Void
---@overload fun(translation:UnityEngine.Vector3, relativeTo:UnityEngine.Space):System.Void
---@overload fun(translation:UnityEngine.Vector3, relativeTo:UnityEngine.Transform):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Transform:Translate(x, y, z)end
---@overload fun(eulers:UnityEngine.Vector3):System.Void
---@overload fun(axis:UnityEngine.Vector3, angle:System.Single):System.Void
---@overload fun(xAngle:System.Single, yAngle:System.Single, zAngle:System.Single, relativeTo:UnityEngine.Space):System.Void
---@overload fun(eulers:UnityEngine.Vector3, relativeTo:UnityEngine.Space):System.Void
---@overload fun(axis:UnityEngine.Vector3, angle:System.Single, relativeTo:UnityEngine.Space):System.Void
---@param xAngle System.Single
---@param yAngle System.Single
---@param zAngle System.Single
---@return System.Void
function UnityEngine.Transform:Rotate(xAngle, yAngle, zAngle)end
---@overload fun(point:UnityEngine.Vector3, axis:UnityEngine.Vector3, angle:System.Single):System.Void
---@param axis UnityEngine.Vector3
---@param angle System.Single
---@return System.Void
function UnityEngine.Transform:RotateAround(axis, angle)end
---@overload fun(worldPosition:UnityEngine.Vector3):System.Void
---@overload fun(target:UnityEngine.Transform, worldUp:UnityEngine.Vector3):System.Void
---@overload fun(worldPosition:UnityEngine.Vector3, worldUp:UnityEngine.Vector3):System.Void
---@param target UnityEngine.Transform
---@return System.Void
function UnityEngine.Transform:LookAt(target)end
---@overload fun(direction:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformDirection(x, y, z)end
---@overload fun(direction:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformDirection(x, y, z)end
---@overload fun(vector:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformVector(x, y, z)end
---@overload fun(vector:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformVector(x, y, z)end
---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformPoint(x, y, z)end
---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformPoint(x, y, z)end
---@return System.Void
function UnityEngine.Transform:DetachChildren()end
---@return System.Void
function UnityEngine.Transform:SetAsFirstSibling()end
---@return System.Void
function UnityEngine.Transform:SetAsLastSibling()end
---@param index System.Int32
---@return System.Void
function UnityEngine.Transform:SetSiblingIndex(index)end
---@return System.Int32
function UnityEngine.Transform:GetSiblingIndex()end
---@param n System.String
---@return UnityEngine.Transform
function UnityEngine.Transform:Find(n)end
---@param parent UnityEngine.Transform
---@return System.Boolean
function UnityEngine.Transform:IsChildOf(parent)end
---@param n System.String
---@return UnityEngine.Transform
function UnityEngine.Transform:FindChild(n)end
---@return System.Collections.IEnumerator
function UnityEngine.Transform:GetEnumerator()end
---@param axis UnityEngine.Vector3
---@param angle System.Single
---@return System.Void
function UnityEngine.Transform:RotateAroundLocal(axis, angle)end
---@param index System.Int32
---@return UnityEngine.Transform
function UnityEngine.Transform:GetChild(index)end
---@return System.Int32
function UnityEngine.Transform:GetChildCount()end
---@class UnityEngine.SpriteDrawMode : System.Enum
UnityEngine.SpriteDrawMode = {}
---@type UnityEngine.SpriteDrawMode
CS.UnityEngine.SpriteDrawMode = UnityEngine.SpriteDrawMode

---@return System.Int32 value:0
UnityEngine.SpriteDrawMode.Simple = 0
---@return System.Int32 value:1
UnityEngine.SpriteDrawMode.Sliced = 1
---@return System.Int32 value:2
UnityEngine.SpriteDrawMode.Tiled = 2

---@class UnityEngine.SpriteTileMode : System.Enum
UnityEngine.SpriteTileMode = {}
---@type UnityEngine.SpriteTileMode
CS.UnityEngine.SpriteTileMode = UnityEngine.SpriteTileMode

---@return System.Int32 value:0
UnityEngine.SpriteTileMode.Continuous = 0
---@return System.Int32 value:1
UnityEngine.SpriteTileMode.Adaptive = 1

---@class UnityEngine.SpriteMaskInteraction : System.Enum
UnityEngine.SpriteMaskInteraction = {}
---@type UnityEngine.SpriteMaskInteraction
CS.UnityEngine.SpriteMaskInteraction = UnityEngine.SpriteMaskInteraction

---@return System.Int32 value:0
UnityEngine.SpriteMaskInteraction.None = 0
---@return System.Int32 value:1
UnityEngine.SpriteMaskInteraction.VisibleInsideMask = 1
---@return System.Int32 value:2
UnityEngine.SpriteMaskInteraction.VisibleOutsideMask = 2

---@class UnityEngine.SpriteRenderer : UnityEngine.Renderer
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public drawMode UnityEngine.SpriteDrawMode @ setter getter
---@field public size UnityEngine.Vector2 @ setter getter
---@field public adaptiveModeThreshold System.Single @ setter getter
---@field public tileMode UnityEngine.SpriteTileMode @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public maskInteraction UnityEngine.SpriteMaskInteraction @ setter getter
---@field public flipX System.Boolean @ setter getter
---@field public flipY System.Boolean @ setter getter
---@field public spriteSortPoint UnityEngine.SpriteSortPoint @ setter getter
UnityEngine.SpriteRenderer = {}
---@type UnityEngine.SpriteRenderer
CS.UnityEngine.SpriteRenderer = UnityEngine.SpriteRenderer

---@class UnityEngine.SpriteMeshType : System.Enum
UnityEngine.SpriteMeshType = {}
---@type UnityEngine.SpriteMeshType
CS.UnityEngine.SpriteMeshType = UnityEngine.SpriteMeshType

---@return System.Int32 value:0
UnityEngine.SpriteMeshType.FullRect = 0
---@return System.Int32 value:1
UnityEngine.SpriteMeshType.Tight = 1

---@class UnityEngine.SpriteAlignment : System.Enum
UnityEngine.SpriteAlignment = {}
---@type UnityEngine.SpriteAlignment
CS.UnityEngine.SpriteAlignment = UnityEngine.SpriteAlignment

---@return System.Int32 value:0
UnityEngine.SpriteAlignment.Center = 0
---@return System.Int32 value:1
UnityEngine.SpriteAlignment.TopLeft = 1
---@return System.Int32 value:2
UnityEngine.SpriteAlignment.TopCenter = 2
---@return System.Int32 value:3
UnityEngine.SpriteAlignment.TopRight = 3
---@return System.Int32 value:4
UnityEngine.SpriteAlignment.LeftCenter = 4
---@return System.Int32 value:5
UnityEngine.SpriteAlignment.RightCenter = 5
---@return System.Int32 value:6
UnityEngine.SpriteAlignment.BottomLeft = 6
---@return System.Int32 value:7
UnityEngine.SpriteAlignment.BottomCenter = 7
---@return System.Int32 value:8
UnityEngine.SpriteAlignment.BottomRight = 8
---@return System.Int32 value:9
UnityEngine.SpriteAlignment.Custom = 9

---@class UnityEngine.SpritePackingMode : System.Enum
UnityEngine.SpritePackingMode = {}
---@type UnityEngine.SpritePackingMode
CS.UnityEngine.SpritePackingMode = UnityEngine.SpritePackingMode

---@return System.Int32 value:0
UnityEngine.SpritePackingMode.Tight = 0
---@return System.Int32 value:1
UnityEngine.SpritePackingMode.Rectangle = 1

---@class UnityEngine.SpritePackingRotation : System.Enum
UnityEngine.SpritePackingRotation = {}
---@type UnityEngine.SpritePackingRotation
CS.UnityEngine.SpritePackingRotation = UnityEngine.SpritePackingRotation

---@return System.Int32 value:0
UnityEngine.SpritePackingRotation.None = 0
---@return System.Int32 value:1
UnityEngine.SpritePackingRotation.FlipHorizontal = 1
---@return System.Int32 value:2
UnityEngine.SpritePackingRotation.FlipVertical = 2
---@return System.Int32 value:3
UnityEngine.SpritePackingRotation.Rotate180 = 3

---@class UnityEngine.SpriteSortPoint : System.Enum
UnityEngine.SpriteSortPoint = {}
---@type UnityEngine.SpriteSortPoint
CS.UnityEngine.SpriteSortPoint = UnityEngine.SpriteSortPoint

---@return System.Int32 value:0
UnityEngine.SpriteSortPoint.Center = 0
---@return System.Int32 value:1
UnityEngine.SpriteSortPoint.Pivot = 1

---@class UnityEngine.Sprite : UnityEngine.Object
---@field public bounds UnityEngine.Bounds @  getter
---@field public rect UnityEngine.Rect @  getter
---@field public border UnityEngine.Vector4 @  getter
---@field public texture UnityEngine.Texture2D @  getter
---@field public pixelsPerUnit System.Single @  getter
---@field public associatedAlphaSplitTexture UnityEngine.Texture2D @  getter
---@field public pivot UnityEngine.Vector2 @  getter
---@field public packed System.Boolean @  getter
---@field public packingMode UnityEngine.SpritePackingMode @  getter
---@field public packingRotation UnityEngine.SpritePackingRotation @  getter
---@field public textureRect UnityEngine.Rect @  getter
---@field public textureRectOffset UnityEngine.Vector2 @  getter
---@field public vertices UnityEngine.Vector2[] @  getter
---@field public triangles System.UInt16[] @  getter
---@field public uv UnityEngine.Vector2[] @  getter
UnityEngine.Sprite = {}
---@type UnityEngine.Sprite
CS.UnityEngine.Sprite = UnityEngine.Sprite

---@return System.Int32
function UnityEngine.Sprite:GetPhysicsShapeCount()end
---@param shapeIdx System.Int32
---@return System.Int32
function UnityEngine.Sprite:GetPhysicsShapePointCount(shapeIdx)end
---@param shapeIdx System.Int32
---@param physicsShape System.Collections.Generic.List
---@return System.Int32
function UnityEngine.Sprite:GetPhysicsShape(shapeIdx, physicsShape)end
---@param physicsShapes System.Collections.Generic.IList
---@return System.Void
function UnityEngine.Sprite:OverridePhysicsShape(physicsShapes)end
---@param vertices UnityEngine.Vector2[]
---@param triangles System.UInt16[]
---@return System.Void
function UnityEngine.Sprite:OverrideGeometry(vertices, triangles)end
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:System.Single):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:System.Single, extrude:System.UInt32):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:System.Single, extrude:System.UInt32, meshType:UnityEngine.SpriteMeshType):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:System.Single, extrude:System.UInt32, meshType:UnityEngine.SpriteMeshType, border:UnityEngine.Vector4):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:System.Single, extrude:System.UInt32, meshType:UnityEngine.SpriteMeshType, border:UnityEngine.Vector4, generateFallbackPhysicsShape:System.Boolean):UnityEngine.Sprite
---@param texture UnityEngine.Texture2D
---@param rect UnityEngine.Rect
---@param pivot UnityEngine.Vector2
---@return UnityEngine.Sprite
function UnityEngine.Sprite.Create(texture, rect, pivot)end
---@class UnityEngine.Social : System.Object
---@field public Active UnityEngine.SocialPlatforms.ISocialPlatform @static setter getter
---@field public localUser UnityEngine.SocialPlatforms.ILocalUser @static  getter
UnityEngine.Social = {}
---@type UnityEngine.Social
CS.UnityEngine.Social = UnityEngine.Social

---@param userIDs System.String[]
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.LoadUsers(userIDs, callback)end
---@param achievementID System.String
---@param progress System.Double
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.ReportProgress(achievementID, progress, callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.LoadAchievementDescriptions(callback)end
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.LoadAchievements(callback)end
---@param score System.Int64
---@param board System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.ReportScore(score, board, callback)end
---@param leaderboardID System.String
---@param callback System.Action
---@return System.Void
function UnityEngine.Social.LoadScores(leaderboardID, callback)end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.Social.CreateLeaderboard()end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.Social.CreateAchievement()end
---@return System.Void
function UnityEngine.Social.ShowAchievementsUI()end
---@return System.Void
function UnityEngine.Social.ShowLeaderboardUI()end
---@class UnityEngine.Grid : UnityEngine.GridLayout
---@field public cellSize UnityEngine.Vector3 @ setter getter
---@field public cellGap UnityEngine.Vector3 @ setter getter
---@field public cellLayout UnityEngine.GridLayout.CellLayout @ setter getter
---@field public cellSwizzle UnityEngine.GridLayout.CellSwizzle @ setter getter
UnityEngine.Grid = {}
---@type UnityEngine.Grid
CS.UnityEngine.Grid = UnityEngine.Grid

---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Grid:GetCellCenterLocal(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Grid:GetCellCenterWorld(position)end
---@param swizzle UnityEngine.GridLayout.CellSwizzle
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Grid.Swizzle(swizzle, position)end
---@param swizzle UnityEngine.GridLayout.CellSwizzle
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Grid.InverseSwizzle(swizzle, position)end
---@class UnityEngine.GridLayout : UnityEngine.Behaviour
---@field public cellSize UnityEngine.Vector3 @  getter
---@field public cellGap UnityEngine.Vector3 @  getter
---@field public cellLayout UnityEngine.GridLayout.CellLayout @  getter
---@field public cellSwizzle UnityEngine.GridLayout.CellSwizzle @  getter
UnityEngine.GridLayout = {}
---@type UnityEngine.GridLayout
CS.UnityEngine.GridLayout = UnityEngine.GridLayout

---@overload fun(origin:UnityEngine.Vector3, size:UnityEngine.Vector3):UnityEngine.Bounds
---@param cellPosition UnityEngine.Vector3Int
---@return UnityEngine.Bounds
function UnityEngine.GridLayout:GetBoundsLocal(cellPosition)end
---@param cellPosition UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToLocal(cellPosition)end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.GridLayout:LocalToCell(localPosition)end
---@param cellPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToLocalInterpolated(cellPosition)end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:LocalToCellInterpolated(localPosition)end
---@param cellPosition UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToWorld(cellPosition)end
---@param worldPosition UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.GridLayout:WorldToCell(worldPosition)end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:LocalToWorld(localPosition)end
---@param worldPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:WorldToLocal(worldPosition)end
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:GetLayoutCellCenter()end
---@class UnityEngine.GridLayout.CellLayout : System.Enum
UnityEngine.GridLayout.CellLayout = {}
---@type UnityEngine.GridLayout.CellLayout
CS.UnityEngine.GridLayout.CellLayout = UnityEngine.GridLayout.CellLayout

---@return System.Int32 value:0
UnityEngine.GridLayout.CellLayout.Rectangle = 0
---@return System.Int32 value:1
UnityEngine.GridLayout.CellLayout.Hexagon = 1
---@return System.Int32 value:2
UnityEngine.GridLayout.CellLayout.Isometric = 2
---@return System.Int32 value:3
UnityEngine.GridLayout.CellLayout.IsometricZAsY = 3

---@class UnityEngine.GridLayout.CellSwizzle : System.Enum
UnityEngine.GridLayout.CellSwizzle = {}
---@type UnityEngine.GridLayout.CellSwizzle
CS.UnityEngine.GridLayout.CellSwizzle = UnityEngine.GridLayout.CellSwizzle

---@return System.Int32 value:0
UnityEngine.GridLayout.CellSwizzle.XYZ = 0
---@return System.Int32 value:1
UnityEngine.GridLayout.CellSwizzle.XZY = 1
---@return System.Int32 value:2
UnityEngine.GridLayout.CellSwizzle.YXZ = 2
---@return System.Int32 value:3
UnityEngine.GridLayout.CellSwizzle.YZX = 3
---@return System.Int32 value:4
UnityEngine.GridLayout.CellSwizzle.ZXY = 4
---@return System.Int32 value:5
UnityEngine.GridLayout.CellSwizzle.ZYX = 5

---@class UnityEngine.Event : System.Object
---@field public rawType UnityEngine.EventType @  getter
---@field public mousePosition UnityEngine.Vector2 @ setter getter
---@field public delta UnityEngine.Vector2 @ setter getter
---@field public button System.Int32 @ setter getter
---@field public modifiers UnityEngine.EventModifiers @ setter getter
---@field public pressure System.Single @ setter getter
---@field public clickCount System.Int32 @ setter getter
---@field public character System.Char @ setter getter
---@field public keyCode UnityEngine.KeyCode @ setter getter
---@field public displayIndex System.Int32 @ setter getter
---@field public type UnityEngine.EventType @ setter getter
---@field public commandName System.String @ setter getter
---@field public mouseRay UnityEngine.Ray @ setter getter
---@field public shift System.Boolean @ setter getter
---@field public control System.Boolean @ setter getter
---@field public alt System.Boolean @ setter getter
---@field public command System.Boolean @ setter getter
---@field public capsLock System.Boolean @ setter getter
---@field public numeric System.Boolean @ setter getter
---@field public functionKey System.Boolean @  getter
---@field public current UnityEngine.Event @static setter getter
---@field public isKey System.Boolean @  getter
---@field public isMouse System.Boolean @  getter
---@field public isScrollWheel System.Boolean @  getter
UnityEngine.Event = {}
---@type UnityEngine.Event
CS.UnityEngine.Event = UnityEngine.Event

---@param controlID System.Int32
---@return UnityEngine.EventType
function UnityEngine.Event:GetTypeForControl(controlID)end
---@param outEvent UnityEngine.Event
---@return System.Boolean
function UnityEngine.Event.PopEvent(outEvent)end
---@return System.Int32
function UnityEngine.Event.GetEventCount()end
---@param key System.String
---@return UnityEngine.Event
function UnityEngine.Event.KeyboardEvent(key)end
---@return System.Int32
function UnityEngine.Event:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function UnityEngine.Event:Equals(obj)end
---@return System.String
function UnityEngine.Event:ToString()end
---@return System.Void
function UnityEngine.Event:Use()end
---@class UnityEngine.EventType : System.Enum
UnityEngine.EventType = {}
---@type UnityEngine.EventType
CS.UnityEngine.EventType = UnityEngine.EventType

---@return System.Int32 value:0
UnityEngine.EventType.mouseDown = 0
---@return System.Int32 value:1
UnityEngine.EventType.mouseUp = 1
---@return System.Int32 value:2
UnityEngine.EventType.mouseMove = 2
---@return System.Int32 value:3
UnityEngine.EventType.mouseDrag = 3
---@return System.Int32 value:4
UnityEngine.EventType.KeyDown = 4
---@return System.Int32 value:5
UnityEngine.EventType.KeyUp = 5
---@return System.Int32 value:6
UnityEngine.EventType.ScrollWheel = 6
---@return System.Int32 value:7
UnityEngine.EventType.repaint = 7
---@return System.Int32 value:8
UnityEngine.EventType.Layout = 8
---@return System.Int32 value:9
UnityEngine.EventType.dragUpdated = 9
---@return System.Int32 value:10
UnityEngine.EventType.dragPerform = 10
---@return System.Int32 value:11
UnityEngine.EventType.ignore = 11
---@return System.Int32 value:12
UnityEngine.EventType.Used = 12
---@return System.Int32 value:13
UnityEngine.EventType.ValidateCommand = 13
---@return System.Int32 value:14
UnityEngine.EventType.ExecuteCommand = 14
---@return System.Int32 value:15
UnityEngine.EventType.DragExited = 15
---@return System.Int32 value:16
UnityEngine.EventType.ContextClick = 16
---@return System.Int32 value:20
UnityEngine.EventType.MouseEnterWindow = 20
---@return System.Int32 value:21
UnityEngine.EventType.MouseLeaveWindow = 21

---@class UnityEngine.EventModifiers : System.Enum
UnityEngine.EventModifiers = {}
---@type UnityEngine.EventModifiers
CS.UnityEngine.EventModifiers = UnityEngine.EventModifiers

---@return System.Int32 value:0
UnityEngine.EventModifiers.None = 0
---@return System.Int32 value:1
UnityEngine.EventModifiers.Shift = 1
---@return System.Int32 value:2
UnityEngine.EventModifiers.Control = 2
---@return System.Int32 value:4
UnityEngine.EventModifiers.Alt = 4

---@class UnityEngine.GUI : System.Object
---@field public color UnityEngine.Color @static setter getter
---@field public backgroundColor UnityEngine.Color @static setter getter
---@field public contentColor UnityEngine.Color @static setter getter
---@field public changed System.Boolean @static setter getter
---@field public enabled System.Boolean @static setter getter
---@field public depth System.Int32 @static setter getter
---@field public skin UnityEngine.GUISkin @static setter getter
---@field public matrix UnityEngine.Matrix4x4 @static setter getter
---@field public tooltip System.String @static setter getter
UnityEngine.GUI = {}
---@type UnityEngine.GUI
CS.UnityEngine.GUI = UnityEngine.GUI

---@param name System.String
---@return System.Void
function UnityEngine.GUI.SetNextControlName(name)end
---@return System.String
function UnityEngine.GUI.GetNameOfFocusedControl()end
---@param name System.String
---@return System.Void
function UnityEngine.GUI.FocusControl(name)end
---@overload fun(position:UnityEngine.Rect):System.Void
---@return System.Void
function UnityEngine.GUI.DragWindow()end
---@param windowID System.Int32
---@return System.Void
function UnityEngine.GUI.BringWindowToFront(windowID)end
---@param windowID System.Int32
---@return System.Void
function UnityEngine.GUI.BringWindowToBack(windowID)end
---@param windowID System.Int32
---@return System.Void
function UnityEngine.GUI.FocusWindow(windowID)end
---@return System.Void
function UnityEngine.GUI.UnfocusWindow()end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Void
function UnityEngine.GUI.Label(position, text)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:System.Boolean):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:System.Boolean, imageAspect:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:System.Boolean, imageAspect:System.Single, color:UnityEngine.Color, borderWidth:System.Single, borderRadius:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:System.Boolean, imageAspect:System.Single, color:UnityEngine.Color, borderWidths:UnityEngine.Vector4, borderRadius:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:System.Boolean, imageAspect:System.Single, color:UnityEngine.Color, borderWidths:UnityEngine.Vector4, borderRadiuses:UnityEngine.Vector4):System.Void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@return System.Void
function UnityEngine.GUI.DrawTexture(position, image)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, texCoords:UnityEngine.Rect, alphaBlend:System.Boolean):System.Void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@param texCoords UnityEngine.Rect
---@return System.Void
function UnityEngine.GUI.DrawTextureWithTexCoords(position, image, texCoords)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Void
function UnityEngine.GUI.Box(position, text)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):System.Boolean
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Boolean
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Boolean
function UnityEngine.GUI.Button(position, text)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):System.Boolean
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Boolean
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Boolean
function UnityEngine.GUI.RepeatButton(position, text)end
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:System.Int32):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:System.Int32, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEngine.GUI.TextField(position, text)end
---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:System.Char, maxLength:System.Int32):System.String
---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:System.Char, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:System.Char, maxLength:System.Int32, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param password System.String
---@param maskChar System.Char
---@return System.String
function UnityEngine.GUI.PasswordField(position, password, maskChar)end
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:System.Int32):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:System.Int32, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEngine.GUI.TextArea(position, text)end
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, image:UnityEngine.Texture):System.Boolean
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, content:UnityEngine.GUIContent):System.Boolean
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, text:System.String, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, id:System.Int32, value:System.Boolean, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param value System.Boolean
---@param text System.String
---@return System.Boolean
function UnityEngine.GUI.Toggle(position, value, text)end
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, images:UnityEngine.Texture[]):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, contents:UnityEngine.GUIContent[]):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, texts:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize):System.Int32
---@param position UnityEngine.Rect
---@param selected System.Int32
---@param texts System.String[]
---@return System.Int32
function UnityEngine.GUI.Toolbar(position, selected, texts)end
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, images:UnityEngine.Texture[], xCount:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, content:UnityEngine.GUIContent[], xCount:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, texts:System.String[], xCount:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, images:UnityEngine.Texture[], xCount:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selected:System.Int32, contents:UnityEngine.GUIContent[], xCount:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param selected System.Int32
---@param texts System.String[]
---@param xCount System.Int32
---@return System.Int32
function UnityEngine.GUI.SelectionGrid(position, selected, texts, xCount)end
---@overload fun(position:UnityEngine.Rect, value:System.Single, leftValue:System.Single, rightValue:System.Single, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@return System.Single
function UnityEngine.GUI.HorizontalSlider(position, value, leftValue, rightValue)end
---@overload fun(position:UnityEngine.Rect, value:System.Single, topValue:System.Single, bottomValue:System.Single, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@param topValue System.Single
---@param bottomValue System.Single
---@return System.Single
function UnityEngine.GUI.VerticalSlider(position, value, topValue, bottomValue)end
---@param position UnityEngine.Rect
---@param value System.Single
---@param size System.Single
---@param start System.Single
---@param _end System.Single
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param horiz System.Boolean
---@param id System.Int32
---@return System.Single
function UnityEngine.GUI.Slider(position, value, size, start, _end, slider, thumb, horiz, id)end
---@overload fun(position:UnityEngine.Rect, value:System.Single, size:System.Single, leftValue:System.Single, rightValue:System.Single, style:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@param size System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@return System.Single
function UnityEngine.GUI.HorizontalScrollbar(position, value, size, leftValue, rightValue)end
---@overload fun(position:UnityEngine.Rect, value:System.Single, size:System.Single, topValue:System.Single, bottomValue:System.Single, style:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@param size System.Single
---@param topValue System.Single
---@param bottomValue System.Single
---@return System.Single
function UnityEngine.GUI.VerticalScrollbar(position, value, size, topValue, bottomValue)end
---@overload fun(position:UnityEngine.Rect, scrollOffset:UnityEngine.Vector2, renderOffset:UnityEngine.Vector2, resetOffset:System.Boolean):System.Void
---@param position UnityEngine.Rect
---@return System.Void
function UnityEngine.GUI.BeginClip(position)end
---@overload fun(position:UnityEngine.Rect, text:System.String):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@return System.Void
function UnityEngine.GUI.BeginGroup(position)end
---@return System.Void
function UnityEngine.GUI.EndGroup()end
---@return System.Void
function UnityEngine.GUI.EndClip()end
---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean):UnityEngine.Vector2
---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle):UnityEngine.Vector2
---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle):UnityEngine.Vector2
---@param position UnityEngine.Rect
---@param scrollPosition UnityEngine.Vector2
---@param viewRect UnityEngine.Rect
---@return UnityEngine.Vector2
function UnityEngine.GUI.BeginScrollView(position, scrollPosition, viewRect)end
---@overload fun(handleScrollWheel:System.Boolean):System.Void
---@return System.Void
function UnityEngine.GUI.EndScrollView()end
---@param position UnityEngine.Rect
---@return System.Void
function UnityEngine.GUI.ScrollTo(position)end
---@param position UnityEngine.Rect
---@param maxDelta System.Single
---@return System.Boolean
function UnityEngine.GUI.ScrollTowards(position, maxDelta)end
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, title:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@param id System.Int32
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@return UnityEngine.Rect
function UnityEngine.GUI.Window(id, clientRect, func, text)end
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:System.Int32, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@param id System.Int32
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@return UnityEngine.Rect
function UnityEngine.GUI.ModalWindow(id, clientRect, func, text)end
---@class UnityEngine.GUI.ToolbarButtonSize : System.Enum
UnityEngine.GUI.ToolbarButtonSize = {}
---@type UnityEngine.GUI.ToolbarButtonSize
CS.UnityEngine.GUI.ToolbarButtonSize = UnityEngine.GUI.ToolbarButtonSize

---@return System.Int32 value:0
UnityEngine.GUI.ToolbarButtonSize.Fixed = 0
---@return System.Int32 value:1
UnityEngine.GUI.ToolbarButtonSize.FitToContents = 1

---@class UnityEngine.GUI.Scope : System.Object
UnityEngine.GUI.Scope = {}
---@type UnityEngine.GUI.Scope
CS.UnityEngine.GUI.Scope = UnityEngine.GUI.Scope

---@return System.Void
function UnityEngine.GUI.Scope:Dispose()end
---@class UnityEngine.GUI.GroupScope : UnityEngine.GUI.Scope
UnityEngine.GUI.GroupScope = {}
---@type UnityEngine.GUI.GroupScope
CS.UnityEngine.GUI.GroupScope = UnityEngine.GUI.GroupScope

---@class UnityEngine.GUI.ScrollViewScope : UnityEngine.GUI.Scope
---@field public scrollPosition UnityEngine.Vector2 @ setter getter
---@field public handleScrollWheel System.Boolean @ setter getter
UnityEngine.GUI.ScrollViewScope = {}
---@type UnityEngine.GUI.ScrollViewScope
CS.UnityEngine.GUI.ScrollViewScope = UnityEngine.GUI.ScrollViewScope

---@class UnityEngine.GUI.ClipScope : UnityEngine.GUI.Scope
UnityEngine.GUI.ClipScope = {}
---@type UnityEngine.GUI.ClipScope
CS.UnityEngine.GUI.ClipScope = UnityEngine.GUI.ClipScope

---@class UnityEngine.GUIContent : System.Object
---@field public text System.String @ setter getter
---@field public image UnityEngine.Texture @ setter getter
---@field public tooltip System.String @ setter getter
---@field public none UnityEngine.GUIContent
UnityEngine.GUIContent = {}
---@type UnityEngine.GUIContent
CS.UnityEngine.GUIContent = UnityEngine.GUIContent

---@class UnityEngine.ScaleMode : System.Enum
UnityEngine.ScaleMode = {}
---@type UnityEngine.ScaleMode
CS.UnityEngine.ScaleMode = UnityEngine.ScaleMode

---@return System.Int32 value:0
UnityEngine.ScaleMode.StretchToFill = 0
---@return System.Int32 value:1
UnityEngine.ScaleMode.ScaleAndCrop = 1
---@return System.Int32 value:2
UnityEngine.ScaleMode.ScaleToFit = 2

---@class UnityEngine.FocusType : System.Enum
UnityEngine.FocusType = {}
---@type UnityEngine.FocusType
CS.UnityEngine.FocusType = UnityEngine.FocusType

---@return System.Int32 value:0
UnityEngine.FocusType.Native = 0
---@return System.Int32 value:1
UnityEngine.FocusType.Keyboard = 1
---@return System.Int32 value:2
UnityEngine.FocusType.Passive = 2

---@class UnityEngine.GUILayout : System.Object
UnityEngine.GUILayout = {}
---@type UnityEngine.GUILayout
CS.UnityEngine.GUILayout = UnityEngine.GUILayout

---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEngine.GUILayout.Label(image, options)end
---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEngine.GUILayout.Box(image, options)end
---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEngine.GUILayout.Button(image, options)end
---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEngine.GUILayout.RepeatButton(image, options)end
---@overload fun(text:System.String, maxLength:System.Int32, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, maxLength:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEngine.GUILayout.TextField(text, options)end
---@overload fun(password:System.String, maskChar:System.Char, maxLength:System.Int32, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(password:System.String, maskChar:System.Char, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(password:System.String, maskChar:System.Char, maxLength:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param password System.String
---@param maskChar System.Char
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEngine.GUILayout.PasswordField(password, maskChar, options)end
---@overload fun(text:System.String, maxLength:System.Int32, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, maxLength:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEngine.GUILayout.TextArea(text, options)end
---@overload fun(value:System.Boolean, text:System.String, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(value:System.Boolean, content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(value:System.Boolean, image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(value:System.Boolean, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(value:System.Boolean, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param value System.Boolean
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEngine.GUILayout.Toggle(value, image, options)end
---@overload fun(selected:System.Int32, images:UnityEngine.Texture[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, contents:UnityEngine.GUIContent[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, texts:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, texts:System.String[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param selected System.Int32
---@param texts System.String[]
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEngine.GUILayout.Toolbar(selected, texts, options)end
---@overload fun(selected:System.Int32, images:UnityEngine.Texture[], xCount:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, content:UnityEngine.GUIContent[], xCount:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, texts:System.String[], xCount:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, images:UnityEngine.Texture[], xCount:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selected:System.Int32, contents:UnityEngine.GUIContent[], xCount:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param selected System.Int32
---@param texts System.String[]
---@param xCount System.Int32
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEngine.GUILayout.SelectionGrid(selected, texts, xCount, options)end
---@overload fun(value:System.Single, leftValue:System.Single, rightValue:System.Single, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEngine.GUILayout.HorizontalSlider(value, leftValue, rightValue, options)end
---@overload fun(value:System.Single, leftValue:System.Single, rightValue:System.Single, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEngine.GUILayout.VerticalSlider(value, leftValue, rightValue, options)end
---@overload fun(value:System.Single, size:System.Single, leftValue:System.Single, rightValue:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param size System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEngine.GUILayout.HorizontalScrollbar(value, size, leftValue, rightValue, options)end
---@overload fun(value:System.Single, size:System.Single, topValue:System.Single, bottomValue:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param size System.Single
---@param topValue System.Single
---@param bottomValue System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEngine.GUILayout.VerticalScrollbar(value, size, topValue, bottomValue, options)end
---@param pixels System.Single
---@return System.Void
function UnityEngine.GUILayout.Space(pixels)end
---@return System.Void
function UnityEngine.GUILayout.FlexibleSpace()end
---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEngine.GUILayout.BeginHorizontal(options)end
---@return System.Void
function UnityEngine.GUILayout.EndHorizontal()end
---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEngine.GUILayout.BeginVertical(options)end
---@return System.Void
function UnityEngine.GUILayout.EndVertical()end
---@overload fun(screenRect:UnityEngine.Rect, text:System.String):System.Void
---@overload fun(screenRect:UnityEngine.Rect, image:UnityEngine.Texture):System.Void
---@overload fun(screenRect:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Void
---@overload fun(screenRect:UnityEngine.Rect, style:UnityEngine.GUIStyle):System.Void
---@overload fun(screenRect:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(screenRect:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):System.Void
---@overload fun(screenRect:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param screenRect UnityEngine.Rect
---@return System.Void
function UnityEngine.GUILayout.BeginArea(screenRect)end
---@return System.Void
function UnityEngine.GUILayout.EndArea()end
---@overload fun(scrollPosition:UnityEngine.Vector2, style:UnityEngine.GUIStyle):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, background:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@param scrollPosition UnityEngine.Vector2
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2
function UnityEngine.GUILayout.BeginScrollView(scrollPosition, options)end
---@return System.Void
function UnityEngine.GUILayout.EndScrollView()end
---@overload fun(id:System.Int32, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:System.Int32, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:System.Int32, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:System.Int32, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:System.Int32, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param id System.Int32
---@param screenRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEngine.GUILayout.Window(id, screenRect, func, text, options)end
---@param width System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.Width(width)end
---@param minWidth System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MinWidth(minWidth)end
---@param maxWidth System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MaxWidth(maxWidth)end
---@param height System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.Height(height)end
---@param minHeight System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MinHeight(minHeight)end
---@param maxHeight System.Single
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MaxHeight(maxHeight)end
---@param expand System.Boolean
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.ExpandWidth(expand)end
---@param expand System.Boolean
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.ExpandHeight(expand)end
---@class UnityEngine.GUILayout.HorizontalScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.HorizontalScope = {}
---@type UnityEngine.GUILayout.HorizontalScope
CS.UnityEngine.GUILayout.HorizontalScope = UnityEngine.GUILayout.HorizontalScope

---@class UnityEngine.GUILayout.VerticalScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.VerticalScope = {}
---@type UnityEngine.GUILayout.VerticalScope
CS.UnityEngine.GUILayout.VerticalScope = UnityEngine.GUILayout.VerticalScope

---@class UnityEngine.GUILayout.AreaScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.AreaScope = {}
---@type UnityEngine.GUILayout.AreaScope
CS.UnityEngine.GUILayout.AreaScope = UnityEngine.GUILayout.AreaScope

---@class UnityEngine.GUILayout.ScrollViewScope : UnityEngine.GUI.Scope
---@field public scrollPosition UnityEngine.Vector2 @ setter getter
---@field public handleScrollWheel System.Boolean @ setter getter
UnityEngine.GUILayout.ScrollViewScope = {}
---@type UnityEngine.GUILayout.ScrollViewScope
CS.UnityEngine.GUILayout.ScrollViewScope = UnityEngine.GUILayout.ScrollViewScope

---@class UnityEngine.GUILayoutOption : System.Object
UnityEngine.GUILayoutOption = {}
---@type UnityEngine.GUILayoutOption
CS.UnityEngine.GUILayoutOption = UnityEngine.GUILayoutOption

---@class UnityEngine.GUILayoutUtility : System.Object
UnityEngine.GUILayoutUtility = {}
---@type UnityEngine.GUILayoutUtility
CS.UnityEngine.GUILayoutUtility = UnityEngine.GUILayoutUtility

---@param GroupName System.String
---@return System.Void
function UnityEngine.GUILayoutUtility.BeginGroup(GroupName)end
---@param groupName System.String
---@return System.Void
function UnityEngine.GUILayoutUtility.EndGroup(groupName)end
---@overload fun(minWidth:System.Single, maxWidth:System.Single, minHeight:System.Single, maxHeight:System.Single):UnityEngine.Rect
---@overload fun(width:System.Single, height:System.Single, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(width:System.Single, height:System.Single, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(minWidth:System.Single, maxWidth:System.Single, minHeight:System.Single, maxHeight:System.Single, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(minWidth:System.Single, maxWidth:System.Single, minHeight:System.Single, maxHeight:System.Single, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(width:System.Single, height:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(minWidth:System.Single, maxWidth:System.Single, minHeight:System.Single, maxHeight:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param width System.Single
---@param height System.Single
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetRect(width, height)end
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetLastRect()end
---@overload fun(aspect:System.Single, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(aspect:System.Single, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(aspect:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param aspect System.Single
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetAspectRect(aspect)end
---@class UnityEngine.GUISettings : System.Object
---@field public doubleClickSelectsWord System.Boolean @ setter getter
---@field public tripleClickSelectsLine System.Boolean @ setter getter
---@field public cursorColor UnityEngine.Color @ setter getter
---@field public cursorFlashSpeed System.Single @ setter getter
---@field public selectionColor UnityEngine.Color @ setter getter
UnityEngine.GUISettings = {}
---@type UnityEngine.GUISettings
CS.UnityEngine.GUISettings = UnityEngine.GUISettings

---@class UnityEngine.GUISkin : UnityEngine.ScriptableObject
---@field public font UnityEngine.Font @ setter getter
---@field public box UnityEngine.GUIStyle @ setter getter
---@field public label UnityEngine.GUIStyle @ setter getter
---@field public textField UnityEngine.GUIStyle @ setter getter
---@field public textArea UnityEngine.GUIStyle @ setter getter
---@field public button UnityEngine.GUIStyle @ setter getter
---@field public toggle UnityEngine.GUIStyle @ setter getter
---@field public window UnityEngine.GUIStyle @ setter getter
---@field public horizontalSlider UnityEngine.GUIStyle @ setter getter
---@field public horizontalSliderThumb UnityEngine.GUIStyle @ setter getter
---@field public verticalSlider UnityEngine.GUIStyle @ setter getter
---@field public verticalSliderThumb UnityEngine.GUIStyle @ setter getter
---@field public horizontalScrollbar UnityEngine.GUIStyle @ setter getter
---@field public horizontalScrollbarThumb UnityEngine.GUIStyle @ setter getter
---@field public horizontalScrollbarLeftButton UnityEngine.GUIStyle @ setter getter
---@field public horizontalScrollbarRightButton UnityEngine.GUIStyle @ setter getter
---@field public verticalScrollbar UnityEngine.GUIStyle @ setter getter
---@field public verticalScrollbarThumb UnityEngine.GUIStyle @ setter getter
---@field public verticalScrollbarUpButton UnityEngine.GUIStyle @ setter getter
---@field public verticalScrollbarDownButton UnityEngine.GUIStyle @ setter getter
---@field public scrollView UnityEngine.GUIStyle @ setter getter
---@field public customStyles UnityEngine.GUIStyle[] @ setter getter
---@field public settings UnityEngine.GUISettings @  getter
UnityEngine.GUISkin = {}
---@type UnityEngine.GUISkin
CS.UnityEngine.GUISkin = UnityEngine.GUISkin

---@param styleName System.String
---@return UnityEngine.GUIStyle
function UnityEngine.GUISkin:GetStyle(styleName)end
---@param styleName System.String
---@return UnityEngine.GUIStyle
function UnityEngine.GUISkin:FindStyle(styleName)end
---@return System.Collections.IEnumerator
function UnityEngine.GUISkin:GetEnumerator()end
---@class UnityEngine.GUIStyleState : System.Object
---@field public background UnityEngine.Texture2D @ setter getter
---@field public textColor UnityEngine.Color @ setter getter
---@field public scaledBackgrounds UnityEngine.Texture2D[] @ setter getter
UnityEngine.GUIStyleState = {}
---@type UnityEngine.GUIStyleState
CS.UnityEngine.GUIStyleState = UnityEngine.GUIStyleState

---@class UnityEngine.GUIStyle : System.Object
---@field public name System.String @ setter getter
---@field public font UnityEngine.Font @ setter getter
---@field public imagePosition UnityEngine.ImagePosition @ setter getter
---@field public alignment UnityEngine.TextAnchor @ setter getter
---@field public wordWrap System.Boolean @ setter getter
---@field public clipping UnityEngine.TextClipping @ setter getter
---@field public contentOffset UnityEngine.Vector2 @ setter getter
---@field public fixedWidth System.Single @ setter getter
---@field public fixedHeight System.Single @ setter getter
---@field public stretchWidth System.Boolean @ setter getter
---@field public stretchHeight System.Boolean @ setter getter
---@field public fontSize System.Int32 @ setter getter
---@field public fontStyle UnityEngine.FontStyle @ setter getter
---@field public richText System.Boolean @ setter getter
---@field public clipOffset UnityEngine.Vector2 @ setter getter
---@field public normal UnityEngine.GUIStyleState @ setter getter
---@field public hover UnityEngine.GUIStyleState @ setter getter
---@field public active UnityEngine.GUIStyleState @ setter getter
---@field public onNormal UnityEngine.GUIStyleState @ setter getter
---@field public onHover UnityEngine.GUIStyleState @ setter getter
---@field public onActive UnityEngine.GUIStyleState @ setter getter
---@field public focused UnityEngine.GUIStyleState @ setter getter
---@field public onFocused UnityEngine.GUIStyleState @ setter getter
---@field public border UnityEngine.RectOffset @ setter getter
---@field public margin UnityEngine.RectOffset @ setter getter
---@field public padding UnityEngine.RectOffset @ setter getter
---@field public overflow UnityEngine.RectOffset @ setter getter
---@field public lineHeight System.Single @  getter
---@field public none UnityEngine.GUIStyle @static  getter
---@field public isHeightDependantOnWidth System.Boolean @  getter
UnityEngine.GUIStyle = {}
---@type UnityEngine.GUIStyle
CS.UnityEngine.GUIStyle = UnityEngine.GUIStyle

---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, controlID:System.Int32):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, controlID:System.Int32, on:System.Boolean):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, isHover:System.Boolean, isActive:System.Boolean, on:System.Boolean, hasKeyboardFocus:System.Boolean):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, isHover:System.Boolean, isActive:System.Boolean, on:System.Boolean, hasKeyboardFocus:System.Boolean):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, isHover:System.Boolean, isActive:System.Boolean, on:System.Boolean, hasKeyboardFocus:System.Boolean):System.Void
---@param position UnityEngine.Rect
---@param isHover System.Boolean
---@param isActive System.Boolean
---@param on System.Boolean
---@param hasKeyboardFocus System.Boolean
---@return System.Void
function UnityEngine.GUIStyle:Draw(position, isHover, isActive, on, hasKeyboardFocus)end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID System.Int32
---@param character System.Int32
---@return System.Void
function UnityEngine.GUIStyle:DrawCursor(position, content, controlID, character)end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID System.Int32
---@param firstSelectedCharacter System.Int32
---@param lastSelectedCharacter System.Int32
---@return System.Void
function UnityEngine.GUIStyle:DrawWithTextSelection(position, content, controlID, firstSelectedCharacter, lastSelectedCharacter)end
---@param str System.String
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle.op_Implicit(str)end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorStringIndex System.Int32
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:GetCursorPixelPosition(position, content, cursorStringIndex)end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorPixelPosition UnityEngine.Vector2
---@return System.Int32
function UnityEngine.GUIStyle:GetCursorStringIndex(position, content, cursorPixelPosition)end
---@param content UnityEngine.GUIContent
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:CalcSize(content)end
---@param contentSize UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:CalcScreenSize(contentSize)end
---@param content UnityEngine.GUIContent
---@param width System.Single
---@return System.Single
function UnityEngine.GUIStyle:CalcHeight(content, width)end
---@param content UnityEngine.GUIContent
---@param minWidth System.Single
---@param maxWidth System.Single
---@return System.Void
function UnityEngine.GUIStyle:CalcMinMaxWidth(content, minWidth, maxWidth)end
---@return System.String
function UnityEngine.GUIStyle:ToString()end
---@class UnityEngine.ImagePosition : System.Enum
UnityEngine.ImagePosition = {}
---@type UnityEngine.ImagePosition
CS.UnityEngine.ImagePosition = UnityEngine.ImagePosition

---@return System.Int32 value:0
UnityEngine.ImagePosition.ImageLeft = 0
---@return System.Int32 value:1
UnityEngine.ImagePosition.ImageAbove = 1
---@return System.Int32 value:2
UnityEngine.ImagePosition.ImageOnly = 2
---@return System.Int32 value:3
UnityEngine.ImagePosition.TextOnly = 3

---@class UnityEngine.TextClipping : System.Enum
UnityEngine.TextClipping = {}
---@type UnityEngine.TextClipping
CS.UnityEngine.TextClipping = UnityEngine.TextClipping

---@return System.Int32 value:0
UnityEngine.TextClipping.Overflow = 0
---@return System.Int32 value:1
UnityEngine.TextClipping.Clip = 1

---@class UnityEngine.GUITargetAttribute : System.Attribute
UnityEngine.GUITargetAttribute = {}
---@type UnityEngine.GUITargetAttribute
CS.UnityEngine.GUITargetAttribute = UnityEngine.GUITargetAttribute

---@class UnityEngine.GUIUtility : System.Object
---@field public hasModalWindow System.Boolean @static  getter
---@field public systemCopyBuffer System.String @static setter getter
---@field public hotControl System.Int32 @static setter getter
---@field public keyboardControl System.Int32 @static setter getter
UnityEngine.GUIUtility = {}
---@type UnityEngine.GUIUtility
CS.UnityEngine.GUIUtility = UnityEngine.GUIUtility

---@overload fun(hint:System.Int32, focus:UnityEngine.FocusType):System.Int32
---@overload fun(contents:UnityEngine.GUIContent, focus:UnityEngine.FocusType):System.Int32
---@overload fun(focus:UnityEngine.FocusType, position:UnityEngine.Rect):System.Int32
---@overload fun(hint:System.Int32, focusType:UnityEngine.FocusType, rect:UnityEngine.Rect):System.Int32
---@overload fun(contents:UnityEngine.GUIContent, focus:UnityEngine.FocusType, position:UnityEngine.Rect):System.Int32
---@param focus UnityEngine.FocusType
---@return System.Int32
function UnityEngine.GUIUtility.GetControlID(focus)end
---@overload fun(rect:UnityEngine.Rect, widthInPixels:System.Int32, heightInPixels:System.Int32):UnityEngine.Rect
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIUtility.AlignRectToDevice(rect)end
---@param t System.Type
---@param controlID System.Int32
---@return System.Object
function UnityEngine.GUIUtility.GetStateObject(t, controlID)end
---@param t System.Type
---@param controlID System.Int32
---@return System.Object
function UnityEngine.GUIUtility.QueryStateObject(t, controlID)end
---@return System.Void
function UnityEngine.GUIUtility.ExitGUI()end
---@param guiPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIUtility.GUIToScreenPoint(guiPoint)end
---@param screenPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIUtility.ScreenToGUIPoint(screenPoint)end
---@param screenRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIUtility.ScreenToGUIRect(screenRect)end
---@param angle System.Single
---@param pivotPoint UnityEngine.Vector2
---@return System.Void
function UnityEngine.GUIUtility.RotateAroundPivot(angle, pivotPoint)end
---@param scale UnityEngine.Vector2
---@param pivotPoint UnityEngine.Vector2
---@return System.Void
function UnityEngine.GUIUtility.ScaleAroundPivot(scale, pivotPoint)end
---@class UnityEngine.ExitGUIException : System.Exception
UnityEngine.ExitGUIException = {}
---@type UnityEngine.ExitGUIException
CS.UnityEngine.ExitGUIException = UnityEngine.ExitGUIException

---@class UnityEngine.TextEditor : System.Object
---@field public content UnityEngine.GUIContent @ setter getter
---@field public text System.String @ setter getter
---@field public position UnityEngine.Rect @ setter getter
---@field public cursorIndex System.Int32 @ setter getter
---@field public selectIndex System.Int32 @ setter getter
---@field public doubleClickSnapping UnityEngine.TextEditor.DblClickSnapping @ setter getter
---@field public altCursorPosition System.Int32 @ setter getter
---@field public hasSelection System.Boolean @  getter
---@field public SelectedText System.String @  getter
---@field public keyboardOnScreen UnityEngine.TouchScreenKeyboard
---@field public controlID System.Int32
---@field public style UnityEngine.GUIStyle
---@field public multiline System.Boolean
---@field public hasHorizontalCursorPos System.Boolean
---@field public isPasswordField System.Boolean
---@field public scrollOffset UnityEngine.Vector2
---@field public graphicalCursorPos UnityEngine.Vector2
---@field public graphicalSelectCursorPos UnityEngine.Vector2
UnityEngine.TextEditor = {}
---@type UnityEngine.TextEditor
CS.UnityEngine.TextEditor = UnityEngine.TextEditor

---@return System.Void
function UnityEngine.TextEditor:OnFocus()end
---@return System.Void
function UnityEngine.TextEditor:OnLostFocus()end
---@param e UnityEngine.Event
---@return System.Boolean
function UnityEngine.TextEditor:HandleKeyEvent(e)end
---@return System.Boolean
function UnityEngine.TextEditor:DeleteLineBack()end
---@return System.Boolean
function UnityEngine.TextEditor:DeleteWordBack()end
---@return System.Boolean
function UnityEngine.TextEditor:DeleteWordForward()end
---@return System.Boolean
function UnityEngine.TextEditor:Delete()end
---@return System.Boolean
function UnityEngine.TextEditor:CanPaste()end
---@return System.Boolean
function UnityEngine.TextEditor:Backspace()end
---@return System.Void
function UnityEngine.TextEditor:SelectAll()end
---@return System.Void
function UnityEngine.TextEditor:SelectNone()end
---@return System.Boolean
function UnityEngine.TextEditor:DeleteSelection()end
---@param replace System.String
---@return System.Void
function UnityEngine.TextEditor:ReplaceSelection(replace)end
---@param c System.Char
---@return System.Void
function UnityEngine.TextEditor:Insert(c)end
---@return System.Void
function UnityEngine.TextEditor:MoveSelectionToAltCursor()end
---@return System.Void
function UnityEngine.TextEditor:MoveRight()end
---@return System.Void
function UnityEngine.TextEditor:MoveLeft()end
---@return System.Void
function UnityEngine.TextEditor:MoveUp()end
---@return System.Void
function UnityEngine.TextEditor:MoveDown()end
---@return System.Void
function UnityEngine.TextEditor:MoveLineStart()end
---@return System.Void
function UnityEngine.TextEditor:MoveLineEnd()end
---@return System.Void
function UnityEngine.TextEditor:MoveGraphicalLineStart()end
---@return System.Void
function UnityEngine.TextEditor:MoveGraphicalLineEnd()end
---@return System.Void
function UnityEngine.TextEditor:MoveTextStart()end
---@return System.Void
function UnityEngine.TextEditor:MoveTextEnd()end
---@return System.Void
function UnityEngine.TextEditor:MoveParagraphForward()end
---@return System.Void
function UnityEngine.TextEditor:MoveParagraphBackward()end
---@param cursorPosition UnityEngine.Vector2
---@return System.Void
function UnityEngine.TextEditor:MoveCursorToPosition(cursorPosition)end
---@param cursorPosition UnityEngine.Vector2
---@return System.Void
function UnityEngine.TextEditor:MoveAltCursorToPosition(cursorPosition)end
---@param cursorPosition UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.TextEditor:IsOverSelection(cursorPosition)end
---@param cursorPosition UnityEngine.Vector2
---@return System.Void
function UnityEngine.TextEditor:SelectToPosition(cursorPosition)end
---@return System.Void
function UnityEngine.TextEditor:SelectLeft()end
---@return System.Void
function UnityEngine.TextEditor:SelectRight()end
---@return System.Void
function UnityEngine.TextEditor:SelectUp()end
---@return System.Void
function UnityEngine.TextEditor:SelectDown()end
---@return System.Void
function UnityEngine.TextEditor:SelectTextEnd()end
---@return System.Void
function UnityEngine.TextEditor:SelectTextStart()end
---@param on System.Boolean
---@return System.Void
function UnityEngine.TextEditor:MouseDragSelectsWholeWords(on)end
---@param snapping UnityEngine.TextEditor.DblClickSnapping
---@return System.Void
function UnityEngine.TextEditor:DblClickSnap(snapping)end
---@return System.Void
function UnityEngine.TextEditor:MoveWordRight()end
---@return System.Void
function UnityEngine.TextEditor:MoveToStartOfNextWord()end
---@return System.Void
function UnityEngine.TextEditor:MoveToEndOfPreviousWord()end
---@return System.Void
function UnityEngine.TextEditor:SelectToStartOfNextWord()end
---@return System.Void
function UnityEngine.TextEditor:SelectToEndOfPreviousWord()end
---@param p System.Int32
---@return System.Int32
function UnityEngine.TextEditor:FindStartOfNextWord(p)end
---@return System.Void
function UnityEngine.TextEditor:MoveWordLeft()end
---@return System.Void
function UnityEngine.TextEditor:SelectWordRight()end
---@return System.Void
function UnityEngine.TextEditor:SelectWordLeft()end
---@return System.Void
function UnityEngine.TextEditor:ExpandSelectGraphicalLineStart()end
---@return System.Void
function UnityEngine.TextEditor:ExpandSelectGraphicalLineEnd()end
---@return System.Void
function UnityEngine.TextEditor:SelectGraphicalLineStart()end
---@return System.Void
function UnityEngine.TextEditor:SelectGraphicalLineEnd()end
---@return System.Void
function UnityEngine.TextEditor:SelectParagraphForward()end
---@return System.Void
function UnityEngine.TextEditor:SelectParagraphBackward()end
---@return System.Void
function UnityEngine.TextEditor:SelectCurrentWord()end
---@return System.Void
function UnityEngine.TextEditor:SelectCurrentParagraph()end
---@param evt UnityEngine.Event
---@return System.Void
function UnityEngine.TextEditor:UpdateScrollOffsetIfNeeded(evt)end
---@param newText System.String
---@return System.Void
function UnityEngine.TextEditor:DrawCursor(newText)end
---@return System.Void
function UnityEngine.TextEditor:SaveBackup()end
---@return System.Void
function UnityEngine.TextEditor:Undo()end
---@return System.Boolean
function UnityEngine.TextEditor:Cut()end
---@return System.Void
function UnityEngine.TextEditor:Copy()end
---@return System.Boolean
function UnityEngine.TextEditor:Paste()end
---@return System.Void
function UnityEngine.TextEditor:DetectFocusChange()end
---@class UnityEngine.TextEditor.DblClickSnapping : System.Enum
UnityEngine.TextEditor.DblClickSnapping = {}
---@type UnityEngine.TextEditor.DblClickSnapping
CS.UnityEngine.TextEditor.DblClickSnapping = UnityEngine.TextEditor.DblClickSnapping

---@return System.Int32 value:0
UnityEngine.TextEditor.DblClickSnapping.WORDS = 0
---@return System.Int32 value:1
UnityEngine.TextEditor.DblClickSnapping.PARAGRAPHS = 1

---@class UnityEngine.ImageConversion : System.Object
UnityEngine.ImageConversion = {}
---@type UnityEngine.ImageConversion
CS.UnityEngine.ImageConversion = UnityEngine.ImageConversion

---@class UnityEngine.JsonUtility : System.Object
UnityEngine.JsonUtility = {}
---@type UnityEngine.JsonUtility
CS.UnityEngine.JsonUtility = UnityEngine.JsonUtility

---@overload fun(obj:System.Object, prettyPrint:System.Boolean):System.String
---@param obj System.Object
---@return System.String
function UnityEngine.JsonUtility.ToJson(obj)end
---@overload fun(json:System.String, type:System.Type):System.Object
---@param json System.String
---@return any
function UnityEngine.JsonUtility.FromJson(json)end
---@param json System.String
---@param objectToOverwrite System.Object
---@return System.Void
function UnityEngine.JsonUtility.FromJsonOverwrite(json, objectToOverwrite)end
---@class UnityEngine.LocalizationAsset : UnityEngine.Object
---@field public localeIsoCode System.String @ setter getter
---@field public isEditorAsset System.Boolean @ setter getter
UnityEngine.LocalizationAsset = {}
---@type UnityEngine.LocalizationAsset
CS.UnityEngine.LocalizationAsset = UnityEngine.LocalizationAsset

---@param original System.String
---@param localized System.String
---@return System.Void
function UnityEngine.LocalizationAsset:SetLocalizedString(original, localized)end
---@param original System.String
---@return System.String
function UnityEngine.LocalizationAsset:GetLocalizedString(original)end
---@class UnityEngine.ParticleSystem : UnityEngine.Component
---@field public safeCollisionEventSize System.Int32 @  getter
---@field public startDelay System.Single @ setter getter
---@field public loop System.Boolean @ setter getter
---@field public playOnAwake System.Boolean @ setter getter
---@field public duration System.Single @  getter
---@field public playbackSpeed System.Single @ setter getter
---@field public enableEmission System.Boolean @ setter getter
---@field public emissionRate System.Single @ setter getter
---@field public startSpeed System.Single @ setter getter
---@field public startSize System.Single @ setter getter
---@field public startColor UnityEngine.Color @ setter getter
---@field public startRotation System.Single @ setter getter
---@field public startRotation3D UnityEngine.Vector3 @ setter getter
---@field public startLifetime System.Single @ setter getter
---@field public gravityModifier System.Single @ setter getter
---@field public maxParticles System.Int32 @ setter getter
---@field public simulationSpace UnityEngine.ParticleSystemSimulationSpace @ setter getter
---@field public scalingMode UnityEngine.ParticleSystemScalingMode @ setter getter
---@field public automaticCullingEnabled System.Boolean @  getter
---@field public isPlaying System.Boolean @  getter
---@field public isEmitting System.Boolean @  getter
---@field public isStopped System.Boolean @  getter
---@field public isPaused System.Boolean @  getter
---@field public particleCount System.Int32 @  getter
---@field public time System.Single @ setter getter
---@field public randomSeed System.UInt32 @ setter getter
---@field public useAutoRandomSeed System.Boolean @ setter getter
---@field public proceduralSimulationSupported System.Boolean @  getter
---@field public main UnityEngine.ParticleSystem.MainModule @  getter
---@field public emission UnityEngine.ParticleSystem.EmissionModule @  getter
---@field public shape UnityEngine.ParticleSystem.ShapeModule @  getter
---@field public velocityOverLifetime UnityEngine.ParticleSystem.VelocityOverLifetimeModule @  getter
---@field public limitVelocityOverLifetime UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule @  getter
---@field public inheritVelocity UnityEngine.ParticleSystem.InheritVelocityModule @  getter
---@field public forceOverLifetime UnityEngine.ParticleSystem.ForceOverLifetimeModule @  getter
---@field public colorOverLifetime UnityEngine.ParticleSystem.ColorOverLifetimeModule @  getter
---@field public colorBySpeed UnityEngine.ParticleSystem.ColorBySpeedModule @  getter
---@field public sizeOverLifetime UnityEngine.ParticleSystem.SizeOverLifetimeModule @  getter
---@field public sizeBySpeed UnityEngine.ParticleSystem.SizeBySpeedModule @  getter
---@field public rotationOverLifetime UnityEngine.ParticleSystem.RotationOverLifetimeModule @  getter
---@field public rotationBySpeed UnityEngine.ParticleSystem.RotationBySpeedModule @  getter
---@field public externalForces UnityEngine.ParticleSystem.ExternalForcesModule @  getter
---@field public noise UnityEngine.ParticleSystem.NoiseModule @  getter
---@field public collision UnityEngine.ParticleSystem.CollisionModule @  getter
---@field public trigger UnityEngine.ParticleSystem.TriggerModule @  getter
---@field public subEmitters UnityEngine.ParticleSystem.SubEmittersModule @  getter
---@field public textureSheetAnimation UnityEngine.ParticleSystem.TextureSheetAnimationModule @  getter
---@field public lights UnityEngine.ParticleSystem.LightsModule @  getter
---@field public trails UnityEngine.ParticleSystem.TrailModule @  getter
---@field public customData UnityEngine.ParticleSystem.CustomDataModule @  getter
UnityEngine.ParticleSystem = {}
---@type UnityEngine.ParticleSystem
CS.UnityEngine.ParticleSystem = UnityEngine.ParticleSystem

---@param customData System.Collections.Generic.List
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return System.Void
function UnityEngine.ParticleSystem:SetCustomParticleData(customData, streamIndex)end
---@param customData System.Collections.Generic.List
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return System.Int32
function UnityEngine.ParticleSystem:GetCustomParticleData(customData, streamIndex)end
---@overload fun(subEmitterIndex:System.Int32, particle:UnityEngine.ParticleSystem.Particle):System.Void
---@overload fun(subEmitterIndex:System.Int32, particles:System.Collections.Generic.List):System.Void
---@param subEmitterIndex System.Int32
---@return System.Void
function UnityEngine.ParticleSystem:TriggerSubEmitter(subEmitterIndex)end
---@overload fun(particle:UnityEngine.ParticleSystem.Particle):System.Void
---@overload fun(emitParams:UnityEngine.ParticleSystem.EmitParams, count:System.Int32):System.Void
---@overload fun(position:UnityEngine.Vector3, velocity:UnityEngine.Vector3, size:System.Single, lifetime:System.Single, color:UnityEngine.Color32):System.Void
---@param count System.Int32
---@return System.Void
function UnityEngine.ParticleSystem:Emit(count)end
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:System.Int32):System.Void
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:System.Int32, offset:System.Int32):System.Void
---@param particles UnityEngine.ParticleSystem.Particle[]
---@return System.Void
function UnityEngine.ParticleSystem:SetParticles(particles)end
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:System.Int32):System.Int32
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:System.Int32, offset:System.Int32):System.Int32
---@param particles UnityEngine.ParticleSystem.Particle[]
---@return System.Int32
function UnityEngine.ParticleSystem:GetParticles(particles)end
---@overload fun(t:System.Single, withChildren:System.Boolean):System.Void
---@overload fun(t:System.Single, withChildren:System.Boolean, restart:System.Boolean):System.Void
---@overload fun(t:System.Single, withChildren:System.Boolean, restart:System.Boolean, fixedTimeStep:System.Boolean):System.Void
---@param t System.Single
---@return System.Void
function UnityEngine.ParticleSystem:Simulate(t)end
---@overload fun(withChildren:System.Boolean):System.Void
---@return System.Void
function UnityEngine.ParticleSystem:Play()end
---@overload fun(withChildren:System.Boolean):System.Void
---@return System.Void
function UnityEngine.ParticleSystem:Pause()end
---@overload fun(withChildren:System.Boolean):System.Void
---@overload fun(withChildren:System.Boolean, stopBehavior:UnityEngine.ParticleSystemStopBehavior):System.Void
---@return System.Void
function UnityEngine.ParticleSystem:Stop()end
---@overload fun(withChildren:System.Boolean):System.Void
---@return System.Void
function UnityEngine.ParticleSystem:Clear()end
---@overload fun(withChildren:System.Boolean):System.Boolean
---@return System.Boolean
function UnityEngine.ParticleSystem:IsAlive()end
---@return System.Void
function UnityEngine.ParticleSystem.ResetPreMappedBufferMemory()end
---@class UnityEngine.ParticleSystem.MainModule : System.ValueType
---@field public duration System.Single @ setter getter
---@field public loop System.Boolean @ setter getter
---@field public prewarm System.Boolean @ setter getter
---@field public startDelay UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startDelayMultiplier System.Single @ setter getter
---@field public startLifetime UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startLifetimeMultiplier System.Single @ setter getter
---@field public startSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startSpeedMultiplier System.Single @ setter getter
---@field public startSize3D System.Boolean @ setter getter
---@field public startSize UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startSizeMultiplier System.Single @ setter getter
---@field public startSizeX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startSizeXMultiplier System.Single @ setter getter
---@field public startSizeY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startSizeYMultiplier System.Single @ setter getter
---@field public startSizeZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startSizeZMultiplier System.Single @ setter getter
---@field public startRotation3D System.Boolean @ setter getter
---@field public startRotation UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startRotationMultiplier System.Single @ setter getter
---@field public startRotationX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startRotationXMultiplier System.Single @ setter getter
---@field public startRotationY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startRotationYMultiplier System.Single @ setter getter
---@field public startRotationZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startRotationZMultiplier System.Single @ setter getter
---@field public flipRotation System.Single @ setter getter
---@field public startColor UnityEngine.ParticleSystem.MinMaxGradient @ setter getter
---@field public gravityModifier UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public gravityModifierMultiplier System.Single @ setter getter
---@field public simulationSpace UnityEngine.ParticleSystemSimulationSpace @ setter getter
---@field public customSimulationSpace UnityEngine.Transform @ setter getter
---@field public simulationSpeed System.Single @ setter getter
---@field public useUnscaledTime System.Boolean @ setter getter
---@field public scalingMode UnityEngine.ParticleSystemScalingMode @ setter getter
---@field public playOnAwake System.Boolean @ setter getter
---@field public maxParticles System.Int32 @ setter getter
---@field public emitterVelocityMode UnityEngine.ParticleSystemEmitterVelocityMode @ setter getter
---@field public stopAction UnityEngine.ParticleSystemStopAction @ setter getter
---@field public cullingMode UnityEngine.ParticleSystemCullingMode @ setter getter
---@field public ringBufferMode UnityEngine.ParticleSystemRingBufferMode @ setter getter
---@field public ringBufferLoopRange UnityEngine.Vector2 @ setter getter
---@field public randomizeRotationDirection System.Single @ setter getter
UnityEngine.ParticleSystem.MainModule = {}
---@type UnityEngine.ParticleSystem.MainModule
CS.UnityEngine.ParticleSystem.MainModule = UnityEngine.ParticleSystem.MainModule

---@class UnityEngine.ParticleSystem.EmissionModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public rateOverTime UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rateOverTimeMultiplier System.Single @ setter getter
---@field public rateOverDistance UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rateOverDistanceMultiplier System.Single @ setter getter
---@field public burstCount System.Int32 @ setter getter
---@field public type UnityEngine.ParticleSystemEmissionType @ setter getter
---@field public rate UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rateMultiplier System.Single @ setter getter
UnityEngine.ParticleSystem.EmissionModule = {}
---@type UnityEngine.ParticleSystem.EmissionModule
CS.UnityEngine.ParticleSystem.EmissionModule = UnityEngine.ParticleSystem.EmissionModule

---@overload fun(bursts:UnityEngine.ParticleSystem.Burst[], size:System.Int32):System.Void
---@param bursts UnityEngine.ParticleSystem.Burst[]
---@return System.Void
function UnityEngine.ParticleSystem.EmissionModule:SetBursts(bursts)end
---@param bursts UnityEngine.ParticleSystem.Burst[]
---@return System.Int32
function UnityEngine.ParticleSystem.EmissionModule:GetBursts(bursts)end
---@param index System.Int32
---@param burst UnityEngine.ParticleSystem.Burst
---@return System.Void
function UnityEngine.ParticleSystem.EmissionModule:SetBurst(index, burst)end
---@param index System.Int32
---@return UnityEngine.ParticleSystem.Burst
function UnityEngine.ParticleSystem.EmissionModule:GetBurst(index)end
---@class UnityEngine.ParticleSystem.ShapeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public shapeType UnityEngine.ParticleSystemShapeType @ setter getter
---@field public randomDirectionAmount System.Single @ setter getter
---@field public sphericalDirectionAmount System.Single @ setter getter
---@field public randomPositionAmount System.Single @ setter getter
---@field public alignToDirection System.Boolean @ setter getter
---@field public radius System.Single @ setter getter
---@field public radiusMode UnityEngine.ParticleSystemShapeMultiModeValue @ setter getter
---@field public radiusSpread System.Single @ setter getter
---@field public radiusSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public radiusSpeedMultiplier System.Single @ setter getter
---@field public radiusThickness System.Single @ setter getter
---@field public angle System.Single @ setter getter
---@field public length System.Single @ setter getter
---@field public boxThickness UnityEngine.Vector3 @ setter getter
---@field public meshShapeType UnityEngine.ParticleSystemMeshShapeType @ setter getter
---@field public mesh UnityEngine.Mesh @ setter getter
---@field public meshRenderer UnityEngine.MeshRenderer @ setter getter
---@field public skinnedMeshRenderer UnityEngine.SkinnedMeshRenderer @ setter getter
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public spriteRenderer UnityEngine.SpriteRenderer @ setter getter
---@field public useMeshMaterialIndex System.Boolean @ setter getter
---@field public meshMaterialIndex System.Int32 @ setter getter
---@field public useMeshColors System.Boolean @ setter getter
---@field public normalOffset System.Single @ setter getter
---@field public meshSpawnMode UnityEngine.ParticleSystemShapeMultiModeValue @ setter getter
---@field public meshSpawnSpread System.Single @ setter getter
---@field public meshSpawnSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public meshSpawnSpeedMultiplier System.Single @ setter getter
---@field public arc System.Single @ setter getter
---@field public arcMode UnityEngine.ParticleSystemShapeMultiModeValue @ setter getter
---@field public arcSpread System.Single @ setter getter
---@field public arcSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public arcSpeedMultiplier System.Single @ setter getter
---@field public donutRadius System.Single @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Vector3 @ setter getter
---@field public scale UnityEngine.Vector3 @ setter getter
---@field public texture UnityEngine.Texture2D @ setter getter
---@field public textureClipChannel UnityEngine.ParticleSystemShapeTextureChannel @ setter getter
---@field public textureClipThreshold System.Single @ setter getter
---@field public textureColorAffectsParticles System.Boolean @ setter getter
---@field public textureAlphaAffectsParticles System.Boolean @ setter getter
---@field public textureBilinearFiltering System.Boolean @ setter getter
---@field public textureUVChannel System.Int32 @ setter getter
---@field public box UnityEngine.Vector3 @ setter getter
---@field public meshScale System.Single @ setter getter
---@field public randomDirection System.Boolean @ setter getter
UnityEngine.ParticleSystem.ShapeModule = {}
---@type UnityEngine.ParticleSystem.ShapeModule
CS.UnityEngine.ParticleSystem.ShapeModule = UnityEngine.ParticleSystem.ShapeModule

---@class UnityEngine.ParticleSystem.VelocityOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public orbitalX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalXMultiplier System.Single @ setter getter
---@field public orbitalYMultiplier System.Single @ setter getter
---@field public orbitalZMultiplier System.Single @ setter getter
---@field public orbitalOffsetX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalOffsetY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalOffsetZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public orbitalOffsetXMultiplier System.Single @ setter getter
---@field public orbitalOffsetYMultiplier System.Single @ setter getter
---@field public orbitalOffsetZMultiplier System.Single @ setter getter
---@field public radial UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public radialMultiplier System.Single @ setter getter
---@field public speedModifier UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public speedModifierMultiplier System.Single @ setter getter
---@field public space UnityEngine.ParticleSystemSimulationSpace @ setter getter
UnityEngine.ParticleSystem.VelocityOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.VelocityOverLifetimeModule
CS.UnityEngine.ParticleSystem.VelocityOverLifetimeModule = UnityEngine.ParticleSystem.VelocityOverLifetimeModule

---@class UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public limitX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public limitXMultiplier System.Single @ setter getter
---@field public limitY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public limitYMultiplier System.Single @ setter getter
---@field public limitZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public limitZMultiplier System.Single @ setter getter
---@field public limit UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public limitMultiplier System.Single @ setter getter
---@field public dampen System.Single @ setter getter
---@field public separateAxes System.Boolean @ setter getter
---@field public space UnityEngine.ParticleSystemSimulationSpace @ setter getter
---@field public drag UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public dragMultiplier System.Single @ setter getter
---@field public multiplyDragByParticleSize System.Boolean @ setter getter
---@field public multiplyDragByParticleVelocity System.Boolean @ setter getter
UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
CS.UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule = UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule

---@class UnityEngine.ParticleSystem.InheritVelocityModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public mode UnityEngine.ParticleSystemInheritVelocityMode @ setter getter
---@field public curve UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public curveMultiplier System.Single @ setter getter
UnityEngine.ParticleSystem.InheritVelocityModule = {}
---@type UnityEngine.ParticleSystem.InheritVelocityModule
CS.UnityEngine.ParticleSystem.InheritVelocityModule = UnityEngine.ParticleSystem.InheritVelocityModule

---@class UnityEngine.ParticleSystem.ForceOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public space UnityEngine.ParticleSystemSimulationSpace @ setter getter
---@field public randomized System.Boolean @ setter getter
UnityEngine.ParticleSystem.ForceOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.ForceOverLifetimeModule
CS.UnityEngine.ParticleSystem.ForceOverLifetimeModule = UnityEngine.ParticleSystem.ForceOverLifetimeModule

---@class UnityEngine.ParticleSystem.ColorOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public color UnityEngine.ParticleSystem.MinMaxGradient @ setter getter
UnityEngine.ParticleSystem.ColorOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.ColorOverLifetimeModule
CS.UnityEngine.ParticleSystem.ColorOverLifetimeModule = UnityEngine.ParticleSystem.ColorOverLifetimeModule

---@class UnityEngine.ParticleSystem.ColorBySpeedModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public color UnityEngine.ParticleSystem.MinMaxGradient @ setter getter
---@field public range UnityEngine.Vector2 @ setter getter
UnityEngine.ParticleSystem.ColorBySpeedModule = {}
---@type UnityEngine.ParticleSystem.ColorBySpeedModule
CS.UnityEngine.ParticleSystem.ColorBySpeedModule = UnityEngine.ParticleSystem.ColorBySpeedModule

---@class UnityEngine.ParticleSystem.SizeOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public size UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public sizeMultiplier System.Single @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public separateAxes System.Boolean @ setter getter
UnityEngine.ParticleSystem.SizeOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.SizeOverLifetimeModule
CS.UnityEngine.ParticleSystem.SizeOverLifetimeModule = UnityEngine.ParticleSystem.SizeOverLifetimeModule

---@class UnityEngine.ParticleSystem.SizeBySpeedModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public size UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public sizeMultiplier System.Single @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public separateAxes System.Boolean @ setter getter
---@field public range UnityEngine.Vector2 @ setter getter
UnityEngine.ParticleSystem.SizeBySpeedModule = {}
---@type UnityEngine.ParticleSystem.SizeBySpeedModule
CS.UnityEngine.ParticleSystem.SizeBySpeedModule = UnityEngine.ParticleSystem.SizeBySpeedModule

---@class UnityEngine.ParticleSystem.RotationOverLifetimeModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public separateAxes System.Boolean @ setter getter
UnityEngine.ParticleSystem.RotationOverLifetimeModule = {}
---@type UnityEngine.ParticleSystem.RotationOverLifetimeModule
CS.UnityEngine.ParticleSystem.RotationOverLifetimeModule = UnityEngine.ParticleSystem.RotationOverLifetimeModule

---@class UnityEngine.ParticleSystem.RotationBySpeedModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public x UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public xMultiplier System.Single @ setter getter
---@field public y UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public yMultiplier System.Single @ setter getter
---@field public z UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public zMultiplier System.Single @ setter getter
---@field public separateAxes System.Boolean @ setter getter
---@field public range UnityEngine.Vector2 @ setter getter
UnityEngine.ParticleSystem.RotationBySpeedModule = {}
---@type UnityEngine.ParticleSystem.RotationBySpeedModule
CS.UnityEngine.ParticleSystem.RotationBySpeedModule = UnityEngine.ParticleSystem.RotationBySpeedModule

---@class UnityEngine.ParticleSystem.ExternalForcesModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public multiplier System.Single @ setter getter
---@field public influenceFilter UnityEngine.ParticleSystemGameObjectFilter @ setter getter
---@field public influenceCount System.Int32 @  getter
UnityEngine.ParticleSystem.ExternalForcesModule = {}
---@type UnityEngine.ParticleSystem.ExternalForcesModule
CS.UnityEngine.ParticleSystem.ExternalForcesModule = UnityEngine.ParticleSystem.ExternalForcesModule

---@param field UnityEngine.ParticleSystemForceField
---@return System.Void
function UnityEngine.ParticleSystem.ExternalForcesModule:AddInfluence(field)end
---@overload fun(field:UnityEngine.ParticleSystemForceField):System.Void
---@param index System.Int32
---@return System.Void
function UnityEngine.ParticleSystem.ExternalForcesModule:RemoveInfluence(index)end
---@param index System.Int32
---@param field UnityEngine.ParticleSystemForceField
---@return System.Void
function UnityEngine.ParticleSystem.ExternalForcesModule:SetInfluence(index, field)end
---@param index System.Int32
---@return UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystem.ExternalForcesModule:GetInfluence(index)end
---@param field UnityEngine.ParticleSystemForceField
---@return System.Boolean
function UnityEngine.ParticleSystem.ExternalForcesModule:IsAffectedBy(field)end
---@class UnityEngine.ParticleSystem.NoiseModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public separateAxes System.Boolean @ setter getter
---@field public strength UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public strengthMultiplier System.Single @ setter getter
---@field public strengthX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public strengthXMultiplier System.Single @ setter getter
---@field public strengthY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public strengthYMultiplier System.Single @ setter getter
---@field public strengthZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public strengthZMultiplier System.Single @ setter getter
---@field public frequency System.Single @ setter getter
---@field public damping System.Boolean @ setter getter
---@field public octaveCount System.Int32 @ setter getter
---@field public octaveMultiplier System.Single @ setter getter
---@field public octaveScale System.Single @ setter getter
---@field public quality UnityEngine.ParticleSystemNoiseQuality @ setter getter
---@field public scrollSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public scrollSpeedMultiplier System.Single @ setter getter
---@field public remapEnabled System.Boolean @ setter getter
---@field public remap UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public remapMultiplier System.Single @ setter getter
---@field public remapX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public remapXMultiplier System.Single @ setter getter
---@field public remapY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public remapYMultiplier System.Single @ setter getter
---@field public remapZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public remapZMultiplier System.Single @ setter getter
---@field public positionAmount UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rotationAmount UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public sizeAmount UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
UnityEngine.ParticleSystem.NoiseModule = {}
---@type UnityEngine.ParticleSystem.NoiseModule
CS.UnityEngine.ParticleSystem.NoiseModule = UnityEngine.ParticleSystem.NoiseModule

---@class UnityEngine.ParticleSystem.CollisionModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public type UnityEngine.ParticleSystemCollisionType @ setter getter
---@field public mode UnityEngine.ParticleSystemCollisionMode @ setter getter
---@field public dampen UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public dampenMultiplier System.Single @ setter getter
---@field public bounce UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public bounceMultiplier System.Single @ setter getter
---@field public lifetimeLoss UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public lifetimeLossMultiplier System.Single @ setter getter
---@field public minKillSpeed System.Single @ setter getter
---@field public maxKillSpeed System.Single @ setter getter
---@field public collidesWith UnityEngine.LayerMask @ setter getter
---@field public enableDynamicColliders System.Boolean @ setter getter
---@field public maxCollisionShapes System.Int32 @ setter getter
---@field public quality UnityEngine.ParticleSystemCollisionQuality @ setter getter
---@field public voxelSize System.Single @ setter getter
---@field public radiusScale System.Single @ setter getter
---@field public sendCollisionMessages System.Boolean @ setter getter
---@field public colliderForce System.Single @ setter getter
---@field public multiplyColliderForceByCollisionAngle System.Boolean @ setter getter
---@field public multiplyColliderForceByParticleSpeed System.Boolean @ setter getter
---@field public multiplyColliderForceByParticleSize System.Boolean @ setter getter
---@field public maxPlaneCount System.Int32 @  getter
---@field public enableInteriorCollisions System.Boolean @ setter getter
UnityEngine.ParticleSystem.CollisionModule = {}
---@type UnityEngine.ParticleSystem.CollisionModule
CS.UnityEngine.ParticleSystem.CollisionModule = UnityEngine.ParticleSystem.CollisionModule

---@param index System.Int32
---@param transform UnityEngine.Transform
---@return System.Void
function UnityEngine.ParticleSystem.CollisionModule:SetPlane(index, transform)end
---@param index System.Int32
---@return UnityEngine.Transform
function UnityEngine.ParticleSystem.CollisionModule:GetPlane(index)end
---@class UnityEngine.ParticleSystem.TriggerModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public inside UnityEngine.ParticleSystemOverlapAction @ setter getter
---@field public outside UnityEngine.ParticleSystemOverlapAction @ setter getter
---@field public enter UnityEngine.ParticleSystemOverlapAction @ setter getter
---@field public exit UnityEngine.ParticleSystemOverlapAction @ setter getter
---@field public radiusScale System.Single @ setter getter
---@field public maxColliderCount System.Int32 @  getter
UnityEngine.ParticleSystem.TriggerModule = {}
---@type UnityEngine.ParticleSystem.TriggerModule
CS.UnityEngine.ParticleSystem.TriggerModule = UnityEngine.ParticleSystem.TriggerModule

---@param index System.Int32
---@param collider UnityEngine.Component
---@return System.Void
function UnityEngine.ParticleSystem.TriggerModule:SetCollider(index, collider)end
---@param index System.Int32
---@return UnityEngine.Component
function UnityEngine.ParticleSystem.TriggerModule:GetCollider(index)end
---@class UnityEngine.ParticleSystem.SubEmittersModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public subEmittersCount System.Int32 @  getter
---@field public birth0 UnityEngine.ParticleSystem @ setter getter
---@field public birth1 UnityEngine.ParticleSystem @ setter getter
---@field public collision0 UnityEngine.ParticleSystem @ setter getter
---@field public collision1 UnityEngine.ParticleSystem @ setter getter
---@field public death0 UnityEngine.ParticleSystem @ setter getter
---@field public death1 UnityEngine.ParticleSystem @ setter getter
UnityEngine.ParticleSystem.SubEmittersModule = {}
---@type UnityEngine.ParticleSystem.SubEmittersModule
CS.UnityEngine.ParticleSystem.SubEmittersModule = UnityEngine.ParticleSystem.SubEmittersModule

---@overload fun(subEmitter:UnityEngine.ParticleSystem, type:UnityEngine.ParticleSystemSubEmitterType, properties:UnityEngine.ParticleSystemSubEmitterProperties, emitProbability:System.Single):System.Void
---@param subEmitter UnityEngine.ParticleSystem
---@param type UnityEngine.ParticleSystemSubEmitterType
---@param properties UnityEngine.ParticleSystemSubEmitterProperties
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:AddSubEmitter(subEmitter, type, properties)end
---@param index System.Int32
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:RemoveSubEmitter(index)end
---@param index System.Int32
---@param subEmitter UnityEngine.ParticleSystem
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterSystem(index, subEmitter)end
---@param index System.Int32
---@param type UnityEngine.ParticleSystemSubEmitterType
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterType(index, type)end
---@param index System.Int32
---@param emitProbability System.Single
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterEmitProbability(index, emitProbability)end
---@param index System.Int32
---@param properties UnityEngine.ParticleSystemSubEmitterProperties
---@return System.Void
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterProperties(index, properties)end
---@param index System.Int32
---@return UnityEngine.ParticleSystem
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterSystem(index)end
---@param index System.Int32
---@return UnityEngine.ParticleSystemSubEmitterType
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterType(index)end
---@param index System.Int32
---@return System.Single
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterEmitProbability(index)end
---@param index System.Int32
---@return UnityEngine.ParticleSystemSubEmitterProperties
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterProperties(index)end
---@class UnityEngine.ParticleSystem.TextureSheetAnimationModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public mode UnityEngine.ParticleSystemAnimationMode @ setter getter
---@field public timeMode UnityEngine.ParticleSystemAnimationTimeMode @ setter getter
---@field public fps System.Single @ setter getter
---@field public numTilesX System.Int32 @ setter getter
---@field public numTilesY System.Int32 @ setter getter
---@field public animation UnityEngine.ParticleSystemAnimationType @ setter getter
---@field public useRandomRow System.Boolean @ setter getter
---@field public frameOverTime UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public frameOverTimeMultiplier System.Single @ setter getter
---@field public startFrame UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public startFrameMultiplier System.Single @ setter getter
---@field public cycleCount System.Int32 @ setter getter
---@field public rowIndex System.Int32 @ setter getter
---@field public uvChannelMask UnityEngine.Rendering.UVChannelFlags @ setter getter
---@field public spriteCount System.Int32 @  getter
---@field public speedRange UnityEngine.Vector2 @ setter getter
---@field public flipU System.Single @ setter getter
---@field public flipV System.Single @ setter getter
UnityEngine.ParticleSystem.TextureSheetAnimationModule = {}
---@type UnityEngine.ParticleSystem.TextureSheetAnimationModule
CS.UnityEngine.ParticleSystem.TextureSheetAnimationModule = UnityEngine.ParticleSystem.TextureSheetAnimationModule

---@param sprite UnityEngine.Sprite
---@return System.Void
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:AddSprite(sprite)end
---@param index System.Int32
---@return System.Void
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:RemoveSprite(index)end
---@param index System.Int32
---@param sprite UnityEngine.Sprite
---@return System.Void
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:SetSprite(index, sprite)end
---@param index System.Int32
---@return UnityEngine.Sprite
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:GetSprite(index)end
---@class UnityEngine.ParticleSystem.LightsModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public ratio System.Single @ setter getter
---@field public useRandomDistribution System.Boolean @ setter getter
---@field public light UnityEngine.Light @ setter getter
---@field public useParticleColor System.Boolean @ setter getter
---@field public sizeAffectsRange System.Boolean @ setter getter
---@field public alphaAffectsIntensity System.Boolean @ setter getter
---@field public range UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rangeMultiplier System.Single @ setter getter
---@field public intensity UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public intensityMultiplier System.Single @ setter getter
---@field public maxLights System.Int32 @ setter getter
UnityEngine.ParticleSystem.LightsModule = {}
---@type UnityEngine.ParticleSystem.LightsModule
CS.UnityEngine.ParticleSystem.LightsModule = UnityEngine.ParticleSystem.LightsModule

---@class UnityEngine.ParticleSystem.TrailModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
---@field public mode UnityEngine.ParticleSystemTrailMode @ setter getter
---@field public ratio System.Single @ setter getter
---@field public lifetime UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public lifetimeMultiplier System.Single @ setter getter
---@field public minVertexDistance System.Single @ setter getter
---@field public textureMode UnityEngine.ParticleSystemTrailTextureMode @ setter getter
---@field public worldSpace System.Boolean @ setter getter
---@field public dieWithParticles System.Boolean @ setter getter
---@field public sizeAffectsWidth System.Boolean @ setter getter
---@field public sizeAffectsLifetime System.Boolean @ setter getter
---@field public inheritParticleColor System.Boolean @ setter getter
---@field public colorOverLifetime UnityEngine.ParticleSystem.MinMaxGradient @ setter getter
---@field public widthOverTrail UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public widthOverTrailMultiplier System.Single @ setter getter
---@field public colorOverTrail UnityEngine.ParticleSystem.MinMaxGradient @ setter getter
---@field public generateLightingData System.Boolean @ setter getter
---@field public ribbonCount System.Int32 @ setter getter
---@field public shadowBias System.Single @ setter getter
---@field public splitSubEmitterRibbons System.Boolean @ setter getter
---@field public attachRibbonsToTransform System.Boolean @ setter getter
UnityEngine.ParticleSystem.TrailModule = {}
---@type UnityEngine.ParticleSystem.TrailModule
CS.UnityEngine.ParticleSystem.TrailModule = UnityEngine.ParticleSystem.TrailModule

---@class UnityEngine.ParticleSystem.CustomDataModule : System.ValueType
---@field public enabled System.Boolean @ setter getter
UnityEngine.ParticleSystem.CustomDataModule = {}
---@type UnityEngine.ParticleSystem.CustomDataModule
CS.UnityEngine.ParticleSystem.CustomDataModule = UnityEngine.ParticleSystem.CustomDataModule

---@param stream UnityEngine.ParticleSystemCustomData
---@param mode UnityEngine.ParticleSystemCustomDataMode
---@return System.Void
function UnityEngine.ParticleSystem.CustomDataModule:SetMode(stream, mode)end
---@param stream UnityEngine.ParticleSystemCustomData
---@return UnityEngine.ParticleSystemCustomDataMode
function UnityEngine.ParticleSystem.CustomDataModule:GetMode(stream)end
---@param stream UnityEngine.ParticleSystemCustomData
---@param count System.Int32
---@return System.Void
function UnityEngine.ParticleSystem.CustomDataModule:SetVectorComponentCount(stream, count)end
---@param stream UnityEngine.ParticleSystemCustomData
---@return System.Int32
function UnityEngine.ParticleSystem.CustomDataModule:GetVectorComponentCount(stream)end
---@param stream UnityEngine.ParticleSystemCustomData
---@param component System.Int32
---@param curve UnityEngine.ParticleSystem.MinMaxCurve
---@return System.Void
function UnityEngine.ParticleSystem.CustomDataModule:SetVector(stream, component, curve)end
---@param stream UnityEngine.ParticleSystemCustomData
---@param component System.Int32
---@return UnityEngine.ParticleSystem.MinMaxCurve
function UnityEngine.ParticleSystem.CustomDataModule:GetVector(stream, component)end
---@param stream UnityEngine.ParticleSystemCustomData
---@param gradient UnityEngine.ParticleSystem.MinMaxGradient
---@return System.Void
function UnityEngine.ParticleSystem.CustomDataModule:SetColor(stream, gradient)end
---@param stream UnityEngine.ParticleSystemCustomData
---@return UnityEngine.ParticleSystem.MinMaxGradient
function UnityEngine.ParticleSystem.CustomDataModule:GetColor(stream)end
---@class UnityEngine.ParticleSystem.MinMaxCurve : System.ValueType
---@field public curveScalar System.Single @ setter getter
---@field public mode UnityEngine.ParticleSystemCurveMode @ setter getter
---@field public curveMultiplier System.Single @ setter getter
---@field public curveMax UnityEngine.AnimationCurve @ setter getter
---@field public curveMin UnityEngine.AnimationCurve @ setter getter
---@field public constantMax System.Single @ setter getter
---@field public constantMin System.Single @ setter getter
---@field public constant System.Single @ setter getter
---@field public curve UnityEngine.AnimationCurve @ setter getter
UnityEngine.ParticleSystem.MinMaxCurve = {}
---@type UnityEngine.ParticleSystem.MinMaxCurve
CS.UnityEngine.ParticleSystem.MinMaxCurve = UnityEngine.ParticleSystem.MinMaxCurve

---@overload fun(time:System.Single, lerpFactor:System.Single):System.Single
---@param time System.Single
---@return System.Single
function UnityEngine.ParticleSystem.MinMaxCurve:Evaluate(time)end
---@param constant System.Single
---@return UnityEngine.ParticleSystem.MinMaxCurve
function UnityEngine.ParticleSystem.MinMaxCurve.op_Implicit(constant)end
---@class UnityEngine.ParticleSystem.Particle : System.ValueType
---@field public lifetime System.Single @ setter getter
---@field public randomValue System.Single @ setter getter
---@field public size System.Single @ setter getter
---@field public color UnityEngine.Color32 @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public animatedVelocity UnityEngine.Vector3 @  getter
---@field public totalVelocity UnityEngine.Vector3 @  getter
---@field public remainingLifetime System.Single @ setter getter
---@field public startLifetime System.Single @ setter getter
---@field public startColor UnityEngine.Color32 @ setter getter
---@field public randomSeed System.UInt32 @ setter getter
---@field public axisOfRotation UnityEngine.Vector3 @ setter getter
---@field public startSize System.Single @ setter getter
---@field public startSize3D UnityEngine.Vector3 @ setter getter
---@field public rotation System.Single @ setter getter
---@field public rotation3D UnityEngine.Vector3 @ setter getter
---@field public angularVelocity System.Single @ setter getter
---@field public angularVelocity3D UnityEngine.Vector3 @ setter getter
UnityEngine.ParticleSystem.Particle = {}
---@type UnityEngine.ParticleSystem.Particle
CS.UnityEngine.ParticleSystem.Particle = UnityEngine.ParticleSystem.Particle

---@param system UnityEngine.ParticleSystem
---@return System.Single
function UnityEngine.ParticleSystem.Particle:GetCurrentSize(system)end
---@param system UnityEngine.ParticleSystem
---@return UnityEngine.Vector3
function UnityEngine.ParticleSystem.Particle:GetCurrentSize3D(system)end
---@param system UnityEngine.ParticleSystem
---@return UnityEngine.Color32
function UnityEngine.ParticleSystem.Particle:GetCurrentColor(system)end
---@class UnityEngine.ParticleSystem.CollisionEvent : System.ValueType
---@field public intersection UnityEngine.Vector3 @  getter
---@field public normal UnityEngine.Vector3 @  getter
---@field public velocity UnityEngine.Vector3 @  getter
---@field public collider UnityEngine.Component @  getter
UnityEngine.ParticleSystem.CollisionEvent = {}
---@type UnityEngine.ParticleSystem.CollisionEvent
CS.UnityEngine.ParticleSystem.CollisionEvent = UnityEngine.ParticleSystem.CollisionEvent

---@class UnityEngine.ParticleSystem.Burst : System.ValueType
---@field public time System.Single @ setter getter
---@field public count UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public minCount System.Int16 @ setter getter
---@field public maxCount System.Int16 @ setter getter
---@field public cycleCount System.Int32 @ setter getter
---@field public repeatInterval System.Single @ setter getter
---@field public probability System.Single @ setter getter
UnityEngine.ParticleSystem.Burst = {}
---@type UnityEngine.ParticleSystem.Burst
CS.UnityEngine.ParticleSystem.Burst = UnityEngine.ParticleSystem.Burst

---@class UnityEngine.ParticleSystem.MinMaxGradient : System.ValueType
---@field public mode UnityEngine.ParticleSystemGradientMode @ setter getter
---@field public gradientMax UnityEngine.Gradient @ setter getter
---@field public gradientMin UnityEngine.Gradient @ setter getter
---@field public colorMax UnityEngine.Color @ setter getter
---@field public colorMin UnityEngine.Color @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public gradient UnityEngine.Gradient @ setter getter
UnityEngine.ParticleSystem.MinMaxGradient = {}
---@type UnityEngine.ParticleSystem.MinMaxGradient
CS.UnityEngine.ParticleSystem.MinMaxGradient = UnityEngine.ParticleSystem.MinMaxGradient

---@overload fun(time:System.Single, lerpFactor:System.Single):UnityEngine.Color
---@param time System.Single
---@return UnityEngine.Color
function UnityEngine.ParticleSystem.MinMaxGradient:Evaluate(time)end
---@overload fun(gradient:UnityEngine.Gradient):UnityEngine.ParticleSystem.MinMaxGradient
---@param color UnityEngine.Color
---@return UnityEngine.ParticleSystem.MinMaxGradient
function UnityEngine.ParticleSystem.MinMaxGradient.op_Implicit(color)end
---@class UnityEngine.ParticleSystem.EmitParams : System.ValueType
---@field public position UnityEngine.Vector3 @ setter getter
---@field public applyShapeToPosition System.Boolean @ setter getter
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public startLifetime System.Single @ setter getter
---@field public startSize System.Single @ setter getter
---@field public startSize3D UnityEngine.Vector3 @ setter getter
---@field public axisOfRotation UnityEngine.Vector3 @ setter getter
---@field public rotation System.Single @ setter getter
---@field public rotation3D UnityEngine.Vector3 @ setter getter
---@field public angularVelocity System.Single @ setter getter
---@field public angularVelocity3D UnityEngine.Vector3 @ setter getter
---@field public startColor UnityEngine.Color32 @ setter getter
---@field public randomSeed System.UInt32 @ setter getter
UnityEngine.ParticleSystem.EmitParams = {}
---@type UnityEngine.ParticleSystem.EmitParams
CS.UnityEngine.ParticleSystem.EmitParams = UnityEngine.ParticleSystem.EmitParams

---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetPosition()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetVelocity()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetAxisOfRotation()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetRotation()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetAngularVelocity()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetStartSize()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetStartColor()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetRandomSeed()end
---@return System.Void
function UnityEngine.ParticleSystem.EmitParams:ResetStartLifetime()end
---@class UnityEngine.ParticleSystemRenderer : UnityEngine.Renderer
---@field public mesh UnityEngine.Mesh @ setter getter
---@field public meshCount System.Int32 @  getter
---@field public activeVertexStreamsCount System.Int32 @  getter
---@field public alignment UnityEngine.ParticleSystemRenderSpace @ setter getter
---@field public renderMode UnityEngine.ParticleSystemRenderMode @ setter getter
---@field public sortMode UnityEngine.ParticleSystemSortMode @ setter getter
---@field public lengthScale System.Single @ setter getter
---@field public velocityScale System.Single @ setter getter
---@field public cameraVelocityScale System.Single @ setter getter
---@field public normalDirection System.Single @ setter getter
---@field public shadowBias System.Single @ setter getter
---@field public sortingFudge System.Single @ setter getter
---@field public minParticleSize System.Single @ setter getter
---@field public maxParticleSize System.Single @ setter getter
---@field public pivot UnityEngine.Vector3 @ setter getter
---@field public flip UnityEngine.Vector3 @ setter getter
---@field public maskInteraction UnityEngine.SpriteMaskInteraction @ setter getter
---@field public trailMaterial UnityEngine.Material @ setter getter
---@field public enableGPUInstancing System.Boolean @ setter getter
---@field public allowRoll System.Boolean @ setter getter
UnityEngine.ParticleSystemRenderer = {}
---@type UnityEngine.ParticleSystemRenderer
CS.UnityEngine.ParticleSystemRenderer = UnityEngine.ParticleSystemRenderer

---@param meshes UnityEngine.Mesh[]
---@return System.Int32
function UnityEngine.ParticleSystemRenderer:GetMeshes(meshes)end
---@overload fun(meshes:UnityEngine.Mesh[], size:System.Int32):System.Void
---@param meshes UnityEngine.Mesh[]
---@return System.Void
function UnityEngine.ParticleSystemRenderer:SetMeshes(meshes)end
---@param streams System.Collections.Generic.List
---@return System.Void
function UnityEngine.ParticleSystemRenderer:SetActiveVertexStreams(streams)end
---@param streams System.Collections.Generic.List
---@return System.Void
function UnityEngine.ParticleSystemRenderer:GetActiveVertexStreams(streams)end
---@param streams UnityEngine.ParticleSystemVertexStreams
---@return System.Void
function UnityEngine.ParticleSystemRenderer:EnableVertexStreams(streams)end
---@param streams UnityEngine.ParticleSystemVertexStreams
---@return System.Void
function UnityEngine.ParticleSystemRenderer:DisableVertexStreams(streams)end
---@param streams UnityEngine.ParticleSystemVertexStreams
---@return System.Boolean
function UnityEngine.ParticleSystemRenderer:AreVertexStreamsEnabled(streams)end
---@param streams UnityEngine.ParticleSystemVertexStreams
---@return UnityEngine.ParticleSystemVertexStreams
function UnityEngine.ParticleSystemRenderer:GetEnabledVertexStreams(streams)end
---@overload fun(mesh:UnityEngine.Mesh):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@param mesh UnityEngine.Mesh
---@param useTransform System.Boolean
---@return System.Void
function UnityEngine.ParticleSystemRenderer:BakeMesh(mesh, useTransform)end
---@overload fun(mesh:UnityEngine.Mesh):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera):System.Void
---@param mesh UnityEngine.Mesh
---@param useTransform System.Boolean
---@return System.Void
function UnityEngine.ParticleSystemRenderer:BakeTrailsMesh(mesh, useTransform)end
---@class UnityEngine.ParticleCollisionEvent : System.ValueType
---@field public intersection UnityEngine.Vector3 @  getter
---@field public normal UnityEngine.Vector3 @  getter
---@field public velocity UnityEngine.Vector3 @  getter
---@field public colliderComponent UnityEngine.Component @  getter
---@field public collider UnityEngine.Component @  getter
UnityEngine.ParticleCollisionEvent = {}
---@type UnityEngine.ParticleCollisionEvent
CS.UnityEngine.ParticleCollisionEvent = UnityEngine.ParticleCollisionEvent

---@class UnityEngine.ParticlePhysicsExtensions : System.Object
UnityEngine.ParticlePhysicsExtensions = {}
---@type UnityEngine.ParticlePhysicsExtensions
CS.UnityEngine.ParticlePhysicsExtensions = UnityEngine.ParticlePhysicsExtensions

---@class UnityEngine.ParticleSystemEmissionType : System.Enum
UnityEngine.ParticleSystemEmissionType = {}
---@type UnityEngine.ParticleSystemEmissionType
CS.UnityEngine.ParticleSystemEmissionType = UnityEngine.ParticleSystemEmissionType

---@return System.Int32 value:0
UnityEngine.ParticleSystemEmissionType.Time = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemEmissionType.Distance = 1

---@class UnityEngine.ParticleSystemVertexStreams : System.Enum
UnityEngine.ParticleSystemVertexStreams = {}
---@type UnityEngine.ParticleSystemVertexStreams
CS.UnityEngine.ParticleSystemVertexStreams = UnityEngine.ParticleSystemVertexStreams

---@return System.Int32 value:0
UnityEngine.ParticleSystemVertexStreams.None = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemVertexStreams.Position = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemVertexStreams.Normal = 2
---@return System.Int32 value:4
UnityEngine.ParticleSystemVertexStreams.Tangent = 4
---@return System.Int32 value:8
UnityEngine.ParticleSystemVertexStreams.Color = 8

---@class UnityEngine.ParticleSystemRenderMode : System.Enum
UnityEngine.ParticleSystemRenderMode = {}
---@type UnityEngine.ParticleSystemRenderMode
CS.UnityEngine.ParticleSystemRenderMode = UnityEngine.ParticleSystemRenderMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemRenderMode.Billboard = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemRenderMode.Stretch = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemRenderMode.HorizontalBillboard = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemRenderMode.VerticalBillboard = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemRenderMode.Mesh = 4
---@return System.Int32 value:5
UnityEngine.ParticleSystemRenderMode.None = 5

---@class UnityEngine.ParticleSystemSortMode : System.Enum
UnityEngine.ParticleSystemSortMode = {}
---@type UnityEngine.ParticleSystemSortMode
CS.UnityEngine.ParticleSystemSortMode = UnityEngine.ParticleSystemSortMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemSortMode.None = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemSortMode.Distance = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemSortMode.OldestInFront = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemSortMode.YoungestInFront = 3

---@class UnityEngine.ParticleSystemCollisionQuality : System.Enum
UnityEngine.ParticleSystemCollisionQuality = {}
---@type UnityEngine.ParticleSystemCollisionQuality
CS.UnityEngine.ParticleSystemCollisionQuality = UnityEngine.ParticleSystemCollisionQuality

---@return System.Int32 value:0
UnityEngine.ParticleSystemCollisionQuality.High = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCollisionQuality.Medium = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemCollisionQuality.Low = 2

---@class UnityEngine.ParticleSystemRenderSpace : System.Enum
UnityEngine.ParticleSystemRenderSpace = {}
---@type UnityEngine.ParticleSystemRenderSpace
CS.UnityEngine.ParticleSystemRenderSpace = UnityEngine.ParticleSystemRenderSpace

---@return System.Int32 value:0
UnityEngine.ParticleSystemRenderSpace.View = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemRenderSpace.World = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemRenderSpace.Local = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemRenderSpace.Facing = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemRenderSpace.Velocity = 4

---@class UnityEngine.ParticleSystemCurveMode : System.Enum
UnityEngine.ParticleSystemCurveMode = {}
---@type UnityEngine.ParticleSystemCurveMode
CS.UnityEngine.ParticleSystemCurveMode = UnityEngine.ParticleSystemCurveMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemCurveMode.Constant = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCurveMode.Curve = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemCurveMode.TwoCurves = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemCurveMode.TwoConstants = 3

---@class UnityEngine.ParticleSystemGradientMode : System.Enum
UnityEngine.ParticleSystemGradientMode = {}
---@type UnityEngine.ParticleSystemGradientMode
CS.UnityEngine.ParticleSystemGradientMode = UnityEngine.ParticleSystemGradientMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemGradientMode.Color = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemGradientMode.Gradient = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemGradientMode.TwoColors = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemGradientMode.TwoGradients = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemGradientMode.RandomColor = 4

---@class UnityEngine.ParticleSystemShapeType : System.Enum
UnityEngine.ParticleSystemShapeType = {}
---@type UnityEngine.ParticleSystemShapeType
CS.UnityEngine.ParticleSystemShapeType = UnityEngine.ParticleSystemShapeType

---@return System.Int32 value:0
UnityEngine.ParticleSystemShapeType.Sphere = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemShapeType.SphereShell = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemShapeType.Hemisphere = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemShapeType.HemisphereShell = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemShapeType.Cone = 4
---@return System.Int32 value:5
UnityEngine.ParticleSystemShapeType.Box = 5
---@return System.Int32 value:6
UnityEngine.ParticleSystemShapeType.Mesh = 6
---@return System.Int32 value:7
UnityEngine.ParticleSystemShapeType.ConeShell = 7
---@return System.Int32 value:8
UnityEngine.ParticleSystemShapeType.ConeVolume = 8
---@return System.Int32 value:9
UnityEngine.ParticleSystemShapeType.ConeVolumeShell = 9
---@return System.Int32 value:10
UnityEngine.ParticleSystemShapeType.Circle = 10
---@return System.Int32 value:11
UnityEngine.ParticleSystemShapeType.CircleEdge = 11
---@return System.Int32 value:12
UnityEngine.ParticleSystemShapeType.SingleSidedEdge = 12
---@return System.Int32 value:13
UnityEngine.ParticleSystemShapeType.MeshRenderer = 13
---@return System.Int32 value:14
UnityEngine.ParticleSystemShapeType.SkinnedMeshRenderer = 14
---@return System.Int32 value:15
UnityEngine.ParticleSystemShapeType.BoxShell = 15
---@return System.Int32 value:16
UnityEngine.ParticleSystemShapeType.BoxEdge = 16
---@return System.Int32 value:17
UnityEngine.ParticleSystemShapeType.Donut = 17
---@return System.Int32 value:18
UnityEngine.ParticleSystemShapeType.Rectangle = 18
---@return System.Int32 value:19
UnityEngine.ParticleSystemShapeType.Sprite = 19
---@return System.Int32 value:20
UnityEngine.ParticleSystemShapeType.SpriteRenderer = 20

---@class UnityEngine.ParticleSystemMeshShapeType : System.Enum
UnityEngine.ParticleSystemMeshShapeType = {}
---@type UnityEngine.ParticleSystemMeshShapeType
CS.UnityEngine.ParticleSystemMeshShapeType = UnityEngine.ParticleSystemMeshShapeType

---@return System.Int32 value:0
UnityEngine.ParticleSystemMeshShapeType.Vertex = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemMeshShapeType.Edge = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemMeshShapeType.Triangle = 2

---@class UnityEngine.ParticleSystemShapeTextureChannel : System.Enum
UnityEngine.ParticleSystemShapeTextureChannel = {}
---@type UnityEngine.ParticleSystemShapeTextureChannel
CS.UnityEngine.ParticleSystemShapeTextureChannel = UnityEngine.ParticleSystemShapeTextureChannel

---@return System.Int32 value:0
UnityEngine.ParticleSystemShapeTextureChannel.Red = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemShapeTextureChannel.Green = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemShapeTextureChannel.Blue = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemShapeTextureChannel.Alpha = 3

---@class UnityEngine.ParticleSystemAnimationMode : System.Enum
UnityEngine.ParticleSystemAnimationMode = {}
---@type UnityEngine.ParticleSystemAnimationMode
CS.UnityEngine.ParticleSystemAnimationMode = UnityEngine.ParticleSystemAnimationMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemAnimationMode.Grid = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemAnimationMode.Sprites = 1

---@class UnityEngine.ParticleSystemAnimationTimeMode : System.Enum
UnityEngine.ParticleSystemAnimationTimeMode = {}
---@type UnityEngine.ParticleSystemAnimationTimeMode
CS.UnityEngine.ParticleSystemAnimationTimeMode = UnityEngine.ParticleSystemAnimationTimeMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemAnimationTimeMode.Lifetime = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemAnimationTimeMode.Speed = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemAnimationTimeMode.FPS = 2

---@class UnityEngine.ParticleSystemAnimationType : System.Enum
UnityEngine.ParticleSystemAnimationType = {}
---@type UnityEngine.ParticleSystemAnimationType
CS.UnityEngine.ParticleSystemAnimationType = UnityEngine.ParticleSystemAnimationType

---@return System.Int32 value:0
UnityEngine.ParticleSystemAnimationType.WholeSheet = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemAnimationType.SingleRow = 1

---@class UnityEngine.ParticleSystemCollisionType : System.Enum
UnityEngine.ParticleSystemCollisionType = {}
---@type UnityEngine.ParticleSystemCollisionType
CS.UnityEngine.ParticleSystemCollisionType = UnityEngine.ParticleSystemCollisionType

---@return System.Int32 value:0
UnityEngine.ParticleSystemCollisionType.Planes = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCollisionType.World = 1

---@class UnityEngine.ParticleSystemCollisionMode : System.Enum
UnityEngine.ParticleSystemCollisionMode = {}
---@type UnityEngine.ParticleSystemCollisionMode
CS.UnityEngine.ParticleSystemCollisionMode = UnityEngine.ParticleSystemCollisionMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemCollisionMode.Collision3D = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCollisionMode.Collision2D = 1

---@class UnityEngine.ParticleSystemOverlapAction : System.Enum
UnityEngine.ParticleSystemOverlapAction = {}
---@type UnityEngine.ParticleSystemOverlapAction
CS.UnityEngine.ParticleSystemOverlapAction = UnityEngine.ParticleSystemOverlapAction

---@return System.Int32 value:0
UnityEngine.ParticleSystemOverlapAction.Ignore = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemOverlapAction.Kill = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemOverlapAction.Callback = 2

---@class UnityEngine.ParticleSystemSimulationSpace : System.Enum
UnityEngine.ParticleSystemSimulationSpace = {}
---@type UnityEngine.ParticleSystemSimulationSpace
CS.UnityEngine.ParticleSystemSimulationSpace = UnityEngine.ParticleSystemSimulationSpace

---@return System.Int32 value:0
UnityEngine.ParticleSystemSimulationSpace.Local = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemSimulationSpace.World = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemSimulationSpace.Custom = 2

---@class UnityEngine.ParticleSystemStopBehavior : System.Enum
UnityEngine.ParticleSystemStopBehavior = {}
---@type UnityEngine.ParticleSystemStopBehavior
CS.UnityEngine.ParticleSystemStopBehavior = UnityEngine.ParticleSystemStopBehavior

---@return System.Int32 value:0
UnityEngine.ParticleSystemStopBehavior.StopEmittingAndClear = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemStopBehavior.StopEmitting = 1

---@class UnityEngine.ParticleSystemScalingMode : System.Enum
UnityEngine.ParticleSystemScalingMode = {}
---@type UnityEngine.ParticleSystemScalingMode
CS.UnityEngine.ParticleSystemScalingMode = UnityEngine.ParticleSystemScalingMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemScalingMode.Hierarchy = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemScalingMode.Local = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemScalingMode.Shape = 2

---@class UnityEngine.ParticleSystemStopAction : System.Enum
UnityEngine.ParticleSystemStopAction = {}
---@type UnityEngine.ParticleSystemStopAction
CS.UnityEngine.ParticleSystemStopAction = UnityEngine.ParticleSystemStopAction

---@return System.Int32 value:0
UnityEngine.ParticleSystemStopAction.None = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemStopAction.Disable = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemStopAction.Destroy = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemStopAction.Callback = 3

---@class UnityEngine.ParticleSystemCullingMode : System.Enum
UnityEngine.ParticleSystemCullingMode = {}
---@type UnityEngine.ParticleSystemCullingMode
CS.UnityEngine.ParticleSystemCullingMode = UnityEngine.ParticleSystemCullingMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemCullingMode.Automatic = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCullingMode.PauseAndCatchup = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemCullingMode.Pause = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemCullingMode.AlwaysSimulate = 3

---@class UnityEngine.ParticleSystemEmitterVelocityMode : System.Enum
UnityEngine.ParticleSystemEmitterVelocityMode = {}
---@type UnityEngine.ParticleSystemEmitterVelocityMode
CS.UnityEngine.ParticleSystemEmitterVelocityMode = UnityEngine.ParticleSystemEmitterVelocityMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemEmitterVelocityMode.Transform = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemEmitterVelocityMode.Rigidbody = 1

---@class UnityEngine.ParticleSystemInheritVelocityMode : System.Enum
UnityEngine.ParticleSystemInheritVelocityMode = {}
---@type UnityEngine.ParticleSystemInheritVelocityMode
CS.UnityEngine.ParticleSystemInheritVelocityMode = UnityEngine.ParticleSystemInheritVelocityMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemInheritVelocityMode.Initial = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemInheritVelocityMode.Current = 1

---@class UnityEngine.ParticleSystemTriggerEventType : System.Enum
UnityEngine.ParticleSystemTriggerEventType = {}
---@type UnityEngine.ParticleSystemTriggerEventType
CS.UnityEngine.ParticleSystemTriggerEventType = UnityEngine.ParticleSystemTriggerEventType

---@return System.Int32 value:0
UnityEngine.ParticleSystemTriggerEventType.Inside = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemTriggerEventType.Outside = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemTriggerEventType.Enter = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemTriggerEventType.Exit = 3

---@class UnityEngine.ParticleSystemVertexStream : System.Enum
UnityEngine.ParticleSystemVertexStream = {}
---@type UnityEngine.ParticleSystemVertexStream
CS.UnityEngine.ParticleSystemVertexStream = UnityEngine.ParticleSystemVertexStream

---@return System.Int32 value:0
UnityEngine.ParticleSystemVertexStream.Position = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemVertexStream.Normal = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemVertexStream.Tangent = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemVertexStream.Color = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemVertexStream.UV = 4
---@return System.Int32 value:5
UnityEngine.ParticleSystemVertexStream.UV2 = 5
---@return System.Int32 value:6
UnityEngine.ParticleSystemVertexStream.UV3 = 6
---@return System.Int32 value:7
UnityEngine.ParticleSystemVertexStream.UV4 = 7
---@return System.Int32 value:8
UnityEngine.ParticleSystemVertexStream.AnimBlend = 8
---@return System.Int32 value:9
UnityEngine.ParticleSystemVertexStream.AnimFrame = 9
---@return System.Int32 value:10
UnityEngine.ParticleSystemVertexStream.Center = 10
---@return System.Int32 value:11
UnityEngine.ParticleSystemVertexStream.VertexID = 11
---@return System.Int32 value:12
UnityEngine.ParticleSystemVertexStream.SizeX = 12
---@return System.Int32 value:13
UnityEngine.ParticleSystemVertexStream.SizeXY = 13
---@return System.Int32 value:14
UnityEngine.ParticleSystemVertexStream.SizeXYZ = 14
---@return System.Int32 value:15
UnityEngine.ParticleSystemVertexStream.Rotation = 15
---@return System.Int32 value:16
UnityEngine.ParticleSystemVertexStream.Rotation3D = 16
---@return System.Int32 value:17
UnityEngine.ParticleSystemVertexStream.RotationSpeed = 17
---@return System.Int32 value:18
UnityEngine.ParticleSystemVertexStream.RotationSpeed3D = 18
---@return System.Int32 value:19
UnityEngine.ParticleSystemVertexStream.Velocity = 19
---@return System.Int32 value:20
UnityEngine.ParticleSystemVertexStream.Speed = 20
---@return System.Int32 value:21
UnityEngine.ParticleSystemVertexStream.AgePercent = 21
---@return System.Int32 value:22
UnityEngine.ParticleSystemVertexStream.InvStartLifetime = 22
---@return System.Int32 value:23
UnityEngine.ParticleSystemVertexStream.StableRandomX = 23
---@return System.Int32 value:24
UnityEngine.ParticleSystemVertexStream.StableRandomXY = 24
---@return System.Int32 value:25
UnityEngine.ParticleSystemVertexStream.StableRandomXYZ = 25
---@return System.Int32 value:26
UnityEngine.ParticleSystemVertexStream.StableRandomXYZW = 26
---@return System.Int32 value:27
UnityEngine.ParticleSystemVertexStream.VaryingRandomX = 27
---@return System.Int32 value:28
UnityEngine.ParticleSystemVertexStream.VaryingRandomXY = 28
---@return System.Int32 value:29
UnityEngine.ParticleSystemVertexStream.VaryingRandomXYZ = 29
---@return System.Int32 value:30
UnityEngine.ParticleSystemVertexStream.VaryingRandomXYZW = 30
---@return System.Int32 value:31
UnityEngine.ParticleSystemVertexStream.Custom1X = 31
---@return System.Int32 value:32
UnityEngine.ParticleSystemVertexStream.Custom1XY = 32
---@return System.Int32 value:33
UnityEngine.ParticleSystemVertexStream.Custom1XYZ = 33
---@return System.Int32 value:34
UnityEngine.ParticleSystemVertexStream.Custom1XYZW = 34
---@return System.Int32 value:35
UnityEngine.ParticleSystemVertexStream.Custom2X = 35
---@return System.Int32 value:36
UnityEngine.ParticleSystemVertexStream.Custom2XY = 36
---@return System.Int32 value:37
UnityEngine.ParticleSystemVertexStream.Custom2XYZ = 37
---@return System.Int32 value:38
UnityEngine.ParticleSystemVertexStream.Custom2XYZW = 38
---@return System.Int32 value:39
UnityEngine.ParticleSystemVertexStream.NoiseSumX = 39
---@return System.Int32 value:40
UnityEngine.ParticleSystemVertexStream.NoiseSumXY = 40
---@return System.Int32 value:41
UnityEngine.ParticleSystemVertexStream.NoiseSumXYZ = 41
---@return System.Int32 value:42
UnityEngine.ParticleSystemVertexStream.NoiseImpulseX = 42
---@return System.Int32 value:43
UnityEngine.ParticleSystemVertexStream.NoiseImpulseXY = 43
---@return System.Int32 value:44
UnityEngine.ParticleSystemVertexStream.NoiseImpulseXYZ = 44

---@class UnityEngine.ParticleSystemCustomData : System.Enum
UnityEngine.ParticleSystemCustomData = {}
---@type UnityEngine.ParticleSystemCustomData
CS.UnityEngine.ParticleSystemCustomData = UnityEngine.ParticleSystemCustomData

---@return System.Int32 value:0
UnityEngine.ParticleSystemCustomData.Custom1 = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCustomData.Custom2 = 1

---@class UnityEngine.ParticleSystemCustomDataMode : System.Enum
UnityEngine.ParticleSystemCustomDataMode = {}
---@type UnityEngine.ParticleSystemCustomDataMode
CS.UnityEngine.ParticleSystemCustomDataMode = UnityEngine.ParticleSystemCustomDataMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemCustomDataMode.Disabled = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemCustomDataMode.Vector = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemCustomDataMode.Color = 2

---@class UnityEngine.ParticleSystemNoiseQuality : System.Enum
UnityEngine.ParticleSystemNoiseQuality = {}
---@type UnityEngine.ParticleSystemNoiseQuality
CS.UnityEngine.ParticleSystemNoiseQuality = UnityEngine.ParticleSystemNoiseQuality

---@return System.Int32 value:0
UnityEngine.ParticleSystemNoiseQuality.Low = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemNoiseQuality.Medium = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemNoiseQuality.High = 2

---@class UnityEngine.ParticleSystemSubEmitterType : System.Enum
UnityEngine.ParticleSystemSubEmitterType = {}
---@type UnityEngine.ParticleSystemSubEmitterType
CS.UnityEngine.ParticleSystemSubEmitterType = UnityEngine.ParticleSystemSubEmitterType

---@return System.Int32 value:0
UnityEngine.ParticleSystemSubEmitterType.Birth = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemSubEmitterType.Collision = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemSubEmitterType.Death = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemSubEmitterType.Trigger = 3
---@return System.Int32 value:4
UnityEngine.ParticleSystemSubEmitterType.Manual = 4

---@class UnityEngine.ParticleSystemSubEmitterProperties : System.Enum
UnityEngine.ParticleSystemSubEmitterProperties = {}
---@type UnityEngine.ParticleSystemSubEmitterProperties
CS.UnityEngine.ParticleSystemSubEmitterProperties = UnityEngine.ParticleSystemSubEmitterProperties

---@return System.Int32 value:0
UnityEngine.ParticleSystemSubEmitterProperties.InheritNothing = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemSubEmitterProperties.InheritColor = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemSubEmitterProperties.InheritSize = 2
---@return System.Int32 value:4
UnityEngine.ParticleSystemSubEmitterProperties.InheritRotation = 4

---@class UnityEngine.ParticleSystemTrailMode : System.Enum
UnityEngine.ParticleSystemTrailMode = {}
---@type UnityEngine.ParticleSystemTrailMode
CS.UnityEngine.ParticleSystemTrailMode = UnityEngine.ParticleSystemTrailMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemTrailMode.PerParticle = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemTrailMode.Ribbon = 1

---@class UnityEngine.ParticleSystemTrailTextureMode : System.Enum
UnityEngine.ParticleSystemTrailTextureMode = {}
---@type UnityEngine.ParticleSystemTrailTextureMode
CS.UnityEngine.ParticleSystemTrailTextureMode = UnityEngine.ParticleSystemTrailTextureMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemTrailTextureMode.Stretch = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemTrailTextureMode.Tile = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemTrailTextureMode.DistributePerSegment = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemTrailTextureMode.RepeatPerSegment = 3

---@class UnityEngine.ParticleSystemShapeMultiModeValue : System.Enum
UnityEngine.ParticleSystemShapeMultiModeValue = {}
---@type UnityEngine.ParticleSystemShapeMultiModeValue
CS.UnityEngine.ParticleSystemShapeMultiModeValue = UnityEngine.ParticleSystemShapeMultiModeValue

---@return System.Int32 value:0
UnityEngine.ParticleSystemShapeMultiModeValue.Random = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemShapeMultiModeValue.Loop = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemShapeMultiModeValue.PingPong = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemShapeMultiModeValue.BurstSpread = 3

---@class UnityEngine.ParticleSystemRingBufferMode : System.Enum
UnityEngine.ParticleSystemRingBufferMode = {}
---@type UnityEngine.ParticleSystemRingBufferMode
CS.UnityEngine.ParticleSystemRingBufferMode = UnityEngine.ParticleSystemRingBufferMode

---@return System.Int32 value:0
UnityEngine.ParticleSystemRingBufferMode.Disabled = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemRingBufferMode.PauseUntilReplaced = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemRingBufferMode.LoopUntilReplaced = 2

---@class UnityEngine.ParticleSystemGameObjectFilter : System.Enum
UnityEngine.ParticleSystemGameObjectFilter = {}
---@type UnityEngine.ParticleSystemGameObjectFilter
CS.UnityEngine.ParticleSystemGameObjectFilter = UnityEngine.ParticleSystemGameObjectFilter

---@return System.Int32 value:0
UnityEngine.ParticleSystemGameObjectFilter.LayerMask = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemGameObjectFilter.List = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemGameObjectFilter.LayerMaskAndList = 2

---@class UnityEngine.ParticleSystemForceFieldShape : System.Enum
UnityEngine.ParticleSystemForceFieldShape = {}
---@type UnityEngine.ParticleSystemForceFieldShape
CS.UnityEngine.ParticleSystemForceFieldShape = UnityEngine.ParticleSystemForceFieldShape

---@return System.Int32 value:0
UnityEngine.ParticleSystemForceFieldShape.Sphere = 0
---@return System.Int32 value:1
UnityEngine.ParticleSystemForceFieldShape.Hemisphere = 1
---@return System.Int32 value:2
UnityEngine.ParticleSystemForceFieldShape.Cylinder = 2
---@return System.Int32 value:3
UnityEngine.ParticleSystemForceFieldShape.Box = 3

---@class UnityEngine.ParticleSystemForceField : UnityEngine.Component
---@field public shape UnityEngine.ParticleSystemForceFieldShape @ setter getter
---@field public startRange System.Single @ setter getter
---@field public endRange System.Single @ setter getter
---@field public length System.Single @ setter getter
---@field public gravityFocus System.Single @ setter getter
---@field public rotationRandomness UnityEngine.Vector2 @ setter getter
---@field public multiplyDragByParticleSize System.Boolean @ setter getter
---@field public multiplyDragByParticleVelocity System.Boolean @ setter getter
---@field public vectorField UnityEngine.Texture3D @ setter getter
---@field public directionX UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public directionY UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public directionZ UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public gravity UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rotationSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public rotationAttraction UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public drag UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public vectorFieldSpeed UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
---@field public vectorFieldAttraction UnityEngine.ParticleSystem.MinMaxCurve @ setter getter
UnityEngine.ParticleSystemForceField = {}
---@type UnityEngine.ParticleSystemForceField
CS.UnityEngine.ParticleSystemForceField = UnityEngine.ParticleSystemForceField

---@return UnityEngine.ParticleSystemForceField[]
function UnityEngine.ParticleSystemForceField.FindAll()end
---@class UnityEngine.RigidbodyConstraints : System.Enum
UnityEngine.RigidbodyConstraints = {}
---@type UnityEngine.RigidbodyConstraints
CS.UnityEngine.RigidbodyConstraints = UnityEngine.RigidbodyConstraints

---@return System.Int32 value:0
UnityEngine.RigidbodyConstraints.None = 0
---@return System.Int32 value:2
UnityEngine.RigidbodyConstraints.FreezePositionX = 2
---@return System.Int32 value:4
UnityEngine.RigidbodyConstraints.FreezePositionY = 4
---@return System.Int32 value:8
UnityEngine.RigidbodyConstraints.FreezePositionZ = 8

---@class UnityEngine.ForceMode : System.Enum
UnityEngine.ForceMode = {}
---@type UnityEngine.ForceMode
CS.UnityEngine.ForceMode = UnityEngine.ForceMode

---@return System.Int32 value:0
UnityEngine.ForceMode.Force = 0
---@return System.Int32 value:1
UnityEngine.ForceMode.Impulse = 1
---@return System.Int32 value:2
UnityEngine.ForceMode.VelocityChange = 2

---@class UnityEngine.JointDriveMode : System.Enum
UnityEngine.JointDriveMode = {}
---@type UnityEngine.JointDriveMode
CS.UnityEngine.JointDriveMode = UnityEngine.JointDriveMode

---@return System.Int32 value:0
UnityEngine.JointDriveMode.None = 0
---@return System.Int32 value:1
UnityEngine.JointDriveMode.Position = 1
---@return System.Int32 value:2
UnityEngine.JointDriveMode.Velocity = 2
---@return System.Int32 value:3
UnityEngine.JointDriveMode.PositionAndVelocity = 3

---@class UnityEngine.JointProjectionMode : System.Enum
UnityEngine.JointProjectionMode = {}
---@type UnityEngine.JointProjectionMode
CS.UnityEngine.JointProjectionMode = UnityEngine.JointProjectionMode

---@return System.Int32 value:0
UnityEngine.JointProjectionMode.None = 0
---@return System.Int32 value:1
UnityEngine.JointProjectionMode.PositionAndRotation = 1
---@return System.Int32 value:2
UnityEngine.JointProjectionMode.PositionOnly = 2

---@class UnityEngine.MeshColliderCookingOptions : System.Enum
UnityEngine.MeshColliderCookingOptions = {}
---@type UnityEngine.MeshColliderCookingOptions
CS.UnityEngine.MeshColliderCookingOptions = UnityEngine.MeshColliderCookingOptions

---@return System.Int32 value:0
UnityEngine.MeshColliderCookingOptions.None = 0
---@return System.Int32 value:1
UnityEngine.MeshColliderCookingOptions.InflateConvexMesh = 1
---@return System.Int32 value:2
UnityEngine.MeshColliderCookingOptions.CookForFasterSimulation = 2
---@return System.Int32 value:4
UnityEngine.MeshColliderCookingOptions.EnableMeshCleaning = 4

---@class UnityEngine.WheelFrictionCurve : System.ValueType
---@field public extremumSlip System.Single @ setter getter
---@field public extremumValue System.Single @ setter getter
---@field public asymptoteSlip System.Single @ setter getter
---@field public asymptoteValue System.Single @ setter getter
---@field public stiffness System.Single @ setter getter
UnityEngine.WheelFrictionCurve = {}
---@type UnityEngine.WheelFrictionCurve
CS.UnityEngine.WheelFrictionCurve = UnityEngine.WheelFrictionCurve

---@class UnityEngine.SoftJointLimit : System.ValueType
---@field public limit System.Single @ setter getter
---@field public spring System.Single @ setter getter
---@field public damper System.Single @ setter getter
---@field public bounciness System.Single @ setter getter
---@field public contactDistance System.Single @ setter getter
---@field public bouncyness System.Single @ setter getter
UnityEngine.SoftJointLimit = {}
---@type UnityEngine.SoftJointLimit
CS.UnityEngine.SoftJointLimit = UnityEngine.SoftJointLimit

---@class UnityEngine.SoftJointLimitSpring : System.ValueType
---@field public spring System.Single @ setter getter
---@field public damper System.Single @ setter getter
UnityEngine.SoftJointLimitSpring = {}
---@type UnityEngine.SoftJointLimitSpring
CS.UnityEngine.SoftJointLimitSpring = UnityEngine.SoftJointLimitSpring

---@class UnityEngine.JointDrive : System.ValueType
---@field public mode UnityEngine.JointDriveMode @ setter getter
---@field public positionSpring System.Single @ setter getter
---@field public positionDamper System.Single @ setter getter
---@field public maximumForce System.Single @ setter getter
UnityEngine.JointDrive = {}
---@type UnityEngine.JointDrive
CS.UnityEngine.JointDrive = UnityEngine.JointDrive

---@class UnityEngine.RigidbodyInterpolation : System.Enum
UnityEngine.RigidbodyInterpolation = {}
---@type UnityEngine.RigidbodyInterpolation
CS.UnityEngine.RigidbodyInterpolation = UnityEngine.RigidbodyInterpolation

---@return System.Int32 value:0
UnityEngine.RigidbodyInterpolation.None = 0
---@return System.Int32 value:1
UnityEngine.RigidbodyInterpolation.Interpolate = 1
---@return System.Int32 value:2
UnityEngine.RigidbodyInterpolation.Extrapolate = 2

---@class UnityEngine.JointMotor : System.ValueType
---@field public targetVelocity System.Single @ setter getter
---@field public force System.Single @ setter getter
---@field public freeSpin System.Boolean @ setter getter
UnityEngine.JointMotor = {}
---@type UnityEngine.JointMotor
CS.UnityEngine.JointMotor = UnityEngine.JointMotor

---@class UnityEngine.JointSpring : System.ValueType
---@field public spring System.Single
---@field public damper System.Single
---@field public targetPosition System.Single
UnityEngine.JointSpring = {}
---@type UnityEngine.JointSpring
CS.UnityEngine.JointSpring = UnityEngine.JointSpring

---@class UnityEngine.JointLimits : System.ValueType
---@field public min System.Single @ setter getter
---@field public max System.Single @ setter getter
---@field public bounciness System.Single @ setter getter
---@field public bounceMinVelocity System.Single @ setter getter
---@field public contactDistance System.Single @ setter getter
---@field public minBounce System.Single
---@field public maxBounce System.Single
UnityEngine.JointLimits = {}
---@type UnityEngine.JointLimits
CS.UnityEngine.JointLimits = UnityEngine.JointLimits

---@class UnityEngine.ControllerColliderHit : System.Object
---@field public controller UnityEngine.CharacterController @  getter
---@field public collider UnityEngine.Collider @  getter
---@field public rigidbody UnityEngine.Rigidbody @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public transform UnityEngine.Transform @  getter
---@field public point UnityEngine.Vector3 @  getter
---@field public normal UnityEngine.Vector3 @  getter
---@field public moveDirection UnityEngine.Vector3 @  getter
---@field public moveLength System.Single @  getter
UnityEngine.ControllerColliderHit = {}
---@type UnityEngine.ControllerColliderHit
CS.UnityEngine.ControllerColliderHit = UnityEngine.ControllerColliderHit

---@class UnityEngine.PhysicMaterialCombine : System.Enum
UnityEngine.PhysicMaterialCombine = {}
---@type UnityEngine.PhysicMaterialCombine
CS.UnityEngine.PhysicMaterialCombine = UnityEngine.PhysicMaterialCombine

---@return System.Int32 value:0
UnityEngine.PhysicMaterialCombine.Average = 0
---@return System.Int32 value:1
UnityEngine.PhysicMaterialCombine.Multiply = 1
---@return System.Int32 value:2
UnityEngine.PhysicMaterialCombine.Minimum = 2
---@return System.Int32 value:3
UnityEngine.PhysicMaterialCombine.Maximum = 3

---@class UnityEngine.Collision : System.Object
---@field public relativeVelocity UnityEngine.Vector3 @  getter
---@field public rigidbody UnityEngine.Rigidbody @  getter
---@field public collider UnityEngine.Collider @  getter
---@field public transform UnityEngine.Transform @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public contactCount System.Int32 @  getter
---@field public contacts UnityEngine.ContactPoint[] @  getter
---@field public impulse UnityEngine.Vector3 @  getter
---@field public impactForceSum UnityEngine.Vector3 @  getter
---@field public frictionForceSum UnityEngine.Vector3 @  getter
---@field public other UnityEngine.Component @  getter
UnityEngine.Collision = {}
---@type UnityEngine.Collision
CS.UnityEngine.Collision = UnityEngine.Collision

---@param index System.Int32
---@return UnityEngine.ContactPoint
function UnityEngine.Collision:GetContact(index)end
---@param contacts UnityEngine.ContactPoint[]
---@return System.Int32
function UnityEngine.Collision:GetContacts(contacts)end
---@return System.Collections.IEnumerator
function UnityEngine.Collision:GetEnumerator()end
---@class UnityEngine.CollisionFlags : System.Enum
UnityEngine.CollisionFlags = {}
---@type UnityEngine.CollisionFlags
CS.UnityEngine.CollisionFlags = UnityEngine.CollisionFlags

---@return System.Int32 value:0
UnityEngine.CollisionFlags.None = 0
---@return System.Int32 value:1
UnityEngine.CollisionFlags.Sides = 1
---@return System.Int32 value:2
UnityEngine.CollisionFlags.Above = 2
---@return System.Int32 value:4
UnityEngine.CollisionFlags.Below = 4

---@class UnityEngine.QueryTriggerInteraction : System.Enum
UnityEngine.QueryTriggerInteraction = {}
---@type UnityEngine.QueryTriggerInteraction
CS.UnityEngine.QueryTriggerInteraction = UnityEngine.QueryTriggerInteraction

---@return System.Int32 value:0
UnityEngine.QueryTriggerInteraction.UseGlobal = 0
---@return System.Int32 value:1
UnityEngine.QueryTriggerInteraction.Ignore = 1
---@return System.Int32 value:2
UnityEngine.QueryTriggerInteraction.Collide = 2

---@class UnityEngine.CollisionDetectionMode : System.Enum
UnityEngine.CollisionDetectionMode = {}
---@type UnityEngine.CollisionDetectionMode
CS.UnityEngine.CollisionDetectionMode = UnityEngine.CollisionDetectionMode

---@return System.Int32 value:0
UnityEngine.CollisionDetectionMode.Discrete = 0
---@return System.Int32 value:1
UnityEngine.CollisionDetectionMode.Continuous = 1
---@return System.Int32 value:2
UnityEngine.CollisionDetectionMode.ContinuousDynamic = 2
---@return System.Int32 value:3
UnityEngine.CollisionDetectionMode.ContinuousSpeculative = 3

---@class UnityEngine.ConfigurableJointMotion : System.Enum
UnityEngine.ConfigurableJointMotion = {}
---@type UnityEngine.ConfigurableJointMotion
CS.UnityEngine.ConfigurableJointMotion = UnityEngine.ConfigurableJointMotion

---@return System.Int32 value:0
UnityEngine.ConfigurableJointMotion.Locked = 0
---@return System.Int32 value:1
UnityEngine.ConfigurableJointMotion.Limited = 1
---@return System.Int32 value:2
UnityEngine.ConfigurableJointMotion.Free = 2

---@class UnityEngine.RotationDriveMode : System.Enum
UnityEngine.RotationDriveMode = {}
---@type UnityEngine.RotationDriveMode
CS.UnityEngine.RotationDriveMode = UnityEngine.RotationDriveMode

---@return System.Int32 value:0
UnityEngine.RotationDriveMode.XYAndZ = 0
---@return System.Int32 value:1
UnityEngine.RotationDriveMode.Slerp = 1

---@class UnityEngine.PhysicMaterial : UnityEngine.Object
---@field public bounciness System.Single @ setter getter
---@field public dynamicFriction System.Single @ setter getter
---@field public staticFriction System.Single @ setter getter
---@field public frictionCombine UnityEngine.PhysicMaterialCombine @ setter getter
---@field public bounceCombine UnityEngine.PhysicMaterialCombine @ setter getter
---@field public bouncyness System.Single @ setter getter
---@field public frictionDirection2 UnityEngine.Vector3 @ setter getter
---@field public dynamicFriction2 System.Single @ setter getter
---@field public staticFriction2 System.Single @ setter getter
---@field public frictionDirection UnityEngine.Vector3 @ setter getter
UnityEngine.PhysicMaterial = {}
---@type UnityEngine.PhysicMaterial
CS.UnityEngine.PhysicMaterial = UnityEngine.PhysicMaterial

---@class UnityEngine.RaycastHit : System.ValueType
---@field public collider UnityEngine.Collider @  getter
---@field public point UnityEngine.Vector3 @ setter getter
---@field public normal UnityEngine.Vector3 @ setter getter
---@field public barycentricCoordinate UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public triangleIndex System.Int32 @  getter
---@field public textureCoord UnityEngine.Vector2 @  getter
---@field public textureCoord2 UnityEngine.Vector2 @  getter
---@field public textureCoord1 UnityEngine.Vector2 @  getter
---@field public transform UnityEngine.Transform @  getter
---@field public rigidbody UnityEngine.Rigidbody @  getter
---@field public lightmapCoord UnityEngine.Vector2 @  getter
UnityEngine.RaycastHit = {}
---@type UnityEngine.RaycastHit
CS.UnityEngine.RaycastHit = UnityEngine.RaycastHit

---@class UnityEngine.Rigidbody : UnityEngine.Component
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public angularVelocity UnityEngine.Vector3 @ setter getter
---@field public drag System.Single @ setter getter
---@field public angularDrag System.Single @ setter getter
---@field public mass System.Single @ setter getter
---@field public useGravity System.Boolean @ setter getter
---@field public maxDepenetrationVelocity System.Single @ setter getter
---@field public isKinematic System.Boolean @ setter getter
---@field public freezeRotation System.Boolean @ setter getter
---@field public constraints UnityEngine.RigidbodyConstraints @ setter getter
---@field public collisionDetectionMode UnityEngine.CollisionDetectionMode @ setter getter
---@field public centerOfMass UnityEngine.Vector3 @ setter getter
---@field public worldCenterOfMass UnityEngine.Vector3 @  getter
---@field public inertiaTensorRotation UnityEngine.Quaternion @ setter getter
---@field public inertiaTensor UnityEngine.Vector3 @ setter getter
---@field public detectCollisions System.Boolean @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public interpolation UnityEngine.RigidbodyInterpolation @ setter getter
---@field public solverIterations System.Int32 @ setter getter
---@field public sleepThreshold System.Single @ setter getter
---@field public maxAngularVelocity System.Single @ setter getter
---@field public solverVelocityIterations System.Int32 @ setter getter
---@field public sleepVelocity System.Single @ setter getter
---@field public sleepAngularVelocity System.Single @ setter getter
---@field public useConeFriction System.Boolean @ setter getter
---@field public solverIterationCount System.Int32 @ setter getter
---@field public solverVelocityIterationCount System.Int32 @ setter getter
UnityEngine.Rigidbody = {}
---@type UnityEngine.Rigidbody
CS.UnityEngine.Rigidbody = UnityEngine.Rigidbody

---@param density System.Single
---@return System.Void
function UnityEngine.Rigidbody:SetDensity(density)end
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Rigidbody:MovePosition(position)end
---@param rot UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Rigidbody:MoveRotation(rot)end
---@return System.Void
function UnityEngine.Rigidbody:Sleep()end
---@return System.Boolean
function UnityEngine.Rigidbody:IsSleeping()end
---@return System.Void
function UnityEngine.Rigidbody:WakeUp()end
---@return System.Void
function UnityEngine.Rigidbody:ResetCenterOfMass()end
---@return System.Void
function UnityEngine.Rigidbody:ResetInertiaTensor()end
---@param relativePoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetRelativePointVelocity(relativePoint)end
---@param worldPoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetPointVelocity(worldPoint)end
---@param a System.Single
---@return System.Void
function UnityEngine.Rigidbody:SetMaxAngularVelocity(a)end
---@overload fun(force:UnityEngine.Vector3):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, mode:UnityEngine.ForceMode):System.Void
---@overload fun(force:UnityEngine.Vector3, mode:UnityEngine.ForceMode):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Rigidbody:AddForce(x, y, z)end
---@overload fun(force:UnityEngine.Vector3):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, mode:UnityEngine.ForceMode):System.Void
---@overload fun(force:UnityEngine.Vector3, mode:UnityEngine.ForceMode):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Rigidbody:AddRelativeForce(x, y, z)end
---@overload fun(torque:UnityEngine.Vector3):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, mode:UnityEngine.ForceMode):System.Void
---@overload fun(torque:UnityEngine.Vector3, mode:UnityEngine.ForceMode):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Rigidbody:AddTorque(x, y, z)end
---@overload fun(torque:UnityEngine.Vector3):System.Void
---@overload fun(x:System.Single, y:System.Single, z:System.Single, mode:UnityEngine.ForceMode):System.Void
---@overload fun(torque:UnityEngine.Vector3, mode:UnityEngine.ForceMode):System.Void
---@param x System.Single
---@param y System.Single
---@param z System.Single
---@return System.Void
function UnityEngine.Rigidbody:AddRelativeTorque(x, y, z)end
---@overload fun(force:UnityEngine.Vector3, position:UnityEngine.Vector3, mode:UnityEngine.ForceMode):System.Void
---@param force UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Rigidbody:AddForceAtPosition(force, position)end
---@overload fun(explosionForce:System.Single, explosionPosition:UnityEngine.Vector3, explosionRadius:System.Single, upwardsModifier:System.Single):System.Void
---@overload fun(explosionForce:System.Single, explosionPosition:UnityEngine.Vector3, explosionRadius:System.Single, upwardsModifier:System.Single, mode:UnityEngine.ForceMode):System.Void
---@param explosionForce System.Single
---@param explosionPosition UnityEngine.Vector3
---@param explosionRadius System.Single
---@return System.Void
function UnityEngine.Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius)end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:ClosestPointOnBounds(position)end
---@overload fun(direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param direction UnityEngine.Vector3
---@param hitInfo UnityEngine.RaycastHit
---@return System.Boolean
function UnityEngine.Rigidbody:SweepTest(direction, hitInfo)end
---@overload fun(direction:UnityEngine.Vector3, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(direction:UnityEngine.Vector3, maxDistance:System.Single, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Rigidbody:SweepTestAll(direction)end
---@class UnityEngine.Collider : UnityEngine.Component
---@field public enabled System.Boolean @ setter getter
---@field public attachedRigidbody UnityEngine.Rigidbody @  getter
---@field public isTrigger System.Boolean @ setter getter
---@field public contactOffset System.Single @ setter getter
---@field public bounds UnityEngine.Bounds @  getter
---@field public sharedMaterial UnityEngine.PhysicMaterial @ setter getter
---@field public material UnityEngine.PhysicMaterial @ setter getter
UnityEngine.Collider = {}
---@type UnityEngine.Collider
CS.UnityEngine.Collider = UnityEngine.Collider

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Collider:ClosestPoint(position)end
---@param ray UnityEngine.Ray
---@param hitInfo UnityEngine.RaycastHit
---@param maxDistance System.Single
---@return System.Boolean
function UnityEngine.Collider:Raycast(ray, hitInfo, maxDistance)end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Collider:ClosestPointOnBounds(position)end
---@class UnityEngine.CharacterController : UnityEngine.Collider
---@field public velocity UnityEngine.Vector3 @  getter
---@field public isGrounded System.Boolean @  getter
---@field public collisionFlags UnityEngine.CollisionFlags @  getter
---@field public radius System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public center UnityEngine.Vector3 @ setter getter
---@field public slopeLimit System.Single @ setter getter
---@field public stepOffset System.Single @ setter getter
---@field public skinWidth System.Single @ setter getter
---@field public minMoveDistance System.Single @ setter getter
---@field public detectCollisions System.Boolean @ setter getter
---@field public enableOverlapRecovery System.Boolean @ setter getter
UnityEngine.CharacterController = {}
---@type UnityEngine.CharacterController
CS.UnityEngine.CharacterController = UnityEngine.CharacterController

---@param speed UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.CharacterController:SimpleMove(speed)end
---@param motion UnityEngine.Vector3
---@return UnityEngine.CollisionFlags
function UnityEngine.CharacterController:Move(motion)end
---@class UnityEngine.MeshCollider : UnityEngine.Collider
---@field public sharedMesh UnityEngine.Mesh @ setter getter
---@field public convex System.Boolean @ setter getter
---@field public inflateMesh System.Boolean @ setter getter
---@field public cookingOptions UnityEngine.MeshColliderCookingOptions @ setter getter
---@field public skinWidth System.Single @ setter getter
---@field public smoothSphereCollisions System.Boolean @ setter getter
UnityEngine.MeshCollider = {}
---@type UnityEngine.MeshCollider
CS.UnityEngine.MeshCollider = UnityEngine.MeshCollider

---@class UnityEngine.CapsuleCollider : UnityEngine.Collider
---@field public center UnityEngine.Vector3 @ setter getter
---@field public radius System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public direction System.Int32 @ setter getter
UnityEngine.CapsuleCollider = {}
---@type UnityEngine.CapsuleCollider
CS.UnityEngine.CapsuleCollider = UnityEngine.CapsuleCollider

---@class UnityEngine.BoxCollider : UnityEngine.Collider
---@field public center UnityEngine.Vector3 @ setter getter
---@field public size UnityEngine.Vector3 @ setter getter
---@field public extents UnityEngine.Vector3 @ setter getter
UnityEngine.BoxCollider = {}
---@type UnityEngine.BoxCollider
CS.UnityEngine.BoxCollider = UnityEngine.BoxCollider

---@class UnityEngine.SphereCollider : UnityEngine.Collider
---@field public center UnityEngine.Vector3 @ setter getter
---@field public radius System.Single @ setter getter
UnityEngine.SphereCollider = {}
---@type UnityEngine.SphereCollider
CS.UnityEngine.SphereCollider = UnityEngine.SphereCollider

---@class UnityEngine.ConstantForce : UnityEngine.Behaviour
---@field public force UnityEngine.Vector3 @ setter getter
---@field public relativeForce UnityEngine.Vector3 @ setter getter
---@field public torque UnityEngine.Vector3 @ setter getter
---@field public relativeTorque UnityEngine.Vector3 @ setter getter
UnityEngine.ConstantForce = {}
---@type UnityEngine.ConstantForce
CS.UnityEngine.ConstantForce = UnityEngine.ConstantForce

---@class UnityEngine.Joint : UnityEngine.Component
---@field public connectedBody UnityEngine.Rigidbody @ setter getter
---@field public axis UnityEngine.Vector3 @ setter getter
---@field public anchor UnityEngine.Vector3 @ setter getter
---@field public connectedAnchor UnityEngine.Vector3 @ setter getter
---@field public autoConfigureConnectedAnchor System.Boolean @ setter getter
---@field public breakForce System.Single @ setter getter
---@field public breakTorque System.Single @ setter getter
---@field public enableCollision System.Boolean @ setter getter
---@field public enablePreprocessing System.Boolean @ setter getter
---@field public massScale System.Single @ setter getter
---@field public connectedMassScale System.Single @ setter getter
---@field public currentForce UnityEngine.Vector3 @  getter
---@field public currentTorque UnityEngine.Vector3 @  getter
UnityEngine.Joint = {}
---@type UnityEngine.Joint
CS.UnityEngine.Joint = UnityEngine.Joint

---@class UnityEngine.HingeJoint : UnityEngine.Joint
---@field public motor UnityEngine.JointMotor @ setter getter
---@field public limits UnityEngine.JointLimits @ setter getter
---@field public spring UnityEngine.JointSpring @ setter getter
---@field public useMotor System.Boolean @ setter getter
---@field public useLimits System.Boolean @ setter getter
---@field public useSpring System.Boolean @ setter getter
---@field public velocity System.Single @  getter
---@field public angle System.Single @  getter
UnityEngine.HingeJoint = {}
---@type UnityEngine.HingeJoint
CS.UnityEngine.HingeJoint = UnityEngine.HingeJoint

---@class UnityEngine.SpringJoint : UnityEngine.Joint
---@field public spring System.Single @ setter getter
---@field public damper System.Single @ setter getter
---@field public minDistance System.Single @ setter getter
---@field public maxDistance System.Single @ setter getter
---@field public tolerance System.Single @ setter getter
UnityEngine.SpringJoint = {}
---@type UnityEngine.SpringJoint
CS.UnityEngine.SpringJoint = UnityEngine.SpringJoint

---@class UnityEngine.FixedJoint : UnityEngine.Joint
UnityEngine.FixedJoint = {}
---@type UnityEngine.FixedJoint
CS.UnityEngine.FixedJoint = UnityEngine.FixedJoint

---@class UnityEngine.CharacterJoint : UnityEngine.Joint
---@field public swingAxis UnityEngine.Vector3 @ setter getter
---@field public twistLimitSpring UnityEngine.SoftJointLimitSpring @ setter getter
---@field public swingLimitSpring UnityEngine.SoftJointLimitSpring @ setter getter
---@field public lowTwistLimit UnityEngine.SoftJointLimit @ setter getter
---@field public highTwistLimit UnityEngine.SoftJointLimit @ setter getter
---@field public swing1Limit UnityEngine.SoftJointLimit @ setter getter
---@field public swing2Limit UnityEngine.SoftJointLimit @ setter getter
---@field public enableProjection System.Boolean @ setter getter
---@field public projectionDistance System.Single @ setter getter
---@field public projectionAngle System.Single @ setter getter
---@field public targetRotation UnityEngine.Quaternion
---@field public targetAngularVelocity UnityEngine.Vector3
---@field public rotationDrive UnityEngine.JointDrive
UnityEngine.CharacterJoint = {}
---@type UnityEngine.CharacterJoint
CS.UnityEngine.CharacterJoint = UnityEngine.CharacterJoint

---@class UnityEngine.ConfigurableJoint : UnityEngine.Joint
---@field public secondaryAxis UnityEngine.Vector3 @ setter getter
---@field public xMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public yMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public zMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public angularXMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public angularYMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public angularZMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public linearLimitSpring UnityEngine.SoftJointLimitSpring @ setter getter
---@field public angularXLimitSpring UnityEngine.SoftJointLimitSpring @ setter getter
---@field public angularYZLimitSpring UnityEngine.SoftJointLimitSpring @ setter getter
---@field public linearLimit UnityEngine.SoftJointLimit @ setter getter
---@field public lowAngularXLimit UnityEngine.SoftJointLimit @ setter getter
---@field public highAngularXLimit UnityEngine.SoftJointLimit @ setter getter
---@field public angularYLimit UnityEngine.SoftJointLimit @ setter getter
---@field public angularZLimit UnityEngine.SoftJointLimit @ setter getter
---@field public targetPosition UnityEngine.Vector3 @ setter getter
---@field public targetVelocity UnityEngine.Vector3 @ setter getter
---@field public xDrive UnityEngine.JointDrive @ setter getter
---@field public yDrive UnityEngine.JointDrive @ setter getter
---@field public zDrive UnityEngine.JointDrive @ setter getter
---@field public targetRotation UnityEngine.Quaternion @ setter getter
---@field public targetAngularVelocity UnityEngine.Vector3 @ setter getter
---@field public rotationDriveMode UnityEngine.RotationDriveMode @ setter getter
---@field public angularXDrive UnityEngine.JointDrive @ setter getter
---@field public angularYZDrive UnityEngine.JointDrive @ setter getter
---@field public slerpDrive UnityEngine.JointDrive @ setter getter
---@field public projectionMode UnityEngine.JointProjectionMode @ setter getter
---@field public projectionDistance System.Single @ setter getter
---@field public projectionAngle System.Single @ setter getter
---@field public configuredInWorldSpace System.Boolean @ setter getter
---@field public swapBodies System.Boolean @ setter getter
UnityEngine.ConfigurableJoint = {}
---@type UnityEngine.ConfigurableJoint
CS.UnityEngine.ConfigurableJoint = UnityEngine.ConfigurableJoint

---@class UnityEngine.ContactPoint : System.ValueType
---@field public point UnityEngine.Vector3 @  getter
---@field public normal UnityEngine.Vector3 @  getter
---@field public thisCollider UnityEngine.Collider @  getter
---@field public otherCollider UnityEngine.Collider @  getter
---@field public separation System.Single @  getter
UnityEngine.ContactPoint = {}
---@type UnityEngine.ContactPoint
CS.UnityEngine.ContactPoint = UnityEngine.ContactPoint

---@class UnityEngine.PhysicsScene : System.ValueType
UnityEngine.PhysicsScene = {}
---@type UnityEngine.PhysicsScene
CS.UnityEngine.PhysicsScene = UnityEngine.PhysicsScene

---@return System.String
function UnityEngine.PhysicsScene:ToString()end
---@param lhs UnityEngine.PhysicsScene
---@param rhs UnityEngine.PhysicsScene
---@return System.Boolean
function UnityEngine.PhysicsScene.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.PhysicsScene
---@param rhs UnityEngine.PhysicsScene
---@return System.Boolean
function UnityEngine.PhysicsScene.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.PhysicsScene:GetHashCode()end
---@overload fun(other:UnityEngine.PhysicsScene):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.PhysicsScene:Equals(other)end
---@return System.Boolean
function UnityEngine.PhysicsScene:IsValid()end
---@return System.Boolean
function UnityEngine.PhysicsScene:IsEmpty()end
---@param step System.Single
---@return System.Void
function UnityEngine.PhysicsScene:Simulate(step)end
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, raycastHits:UnityEngine.RaycastHit[]):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, raycastHits:UnityEngine.RaycastHit[]):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, raycastHits:UnityEngine.RaycastHit[]):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, raycastHits:UnityEngine.RaycastHit[]):System.Int32
---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param maxDistance System.Single
---@param layerMask System.Int32
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return System.Boolean
function UnityEngine.PhysicsScene:Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction)end
---@class UnityEngine.PhysicsSceneExtensions : System.Object
UnityEngine.PhysicsSceneExtensions = {}
---@type UnityEngine.PhysicsSceneExtensions
CS.UnityEngine.PhysicsSceneExtensions = UnityEngine.PhysicsSceneExtensions

---@class UnityEngine.Physics : System.Object
---@field public minPenetrationForPenalty System.Single @static setter getter
---@field public gravity UnityEngine.Vector3 @static setter getter
---@field public defaultContactOffset System.Single @static setter getter
---@field public sleepThreshold System.Single @static setter getter
---@field public queriesHitTriggers System.Boolean @static setter getter
---@field public queriesHitBackfaces System.Boolean @static setter getter
---@field public bounceThreshold System.Single @static setter getter
---@field public defaultSolverIterations System.Int32 @static setter getter
---@field public defaultSolverVelocityIterations System.Int32 @static setter getter
---@field public bounceTreshold System.Single @static setter getter
---@field public sleepVelocity System.Single @static setter getter
---@field public sleepAngularVelocity System.Single @static setter getter
---@field public maxAngularVelocity System.Single @static setter getter
---@field public solverIterationCount System.Int32 @static setter getter
---@field public solverVelocityIterationCount System.Int32 @static setter getter
---@field public penetrationPenaltyForce System.Single @static setter getter
---@field public defaultPhysicsScene UnityEngine.PhysicsScene @static  getter
---@field public autoSimulation System.Boolean @static setter getter
---@field public autoSyncTransforms System.Boolean @static setter getter
---@field public reuseCollisionCallbacks System.Boolean @static setter getter
---@field public interCollisionDistance System.Single @static setter getter
---@field public interCollisionStiffness System.Single @static setter getter
---@field public interCollisionSettingsToggle System.Boolean @static setter getter
---@field public IgnoreRaycastLayer System.Int32
---@field public DefaultRaycastLayers System.Int32
---@field public AllLayers System.Int32
---@field public kIgnoreRaycastLayer System.Int32
---@field public kDefaultRaycastLayers System.Int32
---@field public kAllLayers System.Int32
UnityEngine.Physics = {}
---@type UnityEngine.Physics
CS.UnityEngine.Physics = UnityEngine.Physics

---@overload fun(collider1:UnityEngine.Collider, collider2:UnityEngine.Collider, ignore:System.Boolean):System.Void
---@param collider1 UnityEngine.Collider
---@param collider2 UnityEngine.Collider
---@return System.Void
function UnityEngine.Physics.IgnoreCollision(collider1, collider2)end
---@overload fun(layer1:System.Int32, layer2:System.Int32, ignore:System.Boolean):System.Void
---@param layer1 System.Int32
---@param layer2 System.Int32
---@return System.Void
function UnityEngine.Physics.IgnoreLayerCollision(layer1, layer2)end
---@param layer1 System.Int32
---@param layer2 System.Int32
---@return System.Boolean
function UnityEngine.Physics.GetIgnoreLayerCollision(layer1, layer2)end
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param ray UnityEngine.Ray
---@return System.Boolean
function UnityEngine.Physics.Raycast(ray)end
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, layerMask:System.Int32):System.Boolean
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, layerMask:System.Int32):System.Boolean
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Physics.Linecast(start, _end)end
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius System.Single
---@param direction UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction)end
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param ray UnityEngine.Ray
---@param radius System.Single
---@return System.Boolean
function UnityEngine.Physics.SphereCast(ray, radius)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:System.Single):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Physics.BoxCast(center, halfExtents, direction)end
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@param ray UnityEngine.Ray
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.RaycastAll(ray)end
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[], maxDistance:System.Single):System.Int32
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single):System.Int32
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param ray UnityEngine.Ray
---@param results UnityEngine.RaycastHit[]
---@return System.Int32
function UnityEngine.Physics.RaycastNonAlloc(ray, results)end
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius System.Single
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction)end
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@param ray UnityEngine.Ray
---@param radius System.Single
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.SphereCastAll(ray, radius)end
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32):UnityEngine.Collider[]
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.Collider[]
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius System.Single
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapCapsule(point0, point1, radius)end
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32):UnityEngine.Collider[]
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.Collider[]
---@param position UnityEngine.Vector3
---@param radius System.Single
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapSphere(position, radius)end
---@param step System.Single
---@return System.Void
function UnityEngine.Physics.Simulate(step)end
---@return System.Void
function UnityEngine.Physics.SyncTransforms()end
---@param colliderA UnityEngine.Collider
---@param positionA UnityEngine.Vector3
---@param rotationA UnityEngine.Quaternion
---@param colliderB UnityEngine.Collider
---@param positionB UnityEngine.Vector3
---@param rotationB UnityEngine.Quaternion
---@param direction UnityEngine.Vector3
---@param distance System.Single
---@return System.Boolean
function UnityEngine.Physics.ComputePenetration(colliderA, positionA, rotationA, colliderB, positionB, rotationB, direction, distance)end
---@param point UnityEngine.Vector3
---@param collider UnityEngine.Collider
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEngine.Physics.ClosestPoint(point, collider, position, rotation)end
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, results:UnityEngine.Collider[], layerMask:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, results:UnityEngine.Collider[], layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param position UnityEngine.Vector3
---@param radius System.Single
---@param results UnityEngine.Collider[]
---@return System.Int32
function UnityEngine.Physics.OverlapSphereNonAlloc(position, radius, results)end
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(position:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param position UnityEngine.Vector3
---@param radius System.Single
---@return System.Boolean
function UnityEngine.Physics.CheckSphere(position, radius)end
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single):System.Int32
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius System.Single
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return System.Int32
function UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results)end
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, results:UnityEngine.RaycastHit[], maxDistance:System.Single):System.Int32
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):System.Int32
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(ray:UnityEngine.Ray, radius:System.Single, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@overload fun(origin:UnityEngine.Vector3, radius:System.Single, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param ray UnityEngine.Ray
---@param radius System.Single
---@param results UnityEngine.RaycastHit[]
---@return System.Int32
function UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results)end
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32):System.Boolean
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, radius:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param radius System.Single
---@return System.Boolean
function UnityEngine.Physics.CheckCapsule(start, _end, radius)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layerMask:System.Int32):System.Boolean
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layermask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Boolean
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.Physics.CheckBox(center, halfExtents)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):UnityEngine.Collider[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layerMask:System.Int32):UnityEngine.Collider[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.Collider[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapBox(center, halfExtents)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[], orientation:UnityEngine.Quaternion):System.Int32
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[], orientation:UnityEngine.Quaternion, mask:System.Int32):System.Int32
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[], orientation:UnityEngine.Quaternion, mask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param results UnityEngine.Collider[]
---@return System.Int32
function UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion):System.Int32
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion, maxDistance:System.Single):System.Int32
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return System.Int32
function UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results)end
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:System.Single, layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.BoxCastAll(center, halfExtents, direction)end
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:System.Single, results:UnityEngine.Collider[], layerMask:System.Int32):System.Int32
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:System.Single, results:UnityEngine.Collider[], layerMask:System.Int32, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):System.Int32
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius System.Single
---@param results UnityEngine.Collider[]
---@return System.Int32
function UnityEngine.Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results)end
---@param worldBounds UnityEngine.Bounds
---@param subdivisions System.Int32
---@return System.Void
function UnityEngine.Physics.RebuildBroadphaseRegions(worldBounds, subdivisions)end
---@class UnityEngine.RaycastCommand : System.ValueType
---@field public from UnityEngine.Vector3 @ setter getter
---@field public direction UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public layerMask System.Int32 @ setter getter
---@field public maxHits System.Int32 @ setter getter
UnityEngine.RaycastCommand = {}
---@type UnityEngine.RaycastCommand
CS.UnityEngine.RaycastCommand = UnityEngine.RaycastCommand

---@overload fun(commands:Unity.Collections.NativeArray, results:Unity.Collections.NativeArray, minCommandsPerJob:System.Int32):Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob System.Int32
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.RaycastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)end
---@class UnityEngine.SpherecastCommand : System.ValueType
---@field public origin UnityEngine.Vector3 @ setter getter
---@field public radius System.Single @ setter getter
---@field public direction UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public layerMask System.Int32 @ setter getter
UnityEngine.SpherecastCommand = {}
---@type UnityEngine.SpherecastCommand
CS.UnityEngine.SpherecastCommand = UnityEngine.SpherecastCommand

---@overload fun(commands:Unity.Collections.NativeArray, results:Unity.Collections.NativeArray, minCommandsPerJob:System.Int32):Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob System.Int32
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.SpherecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)end
---@class UnityEngine.CapsulecastCommand : System.ValueType
---@field public point1 UnityEngine.Vector3 @ setter getter
---@field public point2 UnityEngine.Vector3 @ setter getter
---@field public radius System.Single @ setter getter
---@field public direction UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public layerMask System.Int32 @ setter getter
UnityEngine.CapsulecastCommand = {}
---@type UnityEngine.CapsulecastCommand
CS.UnityEngine.CapsulecastCommand = UnityEngine.CapsulecastCommand

---@overload fun(commands:Unity.Collections.NativeArray, results:Unity.Collections.NativeArray, minCommandsPerJob:System.Int32):Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob System.Int32
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.CapsulecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)end
---@class UnityEngine.BoxcastCommand : System.ValueType
---@field public center UnityEngine.Vector3 @ setter getter
---@field public halfExtents UnityEngine.Vector3 @ setter getter
---@field public orientation UnityEngine.Quaternion @ setter getter
---@field public direction UnityEngine.Vector3 @ setter getter
---@field public distance System.Single @ setter getter
---@field public layerMask System.Int32 @ setter getter
UnityEngine.BoxcastCommand = {}
---@type UnityEngine.BoxcastCommand
CS.UnityEngine.BoxcastCommand = UnityEngine.BoxcastCommand

---@overload fun(commands:Unity.Collections.NativeArray, results:Unity.Collections.NativeArray, minCommandsPerJob:System.Int32):Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob System.Int32
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.BoxcastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)end
---@class UnityEngine.PhysicsScene2D : System.ValueType
UnityEngine.PhysicsScene2D = {}
---@type UnityEngine.PhysicsScene2D
CS.UnityEngine.PhysicsScene2D = UnityEngine.PhysicsScene2D

---@return System.String
function UnityEngine.PhysicsScene2D:ToString()end
---@param lhs UnityEngine.PhysicsScene2D
---@param rhs UnityEngine.PhysicsScene2D
---@return System.Boolean
function UnityEngine.PhysicsScene2D.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.PhysicsScene2D
---@param rhs UnityEngine.PhysicsScene2D
---@return System.Boolean
function UnityEngine.PhysicsScene2D.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.PhysicsScene2D:GetHashCode()end
---@overload fun(other:UnityEngine.PhysicsScene2D):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.PhysicsScene2D:Equals(other)end
---@return System.Boolean
function UnityEngine.PhysicsScene2D:IsValid()end
---@return System.Boolean
function UnityEngine.PhysicsScene2D:IsEmpty()end
---@param step System.Single
---@return System.Boolean
function UnityEngine.PhysicsScene2D:Simulate(step)end
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2):UnityEngine.RaycastHit2D
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.RaycastHit2D
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:Linecast(start, _end, layerMask)end
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param distance System.Single
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:Raycast(origin, direction, distance, layerMask)end
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param origin UnityEngine.Vector2
---@param radius System.Single
---@param direction UnityEngine.Vector2
---@param distance System.Single
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:CircleCast(origin, radius, direction, distance, layerMask)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@param distance System.Single
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:BoxCast(origin, size, angle, direction, distance, layerMask)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@param distance System.Single
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:CapsuleCast(origin, size, capsuleDirection, angle, direction, distance, layerMask)end
---@overload fun(ray:UnityEngine.Ray, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(ray:UnityEngine.Ray, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(ray:UnityEngine.Ray, distance:System.Single, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param ray UnityEngine.Ray
---@param distance System.Single
---@param layerMask System.Int32
---@return UnityEngine.RaycastHit2D
function UnityEngine.PhysicsScene2D:GetRayIntersection(ray, distance, layerMask)end
---@overload fun(point:UnityEngine.Vector2):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param layerMask System.Int32
---@return UnityEngine.Collider2D
function UnityEngine.PhysicsScene2D:OverlapPoint(point, layerMask)end
---@overload fun(point:UnityEngine.Vector2, radius:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param radius System.Single
---@param layerMask System.Int32
---@return UnityEngine.Collider2D
function UnityEngine.PhysicsScene2D:OverlapCircle(point, radius, layerMask)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param layerMask System.Int32
---@return UnityEngine.Collider2D
function UnityEngine.PhysicsScene2D:OverlapBox(point, size, angle, layerMask)end
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2):UnityEngine.Collider2D
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.Collider2D
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param layerMask System.Int32
---@return UnityEngine.Collider2D
function UnityEngine.PhysicsScene2D:OverlapArea(pointA, pointB, layerMask)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param layerMask System.Int32
---@return UnityEngine.Collider2D
function UnityEngine.PhysicsScene2D:OverlapCapsule(point, size, direction, angle, layerMask)end
---@overload fun(collider:UnityEngine.Collider2D, results:UnityEngine.Collider2D[]):System.Int32
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param collider UnityEngine.Collider2D
---@param results UnityEngine.Collider2D[]
---@param layerMask System.Int32
---@return System.Int32
function UnityEngine.PhysicsScene2D.OverlapCollider(collider, results, layerMask)end
---@class UnityEngine.PhysicsSceneExtensions2D : System.Object
UnityEngine.PhysicsSceneExtensions2D = {}
---@type UnityEngine.PhysicsSceneExtensions2D
CS.UnityEngine.PhysicsSceneExtensions2D = UnityEngine.PhysicsSceneExtensions2D

---@class UnityEngine.Physics2D : System.Object
---@field public defaultPhysicsScene UnityEngine.PhysicsScene2D @static  getter
---@field public velocityIterations System.Int32 @static setter getter
---@field public positionIterations System.Int32 @static setter getter
---@field public gravity UnityEngine.Vector2 @static setter getter
---@field public queriesHitTriggers System.Boolean @static setter getter
---@field public queriesStartInColliders System.Boolean @static setter getter
---@field public callbacksOnDisable System.Boolean @static setter getter
---@field public reuseCollisionCallbacks System.Boolean @static setter getter
---@field public autoSyncTransforms System.Boolean @static setter getter
---@field public autoSimulation System.Boolean @static setter getter
---@field public jobOptions UnityEngine.PhysicsJobOptions2D @static setter getter
---@field public velocityThreshold System.Single @static setter getter
---@field public maxLinearCorrection System.Single @static setter getter
---@field public maxAngularCorrection System.Single @static setter getter
---@field public maxTranslationSpeed System.Single @static setter getter
---@field public maxRotationSpeed System.Single @static setter getter
---@field public defaultContactOffset System.Single @static setter getter
---@field public baumgarteScale System.Single @static setter getter
---@field public baumgarteTOIScale System.Single @static setter getter
---@field public timeToSleep System.Single @static setter getter
---@field public linearSleepTolerance System.Single @static setter getter
---@field public angularSleepTolerance System.Single @static setter getter
---@field public alwaysShowColliders System.Boolean @static setter getter
---@field public showColliderSleep System.Boolean @static setter getter
---@field public showColliderContacts System.Boolean @static setter getter
---@field public showColliderAABB System.Boolean @static setter getter
---@field public contactArrowScale System.Single @static setter getter
---@field public colliderAwakeColor UnityEngine.Color @static setter getter
---@field public colliderAsleepColor UnityEngine.Color @static setter getter
---@field public colliderContactColor UnityEngine.Color @static setter getter
---@field public colliderAABBColor UnityEngine.Color @static setter getter
---@field public raycastsHitTriggers System.Boolean @static setter getter
---@field public raycastsStartInColliders System.Boolean @static setter getter
---@field public deleteStopsCallbacks System.Boolean @static setter getter
---@field public changeStopsCallbacks System.Boolean @static setter getter
---@field public minPenetrationForPenalty System.Single @static setter getter
---@field public IgnoreRaycastLayer System.Int32
---@field public DefaultRaycastLayers System.Int32
---@field public AllLayers System.Int32
UnityEngine.Physics2D = {}
---@type UnityEngine.Physics2D
CS.UnityEngine.Physics2D = UnityEngine.Physics2D

---@param step System.Single
---@return System.Boolean
function UnityEngine.Physics2D.Simulate(step)end
---@return System.Void
function UnityEngine.Physics2D.SyncTransforms()end
---@overload fun(collider1:UnityEngine.Collider2D, collider2:UnityEngine.Collider2D, ignore:System.Boolean):System.Void
---@param collider1 UnityEngine.Collider2D
---@param collider2 UnityEngine.Collider2D
---@return System.Void
function UnityEngine.Physics2D.IgnoreCollision(collider1, collider2)end
---@param collider1 UnityEngine.Collider2D
---@param collider2 UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.Physics2D.GetIgnoreCollision(collider1, collider2)end
---@overload fun(layer1:System.Int32, layer2:System.Int32, ignore:System.Boolean):System.Void
---@param layer1 System.Int32
---@param layer2 System.Int32
---@return System.Void
function UnityEngine.Physics2D.IgnoreLayerCollision(layer1, layer2)end
---@param layer1 System.Int32
---@param layer2 System.Int32
---@return System.Boolean
function UnityEngine.Physics2D.GetIgnoreLayerCollision(layer1, layer2)end
---@param layer System.Int32
---@param layerMask System.Int32
---@return System.Void
function UnityEngine.Physics2D.SetLayerCollisionMask(layer, layerMask)end
---@param layer System.Int32
---@return System.Int32
function UnityEngine.Physics2D.GetLayerCollisionMask(layer)end
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@overload fun(collider1:UnityEngine.Collider2D, collider2:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@param collider1 UnityEngine.Collider2D
---@param collider2 UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.Physics2D.IsTouching(collider1, collider2)end
---@overload fun(collider:UnityEngine.Collider2D, layerMask:System.Int32):System.Boolean
---@param collider UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.Physics2D.IsTouchingLayers(collider)end
---@param colliderA UnityEngine.Collider2D
---@param colliderB UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Physics2D.Distance(colliderA, colliderB)end
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.Linecast(start, _end)end
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D[]
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.LinecastAll(start, _end)end
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], layerMask:System.Int32):System.Int32
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(start:UnityEngine.Vector2, _end:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.LinecastNonAlloc(start, _end, results)end
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.Raycast(origin, direction)end
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.RaycastNonAlloc(origin, direction, results)end
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.RaycastAll(origin, direction)end
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param radius System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.CircleCast(origin, radius, direction)end
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param radius System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.CircleCastAll(origin, radius, direction)end
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, radius:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param radius System.Single
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.CircleCastNonAlloc(origin, radius, direction, results)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.BoxCast(origin, size, angle, direction)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.BoxCastAll(origin, size, angle, direction)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.BoxCastNonAlloc(origin, size, angle, direction, results)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.CapsuleCast(origin, size, capsuleDirection, angle, direction)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.CapsuleCastAll(origin, size, capsuleDirection, angle, direction)end
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(origin:UnityEngine.Vector2, size:UnityEngine.Vector2, capsuleDirection:UnityEngine.CapsuleDirection2D, angle:System.Single, direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.CapsuleCastNonAlloc(origin, size, capsuleDirection, angle, direction, results)end
---@overload fun(ray:UnityEngine.Ray, distance:System.Single):UnityEngine.RaycastHit2D
---@overload fun(ray:UnityEngine.Ray, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D
---@param ray UnityEngine.Ray
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.GetRayIntersection(ray)end
---@overload fun(ray:UnityEngine.Ray, distance:System.Single):UnityEngine.RaycastHit2D[]
---@overload fun(ray:UnityEngine.Ray, distance:System.Single, layerMask:System.Int32):UnityEngine.RaycastHit2D[]
---@param ray UnityEngine.Ray
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.GetRayIntersectionAll(ray)end
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@param ray UnityEngine.Ray
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Physics2D.GetRayIntersectionNonAlloc(ray, results)end
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@return UnityEngine.Collider2D
function UnityEngine.Physics2D.OverlapPoint(point)end
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapPointAll(point)end
---@overload fun(point:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32):System.Int32
---@overload fun(point:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(point:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param point UnityEngine.Vector2
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapPointNonAlloc(point, results)end
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param radius System.Single
---@return UnityEngine.Collider2D
function UnityEngine.Physics2D.OverlapCircle(point, radius)end
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param radius System.Single
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapCircleAll(point, radius)end
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32):System.Int32
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(point:UnityEngine.Vector2, radius:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param point UnityEngine.Vector2
---@param radius System.Single
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapCircleNonAlloc(point, radius, results)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@return UnityEngine.Collider2D
function UnityEngine.Physics2D.OverlapBox(point, size, angle)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapBoxAll(point, size, angle)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle System.Single
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapBoxNonAlloc(point, size, angle, results)end
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.Collider2D
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@return UnityEngine.Collider2D
function UnityEngine.Physics2D.OverlapArea(pointA, pointB)end
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32):UnityEngine.Collider2D[]
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D[]
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D[]
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapAreaAll(pointA, pointB)end
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32):System.Int32
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(pointA:UnityEngine.Vector2, pointB:UnityEngine.Vector2, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapAreaNonAlloc(pointA, pointB, results)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.Collider2D[]):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@return UnityEngine.Collider2D
function UnityEngine.Physics2D.OverlapCapsule(point, size, direction, angle)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32, minDepth:System.Single):UnityEngine.Collider2D[]
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapCapsuleAll(point, size, direction, angle)end
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(point:UnityEngine.Vector2, size:UnityEngine.Vector2, direction:UnityEngine.CapsuleDirection2D, angle:System.Single, results:UnityEngine.Collider2D[], layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle System.Single
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapCapsuleNonAlloc(point, size, direction, angle, results)end
---@param collider UnityEngine.Collider2D
---@param contactFilter UnityEngine.ContactFilter2D
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Physics2D.OverlapCollider(collider, contactFilter, results)end
---@overload fun(collider:UnityEngine.Collider2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(rigidbody:UnityEngine.Rigidbody2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@overload fun(rigidbody:UnityEngine.Rigidbody2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(rigidbody:UnityEngine.Rigidbody2D, contactFilter:UnityEngine.ContactFilter2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@overload fun(rigidbody:UnityEngine.Rigidbody2D, contactFilter:UnityEngine.ContactFilter2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(collider1:UnityEngine.Collider2D, collider2:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@param collider UnityEngine.Collider2D
---@param contacts UnityEngine.ContactPoint2D[]
---@return System.Int32
function UnityEngine.Physics2D.GetContacts(collider, contacts)end
---@class UnityEngine.CapsuleDirection2D : System.Enum
UnityEngine.CapsuleDirection2D = {}
---@type UnityEngine.CapsuleDirection2D
CS.UnityEngine.CapsuleDirection2D = UnityEngine.CapsuleDirection2D

---@return System.Int32 value:0
UnityEngine.CapsuleDirection2D.Vertical = 0
---@return System.Int32 value:1
UnityEngine.CapsuleDirection2D.Horizontal = 1

---@class UnityEngine.RigidbodyConstraints2D : System.Enum
UnityEngine.RigidbodyConstraints2D = {}
---@type UnityEngine.RigidbodyConstraints2D
CS.UnityEngine.RigidbodyConstraints2D = UnityEngine.RigidbodyConstraints2D

---@return System.Int32 value:0
UnityEngine.RigidbodyConstraints2D.None = 0
---@return System.Int32 value:1
UnityEngine.RigidbodyConstraints2D.FreezePositionX = 1
---@return System.Int32 value:2
UnityEngine.RigidbodyConstraints2D.FreezePositionY = 2
---@return System.Int32 value:3
UnityEngine.RigidbodyConstraints2D.FreezePosition = 3
---@return System.Int32 value:4
UnityEngine.RigidbodyConstraints2D.FreezeRotation = 4

---@class UnityEngine.RigidbodyInterpolation2D : System.Enum
UnityEngine.RigidbodyInterpolation2D = {}
---@type UnityEngine.RigidbodyInterpolation2D
CS.UnityEngine.RigidbodyInterpolation2D = UnityEngine.RigidbodyInterpolation2D

---@return System.Int32 value:0
UnityEngine.RigidbodyInterpolation2D.None = 0
---@return System.Int32 value:1
UnityEngine.RigidbodyInterpolation2D.Interpolate = 1
---@return System.Int32 value:2
UnityEngine.RigidbodyInterpolation2D.Extrapolate = 2

---@class UnityEngine.RigidbodySleepMode2D : System.Enum
UnityEngine.RigidbodySleepMode2D = {}
---@type UnityEngine.RigidbodySleepMode2D
CS.UnityEngine.RigidbodySleepMode2D = UnityEngine.RigidbodySleepMode2D

---@return System.Int32 value:0
UnityEngine.RigidbodySleepMode2D.NeverSleep = 0
---@return System.Int32 value:1
UnityEngine.RigidbodySleepMode2D.StartAwake = 1
---@return System.Int32 value:2
UnityEngine.RigidbodySleepMode2D.StartAsleep = 2

---@class UnityEngine.CollisionDetectionMode2D : System.Enum
UnityEngine.CollisionDetectionMode2D = {}
---@type UnityEngine.CollisionDetectionMode2D
CS.UnityEngine.CollisionDetectionMode2D = UnityEngine.CollisionDetectionMode2D

---@return System.Int32 value:0
UnityEngine.CollisionDetectionMode2D.Discrete = 0
---@return System.Int32 value:1
UnityEngine.CollisionDetectionMode2D.Continuous = 1

---@class UnityEngine.RigidbodyType2D : System.Enum
UnityEngine.RigidbodyType2D = {}
---@type UnityEngine.RigidbodyType2D
CS.UnityEngine.RigidbodyType2D = UnityEngine.RigidbodyType2D

---@return System.Int32 value:0
UnityEngine.RigidbodyType2D.Dynamic = 0
---@return System.Int32 value:1
UnityEngine.RigidbodyType2D.Kinematic = 1
---@return System.Int32 value:2
UnityEngine.RigidbodyType2D.Static = 2

---@class UnityEngine.ForceMode2D : System.Enum
UnityEngine.ForceMode2D = {}
---@type UnityEngine.ForceMode2D
CS.UnityEngine.ForceMode2D = UnityEngine.ForceMode2D

---@return System.Int32 value:0
UnityEngine.ForceMode2D.Force = 0
---@return System.Int32 value:1
UnityEngine.ForceMode2D.Impulse = 1

---@class UnityEngine.JointLimitState2D : System.Enum
UnityEngine.JointLimitState2D = {}
---@type UnityEngine.JointLimitState2D
CS.UnityEngine.JointLimitState2D = UnityEngine.JointLimitState2D

---@return System.Int32 value:0
UnityEngine.JointLimitState2D.Inactive = 0
---@return System.Int32 value:1
UnityEngine.JointLimitState2D.LowerLimit = 1
---@return System.Int32 value:2
UnityEngine.JointLimitState2D.UpperLimit = 2
---@return System.Int32 value:3
UnityEngine.JointLimitState2D.EqualLimits = 3

---@class UnityEngine.EffectorSelection2D : System.Enum
UnityEngine.EffectorSelection2D = {}
---@type UnityEngine.EffectorSelection2D
CS.UnityEngine.EffectorSelection2D = UnityEngine.EffectorSelection2D

---@return System.Int32 value:0
UnityEngine.EffectorSelection2D.Rigidbody = 0
---@return System.Int32 value:1
UnityEngine.EffectorSelection2D.Collider = 1

---@class UnityEngine.EffectorForceMode2D : System.Enum
UnityEngine.EffectorForceMode2D = {}
---@type UnityEngine.EffectorForceMode2D
CS.UnityEngine.EffectorForceMode2D = UnityEngine.EffectorForceMode2D

---@return System.Int32 value:0
UnityEngine.EffectorForceMode2D.Constant = 0
---@return System.Int32 value:1
UnityEngine.EffectorForceMode2D.InverseLinear = 1
---@return System.Int32 value:2
UnityEngine.EffectorForceMode2D.InverseSquared = 2

---@class UnityEngine.ColliderDistance2D : System.ValueType
---@field public pointA UnityEngine.Vector2 @ setter getter
---@field public pointB UnityEngine.Vector2 @ setter getter
---@field public normal UnityEngine.Vector2 @  getter
---@field public distance System.Single @ setter getter
---@field public isOverlapped System.Boolean @  getter
---@field public isValid System.Boolean @ setter getter
UnityEngine.ColliderDistance2D = {}
---@type UnityEngine.ColliderDistance2D
CS.UnityEngine.ColliderDistance2D = UnityEngine.ColliderDistance2D

---@class UnityEngine.ContactFilter2D : System.ValueType
---@field public isFiltering System.Boolean @  getter
---@field public useTriggers System.Boolean
---@field public useLayerMask System.Boolean
---@field public useDepth System.Boolean
---@field public useOutsideDepth System.Boolean
---@field public useNormalAngle System.Boolean
---@field public useOutsideNormalAngle System.Boolean
---@field public layerMask UnityEngine.LayerMask
---@field public minDepth System.Single
---@field public maxDepth System.Single
---@field public minNormalAngle System.Single
---@field public maxNormalAngle System.Single
---@field public NormalAngleUpperLimit System.Single
UnityEngine.ContactFilter2D = {}
---@type UnityEngine.ContactFilter2D
CS.UnityEngine.ContactFilter2D = UnityEngine.ContactFilter2D

---@return UnityEngine.ContactFilter2D
function UnityEngine.ContactFilter2D:NoFilter()end
---@return System.Void
function UnityEngine.ContactFilter2D:ClearLayerMask()end
---@param layerMask UnityEngine.LayerMask
---@return System.Void
function UnityEngine.ContactFilter2D:SetLayerMask(layerMask)end
---@return System.Void
function UnityEngine.ContactFilter2D:ClearDepth()end
---@param minDepth System.Single
---@param maxDepth System.Single
---@return System.Void
function UnityEngine.ContactFilter2D:SetDepth(minDepth, maxDepth)end
---@return System.Void
function UnityEngine.ContactFilter2D:ClearNormalAngle()end
---@param minNormalAngle System.Single
---@param maxNormalAngle System.Single
---@return System.Void
function UnityEngine.ContactFilter2D:SetNormalAngle(minNormalAngle, maxNormalAngle)end
---@param collider UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.ContactFilter2D:IsFilteringTrigger(collider)end
---@param obj UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.ContactFilter2D:IsFilteringLayerMask(obj)end
---@param obj UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.ContactFilter2D:IsFilteringDepth(obj)end
---@overload fun(normal:UnityEngine.Vector2):System.Boolean
---@param angle System.Single
---@return System.Boolean
function UnityEngine.ContactFilter2D:IsFilteringNormalAngle(angle)end
---@class UnityEngine.Collision2D : System.Object
---@field public collider UnityEngine.Collider2D @  getter
---@field public otherCollider UnityEngine.Collider2D @  getter
---@field public rigidbody UnityEngine.Rigidbody2D @  getter
---@field public otherRigidbody UnityEngine.Rigidbody2D @  getter
---@field public transform UnityEngine.Transform @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public relativeVelocity UnityEngine.Vector2 @  getter
---@field public enabled System.Boolean @  getter
---@field public contacts UnityEngine.ContactPoint2D[] @  getter
---@field public contactCount System.Int32 @  getter
UnityEngine.Collision2D = {}
---@type UnityEngine.Collision2D
CS.UnityEngine.Collision2D = UnityEngine.Collision2D

---@param index System.Int32
---@return UnityEngine.ContactPoint2D
function UnityEngine.Collision2D:GetContact(index)end
---@param contacts UnityEngine.ContactPoint2D[]
---@return System.Int32
function UnityEngine.Collision2D:GetContacts(contacts)end
---@class UnityEngine.ContactPoint2D : System.ValueType
---@field public point UnityEngine.Vector2 @  getter
---@field public normal UnityEngine.Vector2 @  getter
---@field public separation System.Single @  getter
---@field public normalImpulse System.Single @  getter
---@field public tangentImpulse System.Single @  getter
---@field public relativeVelocity UnityEngine.Vector2 @  getter
---@field public collider UnityEngine.Collider2D @  getter
---@field public otherCollider UnityEngine.Collider2D @  getter
---@field public rigidbody UnityEngine.Rigidbody2D @  getter
---@field public otherRigidbody UnityEngine.Rigidbody2D @  getter
---@field public enabled System.Boolean @  getter
UnityEngine.ContactPoint2D = {}
---@type UnityEngine.ContactPoint2D
CS.UnityEngine.ContactPoint2D = UnityEngine.ContactPoint2D

---@class UnityEngine.JointAngleLimits2D : System.ValueType
---@field public min System.Single @ setter getter
---@field public max System.Single @ setter getter
UnityEngine.JointAngleLimits2D = {}
---@type UnityEngine.JointAngleLimits2D
CS.UnityEngine.JointAngleLimits2D = UnityEngine.JointAngleLimits2D

---@class UnityEngine.JointTranslationLimits2D : System.ValueType
---@field public min System.Single @ setter getter
---@field public max System.Single @ setter getter
UnityEngine.JointTranslationLimits2D = {}
---@type UnityEngine.JointTranslationLimits2D
CS.UnityEngine.JointTranslationLimits2D = UnityEngine.JointTranslationLimits2D

---@class UnityEngine.JointMotor2D : System.ValueType
---@field public motorSpeed System.Single @ setter getter
---@field public maxMotorTorque System.Single @ setter getter
UnityEngine.JointMotor2D = {}
---@type UnityEngine.JointMotor2D
CS.UnityEngine.JointMotor2D = UnityEngine.JointMotor2D

---@class UnityEngine.JointSuspension2D : System.ValueType
---@field public dampingRatio System.Single @ setter getter
---@field public frequency System.Single @ setter getter
---@field public angle System.Single @ setter getter
UnityEngine.JointSuspension2D = {}
---@type UnityEngine.JointSuspension2D
CS.UnityEngine.JointSuspension2D = UnityEngine.JointSuspension2D

---@class UnityEngine.RaycastHit2D : System.ValueType
---@field public centroid UnityEngine.Vector2 @ setter getter
---@field public point UnityEngine.Vector2 @ setter getter
---@field public normal UnityEngine.Vector2 @ setter getter
---@field public distance System.Single @ setter getter
---@field public fraction System.Single @ setter getter
---@field public collider UnityEngine.Collider2D @  getter
---@field public rigidbody UnityEngine.Rigidbody2D @  getter
---@field public transform UnityEngine.Transform @  getter
UnityEngine.RaycastHit2D = {}
---@type UnityEngine.RaycastHit2D
CS.UnityEngine.RaycastHit2D = UnityEngine.RaycastHit2D

---@param hit UnityEngine.RaycastHit2D
---@return System.Boolean
function UnityEngine.RaycastHit2D.op_Implicit(hit)end
---@param other UnityEngine.RaycastHit2D
---@return System.Int32
function UnityEngine.RaycastHit2D:CompareTo(other)end
---@class UnityEngine.PhysicsJobOptions2D : System.ValueType
---@field public useMultithreading System.Boolean @ setter getter
---@field public useConsistencySorting System.Boolean @ setter getter
---@field public interpolationPosesPerJob System.Int32 @ setter getter
---@field public newContactsPerJob System.Int32 @ setter getter
---@field public collideContactsPerJob System.Int32 @ setter getter
---@field public clearFlagsPerJob System.Int32 @ setter getter
---@field public clearBodyForcesPerJob System.Int32 @ setter getter
---@field public syncDiscreteFixturesPerJob System.Int32 @ setter getter
---@field public syncContinuousFixturesPerJob System.Int32 @ setter getter
---@field public findNearestContactsPerJob System.Int32 @ setter getter
---@field public updateTriggerContactsPerJob System.Int32 @ setter getter
---@field public islandSolverCostThreshold System.Int32 @ setter getter
---@field public islandSolverBodyCostScale System.Int32 @ setter getter
---@field public islandSolverContactCostScale System.Int32 @ setter getter
---@field public islandSolverJointCostScale System.Int32 @ setter getter
---@field public islandSolverBodiesPerJob System.Int32 @ setter getter
---@field public islandSolverContactsPerJob System.Int32 @ setter getter
UnityEngine.PhysicsJobOptions2D = {}
---@type UnityEngine.PhysicsJobOptions2D
CS.UnityEngine.PhysicsJobOptions2D = UnityEngine.PhysicsJobOptions2D

---@class UnityEngine.Rigidbody2D : UnityEngine.Component
---@field public position UnityEngine.Vector2 @ setter getter
---@field public rotation System.Single @ setter getter
---@field public velocity UnityEngine.Vector2 @ setter getter
---@field public angularVelocity System.Single @ setter getter
---@field public useAutoMass System.Boolean @ setter getter
---@field public mass System.Single @ setter getter
---@field public sharedMaterial UnityEngine.PhysicsMaterial2D @ setter getter
---@field public centerOfMass UnityEngine.Vector2 @ setter getter
---@field public worldCenterOfMass UnityEngine.Vector2 @  getter
---@field public inertia System.Single @ setter getter
---@field public drag System.Single @ setter getter
---@field public angularDrag System.Single @ setter getter
---@field public gravityScale System.Single @ setter getter
---@field public bodyType UnityEngine.RigidbodyType2D @ setter getter
---@field public useFullKinematicContacts System.Boolean @ setter getter
---@field public isKinematic System.Boolean @ setter getter
---@field public fixedAngle System.Boolean @ setter getter
---@field public freezeRotation System.Boolean @ setter getter
---@field public constraints UnityEngine.RigidbodyConstraints2D @ setter getter
---@field public simulated System.Boolean @ setter getter
---@field public interpolation UnityEngine.RigidbodyInterpolation2D @ setter getter
---@field public sleepMode UnityEngine.RigidbodySleepMode2D @ setter getter
---@field public collisionDetectionMode UnityEngine.CollisionDetectionMode2D @ setter getter
---@field public attachedColliderCount System.Int32 @  getter
UnityEngine.Rigidbody2D = {}
---@type UnityEngine.Rigidbody2D
CS.UnityEngine.Rigidbody2D = UnityEngine.Rigidbody2D

---@param position UnityEngine.Vector2
---@return System.Void
function UnityEngine.Rigidbody2D:MovePosition(position)end
---@param angle System.Single
---@return System.Void
function UnityEngine.Rigidbody2D:MoveRotation(angle)end
---@return System.Boolean
function UnityEngine.Rigidbody2D:IsSleeping()end
---@return System.Boolean
function UnityEngine.Rigidbody2D:IsAwake()end
---@return System.Void
function UnityEngine.Rigidbody2D:Sleep()end
---@return System.Void
function UnityEngine.Rigidbody2D:WakeUp()end
---@overload fun(contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@param collider UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.Rigidbody2D:IsTouching(collider)end
---@overload fun(layerMask:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.Rigidbody2D:IsTouchingLayers()end
---@param point UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Rigidbody2D:OverlapPoint(point)end
---@param collider UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Rigidbody2D:Distance(collider)end
---@overload fun(force:UnityEngine.Vector2, mode:UnityEngine.ForceMode2D):System.Void
---@param force UnityEngine.Vector2
---@return System.Void
function UnityEngine.Rigidbody2D:AddForce(force)end
---@overload fun(relativeForce:UnityEngine.Vector2, mode:UnityEngine.ForceMode2D):System.Void
---@param relativeForce UnityEngine.Vector2
---@return System.Void
function UnityEngine.Rigidbody2D:AddRelativeForce(relativeForce)end
---@overload fun(force:UnityEngine.Vector2, position:UnityEngine.Vector2, mode:UnityEngine.ForceMode2D):System.Void
---@param force UnityEngine.Vector2
---@param position UnityEngine.Vector2
---@return System.Void
function UnityEngine.Rigidbody2D:AddForceAtPosition(force, position)end
---@overload fun(torque:System.Single, mode:UnityEngine.ForceMode2D):System.Void
---@param torque System.Single
---@return System.Void
function UnityEngine.Rigidbody2D:AddTorque(torque)end
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetPoint(point)end
---@param relativePoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativePoint(relativePoint)end
---@param vector UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetVector(vector)end
---@param relativeVector UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativeVector(relativeVector)end
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetPointVelocity(point)end
---@param relativePoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativePointVelocity(relativePoint)end
---@param contactFilter UnityEngine.ContactFilter2D
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Rigidbody2D:OverlapCollider(contactFilter, results)end
---@overload fun(colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(contactFilter:UnityEngine.ContactFilter2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@overload fun(contactFilter:UnityEngine.ContactFilter2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@param contacts UnityEngine.ContactPoint2D[]
---@return System.Int32
function UnityEngine.Rigidbody2D:GetContacts(contacts)end
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Rigidbody2D:GetAttachedColliders(results)end
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Rigidbody2D:Cast(direction, results)end
---@class UnityEngine.Collider2D : UnityEngine.Behaviour
---@field public density System.Single @ setter getter
---@field public isTrigger System.Boolean @ setter getter
---@field public usedByEffector System.Boolean @ setter getter
---@field public usedByComposite System.Boolean @ setter getter
---@field public composite UnityEngine.CompositeCollider2D @  getter
---@field public offset UnityEngine.Vector2 @ setter getter
---@field public attachedRigidbody UnityEngine.Rigidbody2D @  getter
---@field public shapeCount System.Int32 @  getter
---@field public bounds UnityEngine.Bounds @  getter
---@field public sharedMaterial UnityEngine.PhysicsMaterial2D @ setter getter
---@field public friction System.Single @  getter
---@field public bounciness System.Single @  getter
UnityEngine.Collider2D = {}
---@type UnityEngine.Collider2D
CS.UnityEngine.Collider2D = UnityEngine.Collider2D

---@overload fun(contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@overload fun(collider:UnityEngine.Collider2D, contactFilter:UnityEngine.ContactFilter2D):System.Boolean
---@param collider UnityEngine.Collider2D
---@return System.Boolean
function UnityEngine.Collider2D:IsTouching(collider)end
---@overload fun(layerMask:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.Collider2D:IsTouchingLayers()end
---@param point UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Collider2D:OverlapPoint(point)end
---@param collider UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Collider2D:Distance(collider)end
---@param contactFilter UnityEngine.ContactFilter2D
---@param results UnityEngine.Collider2D[]
---@return System.Int32
function UnityEngine.Collider2D:OverlapCollider(contactFilter, results)end
---@overload fun(colliders:UnityEngine.Collider2D[]):System.Int32
---@overload fun(contactFilter:UnityEngine.ContactFilter2D, contacts:UnityEngine.ContactPoint2D[]):System.Int32
---@overload fun(contactFilter:UnityEngine.ContactFilter2D, colliders:UnityEngine.Collider2D[]):System.Int32
---@param contacts UnityEngine.ContactPoint2D[]
---@return System.Int32
function UnityEngine.Collider2D:GetContacts(contacts)end
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, ignoreSiblingColliders:System.Boolean):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single, ignoreSiblingColliders:System.Boolean):System.Int32
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Collider2D:Cast(direction, results)end
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32):System.Int32
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, results:UnityEngine.RaycastHit2D[], distance:System.Single, layerMask:System.Int32, minDepth:System.Single, maxDepth:System.Single):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[]):System.Int32
---@overload fun(direction:UnityEngine.Vector2, contactFilter:UnityEngine.ContactFilter2D, results:UnityEngine.RaycastHit2D[], distance:System.Single):System.Int32
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@return System.Int32
function UnityEngine.Collider2D:Raycast(direction, results)end
---@class UnityEngine.CircleCollider2D : UnityEngine.Collider2D
---@field public radius System.Single @ setter getter
---@field public center UnityEngine.Vector2 @ setter getter
UnityEngine.CircleCollider2D = {}
---@type UnityEngine.CircleCollider2D
CS.UnityEngine.CircleCollider2D = UnityEngine.CircleCollider2D

---@class UnityEngine.CapsuleCollider2D : UnityEngine.Collider2D
---@field public size UnityEngine.Vector2 @ setter getter
---@field public direction UnityEngine.CapsuleDirection2D @ setter getter
UnityEngine.CapsuleCollider2D = {}
---@type UnityEngine.CapsuleCollider2D
CS.UnityEngine.CapsuleCollider2D = UnityEngine.CapsuleCollider2D

---@class UnityEngine.EdgeCollider2D : UnityEngine.Collider2D
---@field public edgeRadius System.Single @ setter getter
---@field public edgeCount System.Int32 @  getter
---@field public pointCount System.Int32 @  getter
---@field public points UnityEngine.Vector2[] @ setter getter
UnityEngine.EdgeCollider2D = {}
---@type UnityEngine.EdgeCollider2D
CS.UnityEngine.EdgeCollider2D = UnityEngine.EdgeCollider2D

---@return System.Void
function UnityEngine.EdgeCollider2D:Reset()end
---@class UnityEngine.BoxCollider2D : UnityEngine.Collider2D
---@field public size UnityEngine.Vector2 @ setter getter
---@field public edgeRadius System.Single @ setter getter
---@field public autoTiling System.Boolean @ setter getter
---@field public center UnityEngine.Vector2 @ setter getter
UnityEngine.BoxCollider2D = {}
---@type UnityEngine.BoxCollider2D
CS.UnityEngine.BoxCollider2D = UnityEngine.BoxCollider2D

---@class UnityEngine.PolygonCollider2D : UnityEngine.Collider2D
---@field public autoTiling System.Boolean @ setter getter
---@field public points UnityEngine.Vector2[] @ setter getter
---@field public pathCount System.Int32 @ setter getter
UnityEngine.PolygonCollider2D = {}
---@type UnityEngine.PolygonCollider2D
CS.UnityEngine.PolygonCollider2D = UnityEngine.PolygonCollider2D

---@return System.Int32
function UnityEngine.PolygonCollider2D:GetTotalPointCount()end
---@param index System.Int32
---@return UnityEngine.Vector2[]
function UnityEngine.PolygonCollider2D:GetPath(index)end
---@param index System.Int32
---@param points UnityEngine.Vector2[]
---@return System.Void
function UnityEngine.PolygonCollider2D:SetPath(index, points)end
---@overload fun(sides:System.Int32, scale:UnityEngine.Vector2):System.Void
---@overload fun(sides:System.Int32, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2):System.Void
---@param sides System.Int32
---@return System.Void
function UnityEngine.PolygonCollider2D:CreatePrimitive(sides)end
---@class UnityEngine.CompositeCollider2D : UnityEngine.Collider2D
---@field public geometryType UnityEngine.CompositeCollider2D.GeometryType @ setter getter
---@field public generationType UnityEngine.CompositeCollider2D.GenerationType @ setter getter
---@field public vertexDistance System.Single @ setter getter
---@field public edgeRadius System.Single @ setter getter
---@field public pathCount System.Int32 @  getter
---@field public pointCount System.Int32 @  getter
UnityEngine.CompositeCollider2D = {}
---@type UnityEngine.CompositeCollider2D
CS.UnityEngine.CompositeCollider2D = UnityEngine.CompositeCollider2D

---@return System.Void
function UnityEngine.CompositeCollider2D:GenerateGeometry()end
---@param index System.Int32
---@return System.Int32
function UnityEngine.CompositeCollider2D:GetPathPointCount(index)end
---@param index System.Int32
---@param points UnityEngine.Vector2[]
---@return System.Int32
function UnityEngine.CompositeCollider2D:GetPath(index, points)end
---@class UnityEngine.CompositeCollider2D.GeometryType : System.Enum
UnityEngine.CompositeCollider2D.GeometryType = {}
---@type UnityEngine.CompositeCollider2D.GeometryType
CS.UnityEngine.CompositeCollider2D.GeometryType = UnityEngine.CompositeCollider2D.GeometryType

---@return System.Int32 value:0
UnityEngine.CompositeCollider2D.GeometryType.Outlines = 0
---@return System.Int32 value:1
UnityEngine.CompositeCollider2D.GeometryType.Polygons = 1

---@class UnityEngine.CompositeCollider2D.GenerationType : System.Enum
UnityEngine.CompositeCollider2D.GenerationType = {}
---@type UnityEngine.CompositeCollider2D.GenerationType
CS.UnityEngine.CompositeCollider2D.GenerationType = UnityEngine.CompositeCollider2D.GenerationType

---@return System.Int32 value:0
UnityEngine.CompositeCollider2D.GenerationType.Synchronous = 0
---@return System.Int32 value:1
UnityEngine.CompositeCollider2D.GenerationType.Manual = 1

---@class UnityEngine.Joint2D : UnityEngine.Behaviour
---@field public attachedRigidbody UnityEngine.Rigidbody2D @  getter
---@field public connectedBody UnityEngine.Rigidbody2D @ setter getter
---@field public enableCollision System.Boolean @ setter getter
---@field public breakForce System.Single @ setter getter
---@field public breakTorque System.Single @ setter getter
---@field public reactionForce UnityEngine.Vector2 @  getter
---@field public reactionTorque System.Single @  getter
---@field public collideConnected System.Boolean @ setter getter
UnityEngine.Joint2D = {}
---@type UnityEngine.Joint2D
CS.UnityEngine.Joint2D = UnityEngine.Joint2D

---@param timeStep System.Single
---@return UnityEngine.Vector2
function UnityEngine.Joint2D:GetReactionForce(timeStep)end
---@param timeStep System.Single
---@return System.Single
function UnityEngine.Joint2D:GetReactionTorque(timeStep)end
---@class UnityEngine.AnchoredJoint2D : UnityEngine.Joint2D
---@field public anchor UnityEngine.Vector2 @ setter getter
---@field public connectedAnchor UnityEngine.Vector2 @ setter getter
---@field public autoConfigureConnectedAnchor System.Boolean @ setter getter
UnityEngine.AnchoredJoint2D = {}
---@type UnityEngine.AnchoredJoint2D
CS.UnityEngine.AnchoredJoint2D = UnityEngine.AnchoredJoint2D

---@class UnityEngine.SpringJoint2D : UnityEngine.AnchoredJoint2D
---@field public autoConfigureDistance System.Boolean @ setter getter
---@field public distance System.Single @ setter getter
---@field public dampingRatio System.Single @ setter getter
---@field public frequency System.Single @ setter getter
UnityEngine.SpringJoint2D = {}
---@type UnityEngine.SpringJoint2D
CS.UnityEngine.SpringJoint2D = UnityEngine.SpringJoint2D

---@class UnityEngine.DistanceJoint2D : UnityEngine.AnchoredJoint2D
---@field public autoConfigureDistance System.Boolean @ setter getter
---@field public distance System.Single @ setter getter
---@field public maxDistanceOnly System.Boolean @ setter getter
UnityEngine.DistanceJoint2D = {}
---@type UnityEngine.DistanceJoint2D
CS.UnityEngine.DistanceJoint2D = UnityEngine.DistanceJoint2D

---@class UnityEngine.FrictionJoint2D : UnityEngine.AnchoredJoint2D
---@field public maxForce System.Single @ setter getter
---@field public maxTorque System.Single @ setter getter
UnityEngine.FrictionJoint2D = {}
---@type UnityEngine.FrictionJoint2D
CS.UnityEngine.FrictionJoint2D = UnityEngine.FrictionJoint2D

---@class UnityEngine.HingeJoint2D : UnityEngine.AnchoredJoint2D
---@field public useMotor System.Boolean @ setter getter
---@field public useLimits System.Boolean @ setter getter
---@field public motor UnityEngine.JointMotor2D @ setter getter
---@field public limits UnityEngine.JointAngleLimits2D @ setter getter
---@field public limitState UnityEngine.JointLimitState2D @  getter
---@field public referenceAngle System.Single @  getter
---@field public jointAngle System.Single @  getter
---@field public jointSpeed System.Single @  getter
UnityEngine.HingeJoint2D = {}
---@type UnityEngine.HingeJoint2D
CS.UnityEngine.HingeJoint2D = UnityEngine.HingeJoint2D

---@param timeStep System.Single
---@return System.Single
function UnityEngine.HingeJoint2D:GetMotorTorque(timeStep)end
---@class UnityEngine.RelativeJoint2D : UnityEngine.Joint2D
---@field public maxForce System.Single @ setter getter
---@field public maxTorque System.Single @ setter getter
---@field public correctionScale System.Single @ setter getter
---@field public autoConfigureOffset System.Boolean @ setter getter
---@field public linearOffset UnityEngine.Vector2 @ setter getter
---@field public angularOffset System.Single @ setter getter
---@field public target UnityEngine.Vector2 @  getter
UnityEngine.RelativeJoint2D = {}
---@type UnityEngine.RelativeJoint2D
CS.UnityEngine.RelativeJoint2D = UnityEngine.RelativeJoint2D

---@class UnityEngine.SliderJoint2D : UnityEngine.AnchoredJoint2D
---@field public autoConfigureAngle System.Boolean @ setter getter
---@field public angle System.Single @ setter getter
---@field public useMotor System.Boolean @ setter getter
---@field public useLimits System.Boolean @ setter getter
---@field public motor UnityEngine.JointMotor2D @ setter getter
---@field public limits UnityEngine.JointTranslationLimits2D @ setter getter
---@field public limitState UnityEngine.JointLimitState2D @  getter
---@field public referenceAngle System.Single @  getter
---@field public jointTranslation System.Single @  getter
---@field public jointSpeed System.Single @  getter
UnityEngine.SliderJoint2D = {}
---@type UnityEngine.SliderJoint2D
CS.UnityEngine.SliderJoint2D = UnityEngine.SliderJoint2D

---@param timeStep System.Single
---@return System.Single
function UnityEngine.SliderJoint2D:GetMotorForce(timeStep)end
---@class UnityEngine.TargetJoint2D : UnityEngine.Joint2D
---@field public anchor UnityEngine.Vector2 @ setter getter
---@field public target UnityEngine.Vector2 @ setter getter
---@field public autoConfigureTarget System.Boolean @ setter getter
---@field public maxForce System.Single @ setter getter
---@field public dampingRatio System.Single @ setter getter
---@field public frequency System.Single @ setter getter
UnityEngine.TargetJoint2D = {}
---@type UnityEngine.TargetJoint2D
CS.UnityEngine.TargetJoint2D = UnityEngine.TargetJoint2D

---@class UnityEngine.FixedJoint2D : UnityEngine.AnchoredJoint2D
---@field public dampingRatio System.Single @ setter getter
---@field public frequency System.Single @ setter getter
---@field public referenceAngle System.Single @  getter
UnityEngine.FixedJoint2D = {}
---@type UnityEngine.FixedJoint2D
CS.UnityEngine.FixedJoint2D = UnityEngine.FixedJoint2D

---@class UnityEngine.WheelJoint2D : UnityEngine.AnchoredJoint2D
---@field public suspension UnityEngine.JointSuspension2D @ setter getter
---@field public useMotor System.Boolean @ setter getter
---@field public motor UnityEngine.JointMotor2D @ setter getter
---@field public jointTranslation System.Single @  getter
---@field public jointLinearSpeed System.Single @  getter
---@field public jointSpeed System.Single @  getter
---@field public jointAngle System.Single @  getter
UnityEngine.WheelJoint2D = {}
---@type UnityEngine.WheelJoint2D
CS.UnityEngine.WheelJoint2D = UnityEngine.WheelJoint2D

---@param timeStep System.Single
---@return System.Single
function UnityEngine.WheelJoint2D:GetMotorTorque(timeStep)end
---@class UnityEngine.Effector2D : UnityEngine.Behaviour
---@field public useColliderMask System.Boolean @ setter getter
---@field public colliderMask System.Int32 @ setter getter
UnityEngine.Effector2D = {}
---@type UnityEngine.Effector2D
CS.UnityEngine.Effector2D = UnityEngine.Effector2D

---@class UnityEngine.AreaEffector2D : UnityEngine.Effector2D
---@field public forceAngle System.Single @ setter getter
---@field public useGlobalAngle System.Boolean @ setter getter
---@field public forceMagnitude System.Single @ setter getter
---@field public forceVariation System.Single @ setter getter
---@field public drag System.Single @ setter getter
---@field public angularDrag System.Single @ setter getter
---@field public forceTarget UnityEngine.EffectorSelection2D @ setter getter
---@field public forceDirection System.Single @ setter getter
UnityEngine.AreaEffector2D = {}
---@type UnityEngine.AreaEffector2D
CS.UnityEngine.AreaEffector2D = UnityEngine.AreaEffector2D

---@class UnityEngine.BuoyancyEffector2D : UnityEngine.Effector2D
---@field public surfaceLevel System.Single @ setter getter
---@field public density System.Single @ setter getter
---@field public linearDrag System.Single @ setter getter
---@field public angularDrag System.Single @ setter getter
---@field public flowAngle System.Single @ setter getter
---@field public flowMagnitude System.Single @ setter getter
---@field public flowVariation System.Single @ setter getter
UnityEngine.BuoyancyEffector2D = {}
---@type UnityEngine.BuoyancyEffector2D
CS.UnityEngine.BuoyancyEffector2D = UnityEngine.BuoyancyEffector2D

---@class UnityEngine.PointEffector2D : UnityEngine.Effector2D
---@field public forceMagnitude System.Single @ setter getter
---@field public forceVariation System.Single @ setter getter
---@field public distanceScale System.Single @ setter getter
---@field public drag System.Single @ setter getter
---@field public angularDrag System.Single @ setter getter
---@field public forceSource UnityEngine.EffectorSelection2D @ setter getter
---@field public forceTarget UnityEngine.EffectorSelection2D @ setter getter
---@field public forceMode UnityEngine.EffectorForceMode2D @ setter getter
UnityEngine.PointEffector2D = {}
---@type UnityEngine.PointEffector2D
CS.UnityEngine.PointEffector2D = UnityEngine.PointEffector2D

---@class UnityEngine.PlatformEffector2D : UnityEngine.Effector2D
---@field public useOneWay System.Boolean @ setter getter
---@field public useOneWayGrouping System.Boolean @ setter getter
---@field public useSideFriction System.Boolean @ setter getter
---@field public useSideBounce System.Boolean @ setter getter
---@field public surfaceArc System.Single @ setter getter
---@field public sideArc System.Single @ setter getter
---@field public rotationalOffset System.Single @ setter getter
---@field public oneWay System.Boolean @ setter getter
---@field public sideFriction System.Boolean @ setter getter
---@field public sideBounce System.Boolean @ setter getter
---@field public sideAngleVariance System.Single @ setter getter
UnityEngine.PlatformEffector2D = {}
---@type UnityEngine.PlatformEffector2D
CS.UnityEngine.PlatformEffector2D = UnityEngine.PlatformEffector2D

---@class UnityEngine.SurfaceEffector2D : UnityEngine.Effector2D
---@field public speed System.Single @ setter getter
---@field public speedVariation System.Single @ setter getter
---@field public forceScale System.Single @ setter getter
---@field public useContactForce System.Boolean @ setter getter
---@field public useFriction System.Boolean @ setter getter
---@field public useBounce System.Boolean @ setter getter
UnityEngine.SurfaceEffector2D = {}
---@type UnityEngine.SurfaceEffector2D
CS.UnityEngine.SurfaceEffector2D = UnityEngine.SurfaceEffector2D

---@class UnityEngine.PhysicsUpdateBehaviour2D : UnityEngine.Behaviour
UnityEngine.PhysicsUpdateBehaviour2D = {}
---@type UnityEngine.PhysicsUpdateBehaviour2D
CS.UnityEngine.PhysicsUpdateBehaviour2D = UnityEngine.PhysicsUpdateBehaviour2D

---@class UnityEngine.ConstantForce2D : UnityEngine.PhysicsUpdateBehaviour2D
---@field public force UnityEngine.Vector2 @ setter getter
---@field public relativeForce UnityEngine.Vector2 @ setter getter
---@field public torque System.Single @ setter getter
UnityEngine.ConstantForce2D = {}
---@type UnityEngine.ConstantForce2D
CS.UnityEngine.ConstantForce2D = UnityEngine.ConstantForce2D

---@class UnityEngine.PhysicsMaterial2D : UnityEngine.Object
---@field public bounciness System.Single @ setter getter
---@field public friction System.Single @ setter getter
UnityEngine.PhysicsMaterial2D = {}
---@type UnityEngine.PhysicsMaterial2D
CS.UnityEngine.PhysicsMaterial2D = UnityEngine.PhysicsMaterial2D

---@class UnityEngine.ScreenCapture : System.Object
UnityEngine.ScreenCapture = {}
---@type UnityEngine.ScreenCapture
CS.UnityEngine.ScreenCapture = UnityEngine.ScreenCapture

---@overload fun(filename:System.String, superSize:System.Int32):System.Void
---@overload fun(filename:System.String, stereoCaptureMode:UnityEngine.ScreenCapture.StereoScreenCaptureMode):System.Void
---@param filename System.String
---@return System.Void
function UnityEngine.ScreenCapture.CaptureScreenshot(filename)end
---@overload fun(superSize:System.Int32):UnityEngine.Texture2D
---@overload fun(stereoCaptureMode:UnityEngine.ScreenCapture.StereoScreenCaptureMode):UnityEngine.Texture2D
---@return UnityEngine.Texture2D
function UnityEngine.ScreenCapture.CaptureScreenshotAsTexture()end
---@class UnityEngine.ScreenCapture.StereoScreenCaptureMode : System.Enum
UnityEngine.ScreenCapture.StereoScreenCaptureMode = {}
---@type UnityEngine.ScreenCapture.StereoScreenCaptureMode
CS.UnityEngine.ScreenCapture.StereoScreenCaptureMode = UnityEngine.ScreenCapture.StereoScreenCaptureMode

---@return System.Int32 value:1
UnityEngine.ScreenCapture.StereoScreenCaptureMode.LeftEye = 1
---@return System.Int32 value:2
UnityEngine.ScreenCapture.StereoScreenCaptureMode.RightEye = 2

---@class UnityEngine.SpriteMask : UnityEngine.Renderer
---@field public frontSortingLayerID System.Int32 @ setter getter
---@field public frontSortingOrder System.Int32 @ setter getter
---@field public backSortingLayerID System.Int32 @ setter getter
---@field public backSortingOrder System.Int32 @ setter getter
---@field public alphaCutoff System.Single @ setter getter
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public isCustomRangeActive System.Boolean @ setter getter
---@field public spriteSortPoint UnityEngine.SpriteSortPoint @ setter getter
UnityEngine.SpriteMask = {}
---@type UnityEngine.SpriteMask
CS.UnityEngine.SpriteMask = UnityEngine.SpriteMask

---@class UnityEngine.StreamingController : UnityEngine.Behaviour
---@field public streamingMipmapBias System.Single @ setter getter
UnityEngine.StreamingController = {}
---@type UnityEngine.StreamingController
CS.UnityEngine.StreamingController = UnityEngine.StreamingController

---@overload fun(timeoutSeconds:System.Single, activateCameraOnTimeout:System.Boolean):System.Void
---@overload fun(timeoutSeconds:System.Single):System.Void
---@overload fun():System.Void
---@param timeoutSeconds System.Single
---@param activateCameraOnTimeout System.Boolean
---@param disableCameraCuttingFrom UnityEngine.Camera
---@return System.Void
function UnityEngine.StreamingController:SetPreloading(timeoutSeconds, activateCameraOnTimeout, disableCameraCuttingFrom)end
---@return System.Void
function UnityEngine.StreamingController:CancelPreloading()end
---@return System.Boolean
function UnityEngine.StreamingController:IsPreloading()end
---@class UnityEngine.ProceduralMaterial : UnityEngine.Material
---@field public cacheSize UnityEngine.ProceduralCacheSize @ setter getter
---@field public animationUpdateRate System.Int32 @ setter getter
---@field public isProcessing System.Boolean @  getter
---@field public isCachedDataAvailable System.Boolean @  getter
---@field public isLoadTimeGenerated System.Boolean @ setter getter
---@field public loadingBehavior UnityEngine.ProceduralLoadingBehavior @  getter
---@field public isSupported System.Boolean @static  getter
---@field public substanceProcessorUsage UnityEngine.ProceduralProcessorUsage @static setter getter
---@field public preset System.String @ setter getter
---@field public isReadable System.Boolean @ setter getter
---@field public isFrozen System.Boolean @  getter
UnityEngine.ProceduralMaterial = {}
---@type UnityEngine.ProceduralMaterial
CS.UnityEngine.ProceduralMaterial = UnityEngine.ProceduralMaterial

---@return UnityEngine.ProceduralPropertyDescription[]
function UnityEngine.ProceduralMaterial:GetProceduralPropertyDescriptions()end
---@param inputName System.String
---@return System.Boolean
function UnityEngine.ProceduralMaterial:HasProceduralProperty(inputName)end
---@param inputName System.String
---@return System.Boolean
function UnityEngine.ProceduralMaterial:GetProceduralBoolean(inputName)end
---@param inputName System.String
---@return System.Boolean
function UnityEngine.ProceduralMaterial:IsProceduralPropertyVisible(inputName)end
---@param inputName System.String
---@param value System.Boolean
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralBoolean(inputName, value)end
---@param inputName System.String
---@return System.Single
function UnityEngine.ProceduralMaterial:GetProceduralFloat(inputName)end
---@param inputName System.String
---@param value System.Single
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralFloat(inputName, value)end
---@param inputName System.String
---@return UnityEngine.Vector4
function UnityEngine.ProceduralMaterial:GetProceduralVector(inputName)end
---@param inputName System.String
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralVector(inputName, value)end
---@param inputName System.String
---@return UnityEngine.Color
function UnityEngine.ProceduralMaterial:GetProceduralColor(inputName)end
---@param inputName System.String
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralColor(inputName, value)end
---@param inputName System.String
---@return System.Int32
function UnityEngine.ProceduralMaterial:GetProceduralEnum(inputName)end
---@param inputName System.String
---@param value System.Int32
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralEnum(inputName, value)end
---@param inputName System.String
---@return UnityEngine.Texture2D
function UnityEngine.ProceduralMaterial:GetProceduralTexture(inputName)end
---@param inputName System.String
---@param value UnityEngine.Texture2D
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralTexture(inputName, value)end
---@param inputName System.String
---@return System.String
function UnityEngine.ProceduralMaterial:GetProceduralString(inputName)end
---@param inputName System.String
---@param value System.String
---@return System.Void
function UnityEngine.ProceduralMaterial:SetProceduralString(inputName, value)end
---@param inputName System.String
---@return System.Boolean
function UnityEngine.ProceduralMaterial:IsProceduralPropertyCached(inputName)end
---@param inputName System.String
---@param value System.Boolean
---@return System.Void
function UnityEngine.ProceduralMaterial:CacheProceduralProperty(inputName, value)end
---@return System.Void
function UnityEngine.ProceduralMaterial:ClearCache()end
---@return System.Void
function UnityEngine.ProceduralMaterial:RebuildTextures()end
---@return System.Void
function UnityEngine.ProceduralMaterial:RebuildTexturesImmediately()end
---@return System.Void
function UnityEngine.ProceduralMaterial.StopRebuilds()end
---@return UnityEngine.Texture[]
function UnityEngine.ProceduralMaterial:GetGeneratedTextures()end
---@param textureName System.String
---@return UnityEngine.ProceduralTexture
function UnityEngine.ProceduralMaterial:GetGeneratedTexture(textureName)end
---@return System.Void
function UnityEngine.ProceduralMaterial:FreezeAndReleaseSourceData()end
---@class UnityEngine.ProceduralProcessorUsage : System.Enum
UnityEngine.ProceduralProcessorUsage = {}
---@type UnityEngine.ProceduralProcessorUsage
CS.UnityEngine.ProceduralProcessorUsage = UnityEngine.ProceduralProcessorUsage

---@return System.Int32 value:0
UnityEngine.ProceduralProcessorUsage.Unsupported = 0
---@return System.Int32 value:1
UnityEngine.ProceduralProcessorUsage.One = 1
---@return System.Int32 value:2
UnityEngine.ProceduralProcessorUsage.Half = 2
---@return System.Int32 value:3
UnityEngine.ProceduralProcessorUsage.All = 3

---@class UnityEngine.ProceduralCacheSize : System.Enum
UnityEngine.ProceduralCacheSize = {}
---@type UnityEngine.ProceduralCacheSize
CS.UnityEngine.ProceduralCacheSize = UnityEngine.ProceduralCacheSize

---@return System.Int32 value:0
UnityEngine.ProceduralCacheSize.Tiny = 0
---@return System.Int32 value:1
UnityEngine.ProceduralCacheSize.Medium = 1
---@return System.Int32 value:2
UnityEngine.ProceduralCacheSize.Heavy = 2
---@return System.Int32 value:3
UnityEngine.ProceduralCacheSize.NoLimit = 3
---@return System.Int32 value:4
UnityEngine.ProceduralCacheSize.None = 4

---@class UnityEngine.ProceduralLoadingBehavior : System.Enum
UnityEngine.ProceduralLoadingBehavior = {}
---@type UnityEngine.ProceduralLoadingBehavior
CS.UnityEngine.ProceduralLoadingBehavior = UnityEngine.ProceduralLoadingBehavior

---@return System.Int32 value:0
UnityEngine.ProceduralLoadingBehavior.DoNothing = 0
---@return System.Int32 value:1
UnityEngine.ProceduralLoadingBehavior.Generate = 1
---@return System.Int32 value:2
UnityEngine.ProceduralLoadingBehavior.BakeAndKeep = 2
---@return System.Int32 value:3
UnityEngine.ProceduralLoadingBehavior.BakeAndDiscard = 3
---@return System.Int32 value:4
UnityEngine.ProceduralLoadingBehavior.Cache = 4
---@return System.Int32 value:5
UnityEngine.ProceduralLoadingBehavior.DoNothingAndCache = 5

---@class UnityEngine.ProceduralPropertyType : System.Enum
UnityEngine.ProceduralPropertyType = {}
---@type UnityEngine.ProceduralPropertyType
CS.UnityEngine.ProceduralPropertyType = UnityEngine.ProceduralPropertyType

---@return System.Int32 value:0
UnityEngine.ProceduralPropertyType.Boolean = 0
---@return System.Int32 value:1
UnityEngine.ProceduralPropertyType.Float = 1
---@return System.Int32 value:2
UnityEngine.ProceduralPropertyType.Vector2 = 2
---@return System.Int32 value:3
UnityEngine.ProceduralPropertyType.Vector3 = 3
---@return System.Int32 value:4
UnityEngine.ProceduralPropertyType.Vector4 = 4
---@return System.Int32 value:5
UnityEngine.ProceduralPropertyType.Color3 = 5
---@return System.Int32 value:6
UnityEngine.ProceduralPropertyType.Color4 = 6
---@return System.Int32 value:7
UnityEngine.ProceduralPropertyType.Enum = 7
---@return System.Int32 value:8
UnityEngine.ProceduralPropertyType.Texture = 8
---@return System.Int32 value:9
UnityEngine.ProceduralPropertyType.String = 9

---@class UnityEngine.ProceduralOutputType : System.Enum
UnityEngine.ProceduralOutputType = {}
---@type UnityEngine.ProceduralOutputType
CS.UnityEngine.ProceduralOutputType = UnityEngine.ProceduralOutputType

---@return System.Int32 value:0
UnityEngine.ProceduralOutputType.Unknown = 0
---@return System.Int32 value:1
UnityEngine.ProceduralOutputType.Diffuse = 1
---@return System.Int32 value:2
UnityEngine.ProceduralOutputType.Normal = 2
---@return System.Int32 value:3
UnityEngine.ProceduralOutputType.Height = 3
---@return System.Int32 value:4
UnityEngine.ProceduralOutputType.Emissive = 4
---@return System.Int32 value:5
UnityEngine.ProceduralOutputType.Specular = 5
---@return System.Int32 value:6
UnityEngine.ProceduralOutputType.Opacity = 6
---@return System.Int32 value:7
UnityEngine.ProceduralOutputType.Smoothness = 7
---@return System.Int32 value:8
UnityEngine.ProceduralOutputType.AmbientOcclusion = 8
---@return System.Int32 value:9
UnityEngine.ProceduralOutputType.DetailMask = 9
---@return System.Int32 value:10
UnityEngine.ProceduralOutputType.Metallic = 10
---@return System.Int32 value:11
UnityEngine.ProceduralOutputType.Roughness = 11

---@class UnityEngine.ProceduralPropertyDescription : System.Object
---@field public name System.String
---@field public label System.String
---@field public group System.String
---@field public type UnityEngine.ProceduralPropertyType
---@field public hasRange System.Boolean
---@field public minimum System.Single
---@field public maximum System.Single
---@field public step System.Single
---@field public enumOptions System.String[]
---@field public componentLabels System.String[]
UnityEngine.ProceduralPropertyDescription = {}
---@type UnityEngine.ProceduralPropertyDescription
CS.UnityEngine.ProceduralPropertyDescription = UnityEngine.ProceduralPropertyDescription

---@class UnityEngine.ProceduralTexture : UnityEngine.Texture
---@field public hasAlpha System.Boolean @  getter
---@field public format UnityEngine.TextureFormat @  getter
UnityEngine.ProceduralTexture = {}
---@type UnityEngine.ProceduralTexture
CS.UnityEngine.ProceduralTexture = UnityEngine.ProceduralTexture

---@return UnityEngine.ProceduralOutputType
function UnityEngine.ProceduralTexture:GetProceduralOutputType()end
---@param x System.Int32
---@param y System.Int32
---@param blockWidth System.Int32
---@param blockHeight System.Int32
---@return UnityEngine.Color32[]
function UnityEngine.ProceduralTexture:GetPixels32(x, y, blockWidth, blockHeight)end
---@class UnityEngine.TerrainChangedFlags : System.Enum
UnityEngine.TerrainChangedFlags = {}
---@type UnityEngine.TerrainChangedFlags
CS.UnityEngine.TerrainChangedFlags = UnityEngine.TerrainChangedFlags

---@return System.Int32 value:1
UnityEngine.TerrainChangedFlags.Heightmap = 1
---@return System.Int32 value:2
UnityEngine.TerrainChangedFlags.TreeInstances = 2
---@return System.Int32 value:4
UnityEngine.TerrainChangedFlags.DelayedHeightmapUpdate = 4

---@class UnityEngine.TerrainRenderFlags : System.Enum
UnityEngine.TerrainRenderFlags = {}
---@type UnityEngine.TerrainRenderFlags
CS.UnityEngine.TerrainRenderFlags = UnityEngine.TerrainRenderFlags

---@return System.Int32 value:1
UnityEngine.TerrainRenderFlags.Heightmap = 1
---@return System.Int32 value:2
UnityEngine.TerrainRenderFlags.Trees = 2
---@return System.Int32 value:4
UnityEngine.TerrainRenderFlags.Details = 4
---@return System.Int32 value:7
UnityEngine.TerrainRenderFlags.all = 7

---@class UnityEngine.Terrain : UnityEngine.Behaviour
---@field public terrainData UnityEngine.TerrainData @ setter getter
---@field public treeDistance System.Single @ setter getter
---@field public treeBillboardDistance System.Single @ setter getter
---@field public treeCrossFadeLength System.Single @ setter getter
---@field public treeMaximumFullLODCount System.Int32 @ setter getter
---@field public detailObjectDistance System.Single @ setter getter
---@field public detailObjectDensity System.Single @ setter getter
---@field public heightmapPixelError System.Single @ setter getter
---@field public heightmapMaximumLOD System.Int32 @ setter getter
---@field public basemapDistance System.Single @ setter getter
---@field public splatmapDistance System.Single @ setter getter
---@field public lightmapIndex System.Int32 @ setter getter
---@field public realtimeLightmapIndex System.Int32 @ setter getter
---@field public lightmapScaleOffset UnityEngine.Vector4 @ setter getter
---@field public realtimeLightmapScaleOffset UnityEngine.Vector4 @ setter getter
---@field public freeUnusedRenderingResources System.Boolean @ setter getter
---@field public castShadows System.Boolean @ setter getter
---@field public reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage @ setter getter
---@field public materialType UnityEngine.Terrain.MaterialType @ setter getter
---@field public materialTemplate UnityEngine.Material @ setter getter
---@field public legacySpecular UnityEngine.Color @ setter getter
---@field public legacyShininess System.Single @ setter getter
---@field public drawHeightmap System.Boolean @ setter getter
---@field public allowAutoConnect System.Boolean @ setter getter
---@field public groupingID System.Int32 @ setter getter
---@field public drawInstanced System.Boolean @ setter getter
---@field public normalmapTexture UnityEngine.RenderTexture @  getter
---@field public drawTreesAndFoliage System.Boolean @ setter getter
---@field public patchBoundsMultiplier UnityEngine.Vector3 @ setter getter
---@field public treeLODBiasMultiplier System.Single @ setter getter
---@field public collectDetailPatches System.Boolean @ setter getter
---@field public editorRenderFlags UnityEngine.TerrainRenderFlags @ setter getter
---@field public bakeLightProbesForTrees System.Boolean @ setter getter
---@field public deringLightProbesForTrees System.Boolean @ setter getter
---@field public preserveTreePrototypeLayers System.Boolean @ setter getter
---@field public heightmapTextureFormat UnityEngine.TextureFormat @static  getter
---@field public heightmapRenderTextureFormat UnityEngine.RenderTextureFormat @static  getter
---@field public activeTerrain UnityEngine.Terrain @static  getter
---@field public activeTerrains UnityEngine.Terrain[] @static  getter
---@field public leftNeighbor UnityEngine.Terrain @  getter
---@field public rightNeighbor UnityEngine.Terrain @  getter
---@field public topNeighbor UnityEngine.Terrain @  getter
---@field public bottomNeighbor UnityEngine.Terrain @  getter
UnityEngine.Terrain = {}
---@type UnityEngine.Terrain
CS.UnityEngine.Terrain = UnityEngine.Terrain

---@param result System.Collections.Generic.List
---@return System.Void
function UnityEngine.Terrain:GetClosestReflectionProbes(result)end
---@param worldPosition UnityEngine.Vector3
---@return System.Single
function UnityEngine.Terrain:SampleHeight(worldPosition)end
---@return System.Void
function UnityEngine.Terrain:ApplyDelayedHeightmapModification()end
---@param instance UnityEngine.TreeInstance
---@return System.Void
function UnityEngine.Terrain:AddTreeInstance(instance)end
---@param left UnityEngine.Terrain
---@param top UnityEngine.Terrain
---@param right UnityEngine.Terrain
---@param bottom UnityEngine.Terrain
---@return System.Void
function UnityEngine.Terrain:SetNeighbors(left, top, right, bottom)end
---@return UnityEngine.Vector3
function UnityEngine.Terrain:GetPosition()end
---@return System.Void
function UnityEngine.Terrain:Flush()end
---@param properties UnityEngine.MaterialPropertyBlock
---@return System.Void
function UnityEngine.Terrain:SetSplatMaterialPropertyBlock(properties)end
---@param dest UnityEngine.MaterialPropertyBlock
---@return System.Void
function UnityEngine.Terrain:GetSplatMaterialPropertyBlock(dest)end
---@return System.Void
function UnityEngine.Terrain.SetConnectivityDirty()end
---@param assignTerrain UnityEngine.TerrainData
---@return UnityEngine.GameObject
function UnityEngine.Terrain.CreateTerrainGameObject(assignTerrain)end
---@class UnityEngine.Terrain.MaterialType : System.Enum
UnityEngine.Terrain.MaterialType = {}
---@type UnityEngine.Terrain.MaterialType
CS.UnityEngine.Terrain.MaterialType = UnityEngine.Terrain.MaterialType

---@return System.Int32 value:0
UnityEngine.Terrain.MaterialType.BuiltInStandard = 0
---@return System.Int32 value:1
UnityEngine.Terrain.MaterialType.BuiltInLegacyDiffuse = 1
---@return System.Int32 value:2
UnityEngine.Terrain.MaterialType.BuiltInLegacySpecular = 2
---@return System.Int32 value:3
UnityEngine.Terrain.MaterialType.Custom = 3

---@class UnityEngine.TerrainExtensions : System.Object
UnityEngine.TerrainExtensions = {}
---@type UnityEngine.TerrainExtensions
CS.UnityEngine.TerrainExtensions = UnityEngine.TerrainExtensions

---@class UnityEngine.Tree : UnityEngine.Component
---@field public data UnityEngine.ScriptableObject @ setter getter
---@field public hasSpeedTreeWind System.Boolean @  getter
UnityEngine.Tree = {}
---@type UnityEngine.Tree
CS.UnityEngine.Tree = UnityEngine.Tree

---@class UnityEngine.TreePrototype : System.Object
---@field public prefab UnityEngine.GameObject @ setter getter
---@field public bendFactor System.Single @ setter getter
UnityEngine.TreePrototype = {}
---@type UnityEngine.TreePrototype
CS.UnityEngine.TreePrototype = UnityEngine.TreePrototype

---@param obj System.Object
---@return System.Boolean
function UnityEngine.TreePrototype:Equals(obj)end
---@return System.Int32
function UnityEngine.TreePrototype:GetHashCode()end
---@class UnityEngine.DetailRenderMode : System.Enum
UnityEngine.DetailRenderMode = {}
---@type UnityEngine.DetailRenderMode
CS.UnityEngine.DetailRenderMode = UnityEngine.DetailRenderMode

---@return System.Int32 value:0
UnityEngine.DetailRenderMode.GrassBillboard = 0
---@return System.Int32 value:1
UnityEngine.DetailRenderMode.VertexLit = 1
---@return System.Int32 value:2
UnityEngine.DetailRenderMode.Grass = 2

---@class UnityEngine.DetailPrototype : System.Object
---@field public prototype UnityEngine.GameObject @ setter getter
---@field public prototypeTexture UnityEngine.Texture2D @ setter getter
---@field public minWidth System.Single @ setter getter
---@field public maxWidth System.Single @ setter getter
---@field public minHeight System.Single @ setter getter
---@field public maxHeight System.Single @ setter getter
---@field public noiseSpread System.Single @ setter getter
---@field public bendFactor System.Single @ setter getter
---@field public healthyColor UnityEngine.Color @ setter getter
---@field public dryColor UnityEngine.Color @ setter getter
---@field public renderMode UnityEngine.DetailRenderMode @ setter getter
---@field public usePrototypeMesh System.Boolean @ setter getter
UnityEngine.DetailPrototype = {}
---@type UnityEngine.DetailPrototype
CS.UnityEngine.DetailPrototype = UnityEngine.DetailPrototype

---@param obj System.Object
---@return System.Boolean
function UnityEngine.DetailPrototype:Equals(obj)end
---@return System.Int32
function UnityEngine.DetailPrototype:GetHashCode()end
---@class UnityEngine.SplatPrototype : System.Object
---@field public texture UnityEngine.Texture2D @ setter getter
---@field public normalMap UnityEngine.Texture2D @ setter getter
---@field public tileSize UnityEngine.Vector2 @ setter getter
---@field public tileOffset UnityEngine.Vector2 @ setter getter
---@field public specular UnityEngine.Color @ setter getter
---@field public metallic System.Single @ setter getter
---@field public smoothness System.Single @ setter getter
UnityEngine.SplatPrototype = {}
---@type UnityEngine.SplatPrototype
CS.UnityEngine.SplatPrototype = UnityEngine.SplatPrototype

---@class UnityEngine.TreeInstance : System.ValueType
---@field public position UnityEngine.Vector3
---@field public widthScale System.Single
---@field public heightScale System.Single
---@field public rotation System.Single
---@field public color UnityEngine.Color32
---@field public lightmapColor UnityEngine.Color32
---@field public prototypeIndex System.Int32
UnityEngine.TreeInstance = {}
---@type UnityEngine.TreeInstance
CS.UnityEngine.TreeInstance = UnityEngine.TreeInstance

---@class UnityEngine.PatchExtents : System.ValueType
---@field public min System.Single @ setter getter
---@field public max System.Single @ setter getter
UnityEngine.PatchExtents = {}
---@type UnityEngine.PatchExtents
CS.UnityEngine.PatchExtents = UnityEngine.PatchExtents

---@class UnityEngine.TerrainData : UnityEngine.Object
---@field public heightmapWidth System.Int32 @  getter
---@field public heightmapHeight System.Int32 @  getter
---@field public heightmapTexture UnityEngine.RenderTexture @  getter
---@field public heightmapResolution System.Int32 @ setter getter
---@field public heightmapScale UnityEngine.Vector3 @  getter
---@field public size UnityEngine.Vector3 @ setter getter
---@field public bounds UnityEngine.Bounds @  getter
---@field public thickness System.Single @ setter getter
---@field public wavingGrassStrength System.Single @ setter getter
---@field public wavingGrassAmount System.Single @ setter getter
---@field public wavingGrassSpeed System.Single @ setter getter
---@field public wavingGrassTint UnityEngine.Color @ setter getter
---@field public detailWidth System.Int32 @  getter
---@field public detailHeight System.Int32 @  getter
---@field public detailPatchCount System.Int32 @  getter
---@field public detailResolution System.Int32 @  getter
---@field public detailResolutionPerPatch System.Int32 @  getter
---@field public detailPrototypes UnityEngine.DetailPrototype[] @ setter getter
---@field public treeInstances UnityEngine.TreeInstance[] @ setter getter
---@field public treeInstanceCount System.Int32 @  getter
---@field public treePrototypes UnityEngine.TreePrototype[] @ setter getter
---@field public alphamapLayers System.Int32 @  getter
---@field public alphamapResolution System.Int32 @ setter getter
---@field public alphamapWidth System.Int32 @  getter
---@field public alphamapHeight System.Int32 @  getter
---@field public baseMapResolution System.Int32 @ setter getter
---@field public alphamapTextureCount System.Int32 @  getter
---@field public alphamapTextures UnityEngine.Texture2D[] @  getter
---@field public splatPrototypes UnityEngine.SplatPrototype[] @ setter getter
---@field public terrainLayers UnityEngine.TerrainLayer[] @ setter getter
UnityEngine.TerrainData = {}
---@type UnityEngine.TerrainData
CS.UnityEngine.TerrainData = UnityEngine.TerrainData

---@param x System.Int32
---@param y System.Int32
---@param width System.Int32
---@param height System.Int32
---@param syncHeightmapTextureImmediately System.Boolean
---@return System.Void
function UnityEngine.TerrainData:UpdateDirtyRegion(x, y, width, height, syncHeightmapTextureImmediately)end
---@param x System.Int32
---@param y System.Int32
---@return System.Single
function UnityEngine.TerrainData:GetHeight(x, y)end
---@param x System.Single
---@param y System.Single
---@return System.Single
function UnityEngine.TerrainData:GetInterpolatedHeight(x, y)end
---@param xBase System.Int32
---@param yBase System.Int32
---@param width System.Int32
---@param height System.Int32
---@return System.Single[][]
function UnityEngine.TerrainData:GetHeights(xBase, yBase, width, height)end
---@param xBase System.Int32
---@param yBase System.Int32
---@param heights System.Single[][]
---@return System.Void
function UnityEngine.TerrainData:SetHeights(xBase, yBase, heights)end
---@return UnityEngine.PatchExtents[]
function UnityEngine.TerrainData:GetPatchMinMaxHeights()end
---@param minMaxHeights UnityEngine.PatchExtents[]
---@return System.Void
function UnityEngine.TerrainData:OverrideMinMaxPatchHeights(minMaxHeights)end
---@return System.Single[]
function UnityEngine.TerrainData:GetMaximumHeightError()end
---@param maxError System.Single[]
---@return System.Void
function UnityEngine.TerrainData:OverrideMaximumHeightError(maxError)end
---@param xBase System.Int32
---@param yBase System.Int32
---@param heights System.Single[][]
---@return System.Void
function UnityEngine.TerrainData:SetHeightsDelayLOD(xBase, yBase, heights)end
---@param x System.Single
---@param y System.Single
---@return System.Single
function UnityEngine.TerrainData:GetSteepness(x, y)end
---@param x System.Single
---@param y System.Single
---@return UnityEngine.Vector3
function UnityEngine.TerrainData:GetInterpolatedNormal(x, y)end
---@param detailResolution System.Int32
---@param resolutionPerPatch System.Int32
---@return System.Void
function UnityEngine.TerrainData:SetDetailResolution(detailResolution, resolutionPerPatch)end
---@return System.Void
function UnityEngine.TerrainData:RefreshPrototypes()end
---@param xBase System.Int32
---@param yBase System.Int32
---@param totalWidth System.Int32
---@param totalHeight System.Int32
---@return System.Int32[]
function UnityEngine.TerrainData:GetSupportedLayers(xBase, yBase, totalWidth, totalHeight)end
---@param xBase System.Int32
---@param yBase System.Int32
---@param width System.Int32
---@param height System.Int32
---@param layer System.Int32
---@return System.Int32[][]
function UnityEngine.TerrainData:GetDetailLayer(xBase, yBase, width, height, layer)end
---@param xBase System.Int32
---@param yBase System.Int32
---@param layer System.Int32
---@param details System.Int32[][]
---@return System.Void
function UnityEngine.TerrainData:SetDetailLayer(xBase, yBase, layer, details)end
---@param index System.Int32
---@return UnityEngine.TreeInstance
function UnityEngine.TerrainData:GetTreeInstance(index)end
---@param index System.Int32
---@param instance UnityEngine.TreeInstance
---@return System.Void
function UnityEngine.TerrainData:SetTreeInstance(index, instance)end
---@param x System.Int32
---@param y System.Int32
---@param width System.Int32
---@param height System.Int32
---@return System.Single[][][]
function UnityEngine.TerrainData:GetAlphamaps(x, y, width, height)end
---@param x System.Int32
---@param y System.Int32
---@param map System.Single[][][]
---@return System.Void
function UnityEngine.TerrainData:SetAlphamaps(x, y, map)end
---@return System.Void
function UnityEngine.TerrainData:SetBaseMapDirty()end
---@param index System.Int32
---@return UnityEngine.Texture2D
function UnityEngine.TerrainData:GetAlphamapTexture(index)end
---@class UnityEngine.TerrainLayer : UnityEngine.Object
---@field public diffuseTexture UnityEngine.Texture2D @ setter getter
---@field public normalMapTexture UnityEngine.Texture2D @ setter getter
---@field public maskMapTexture UnityEngine.Texture2D @ setter getter
---@field public tileSize UnityEngine.Vector2 @ setter getter
---@field public tileOffset UnityEngine.Vector2 @ setter getter
---@field public specular UnityEngine.Color @ setter getter
---@field public metallic System.Single @ setter getter
---@field public smoothness System.Single @ setter getter
---@field public normalScale System.Single @ setter getter
---@field public diffuseRemapMin UnityEngine.Vector4 @ setter getter
---@field public diffuseRemapMax UnityEngine.Vector4 @ setter getter
---@field public maskMapRemapMin UnityEngine.Vector4 @ setter getter
---@field public maskMapRemapMax UnityEngine.Vector4 @ setter getter
UnityEngine.TerrainLayer = {}
---@type UnityEngine.TerrainLayer
CS.UnityEngine.TerrainLayer = UnityEngine.TerrainLayer

---@class UnityEngine.TerrainCollider : UnityEngine.Collider
---@field public terrainData UnityEngine.TerrainData @ setter getter
UnityEngine.TerrainCollider = {}
---@type UnityEngine.TerrainCollider
CS.UnityEngine.TerrainCollider = UnityEngine.TerrainCollider

---@class UnityEngine.FontStyle : System.Enum
UnityEngine.FontStyle = {}
---@type UnityEngine.FontStyle
CS.UnityEngine.FontStyle = UnityEngine.FontStyle

---@return System.Int32 value:0
UnityEngine.FontStyle.Normal = 0
---@return System.Int32 value:1
UnityEngine.FontStyle.Bold = 1
---@return System.Int32 value:2
UnityEngine.FontStyle.Italic = 2
---@return System.Int32 value:3
UnityEngine.FontStyle.BoldAndItalic = 3

---@class UnityEngine.TextGenerationSettings : System.ValueType
---@field public font UnityEngine.Font
---@field public color UnityEngine.Color
---@field public fontSize System.Int32
---@field public lineSpacing System.Single
---@field public richText System.Boolean
---@field public scaleFactor System.Single
---@field public fontStyle UnityEngine.FontStyle
---@field public textAnchor UnityEngine.TextAnchor
---@field public alignByGeometry System.Boolean
---@field public resizeTextForBestFit System.Boolean
---@field public resizeTextMinSize System.Int32
---@field public resizeTextMaxSize System.Int32
---@field public updateBounds System.Boolean
---@field public verticalOverflow UnityEngine.VerticalWrapMode
---@field public horizontalOverflow UnityEngine.HorizontalWrapMode
---@field public generationExtents UnityEngine.Vector2
---@field public pivot UnityEngine.Vector2
---@field public generateOutOfBounds System.Boolean
UnityEngine.TextGenerationSettings = {}
---@type UnityEngine.TextGenerationSettings
CS.UnityEngine.TextGenerationSettings = UnityEngine.TextGenerationSettings

---@param other UnityEngine.TextGenerationSettings
---@return System.Boolean
function UnityEngine.TextGenerationSettings:Equals(other)end
---@class UnityEngine.TextGenerator : System.Object
---@field public characterCountVisible System.Int32 @  getter
---@field public verts System.Collections.Generic.IList @  getter
---@field public characters System.Collections.Generic.IList @  getter
---@field public lines System.Collections.Generic.IList @  getter
---@field public rectExtents UnityEngine.Rect @  getter
---@field public vertexCount System.Int32 @  getter
---@field public characterCount System.Int32 @  getter
---@field public lineCount System.Int32 @  getter
---@field public fontSizeUsedForBestFit System.Int32 @  getter
UnityEngine.TextGenerator = {}
---@type UnityEngine.TextGenerator
CS.UnityEngine.TextGenerator = UnityEngine.TextGenerator

---@return System.Void
function UnityEngine.TextGenerator:Invalidate()end
---@param characters System.Collections.Generic.List
---@return System.Void
function UnityEngine.TextGenerator:GetCharacters(characters)end
---@param lines System.Collections.Generic.List
---@return System.Void
function UnityEngine.TextGenerator:GetLines(lines)end
---@param vertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.TextGenerator:GetVertices(vertices)end
---@param str System.String
---@param settings UnityEngine.TextGenerationSettings
---@return System.Single
function UnityEngine.TextGenerator:GetPreferredWidth(str, settings)end
---@param str System.String
---@param settings UnityEngine.TextGenerationSettings
---@return System.Single
function UnityEngine.TextGenerator:GetPreferredHeight(str, settings)end
---@param str System.String
---@param settings UnityEngine.TextGenerationSettings
---@param context UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.TextGenerator:PopulateWithErrors(str, settings, context)end
---@param str System.String
---@param settings UnityEngine.TextGenerationSettings
---@return System.Boolean
function UnityEngine.TextGenerator:Populate(str, settings)end
---@return UnityEngine.UIVertex[]
function UnityEngine.TextGenerator:GetVerticesArray()end
---@return UnityEngine.UICharInfo[]
function UnityEngine.TextGenerator:GetCharactersArray()end
---@return UnityEngine.UILineInfo[]
function UnityEngine.TextGenerator:GetLinesArray()end
---@class UnityEngine.TextAlignment : System.Enum
UnityEngine.TextAlignment = {}
---@type UnityEngine.TextAlignment
CS.UnityEngine.TextAlignment = UnityEngine.TextAlignment

---@return System.Int32 value:0
UnityEngine.TextAlignment.Left = 0
---@return System.Int32 value:1
UnityEngine.TextAlignment.Center = 1
---@return System.Int32 value:2
UnityEngine.TextAlignment.Right = 2

---@class UnityEngine.TextAnchor : System.Enum
UnityEngine.TextAnchor = {}
---@type UnityEngine.TextAnchor
CS.UnityEngine.TextAnchor = UnityEngine.TextAnchor

---@return System.Int32 value:0
UnityEngine.TextAnchor.UpperLeft = 0
---@return System.Int32 value:1
UnityEngine.TextAnchor.UpperCenter = 1
---@return System.Int32 value:2
UnityEngine.TextAnchor.UpperRight = 2
---@return System.Int32 value:3
UnityEngine.TextAnchor.MiddleLeft = 3
---@return System.Int32 value:4
UnityEngine.TextAnchor.MiddleCenter = 4
---@return System.Int32 value:5
UnityEngine.TextAnchor.MiddleRight = 5
---@return System.Int32 value:6
UnityEngine.TextAnchor.LowerLeft = 6
---@return System.Int32 value:7
UnityEngine.TextAnchor.LowerCenter = 7
---@return System.Int32 value:8
UnityEngine.TextAnchor.LowerRight = 8

---@class UnityEngine.HorizontalWrapMode : System.Enum
UnityEngine.HorizontalWrapMode = {}
---@type UnityEngine.HorizontalWrapMode
CS.UnityEngine.HorizontalWrapMode = UnityEngine.HorizontalWrapMode

---@return System.Int32 value:0
UnityEngine.HorizontalWrapMode.Wrap = 0
---@return System.Int32 value:1
UnityEngine.HorizontalWrapMode.Overflow = 1

---@class UnityEngine.VerticalWrapMode : System.Enum
UnityEngine.VerticalWrapMode = {}
---@type UnityEngine.VerticalWrapMode
CS.UnityEngine.VerticalWrapMode = UnityEngine.VerticalWrapMode

---@return System.Int32 value:0
UnityEngine.VerticalWrapMode.Truncate = 0
---@return System.Int32 value:1
UnityEngine.VerticalWrapMode.Overflow = 1

---@class UnityEngine.GUIText : UnityEngine.GUIElement
---@field public text System.String @ setter getter
---@field public material UnityEngine.Material @ setter getter
---@field public font UnityEngine.Font @ setter getter
---@field public alignment UnityEngine.TextAlignment @ setter getter
---@field public anchor UnityEngine.TextAnchor @ setter getter
---@field public lineSpacing System.Single @ setter getter
---@field public tabSize System.Single @ setter getter
---@field public fontSize System.Int32 @ setter getter
---@field public fontStyle UnityEngine.FontStyle @ setter getter
---@field public richText System.Boolean @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public pixelOffset UnityEngine.Vector2 @ setter getter
UnityEngine.GUIText = {}
---@type UnityEngine.GUIText
CS.UnityEngine.GUIText = UnityEngine.GUIText

---@class UnityEngine.TextMesh : UnityEngine.Component
---@field public text System.String @ setter getter
---@field public font UnityEngine.Font @ setter getter
---@field public fontSize System.Int32 @ setter getter
---@field public fontStyle UnityEngine.FontStyle @ setter getter
---@field public offsetZ System.Single @ setter getter
---@field public alignment UnityEngine.TextAlignment @ setter getter
---@field public anchor UnityEngine.TextAnchor @ setter getter
---@field public characterSize System.Single @ setter getter
---@field public lineSpacing System.Single @ setter getter
---@field public tabSize System.Single @ setter getter
---@field public richText System.Boolean @ setter getter
---@field public color UnityEngine.Color @ setter getter
UnityEngine.TextMesh = {}
---@type UnityEngine.TextMesh
CS.UnityEngine.TextMesh = UnityEngine.TextMesh

---@class UnityEngine.CharacterInfo : System.ValueType
---@field public advance System.Int32 @ setter getter
---@field public glyphWidth System.Int32 @ setter getter
---@field public glyphHeight System.Int32 @ setter getter
---@field public bearing System.Int32 @ setter getter
---@field public minY System.Int32 @ setter getter
---@field public maxY System.Int32 @ setter getter
---@field public minX System.Int32 @ setter getter
---@field public maxX System.Int32 @ setter getter
---@field public uvBottomLeft UnityEngine.Vector2 @ setter getter
---@field public uvBottomRight UnityEngine.Vector2 @ setter getter
---@field public uvTopRight UnityEngine.Vector2 @ setter getter
---@field public uvTopLeft UnityEngine.Vector2 @ setter getter
---@field public index System.Int32
---@field public uv UnityEngine.Rect
---@field public vert UnityEngine.Rect
---@field public width System.Single
---@field public size System.Int32
---@field public style UnityEngine.FontStyle
---@field public flipped System.Boolean
UnityEngine.CharacterInfo = {}
---@type UnityEngine.CharacterInfo
CS.UnityEngine.CharacterInfo = UnityEngine.CharacterInfo

---@class UnityEngine.UICharInfo : System.ValueType
---@field public cursorPos UnityEngine.Vector2
---@field public charWidth System.Single
UnityEngine.UICharInfo = {}
---@type UnityEngine.UICharInfo
CS.UnityEngine.UICharInfo = UnityEngine.UICharInfo

---@class UnityEngine.UILineInfo : System.ValueType
---@field public startCharIdx System.Int32
---@field public height System.Int32
---@field public topY System.Single
---@field public leading System.Single
UnityEngine.UILineInfo = {}
---@type UnityEngine.UILineInfo
CS.UnityEngine.UILineInfo = UnityEngine.UILineInfo

---@class UnityEngine.UIVertex : System.ValueType
---@field public position UnityEngine.Vector3
---@field public normal UnityEngine.Vector3
---@field public tangent UnityEngine.Vector4
---@field public color UnityEngine.Color32
---@field public uv0 UnityEngine.Vector2
---@field public uv1 UnityEngine.Vector2
---@field public uv2 UnityEngine.Vector2
---@field public uv3 UnityEngine.Vector2
---@field public simpleVert UnityEngine.UIVertex
UnityEngine.UIVertex = {}
---@type UnityEngine.UIVertex
CS.UnityEngine.UIVertex = UnityEngine.UIVertex

---@class UnityEngine.Font : UnityEngine.Object
---@field public material UnityEngine.Material @ setter getter
---@field public fontNames System.String[] @ setter getter
---@field public dynamic System.Boolean @  getter
---@field public ascent System.Int32 @  getter
---@field public fontSize System.Int32 @  getter
---@field public characterInfo UnityEngine.CharacterInfo[] @ setter getter
---@field public lineHeight System.Int32 @  getter
---@field public textureRebuildCallback UnityEngine.Font.FontTextureRebuildCallback @ setter getter
UnityEngine.Font = {}
---@type UnityEngine.Font
CS.UnityEngine.Font = UnityEngine.Font

---@param value System.Action
---@return System.Void
function UnityEngine.Font.add_textureRebuilt(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Font.remove_textureRebuilt(value)end
---@overload fun(fontnames:System.String[], size:System.Int32):UnityEngine.Font
---@param fontname System.String
---@param size System.Int32
---@return UnityEngine.Font
function UnityEngine.Font.CreateDynamicFontFromOSFont(fontname, size)end
---@param str System.String
---@return System.Int32
function UnityEngine.Font.GetMaxVertsForString(str)end
---@param c System.Char
---@return System.Boolean
function UnityEngine.Font:HasCharacter(c)end
---@return System.String[]
function UnityEngine.Font.GetOSInstalledFontNames()end
---@return System.String[]
function UnityEngine.Font.GetPathsToOSFonts()end
---@overload fun(ch:System.Char, info:UnityEngine.CharacterInfo, size:System.Int32):System.Boolean
---@overload fun(ch:System.Char, info:UnityEngine.CharacterInfo, size:System.Int32, style:UnityEngine.FontStyle):System.Boolean
---@param ch System.Char
---@param info UnityEngine.CharacterInfo
---@return System.Boolean
function UnityEngine.Font:GetCharacterInfo(ch, info)end
---@overload fun(characters:System.String, size:System.Int32):System.Void
---@overload fun(characters:System.String, size:System.Int32, style:UnityEngine.FontStyle):System.Void
---@param characters System.String
---@return System.Void
function UnityEngine.Font:RequestCharactersInTexture(characters)end
---@class UnityEngine.CustomGridBrushAttribute : System.Attribute
---@field public hideAssetInstances System.Boolean @  getter
---@field public hideDefaultInstance System.Boolean @  getter
---@field public defaultBrush System.Boolean @  getter
---@field public defaultName System.String @  getter
UnityEngine.CustomGridBrushAttribute = {}
---@type UnityEngine.CustomGridBrushAttribute
CS.UnityEngine.CustomGridBrushAttribute = UnityEngine.CustomGridBrushAttribute

---@class UnityEngine.GridBrushBase : UnityEngine.ScriptableObject
UnityEngine.GridBrushBase = {}
---@type UnityEngine.GridBrushBase
CS.UnityEngine.GridBrushBase = UnityEngine.GridBrushBase

---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.GridBrushBase:Paint(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.GridBrushBase:Erase(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:BoxFill(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:BoxErase(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:Select(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.GridBrushBase:FloodFill(gridLayout, brushTarget, position)end
---@param direction UnityEngine.GridBrushBase.RotationDirection
---@param layout UnityEngine.GridLayout.CellLayout
---@return System.Void
function UnityEngine.GridBrushBase:Rotate(direction, layout)end
---@param flip UnityEngine.GridBrushBase.FlipAxis
---@param layout UnityEngine.GridLayout.CellLayout
---@return System.Void
function UnityEngine.GridBrushBase:Flip(flip, layout)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@param pivot UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.GridBrushBase:Pick(gridLayout, brushTarget, position, pivot)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param from UnityEngine.BoundsInt
---@param to UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:Move(gridLayout, brushTarget, from, to)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:MoveStart(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEngine.GridBrushBase:MoveEnd(gridLayout, brushTarget, position)end
---@param change System.Int32
---@return System.Void
function UnityEngine.GridBrushBase:ChangeZPosition(change)end
---@return System.Void
function UnityEngine.GridBrushBase:ResetZPosition()end
---@class UnityEngine.GridBrushBase.Tool : System.Enum
UnityEngine.GridBrushBase.Tool = {}
---@type UnityEngine.GridBrushBase.Tool
CS.UnityEngine.GridBrushBase.Tool = UnityEngine.GridBrushBase.Tool

---@return System.Int32 value:0
UnityEngine.GridBrushBase.Tool.Select = 0
---@return System.Int32 value:1
UnityEngine.GridBrushBase.Tool.Move = 1
---@return System.Int32 value:2
UnityEngine.GridBrushBase.Tool.Paint = 2
---@return System.Int32 value:3
UnityEngine.GridBrushBase.Tool.Box = 3
---@return System.Int32 value:4
UnityEngine.GridBrushBase.Tool.Pick = 4
---@return System.Int32 value:5
UnityEngine.GridBrushBase.Tool.Erase = 5
---@return System.Int32 value:6
UnityEngine.GridBrushBase.Tool.FloodFill = 6

---@class UnityEngine.GridBrushBase.RotationDirection : System.Enum
UnityEngine.GridBrushBase.RotationDirection = {}
---@type UnityEngine.GridBrushBase.RotationDirection
CS.UnityEngine.GridBrushBase.RotationDirection = UnityEngine.GridBrushBase.RotationDirection

---@return System.Int32 value:0
UnityEngine.GridBrushBase.RotationDirection.Clockwise = 0
---@return System.Int32 value:1
UnityEngine.GridBrushBase.RotationDirection.CounterClockwise = 1

---@class UnityEngine.GridBrushBase.FlipAxis : System.Enum
UnityEngine.GridBrushBase.FlipAxis = {}
---@type UnityEngine.GridBrushBase.FlipAxis
CS.UnityEngine.GridBrushBase.FlipAxis = UnityEngine.GridBrushBase.FlipAxis

---@return System.Int32 value:0
UnityEngine.GridBrushBase.FlipAxis.X = 0
---@return System.Int32 value:1
UnityEngine.GridBrushBase.FlipAxis.Y = 1

---@class UnityEngine.RenderMode : System.Enum
UnityEngine.RenderMode = {}
---@type UnityEngine.RenderMode
CS.UnityEngine.RenderMode = UnityEngine.RenderMode

---@return System.Int32 value:0
UnityEngine.RenderMode.ScreenSpaceOverlay = 0
---@return System.Int32 value:1
UnityEngine.RenderMode.ScreenSpaceCamera = 1
---@return System.Int32 value:2
UnityEngine.RenderMode.WorldSpace = 2

---@class UnityEngine.AdditionalCanvasShaderChannels : System.Enum
UnityEngine.AdditionalCanvasShaderChannels = {}
---@type UnityEngine.AdditionalCanvasShaderChannels
CS.UnityEngine.AdditionalCanvasShaderChannels = UnityEngine.AdditionalCanvasShaderChannels

---@return System.Int32 value:0
UnityEngine.AdditionalCanvasShaderChannels.None = 0
---@return System.Int32 value:1
UnityEngine.AdditionalCanvasShaderChannels.TexCoord1 = 1
---@return System.Int32 value:2
UnityEngine.AdditionalCanvasShaderChannels.TexCoord2 = 2
---@return System.Int32 value:4
UnityEngine.AdditionalCanvasShaderChannels.TexCoord3 = 4

---@class UnityEngine.Canvas : UnityEngine.Behaviour
---@field public renderMode UnityEngine.RenderMode @ setter getter
---@field public isRootCanvas System.Boolean @  getter
---@field public pixelRect UnityEngine.Rect @  getter
---@field public scaleFactor System.Single @ setter getter
---@field public referencePixelsPerUnit System.Single @ setter getter
---@field public overridePixelPerfect System.Boolean @ setter getter
---@field public pixelPerfect System.Boolean @ setter getter
---@field public planeDistance System.Single @ setter getter
---@field public renderOrder System.Int32 @  getter
---@field public overrideSorting System.Boolean @ setter getter
---@field public sortingOrder System.Int32 @ setter getter
---@field public targetDisplay System.Int32 @ setter getter
---@field public sortingLayerID System.Int32 @ setter getter
---@field public cachedSortingLayerValue System.Int32 @  getter
---@field public additionalShaderChannels UnityEngine.AdditionalCanvasShaderChannels @ setter getter
---@field public sortingLayerName System.String @ setter getter
---@field public rootCanvas UnityEngine.Canvas @  getter
---@field public worldCamera UnityEngine.Camera @ setter getter
---@field public normalizedSortingGridSize System.Single @ setter getter
---@field public sortingGridNormalizedSize System.Int32 @ setter getter
UnityEngine.Canvas = {}
---@type UnityEngine.Canvas
CS.UnityEngine.Canvas = UnityEngine.Canvas

---@param value UnityEngine.Canvas.WillRenderCanvases
---@return System.Void
function UnityEngine.Canvas.add_willRenderCanvases(value)end
---@param value UnityEngine.Canvas.WillRenderCanvases
---@return System.Void
function UnityEngine.Canvas.remove_willRenderCanvases(value)end
---@return UnityEngine.Material
function UnityEngine.Canvas.GetDefaultCanvasTextMaterial()end
---@return UnityEngine.Material
function UnityEngine.Canvas.GetDefaultCanvasMaterial()end
---@return UnityEngine.Material
function UnityEngine.Canvas.GetETC1SupportedCanvasMaterial()end
---@return System.Void
function UnityEngine.Canvas.ForceUpdateCanvases()end
---@class UnityEngine.UISystemProfilerApi : System.Object
UnityEngine.UISystemProfilerApi = {}
---@type UnityEngine.UISystemProfilerApi
CS.UnityEngine.UISystemProfilerApi = UnityEngine.UISystemProfilerApi

---@param type UnityEngine.UISystemProfilerApi.SampleType
---@return System.Void
function UnityEngine.UISystemProfilerApi.BeginSample(type)end
---@param type UnityEngine.UISystemProfilerApi.SampleType
---@return System.Void
function UnityEngine.UISystemProfilerApi.EndSample(type)end
---@param name System.String
---@param obj UnityEngine.Object
---@return System.Void
function UnityEngine.UISystemProfilerApi.AddMarker(name, obj)end
---@class UnityEngine.UISystemProfilerApi.SampleType : System.Enum
UnityEngine.UISystemProfilerApi.SampleType = {}
---@type UnityEngine.UISystemProfilerApi.SampleType
CS.UnityEngine.UISystemProfilerApi.SampleType = UnityEngine.UISystemProfilerApi.SampleType

---@return System.Int32 value:0
UnityEngine.UISystemProfilerApi.SampleType.Layout = 0
---@return System.Int32 value:1
UnityEngine.UISystemProfilerApi.SampleType.Render = 1

---@class UnityEngine.CanvasGroup : UnityEngine.Behaviour
---@field public alpha System.Single @ setter getter
---@field public interactable System.Boolean @ setter getter
---@field public blocksRaycasts System.Boolean @ setter getter
---@field public ignoreParentGroups System.Boolean @ setter getter
UnityEngine.CanvasGroup = {}
---@type UnityEngine.CanvasGroup
CS.UnityEngine.CanvasGroup = UnityEngine.CanvasGroup

---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return System.Boolean
function UnityEngine.CanvasGroup:IsRaycastLocationValid(sp, eventCamera)end
---@class UnityEngine.CanvasRenderer : UnityEngine.Component
---@field public hasPopInstruction System.Boolean @ setter getter
---@field public materialCount System.Int32 @ setter getter
---@field public popMaterialCount System.Int32 @ setter getter
---@field public absoluteDepth System.Int32 @  getter
---@field public hasMoved System.Boolean @  getter
---@field public cullTransparentMesh System.Boolean @ setter getter
---@field public hasRectClipping System.Boolean @  getter
---@field public relativeDepth System.Int32 @  getter
---@field public cull System.Boolean @ setter getter
---@field public isMask System.Boolean @ setter getter
UnityEngine.CanvasRenderer = {}
---@type UnityEngine.CanvasRenderer
CS.UnityEngine.CanvasRenderer = UnityEngine.CanvasRenderer

---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.CanvasRenderer:SetColor(color)end
---@return UnityEngine.Color
function UnityEngine.CanvasRenderer:GetColor()end
---@param rect UnityEngine.Rect
---@return System.Void
function UnityEngine.CanvasRenderer:EnableRectClipping(rect)end
---@return System.Void
function UnityEngine.CanvasRenderer:DisableRectClipping()end
---@overload fun(material:UnityEngine.Material, texture:UnityEngine.Texture):System.Void
---@param material UnityEngine.Material
---@param index System.Int32
---@return System.Void
function UnityEngine.CanvasRenderer:SetMaterial(material, index)end
---@overload fun(index:System.Int32):UnityEngine.Material
---@return UnityEngine.Material
function UnityEngine.CanvasRenderer:GetMaterial()end
---@param material UnityEngine.Material
---@param index System.Int32
---@return System.Void
function UnityEngine.CanvasRenderer:SetPopMaterial(material, index)end
---@param index System.Int32
---@return UnityEngine.Material
function UnityEngine.CanvasRenderer:GetPopMaterial(index)end
---@param texture UnityEngine.Texture
---@return System.Void
function UnityEngine.CanvasRenderer:SetTexture(texture)end
---@param texture UnityEngine.Texture
---@return System.Void
function UnityEngine.CanvasRenderer:SetAlphaTexture(texture)end
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.CanvasRenderer:SetMesh(mesh)end
---@return System.Void
function UnityEngine.CanvasRenderer:Clear()end
---@return System.Single
function UnityEngine.CanvasRenderer:GetAlpha()end
---@param alpha System.Single
---@return System.Void
function UnityEngine.CanvasRenderer:SetAlpha(alpha)end
---@return System.Single
function UnityEngine.CanvasRenderer:GetInheritedAlpha()end
---@overload fun(verts:System.Collections.Generic.List, positions:System.Collections.Generic.List, colors:System.Collections.Generic.List, uv0S:System.Collections.Generic.List, uv1S:System.Collections.Generic.List, uv2S:System.Collections.Generic.List, uv3S:System.Collections.Generic.List, normals:System.Collections.Generic.List, tangents:System.Collections.Generic.List, indices:System.Collections.Generic.List):System.Void
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.CanvasRenderer.SplitUIVertexStreams(verts, positions, colors, uv0S, uv1S, normals, tangents, indices)end
---@overload fun(verts:System.Collections.Generic.List, positions:System.Collections.Generic.List, colors:System.Collections.Generic.List, uv0S:System.Collections.Generic.List, uv1S:System.Collections.Generic.List, uv2S:System.Collections.Generic.List, uv3S:System.Collections.Generic.List, normals:System.Collections.Generic.List, tangents:System.Collections.Generic.List, indices:System.Collections.Generic.List):System.Void
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.CanvasRenderer.CreateUIVertexStream(verts, positions, colors, uv0S, uv1S, normals, tangents, indices)end
---@overload fun(verts:System.Collections.Generic.List, positions:System.Collections.Generic.List, colors:System.Collections.Generic.List, uv0S:System.Collections.Generic.List, uv1S:System.Collections.Generic.List, uv2S:System.Collections.Generic.List, uv3S:System.Collections.Generic.List, normals:System.Collections.Generic.List, tangents:System.Collections.Generic.List):System.Void
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
---@return System.Void
function UnityEngine.CanvasRenderer.AddUIVertexStream(verts, positions, colors, uv0S, uv1S, normals, tangents)end
---@overload fun(vertices:UnityEngine.UIVertex[], size:System.Int32):System.Void
---@param vertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.CanvasRenderer:SetVertices(vertices)end
---@param value UnityEngine.CanvasRenderer.OnRequestRebuild
---@return System.Void
function UnityEngine.CanvasRenderer.add_onRequestRebuild(value)end
---@param value UnityEngine.CanvasRenderer.OnRequestRebuild
---@return System.Void
function UnityEngine.CanvasRenderer.remove_onRequestRebuild(value)end
---@class UnityEngine.RectTransformUtility : System.Object
UnityEngine.RectTransformUtility = {}
---@type UnityEngine.RectTransformUtility
CS.UnityEngine.RectTransformUtility = UnityEngine.RectTransformUtility

---@overload fun(rect:UnityEngine.RectTransform, screenPoint:UnityEngine.Vector2, cam:UnityEngine.Camera):System.Boolean
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.RectTransformUtility.RectangleContainsScreenPoint(rect, screenPoint)end
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@param cam UnityEngine.Camera
---@param worldPoint UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.RectTransformUtility.ScreenPointToWorldPointInRectangle(rect, screenPoint, cam, worldPoint)end
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@param cam UnityEngine.Camera
---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.RectTransformUtility.ScreenPointToLocalPointInRectangle(rect, screenPoint, cam, localPoint)end
---@param cam UnityEngine.Camera
---@param screenPos UnityEngine.Vector2
---@return UnityEngine.Ray
function UnityEngine.RectTransformUtility.ScreenPointToRay(cam, screenPos)end
---@param cam UnityEngine.Camera
---@param worldPoint UnityEngine.Vector3
---@return UnityEngine.Vector2
function UnityEngine.RectTransformUtility.WorldToScreenPoint(cam, worldPoint)end
---@overload fun(root:UnityEngine.Transform, child:UnityEngine.Transform):UnityEngine.Bounds
---@param trans UnityEngine.Transform
---@return UnityEngine.Bounds
function UnityEngine.RectTransformUtility.CalculateRelativeRectTransformBounds(trans)end
---@param rect UnityEngine.RectTransform
---@param axis System.Int32
---@param keepPositioning System.Boolean
---@param recursive System.Boolean
---@return System.Void
function UnityEngine.RectTransformUtility.FlipLayoutOnAxis(rect, axis, keepPositioning, recursive)end
---@param rect UnityEngine.RectTransform
---@param keepPositioning System.Boolean
---@param recursive System.Boolean
---@return System.Void
function UnityEngine.RectTransformUtility.FlipLayoutAxes(rect, keepPositioning, recursive)end
---@param point UnityEngine.Vector2
---@param elementTransform UnityEngine.Transform
---@param canvas UnityEngine.Canvas
---@return UnityEngine.Vector2
function UnityEngine.RectTransformUtility.PixelAdjustPoint(point, elementTransform, canvas)end
---@param rectTransform UnityEngine.RectTransform
---@param canvas UnityEngine.Canvas
---@return UnityEngine.Rect
function UnityEngine.RectTransformUtility.PixelAdjustRect(rectTransform, canvas)end
---@class UnityEngine.RemoteSettings : System.Object
UnityEngine.RemoteSettings = {}
---@type UnityEngine.RemoteSettings
CS.UnityEngine.RemoteSettings = UnityEngine.RemoteSettings

---@param value UnityEngine.RemoteSettings.UpdatedEventHandler
---@return System.Void
function UnityEngine.RemoteSettings.add_Updated(value)end
---@param value UnityEngine.RemoteSettings.UpdatedEventHandler
---@return System.Void
function UnityEngine.RemoteSettings.remove_Updated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.RemoteSettings.add_BeforeFetchFromServer(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.RemoteSettings.remove_BeforeFetchFromServer(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.RemoteSettings.add_Completed(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.RemoteSettings.remove_Completed(value)end
---@return System.Void
function UnityEngine.RemoteSettings.CallOnUpdate()end
---@return System.Void
function UnityEngine.RemoteSettings.ForceUpdate()end
---@return System.Boolean
function UnityEngine.RemoteSettings.WasLastUpdatedFromServer()end
---@overload fun(key:System.String, defaultValue:System.Int32):System.Int32
---@param key System.String
---@return System.Int32
function UnityEngine.RemoteSettings.GetInt(key)end
---@overload fun(key:System.String, defaultValue:System.Int64):System.Int64
---@param key System.String
---@return System.Int64
function UnityEngine.RemoteSettings.GetLong(key)end
---@overload fun(key:System.String, defaultValue:System.Single):System.Single
---@param key System.String
---@return System.Single
function UnityEngine.RemoteSettings.GetFloat(key)end
---@overload fun(key:System.String, defaultValue:System.String):System.String
---@param key System.String
---@return System.String
function UnityEngine.RemoteSettings.GetString(key)end
---@overload fun(key:System.String, defaultValue:System.Boolean):System.Boolean
---@param key System.String
---@return System.Boolean
function UnityEngine.RemoteSettings.GetBool(key)end
---@param key System.String
---@return System.Boolean
function UnityEngine.RemoteSettings.HasKey(key)end
---@return System.Int32
function UnityEngine.RemoteSettings.GetCount()end
---@return System.String[]
function UnityEngine.RemoteSettings.GetKeys()end
---@class UnityEngine.RemoteConfigSettings : System.Object
UnityEngine.RemoteConfigSettings = {}
---@type UnityEngine.RemoteConfigSettings
CS.UnityEngine.RemoteConfigSettings = UnityEngine.RemoteConfigSettings

---@param value System.Action
---@return System.Void
function UnityEngine.RemoteConfigSettings:add_Updated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.RemoteConfigSettings:remove_Updated(value)end
---@return System.Void
function UnityEngine.RemoteConfigSettings:Dispose()end
---@overload fun(name:System.String, param:System.Object, ver:System.Int32):System.Boolean
---@overload fun(name:System.String, param:System.Object):System.Boolean
---@param name System.String
---@param param System.Object
---@param ver System.Int32
---@param prefix System.String
---@return System.Boolean
function UnityEngine.RemoteConfigSettings.QueueConfig(name, param, ver, prefix)end
---@return System.Boolean
function UnityEngine.RemoteConfigSettings.SendDeviceInfoInConfigRequest()end
---@return System.Void
function UnityEngine.RemoteConfigSettings:ForceUpdate()end
---@return System.Boolean
function UnityEngine.RemoteConfigSettings:WasLastUpdatedFromServer()end
---@overload fun(key:System.String, defaultValue:System.Int32):System.Int32
---@param key System.String
---@return System.Int32
function UnityEngine.RemoteConfigSettings:GetInt(key)end
---@overload fun(key:System.String, defaultValue:System.Int64):System.Int64
---@param key System.String
---@return System.Int64
function UnityEngine.RemoteConfigSettings:GetLong(key)end
---@overload fun(key:System.String, defaultValue:System.Single):System.Single
---@param key System.String
---@return System.Single
function UnityEngine.RemoteConfigSettings:GetFloat(key)end
---@overload fun(key:System.String, defaultValue:System.String):System.String
---@param key System.String
---@return System.String
function UnityEngine.RemoteConfigSettings:GetString(key)end
---@overload fun(key:System.String, defaultValue:System.Boolean):System.Boolean
---@param key System.String
---@return System.Boolean
function UnityEngine.RemoteConfigSettings:GetBool(key)end
---@param key System.String
---@return System.Boolean
function UnityEngine.RemoteConfigSettings:HasKey(key)end
---@return System.Int32
function UnityEngine.RemoteConfigSettings:GetCount()end
---@return System.String[]
function UnityEngine.RemoteConfigSettings:GetKeys()end
---@class UnityEngine.WWWForm : System.Object
---@field public headers System.Collections.Generic.Dictionary @  getter
---@field public data System.Byte[] @  getter
UnityEngine.WWWForm = {}
---@type UnityEngine.WWWForm
CS.UnityEngine.WWWForm = UnityEngine.WWWForm

---@overload fun(fieldName:System.String, value:System.String):System.Void
---@overload fun(fieldName:System.String, value:System.String, e:System.Text.Encoding):System.Void
---@param fieldName System.String
---@param i System.Int32
---@return System.Void
function UnityEngine.WWWForm:AddField(fieldName, i)end
---@overload fun(fieldName:System.String, contents:System.Byte[], fileName:System.String):System.Void
---@overload fun(fieldName:System.String, contents:System.Byte[], fileName:System.String, mimeType:System.String):System.Void
---@param fieldName System.String
---@param contents System.Byte[]
---@return System.Void
function UnityEngine.WWWForm:AddBinaryData(fieldName, contents)end
---@class UnityEngine.WWW : UnityEngine.CustomYieldInstruction
---@field public assetBundle UnityEngine.AssetBundle @  getter
---@field public audioClip UnityEngine.Object @  getter
---@field public bytes System.Byte[] @  getter
---@field public movie UnityEngine.Object @  getter
---@field public size System.Int32 @  getter
---@field public bytesDownloaded System.Int32 @  getter
---@field public error System.String @  getter
---@field public isDone System.Boolean @  getter
---@field public oggVorbis UnityEngine.Object @  getter
---@field public progress System.Single @  getter
---@field public responseHeaders System.Collections.Generic.Dictionary @  getter
---@field public data System.String @  getter
---@field public text System.String @  getter
---@field public texture UnityEngine.Texture2D @  getter
---@field public textureNonReadable UnityEngine.Texture2D @  getter
---@field public threadPriority UnityEngine.ThreadPriority @ setter getter
---@field public uploadProgress System.Single @  getter
---@field public url System.String @  getter
---@field public keepWaiting System.Boolean @  getter
UnityEngine.WWW = {}
---@type UnityEngine.WWW
CS.UnityEngine.WWW = UnityEngine.WWW

---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityEngine.WWW.EscapeURL(s)end
---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityEngine.WWW.UnEscapeURL(s)end
---@overload fun(url:System.String, version:System.Int32, crc:System.UInt32):UnityEngine.WWW
---@overload fun(url:System.String, hash:UnityEngine.Hash128):UnityEngine.WWW
---@overload fun(url:System.String, hash:UnityEngine.Hash128, crc:System.UInt32):UnityEngine.WWW
---@overload fun(url:System.String, cachedBundle:UnityEngine.CachedAssetBundle):UnityEngine.WWW
---@overload fun(url:System.String, cachedBundle:UnityEngine.CachedAssetBundle):UnityEngine.WWW
---@param url System.String
---@param version System.Int32
---@return UnityEngine.WWW
function UnityEngine.WWW.LoadFromCacheOrDownload(url, version)end
---@param texture UnityEngine.Texture2D
---@return System.Void
function UnityEngine.WWW:LoadImageIntoTexture(texture)end
---@return System.Void
function UnityEngine.WWW:Dispose()end
---@overload fun(threeD:System.Boolean):UnityEngine.AudioClip
---@overload fun(threeD:System.Boolean, stream:System.Boolean):UnityEngine.AudioClip
---@overload fun(threeD:System.Boolean, stream:System.Boolean, audioType:UnityEngine.AudioType):UnityEngine.AudioClip
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip()end
---@overload fun(threeD:System.Boolean):UnityEngine.AudioClip
---@overload fun(threeD:System.Boolean, audioType:UnityEngine.AudioType):UnityEngine.AudioClip
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClipCompressed()end
---@return UnityEngine.MovieTexture
function UnityEngine.WWW:GetMovieTexture()end
---@class UnityEngine.WWWAudioExtensions : System.Object
UnityEngine.WWWAudioExtensions = {}
---@type UnityEngine.WWWAudioExtensions
CS.UnityEngine.WWWAudioExtensions = UnityEngine.WWWAudioExtensions

---@class UnityEngine.WheelHit : System.ValueType
---@field public collider UnityEngine.Collider @ setter getter
---@field public point UnityEngine.Vector3 @ setter getter
---@field public normal UnityEngine.Vector3 @ setter getter
---@field public forwardDir UnityEngine.Vector3 @ setter getter
---@field public sidewaysDir UnityEngine.Vector3 @ setter getter
---@field public force System.Single @ setter getter
---@field public forwardSlip System.Single @ setter getter
---@field public sidewaysSlip System.Single @ setter getter
UnityEngine.WheelHit = {}
---@type UnityEngine.WheelHit
CS.UnityEngine.WheelHit = UnityEngine.WheelHit

---@class UnityEngine.WheelCollider : UnityEngine.Collider
---@field public center UnityEngine.Vector3 @ setter getter
---@field public radius System.Single @ setter getter
---@field public suspensionDistance System.Single @ setter getter
---@field public suspensionSpring UnityEngine.JointSpring @ setter getter
---@field public forceAppPointDistance System.Single @ setter getter
---@field public mass System.Single @ setter getter
---@field public wheelDampingRate System.Single @ setter getter
---@field public forwardFriction UnityEngine.WheelFrictionCurve @ setter getter
---@field public sidewaysFriction UnityEngine.WheelFrictionCurve @ setter getter
---@field public motorTorque System.Single @ setter getter
---@field public brakeTorque System.Single @ setter getter
---@field public steerAngle System.Single @ setter getter
---@field public isGrounded System.Boolean @  getter
---@field public rpm System.Single @  getter
---@field public sprungMass System.Single @  getter
UnityEngine.WheelCollider = {}
---@type UnityEngine.WheelCollider
CS.UnityEngine.WheelCollider = UnityEngine.WheelCollider

---@param speedThreshold System.Single
---@param stepsBelowThreshold System.Int32
---@param stepsAboveThreshold System.Int32
---@return System.Void
function UnityEngine.WheelCollider:ConfigureVehicleSubsteps(speedThreshold, stepsBelowThreshold, stepsAboveThreshold)end
---@param pos UnityEngine.Vector3
---@param quat UnityEngine.Quaternion
---@return System.Void
function UnityEngine.WheelCollider:GetWorldPose(pos, quat)end
---@param hit UnityEngine.WheelHit
---@return System.Boolean
function UnityEngine.WheelCollider:GetGroundHit(hit)end
---@class UnityEngine.WindZoneMode : System.Enum
UnityEngine.WindZoneMode = {}
---@type UnityEngine.WindZoneMode
CS.UnityEngine.WindZoneMode = UnityEngine.WindZoneMode

---@return System.Int32 value:0
UnityEngine.WindZoneMode.Directional = 0
---@return System.Int32 value:1
UnityEngine.WindZoneMode.Spherical = 1

---@class UnityEngine.WindZone : UnityEngine.Component
---@field public mode UnityEngine.WindZoneMode @ setter getter
---@field public radius System.Single @ setter getter
---@field public windMain System.Single @ setter getter
---@field public windTurbulence System.Single @ setter getter
---@field public windPulseMagnitude System.Single @ setter getter
---@field public windPulseFrequency System.Single @ setter getter
UnityEngine.WindZone = {}
---@type UnityEngine.WindZone
CS.UnityEngine.WindZone = UnityEngine.WindZone

