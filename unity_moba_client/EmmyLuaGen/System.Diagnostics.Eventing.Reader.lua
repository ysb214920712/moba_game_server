---@class System.Diagnostics.Eventing.Reader.EventBookmark : System.Object
System.Diagnostics.Eventing.Reader.EventBookmark = {}
---@type System.Diagnostics.Eventing.Reader.EventBookmark
CS.System.Diagnostics.Eventing.Reader.EventBookmark = System.Diagnostics.Eventing.Reader.EventBookmark

---@class System.Diagnostics.Eventing.Reader.EventKeyword : System.Object
---@field public DisplayName System.String @  getter
---@field public Name System.String @  getter
---@field public Value System.Int64 @  getter
System.Diagnostics.Eventing.Reader.EventKeyword = {}
---@type System.Diagnostics.Eventing.Reader.EventKeyword
CS.System.Diagnostics.Eventing.Reader.EventKeyword = System.Diagnostics.Eventing.Reader.EventKeyword

---@class System.Diagnostics.Eventing.Reader.EventLevel : System.Object
---@field public DisplayName System.String @  getter
---@field public Name System.String @  getter
---@field public Value System.Int32 @  getter
System.Diagnostics.Eventing.Reader.EventLevel = {}
---@type System.Diagnostics.Eventing.Reader.EventLevel
CS.System.Diagnostics.Eventing.Reader.EventLevel = System.Diagnostics.Eventing.Reader.EventLevel

---@class System.Diagnostics.Eventing.Reader.EventLogConfiguration : System.Object
---@field public IsClassicLog System.Boolean @  getter
---@field public IsEnabled System.Boolean @ setter getter
---@field public LogFilePath System.String @ setter getter
---@field public LogIsolation System.Diagnostics.Eventing.Reader.EventLogIsolation @  getter
---@field public LogMode System.Diagnostics.Eventing.Reader.EventLogMode @ setter getter
---@field public LogName System.String @  getter
---@field public LogType System.Diagnostics.Eventing.Reader.EventLogType @  getter
---@field public MaximumSizeInBytes System.Int64 @ setter getter
---@field public OwningProviderName System.String @  getter
---@field public ProviderBufferSize System.Nullable @  getter
---@field public ProviderControlGuid System.Nullable @  getter
---@field public ProviderKeywords System.Nullable @ setter getter
---@field public ProviderLatency System.Nullable @  getter
---@field public ProviderLevel System.Nullable @ setter getter
---@field public ProviderMaximumNumberOfBuffers System.Nullable @  getter
---@field public ProviderMinimumNumberOfBuffers System.Nullable @  getter
---@field public ProviderNames System.Collections.Generic.IEnumerable @  getter
---@field public SecurityDescriptor System.String @ setter getter
System.Diagnostics.Eventing.Reader.EventLogConfiguration = {}
---@type System.Diagnostics.Eventing.Reader.EventLogConfiguration
CS.System.Diagnostics.Eventing.Reader.EventLogConfiguration = System.Diagnostics.Eventing.Reader.EventLogConfiguration

---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogConfiguration:Dispose()end
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogConfiguration:SaveChanges()end
---@class System.Diagnostics.Eventing.Reader.EventLogSession : System.Object
---@field public GlobalSession System.Diagnostics.Eventing.Reader.EventLogSession @static  getter
System.Diagnostics.Eventing.Reader.EventLogSession = {}
---@type System.Diagnostics.Eventing.Reader.EventLogSession
CS.System.Diagnostics.Eventing.Reader.EventLogSession = System.Diagnostics.Eventing.Reader.EventLogSession

---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogSession:CancelCurrentOperations()end
---@overload fun(logName:System.String, backupPath:System.String):System.Void
---@param logName System.String
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogSession:ClearLog(logName)end
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogSession:Dispose()end
---@overload fun(path:System.String, pathType:System.Diagnostics.Eventing.Reader.PathType, query:System.String, targetFilePath:System.String, tolerateQueryErrors:System.Boolean):System.Void
---@param path System.String
---@param pathType System.Diagnostics.Eventing.Reader.PathType
---@param query System.String
---@param targetFilePath System.String
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogSession:ExportLog(path, pathType, query, targetFilePath)end
---@overload fun(path:System.String, pathType:System.Diagnostics.Eventing.Reader.PathType, query:System.String, targetFilePath:System.String, tolerateQueryErrors:System.Boolean, targetCultureInfo:System.Globalization.CultureInfo):System.Void
---@param path System.String
---@param pathType System.Diagnostics.Eventing.Reader.PathType
---@param query System.String
---@param targetFilePath System.String
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogSession:ExportLogAndMessages(path, pathType, query, targetFilePath)end
---@param logName System.String
---@param pathType System.Diagnostics.Eventing.Reader.PathType
---@return System.Diagnostics.Eventing.Reader.EventLogInformation
function System.Diagnostics.Eventing.Reader.EventLogSession:GetLogInformation(logName, pathType)end
---@return System.Collections.Generic.IEnumerable
function System.Diagnostics.Eventing.Reader.EventLogSession:GetLogNames()end
---@return System.Collections.Generic.IEnumerable
function System.Diagnostics.Eventing.Reader.EventLogSession:GetProviderNames()end
---@class System.Diagnostics.Eventing.Reader.SessionAuthentication : System.Enum
System.Diagnostics.Eventing.Reader.SessionAuthentication = {}
---@type System.Diagnostics.Eventing.Reader.SessionAuthentication
CS.System.Diagnostics.Eventing.Reader.SessionAuthentication = System.Diagnostics.Eventing.Reader.SessionAuthentication

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.SessionAuthentication.Default = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.SessionAuthentication.Negotiate = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.SessionAuthentication.Kerberos = 2
---@return System.Int32 value:3
System.Diagnostics.Eventing.Reader.SessionAuthentication.Ntlm = 3

---@class System.Diagnostics.Eventing.Reader.PathType : System.Enum
System.Diagnostics.Eventing.Reader.PathType = {}
---@type System.Diagnostics.Eventing.Reader.PathType
CS.System.Diagnostics.Eventing.Reader.PathType = System.Diagnostics.Eventing.Reader.PathType

---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.PathType.LogName = 1

---@class System.Diagnostics.Eventing.Reader.EventLogInformation : System.Object
---@field public Attributes System.Nullable @  getter
---@field public CreationTime System.Nullable @  getter
---@field public FileSize System.Nullable @  getter
---@field public IsLogFull System.Nullable @  getter
---@field public LastAccessTime System.Nullable @  getter
---@field public LastWriteTime System.Nullable @  getter
---@field public OldestRecordNumber System.Nullable @  getter
---@field public RecordCount System.Nullable @  getter
System.Diagnostics.Eventing.Reader.EventLogInformation = {}
---@type System.Diagnostics.Eventing.Reader.EventLogInformation
CS.System.Diagnostics.Eventing.Reader.EventLogInformation = System.Diagnostics.Eventing.Reader.EventLogInformation

---@class System.Diagnostics.Eventing.Reader.EventLogIsolation : System.Enum
System.Diagnostics.Eventing.Reader.EventLogIsolation = {}
---@type System.Diagnostics.Eventing.Reader.EventLogIsolation
CS.System.Diagnostics.Eventing.Reader.EventLogIsolation = System.Diagnostics.Eventing.Reader.EventLogIsolation

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.EventLogIsolation.Application = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.EventLogIsolation.System = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.EventLogIsolation.Custom = 2

---@class System.Diagnostics.Eventing.Reader.EventLogMode : System.Enum
System.Diagnostics.Eventing.Reader.EventLogMode = {}
---@type System.Diagnostics.Eventing.Reader.EventLogMode
CS.System.Diagnostics.Eventing.Reader.EventLogMode = System.Diagnostics.Eventing.Reader.EventLogMode

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.EventLogMode.Circular = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.EventLogMode.AutoBackup = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.EventLogMode.Retain = 2

---@class System.Diagnostics.Eventing.Reader.EventLogType : System.Enum
System.Diagnostics.Eventing.Reader.EventLogType = {}
---@type System.Diagnostics.Eventing.Reader.EventLogType
CS.System.Diagnostics.Eventing.Reader.EventLogType = System.Diagnostics.Eventing.Reader.EventLogType

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.EventLogType.Administrative = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.EventLogType.Operational = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.EventLogType.Analytical = 2
---@return System.Int32 value:3
System.Diagnostics.Eventing.Reader.EventLogType.Debug = 3

---@class System.Diagnostics.Eventing.Reader.EventLogException : System.Exception
System.Diagnostics.Eventing.Reader.EventLogException = {}
---@type System.Diagnostics.Eventing.Reader.EventLogException
CS.System.Diagnostics.Eventing.Reader.EventLogException = System.Diagnostics.Eventing.Reader.EventLogException

---@class System.Diagnostics.Eventing.Reader.EventLogInvalidDataException : System.Diagnostics.Eventing.Reader.EventLogException
System.Diagnostics.Eventing.Reader.EventLogInvalidDataException = {}
---@type System.Diagnostics.Eventing.Reader.EventLogInvalidDataException
CS.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException = System.Diagnostics.Eventing.Reader.EventLogInvalidDataException

---@class System.Diagnostics.Eventing.Reader.EventLogLink : System.Object
---@field public DisplayName System.String @  getter
---@field public IsImported System.Boolean @  getter
---@field public LogName System.String @  getter
System.Diagnostics.Eventing.Reader.EventLogLink = {}
---@type System.Diagnostics.Eventing.Reader.EventLogLink
CS.System.Diagnostics.Eventing.Reader.EventLogLink = System.Diagnostics.Eventing.Reader.EventLogLink

---@class System.Diagnostics.Eventing.Reader.EventLogNotFoundException : System.Diagnostics.Eventing.Reader.EventLogException
System.Diagnostics.Eventing.Reader.EventLogNotFoundException = {}
---@type System.Diagnostics.Eventing.Reader.EventLogNotFoundException
CS.System.Diagnostics.Eventing.Reader.EventLogNotFoundException = System.Diagnostics.Eventing.Reader.EventLogNotFoundException

---@class System.Diagnostics.Eventing.Reader.EventLogPropertySelector : System.Object
System.Diagnostics.Eventing.Reader.EventLogPropertySelector = {}
---@type System.Diagnostics.Eventing.Reader.EventLogPropertySelector
CS.System.Diagnostics.Eventing.Reader.EventLogPropertySelector = System.Diagnostics.Eventing.Reader.EventLogPropertySelector

---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogPropertySelector:Dispose()end
---@class System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException : System.Diagnostics.Eventing.Reader.EventLogException
System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException = {}
---@type System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException
CS.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException = System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException

---@class System.Diagnostics.Eventing.Reader.EventLogQuery : System.Object
---@field public ReverseDirection System.Boolean @ setter getter
---@field public Session System.Diagnostics.Eventing.Reader.EventLogSession @ setter getter
---@field public TolerateQueryErrors System.Boolean @ setter getter
System.Diagnostics.Eventing.Reader.EventLogQuery = {}
---@type System.Diagnostics.Eventing.Reader.EventLogQuery
CS.System.Diagnostics.Eventing.Reader.EventLogQuery = System.Diagnostics.Eventing.Reader.EventLogQuery

---@class System.Diagnostics.Eventing.Reader.EventLogReader : System.Object
---@field public BatchSize System.Int32 @ setter getter
---@field public LogStatus System.Collections.Generic.IList @  getter
System.Diagnostics.Eventing.Reader.EventLogReader = {}
---@type System.Diagnostics.Eventing.Reader.EventLogReader
CS.System.Diagnostics.Eventing.Reader.EventLogReader = System.Diagnostics.Eventing.Reader.EventLogReader

---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogReader:CancelReading()end
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogReader:Dispose()end
---@overload fun(timeout:System.TimeSpan):System.Diagnostics.Eventing.Reader.EventRecord
---@return System.Diagnostics.Eventing.Reader.EventRecord
function System.Diagnostics.Eventing.Reader.EventLogReader:ReadEvent()end
---@overload fun(bookmark:System.Diagnostics.Eventing.Reader.EventBookmark, offset:System.Int64):System.Void
---@overload fun(origin:System.IO.SeekOrigin, offset:System.Int64):System.Void
---@param bookmark System.Diagnostics.Eventing.Reader.EventBookmark
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogReader:Seek(bookmark)end
---@class System.Diagnostics.Eventing.Reader.EventLogStatus : System.Object
---@field public LogName System.String @  getter
---@field public StatusCode System.Int32 @  getter
System.Diagnostics.Eventing.Reader.EventLogStatus = {}
---@type System.Diagnostics.Eventing.Reader.EventLogStatus
CS.System.Diagnostics.Eventing.Reader.EventLogStatus = System.Diagnostics.Eventing.Reader.EventLogStatus

---@class System.Diagnostics.Eventing.Reader.EventRecord : System.Object
---@field public ActivityId System.Nullable @  getter
---@field public Bookmark System.Diagnostics.Eventing.Reader.EventBookmark @  getter
---@field public Id System.Int32 @  getter
---@field public Keywords System.Nullable @  getter
---@field public KeywordsDisplayNames System.Collections.Generic.IEnumerable @  getter
---@field public Level System.Nullable @  getter
---@field public LevelDisplayName System.String @  getter
---@field public LogName System.String @  getter
---@field public MachineName System.String @  getter
---@field public Opcode System.Nullable @  getter
---@field public OpcodeDisplayName System.String @  getter
---@field public ProcessId System.Nullable @  getter
---@field public Properties System.Collections.Generic.IList @  getter
---@field public ProviderId System.Nullable @  getter
---@field public ProviderName System.String @  getter
---@field public Qualifiers System.Nullable @  getter
---@field public RecordId System.Nullable @  getter
---@field public RelatedActivityId System.Nullable @  getter
---@field public Task System.Nullable @  getter
---@field public TaskDisplayName System.String @  getter
---@field public ThreadId System.Nullable @  getter
---@field public TimeCreated System.Nullable @  getter
---@field public UserId System.Security.Principal.SecurityIdentifier @  getter
---@field public Version System.Nullable @  getter
System.Diagnostics.Eventing.Reader.EventRecord = {}
---@type System.Diagnostics.Eventing.Reader.EventRecord
CS.System.Diagnostics.Eventing.Reader.EventRecord = System.Diagnostics.Eventing.Reader.EventRecord

---@return System.Void
function System.Diagnostics.Eventing.Reader.EventRecord:Dispose()end
---@overload fun(values:System.Collections.Generic.IEnumerable):System.String
---@return System.String
function System.Diagnostics.Eventing.Reader.EventRecord:FormatDescription()end
---@return System.String
function System.Diagnostics.Eventing.Reader.EventRecord:ToXml()end
---@class System.Diagnostics.Eventing.Reader.EventProperty : System.Object
---@field public Value System.Object @  getter
System.Diagnostics.Eventing.Reader.EventProperty = {}
---@type System.Diagnostics.Eventing.Reader.EventProperty
CS.System.Diagnostics.Eventing.Reader.EventProperty = System.Diagnostics.Eventing.Reader.EventProperty

---@class System.Diagnostics.Eventing.Reader.EventLogReadingException : System.Diagnostics.Eventing.Reader.EventLogException
System.Diagnostics.Eventing.Reader.EventLogReadingException = {}
---@type System.Diagnostics.Eventing.Reader.EventLogReadingException
CS.System.Diagnostics.Eventing.Reader.EventLogReadingException = System.Diagnostics.Eventing.Reader.EventLogReadingException

---@class System.Diagnostics.Eventing.Reader.EventLogRecord : System.Diagnostics.Eventing.Reader.EventRecord
---@field public ActivityId System.Nullable @  getter
---@field public Bookmark System.Diagnostics.Eventing.Reader.EventBookmark @  getter
---@field public ContainerLog System.String @  getter
---@field public Id System.Int32 @  getter
---@field public Keywords System.Nullable @  getter
---@field public KeywordsDisplayNames System.Collections.Generic.IEnumerable @  getter
---@field public Level System.Nullable @  getter
---@field public LevelDisplayName System.String @  getter
---@field public LogName System.String @  getter
---@field public MachineName System.String @  getter
---@field public MatchedQueryIds System.Collections.Generic.IEnumerable @  getter
---@field public Opcode System.Nullable @  getter
---@field public OpcodeDisplayName System.String @  getter
---@field public ProcessId System.Nullable @  getter
---@field public Properties System.Collections.Generic.IList @  getter
---@field public ProviderId System.Nullable @  getter
---@field public ProviderName System.String @  getter
---@field public Qualifiers System.Nullable @  getter
---@field public RecordId System.Nullable @  getter
---@field public RelatedActivityId System.Nullable @  getter
---@field public Task System.Nullable @  getter
---@field public TaskDisplayName System.String @  getter
---@field public ThreadId System.Nullable @  getter
---@field public TimeCreated System.Nullable @  getter
---@field public UserId System.Security.Principal.SecurityIdentifier @  getter
---@field public Version System.Nullable @  getter
System.Diagnostics.Eventing.Reader.EventLogRecord = {}
---@type System.Diagnostics.Eventing.Reader.EventLogRecord
CS.System.Diagnostics.Eventing.Reader.EventLogRecord = System.Diagnostics.Eventing.Reader.EventLogRecord

---@overload fun(values:System.Collections.Generic.IEnumerable):System.String
---@return System.String
function System.Diagnostics.Eventing.Reader.EventLogRecord:FormatDescription()end
---@param propertySelector System.Diagnostics.Eventing.Reader.EventLogPropertySelector
---@return System.Collections.Generic.IList
function System.Diagnostics.Eventing.Reader.EventLogRecord:GetPropertyValues(propertySelector)end
---@return System.String
function System.Diagnostics.Eventing.Reader.EventLogRecord:ToXml()end
---@class System.Diagnostics.Eventing.Reader.EventLogWatcher : System.Object
---@field public Enabled System.Boolean @ setter getter
System.Diagnostics.Eventing.Reader.EventLogWatcher = {}
---@type System.Diagnostics.Eventing.Reader.EventLogWatcher
CS.System.Diagnostics.Eventing.Reader.EventLogWatcher = System.Diagnostics.Eventing.Reader.EventLogWatcher

---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogWatcher:add_EventRecordWritten(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogWatcher:remove_EventRecordWritten(value)end
---@return System.Void
function System.Diagnostics.Eventing.Reader.EventLogWatcher:Dispose()end
---@class System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs : System.EventArgs
---@field public EventException System.Exception @  getter
---@field public EventRecord System.Diagnostics.Eventing.Reader.EventRecord @  getter
System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs = {}
---@type System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs
CS.System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs = System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs

---@class System.Diagnostics.Eventing.Reader.EventMetadata : System.Object
---@field public Description System.String @  getter
---@field public Id System.Int64 @  getter
---@field public Keywords System.Collections.Generic.IEnumerable @  getter
---@field public Level System.Diagnostics.Eventing.Reader.EventLevel @  getter
---@field public LogLink System.Diagnostics.Eventing.Reader.EventLogLink @  getter
---@field public Opcode System.Diagnostics.Eventing.Reader.EventOpcode @  getter
---@field public Task System.Diagnostics.Eventing.Reader.EventTask @  getter
---@field public Template System.String @  getter
---@field public Version System.Byte @  getter
System.Diagnostics.Eventing.Reader.EventMetadata = {}
---@type System.Diagnostics.Eventing.Reader.EventMetadata
CS.System.Diagnostics.Eventing.Reader.EventMetadata = System.Diagnostics.Eventing.Reader.EventMetadata

---@class System.Diagnostics.Eventing.Reader.EventOpcode : System.Object
---@field public DisplayName System.String @  getter
---@field public Name System.String @  getter
---@field public Value System.Int32 @  getter
System.Diagnostics.Eventing.Reader.EventOpcode = {}
---@type System.Diagnostics.Eventing.Reader.EventOpcode
CS.System.Diagnostics.Eventing.Reader.EventOpcode = System.Diagnostics.Eventing.Reader.EventOpcode

---@class System.Diagnostics.Eventing.Reader.EventTask : System.Object
---@field public DisplayName System.String @  getter
---@field public EventGuid System.Guid @  getter
---@field public Name System.String @  getter
---@field public Value System.Int32 @  getter
System.Diagnostics.Eventing.Reader.EventTask = {}
---@type System.Diagnostics.Eventing.Reader.EventTask
CS.System.Diagnostics.Eventing.Reader.EventTask = System.Diagnostics.Eventing.Reader.EventTask

---@class System.Diagnostics.Eventing.Reader.ProviderMetadata : System.Object
---@field public DisplayName System.String @  getter
---@field public Events System.Collections.Generic.IEnumerable @  getter
---@field public HelpLink System.Uri @  getter
---@field public Id System.Guid @  getter
---@field public Keywords System.Collections.Generic.IList @  getter
---@field public Levels System.Collections.Generic.IList @  getter
---@field public LogLinks System.Collections.Generic.IList @  getter
---@field public MessageFilePath System.String @  getter
---@field public Name System.String @  getter
---@field public Opcodes System.Collections.Generic.IList @  getter
---@field public ParameterFilePath System.String @  getter
---@field public ResourceFilePath System.String @  getter
---@field public Tasks System.Collections.Generic.IList @  getter
System.Diagnostics.Eventing.Reader.ProviderMetadata = {}
---@type System.Diagnostics.Eventing.Reader.ProviderMetadata
CS.System.Diagnostics.Eventing.Reader.ProviderMetadata = System.Diagnostics.Eventing.Reader.ProviderMetadata

---@return System.Void
function System.Diagnostics.Eventing.Reader.ProviderMetadata:Dispose()end
---@class System.Diagnostics.Eventing.Reader.StandardEventKeywords : System.Enum
System.Diagnostics.Eventing.Reader.StandardEventKeywords = {}
---@type System.Diagnostics.Eventing.Reader.StandardEventKeywords
CS.System.Diagnostics.Eventing.Reader.StandardEventKeywords = System.Diagnostics.Eventing.Reader.StandardEventKeywords

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.StandardEventKeywords.None = 0

---@class System.Diagnostics.Eventing.Reader.StandardEventLevel : System.Enum
System.Diagnostics.Eventing.Reader.StandardEventLevel = {}
---@type System.Diagnostics.Eventing.Reader.StandardEventLevel
CS.System.Diagnostics.Eventing.Reader.StandardEventLevel = System.Diagnostics.Eventing.Reader.StandardEventLevel

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.StandardEventLevel.LogAlways = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.StandardEventLevel.Critical = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.StandardEventLevel.Error = 2
---@return System.Int32 value:3
System.Diagnostics.Eventing.Reader.StandardEventLevel.Warning = 3
---@return System.Int32 value:4
System.Diagnostics.Eventing.Reader.StandardEventLevel.Informational = 4
---@return System.Int32 value:5
System.Diagnostics.Eventing.Reader.StandardEventLevel.Verbose = 5

---@class System.Diagnostics.Eventing.Reader.StandardEventOpcode : System.Enum
System.Diagnostics.Eventing.Reader.StandardEventOpcode = {}
---@type System.Diagnostics.Eventing.Reader.StandardEventOpcode
CS.System.Diagnostics.Eventing.Reader.StandardEventOpcode = System.Diagnostics.Eventing.Reader.StandardEventOpcode

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Info = 0
---@return System.Int32 value:1
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Start = 1
---@return System.Int32 value:2
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Stop = 2
---@return System.Int32 value:3
System.Diagnostics.Eventing.Reader.StandardEventOpcode.DataCollectionStart = 3
---@return System.Int32 value:4
System.Diagnostics.Eventing.Reader.StandardEventOpcode.DataCollectionStop = 4
---@return System.Int32 value:5
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Extension = 5
---@return System.Int32 value:6
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Reply = 6
---@return System.Int32 value:7
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Resume = 7
---@return System.Int32 value:8
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Suspend = 8
---@return System.Int32 value:9
System.Diagnostics.Eventing.Reader.StandardEventOpcode.Send = 9

---@class System.Diagnostics.Eventing.Reader.StandardEventTask : System.Enum
System.Diagnostics.Eventing.Reader.StandardEventTask = {}
---@type System.Diagnostics.Eventing.Reader.StandardEventTask
CS.System.Diagnostics.Eventing.Reader.StandardEventTask = System.Diagnostics.Eventing.Reader.StandardEventTask

---@return System.Int32 value:0
System.Diagnostics.Eventing.Reader.StandardEventTask.None = 0

