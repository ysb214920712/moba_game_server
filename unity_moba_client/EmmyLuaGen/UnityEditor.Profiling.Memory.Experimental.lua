---@class UnityEditor.Profiling.Memory.Experimental.ArrayEntries : System.Object
UnityEditor.Profiling.Memory.Experimental.ArrayEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.ArrayEntries
CS.UnityEditor.Profiling.Memory.Experimental.ArrayEntries = UnityEditor.Profiling.Memory.Experimental.ArrayEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.ArrayEntries:GetNumEntries()end
---@param indexStart System.UInt32
---@param numEntries System.UInt32
---@param dataOut T[]
---@return System.Void
function UnityEditor.Profiling.Memory.Experimental.ArrayEntries:GetEntries(indexStart, numEntries, dataOut)end
---@class UnityEditor.Profiling.Memory.Experimental.ConnectionEntries : System.Object
---@field public from UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public to UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.ConnectionEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.ConnectionEntries
CS.UnityEditor.Profiling.Memory.Experimental.ConnectionEntries = UnityEditor.Profiling.Memory.Experimental.ConnectionEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.ConnectionEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.GCHandleEntries : System.Object
---@field public target UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.GCHandleEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.GCHandleEntries
CS.UnityEditor.Profiling.Memory.Experimental.GCHandleEntries = UnityEditor.Profiling.Memory.Experimental.GCHandleEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.GCHandleEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries : System.Object
---@field public bytes UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public startAddress UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries
CS.UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries = UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries : System.Object
---@field public objectName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public instanceId UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public size UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public nativeTypeArrayIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public hideFlags UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public flags UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public nativeObjectAddress UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public rootReferenceId UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries = UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries : System.Object
---@field public typeName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public nativeBaseTypeArrayIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries = UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries : System.Object
---@field public flags UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public typeDescriptionName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public assembly UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public fieldIndices UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public staticFieldBytes UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public baseOrElementTypeIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public size UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public typeInfoAddress UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public typeIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries
CS.UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries = UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries : System.Object
---@field public fieldDescriptionName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public offset UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public typeIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public isStatic UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries
CS.UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries = UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries : System.Object
---@field public memoryLabelName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries = UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries : System.Object
---@field public id UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public areaName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public objectName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public accumulatedSize UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries = UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries : System.Object
---@field public memoryRegionIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public rootReferenceId UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public allocationSiteId UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public address UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public size UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public overheadSize UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public paddingSize UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries = UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries : System.Object
---@field public memoryRegionName UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public parentIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public addressBase UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public addressSize UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public firstAllocationIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public numAllocations UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries = UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries : System.Object
---@field public id UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public memoryLabelIndex UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public callstackSymbols UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries = UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries : System.Object
---@field public symbol UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
---@field public readableStackTrace UnityEditor.Profiling.Memory.Experimental.ArrayEntries @  getter
UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries = {}
---@type UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries
CS.UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries = UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries

---@return System.UInt32
function UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries:GetNumEntries()end
---@class UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot : System.Object
---@field public connections UnityEditor.Profiling.Memory.Experimental.ConnectionEntries @ setter getter
---@field public fieldDescriptions UnityEditor.Profiling.Memory.Experimental.FieldDescriptionEntries @ setter getter
---@field public gcHandles UnityEditor.Profiling.Memory.Experimental.GCHandleEntries @ setter getter
---@field public managedHeapSections UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries @ setter getter
---@field public managedStacks UnityEditor.Profiling.Memory.Experimental.ManagedMemorySectionEntries @ setter getter
---@field public nativeAllocations UnityEditor.Profiling.Memory.Experimental.NativeAllocationEntries @ setter getter
---@field public nativeAllocationSites UnityEditor.Profiling.Memory.Experimental.NativeAllocationSiteEntries @ setter getter
---@field public nativeCallstackSymbols UnityEditor.Profiling.Memory.Experimental.NativeCallstackSymbolEntries @ setter getter
---@field public nativeMemoryLabels UnityEditor.Profiling.Memory.Experimental.NativeMemoryLabelEntries @ setter getter
---@field public nativeMemoryRegions UnityEditor.Profiling.Memory.Experimental.NativeMemoryRegionEntries @ setter getter
---@field public nativeObjects UnityEditor.Profiling.Memory.Experimental.NativeObjectEntries @ setter getter
---@field public nativeRootReferences UnityEditor.Profiling.Memory.Experimental.NativeRootReferenceEntries @ setter getter
---@field public nativeTypes UnityEditor.Profiling.Memory.Experimental.NativeTypeEntries @ setter getter
---@field public typeDescriptions UnityEditor.Profiling.Memory.Experimental.TypeDescriptionEntries @ setter getter
---@field public version System.UInt32 @  getter
---@field public metadata UnityEngine.Profiling.Memory.Experimental.MetaData @  getter
---@field public filePath System.String @  getter
---@field public recordDate System.DateTime @  getter
---@field public captureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags @  getter
---@field public virtualMachineInformation UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation @  getter
UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot = {}
---@type UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot
CS.UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot = UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot

---@param path System.String
---@return UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot
function UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot.Load(path)end
---@param snapshot UnityEditor.MemoryProfiler.PackedMemorySnapshot
---@param writePath System.String
---@return System.Boolean
function UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot.Convert(snapshot, writePath)end
---@param snapshot UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot
---@param writePath System.String
---@return System.Void
function UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot.Save(snapshot, writePath)end
---@return System.Void
function UnityEditor.Profiling.Memory.Experimental.PackedMemorySnapshot:Dispose()end
---@class UnityEditor.Profiling.Memory.Experimental.ObjectFlags : System.Enum
UnityEditor.Profiling.Memory.Experimental.ObjectFlags = {}
---@type UnityEditor.Profiling.Memory.Experimental.ObjectFlags
CS.UnityEditor.Profiling.Memory.Experimental.ObjectFlags = UnityEditor.Profiling.Memory.Experimental.ObjectFlags

---@return System.Int32 value:1
UnityEditor.Profiling.Memory.Experimental.ObjectFlags.IsDontDestroyOnLoad = 1
---@return System.Int32 value:2
UnityEditor.Profiling.Memory.Experimental.ObjectFlags.IsPersistent = 2

---@class UnityEditor.Profiling.Memory.Experimental.ObjectFlagsExtensions : System.Object
UnityEditor.Profiling.Memory.Experimental.ObjectFlagsExtensions = {}
---@type UnityEditor.Profiling.Memory.Experimental.ObjectFlagsExtensions
CS.UnityEditor.Profiling.Memory.Experimental.ObjectFlagsExtensions = UnityEditor.Profiling.Memory.Experimental.ObjectFlagsExtensions

---@class UnityEditor.Profiling.Memory.Experimental.TypeFlags : System.Enum
UnityEditor.Profiling.Memory.Experimental.TypeFlags = {}
---@type UnityEditor.Profiling.Memory.Experimental.TypeFlags
CS.UnityEditor.Profiling.Memory.Experimental.TypeFlags = UnityEditor.Profiling.Memory.Experimental.TypeFlags

---@return System.Int32 value:0
UnityEditor.Profiling.Memory.Experimental.TypeFlags.kNone = 0
---@return System.Int32 value:1
UnityEditor.Profiling.Memory.Experimental.TypeFlags.kValueType = 1
---@return System.Int32 value:2
UnityEditor.Profiling.Memory.Experimental.TypeFlags.kArray = 2

---@class UnityEditor.Profiling.Memory.Experimental.TypeFlagsExtensions : System.Object
UnityEditor.Profiling.Memory.Experimental.TypeFlagsExtensions = {}
---@type UnityEditor.Profiling.Memory.Experimental.TypeFlagsExtensions
CS.UnityEditor.Profiling.Memory.Experimental.TypeFlagsExtensions = UnityEditor.Profiling.Memory.Experimental.TypeFlagsExtensions

---@class UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation : System.ValueType
---@field public pointerSize System.Int32 @ setter getter
---@field public objectHeaderSize System.Int32 @ setter getter
---@field public arrayHeaderSize System.Int32 @ setter getter
---@field public arrayBoundsOffsetInHeader System.Int32 @ setter getter
---@field public arraySizeOffsetInHeader System.Int32 @ setter getter
---@field public allocationGranularity System.Int32 @ setter getter
UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation = {}
---@type UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation
CS.UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation = UnityEditor.Profiling.Memory.Experimental.VirtualMachineInformation

