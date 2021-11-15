---@class UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader : System.Object
UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader = {}
---@type UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader
CS.UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader = UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader

---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:Dispose()end
---@return System.String
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:GetFilePath()end
---@param filePath System.String
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:Open(filePath)end
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:Close()end
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:OnBeforeSerialize()end
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:OnAfterDeserialize()end
---@param entryType UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType
---@param entryIndex System.UInt32
---@param numEntries System.UInt32
---@param dataOut T[]
---@param getItemFunc any
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:GetDataArray(entryType, entryIndex, numEntries, dataOut, getItemFunc)end
---@param entryType UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType
---@param getItemFunc any
---@return any
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:GetDataSingle(entryType, getItemFunc)end
---@param entryType UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType
---@return System.UInt32
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileReader:GetNumEntries(entryType)end
---@class UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter : System.Object
UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter = {}
---@type UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter
CS.UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter = UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter

---@param filename System.String
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter:Open(filename)end
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter:Close()end
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter:Dispose()end
---@overload fun(entryType:UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType, data:any):System.Void
---@param entryType UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType
---@param data System.String
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter:WriteEntry(entryType, data)end
---@param entryType UnityEditorInternal.Profiling.Memory.Experimental.FileFormat.EntryType
---@param data T[]
---@return System.Void
function UnityEditorInternal.Profiling.Memory.Experimental.MemorySnapshotFileWriter:WriteEntryArray(entryType, data)end
