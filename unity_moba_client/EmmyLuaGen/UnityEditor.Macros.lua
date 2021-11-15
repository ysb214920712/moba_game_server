---@class UnityEditor.Macros.MacroEvaluator : System.Object
UnityEditor.Macros.MacroEvaluator = {}
---@type UnityEditor.Macros.MacroEvaluator
CS.UnityEditor.Macros.MacroEvaluator = UnityEditor.Macros.MacroEvaluator

---@param macro System.String
---@return System.String
function UnityEditor.Macros.MacroEvaluator.Eval(macro)end
---@class UnityEditor.Macros.MethodEvaluator : System.Object
UnityEditor.Macros.MethodEvaluator = {}
---@type UnityEditor.Macros.MethodEvaluator
CS.UnityEditor.Macros.MethodEvaluator = UnityEditor.Macros.MethodEvaluator

---@param assemblyFile System.String
---@param typeName System.String
---@param methodName System.String
---@param paramTypes System.Type[]
---@param args System.Object[]
---@return System.Object
function UnityEditor.Macros.MethodEvaluator.Eval(assemblyFile, typeName, methodName, paramTypes, args)end
---@param parcel System.String
---@return System.Object
function UnityEditor.Macros.MethodEvaluator.ExecuteExternalCode(parcel)end
