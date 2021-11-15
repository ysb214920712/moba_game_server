---@class UnityEngine.Assertions.Assert : System.Object
---@field public raiseExceptions System.Boolean
UnityEngine.Assertions.Assert = {}
---@type UnityEngine.Assertions.Assert
CS.UnityEngine.Assertions.Assert = UnityEngine.Assertions.Assert

---@param obj1 System.Object
---@param obj2 System.Object
---@return System.Boolean
function UnityEngine.Assertions.Assert.Equals(obj1, obj2)end
---@param obj1 System.Object
---@param obj2 System.Object
---@return System.Boolean
function UnityEngine.Assertions.Assert.ReferenceEquals(obj1, obj2)end
---@overload fun(condition:System.Boolean, message:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function UnityEngine.Assertions.Assert.IsTrue(condition)end
---@overload fun(condition:System.Boolean, message:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function UnityEngine.Assertions.Assert.IsFalse(condition)end
---@overload fun(expected:System.Single, actual:System.Single, tolerance:System.Single):System.Void
---@overload fun(expected:System.Single, actual:System.Single, message:System.String):System.Void
---@overload fun(expected:System.Single, actual:System.Single, tolerance:System.Single, message:System.String):System.Void
---@param expected System.Single
---@param actual System.Single
---@return System.Void
function UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual)end
---@overload fun(expected:System.Single, actual:System.Single, tolerance:System.Single):System.Void
---@overload fun(expected:System.Single, actual:System.Single, message:System.String):System.Void
---@overload fun(expected:System.Single, actual:System.Single, tolerance:System.Single, message:System.String):System.Void
---@param expected System.Single
---@param actual System.Single
---@return System.Void
function UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual)end
---@overload fun(expected:System.Byte, actual:System.Byte):System.Void
---@overload fun(expected:System.Char, actual:System.Char):System.Void
---@overload fun(expected:System.Int16, actual:System.Int16):System.Void
---@overload fun(expected:System.UInt16, actual:System.UInt16):System.Void
---@overload fun(expected:System.Int32, actual:System.Int32):System.Void
---@overload fun(expected:System.UInt32, actual:System.UInt32):System.Void
---@overload fun(expected:System.Int64, actual:System.Int64):System.Void
---@overload fun(expected:System.UInt64, actual:System.UInt64):System.Void
---@overload fun(expected:System.SByte, actual:System.SByte, message:System.String):System.Void
---@overload fun(expected:System.Byte, actual:System.Byte, message:System.String):System.Void
---@overload fun(expected:System.Char, actual:System.Char, message:System.String):System.Void
---@overload fun(expected:System.Int16, actual:System.Int16, message:System.String):System.Void
---@overload fun(expected:System.UInt16, actual:System.UInt16, message:System.String):System.Void
---@overload fun(expected:System.Int32, actual:System.Int32, message:System.String):System.Void
---@overload fun(expected:System.UInt32, actual:System.UInt32, message:System.String):System.Void
---@overload fun(expected:System.Int64, actual:System.Int64, message:System.String):System.Void
---@overload fun(expected:System.UInt64, actual:System.UInt64, message:System.String):System.Void
---@overload fun(expected:any, actual:any):System.Void
---@overload fun(expected:any, actual:any, message:System.String):System.Void
---@overload fun(expected:UnityEngine.Object, actual:UnityEngine.Object, message:System.String):System.Void
---@overload fun(expected:any, actual:any, message:System.String, comparer:any):System.Void
---@param expected System.SByte
---@param actual System.SByte
---@return System.Void
function UnityEngine.Assertions.Assert.AreEqual(expected, actual)end
---@overload fun(expected:System.Byte, actual:System.Byte):System.Void
---@overload fun(expected:System.Char, actual:System.Char):System.Void
---@overload fun(expected:System.Int16, actual:System.Int16):System.Void
---@overload fun(expected:System.UInt16, actual:System.UInt16):System.Void
---@overload fun(expected:System.Int32, actual:System.Int32):System.Void
---@overload fun(expected:System.UInt32, actual:System.UInt32):System.Void
---@overload fun(expected:System.Int64, actual:System.Int64):System.Void
---@overload fun(expected:System.UInt64, actual:System.UInt64):System.Void
---@overload fun(expected:System.SByte, actual:System.SByte, message:System.String):System.Void
---@overload fun(expected:System.Byte, actual:System.Byte, message:System.String):System.Void
---@overload fun(expected:System.Char, actual:System.Char, message:System.String):System.Void
---@overload fun(expected:System.Int16, actual:System.Int16, message:System.String):System.Void
---@overload fun(expected:System.UInt16, actual:System.UInt16, message:System.String):System.Void
---@overload fun(expected:System.Int32, actual:System.Int32, message:System.String):System.Void
---@overload fun(expected:System.UInt32, actual:System.UInt32, message:System.String):System.Void
---@overload fun(expected:System.Int64, actual:System.Int64, message:System.String):System.Void
---@overload fun(expected:System.UInt64, actual:System.UInt64, message:System.String):System.Void
---@overload fun(expected:any, actual:any):System.Void
---@overload fun(expected:any, actual:any, message:System.String):System.Void
---@overload fun(expected:UnityEngine.Object, actual:UnityEngine.Object, message:System.String):System.Void
---@overload fun(expected:any, actual:any, message:System.String, comparer:any):System.Void
---@param expected System.SByte
---@param actual System.SByte
---@return System.Void
function UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)end
---@overload fun(value:any, message:System.String):System.Void
---@overload fun(value:UnityEngine.Object, message:System.String):System.Void
---@param value any
---@return System.Void
function UnityEngine.Assertions.Assert.IsNull(value)end
---@overload fun(value:any, message:System.String):System.Void
---@overload fun(value:UnityEngine.Object, message:System.String):System.Void
---@param value any
---@return System.Void
function UnityEngine.Assertions.Assert.IsNotNull(value)end
---@class UnityEngine.Assertions.AssertionException : System.Exception
---@field public Message System.String @  getter
UnityEngine.Assertions.AssertionException = {}
---@type UnityEngine.Assertions.AssertionException
CS.UnityEngine.Assertions.AssertionException = UnityEngine.Assertions.AssertionException

