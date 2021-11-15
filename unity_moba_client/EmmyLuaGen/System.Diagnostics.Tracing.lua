---@class System.Diagnostics.Tracing.EventCounter : System.Object
System.Diagnostics.Tracing.EventCounter = {}
---@type System.Diagnostics.Tracing.EventCounter
CS.System.Diagnostics.Tracing.EventCounter = System.Diagnostics.Tracing.EventCounter

---@param value System.Single
---@return System.Void
function System.Diagnostics.Tracing.EventCounter:WriteMetric(value)end
---@return System.Void
function System.Diagnostics.Tracing.EventCounter:Dispose()end
---@return System.String
function System.Diagnostics.Tracing.EventCounter:ToString()end
---@class System.Diagnostics.Tracing.EventDataAttribute : System.Attribute
---@field public Name System.String @ setter getter
System.Diagnostics.Tracing.EventDataAttribute = {}
---@type System.Diagnostics.Tracing.EventDataAttribute
CS.System.Diagnostics.Tracing.EventDataAttribute = System.Diagnostics.Tracing.EventDataAttribute

---@class System.Diagnostics.Tracing.EventFieldTags : System.Enum
System.Diagnostics.Tracing.EventFieldTags = {}
---@type System.Diagnostics.Tracing.EventFieldTags
CS.System.Diagnostics.Tracing.EventFieldTags = System.Diagnostics.Tracing.EventFieldTags

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventFieldTags.None = 0

---@class System.Diagnostics.Tracing.EventFieldAttribute : System.Attribute
---@field public Tags System.Diagnostics.Tracing.EventFieldTags @ setter getter
---@field public Format System.Diagnostics.Tracing.EventFieldFormat @ setter getter
System.Diagnostics.Tracing.EventFieldAttribute = {}
---@type System.Diagnostics.Tracing.EventFieldAttribute
CS.System.Diagnostics.Tracing.EventFieldAttribute = System.Diagnostics.Tracing.EventFieldAttribute

---@class System.Diagnostics.Tracing.EventFieldFormat : System.Enum
System.Diagnostics.Tracing.EventFieldFormat = {}
---@type System.Diagnostics.Tracing.EventFieldFormat
CS.System.Diagnostics.Tracing.EventFieldFormat = System.Diagnostics.Tracing.EventFieldFormat

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventFieldFormat.Default = 0
---@return System.Int32 value:2
System.Diagnostics.Tracing.EventFieldFormat.String = 2
---@return System.Int32 value:3
System.Diagnostics.Tracing.EventFieldFormat.Boolean = 3
---@return System.Int32 value:4
System.Diagnostics.Tracing.EventFieldFormat.Hexadecimal = 4

---@class System.Diagnostics.Tracing.EventIgnoreAttribute : System.Attribute
System.Diagnostics.Tracing.EventIgnoreAttribute = {}
---@type System.Diagnostics.Tracing.EventIgnoreAttribute
CS.System.Diagnostics.Tracing.EventIgnoreAttribute = System.Diagnostics.Tracing.EventIgnoreAttribute

---@class System.Diagnostics.Tracing.EventSourceOptions : System.ValueType
---@field public Level System.Diagnostics.Tracing.EventLevel @ setter getter
---@field public Opcode System.Diagnostics.Tracing.EventOpcode @ setter getter
---@field public Keywords System.Diagnostics.Tracing.EventKeywords @ setter getter
---@field public Tags System.Diagnostics.Tracing.EventTags @ setter getter
---@field public ActivityOptions System.Diagnostics.Tracing.EventActivityOptions @ setter getter
System.Diagnostics.Tracing.EventSourceOptions = {}
---@type System.Diagnostics.Tracing.EventSourceOptions
CS.System.Diagnostics.Tracing.EventSourceOptions = System.Diagnostics.Tracing.EventSourceOptions

---@class System.Diagnostics.Tracing.EventSource : System.Object
---@field public Name System.String @  getter
---@field public Guid System.Guid @  getter
---@field public Settings System.Diagnostics.Tracing.EventSourceSettings @  getter
---@field public CurrentThreadActivityId System.Guid @static  getter
---@field public ConstructionException System.Exception @  getter
System.Diagnostics.Tracing.EventSource = {}
---@type System.Diagnostics.Tracing.EventSource
CS.System.Diagnostics.Tracing.EventSource = System.Diagnostics.Tracing.EventSource

---@overload fun(eventName:System.String, options:System.Diagnostics.Tracing.EventSourceOptions):System.Void
---@overload fun(eventName:System.String, data:any):System.Void
---@overload fun(eventName:System.String, options:System.Diagnostics.Tracing.EventSourceOptions, data:any):System.Void
---@overload fun(eventName:System.String, options:System.Diagnostics.Tracing.EventSourceOptions, data:any):System.Void
---@overload fun(eventName:System.String, options:System.Diagnostics.Tracing.EventSourceOptions, activityId:System.Guid, relatedActivityId:System.Guid, data:any):System.Void
---@param eventName System.String
---@return System.Void
function System.Diagnostics.Tracing.EventSource:Write(eventName)end
---@overload fun(level:System.Diagnostics.Tracing.EventLevel, keywords:System.Diagnostics.Tracing.EventKeywords):System.Boolean
---@overload fun(level:System.Diagnostics.Tracing.EventLevel, keywords:System.Diagnostics.Tracing.EventKeywords, channel:System.Diagnostics.Tracing.EventChannel):System.Boolean
---@return System.Boolean
function System.Diagnostics.Tracing.EventSource:IsEnabled()end
---@param eventSourceType System.Type
---@return System.Guid
function System.Diagnostics.Tracing.EventSource.GetGuid(eventSourceType)end
---@param eventSourceType System.Type
---@return System.String
function System.Diagnostics.Tracing.EventSource.GetName(eventSourceType)end
---@overload fun(eventSourceType:System.Type, assemblyPathToIncludeInManifest:System.String, flags:System.Diagnostics.Tracing.EventManifestOptions):System.String
---@param eventSourceType System.Type
---@param assemblyPathToIncludeInManifest System.String
---@return System.String
function System.Diagnostics.Tracing.EventSource.GenerateManifest(eventSourceType, assemblyPathToIncludeInManifest)end
---@return System.Collections.Generic.IEnumerable
function System.Diagnostics.Tracing.EventSource.GetSources()end
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param command System.Diagnostics.Tracing.EventCommand
---@param commandArguments System.Collections.Generic.IDictionary
---@return System.Void
function System.Diagnostics.Tracing.EventSource.SendCommand(eventSource, command, commandArguments)end
---@overload fun(activityId:System.Guid, oldActivityThatWillContinue:System.Guid):System.Void
---@param activityId System.Guid
---@return System.Void
function System.Diagnostics.Tracing.EventSource.SetCurrentThreadActivityId(activityId)end
---@param key System.String
---@return System.String
function System.Diagnostics.Tracing.EventSource:GetTrait(key)end
---@return System.String
function System.Diagnostics.Tracing.EventSource:ToString()end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventSource:add_EventCommandExecuted(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventSource:remove_EventCommandExecuted(value)end
---@return System.Void
function System.Diagnostics.Tracing.EventSource:Dispose()end
---@class System.Diagnostics.Tracing.EventTags : System.Enum
System.Diagnostics.Tracing.EventTags = {}
---@type System.Diagnostics.Tracing.EventTags
CS.System.Diagnostics.Tracing.EventTags = System.Diagnostics.Tracing.EventTags

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventTags.None = 0

---@class System.Diagnostics.Tracing.EventActivityOptions : System.Enum
System.Diagnostics.Tracing.EventActivityOptions = {}
---@type System.Diagnostics.Tracing.EventActivityOptions
CS.System.Diagnostics.Tracing.EventActivityOptions = System.Diagnostics.Tracing.EventActivityOptions

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventActivityOptions.None = 0
---@return System.Int32 value:2
System.Diagnostics.Tracing.EventActivityOptions.Disable = 2

---@class System.Diagnostics.Tracing.EventSourceSettings : System.Enum
System.Diagnostics.Tracing.EventSourceSettings = {}
---@type System.Diagnostics.Tracing.EventSourceSettings
CS.System.Diagnostics.Tracing.EventSourceSettings = System.Diagnostics.Tracing.EventSourceSettings

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventSourceSettings.Default = 0
---@return System.Int32 value:1
System.Diagnostics.Tracing.EventSourceSettings.ThrowOnEventWriteErrors = 1

---@class System.Diagnostics.Tracing.EventListener : System.Object
System.Diagnostics.Tracing.EventListener = {}
---@type System.Diagnostics.Tracing.EventListener
CS.System.Diagnostics.Tracing.EventListener = System.Diagnostics.Tracing.EventListener

---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventListener:add_EventSourceCreated(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventListener:remove_EventSourceCreated(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventListener:add_EventWritten(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Tracing.EventListener:remove_EventWritten(value)end
---@return System.Void
function System.Diagnostics.Tracing.EventListener:Dispose()end
---@overload fun(eventSource:System.Diagnostics.Tracing.EventSource, level:System.Diagnostics.Tracing.EventLevel, matchAnyKeyword:System.Diagnostics.Tracing.EventKeywords):System.Void
---@overload fun(eventSource:System.Diagnostics.Tracing.EventSource, level:System.Diagnostics.Tracing.EventLevel, matchAnyKeyword:System.Diagnostics.Tracing.EventKeywords, arguments:System.Collections.Generic.IDictionary):System.Void
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param level System.Diagnostics.Tracing.EventLevel
---@return System.Void
function System.Diagnostics.Tracing.EventListener:EnableEvents(eventSource, level)end
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return System.Void
function System.Diagnostics.Tracing.EventListener:DisableEvents(eventSource)end
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return System.Int32
function System.Diagnostics.Tracing.EventListener.EventSourceIndex(eventSource)end
---@class System.Diagnostics.Tracing.EventCommandEventArgs : System.EventArgs
---@field public Command System.Diagnostics.Tracing.EventCommand @ setter getter
---@field public Arguments System.Collections.Generic.IDictionary @ setter getter
System.Diagnostics.Tracing.EventCommandEventArgs = {}
---@type System.Diagnostics.Tracing.EventCommandEventArgs
CS.System.Diagnostics.Tracing.EventCommandEventArgs = System.Diagnostics.Tracing.EventCommandEventArgs

---@param eventId System.Int32
---@return System.Boolean
function System.Diagnostics.Tracing.EventCommandEventArgs:EnableEvent(eventId)end
---@param eventId System.Int32
---@return System.Boolean
function System.Diagnostics.Tracing.EventCommandEventArgs:DisableEvent(eventId)end
---@class System.Diagnostics.Tracing.EventSourceCreatedEventArgs : System.EventArgs
---@field public EventSource System.Diagnostics.Tracing.EventSource @ setter getter
System.Diagnostics.Tracing.EventSourceCreatedEventArgs = {}
---@type System.Diagnostics.Tracing.EventSourceCreatedEventArgs
CS.System.Diagnostics.Tracing.EventSourceCreatedEventArgs = System.Diagnostics.Tracing.EventSourceCreatedEventArgs

---@class System.Diagnostics.Tracing.EventWrittenEventArgs : System.EventArgs
---@field public EventName System.String @ setter getter
---@field public EventId System.Int32 @ setter getter
---@field public ActivityId System.Guid @  getter
---@field public RelatedActivityId System.Guid @ setter getter
---@field public Payload System.Collections.ObjectModel.ReadOnlyCollection @ setter getter
---@field public PayloadNames System.Collections.ObjectModel.ReadOnlyCollection @ setter getter
---@field public EventSource System.Diagnostics.Tracing.EventSource @  getter
---@field public Keywords System.Diagnostics.Tracing.EventKeywords @  getter
---@field public Opcode System.Diagnostics.Tracing.EventOpcode @  getter
---@field public Task System.Diagnostics.Tracing.EventTask @  getter
---@field public Tags System.Diagnostics.Tracing.EventTags @  getter
---@field public Message System.String @ setter getter
---@field public Channel System.Diagnostics.Tracing.EventChannel @  getter
---@field public Version System.Byte @  getter
---@field public Level System.Diagnostics.Tracing.EventLevel @  getter
System.Diagnostics.Tracing.EventWrittenEventArgs = {}
---@type System.Diagnostics.Tracing.EventWrittenEventArgs
CS.System.Diagnostics.Tracing.EventWrittenEventArgs = System.Diagnostics.Tracing.EventWrittenEventArgs

---@class System.Diagnostics.Tracing.EventSourceAttribute : System.Attribute
---@field public Name System.String @ setter getter
---@field public Guid System.String @ setter getter
---@field public LocalizationResources System.String @ setter getter
System.Diagnostics.Tracing.EventSourceAttribute = {}
---@type System.Diagnostics.Tracing.EventSourceAttribute
CS.System.Diagnostics.Tracing.EventSourceAttribute = System.Diagnostics.Tracing.EventSourceAttribute

---@class System.Diagnostics.Tracing.EventAttribute : System.Attribute
---@field public EventId System.Int32 @ setter getter
---@field public Level System.Diagnostics.Tracing.EventLevel @ setter getter
---@field public Keywords System.Diagnostics.Tracing.EventKeywords @ setter getter
---@field public Opcode System.Diagnostics.Tracing.EventOpcode @ setter getter
---@field public Task System.Diagnostics.Tracing.EventTask @ setter getter
---@field public Channel System.Diagnostics.Tracing.EventChannel @ setter getter
---@field public Version System.Byte @ setter getter
---@field public Message System.String @ setter getter
---@field public Tags System.Diagnostics.Tracing.EventTags @ setter getter
---@field public ActivityOptions System.Diagnostics.Tracing.EventActivityOptions @ setter getter
System.Diagnostics.Tracing.EventAttribute = {}
---@type System.Diagnostics.Tracing.EventAttribute
CS.System.Diagnostics.Tracing.EventAttribute = System.Diagnostics.Tracing.EventAttribute

---@class System.Diagnostics.Tracing.NonEventAttribute : System.Attribute
System.Diagnostics.Tracing.NonEventAttribute = {}
---@type System.Diagnostics.Tracing.NonEventAttribute
CS.System.Diagnostics.Tracing.NonEventAttribute = System.Diagnostics.Tracing.NonEventAttribute

---@class System.Diagnostics.Tracing.EventCommand : System.Enum
System.Diagnostics.Tracing.EventCommand = {}
---@type System.Diagnostics.Tracing.EventCommand
CS.System.Diagnostics.Tracing.EventCommand = System.Diagnostics.Tracing.EventCommand

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventCommand.Update = 0

---@class System.Diagnostics.Tracing.EventManifestOptions : System.Enum
System.Diagnostics.Tracing.EventManifestOptions = {}
---@type System.Diagnostics.Tracing.EventManifestOptions
CS.System.Diagnostics.Tracing.EventManifestOptions = System.Diagnostics.Tracing.EventManifestOptions

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventManifestOptions.None = 0
---@return System.Int32 value:1
System.Diagnostics.Tracing.EventManifestOptions.Strict = 1
---@return System.Int32 value:2
System.Diagnostics.Tracing.EventManifestOptions.AllCultures = 2
---@return System.Int32 value:4
System.Diagnostics.Tracing.EventManifestOptions.OnlyIfNeededForRegistration = 4

---@class System.Diagnostics.Tracing.EventSourceException : System.Exception
System.Diagnostics.Tracing.EventSourceException = {}
---@type System.Diagnostics.Tracing.EventSourceException
CS.System.Diagnostics.Tracing.EventSourceException = System.Diagnostics.Tracing.EventSourceException

---@class System.Diagnostics.Tracing.EventLevel : System.Enum
System.Diagnostics.Tracing.EventLevel = {}
---@type System.Diagnostics.Tracing.EventLevel
CS.System.Diagnostics.Tracing.EventLevel = System.Diagnostics.Tracing.EventLevel

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventLevel.LogAlways = 0
---@return System.Int32 value:1
System.Diagnostics.Tracing.EventLevel.Critical = 1
---@return System.Int32 value:2
System.Diagnostics.Tracing.EventLevel.Error = 2
---@return System.Int32 value:3
System.Diagnostics.Tracing.EventLevel.Warning = 3
---@return System.Int32 value:4
System.Diagnostics.Tracing.EventLevel.Informational = 4
---@return System.Int32 value:5
System.Diagnostics.Tracing.EventLevel.Verbose = 5

---@class System.Diagnostics.Tracing.EventTask : System.Enum
System.Diagnostics.Tracing.EventTask = {}
---@type System.Diagnostics.Tracing.EventTask
CS.System.Diagnostics.Tracing.EventTask = System.Diagnostics.Tracing.EventTask

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventTask.None = 0

---@class System.Diagnostics.Tracing.EventOpcode : System.Enum
System.Diagnostics.Tracing.EventOpcode = {}
---@type System.Diagnostics.Tracing.EventOpcode
CS.System.Diagnostics.Tracing.EventOpcode = System.Diagnostics.Tracing.EventOpcode

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventOpcode.Info = 0
---@return System.Int32 value:1
System.Diagnostics.Tracing.EventOpcode.Start = 1
---@return System.Int32 value:2
System.Diagnostics.Tracing.EventOpcode.Stop = 2
---@return System.Int32 value:3
System.Diagnostics.Tracing.EventOpcode.DataCollectionStart = 3
---@return System.Int32 value:4
System.Diagnostics.Tracing.EventOpcode.DataCollectionStop = 4
---@return System.Int32 value:5
System.Diagnostics.Tracing.EventOpcode.Extension = 5
---@return System.Int32 value:6
System.Diagnostics.Tracing.EventOpcode.Reply = 6
---@return System.Int32 value:7
System.Diagnostics.Tracing.EventOpcode.Resume = 7
---@return System.Int32 value:8
System.Diagnostics.Tracing.EventOpcode.Suspend = 8
---@return System.Int32 value:9
System.Diagnostics.Tracing.EventOpcode.Send = 9

---@class System.Diagnostics.Tracing.EventChannel : System.Enum
System.Diagnostics.Tracing.EventChannel = {}
---@type System.Diagnostics.Tracing.EventChannel
CS.System.Diagnostics.Tracing.EventChannel = System.Diagnostics.Tracing.EventChannel

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventChannel.None = 0

---@class System.Diagnostics.Tracing.EventKeywords : System.Enum
System.Diagnostics.Tracing.EventKeywords = {}
---@type System.Diagnostics.Tracing.EventKeywords
CS.System.Diagnostics.Tracing.EventKeywords = System.Diagnostics.Tracing.EventKeywords

---@return System.Int32 value:0
System.Diagnostics.Tracing.EventKeywords.None = 0

