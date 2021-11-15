---@class UnityEditor.MemoryProfiler.MemorySnapshot : System.Object
UnityEditor.MemoryProfiler.MemorySnapshot = {}
---@type UnityEditor.MemoryProfiler.MemorySnapshot
CS.UnityEditor.MemoryProfiler.MemorySnapshot = UnityEditor.MemoryProfiler.MemorySnapshot

---@param value System.Action
---@return System.Void
function UnityEditor.MemoryProfiler.MemorySnapshot.add_OnSnapshotReceived(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.MemoryProfiler.MemorySnapshot.remove_OnSnapshotReceived(value)end
---@return System.Void
function UnityEditor.MemoryProfiler.MemorySnapshot.RequestNewSnapshot()end
---@class UnityEditor.MemoryProfiler.PackedMemorySnapshot : System.Object
---@field public nativeTypes UnityEditor.MemoryProfiler.PackedNativeType[] @  getter
---@field public nativeObjects UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject[] @  getter
---@field public gcHandles UnityEditor.MemoryProfiler.PackedGCHandle[] @  getter
---@field public connections UnityEditor.MemoryProfiler.Connection[] @  getter
---@field public managedHeapSections UnityEditor.MemoryProfiler.MemorySection[] @  getter
---@field public typeDescriptions UnityEditor.MemoryProfiler.TypeDescription[] @  getter
---@field public virtualMachineInformation UnityEditor.MemoryProfiler.VirtualMachineInformation @  getter
UnityEditor.MemoryProfiler.PackedMemorySnapshot = {}
---@type UnityEditor.MemoryProfiler.PackedMemorySnapshot
CS.UnityEditor.MemoryProfiler.PackedMemorySnapshot = UnityEditor.MemoryProfiler.PackedMemorySnapshot

---@class UnityEditor.MemoryProfiler.PackedNativeType : System.ValueType
---@field public name System.String @  getter
---@field public baseClassId System.Int32 @  getter
---@field public nativeBaseTypeArrayIndex System.Int32 @  getter
UnityEditor.MemoryProfiler.PackedNativeType = {}
---@type UnityEditor.MemoryProfiler.PackedNativeType
CS.UnityEditor.MemoryProfiler.PackedNativeType = UnityEditor.MemoryProfiler.PackedNativeType

---@class UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject : System.ValueType
---@field public isPersistent System.Boolean @  getter
---@field public isDontDestroyOnLoad System.Boolean @  getter
---@field public isManager System.Boolean @  getter
---@field public name System.String @  getter
---@field public instanceId System.Int32 @  getter
---@field public size System.Int32 @  getter
---@field public classId System.Int32 @  getter
---@field public nativeTypeArrayIndex System.Int32 @  getter
---@field public hideFlags UnityEngine.HideFlags @  getter
---@field public nativeObjectAddress System.Int64 @  getter
UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject = {}
---@type UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject
CS.UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject = UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject

---@class UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags : System.Enum
UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags = {}
---@type UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags
CS.UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags = UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags

---@return System.Int32 value:1
UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags.IsDontDestroyOnLoad = 1
---@return System.Int32 value:2
UnityEditor.MemoryProfiler.PackedNativeUnityEngineObject.ObjectFlags.IsPersistent = 2

---@class UnityEditor.MemoryProfiler.PackedGCHandle : System.ValueType
---@field public target System.UInt64 @  getter
UnityEditor.MemoryProfiler.PackedGCHandle = {}
---@type UnityEditor.MemoryProfiler.PackedGCHandle
CS.UnityEditor.MemoryProfiler.PackedGCHandle = UnityEditor.MemoryProfiler.PackedGCHandle

---@class UnityEditor.MemoryProfiler.Connection : System.ValueType
---@field public from System.Int32 @ setter getter
---@field public to System.Int32 @ setter getter
UnityEditor.MemoryProfiler.Connection = {}
---@type UnityEditor.MemoryProfiler.Connection
CS.UnityEditor.MemoryProfiler.Connection = UnityEditor.MemoryProfiler.Connection

---@class UnityEditor.MemoryProfiler.MemorySection : System.ValueType
---@field public bytes System.Byte[] @  getter
---@field public startAddress System.UInt64 @  getter
UnityEditor.MemoryProfiler.MemorySection = {}
---@type UnityEditor.MemoryProfiler.MemorySection
CS.UnityEditor.MemoryProfiler.MemorySection = UnityEditor.MemoryProfiler.MemorySection

---@class UnityEditor.MemoryProfiler.TypeDescription : System.ValueType
---@field public isValueType System.Boolean @  getter
---@field public isArray System.Boolean @  getter
---@field public arrayRank System.Int32 @  getter
---@field public name System.String @  getter
---@field public assembly System.String @  getter
---@field public fields UnityEditor.MemoryProfiler.FieldDescription[] @  getter
---@field public staticFieldBytes System.Byte[] @  getter
---@field public baseOrElementTypeIndex System.Int32 @  getter
---@field public size System.Int32 @  getter
---@field public typeInfoAddress System.UInt64 @  getter
---@field public typeIndex System.Int32 @  getter
UnityEditor.MemoryProfiler.TypeDescription = {}
---@type UnityEditor.MemoryProfiler.TypeDescription
CS.UnityEditor.MemoryProfiler.TypeDescription = UnityEditor.MemoryProfiler.TypeDescription

---@class UnityEditor.MemoryProfiler.TypeDescription.TypeFlags : System.Enum
UnityEditor.MemoryProfiler.TypeDescription.TypeFlags = {}
---@type UnityEditor.MemoryProfiler.TypeDescription.TypeFlags
CS.UnityEditor.MemoryProfiler.TypeDescription.TypeFlags = UnityEditor.MemoryProfiler.TypeDescription.TypeFlags

---@return System.Int32 value:0
UnityEditor.MemoryProfiler.TypeDescription.TypeFlags.kNone = 0
---@return System.Int32 value:1
UnityEditor.MemoryProfiler.TypeDescription.TypeFlags.kValueType = 1
---@return System.Int32 value:2
UnityEditor.MemoryProfiler.TypeDescription.TypeFlags.kArray = 2

---@class UnityEditor.MemoryProfiler.FieldDescription : System.ValueType
---@field public name System.String @  getter
---@field public offset System.Int32 @  getter
---@field public typeIndex System.Int32 @  getter
---@field public isStatic System.Boolean @  getter
UnityEditor.MemoryProfiler.FieldDescription = {}
---@type UnityEditor.MemoryProfiler.FieldDescription
CS.UnityEditor.MemoryProfiler.FieldDescription = UnityEditor.MemoryProfiler.FieldDescription

---@class UnityEditor.MemoryProfiler.VirtualMachineInformation : System.ValueType
---@field public pointerSize System.Int32 @  getter
---@field public objectHeaderSize System.Int32 @  getter
---@field public arrayHeaderSize System.Int32 @  getter
---@field public arrayBoundsOffsetInHeader System.Int32 @  getter
---@field public arraySizeOffsetInHeader System.Int32 @  getter
---@field public allocationGranularity System.Int32 @  getter
---@field public heapFormatVersion System.Int32 @  getter
UnityEditor.MemoryProfiler.VirtualMachineInformation = {}
---@type UnityEditor.MemoryProfiler.VirtualMachineInformation
CS.UnityEditor.MemoryProfiler.VirtualMachineInformation = UnityEditor.MemoryProfiler.VirtualMachineInformation

