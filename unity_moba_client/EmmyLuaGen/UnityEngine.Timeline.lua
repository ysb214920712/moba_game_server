---@class UnityEngine.Timeline.ClipCaps : System.Enum
UnityEngine.Timeline.ClipCaps = {}
---@type UnityEngine.Timeline.ClipCaps
CS.UnityEngine.Timeline.ClipCaps = UnityEngine.Timeline.ClipCaps

---@return System.Int32 value:0
UnityEngine.Timeline.ClipCaps.None = 0
---@return System.Int32 value:1
UnityEngine.Timeline.ClipCaps.Looping = 1
---@return System.Int32 value:2
UnityEngine.Timeline.ClipCaps.Extrapolation = 2
---@return System.Int32 value:4
UnityEngine.Timeline.ClipCaps.ClipIn = 4

---@class UnityEngine.Timeline.GroupTrack : UnityEngine.Timeline.TrackAsset
---@field public outputs System.Collections.Generic.IEnumerable @  getter
UnityEngine.Timeline.GroupTrack = {}
---@type UnityEngine.Timeline.GroupTrack
CS.UnityEngine.Timeline.GroupTrack = UnityEngine.Timeline.GroupTrack

---@class UnityEngine.Timeline.TimelineAsset : UnityEngine.Playables.PlayableAsset
---@field public editorSettings UnityEngine.Timeline.TimelineAsset.EditorSettings @  getter
---@field public duration System.Double @  getter
---@field public fixedDuration System.Double @ setter getter
---@field public durationMode UnityEngine.Timeline.TimelineAsset.DurationMode @ setter getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
---@field public clipCaps UnityEngine.Timeline.ClipCaps @  getter
---@field public outputTrackCount System.Int32 @  getter
---@field public rootTrackCount System.Int32 @  getter
UnityEngine.Timeline.TimelineAsset = {}
---@type UnityEngine.Timeline.TimelineAsset
CS.UnityEngine.Timeline.TimelineAsset = UnityEngine.Timeline.TimelineAsset

---@param index System.Int32
---@return UnityEngine.Timeline.TrackAsset
function UnityEngine.Timeline.TimelineAsset:GetRootTrack(index)end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Timeline.TimelineAsset:GetRootTracks()end
---@param index System.Int32
---@return UnityEngine.Timeline.TrackAsset
function UnityEngine.Timeline.TimelineAsset:GetOutputTrack(index)end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Timeline.TimelineAsset:GetOutputTracks()end
---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.TimelineAsset:CreatePlayable(graph, go)end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.TimelineAsset:GatherProperties(director, driver)end
---@overload fun(type:System.Type, parent:UnityEngine.Timeline.TrackAsset, name:System.String):UnityEngine.Timeline.TrackAsset
---@param parent UnityEngine.Timeline.TrackAsset
---@param name System.String
---@return any
function UnityEngine.Timeline.TimelineAsset:CreateTrack(parent, name)end
---@param clip UnityEngine.Timeline.TimelineClip
---@return System.Boolean
function UnityEngine.Timeline.TimelineAsset:DeleteClip(clip)end
---@param track UnityEngine.Timeline.TrackAsset
---@return System.Boolean
function UnityEngine.Timeline.TimelineAsset:DeleteTrack(track)end
---@class UnityEngine.Timeline.TimelineAsset.MediaType : System.Enum
UnityEngine.Timeline.TimelineAsset.MediaType = {}
---@type UnityEngine.Timeline.TimelineAsset.MediaType
CS.UnityEngine.Timeline.TimelineAsset.MediaType = UnityEngine.Timeline.TimelineAsset.MediaType

---@return System.Int32 value:0
UnityEngine.Timeline.TimelineAsset.MediaType.Animation = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TimelineAsset.MediaType.Audio = 1
---@return System.Int32 value:2
UnityEngine.Timeline.TimelineAsset.MediaType.Video = 2
---@return System.Int32 value:3
UnityEngine.Timeline.TimelineAsset.MediaType.Script = 3
---@return System.Int32 value:4
UnityEngine.Timeline.TimelineAsset.MediaType.Hybrid = 4
---@return System.Int32 value:5
UnityEngine.Timeline.TimelineAsset.MediaType.Group = 5

---@class UnityEngine.Timeline.TrackMediaType : System.Attribute
---@field public m_MediaType UnityEngine.Timeline.TimelineAsset.MediaType
UnityEngine.Timeline.TrackMediaType = {}
---@type UnityEngine.Timeline.TrackMediaType
CS.UnityEngine.Timeline.TrackMediaType = UnityEngine.Timeline.TrackMediaType

---@class UnityEngine.Timeline.TimelineAsset.DurationMode : System.Enum
UnityEngine.Timeline.TimelineAsset.DurationMode = {}
---@type UnityEngine.Timeline.TimelineAsset.DurationMode
CS.UnityEngine.Timeline.TimelineAsset.DurationMode = UnityEngine.Timeline.TimelineAsset.DurationMode

---@return System.Int32 value:0
UnityEngine.Timeline.TimelineAsset.DurationMode.BasedOnClips = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TimelineAsset.DurationMode.FixedLength = 1

---@class UnityEngine.Timeline.TimelineAsset.EditorSettings : System.Object
---@field public fps System.Single @ setter getter
UnityEngine.Timeline.TimelineAsset.EditorSettings = {}
---@type UnityEngine.Timeline.TimelineAsset.EditorSettings
CS.UnityEngine.Timeline.TimelineAsset.EditorSettings = UnityEngine.Timeline.TimelineAsset.EditorSettings

---@class UnityEngine.Timeline.TrackClipTypeAttribute : System.Attribute
---@field public inspectedType System.Type
---@field public allowAutoCreate System.Boolean
UnityEngine.Timeline.TrackClipTypeAttribute = {}
---@type UnityEngine.Timeline.TrackClipTypeAttribute
CS.UnityEngine.Timeline.TrackClipTypeAttribute = UnityEngine.Timeline.TrackClipTypeAttribute

---@class UnityEngine.Timeline.NotKeyableAttribute : System.Attribute
UnityEngine.Timeline.NotKeyableAttribute = {}
---@type UnityEngine.Timeline.NotKeyableAttribute
CS.UnityEngine.Timeline.NotKeyableAttribute = UnityEngine.Timeline.NotKeyableAttribute

---@class UnityEngine.Timeline.TrackBindingFlags : System.Enum
UnityEngine.Timeline.TrackBindingFlags = {}
---@type UnityEngine.Timeline.TrackBindingFlags
CS.UnityEngine.Timeline.TrackBindingFlags = UnityEngine.Timeline.TrackBindingFlags

---@return System.Int32 value:0
UnityEngine.Timeline.TrackBindingFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TrackBindingFlags.AllowCreateComponent = 1

---@class UnityEngine.Timeline.TrackBindingTypeAttribute : System.Attribute
---@field public type System.Type
---@field public flags UnityEngine.Timeline.TrackBindingFlags
UnityEngine.Timeline.TrackBindingTypeAttribute = {}
---@type UnityEngine.Timeline.TrackBindingTypeAttribute
CS.UnityEngine.Timeline.TrackBindingTypeAttribute = UnityEngine.Timeline.TrackBindingTypeAttribute

---@class UnityEngine.Timeline.TimelineClip : System.Object
---@field public hasPreExtrapolation System.Boolean @  getter
---@field public hasPostExtrapolation System.Boolean @  getter
---@field public timeScale System.Double @ setter getter
---@field public start System.Double @ setter getter
---@field public duration System.Double @ setter getter
---@field public end System.Double @  getter
---@field public clipIn System.Double @ setter getter
---@field public displayName System.String @ setter getter
---@field public clipAssetDuration System.Double @  getter
---@field public curves UnityEngine.AnimationClip @  getter
---@field public asset UnityEngine.Object @ setter getter
---@field public underlyingAsset UnityEngine.Object @ setter getter
---@field public parentTrack UnityEngine.Timeline.TrackAsset @ setter getter
---@field public easeInDuration System.Double @ setter getter
---@field public easeOutDuration System.Double @ setter getter
---@field public eastOutTime System.Double @  getter
---@field public easeOutTime System.Double @  getter
---@field public blendInDuration System.Double @ setter getter
---@field public blendOutDuration System.Double @ setter getter
---@field public blendInCurveMode UnityEngine.Timeline.TimelineClip.BlendCurveMode @ setter getter
---@field public blendOutCurveMode UnityEngine.Timeline.TimelineClip.BlendCurveMode @ setter getter
---@field public hasBlendIn System.Boolean @  getter
---@field public hasBlendOut System.Boolean @  getter
---@field public mixInCurve UnityEngine.AnimationCurve @ setter getter
---@field public mixInPercentage System.Single @  getter
---@field public mixInDuration System.Double @  getter
---@field public mixOutCurve UnityEngine.AnimationCurve @ setter getter
---@field public mixOutTime System.Double @  getter
---@field public mixOutDuration System.Double @  getter
---@field public mixOutPercentage System.Single @  getter
---@field public recordable System.Boolean @ setter getter
---@field public exposedParameters System.Collections.Generic.List @  getter
---@field public clipCaps UnityEngine.Timeline.ClipCaps @  getter
---@field public animationClip UnityEngine.AnimationClip @  getter
---@field public postExtrapolationMode UnityEngine.Timeline.TimelineClip.ClipExtrapolation @ setter getter
---@field public preExtrapolationMode UnityEngine.Timeline.TimelineClip.ClipExtrapolation @ setter getter
---@field public extrapolatedStart System.Double @  getter
---@field public extrapolatedDuration System.Double @  getter
---@field public kDefaultClipCaps UnityEngine.Timeline.ClipCaps
---@field public kDefaultClipDurationInSeconds System.Single
---@field public kTimeScaleMin System.Double
---@field public kTimeScaleMax System.Double
UnityEngine.Timeline.TimelineClip = {}
---@type UnityEngine.Timeline.TimelineClip
CS.UnityEngine.Timeline.TimelineClip = UnityEngine.Timeline.TimelineClip

---@param time System.Double
---@return System.Single
function UnityEngine.Timeline.TimelineClip:EvaluateMixOut(time)end
---@param time System.Double
---@return System.Single
function UnityEngine.Timeline.TimelineClip:EvaluateMixIn(time)end
---@param time System.Double
---@return System.Double
function UnityEngine.Timeline.TimelineClip:ToLocalTime(time)end
---@param time System.Double
---@return System.Double
function UnityEngine.Timeline.TimelineClip:ToLocalTimeUnbound(time)end
---@param sequenceTime System.Double
---@return System.Boolean
function UnityEngine.Timeline.TimelineClip:IsExtrapolatedTime(sequenceTime)end
---@param sequenceTime System.Double
---@return System.Boolean
function UnityEngine.Timeline.TimelineClip:IsPreExtrapolatedTime(sequenceTime)end
---@param sequenceTime System.Double
---@return System.Boolean
function UnityEngine.Timeline.TimelineClip:IsPostExtrapolatedTime(sequenceTime)end
---@return System.String
function UnityEngine.Timeline.TimelineClip:ToString()end
---@class UnityEngine.Timeline.TimelineClip.ClipExtrapolation : System.Enum
UnityEngine.Timeline.TimelineClip.ClipExtrapolation = {}
---@type UnityEngine.Timeline.TimelineClip.ClipExtrapolation
CS.UnityEngine.Timeline.TimelineClip.ClipExtrapolation = UnityEngine.Timeline.TimelineClip.ClipExtrapolation

---@return System.Int32 value:0
UnityEngine.Timeline.TimelineClip.ClipExtrapolation.None = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TimelineClip.ClipExtrapolation.Hold = 1
---@return System.Int32 value:2
UnityEngine.Timeline.TimelineClip.ClipExtrapolation.Loop = 2
---@return System.Int32 value:3
UnityEngine.Timeline.TimelineClip.ClipExtrapolation.PingPong = 3
---@return System.Int32 value:4
UnityEngine.Timeline.TimelineClip.ClipExtrapolation.Continue = 4

---@class UnityEngine.Timeline.TimelineClip.BlendCurveMode : System.Enum
UnityEngine.Timeline.TimelineClip.BlendCurveMode = {}
---@type UnityEngine.Timeline.TimelineClip.BlendCurveMode
CS.UnityEngine.Timeline.TimelineClip.BlendCurveMode = UnityEngine.Timeline.TimelineClip.BlendCurveMode

---@return System.Int32 value:0
UnityEngine.Timeline.TimelineClip.BlendCurveMode.Auto = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TimelineClip.BlendCurveMode.Manual = 1

---@class UnityEngine.Timeline.TimelinePlayable : UnityEngine.Playables.PlayableBehaviour
UnityEngine.Timeline.TimelinePlayable = {}
---@type UnityEngine.Timeline.TimelinePlayable
CS.UnityEngine.Timeline.TimelinePlayable = UnityEngine.Timeline.TimelinePlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param tracks System.Collections.Generic.IEnumerable
---@param go UnityEngine.GameObject
---@param autoRebalance System.Boolean
---@param createOutputs System.Boolean
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.TimelinePlayable.Create(graph, tracks, go, autoRebalance, createOutputs)end
---@param graph UnityEngine.Playables.PlayableGraph
---@param timelinePlayable UnityEngine.Playables.Playable
---@param tracks System.Collections.Generic.IEnumerable
---@param go UnityEngine.GameObject
---@param autoRebalance System.Boolean
---@param createOutputs System.Boolean
---@return System.Void
function UnityEngine.Timeline.TimelinePlayable:Compile(graph, timelinePlayable, tracks, go, autoRebalance, createOutputs)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.TimelinePlayable:PrepareFrame(playable, info)end
---@class UnityEngine.Timeline.TrackAsset : UnityEngine.Playables.PlayableAsset
---@field public start System.Double @  getter
---@field public end System.Double @  getter
---@field public duration System.Double @  getter
---@field public muted System.Boolean @ setter getter
---@field public timelineAsset UnityEngine.Timeline.TimelineAsset @  getter
---@field public parent UnityEngine.Playables.PlayableAsset @ setter getter
---@field public isEmpty System.Boolean @  getter
---@field public isSubTrack System.Boolean @  getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
---@field public locked System.Boolean @ setter getter
---@field public lockedInHierarchy System.Boolean @  getter
UnityEngine.Timeline.TrackAsset = {}
---@type UnityEngine.Timeline.TrackAsset
CS.UnityEngine.Timeline.TrackAsset = UnityEngine.Timeline.TrackAsset

---@return System.Collections.Generic.IEnumerable
function UnityEngine.Timeline.TrackAsset:GetClips()end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Timeline.TrackAsset:GetChildTracks()end
---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@param inputCount System.Int32
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.TrackAsset:CreateTrackMixer(graph, go, inputCount)end
---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.TrackAsset:CreatePlayable(graph, go)end
---@return UnityEngine.Timeline.TimelineClip
function UnityEngine.Timeline.TrackAsset:CreateDefaultClip()end
---@return UnityEngine.Timeline.TimelineClip
function UnityEngine.Timeline.TrackAsset:CreateClip()end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.TrackAsset:GatherProperties(director, driver)end
---@class UnityEngine.Timeline.ActivationTrack : UnityEngine.Timeline.TrackAsset
---@field public postPlaybackState UnityEngine.Timeline.ActivationTrack.PostPlaybackState @ setter getter
UnityEngine.Timeline.ActivationTrack = {}
---@type UnityEngine.Timeline.ActivationTrack
CS.UnityEngine.Timeline.ActivationTrack = UnityEngine.Timeline.ActivationTrack

---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@param inputCount System.Int32
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.ActivationTrack:CreateTrackMixer(graph, go, inputCount)end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.ActivationTrack:GatherProperties(director, driver)end
---@class UnityEngine.Timeline.ActivationTrack.PostPlaybackState : System.Enum
UnityEngine.Timeline.ActivationTrack.PostPlaybackState = {}
---@type UnityEngine.Timeline.ActivationTrack.PostPlaybackState
CS.UnityEngine.Timeline.ActivationTrack.PostPlaybackState = UnityEngine.Timeline.ActivationTrack.PostPlaybackState

---@return System.Int32 value:0
UnityEngine.Timeline.ActivationTrack.PostPlaybackState.Active = 0
---@return System.Int32 value:1
UnityEngine.Timeline.ActivationTrack.PostPlaybackState.Inactive = 1
---@return System.Int32 value:2
UnityEngine.Timeline.ActivationTrack.PostPlaybackState.Revert = 2
---@return System.Int32 value:3
UnityEngine.Timeline.ActivationTrack.PostPlaybackState.LeaveAsIs = 3

---@class UnityEngine.Timeline.AnimationPlayableAsset : UnityEngine.Playables.PlayableAsset
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public eulerAngles UnityEngine.Vector3 @ setter getter
---@field public useTrackMatchFields System.Boolean @ setter getter
---@field public matchTargetFields UnityEngine.Timeline.MatchTargetFields @ setter getter
---@field public removeStartOffset System.Boolean @ setter getter
---@field public applyFootIK System.Boolean @ setter getter
---@field public clip UnityEngine.AnimationClip @ setter getter
---@field public duration System.Double @  getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
---@field public clipCaps UnityEngine.Timeline.ClipCaps @  getter
UnityEngine.Timeline.AnimationPlayableAsset = {}
---@type UnityEngine.Timeline.AnimationPlayableAsset
CS.UnityEngine.Timeline.AnimationPlayableAsset = UnityEngine.Timeline.AnimationPlayableAsset

---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.AnimationPlayableAsset:CreatePlayable(graph, go)end
---@return System.Void
function UnityEngine.Timeline.AnimationPlayableAsset:LiveLink()end
---@return System.Void
function UnityEngine.Timeline.AnimationPlayableAsset:ResetOffsets()end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.AnimationPlayableAsset:GatherProperties(director, driver)end
---@class UnityEngine.Timeline.MatchTargetFields : System.Enum
UnityEngine.Timeline.MatchTargetFields = {}
---@type UnityEngine.Timeline.MatchTargetFields
CS.UnityEngine.Timeline.MatchTargetFields = UnityEngine.Timeline.MatchTargetFields

---@return System.Int32 value:1
UnityEngine.Timeline.MatchTargetFields.PositionX = 1
---@return System.Int32 value:2
UnityEngine.Timeline.MatchTargetFields.PositionY = 2
---@return System.Int32 value:4
UnityEngine.Timeline.MatchTargetFields.PositionZ = 4

---@class UnityEngine.Timeline.TrackOffset : System.Enum
UnityEngine.Timeline.TrackOffset = {}
---@type UnityEngine.Timeline.TrackOffset
CS.UnityEngine.Timeline.TrackOffset = UnityEngine.Timeline.TrackOffset

---@return System.Int32 value:0
UnityEngine.Timeline.TrackOffset.ApplyTransformOffsets = 0
---@return System.Int32 value:1
UnityEngine.Timeline.TrackOffset.ApplySceneOffsets = 1
---@return System.Int32 value:2
UnityEngine.Timeline.TrackOffset.Auto = 2

---@class UnityEngine.Timeline.AnimationTrack : UnityEngine.Timeline.TrackAsset
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public eulerAngles UnityEngine.Vector3 @ setter getter
---@field public applyOffsets System.Boolean @ setter getter
---@field public trackOffset UnityEngine.Timeline.TrackOffset @ setter getter
---@field public matchTargetFields UnityEngine.Timeline.MatchTargetFields @ setter getter
---@field public avatarMask UnityEngine.AvatarMask @ setter getter
---@field public applyAvatarMask System.Boolean @ setter getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
---@field public inClipMode System.Boolean @  getter
---@field public openClipOffsetPosition UnityEngine.Vector3 @ setter getter
---@field public openClipOffsetRotation UnityEngine.Quaternion @ setter getter
---@field public openClipOffsetEulerAngles UnityEngine.Vector3 @ setter getter
---@field public openClipPreExtrapolation UnityEngine.Timeline.TimelineClip.ClipExtrapolation @ setter getter
---@field public openClipPostExtrapolation UnityEngine.Timeline.TimelineClip.ClipExtrapolation @ setter getter
UnityEngine.Timeline.AnimationTrack = {}
---@type UnityEngine.Timeline.AnimationTrack
CS.UnityEngine.Timeline.AnimationTrack = UnityEngine.Timeline.AnimationTrack

---@param clip UnityEngine.AnimationClip
---@return UnityEngine.Timeline.TimelineClip
function UnityEngine.Timeline.AnimationTrack:CreateClip(clip)end
---@param animClipName System.String
---@return UnityEngine.Timeline.TimelineClip
function UnityEngine.Timeline.AnimationTrack:CreateRecordableClip(animClipName)end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.AnimationTrack:GatherProperties(director, driver)end
---@class UnityEngine.Timeline.TrackColorAttribute : System.Attribute
---@field public color UnityEngine.Color @  getter
UnityEngine.Timeline.TrackColorAttribute = {}
---@type UnityEngine.Timeline.TrackColorAttribute
CS.UnityEngine.Timeline.TrackColorAttribute = UnityEngine.Timeline.TrackColorAttribute

---@class UnityEngine.Timeline.AudioPlayableAsset : UnityEngine.Playables.PlayableAsset
---@field public clip UnityEngine.AudioClip @ setter getter
---@field public loop System.Boolean @ setter getter
---@field public duration System.Double @  getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
---@field public clipCaps UnityEngine.Timeline.ClipCaps @  getter
UnityEngine.Timeline.AudioPlayableAsset = {}
---@type UnityEngine.Timeline.AudioPlayableAsset
CS.UnityEngine.Timeline.AudioPlayableAsset = UnityEngine.Timeline.AudioPlayableAsset

---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.AudioPlayableAsset:CreatePlayable(graph, go)end
---@class UnityEngine.Timeline.AudioTrack : UnityEngine.Timeline.TrackAsset
---@field public outputs System.Collections.Generic.IEnumerable @  getter
UnityEngine.Timeline.AudioTrack = {}
---@type UnityEngine.Timeline.AudioTrack
CS.UnityEngine.Timeline.AudioTrack = UnityEngine.Timeline.AudioTrack

---@param clip UnityEngine.AudioClip
---@return UnityEngine.Timeline.TimelineClip
function UnityEngine.Timeline.AudioTrack:CreateClip(clip)end
---@class UnityEngine.Timeline.ControlPlayableAsset : UnityEngine.Playables.PlayableAsset
---@field public duration System.Double @  getter
---@field public clipCaps UnityEngine.Timeline.ClipCaps @  getter
---@field public sourceGameObject UnityEngine.ExposedReference
---@field public prefabGameObject UnityEngine.GameObject
---@field public updateParticle System.Boolean
---@field public particleRandomSeed System.UInt32
---@field public updateDirector System.Boolean
---@field public updateITimeControl System.Boolean
---@field public searchHierarchy System.Boolean
---@field public active System.Boolean
---@field public postPlayback UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState
UnityEngine.Timeline.ControlPlayableAsset = {}
---@type UnityEngine.Timeline.ControlPlayableAsset
CS.UnityEngine.Timeline.ControlPlayableAsset = UnityEngine.Timeline.ControlPlayableAsset

---@return System.Void
function UnityEngine.Timeline.ControlPlayableAsset:OnEnable()end
---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.ControlPlayableAsset:CreatePlayable(graph, go)end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
---@return System.Void
function UnityEngine.Timeline.ControlPlayableAsset:GatherProperties(director, driver)end
---@class UnityEngine.Timeline.ControlTrack : UnityEngine.Timeline.TrackAsset
UnityEngine.Timeline.ControlTrack = {}
---@type UnityEngine.Timeline.ControlTrack
CS.UnityEngine.Timeline.ControlTrack = UnityEngine.Timeline.ControlTrack

---@class UnityEngine.Timeline.TrackAssetExtensions : System.Object
UnityEngine.Timeline.TrackAssetExtensions = {}
---@type UnityEngine.Timeline.TrackAssetExtensions
CS.UnityEngine.Timeline.TrackAssetExtensions = UnityEngine.Timeline.TrackAssetExtensions

---@class UnityEngine.Timeline.ActivationControlPlayable : UnityEngine.Playables.PlayableBehaviour
---@field public gameObject UnityEngine.GameObject
---@field public postPlayback UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState
UnityEngine.Timeline.ActivationControlPlayable = {}
---@type UnityEngine.Timeline.ActivationControlPlayable
CS.UnityEngine.Timeline.ActivationControlPlayable = UnityEngine.Timeline.ActivationControlPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param gameObject UnityEngine.GameObject
---@param postPlaybackState UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.ActivationControlPlayable.Create(graph, gameObject, postPlaybackState)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.ActivationControlPlayable:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.ActivationControlPlayable:OnBehaviourPause(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param userData System.Object
---@return System.Void
function UnityEngine.Timeline.ActivationControlPlayable:ProcessFrame(playable, info, userData)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.ActivationControlPlayable:OnGraphStart(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.ActivationControlPlayable:OnPlayableDestroy(playable)end
---@class UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState : System.Enum
UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState = {}
---@type UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState
CS.UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState = UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState

---@return System.Int32 value:0
UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState.Active = 0
---@return System.Int32 value:1
UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState.Inactive = 1
---@return System.Int32 value:2
UnityEngine.Timeline.ActivationControlPlayable.PostPlaybackState.Revert = 2

---@class UnityEngine.Timeline.BasicPlayableBehaviour : UnityEngine.ScriptableObject
---@field public duration System.Double @  getter
---@field public outputs System.Collections.Generic.IEnumerable @  getter
UnityEngine.Timeline.BasicPlayableBehaviour = {}
---@type UnityEngine.Timeline.BasicPlayableBehaviour
CS.UnityEngine.Timeline.BasicPlayableBehaviour = UnityEngine.Timeline.BasicPlayableBehaviour

---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnGraphStart(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnGraphStop(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnPlayableCreate(playable)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnPlayableDestroy(playable)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:OnBehaviourPause(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:PrepareFrame(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
---@return System.Void
function UnityEngine.Timeline.BasicPlayableBehaviour:ProcessFrame(playable, info, playerData)end
---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Timeline.BasicPlayableBehaviour:CreatePlayable(graph, owner)end
---@class UnityEngine.Timeline.DirectorControlPlayable : UnityEngine.Playables.PlayableBehaviour
---@field public director UnityEngine.Playables.PlayableDirector
UnityEngine.Timeline.DirectorControlPlayable = {}
---@type UnityEngine.Timeline.DirectorControlPlayable
CS.UnityEngine.Timeline.DirectorControlPlayable = UnityEngine.Timeline.DirectorControlPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param director UnityEngine.Playables.PlayableDirector
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.DirectorControlPlayable.Create(graph, director)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.DirectorControlPlayable:PrepareFrame(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.DirectorControlPlayable:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.DirectorControlPlayable:OnBehaviourPause(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
---@return System.Void
function UnityEngine.Timeline.DirectorControlPlayable:ProcessFrame(playable, info, playerData)end
---@class UnityEngine.Timeline.ParticleControlPlayable : UnityEngine.Playables.PlayableBehaviour
---@field public particleSystem UnityEngine.ParticleSystem @ setter getter
UnityEngine.Timeline.ParticleControlPlayable = {}
---@type UnityEngine.Timeline.ParticleControlPlayable
CS.UnityEngine.Timeline.ParticleControlPlayable = UnityEngine.Timeline.ParticleControlPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param component UnityEngine.ParticleSystem
---@param randomSeed System.UInt32
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.ParticleControlPlayable.Create(graph, component, randomSeed)end
---@param ps UnityEngine.ParticleSystem
---@param randomSeed System.UInt32
---@return System.Void
function UnityEngine.Timeline.ParticleControlPlayable:Initialize(ps, randomSeed)end
---@param playable UnityEngine.Playables.Playable
---@param data UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.ParticleControlPlayable:PrepareFrame(playable, data)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.ParticleControlPlayable:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.ParticleControlPlayable:OnBehaviourPause(playable, info)end
---@class UnityEngine.Timeline.PrefabControlPlayable : UnityEngine.Playables.PlayableBehaviour
---@field public prefabInstance UnityEngine.GameObject @  getter
UnityEngine.Timeline.PrefabControlPlayable = {}
---@type UnityEngine.Timeline.PrefabControlPlayable
CS.UnityEngine.Timeline.PrefabControlPlayable = UnityEngine.Timeline.PrefabControlPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param prefabGameObject UnityEngine.GameObject
---@param parentTransform UnityEngine.Transform
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.PrefabControlPlayable.Create(graph, prefabGameObject, parentTransform)end
---@param prefabGameObject UnityEngine.GameObject
---@param parentTransform UnityEngine.Transform
---@return UnityEngine.GameObject
function UnityEngine.Timeline.PrefabControlPlayable:Initialize(prefabGameObject, parentTransform)end
---@param playable UnityEngine.Playables.Playable
---@return System.Void
function UnityEngine.Timeline.PrefabControlPlayable:OnPlayableDestroy(playable)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.PrefabControlPlayable:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.PrefabControlPlayable:OnBehaviourPause(playable, info)end
---@class UnityEngine.Timeline.TimeControlPlayable : UnityEngine.Playables.PlayableBehaviour
UnityEngine.Timeline.TimeControlPlayable = {}
---@type UnityEngine.Timeline.TimeControlPlayable
CS.UnityEngine.Timeline.TimeControlPlayable = UnityEngine.Timeline.TimeControlPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param timeControl UnityEngine.Timeline.ITimeControl
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Timeline.TimeControlPlayable.Create(graph, timeControl)end
---@param timeControl UnityEngine.Timeline.ITimeControl
---@return System.Void
function UnityEngine.Timeline.TimeControlPlayable:Initialize(timeControl)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.TimeControlPlayable:PrepareFrame(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.TimeControlPlayable:OnBehaviourPlay(playable, info)end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@return System.Void
function UnityEngine.Timeline.TimeControlPlayable:OnBehaviourPause(playable, info)end
---@class UnityEngine.Timeline.PlayableTrack : UnityEngine.Timeline.TrackAsset
UnityEngine.Timeline.PlayableTrack = {}
---@type UnityEngine.Timeline.PlayableTrack
CS.UnityEngine.Timeline.PlayableTrack = UnityEngine.Timeline.PlayableTrack

---@class UnityEngine.Timeline.Extrapolation : System.Object
---@field public kMinExtrapolationTime System.Double
UnityEngine.Timeline.Extrapolation = {}
---@type UnityEngine.Timeline.Extrapolation
CS.UnityEngine.Timeline.Extrapolation = UnityEngine.Timeline.Extrapolation

