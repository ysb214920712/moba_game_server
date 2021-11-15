---@class UnityEngine.Playables.AnimationPlayableUtilities : System.Object
UnityEngine.Playables.AnimationPlayableUtilities = {}
---@type UnityEngine.Playables.AnimationPlayableUtilities
CS.UnityEngine.Playables.AnimationPlayableUtilities = UnityEngine.Playables.AnimationPlayableUtilities

---@param animator UnityEngine.Animator
---@param playable UnityEngine.Playables.Playable
---@param graph UnityEngine.Playables.PlayableGraph
---@return System.Void
function UnityEngine.Playables.AnimationPlayableUtilities.Play(animator, playable, graph)end
---@param animator UnityEngine.Animator
---@param clip UnityEngine.AnimationClip
---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationClipPlayable
function UnityEngine.Playables.AnimationPlayableUtilities.PlayClip(animator, clip, graph)end
---@param animator UnityEngine.Animator
---@param inputCount System.Int32
---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationMixerPlayable
function UnityEngine.Playables.AnimationPlayableUtilities.PlayMixer(animator, inputCount, graph)end
---@param animator UnityEngine.Animator
---@param inputCount System.Int32
---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationLayerMixerPlayable
function UnityEngine.Playables.AnimationPlayableUtilities.PlayLayerMixer(animator, inputCount, graph)end
---@param animator UnityEngine.Animator
---@param controller UnityEngine.RuntimeAnimatorController
---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.Playables.AnimationPlayableUtilities.PlayAnimatorController(animator, controller, graph)end
---@class UnityEngine.Playables.FrameData : System.ValueType
---@field public frameId System.UInt64 @  getter
---@field public deltaTime System.Single @  getter
---@field public weight System.Single @  getter
---@field public effectiveWeight System.Single @  getter
---@field public effectiveParentDelay System.Double @  getter
---@field public effectiveParentSpeed System.Single @  getter
---@field public effectiveSpeed System.Single @  getter
---@field public evaluationType UnityEngine.Playables.FrameData.EvaluationType @  getter
---@field public seekOccurred System.Boolean @  getter
---@field public timeLooped System.Boolean @  getter
---@field public timeHeld System.Boolean @  getter
---@field public output UnityEngine.Playables.PlayableOutput @  getter
---@field public effectivePlayState UnityEngine.Playables.PlayState @  getter
UnityEngine.Playables.FrameData = {}
---@type UnityEngine.Playables.FrameData
CS.UnityEngine.Playables.FrameData = UnityEngine.Playables.FrameData

---@class UnityEngine.Playables.FrameData.EvaluationType : System.Enum
UnityEngine.Playables.FrameData.EvaluationType = {}
---@type UnityEngine.Playables.FrameData.EvaluationType
CS.UnityEngine.Playables.FrameData.EvaluationType = UnityEngine.Playables.FrameData.EvaluationType

---@return System.Int32 value:0
UnityEngine.Playables.FrameData.EvaluationType.Evaluate = 0
---@return System.Int32 value:1
UnityEngine.Playables.FrameData.EvaluationType.Playback = 1

---@class UnityEngine.Playables.Notification : System.Object
---@field public id UnityEngine.PropertyName @  getter
UnityEngine.Playables.Notification = {}
---@type UnityEngine.Playables.Notification
CS.UnityEngine.Playables.Notification = UnityEngine.Playables.Notification

---@class UnityEngine.Playables.DirectorWrapMode : System.Enum
UnityEngine.Playables.DirectorWrapMode = {}
---@type UnityEngine.Playables.DirectorWrapMode
CS.UnityEngine.Playables.DirectorWrapMode = UnityEngine.Playables.DirectorWrapMode

---@return System.Int32 value:0
UnityEngine.Playables.DirectorWrapMode.Hold = 0
---@return System.Int32 value:1
UnityEngine.Playables.DirectorWrapMode.Loop = 1
---@return System.Int32 value:2
UnityEngine.Playables.DirectorWrapMode.None = 2

---@class UnityEngine.Playables.Playable : System.ValueType
---@field public Null UnityEngine.Playables.Playable @static  getter
UnityEngine.Playables.Playable = {}
---@type UnityEngine.Playables.Playable
CS.UnityEngine.Playables.Playable = UnityEngine.Playables.Playable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph):UnityEngine.Playables.Playable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount System.Int32
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.Playable.Create(graph, inputCount)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Playables.Playable:GetHandle()end
---@return System.Boolean
function UnityEngine.Playables.Playable:IsPlayableOfType()end
---@return System.Type
function UnityEngine.Playables.Playable:GetPlayableType()end
---@param other UnityEngine.Playables.Playable
---@return System.Boolean
function UnityEngine.Playables.Playable:Equals(other)end
---@class UnityEngine.Playables.PlayableAsset : UnityEngine.ScriptableObject
---@field public duration System.Double @  getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
UnityEngine.Playables.PlayableAsset = {}
---@type UnityEngine.Playables.PlayableAsset
CS.UnityEngine.Playables.PlayableAsset = UnityEngine.Playables.PlayableAsset

---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableAsset:CreatePlayable(graph, owner)end
---@class UnityEngine.Playables.PlayableBehaviour : System.Object
UnityEngine.Playables.PlayableBehaviour = {}
---@type UnityEngine.Playables.PlayableBehaviour
CS.UnityEngine.Playables.PlayableBehaviour = UnityEngine.Playables.PlayableBehaviour

---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnGraphStart(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnGraphStop(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnPlayableCreate(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnPlayableDestroy(playable)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnBehaviourDelay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:OnBehaviourPause(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:PrepareData(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:PrepareFrame(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
---@return System.Void
function UnityEngine.Playables.PlayableBehaviour:ProcessFrame(playable, info, playerData)end
---@return System.Object
function UnityEngine.Playables.PlayableBehaviour:Clone()end
---@class UnityEngine.Playables.DataStreamType : System.Enum
UnityEngine.Playables.DataStreamType = {}
---@type UnityEngine.Playables.DataStreamType
CS.UnityEngine.Playables.DataStreamType = UnityEngine.Playables.DataStreamType

---@return System.Int32 value:0
UnityEngine.Playables.DataStreamType.Animation = 0
---@return System.Int32 value:1
UnityEngine.Playables.DataStreamType.Audio = 1
---@return System.Int32 value:2
UnityEngine.Playables.DataStreamType.Texture = 2
---@return System.Int32 value:3
UnityEngine.Playables.DataStreamType.None = 3

---@class UnityEngine.Playables.PlayableBinding : System.ValueType
---@field public streamName System.String @ setter getter
---@field public sourceObject UnityEngine.Object @ setter getter
---@field public outputTargetType System.Type @  getter
---@field public sourceBindingType System.Type @ setter getter
---@field public streamType UnityEngine.Playables.DataStreamType @ setter getter
---@field public None UnityEngine.Playables.PlayableBinding[]
---@field public DefaultDuration System.Double
UnityEngine.Playables.PlayableBinding = {}
---@type UnityEngine.Playables.PlayableBinding
CS.UnityEngine.Playables.PlayableBinding = UnityEngine.Playables.PlayableBinding

---@class UnityEngine.Playables.PlayableTraversalMode : System.Enum
UnityEngine.Playables.PlayableTraversalMode = {}
---@type UnityEngine.Playables.PlayableTraversalMode
CS.UnityEngine.Playables.PlayableTraversalMode = UnityEngine.Playables.PlayableTraversalMode

---@return System.Int32 value:0
UnityEngine.Playables.PlayableTraversalMode.Mix = 0
---@return System.Int32 value:1
UnityEngine.Playables.PlayableTraversalMode.Passthrough = 1

---@class UnityEngine.Playables.PlayableExtensions : System.Object
UnityEngine.Playables.PlayableExtensions = {}
---@type UnityEngine.Playables.PlayableExtensions
CS.UnityEngine.Playables.PlayableExtensions = UnityEngine.Playables.PlayableExtensions

---@class UnityEngine.Playables.DirectorUpdateMode : System.Enum
UnityEngine.Playables.DirectorUpdateMode = {}
---@type UnityEngine.Playables.DirectorUpdateMode
CS.UnityEngine.Playables.DirectorUpdateMode = UnityEngine.Playables.DirectorUpdateMode

---@return System.Int32 value:0
UnityEngine.Playables.DirectorUpdateMode.DSPClock = 0
---@return System.Int32 value:1
UnityEngine.Playables.DirectorUpdateMode.GameTime = 1
---@return System.Int32 value:2
UnityEngine.Playables.DirectorUpdateMode.UnscaledGameTime = 2
---@return System.Int32 value:3
UnityEngine.Playables.DirectorUpdateMode.Manual = 3

---@class UnityEngine.Playables.PlayableGraph : System.ValueType
UnityEngine.Playables.PlayableGraph = {}
---@type UnityEngine.Playables.PlayableGraph
CS.UnityEngine.Playables.PlayableGraph = UnityEngine.Playables.PlayableGraph

---@param index System.Int32
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableGraph:GetRootPlayable(index)end
---@param source any
---@param sourceOutputPort System.Int32
---@param destination any
---@param destinationInputPort System.Int32
---@return System.Boolean
function UnityEngine.Playables.PlayableGraph:Connect(source, sourceOutputPort, destination, destinationInputPort)end
---@param input any
---@param inputPort System.Int32
---@return System.Void
function UnityEngine.Playables.PlayableGraph:Disconnect(input, inputPort)end
---@param playable any
---@return System.Void
function UnityEngine.Playables.PlayableGraph:DestroyPlayable(playable)end
---@param playable any
---@return System.Void
function UnityEngine.Playables.PlayableGraph:DestroySubgraph(playable)end
---@param output any
---@return System.Void
function UnityEngine.Playables.PlayableGraph:DestroyOutput(output)end
---@return System.Int32
function UnityEngine.Playables.PlayableGraph:GetOutputCountByType()end
---@param index System.Int32
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.PlayableGraph:GetOutput(index)end
---@param index System.Int32
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.PlayableGraph:GetOutputByType(index)end
---@overload fun(deltaTime:System.Single):System.Void
---@return System.Void
function UnityEngine.Playables.PlayableGraph:Evaluate()end
---@overload fun(name:System.String):UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.PlayableGraph.Create()end
---@return System.Void
function UnityEngine.Playables.PlayableGraph:Destroy()end
---@return System.Boolean
function UnityEngine.Playables.PlayableGraph:IsValid()end
---@return System.Boolean
function UnityEngine.Playables.PlayableGraph:IsPlaying()end
---@return System.Boolean
function UnityEngine.Playables.PlayableGraph:IsDone()end
---@return System.Void
function UnityEngine.Playables.PlayableGraph:Play()end
---@return System.Void
function UnityEngine.Playables.PlayableGraph:Stop()end
---@return UnityEngine.Playables.DirectorUpdateMode
function UnityEngine.Playables.PlayableGraph:GetTimeUpdateMode()end
---@param value UnityEngine.Playables.DirectorUpdateMode
---@return System.Void
function UnityEngine.Playables.PlayableGraph:SetTimeUpdateMode(value)end
---@return UnityEngine.IExposedPropertyTable
function UnityEngine.Playables.PlayableGraph:GetResolver()end
---@param value UnityEngine.IExposedPropertyTable
---@return System.Void
function UnityEngine.Playables.PlayableGraph:SetResolver(value)end
---@return System.Int32
function UnityEngine.Playables.PlayableGraph:GetPlayableCount()end
---@return System.Int32
function UnityEngine.Playables.PlayableGraph:GetRootPlayableCount()end
---@return System.Int32
function UnityEngine.Playables.PlayableGraph:GetOutputCount()end
---@return System.String
function UnityEngine.Playables.PlayableGraph:GetEditorName()end
---@class UnityEngine.Playables.PlayState : System.Enum
UnityEngine.Playables.PlayState = {}
---@type UnityEngine.Playables.PlayState
CS.UnityEngine.Playables.PlayState = UnityEngine.Playables.PlayState

---@return System.Int32 value:0
UnityEngine.Playables.PlayState.Paused = 0
---@return System.Int32 value:1
UnityEngine.Playables.PlayState.Playing = 1
---@return System.Int32 value:2
UnityEngine.Playables.PlayState.Delayed = 2

---@class UnityEngine.Playables.PlayableHandle : System.ValueType
---@field public Null UnityEngine.Playables.PlayableHandle @static  getter
UnityEngine.Playables.PlayableHandle = {}
---@type UnityEngine.Playables.PlayableHandle
CS.UnityEngine.Playables.PlayableHandle = UnityEngine.Playables.PlayableHandle

---@param x UnityEngine.Playables.PlayableHandle
---@param y UnityEngine.Playables.PlayableHandle
---@return System.Boolean
function UnityEngine.Playables.PlayableHandle.op_Equality(x, y)end
---@param x UnityEngine.Playables.PlayableHandle
---@param y UnityEngine.Playables.PlayableHandle
---@return System.Boolean
function UnityEngine.Playables.PlayableHandle.op_Inequality(x, y)end
---@overload fun(other:UnityEngine.Playables.PlayableHandle):System.Boolean
---@param p System.Object
---@return System.Boolean
function UnityEngine.Playables.PlayableHandle:Equals(p)end
---@return System.Int32
function UnityEngine.Playables.PlayableHandle:GetHashCode()end
---@class UnityEngine.Playables.PlayableOutput : System.ValueType
---@field public Null UnityEngine.Playables.PlayableOutput @static  getter
UnityEngine.Playables.PlayableOutput = {}
---@type UnityEngine.Playables.PlayableOutput
CS.UnityEngine.Playables.PlayableOutput = UnityEngine.Playables.PlayableOutput

---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Playables.PlayableOutput:GetHandle()end
---@return System.Boolean
function UnityEngine.Playables.PlayableOutput:IsPlayableOutputOfType()end
---@return System.Type
function UnityEngine.Playables.PlayableOutput:GetPlayableOutputType()end
---@param other UnityEngine.Playables.PlayableOutput
---@return System.Boolean
function UnityEngine.Playables.PlayableOutput:Equals(other)end
---@class UnityEngine.Playables.PlayableOutputExtensions : System.Object
UnityEngine.Playables.PlayableOutputExtensions = {}
---@type UnityEngine.Playables.PlayableOutputExtensions
CS.UnityEngine.Playables.PlayableOutputExtensions = UnityEngine.Playables.PlayableOutputExtensions

---@class UnityEngine.Playables.PlayableOutputHandle : System.ValueType
---@field public Null UnityEngine.Playables.PlayableOutputHandle @static  getter
UnityEngine.Playables.PlayableOutputHandle = {}
---@type UnityEngine.Playables.PlayableOutputHandle
CS.UnityEngine.Playables.PlayableOutputHandle = UnityEngine.Playables.PlayableOutputHandle

---@return System.Int32
function UnityEngine.Playables.PlayableOutputHandle:GetHashCode()end
---@param lhs UnityEngine.Playables.PlayableOutputHandle
---@param rhs UnityEngine.Playables.PlayableOutputHandle
---@return System.Boolean
function UnityEngine.Playables.PlayableOutputHandle.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Playables.PlayableOutputHandle
---@param rhs UnityEngine.Playables.PlayableOutputHandle
---@return System.Boolean
function UnityEngine.Playables.PlayableOutputHandle.op_Inequality(lhs, rhs)end
---@overload fun(other:UnityEngine.Playables.PlayableOutputHandle):System.Boolean
---@param p System.Object
---@return System.Boolean
function UnityEngine.Playables.PlayableOutputHandle:Equals(p)end
---@class UnityEngine.Playables.ScriptPlayable : System.ValueType
---@field public Null UnityEngine.Playables.ScriptPlayable @static  getter
UnityEngine.Playables.ScriptPlayable = {}
---@type UnityEngine.Playables.ScriptPlayable
CS.UnityEngine.Playables.ScriptPlayable = UnityEngine.Playables.ScriptPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph):UnityEngine.Playables.ScriptPlayable
---@overload fun(graph:UnityEngine.Playables.PlayableGraph, template:any):UnityEngine.Playables.ScriptPlayable
---@overload fun(graph:UnityEngine.Playables.PlayableGraph, template:any):UnityEngine.Playables.ScriptPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount System.Int32
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Playables.ScriptPlayable.Create(graph, inputCount)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Playables.ScriptPlayable:GetHandle()end
---@return any
function UnityEngine.Playables.ScriptPlayable:GetBehaviour()end
---@param playable UnityEngine.Playables.ScriptPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.ScriptPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Playables.ScriptPlayable.op_Explicit(playable)end
---@param other UnityEngine.Playables.ScriptPlayable
---@return System.Boolean
function UnityEngine.Playables.ScriptPlayable:Equals(other)end
---@class UnityEngine.Playables.ScriptPlayableBinding : System.Object
UnityEngine.Playables.ScriptPlayableBinding = {}
---@type UnityEngine.Playables.ScriptPlayableBinding
CS.UnityEngine.Playables.ScriptPlayableBinding = UnityEngine.Playables.ScriptPlayableBinding

---@param name System.String
---@param key UnityEngine.Object
---@param type System.Type
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Playables.ScriptPlayableBinding.Create(name, key, type)end
---@class UnityEngine.Playables.ScriptPlayableOutput : System.ValueType
---@field public Null UnityEngine.Playables.ScriptPlayableOutput @static  getter
UnityEngine.Playables.ScriptPlayableOutput = {}
---@type UnityEngine.Playables.ScriptPlayableOutput
CS.UnityEngine.Playables.ScriptPlayableOutput = UnityEngine.Playables.ScriptPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name System.String
---@return UnityEngine.Playables.ScriptPlayableOutput
function UnityEngine.Playables.ScriptPlayableOutput.Create(graph, name)end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Playables.ScriptPlayableOutput:GetHandle()end
---@param output UnityEngine.Playables.ScriptPlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.ScriptPlayableOutput.op_Implicit(output)end
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Playables.ScriptPlayableOutput
function UnityEngine.Playables.ScriptPlayableOutput.op_Explicit(output)end
---@class UnityEngine.Playables.PlayableDirector : UnityEngine.Behaviour
---@field public state UnityEngine.Playables.PlayState @  getter
---@field public extrapolationMode UnityEngine.Playables.DirectorWrapMode @ setter getter
---@field public playableAsset UnityEngine.Playables.PlayableAsset @ setter getter
---@field public playableGraph UnityEngine.Playables.PlayableGraph @  getter
---@field public playOnAwake System.Boolean @ setter getter
---@field public timeUpdateMode UnityEngine.Playables.DirectorUpdateMode @ setter getter
---@field public time System.Double @ setter getter
---@field public initialTime System.Double @ setter getter
---@field public duration System.Double @  getter
UnityEngine.Playables.PlayableDirector = {}
---@type UnityEngine.Playables.PlayableDirector
CS.UnityEngine.Playables.PlayableDirector = UnityEngine.Playables.PlayableDirector

---@return System.Void
function UnityEngine.Playables.PlayableDirector:DeferredEvaluate()end
---@overload fun(asset:UnityEngine.Playables.PlayableAsset):System.Void
---@overload fun(asset:UnityEngine.Playables.PlayableAsset, mode:UnityEngine.Playables.DirectorWrapMode):System.Void
---@return System.Void
function UnityEngine.Playables.PlayableDirector:Play()end
---@param key UnityEngine.Object
---@param value UnityEngine.Object
---@return System.Void
function UnityEngine.Playables.PlayableDirector:SetGenericBinding(key, value)end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:Evaluate()end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:Stop()end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:Pause()end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:Resume()end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:RebuildGraph()end
---@param id UnityEngine.PropertyName
---@return System.Void
function UnityEngine.Playables.PlayableDirector:ClearReferenceValue(id)end
---@param id UnityEngine.PropertyName
---@param value UnityEngine.Object
---@return System.Void
function UnityEngine.Playables.PlayableDirector:SetReferenceValue(id, value)end
---@param id UnityEngine.PropertyName
---@param idValid System.Boolean
---@return UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:GetReferenceValue(id, idValid)end
---@param key UnityEngine.Object
---@return UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:GetGenericBinding(key)end
---@param key UnityEngine.Object
---@return System.Void
function UnityEngine.Playables.PlayableDirector:ClearGenericBinding(key)end
---@return System.Void
function UnityEngine.Playables.PlayableDirector:RebindPlayableGraphOutputs()end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:add_played(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:remove_played(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:add_paused(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:remove_paused(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:add_stopped(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Playables.PlayableDirector:remove_stopped(value)end
