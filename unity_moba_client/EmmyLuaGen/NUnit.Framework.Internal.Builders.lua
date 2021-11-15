---@class NUnit.Framework.Internal.Builders.SequentialStrategy : System.Object
NUnit.Framework.Internal.Builders.SequentialStrategy = {}
---@type NUnit.Framework.Internal.Builders.SequentialStrategy
CS.NUnit.Framework.Internal.Builders.SequentialStrategy = NUnit.Framework.Internal.Builders.SequentialStrategy

---@param sources System.Collections.IEnumerable[]
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.Internal.Builders.SequentialStrategy:GetTestCases(sources)end
---@class NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder : System.Object
NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder = {}
---@type NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder
CS.NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder = NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder

---@overload fun(typeInfo:NUnit.Framework.Interfaces.ITypeInfo, testFixtureData:NUnit.Framework.Interfaces.ITestFixtureData):NUnit.Framework.Internal.TestSuite
---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return NUnit.Framework.Internal.TestSuite
function NUnit.Framework.Internal.Builders.NUnitTestFixtureBuilder:BuildFrom(typeInfo)end
---@class NUnit.Framework.Internal.Builders.PairwiseStrategy : System.Object
NUnit.Framework.Internal.Builders.PairwiseStrategy = {}
---@type NUnit.Framework.Internal.Builders.PairwiseStrategy
CS.NUnit.Framework.Internal.Builders.PairwiseStrategy = NUnit.Framework.Internal.Builders.PairwiseStrategy

---@param sources System.Collections.IEnumerable[]
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.Internal.Builders.PairwiseStrategy:GetTestCases(sources)end
---@class NUnit.Framework.Internal.Builders.DatapointProvider : System.Object
NUnit.Framework.Internal.Builders.DatapointProvider = {}
---@type NUnit.Framework.Internal.Builders.DatapointProvider
CS.NUnit.Framework.Internal.Builders.DatapointProvider = NUnit.Framework.Internal.Builders.DatapointProvider

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Boolean
function NUnit.Framework.Internal.Builders.DatapointProvider:HasDataFor(parameter)end
---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.Internal.Builders.DatapointProvider:GetDataFor(parameter)end
---@class NUnit.Framework.Internal.Builders.CombinatorialStrategy : System.Object
NUnit.Framework.Internal.Builders.CombinatorialStrategy = {}
---@type NUnit.Framework.Internal.Builders.CombinatorialStrategy
CS.NUnit.Framework.Internal.Builders.CombinatorialStrategy = NUnit.Framework.Internal.Builders.CombinatorialStrategy

---@param sources System.Collections.IEnumerable[]
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.Internal.Builders.CombinatorialStrategy:GetTestCases(sources)end
---@class NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder : System.Object
NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder = {}
---@type NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder
CS.NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder = NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder

---@overload fun(method:NUnit.Framework.Interfaces.IMethodInfo, parentSuite:NUnit.Framework.Internal.Test):System.Boolean
---@param method NUnit.Framework.Interfaces.IMethodInfo
---@return System.Boolean
function NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder:CanBuildFrom(method)end
---@overload fun(method:NUnit.Framework.Interfaces.IMethodInfo, parentSuite:NUnit.Framework.Internal.Test):NUnit.Framework.Internal.Test
---@param method NUnit.Framework.Interfaces.IMethodInfo
---@return NUnit.Framework.Internal.Test
function NUnit.Framework.Internal.Builders.DefaultTestCaseBuilder:BuildFrom(method)end
---@class NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder : System.Object
NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder = {}
---@type NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder
CS.NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder = NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder

---@param method NUnit.Framework.Interfaces.IMethodInfo
---@param parentSuite NUnit.Framework.Internal.Test
---@param parms NUnit.Framework.Internal.TestCaseParameters
---@return NUnit.Framework.Internal.TestMethod
function NUnit.Framework.Internal.Builders.NUnitTestCaseBuilder:BuildTestMethod(method, parentSuite, parms)end
---@class NUnit.Framework.Internal.Builders.ParameterDataSourceProvider : System.Object
NUnit.Framework.Internal.Builders.ParameterDataSourceProvider = {}
---@type NUnit.Framework.Internal.Builders.ParameterDataSourceProvider
CS.NUnit.Framework.Internal.Builders.ParameterDataSourceProvider = NUnit.Framework.Internal.Builders.ParameterDataSourceProvider

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Boolean
function NUnit.Framework.Internal.Builders.ParameterDataSourceProvider:HasDataFor(parameter)end
---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.Internal.Builders.ParameterDataSourceProvider:GetDataFor(parameter)end
---@class NUnit.Framework.Internal.Builders.NamespaceTreeBuilder : System.Object
---@field public RootSuite NUnit.Framework.Internal.TestSuite @  getter
NUnit.Framework.Internal.Builders.NamespaceTreeBuilder = {}
---@type NUnit.Framework.Internal.Builders.NamespaceTreeBuilder
CS.NUnit.Framework.Internal.Builders.NamespaceTreeBuilder = NUnit.Framework.Internal.Builders.NamespaceTreeBuilder

---@overload fun(fixture:NUnit.Framework.Internal.TestSuite):System.Void
---@param fixtures System.Collections.Generic.IList
---@return System.Void
function NUnit.Framework.Internal.Builders.NamespaceTreeBuilder:Add(fixtures)end
---@class NUnit.Framework.Internal.Builders.DefaultSuiteBuilder : System.Object
NUnit.Framework.Internal.Builders.DefaultSuiteBuilder = {}
---@type NUnit.Framework.Internal.Builders.DefaultSuiteBuilder
CS.NUnit.Framework.Internal.Builders.DefaultSuiteBuilder = NUnit.Framework.Internal.Builders.DefaultSuiteBuilder

---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return System.Boolean
function NUnit.Framework.Internal.Builders.DefaultSuiteBuilder:CanBuildFrom(typeInfo)end
---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return NUnit.Framework.Internal.TestSuite
function NUnit.Framework.Internal.Builders.DefaultSuiteBuilder:BuildFrom(typeInfo)end
---@class NUnit.Framework.Internal.Builders.ParameterDataProvider : System.Object
NUnit.Framework.Internal.Builders.ParameterDataProvider = {}
---@type NUnit.Framework.Internal.Builders.ParameterDataProvider
CS.NUnit.Framework.Internal.Builders.ParameterDataProvider = NUnit.Framework.Internal.Builders.ParameterDataProvider

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Boolean
function NUnit.Framework.Internal.Builders.ParameterDataProvider:HasDataFor(parameter)end
---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.Internal.Builders.ParameterDataProvider:GetDataFor(parameter)end
