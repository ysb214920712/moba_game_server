---@class UnityEditor.Events.UnityEventTools : System.Object
UnityEditor.Events.UnityEventTools = {}
---@type UnityEditor.Events.UnityEventTools
CS.UnityEditor.Events.UnityEventTools = UnityEditor.Events.UnityEventTools

---@overload fun(unityEvent:UnityEngine.Events.UnityEvent, call:UnityEngine.Events.UnityAction):System.Void
---@overload fun(unityEvent:any, call:any):System.Void
---@overload fun(unityEvent:any, call:any):System.Void
---@overload fun(unityEvent:any, call:any):System.Void
---@overload fun(unityEvent:any, call:any):System.Void
---@param unityEvent UnityEngine.Events.UnityEventBase
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddPersistentListener(unityEvent)end
---@overload fun(unityEvent:UnityEngine.Events.UnityEventBase, call:UnityEngine.Events.UnityAction):System.Void
---@overload fun(unityEvent:UnityEngine.Events.UnityEventBase, call:any):System.Void
---@overload fun(unityEvent:UnityEngine.Events.UnityEventBase, call:any):System.Void
---@overload fun(unityEvent:UnityEngine.Events.UnityEventBase, call:any):System.Void
---@overload fun(unityEvent:UnityEngine.Events.UnityEventBase, call:any):System.Void
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@return System.Void
function UnityEditor.Events.UnityEventTools.RemovePersistentListener(unityEvent, index)end
---@overload fun(unityEvent:any, index:System.Int32, call:any):System.Void
---@overload fun(unityEvent:any, index:System.Int32, call:any):System.Void
---@overload fun(unityEvent:any, index:System.Int32, call:any):System.Void
---@overload fun(unityEvent:any, index:System.Int32, call:any):System.Void
---@param unityEvent UnityEngine.Events.UnityEvent
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterPersistentListener(unityEvent, index, call)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@return System.Void
function UnityEditor.Events.UnityEventTools.UnregisterPersistentListener(unityEvent, index)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddVoidPersistentListener(unityEvent, call)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterVoidPersistentListener(unityEvent, index, call)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call UnityEngine.Events.UnityAction
---@param argument System.Int32
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddIntPersistentListener(unityEvent, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@param argument System.Int32
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterIntPersistentListener(unityEvent, index, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call UnityEngine.Events.UnityAction
---@param argument System.Single
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddFloatPersistentListener(unityEvent, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@param argument System.Single
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterFloatPersistentListener(unityEvent, index, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call UnityEngine.Events.UnityAction
---@param argument System.Boolean
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddBoolPersistentListener(unityEvent, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@param argument System.Boolean
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterBoolPersistentListener(unityEvent, index, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call UnityEngine.Events.UnityAction
---@param argument System.String
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddStringPersistentListener(unityEvent, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call UnityEngine.Events.UnityAction
---@param argument System.String
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterStringPersistentListener(unityEvent, index, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param call any
---@param argument any
---@return System.Void
function UnityEditor.Events.UnityEventTools.AddObjectPersistentListener(unityEvent, call, argument)end
---@param unityEvent UnityEngine.Events.UnityEventBase
---@param index System.Int32
---@param call any
---@param argument any
---@return System.Void
function UnityEditor.Events.UnityEventTools.RegisterObjectPersistentListener(unityEvent, index, call, argument)end
