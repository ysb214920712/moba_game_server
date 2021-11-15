---@class UnityEditor.AnimatedValues.BaseAnimValue : System.Object
---@field public isAnimating System.Boolean @  getter
---@field public target any @ setter getter
---@field public value any @ setter getter
---@field public speed System.Single
---@field public valueChanged UnityEngine.Events.UnityEvent
UnityEditor.AnimatedValues.BaseAnimValue = {}
---@type UnityEditor.AnimatedValues.BaseAnimValue
CS.UnityEditor.AnimatedValues.BaseAnimValue = UnityEditor.AnimatedValues.BaseAnimValue

---@class UnityEditor.AnimatedValues.AnimFloat : UnityEditor.AnimatedValues.BaseAnimValue
UnityEditor.AnimatedValues.AnimFloat = {}
---@type UnityEditor.AnimatedValues.AnimFloat
CS.UnityEditor.AnimatedValues.AnimFloat = UnityEditor.AnimatedValues.AnimFloat

---@class UnityEditor.AnimatedValues.AnimVector3 : UnityEditor.AnimatedValues.BaseAnimValue
UnityEditor.AnimatedValues.AnimVector3 = {}
---@type UnityEditor.AnimatedValues.AnimVector3
CS.UnityEditor.AnimatedValues.AnimVector3 = UnityEditor.AnimatedValues.AnimVector3

---@class UnityEditor.AnimatedValues.AnimBool : UnityEditor.AnimatedValues.BaseAnimValue
---@field public faded System.Single @  getter
UnityEditor.AnimatedValues.AnimBool = {}
---@type UnityEditor.AnimatedValues.AnimBool
CS.UnityEditor.AnimatedValues.AnimBool = UnityEditor.AnimatedValues.AnimBool

---@param from System.Single
---@param to System.Single
---@return System.Single
function UnityEditor.AnimatedValues.AnimBool:Fade(from, to)end
---@class UnityEditor.AnimatedValues.AnimQuaternion : UnityEditor.AnimatedValues.BaseAnimValue
UnityEditor.AnimatedValues.AnimQuaternion = {}
---@type UnityEditor.AnimatedValues.AnimQuaternion
CS.UnityEditor.AnimatedValues.AnimQuaternion = UnityEditor.AnimatedValues.AnimQuaternion

