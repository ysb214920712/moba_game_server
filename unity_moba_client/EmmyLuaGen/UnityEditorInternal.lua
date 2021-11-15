---@class UnityEditorInternal.Transition : UnityEngine.Object
UnityEditorInternal.Transition = {}
---@type UnityEditorInternal.Transition
CS.UnityEditorInternal.Transition = UnityEditorInternal.Transition

---@class UnityEditorInternal.StateMachine : UnityEngine.Object
---@field public defaultState UnityEditorInternal.State @ setter getter
---@field public anyStatePosition UnityEngine.Vector3 @ setter getter
---@field public parentStateMachinePosition UnityEngine.Vector3 @ setter getter
UnityEditorInternal.StateMachine = {}
---@type UnityEditorInternal.StateMachine
CS.UnityEditorInternal.StateMachine = UnityEditorInternal.StateMachine

---@param index System.Int32
---@return UnityEditorInternal.State
function UnityEditorInternal.StateMachine:GetState(index)end
---@param stateName System.String
---@return UnityEditorInternal.State
function UnityEditorInternal.StateMachine:AddState(stateName)end
---@param index System.Int32
---@return UnityEditorInternal.StateMachine
function UnityEditorInternal.StateMachine:GetStateMachine(index)end
---@param stateMachineName System.String
---@return UnityEditorInternal.StateMachine
function UnityEditorInternal.StateMachine:AddStateMachine(stateMachineName)end
---@param src UnityEditorInternal.State
---@param dst UnityEditorInternal.State
---@return UnityEditorInternal.Transition
function UnityEditorInternal.StateMachine:AddTransition(src, dst)end
---@param dst UnityEditorInternal.State
---@return UnityEditorInternal.Transition
function UnityEditorInternal.StateMachine:AddAnyStateTransition(dst)end
---@param i System.Int32
---@return UnityEngine.Vector3
function UnityEditorInternal.StateMachine:GetStateMachinePosition(i)end
---@param srcState UnityEditorInternal.State
---@return UnityEditorInternal.Transition[]
function UnityEditorInternal.StateMachine:GetTransitionsFromState(srcState)end
---@class UnityEditorInternal.State : UnityEngine.Object
---@field public uniqueName System.String @  getter
---@field public uniqueNameHash System.Int32 @  getter
---@field public speed System.Single @ setter getter
---@field public mirror System.Boolean @ setter getter
---@field public iKOnFeet System.Boolean @ setter getter
---@field public tag System.String @ setter getter
UnityEditorInternal.State = {}
---@type UnityEditorInternal.State
CS.UnityEditorInternal.State = UnityEditorInternal.State

---@overload fun(layer:UnityEditorInternal.AnimatorControllerLayer):UnityEngine.Motion
---@return UnityEngine.Motion
function UnityEditorInternal.State:GetMotion()end
---@overload fun(layer:UnityEditorInternal.AnimatorControllerLayer):UnityEditorInternal.BlendTree
---@return UnityEditorInternal.BlendTree
function UnityEditorInternal.State:CreateBlendTree()end
---@class UnityEditorInternal.AnimatorController : UnityEngine.RuntimeAnimatorController
UnityEditorInternal.AnimatorController = {}
---@type UnityEditorInternal.AnimatorController
CS.UnityEditorInternal.AnimatorController = UnityEditorInternal.AnimatorController

---@class UnityEditorInternal.BlendTree : UnityEngine.Motion
UnityEditorInternal.BlendTree = {}
---@type UnityEditorInternal.BlendTree
CS.UnityEditorInternal.BlendTree = UnityEditorInternal.BlendTree

---@class UnityEditorInternal.AnimatorControllerLayer : System.Object
UnityEditorInternal.AnimatorControllerLayer = {}
---@type UnityEditorInternal.AnimatorControllerLayer
CS.UnityEditorInternal.AnimatorControllerLayer = UnityEditorInternal.AnimatorControllerLayer

---@class UnityEditorInternal.AnimatorControllerParameter : System.Object
UnityEditorInternal.AnimatorControllerParameter = {}
---@type UnityEditorInternal.AnimatorControllerParameter
CS.UnityEditorInternal.AnimatorControllerParameter = UnityEditorInternal.AnimatorControllerParameter

---@class UnityEditorInternal.AnimatorControllerParameterType : System.Enum
UnityEditorInternal.AnimatorControllerParameterType = {}
---@type UnityEditorInternal.AnimatorControllerParameterType
CS.UnityEditorInternal.AnimatorControllerParameterType = UnityEditorInternal.AnimatorControllerParameterType


---@class UnityEditorInternal.AnimatorLayerBlendingMode : System.Enum
UnityEditorInternal.AnimatorLayerBlendingMode = {}
---@type UnityEditorInternal.AnimatorLayerBlendingMode
CS.UnityEditorInternal.AnimatorLayerBlendingMode = UnityEditorInternal.AnimatorLayerBlendingMode


---@class UnityEditorInternal.AssetStore : System.Object
UnityEditorInternal.AssetStore = {}
---@type UnityEditorInternal.AssetStore
CS.UnityEditorInternal.AssetStore = UnityEditorInternal.AssetStore

---@param assetStoreURL System.String
---@return System.Void
function UnityEditorInternal.AssetStore.Open(assetStoreURL)end
---@class UnityEditorInternal.AssetStoreToolUtils : System.Object
UnityEditorInternal.AssetStoreToolUtils = {}
---@type UnityEditorInternal.AssetStoreToolUtils
CS.UnityEditorInternal.AssetStoreToolUtils = UnityEditorInternal.AssetStoreToolUtils

---@param targetObject UnityEngine.Object
---@param targetPath System.String
---@return System.Boolean
function UnityEditorInternal.AssetStoreToolUtils.BuildAssetStoreAssetBundle(targetObject, targetPath)end
---@param bundle UnityEngine.AssetBundle
---@param info UnityEditor.AssetStoreAsset
---@return System.Boolean
function UnityEditorInternal.AssetStoreToolUtils.PreviewAssetStoreAssetBundleInInspector(bundle, info)end
---@return System.Void
function UnityEditorInternal.AssetStoreToolUtils.UpdatePreloadingInternal()end
---@class UnityEditorInternal.InternalSpriteUtility : System.Object
UnityEditorInternal.InternalSpriteUtility = {}
---@type UnityEditorInternal.InternalSpriteUtility
CS.UnityEditorInternal.InternalSpriteUtility = UnityEditorInternal.InternalSpriteUtility

---@param texture UnityEngine.Texture2D
---@param minRectSize System.Int32
---@param extrudeSize System.Int32
---@return UnityEngine.Rect[]
function UnityEditorInternal.InternalSpriteUtility.GenerateAutomaticSpriteRectangles(texture, minRectSize, extrudeSize)end
---@param texture UnityEngine.Texture2D
---@param offset UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param padding UnityEngine.Vector2
---@return UnityEngine.Rect[]
function UnityEditorInternal.InternalSpriteUtility.GenerateGridSpriteRectangles(texture, offset, size, padding)end
---@class UnityEditorInternal.ProfilerFrameDataMultiColumnHeader : UnityEditor.IMGUI.Controls.MultiColumnHeader
---@field public columns UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column[] @  getter
---@field public sortedProfilerColumn UnityEditorInternal.Profiling.ProfilerColumn @  getter
---@field public sortedProfilerColumnAscending System.Boolean @  getter
UnityEditorInternal.ProfilerFrameDataMultiColumnHeader = {}
---@type UnityEditorInternal.ProfilerFrameDataMultiColumnHeader
CS.UnityEditorInternal.ProfilerFrameDataMultiColumnHeader = UnityEditorInternal.ProfilerFrameDataMultiColumnHeader

---@param profilerColumn UnityEditorInternal.Profiling.ProfilerColumn
---@return System.Int32
function UnityEditorInternal.ProfilerFrameDataMultiColumnHeader:GetMultiColumnHeaderIndex(profilerColumn)end
---@param columns UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column[]
---@param profilerColumn UnityEditorInternal.Profiling.ProfilerColumn
---@return System.Int32
function UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.GetMultiColumnHeaderIndex(columns, profilerColumn)end
---@param multiColumnHeaderIndex System.Int32
---@return UnityEditorInternal.Profiling.ProfilerColumn
function UnityEditorInternal.ProfilerFrameDataMultiColumnHeader:GetProfilerColumn(multiColumnHeaderIndex)end
---@class UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column : System.ValueType
---@field public profilerColumn UnityEditorInternal.Profiling.ProfilerColumn
---@field public headerLabel UnityEngine.GUIContent
UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column = {}
---@type UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column
CS.UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column = UnityEditorInternal.ProfilerFrameDataMultiColumnHeader.Column

---@class UnityEditorInternal.NativeProfilerTimeline_InitializeArgs : System.ValueType
---@field public ghostAlpha System.Single
---@field public nonSelectedAlpha System.Single
---@field public guiStyle System.IntPtr
---@field public lineHeight System.Single
---@field public textFadeOutWidth System.Single
---@field public textFadeStartWidth System.Single
UnityEditorInternal.NativeProfilerTimeline_InitializeArgs = {}
---@type UnityEditorInternal.NativeProfilerTimeline_InitializeArgs
CS.UnityEditorInternal.NativeProfilerTimeline_InitializeArgs = UnityEditorInternal.NativeProfilerTimeline_InitializeArgs

---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline_InitializeArgs:Reset()end
---@class UnityEditorInternal.NativeProfilerTimeline_DrawArgs : System.ValueType
---@field public frameIndex System.Int32
---@field public threadIndex System.Int32
---@field public timeOffset System.Single
---@field public threadRect UnityEngine.Rect
---@field public shownAreaRect UnityEngine.Rect
---@field public selectedEntryIndex System.Int32
---@field public mousedOverEntryIndex System.Int32
UnityEditorInternal.NativeProfilerTimeline_DrawArgs = {}
---@type UnityEditorInternal.NativeProfilerTimeline_DrawArgs
CS.UnityEditorInternal.NativeProfilerTimeline_DrawArgs = UnityEditorInternal.NativeProfilerTimeline_DrawArgs

---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline_DrawArgs:Reset()end
---@class UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs : System.ValueType
---@field public frameIndex System.Int32
---@field public threadIndex System.Int32
---@field public timeOffset System.Single
---@field public threadRect UnityEngine.Rect
---@field public shownAreaRect UnityEngine.Rect
---@field public position UnityEngine.Vector2
---@field public out_EntryIndex System.Int32
---@field public out_EntryYMaxPos System.Single
---@field public out_EntryName System.String
UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs = {}
---@type UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs
CS.UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs = UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs

---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs:Reset()end
---@class UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs : System.ValueType
---@field public frameIndex System.Int32
---@field public threadIndex System.Int32
---@field public entryIndex System.Int32
---@field public out_Id System.Int32
---@field public out_Path System.String
---@field public out_CallstackInfo System.String
---@field public out_MetaData System.String
UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs = {}
---@type UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs
CS.UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs = UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs

---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs:Reset()end
---@class UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs : System.ValueType
---@field public frameIndex System.Int32
---@field public threadIndex System.Int32
---@field public entryIndex System.Int32
---@field public calculateFrameData System.Boolean
---@field public out_LocalStartTime System.Single
---@field public out_Duration System.Single
---@field public out_TotalDurationForFrame System.Single
---@field public out_InstanceCountForFrame System.Int32
UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs = {}
---@type UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs
CS.UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs = UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs

---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs:Reset()end
---@class UnityEditorInternal.NativeProfilerTimeline : System.Object
UnityEditorInternal.NativeProfilerTimeline = {}
---@type UnityEditorInternal.NativeProfilerTimeline
CS.UnityEditorInternal.NativeProfilerTimeline = UnityEditorInternal.NativeProfilerTimeline

---@param args UnityEditorInternal.NativeProfilerTimeline_InitializeArgs
---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline.Initialize(args)end
---@param args UnityEditorInternal.NativeProfilerTimeline_DrawArgs
---@return System.Void
function UnityEditorInternal.NativeProfilerTimeline.Draw(args)end
---@param args UnityEditorInternal.NativeProfilerTimeline_GetEntryAtPositionArgs
---@return System.Boolean
function UnityEditorInternal.NativeProfilerTimeline.GetEntryAtPosition(args)end
---@param args UnityEditorInternal.NativeProfilerTimeline_GetEntryInstanceInfoArgs
---@return System.Boolean
function UnityEditorInternal.NativeProfilerTimeline.GetEntryInstanceInfo(args)end
---@param args UnityEditorInternal.NativeProfilerTimeline_GetEntryTimingInfoArgs
---@return System.Boolean
function UnityEditorInternal.NativeProfilerTimeline.GetEntryTimingInfo(args)end
---@class UnityEditorInternal.MemoryInfoGCReason : System.Enum
UnityEditorInternal.MemoryInfoGCReason = {}
---@type UnityEditorInternal.MemoryInfoGCReason
CS.UnityEditorInternal.MemoryInfoGCReason = UnityEditorInternal.MemoryInfoGCReason

---@return System.Int32 value:0
UnityEditorInternal.MemoryInfoGCReason.SceneObject = 0
---@return System.Int32 value:1
UnityEditorInternal.MemoryInfoGCReason.BuiltinResource = 1
---@return System.Int32 value:2
UnityEditorInternal.MemoryInfoGCReason.MarkedDontSave = 2
---@return System.Int32 value:3
UnityEditorInternal.MemoryInfoGCReason.AssetMarkedDirtyInEditor = 3
---@return System.Int32 value:5
UnityEditorInternal.MemoryInfoGCReason.SceneAssetReferencedByNativeCodeOnly = 5
---@return System.Int32 value:6
UnityEditorInternal.MemoryInfoGCReason.SceneAssetReferenced = 6
---@return System.Int32 value:8
UnityEditorInternal.MemoryInfoGCReason.AssetReferencedByNativeCodeOnly = 8

---@class UnityEditorInternal.ProfilerMemoryRecordMode : System.Enum
UnityEditorInternal.ProfilerMemoryRecordMode = {}
---@type UnityEditorInternal.ProfilerMemoryRecordMode
CS.UnityEditorInternal.ProfilerMemoryRecordMode = UnityEditorInternal.ProfilerMemoryRecordMode

---@return System.Int32 value:0
UnityEditorInternal.ProfilerMemoryRecordMode.None = 0
---@return System.Int32 value:1
UnityEditorInternal.ProfilerMemoryRecordMode.ManagedAllocations = 1
---@return System.Int32 value:2
UnityEditorInternal.ProfilerMemoryRecordMode.AllAllocationsFast = 2
---@return System.Int32 value:3
UnityEditorInternal.ProfilerMemoryRecordMode.AllAllocationsFull = 3

---@class UnityEditorInternal.InstrumentedAssemblyTypes : System.Enum
UnityEditorInternal.InstrumentedAssemblyTypes = {}
---@type UnityEditorInternal.InstrumentedAssemblyTypes
CS.UnityEditorInternal.InstrumentedAssemblyTypes = UnityEditorInternal.InstrumentedAssemblyTypes

---@return System.Int32 value:0
UnityEditorInternal.InstrumentedAssemblyTypes.None = 0
---@return System.Int32 value:1
UnityEditorInternal.InstrumentedAssemblyTypes.System = 1
---@return System.Int32 value:2
UnityEditorInternal.InstrumentedAssemblyTypes.Unity = 2
---@return System.Int32 value:4
UnityEditorInternal.InstrumentedAssemblyTypes.Plugins = 4

---@class UnityEditorInternal.ProfilerMemoryView : System.Enum
UnityEditorInternal.ProfilerMemoryView = {}
---@type UnityEditorInternal.ProfilerMemoryView
CS.UnityEditorInternal.ProfilerMemoryView = UnityEditorInternal.ProfilerMemoryView

---@return System.Int32 value:0
UnityEditorInternal.ProfilerMemoryView.Simple = 0
---@return System.Int32 value:1
UnityEditorInternal.ProfilerMemoryView.Detailed = 1

---@class UnityEditorInternal.ProfilerAudioView : System.Enum
UnityEditorInternal.ProfilerAudioView = {}
---@type UnityEditorInternal.ProfilerAudioView
CS.UnityEditorInternal.ProfilerAudioView = UnityEditorInternal.ProfilerAudioView

---@return System.Int32 value:0
UnityEditorInternal.ProfilerAudioView.Stats = 0
---@return System.Int32 value:1
UnityEditorInternal.ProfilerAudioView.Channels = 1
---@return System.Int32 value:2
UnityEditorInternal.ProfilerAudioView.Groups = 2
---@return System.Int32 value:3
UnityEditorInternal.ProfilerAudioView.ChannelsAndGroups = 3
---@return System.Int32 value:4
UnityEditorInternal.ProfilerAudioView.DSPGraph = 4
---@return System.Int32 value:5
UnityEditorInternal.ProfilerAudioView.Clips = 5

---@class UnityEditorInternal.ProfilerCaptureFlags : System.Enum
UnityEditorInternal.ProfilerCaptureFlags = {}
---@type UnityEditorInternal.ProfilerCaptureFlags
CS.UnityEditorInternal.ProfilerCaptureFlags = UnityEditorInternal.ProfilerCaptureFlags

---@return System.Int32 value:0
UnityEditorInternal.ProfilerCaptureFlags.None = 0
---@return System.Int32 value:1
UnityEditorInternal.ProfilerCaptureFlags.Channels = 1
---@return System.Int32 value:2
UnityEditorInternal.ProfilerCaptureFlags.DSPNodes = 2
---@return System.Int32 value:4
UnityEditorInternal.ProfilerCaptureFlags.Clips = 4

---@class UnityEditorInternal.EventMarker : System.ValueType
---@field public objectInstanceId System.Int32
---@field public nameOffset System.Int32
---@field public frame System.Int32
UnityEditorInternal.EventMarker = {}
---@type UnityEditorInternal.EventMarker
CS.UnityEditorInternal.EventMarker = UnityEditorInternal.EventMarker

---@class UnityEditorInternal.ProfilerDriver : System.Object
---@field public firstFrameIndex System.Int32 @static  getter
---@field public lastFrameIndex System.Int32 @static  getter
---@field public maxHistoryLength System.Int32 @static  getter
---@field public selectedPropertyPath System.String @static setter getter
---@field public enabled System.Boolean @static setter getter
---@field public profileGPU System.Boolean @static setter getter
---@field public profileEditor System.Boolean @static setter getter
---@field public deepProfiling System.Boolean @static setter getter
---@field public memoryRecordMode UnityEditorInternal.ProfilerMemoryRecordMode @static setter getter
---@field public directConnectionUrl System.String @static  getter
---@field public connectedProfiler System.Int32 @static setter getter
---@field public miniMemoryOverview System.String @static  getter
---@field public usedHeapSize System.UInt32 @static  getter
---@field public objectCount System.UInt32 @static  getter
---@field public isGPUProfilerSupportedByOS System.Boolean @static  getter
---@field public isGPUProfilerSupported System.Boolean @static  getter
---@field public isGPUProfilerBuggyOnDriver System.Boolean @static  getter
---@field public directConnectionPort System.String
UnityEditorInternal.ProfilerDriver = {}
---@type UnityEditorInternal.ProfilerDriver
CS.UnityEditorInternal.ProfilerDriver = UnityEditorInternal.ProfilerDriver

---@return System.Void
function UnityEditorInternal.ProfilerDriver.ClearAllFrames()end
---@param frame System.Int32
---@return System.Int32
function UnityEditorInternal.ProfilerDriver.GetNextFrameIndex(frame)end
---@param frame System.Int32
---@return System.Int32
function UnityEditorInternal.ProfilerDriver.GetPreviousFrameIndex(frame)end
---@param area UnityEngine.Profiling.ProfilerArea
---@param enabled System.Boolean
---@return System.Void
function UnityEditorInternal.ProfilerDriver.SetAreaEnabled(area, enabled)end
---@param area UnityEngine.Profiling.ProfilerArea
---@return System.Boolean
function UnityEditorInternal.ProfilerDriver.IsAreaEnabled(area)end
---@param frame System.Int32
---@param identifier System.Int32
---@return System.String
function UnityEditorInternal.ProfilerDriver.GetFormattedStatisticsValue(frame, identifier)end
---@param firstFrame System.Int32
---@param frameCount System.Int32
---@return System.Int32
function UnityEditorInternal.ProfilerDriver.GetUISystemEventMarkersCount(firstFrame, frameCount)end
---@param firstFrame System.Int32
---@param frameCount System.Int32
---@param buffer UnityEditorInternal.EventMarker[]
---@param names System.String[]
---@return System.Void
function UnityEditorInternal.ProfilerDriver.GetUISystemEventMarkersBatch(firstFrame, frameCount, buffer, names)end
---@param identifier System.Int32
---@param firstFrame System.Int32
---@param scale System.Single
---@param buffer System.Single[]
---@param maxValue System.Single
---@return System.Void
function UnityEditorInternal.ProfilerDriver.GetStatisticsValues(identifier, firstFrame, scale, buffer, maxValue)end
---@return System.Void
function UnityEditorInternal.ProfilerDriver.ResetHistory()end
---@param filename System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.SaveProfile(filename)end
---@param filename System.String
---@param keepExistingData System.Boolean
---@return System.Boolean
function UnityEditorInternal.ProfilerDriver.LoadProfile(filename, keepExistingData)end
---@return System.String[]
function UnityEditorInternal.ProfilerDriver.GetAllStatisticsProperties()end
---@param area UnityEngine.Profiling.ProfilerArea
---@return System.String[]
function UnityEditorInternal.ProfilerDriver.GetGraphStatisticsPropertiesForArea(area)end
---@param propertyName System.String
---@return System.Int32
function UnityEditorInternal.ProfilerDriver.GetStatisticsIdentifier(propertyName)end
---@param profilerArea UnityEngine.Profiling.ProfilerArea
---@param firstFrame System.Int32
---@param buffer System.Boolean[]
---@return System.Void
function UnityEditorInternal.ProfilerDriver.GetStatisticsAvailable(profilerArea, firstFrame, buffer)end
---@param profilerArea UnityEngine.Profiling.ProfilerArea
---@param propertyName System.String
---@return System.Int32
function UnityEditorInternal.ProfilerDriver.GetStatisticsIdentifierForArea(profilerArea, propertyName)end
---@param guid System.Int32
---@return System.String
function UnityEditorInternal.ProfilerDriver.GetConnectionIdentifier(guid)end
---@param guid System.Int32
---@return System.Boolean
function UnityEditorInternal.ProfilerDriver.IsIdentifierConnectable(guid)end
---@param IP System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.DirectIPConnect(IP)end
---@param IP System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.DirectURLConnect(IP)end
---@return System.Int32[]
function UnityEditorInternal.ProfilerDriver.GetAvailableProfilers()end
---@param profilerArea UnityEngine.Profiling.ProfilerArea
---@param frame System.Int32
---@return System.String
function UnityEditorInternal.ProfilerDriver.GetOverviewText(profilerArea, frame)end
---@return System.Void
function UnityEditorInternal.ProfilerDriver.RequestMemorySnapshot()end
---@param gatherObjectReferences System.Boolean
---@return System.Void
function UnityEditorInternal.ProfilerDriver.RequestObjectMemoryInfo(gatherObjectReferences)end
---@return System.Void
function UnityEditorInternal.ProfilerDriver.QueryInstrumentableFunctions()end
---@param fullname System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.QueryFunctionCallees(fullname)end
---@param fullname UnityEditorInternal.InstrumentedAssemblyTypes
---@return System.Void
function UnityEditorInternal.ProfilerDriver.SetAutoInstrumentedAssemblies(fullname)end
---@param flags System.Int32
---@return System.Void
function UnityEditorInternal.ProfilerDriver.SetAudioCaptureFlags(flags)end
---@param fullName System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.BeginInstrumentFunction(fullName)end
---@param fullName System.String
---@return System.Void
function UnityEditorInternal.ProfilerDriver.EndInstrumentFunction(fullName)end
---@class UnityEditorInternal.ProfilerFrameDataIterator : System.Object
---@field public group System.Int32 @  getter
---@field public depth System.Int32 @  getter
---@field public maxDepth System.Int32 @  getter
---@field public path System.String @  getter
---@field public name System.String @  getter
---@field public sampleId System.Int32 @  getter
---@field public id System.Int32 @  getter
---@field public instanceId System.Int32 @  getter
---@field public frameTimeMS System.Single @  getter
---@field public startTimeMS System.Single @  getter
---@field public durationMS System.Single @  getter
---@field public extraTooltipInfo System.String @  getter
UnityEditorInternal.ProfilerFrameDataIterator = {}
---@type UnityEditorInternal.ProfilerFrameDataIterator
CS.UnityEditorInternal.ProfilerFrameDataIterator = UnityEditorInternal.ProfilerFrameDataIterator

---@return System.Void
function UnityEditorInternal.ProfilerFrameDataIterator:Dispose()end
---@param enterChildren System.Boolean
---@return System.Boolean
function UnityEditorInternal.ProfilerFrameDataIterator:Next(enterChildren)end
---@param frame System.Int32
---@return System.Int32
function UnityEditorInternal.ProfilerFrameDataIterator:GetThreadCount(frame)end
---@param frame System.Int32
---@return System.Double
function UnityEditorInternal.ProfilerFrameDataIterator:GetFrameStartS(frame)end
---@param frame System.Int32
---@return System.Int32
function UnityEditorInternal.ProfilerFrameDataIterator:GetGroupCount(frame)end
---@return System.String
function UnityEditorInternal.ProfilerFrameDataIterator:GetGroupName()end
---@return System.String
function UnityEditorInternal.ProfilerFrameDataIterator:GetThreadName()end
---@param frame System.Int32
---@param threadIdx System.Int32
---@return System.Void
function UnityEditorInternal.ProfilerFrameDataIterator:SetRoot(frame, threadIdx)end
---@class UnityEditorInternal.AudioProfilerGroupInfo : System.ValueType
---@field public assetInstanceId System.Int32
---@field public objectInstanceId System.Int32
---@field public assetNameOffset System.Int32
---@field public objectNameOffset System.Int32
---@field public parentId System.Int32
---@field public uniqueId System.Int32
---@field public flags System.Int32
---@field public playCount System.Int32
---@field public distanceToListener System.Single
---@field public volume System.Single
---@field public audibility System.Single
---@field public minDist System.Single
---@field public maxDist System.Single
---@field public time System.Single
---@field public duration System.Single
---@field public frequency System.Single
UnityEditorInternal.AudioProfilerGroupInfo = {}
---@type UnityEditorInternal.AudioProfilerGroupInfo
CS.UnityEditorInternal.AudioProfilerGroupInfo = UnityEditorInternal.AudioProfilerGroupInfo

---@class UnityEditorInternal.AudioProfilerDSPInfo : System.ValueType
---@field public id System.Int32
---@field public target System.Int32
---@field public targetPort System.Int32
---@field public numChannels System.Int32
---@field public nameOffset System.Int32
---@field public weight System.Single
---@field public cpuLoad System.Single
---@field public level1 System.Single
---@field public level2 System.Single
---@field public numLevels System.Int32
---@field public flags System.Int32
UnityEditorInternal.AudioProfilerDSPInfo = {}
---@type UnityEditorInternal.AudioProfilerDSPInfo
CS.UnityEditorInternal.AudioProfilerDSPInfo = UnityEditorInternal.AudioProfilerDSPInfo

---@class UnityEditorInternal.AudioProfilerClipInfo : System.ValueType
---@field public assetInstanceId System.Int32
---@field public assetNameOffset System.Int32
---@field public loadState System.Int32
---@field public internalLoadState System.Int32
---@field public age System.Int32
---@field public disposed System.Int32
---@field public numChannelInstances System.Int32
UnityEditorInternal.AudioProfilerClipInfo = {}
---@type UnityEditorInternal.AudioProfilerClipInfo
CS.UnityEditorInternal.AudioProfilerClipInfo = UnityEditorInternal.AudioProfilerClipInfo

---@class UnityEditorInternal.BatchBreakingReason : System.Enum
UnityEditorInternal.BatchBreakingReason = {}
---@type UnityEditorInternal.BatchBreakingReason
CS.UnityEditorInternal.BatchBreakingReason = UnityEditorInternal.BatchBreakingReason

---@return System.Int32 value:0
UnityEditorInternal.BatchBreakingReason.NoBreaking = 0
---@return System.Int32 value:1
UnityEditorInternal.BatchBreakingReason.NotCoplanarWithCanvas = 1
---@return System.Int32 value:2
UnityEditorInternal.BatchBreakingReason.CanvasInjectionIndex = 2
---@return System.Int32 value:4
UnityEditorInternal.BatchBreakingReason.DifferentMaterialInstance = 4
---@return System.Int32 value:8
UnityEditorInternal.BatchBreakingReason.DifferentRectClipping = 8

---@class UnityEditorInternal.UISystemProfilerInfo : System.ValueType
---@field public objectInstanceId System.Int32
---@field public objectNameOffset System.Int32
---@field public parentId System.Int32
---@field public batchCount System.Int32
---@field public totalBatchCount System.Int32
---@field public vertexCount System.Int32
---@field public totalVertexCount System.Int32
---@field public isBatch System.Boolean
---@field public batchBreakingReason UnityEditorInternal.BatchBreakingReason
---@field public instanceIDsIndex System.Int32
---@field public instanceIDsCount System.Int32
---@field public renderDataIndex System.Int32
---@field public renderDataCount System.Int32
UnityEditorInternal.UISystemProfilerInfo = {}
---@type UnityEditorInternal.UISystemProfilerInfo
CS.UnityEditorInternal.UISystemProfilerInfo = UnityEditorInternal.UISystemProfilerInfo

---@class UnityEditorInternal.ProfilerProperty : System.Object
---@field public propertyName System.String @  getter
---@field public HasChildren System.Boolean @  getter
---@field public onlyShowGPUSamples System.Boolean @ setter getter
---@field public instanceIDs System.Int32[] @  getter
---@field public depth System.Int32 @  getter
---@field public propertyPath System.String @  getter
---@field public frameFPS System.String @  getter
---@field public frameTime System.String @  getter
---@field public frameGpuTime System.String @  getter
---@field public frameDataReady System.Boolean @  getter
UnityEditorInternal.ProfilerProperty = {}
---@type UnityEditorInternal.ProfilerProperty
CS.UnityEditorInternal.ProfilerProperty = UnityEditorInternal.ProfilerProperty

---@return System.Void
function UnityEditorInternal.ProfilerProperty:Cleanup()end
---@param enterChildren System.Boolean
---@return System.Boolean
function UnityEditorInternal.ProfilerProperty:Next(enterChildren)end
---@param frame System.Int32
---@param profilerSortColumn UnityEditorInternal.Profiling.ProfilerColumn
---@param viewType UnityEditorInternal.Profiling.ProfilerViewType
---@return System.Void
function UnityEditorInternal.ProfilerProperty:SetRoot(frame, profilerSortColumn, viewType)end
---@return System.Void
function UnityEditorInternal.ProfilerProperty:ResetToRoot()end
---@param source UnityEditorInternal.ProfilerProperty
---@return System.Void
function UnityEditorInternal.ProfilerProperty:InitializeDetailProperty(source)end
---@param column UnityEditorInternal.Profiling.ProfilerColumn
---@return System.String
function UnityEditorInternal.ProfilerProperty:GetTooltip(column)end
---@param column UnityEditorInternal.Profiling.ProfilerColumn
---@return System.String
function UnityEditorInternal.ProfilerProperty:GetColumn(column)end
---@param colum UnityEditorInternal.Profiling.ProfilerColumn
---@return System.Single
function UnityEditorInternal.ProfilerProperty:GetColumnAsSingle(colum)end
---@return UnityEditorInternal.AudioProfilerGroupInfo[]
function UnityEditorInternal.ProfilerProperty:GetAudioProfilerGroupInfo()end
---@return UnityEditorInternal.AudioProfilerDSPInfo[]
function UnityEditorInternal.ProfilerProperty:GetAudioProfilerDSPInfo()end
---@return UnityEditorInternal.AudioProfilerClipInfo[]
function UnityEditorInternal.ProfilerProperty:GetAudioProfilerClipInfo()end
---@param offset System.Int32
---@return System.String
function UnityEditorInternal.ProfilerProperty:GetAudioProfilerNameByOffset(offset)end
---@return UnityEditorInternal.UISystemProfilerInfo[]
function UnityEditorInternal.ProfilerProperty:GetUISystemProfilerInfo()end
---@param offset System.Int32
---@return System.String
function UnityEditorInternal.ProfilerProperty:GetUISystemProfilerNameByOffset(offset)end
---@return UnityEditorInternal.EventMarker[]
function UnityEditorInternal.ProfilerProperty:GetUISystemEventMarkers()end
---@param offset System.Int32
---@return System.String
function UnityEditorInternal.ProfilerProperty:GetUISystemEventMarkerNameByOffset(offset)end
---@return System.Int32[]
function UnityEditorInternal.ProfilerProperty:GetUISystemBatchInstanceIDs()end
---@param t UnityEngine.Texture2D
---@return System.Void
function UnityEditorInternal.ProfilerProperty.ReleaseUISystemProfilerRender(t)end
---@param frameIndex System.Int32
---@param renderDataIndex System.Int32
---@param renderDataCount System.Int32
---@param renderOverdraw System.Boolean
---@return UnityEngine.Texture2D
function UnityEditorInternal.ProfilerProperty.UISystemProfilerRender(frameIndex, renderDataIndex, renderDataCount, renderOverdraw)end
---@return System.Void
function UnityEditorInternal.ProfilerProperty:Dispose()end
---@class UnityEditorInternal.ObjectMemoryInfo : System.Object
---@field public instanceId System.Int32
---@field public memorySize System.Int64
---@field public count System.Int32
---@field public reason System.Int32
---@field public name System.String
---@field public className System.String
UnityEditorInternal.ObjectMemoryInfo = {}
---@type UnityEditorInternal.ObjectMemoryInfo
CS.UnityEditorInternal.ObjectMemoryInfo = UnityEditorInternal.ObjectMemoryInfo

---@class UnityEditorInternal.ObjectMemoryStackInfo : System.Object
---@field public expanded System.Boolean
---@field public sorted System.Boolean
---@field public allocated System.Int32
---@field public ownedAllocated System.Int32
---@field public callerSites UnityEditorInternal.ObjectMemoryStackInfo[]
---@field public name System.String
UnityEditorInternal.ObjectMemoryStackInfo = {}
---@type UnityEditorInternal.ObjectMemoryStackInfo
CS.UnityEditorInternal.ObjectMemoryStackInfo = UnityEditorInternal.ObjectMemoryStackInfo

---@class UnityEditorInternal.BlendTreePreviewUtility : System.Object
UnityEditorInternal.BlendTreePreviewUtility = {}
---@type UnityEditorInternal.BlendTreePreviewUtility
CS.UnityEditorInternal.BlendTreePreviewUtility = UnityEditorInternal.BlendTreePreviewUtility

---@param animator UnityEngine.Animator
---@param layerIndex System.Int32
---@param stateHash System.Int32
---@param weightArray System.Single[]
---@return System.Void
function UnityEditorInternal.BlendTreePreviewUtility.GetRootBlendTreeChildWeights(animator, layerIndex, stateHash, weightArray)end
---@param animator UnityEngine.Animator
---@param layerIndex System.Int32
---@param stateHash System.Int32
---@param weightArray System.Single[]
---@param blendX System.Single
---@param blendY System.Single
---@return System.Void
function UnityEditorInternal.BlendTreePreviewUtility.CalculateRootBlendTreeChildWeights(animator, layerIndex, stateHash, weightArray, blendX, blendY)end
---@param animator UnityEngine.Animator
---@param layerIndex System.Int32
---@param stateHash System.Int32
---@param blendTexture UnityEngine.Texture2D
---@param weightTextures UnityEngine.Texture2D[]
---@param rect UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.BlendTreePreviewUtility.CalculateBlendTexture(animator, layerIndex, stateHash, blendTexture, weightTextures, rect)end
---@class UnityEditorInternal.ComponentUtility : System.Object
UnityEditorInternal.ComponentUtility = {}
---@type UnityEditorInternal.ComponentUtility
CS.UnityEditorInternal.ComponentUtility = UnityEditorInternal.ComponentUtility

---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditorInternal.ComponentUtility.MoveComponentUp(component)end
---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditorInternal.ComponentUtility.MoveComponentDown(component)end
---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditorInternal.ComponentUtility.CopyComponent(component)end
---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditorInternal.ComponentUtility.PasteComponentValues(component)end
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEditorInternal.ComponentUtility.PasteComponentAsNew(go)end
---@param dst UnityEngine.GameObject
---@param componentFilter UnityEditorInternal.ComponentUtility.IsDesiredComponent
---@return System.Void
function UnityEditorInternal.ComponentUtility.DestroyComponentsMatching(dst, componentFilter)end
---@param src UnityEngine.GameObject
---@param dst UnityEngine.GameObject
---@param componentFilter UnityEditorInternal.ComponentUtility.IsDesiredComponent
---@return System.Void
function UnityEditorInternal.ComponentUtility.ReplaceComponentsIfDifferent(src, dst, componentFilter)end
---@class UnityEditorInternal.GenerateIconsWithMipLevels : System.Object
UnityEditorInternal.GenerateIconsWithMipLevels = {}
---@type UnityEditorInternal.GenerateIconsWithMipLevels
CS.UnityEditorInternal.GenerateIconsWithMipLevels = UnityEditorInternal.GenerateIconsWithMipLevels

---@return System.Void
function UnityEditorInternal.GenerateIconsWithMipLevels.GenerateAllIconsWithMipLevels()end
---@param assetPath System.String
---@param logError System.Boolean
---@return System.Boolean
function UnityEditorInternal.GenerateIconsWithMipLevels.VerifyIconPath(assetPath, logError)end
---@return System.Void
function UnityEditorInternal.GenerateIconsWithMipLevels.GenerateSelectedIconsWithMips()end
---@param assetPath System.String
---@param mipTextures System.Collections.Generic.Dictionary
---@param fileInfo System.IO.FileInfo
---@return System.Void
function UnityEditorInternal.GenerateIconsWithMipLevels.GenerateIconWithMipLevels(assetPath, mipTextures, fileInfo)end
---@param assetPath System.String
---@param separator System.String
---@return System.Int32
function UnityEditorInternal.GenerateIconsWithMipLevels.MipLevelForAssetPath(assetPath, separator)end
---@class UnityEditorInternal.CanAppendBuild : System.Enum
UnityEditorInternal.CanAppendBuild = {}
---@type UnityEditorInternal.CanAppendBuild
CS.UnityEditorInternal.CanAppendBuild = UnityEditorInternal.CanAppendBuild

---@return System.Int32 value:0
UnityEditorInternal.CanAppendBuild.Unsupported = 0
---@return System.Int32 value:1
UnityEditorInternal.CanAppendBuild.Yes = 1
---@return System.Int32 value:2
UnityEditorInternal.CanAppendBuild.No = 2

---@class UnityEditorInternal.DllType : System.Enum
UnityEditorInternal.DllType = {}
---@type UnityEditorInternal.DllType
CS.UnityEditorInternal.DllType = UnityEditorInternal.DllType

---@return System.Int32 value:0
UnityEditorInternal.DllType.Unknown = 0
---@return System.Int32 value:1
UnityEditorInternal.DllType.Native = 1
---@return System.Int32 value:2
UnityEditorInternal.DllType.UnknownManaged = 2
---@return System.Int32 value:3
UnityEditorInternal.DllType.ManagedNET35 = 3
---@return System.Int32 value:4
UnityEditorInternal.DllType.ManagedNET40 = 4
---@return System.Int32 value:5
UnityEditorInternal.DllType.WinMDNative = 5
---@return System.Int32 value:6
UnityEditorInternal.DllType.WinMDNET40 = 6

---@class UnityEditorInternal.InternalEditorUtility : System.Object
---@field public isHumanControllingUs System.Boolean @static  getter
---@field public isApplicationActive System.Boolean @static  getter
---@field public inBatchMode System.Boolean @static  getter
---@field public expandedProjectWindowItems System.Int32[] @static setter getter
---@field public tags System.String[] @static  getter
---@field public layers System.String[] @static  getter
---@field public unityPreferencesFolder System.String @static  getter
---@field public defaultScreenWidth System.Single @static  getter
---@field public defaultScreenHeight System.Single @static  getter
---@field public defaultWebScreenWidth System.Single @static  getter
---@field public defaultWebScreenHeight System.Single @static  getter
---@field public remoteScreenWidth System.Single @static  getter
---@field public remoteScreenHeight System.Single @static  getter
UnityEditorInternal.InternalEditorUtility = {}
---@type UnityEditorInternal.InternalEditorUtility
CS.UnityEditorInternal.InternalEditorUtility = UnityEditorInternal.InternalEditorUtility

---@param result System.Int32
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.BumpMapSettingsFixingWindowReportResult(result)end
---@param material UnityEngine.Material
---@param propName System.String
---@param flaggedAsNormal System.Boolean
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.BumpMapTextureNeedsFixingInternal(material, propName, flaggedAsNormal)end
---@param material UnityEngine.Material
---@param propName System.String
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.FixNormalmapTextureInternal(material, propName)end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetEditorAssemblyPath()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetEngineAssemblyPath()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetEngineCoreModuleAssemblyPath()end
---@param objects UnityEngine.Object[]
---@return System.String
function UnityEditorInternal.InternalEditorUtility.CalculateHashForObjectsAndDependencies(objects)end
---@param commandName System.String
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.ExecuteCommandOnKeyWindow(commandName)end
---@param renderer UnityEngine.Renderer
---@return UnityEngine.Material[]
function UnityEditorInternal.InternalEditorUtility.InstantiateMaterialsInEditMode(renderer)end
---@param target UnityEditor.BuildTarget
---@param location System.String
---@return UnityEditorInternal.CanAppendBuild
function UnityEditorInternal.InternalEditorUtility.BuildCanBeAppended(target, location)end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.RequestScriptReload()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SwitchSkinAndRepaintAllViews()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.RepaintAllViews()end
---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.GetIsInspectorExpanded(obj)end
---@param obj UnityEngine.Object
---@param isExpanded System.Boolean
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetIsInspectorExpanded(obj, isExpanded)end
---@param dllName System.String
---@param dllLocation System.String
---@return System.Reflection.Assembly
function UnityEditorInternal.InternalEditorUtility.LoadAssemblyWrapper(dllName, dllLocation)end
---@param obj UnityEngine.Object[]
---@param path System.String
---@param allowTextSerialization System.Boolean
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SaveToSerializedFileAndForget(obj, path, allowTextSerialization)end
---@param path System.String
---@return UnityEngine.Object[]
function UnityEditorInternal.InternalEditorUtility.LoadSerializedFileAndForget(path)end
---@param property UnityEditor.HierarchyProperty
---@param perform System.Boolean
---@return UnityEditor.DragAndDropVisualMode
function UnityEditorInternal.InternalEditorUtility.ProjectWindowDrag(property, perform)end
---@param property UnityEditor.HierarchyProperty
---@param dropMode UnityEditorInternal.InternalEditorUtility.HierarchyDropMode
---@param parentForDraggedObjects UnityEngine.Transform
---@param perform System.Boolean
---@return UnityEditor.DragAndDropVisualMode
function UnityEditorInternal.InternalEditorUtility.HierarchyWindowDrag(property, dropMode, parentForDraggedObjects, perform)end
---@param dropUpon UnityEngine.Object
---@param worldPosition UnityEngine.Vector3
---@param viewportPosition UnityEngine.Vector2
---@param parentForDraggedObjects UnityEngine.Transform
---@param perform System.Boolean
---@return UnityEditor.DragAndDropVisualMode
function UnityEditorInternal.InternalEditorUtility.SceneViewDrag(dropUpon, worldPosition, viewportPosition, parentForDraggedObjects, perform)end
---@param rectTransform UnityEngine.RectTransform
---@param rect UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetRectTransformTemporaryRect(rectTransform, rect)end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasTeamLicense()end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasPro()end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasFreeLicense()end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasEduLicense()end
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasAdvancedLicenseOnBuildTarget(target)end
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsMobilePlatform(target)end
---@param pos UnityEngine.Vector2
---@return UnityEngine.Rect
function UnityEditorInternal.InternalEditorUtility.GetBoundsOfDesktopAtPoint(pos)end
---@param tag System.String
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.RemoveTag(tag)end
---@param tag System.String
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.AddTag(tag)end
---@param concatenatedLayersMask System.Int32
---@return UnityEngine.LayerMask
function UnityEditorInternal.InternalEditorUtility.ConcatenatedLayersMaskToLayerMask(concatenatedLayersMask)end
---@param mask UnityEngine.LayerMask
---@return System.Int32
function UnityEditorInternal.InternalEditorUtility.LayerMaskToConcatenatedLayersMask(mask)end
---@param sprite UnityEngine.Sprite
---@param getAtlasData System.Boolean
---@return UnityEngine.Vector4
function UnityEditorInternal.InternalEditorUtility.GetSpriteOuterUV(sprite, getAtlasData)end
---@param instanceID System.Int32
---@return UnityEngine.Object
function UnityEditorInternal.InternalEditorUtility.GetObjectFromInstanceID(instanceID)end
---@param instanceID System.Int32
---@return System.Type
function UnityEditorInternal.InternalEditorUtility.GetTypeWithoutLoadingObject(instanceID)end
---@param instanceID System.Int32
---@return UnityEngine.Object
function UnityEditorInternal.InternalEditorUtility.GetLoadedObjectFromInstanceID(instanceID)end
---@param layer System.Int32
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetLayerName(layer)end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetAssetsFolder()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetEditorFolder()end
---@param path System.String
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsInEditorFolder(path)end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.ReloadWindowLayoutMenu()end
---@param quitOnCancel System.Boolean
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.RevertFactoryLayoutSettings(quitOnCancel)end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.LoadDefaultLayout()end
---@param material UnityEngine.Material
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetupShaderMenu(material)end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetFullUnityVersion()end
---@return System.Version
function UnityEditorInternal.InternalEditorUtility.GetUnityVersion()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetUnityVersionDigits()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetUnityBuildBranch()end
---@return System.Int32
function UnityEditorInternal.InternalEditorUtility.GetUnityVersionDate()end
---@return System.Int32
function UnityEditorInternal.InternalEditorUtility.GetUnityRevision()end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsUnityBeta()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetUnityCopyright()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetLicenseInfo()end
---@return System.Int32[]
function UnityEditorInternal.InternalEditorUtility.GetLicenseFlags()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetAuthToken()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.OpenEditorConsole()end
---@param instanceID System.Int32
---@return System.Int32
function UnityEditorInternal.InternalEditorUtility.GetGameObjectInstanceIDFromComponent(instanceID)end
---@param pixelPos UnityEngine.Vector2
---@param sizex System.Int32
---@param sizey System.Int32
---@return UnityEngine.Color[]
function UnityEditorInternal.InternalEditorUtility.ReadScreenPixel(pixelPos, sizex, sizey)end
---@param cursorPosHint UnityEngine.Vector2
---@param sizex System.Int32
---@param sizey System.Int32
---@return UnityEngine.Color[]
function UnityEditorInternal.InternalEditorUtility.ReadScreenPixelUnderCursor(cursorPosHint, sizex, sizey)end
---@param index System.Int32
---@param name System.String
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetGpuDeviceAndRecreateGraphics(index, name)end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsGpuDeviceSelectionSupported()end
---@return System.String[]
function UnityEditorInternal.InternalEditorUtility.GetGpuDevices()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.OpenPlayerConsole()end
---@param evt UnityEngine.Event
---@return System.String
function UnityEditorInternal.InternalEditorUtility.TextifyEvent(evt)end
---@return System.String[]
function UnityEditorInternal.InternalEditorUtility.GetAvailableDiffTools()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetNoDiffToolsDetectedMessage()end
---@param b UnityEngine.Bounds
---@param t UnityEngine.Transform
---@return UnityEngine.Bounds
function UnityEditorInternal.InternalEditorUtility.TransformBounds(b, t)end
---@param lights UnityEngine.Light[]
---@param ambient UnityEngine.Color
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetCustomLightingInternal(lights, ambient)end
---@param lights UnityEngine.Light[]
---@param ambient UnityEngine.Color
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SetCustomLighting(lights, ambient)end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.RemoveCustomLighting()end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.HasFullscreenCamera()end
---@param usePivotOnlyForParticles System.Boolean
---@param onlyUseActiveSelection System.Boolean
---@return UnityEngine.Bounds
function UnityEditorInternal.InternalEditorUtility.CalculateSelectionBounds(usePivotOnlyForParticles, onlyUseActiveSelection)end
---@param focus System.Boolean
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.OnGameViewFocus(focus)end
---@param filename System.String
---@param line System.Int32
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.OpenFileAtLineExternal(filename, line)end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.CanConnectToCacheServer()end
---@param path System.String
---@return UnityEditorInternal.DllType
function UnityEditorInternal.InternalEditorUtility.DetectDotNetDll(path)end
---@param path System.String
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsDotNet4Dll(path)end
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.CurrentThreadIsMainThread()end
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetCrashReportFolder()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.ResetCursor()end
---@return System.UInt64
function UnityEditorInternal.InternalEditorUtility.VerifyCacheServerIntegrity()end
---@return System.UInt64
function UnityEditorInternal.InternalEditorUtility.FixCacheServerIntegrityErrors()end
---@param lhs UnityEngine.Transform
---@param rhs UnityEngine.Transform
---@return System.Int32
function UnityEditorInternal.InternalEditorUtility.DetermineDepthOrder(lhs, rhs)end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.ShowPackageManagerWindow()end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEditorInternal.InternalEditorUtility.PassAndReturnVector2(v)end
---@param c UnityEngine.Color32
---@return UnityEngine.Color32
function UnityEditorInternal.InternalEditorUtility.PassAndReturnColor32(c)end
---@param path System.String
---@param image UnityEngine.Texture2D
---@param hotSpot UnityEngine.Vector2
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.SaveCursorToFile(path, image, hotSpot)end
---@param count System.UInt64
---@return System.String
function UnityEditorInternal.InternalEditorUtility.CountToString(count)end
---@param operation System.String
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.EnsureSceneHasBeenSaved(operation)end
---@param fileName System.String
---@return UnityEngine.Texture2D
function UnityEditorInternal.InternalEditorUtility.FindIconForFile(fileName)end
---@param fileName System.String
---@return UnityEngine.Texture2D
function UnityEditorInternal.InternalEditorUtility.GetIconForFile(fileName)end
---@param prefix System.String
---@param count System.Int32
---@return System.String[]
function UnityEditorInternal.InternalEditorUtility.GetEditorSettingsList(prefix, count)end
---@param prefix System.String
---@param aList System.String[]
---@param count System.Int32
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.SaveEditorSettingsList(prefix, aList, count)end
---@param position UnityEngine.Rect
---@param text System.String
---@param style UnityEngine.GUIStyle
---@return System.String
function UnityEditorInternal.InternalEditorUtility.TextAreaForDocBrowser(position, text, style)end
---@return UnityEngine.Camera[]
function UnityEditorInternal.InternalEditorUtility.GetSceneViewCameras()end
---@return System.Void
function UnityEditorInternal.InternalEditorUtility.ShowGameView()end
---@param clickedInstanceID System.Int32
---@param allInstanceIDs System.Collections.Generic.List
---@param selectedInstanceIDs System.Collections.Generic.List
---@param lastClickedInstanceID System.Int32
---@param keepMultiSelection System.Boolean
---@param useShiftAsActionKey System.Boolean
---@param allowMultiSelection System.Boolean
---@return System.Collections.Generic.List
function UnityEditorInternal.InternalEditorUtility.GetNewSelection(clickedInstanceID, allInstanceIDs, selectedInstanceIDs, lastClickedInstanceID, keepMultiSelection, useShiftAsActionKey, allowMultiSelection)end
---@param filename System.String
---@return System.Boolean
function UnityEditorInternal.InternalEditorUtility.IsValidFileName(filename)end
---@param filename System.String
---@param logIfInvalidChars System.Boolean
---@return System.String
function UnityEditorInternal.InternalEditorUtility.RemoveInvalidCharsFromFileName(filename, logIfInvalidChars)end
---@param filename System.String
---@return System.String
function UnityEditorInternal.InternalEditorUtility.GetDisplayStringOfInvalidCharsOfFileName(filename)end
---@class UnityEditorInternal.InternalEditorUtility.HierarchyDropMode : System.Enum
UnityEditorInternal.InternalEditorUtility.HierarchyDropMode = {}
---@type UnityEditorInternal.InternalEditorUtility.HierarchyDropMode
CS.UnityEditorInternal.InternalEditorUtility.HierarchyDropMode = UnityEditorInternal.InternalEditorUtility.HierarchyDropMode

---@return System.Int32 value:0
UnityEditorInternal.InternalEditorUtility.HierarchyDropMode.kHierarchyDragNormal = 0
---@return System.Int32 value:1
UnityEditorInternal.InternalEditorUtility.HierarchyDropMode.kHierarchyDropUpon = 1
---@return System.Int32 value:2
UnityEditorInternal.InternalEditorUtility.HierarchyDropMode.kHierarchyDropBetween = 2
---@return System.Int32 value:4
UnityEditorInternal.InternalEditorUtility.HierarchyDropMode.kHierarchyDropAfterParent = 4

---@class UnityEditorInternal.RegistryView : System.Enum
UnityEditorInternal.RegistryView = {}
---@type UnityEditorInternal.RegistryView
CS.UnityEditorInternal.RegistryView = UnityEditorInternal.RegistryView

---@return System.Int32 value:0
UnityEditorInternal.RegistryView.Default = 0
---@return System.Int32 value:1
UnityEditorInternal.RegistryView._32 = 1
---@return System.Int32 value:2
UnityEditorInternal.RegistryView._64 = 2

---@class UnityEditorInternal.RegistryUtil : System.Object
UnityEditorInternal.RegistryUtil = {}
---@type UnityEditorInternal.RegistryUtil
CS.UnityEditorInternal.RegistryUtil = UnityEditorInternal.RegistryUtil

---@param subKey System.String
---@param valueName System.String
---@param defaultValue System.UInt32
---@param view UnityEditorInternal.RegistryView
---@return System.UInt32
function UnityEditorInternal.RegistryUtil.GetRegistryUInt32Value(subKey, valueName, defaultValue, view)end
---@param subKey System.String
---@param valueName System.String
---@param defaultValue System.String
---@param view UnityEditorInternal.RegistryView
---@return System.String
function UnityEditorInternal.RegistryUtil.GetRegistryStringValue(subKey, valueName, defaultValue, view)end
---@class UnityEditorInternal.ScriptEditorUtility : System.Object
UnityEditorInternal.ScriptEditorUtility = {}
---@type UnityEditorInternal.ScriptEditorUtility
CS.UnityEditorInternal.ScriptEditorUtility = UnityEditorInternal.ScriptEditorUtility

---@param pathCallBack System.Func
---@return System.Void
function UnityEditorInternal.ScriptEditorUtility.RegisterIde(pathCallBack)end
---@param path System.String
---@return UnityEditorInternal.ScriptEditorUtility.ScriptEditor
function UnityEditorInternal.ScriptEditorUtility.GetScriptEditorFromPath(path)end
---@return System.String
function UnityEditorInternal.ScriptEditorUtility.GetExternalScriptEditor()end
---@param path System.String
---@return System.Void
function UnityEditorInternal.ScriptEditorUtility.SetExternalScriptEditor(path)end
---@return System.String
function UnityEditorInternal.ScriptEditorUtility.GetExternalScriptEditorArgs()end
---@param args System.String
---@return System.Void
function UnityEditorInternal.ScriptEditorUtility.SetExternalScriptEditorArgs(args)end
---@return UnityEditorInternal.ScriptEditorUtility.ScriptEditor
function UnityEditorInternal.ScriptEditorUtility.GetScriptEditorFromPreferences()end
---@param platform UnityEngine.RuntimePlatform
---@return System.Collections.Generic.Dictionary
function UnityEditorInternal.ScriptEditorUtility.GetFoundScriptEditorPaths(platform)end
---@class UnityEditorInternal.ScriptEditorUtility.ScriptEditor : System.Enum
UnityEditorInternal.ScriptEditorUtility.ScriptEditor = {}
---@type UnityEditorInternal.ScriptEditorUtility.ScriptEditor
CS.UnityEditorInternal.ScriptEditorUtility.ScriptEditor = UnityEditorInternal.ScriptEditorUtility.ScriptEditor

---@return System.Int32 value:0
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.SystemDefault = 0
---@return System.Int32 value:1
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.MonoDevelop = 1
---@return System.Int32 value:2
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.VisualStudio = 2
---@return System.Int32 value:3
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.VisualStudioExpress = 3
---@return System.Int32 value:4
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.VisualStudioCode = 4
---@return System.Int32 value:5
UnityEditorInternal.ScriptEditorUtility.ScriptEditor.Rider = 5

---@class UnityEditorInternal.ScriptEditorUtility.Installation : System.ValueType
---@field public Name System.String
---@field public Path System.String
UnityEditorInternal.ScriptEditorUtility.Installation = {}
---@type UnityEditorInternal.ScriptEditorUtility.Installation
CS.UnityEditorInternal.ScriptEditorUtility.Installation = UnityEditorInternal.ScriptEditorUtility.Installation

---@class UnityEditorInternal.AssemblyDefinitionImporter : UnityEditor.AssetImporter
UnityEditorInternal.AssemblyDefinitionImporter = {}
---@type UnityEditorInternal.AssemblyDefinitionImporter
CS.UnityEditorInternal.AssemblyDefinitionImporter = UnityEditorInternal.AssemblyDefinitionImporter

---@class UnityEditorInternal.AssemblyDefinitionAsset : UnityEngine.TextAsset
UnityEditorInternal.AssemblyDefinitionAsset = {}
---@type UnityEditorInternal.AssemblyDefinitionAsset
CS.UnityEditorInternal.AssemblyDefinitionAsset = UnityEditorInternal.AssemblyDefinitionAsset

---@class UnityEditorInternal.Il2CppNativeCodeBuilder : System.Object
---@field public CompilerPlatform System.String @  getter
---@field public CompilerArchitecture System.String @  getter
---@field public CompilerFlags System.String @  getter
---@field public LinkerFlags System.String @  getter
---@field public SetsUpEnvironment System.Boolean @  getter
---@field public CacheDirectory System.String @  getter
---@field public PluginPath System.String @  getter
---@field public AdditionalIl2CPPArguments System.Collections.Generic.IEnumerable @  getter
---@field public LinkLibIl2CppStatically System.Boolean @  getter
UnityEditorInternal.Il2CppNativeCodeBuilder = {}
---@type UnityEditorInternal.Il2CppNativeCodeBuilder
CS.UnityEditorInternal.Il2CppNativeCodeBuilder = UnityEditorInternal.Il2CppNativeCodeBuilder

---@param relativeIncludePaths System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEditorInternal.Il2CppNativeCodeBuilder:ConvertIncludesToFullPaths(relativeIncludePaths)end
---@param outputFileRelativePath System.String
---@return System.String
function UnityEditorInternal.Il2CppNativeCodeBuilder:ConvertOutputFileToFullPath(outputFileRelativePath)end
---@param startInfo System.Diagnostics.ProcessStartInfo
---@return System.Void
function UnityEditorInternal.Il2CppNativeCodeBuilder:SetupStartInfo(startInfo)end
---@class UnityEditorInternal.Il2CppNativeCodeBuilderUtils : System.Object
UnityEditorInternal.Il2CppNativeCodeBuilderUtils = {}
---@type UnityEditorInternal.Il2CppNativeCodeBuilderUtils
CS.UnityEditorInternal.Il2CppNativeCodeBuilderUtils = UnityEditorInternal.Il2CppNativeCodeBuilderUtils

---@param builder UnityEditorInternal.Il2CppNativeCodeBuilder
---@param outputRelativePath System.String
---@param includeRelativePaths System.Collections.Generic.IEnumerable
---@param additionalLibs System.Collections.Generic.IEnumerable
---@param compilerConfiguration UnityEditor.Il2CppCompilerConfiguration
---@return System.Collections.Generic.IEnumerable
function UnityEditorInternal.Il2CppNativeCodeBuilderUtils.AddBuilderArguments(builder, outputRelativePath, includeRelativePaths, additionalLibs, compilerConfiguration)end
---@param builder UnityEditorInternal.Il2CppNativeCodeBuilder
---@return System.Void
function UnityEditorInternal.Il2CppNativeCodeBuilderUtils.ClearAndPrepareCacheDirectory(builder)end
---@param builder UnityEditorInternal.Il2CppNativeCodeBuilder
---@param currentEditorVersion System.String
---@return System.Void
function UnityEditorInternal.Il2CppNativeCodeBuilderUtils.ClearCacheIfEditorVersionDiffers(builder, currentEditorVersion)end
---@param builder UnityEditorInternal.Il2CppNativeCodeBuilder
---@param currentEditorVersion System.String
---@return System.Void
function UnityEditorInternal.Il2CppNativeCodeBuilderUtils.PrepareCacheDirectory(builder, currentEditorVersion)end
---@param builderCacheDirectory System.String
---@return System.String
function UnityEditorInternal.Il2CppNativeCodeBuilderUtils.ObjectFilePathInCacheDirectoryFor(builderCacheDirectory)end
---@class UnityEditorInternal.ReorderableList : System.Object
---@field public defaultBehaviours UnityEditorInternal.ReorderableList.Defaults @static  getter
---@field public serializedProperty UnityEditor.SerializedProperty @ setter getter
---@field public list System.Collections.IList @ setter getter
---@field public index System.Int32 @ setter getter
---@field public draggable System.Boolean @ setter getter
---@field public count System.Int32 @  getter
---@field public drawHeaderCallback UnityEditorInternal.ReorderableList.HeaderCallbackDelegate
---@field public drawFooterCallback UnityEditorInternal.ReorderableList.FooterCallbackDelegate
---@field public drawElementCallback UnityEditorInternal.ReorderableList.ElementCallbackDelegate
---@field public drawElementBackgroundCallback UnityEditorInternal.ReorderableList.ElementCallbackDelegate
---@field public drawNoneElementCallback UnityEditorInternal.ReorderableList.DrawNoneElementCallback
---@field public elementHeightCallback UnityEditorInternal.ReorderableList.ElementHeightCallbackDelegate
---@field public onReorderCallbackWithDetails UnityEditorInternal.ReorderableList.ReorderCallbackDelegateWithDetails
---@field public onReorderCallback UnityEditorInternal.ReorderableList.ReorderCallbackDelegate
---@field public onSelectCallback UnityEditorInternal.ReorderableList.SelectCallbackDelegate
---@field public onAddCallback UnityEditorInternal.ReorderableList.AddCallbackDelegate
---@field public onAddDropdownCallback UnityEditorInternal.ReorderableList.AddDropdownCallbackDelegate
---@field public onRemoveCallback UnityEditorInternal.ReorderableList.RemoveCallbackDelegate
---@field public onMouseDragCallback UnityEditorInternal.ReorderableList.DragCallbackDelegate
---@field public onMouseUpCallback UnityEditorInternal.ReorderableList.SelectCallbackDelegate
---@field public onCanRemoveCallback UnityEditorInternal.ReorderableList.CanRemoveCallbackDelegate
---@field public onCanAddCallback UnityEditorInternal.ReorderableList.CanAddCallbackDelegate
---@field public onChangedCallback UnityEditorInternal.ReorderableList.ChangedCallbackDelegate
---@field public displayAdd System.Boolean
---@field public displayRemove System.Boolean
---@field public elementHeight System.Single
---@field public headerHeight System.Single
---@field public footerHeight System.Single
---@field public showDefaultBackground System.Boolean
UnityEditorInternal.ReorderableList = {}
---@type UnityEditorInternal.ReorderableList
CS.UnityEditorInternal.ReorderableList = UnityEditorInternal.ReorderableList

---@return System.Void
function UnityEditorInternal.ReorderableList:DoLayoutList()end
---@param rect UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.ReorderableList:DoList(rect)end
---@return System.Single
function UnityEditorInternal.ReorderableList:GetHeight()end
---@return System.Void
function UnityEditorInternal.ReorderableList:GrabKeyboardFocus()end
---@return System.Void
function UnityEditorInternal.ReorderableList:ReleaseKeyboardFocus()end
---@return System.Boolean
function UnityEditorInternal.ReorderableList:HasKeyboardControl()end
---@class UnityEditorInternal.ReorderableList.Defaults : System.Object
---@field public iconToolbarPlus UnityEngine.GUIContent
---@field public iconToolbarPlusMore UnityEngine.GUIContent
---@field public iconToolbarMinus UnityEngine.GUIContent
---@field public draggingHandle UnityEngine.GUIStyle
---@field public headerBackground UnityEngine.GUIStyle
---@field public footerBackground UnityEngine.GUIStyle
---@field public boxBackground UnityEngine.GUIStyle
---@field public preButton UnityEngine.GUIStyle
---@field public elementBackground UnityEngine.GUIStyle
---@field public padding System.Int32
---@field public dragHandleWidth System.Int32
UnityEditorInternal.ReorderableList.Defaults = {}
---@type UnityEditorInternal.ReorderableList.Defaults
CS.UnityEditorInternal.ReorderableList.Defaults = UnityEditorInternal.ReorderableList.Defaults

---@param rect UnityEngine.Rect
---@param list UnityEditorInternal.ReorderableList
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawFooter(rect, list)end
---@param list UnityEditorInternal.ReorderableList
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DoAddButton(list)end
---@param list UnityEditorInternal.ReorderableList
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DoRemoveButton(list)end
---@param headerRect UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawHeaderBackground(headerRect)end
---@param headerRect UnityEngine.Rect
---@param serializedObject UnityEditor.SerializedObject
---@param element UnityEditor.SerializedProperty
---@param elementList System.Collections.IList
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawHeader(headerRect, serializedObject, element, elementList)end
---@param rect UnityEngine.Rect
---@param index System.Int32
---@param selected System.Boolean
---@param focused System.Boolean
---@param draggable System.Boolean
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawElementBackground(rect, index, selected, focused, draggable)end
---@param rect UnityEngine.Rect
---@param index System.Int32
---@param selected System.Boolean
---@param focused System.Boolean
---@param draggable System.Boolean
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawElementDraggingHandle(rect, index, selected, focused, draggable)end
---@param rect UnityEngine.Rect
---@param element UnityEditor.SerializedProperty
---@param listItem System.Object
---@param selected System.Boolean
---@param focused System.Boolean
---@param draggable System.Boolean
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawElement(rect, element, listItem, selected, focused, draggable)end
---@param rect UnityEngine.Rect
---@param draggable System.Boolean
---@return System.Void
function UnityEditorInternal.ReorderableList.Defaults:DrawNoneElement(rect, draggable)end
---@class UnityEditorInternal.EditMode : System.Object
---@field public editMode UnityEditorInternal.EditMode.SceneViewEditMode @static setter getter
---@field public onEditModeEndDelegate UnityEditorInternal.EditMode.OnEditModeStopFunc
---@field public onEditModeStartDelegate UnityEditorInternal.EditMode.OnEditModeStartFunc
UnityEditorInternal.EditMode = {}
---@type UnityEditorInternal.EditMode
CS.UnityEditorInternal.EditMode = UnityEditorInternal.EditMode

---@param editor UnityEditor.Editor
---@return System.Boolean
function UnityEditorInternal.EditMode.IsOwner(editor)end
---@return System.Void
function UnityEditorInternal.EditMode.ResetToolToPrevious()end
---@return System.Void
function UnityEditorInternal.EditMode.OnSelectionChange()end
---@return System.Void
function UnityEditorInternal.EditMode.QuitEditMode()end
---@overload fun(mode:UnityEditorInternal.EditMode.SceneViewEditMode, label:System.String, icon:UnityEngine.GUIContent, getBoundsOfTargets:System.Func, caller:UnityEditor.Editor):System.Void
---@param mode UnityEditorInternal.EditMode.SceneViewEditMode
---@param label System.String
---@param icon UnityEngine.GUIContent
---@param bounds UnityEngine.Bounds
---@param caller UnityEditor.Editor
---@return System.Void
function UnityEditorInternal.EditMode.DoEditModeInspectorModeButton(mode, label, icon, bounds, caller)end
---@overload fun(modes:UnityEditorInternal.EditMode.SceneViewEditMode[], guiContents:UnityEngine.GUIContent[], getBoundsOfTargets:System.Func, caller:UnityEditor.Editor):System.Void
---@param modes UnityEditorInternal.EditMode.SceneViewEditMode[]
---@param guiContents UnityEngine.GUIContent[]
---@param bounds UnityEngine.Bounds
---@param caller UnityEditor.Editor
---@return System.Void
function UnityEditorInternal.EditMode.DoInspectorToolbar(modes, guiContents, bounds, caller)end
---@param mode UnityEditorInternal.EditMode.SceneViewEditMode
---@param bounds UnityEngine.Bounds
---@param caller UnityEditor.Editor
---@return System.Void
function UnityEditorInternal.EditMode.ChangeEditMode(mode, bounds, caller)end
---@class UnityEditorInternal.EditMode.SceneViewEditMode : System.Enum
UnityEditorInternal.EditMode.SceneViewEditMode = {}
---@type UnityEditorInternal.EditMode.SceneViewEditMode
CS.UnityEditorInternal.EditMode.SceneViewEditMode = UnityEditorInternal.EditMode.SceneViewEditMode

---@return System.Int32 value:0
UnityEditorInternal.EditMode.SceneViewEditMode.None = 0
---@return System.Int32 value:1
UnityEditorInternal.EditMode.SceneViewEditMode.Collider = 1
---@return System.Int32 value:2
UnityEditorInternal.EditMode.SceneViewEditMode.ClothConstraints = 2
---@return System.Int32 value:3
UnityEditorInternal.EditMode.SceneViewEditMode.ClothSelfAndInterCollisionParticles = 3
---@return System.Int32 value:4
UnityEditorInternal.EditMode.SceneViewEditMode.ReflectionProbeBox = 4
---@return System.Int32 value:5
UnityEditorInternal.EditMode.SceneViewEditMode.ReflectionProbeOrigin = 5
---@return System.Int32 value:6
UnityEditorInternal.EditMode.SceneViewEditMode.LightProbeProxyVolumeBox = 6
---@return System.Int32 value:7
UnityEditorInternal.EditMode.SceneViewEditMode.LightProbeProxyVolumeOrigin = 7
---@return System.Int32 value:8
UnityEditorInternal.EditMode.SceneViewEditMode.LightProbeGroup = 8
---@return System.Int32 value:9
UnityEditorInternal.EditMode.SceneViewEditMode.JointAngularLimits = 9
---@return System.Int32 value:10
UnityEditorInternal.EditMode.SceneViewEditMode.GridPainting = 10
---@return System.Int32 value:11
UnityEditorInternal.EditMode.SceneViewEditMode.GridPicking = 11
---@return System.Int32 value:12
UnityEditorInternal.EditMode.SceneViewEditMode.GridEraser = 12
---@return System.Int32 value:13
UnityEditorInternal.EditMode.SceneViewEditMode.GridFloodFill = 13
---@return System.Int32 value:14
UnityEditorInternal.EditMode.SceneViewEditMode.GridBox = 14
---@return System.Int32 value:15
UnityEditorInternal.EditMode.SceneViewEditMode.GridSelect = 15
---@return System.Int32 value:16
UnityEditorInternal.EditMode.SceneViewEditMode.GridMove = 16
---@return System.Int32 value:17
UnityEditorInternal.EditMode.SceneViewEditMode.ParticleSystemCollisionModulePlanesMove = 17
---@return System.Int32 value:18
UnityEditorInternal.EditMode.SceneViewEditMode.ParticleSystemCollisionModulePlanesRotate = 18
---@return System.Int32 value:19
UnityEditorInternal.EditMode.SceneViewEditMode.LineRendererEdit = 19
---@return System.Int32 value:20
UnityEditorInternal.EditMode.SceneViewEditMode.LineRendererCreate = 20

---@class UnityEditorInternal.MinMaxCurvePropertyDrawer : UnityEditor.PropertyDrawer
UnityEditorInternal.MinMaxCurvePropertyDrawer = {}
---@type UnityEditorInternal.MinMaxCurvePropertyDrawer
CS.UnityEditorInternal.MinMaxCurvePropertyDrawer = UnityEditorInternal.MinMaxCurvePropertyDrawer

---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Void
function UnityEditorInternal.MinMaxCurvePropertyDrawer:OnGUI(position, property, label)end
---@class UnityEditorInternal.MinMaxGradientPropertyDrawer : UnityEditor.PropertyDrawer
UnityEditorInternal.MinMaxGradientPropertyDrawer = {}
---@type UnityEditorInternal.MinMaxGradientPropertyDrawer
CS.UnityEditorInternal.MinMaxGradientPropertyDrawer = UnityEditorInternal.MinMaxGradientPropertyDrawer

---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Single
function UnityEditorInternal.MinMaxGradientPropertyDrawer:GetPropertyHeight(property, label)end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Void
function UnityEditorInternal.MinMaxGradientPropertyDrawer:OnGUI(position, property, label)end
---@class UnityEditorInternal.UnityEventDrawer : UnityEditor.PropertyDrawer
UnityEditorInternal.UnityEventDrawer = {}
---@type UnityEditorInternal.UnityEventDrawer
CS.UnityEditorInternal.UnityEventDrawer = UnityEditorInternal.UnityEventDrawer

---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@param position UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.UnityEventDrawer:OnGUI(position)end
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Single
function UnityEditorInternal.UnityEventDrawer:GetPropertyHeight(property, label)end
---@param dummyEvent UnityEngine.Events.UnityEventBase
---@param methodName System.String
---@param uObject UnityEngine.Object
---@param modeEnum UnityEngine.Events.PersistentListenerMode
---@param argumentType System.Type
---@return System.Boolean
function UnityEditorInternal.UnityEventDrawer.IsPersistantListenerValid(dummyEvent, methodName, uObject, modeEnum, argumentType)end
---@class UnityEditorInternal.MonoScripts : System.Object
UnityEditorInternal.MonoScripts = {}
---@type UnityEditorInternal.MonoScripts
CS.UnityEditorInternal.MonoScripts = UnityEditorInternal.MonoScripts

---@param scriptContents System.String
---@param className System.String
---@param nameSpace System.String
---@param assemblyName System.String
---@param isEditorScript System.Boolean
---@return UnityEditor.MonoScript
function UnityEditorInternal.MonoScripts.CreateMonoScript(scriptContents, className, nameSpace, assemblyName, isEditorScript)end
---@class UnityEditorInternal.SpriteEditorHandles : System.Object
UnityEditorInternal.SpriteEditorHandles = {}
---@type UnityEditorInternal.SpriteEditorHandles
CS.UnityEditorInternal.SpriteEditorHandles = UnityEditorInternal.SpriteEditorHandles

