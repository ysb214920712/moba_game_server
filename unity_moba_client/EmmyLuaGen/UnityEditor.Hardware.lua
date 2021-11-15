---@class UnityEditor.Hardware.UsbDevice : System.ValueType
---@field public vendorId System.Int32
---@field public productId System.Int32
---@field public revision System.Int32
---@field public udid System.String
---@field public name System.String
UnityEditor.Hardware.UsbDevice = {}
---@type UnityEditor.Hardware.UsbDevice
CS.UnityEditor.Hardware.UsbDevice = UnityEditor.Hardware.UsbDevice

---@return System.String
function UnityEditor.Hardware.UsbDevice:ToString()end
---@class UnityEditor.Hardware.Usb : System.Object
UnityEditor.Hardware.Usb = {}
---@type UnityEditor.Hardware.Usb
CS.UnityEditor.Hardware.Usb = UnityEditor.Hardware.Usb

---@param value UnityEditor.Hardware.Usb.OnDevicesChangedHandler
---@return System.Void
function UnityEditor.Hardware.Usb.add_DevicesChanged(value)end
---@param value UnityEditor.Hardware.Usb.OnDevicesChangedHandler
---@return System.Void
function UnityEditor.Hardware.Usb.remove_DevicesChanged(value)end
---@param devices UnityEditor.Hardware.UsbDevice[]
---@return System.Void
function UnityEditor.Hardware.Usb.OnDevicesChanged(devices)end
---@class UnityEditor.Hardware.DevDeviceList : System.Object
UnityEditor.Hardware.DevDeviceList = {}
---@type UnityEditor.Hardware.DevDeviceList
CS.UnityEditor.Hardware.DevDeviceList = UnityEditor.Hardware.DevDeviceList

---@param value UnityEditor.Hardware.DevDeviceList.OnChangedHandler
---@return System.Void
function UnityEditor.Hardware.DevDeviceList.add_Changed(value)end
---@param value UnityEditor.Hardware.DevDeviceList.OnChangedHandler
---@return System.Void
function UnityEditor.Hardware.DevDeviceList.remove_Changed(value)end
---@return System.Void
function UnityEditor.Hardware.DevDeviceList.OnChanged()end
---@param deviceId System.String
---@param device UnityEditor.Hardware.DevDevice
---@return System.Boolean
function UnityEditor.Hardware.DevDeviceList.FindDevice(deviceId, device)end
---@return UnityEditor.Hardware.DevDevice[]
function UnityEditor.Hardware.DevDeviceList.GetDevices()end
---@class UnityEditor.Hardware.DevDeviceState : System.Enum
UnityEditor.Hardware.DevDeviceState = {}
---@type UnityEditor.Hardware.DevDeviceState
CS.UnityEditor.Hardware.DevDeviceState = UnityEditor.Hardware.DevDeviceState

---@return System.Int32 value:0
UnityEditor.Hardware.DevDeviceState.Disconnected = 0
---@return System.Int32 value:1
UnityEditor.Hardware.DevDeviceState.Connected = 1

---@class UnityEditor.Hardware.DevDeviceFeatures : System.Enum
UnityEditor.Hardware.DevDeviceFeatures = {}
---@type UnityEditor.Hardware.DevDeviceFeatures
CS.UnityEditor.Hardware.DevDeviceFeatures = UnityEditor.Hardware.DevDeviceFeatures

---@return System.Int32 value:0
UnityEditor.Hardware.DevDeviceFeatures.None = 0
---@return System.Int32 value:1
UnityEditor.Hardware.DevDeviceFeatures.PlayerConnection = 1
---@return System.Int32 value:2
UnityEditor.Hardware.DevDeviceFeatures.RemoteConnection = 2

---@class UnityEditor.Hardware.DevDevice : System.ValueType
---@field public isConnected System.Boolean @  getter
---@field public none UnityEditor.Hardware.DevDevice @static  getter
---@field public id System.String
---@field public name System.String
---@field public type System.String
---@field public module System.String
---@field public state UnityEditor.Hardware.DevDeviceState
---@field public features UnityEditor.Hardware.DevDeviceFeatures
UnityEditor.Hardware.DevDevice = {}
---@type UnityEditor.Hardware.DevDevice
CS.UnityEditor.Hardware.DevDevice = UnityEditor.Hardware.DevDevice

---@return System.String
function UnityEditor.Hardware.DevDevice:ToString()end
