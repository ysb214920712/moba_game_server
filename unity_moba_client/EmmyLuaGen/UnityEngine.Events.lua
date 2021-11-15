---@class UnityEngine.Events.PersistentListenerMode : System.Enum
UnityEngine.Events.PersistentListenerMode = {}
---@type UnityEngine.Events.PersistentListenerMode
CS.UnityEngine.Events.PersistentListenerMode = UnityEngine.Events.PersistentListenerMode

---@return System.Int32 value:0
UnityEngine.Events.PersistentListenerMode.EventDefined = 0
---@return System.Int32 value:1
UnityEngine.Events.PersistentListenerMode.Void = 1
---@return System.Int32 value:2
UnityEngine.Events.PersistentListenerMode.Object = 2
---@return System.Int32 value:3
UnityEngine.Events.PersistentListenerMode.Int = 3
---@return System.Int32 value:4
UnityEngine.Events.PersistentListenerMode.Float = 4
---@return System.Int32 value:5
UnityEngine.Events.PersistentListenerMode.String = 5
---@return System.Int32 value:6
UnityEngine.Events.PersistentListenerMode.Bool = 6

---@class UnityEngine.Events.UnityEventCallState : System.Enum
UnityEngine.Events.UnityEventCallState = {}
---@type UnityEngine.Events.UnityEventCallState
CS.UnityEngine.Events.UnityEventCallState = UnityEngine.Events.UnityEventCallState

---@return System.Int32 value:0
UnityEngine.Events.UnityEventCallState.Off = 0
---@return System.Int32 value:1
UnityEngine.Events.UnityEventCallState.EditorAndRuntime = 1
---@return System.Int32 value:2
UnityEngine.Events.UnityEventCallState.RuntimeOnly = 2

---@class UnityEngine.Events.UnityEventBase : System.Object
UnityEngine.Events.UnityEventBase = {}
---@type UnityEngine.Events.UnityEventBase
CS.UnityEngine.Events.UnityEventBase = UnityEngine.Events.UnityEventBase

---@return System.Int32
function UnityEngine.Events.UnityEventBase:GetPersistentEventCount()end
---@param index System.Int32
---@return UnityEngine.Object
function UnityEngine.Events.UnityEventBase:GetPersistentTarget(index)end
---@param index System.Int32
---@return System.String
function UnityEngine.Events.UnityEventBase:GetPersistentMethodName(index)end
---@param index System.Int32
---@param state UnityEngine.Events.UnityEventCallState
---@return System.Void
function UnityEngine.Events.UnityEventBase:SetPersistentListenerState(index, state)end
---@return System.Void
function UnityEngine.Events.UnityEventBase:RemoveAllListeners()end
---@return System.String
function UnityEngine.Events.UnityEventBase:ToString()end
---@param obj System.Object
---@param functionName System.String
---@param argumentTypes System.Type[]
---@return System.Reflection.MethodInfo
function UnityEngine.Events.UnityEventBase.GetValidMethodInfo(obj, functionName, argumentTypes)end
---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@type UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@param call UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Events.UnityEvent:AddListener(call)end
---@param call UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.Events.UnityEvent:RemoveListener(call)end
---@return System.Void
function UnityEngine.Events.UnityEvent:Invoke()end
---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@type UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:AddListener(call)end
---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:RemoveListener(call)end
---@param arg0 any
---@return System.Void
function UnityEngine.Events.UnityEvent:Invoke(arg0)end
---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@type UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:AddListener(call)end
---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:RemoveListener(call)end
---@param arg0 any
---@param arg1 any
---@return System.Void
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1)end
---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@type UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:AddListener(call)end
---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:RemoveListener(call)end
---@param arg0 any
---@param arg1 any
---@param arg2 any
---@return System.Void
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1, arg2)end
---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@type UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:AddListener(call)end
---@param call any
---@return System.Void
function UnityEngine.Events.UnityEvent:RemoveListener(call)end
---@param arg0 any
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@return System.Void
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1, arg2, arg3)end
