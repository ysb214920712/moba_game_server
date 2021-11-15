---@class NUnit.Framework.StringAssert : System.Object
NUnit.Framework.StringAssert = {}
---@type NUnit.Framework.StringAssert
CS.NUnit.Framework.StringAssert = NUnit.Framework.StringAssert

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.StringAssert.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.StringAssert.ReferenceEquals(a, b)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.Contains(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.DoesNotContain(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.StartsWith(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.DoesNotStartWith(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.EndsWith(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.DoesNotEndWith(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.AreEqualIgnoringCase(expected, actual)end
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.AreNotEqualIgnoringCase(expected, actual)end
---@overload fun(pattern:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param pattern System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.IsMatch(pattern, actual)end
---@overload fun(pattern:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param pattern System.String
---@param actual System.String
---@return System.Void
function NUnit.Framework.StringAssert.DoesNotMatch(pattern, actual)end
---@class NUnit.Framework.NUnitAttribute : System.Attribute
NUnit.Framework.NUnitAttribute = {}
---@type NUnit.Framework.NUnitAttribute
CS.NUnit.Framework.NUnitAttribute = NUnit.Framework.NUnitAttribute

---@class NUnit.Framework.PropertyAttribute : NUnit.Framework.NUnitAttribute
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @  getter
NUnit.Framework.PropertyAttribute = {}
---@type NUnit.Framework.PropertyAttribute
CS.NUnit.Framework.PropertyAttribute = NUnit.Framework.PropertyAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.PropertyAttribute:ApplyToTest(test)end
---@class NUnit.Framework.MaxTimeAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.MaxTimeAttribute = {}
---@type NUnit.Framework.MaxTimeAttribute
CS.NUnit.Framework.MaxTimeAttribute = NUnit.Framework.MaxTimeAttribute

---@class NUnit.Framework.DataAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.DataAttribute = {}
---@type NUnit.Framework.DataAttribute
CS.NUnit.Framework.DataAttribute = NUnit.Framework.DataAttribute

---@class NUnit.Framework.ValuesAttribute : NUnit.Framework.DataAttribute
NUnit.Framework.ValuesAttribute = {}
---@type NUnit.Framework.ValuesAttribute
CS.NUnit.Framework.ValuesAttribute = NUnit.Framework.ValuesAttribute

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.ValuesAttribute:GetData(parameter)end
---@class NUnit.Framework.CombiningStrategyAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.CombiningStrategyAttribute = {}
---@type NUnit.Framework.CombiningStrategyAttribute
CS.NUnit.Framework.CombiningStrategyAttribute = NUnit.Framework.CombiningStrategyAttribute

---@param method NUnit.Framework.Interfaces.IMethodInfo
---@param suite NUnit.Framework.Internal.Test
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.CombiningStrategyAttribute:BuildFrom(method, suite)end
---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.CombiningStrategyAttribute:ApplyToTest(test)end
---@class NUnit.Framework.PairwiseAttribute : NUnit.Framework.CombiningStrategyAttribute
NUnit.Framework.PairwiseAttribute = {}
---@type NUnit.Framework.PairwiseAttribute
CS.NUnit.Framework.PairwiseAttribute = NUnit.Framework.PairwiseAttribute

---@class NUnit.Framework.IncludeExcludeAttribute : NUnit.Framework.NUnitAttribute
---@field public Include System.String @ setter getter
---@field public Exclude System.String @ setter getter
---@field public Reason System.String @ setter getter
NUnit.Framework.IncludeExcludeAttribute = {}
---@type NUnit.Framework.IncludeExcludeAttribute
CS.NUnit.Framework.IncludeExcludeAttribute = NUnit.Framework.IncludeExcludeAttribute

---@class NUnit.Framework.CultureAttribute : NUnit.Framework.IncludeExcludeAttribute
NUnit.Framework.CultureAttribute = {}
---@type NUnit.Framework.CultureAttribute
CS.NUnit.Framework.CultureAttribute = NUnit.Framework.CultureAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.CultureAttribute:ApplyToTest(test)end
---@overload fun(cultures:System.String[]):System.Boolean
---@param culture System.String
---@return System.Boolean
function NUnit.Framework.CultureAttribute:IsCultureSupported(culture)end
---@class NUnit.Framework.TestContext : System.Object
---@field public CurrentContext NUnit.Framework.TestContext @static  getter
---@field public Out System.IO.TextWriter @static  getter
---@field public Test NUnit.Framework.TestContext.TestAdapter @  getter
---@field public Result NUnit.Framework.TestContext.ResultAdapter @  getter
---@field public WorkerId System.String @  getter
---@field public TestDirectory System.String @  getter
---@field public WorkDirectory System.String @  getter
---@field public Random NUnit.Framework.Internal.Randomizer @  getter
---@field public CurrentTestExecutionContext NUnit.Framework.Internal.ITestExecutionContext
---@field public Error System.IO.TextWriter
---@field public Progress System.IO.TextWriter
---@field public Parameters NUnit.Framework.TestParameters
NUnit.Framework.TestContext = {}
---@type NUnit.Framework.TestContext
CS.NUnit.Framework.TestContext = NUnit.Framework.TestContext

---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(format:System.String, arg1:System.Object):System.Void
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@overload fun(format:System.String, arg1:System.Object, arg2:System.Object):System.Void
---@overload fun(format:System.String, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.Void
---@param value System.Boolean
---@return System.Void
function NUnit.Framework.TestContext.Write(value)end
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(format:System.String, arg1:System.Object):System.Void
---@overload fun(format:System.String, args:System.Object[]):System.Void
---@overload fun(format:System.String, arg1:System.Object, arg2:System.Object):System.Void
---@overload fun(format:System.String, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.Void
---@return System.Void
function NUnit.Framework.TestContext.WriteLine()end
---@overload fun(formatter:NUnit.Framework.Constraints.ValueFormatter):System.Void
---@param formatterFactory NUnit.Framework.Constraints.ValueFormatterFactory
---@return System.Void
function NUnit.Framework.TestContext.AddFormatter(formatterFactory)end
---@class NUnit.Framework.TestContext.TestAdapter : System.Object
---@field public ID System.String @  getter
---@field public Name System.String @  getter
---@field public MethodName System.String @  getter
---@field public FullName System.String @  getter
---@field public ClassName System.String @  getter
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @  getter
NUnit.Framework.TestContext.TestAdapter = {}
---@type NUnit.Framework.TestContext.TestAdapter
CS.NUnit.Framework.TestContext.TestAdapter = NUnit.Framework.TestContext.TestAdapter

---@class NUnit.Framework.TestContext.ResultAdapter : System.Object
---@field public Outcome NUnit.Framework.Interfaces.ResultState @  getter
---@field public Message System.String @  getter
---@field public StackTrace System.String @  getter
---@field public FailCount System.Int32 @  getter
---@field public PassCount System.Int32 @  getter
---@field public SkipCount System.Int32 @  getter
---@field public InconclusiveCount System.Int32 @  getter
NUnit.Framework.TestContext.ResultAdapter = {}
---@type NUnit.Framework.TestContext.ResultAdapter
CS.NUnit.Framework.TestContext.ResultAdapter = NUnit.Framework.TestContext.ResultAdapter

---@class NUnit.Framework.TestFixtureAttribute : NUnit.Framework.NUnitAttribute
---@field public TestName System.String @ setter getter
---@field public RunState NUnit.Framework.Interfaces.RunState @ setter getter
---@field public Arguments System.Object[] @ setter getter
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @ setter getter
---@field public TypeArgs System.Type[] @ setter getter
---@field public Description System.String @ setter getter
---@field public Author System.String @ setter getter
---@field public TestOf System.Type @ setter getter
---@field public Ignore System.String @ setter getter
---@field public Reason System.String @ setter getter
---@field public IgnoreReason System.String @ setter getter
---@field public Explicit System.Boolean @ setter getter
---@field public Category System.String @ setter getter
NUnit.Framework.TestFixtureAttribute = {}
---@type NUnit.Framework.TestFixtureAttribute
CS.NUnit.Framework.TestFixtureAttribute = NUnit.Framework.TestFixtureAttribute

---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.TestFixtureAttribute:BuildFrom(typeInfo)end
---@class NUnit.Framework.TestCaseAttribute : NUnit.Framework.NUnitAttribute
---@field public TestName System.String @ setter getter
---@field public RunState NUnit.Framework.Interfaces.RunState @ setter getter
---@field public Arguments System.Object[] @ setter getter
---@field public Properties NUnit.Framework.Interfaces.IPropertyBag @ setter getter
---@field public ExpectedResult System.Object @ setter getter
---@field public HasExpectedResult System.Boolean @ setter getter
---@field public Description System.String @ setter getter
---@field public Author System.String @ setter getter
---@field public TestOf System.Type @ setter getter
---@field public Ignore System.String @ setter getter
---@field public Explicit System.Boolean @ setter getter
---@field public Reason System.String @ setter getter
---@field public IgnoreReason System.String @ setter getter
---@field public IncludePlatform System.String @ setter getter
---@field public ExcludePlatform System.String @ setter getter
---@field public Category System.String @ setter getter
NUnit.Framework.TestCaseAttribute = {}
---@type NUnit.Framework.TestCaseAttribute
CS.NUnit.Framework.TestCaseAttribute = NUnit.Framework.TestCaseAttribute

---@param method NUnit.Framework.Interfaces.IMethodInfo
---@param suite NUnit.Framework.Internal.Test
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.TestCaseAttribute:BuildFrom(method, suite)end
---@class NUnit.Framework.Assert : System.Object
NUnit.Framework.Assert = {}
---@type NUnit.Framework.Assert
CS.NUnit.Framework.Assert = NUnit.Framework.Assert

---@overload fun(condition:System.Nullable):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(condition:System.Nullable, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assert.True(condition)end
---@overload fun(condition:System.Nullable):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(condition:System.Nullable, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assert.IsTrue(condition)end
---@overload fun(condition:System.Nullable):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(condition:System.Nullable, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assert.False(condition)end
---@overload fun(condition:System.Nullable):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(condition:System.Nullable, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assert.IsFalse(condition)end
---@overload fun(anObject:System.Object, message:System.String, args:System.Object[]):System.Void
---@param anObject System.Object
---@return System.Void
function NUnit.Framework.Assert.NotNull(anObject)end
---@overload fun(anObject:System.Object, message:System.String, args:System.Object[]):System.Void
---@param anObject System.Object
---@return System.Void
function NUnit.Framework.Assert.IsNotNull(anObject)end
---@overload fun(anObject:System.Object, message:System.String, args:System.Object[]):System.Void
---@param anObject System.Object
---@return System.Void
function NUnit.Framework.Assert.Null(anObject)end
---@overload fun(anObject:System.Object, message:System.String, args:System.Object[]):System.Void
---@param anObject System.Object
---@return System.Void
function NUnit.Framework.Assert.IsNull(anObject)end
---@overload fun(aDouble:System.Nullable):System.Void
---@overload fun(aDouble:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(aDouble:System.Nullable, message:System.String, args:System.Object[]):System.Void
---@param aDouble System.Double
---@return System.Void
function NUnit.Framework.Assert.IsNaN(aDouble)end
---@overload fun(collection:System.Collections.IEnumerable):System.Void
---@overload fun(aString:System.String, message:System.String, args:System.Object[]):System.Void
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param aString System.String
---@return System.Void
function NUnit.Framework.Assert.IsEmpty(aString)end
---@overload fun(collection:System.Collections.IEnumerable):System.Void
---@overload fun(aString:System.String, message:System.String, args:System.Object[]):System.Void
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param aString System.String
---@return System.Void
function NUnit.Framework.Assert.IsNotEmpty(aString)end
---@overload fun(actual:System.UInt32):System.Void
---@overload fun(actual:System.Int64):System.Void
---@overload fun(actual:System.UInt64):System.Void
---@overload fun(actual:System.Double):System.Void
---@overload fun(actual:System.Single):System.Void
---@overload fun(actual:System.Decimal):System.Void
---@overload fun(actual:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@param actual System.Int32
---@return System.Void
function NUnit.Framework.Assert.Zero(actual)end
---@overload fun(actual:System.UInt32):System.Void
---@overload fun(actual:System.Int64):System.Void
---@overload fun(actual:System.UInt64):System.Void
---@overload fun(actual:System.Double):System.Void
---@overload fun(actual:System.Single):System.Void
---@overload fun(actual:System.Decimal):System.Void
---@overload fun(actual:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@param actual System.Int32
---@return System.Void
function NUnit.Framework.Assert.NotZero(actual)end
---@overload fun(actual:System.UInt32):System.Void
---@overload fun(actual:System.Int64):System.Void
---@overload fun(actual:System.UInt64):System.Void
---@overload fun(actual:System.Double):System.Void
---@overload fun(actual:System.Single):System.Void
---@overload fun(actual:System.Decimal):System.Void
---@overload fun(actual:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@param actual System.Int32
---@return System.Void
function NUnit.Framework.Assert.Positive(actual)end
---@overload fun(actual:System.UInt32):System.Void
---@overload fun(actual:System.Int64):System.Void
---@overload fun(actual:System.UInt64):System.Void
---@overload fun(actual:System.Double):System.Void
---@overload fun(actual:System.Single):System.Void
---@overload fun(actual:System.Decimal):System.Void
---@overload fun(actual:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@param actual System.Int32
---@return System.Void
function NUnit.Framework.Assert.Negative(actual)end
---@overload fun(expected:System.Type, actual:System.Object):System.Void
---@overload fun(actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Type, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.IsAssignableFrom(actual)end
---@overload fun(expected:System.Type, actual:System.Object):System.Void
---@overload fun(actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Type, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.IsNotAssignableFrom(actual)end
---@overload fun(expected:System.Type, actual:System.Object):System.Void
---@overload fun(actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Type, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.IsInstanceOf(actual)end
---@overload fun(expected:System.Type, actual:System.Object):System.Void
---@overload fun(actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Type, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.IsNotInstanceOf(actual)end
---@overload fun(expression:NUnit.Framework.Constraints.IResolveConstraint, code:NUnit.Framework.TestDelegate):System.Exception
---@overload fun(expectedExceptionType:System.Type, code:NUnit.Framework.TestDelegate):System.Exception
---@overload fun(code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):any
---@overload fun(expression:NUnit.Framework.Constraints.IResolveConstraint, code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):System.Exception
---@overload fun(expectedExceptionType:System.Type, code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):System.Exception
---@param code NUnit.Framework.TestDelegate
---@return any
function NUnit.Framework.Assert.Throws(code)end
---@overload fun(code:NUnit.Framework.TestDelegate):any
---@overload fun(expectedExceptionType:System.Type, code:NUnit.Framework.TestDelegate):System.Exception
---@overload fun(code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):System.Exception
---@overload fun(code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):any
---@overload fun(expectedExceptionType:System.Type, code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):System.Exception
---@param code NUnit.Framework.TestDelegate
---@return System.Exception
function NUnit.Framework.Assert.Catch(code)end
---@overload fun(code:NUnit.Framework.TestDelegate, message:System.String, args:System.Object[]):System.Void
---@param code NUnit.Framework.TestDelegate
---@return System.Void
function NUnit.Framework.Assert.DoesNotThrow(code)end
---@overload fun(condition:System.Func):System.Void
---@overload fun(condition:System.Boolean, getExceptionMessage:System.Func):System.Void
---@overload fun(condition:System.Func, getExceptionMessage:System.Func):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(code:NUnit.Framework.TestDelegate, constraint:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(condition:System.Func, message:System.String, args:System.Object[]):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint, getExceptionMessage:System.Func):System.Void
---@overload fun(code:NUnit.Framework.TestDelegate, constraint:NUnit.Framework.Constraints.IResolveConstraint, getExceptionMessage:System.Func):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint, getExceptionMessage:System.Func):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@overload fun(code:NUnit.Framework.TestDelegate, constraint:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assert.That(condition)end
---@overload fun(actual:System.Object, expression:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@param actual System.Object
---@param expression NUnit.Framework.Constraints.IResolveConstraint
---@return System.Void
function NUnit.Framework.Assert.ByVal(actual, expression)end
---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.Assert.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.Assert.ReferenceEquals(a, b)end
---@overload fun(message:System.String):System.Void
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@return System.Void
function NUnit.Framework.Assert.Pass()end
---@overload fun(message:System.String):System.Void
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@return System.Void
function NUnit.Framework.Assert.Fail()end
---@overload fun(message:System.String):System.Void
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@return System.Void
function NUnit.Framework.Assert.Ignore()end
---@overload fun(message:System.String):System.Void
---@overload fun(message:System.String, args:System.Object[]):System.Void
---@return System.Void
function NUnit.Framework.Assert.Inconclusive()end
---@overload fun(expected:System.Object, actual:System.Collections.ICollection, message:System.String, args:System.Object[]):System.Void
---@param expected System.Object
---@param actual System.Collections.ICollection
---@return System.Void
function NUnit.Framework.Assert.Contains(expected, actual)end
---@overload fun(arg1:System.UInt32, arg2:System.UInt32):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable):System.Void
---@overload fun(arg1:System.Int32, arg2:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt32, arg2:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable, message:System.String, args:System.Object[]):System.Void
---@param arg1 System.Int32
---@param arg2 System.Int32
---@return System.Void
function NUnit.Framework.Assert.Greater(arg1, arg2)end
---@overload fun(arg1:System.UInt32, arg2:System.UInt32):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable):System.Void
---@overload fun(arg1:System.Int32, arg2:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt32, arg2:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable, message:System.String, args:System.Object[]):System.Void
---@param arg1 System.Int32
---@param arg2 System.Int32
---@return System.Void
function NUnit.Framework.Assert.Less(arg1, arg2)end
---@overload fun(arg1:System.UInt32, arg2:System.UInt32):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable):System.Void
---@overload fun(arg1:System.Int32, arg2:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt32, arg2:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable, message:System.String, args:System.Object[]):System.Void
---@param arg1 System.Int32
---@param arg2 System.Int32
---@return System.Void
function NUnit.Framework.Assert.GreaterOrEqual(arg1, arg2)end
---@overload fun(arg1:System.UInt32, arg2:System.UInt32):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable):System.Void
---@overload fun(arg1:System.Int32, arg2:System.Int32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt32, arg2:System.UInt32, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Int64, arg2:System.Int64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.UInt64, arg2:System.UInt64, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Double, arg2:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Single, arg2:System.Single, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.Decimal, arg2:System.Decimal, message:System.String, args:System.Object[]):System.Void
---@overload fun(arg1:System.IComparable, arg2:System.IComparable, message:System.String, args:System.Object[]):System.Void
---@param arg1 System.Int32
---@param arg2 System.Int32
---@return System.Void
function NUnit.Framework.Assert.LessOrEqual(arg1, arg2)end
---@overload fun(expected:System.Double, actual:System.Nullable, delta:System.Double):System.Void
---@overload fun(expected:System.Object, actual:System.Object):System.Void
---@overload fun(expected:System.Double, actual:System.Double, delta:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Double, actual:System.Nullable, delta:System.Double, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Object, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param expected System.Double
---@param actual System.Double
---@param delta System.Double
---@return System.Void
function NUnit.Framework.Assert.AreEqual(expected, actual, delta)end
---@overload fun(expected:System.Object, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param expected System.Object
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.AreNotEqual(expected, actual)end
---@overload fun(expected:System.Object, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param expected System.Object
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.AreSame(expected, actual)end
---@overload fun(expected:System.Object, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param expected System.Object
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Assert.AreNotSame(expected, actual)end
---@class NUnit.Framework.TestAssemblyDirectoryResolveAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.TestAssemblyDirectoryResolveAttribute = {}
---@type NUnit.Framework.TestAssemblyDirectoryResolveAttribute
CS.NUnit.Framework.TestAssemblyDirectoryResolveAttribute = NUnit.Framework.TestAssemblyDirectoryResolveAttribute

---@class NUnit.Framework.OneTimeTearDownAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.OneTimeTearDownAttribute = {}
---@type NUnit.Framework.OneTimeTearDownAttribute
CS.NUnit.Framework.OneTimeTearDownAttribute = NUnit.Framework.OneTimeTearDownAttribute

---@class NUnit.Framework.TestFixtureTearDownAttribute : NUnit.Framework.OneTimeTearDownAttribute
NUnit.Framework.TestFixtureTearDownAttribute = {}
---@type NUnit.Framework.TestFixtureTearDownAttribute
CS.NUnit.Framework.TestFixtureTearDownAttribute = NUnit.Framework.TestFixtureTearDownAttribute

---@class NUnit.Framework.PlatformAttribute : NUnit.Framework.IncludeExcludeAttribute
NUnit.Framework.PlatformAttribute = {}
---@type NUnit.Framework.PlatformAttribute
CS.NUnit.Framework.PlatformAttribute = NUnit.Framework.PlatformAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.PlatformAttribute:ApplyToTest(test)end
---@class NUnit.Framework.IgnoreAttribute : NUnit.Framework.NUnitAttribute
---@field public Reason System.String @ setter getter
---@field public Until System.String @ setter getter
NUnit.Framework.IgnoreAttribute = {}
---@type NUnit.Framework.IgnoreAttribute
CS.NUnit.Framework.IgnoreAttribute = NUnit.Framework.IgnoreAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.IgnoreAttribute:ApplyToTest(test)end
---@class NUnit.Framework.Does : System.Object
---@field public Not NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public Exist NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint @static  getter
NUnit.Framework.Does = {}
---@type NUnit.Framework.Does
CS.NUnit.Framework.Does = NUnit.Framework.Does

---@overload fun(expected:System.String):NUnit.Framework.Constraints.ContainsConstraint
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Does.Contain(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Does.StartWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Does.EndWith(expected)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Does.Match(pattern)end
---@class NUnit.Framework.SetUpAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.SetUpAttribute = {}
---@type NUnit.Framework.SetUpAttribute
CS.NUnit.Framework.SetUpAttribute = NUnit.Framework.SetUpAttribute

---@class NUnit.Framework.PreTestAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.PreTestAttribute = {}
---@type NUnit.Framework.PreTestAttribute
CS.NUnit.Framework.PreTestAttribute = NUnit.Framework.PreTestAttribute

---@class NUnit.Framework.PostTestAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.PostTestAttribute = {}
---@type NUnit.Framework.PostTestAttribute
CS.NUnit.Framework.PostTestAttribute = NUnit.Framework.PostTestAttribute

---@class NUnit.Framework.RepeatAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.RepeatAttribute = {}
---@type NUnit.Framework.RepeatAttribute
CS.NUnit.Framework.RepeatAttribute = NUnit.Framework.RepeatAttribute

---@param command NUnit.Framework.Internal.Commands.TestCommand
---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.RepeatAttribute:Wrap(command)end
---@class NUnit.Framework.RepeatAttribute.RepeatedTestCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.RepeatAttribute.RepeatedTestCommand = {}
---@type NUnit.Framework.RepeatAttribute.RepeatedTestCommand
CS.NUnit.Framework.RepeatAttribute.RepeatedTestCommand = NUnit.Framework.RepeatAttribute.RepeatedTestCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.RepeatAttribute.RepeatedTestCommand:Execute(context)end
---@class NUnit.Framework.TestCaseData : NUnit.Framework.Internal.TestCaseParameters
NUnit.Framework.TestCaseData = {}
---@type NUnit.Framework.TestCaseData
CS.NUnit.Framework.TestCaseData = NUnit.Framework.TestCaseData

---@param result System.Object
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:Returns(result)end
---@param name System.String
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:SetName(name)end
---@param description System.String
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:SetDescription(description)end
---@param category System.String
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:SetCategory(category)end
---@overload fun(propName:System.String, propValue:System.Double):NUnit.Framework.TestCaseData
---@overload fun(propName:System.String, propValue:System.String):NUnit.Framework.TestCaseData
---@param propName System.String
---@param propValue System.Int32
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:SetProperty(propName, propValue)end
---@overload fun(reason:System.String):NUnit.Framework.TestCaseData
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:Explicit()end
---@param reason System.String
---@return NUnit.Framework.TestCaseData
function NUnit.Framework.TestCaseData:Ignore(reason)end
---@class NUnit.Framework.ResultStateException : System.Exception
---@field public ResultState NUnit.Framework.Interfaces.ResultState @  getter
NUnit.Framework.ResultStateException = {}
---@type NUnit.Framework.ResultStateException
CS.NUnit.Framework.ResultStateException = NUnit.Framework.ResultStateException

---@class NUnit.Framework.InconclusiveException : NUnit.Framework.ResultStateException
---@field public ResultState NUnit.Framework.Interfaces.ResultState @  getter
NUnit.Framework.InconclusiveException = {}
---@type NUnit.Framework.InconclusiveException
CS.NUnit.Framework.InconclusiveException = NUnit.Framework.InconclusiveException

---@class NUnit.Framework.Contains : System.Object
NUnit.Framework.Contains = {}
---@type NUnit.Framework.Contains
CS.NUnit.Framework.Contains = NUnit.Framework.Contains

---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Contains.Item(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.DictionaryContainsKeyConstraint
function NUnit.Framework.Contains.Key(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.DictionaryContainsValueConstraint
function NUnit.Framework.Contains.Value(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Contains.Substring(expected)end
---@class NUnit.Framework.DescriptionAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.DescriptionAttribute = {}
---@type NUnit.Framework.DescriptionAttribute
CS.NUnit.Framework.DescriptionAttribute = NUnit.Framework.DescriptionAttribute

---@class NUnit.Framework.TestFixtureSourceAttribute : NUnit.Framework.NUnitAttribute
---@field public SourceName System.String @ setter getter
---@field public SourceType System.Type @ setter getter
---@field public Category System.String @ setter getter
---@field public MUST_BE_STATIC System.String
NUnit.Framework.TestFixtureSourceAttribute = {}
---@type NUnit.Framework.TestFixtureSourceAttribute
CS.NUnit.Framework.TestFixtureSourceAttribute = NUnit.Framework.TestFixtureSourceAttribute

---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.TestFixtureSourceAttribute:BuildFrom(typeInfo)end
---@param sourceType System.Type
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.TestFixtureSourceAttribute:GetParametersFor(sourceType)end
---@class NUnit.Framework.OneTimeSetUpAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.OneTimeSetUpAttribute = {}
---@type NUnit.Framework.OneTimeSetUpAttribute
CS.NUnit.Framework.OneTimeSetUpAttribute = NUnit.Framework.OneTimeSetUpAttribute

---@class NUnit.Framework.AuthorAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.AuthorAttribute = {}
---@type NUnit.Framework.AuthorAttribute
CS.NUnit.Framework.AuthorAttribute = NUnit.Framework.AuthorAttribute

---@class NUnit.Framework.ActionTargets : System.Enum
NUnit.Framework.ActionTargets = {}
---@type NUnit.Framework.ActionTargets
CS.NUnit.Framework.ActionTargets = NUnit.Framework.ActionTargets

---@return System.Int32 value:0
NUnit.Framework.ActionTargets.Default = 0
---@return System.Int32 value:1
NUnit.Framework.ActionTargets.Test = 1
---@return System.Int32 value:2
NUnit.Framework.ActionTargets.Suite = 2

---@class NUnit.Framework.Has : System.Object
---@field public No NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public All NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public Some NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public None NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public Length NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
---@field public Count NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
---@field public Message NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
---@field public InnerException NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
NUnit.Framework.Has = {}
---@type NUnit.Framework.Has
CS.NUnit.Framework.Has = NUnit.Framework.Has

---@param expectedCount System.Int32
---@return NUnit.Framework.Constraints.ConstraintExpression
function NUnit.Framework.Has.Exactly(expectedCount)end
---@param name System.String
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Has.Property(name)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ResolvableConstraintExpression
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Has.Attribute()end
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Has.Member(expected)end
---@class NUnit.Framework.SequentialAttribute : NUnit.Framework.CombiningStrategyAttribute
NUnit.Framework.SequentialAttribute = {}
---@type NUnit.Framework.SequentialAttribute
CS.NUnit.Framework.SequentialAttribute = NUnit.Framework.SequentialAttribute

---@class NUnit.Framework.RangeAttribute : NUnit.Framework.ValuesAttribute
NUnit.Framework.RangeAttribute = {}
---@type NUnit.Framework.RangeAttribute
CS.NUnit.Framework.RangeAttribute = NUnit.Framework.RangeAttribute

---@class NUnit.Framework.DatapointSourceAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.DatapointSourceAttribute = {}
---@type NUnit.Framework.DatapointSourceAttribute
CS.NUnit.Framework.DatapointSourceAttribute = NUnit.Framework.DatapointSourceAttribute

---@class NUnit.Framework.SpecialValue : System.Enum
NUnit.Framework.SpecialValue = {}
---@type NUnit.Framework.SpecialValue
CS.NUnit.Framework.SpecialValue = NUnit.Framework.SpecialValue

---@return System.Int32 value:0
NUnit.Framework.SpecialValue.Null = 0

---@class NUnit.Framework.TheoryAttribute : NUnit.Framework.CombiningStrategyAttribute
NUnit.Framework.TheoryAttribute = {}
---@type NUnit.Framework.TheoryAttribute
CS.NUnit.Framework.TheoryAttribute = NUnit.Framework.TheoryAttribute

---@class NUnit.Framework.LevelOfParallelismAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.LevelOfParallelismAttribute = {}
---@type NUnit.Framework.LevelOfParallelismAttribute
CS.NUnit.Framework.LevelOfParallelismAttribute = NUnit.Framework.LevelOfParallelismAttribute

---@class NUnit.Framework.RetryAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.RetryAttribute = {}
---@type NUnit.Framework.RetryAttribute
CS.NUnit.Framework.RetryAttribute = NUnit.Framework.RetryAttribute

---@param command NUnit.Framework.Internal.Commands.TestCommand
---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.RetryAttribute:Wrap(command)end
---@class NUnit.Framework.RetryAttribute.RetryCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.RetryAttribute.RetryCommand = {}
---@type NUnit.Framework.RetryAttribute.RetryCommand
CS.NUnit.Framework.RetryAttribute.RetryCommand = NUnit.Framework.RetryAttribute.RetryCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.RetryAttribute.RetryCommand:Execute(context)end
---@class NUnit.Framework.TestParameters : System.Object
---@field public Count System.Int32 @  getter
---@field public Names System.Collections.Generic.ICollection @  getter
---@field public Item System.String @  getter
NUnit.Framework.TestParameters = {}
---@type NUnit.Framework.TestParameters
CS.NUnit.Framework.TestParameters = NUnit.Framework.TestParameters

---@param name System.String
---@return System.Boolean
function NUnit.Framework.TestParameters:Exists(name)end
---@overload fun(name:System.String, defaultValue:System.String):System.String
---@overload fun(name:System.String, defaultValue:any):any
---@param name System.String
---@return System.String
function NUnit.Framework.TestParameters:Get(name)end
---@class NUnit.Framework.SuccessException : NUnit.Framework.ResultStateException
---@field public ResultState NUnit.Framework.Interfaces.ResultState @  getter
NUnit.Framework.SuccessException = {}
---@type NUnit.Framework.SuccessException
CS.NUnit.Framework.SuccessException = NUnit.Framework.SuccessException

---@class NUnit.Framework.RequiresThreadAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.RequiresThreadAttribute = {}
---@type NUnit.Framework.RequiresThreadAttribute
CS.NUnit.Framework.RequiresThreadAttribute = NUnit.Framework.RequiresThreadAttribute

---@class NUnit.Framework.ExplicitAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.ExplicitAttribute = {}
---@type NUnit.Framework.ExplicitAttribute
CS.NUnit.Framework.ExplicitAttribute = NUnit.Framework.ExplicitAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.ExplicitAttribute:ApplyToTest(test)end
---@class NUnit.Framework.TestActionAttribute : System.Attribute
---@field public Targets NUnit.Framework.ActionTargets @  getter
NUnit.Framework.TestActionAttribute = {}
---@type NUnit.Framework.TestActionAttribute
CS.NUnit.Framework.TestActionAttribute = NUnit.Framework.TestActionAttribute

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.TestActionAttribute:BeforeTest(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.TestActionAttribute:AfterTest(test)end
---@class NUnit.Framework.ApartmentAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.ApartmentAttribute = {}
---@type NUnit.Framework.ApartmentAttribute
CS.NUnit.Framework.ApartmentAttribute = NUnit.Framework.ApartmentAttribute

---@class NUnit.Framework.Is : System.Object
---@field public Not NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public All NUnit.Framework.Constraints.ConstraintExpression @static  getter
---@field public Null NUnit.Framework.Constraints.NullConstraint @static  getter
---@field public True NUnit.Framework.Constraints.TrueConstraint @static  getter
---@field public False NUnit.Framework.Constraints.FalseConstraint @static  getter
---@field public Positive NUnit.Framework.Constraints.GreaterThanConstraint @static  getter
---@field public Negative NUnit.Framework.Constraints.LessThanConstraint @static  getter
---@field public Zero NUnit.Framework.Constraints.EqualConstraint @static  getter
---@field public NaN NUnit.Framework.Constraints.NaNConstraint @static  getter
---@field public Empty NUnit.Framework.Constraints.EmptyConstraint @static  getter
---@field public Unique NUnit.Framework.Constraints.UniqueItemsConstraint @static  getter
---@field public BinarySerializable NUnit.Framework.Constraints.BinarySerializableConstraint @static  getter
---@field public XmlSerializable NUnit.Framework.Constraints.XmlSerializableConstraint @static  getter
---@field public Ordered NUnit.Framework.Constraints.CollectionOrderedConstraint @static  getter
NUnit.Framework.Is = {}
---@type NUnit.Framework.Is
CS.NUnit.Framework.Is = NUnit.Framework.Is

---@param expected System.Object
---@return NUnit.Framework.Constraints.EqualConstraint
function NUnit.Framework.Is.EqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.SameAsConstraint
function NUnit.Framework.Is.SameAs(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanConstraint
function NUnit.Framework.Is.GreaterThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Is.GreaterThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Is.AtLeast(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanConstraint
function NUnit.Framework.Is.LessThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Is.LessThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Is.AtMost(expected)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ExactTypeConstraint
---@return NUnit.Framework.Constraints.ExactTypeConstraint
function NUnit.Framework.Is.TypeOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.InstanceOfTypeConstraint
---@return NUnit.Framework.Constraints.InstanceOfTypeConstraint
function NUnit.Framework.Is.InstanceOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableFromConstraint
---@return NUnit.Framework.Constraints.AssignableFromConstraint
function NUnit.Framework.Is.AssignableFrom()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableToConstraint
---@return NUnit.Framework.Constraints.AssignableToConstraint
function NUnit.Framework.Is.AssignableTo()end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionEquivalentConstraint
function NUnit.Framework.Is.EquivalentTo(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSubsetConstraint
function NUnit.Framework.Is.SubsetOf(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSupersetConstraint
function NUnit.Framework.Is.SupersetOf(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Is.StringContaining(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Is.StringStarting(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Is.StringEnding(expected)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Is.StringMatching(pattern)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathConstraint
function NUnit.Framework.Is.SamePath(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubPathConstraint
function NUnit.Framework.Is.SubPathOf(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathOrUnderConstraint
function NUnit.Framework.Is.SamePathOrUnder(expected)end
---@param from System.IComparable
---@param to System.IComparable
---@return NUnit.Framework.Constraints.RangeConstraint
function NUnit.Framework.Is.InRange(from, to)end
---@class NUnit.Framework.Iz : NUnit.Framework.Is
NUnit.Framework.Iz = {}
---@type NUnit.Framework.Iz
CS.NUnit.Framework.Iz = NUnit.Framework.Iz

---@class NUnit.Framework.Assume : System.Object
NUnit.Framework.Assume = {}
---@type NUnit.Framework.Assume
CS.NUnit.Framework.Assume = NUnit.Framework.Assume

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.Assume.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.Assume.ReferenceEquals(a, b)end
---@overload fun(condition:System.Func):System.Void
---@overload fun(condition:System.Boolean, getExceptionMessage:System.Func):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(condition:System.Func, getExceptionMessage:System.Func):System.Void
---@overload fun(code:NUnit.Framework.TestDelegate, constraint:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint, getExceptionMessage:System.Func):System.Void
---@overload fun(condition:System.Func, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint, getExceptionMessage:System.Func):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.Assume.That(condition)end
---@class NUnit.Framework.DirectoryAssert : System.Object
NUnit.Framework.DirectoryAssert = {}
---@type NUnit.Framework.DirectoryAssert
CS.NUnit.Framework.DirectoryAssert = NUnit.Framework.DirectoryAssert

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.DirectoryAssert.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.DirectoryAssert.ReferenceEquals(a, b)end
---@overload fun(expected:System.IO.DirectoryInfo, actual:System.IO.DirectoryInfo, message:System.String, args:System.Object[]):System.Void
---@param expected System.IO.DirectoryInfo
---@param actual System.IO.DirectoryInfo
---@return System.Void
function NUnit.Framework.DirectoryAssert.AreEqual(expected, actual)end
---@overload fun(expected:System.IO.DirectoryInfo, actual:System.IO.DirectoryInfo, message:System.String, args:System.Object[]):System.Void
---@param expected System.IO.DirectoryInfo
---@param actual System.IO.DirectoryInfo
---@return System.Void
function NUnit.Framework.DirectoryAssert.AreNotEqual(expected, actual)end
---@overload fun(actual:System.String):System.Void
---@overload fun(actual:System.IO.DirectoryInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param actual System.IO.DirectoryInfo
---@return System.Void
function NUnit.Framework.DirectoryAssert.Exists(actual)end
---@overload fun(actual:System.String):System.Void
---@overload fun(actual:System.IO.DirectoryInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param actual System.IO.DirectoryInfo
---@return System.Void
function NUnit.Framework.DirectoryAssert.DoesNotExist(actual)end
---@class NUnit.Framework.AssertionException : NUnit.Framework.ResultStateException
---@field public ResultState NUnit.Framework.Interfaces.ResultState @  getter
NUnit.Framework.AssertionException = {}
---@type NUnit.Framework.AssertionException
CS.NUnit.Framework.AssertionException = NUnit.Framework.AssertionException

---@class NUnit.Framework.TimeoutAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.TimeoutAttribute = {}
---@type NUnit.Framework.TimeoutAttribute
CS.NUnit.Framework.TimeoutAttribute = NUnit.Framework.TimeoutAttribute

---@class NUnit.Framework.TestAttribute : NUnit.Framework.NUnitAttribute
---@field public Description System.String @ setter getter
---@field public Author System.String @ setter getter
---@field public TestOf System.Type @ setter getter
---@field public ExpectedResult System.Object @ setter getter
---@field public HasExpectedResult System.Boolean @ setter getter
NUnit.Framework.TestAttribute = {}
---@type NUnit.Framework.TestAttribute
CS.NUnit.Framework.TestAttribute = NUnit.Framework.TestAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.TestAttribute:ApplyToTest(test)end
---@param method NUnit.Framework.Interfaces.IMethodInfo
---@param suite NUnit.Framework.Internal.Test
---@return NUnit.Framework.Internal.TestMethod
function NUnit.Framework.TestAttribute:BuildFrom(method, suite)end
---@class NUnit.Framework.SetUICultureAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.SetUICultureAttribute = {}
---@type NUnit.Framework.SetUICultureAttribute
CS.NUnit.Framework.SetUICultureAttribute = NUnit.Framework.SetUICultureAttribute

---@class NUnit.Framework.RequiresSTAAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.RequiresSTAAttribute = {}
---@type NUnit.Framework.RequiresSTAAttribute
CS.NUnit.Framework.RequiresSTAAttribute = NUnit.Framework.RequiresSTAAttribute

---@class NUnit.Framework.DatapointsAttribute : NUnit.Framework.DatapointSourceAttribute
NUnit.Framework.DatapointsAttribute = {}
---@type NUnit.Framework.DatapointsAttribute
CS.NUnit.Framework.DatapointsAttribute = NUnit.Framework.DatapointsAttribute

---@class NUnit.Framework.ParallelScope : System.Enum
NUnit.Framework.ParallelScope = {}
---@type NUnit.Framework.ParallelScope
CS.NUnit.Framework.ParallelScope = NUnit.Framework.ParallelScope

---@return System.Int32 value:0
NUnit.Framework.ParallelScope.None = 0
---@return System.Int32 value:1
NUnit.Framework.ParallelScope.Self = 1
---@return System.Int32 value:2
NUnit.Framework.ParallelScope.Children = 2

---@class NUnit.Framework.ListMapper : System.Object
NUnit.Framework.ListMapper = {}
---@type NUnit.Framework.ListMapper
CS.NUnit.Framework.ListMapper = NUnit.Framework.ListMapper

---@param name System.String
---@return System.Collections.ICollection
function NUnit.Framework.ListMapper:Property(name)end
---@class NUnit.Framework.List : System.Object
NUnit.Framework.List = {}
---@type NUnit.Framework.List
CS.NUnit.Framework.List = NUnit.Framework.List

---@param actual System.Collections.ICollection
---@return NUnit.Framework.ListMapper
function NUnit.Framework.List.Map(actual)end
---@class NUnit.Framework.CategoryAttribute : NUnit.Framework.NUnitAttribute
---@field public Name System.String @  getter
NUnit.Framework.CategoryAttribute = {}
---@type NUnit.Framework.CategoryAttribute
CS.NUnit.Framework.CategoryAttribute = NUnit.Framework.CategoryAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.CategoryAttribute:ApplyToTest(test)end
---@class NUnit.Framework.TestOfAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.TestOfAttribute = {}
---@type NUnit.Framework.TestOfAttribute
CS.NUnit.Framework.TestOfAttribute = NUnit.Framework.TestOfAttribute

---@class NUnit.Framework.OrderAttribute : NUnit.Framework.NUnitAttribute
---@field public Order System.Int32
NUnit.Framework.OrderAttribute = {}
---@type NUnit.Framework.OrderAttribute
CS.NUnit.Framework.OrderAttribute = NUnit.Framework.OrderAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function NUnit.Framework.OrderAttribute:ApplyToTest(test)end
---@class NUnit.Framework.SingleThreadedAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.SingleThreadedAttribute = {}
---@type NUnit.Framework.SingleThreadedAttribute
CS.NUnit.Framework.SingleThreadedAttribute = NUnit.Framework.SingleThreadedAttribute

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Void
function NUnit.Framework.SingleThreadedAttribute:ApplyToContext(context)end
---@class NUnit.Framework.TestFixtureSetUpAttribute : NUnit.Framework.OneTimeSetUpAttribute
NUnit.Framework.TestFixtureSetUpAttribute = {}
---@type NUnit.Framework.TestFixtureSetUpAttribute
CS.NUnit.Framework.TestFixtureSetUpAttribute = NUnit.Framework.TestFixtureSetUpAttribute

---@class NUnit.Framework.DatapointAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.DatapointAttribute = {}
---@type NUnit.Framework.DatapointAttribute
CS.NUnit.Framework.DatapointAttribute = NUnit.Framework.DatapointAttribute

---@class NUnit.Framework.AssertionHelper : NUnit.Framework.Constraints.ConstraintFactory
NUnit.Framework.AssertionHelper = {}
---@type NUnit.Framework.AssertionHelper
CS.NUnit.Framework.AssertionHelper = NUnit.Framework.AssertionHelper

---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(code:NUnit.Framework.TestDelegate, constraint:NUnit.Framework.Constraints.IResolveConstraint):System.Void
---@overload fun(condition:System.Boolean, message:System.String, args:System.Object[]):System.Void
---@overload fun(del:any, expr:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@param condition System.Boolean
---@return System.Void
function NUnit.Framework.AssertionHelper:Expect(condition)end
---@overload fun(actual:any, expression:NUnit.Framework.Constraints.IResolveConstraint, message:System.String, args:System.Object[]):System.Void
---@param actual any
---@param expression NUnit.Framework.Constraints.IResolveConstraint
---@return System.Void
function NUnit.Framework.AssertionHelper.Expect(actual, expression)end
---@param original System.Collections.ICollection
---@return NUnit.Framework.ListMapper
function NUnit.Framework.AssertionHelper:Map(original)end
---@class NUnit.Framework.CollectionAssert : System.Object
NUnit.Framework.CollectionAssert = {}
---@type NUnit.Framework.CollectionAssert
CS.NUnit.Framework.CollectionAssert = NUnit.Framework.CollectionAssert

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.CollectionAssert.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.CollectionAssert.ReferenceEquals(a, b)end
---@overload fun(collection:System.Collections.IEnumerable, expectedType:System.Type, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@param expectedType System.Type
---@return System.Void
function NUnit.Framework.CollectionAssert.AllItemsAreInstancesOfType(collection, expectedType)end
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AllItemsAreNotNull(collection)end
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AllItemsAreUnique(collection)end
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, comparer:System.Collections.IComparer):System.Void
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, comparer:System.Collections.IComparer, message:System.String, args:System.Object[]):System.Void
---@param expected System.Collections.IEnumerable
---@param actual System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AreEqual(expected, actual)end
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param expected System.Collections.IEnumerable
---@param actual System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AreEquivalent(expected, actual)end
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, comparer:System.Collections.IComparer):System.Void
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, comparer:System.Collections.IComparer, message:System.String, args:System.Object[]):System.Void
---@param expected System.Collections.IEnumerable
---@param actual System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AreNotEqual(expected, actual)end
---@overload fun(expected:System.Collections.IEnumerable, actual:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param expected System.Collections.IEnumerable
---@param actual System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.AreNotEquivalent(expected, actual)end
---@overload fun(collection:System.Collections.IEnumerable, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@param actual System.Object
---@return System.Void
function NUnit.Framework.CollectionAssert.Contains(collection, actual)end
---@overload fun(collection:System.Collections.IEnumerable, actual:System.Object, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@param actual System.Object
---@return System.Void
function NUnit.Framework.CollectionAssert.DoesNotContain(collection, actual)end
---@overload fun(subset:System.Collections.IEnumerable, superset:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param subset System.Collections.IEnumerable
---@param superset System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsNotSubsetOf(subset, superset)end
---@overload fun(subset:System.Collections.IEnumerable, superset:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param subset System.Collections.IEnumerable
---@param superset System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsSubsetOf(subset, superset)end
---@overload fun(superset:System.Collections.IEnumerable, subset:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param superset System.Collections.IEnumerable
---@param subset System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsNotSupersetOf(superset, subset)end
---@overload fun(superset:System.Collections.IEnumerable, subset:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param superset System.Collections.IEnumerable
---@param subset System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsSupersetOf(superset, subset)end
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsEmpty(collection)end
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsNotEmpty(collection)end
---@overload fun(collection:System.Collections.IEnumerable, comparer:System.Collections.IComparer):System.Void
---@overload fun(collection:System.Collections.IEnumerable, message:System.String, args:System.Object[]):System.Void
---@overload fun(collection:System.Collections.IEnumerable, comparer:System.Collections.IComparer, message:System.String, args:System.Object[]):System.Void
---@param collection System.Collections.IEnumerable
---@return System.Void
function NUnit.Framework.CollectionAssert.IsOrdered(collection)end
---@class NUnit.Framework.TestCaseSourceAttribute : NUnit.Framework.NUnitAttribute
---@field public MethodParams System.Object[] @ setter getter
---@field public SourceName System.String @ setter getter
---@field public SourceType System.Type @ setter getter
---@field public Category System.String @ setter getter
NUnit.Framework.TestCaseSourceAttribute = {}
---@type NUnit.Framework.TestCaseSourceAttribute
CS.NUnit.Framework.TestCaseSourceAttribute = NUnit.Framework.TestCaseSourceAttribute

---@param method NUnit.Framework.Interfaces.IMethodInfo
---@param suite NUnit.Framework.Internal.Test
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.TestCaseSourceAttribute:BuildFrom(method, suite)end
---@class NUnit.Framework.ParallelizableAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.ParallelizableAttribute = {}
---@type NUnit.Framework.ParallelizableAttribute
CS.NUnit.Framework.ParallelizableAttribute = NUnit.Framework.ParallelizableAttribute

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Void
function NUnit.Framework.ParallelizableAttribute:ApplyToContext(context)end
---@class NUnit.Framework.Throws : System.Object
---@field public Exception NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
---@field public InnerException NUnit.Framework.Constraints.ResolvableConstraintExpression @static  getter
---@field public TargetInvocationException NUnit.Framework.Constraints.ExactTypeConstraint @static  getter
---@field public ArgumentException NUnit.Framework.Constraints.ExactTypeConstraint @static  getter
---@field public ArgumentNullException NUnit.Framework.Constraints.ExactTypeConstraint @static  getter
---@field public InvalidOperationException NUnit.Framework.Constraints.ExactTypeConstraint @static  getter
---@field public Nothing NUnit.Framework.Constraints.ThrowsNothingConstraint @static  getter
NUnit.Framework.Throws = {}
---@type NUnit.Framework.Throws
CS.NUnit.Framework.Throws = NUnit.Framework.Throws

---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ExactTypeConstraint
---@return NUnit.Framework.Constraints.ExactTypeConstraint
function NUnit.Framework.Throws.TypeOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.InstanceOfTypeConstraint
---@return NUnit.Framework.Constraints.InstanceOfTypeConstraint
function NUnit.Framework.Throws.InstanceOf()end
---@class NUnit.Framework.GlobalSettings : System.Object
---@field public DefaultFloatingPointTolerance System.Double
NUnit.Framework.GlobalSettings = {}
---@type NUnit.Framework.GlobalSettings
CS.NUnit.Framework.GlobalSettings = NUnit.Framework.GlobalSettings

---@class NUnit.Framework.FileAssert : System.Object
NUnit.Framework.FileAssert = {}
---@type NUnit.Framework.FileAssert
CS.NUnit.Framework.FileAssert = NUnit.Framework.FileAssert

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function NUnit.Framework.FileAssert.Equals(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Void
function NUnit.Framework.FileAssert.ReferenceEquals(a, b)end
---@overload fun(expected:System.IO.FileInfo, actual:System.IO.FileInfo):System.Void
---@overload fun(expected:System.String, actual:System.String):System.Void
---@overload fun(expected:System.IO.Stream, actual:System.IO.Stream, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.IO.FileInfo, actual:System.IO.FileInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.IO.Stream
---@param actual System.IO.Stream
---@return System.Void
function NUnit.Framework.FileAssert.AreEqual(expected, actual)end
---@overload fun(expected:System.IO.FileInfo, actual:System.IO.FileInfo):System.Void
---@overload fun(expected:System.String, actual:System.String):System.Void
---@overload fun(expected:System.IO.Stream, actual:System.IO.Stream, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.IO.FileInfo, actual:System.IO.FileInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(expected:System.String, actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param expected System.IO.Stream
---@param actual System.IO.Stream
---@return System.Void
function NUnit.Framework.FileAssert.AreNotEqual(expected, actual)end
---@overload fun(actual:System.String):System.Void
---@overload fun(actual:System.IO.FileInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param actual System.IO.FileInfo
---@return System.Void
function NUnit.Framework.FileAssert.Exists(actual)end
---@overload fun(actual:System.String):System.Void
---@overload fun(actual:System.IO.FileInfo, message:System.String, args:System.Object[]):System.Void
---@overload fun(actual:System.String, message:System.String, args:System.Object[]):System.Void
---@param actual System.IO.FileInfo
---@return System.Void
function NUnit.Framework.FileAssert.DoesNotExist(actual)end
---@class NUnit.Framework.IgnoreException : NUnit.Framework.ResultStateException
---@field public ResultState NUnit.Framework.Interfaces.ResultState @  getter
NUnit.Framework.IgnoreException = {}
---@type NUnit.Framework.IgnoreException
CS.NUnit.Framework.IgnoreException = NUnit.Framework.IgnoreException

---@class NUnit.Framework.TearDownAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.TearDownAttribute = {}
---@type NUnit.Framework.TearDownAttribute
CS.NUnit.Framework.TearDownAttribute = NUnit.Framework.TearDownAttribute

---@class NUnit.Framework.CombinatorialAttribute : NUnit.Framework.CombiningStrategyAttribute
NUnit.Framework.CombinatorialAttribute = {}
---@type NUnit.Framework.CombinatorialAttribute
CS.NUnit.Framework.CombinatorialAttribute = NUnit.Framework.CombinatorialAttribute

---@class NUnit.Framework.ValueSourceAttribute : NUnit.Framework.DataAttribute
---@field public SourceName System.String @ setter getter
---@field public SourceType System.Type @ setter getter
NUnit.Framework.ValueSourceAttribute = {}
---@type NUnit.Framework.ValueSourceAttribute
CS.NUnit.Framework.ValueSourceAttribute = NUnit.Framework.ValueSourceAttribute

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.ValueSourceAttribute:GetData(parameter)end
---@class NUnit.Framework.SetCultureAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.SetCultureAttribute = {}
---@type NUnit.Framework.SetCultureAttribute
CS.NUnit.Framework.SetCultureAttribute = NUnit.Framework.SetCultureAttribute

---@class NUnit.Framework.RandomAttribute : NUnit.Framework.DataAttribute
NUnit.Framework.RandomAttribute = {}
---@type NUnit.Framework.RandomAttribute
CS.NUnit.Framework.RandomAttribute = NUnit.Framework.RandomAttribute

---@param parameter NUnit.Framework.Interfaces.IParameterInfo
---@return System.Collections.IEnumerable
function NUnit.Framework.RandomAttribute:GetData(parameter)end
---@class NUnit.Framework.SetUpFixtureAttribute : NUnit.Framework.NUnitAttribute
NUnit.Framework.SetUpFixtureAttribute = {}
---@type NUnit.Framework.SetUpFixtureAttribute
CS.NUnit.Framework.SetUpFixtureAttribute = NUnit.Framework.SetUpFixtureAttribute

---@param typeInfo NUnit.Framework.Interfaces.ITypeInfo
---@return System.Collections.Generic.IEnumerable
function NUnit.Framework.SetUpFixtureAttribute:BuildFrom(typeInfo)end
---@class NUnit.Framework.RequiresMTAAttribute : NUnit.Framework.PropertyAttribute
NUnit.Framework.RequiresMTAAttribute = {}
---@type NUnit.Framework.RequiresMTAAttribute
CS.NUnit.Framework.RequiresMTAAttribute = NUnit.Framework.RequiresMTAAttribute

---@class NUnit.Framework.TestFixtureData : NUnit.Framework.Internal.TestFixtureParameters
NUnit.Framework.TestFixtureData = {}
---@type NUnit.Framework.TestFixtureData
CS.NUnit.Framework.TestFixtureData = NUnit.Framework.TestFixtureData

---@overload fun(reason:System.String):NUnit.Framework.TestFixtureData
---@return NUnit.Framework.TestFixtureData
function NUnit.Framework.TestFixtureData:Explicit()end
---@param reason System.String
---@return NUnit.Framework.TestFixtureData
function NUnit.Framework.TestFixtureData:Ignore(reason)end
