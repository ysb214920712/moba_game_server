---@class Unity.Collections.ReadOnlyAttribute : System.Attribute
Unity.Collections.ReadOnlyAttribute = {}
---@type Unity.Collections.ReadOnlyAttribute
CS.Unity.Collections.ReadOnlyAttribute = Unity.Collections.ReadOnlyAttribute

---@class Unity.Collections.WriteOnlyAttribute : System.Attribute
Unity.Collections.WriteOnlyAttribute = {}
---@type Unity.Collections.WriteOnlyAttribute
CS.Unity.Collections.WriteOnlyAttribute = Unity.Collections.WriteOnlyAttribute

---@class Unity.Collections.DeallocateOnJobCompletionAttribute : System.Attribute
Unity.Collections.DeallocateOnJobCompletionAttribute = {}
---@type Unity.Collections.DeallocateOnJobCompletionAttribute
CS.Unity.Collections.DeallocateOnJobCompletionAttribute = Unity.Collections.DeallocateOnJobCompletionAttribute

---@class Unity.Collections.NativeFixedLengthAttribute : System.Attribute
---@field public FixedLength System.Int32
Unity.Collections.NativeFixedLengthAttribute = {}
---@type Unity.Collections.NativeFixedLengthAttribute
CS.Unity.Collections.NativeFixedLengthAttribute = Unity.Collections.NativeFixedLengthAttribute

---@class Unity.Collections.NativeMatchesParallelForLengthAttribute : System.Attribute
Unity.Collections.NativeMatchesParallelForLengthAttribute = {}
---@type Unity.Collections.NativeMatchesParallelForLengthAttribute
CS.Unity.Collections.NativeMatchesParallelForLengthAttribute = Unity.Collections.NativeMatchesParallelForLengthAttribute

---@class Unity.Collections.NativeDisableParallelForRestrictionAttribute : System.Attribute
Unity.Collections.NativeDisableParallelForRestrictionAttribute = {}
---@type Unity.Collections.NativeDisableParallelForRestrictionAttribute
CS.Unity.Collections.NativeDisableParallelForRestrictionAttribute = Unity.Collections.NativeDisableParallelForRestrictionAttribute

---@class Unity.Collections.Allocator : System.Enum
Unity.Collections.Allocator = {}
---@type Unity.Collections.Allocator
CS.Unity.Collections.Allocator = Unity.Collections.Allocator

---@return System.Int32 value:0
Unity.Collections.Allocator.Invalid = 0
---@return System.Int32 value:1
Unity.Collections.Allocator.None = 1
---@return System.Int32 value:2
Unity.Collections.Allocator.Temp = 2
---@return System.Int32 value:3
Unity.Collections.Allocator.TempJob = 3
---@return System.Int32 value:4
Unity.Collections.Allocator.Persistent = 4

---@class Unity.Collections.NativeLeakDetectionMode : System.Enum
Unity.Collections.NativeLeakDetectionMode = {}
---@type Unity.Collections.NativeLeakDetectionMode
CS.Unity.Collections.NativeLeakDetectionMode = Unity.Collections.NativeLeakDetectionMode

---@return System.Int32 value:0
Unity.Collections.NativeLeakDetectionMode.Enabled = 0
---@return System.Int32 value:1
Unity.Collections.NativeLeakDetectionMode.Disabled = 1

---@class Unity.Collections.NativeLeakDetection : System.Object
---@field public Mode Unity.Collections.NativeLeakDetectionMode @static setter getter
Unity.Collections.NativeLeakDetection = {}
---@type Unity.Collections.NativeLeakDetection
CS.Unity.Collections.NativeLeakDetection = Unity.Collections.NativeLeakDetection

---@class Unity.Collections.NativeArrayOptions : System.Enum
Unity.Collections.NativeArrayOptions = {}
---@type Unity.Collections.NativeArrayOptions
CS.Unity.Collections.NativeArrayOptions = Unity.Collections.NativeArrayOptions

---@return System.Int32 value:0
Unity.Collections.NativeArrayOptions.UninitializedMemory = 0
---@return System.Int32 value:1
Unity.Collections.NativeArrayOptions.ClearMemory = 1

---@class Unity.Collections.NativeArray : System.ValueType
---@field public Length System.Int32 @  getter
---@field public Item any @ setter getter
---@field public IsCreated System.Boolean @  getter
Unity.Collections.NativeArray = {}
---@type Unity.Collections.NativeArray
CS.Unity.Collections.NativeArray = Unity.Collections.NativeArray

---@return System.Void
function Unity.Collections.NativeArray:Dispose()end
---@overload fun(array:Unity.Collections.NativeArray):System.Void
---@param array T[]
---@return System.Void
function Unity.Collections.NativeArray:CopyFrom(array)end
---@overload fun(array:Unity.Collections.NativeArray):System.Void
---@param array T[]
---@return System.Void
function Unity.Collections.NativeArray:CopyTo(array)end
---@return T[]
function Unity.Collections.NativeArray:ToArray()end
---@return any
function Unity.Collections.NativeArray:GetEnumerator()end
---@overload fun(obj:System.Object):System.Boolean
---@param other Unity.Collections.NativeArray
---@return System.Boolean
function Unity.Collections.NativeArray:Equals(other)end
---@return System.Int32
function Unity.Collections.NativeArray:GetHashCode()end
---@param left Unity.Collections.NativeArray
---@param right Unity.Collections.NativeArray
---@return System.Boolean
function Unity.Collections.NativeArray.op_Equality(left, right)end
---@param left Unity.Collections.NativeArray
---@param right Unity.Collections.NativeArray
---@return System.Boolean
function Unity.Collections.NativeArray.op_Inequality(left, right)end
---@overload fun(src:T[], dst:Unity.Collections.NativeArray):System.Void
---@overload fun(src:Unity.Collections.NativeArray, dst:T[]):System.Void
---@overload fun(src:Unity.Collections.NativeArray, dst:Unity.Collections.NativeArray, length:System.Int32):System.Void
---@overload fun(src:T[], dst:Unity.Collections.NativeArray, length:System.Int32):System.Void
---@overload fun(src:Unity.Collections.NativeArray, dst:T[], length:System.Int32):System.Void
---@overload fun(src:Unity.Collections.NativeArray, srcIndex:System.Int32, dst:Unity.Collections.NativeArray, dstIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(src:T[], srcIndex:System.Int32, dst:Unity.Collections.NativeArray, dstIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(src:Unity.Collections.NativeArray, srcIndex:System.Int32, dst:T[], dstIndex:System.Int32, length:System.Int32):System.Void
---@param src Unity.Collections.NativeArray
---@param dst Unity.Collections.NativeArray
---@return System.Void
function Unity.Collections.NativeArray.Copy(src, dst)end
---@class Unity.Collections.NativeArray : System.ValueType
---@field public Current any @  getter
Unity.Collections.NativeArray = {}
---@type Unity.Collections.NativeArray
CS.Unity.Collections.NativeArray = Unity.Collections.NativeArray

---@return System.Void
function Unity.Collections.NativeArray:Dispose()end
---@return System.Boolean
function Unity.Collections.NativeArray:MoveNext()end
---@return System.Void
function Unity.Collections.NativeArray:Reset()end
---@class Unity.Collections.NativeSliceExtensions : System.Object
Unity.Collections.NativeSliceExtensions = {}
---@type Unity.Collections.NativeSliceExtensions
CS.Unity.Collections.NativeSliceExtensions = Unity.Collections.NativeSliceExtensions

---@class Unity.Collections.NativeSlice : System.ValueType
---@field public Item any @ setter getter
---@field public Stride System.Int32 @  getter
---@field public Length System.Int32 @  getter
Unity.Collections.NativeSlice = {}
---@type Unity.Collections.NativeSlice
CS.Unity.Collections.NativeSlice = Unity.Collections.NativeSlice

---@param array any
---@return Unity.Collections.NativeSlice
function Unity.Collections.NativeSlice.op_Implicit(array)end
---@return any
function Unity.Collections.NativeSlice:SliceConvert()end
---@overload fun(offset:System.Int32):any
---@return any
function Unity.Collections.NativeSlice:SliceWithStride()end
---@overload fun(array:T[]):System.Void
---@param slice Unity.Collections.NativeSlice
---@return System.Void
function Unity.Collections.NativeSlice:CopyFrom(slice)end
---@overload fun(array:T[]):System.Void
---@param array any
---@return System.Void
function Unity.Collections.NativeSlice:CopyTo(array)end
---@return T[]
function Unity.Collections.NativeSlice:ToArray()end
---@return any
function Unity.Collections.NativeSlice:GetEnumerator()end
---@overload fun(obj:System.Object):System.Boolean
---@param other Unity.Collections.NativeSlice
---@return System.Boolean
function Unity.Collections.NativeSlice:Equals(other)end
---@return System.Int32
function Unity.Collections.NativeSlice:GetHashCode()end
---@param left Unity.Collections.NativeSlice
---@param right Unity.Collections.NativeSlice
---@return System.Boolean
function Unity.Collections.NativeSlice.op_Equality(left, right)end
---@param left Unity.Collections.NativeSlice
---@param right Unity.Collections.NativeSlice
---@return System.Boolean
function Unity.Collections.NativeSlice.op_Inequality(left, right)end
---@class Unity.Collections.NativeSlice : System.ValueType
---@field public Current any @  getter
Unity.Collections.NativeSlice = {}
---@type Unity.Collections.NativeSlice
CS.Unity.Collections.NativeSlice = Unity.Collections.NativeSlice

---@return System.Void
function Unity.Collections.NativeSlice:Dispose()end
---@return System.Boolean
function Unity.Collections.NativeSlice:MoveNext()end
---@return System.Void
function Unity.Collections.NativeSlice:Reset()end
