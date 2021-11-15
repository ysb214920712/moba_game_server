---@class UnityEngineInternal.Input.NativeInputEventType : System.Enum
UnityEngineInternal.Input.NativeInputEventType = {}
---@type UnityEngineInternal.Input.NativeInputEventType
CS.UnityEngineInternal.Input.NativeInputEventType = UnityEngineInternal.Input.NativeInputEventType


---@class UnityEngineInternal.Input.NativeInputEventBuffer : System.ValueType
---@field public eventBuffer System.Void
---@field public eventCount System.Int32
---@field public sizeInBytes System.Int32
---@field public capacityInBytes System.Int32
UnityEngineInternal.Input.NativeInputEventBuffer = {}
---@type UnityEngineInternal.Input.NativeInputEventBuffer
CS.UnityEngineInternal.Input.NativeInputEventBuffer = UnityEngineInternal.Input.NativeInputEventBuffer

---@class UnityEngineInternal.Input.NativeInputEvent : System.ValueType
---@field public type UnityEngineInternal.Input.NativeInputEventType
---@field public sizeInBytes System.UInt16
---@field public deviceId System.UInt16
---@field public eventId System.Int32
---@field public time System.Double
UnityEngineInternal.Input.NativeInputEvent = {}
---@type UnityEngineInternal.Input.NativeInputEvent
CS.UnityEngineInternal.Input.NativeInputEvent = UnityEngineInternal.Input.NativeInputEvent

---@class UnityEngineInternal.Input.NativeInputUpdateType : System.Enum
UnityEngineInternal.Input.NativeInputUpdateType = {}
---@type UnityEngineInternal.Input.NativeInputUpdateType
CS.UnityEngineInternal.Input.NativeInputUpdateType = UnityEngineInternal.Input.NativeInputUpdateType

---@return System.Int32 value:1
UnityEngineInternal.Input.NativeInputUpdateType.Dynamic = 1
---@return System.Int32 value:2
UnityEngineInternal.Input.NativeInputUpdateType.Fixed = 2
---@return System.Int32 value:4
UnityEngineInternal.Input.NativeInputUpdateType.BeforeRender = 4

---@class UnityEngineInternal.Input.NativeInputSystem : System.Object
---@field public onDeviceDiscovered System.Action @static setter getter
---@field public currentTime System.Double @static  getter
---@field public currentTimeOffsetToRealtimeSinceStartup System.Double @static  getter
---@field public onUpdate UnityEngineInternal.Input.NativeUpdateCallback
---@field public onBeforeUpdate System.Action
UnityEngineInternal.Input.NativeInputSystem = {}
---@type UnityEngineInternal.Input.NativeInputSystem
CS.UnityEngineInternal.Input.NativeInputSystem = UnityEngineInternal.Input.NativeInputSystem

---@return System.Int32
function UnityEngineInternal.Input.NativeInputSystem.AllocateDeviceId()end
---@overload fun(inputEvent:any):System.Void
---@param inputEvent System.IntPtr
---@return System.Void
function UnityEngineInternal.Input.NativeInputSystem.QueueInputEvent(inputEvent)end
---@param deviceId System.Int32
---@param code System.Int32
---@param data System.IntPtr
---@param sizeInBytes System.Int32
---@return System.Int64
function UnityEngineInternal.Input.NativeInputSystem.IOCTL(deviceId, code, data, sizeInBytes)end
---@param hertz System.Single
---@return System.Void
function UnityEngineInternal.Input.NativeInputSystem.SetPollingFrequency(hertz)end
---@param updateType UnityEngineInternal.Input.NativeInputUpdateType
---@return System.Void
function UnityEngineInternal.Input.NativeInputSystem.Update(updateType)end
---@param mask UnityEngineInternal.Input.NativeInputUpdateType
---@return System.Void
function UnityEngineInternal.Input.NativeInputSystem.SetUpdateMask(mask)end
