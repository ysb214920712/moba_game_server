---@class UnityEngine.Assertions.Comparers.FloatComparer : System.Object
---@field public s_ComparerWithDefaultTolerance UnityEngine.Assertions.Comparers.FloatComparer
---@field public kEpsilon System.Single
UnityEngine.Assertions.Comparers.FloatComparer = {}
---@type UnityEngine.Assertions.Comparers.FloatComparer
CS.UnityEngine.Assertions.Comparers.FloatComparer = UnityEngine.Assertions.Comparers.FloatComparer

---@param a System.Single
---@param b System.Single
---@return System.Boolean
function UnityEngine.Assertions.Comparers.FloatComparer:Equals(a, b)end
---@param obj System.Single
---@return System.Int32
function UnityEngine.Assertions.Comparers.FloatComparer:GetHashCode(obj)end
---@param expected System.Single
---@param actual System.Single
---@param error System.Single
---@return System.Boolean
function UnityEngine.Assertions.Comparers.FloatComparer.AreEqual(expected, actual, error)end
---@param expected System.Single
---@param actual System.Single
---@param error System.Single
---@return System.Boolean
function UnityEngine.Assertions.Comparers.FloatComparer.AreEqualRelative(expected, actual, error)end
