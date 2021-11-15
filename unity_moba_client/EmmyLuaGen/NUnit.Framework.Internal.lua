---@class NUnit.Framework.Internal.TestFilter : System.Object
---@field public IsEmpty System.Boolean @  getter
---@field public TopLevel System.Boolean @ setter getter
---@field public Empty NUnit.Framework.Internal.TestFilter
NUnit.Framework.Internal.TestFilter = {}
---@type NUnit.Framework.Internal.TestFilter
CS.NUnit.Framework.Internal.TestFilter = NUnit.Framework.Internal.TestFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.TestFilter:Pass(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.TestFilter:IsExplicitMatch(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.TestFilter:Match(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.TestFilter:MatchParent(test)end
---@overload fun(node:NUnit.Framework.Interfaces.TNode):NUnit.Framework.Internal.TestFilter
---@param xmlText System.String
---@return NUnit.Framework.Internal.TestFilter
function NUnit.Framework.Internal.TestFilter.FromXml(xmlText)end
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestFilter:ToXml(recursive)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestFilter:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.Randomizer : System.Random
---@field public InitialSeed System.Int32 @static setter getter
---@field public DefaultStringChars System.String
NUnit.Framework.Internal.Randomizer = {}
---@type NUnit.Framework.Internal.Randomizer
CS.NUnit.Framework.Internal.Randomizer = NUnit.Framework.Internal.Randomizer

---@overload fun(parameter:System.Reflection.ParameterInfo):NUnit.Framework.Internal.Randomizer
---@param member System.Reflection.MemberInfo
---@return NUnit.Framework.Internal.Randomizer
function NUnit.Framework.Internal.Randomizer.GetRandomizer(member)end
---@return NUnit.Framework.Internal.Randomizer
function NUnit.Framework.Internal.Randomizer.CreateRandomizer()end
---@overload fun(max:System.UInt32):System.UInt32
---@overload fun(min:System.UInt32, max:System.UInt32):System.UInt32
---@return System.UInt32
function NUnit.Framework.Internal.Randomizer:NextUInt()end
---@overload fun(max:System.Int16):System.Int16
---@overload fun(min:System.Int16, max:System.Int16):System.Int16
---@return System.Int16
function NUnit.Framework.Internal.Randomizer:NextShort()end
---@overload fun(max:System.UInt16):System.UInt16
---@overload fun(min:System.UInt16, max:System.UInt16):System.UInt16
---@return System.UInt16
function NUnit.Framework.Internal.Randomizer:NextUShort()end
---@overload fun(max:System.Int64):System.Int64
---@overload fun(min:System.Int64, max:System.Int64):System.Int64
---@return System.Int64
function NUnit.Framework.Internal.Randomizer:NextLong()end
---@overload fun(max:System.UInt64):System.UInt64
---@overload fun(min:System.UInt64, max:System.UInt64):System.UInt64
---@return System.UInt64
function NUnit.Framework.Internal.Randomizer:NextULong()end
---@overload fun(max:System.Byte):System.Byte
---@overload fun(min:System.Byte, max:System.Byte):System.Byte
---@return System.Byte
function NUnit.Framework.Internal.Randomizer:NextByte()end
---@overload fun(max:System.SByte):System.SByte
---@overload fun(min:System.SByte, max:System.SByte):System.SByte
---@return System.SByte
function NUnit.Framework.Internal.Randomizer:NextSByte()end
---@overload fun(probability:System.Double):System.Boolean
---@return System.Boolean
function NUnit.Framework.Internal.Randomizer:NextBool()end
---@overload fun(min:System.Double, max:System.Double):System.Double
---@param max System.Double
---@return System.Double
function NUnit.Framework.Internal.Randomizer:NextDouble(max)end
---@overload fun(max:System.Single):System.Single
---@overload fun(min:System.Single, max:System.Single):System.Single
---@return System.Single
function NUnit.Framework.Internal.Randomizer:NextFloat()end
---@overload fun(type:System.Type):System.Object
---@return any
function NUnit.Framework.Internal.Randomizer:NextEnum()end
---@overload fun(outputLength:System.Int32):System.String
---@overload fun(outputLength:System.Int32, allowedChars:System.String):System.String
---@return System.String
function NUnit.Framework.Internal.Randomizer:GetString()end
---@overload fun(max:System.Decimal):System.Decimal
---@overload fun(min:System.Decimal, max:System.Decimal):System.Decimal
---@return System.Decimal
function NUnit.Framework.Internal.Randomizer:NextDecimal()end
---@class NUnit.Framework.Internal.TestResult : System.Object
---@field public Test NUnit.Framework.Interfaces.ITest @ setter getter
---@field public ResultState NUnit.Framework.Interfaces.ResultState @ setter getter
---@field public Name System.String @  getter
---@field public FullName System.String @  getter
---@field public Duration System.Double @ setter getter
---@field public StartTime System.DateTime @ setter getter
---@field public EndTime System.DateTime @ setter getter
---@field public Message System.String @ setter getter
---@field public StackTrace System.String @ setter getter
---@field public AssertCount System.Int32 @ setter getter
---@field public FailCount System.Int32 @  getter
---@field public PassCount System.Int32 @  getter
---@field public SkipCount System.Int32 @  getter
---@field public InconclusiveCount System.Int32 @  getter
---@field public HasChildren System.Boolean @  getter
---@field public Children System.Collections.Generic.IEnumerable @  getter
---@field public OutWriter System.IO.TextWriter @ setter getter
---@field public Output System.String @  getter
NUnit.Framework.Internal.TestResult = {}
---@type NUnit.Framework.Internal.TestResult
CS.NUnit.Framework.Internal.TestResult = NUnit.Framework.Internal.TestResult

---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestResult:ToXml(recursive)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestResult:AddToXml(parentNode, recursive)end
---@overload fun(resultState:NUnit.Framework.Interfaces.ResultState, message:System.String):System.Void
---@overload fun(resultState:NUnit.Framework.Interfaces.ResultState, message:System.String, stackTrace:System.String):System.Void
---@param resultState NUnit.Framework.Interfaces.ResultState
---@return System.Void
function NUnit.Framework.Internal.TestResult:SetResult(resultState)end
---@overload fun(ex:System.Exception, site:NUnit.Framework.Interfaces.FailureSite):System.Void
---@param ex System.Exception
---@return System.Void
function NUnit.Framework.Internal.TestResult:RecordException(ex)end
---@param ex System.Exception
---@return System.Void
function NUnit.Framework.Internal.TestResult:RecordTearDownException(ex)end
---@class NUnit.Framework.Internal.TestSuiteResult : NUnit.Framework.Internal.TestResult
---@field public FailCount System.Int32 @  getter
---@field public PassCount System.Int32 @  getter
---@field public SkipCount System.Int32 @  getter
---@field public InconclusiveCount System.Int32 @  getter
---@field public HasChildren System.Boolean @  getter
---@field public Children System.Collections.Generic.IEnumerable @  getter
NUnit.Framework.Internal.TestSuiteResult = {}
---@type NUnit.Framework.Internal.TestSuiteResult
CS.NUnit.Framework.Internal.TestSuiteResult = NUnit.Framework.Internal.TestSuiteResult

---@param result NUnit.Framework.Interfaces.ITestResult
---@return System.Void
function NUnit.Framework.Internal.TestSuiteResult:AddResult(result)end
---@class NUnit.Framework.Internal.Test : System.Object
---@field public Id System.String @ setter getter
---@field public Name System.String @ setter getter
---@field public FullName System.String @ setter getter
---@field public ClassName System.String @  getter
---@field public MethodName System.String @  getter
---@field public TypeInfo NUnit.Framework.Interfaces.ITypeInfo @ setter getter
---@field public Method NUnit.Framework.Interfaces.IMethodInfo @ setter getter
---@field public RunState NUnit.Framework.Interfaces.RunState @ setter getter
---@field public XmlElementName System.String @  getter
---@field public TestType System.String @  getter
---@field public TestCaseCount System.Int32 @  getter
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @ setter getter
---@field public IsSuite System.Boolean @  getter
---@field public HasChildren System.Boolean @  getter
---@field public Parent NUnit.Framework.Interfaces.ITest @ setter getter
---@field public Tests System.Collections.Generic.IList @  getter
---@field public Fixture System.Object @ setter getter
---@field public IdPrefix System.String @static setter getter
---@field public Seed System.Int32 @ setter getter
NUnit.Framework.Internal.Test = {}
---@type NUnit.Framework.Internal.Test
CS.NUnit.Framework.Internal.Test = NUnit.Framework.Internal.Test

---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Test:MakeTestResult()end
---@param provider System.Reflection.ICustomAttributeProvider
---@return System.Void
function NUnit.Framework.Internal.Test:ApplyAttributesToTest(provider)end
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Test:ToXml(recursive)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Test:AddToXml(parentNode, recursive)end
---@param obj System.Object
---@return System.Int32
function NUnit.Framework.Internal.Test:CompareTo(obj)end
---@class NUnit.Framework.Internal.TestSuite : NUnit.Framework.Internal.Test
---@field public Tests System.Collections.Generic.IList @  getter
---@field public TestCaseCount System.Int32 @  getter
---@field public Arguments System.Object[] @ setter getter
---@field public HasChildren System.Boolean @  getter
---@field public XmlElementName System.String @  getter
NUnit.Framework.Internal.TestSuite = {}
---@type NUnit.Framework.Internal.TestSuite
CS.NUnit.Framework.Internal.TestSuite = NUnit.Framework.Internal.TestSuite

---@return System.Void
function NUnit.Framework.Internal.TestSuite:Sort()end
---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.Internal.TestSuite:Add(test)end
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.TestSuite:MakeTestResult()end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestSuite:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.PropertyBag : System.Object
---@field public Keys System.Collections.Generic.ICollection @  getter
---@field public Item System.Collections.IList @ setter getter
NUnit.Framework.Internal.PropertyBag = {}
---@type NUnit.Framework.Internal.PropertyBag
CS.NUnit.Framework.Internal.PropertyBag = NUnit.Framework.Internal.PropertyBag

---@param key System.String
---@param value System.Object
---@return System.Void
function NUnit.Framework.Internal.PropertyBag:Add(key, value)end
---@param key System.String
---@param value System.Object
---@return System.Void
function NUnit.Framework.Internal.PropertyBag:Set(key, value)end
---@param key System.String
---@return System.Object
function NUnit.Framework.Internal.PropertyBag:Get(key)end
---@param key System.String
---@return System.Boolean
function NUnit.Framework.Internal.PropertyBag:ContainsKey(key)end
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.PropertyBag:ToXml(recursive)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.PropertyBag:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.NUnitException : System.Exception
NUnit.Framework.Internal.NUnitException = {}
---@type NUnit.Framework.Internal.NUnitException
CS.NUnit.Framework.Internal.NUnitException = NUnit.Framework.Internal.NUnitException

---@class NUnit.Framework.Internal.InternalTrace : System.Object
---@field public Initialized System.Boolean @static setter getter
NUnit.Framework.Internal.InternalTrace = {}
---@type NUnit.Framework.Internal.InternalTrace
CS.NUnit.Framework.Internal.InternalTrace = NUnit.Framework.Internal.InternalTrace

---@overload fun(writer:System.IO.TextWriter, level:NUnit.Framework.Internal.InternalTraceLevel):System.Void
---@param logName System.String
---@param level NUnit.Framework.Internal.InternalTraceLevel
---@return System.Void
function NUnit.Framework.Internal.InternalTrace.Initialize(logName, level)end
---@overload fun(type:System.Type):NUnit.Framework.Internal.Logger
---@param name System.String
---@return NUnit.Framework.Internal.Logger
function NUnit.Framework.Internal.InternalTrace.GetLogger(name)end
---@class NUnit.Framework.Internal.ExceptionHelper : System.Object
NUnit.Framework.Internal.ExceptionHelper = {}
---@type NUnit.Framework.Internal.ExceptionHelper
CS.NUnit.Framework.Internal.ExceptionHelper = NUnit.Framework.Internal.ExceptionHelper

---@param exception System.Exception
---@return System.Void
function NUnit.Framework.Internal.ExceptionHelper.Rethrow(exception)end
---@param exception System.Exception
---@return System.String
function NUnit.Framework.Internal.ExceptionHelper.BuildMessage(exception)end
---@param exception System.Exception
---@return System.String
function NUnit.Framework.Internal.ExceptionHelper.BuildStackTrace(exception)end
---@param exception System.Exception
---@return System.String
function NUnit.Framework.Internal.ExceptionHelper.GetStackTrace(exception)end
---@class NUnit.Framework.Internal.CultureDetector : System.Object
---@field public Reason System.String @  getter
NUnit.Framework.Internal.CultureDetector = {}
---@type NUnit.Framework.Internal.CultureDetector
CS.NUnit.Framework.Internal.CultureDetector = NUnit.Framework.Internal.CultureDetector

---@overload fun(cultureAttribute:NUnit.Framework.CultureAttribute):System.Boolean
---@overload fun(culture:System.String):System.Boolean
---@param cultures System.String[]
---@return System.Boolean
function NUnit.Framework.Internal.CultureDetector:IsCultureSupported(cultures)end
---@class NUnit.Framework.Internal.GenericMethodHelper : System.Object
NUnit.Framework.Internal.GenericMethodHelper = {}
---@type NUnit.Framework.Internal.GenericMethodHelper
CS.NUnit.Framework.Internal.GenericMethodHelper = NUnit.Framework.Internal.GenericMethodHelper

---@param argList System.Object[]
---@return System.Type[]
function NUnit.Framework.Internal.GenericMethodHelper:GetTypeArguments(argList)end
---@class NUnit.Framework.Internal.Logger : System.Object
NUnit.Framework.Internal.Logger = {}
---@type NUnit.Framework.Internal.Logger
CS.NUnit.Framework.Internal.Logger = NUnit.Framework.Internal.Logger

---@overload fun(message:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function NUnit.Framework.Internal.Logger:Error(message)end
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function NUnit.Framework.Internal.Logger:Warning(message)end
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function NUnit.Framework.Internal.Logger:Info(message)end
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@param message System.String
---@return System.Void
function NUnit.Framework.Internal.Logger:Debug(message)end
---@class NUnit.Framework.Internal.Reflect : System.Object
---@field public MethodCallWrapper System.Func @static setter getter
---@field public ConstructorCallWrapper System.Func @static setter getter
NUnit.Framework.Internal.Reflect = {}
---@type NUnit.Framework.Internal.Reflect
CS.NUnit.Framework.Internal.Reflect = NUnit.Framework.Internal.Reflect

---@param fixtureType System.Type
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Reflection.MethodInfo[]
function NUnit.Framework.Internal.Reflect.GetMethodsWithAttribute(fixtureType, attributeType, inherit)end
---@param fixtureType System.Type
---@param attributeType System.Type
---@return System.Boolean
function NUnit.Framework.Internal.Reflect.HasMethodWithAttribute(fixtureType, attributeType)end
---@overload fun(type:System.Type, arguments:System.Object[]):System.Object
---@param type System.Type
---@return System.Object
function NUnit.Framework.Internal.Reflect.Construct(type)end
---@overload fun(method:System.Reflection.MethodInfo, fixture:System.Object, args:System.Object[]):System.Object
---@param method System.Reflection.MethodInfo
---@param fixture System.Object
---@return System.Object
function NUnit.Framework.Internal.Reflect.InvokeMethod(method, fixture)end
---@class NUnit.Framework.Internal.InvalidTestFixtureException : System.Exception
NUnit.Framework.Internal.InvalidTestFixtureException = {}
---@type NUnit.Framework.Internal.InvalidTestFixtureException
CS.NUnit.Framework.Internal.InvalidTestFixtureException = NUnit.Framework.Internal.InvalidTestFixtureException

---@class NUnit.Framework.Internal.AssemblyHelper : System.Object
NUnit.Framework.Internal.AssemblyHelper = {}
---@type NUnit.Framework.Internal.AssemblyHelper
CS.NUnit.Framework.Internal.AssemblyHelper = NUnit.Framework.Internal.AssemblyHelper

---@param assembly System.Reflection.Assembly
---@return System.String
function NUnit.Framework.Internal.AssemblyHelper.GetAssemblyPath(assembly)end
---@param assembly System.Reflection.Assembly
---@return System.String
function NUnit.Framework.Internal.AssemblyHelper.GetDirectoryName(assembly)end
---@param assembly System.Reflection.Assembly
---@return System.Reflection.AssemblyName
function NUnit.Framework.Internal.AssemblyHelper.GetAssemblyName(assembly)end
---@param nameOrPath System.String
---@return System.Reflection.Assembly
function NUnit.Framework.Internal.AssemblyHelper.Load(nameOrPath)end
---@param codeBase System.String
---@return System.String
function NUnit.Framework.Internal.AssemblyHelper.GetAssemblyPathFromCodeBase(codeBase)end
---@class NUnit.Framework.Internal.TestProgressReporter : System.Object
NUnit.Framework.Internal.TestProgressReporter = {}
---@type NUnit.Framework.Internal.TestProgressReporter
CS.NUnit.Framework.Internal.TestProgressReporter = NUnit.Framework.Internal.TestProgressReporter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.TestProgressReporter:TestStarted(test)end
---@param result NUnit.Framework.Interfaces.ITestResult
---@return System.Void
function NUnit.Framework.Internal.TestProgressReporter:TestFinished(result)end
---@param output NUnit.Framework.Interfaces.TestOutput
---@return System.Void
function NUnit.Framework.Internal.TestProgressReporter:TestOutput(output)end
---@class NUnit.Framework.Internal.ActionsHelper : System.Object
NUnit.Framework.Internal.ActionsHelper = {}
---@type NUnit.Framework.Internal.ActionsHelper
CS.NUnit.Framework.Internal.ActionsHelper = NUnit.Framework.Internal.ActionsHelper

---@param actions System.Collections.Generic.IEnumerable
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.ActionsHelper.ExecuteBeforeActions(actions, test)end
---@param actions System.Collections.Generic.IEnumerable
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.ActionsHelper.ExecuteAfterActions(actions, test)end
---@param testAssembly NUnit.Framework.Internal.TestAssembly
---@return NUnit.Framework.ITestAction[]
function NUnit.Framework.Internal.ActionsHelper.GetActionsFromTestAssembly(testAssembly)end
---@param testAssembly NUnit.Framework.Interfaces.IMethodInfo
---@return NUnit.Framework.ITestAction[]
function NUnit.Framework.Internal.ActionsHelper.GetActionsFromTestMethodInfo(testAssembly)end
---@param attributeProvider System.Reflection.ICustomAttributeProvider
---@return NUnit.Framework.ITestAction[]
function NUnit.Framework.Internal.ActionsHelper.GetActionsFromAttributeProvider(attributeProvider)end
---@param type System.Type
---@return NUnit.Framework.ITestAction[]
function NUnit.Framework.Internal.ActionsHelper.GetActionsFromTypesAttributes(type)end
---@class NUnit.Framework.Internal.TestNameGenerator : System.Object
---@field public DefaultTestNamePattern System.String
NUnit.Framework.Internal.TestNameGenerator = {}
---@type NUnit.Framework.Internal.TestNameGenerator
CS.NUnit.Framework.Internal.TestNameGenerator = NUnit.Framework.Internal.TestNameGenerator

---@overload fun(testMethod:NUnit.Framework.Internal.TestMethod, args:System.Object[]):System.String
---@param testMethod NUnit.Framework.Internal.TestMethod
---@return System.String
function NUnit.Framework.Internal.TestNameGenerator:GetDisplayName(testMethod)end
---@class NUnit.Framework.Internal.TestParameters : System.Object
---@field public RunState NUnit.Framework.Interfaces.RunState @ setter getter
---@field public Arguments System.Object[] @ setter getter
---@field public TestName System.String @ setter getter
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @ setter getter
---@field public OriginalArguments System.Object[] @ setter getter
NUnit.Framework.Internal.TestParameters = {}
---@type NUnit.Framework.Internal.TestParameters
CS.NUnit.Framework.Internal.TestParameters = NUnit.Framework.Internal.TestParameters

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.Internal.TestParameters:ApplyToTest(test)end
---@class NUnit.Framework.Internal.TestCaseParameters : NUnit.Framework.Internal.TestParameters
---@field public ExpectedResult System.Object @ setter getter
---@field public HasExpectedResult System.Boolean @ setter getter
NUnit.Framework.Internal.TestCaseParameters = {}
---@type NUnit.Framework.Internal.TestCaseParameters
CS.NUnit.Framework.Internal.TestCaseParameters = NUnit.Framework.Internal.TestCaseParameters

---@class NUnit.Framework.Internal.TestExecutionContext : NUnit.Compatibility.LongLivedMarshalByRefObject
---@field public CurrentContext NUnit.Framework.Internal.ITestExecutionContext @static setter getter
---@field public CurrentTest NUnit.Framework.Internal.Test @ setter getter
---@field public StartTime System.DateTime @ setter getter
---@field public StartTicks System.Int64 @ setter getter
---@field public CurrentResult NUnit.Framework.Internal.TestResult @ setter getter
---@field public OutWriter System.IO.TextWriter @ setter getter
---@field public TestObject System.Object @ setter getter
---@field public WorkDirectory System.String @ setter getter
---@field public StopOnError System.Boolean @ setter getter
---@field public ExecutionStatus NUnit.Framework.Internal.TestExecutionStatus @ setter getter
---@field public Dispatcher NUnit.Framework.Internal.Execution.IWorkItemDispatcher @ setter getter
---@field public ParallelScope NUnit.Framework.ParallelScope @ setter getter
---@field public WorkerId System.String @ setter getter
---@field public RandomGenerator NUnit.Framework.Internal.Randomizer @  getter
---@field public TestCaseTimeout System.Int32 @ setter getter
---@field public UpstreamActions System.Collections.Generic.List @ setter getter
---@field public CurrentCulture System.Globalization.CultureInfo @ setter getter
---@field public CurrentUICulture System.Globalization.CultureInfo @ setter getter
---@field public CurrentPrincipal System.Security.Principal.IPrincipal @ setter getter
---@field public CurrentValueFormatter NUnit.Framework.Constraints.ValueFormatter @ setter getter
---@field public IsSingleThreaded System.Boolean @ setter getter
NUnit.Framework.Internal.TestExecutionContext = {}
---@type NUnit.Framework.Internal.TestExecutionContext
CS.NUnit.Framework.Internal.TestExecutionContext = NUnit.Framework.Internal.TestExecutionContext

---@return NUnit.Framework.Internal.TestExecutionContext
function NUnit.Framework.Internal.TestExecutionContext.GetTestExecutionContext()end
---@return System.Void
function NUnit.Framework.Internal.TestExecutionContext.ClearCurrentContext()end
---@return System.Void
function NUnit.Framework.Internal.TestExecutionContext:UpdateContextFromEnvironment()end
---@return System.Void
function NUnit.Framework.Internal.TestExecutionContext:EstablishExecutionEnvironment()end
---@overload fun(count:System.Int32):System.Void
---@return System.Void
function NUnit.Framework.Internal.TestExecutionContext:IncrementAssertCount()end
---@param formatterFactory NUnit.Framework.Constraints.ValueFormatterFactory
---@return System.Void
function NUnit.Framework.Internal.TestExecutionContext:AddFormatter(formatterFactory)end
---@return System.Object
function NUnit.Framework.Internal.TestExecutionContext:InitializeLifetimeService()end
---@class NUnit.Framework.Internal.InvalidDataSourceException : System.Exception
NUnit.Framework.Internal.InvalidDataSourceException = {}
---@type NUnit.Framework.Internal.InvalidDataSourceException
CS.NUnit.Framework.Internal.InvalidDataSourceException = NUnit.Framework.Internal.InvalidDataSourceException

---@class NUnit.Framework.Internal.TypeWrapper : System.Object
---@field public Type System.Type @ setter getter
---@field public BaseType NUnit.Framework.Interfaces.ITypeInfo @  getter
---@field public Name System.String @  getter
---@field public FullName System.String @  getter
---@field public Assembly System.Reflection.Assembly @  getter
---@field public Namespace System.String @  getter
---@field public IsAbstract System.Boolean @  getter
---@field public IsGenericType System.Boolean @  getter
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public IsGenericTypeDefinition System.Boolean @  getter
---@field public IsSealed System.Boolean @  getter
---@field public IsStaticClass System.Boolean @  getter
NUnit.Framework.Internal.TypeWrapper = {}
---@type NUnit.Framework.Internal.TypeWrapper
CS.NUnit.Framework.Internal.TypeWrapper = NUnit.Framework.Internal.TypeWrapper

---@param type System.Type
---@return System.Boolean
function NUnit.Framework.Internal.TypeWrapper:IsType(type)end
---@overload fun(args:System.Object[]):System.String
---@return System.String
function NUnit.Framework.Internal.TypeWrapper:GetDisplayName()end
---@param typeArgs System.Type[]
---@return NUnit.Framework.Interfaces.ITypeInfo
function NUnit.Framework.Internal.TypeWrapper:MakeGenericType(typeArgs)end
---@return System.Type
function NUnit.Framework.Internal.TypeWrapper:GetGenericTypeDefinition()end
---@param inherit System.Boolean
---@return T[]
function NUnit.Framework.Internal.TypeWrapper:GetCustomAttributes(inherit)end
---@param inherit System.Boolean
---@return System.Boolean
function NUnit.Framework.Internal.TypeWrapper:IsDefined(inherit)end
---@param attributeType System.Type
---@return System.Boolean
function NUnit.Framework.Internal.TypeWrapper:HasMethodWithAttribute(attributeType)end
---@param flags System.Reflection.BindingFlags
---@return NUnit.Framework.Interfaces.IMethodInfo[]
function NUnit.Framework.Internal.TypeWrapper:GetMethods(flags)end
---@param argTypes System.Type[]
---@return System.Reflection.ConstructorInfo
function NUnit.Framework.Internal.TypeWrapper:GetConstructor(argTypes)end
---@param argTypes System.Type[]
---@return System.Boolean
function NUnit.Framework.Internal.TypeWrapper:HasConstructor(argTypes)end
---@param args System.Object[]
---@return System.Object
function NUnit.Framework.Internal.TypeWrapper:Construct(args)end
---@return System.String
function NUnit.Framework.Internal.TypeWrapper:ToString()end
---@class NUnit.Framework.Internal.TestListener : System.Object
---@field public NULL NUnit.Framework.Interfaces.ITestListener @static  getter
NUnit.Framework.Internal.TestListener = {}
---@type NUnit.Framework.Internal.TestListener
CS.NUnit.Framework.Internal.TestListener = NUnit.Framework.Internal.TestListener

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.TestListener:TestStarted(test)end
---@param result NUnit.Framework.Interfaces.ITestResult
---@return System.Void
function NUnit.Framework.Internal.TestListener:TestFinished(result)end
---@param output NUnit.Framework.Interfaces.TestOutput
---@return System.Void
function NUnit.Framework.Internal.TestListener:TestOutput(output)end
---@class NUnit.Framework.Internal.PlatformHelper : System.Object
---@field public Reason System.String @  getter
---@field public OSPlatforms System.String
---@field public RuntimePlatforms System.String
NUnit.Framework.Internal.PlatformHelper = {}
---@type NUnit.Framework.Internal.PlatformHelper
CS.NUnit.Framework.Internal.PlatformHelper = NUnit.Framework.Internal.PlatformHelper

---@overload fun(platformAttribute:NUnit.Framework.PlatformAttribute):System.Boolean
---@overload fun(testCaseAttribute:NUnit.Framework.TestCaseAttribute):System.Boolean
---@overload fun(platform:System.String):System.Boolean
---@param platforms System.String[]
---@return System.Boolean
function NUnit.Framework.Internal.PlatformHelper:IsPlatformSupported(platforms)end
---@class NUnit.Framework.Internal.StackFilter : System.Object
NUnit.Framework.Internal.StackFilter = {}
---@type NUnit.Framework.Internal.StackFilter
CS.NUnit.Framework.Internal.StackFilter = NUnit.Framework.Internal.StackFilter

---@param rawTrace System.String
---@return System.String
function NUnit.Framework.Internal.StackFilter.Filter(rawTrace)end
---@class NUnit.Framework.Internal.ParameterWrapper : System.Object
---@field public IsOptional System.Boolean @  getter
---@field public Method NUnit.Framework.Interfaces.IMethodInfo @ setter getter
---@field public ParameterInfo System.Reflection.ParameterInfo @ setter getter
---@field public ParameterType System.Type @  getter
NUnit.Framework.Internal.ParameterWrapper = {}
---@type NUnit.Framework.Internal.ParameterWrapper
CS.NUnit.Framework.Internal.ParameterWrapper = NUnit.Framework.Internal.ParameterWrapper

---@param inherit System.Boolean
---@return T[]
function NUnit.Framework.Internal.ParameterWrapper:GetCustomAttributes(inherit)end
---@param inherit System.Boolean
---@return System.Boolean
function NUnit.Framework.Internal.ParameterWrapper:IsDefined(inherit)end
---@class NUnit.Framework.Internal.InternalTraceWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding @  getter
NUnit.Framework.Internal.InternalTraceWriter = {}
---@type NUnit.Framework.Internal.InternalTraceWriter
CS.NUnit.Framework.Internal.InternalTraceWriter = NUnit.Framework.Internal.InternalTraceWriter

---@overload fun(value:System.String):System.Void
---@param value System.Char
---@return System.Void
function NUnit.Framework.Internal.InternalTraceWriter:Write(value)end
---@param value System.String
---@return System.Void
function NUnit.Framework.Internal.InternalTraceWriter:WriteLine(value)end
---@return System.Void
function NUnit.Framework.Internal.InternalTraceWriter:Flush()end
---@class NUnit.Framework.Internal.TypeHelper : System.Object
---@field public NonmatchingType System.Type
NUnit.Framework.Internal.TypeHelper = {}
---@type NUnit.Framework.Internal.TypeHelper
CS.NUnit.Framework.Internal.TypeHelper = NUnit.Framework.Internal.TypeHelper

---@overload fun(type:System.Type, arglist:System.Object[]):System.String
---@param type System.Type
---@return System.String
function NUnit.Framework.Internal.TypeHelper.GetDisplayName(type)end
---@param type1 System.Type
---@param type2 System.Type
---@return System.Type
function NUnit.Framework.Internal.TypeHelper.BestCommonType(type1, type2)end
---@param type System.Type
---@return System.Boolean
function NUnit.Framework.Internal.TypeHelper.IsNumeric(type)end
---@param arglist System.Object[]
---@param parameters NUnit.Framework.Interfaces.IParameterInfo[]
---@return System.Void
function NUnit.Framework.Internal.TypeHelper.ConvertArgumentList(arglist, parameters)end
---@param type System.Type
---@param arglist System.Object[]
---@param typeArgsOut System.Type[]
---@return System.Boolean
function NUnit.Framework.Internal.TypeHelper.CanDeduceTypeArgsFromArgs(type, arglist, typeArgsOut)end
---@param enumType System.Type
---@return System.Array
function NUnit.Framework.Internal.TypeHelper.GetEnumValues(enumType)end
---@param enumType System.Type
---@return System.String[]
function NUnit.Framework.Internal.TypeHelper.GetEnumNames(enumType)end
---@class NUnit.Framework.Internal.ThreadUtility : System.Object
NUnit.Framework.Internal.ThreadUtility = {}
---@type NUnit.Framework.Internal.ThreadUtility
CS.NUnit.Framework.Internal.ThreadUtility = NUnit.Framework.Internal.ThreadUtility

---@overload fun(thread:System.Threading.Thread, stateInfo:System.Object):System.Void
---@param thread System.Threading.Thread
---@return System.Void
function NUnit.Framework.Internal.ThreadUtility.Kill(thread)end
---@class NUnit.Framework.Internal.TestFixture : NUnit.Framework.Internal.TestSuite
NUnit.Framework.Internal.TestFixture = {}
---@type NUnit.Framework.Internal.TestFixture
CS.NUnit.Framework.Internal.TestFixture = NUnit.Framework.Internal.TestFixture

---@class NUnit.Framework.Internal.TestExecutionStatus : System.Enum
NUnit.Framework.Internal.TestExecutionStatus = {}
---@type NUnit.Framework.Internal.TestExecutionStatus
CS.NUnit.Framework.Internal.TestExecutionStatus = NUnit.Framework.Internal.TestExecutionStatus

---@return System.Int32 value:0
NUnit.Framework.Internal.TestExecutionStatus.Running = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.TestExecutionStatus.StopRequested = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.TestExecutionStatus.AbortRequested = 2

---@class NUnit.Framework.Internal.TestFixtureParameters : NUnit.Framework.Internal.TestParameters
---@field public TypeArgs System.Type[] @ setter getter
NUnit.Framework.Internal.TestFixtureParameters = {}
---@type NUnit.Framework.Internal.TestFixtureParameters
CS.NUnit.Framework.Internal.TestFixtureParameters = NUnit.Framework.Internal.TestFixtureParameters

---@class NUnit.Framework.Internal.StringUtil : System.Object
NUnit.Framework.Internal.StringUtil = {}
---@type NUnit.Framework.Internal.StringUtil
CS.NUnit.Framework.Internal.StringUtil = NUnit.Framework.Internal.StringUtil

---@param strA System.String
---@param strB System.String
---@param ignoreCase System.Boolean
---@return System.Int32
function NUnit.Framework.Internal.StringUtil.Compare(strA, strB, ignoreCase)end
---@param strA System.String
---@param strB System.String
---@param ignoreCase System.Boolean
---@return System.Boolean
function NUnit.Framework.Internal.StringUtil.StringsEqual(strA, strB, ignoreCase)end
---@class NUnit.Framework.Internal.TestCaseResult : NUnit.Framework.Internal.TestResult
---@field public FailCount System.Int32 @  getter
---@field public PassCount System.Int32 @  getter
---@field public SkipCount System.Int32 @  getter
---@field public InconclusiveCount System.Int32 @  getter
---@field public HasChildren System.Boolean @  getter
---@field public Children System.Collections.Generic.IEnumerable @  getter
NUnit.Framework.Internal.TestCaseResult = {}
---@type NUnit.Framework.Internal.TestCaseResult
CS.NUnit.Framework.Internal.TestCaseResult = NUnit.Framework.Internal.TestCaseResult

---@class NUnit.Framework.Internal.InternalTraceLevel : System.Enum
NUnit.Framework.Internal.InternalTraceLevel = {}
---@type NUnit.Framework.Internal.InternalTraceLevel
CS.NUnit.Framework.Internal.InternalTraceLevel = NUnit.Framework.Internal.InternalTraceLevel

---@return System.Int32 value:0
NUnit.Framework.Internal.InternalTraceLevel.Default = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.InternalTraceLevel.Off = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.InternalTraceLevel.Error = 2
---@return System.Int32 value:3
NUnit.Framework.Internal.InternalTraceLevel.Warning = 3
---@return System.Int32 value:4
NUnit.Framework.Internal.InternalTraceLevel.Info = 4
---@return System.Int32 value:5
NUnit.Framework.Internal.InternalTraceLevel.Debug = 5

---@class NUnit.Framework.Internal.TestAssembly : NUnit.Framework.Internal.TestSuite
---@field public Assembly System.Reflection.Assembly @ setter getter
---@field public TestType System.String @  getter
NUnit.Framework.Internal.TestAssembly = {}
---@type NUnit.Framework.Internal.TestAssembly
CS.NUnit.Framework.Internal.TestAssembly = NUnit.Framework.Internal.TestAssembly

---@class NUnit.Framework.Internal.SetUpFixture : NUnit.Framework.Internal.TestSuite
NUnit.Framework.Internal.SetUpFixture = {}
---@type NUnit.Framework.Internal.SetUpFixture
CS.NUnit.Framework.Internal.SetUpFixture = NUnit.Framework.Internal.SetUpFixture

---@class NUnit.Framework.Internal.ParameterizedFixtureSuite : NUnit.Framework.Internal.TestSuite
---@field public TestType System.String @  getter
NUnit.Framework.Internal.ParameterizedFixtureSuite = {}
---@type NUnit.Framework.Internal.ParameterizedFixtureSuite
CS.NUnit.Framework.Internal.ParameterizedFixtureSuite = NUnit.Framework.Internal.ParameterizedFixtureSuite

---@class NUnit.Framework.Internal.TextMessageWriter : NUnit.Framework.Constraints.MessageWriter
---@field public MaxLineLength System.Int32 @ setter getter
---@field public Pfx_Expected System.String
---@field public Pfx_Actual System.String
---@field public PrefixLength System.Int32
NUnit.Framework.Internal.TextMessageWriter = {}
---@type NUnit.Framework.Internal.TextMessageWriter
CS.NUnit.Framework.Internal.TextMessageWriter = NUnit.Framework.Internal.TextMessageWriter

---@param level System.Int32
---@param message System.String
---@param args System.Object[]
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:WriteMessageLine(level, message, args)end
---@overload fun(expected:System.Object, actual:System.Object):System.Void
---@overload fun(expected:System.Object, actual:System.Object, tolerance:NUnit.Framework.Constraints.Tolerance):System.Void
---@param result NUnit.Framework.Constraints.ConstraintResult
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:DisplayDifferences(result)end
---@param expected System.String
---@param actual System.String
---@param mismatch System.Int32
---@param ignoreCase System.Boolean
---@param clipping System.Boolean
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:DisplayStringDifferences(expected, actual, mismatch, ignoreCase, clipping)end
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:WriteActualValue(actual)end
---@param val System.Object
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:WriteValue(val)end
---@param collection System.Collections.IEnumerable
---@param start System.Int64
---@param max System.Int32
---@return System.Void
function NUnit.Framework.Internal.TextMessageWriter:WriteCollectionElements(collection, start, max)end
---@class NUnit.Framework.Internal.ParameterizedMethodSuite : NUnit.Framework.Internal.TestSuite
---@field public TestType System.String @  getter
NUnit.Framework.Internal.ParameterizedMethodSuite = {}
---@type NUnit.Framework.Internal.ParameterizedMethodSuite
CS.NUnit.Framework.Internal.ParameterizedMethodSuite = NUnit.Framework.Internal.ParameterizedMethodSuite

---@class NUnit.Framework.Internal.OSPlatform : System.Object
---@field public CurrentPlatform NUnit.Framework.Internal.OSPlatform @static  getter
---@field public Platform System.PlatformID @  getter
---@field public Version System.Version @  getter
---@field public Product NUnit.Framework.Internal.OSPlatform.ProductType @  getter
---@field public IsWindows System.Boolean @  getter
---@field public IsUnix System.Boolean @  getter
---@field public IsWin32S System.Boolean @  getter
---@field public IsWin32Windows System.Boolean @  getter
---@field public IsWin32NT System.Boolean @  getter
---@field public IsWinCE System.Boolean @  getter
---@field public IsXbox System.Boolean @  getter
---@field public IsMacOSX System.Boolean @  getter
---@field public IsWin95 System.Boolean @  getter
---@field public IsWin98 System.Boolean @  getter
---@field public IsWinME System.Boolean @  getter
---@field public IsNT3 System.Boolean @  getter
---@field public IsNT4 System.Boolean @  getter
---@field public IsNT5 System.Boolean @  getter
---@field public IsWin2K System.Boolean @  getter
---@field public IsWinXP System.Boolean @  getter
---@field public IsWin2003Server System.Boolean @  getter
---@field public IsNT6 System.Boolean @  getter
---@field public IsNT60 System.Boolean @  getter
---@field public IsNT61 System.Boolean @  getter
---@field public IsNT62 System.Boolean @  getter
---@field public IsNT63 System.Boolean @  getter
---@field public IsVista System.Boolean @  getter
---@field public IsWin2008Server System.Boolean @  getter
---@field public IsWin2008ServerR1 System.Boolean @  getter
---@field public IsWin2008ServerR2 System.Boolean @  getter
---@field public IsWin2012Server System.Boolean @  getter
---@field public IsWin2012ServerR1 System.Boolean @  getter
---@field public IsWin2012ServerR2 System.Boolean @  getter
---@field public IsWindows7 System.Boolean @  getter
---@field public IsWindows8 System.Boolean @  getter
---@field public IsWindows81 System.Boolean @  getter
---@field public IsWindows10 System.Boolean @  getter
---@field public IsWindowsServer10 System.Boolean @  getter
---@field public UnixPlatformID_Microsoft System.PlatformID
---@field public UnixPlatformID_Mono System.PlatformID
---@field public XBoxPlatformID System.PlatformID
---@field public MacOSXPlatformID System.PlatformID
NUnit.Framework.Internal.OSPlatform = {}
---@type NUnit.Framework.Internal.OSPlatform
CS.NUnit.Framework.Internal.OSPlatform = NUnit.Framework.Internal.OSPlatform

---@class NUnit.Framework.Internal.OSPlatform.ProductType : System.Enum
NUnit.Framework.Internal.OSPlatform.ProductType = {}
---@type NUnit.Framework.Internal.OSPlatform.ProductType
CS.NUnit.Framework.Internal.OSPlatform.ProductType = NUnit.Framework.Internal.OSPlatform.ProductType

---@return System.Int32 value:0
NUnit.Framework.Internal.OSPlatform.ProductType.Unknown = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.OSPlatform.ProductType.WorkStation = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.OSPlatform.ProductType.DomainController = 2
---@return System.Int32 value:3
NUnit.Framework.Internal.OSPlatform.ProductType.Server = 3

---@class NUnit.Framework.Internal.RuntimeType : System.Enum
NUnit.Framework.Internal.RuntimeType = {}
---@type NUnit.Framework.Internal.RuntimeType
CS.NUnit.Framework.Internal.RuntimeType = NUnit.Framework.Internal.RuntimeType

---@return System.Int32 value:0
NUnit.Framework.Internal.RuntimeType.Any = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.RuntimeType.Net = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.RuntimeType.NetCF = 2
---@return System.Int32 value:3
NUnit.Framework.Internal.RuntimeType.SSCLI = 3
---@return System.Int32 value:4
NUnit.Framework.Internal.RuntimeType.Mono = 4
---@return System.Int32 value:5
NUnit.Framework.Internal.RuntimeType.Silverlight = 5
---@return System.Int32 value:6
NUnit.Framework.Internal.RuntimeType.MonoTouch = 6

---@class NUnit.Framework.Internal.RuntimeFramework : System.Object
---@field public CurrentFramework NUnit.Framework.Internal.RuntimeFramework @static  getter
---@field public Runtime NUnit.Framework.Internal.RuntimeType @ setter getter
---@field public FrameworkVersion System.Version @ setter getter
---@field public ClrVersion System.Version @ setter getter
---@field public AllowAnyVersion System.Boolean @  getter
---@field public DisplayName System.String @ setter getter
---@field public DefaultVersion System.Version
NUnit.Framework.Internal.RuntimeFramework = {}
---@type NUnit.Framework.Internal.RuntimeFramework
CS.NUnit.Framework.Internal.RuntimeFramework = NUnit.Framework.Internal.RuntimeFramework

---@param s System.String
---@return NUnit.Framework.Internal.RuntimeFramework
function NUnit.Framework.Internal.RuntimeFramework.Parse(s)end
---@return System.String
function NUnit.Framework.Internal.RuntimeFramework:ToString()end
---@param target NUnit.Framework.Internal.RuntimeFramework
---@return System.Boolean
function NUnit.Framework.Internal.RuntimeFramework:Supports(target)end
---@class NUnit.Framework.Internal.PropertyNames : System.Object
---@field public AppDomain System.String
---@field public JoinType System.String
---@field public ProcessID System.String
---@field public ProviderStackTrace System.String
---@field public SkipReason System.String
---@field public Author System.String
---@field public ApartmentState System.String
---@field public Category System.String
---@field public Description System.String
---@field public LevelOfParallelism System.String
---@field public MaxTime System.String
---@field public ParallelScope System.String
---@field public RepeatCount System.String
---@field public RequiresThread System.String
---@field public SetCulture System.String
---@field public SetUICulture System.String
---@field public TestOf System.String
---@field public Timeout System.String
---@field public IgnoreUntilDate System.String
---@field public Order System.String
NUnit.Framework.Internal.PropertyNames = {}
---@type NUnit.Framework.Internal.PropertyNames
CS.NUnit.Framework.Internal.PropertyNames = NUnit.Framework.Internal.PropertyNames

---@class NUnit.Framework.Internal.MethodWrapper : System.Object
---@field public TypeInfo NUnit.Framework.Interfaces.ITypeInfo @ setter getter
---@field public MethodInfo System.Reflection.MethodInfo @ setter getter
---@field public Name System.String @  getter
---@field public IsAbstract System.Boolean @  getter
---@field public IsPublic System.Boolean @  getter
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public IsGenericMethod System.Boolean @  getter
---@field public IsGenericMethodDefinition System.Boolean @  getter
---@field public ReturnType NUnit.Framework.Interfaces.ITypeInfo @  getter
NUnit.Framework.Internal.MethodWrapper = {}
---@type NUnit.Framework.Internal.MethodWrapper
CS.NUnit.Framework.Internal.MethodWrapper = NUnit.Framework.Internal.MethodWrapper

---@return NUnit.Framework.Interfaces.IParameterInfo[]
function NUnit.Framework.Internal.MethodWrapper:GetParameters()end
---@return System.Type[]
function NUnit.Framework.Internal.MethodWrapper:GetGenericArguments()end
---@param typeArguments System.Type[]
---@return NUnit.Framework.Interfaces.IMethodInfo
function NUnit.Framework.Internal.MethodWrapper:MakeGenericMethod(typeArguments)end
---@param inherit System.Boolean
---@return T[]
function NUnit.Framework.Internal.MethodWrapper:GetCustomAttributes(inherit)end
---@param inherit System.Boolean
---@return System.Boolean
function NUnit.Framework.Internal.MethodWrapper:IsDefined(inherit)end
---@param fixture System.Object
---@param args System.Object[]
---@return System.Object
function NUnit.Framework.Internal.MethodWrapper:Invoke(fixture, args)end
---@return System.String
function NUnit.Framework.Internal.MethodWrapper:ToString()end
---@class NUnit.Framework.Internal.TestMethod : NUnit.Framework.Internal.Test
---@field public HasChildren System.Boolean @  getter
---@field public Tests System.Collections.Generic.IList @  getter
---@field public XmlElementName System.String @  getter
---@field public MethodName System.String @  getter
---@field public parms NUnit.Framework.Internal.TestCaseParameters
NUnit.Framework.Internal.TestMethod = {}
---@type NUnit.Framework.Internal.TestMethod
CS.NUnit.Framework.Internal.TestMethod = NUnit.Framework.Internal.TestMethod

---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.TestMethod:MakeTestResult()end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.TestMethod:AddToXml(parentNode, recursive)end
