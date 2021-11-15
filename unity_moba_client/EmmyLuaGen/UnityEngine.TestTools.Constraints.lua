---@class UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint = {}
---@type UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
CS.UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint = UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint

---@overload fun(del:any):NUnit.Framework.Constraints.ConstraintResult
---@param obj System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint:ApplyTo(obj)end
---@class UnityEngine.TestTools.Constraints.ConstraintExtensions : System.Object
UnityEngine.TestTools.Constraints.ConstraintExtensions = {}
---@type UnityEngine.TestTools.Constraints.ConstraintExtensions
CS.UnityEngine.TestTools.Constraints.ConstraintExtensions = UnityEngine.TestTools.Constraints.ConstraintExtensions

---@class UnityEngine.TestTools.Constraints.Is : NUnit.Framework.Is
UnityEngine.TestTools.Constraints.Is = {}
---@type UnityEngine.TestTools.Constraints.Is
CS.UnityEngine.TestTools.Constraints.Is = UnityEngine.TestTools.Constraints.Is

---@return UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
function UnityEngine.TestTools.Constraints.Is.AllocatingGCMemory()end
