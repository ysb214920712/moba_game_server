---@class NUnit.Framework.Api.FrameworkController : NUnit.Compatibility.LongLivedMarshalByRefObject
---@field public Builder NUnit.Framework.Api.ITestAssemblyBuilder @ setter getter
---@field public Runner NUnit.Framework.Api.ITestAssemblyRunner @ setter getter
---@field public AssemblyNameOrPath System.String @ setter getter
---@field public Assembly System.Reflection.Assembly @ setter getter
NUnit.Framework.Api.FrameworkController = {}
---@type NUnit.Framework.Api.FrameworkController
CS.NUnit.Framework.Api.FrameworkController = NUnit.Framework.Api.FrameworkController

---@return System.String
function NUnit.Framework.Api.FrameworkController:LoadTests()end
---@param filter System.String
---@return System.String
function NUnit.Framework.Api.FrameworkController:ExploreTests(filter)end
---@overload fun(callback:System.Action, filter:System.String):System.String
---@param filter System.String
---@return System.String
function NUnit.Framework.Api.FrameworkController:RunTests(filter)end
---@param force System.Boolean
---@return System.Void
function NUnit.Framework.Api.FrameworkController:StopRun(force)end
---@param filter System.String
---@return System.Int32
function NUnit.Framework.Api.FrameworkController:CountTests(filter)end
---@param targetNode NUnit.Framework.Interfaces.TNode
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Api.FrameworkController.InsertEnvironmentElement(targetNode)end
---@param targetNode NUnit.Framework.Interfaces.TNode
---@param settings System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Api.FrameworkController.InsertSettingsElement(targetNode, settings)end
---@class NUnit.Framework.Api.FrameworkController.FrameworkControllerAction : NUnit.Compatibility.LongLivedMarshalByRefObject
NUnit.Framework.Api.FrameworkController.FrameworkControllerAction = {}
---@type NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
CS.NUnit.Framework.Api.FrameworkController.FrameworkControllerAction = NUnit.Framework.Api.FrameworkController.FrameworkControllerAction

---@class NUnit.Framework.Api.FrameworkController.LoadTestsAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.LoadTestsAction = {}
---@type NUnit.Framework.Api.FrameworkController.LoadTestsAction
CS.NUnit.Framework.Api.FrameworkController.LoadTestsAction = NUnit.Framework.Api.FrameworkController.LoadTestsAction

---@class NUnit.Framework.Api.FrameworkController.ExploreTestsAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.ExploreTestsAction = {}
---@type NUnit.Framework.Api.FrameworkController.ExploreTestsAction
CS.NUnit.Framework.Api.FrameworkController.ExploreTestsAction = NUnit.Framework.Api.FrameworkController.ExploreTestsAction

---@class NUnit.Framework.Api.FrameworkController.CountTestsAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.CountTestsAction = {}
---@type NUnit.Framework.Api.FrameworkController.CountTestsAction
CS.NUnit.Framework.Api.FrameworkController.CountTestsAction = NUnit.Framework.Api.FrameworkController.CountTestsAction

---@class NUnit.Framework.Api.FrameworkController.RunTestsAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.RunTestsAction = {}
---@type NUnit.Framework.Api.FrameworkController.RunTestsAction
CS.NUnit.Framework.Api.FrameworkController.RunTestsAction = NUnit.Framework.Api.FrameworkController.RunTestsAction

---@class NUnit.Framework.Api.FrameworkController.RunAsyncAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.RunAsyncAction = {}
---@type NUnit.Framework.Api.FrameworkController.RunAsyncAction
CS.NUnit.Framework.Api.FrameworkController.RunAsyncAction = NUnit.Framework.Api.FrameworkController.RunAsyncAction

---@class NUnit.Framework.Api.FrameworkController.StopRunAction : NUnit.Framework.Api.FrameworkController.FrameworkControllerAction
NUnit.Framework.Api.FrameworkController.StopRunAction = {}
---@type NUnit.Framework.Api.FrameworkController.StopRunAction
CS.NUnit.Framework.Api.FrameworkController.StopRunAction = NUnit.Framework.Api.FrameworkController.StopRunAction

---@class NUnit.Framework.Api.DefaultTestAssemblyBuilder : System.Object
NUnit.Framework.Api.DefaultTestAssemblyBuilder = {}
---@type NUnit.Framework.Api.DefaultTestAssemblyBuilder
CS.NUnit.Framework.Api.DefaultTestAssemblyBuilder = NUnit.Framework.Api.DefaultTestAssemblyBuilder

---@overload fun(assemblyName:System.String, options:System.Collections.Generic.IDictionary):NUnit.Framework.Interfaces.ITest
---@param assembly System.Reflection.Assembly
---@param options System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.ITest
function NUnit.Framework.Api.DefaultTestAssemblyBuilder:Build(assembly, options)end
---@class NUnit.Framework.Api.NUnitTestAssemblyRunner : System.Object
---@field public LoadedTest NUnit.Framework.Interfaces.ITest @ setter getter
---@field public Result NUnit.Framework.Interfaces.ITestResult @  getter
---@field public IsTestLoaded System.Boolean @  getter
---@field public IsTestRunning System.Boolean @  getter
---@field public IsTestComplete System.Boolean @  getter
NUnit.Framework.Api.NUnitTestAssemblyRunner = {}
---@type NUnit.Framework.Api.NUnitTestAssemblyRunner
CS.NUnit.Framework.Api.NUnitTestAssemblyRunner = NUnit.Framework.Api.NUnitTestAssemblyRunner

---@overload fun(assembly:System.Reflection.Assembly, settings:System.Collections.Generic.IDictionary):NUnit.Framework.Interfaces.ITest
---@param assemblyName System.String
---@param settings System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.ITest
function NUnit.Framework.Api.NUnitTestAssemblyRunner:Load(assemblyName, settings)end
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return System.Int32
function NUnit.Framework.Api.NUnitTestAssemblyRunner:CountTestCases(filter)end
---@param listener NUnit.Framework.Interfaces.ITestListener
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return NUnit.Framework.Interfaces.ITestResult
function NUnit.Framework.Api.NUnitTestAssemblyRunner:Run(listener, filter)end
---@param listener NUnit.Framework.Interfaces.ITestListener
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return System.Void
function NUnit.Framework.Api.NUnitTestAssemblyRunner:RunAsync(listener, filter)end
---@param timeout System.Int32
---@return System.Boolean
function NUnit.Framework.Api.NUnitTestAssemblyRunner:WaitForCompletion(timeout)end
---@param force System.Boolean
---@return System.Void
function NUnit.Framework.Api.NUnitTestAssemblyRunner:StopRun(force)end
