---@class UnityEngine.Experimental.LowLevel.PlayerLoopSystem : System.ValueType
---@field public type System.Type
---@field public subSystemList UnityEngine.Experimental.LowLevel.PlayerLoopSystem[]
---@field public updateDelegate UnityEngine.Experimental.LowLevel.PlayerLoopSystem.UpdateFunction
---@field public updateFunction System.IntPtr
---@field public loopConditionFunction System.IntPtr
UnityEngine.Experimental.LowLevel.PlayerLoopSystem = {}
---@type UnityEngine.Experimental.LowLevel.PlayerLoopSystem
CS.UnityEngine.Experimental.LowLevel.PlayerLoopSystem = UnityEngine.Experimental.LowLevel.PlayerLoopSystem

---@class UnityEngine.Experimental.LowLevel.PlayerLoop : System.Object
UnityEngine.Experimental.LowLevel.PlayerLoop = {}
---@type UnityEngine.Experimental.LowLevel.PlayerLoop
CS.UnityEngine.Experimental.LowLevel.PlayerLoop = UnityEngine.Experimental.LowLevel.PlayerLoop

---@return UnityEngine.Experimental.LowLevel.PlayerLoopSystem
function UnityEngine.Experimental.LowLevel.PlayerLoop.GetDefaultPlayerLoop()end
---@param loop UnityEngine.Experimental.LowLevel.PlayerLoopSystem
---@return System.Void
function UnityEngine.Experimental.LowLevel.PlayerLoop.SetPlayerLoop(loop)end
