---@class UnityEngine.TestTools.Utils.ColorEqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.ColorEqualityComparer @static  getter
UnityEngine.TestTools.Utils.ColorEqualityComparer = {}
---@type UnityEngine.TestTools.Utils.ColorEqualityComparer
CS.UnityEngine.TestTools.Utils.ColorEqualityComparer = UnityEngine.TestTools.Utils.ColorEqualityComparer

---@param expected UnityEngine.Color
---@param actual UnityEngine.Color
---@return System.Boolean
function UnityEngine.TestTools.Utils.ColorEqualityComparer:Equals(expected, actual)end
---@param color UnityEngine.Color
---@return System.Int32
function UnityEngine.TestTools.Utils.ColorEqualityComparer:GetHashCode(color)end
---@class UnityEngine.TestTools.Utils.FloatEqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.FloatEqualityComparer @static  getter
UnityEngine.TestTools.Utils.FloatEqualityComparer = {}
---@type UnityEngine.TestTools.Utils.FloatEqualityComparer
CS.UnityEngine.TestTools.Utils.FloatEqualityComparer = UnityEngine.TestTools.Utils.FloatEqualityComparer

---@param expected System.Single
---@param actual System.Single
---@return System.Boolean
function UnityEngine.TestTools.Utils.FloatEqualityComparer:Equals(expected, actual)end
---@param value System.Single
---@return System.Int32
function UnityEngine.TestTools.Utils.FloatEqualityComparer:GetHashCode(value)end
---@class UnityEngine.TestTools.Utils.QuaternionEqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.QuaternionEqualityComparer @static  getter
UnityEngine.TestTools.Utils.QuaternionEqualityComparer = {}
---@type UnityEngine.TestTools.Utils.QuaternionEqualityComparer
CS.UnityEngine.TestTools.Utils.QuaternionEqualityComparer = UnityEngine.TestTools.Utils.QuaternionEqualityComparer

---@param expected UnityEngine.Quaternion
---@param actual UnityEngine.Quaternion
---@return System.Boolean
function UnityEngine.TestTools.Utils.QuaternionEqualityComparer:Equals(expected, actual)end
---@param quaternion UnityEngine.Quaternion
---@return System.Int32
function UnityEngine.TestTools.Utils.QuaternionEqualityComparer:GetHashCode(quaternion)end
---@class UnityEngine.TestTools.Utils.Utils : System.Object
UnityEngine.TestTools.Utils.Utils = {}
---@type UnityEngine.TestTools.Utils.Utils
CS.UnityEngine.TestTools.Utils.Utils = UnityEngine.TestTools.Utils.Utils

---@param expected System.Single
---@param actual System.Single
---@param allowedRelativeError System.Single
---@return System.Boolean
function UnityEngine.TestTools.Utils.Utils.AreFloatsEqual(expected, actual, allowedRelativeError)end
---@param expected System.Single
---@param actual System.Single
---@param allowedAbsoluteError System.Single
---@return System.Boolean
function UnityEngine.TestTools.Utils.Utils.AreFloatsEqualAbsoluteError(expected, actual, allowedAbsoluteError)end
---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function UnityEngine.TestTools.Utils.Utils.CreatePrimitive(type)end
---@class UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator @static  getter
UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator = {}
---@type UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator

---@param expected UnityEngine.Vector2
---@param actual UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator:Equals(expected, actual)end
---@param vec2 UnityEngine.Vector2
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator:GetHashCode(vec2)end
---@class UnityEngine.TestTools.Utils.Vector2EqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector2EqualityComparer @static  getter
UnityEngine.TestTools.Utils.Vector2EqualityComparer = {}
---@type UnityEngine.TestTools.Utils.Vector2EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector2EqualityComparer = UnityEngine.TestTools.Utils.Vector2EqualityComparer

---@param expected UnityEngine.Vector2
---@param actual UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector2EqualityComparer:Equals(expected, actual)end
---@param vec2 UnityEngine.Vector2
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector2EqualityComparer:GetHashCode(vec2)end
---@class UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator @static  getter
UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator = {}
---@type UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator

---@param expected UnityEngine.Vector3
---@param actual UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator:Equals(expected, actual)end
---@param vec3 UnityEngine.Vector3
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator:GetHashCode(vec3)end
---@class UnityEngine.TestTools.Utils.Vector3EqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector3EqualityComparer @static  getter
UnityEngine.TestTools.Utils.Vector3EqualityComparer = {}
---@type UnityEngine.TestTools.Utils.Vector3EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector3EqualityComparer = UnityEngine.TestTools.Utils.Vector3EqualityComparer

---@param expected UnityEngine.Vector3
---@param actual UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector3EqualityComparer:Equals(expected, actual)end
---@param vec3 UnityEngine.Vector3
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector3EqualityComparer:GetHashCode(vec3)end
---@class UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator @static  getter
UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator = {}
---@type UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator

---@param expected UnityEngine.Vector4
---@param actual UnityEngine.Vector4
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator:Equals(expected, actual)end
---@param vec4 UnityEngine.Vector4
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator:GetHashCode(vec4)end
---@class UnityEngine.TestTools.Utils.Vector4EqualityComparer : System.Object
---@field public Instance UnityEngine.TestTools.Utils.Vector4EqualityComparer @static  getter
UnityEngine.TestTools.Utils.Vector4EqualityComparer = {}
---@type UnityEngine.TestTools.Utils.Vector4EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector4EqualityComparer = UnityEngine.TestTools.Utils.Vector4EqualityComparer

---@param expected UnityEngine.Vector4
---@param actual UnityEngine.Vector4
---@return System.Boolean
function UnityEngine.TestTools.Utils.Vector4EqualityComparer:Equals(expected, actual)end
---@param vec4 UnityEngine.Vector4
---@return System.Int32
function UnityEngine.TestTools.Utils.Vector4EqualityComparer:GetHashCode(vec4)end
