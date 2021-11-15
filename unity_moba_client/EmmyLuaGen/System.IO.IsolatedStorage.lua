---@class System.IO.IsolatedStorage.IsolatedStorage : System.MarshalByRefObject
---@field public ApplicationIdentity System.Object @  getter
---@field public AssemblyIdentity System.Object @  getter
---@field public CurrentSize System.UInt64 @  getter
---@field public DomainIdentity System.Object @  getter
---@field public MaximumSize System.UInt64 @  getter
---@field public Scope System.IO.IsolatedStorage.IsolatedStorageScope @  getter
---@field public AvailableFreeSpace System.Int64 @  getter
---@field public Quota System.Int64 @  getter
---@field public UsedSize System.Int64 @  getter
System.IO.IsolatedStorage.IsolatedStorage = {}
---@type System.IO.IsolatedStorage.IsolatedStorage
CS.System.IO.IsolatedStorage.IsolatedStorage = System.IO.IsolatedStorage.IsolatedStorage

---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorage:Remove()end
---@param newQuotaSize System.Int64
---@return System.Boolean
function System.IO.IsolatedStorage.IsolatedStorage:IncreaseQuotaTo(newQuotaSize)end
---@class System.IO.IsolatedStorage.IsolatedStorageException : System.Exception
System.IO.IsolatedStorage.IsolatedStorageException = {}
---@type System.IO.IsolatedStorage.IsolatedStorageException
CS.System.IO.IsolatedStorage.IsolatedStorageException = System.IO.IsolatedStorage.IsolatedStorageException

---@class System.IO.IsolatedStorage.IsolatedStorageFile : System.IO.IsolatedStorage.IsolatedStorage
---@field public CurrentSize System.UInt64 @  getter
---@field public MaximumSize System.UInt64 @  getter
---@field public AvailableFreeSpace System.Int64 @  getter
---@field public Quota System.Int64 @  getter
---@field public UsedSize System.Int64 @  getter
---@field public IsEnabled System.Boolean @static  getter
System.IO.IsolatedStorage.IsolatedStorageFile = {}
---@type System.IO.IsolatedStorage.IsolatedStorageFile
CS.System.IO.IsolatedStorage.IsolatedStorageFile = System.IO.IsolatedStorage.IsolatedStorageFile

---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@return System.Collections.IEnumerator
function System.IO.IsolatedStorage.IsolatedStorageFile.GetEnumerator(scope)end
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, applicationEvidenceType:System.Type):System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, domainIdentity:System.Object, assemblyIdentity:System.Object):System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, domainEvidenceType:System.Type, assemblyEvidenceType:System.Type):System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, domainEvidence:System.Security.Policy.Evidence, domainEvidenceType:System.Type, assemblyEvidence:System.Security.Policy.Evidence, assemblyEvidenceType:System.Type):System.IO.IsolatedStorage.IsolatedStorageFile
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@param applicationIdentity System.Object
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetStore(scope, applicationIdentity)end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForApplication()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForAssembly()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForDomain()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForApplication()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForAssembly()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForDomain()end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForSite()end
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile.Remove(scope)end
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:Close()end
---@param dir System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:CreateDirectory(dir)end
---@overload fun(sourceFileName:System.String, destinationFileName:System.String, overwrite:System.Boolean):System.Void
---@param sourceFileName System.String
---@param destinationFileName System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:CopyFile(sourceFileName, destinationFileName)end
---@param path System.String
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function System.IO.IsolatedStorage.IsolatedStorageFile:CreateFile(path)end
---@param dir System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:DeleteDirectory(dir)end
---@param file System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:DeleteFile(file)end
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:Dispose()end
---@param path System.String
---@return System.Boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:DirectoryExists(path)end
---@param path System.String
---@return System.Boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:FileExists(path)end
---@param path System.String
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetCreationTime(path)end
---@param path System.String
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetLastAccessTime(path)end
---@param path System.String
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetLastWriteTime(path)end
---@overload fun(searchPattern:System.String):System.String[]
---@return System.String[]
function System.IO.IsolatedStorage.IsolatedStorageFile:GetDirectoryNames()end
---@overload fun(searchPattern:System.String):System.String[]
---@return System.String[]
function System.IO.IsolatedStorage.IsolatedStorageFile:GetFileNames()end
---@param newQuotaSize System.Int64
---@return System.Boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:IncreaseQuotaTo(newQuotaSize)end
---@param sourceDirectoryName System.String
---@param destinationDirectoryName System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:MoveDirectory(sourceDirectoryName, destinationDirectoryName)end
---@param sourceFileName System.String
---@param destinationFileName System.String
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:MoveFile(sourceFileName, destinationFileName)end
---@overload fun(path:System.String, mode:System.IO.FileMode, access:System.IO.FileAccess):System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path:System.String, mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare):System.IO.IsolatedStorage.IsolatedStorageFileStream
---@param path System.String
---@param mode System.IO.FileMode
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function System.IO.IsolatedStorage.IsolatedStorageFile:OpenFile(path, mode)end
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFile:Remove()end
---@class System.IO.IsolatedStorage.IsolatedStorageFileStream : System.IO.FileStream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle @  getter
---@field public Handle System.IntPtr @  getter
---@field public IsAsync System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.IO.IsolatedStorage.IsolatedStorageFileStream = {}
---@type System.IO.IsolatedStorage.IsolatedStorageFileStream
CS.System.IO.IsolatedStorage.IsolatedStorageFileStream = System.IO.IsolatedStorage.IsolatedStorageFileStream

---@param buffer System.Byte[]
---@param offset System.Int32
---@param numBytes System.Int32
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.IsolatedStorage.IsolatedStorageFileStream:BeginRead(buffer, offset, numBytes, userCallback, stateObject)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param numBytes System.Int32
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.IsolatedStorage.IsolatedStorageFileStream:BeginWrite(buffer, offset, numBytes, userCallback, stateObject)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.IsolatedStorage.IsolatedStorageFileStream:EndRead(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFileStream:EndWrite(asyncResult)end
---@overload fun(flushToDisk:System.Boolean):System.Void
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Flush()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Read(buffer, offset, count)end
---@return System.Int32
function System.IO.IsolatedStorage.IsolatedStorageFileStream:ReadByte()end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFileStream:SetLength(value)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Write(buffer, offset, count)end
---@param value System.Byte
---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageFileStream:WriteByte(value)end
---@class System.IO.IsolatedStorage.IsolatedStorageScope : System.Enum
System.IO.IsolatedStorage.IsolatedStorageScope = {}
---@type System.IO.IsolatedStorage.IsolatedStorageScope
CS.System.IO.IsolatedStorage.IsolatedStorageScope = System.IO.IsolatedStorage.IsolatedStorageScope

---@return System.Int32 value:0
System.IO.IsolatedStorage.IsolatedStorageScope.None = 0
---@return System.Int32 value:1
System.IO.IsolatedStorage.IsolatedStorageScope.User = 1
---@return System.Int32 value:2
System.IO.IsolatedStorage.IsolatedStorageScope.Domain = 2
---@return System.Int32 value:4
System.IO.IsolatedStorage.IsolatedStorageScope.Assembly = 4

---@class System.IO.IsolatedStorage.IsolatedStorageSecurityOptions : System.Enum
System.IO.IsolatedStorage.IsolatedStorageSecurityOptions = {}
---@type System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
CS.System.IO.IsolatedStorage.IsolatedStorageSecurityOptions = System.IO.IsolatedStorage.IsolatedStorageSecurityOptions


---@class System.IO.IsolatedStorage.IsolatedStorageSecurityState : System.Security.SecurityState
---@field public Options System.IO.IsolatedStorage.IsolatedStorageSecurityOptions @  getter
---@field public Quota System.Int64 @ setter getter
---@field public UsedSize System.Int64 @  getter
System.IO.IsolatedStorage.IsolatedStorageSecurityState = {}
---@type System.IO.IsolatedStorage.IsolatedStorageSecurityState
CS.System.IO.IsolatedStorage.IsolatedStorageSecurityState = System.IO.IsolatedStorage.IsolatedStorageSecurityState

---@return System.Void
function System.IO.IsolatedStorage.IsolatedStorageSecurityState:EnsureState()end
