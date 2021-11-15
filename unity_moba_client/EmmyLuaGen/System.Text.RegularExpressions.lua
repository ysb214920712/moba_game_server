---@class System.Text.RegularExpressions.Regex : System.Object
---@field public CacheSize System.Int32 @static setter getter
---@field public Options System.Text.RegularExpressions.RegexOptions @  getter
---@field public MatchTimeout System.TimeSpan @  getter
---@field public RightToLeft System.Boolean @  getter
---@field public InfiniteMatchTimeout System.TimeSpan
System.Text.RegularExpressions.Regex = {}
---@type System.Text.RegularExpressions.Regex
CS.System.Text.RegularExpressions.Regex = System.Text.RegularExpressions.Regex

---@param str System.String
---@return System.String
function System.Text.RegularExpressions.Regex.Escape(str)end
---@param str System.String
---@return System.String
function System.Text.RegularExpressions.Regex.Unescape(str)end
---@return System.String
function System.Text.RegularExpressions.Regex:ToString()end
---@return System.String[]
function System.Text.RegularExpressions.Regex:GetGroupNames()end
---@return System.Int32[]
function System.Text.RegularExpressions.Regex:GetGroupNumbers()end
---@param i System.Int32
---@return System.String
function System.Text.RegularExpressions.Regex:GroupNameFromNumber(i)end
---@param name System.String
---@return System.Int32
function System.Text.RegularExpressions.Regex:GroupNumberFromName(name)end
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions):System.Boolean
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.Boolean
---@param input System.String
---@param pattern System.String
---@return System.Boolean
function System.Text.RegularExpressions.Regex.IsMatch(input, pattern)end
---@overload fun(input:System.String, startat:System.Int32):System.Boolean
---@param input System.String
---@return System.Boolean
function System.Text.RegularExpressions.Regex:IsMatch(input)end
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions):System.Text.RegularExpressions.Match
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.Text.RegularExpressions.Match
---@param input System.String
---@param pattern System.String
---@return System.Text.RegularExpressions.Match
function System.Text.RegularExpressions.Regex.Match(input, pattern)end
---@overload fun(input:System.String, startat:System.Int32):System.Text.RegularExpressions.Match
---@overload fun(input:System.String, beginning:System.Int32, length:System.Int32):System.Text.RegularExpressions.Match
---@param input System.String
---@return System.Text.RegularExpressions.Match
function System.Text.RegularExpressions.Regex:Match(input)end
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions):System.Text.RegularExpressions.MatchCollection
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.Text.RegularExpressions.MatchCollection
---@param input System.String
---@param pattern System.String
---@return System.Text.RegularExpressions.MatchCollection
function System.Text.RegularExpressions.Regex.Matches(input, pattern)end
---@overload fun(input:System.String, startat:System.Int32):System.Text.RegularExpressions.MatchCollection
---@param input System.String
---@return System.Text.RegularExpressions.MatchCollection
function System.Text.RegularExpressions.Regex:Matches(input)end
---@overload fun(input:System.String, pattern:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator):System.String
---@overload fun(input:System.String, pattern:System.String, replacement:System.String, options:System.Text.RegularExpressions.RegexOptions):System.String
---@overload fun(input:System.String, pattern:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator, options:System.Text.RegularExpressions.RegexOptions):System.String
---@overload fun(input:System.String, pattern:System.String, replacement:System.String, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.String
---@overload fun(input:System.String, pattern:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.String
---@param input System.String
---@param pattern System.String
---@param replacement System.String
---@return System.String
function System.Text.RegularExpressions.Regex.Replace(input, pattern, replacement)end
---@overload fun(input:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator):System.String
---@overload fun(input:System.String, replacement:System.String, count:System.Int32):System.String
---@overload fun(input:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator, count:System.Int32):System.String
---@overload fun(input:System.String, replacement:System.String, count:System.Int32, startat:System.Int32):System.String
---@overload fun(input:System.String, evaluator:System.Text.RegularExpressions.MatchEvaluator, count:System.Int32, startat:System.Int32):System.String
---@param input System.String
---@param replacement System.String
---@return System.String
function System.Text.RegularExpressions.Regex:Replace(input, replacement)end
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions):System.String[]
---@overload fun(input:System.String, pattern:System.String, options:System.Text.RegularExpressions.RegexOptions, matchTimeout:System.TimeSpan):System.String[]
---@param input System.String
---@param pattern System.String
---@return System.String[]
function System.Text.RegularExpressions.Regex.Split(input, pattern)end
---@overload fun(input:System.String, count:System.Int32):System.String[]
---@overload fun(input:System.String, count:System.Int32, startat:System.Int32):System.String[]
---@param input System.String
---@return System.String[]
function System.Text.RegularExpressions.Regex:Split(input)end
---@overload fun(regexinfos:System.Text.RegularExpressions.RegexCompilationInfo[], assemblyname:System.Reflection.AssemblyName, attributes:System.Reflection.Emit.CustomAttributeBuilder[]):System.Void
---@overload fun(regexinfos:System.Text.RegularExpressions.RegexCompilationInfo[], assemblyname:System.Reflection.AssemblyName, attributes:System.Reflection.Emit.CustomAttributeBuilder[], resourceFile:System.String):System.Void
---@param regexinfos System.Text.RegularExpressions.RegexCompilationInfo[]
---@param assemblyname System.Reflection.AssemblyName
---@return System.Void
function System.Text.RegularExpressions.Regex.CompileToAssembly(regexinfos, assemblyname)end
---@class System.Text.RegularExpressions.Capture : System.Object
---@field public Index System.Int32 @  getter
---@field public Length System.Int32 @  getter
---@field public Value System.String @  getter
System.Text.RegularExpressions.Capture = {}
---@type System.Text.RegularExpressions.Capture
CS.System.Text.RegularExpressions.Capture = System.Text.RegularExpressions.Capture

---@return System.String
function System.Text.RegularExpressions.Capture:ToString()end
---@class System.Text.RegularExpressions.CaptureCollection : System.Object
---@field public SyncRoot System.Object @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Count System.Int32 @  getter
---@field public Item System.Text.RegularExpressions.Capture @  getter
System.Text.RegularExpressions.CaptureCollection = {}
---@type System.Text.RegularExpressions.CaptureCollection
CS.System.Text.RegularExpressions.CaptureCollection = System.Text.RegularExpressions.CaptureCollection

---@param array System.Array
---@param arrayIndex System.Int32
---@return System.Void
function System.Text.RegularExpressions.CaptureCollection:CopyTo(array, arrayIndex)end
---@return System.Collections.IEnumerator
function System.Text.RegularExpressions.CaptureCollection:GetEnumerator()end
---@class System.Text.RegularExpressions.RegexCompilationInfo : System.Object
---@field public Pattern System.String @ setter getter
---@field public Options System.Text.RegularExpressions.RegexOptions @ setter getter
---@field public Name System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public IsPublic System.Boolean @ setter getter
---@field public MatchTimeout System.TimeSpan @ setter getter
System.Text.RegularExpressions.RegexCompilationInfo = {}
---@type System.Text.RegularExpressions.RegexCompilationInfo
CS.System.Text.RegularExpressions.RegexCompilationInfo = System.Text.RegularExpressions.RegexCompilationInfo

---@class System.Text.RegularExpressions.Group : System.Text.RegularExpressions.Capture
---@field public Success System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Captures System.Text.RegularExpressions.CaptureCollection @  getter
System.Text.RegularExpressions.Group = {}
---@type System.Text.RegularExpressions.Group
CS.System.Text.RegularExpressions.Group = System.Text.RegularExpressions.Group

---@param inner System.Text.RegularExpressions.Group
---@return System.Text.RegularExpressions.Group
function System.Text.RegularExpressions.Group.Synchronized(inner)end
---@class System.Text.RegularExpressions.GroupCollection : System.Object
---@field public SyncRoot System.Object @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Count System.Int32 @  getter
---@field public Item System.Text.RegularExpressions.Group @  getter
---@field public Item System.Text.RegularExpressions.Group @  getter
System.Text.RegularExpressions.GroupCollection = {}
---@type System.Text.RegularExpressions.GroupCollection
CS.System.Text.RegularExpressions.GroupCollection = System.Text.RegularExpressions.GroupCollection

---@param array System.Array
---@param arrayIndex System.Int32
---@return System.Void
function System.Text.RegularExpressions.GroupCollection:CopyTo(array, arrayIndex)end
---@return System.Collections.IEnumerator
function System.Text.RegularExpressions.GroupCollection:GetEnumerator()end
---@class System.Text.RegularExpressions.Match : System.Text.RegularExpressions.Group
---@field public Empty System.Text.RegularExpressions.Match @static  getter
---@field public Groups System.Text.RegularExpressions.GroupCollection @  getter
System.Text.RegularExpressions.Match = {}
---@type System.Text.RegularExpressions.Match
CS.System.Text.RegularExpressions.Match = System.Text.RegularExpressions.Match

---@return System.Text.RegularExpressions.Match
function System.Text.RegularExpressions.Match:NextMatch()end
---@param replacement System.String
---@return System.String
function System.Text.RegularExpressions.Match:Result(replacement)end
---@param inner System.Text.RegularExpressions.Match
---@return System.Text.RegularExpressions.Match
function System.Text.RegularExpressions.Match.Synchronized(inner)end
---@class System.Text.RegularExpressions.MatchCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public SyncRoot System.Object @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.Text.RegularExpressions.Match @  getter
System.Text.RegularExpressions.MatchCollection = {}
---@type System.Text.RegularExpressions.MatchCollection
CS.System.Text.RegularExpressions.MatchCollection = System.Text.RegularExpressions.MatchCollection

---@param array System.Array
---@param arrayIndex System.Int32
---@return System.Void
function System.Text.RegularExpressions.MatchCollection:CopyTo(array, arrayIndex)end
---@return System.Collections.IEnumerator
function System.Text.RegularExpressions.MatchCollection:GetEnumerator()end
---@class System.Text.RegularExpressions.RegexMatchTimeoutException : System.TimeoutException
---@field public Pattern System.String @  getter
---@field public Input System.String @  getter
---@field public MatchTimeout System.TimeSpan @  getter
System.Text.RegularExpressions.RegexMatchTimeoutException = {}
---@type System.Text.RegularExpressions.RegexMatchTimeoutException
CS.System.Text.RegularExpressions.RegexMatchTimeoutException = System.Text.RegularExpressions.RegexMatchTimeoutException

---@class System.Text.RegularExpressions.RegexOptions : System.Enum
System.Text.RegularExpressions.RegexOptions = {}
---@type System.Text.RegularExpressions.RegexOptions
CS.System.Text.RegularExpressions.RegexOptions = System.Text.RegularExpressions.RegexOptions

---@return System.Int32 value:0
System.Text.RegularExpressions.RegexOptions.None = 0
---@return System.Int32 value:1
System.Text.RegularExpressions.RegexOptions.IgnoreCase = 1
---@return System.Int32 value:2
System.Text.RegularExpressions.RegexOptions.Multiline = 2
---@return System.Int32 value:4
System.Text.RegularExpressions.RegexOptions.ExplicitCapture = 4
---@return System.Int32 value:8
System.Text.RegularExpressions.RegexOptions.Compiled = 8

---@class System.Text.RegularExpressions.RegexRunner : System.Object
System.Text.RegularExpressions.RegexRunner = {}
---@type System.Text.RegularExpressions.RegexRunner
CS.System.Text.RegularExpressions.RegexRunner = System.Text.RegularExpressions.RegexRunner

---@class System.Text.RegularExpressions.RegexRunnerFactory : System.Object
System.Text.RegularExpressions.RegexRunnerFactory = {}
---@type System.Text.RegularExpressions.RegexRunnerFactory
CS.System.Text.RegularExpressions.RegexRunnerFactory = System.Text.RegularExpressions.RegexRunnerFactory

