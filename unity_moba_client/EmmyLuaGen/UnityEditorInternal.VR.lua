---@class UnityEditorInternal.VR.VRDeviceInfoEditor : System.ValueType
---@field public deviceNameKey System.String
---@field public deviceNameUI System.String
---@field public externalPluginName System.String
---@field public supportsEditorMode System.Boolean
---@field public inListByDefault System.Boolean
UnityEditorInternal.VR.VRDeviceInfoEditor = {}
---@type UnityEditorInternal.VR.VRDeviceInfoEditor
CS.UnityEditorInternal.VR.VRDeviceInfoEditor = UnityEditorInternal.VR.VRDeviceInfoEditor

---@class UnityEditorInternal.VR.VREditor : System.Object
UnityEditorInternal.VR.VREditor = {}
---@type UnityEditorInternal.VR.VREditor
CS.UnityEditorInternal.VR.VREditor = UnityEditorInternal.VR.VREditor

---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditorInternal.VR.VRDeviceInfoEditor[]
function UnityEditorInternal.VR.VREditor.GetAllVRDeviceInfo(targetGroup)end
---@param target UnityEditor.BuildTarget
---@return UnityEditorInternal.VR.VRDeviceInfoEditor[]
function UnityEditorInternal.VR.VREditor.GetAllVRDeviceInfoByTarget(target)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditorInternal.VR.VREditor.GetVREnabledOnTargetGroup(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param value System.Boolean
---@return System.Void
function UnityEditorInternal.VR.VREditor.SetVREnabledOnTargetGroup(targetGroup, value)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String[]
function UnityEditorInternal.VR.VREditor.GetVREnabledDevicesOnTargetGroup(targetGroup)end
---@param target UnityEditor.BuildTarget
---@return System.String[]
function UnityEditorInternal.VR.VREditor.GetVREnabledDevicesOnTarget(target)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param devices System.String[]
---@return System.Void
function UnityEditorInternal.VR.VREditor.NativeSetVREnabledDevicesOnTargetGroup(targetGroup, devices)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param devices System.String[]
---@return System.Void
function UnityEditorInternal.VR.VREditor.SetVREnabledDevicesOnTargetGroup(targetGroup, devices)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditorInternal.VR.VREditor.IsDeviceListDirty(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Void
function UnityEditorInternal.VR.VREditor.ClearDeviceListDirty(targetGroup)end
---@overload fun(target:UnityEditor.BuildTarget):UnityEditorInternal.VR.VRDeviceInfoEditor[]
---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditorInternal.VR.VRDeviceInfoEditor[]
function UnityEditorInternal.VR.VREditor.GetEnabledVRDeviceInfo(targetGroup)end
---@param target UnityEditor.BuildTarget
---@param deviceName System.String
---@return System.Boolean
function UnityEditorInternal.VR.VREditor.IsVRDeviceEnabledForBuildTarget(target, deviceName)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String[]
function UnityEditorInternal.VR.VREditor.GetAvailableVirtualRealitySDKs(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String[]
function UnityEditorInternal.VR.VREditor.GetVirtualRealitySDKs(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param sdks System.String[]
---@return System.Void
function UnityEditorInternal.VR.VREditor.SetVirtualRealitySDKs(targetGroup, sdks)end
---@class UnityEditorInternal.VR.VRModule : System.Object
UnityEditorInternal.VR.VRModule = {}
---@type UnityEditorInternal.VR.VRModule
CS.UnityEditorInternal.VR.VRModule = UnityEditorInternal.VR.VRModule

---@param target UnityEditor.BuildTarget
---@param osVerMajor System.Int32
---@return System.Void
function UnityEditorInternal.VR.VRModule.SetupBuildSettings(target, osVerMajor)end
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditorInternal.VR.VRModule.ShouldInjectVRDependenciesForBuildTarget(target)end
