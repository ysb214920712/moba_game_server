---@class System.Diagnostics.ConditionalAttribute : System.Attribute
---@field public ConditionString System.String @  getter
System.Diagnostics.ConditionalAttribute = {}
---@type System.Diagnostics.ConditionalAttribute
CS.System.Diagnostics.ConditionalAttribute = System.Diagnostics.ConditionalAttribute

---@class System.Diagnostics.DebuggerStepThroughAttribute : System.Attribute
System.Diagnostics.DebuggerStepThroughAttribute = {}
---@type System.Diagnostics.DebuggerStepThroughAttribute
CS.System.Diagnostics.DebuggerStepThroughAttribute = System.Diagnostics.DebuggerStepThroughAttribute

---@class System.Diagnostics.DebuggerStepperBoundaryAttribute : System.Attribute
System.Diagnostics.DebuggerStepperBoundaryAttribute = {}
---@type System.Diagnostics.DebuggerStepperBoundaryAttribute
CS.System.Diagnostics.DebuggerStepperBoundaryAttribute = System.Diagnostics.DebuggerStepperBoundaryAttribute

---@class System.Diagnostics.DebuggerHiddenAttribute : System.Attribute
System.Diagnostics.DebuggerHiddenAttribute = {}
---@type System.Diagnostics.DebuggerHiddenAttribute
CS.System.Diagnostics.DebuggerHiddenAttribute = System.Diagnostics.DebuggerHiddenAttribute

---@class System.Diagnostics.DebuggerNonUserCodeAttribute : System.Attribute
System.Diagnostics.DebuggerNonUserCodeAttribute = {}
---@type System.Diagnostics.DebuggerNonUserCodeAttribute
CS.System.Diagnostics.DebuggerNonUserCodeAttribute = System.Diagnostics.DebuggerNonUserCodeAttribute

---@class System.Diagnostics.DebuggableAttribute : System.Attribute
---@field public IsJITTrackingEnabled System.Boolean @  getter
---@field public IsJITOptimizerDisabled System.Boolean @  getter
---@field public DebuggingFlags System.Diagnostics.DebuggableAttribute.DebuggingModes @  getter
System.Diagnostics.DebuggableAttribute = {}
---@type System.Diagnostics.DebuggableAttribute
CS.System.Diagnostics.DebuggableAttribute = System.Diagnostics.DebuggableAttribute

---@class System.Diagnostics.DebuggableAttribute.DebuggingModes : System.Enum
System.Diagnostics.DebuggableAttribute.DebuggingModes = {}
---@type System.Diagnostics.DebuggableAttribute.DebuggingModes
CS.System.Diagnostics.DebuggableAttribute.DebuggingModes = System.Diagnostics.DebuggableAttribute.DebuggingModes

---@return System.Int32 value:0
System.Diagnostics.DebuggableAttribute.DebuggingModes.None = 0
---@return System.Int32 value:1
System.Diagnostics.DebuggableAttribute.DebuggingModes.Default = 1
---@return System.Int32 value:2
System.Diagnostics.DebuggableAttribute.DebuggingModes.IgnoreSymbolStoreSequencePoints = 2
---@return System.Int32 value:4
System.Diagnostics.DebuggableAttribute.DebuggingModes.EnableEditAndContinue = 4

---@class System.Diagnostics.DebuggerBrowsableState : System.Enum
System.Diagnostics.DebuggerBrowsableState = {}
---@type System.Diagnostics.DebuggerBrowsableState
CS.System.Diagnostics.DebuggerBrowsableState = System.Diagnostics.DebuggerBrowsableState

---@return System.Int32 value:0
System.Diagnostics.DebuggerBrowsableState.Never = 0
---@return System.Int32 value:2
System.Diagnostics.DebuggerBrowsableState.Collapsed = 2

---@class System.Diagnostics.DebuggerBrowsableAttribute : System.Attribute
---@field public State System.Diagnostics.DebuggerBrowsableState @  getter
System.Diagnostics.DebuggerBrowsableAttribute = {}
---@type System.Diagnostics.DebuggerBrowsableAttribute
CS.System.Diagnostics.DebuggerBrowsableAttribute = System.Diagnostics.DebuggerBrowsableAttribute

---@class System.Diagnostics.DebuggerTypeProxyAttribute : System.Attribute
---@field public ProxyTypeName System.String @  getter
---@field public Target System.Type @ setter getter
---@field public TargetTypeName System.String @ setter getter
System.Diagnostics.DebuggerTypeProxyAttribute = {}
---@type System.Diagnostics.DebuggerTypeProxyAttribute
CS.System.Diagnostics.DebuggerTypeProxyAttribute = System.Diagnostics.DebuggerTypeProxyAttribute

---@class System.Diagnostics.DebuggerDisplayAttribute : System.Attribute
---@field public Value System.String @  getter
---@field public Name System.String @ setter getter
---@field public Type System.String @ setter getter
---@field public Target System.Type @ setter getter
---@field public TargetTypeName System.String @ setter getter
System.Diagnostics.DebuggerDisplayAttribute = {}
---@type System.Diagnostics.DebuggerDisplayAttribute
CS.System.Diagnostics.DebuggerDisplayAttribute = System.Diagnostics.DebuggerDisplayAttribute

---@class System.Diagnostics.DebuggerVisualizerAttribute : System.Attribute
---@field public VisualizerObjectSourceTypeName System.String @  getter
---@field public VisualizerTypeName System.String @  getter
---@field public Description System.String @ setter getter
---@field public Target System.Type @ setter getter
---@field public TargetTypeName System.String @ setter getter
System.Diagnostics.DebuggerVisualizerAttribute = {}
---@type System.Diagnostics.DebuggerVisualizerAttribute
CS.System.Diagnostics.DebuggerVisualizerAttribute = System.Diagnostics.DebuggerVisualizerAttribute

---@class System.Diagnostics.Debugger : System.Object
---@field public IsAttached System.Boolean @static  getter
---@field public DefaultCategory System.String
System.Diagnostics.Debugger = {}
---@type System.Diagnostics.Debugger
CS.System.Diagnostics.Debugger = System.Diagnostics.Debugger

---@return System.Void
function System.Diagnostics.Debugger.Break()end
---@return System.Boolean
function System.Diagnostics.Debugger.IsLogging()end
---@return System.Boolean
function System.Diagnostics.Debugger.Launch()end
---@param level System.Int32
---@param category System.String
---@param message System.String
---@return System.Void
function System.Diagnostics.Debugger.Log(level, category, message)end
---@return System.Void
function System.Diagnostics.Debugger.NotifyOfCrossThreadDependency()end
---@class System.Diagnostics.StackFrame : System.Object
---@field public OFFSET_UNKNOWN System.Int32
System.Diagnostics.StackFrame = {}
---@type System.Diagnostics.StackFrame
CS.System.Diagnostics.StackFrame = System.Diagnostics.StackFrame

---@return System.Int32
function System.Diagnostics.StackFrame:GetFileLineNumber()end
---@return System.Int32
function System.Diagnostics.StackFrame:GetFileColumnNumber()end
---@return System.String
function System.Diagnostics.StackFrame:GetFileName()end
---@return System.Int32
function System.Diagnostics.StackFrame:GetILOffset()end
---@return System.Reflection.MethodBase
function System.Diagnostics.StackFrame:GetMethod()end
---@return System.Int32
function System.Diagnostics.StackFrame:GetNativeOffset()end
---@return System.String
function System.Diagnostics.StackFrame:ToString()end
---@class System.Diagnostics.StackTrace : System.Object
---@field public FrameCount System.Int32 @  getter
---@field public METHODS_TO_SKIP System.Int32
System.Diagnostics.StackTrace = {}
---@type System.Diagnostics.StackTrace
CS.System.Diagnostics.StackTrace = System.Diagnostics.StackTrace

---@param index System.Int32
---@return System.Diagnostics.StackFrame
function System.Diagnostics.StackTrace:GetFrame(index)end
---@return System.Diagnostics.StackFrame[]
function System.Diagnostics.StackTrace:GetFrames()end
---@return System.String
function System.Diagnostics.StackTrace:ToString()end
---@class System.Diagnostics.EventSchemaTraceListener : System.Diagnostics.TextWriterTraceListener
---@field public BufferSize System.Int32 @  getter
---@field public MaximumFileSize System.Int64 @  getter
---@field public MaximumNumberOfFiles System.Int32 @  getter
---@field public TraceLogRetentionOption System.Diagnostics.TraceLogRetentionOption @  getter
System.Diagnostics.EventSchemaTraceListener = {}
---@type System.Diagnostics.EventSchemaTraceListener
CS.System.Diagnostics.EventSchemaTraceListener = System.Diagnostics.EventSchemaTraceListener

---@class System.Diagnostics.TraceLogRetentionOption : System.Enum
System.Diagnostics.TraceLogRetentionOption = {}
---@type System.Diagnostics.TraceLogRetentionOption
CS.System.Diagnostics.TraceLogRetentionOption = System.Diagnostics.TraceLogRetentionOption

---@return System.Int32 value:0
System.Diagnostics.TraceLogRetentionOption.UnlimitedSequentialFiles = 0
---@return System.Int32 value:1
System.Diagnostics.TraceLogRetentionOption.LimitedCircularFiles = 1
---@return System.Int32 value:2
System.Diagnostics.TraceLogRetentionOption.SingleFileUnboundedSize = 2
---@return System.Int32 value:3
System.Diagnostics.TraceLogRetentionOption.LimitedSequentialFiles = 3
---@return System.Int32 value:4
System.Diagnostics.TraceLogRetentionOption.SingleFileBoundedSize = 4

---@class System.Diagnostics.UnescapedXmlDiagnosticData : System.Object
---@field public UnescapedXml System.String @ setter getter
System.Diagnostics.UnescapedXmlDiagnosticData = {}
---@type System.Diagnostics.UnescapedXmlDiagnosticData
CS.System.Diagnostics.UnescapedXmlDiagnosticData = System.Diagnostics.UnescapedXmlDiagnosticData

---@class System.Diagnostics.BooleanSwitch : System.Diagnostics.Switch
---@field public Enabled System.Boolean @ setter getter
System.Diagnostics.BooleanSwitch = {}
---@type System.Diagnostics.BooleanSwitch
CS.System.Diagnostics.BooleanSwitch = System.Diagnostics.BooleanSwitch

---@class System.Diagnostics.ConsoleTraceListener : System.Diagnostics.TextWriterTraceListener
System.Diagnostics.ConsoleTraceListener = {}
---@type System.Diagnostics.ConsoleTraceListener
CS.System.Diagnostics.ConsoleTraceListener = System.Diagnostics.ConsoleTraceListener

---@return System.Void
function System.Diagnostics.ConsoleTraceListener:Close()end
---@class System.Diagnostics.CorrelationManager : System.Object
---@field public ActivityId System.Guid @ setter getter
---@field public LogicalOperationStack System.Collections.Stack @  getter
System.Diagnostics.CorrelationManager = {}
---@type System.Diagnostics.CorrelationManager
CS.System.Diagnostics.CorrelationManager = System.Diagnostics.CorrelationManager

---@overload fun(operationId:System.Object):System.Void
---@return System.Void
function System.Diagnostics.CorrelationManager:StartLogicalOperation()end
---@return System.Void
function System.Diagnostics.CorrelationManager:StopLogicalOperation()end
---@class System.Diagnostics.Debug : System.Object
---@field public Listeners System.Diagnostics.TraceListenerCollection @static  getter
---@field public AutoFlush System.Boolean @static setter getter
---@field public IndentLevel System.Int32 @static setter getter
---@field public IndentSize System.Int32 @static setter getter
System.Diagnostics.Debug = {}
---@type System.Diagnostics.Debug
CS.System.Diagnostics.Debug = System.Diagnostics.Debug

---@return System.Void
function System.Diagnostics.Debug.Flush()end
---@return System.Void
function System.Diagnostics.Debug.Close()end
---@overload fun(condition:System.Boolean, message:System.String):System.Void
---@overload fun(condition:System.Boolean, message:System.String, detailMessage:System.String):System.Void
---@overload fun(condition:System.Boolean, message:System.String, detailMessageFormat:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Debug.Assert(condition)end
---@overload fun(message:System.String, detailMessage:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.Fail(message)end
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.Print(message)end
---@overload fun(value:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(value:System.Object, category:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.Write(message)end
---@overload fun(value:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(value:System.Object, category:System.String):System.Void
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.WriteLine(message)end
---@overload fun(condition:System.Boolean, value:System.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String, category:System.String):System.Void
---@overload fun(condition:System.Boolean, value:System.Object, category:System.String):System.Void
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.WriteIf(condition, message)end
---@overload fun(condition:System.Boolean, value:System.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String, category:System.String):System.Void
---@overload fun(condition:System.Boolean, value:System.Object, category:System.String):System.Void
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Diagnostics.Debug.WriteLineIf(condition, message)end
---@return System.Void
function System.Diagnostics.Debug.Indent()end
---@return System.Void
function System.Diagnostics.Debug.Unindent()end
---@class System.Diagnostics.DelimitedListTraceListener : System.Diagnostics.TextWriterTraceListener
---@field public Delimiter System.String @ setter getter
System.Diagnostics.DelimitedListTraceListener = {}
---@type System.Diagnostics.DelimitedListTraceListener
CS.System.Diagnostics.DelimitedListTraceListener = System.Diagnostics.DelimitedListTraceListener

---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, format:System.String, args:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param message System.String
---@return System.Void
function System.Diagnostics.DelimitedListTraceListener:TraceEvent(eventCache, source, eventType, id, message)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, data:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param data System.Object
---@return System.Void
function System.Diagnostics.DelimitedListTraceListener:TraceData(eventCache, source, eventType, id, data)end
---@class System.Diagnostics.EventTypeFilter : System.Diagnostics.TraceFilter
---@field public EventType System.Diagnostics.SourceLevels @ setter getter
System.Diagnostics.EventTypeFilter = {}
---@type System.Diagnostics.EventTypeFilter
CS.System.Diagnostics.EventTypeFilter = System.Diagnostics.EventTypeFilter

---@param cache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param formatOrMessage System.String
---@param args System.Object[]
---@param data1 System.Object
---@param data System.Object[]
---@return System.Boolean
function System.Diagnostics.EventTypeFilter:ShouldTrace(cache, source, eventType, id, formatOrMessage, args, data1, data)end
---@class System.Diagnostics.SourceFilter : System.Diagnostics.TraceFilter
---@field public Source System.String @ setter getter
System.Diagnostics.SourceFilter = {}
---@type System.Diagnostics.SourceFilter
CS.System.Diagnostics.SourceFilter = System.Diagnostics.SourceFilter

---@param cache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param formatOrMessage System.String
---@param args System.Object[]
---@param data1 System.Object
---@param data System.Object[]
---@return System.Boolean
function System.Diagnostics.SourceFilter:ShouldTrace(cache, source, eventType, id, formatOrMessage, args, data1, data)end
---@class System.Diagnostics.SourceLevels : System.Enum
System.Diagnostics.SourceLevels = {}
---@type System.Diagnostics.SourceLevels
CS.System.Diagnostics.SourceLevels = System.Diagnostics.SourceLevels

---@return System.Int32 value:0
System.Diagnostics.SourceLevels.Off = 0
---@return System.Int32 value:1
System.Diagnostics.SourceLevels.Critical = 1
---@return System.Int32 value:3
System.Diagnostics.SourceLevels.Error = 3
---@return System.Int32 value:7
System.Diagnostics.SourceLevels.Warning = 7

---@class System.Diagnostics.SourceSwitch : System.Diagnostics.Switch
---@field public Level System.Diagnostics.SourceLevels @ setter getter
System.Diagnostics.SourceSwitch = {}
---@type System.Diagnostics.SourceSwitch
CS.System.Diagnostics.SourceSwitch = System.Diagnostics.SourceSwitch

---@param eventType System.Diagnostics.TraceEventType
---@return System.Boolean
function System.Diagnostics.SourceSwitch:ShouldTrace(eventType)end
---@class System.Diagnostics.Switch : System.Object
---@field public Attributes System.Collections.Specialized.StringDictionary @  getter
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
System.Diagnostics.Switch = {}
---@type System.Diagnostics.Switch
CS.System.Diagnostics.Switch = System.Diagnostics.Switch

---@class System.Diagnostics.SwitchAttribute : System.Attribute
---@field public SwitchName System.String @ setter getter
---@field public SwitchType System.Type @ setter getter
---@field public SwitchDescription System.String @ setter getter
System.Diagnostics.SwitchAttribute = {}
---@type System.Diagnostics.SwitchAttribute
CS.System.Diagnostics.SwitchAttribute = System.Diagnostics.SwitchAttribute

---@param assembly System.Reflection.Assembly
---@return System.Diagnostics.SwitchAttribute[]
function System.Diagnostics.SwitchAttribute.GetAll(assembly)end
---@class System.Diagnostics.SwitchLevelAttribute : System.Attribute
---@field public SwitchLevelType System.Type @ setter getter
System.Diagnostics.SwitchLevelAttribute = {}
---@type System.Diagnostics.SwitchLevelAttribute
CS.System.Diagnostics.SwitchLevelAttribute = System.Diagnostics.SwitchLevelAttribute

---@class System.Diagnostics.TextWriterTraceListener : System.Diagnostics.TraceListener
---@field public Writer System.IO.TextWriter @ setter getter
System.Diagnostics.TextWriterTraceListener = {}
---@type System.Diagnostics.TextWriterTraceListener
CS.System.Diagnostics.TextWriterTraceListener = System.Diagnostics.TextWriterTraceListener

---@return System.Void
function System.Diagnostics.TextWriterTraceListener:Close()end
---@return System.Void
function System.Diagnostics.TextWriterTraceListener:Flush()end
---@param message System.String
---@return System.Void
function System.Diagnostics.TextWriterTraceListener:Write(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.TextWriterTraceListener:WriteLine(message)end
---@class System.Diagnostics.Trace : System.Object
---@field public Listeners System.Diagnostics.TraceListenerCollection @static  getter
---@field public AutoFlush System.Boolean @static setter getter
---@field public UseGlobalLock System.Boolean @static setter getter
---@field public CorrelationManager System.Diagnostics.CorrelationManager @static  getter
---@field public IndentLevel System.Int32 @static setter getter
---@field public IndentSize System.Int32 @static setter getter
System.Diagnostics.Trace = {}
---@type System.Diagnostics.Trace
CS.System.Diagnostics.Trace = System.Diagnostics.Trace

---@return System.Void
function System.Diagnostics.Trace.Flush()end
---@return System.Void
function System.Diagnostics.Trace.Close()end
---@overload fun(condition:System.Boolean, message:System.String):System.Void
---@overload fun(condition:System.Boolean, message:System.String, detailMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Trace.Assert(condition)end
---@overload fun(message:System.String, detailMessage:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.Fail(message)end
---@return System.Void
function System.Diagnostics.Trace.Refresh()end
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.TraceInformation(message)end
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.TraceWarning(message)end
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.TraceError(message)end
---@overload fun(value:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(value:System.Object, category:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.Write(message)end
---@overload fun(value:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(value:System.Object, category:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.WriteLine(message)end
---@overload fun(condition:System.Boolean, value:System.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String, category:System.String):System.Void
---@overload fun(condition:System.Boolean, value:System.Object, category:System.String):System.Void
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.WriteIf(condition, message)end
---@overload fun(condition:System.Boolean, value:System.Object):System.Void
---@overload fun(condition:System.Boolean, message:System.String, category:System.String):System.Void
---@overload fun(condition:System.Boolean, value:System.Object, category:System.String):System.Void
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Diagnostics.Trace.WriteLineIf(condition, message)end
---@return System.Void
function System.Diagnostics.Trace.Indent()end
---@return System.Void
function System.Diagnostics.Trace.Unindent()end
---@class System.Diagnostics.TraceEventCache : System.Object
---@field public Callstack System.String @  getter
---@field public LogicalOperationStack System.Collections.Stack @  getter
---@field public DateTime System.DateTime @  getter
---@field public ProcessId System.Int32 @  getter
---@field public ThreadId System.String @  getter
---@field public Timestamp System.Int64 @  getter
System.Diagnostics.TraceEventCache = {}
---@type System.Diagnostics.TraceEventCache
CS.System.Diagnostics.TraceEventCache = System.Diagnostics.TraceEventCache

---@class System.Diagnostics.TraceEventType : System.Enum
System.Diagnostics.TraceEventType = {}
---@type System.Diagnostics.TraceEventType
CS.System.Diagnostics.TraceEventType = System.Diagnostics.TraceEventType

---@return System.Int32 value:1
System.Diagnostics.TraceEventType.Critical = 1
---@return System.Int32 value:2
System.Diagnostics.TraceEventType.Error = 2
---@return System.Int32 value:4
System.Diagnostics.TraceEventType.Warning = 4
---@return System.Int32 value:8
System.Diagnostics.TraceEventType.Information = 8

---@class System.Diagnostics.TraceFilter : System.Object
System.Diagnostics.TraceFilter = {}
---@type System.Diagnostics.TraceFilter
CS.System.Diagnostics.TraceFilter = System.Diagnostics.TraceFilter

---@param cache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param formatOrMessage System.String
---@param args System.Object[]
---@param data1 System.Object
---@param data System.Object[]
---@return System.Boolean
function System.Diagnostics.TraceFilter:ShouldTrace(cache, source, eventType, id, formatOrMessage, args, data1, data)end
---@class System.Diagnostics.TraceLevel : System.Enum
System.Diagnostics.TraceLevel = {}
---@type System.Diagnostics.TraceLevel
CS.System.Diagnostics.TraceLevel = System.Diagnostics.TraceLevel

---@return System.Int32 value:0
System.Diagnostics.TraceLevel.Off = 0
---@return System.Int32 value:1
System.Diagnostics.TraceLevel.Error = 1
---@return System.Int32 value:2
System.Diagnostics.TraceLevel.Warning = 2
---@return System.Int32 value:3
System.Diagnostics.TraceLevel.Info = 3
---@return System.Int32 value:4
System.Diagnostics.TraceLevel.Verbose = 4

---@class System.Diagnostics.TraceListener : System.MarshalByRefObject
---@field public Attributes System.Collections.Specialized.StringDictionary @  getter
---@field public Name System.String @ setter getter
---@field public IsThreadSafe System.Boolean @  getter
---@field public IndentLevel System.Int32 @ setter getter
---@field public IndentSize System.Int32 @ setter getter
---@field public Filter System.Diagnostics.TraceFilter @ setter getter
---@field public TraceOutputOptions System.Diagnostics.TraceOptions @ setter getter
System.Diagnostics.TraceListener = {}
---@type System.Diagnostics.TraceListener
CS.System.Diagnostics.TraceListener = System.Diagnostics.TraceListener

---@return System.Void
function System.Diagnostics.TraceListener:Dispose()end
---@return System.Void
function System.Diagnostics.TraceListener:Close()end
---@return System.Void
function System.Diagnostics.TraceListener:Flush()end
---@overload fun(message:System.String, detailMessage:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.TraceListener:Fail(message)end
---@overload fun(o:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(o:System.Object, category:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.TraceListener:Write(message)end
---@overload fun(o:System.Object):System.Void
---@overload fun(message:System.String, category:System.String):System.Void
---@overload fun(o:System.Object, category:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.TraceListener:WriteLine(message)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, data:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param data System.Object
---@return System.Void
function System.Diagnostics.TraceListener:TraceData(eventCache, source, eventType, id, data)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, message:System.String):System.Void
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, format:System.String, args:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@return System.Void
function System.Diagnostics.TraceListener:TraceEvent(eventCache, source, eventType, id)end
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param id System.Int32
---@param message System.String
---@param relatedActivityId System.Guid
---@return System.Void
function System.Diagnostics.TraceListener:TraceTransfer(eventCache, source, id, message, relatedActivityId)end
---@class System.Diagnostics.TraceListenerCollection : System.Object
---@field public Item System.Diagnostics.TraceListener @ setter getter
---@field public Item System.Diagnostics.TraceListener @  getter
---@field public Count System.Int32 @  getter
System.Diagnostics.TraceListenerCollection = {}
---@type System.Diagnostics.TraceListenerCollection
CS.System.Diagnostics.TraceListenerCollection = System.Diagnostics.TraceListenerCollection

---@param listener System.Diagnostics.TraceListener
---@return System.Int32
function System.Diagnostics.TraceListenerCollection:Add(listener)end
---@overload fun(value:System.Diagnostics.TraceListenerCollection):System.Void
---@param value System.Diagnostics.TraceListener[]
---@return System.Void
function System.Diagnostics.TraceListenerCollection:AddRange(value)end
---@return System.Void
function System.Diagnostics.TraceListenerCollection:Clear()end
---@param listener System.Diagnostics.TraceListener
---@return System.Boolean
function System.Diagnostics.TraceListenerCollection:Contains(listener)end
---@param listeners System.Diagnostics.TraceListener[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.TraceListenerCollection:CopyTo(listeners, index)end
---@return System.Collections.IEnumerator
function System.Diagnostics.TraceListenerCollection:GetEnumerator()end
---@param listener System.Diagnostics.TraceListener
---@return System.Int32
function System.Diagnostics.TraceListenerCollection:IndexOf(listener)end
---@param index System.Int32
---@param listener System.Diagnostics.TraceListener
---@return System.Void
function System.Diagnostics.TraceListenerCollection:Insert(index, listener)end
---@overload fun(name:System.String):System.Void
---@param listener System.Diagnostics.TraceListener
---@return System.Void
function System.Diagnostics.TraceListenerCollection:Remove(listener)end
---@param index System.Int32
---@return System.Void
function System.Diagnostics.TraceListenerCollection:RemoveAt(index)end
---@class System.Diagnostics.TraceOptions : System.Enum
System.Diagnostics.TraceOptions = {}
---@type System.Diagnostics.TraceOptions
CS.System.Diagnostics.TraceOptions = System.Diagnostics.TraceOptions

---@return System.Int32 value:0
System.Diagnostics.TraceOptions.None = 0
---@return System.Int32 value:1
System.Diagnostics.TraceOptions.LogicalOperationStack = 1
---@return System.Int32 value:2
System.Diagnostics.TraceOptions.DateTime = 2
---@return System.Int32 value:4
System.Diagnostics.TraceOptions.Timestamp = 4

---@class System.Diagnostics.TraceSource : System.Object
---@field public Attributes System.Collections.Specialized.StringDictionary @  getter
---@field public Name System.String @  getter
---@field public Listeners System.Diagnostics.TraceListenerCollection @  getter
---@field public Switch System.Diagnostics.SourceSwitch @ setter getter
System.Diagnostics.TraceSource = {}
---@type System.Diagnostics.TraceSource
CS.System.Diagnostics.TraceSource = System.Diagnostics.TraceSource

---@return System.Void
function System.Diagnostics.TraceSource:Close()end
---@return System.Void
function System.Diagnostics.TraceSource:Flush()end
---@overload fun(eventType:System.Diagnostics.TraceEventType, id:System.Int32, message:System.String):System.Void
---@overload fun(eventType:System.Diagnostics.TraceEventType, id:System.Int32, format:System.String, args:System.Object[]):System.Void
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@return System.Void
function System.Diagnostics.TraceSource:TraceEvent(eventType, id)end
---@overload fun(eventType:System.Diagnostics.TraceEventType, id:System.Int32, data:System.Object[]):System.Void
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param data System.Object
---@return System.Void
function System.Diagnostics.TraceSource:TraceData(eventType, id, data)end
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.TraceSource:TraceInformation(message)end
---@param id System.Int32
---@param message System.String
---@param relatedActivityId System.Guid
---@return System.Void
function System.Diagnostics.TraceSource:TraceTransfer(id, message, relatedActivityId)end
---@class System.Diagnostics.TraceSwitch : System.Diagnostics.Switch
---@field public Level System.Diagnostics.TraceLevel @ setter getter
---@field public TraceError System.Boolean @  getter
---@field public TraceWarning System.Boolean @  getter
---@field public TraceInfo System.Boolean @  getter
---@field public TraceVerbose System.Boolean @  getter
System.Diagnostics.TraceSwitch = {}
---@type System.Diagnostics.TraceSwitch
CS.System.Diagnostics.TraceSwitch = System.Diagnostics.TraceSwitch

---@class System.Diagnostics.XmlWriterTraceListener : System.Diagnostics.TextWriterTraceListener
System.Diagnostics.XmlWriterTraceListener = {}
---@type System.Diagnostics.XmlWriterTraceListener
CS.System.Diagnostics.XmlWriterTraceListener = System.Diagnostics.XmlWriterTraceListener

---@param message System.String
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:Write(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:WriteLine(message)end
---@param message System.String
---@param detailMessage System.String
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:Fail(message, detailMessage)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, format:System.String, args:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param message System.String
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:TraceEvent(eventCache, source, eventType, id, message)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, eventType:System.Diagnostics.TraceEventType, id:System.Int32, data:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param eventType System.Diagnostics.TraceEventType
---@param id System.Int32
---@param data System.Object
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:TraceData(eventCache, source, eventType, id, data)end
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:Close()end
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param id System.Int32
---@param message System.String
---@param relatedActivityId System.Guid
---@return System.Void
function System.Diagnostics.XmlWriterTraceListener:TraceTransfer(eventCache, source, id, message, relatedActivityId)end
---@class System.Diagnostics.Process : System.ComponentModel.Component
---@field public ExitCode System.Int32 @  getter
---@field public HasExited System.Boolean @  getter
---@field public ExitTime System.DateTime @  getter
---@field public Handle System.IntPtr @  getter
---@field public SafeHandle Microsoft.Win32.SafeHandles.SafeProcessHandle @  getter
---@field public Id System.Int32 @  getter
---@field public MachineName System.String @  getter
---@field public MaxWorkingSet System.IntPtr @ setter getter
---@field public MinWorkingSet System.IntPtr @ setter getter
---@field public PriorityClass System.Diagnostics.ProcessPriorityClass @ setter getter
---@field public PrivilegedProcessorTime System.TimeSpan @  getter
---@field public StartInfo System.Diagnostics.ProcessStartInfo @ setter getter
---@field public StartTime System.DateTime @  getter
---@field public SynchronizingObject System.ComponentModel.ISynchronizeInvoke @ setter getter
---@field public TotalProcessorTime System.TimeSpan @  getter
---@field public UserProcessorTime System.TimeSpan @  getter
---@field public EnableRaisingEvents System.Boolean @ setter getter
---@field public StandardInput System.IO.StreamWriter @  getter
---@field public StandardOutput System.IO.StreamReader @  getter
---@field public StandardError System.IO.StreamReader @  getter
---@field public BasePriority System.Int32 @  getter
---@field public HandleCount System.Int32 @  getter
---@field public MainModule System.Diagnostics.ProcessModule @  getter
---@field public MainWindowHandle System.IntPtr @  getter
---@field public MainWindowTitle System.String @  getter
---@field public Modules System.Diagnostics.ProcessModuleCollection @  getter
---@field public NonpagedSystemMemorySize System.Int32 @  getter
---@field public PagedMemorySize System.Int32 @  getter
---@field public PagedSystemMemorySize System.Int32 @  getter
---@field public PeakPagedMemorySize System.Int32 @  getter
---@field public PeakVirtualMemorySize System.Int32 @  getter
---@field public PeakWorkingSet System.Int32 @  getter
---@field public NonpagedSystemMemorySize64 System.Int64 @  getter
---@field public PagedMemorySize64 System.Int64 @  getter
---@field public PagedSystemMemorySize64 System.Int64 @  getter
---@field public PeakPagedMemorySize64 System.Int64 @  getter
---@field public PeakVirtualMemorySize64 System.Int64 @  getter
---@field public PeakWorkingSet64 System.Int64 @  getter
---@field public PriorityBoostEnabled System.Boolean @ setter getter
---@field public PrivateMemorySize System.Int32 @  getter
---@field public SessionId System.Int32 @  getter
---@field public ProcessName System.String @  getter
---@field public ProcessorAffinity System.IntPtr @ setter getter
---@field public Responding System.Boolean @  getter
---@field public Threads System.Diagnostics.ProcessThreadCollection @  getter
---@field public VirtualMemorySize System.Int32 @  getter
---@field public WorkingSet System.Int32 @  getter
---@field public PrivateMemorySize64 System.Int64 @  getter
---@field public VirtualMemorySize64 System.Int64 @  getter
---@field public WorkingSet64 System.Int64 @  getter
System.Diagnostics.Process = {}
---@type System.Diagnostics.Process
CS.System.Diagnostics.Process = System.Diagnostics.Process

---@param value System.Diagnostics.DataReceivedEventHandler
---@return System.Void
function System.Diagnostics.Process:add_OutputDataReceived(value)end
---@param value System.Diagnostics.DataReceivedEventHandler
---@return System.Void
function System.Diagnostics.Process:remove_OutputDataReceived(value)end
---@param value System.Diagnostics.DataReceivedEventHandler
---@return System.Void
function System.Diagnostics.Process:add_ErrorDataReceived(value)end
---@param value System.Diagnostics.DataReceivedEventHandler
---@return System.Void
function System.Diagnostics.Process:remove_ErrorDataReceived(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Process:add_Exited(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Process:remove_Exited(value)end
---@return System.Void
function System.Diagnostics.Process:Close()end
---@return System.Void
function System.Diagnostics.Process.EnterDebugMode()end
---@return System.Void
function System.Diagnostics.Process.LeaveDebugMode()end
---@overload fun(processId:System.Int32, machineName:System.String):System.Diagnostics.Process
---@param processId System.Int32
---@return System.Diagnostics.Process
function System.Diagnostics.Process.GetProcessById(processId)end
---@overload fun(processName:System.String, machineName:System.String):System.Diagnostics.Process[]
---@param processName System.String
---@return System.Diagnostics.Process[]
function System.Diagnostics.Process.GetProcessesByName(processName)end
---@overload fun(machineName:System.String):System.Diagnostics.Process[]
---@return System.Diagnostics.Process[]
function System.Diagnostics.Process.GetProcesses()end
---@return System.Diagnostics.Process
function System.Diagnostics.Process.GetCurrentProcess()end
---@return System.Void
function System.Diagnostics.Process:Refresh()end
---@return System.Boolean
function System.Diagnostics.Process:Start()end
---@overload fun(startInfo:System.Diagnostics.ProcessStartInfo):System.Diagnostics.Process
---@overload fun(fileName:System.String, arguments:System.String):System.Diagnostics.Process
---@overload fun(fileName:System.String, userName:System.String, password:System.Security.SecureString, domain:System.String):System.Diagnostics.Process
---@overload fun(fileName:System.String, arguments:System.String, userName:System.String, password:System.Security.SecureString, domain:System.String):System.Diagnostics.Process
---@param fileName System.String
---@return System.Diagnostics.Process
function System.Diagnostics.Process.Start(fileName)end
---@return System.Void
function System.Diagnostics.Process:Kill()end
---@return System.String
function System.Diagnostics.Process:ToString()end
---@overload fun(milliseconds:System.Int32):System.Boolean
---@return System.Void
function System.Diagnostics.Process:WaitForExit()end
---@overload fun(milliseconds:System.Int32):System.Boolean
---@return System.Boolean
function System.Diagnostics.Process:WaitForInputIdle()end
---@return System.Void
function System.Diagnostics.Process:BeginOutputReadLine()end
---@return System.Void
function System.Diagnostics.Process:BeginErrorReadLine()end
---@return System.Void
function System.Diagnostics.Process:CancelOutputRead()end
---@return System.Void
function System.Diagnostics.Process:CancelErrorRead()end
---@return System.Boolean
function System.Diagnostics.Process:CloseMainWindow()end
---@class System.Diagnostics.ProcessModuleCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.Diagnostics.ProcessModule @  getter
System.Diagnostics.ProcessModuleCollection = {}
---@type System.Diagnostics.ProcessModuleCollection
CS.System.Diagnostics.ProcessModuleCollection = System.Diagnostics.ProcessModuleCollection

---@param module System.Diagnostics.ProcessModule
---@return System.Int32
function System.Diagnostics.ProcessModuleCollection:IndexOf(module)end
---@param module System.Diagnostics.ProcessModule
---@return System.Boolean
function System.Diagnostics.ProcessModuleCollection:Contains(module)end
---@param array System.Diagnostics.ProcessModule[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.ProcessModuleCollection:CopyTo(array, index)end
---@class System.Diagnostics.ProcessStartInfo : System.Object
---@field public Verb System.String @ setter getter
---@field public Arguments System.String @ setter getter
---@field public CreateNoWindow System.Boolean @ setter getter
---@field public EnvironmentVariables System.Collections.Specialized.StringDictionary @  getter
---@field public Environment System.Collections.Generic.IDictionary @  getter
---@field public RedirectStandardInput System.Boolean @ setter getter
---@field public RedirectStandardOutput System.Boolean @ setter getter
---@field public RedirectStandardError System.Boolean @ setter getter
---@field public StandardErrorEncoding System.Text.Encoding @ setter getter
---@field public StandardOutputEncoding System.Text.Encoding @ setter getter
---@field public UseShellExecute System.Boolean @ setter getter
---@field public UserName System.String @ setter getter
---@field public Password System.Security.SecureString @ setter getter
---@field public PasswordInClearText System.String @ setter getter
---@field public Domain System.String @ setter getter
---@field public LoadUserProfile System.Boolean @ setter getter
---@field public FileName System.String @ setter getter
---@field public WorkingDirectory System.String @ setter getter
---@field public ErrorDialog System.Boolean @ setter getter
---@field public ErrorDialogParentHandle System.IntPtr @ setter getter
---@field public WindowStyle System.Diagnostics.ProcessWindowStyle @ setter getter
---@field public Verbs System.String[] @  getter
System.Diagnostics.ProcessStartInfo = {}
---@type System.Diagnostics.ProcessStartInfo
CS.System.Diagnostics.ProcessStartInfo = System.Diagnostics.ProcessStartInfo

---@class System.Diagnostics.ProcessThreadCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.Diagnostics.ProcessThread @  getter
System.Diagnostics.ProcessThreadCollection = {}
---@type System.Diagnostics.ProcessThreadCollection
CS.System.Diagnostics.ProcessThreadCollection = System.Diagnostics.ProcessThreadCollection

---@param thread System.Diagnostics.ProcessThread
---@return System.Int32
function System.Diagnostics.ProcessThreadCollection:Add(thread)end
---@param index System.Int32
---@param thread System.Diagnostics.ProcessThread
---@return System.Void
function System.Diagnostics.ProcessThreadCollection:Insert(index, thread)end
---@param thread System.Diagnostics.ProcessThread
---@return System.Int32
function System.Diagnostics.ProcessThreadCollection:IndexOf(thread)end
---@param thread System.Diagnostics.ProcessThread
---@return System.Boolean
function System.Diagnostics.ProcessThreadCollection:Contains(thread)end
---@param thread System.Diagnostics.ProcessThread
---@return System.Void
function System.Diagnostics.ProcessThreadCollection:Remove(thread)end
---@param array System.Diagnostics.ProcessThread[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.ProcessThreadCollection:CopyTo(array, index)end
---@class System.Diagnostics.CounterCreationData : System.Object
---@field public CounterHelp System.String @ setter getter
---@field public CounterName System.String @ setter getter
---@field public CounterType System.Diagnostics.PerformanceCounterType @ setter getter
System.Diagnostics.CounterCreationData = {}
---@type System.Diagnostics.CounterCreationData
CS.System.Diagnostics.CounterCreationData = System.Diagnostics.CounterCreationData

---@class System.Diagnostics.CounterCreationDataCollection : System.Collections.CollectionBase
---@field public Item System.Diagnostics.CounterCreationData @ setter getter
System.Diagnostics.CounterCreationDataCollection = {}
---@type System.Diagnostics.CounterCreationDataCollection
CS.System.Diagnostics.CounterCreationDataCollection = System.Diagnostics.CounterCreationDataCollection

---@param value System.Diagnostics.CounterCreationData
---@return System.Int32
function System.Diagnostics.CounterCreationDataCollection:Add(value)end
---@overload fun(value:System.Diagnostics.CounterCreationDataCollection):System.Void
---@param value System.Diagnostics.CounterCreationData[]
---@return System.Void
function System.Diagnostics.CounterCreationDataCollection:AddRange(value)end
---@param value System.Diagnostics.CounterCreationData
---@return System.Boolean
function System.Diagnostics.CounterCreationDataCollection:Contains(value)end
---@param array System.Diagnostics.CounterCreationData[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.CounterCreationDataCollection:CopyTo(array, index)end
---@param value System.Diagnostics.CounterCreationData
---@return System.Int32
function System.Diagnostics.CounterCreationDataCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.Diagnostics.CounterCreationData
---@return System.Void
function System.Diagnostics.CounterCreationDataCollection:Insert(index, value)end
---@param value System.Diagnostics.CounterCreationData
---@return System.Void
function System.Diagnostics.CounterCreationDataCollection:Remove(value)end
---@class System.Diagnostics.CounterSample : System.ValueType
---@field public BaseValue System.Int64 @  getter
---@field public CounterFrequency System.Int64 @  getter
---@field public CounterTimeStamp System.Int64 @  getter
---@field public CounterType System.Diagnostics.PerformanceCounterType @  getter
---@field public RawValue System.Int64 @  getter
---@field public SystemFrequency System.Int64 @  getter
---@field public TimeStamp System.Int64 @  getter
---@field public TimeStamp100nSec System.Int64 @  getter
---@field public Empty System.Diagnostics.CounterSample
System.Diagnostics.CounterSample = {}
---@type System.Diagnostics.CounterSample
CS.System.Diagnostics.CounterSample = System.Diagnostics.CounterSample

---@overload fun(counterSample:System.Diagnostics.CounterSample, nextCounterSample:System.Diagnostics.CounterSample):System.Single
---@param counterSample System.Diagnostics.CounterSample
---@return System.Single
function System.Diagnostics.CounterSample.Calculate(counterSample)end
---@overload fun(sample:System.Diagnostics.CounterSample):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Diagnostics.CounterSample:Equals(o)end
---@param a System.Diagnostics.CounterSample
---@param b System.Diagnostics.CounterSample
---@return System.Boolean
function System.Diagnostics.CounterSample.op_Equality(a, b)end
---@param a System.Diagnostics.CounterSample
---@param b System.Diagnostics.CounterSample
---@return System.Boolean
function System.Diagnostics.CounterSample.op_Inequality(a, b)end
---@return System.Int32
function System.Diagnostics.CounterSample:GetHashCode()end
---@class System.Diagnostics.CounterSampleCalculator : System.Object
System.Diagnostics.CounterSampleCalculator = {}
---@type System.Diagnostics.CounterSampleCalculator
CS.System.Diagnostics.CounterSampleCalculator = System.Diagnostics.CounterSampleCalculator

---@overload fun(oldSample:System.Diagnostics.CounterSample, newSample:System.Diagnostics.CounterSample):System.Single
---@param newSample System.Diagnostics.CounterSample
---@return System.Single
function System.Diagnostics.CounterSampleCalculator.ComputeCounterValue(newSample)end
---@class System.Diagnostics.DataReceivedEventArgs : System.EventArgs
---@field public Data System.String @  getter
System.Diagnostics.DataReceivedEventArgs = {}
---@type System.Diagnostics.DataReceivedEventArgs
CS.System.Diagnostics.DataReceivedEventArgs = System.Diagnostics.DataReceivedEventArgs

---@class System.Diagnostics.DefaultTraceListener : System.Diagnostics.TraceListener
---@field public AssertUiEnabled System.Boolean @ setter getter
---@field public LogFileName System.String @ setter getter
System.Diagnostics.DefaultTraceListener = {}
---@type System.Diagnostics.DefaultTraceListener
CS.System.Diagnostics.DefaultTraceListener = System.Diagnostics.DefaultTraceListener

---@overload fun(message:System.String, detailMessage:System.String):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.DefaultTraceListener:Fail(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.DefaultTraceListener:Write(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.DefaultTraceListener:WriteLine(message)end
---@class System.Diagnostics.DiagnosticsConfigurationHandler : System.Object
System.Diagnostics.DiagnosticsConfigurationHandler = {}
---@type System.Diagnostics.DiagnosticsConfigurationHandler
CS.System.Diagnostics.DiagnosticsConfigurationHandler = System.Diagnostics.DiagnosticsConfigurationHandler

---@param parent System.Object
---@param configContext System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Diagnostics.DiagnosticsConfigurationHandler:Create(parent, configContext, section)end
---@class System.Diagnostics.EntryWrittenEventArgs : System.EventArgs
---@field public Entry System.Diagnostics.EventLogEntry @  getter
System.Diagnostics.EntryWrittenEventArgs = {}
---@type System.Diagnostics.EntryWrittenEventArgs
CS.System.Diagnostics.EntryWrittenEventArgs = System.Diagnostics.EntryWrittenEventArgs

---@class System.Diagnostics.EventInstance : System.Object
---@field public CategoryId System.Int32 @ setter getter
---@field public EntryType System.Diagnostics.EventLogEntryType @ setter getter
---@field public InstanceId System.Int64 @ setter getter
System.Diagnostics.EventInstance = {}
---@type System.Diagnostics.EventInstance
CS.System.Diagnostics.EventInstance = System.Diagnostics.EventInstance

---@class System.Diagnostics.EventLog : System.ComponentModel.Component
---@field public EnableRaisingEvents System.Boolean @ setter getter
---@field public Entries System.Diagnostics.EventLogEntryCollection @  getter
---@field public Log System.String @ setter getter
---@field public LogDisplayName System.String @  getter
---@field public MachineName System.String @ setter getter
---@field public Source System.String @ setter getter
---@field public SynchronizingObject System.ComponentModel.ISynchronizeInvoke @ setter getter
---@field public OverflowAction System.Diagnostics.OverflowAction @  getter
---@field public MinimumRetentionDays System.Int32 @  getter
---@field public MaximumKilobytes System.Int64 @ setter getter
System.Diagnostics.EventLog = {}
---@type System.Diagnostics.EventLog
CS.System.Diagnostics.EventLog = System.Diagnostics.EventLog

---@param action System.Diagnostics.OverflowAction
---@param retentionDays System.Int32
---@return System.Void
function System.Diagnostics.EventLog:ModifyOverflowPolicy(action, retentionDays)end
---@param resourceFile System.String
---@param resourceId System.Int64
---@return System.Void
function System.Diagnostics.EventLog:RegisterDisplayName(resourceFile, resourceId)end
---@return System.Void
function System.Diagnostics.EventLog:BeginInit()end
---@return System.Void
function System.Diagnostics.EventLog:Clear()end
---@return System.Void
function System.Diagnostics.EventLog:Close()end
---@overload fun(source:System.String, logName:System.String):System.Void
---@overload fun(source:System.String, logName:System.String, machineName:System.String):System.Void
---@param sourceData System.Diagnostics.EventSourceCreationData
---@return System.Void
function System.Diagnostics.EventLog.CreateEventSource(sourceData)end
---@overload fun(logName:System.String, machineName:System.String):System.Void
---@param logName System.String
---@return System.Void
function System.Diagnostics.EventLog.Delete(logName)end
---@overload fun(source:System.String, machineName:System.String):System.Void
---@param source System.String
---@return System.Void
function System.Diagnostics.EventLog.DeleteEventSource(source)end
---@return System.Void
function System.Diagnostics.EventLog:EndInit()end
---@overload fun(logName:System.String, machineName:System.String):System.Boolean
---@param logName System.String
---@return System.Boolean
function System.Diagnostics.EventLog.Exists(logName)end
---@overload fun(machineName:System.String):System.Diagnostics.EventLog[]
---@return System.Diagnostics.EventLog[]
function System.Diagnostics.EventLog.GetEventLogs()end
---@param source System.String
---@param machineName System.String
---@return System.String
function System.Diagnostics.EventLog.LogNameFromSourceName(source, machineName)end
---@overload fun(source:System.String, machineName:System.String):System.Boolean
---@param source System.String
---@return System.Boolean
function System.Diagnostics.EventLog.SourceExists(source)end
---@overload fun(message:System.String, type:System.Diagnostics.EventLogEntryType):System.Void
---@overload fun(message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32):System.Void
---@overload fun(message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32, category:System.Int16):System.Void
---@overload fun(message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32, category:System.Int16, rawData:System.Byte[]):System.Void
---@param message System.String
---@return System.Void
function System.Diagnostics.EventLog:WriteEntry(message)end
---@overload fun(source:System.String, message:System.String, type:System.Diagnostics.EventLogEntryType):System.Void
---@overload fun(source:System.String, message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32):System.Void
---@overload fun(source:System.String, message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32, category:System.Int16):System.Void
---@overload fun(source:System.String, message:System.String, type:System.Diagnostics.EventLogEntryType, eventID:System.Int32, category:System.Int16, rawData:System.Byte[]):System.Void
---@param source System.String
---@param message System.String
---@return System.Void
function System.Diagnostics.EventLog.WriteEntry(source, message)end
---@overload fun(instance:System.Diagnostics.EventInstance, data:System.Byte[], values:System.Object[]):System.Void
---@param instance System.Diagnostics.EventInstance
---@param values System.Object[]
---@return System.Void
function System.Diagnostics.EventLog:WriteEvent(instance, values)end
---@overload fun(source:System.String, instance:System.Diagnostics.EventInstance, data:System.Byte[], values:System.Object[]):System.Void
---@param source System.String
---@param instance System.Diagnostics.EventInstance
---@param values System.Object[]
---@return System.Void
function System.Diagnostics.EventLog.WriteEvent(source, instance, values)end
---@param value System.Diagnostics.EntryWrittenEventHandler
---@return System.Void
function System.Diagnostics.EventLog:add_EntryWritten(value)end
---@param value System.Diagnostics.EntryWrittenEventHandler
---@return System.Void
function System.Diagnostics.EventLog:remove_EntryWritten(value)end
---@class System.Diagnostics.EventLogEntry : System.ComponentModel.Component
---@field public Category System.String @  getter
---@field public CategoryNumber System.Int16 @  getter
---@field public Data System.Byte[] @  getter
---@field public EntryType System.Diagnostics.EventLogEntryType @  getter
---@field public EventID System.Int32 @  getter
---@field public Index System.Int32 @  getter
---@field public InstanceId System.Int64 @  getter
---@field public MachineName System.String @  getter
---@field public Message System.String @  getter
---@field public ReplacementStrings System.String[] @  getter
---@field public Source System.String @  getter
---@field public TimeGenerated System.DateTime @  getter
---@field public TimeWritten System.DateTime @  getter
---@field public UserName System.String @  getter
System.Diagnostics.EventLogEntry = {}
---@type System.Diagnostics.EventLogEntry
CS.System.Diagnostics.EventLogEntry = System.Diagnostics.EventLogEntry

---@param otherEntry System.Diagnostics.EventLogEntry
---@return System.Boolean
function System.Diagnostics.EventLogEntry:Equals(otherEntry)end
---@class System.Diagnostics.EventLogEntryCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.Diagnostics.EventLogEntry @  getter
System.Diagnostics.EventLogEntryCollection = {}
---@type System.Diagnostics.EventLogEntryCollection
CS.System.Diagnostics.EventLogEntryCollection = System.Diagnostics.EventLogEntryCollection

---@param entries System.Diagnostics.EventLogEntry[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.EventLogEntryCollection:CopyTo(entries, index)end
---@return System.Collections.IEnumerator
function System.Diagnostics.EventLogEntryCollection:GetEnumerator()end
---@class System.Diagnostics.EventLogEntryType : System.Enum
System.Diagnostics.EventLogEntryType = {}
---@type System.Diagnostics.EventLogEntryType
CS.System.Diagnostics.EventLogEntryType = System.Diagnostics.EventLogEntryType

---@return System.Int32 value:1
System.Diagnostics.EventLogEntryType.Error = 1
---@return System.Int32 value:2
System.Diagnostics.EventLogEntryType.Warning = 2
---@return System.Int32 value:4
System.Diagnostics.EventLogEntryType.Information = 4

---@class System.Diagnostics.EventLogPermission : System.Security.Permissions.ResourcePermissionBase
---@field public PermissionEntries System.Diagnostics.EventLogPermissionEntryCollection @  getter
System.Diagnostics.EventLogPermission = {}
---@type System.Diagnostics.EventLogPermission
CS.System.Diagnostics.EventLogPermission = System.Diagnostics.EventLogPermission

---@class System.Diagnostics.EventLogPermissionAccess : System.Enum
System.Diagnostics.EventLogPermissionAccess = {}
---@type System.Diagnostics.EventLogPermissionAccess
CS.System.Diagnostics.EventLogPermissionAccess = System.Diagnostics.EventLogPermissionAccess

---@return System.Int32 value:0
System.Diagnostics.EventLogPermissionAccess.None = 0
---@return System.Int32 value:2
System.Diagnostics.EventLogPermissionAccess.Browse = 2

---@class System.Diagnostics.EventLogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public MachineName System.String @ setter getter
---@field public PermissionAccess System.Diagnostics.EventLogPermissionAccess @ setter getter
System.Diagnostics.EventLogPermissionAttribute = {}
---@type System.Diagnostics.EventLogPermissionAttribute
CS.System.Diagnostics.EventLogPermissionAttribute = System.Diagnostics.EventLogPermissionAttribute

---@return System.Security.IPermission
function System.Diagnostics.EventLogPermissionAttribute:CreatePermission()end
---@class System.Diagnostics.EventLogPermissionEntry : System.Object
---@field public MachineName System.String @  getter
---@field public PermissionAccess System.Diagnostics.EventLogPermissionAccess @  getter
System.Diagnostics.EventLogPermissionEntry = {}
---@type System.Diagnostics.EventLogPermissionEntry
CS.System.Diagnostics.EventLogPermissionEntry = System.Diagnostics.EventLogPermissionEntry

---@class System.Diagnostics.EventLogPermissionEntryCollection : System.Collections.CollectionBase
---@field public Item System.Diagnostics.EventLogPermissionEntry @ setter getter
System.Diagnostics.EventLogPermissionEntryCollection = {}
---@type System.Diagnostics.EventLogPermissionEntryCollection
CS.System.Diagnostics.EventLogPermissionEntryCollection = System.Diagnostics.EventLogPermissionEntryCollection

---@param value System.Diagnostics.EventLogPermissionEntry
---@return System.Int32
function System.Diagnostics.EventLogPermissionEntryCollection:Add(value)end
---@overload fun(value:System.Diagnostics.EventLogPermissionEntryCollection):System.Void
---@param value System.Diagnostics.EventLogPermissionEntry[]
---@return System.Void
function System.Diagnostics.EventLogPermissionEntryCollection:AddRange(value)end
---@param value System.Diagnostics.EventLogPermissionEntry
---@return System.Boolean
function System.Diagnostics.EventLogPermissionEntryCollection:Contains(value)end
---@param array System.Diagnostics.EventLogPermissionEntry[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.EventLogPermissionEntryCollection:CopyTo(array, index)end
---@param value System.Diagnostics.EventLogPermissionEntry
---@return System.Int32
function System.Diagnostics.EventLogPermissionEntryCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.Diagnostics.EventLogPermissionEntry
---@return System.Void
function System.Diagnostics.EventLogPermissionEntryCollection:Insert(index, value)end
---@param value System.Diagnostics.EventLogPermissionEntry
---@return System.Void
function System.Diagnostics.EventLogPermissionEntryCollection:Remove(value)end
---@class System.Diagnostics.EventLogTraceListener : System.Diagnostics.TraceListener
---@field public EventLog System.Diagnostics.EventLog @ setter getter
---@field public Name System.String @ setter getter
System.Diagnostics.EventLogTraceListener = {}
---@type System.Diagnostics.EventLogTraceListener
CS.System.Diagnostics.EventLogTraceListener = System.Diagnostics.EventLogTraceListener

---@return System.Void
function System.Diagnostics.EventLogTraceListener:Close()end
---@param message System.String
---@return System.Void
function System.Diagnostics.EventLogTraceListener:Write(message)end
---@param message System.String
---@return System.Void
function System.Diagnostics.EventLogTraceListener:WriteLine(message)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, severity:System.Diagnostics.TraceEventType, id:System.Int32, data:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param severity System.Diagnostics.TraceEventType
---@param id System.Int32
---@param data System.Object
---@return System.Void
function System.Diagnostics.EventLogTraceListener:TraceData(eventCache, source, severity, id, data)end
---@overload fun(eventCache:System.Diagnostics.TraceEventCache, source:System.String, severity:System.Diagnostics.TraceEventType, id:System.Int32, format:System.String, args:System.Object[]):System.Void
---@param eventCache System.Diagnostics.TraceEventCache
---@param source System.String
---@param severity System.Diagnostics.TraceEventType
---@param id System.Int32
---@param message System.String
---@return System.Void
function System.Diagnostics.EventLogTraceListener:TraceEvent(eventCache, source, severity, id, message)end
---@class System.Diagnostics.EventSourceCreationData : System.Object
---@field public CategoryCount System.Int32 @ setter getter
---@field public CategoryResourceFile System.String @ setter getter
---@field public LogName System.String @ setter getter
---@field public MachineName System.String @ setter getter
---@field public MessageResourceFile System.String @ setter getter
---@field public ParameterResourceFile System.String @ setter getter
---@field public Source System.String @ setter getter
System.Diagnostics.EventSourceCreationData = {}
---@type System.Diagnostics.EventSourceCreationData
CS.System.Diagnostics.EventSourceCreationData = System.Diagnostics.EventSourceCreationData

---@class System.Diagnostics.FileVersionInfo : System.Object
---@field public Comments System.String @  getter
---@field public CompanyName System.String @  getter
---@field public FileBuildPart System.Int32 @  getter
---@field public FileDescription System.String @  getter
---@field public FileMajorPart System.Int32 @  getter
---@field public FileMinorPart System.Int32 @  getter
---@field public FileName System.String @  getter
---@field public FilePrivatePart System.Int32 @  getter
---@field public FileVersion System.String @  getter
---@field public InternalName System.String @  getter
---@field public IsDebug System.Boolean @  getter
---@field public IsPatched System.Boolean @  getter
---@field public IsPreRelease System.Boolean @  getter
---@field public IsPrivateBuild System.Boolean @  getter
---@field public IsSpecialBuild System.Boolean @  getter
---@field public Language System.String @  getter
---@field public LegalCopyright System.String @  getter
---@field public LegalTrademarks System.String @  getter
---@field public OriginalFilename System.String @  getter
---@field public PrivateBuild System.String @  getter
---@field public ProductBuildPart System.Int32 @  getter
---@field public ProductMajorPart System.Int32 @  getter
---@field public ProductMinorPart System.Int32 @  getter
---@field public ProductName System.String @  getter
---@field public ProductPrivatePart System.Int32 @  getter
---@field public ProductVersion System.String @  getter
---@field public SpecialBuild System.String @  getter
System.Diagnostics.FileVersionInfo = {}
---@type System.Diagnostics.FileVersionInfo
CS.System.Diagnostics.FileVersionInfo = System.Diagnostics.FileVersionInfo

---@param fileName System.String
---@return System.Diagnostics.FileVersionInfo
function System.Diagnostics.FileVersionInfo.GetVersionInfo(fileName)end
---@return System.String
function System.Diagnostics.FileVersionInfo:ToString()end
---@class System.Diagnostics.InstanceData : System.Object
---@field public InstanceName System.String @  getter
---@field public RawValue System.Int64 @  getter
---@field public Sample System.Diagnostics.CounterSample @  getter
System.Diagnostics.InstanceData = {}
---@type System.Diagnostics.InstanceData
CS.System.Diagnostics.InstanceData = System.Diagnostics.InstanceData

---@class System.Diagnostics.InstanceDataCollection : System.Collections.DictionaryBase
---@field public CounterName System.String @  getter
---@field public Item System.Diagnostics.InstanceData @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Values System.Collections.ICollection @  getter
System.Diagnostics.InstanceDataCollection = {}
---@type System.Diagnostics.InstanceDataCollection
CS.System.Diagnostics.InstanceDataCollection = System.Diagnostics.InstanceDataCollection

---@param instanceName System.String
---@return System.Boolean
function System.Diagnostics.InstanceDataCollection:Contains(instanceName)end
---@param instances System.Diagnostics.InstanceData[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.InstanceDataCollection:CopyTo(instances, index)end
---@class System.Diagnostics.InstanceDataCollectionCollection : System.Collections.DictionaryBase
---@field public Item System.Diagnostics.InstanceDataCollection @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Values System.Collections.ICollection @  getter
System.Diagnostics.InstanceDataCollectionCollection = {}
---@type System.Diagnostics.InstanceDataCollectionCollection
CS.System.Diagnostics.InstanceDataCollectionCollection = System.Diagnostics.InstanceDataCollectionCollection

---@param counterName System.String
---@return System.Boolean
function System.Diagnostics.InstanceDataCollectionCollection:Contains(counterName)end
---@param counters System.Diagnostics.InstanceDataCollection[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.InstanceDataCollectionCollection:CopyTo(counters, index)end
---@class System.Diagnostics.MonitoringDescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field public Description System.String @  getter
System.Diagnostics.MonitoringDescriptionAttribute = {}
---@type System.Diagnostics.MonitoringDescriptionAttribute
CS.System.Diagnostics.MonitoringDescriptionAttribute = System.Diagnostics.MonitoringDescriptionAttribute

---@class System.Diagnostics.OverflowAction : System.Enum
System.Diagnostics.OverflowAction = {}
---@type System.Diagnostics.OverflowAction
CS.System.Diagnostics.OverflowAction = System.Diagnostics.OverflowAction

---@return System.Int32 value:0
System.Diagnostics.OverflowAction.OverwriteAsNeeded = 0
---@return System.Int32 value:1
System.Diagnostics.OverflowAction.OverwriteOlder = 1

---@class System.Diagnostics.PerformanceCounter : System.ComponentModel.Component
---@field public CategoryName System.String @ setter getter
---@field public CounterHelp System.String @  getter
---@field public CounterName System.String @ setter getter
---@field public CounterType System.Diagnostics.PerformanceCounterType @  getter
---@field public InstanceLifetime System.Diagnostics.PerformanceCounterInstanceLifetime @ setter getter
---@field public InstanceName System.String @ setter getter
---@field public MachineName System.String @ setter getter
---@field public RawValue System.Int64 @ setter getter
---@field public ReadOnly System.Boolean @ setter getter
---@field public DefaultFileMappingSize System.Int32
System.Diagnostics.PerformanceCounter = {}
---@type System.Diagnostics.PerformanceCounter
CS.System.Diagnostics.PerformanceCounter = System.Diagnostics.PerformanceCounter

---@return System.Void
function System.Diagnostics.PerformanceCounter:BeginInit()end
---@return System.Void
function System.Diagnostics.PerformanceCounter:EndInit()end
---@return System.Void
function System.Diagnostics.PerformanceCounter:Close()end
---@return System.Void
function System.Diagnostics.PerformanceCounter.CloseSharedResources()end
---@return System.Int64
function System.Diagnostics.PerformanceCounter:Decrement()end
---@return System.Int64
function System.Diagnostics.PerformanceCounter:Increment()end
---@param value System.Int64
---@return System.Int64
function System.Diagnostics.PerformanceCounter:IncrementBy(value)end
---@return System.Diagnostics.CounterSample
function System.Diagnostics.PerformanceCounter:NextSample()end
---@return System.Single
function System.Diagnostics.PerformanceCounter:NextValue()end
---@return System.Void
function System.Diagnostics.PerformanceCounter:RemoveInstance()end
---@class System.Diagnostics.PerformanceCounterCategory : System.Object
---@field public CategoryHelp System.String @  getter
---@field public CategoryName System.String @ setter getter
---@field public MachineName System.String @ setter getter
---@field public CategoryType System.Diagnostics.PerformanceCounterCategoryType @  getter
System.Diagnostics.PerformanceCounterCategory = {}
---@type System.Diagnostics.PerformanceCounterCategory
CS.System.Diagnostics.PerformanceCounterCategory = System.Diagnostics.PerformanceCounterCategory

---@param counterName System.String
---@return System.Boolean
function System.Diagnostics.PerformanceCounterCategory:CounterExists(counterName)end
---@overload fun(counterName:System.String, categoryName:System.String, machineName:System.String):System.Boolean
---@param counterName System.String
---@param categoryName System.String
---@return System.Boolean
function System.Diagnostics.PerformanceCounterCategory.CounterExists(counterName, categoryName)end
---@overload fun(categoryName:System.String, categoryHelp:System.String, counterName:System.String, counterHelp:System.String):System.Diagnostics.PerformanceCounterCategory
---@overload fun(categoryName:System.String, categoryHelp:System.String, categoryType:System.Diagnostics.PerformanceCounterCategoryType, counterData:System.Diagnostics.CounterCreationDataCollection):System.Diagnostics.PerformanceCounterCategory
---@overload fun(categoryName:System.String, categoryHelp:System.String, categoryType:System.Diagnostics.PerformanceCounterCategoryType, counterName:System.String, counterHelp:System.String):System.Diagnostics.PerformanceCounterCategory
---@param categoryName System.String
---@param categoryHelp System.String
---@param counterData System.Diagnostics.CounterCreationDataCollection
---@return System.Diagnostics.PerformanceCounterCategory
function System.Diagnostics.PerformanceCounterCategory.Create(categoryName, categoryHelp, counterData)end
---@param categoryName System.String
---@return System.Void
function System.Diagnostics.PerformanceCounterCategory.Delete(categoryName)end
---@overload fun(categoryName:System.String, machineName:System.String):System.Boolean
---@param categoryName System.String
---@return System.Boolean
function System.Diagnostics.PerformanceCounterCategory.Exists(categoryName)end
---@overload fun(machineName:System.String):System.Diagnostics.PerformanceCounterCategory[]
---@return System.Diagnostics.PerformanceCounterCategory[]
function System.Diagnostics.PerformanceCounterCategory.GetCategories()end
---@overload fun(instanceName:System.String):System.Diagnostics.PerformanceCounter[]
---@return System.Diagnostics.PerformanceCounter[]
function System.Diagnostics.PerformanceCounterCategory:GetCounters()end
---@return System.String[]
function System.Diagnostics.PerformanceCounterCategory:GetInstanceNames()end
---@param instanceName System.String
---@return System.Boolean
function System.Diagnostics.PerformanceCounterCategory:InstanceExists(instanceName)end
---@overload fun(instanceName:System.String, categoryName:System.String, machineName:System.String):System.Boolean
---@param instanceName System.String
---@param categoryName System.String
---@return System.Boolean
function System.Diagnostics.PerformanceCounterCategory.InstanceExists(instanceName, categoryName)end
---@return System.Diagnostics.InstanceDataCollectionCollection
function System.Diagnostics.PerformanceCounterCategory:ReadCategory()end
---@class System.Diagnostics.PerformanceCounterCategoryType : System.Enum
System.Diagnostics.PerformanceCounterCategoryType = {}
---@type System.Diagnostics.PerformanceCounterCategoryType
CS.System.Diagnostics.PerformanceCounterCategoryType = System.Diagnostics.PerformanceCounterCategoryType

---@return System.Int32 value:0
System.Diagnostics.PerformanceCounterCategoryType.SingleInstance = 0
---@return System.Int32 value:1
System.Diagnostics.PerformanceCounterCategoryType.MultiInstance = 1

---@class System.Diagnostics.PerformanceCounterInstanceLifetime : System.Enum
System.Diagnostics.PerformanceCounterInstanceLifetime = {}
---@type System.Diagnostics.PerformanceCounterInstanceLifetime
CS.System.Diagnostics.PerformanceCounterInstanceLifetime = System.Diagnostics.PerformanceCounterInstanceLifetime

---@return System.Int32 value:0
System.Diagnostics.PerformanceCounterInstanceLifetime.Global = 0
---@return System.Int32 value:1
System.Diagnostics.PerformanceCounterInstanceLifetime.Process = 1

---@class System.Diagnostics.PerformanceCounterManager : System.Object
System.Diagnostics.PerformanceCounterManager = {}
---@type System.Diagnostics.PerformanceCounterManager
CS.System.Diagnostics.PerformanceCounterManager = System.Diagnostics.PerformanceCounterManager

---@class System.Diagnostics.PerformanceCounterPermission : System.Security.Permissions.ResourcePermissionBase
---@field public PermissionEntries System.Diagnostics.PerformanceCounterPermissionEntryCollection @  getter
System.Diagnostics.PerformanceCounterPermission = {}
---@type System.Diagnostics.PerformanceCounterPermission
CS.System.Diagnostics.PerformanceCounterPermission = System.Diagnostics.PerformanceCounterPermission

---@class System.Diagnostics.PerformanceCounterPermissionAccess : System.Enum
System.Diagnostics.PerformanceCounterPermissionAccess = {}
---@type System.Diagnostics.PerformanceCounterPermissionAccess
CS.System.Diagnostics.PerformanceCounterPermissionAccess = System.Diagnostics.PerformanceCounterPermissionAccess

---@return System.Int32 value:0
System.Diagnostics.PerformanceCounterPermissionAccess.None = 0
---@return System.Int32 value:1
System.Diagnostics.PerformanceCounterPermissionAccess.Read = 1
---@return System.Int32 value:2
System.Diagnostics.PerformanceCounterPermissionAccess.Write = 2
---@return System.Int32 value:3
System.Diagnostics.PerformanceCounterPermissionAccess.Instrument = 3

---@class System.Diagnostics.PerformanceCounterPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public CategoryName System.String @ setter getter
---@field public MachineName System.String @ setter getter
---@field public PermissionAccess System.Diagnostics.PerformanceCounterPermissionAccess @ setter getter
System.Diagnostics.PerformanceCounterPermissionAttribute = {}
---@type System.Diagnostics.PerformanceCounterPermissionAttribute
CS.System.Diagnostics.PerformanceCounterPermissionAttribute = System.Diagnostics.PerformanceCounterPermissionAttribute

---@return System.Security.IPermission
function System.Diagnostics.PerformanceCounterPermissionAttribute:CreatePermission()end
---@class System.Diagnostics.PerformanceCounterPermissionEntry : System.Object
---@field public CategoryName System.String @  getter
---@field public MachineName System.String @  getter
---@field public PermissionAccess System.Diagnostics.PerformanceCounterPermissionAccess @  getter
System.Diagnostics.PerformanceCounterPermissionEntry = {}
---@type System.Diagnostics.PerformanceCounterPermissionEntry
CS.System.Diagnostics.PerformanceCounterPermissionEntry = System.Diagnostics.PerformanceCounterPermissionEntry

---@class System.Diagnostics.PerformanceCounterPermissionEntryCollection : System.Collections.CollectionBase
---@field public Item System.Diagnostics.PerformanceCounterPermissionEntry @ setter getter
System.Diagnostics.PerformanceCounterPermissionEntryCollection = {}
---@type System.Diagnostics.PerformanceCounterPermissionEntryCollection
CS.System.Diagnostics.PerformanceCounterPermissionEntryCollection = System.Diagnostics.PerformanceCounterPermissionEntryCollection

---@param value System.Diagnostics.PerformanceCounterPermissionEntry
---@return System.Int32
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:Add(value)end
---@overload fun(value:System.Diagnostics.PerformanceCounterPermissionEntryCollection):System.Void
---@param value System.Diagnostics.PerformanceCounterPermissionEntry[]
---@return System.Void
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:AddRange(value)end
---@param value System.Diagnostics.PerformanceCounterPermissionEntry
---@return System.Boolean
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:Contains(value)end
---@param array System.Diagnostics.PerformanceCounterPermissionEntry[]
---@param index System.Int32
---@return System.Void
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:CopyTo(array, index)end
---@param value System.Diagnostics.PerformanceCounterPermissionEntry
---@return System.Int32
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.Diagnostics.PerformanceCounterPermissionEntry
---@return System.Void
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:Insert(index, value)end
---@param value System.Diagnostics.PerformanceCounterPermissionEntry
---@return System.Void
function System.Diagnostics.PerformanceCounterPermissionEntryCollection:Remove(value)end
---@class System.Diagnostics.PerformanceCounterType : System.Enum
System.Diagnostics.PerformanceCounterType = {}
---@type System.Diagnostics.PerformanceCounterType
CS.System.Diagnostics.PerformanceCounterType = System.Diagnostics.PerformanceCounterType

---@return System.Int32 value:0
System.Diagnostics.PerformanceCounterType.NumberOfItemsHEX32 = 0

---@class System.Diagnostics.ProcessModule : System.ComponentModel.Component
---@field public BaseAddress System.IntPtr @  getter
---@field public EntryPointAddress System.IntPtr @  getter
---@field public FileName System.String @  getter
---@field public FileVersionInfo System.Diagnostics.FileVersionInfo @  getter
---@field public ModuleMemorySize System.Int32 @  getter
---@field public ModuleName System.String @  getter
System.Diagnostics.ProcessModule = {}
---@type System.Diagnostics.ProcessModule
CS.System.Diagnostics.ProcessModule = System.Diagnostics.ProcessModule

---@return System.String
function System.Diagnostics.ProcessModule:ToString()end
---@class System.Diagnostics.ProcessPriorityClass : System.Enum
System.Diagnostics.ProcessPriorityClass = {}
---@type System.Diagnostics.ProcessPriorityClass
CS.System.Diagnostics.ProcessPriorityClass = System.Diagnostics.ProcessPriorityClass


---@class System.Diagnostics.ProcessThread : System.ComponentModel.Component
---@field public BasePriority System.Int32 @  getter
---@field public CurrentPriority System.Int32 @  getter
---@field public Id System.Int32 @  getter
---@field public IdealProcessor System.Int32 @ setter 
---@field public PriorityBoostEnabled System.Boolean @ setter getter
---@field public PriorityLevel System.Diagnostics.ThreadPriorityLevel @ setter getter
---@field public PrivilegedProcessorTime System.TimeSpan @  getter
---@field public ProcessorAffinity System.IntPtr @ setter 
---@field public StartAddress System.IntPtr @  getter
---@field public StartTime System.DateTime @  getter
---@field public ThreadState System.Diagnostics.ThreadState @  getter
---@field public TotalProcessorTime System.TimeSpan @  getter
---@field public UserProcessorTime System.TimeSpan @  getter
---@field public WaitReason System.Diagnostics.ThreadWaitReason @  getter
System.Diagnostics.ProcessThread = {}
---@type System.Diagnostics.ProcessThread
CS.System.Diagnostics.ProcessThread = System.Diagnostics.ProcessThread

---@return System.Void
function System.Diagnostics.ProcessThread:ResetIdealProcessor()end
---@class System.Diagnostics.ProcessWindowStyle : System.Enum
System.Diagnostics.ProcessWindowStyle = {}
---@type System.Diagnostics.ProcessWindowStyle
CS.System.Diagnostics.ProcessWindowStyle = System.Diagnostics.ProcessWindowStyle

---@return System.Int32 value:0
System.Diagnostics.ProcessWindowStyle.Normal = 0
---@return System.Int32 value:1
System.Diagnostics.ProcessWindowStyle.Hidden = 1
---@return System.Int32 value:2
System.Diagnostics.ProcessWindowStyle.Minimized = 2
---@return System.Int32 value:3
System.Diagnostics.ProcessWindowStyle.Maximized = 3

---@class System.Diagnostics.Stopwatch : System.Object
---@field public Elapsed System.TimeSpan @  getter
---@field public ElapsedMilliseconds System.Int64 @  getter
---@field public ElapsedTicks System.Int64 @  getter
---@field public IsRunning System.Boolean @  getter
---@field public Frequency System.Int64
---@field public IsHighResolution System.Boolean
System.Diagnostics.Stopwatch = {}
---@type System.Diagnostics.Stopwatch
CS.System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch

---@return System.Int64
function System.Diagnostics.Stopwatch.GetTimestamp()end
---@return System.Diagnostics.Stopwatch
function System.Diagnostics.Stopwatch.StartNew()end
---@return System.Void
function System.Diagnostics.Stopwatch:Reset()end
---@return System.Void
function System.Diagnostics.Stopwatch:Start()end
---@return System.Void
function System.Diagnostics.Stopwatch:Stop()end
---@return System.Void
function System.Diagnostics.Stopwatch:Restart()end
---@class System.Diagnostics.ThreadPriorityLevel : System.Enum
System.Diagnostics.ThreadPriorityLevel = {}
---@type System.Diagnostics.ThreadPriorityLevel
CS.System.Diagnostics.ThreadPriorityLevel = System.Diagnostics.ThreadPriorityLevel

---@return System.Int32 value:0
System.Diagnostics.ThreadPriorityLevel.Normal = 0
---@return System.Int32 value:1
System.Diagnostics.ThreadPriorityLevel.AboveNormal = 1
---@return System.Int32 value:2
System.Diagnostics.ThreadPriorityLevel.Highest = 2

---@class System.Diagnostics.ThreadState : System.Enum
System.Diagnostics.ThreadState = {}
---@type System.Diagnostics.ThreadState
CS.System.Diagnostics.ThreadState = System.Diagnostics.ThreadState

---@return System.Int32 value:0
System.Diagnostics.ThreadState.Initialized = 0
---@return System.Int32 value:1
System.Diagnostics.ThreadState.Ready = 1
---@return System.Int32 value:2
System.Diagnostics.ThreadState.Running = 2
---@return System.Int32 value:3
System.Diagnostics.ThreadState.Standby = 3
---@return System.Int32 value:4
System.Diagnostics.ThreadState.Terminated = 4
---@return System.Int32 value:5
System.Diagnostics.ThreadState.Wait = 5
---@return System.Int32 value:6
System.Diagnostics.ThreadState.Transition = 6
---@return System.Int32 value:7
System.Diagnostics.ThreadState.Unknown = 7

---@class System.Diagnostics.ThreadWaitReason : System.Enum
System.Diagnostics.ThreadWaitReason = {}
---@type System.Diagnostics.ThreadWaitReason
CS.System.Diagnostics.ThreadWaitReason = System.Diagnostics.ThreadWaitReason

---@return System.Int32 value:0
System.Diagnostics.ThreadWaitReason.Executive = 0
---@return System.Int32 value:1
System.Diagnostics.ThreadWaitReason.FreePage = 1
---@return System.Int32 value:2
System.Diagnostics.ThreadWaitReason.PageIn = 2
---@return System.Int32 value:3
System.Diagnostics.ThreadWaitReason.SystemAllocation = 3
---@return System.Int32 value:4
System.Diagnostics.ThreadWaitReason.ExecutionDelay = 4
---@return System.Int32 value:5
System.Diagnostics.ThreadWaitReason.Suspended = 5
---@return System.Int32 value:6
System.Diagnostics.ThreadWaitReason.UserRequest = 6
---@return System.Int32 value:7
System.Diagnostics.ThreadWaitReason.EventPairHigh = 7
---@return System.Int32 value:8
System.Diagnostics.ThreadWaitReason.EventPairLow = 8
---@return System.Int32 value:9
System.Diagnostics.ThreadWaitReason.LpcReceive = 9
---@return System.Int32 value:10
System.Diagnostics.ThreadWaitReason.LpcReply = 10
---@return System.Int32 value:11
System.Diagnostics.ThreadWaitReason.VirtualMemory = 11
---@return System.Int32 value:12
System.Diagnostics.ThreadWaitReason.PageOut = 12
---@return System.Int32 value:13
System.Diagnostics.ThreadWaitReason.Unknown = 13

---@class System.Diagnostics.StackFrameExtensions : System.Object
System.Diagnostics.StackFrameExtensions = {}
---@type System.Diagnostics.StackFrameExtensions
CS.System.Diagnostics.StackFrameExtensions = System.Diagnostics.StackFrameExtensions

