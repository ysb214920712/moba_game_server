---@class Unity.Collections.LowLevel.Unsafe.EnforceJobResult : System.Enum
Unity.Collections.LowLevel.Unsafe.EnforceJobResult = {}
---@type Unity.Collections.LowLevel.Unsafe.EnforceJobResult
CS.Unity.Collections.LowLevel.Unsafe.EnforceJobResult = Unity.Collections.LowLevel.Unsafe.EnforceJobResult

---@return System.Int32 value:0
Unity.Collections.LowLevel.Unsafe.EnforceJobResult.AllJobsAlreadySynced = 0
---@return System.Int32 value:1
Unity.Collections.LowLevel.Unsafe.EnforceJobResult.DidSyncRunningJobs = 1
---@return System.Int32 value:2
Unity.Collections.LowLevel.Unsafe.EnforceJobResult.HandleWasAlreadyDeallocated = 2

---@class Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle : System.ValueType
Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle = {}
---@type Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle = Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle

---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.Create()end
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempUnsafePtrSliceHandle()end
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempMemoryHandle()end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Boolean
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.IsTempMemoryHandle(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.Release(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.PrepareUndisposable(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.UseSecondaryVersion(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowWriting System.Boolean
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowSecondaryVersionWriting(handle, allowWriting)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowReadWriteAccess System.Boolean
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowReadOrWriteAccess(handle, allowReadWriteAccess)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Boolean
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetAllowReadOrWriteAccess(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckWriteAndBumpSecondaryVersion(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompleted(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndRelease(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndDisableReadWrite(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckDeallocateAndThrow(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckGetSecondaryDataPointerAndThrow(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param maxCount System.Int32
---@param output System.IntPtr
---@return System.Int32
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderArray(handle, maxCount, output)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Jobs.JobHandle
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetWriter(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckReadAndThrow(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckWriteAndThrow(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckExistsAndThrow(handle)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param readerIndex System.Int32
---@return System.String
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderName(handle, readerIndex)end
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.String
function Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetWriterName(handle)end
---@class Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeferredConvertListToArray : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeferredConvertListToArray = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeferredConvertListToArray
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeferredConvertListToArray = Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeferredConvertListToArray

---@class Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute = Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeContainerNeedsThreadIndexAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeContainerNeedsThreadIndexAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeContainerNeedsThreadIndexAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeContainerNeedsThreadIndexAttribute = Unity.Collections.LowLevel.Unsafe.NativeContainerNeedsThreadIndexAttribute

---@class Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute
CS.Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute = Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute = Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute = Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute

---@class Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute : System.Attribute
Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute
CS.Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute = Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute

---@class Unity.Collections.LowLevel.Unsafe.DisposeSentinel : System.Object
Unity.Collections.LowLevel.Unsafe.DisposeSentinel = {}
---@type Unity.Collections.LowLevel.Unsafe.DisposeSentinel
CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel = Unity.Collections.LowLevel.Unsafe.DisposeSentinel

---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param sentinel Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Dispose(safety, sentinel)end
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param sentinel Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@param callSiteStackDepth System.Int32
---@param allocator Unity.Collections.Allocator
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Create(safety, sentinel, callSiteStackDepth, allocator)end
---@param sentinel Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Clear(sentinel)end
---@class Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility : System.Object
Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility
CS.Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility = Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility

---@param array any
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.GetAtomicSafetyHandle(array)end
---@param array Unity.Collections.NativeArray
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.SetAtomicSafetyHandle(array, safety)end
---@param dataPointer System.Void
---@param length System.Int32
---@param allocator Unity.Collections.Allocator
---@return any
function Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.ConvertExistingDataToNativeArray(dataPointer, length, allocator)end
---@param nativeArray any
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(nativeArray)end
---@class Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility : System.Object
Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility = {}
---@type Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility
CS.Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility = Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility

---@param slice any
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility.GetAtomicSafetyHandle(slice)end
---@param slice Unity.Collections.NativeSlice
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility.SetAtomicSafetyHandle(slice, safety)end
---@param dataPointer System.Void
---@param stride System.Int32
---@param length System.Int32
---@return any
function Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility.ConvertExistingDataToNativeSlice(dataPointer, stride, length)end
---@class Unity.Collections.LowLevel.Unsafe.UnsafeUtility : System.Object
Unity.Collections.LowLevel.Unsafe.UnsafeUtility = {}
---@type Unity.Collections.LowLevel.Unsafe.UnsafeUtility
CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility = Unity.Collections.LowLevel.Unsafe.UnsafeUtility

---@param field System.Reflection.FieldInfo
---@return System.Int32
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.GetFieldOffset(field)end
---@param target System.Object
---@param gcHandle System.UInt64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCObjectAndGetAddress(target, gcHandle)end
---@param target System.Array
---@param gcHandle System.UInt64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCArrayAndGetDataAddress(target, gcHandle)end
---@param gcHandle System.UInt64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.ReleaseGCObject(gcHandle)end
---@param target System.Object
---@param dstPtr System.Void
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.CopyObjectAddressToPtr(target, dstPtr)end
---@overload fun(type:System.Type):System.Boolean
---@return System.Boolean
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsBlittable()end
---@param size System.Int64
---@param alignment System.Int32
---@param allocator Unity.Collections.Allocator
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Malloc(size, alignment, allocator)end
---@param memory System.Void
---@param allocator Unity.Collections.Allocator
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Free(memory, allocator)end
---@param allocator Unity.Collections.Allocator
---@return System.Boolean
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsValidAllocator(allocator)end
---@param destination System.Void
---@param source System.Void
---@param size System.Int64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpy(destination, source, size)end
---@param destination System.Void
---@param source System.Void
---@param size System.Int32
---@param count System.Int32
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpyReplicate(destination, source, size, count)end
---@param destination System.Void
---@param destinationStride System.Int32
---@param source System.Void
---@param sourceStride System.Int32
---@param elementSize System.Int32
---@param count System.Int32
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpyStride(destination, destinationStride, source, sourceStride, elementSize, count)end
---@param destination System.Void
---@param source System.Void
---@param size System.Int64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemMove(destination, source, size)end
---@param destination System.Void
---@param size System.Int64
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemClear(destination, size)end
---@param ptr1 System.Void
---@param ptr2 System.Void
---@param size System.Int64
---@return System.Int32
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCmp(ptr1, ptr2, size)end
---@overload fun(type:System.Type):System.Int32
---@return System.Int32
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.SizeOf()end
---@param ptr System.Void
---@param output any
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.CopyPtrToStructure(ptr, output)end
---@param input any
---@param ptr System.Void
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.CopyStructureToPtr(input, ptr)end
---@param source System.Void
---@param index System.Int32
---@return any
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.ReadArrayElement(source, index)end
---@param source System.Void
---@param index System.Int32
---@param stride System.Int32
---@return any
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.ReadArrayElementWithStride(source, index, stride)end
---@param destination System.Void
---@param index System.Int32
---@param value any
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.WriteArrayElement(destination, index, value)end
---@param destination System.Void
---@param index System.Int32
---@param stride System.Int32
---@param value any
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.WriteArrayElementWithStride(destination, index, stride, value)end
---@param output any
---@return System.Void
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.AddressOf(output)end
---@return System.Int32
function Unity.Collections.LowLevel.Unsafe.UnsafeUtility.AlignOf()end
