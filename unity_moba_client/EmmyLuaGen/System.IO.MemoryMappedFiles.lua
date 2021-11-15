---@class System.IO.MemoryMappedFiles.MemoryMappedFileAccess : System.Enum
System.IO.MemoryMappedFiles.MemoryMappedFileAccess = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedFileAccess
CS.System.IO.MemoryMappedFiles.MemoryMappedFileAccess = System.IO.MemoryMappedFiles.MemoryMappedFileAccess

---@return System.Int32 value:0
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.ReadWrite = 0
---@return System.Int32 value:1
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.Read = 1
---@return System.Int32 value:2
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.Write = 2
---@return System.Int32 value:3
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.CopyOnWrite = 3
---@return System.Int32 value:4
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.ReadExecute = 4
---@return System.Int32 value:5
System.IO.MemoryMappedFiles.MemoryMappedFileAccess.ReadWriteExecute = 5

---@class System.IO.MemoryMappedFiles.MemoryMappedFileOptions : System.Enum
System.IO.MemoryMappedFiles.MemoryMappedFileOptions = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedFileOptions
CS.System.IO.MemoryMappedFiles.MemoryMappedFileOptions = System.IO.MemoryMappedFiles.MemoryMappedFileOptions

---@return System.Int32 value:0
System.IO.MemoryMappedFiles.MemoryMappedFileOptions.None = 0

---@class System.IO.MemoryMappedFiles.MemoryMappedFileRights : System.Enum
System.IO.MemoryMappedFiles.MemoryMappedFileRights = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedFileRights
CS.System.IO.MemoryMappedFiles.MemoryMappedFileRights = System.IO.MemoryMappedFiles.MemoryMappedFileRights

---@return System.Int32 value:1
System.IO.MemoryMappedFiles.MemoryMappedFileRights.CopyOnWrite = 1
---@return System.Int32 value:2
System.IO.MemoryMappedFiles.MemoryMappedFileRights.Write = 2
---@return System.Int32 value:4
System.IO.MemoryMappedFiles.MemoryMappedFileRights.Read = 4
---@return System.Int32 value:6
System.IO.MemoryMappedFiles.MemoryMappedFileRights.ReadWrite = 6
---@return System.Int32 value:8
System.IO.MemoryMappedFiles.MemoryMappedFileRights.Execute = 8
---@return System.Int32 value:12
System.IO.MemoryMappedFiles.MemoryMappedFileRights.ReadExecute = 12

---@class System.IO.MemoryMappedFiles.MemoryMappedFileSecurity : System.Security.AccessControl.ObjectSecurity
System.IO.MemoryMappedFiles.MemoryMappedFileSecurity = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedFileSecurity
CS.System.IO.MemoryMappedFiles.MemoryMappedFileSecurity = System.IO.MemoryMappedFiles.MemoryMappedFileSecurity

---@class System.IO.MemoryMappedFiles.MemoryMappedViewAccessor : System.IO.UnmanagedMemoryAccessor
---@field public SafeMemoryMappedViewHandle Microsoft.Win32.SafeHandles.SafeMemoryMappedViewHandle @  getter
---@field public PointerOffset System.Int64 @  getter
System.IO.MemoryMappedFiles.MemoryMappedViewAccessor = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedViewAccessor
CS.System.IO.MemoryMappedFiles.MemoryMappedViewAccessor = System.IO.MemoryMappedFiles.MemoryMappedViewAccessor

---@return System.Void
function System.IO.MemoryMappedFiles.MemoryMappedViewAccessor:Flush()end
---@class System.IO.MemoryMappedFiles.MemoryMappedViewStream : System.IO.UnmanagedMemoryStream
---@field public SafeMemoryMappedViewHandle Microsoft.Win32.SafeHandles.SafeMemoryMappedViewHandle @  getter
---@field public PointerOffset System.Int64 @  getter
System.IO.MemoryMappedFiles.MemoryMappedViewStream = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedViewStream
CS.System.IO.MemoryMappedFiles.MemoryMappedViewStream = System.IO.MemoryMappedFiles.MemoryMappedViewStream

---@param value System.Int64
---@return System.Void
function System.IO.MemoryMappedFiles.MemoryMappedViewStream:SetLength(value)end
---@return System.Void
function System.IO.MemoryMappedFiles.MemoryMappedViewStream:Flush()end
---@class System.IO.MemoryMappedFiles.MemoryMappedFile : System.Object
---@field public SafeMemoryMappedFileHandle Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle @  getter
System.IO.MemoryMappedFiles.MemoryMappedFile = {}
---@type System.IO.MemoryMappedFiles.MemoryMappedFile
CS.System.IO.MemoryMappedFiles.MemoryMappedFile = System.IO.MemoryMappedFiles.MemoryMappedFile

---@overload fun(path:System.String, mode:System.IO.FileMode):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(path:System.String, mode:System.IO.FileMode, mapName:System.String):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(path:System.String, mode:System.IO.FileMode, mapName:System.String, capacity:System.Int64):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(path:System.String, mode:System.IO.FileMode, mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(fileStream:System.IO.FileStream, mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, inheritability:System.IO.HandleInheritability, leaveOpen:System.Boolean):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(fileStream:System.IO.FileStream, mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, memoryMappedFileSecurity:System.IO.MemoryMappedFiles.MemoryMappedFileSecurity, inheritability:System.IO.HandleInheritability, leaveOpen:System.Boolean):System.IO.MemoryMappedFiles.MemoryMappedFile
---@param path System.String
---@return System.IO.MemoryMappedFiles.MemoryMappedFile
function System.IO.MemoryMappedFiles.MemoryMappedFile.CreateFromFile(path)end
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, options:System.IO.MemoryMappedFiles.MemoryMappedFileOptions, inheritability:System.IO.HandleInheritability):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, options:System.IO.MemoryMappedFiles.MemoryMappedFileOptions, memoryMappedFileSecurity:System.IO.MemoryMappedFiles.MemoryMappedFileSecurity, inheritability:System.IO.HandleInheritability):System.IO.MemoryMappedFiles.MemoryMappedFile
---@param mapName System.String
---@param capacity System.Int64
---@return System.IO.MemoryMappedFiles.MemoryMappedFile
function System.IO.MemoryMappedFiles.MemoryMappedFile.CreateNew(mapName, capacity)end
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, options:System.IO.MemoryMappedFiles.MemoryMappedFileOptions, inheritability:System.IO.HandleInheritability):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(mapName:System.String, capacity:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess, options:System.IO.MemoryMappedFiles.MemoryMappedFileOptions, memoryMappedFileSecurity:System.IO.MemoryMappedFiles.MemoryMappedFileSecurity, inheritability:System.IO.HandleInheritability):System.IO.MemoryMappedFiles.MemoryMappedFile
---@param mapName System.String
---@param capacity System.Int64
---@return System.IO.MemoryMappedFiles.MemoryMappedFile
function System.IO.MemoryMappedFiles.MemoryMappedFile.CreateOrOpen(mapName, capacity)end
---@overload fun(mapName:System.String, desiredAccessRights:System.IO.MemoryMappedFiles.MemoryMappedFileRights):System.IO.MemoryMappedFiles.MemoryMappedFile
---@overload fun(mapName:System.String, desiredAccessRights:System.IO.MemoryMappedFiles.MemoryMappedFileRights, inheritability:System.IO.HandleInheritability):System.IO.MemoryMappedFiles.MemoryMappedFile
---@param mapName System.String
---@return System.IO.MemoryMappedFiles.MemoryMappedFile
function System.IO.MemoryMappedFiles.MemoryMappedFile.OpenExisting(mapName)end
---@overload fun(offset:System.Int64, size:System.Int64):System.IO.MemoryMappedFiles.MemoryMappedViewStream
---@overload fun(offset:System.Int64, size:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess):System.IO.MemoryMappedFiles.MemoryMappedViewStream
---@return System.IO.MemoryMappedFiles.MemoryMappedViewStream
function System.IO.MemoryMappedFiles.MemoryMappedFile:CreateViewStream()end
---@overload fun(offset:System.Int64, size:System.Int64):System.IO.MemoryMappedFiles.MemoryMappedViewAccessor
---@overload fun(offset:System.Int64, size:System.Int64, access:System.IO.MemoryMappedFiles.MemoryMappedFileAccess):System.IO.MemoryMappedFiles.MemoryMappedViewAccessor
---@return System.IO.MemoryMappedFiles.MemoryMappedViewAccessor
function System.IO.MemoryMappedFiles.MemoryMappedFile:CreateViewAccessor()end
---@return System.Void
function System.IO.MemoryMappedFiles.MemoryMappedFile:Dispose()end
---@return System.IO.MemoryMappedFiles.MemoryMappedFileSecurity
function System.IO.MemoryMappedFiles.MemoryMappedFile:GetAccessControl()end
---@param memoryMappedFileSecurity System.IO.MemoryMappedFiles.MemoryMappedFileSecurity
---@return System.Void
function System.IO.MemoryMappedFiles.MemoryMappedFile:SetAccessControl(memoryMappedFileSecurity)end
