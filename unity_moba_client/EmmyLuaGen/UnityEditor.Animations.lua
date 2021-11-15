---@class UnityEditor.Animations.AnimatorState : UnityEngine.Object
---@field public behaviours UnityEngine.StateMachineBehaviour[] @ setter getter
---@field public nameHash System.Int32 @  getter
---@field public motion UnityEngine.Motion @ setter getter
---@field public speed System.Single @ setter getter
---@field public cycleOffset System.Single @ setter getter
---@field public mirror System.Boolean @ setter getter
---@field public iKOnFeet System.Boolean @ setter getter
---@field public writeDefaultValues System.Boolean @ setter getter
---@field public tag System.String @ setter getter
---@field public speedParameter System.String @ setter getter
---@field public cycleOffsetParameter System.String @ setter getter
---@field public mirrorParameter System.String @ setter getter
---@field public timeParameter System.String @ setter getter
---@field public speedParameterActive System.Boolean @ setter getter
---@field public cycleOffsetParameterActive System.Boolean @ setter getter
---@field public mirrorParameterActive System.Boolean @ setter getter
---@field public timeParameterActive System.Boolean @ setter getter
---@field public transitions UnityEditor.Animations.AnimatorStateTransition[] @ setter getter
---@field public uniqueName System.String @  getter
---@field public uniqueNameHash System.Int32 @  getter
UnityEditor.Animations.AnimatorState = {}
---@type UnityEditor.Animations.AnimatorState
CS.UnityEditor.Animations.AnimatorState = UnityEditor.Animations.AnimatorState

---@overload fun(stateMachineBehaviourType:System.Type):UnityEngine.StateMachineBehaviour
---@return any
function UnityEditor.Animations.AnimatorState:AddStateMachineBehaviour()end
---@overload fun(destinationState:UnityEditor.Animations.AnimatorState):UnityEditor.Animations.AnimatorStateTransition
---@overload fun(destinationStateMachine:UnityEditor.Animations.AnimatorStateMachine):UnityEditor.Animations.AnimatorStateTransition
---@overload fun(destinationState:UnityEditor.Animations.AnimatorState, defaultExitTime:System.Boolean):UnityEditor.Animations.AnimatorStateTransition
---@overload fun(destinationStateMachine:UnityEditor.Animations.AnimatorStateMachine, defaultExitTime:System.Boolean):UnityEditor.Animations.AnimatorStateTransition
---@param transition UnityEditor.Animations.AnimatorStateTransition
---@return System.Void
function UnityEditor.Animations.AnimatorState:AddTransition(transition)end
---@param transition UnityEditor.Animations.AnimatorStateTransition
---@return System.Void
function UnityEditor.Animations.AnimatorState:RemoveTransition(transition)end
---@overload fun(defaultExitTime:System.Boolean):UnityEditor.Animations.AnimatorStateTransition
---@return UnityEditor.Animations.AnimatorStateTransition
function UnityEditor.Animations.AnimatorState:AddExitTransition()end
---@return UnityEngine.Motion
function UnityEditor.Animations.AnimatorState:GetMotion()end
---@class UnityEditor.Animations.AnimatorStateMachine : UnityEngine.Object
---@field public behaviours UnityEngine.StateMachineBehaviour[] @ setter getter
---@field public states UnityEditor.Animations.ChildAnimatorState[] @ setter getter
---@field public stateMachines UnityEditor.Animations.ChildAnimatorStateMachine[] @ setter getter
---@field public defaultState UnityEditor.Animations.AnimatorState @ setter getter
---@field public anyStatePosition UnityEngine.Vector3 @ setter getter
---@field public entryPosition UnityEngine.Vector3 @ setter getter
---@field public exitPosition UnityEngine.Vector3 @ setter getter
---@field public parentStateMachinePosition UnityEngine.Vector3 @ setter getter
---@field public anyStateTransitions UnityEditor.Animations.AnimatorStateTransition[] @ setter getter
---@field public entryTransitions UnityEditor.Animations.AnimatorTransition[] @ setter getter
UnityEditor.Animations.AnimatorStateMachine = {}
---@type UnityEditor.Animations.AnimatorStateMachine
CS.UnityEditor.Animations.AnimatorStateMachine = UnityEditor.Animations.AnimatorStateMachine

---@param sourceStateMachine UnityEditor.Animations.AnimatorStateMachine
---@return UnityEditor.Animations.AnimatorTransition[]
function UnityEditor.Animations.AnimatorStateMachine:GetStateMachineTransitions(sourceStateMachine)end
---@param sourceStateMachine UnityEditor.Animations.AnimatorStateMachine
---@param transitions UnityEditor.Animations.AnimatorTransition[]
---@return System.Void
function UnityEditor.Animations.AnimatorStateMachine:SetStateMachineTransitions(sourceStateMachine, transitions)end
---@overload fun(stateMachineBehaviourType:System.Type):UnityEngine.StateMachineBehaviour
---@return any
function UnityEditor.Animations.AnimatorStateMachine:AddStateMachineBehaviour()end
---@param name System.String
---@return System.String
function UnityEditor.Animations.AnimatorStateMachine:MakeUniqueStateName(name)end
---@param name System.String
---@return System.String
function UnityEditor.Animations.AnimatorStateMachine:MakeUniqueStateMachineName(name)end
---@overload fun(name:System.String, position:UnityEngine.Vector3):UnityEditor.Animations.AnimatorState
---@overload fun(state:UnityEditor.Animations.AnimatorState, position:UnityEngine.Vector3):System.Void
---@param name System.String
---@return UnityEditor.Animations.AnimatorState
function UnityEditor.Animations.AnimatorStateMachine:AddState(name)end
---@param state UnityEditor.Animations.AnimatorState
---@return System.Void
function UnityEditor.Animations.AnimatorStateMachine:RemoveState(state)end
---@overload fun(name:System.String, position:UnityEngine.Vector3):UnityEditor.Animations.AnimatorStateMachine
---@overload fun(stateMachine:UnityEditor.Animations.AnimatorStateMachine, position:UnityEngine.Vector3):System.Void
---@param name System.String
---@return UnityEditor.Animations.AnimatorStateMachine
function UnityEditor.Animations.AnimatorStateMachine:AddStateMachine(name)end
---@param stateMachine UnityEditor.Animations.AnimatorStateMachine
---@return System.Void
function UnityEditor.Animations.AnimatorStateMachine:RemoveStateMachine(stateMachine)end
---@overload fun(destinationStateMachine:UnityEditor.Animations.AnimatorStateMachine):UnityEditor.Animations.AnimatorStateTransition
---@param destinationState UnityEditor.Animations.AnimatorState
---@return UnityEditor.Animations.AnimatorStateTransition
function UnityEditor.Animations.AnimatorStateMachine:AddAnyStateTransition(destinationState)end
---@param transition UnityEditor.Animations.AnimatorStateTransition
---@return System.Boolean
function UnityEditor.Animations.AnimatorStateMachine:RemoveAnyStateTransition(transition)end
---@overload fun(sourceStateMachine:UnityEditor.Animations.AnimatorStateMachine, destinationStateMachine:UnityEditor.Animations.AnimatorStateMachine):UnityEditor.Animations.AnimatorTransition
---@overload fun(sourceStateMachine:UnityEditor.Animations.AnimatorStateMachine, destinationState:UnityEditor.Animations.AnimatorState):UnityEditor.Animations.AnimatorTransition
---@param sourceStateMachine UnityEditor.Animations.AnimatorStateMachine
---@return UnityEditor.Animations.AnimatorTransition
function UnityEditor.Animations.AnimatorStateMachine:AddStateMachineTransition(sourceStateMachine)end
---@param sourceStateMachine UnityEditor.Animations.AnimatorStateMachine
---@return UnityEditor.Animations.AnimatorTransition
function UnityEditor.Animations.AnimatorStateMachine:AddStateMachineExitTransition(sourceStateMachine)end
---@param sourceStateMachine UnityEditor.Animations.AnimatorStateMachine
---@param transition UnityEditor.Animations.AnimatorTransition
---@return System.Boolean
function UnityEditor.Animations.AnimatorStateMachine:RemoveStateMachineTransition(sourceStateMachine, transition)end
---@overload fun(destinationStateMachine:UnityEditor.Animations.AnimatorStateMachine):UnityEditor.Animations.AnimatorTransition
---@param destinationState UnityEditor.Animations.AnimatorState
---@return UnityEditor.Animations.AnimatorTransition
function UnityEditor.Animations.AnimatorStateMachine:AddEntryTransition(destinationState)end
---@param transition UnityEditor.Animations.AnimatorTransition
---@return System.Boolean
function UnityEditor.Animations.AnimatorStateMachine:RemoveEntryTransition(transition)end
---@class UnityEditor.Animations.AnimatorController : UnityEngine.RuntimeAnimatorController
---@field public layers UnityEditor.Animations.AnimatorControllerLayer[] @ setter getter
---@field public parameters UnityEngine.AnimatorControllerParameter[] @ setter getter
UnityEditor.Animations.AnimatorController = {}
---@type UnityEditor.Animations.AnimatorController
CS.UnityEditor.Animations.AnimatorController = UnityEditor.Animations.AnimatorController

---@param animator UnityEngine.Animator
---@param controller UnityEditor.Animations.AnimatorController
---@return System.Void
function UnityEditor.Animations.AnimatorController.SetAnimatorController(animator, controller)end
---@param name System.String
---@return System.String
function UnityEditor.Animations.AnimatorController:MakeUniqueParameterName(name)end
---@param name System.String
---@return System.String
function UnityEditor.Animations.AnimatorController:MakeUniqueLayerName(name)end
---@param behaviour UnityEngine.StateMachineBehaviour
---@return UnityEditor.Animations.StateMachineBehaviourContext[]
function UnityEditor.Animations.AnimatorController.FindStateMachineBehaviourContext(behaviour)end
---@param script UnityEditor.MonoScript
---@return System.Int32
function UnityEditor.Animations.AnimatorController.CreateStateMachineBehaviour(script)end
---@overload fun(stateMachineBehaviourType:System.Type, state:UnityEditor.Animations.AnimatorState, layerIndex:System.Int32):UnityEngine.StateMachineBehaviour
---@param state UnityEditor.Animations.AnimatorState
---@param layerIndex System.Int32
---@return any
function UnityEditor.Animations.AnimatorController:AddEffectiveStateMachineBehaviour(state, layerIndex)end
---@return T[]
function UnityEditor.Animations.AnimatorController:GetBehaviours()end
---@overload fun(layer:UnityEditor.Animations.AnimatorControllerLayer):System.Void
---@param name System.String
---@return System.Void
function UnityEditor.Animations.AnimatorController:AddLayer(name)end
---@param index System.Int32
---@return System.Void
function UnityEditor.Animations.AnimatorController:RemoveLayer(index)end
---@overload fun(name:System.String, type:UnityEngine.AnimatorControllerParameterType):System.Void
---@param paramater UnityEngine.AnimatorControllerParameter
---@return System.Void
function UnityEditor.Animations.AnimatorController:AddParameter(paramater)end
---@overload fun(parameter:UnityEngine.AnimatorControllerParameter):System.Void
---@param index System.Int32
---@return System.Void
function UnityEditor.Animations.AnimatorController:RemoveParameter(index)end
---@overload fun(motion:UnityEngine.Motion, layerIndex:System.Int32):UnityEditor.Animations.AnimatorState
---@param motion UnityEngine.Motion
---@return UnityEditor.Animations.AnimatorState
function UnityEditor.Animations.AnimatorController:AddMotion(motion)end
---@overload fun(name:System.String, tree:UnityEditor.Animations.BlendTree, layerIndex:System.Int32):UnityEditor.Animations.AnimatorState
---@param name System.String
---@param tree UnityEditor.Animations.BlendTree
---@return UnityEditor.Animations.AnimatorState
function UnityEditor.Animations.AnimatorController:CreateBlendTreeInController(name, tree)end
---@param path System.String
---@return UnityEditor.Animations.AnimatorController
function UnityEditor.Animations.AnimatorController.CreateAnimatorControllerAtPath(path)end
---@param name System.String
---@return UnityEngine.AnimationClip
function UnityEditor.Animations.AnimatorController.AllocateAnimatorClip(name)end
---@param path System.String
---@param clip UnityEngine.AnimationClip
---@return UnityEditor.Animations.AnimatorController
function UnityEditor.Animations.AnimatorController.CreateAnimatorControllerAtPathWithClip(path, clip)end
---@overload fun(state:UnityEditor.Animations.AnimatorState, motion:UnityEngine.Motion, layerIndex:System.Int32):System.Void
---@param state UnityEditor.Animations.AnimatorState
---@param motion UnityEngine.Motion
---@return System.Void
function UnityEditor.Animations.AnimatorController:SetStateEffectiveMotion(state, motion)end
---@overload fun(state:UnityEditor.Animations.AnimatorState, layerIndex:System.Int32):UnityEngine.Motion
---@param state UnityEditor.Animations.AnimatorState
---@return UnityEngine.Motion
function UnityEditor.Animations.AnimatorController:GetStateEffectiveMotion(state)end
---@param state UnityEditor.Animations.AnimatorState
---@param layerIndex System.Int32
---@param behaviours UnityEngine.StateMachineBehaviour[]
---@return System.Void
function UnityEditor.Animations.AnimatorController:SetStateEffectiveBehaviours(state, layerIndex, behaviours)end
---@param state UnityEditor.Animations.AnimatorState
---@param layerIndex System.Int32
---@return UnityEngine.StateMachineBehaviour[]
function UnityEditor.Animations.AnimatorController:GetStateEffectiveBehaviours(state, layerIndex)end
---@class UnityEditor.Animations.AnimatorLayerBlendingMode : System.Enum
UnityEditor.Animations.AnimatorLayerBlendingMode = {}
---@type UnityEditor.Animations.AnimatorLayerBlendingMode
CS.UnityEditor.Animations.AnimatorLayerBlendingMode = UnityEditor.Animations.AnimatorLayerBlendingMode

---@return System.Int32 value:0
UnityEditor.Animations.AnimatorLayerBlendingMode.Override = 0
---@return System.Int32 value:1
UnityEditor.Animations.AnimatorLayerBlendingMode.Additive = 1

---@class UnityEditor.Animations.AnimatorControllerLayer : System.Object
---@field public name System.String @ setter getter
---@field public stateMachine UnityEditor.Animations.AnimatorStateMachine @ setter getter
---@field public avatarMask UnityEngine.AvatarMask @ setter getter
---@field public blendingMode UnityEditor.Animations.AnimatorLayerBlendingMode @ setter getter
---@field public syncedLayerIndex System.Int32 @ setter getter
---@field public iKPass System.Boolean @ setter getter
---@field public defaultWeight System.Single @ setter getter
---@field public syncedLayerAffectsTiming System.Boolean @ setter getter
UnityEditor.Animations.AnimatorControllerLayer = {}
---@type UnityEditor.Animations.AnimatorControllerLayer
CS.UnityEditor.Animations.AnimatorControllerLayer = UnityEditor.Animations.AnimatorControllerLayer

---@param state UnityEditor.Animations.AnimatorState
---@return UnityEngine.Motion
function UnityEditor.Animations.AnimatorControllerLayer:GetOverrideMotion(state)end
---@param state UnityEditor.Animations.AnimatorState
---@param motion UnityEngine.Motion
---@return System.Void
function UnityEditor.Animations.AnimatorControllerLayer:SetOverrideMotion(state, motion)end
---@param state UnityEditor.Animations.AnimatorState
---@return UnityEngine.StateMachineBehaviour[]
function UnityEditor.Animations.AnimatorControllerLayer:GetOverrideBehaviours(state)end
---@param state UnityEditor.Animations.AnimatorState
---@param behaviours UnityEngine.StateMachineBehaviour[]
---@return System.Void
function UnityEditor.Animations.AnimatorControllerLayer:SetOverrideBehaviours(state, behaviours)end
---@class UnityEditor.Animations.BlendTreeType : System.Enum
UnityEditor.Animations.BlendTreeType = {}
---@type UnityEditor.Animations.BlendTreeType
CS.UnityEditor.Animations.BlendTreeType = UnityEditor.Animations.BlendTreeType

---@return System.Int32 value:0
UnityEditor.Animations.BlendTreeType.Simple1D = 0
---@return System.Int32 value:1
UnityEditor.Animations.BlendTreeType.SimpleDirectional2D = 1
---@return System.Int32 value:2
UnityEditor.Animations.BlendTreeType.FreeformDirectional2D = 2
---@return System.Int32 value:3
UnityEditor.Animations.BlendTreeType.FreeformCartesian2D = 3
---@return System.Int32 value:4
UnityEditor.Animations.BlendTreeType.Direct = 4

---@class UnityEditor.Animations.ChildMotion : System.ValueType
---@field public motion UnityEngine.Motion @ setter getter
---@field public threshold System.Single @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public timeScale System.Single @ setter getter
---@field public cycleOffset System.Single @ setter getter
---@field public directBlendParameter System.String @ setter getter
---@field public mirror System.Boolean @ setter getter
UnityEditor.Animations.ChildMotion = {}
---@type UnityEditor.Animations.ChildMotion
CS.UnityEditor.Animations.ChildMotion = UnityEditor.Animations.ChildMotion

---@class UnityEditor.Animations.BlendTree : UnityEngine.Motion
---@field public blendParameter System.String @ setter getter
---@field public blendParameterY System.String @ setter getter
---@field public blendType UnityEditor.Animations.BlendTreeType @ setter getter
---@field public children UnityEditor.Animations.ChildMotion[] @ setter getter
---@field public useAutomaticThresholds System.Boolean @ setter getter
---@field public minThreshold System.Single @ setter getter
---@field public maxThreshold System.Single @ setter getter
UnityEditor.Animations.BlendTree = {}
---@type UnityEditor.Animations.BlendTree
CS.UnityEditor.Animations.BlendTree = UnityEditor.Animations.BlendTree

---@overload fun(motion:UnityEngine.Motion, threshold:System.Single):System.Void
---@overload fun(motion:UnityEngine.Motion, position:UnityEngine.Vector2):System.Void
---@param motion UnityEngine.Motion
---@return System.Void
function UnityEditor.Animations.BlendTree:AddChild(motion)end
---@param index System.Int32
---@return System.Void
function UnityEditor.Animations.BlendTree:RemoveChild(index)end
---@overload fun(position:UnityEngine.Vector2):UnityEditor.Animations.BlendTree
---@param threshold System.Single
---@return UnityEditor.Animations.BlendTree
function UnityEditor.Animations.BlendTree:CreateBlendTreeChild(threshold)end
---@class UnityEditor.Animations.AnimatorConditionMode : System.Enum
UnityEditor.Animations.AnimatorConditionMode = {}
---@type UnityEditor.Animations.AnimatorConditionMode
CS.UnityEditor.Animations.AnimatorConditionMode = UnityEditor.Animations.AnimatorConditionMode

---@return System.Int32 value:1
UnityEditor.Animations.AnimatorConditionMode.If = 1
---@return System.Int32 value:2
UnityEditor.Animations.AnimatorConditionMode.IfNot = 2
---@return System.Int32 value:3
UnityEditor.Animations.AnimatorConditionMode.Greater = 3
---@return System.Int32 value:4
UnityEditor.Animations.AnimatorConditionMode.Less = 4

---@class UnityEditor.Animations.TransitionInterruptionSource : System.Enum
UnityEditor.Animations.TransitionInterruptionSource = {}
---@type UnityEditor.Animations.TransitionInterruptionSource
CS.UnityEditor.Animations.TransitionInterruptionSource = UnityEditor.Animations.TransitionInterruptionSource

---@return System.Int32 value:0
UnityEditor.Animations.TransitionInterruptionSource.None = 0
---@return System.Int32 value:1
UnityEditor.Animations.TransitionInterruptionSource.Source = 1
---@return System.Int32 value:2
UnityEditor.Animations.TransitionInterruptionSource.Destination = 2
---@return System.Int32 value:3
UnityEditor.Animations.TransitionInterruptionSource.SourceThenDestination = 3
---@return System.Int32 value:4
UnityEditor.Animations.TransitionInterruptionSource.DestinationThenSource = 4

---@class UnityEditor.Animations.AnimatorCondition : System.ValueType
---@field public mode UnityEditor.Animations.AnimatorConditionMode @ setter getter
---@field public parameter System.String @ setter getter
---@field public threshold System.Single @ setter getter
UnityEditor.Animations.AnimatorCondition = {}
---@type UnityEditor.Animations.AnimatorCondition
CS.UnityEditor.Animations.AnimatorCondition = UnityEditor.Animations.AnimatorCondition

---@class UnityEditor.Animations.AnimatorTransitionBase : UnityEngine.Object
---@field public solo System.Boolean @ setter getter
---@field public mute System.Boolean @ setter getter
---@field public isExit System.Boolean @ setter getter
---@field public destinationStateMachine UnityEditor.Animations.AnimatorStateMachine @ setter getter
---@field public destinationState UnityEditor.Animations.AnimatorState @ setter getter
---@field public conditions UnityEditor.Animations.AnimatorCondition[] @ setter getter
UnityEditor.Animations.AnimatorTransitionBase = {}
---@type UnityEditor.Animations.AnimatorTransitionBase
CS.UnityEditor.Animations.AnimatorTransitionBase = UnityEditor.Animations.AnimatorTransitionBase

---@param source UnityEngine.Object
---@return System.String
function UnityEditor.Animations.AnimatorTransitionBase:GetDisplayName(source)end
---@param mode UnityEditor.Animations.AnimatorConditionMode
---@param threshold System.Single
---@param parameter System.String
---@return System.Void
function UnityEditor.Animations.AnimatorTransitionBase:AddCondition(mode, threshold, parameter)end
---@param condition UnityEditor.Animations.AnimatorCondition
---@return System.Void
function UnityEditor.Animations.AnimatorTransitionBase:RemoveCondition(condition)end
---@class UnityEditor.Animations.AnimatorTransition : UnityEditor.Animations.AnimatorTransitionBase
UnityEditor.Animations.AnimatorTransition = {}
---@type UnityEditor.Animations.AnimatorTransition
CS.UnityEditor.Animations.AnimatorTransition = UnityEditor.Animations.AnimatorTransition

---@class UnityEditor.Animations.AnimatorStateTransition : UnityEditor.Animations.AnimatorTransitionBase
---@field public duration System.Single @ setter getter
---@field public offset System.Single @ setter getter
---@field public interruptionSource UnityEditor.Animations.TransitionInterruptionSource @ setter getter
---@field public orderedInterruption System.Boolean @ setter getter
---@field public exitTime System.Single @ setter getter
---@field public hasExitTime System.Boolean @ setter getter
---@field public hasFixedDuration System.Boolean @ setter getter
---@field public canTransitionToSelf System.Boolean @ setter getter
UnityEditor.Animations.AnimatorStateTransition = {}
---@type UnityEditor.Animations.AnimatorStateTransition
CS.UnityEditor.Animations.AnimatorStateTransition = UnityEditor.Animations.AnimatorStateTransition

---@class UnityEditor.Animations.ChildAnimatorState : System.ValueType
---@field public state UnityEditor.Animations.AnimatorState @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
UnityEditor.Animations.ChildAnimatorState = {}
---@type UnityEditor.Animations.ChildAnimatorState
CS.UnityEditor.Animations.ChildAnimatorState = UnityEditor.Animations.ChildAnimatorState

---@class UnityEditor.Animations.ChildAnimatorStateMachine : System.ValueType
---@field public stateMachine UnityEditor.Animations.AnimatorStateMachine @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
UnityEditor.Animations.ChildAnimatorStateMachine = {}
---@type UnityEditor.Animations.ChildAnimatorStateMachine
CS.UnityEditor.Animations.ChildAnimatorStateMachine = UnityEditor.Animations.ChildAnimatorStateMachine

---@class UnityEditor.Animations.StateMachineBehaviourContext : System.Object
---@field public animatorController UnityEditor.Animations.AnimatorController
---@field public animatorObject UnityEngine.Object
---@field public layerIndex System.Int32
UnityEditor.Animations.StateMachineBehaviourContext = {}
---@type UnityEditor.Animations.StateMachineBehaviourContext
CS.UnityEditor.Animations.StateMachineBehaviourContext = UnityEditor.Animations.StateMachineBehaviourContext

---@class UnityEditor.Animations.GameObjectRecorder : UnityEngine.Object
---@field public root UnityEngine.GameObject @  getter
---@field public currentTime System.Single @  getter
---@field public isRecording System.Boolean @  getter
UnityEditor.Animations.GameObjectRecorder = {}
---@type UnityEditor.Animations.GameObjectRecorder
CS.UnityEditor.Animations.GameObjectRecorder = UnityEditor.Animations.GameObjectRecorder

---@overload fun(target:UnityEngine.GameObject, componentType:System.Type, recursive:System.Boolean):System.Void
---@param target UnityEngine.GameObject
---@param recursive System.Boolean
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:BindComponentsOfType(target, recursive)end
---@param binding UnityEditor.EditorCurveBinding
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:Bind(binding)end
---@param target UnityEngine.GameObject
---@param recursive System.Boolean
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:BindAll(target, recursive)end
---@overload fun(target:UnityEngine.GameObject, recursive:System.Boolean):System.Void
---@overload fun(target:UnityEngine.GameObject, componentType:System.Type, recursive:System.Boolean):System.Void
---@param component UnityEngine.Component
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:BindComponent(component)end
---@return UnityEditor.EditorCurveBinding[]
function UnityEditor.Animations.GameObjectRecorder:GetBindings()end
---@param dt System.Single
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:TakeSnapshot(dt)end
---@overload fun(clip:UnityEngine.AnimationClip, fps:System.Single):System.Void
---@param clip UnityEngine.AnimationClip
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:SaveToClip(clip)end
---@return System.Void
function UnityEditor.Animations.GameObjectRecorder:ResetRecording()end
