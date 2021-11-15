---@class System.IO.BinaryReader : System.Object
---@field public BaseStream System.IO.Stream @  getter
System.IO.BinaryReader = {}
---@type System.IO.BinaryReader
CS.System.IO.BinaryReader = System.IO.BinaryReader

---@return System.Void
function System.IO.BinaryReader:Close()end
---@return System.Void
function System.IO.BinaryReader:Dispose()end
---@return System.Int32
function System.IO.BinaryReader:PeekChar()end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@overload fun(buffer:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@return System.Int32
function System.IO.BinaryReader:Read()end
---@return System.Boolean
function System.IO.BinaryReader:ReadBoolean()end
---@return System.Byte
function System.IO.BinaryReader:ReadByte()end
---@return System.SByte
function System.IO.BinaryReader:ReadSByte()end
---@return System.Char
function System.IO.BinaryReader:ReadChar()end
---@return System.Int16
function System.IO.BinaryReader:ReadInt16()end
---@return System.UInt16
function System.IO.BinaryReader:ReadUInt16()end
---@return System.Int32
function System.IO.BinaryReader:ReadInt32()end
---@return System.UInt32
function System.IO.BinaryReader:ReadUInt32()end
---@return System.Int64
function System.IO.BinaryReader:ReadInt64()end
---@return System.UInt64
function System.IO.BinaryReader:ReadUInt64()end
---@return System.Single
function System.IO.BinaryReader:ReadSingle()end
---@return System.Double
function System.IO.BinaryReader:ReadDouble()end
---@return System.Decimal
function System.IO.BinaryReader:ReadDecimal()end
---@return System.String
function System.IO.BinaryReader:ReadString()end
---@param count System.Int32
---@return System.Char[]
function System.IO.BinaryReader:ReadChars(count)end
---@param count System.Int32
---@return System.Byte[]
function System.IO.BinaryReader:ReadBytes(count)end
---@class System.IO.BinaryWriter : System.Object
---@field public BaseStream System.IO.Stream @  getter
---@field public Null System.IO.BinaryWriter
System.IO.BinaryWriter = {}
---@type System.IO.BinaryWriter
CS.System.IO.BinaryWriter = System.IO.BinaryWriter

---@return System.Void
function System.IO.BinaryWriter:Close()end
---@return System.Void
function System.IO.BinaryWriter:Dispose()end
---@return System.Void
function System.IO.BinaryWriter:Flush()end
---@param offset System.Int32
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.BinaryWriter:Seek(offset, origin)end
---@overload fun(value:System.Byte):System.Void
---@overload fun(value:System.SByte):System.Void
---@overload fun(ch:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Int16):System.Void
---@overload fun(value:System.UInt16):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(buffer:System.Byte[]):System.Void
---@overload fun(chars:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(buffer:System.Byte[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param value System.Boolean
---@return System.Void
function System.IO.BinaryWriter:Write(value)end
---@class System.IO.BufferedStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.IO.BufferedStream = {}
---@type System.IO.BufferedStream
CS.System.IO.BufferedStream = System.IO.BufferedStream

---@return System.Void
function System.IO.BufferedStream:Flush()end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.BufferedStream:FlushAsync(cancellationToken)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.BufferedStream:Read(array, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.BufferedStream:BeginRead(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.BufferedStream:EndRead(asyncResult)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.BufferedStream:ReadAsync(buffer, offset, count, cancellationToken)end
---@return System.Int32
function System.IO.BufferedStream:ReadByte()end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.BufferedStream:Write(array, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.BufferedStream:BeginWrite(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.BufferedStream:EndWrite(asyncResult)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.BufferedStream:WriteAsync(buffer, offset, count, cancellationToken)end
---@param value System.Byte
---@return System.Void
function System.IO.BufferedStream:WriteByte(value)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.BufferedStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.BufferedStream:SetLength(value)end
---@class System.IO.Directory : System.Object
System.IO.Directory = {}
---@type System.IO.Directory
CS.System.IO.Directory = System.IO.Directory

---@overload fun(path:System.String, searchPattern:System.String):System.String[]
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.String[]
---@param path System.String
---@return System.String[]
function System.IO.Directory.GetFiles(path)end
---@overload fun(path:System.String, searchPattern:System.String):System.String[]
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.String[]
---@param path System.String
---@return System.String[]
function System.IO.Directory.GetDirectories(path)end
---@overload fun(path:System.String, searchPattern:System.String):System.String[]
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.String[]
---@param path System.String
---@return System.String[]
function System.IO.Directory.GetFileSystemEntries(path)end
---@overload fun(path:System.String, searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@param path System.String
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateDirectories(path)end
---@overload fun(path:System.String, searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@param path System.String
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateFiles(path)end
---@overload fun(path:System.String, searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(path:System.String, searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@param path System.String
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateFileSystemEntries(path)end
---@param path System.String
---@return System.String
function System.IO.Directory.GetDirectoryRoot(path)end
---@overload fun(path:System.String, directorySecurity:System.Security.AccessControl.DirectorySecurity):System.IO.DirectoryInfo
---@param path System.String
---@return System.IO.DirectoryInfo
function System.IO.Directory.CreateDirectory(path)end
---@overload fun(path:System.String, recursive:System.Boolean):System.Void
---@param path System.String
---@return System.Void
function System.IO.Directory.Delete(path)end
---@param path System.String
---@return System.Boolean
function System.IO.Directory.Exists(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetLastAccessTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetLastAccessTimeUtc(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetLastWriteTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetLastWriteTimeUtc(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetCreationTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.Directory.GetCreationTimeUtc(path)end
---@return System.String
function System.IO.Directory.GetCurrentDirectory()end
---@return System.String[]
function System.IO.Directory.GetLogicalDrives()end
---@param path System.String
---@return System.IO.DirectoryInfo
function System.IO.Directory.GetParent(path)end
---@param sourceDirName System.String
---@param destDirName System.String
---@return System.Void
function System.IO.Directory.Move(sourceDirName, destDirName)end
---@param path System.String
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
---@return System.Void
function System.IO.Directory.SetAccessControl(path, directorySecurity)end
---@param path System.String
---@param creationTime System.DateTime
---@return System.Void
function System.IO.Directory.SetCreationTime(path, creationTime)end
---@param path System.String
---@param creationTimeUtc System.DateTime
---@return System.Void
function System.IO.Directory.SetCreationTimeUtc(path, creationTimeUtc)end
---@param path System.String
---@return System.Void
function System.IO.Directory.SetCurrentDirectory(path)end
---@param path System.String
---@param lastAccessTime System.DateTime
---@return System.Void
function System.IO.Directory.SetLastAccessTime(path, lastAccessTime)end
---@param path System.String
---@param lastAccessTimeUtc System.DateTime
---@return System.Void
function System.IO.Directory.SetLastAccessTimeUtc(path, lastAccessTimeUtc)end
---@param path System.String
---@param lastWriteTime System.DateTime
---@return System.Void
function System.IO.Directory.SetLastWriteTime(path, lastWriteTime)end
---@param path System.String
---@param lastWriteTimeUtc System.DateTime
---@return System.Void
function System.IO.Directory.SetLastWriteTimeUtc(path, lastWriteTimeUtc)end
---@overload fun(path:System.String, includeSections:System.Security.AccessControl.AccessControlSections):System.Security.AccessControl.DirectorySecurity
---@param path System.String
---@return System.Security.AccessControl.DirectorySecurity
function System.IO.Directory.GetAccessControl(path)end
---@class System.IO.DirectoryNotFoundException : System.IO.IOException
System.IO.DirectoryNotFoundException = {}
---@type System.IO.DirectoryNotFoundException
CS.System.IO.DirectoryNotFoundException = System.IO.DirectoryNotFoundException

---@class System.IO.DriveNotFoundException : System.IO.IOException
System.IO.DriveNotFoundException = {}
---@type System.IO.DriveNotFoundException
CS.System.IO.DriveNotFoundException = System.IO.DriveNotFoundException

---@class System.IO.EndOfStreamException : System.IO.IOException
System.IO.EndOfStreamException = {}
---@type System.IO.EndOfStreamException
CS.System.IO.EndOfStreamException = System.IO.EndOfStreamException

---@class System.IO.FileInfo : System.IO.FileSystemInfo
---@field public Name System.String @  getter
---@field public Length System.Int64 @  getter
---@field public DirectoryName System.String @  getter
---@field public Directory System.IO.DirectoryInfo @  getter
---@field public IsReadOnly System.Boolean @ setter getter
---@field public Exists System.Boolean @  getter
System.IO.FileInfo = {}
---@type System.IO.FileInfo
CS.System.IO.FileInfo = System.IO.FileInfo

---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):System.Security.AccessControl.FileSecurity
---@return System.Security.AccessControl.FileSecurity
function System.IO.FileInfo:GetAccessControl()end
---@param fileSecurity System.Security.AccessControl.FileSecurity
---@return System.Void
function System.IO.FileInfo:SetAccessControl(fileSecurity)end
---@return System.IO.StreamReader
function System.IO.FileInfo:OpenText()end
---@return System.IO.StreamWriter
function System.IO.FileInfo:CreateText()end
---@return System.IO.StreamWriter
function System.IO.FileInfo:AppendText()end
---@overload fun(destFileName:System.String, overwrite:System.Boolean):System.IO.FileInfo
---@param destFileName System.String
---@return System.IO.FileInfo
function System.IO.FileInfo:CopyTo(destFileName)end
---@return System.IO.FileStream
function System.IO.FileInfo:Create()end
---@return System.Void
function System.IO.FileInfo:Delete()end
---@return System.Void
function System.IO.FileInfo:Decrypt()end
---@return System.Void
function System.IO.FileInfo:Encrypt()end
---@overload fun(mode:System.IO.FileMode, access:System.IO.FileAccess):System.IO.FileStream
---@overload fun(mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare):System.IO.FileStream
---@param mode System.IO.FileMode
---@return System.IO.FileStream
function System.IO.FileInfo:Open(mode)end
---@return System.IO.FileStream
function System.IO.FileInfo:OpenRead()end
---@return System.IO.FileStream
function System.IO.FileInfo:OpenWrite()end
---@param destFileName System.String
---@return System.Void
function System.IO.FileInfo:MoveTo(destFileName)end
---@overload fun(destinationFileName:System.String, destinationBackupFileName:System.String, ignoreMetadataErrors:System.Boolean):System.IO.FileInfo
---@param destinationFileName System.String
---@param destinationBackupFileName System.String
---@return System.IO.FileInfo
function System.IO.FileInfo:Replace(destinationFileName, destinationBackupFileName)end
---@return System.String
function System.IO.FileInfo:ToString()end
---@class System.IO.FileLoadException : System.IO.IOException
---@field public Message System.String @  getter
---@field public FileName System.String @  getter
---@field public FusionLog System.String @  getter
System.IO.FileLoadException = {}
---@type System.IO.FileLoadException
CS.System.IO.FileLoadException = System.IO.FileLoadException

---@return System.String
function System.IO.FileLoadException:ToString()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.IO.FileLoadException:GetObjectData(info, context)end
---@class System.IO.FileNotFoundException : System.IO.IOException
---@field public Message System.String @  getter
---@field public FileName System.String @  getter
---@field public FusionLog System.String @  getter
System.IO.FileNotFoundException = {}
---@type System.IO.FileNotFoundException
CS.System.IO.FileNotFoundException = System.IO.FileNotFoundException

---@return System.String
function System.IO.FileNotFoundException:ToString()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.IO.FileNotFoundException:GetObjectData(info, context)end
---@class System.IO.FileSystemInfo : System.MarshalByRefObject
---@field public FullName System.String @  getter
---@field public Extension System.String @  getter
---@field public Name System.String @  getter
---@field public Exists System.Boolean @  getter
---@field public CreationTime System.DateTime @ setter getter
---@field public CreationTimeUtc System.DateTime @ setter getter
---@field public LastAccessTime System.DateTime @ setter getter
---@field public LastAccessTimeUtc System.DateTime @ setter getter
---@field public LastWriteTime System.DateTime @ setter getter
---@field public LastWriteTimeUtc System.DateTime @ setter getter
---@field public Attributes System.IO.FileAttributes @ setter getter
System.IO.FileSystemInfo = {}
---@type System.IO.FileSystemInfo
CS.System.IO.FileSystemInfo = System.IO.FileSystemInfo

---@return System.Void
function System.IO.FileSystemInfo:Delete()end
---@return System.Void
function System.IO.FileSystemInfo:Refresh()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.IO.FileSystemInfo:GetObjectData(info, context)end
---@class System.IO.IOException : System.SystemException
System.IO.IOException = {}
---@type System.IO.IOException
CS.System.IO.IOException = System.IO.IOException

---@class System.IO.MemoryStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Capacity System.Int32 @ setter getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.IO.MemoryStream = {}
---@type System.IO.MemoryStream
CS.System.IO.MemoryStream = System.IO.MemoryStream

---@return System.Void
function System.IO.MemoryStream:Flush()end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:FlushAsync(cancellationToken)end
---@return System.Byte[]
function System.IO.MemoryStream:GetBuffer()end
---@param buffer System.ArraySegment
---@return System.Boolean
function System.IO.MemoryStream:TryGetBuffer(buffer)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.MemoryStream:Read(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:ReadAsync(buffer, offset, count, cancellationToken)end
---@return System.Int32
function System.IO.MemoryStream:ReadByte()end
---@param destination System.IO.Stream
---@param bufferSize System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:CopyToAsync(destination, bufferSize, cancellationToken)end
---@param offset System.Int64
---@param loc System.IO.SeekOrigin
---@return System.Int64
function System.IO.MemoryStream:Seek(offset, loc)end
---@param value System.Int64
---@return System.Void
function System.IO.MemoryStream:SetLength(value)end
---@return System.Byte[]
function System.IO.MemoryStream:ToArray()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.MemoryStream:Write(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:WriteAsync(buffer, offset, count, cancellationToken)end
---@param value System.Byte
---@return System.Void
function System.IO.MemoryStream:WriteByte(value)end
---@param stream System.IO.Stream
---@return System.Void
function System.IO.MemoryStream:WriteTo(stream)end
---@class System.IO.PathTooLongException : System.IO.IOException
System.IO.PathTooLongException = {}
---@type System.IO.PathTooLongException
CS.System.IO.PathTooLongException = System.IO.PathTooLongException

---@class System.IO.Stream : System.MarshalByRefObject
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanTimeout System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public ReadTimeout System.Int32 @ setter getter
---@field public WriteTimeout System.Int32 @ setter getter
---@field public Null System.IO.Stream
System.IO.Stream = {}
---@type System.IO.Stream
CS.System.IO.Stream = System.IO.Stream

---@overload fun(destination:System.IO.Stream, bufferSize:System.Int32):System.Threading.Tasks.Task
---@overload fun(destination:System.IO.Stream, bufferSize:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param destination System.IO.Stream
---@return System.Threading.Tasks.Task
function System.IO.Stream:CopyToAsync(destination)end
---@overload fun(destination:System.IO.Stream, bufferSize:System.Int32):System.Void
---@param destination System.IO.Stream
---@return System.Void
function System.IO.Stream:CopyTo(destination)end
---@return System.Void
function System.IO.Stream:Close()end
---@return System.Void
function System.IO.Stream:Dispose()end
---@return System.Void
function System.IO.Stream:Flush()end
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.Stream:FlushAsync()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream:BeginRead(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.Stream:EndRead(asyncResult)end
---@overload fun(destination:System.Memory):System.Threading.Tasks.ValueTask
---@overload fun(destination:System.Memory):System.Threading.Tasks.ValueTask
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.Stream:ReadAsync(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream:BeginWrite(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.Stream:EndWrite(asyncResult)end
---@overload fun(source:System.ReadOnlyMemory):System.Threading.Tasks.Task
---@overload fun(source:System.ReadOnlyMemory):System.Threading.Tasks.Task
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.Stream:WriteAsync(buffer, offset, count)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.Stream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.Stream:SetLength(value)end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Int32
---@param destination System.Span
---@return System.Int32
function System.IO.Stream:Read(destination)end
---@return System.Int32
function System.IO.Stream:ReadByte()end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param source System.ReadOnlySpan
---@return System.Void
function System.IO.Stream:Write(source)end
---@param value System.Byte
---@return System.Void
function System.IO.Stream:WriteByte(value)end
---@param stream System.IO.Stream
---@return System.IO.Stream
function System.IO.Stream.Synchronized(stream)end
---@class System.IO.StreamReader : System.IO.TextReader
---@field public CurrentEncoding System.Text.Encoding @  getter
---@field public BaseStream System.IO.Stream @  getter
---@field public EndOfStream System.Boolean @  getter
---@field public Null System.IO.StreamReader
System.IO.StreamReader = {}
---@type System.IO.StreamReader
CS.System.IO.StreamReader = System.IO.StreamReader

---@return System.Void
function System.IO.StreamReader:Close()end
---@return System.Void
function System.IO.StreamReader:DiscardBufferedData()end
---@return System.Int32
function System.IO.StreamReader:Peek()end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@return System.Int32
function System.IO.StreamReader:Read()end
---@return System.String
function System.IO.StreamReader:ReadToEnd()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.StreamReader:ReadBlock(buffer, index, count)end
---@return System.String
function System.IO.StreamReader:ReadLine()end
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadLineAsync()end
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadToEndAsync()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadAsync(buffer, index, count)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadBlockAsync(buffer, index, count)end
---@class System.IO.StreamWriter : System.IO.TextWriter
---@field public AutoFlush System.Boolean @ setter getter
---@field public BaseStream System.IO.Stream @  getter
---@field public Encoding System.Text.Encoding @  getter
---@field public Null System.IO.StreamWriter
System.IO.StreamWriter = {}
---@type System.IO.StreamWriter
CS.System.IO.StreamWriter = System.IO.StreamWriter

---@return System.Void
function System.IO.StreamWriter:Close()end
---@return System.Void
function System.IO.StreamWriter:Flush()end
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param value System.Char
---@return System.Void
function System.IO.StreamWriter:Write(value)end
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@param value System.Char
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:WriteAsync(value)end
---@overload fun(value:System.Char):System.Threading.Tasks.Task
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:WriteLineAsync()end
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:FlushAsync()end
---@class System.IO.StringReader : System.IO.TextReader
System.IO.StringReader = {}
---@type System.IO.StringReader
CS.System.IO.StringReader = System.IO.StringReader

---@return System.Void
function System.IO.StringReader:Close()end
---@return System.Int32
function System.IO.StringReader:Peek()end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@return System.Int32
function System.IO.StringReader:Read()end
---@return System.String
function System.IO.StringReader:ReadToEnd()end
---@return System.String
function System.IO.StringReader:ReadLine()end
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadLineAsync()end
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadToEndAsync()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadBlockAsync(buffer, index, count)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadAsync(buffer, index, count)end
---@class System.IO.StringWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding @  getter
System.IO.StringWriter = {}
---@type System.IO.StringWriter
CS.System.IO.StringWriter = System.IO.StringWriter

---@return System.Void
function System.IO.StringWriter:Close()end
---@return System.Text.StringBuilder
function System.IO.StringWriter:GetStringBuilder()end
---@overload fun(value:System.String):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param value System.Char
---@return System.Void
function System.IO.StringWriter:Write(value)end
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@param value System.Char
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:WriteAsync(value)end
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@param value System.Char
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:WriteLineAsync(value)end
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:FlushAsync()end
---@return System.String
function System.IO.StringWriter:ToString()end
---@class System.IO.TextReader : System.MarshalByRefObject
---@field public Null System.IO.TextReader
System.IO.TextReader = {}
---@type System.IO.TextReader
CS.System.IO.TextReader = System.IO.TextReader

---@return System.Void
function System.IO.TextReader:Close()end
---@return System.Void
function System.IO.TextReader:Dispose()end
---@return System.Int32
function System.IO.TextReader:Peek()end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@return System.Int32
function System.IO.TextReader:Read()end
---@return System.String
function System.IO.TextReader:ReadToEnd()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.TextReader:ReadBlock(buffer, index, count)end
---@return System.String
function System.IO.TextReader:ReadLine()end
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadLineAsync()end
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadToEndAsync()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadAsync(buffer, index, count)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadBlockAsync(buffer, index, count)end
---@param reader System.IO.TextReader
---@return System.IO.TextReader
function System.IO.TextReader.Synchronized(reader)end
---@class System.IO.TextWriter : System.MarshalByRefObject
---@field public FormatProvider System.IFormatProvider @  getter
---@field public Encoding System.Text.Encoding @  getter
---@field public NewLine System.String @ setter getter
---@field public Null System.IO.TextWriter
System.IO.TextWriter = {}
---@type System.IO.TextWriter
CS.System.IO.TextWriter = System.IO.TextWriter

---@return System.Void
function System.IO.TextWriter:Close()end
---@return System.Void
function System.IO.TextWriter:Dispose()end
---@return System.Void
function System.IO.TextWriter:Flush()end
---@param writer System.IO.TextWriter
---@return System.IO.TextWriter
function System.IO.TextWriter.Synchronized(writer)end
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Void
---@param value System.Char
---@return System.Void
function System.IO.TextWriter:Write(value)end
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Void
---@return System.Void
function System.IO.TextWriter:WriteLine()end
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[]):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@param value System.Char
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:WriteAsync(value)end
---@overload fun(value:System.Char):System.Threading.Tasks.Task
---@overload fun(value:System.String):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[]):System.Threading.Tasks.Task
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:WriteLineAsync()end
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:FlushAsync()end
---@class System.IO.UnmanagedMemoryAccessor : System.Object
---@field public Capacity System.Int64 @  getter
---@field public CanRead System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
System.IO.UnmanagedMemoryAccessor = {}
---@type System.IO.UnmanagedMemoryAccessor
CS.System.IO.UnmanagedMemoryAccessor = System.IO.UnmanagedMemoryAccessor

---@return System.Void
function System.IO.UnmanagedMemoryAccessor:Dispose()end
---@param position System.Int64
---@return System.Boolean
function System.IO.UnmanagedMemoryAccessor:ReadBoolean(position)end
---@param position System.Int64
---@return System.Byte
function System.IO.UnmanagedMemoryAccessor:ReadByte(position)end
---@param position System.Int64
---@return System.Char
function System.IO.UnmanagedMemoryAccessor:ReadChar(position)end
---@param position System.Int64
---@return System.Int16
function System.IO.UnmanagedMemoryAccessor:ReadInt16(position)end
---@param position System.Int64
---@return System.Int32
function System.IO.UnmanagedMemoryAccessor:ReadInt32(position)end
---@param position System.Int64
---@return System.Int64
function System.IO.UnmanagedMemoryAccessor:ReadInt64(position)end
---@param position System.Int64
---@return System.Decimal
function System.IO.UnmanagedMemoryAccessor:ReadDecimal(position)end
---@param position System.Int64
---@return System.Single
function System.IO.UnmanagedMemoryAccessor:ReadSingle(position)end
---@param position System.Int64
---@return System.Double
function System.IO.UnmanagedMemoryAccessor:ReadDouble(position)end
---@param position System.Int64
---@return System.SByte
function System.IO.UnmanagedMemoryAccessor:ReadSByte(position)end
---@param position System.Int64
---@return System.UInt16
function System.IO.UnmanagedMemoryAccessor:ReadUInt16(position)end
---@param position System.Int64
---@return System.UInt32
function System.IO.UnmanagedMemoryAccessor:ReadUInt32(position)end
---@param position System.Int64
---@return System.UInt64
function System.IO.UnmanagedMemoryAccessor:ReadUInt64(position)end
---@param position System.Int64
---@param structure any
---@return System.Void
function System.IO.UnmanagedMemoryAccessor:Read(position, structure)end
---@param position System.Int64
---@param array T[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.UnmanagedMemoryAccessor:ReadArray(position, array, offset, count)end
---@overload fun(position:System.Int64, value:System.Byte):System.Void
---@overload fun(position:System.Int64, value:System.Char):System.Void
---@overload fun(position:System.Int64, value:System.Int16):System.Void
---@overload fun(position:System.Int64, value:System.Int32):System.Void
---@overload fun(position:System.Int64, value:System.Int64):System.Void
---@overload fun(position:System.Int64, value:System.Single):System.Void
---@overload fun(position:System.Int64, value:System.Double):System.Void
---@overload fun(position:System.Int64, value:System.SByte):System.Void
---@overload fun(position:System.Int64, value:System.UInt16):System.Void
---@overload fun(position:System.Int64, value:System.UInt32):System.Void
---@overload fun(position:System.Int64, value:System.UInt64):System.Void
---@overload fun(position:System.Int64, value:System.Decimal):System.Void
---@overload fun(position:System.Int64, structure:any):System.Void
---@param position System.Int64
---@param value System.Boolean
---@return System.Void
function System.IO.UnmanagedMemoryAccessor:Write(position, value)end
---@param position System.Int64
---@param array T[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.UnmanagedMemoryAccessor:WriteArray(position, array, offset, count)end
---@class System.IO.UnmanagedMemoryStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Capacity System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public PositionPointer System.Byte @ setter getter
System.IO.UnmanagedMemoryStream = {}
---@type System.IO.UnmanagedMemoryStream
CS.System.IO.UnmanagedMemoryStream = System.IO.UnmanagedMemoryStream

---@return System.Void
function System.IO.UnmanagedMemoryStream:Flush()end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStream:FlushAsync(cancellationToken)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.UnmanagedMemoryStream:Read(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStream:ReadAsync(buffer, offset, count, cancellationToken)end
---@return System.Int32
function System.IO.UnmanagedMemoryStream:ReadByte()end
---@param offset System.Int64
---@param loc System.IO.SeekOrigin
---@return System.Int64
function System.IO.UnmanagedMemoryStream:Seek(offset, loc)end
---@param value System.Int64
---@return System.Void
function System.IO.UnmanagedMemoryStream:SetLength(value)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.UnmanagedMemoryStream:Write(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStream:WriteAsync(buffer, offset, count, cancellationToken)end
---@param value System.Byte
---@return System.Void
function System.IO.UnmanagedMemoryStream:WriteByte(value)end
---@class System.IO.DirectoryInfo : System.IO.FileSystemInfo
---@field public Exists System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Parent System.IO.DirectoryInfo @  getter
---@field public Root System.IO.DirectoryInfo @  getter
System.IO.DirectoryInfo = {}
---@type System.IO.DirectoryInfo
CS.System.IO.DirectoryInfo = System.IO.DirectoryInfo

---@overload fun(directorySecurity:System.Security.AccessControl.DirectorySecurity):System.Void
---@return System.Void
function System.IO.DirectoryInfo:Create()end
---@overload fun(path:System.String, directorySecurity:System.Security.AccessControl.DirectorySecurity):System.IO.DirectoryInfo
---@param path System.String
---@return System.IO.DirectoryInfo
function System.IO.DirectoryInfo:CreateSubdirectory(path)end
---@overload fun(searchPattern:System.String):System.IO.FileInfo[]
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.IO.FileInfo[]
---@return System.IO.FileInfo[]
function System.IO.DirectoryInfo:GetFiles()end
---@overload fun(searchPattern:System.String):System.IO.DirectoryInfo[]
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.IO.DirectoryInfo[]
---@return System.IO.DirectoryInfo[]
function System.IO.DirectoryInfo:GetDirectories()end
---@overload fun(searchPattern:System.String):System.IO.FileSystemInfo[]
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.IO.FileSystemInfo[]
---@return System.IO.FileSystemInfo[]
function System.IO.DirectoryInfo:GetFileSystemInfos()end
---@overload fun(recursive:System.Boolean):System.Void
---@return System.Void
function System.IO.DirectoryInfo:Delete()end
---@param destDirName System.String
---@return System.Void
function System.IO.DirectoryInfo:MoveTo(destDirName)end
---@return System.String
function System.IO.DirectoryInfo:ToString()end
---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):System.Security.AccessControl.DirectorySecurity
---@return System.Security.AccessControl.DirectorySecurity
function System.IO.DirectoryInfo:GetAccessControl()end
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
---@return System.Void
function System.IO.DirectoryInfo:SetAccessControl(directorySecurity)end
---@overload fun(searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateDirectories()end
---@overload fun(searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateFiles()end
---@overload fun(searchPattern:System.String):System.Collections.Generic.IEnumerable
---@overload fun(searchPattern:System.String, searchOption:System.IO.SearchOption):System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateFileSystemInfos()end
---@class System.IO.DriveInfo : System.Object
---@field public AvailableFreeSpace System.Int64 @  getter
---@field public TotalFreeSpace System.Int64 @  getter
---@field public TotalSize System.Int64 @  getter
---@field public VolumeLabel System.String @ setter getter
---@field public DriveFormat System.String @  getter
---@field public DriveType System.IO.DriveType @  getter
---@field public Name System.String @  getter
---@field public RootDirectory System.IO.DirectoryInfo @  getter
---@field public IsReady System.Boolean @  getter
System.IO.DriveInfo = {}
---@type System.IO.DriveInfo
CS.System.IO.DriveInfo = System.IO.DriveInfo

---@return System.IO.DriveInfo[]
function System.IO.DriveInfo.GetDrives()end
---@return System.String
function System.IO.DriveInfo:ToString()end
---@class System.IO.DriveType : System.Enum
System.IO.DriveType = {}
---@type System.IO.DriveType
CS.System.IO.DriveType = System.IO.DriveType

---@return System.Int32 value:0
System.IO.DriveType.Unknown = 0
---@return System.Int32 value:1
System.IO.DriveType.NoRootDirectory = 1
---@return System.Int32 value:2
System.IO.DriveType.Removable = 2
---@return System.Int32 value:3
System.IO.DriveType.Fixed = 3
---@return System.Int32 value:4
System.IO.DriveType.Network = 4
---@return System.Int32 value:5
System.IO.DriveType.CDRom = 5
---@return System.Int32 value:6
System.IO.DriveType.Ram = 6

---@class System.IO.File : System.Object
System.IO.File = {}
---@type System.IO.File
CS.System.IO.File = System.IO.File

---@overload fun(path:System.String, contents:System.String, encoding:System.Text.Encoding):System.Void
---@param path System.String
---@param contents System.String
---@return System.Void
function System.IO.File.AppendAllText(path, contents)end
---@param path System.String
---@return System.IO.StreamWriter
function System.IO.File.AppendText(path)end
---@overload fun(sourceFileName:System.String, destFileName:System.String, overwrite:System.Boolean):System.Void
---@param sourceFileName System.String
---@param destFileName System.String
---@return System.Void
function System.IO.File.Copy(sourceFileName, destFileName)end
---@overload fun(path:System.String, bufferSize:System.Int32):System.IO.FileStream
---@overload fun(path:System.String, bufferSize:System.Int32, options:System.IO.FileOptions):System.IO.FileStream
---@overload fun(path:System.String, bufferSize:System.Int32, options:System.IO.FileOptions, fileSecurity:System.Security.AccessControl.FileSecurity):System.IO.FileStream
---@param path System.String
---@return System.IO.FileStream
function System.IO.File.Create(path)end
---@param path System.String
---@return System.IO.StreamWriter
function System.IO.File.CreateText(path)end
---@param path System.String
---@return System.Void
function System.IO.File.Delete(path)end
---@param path System.String
---@return System.Boolean
function System.IO.File.Exists(path)end
---@overload fun(path:System.String, includeSections:System.Security.AccessControl.AccessControlSections):System.Security.AccessControl.FileSecurity
---@param path System.String
---@return System.Security.AccessControl.FileSecurity
function System.IO.File.GetAccessControl(path)end
---@param path System.String
---@return System.IO.FileAttributes
function System.IO.File.GetAttributes(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetCreationTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetCreationTimeUtc(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetLastAccessTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetLastAccessTimeUtc(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetLastWriteTime(path)end
---@param path System.String
---@return System.DateTime
function System.IO.File.GetLastWriteTimeUtc(path)end
---@param sourceFileName System.String
---@param destFileName System.String
---@return System.Void
function System.IO.File.Move(sourceFileName, destFileName)end
---@overload fun(path:System.String, mode:System.IO.FileMode, access:System.IO.FileAccess):System.IO.FileStream
---@overload fun(path:System.String, mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare):System.IO.FileStream
---@param path System.String
---@param mode System.IO.FileMode
---@return System.IO.FileStream
function System.IO.File.Open(path, mode)end
---@param path System.String
---@return System.IO.FileStream
function System.IO.File.OpenRead(path)end
---@param path System.String
---@return System.IO.StreamReader
function System.IO.File.OpenText(path)end
---@param path System.String
---@return System.IO.FileStream
function System.IO.File.OpenWrite(path)end
---@overload fun(sourceFileName:System.String, destinationFileName:System.String, destinationBackupFileName:System.String, ignoreMetadataErrors:System.Boolean):System.Void
---@param sourceFileName System.String
---@param destinationFileName System.String
---@param destinationBackupFileName System.String
---@return System.Void
function System.IO.File.Replace(sourceFileName, destinationFileName, destinationBackupFileName)end
---@param path System.String
---@param fileSecurity System.Security.AccessControl.FileSecurity
---@return System.Void
function System.IO.File.SetAccessControl(path, fileSecurity)end
---@param path System.String
---@param fileAttributes System.IO.FileAttributes
---@return System.Void
function System.IO.File.SetAttributes(path, fileAttributes)end
---@param path System.String
---@param creationTime System.DateTime
---@return System.Void
function System.IO.File.SetCreationTime(path, creationTime)end
---@param path System.String
---@param creationTimeUtc System.DateTime
---@return System.Void
function System.IO.File.SetCreationTimeUtc(path, creationTimeUtc)end
---@param path System.String
---@param lastAccessTime System.DateTime
---@return System.Void
function System.IO.File.SetLastAccessTime(path, lastAccessTime)end
---@param path System.String
---@param lastAccessTimeUtc System.DateTime
---@return System.Void
function System.IO.File.SetLastAccessTimeUtc(path, lastAccessTimeUtc)end
---@param path System.String
---@param lastWriteTime System.DateTime
---@return System.Void
function System.IO.File.SetLastWriteTime(path, lastWriteTime)end
---@param path System.String
---@param lastWriteTimeUtc System.DateTime
---@return System.Void
function System.IO.File.SetLastWriteTimeUtc(path, lastWriteTimeUtc)end
---@param path System.String
---@return System.Byte[]
function System.IO.File.ReadAllBytes(path)end
---@overload fun(path:System.String, encoding:System.Text.Encoding):System.String[]
---@param path System.String
---@return System.String[]
function System.IO.File.ReadAllLines(path)end
---@overload fun(path:System.String, encoding:System.Text.Encoding):System.String
---@param path System.String
---@return System.String
function System.IO.File.ReadAllText(path)end
---@param path System.String
---@param bytes System.Byte[]
---@return System.Void
function System.IO.File.WriteAllBytes(path, bytes)end
---@overload fun(path:System.String, contents:System.Collections.Generic.IEnumerable):System.Void
---@overload fun(path:System.String, contents:System.String[], encoding:System.Text.Encoding):System.Void
---@overload fun(path:System.String, contents:System.Collections.Generic.IEnumerable, encoding:System.Text.Encoding):System.Void
---@param path System.String
---@param contents System.String[]
---@return System.Void
function System.IO.File.WriteAllLines(path, contents)end
---@overload fun(path:System.String, contents:System.String, encoding:System.Text.Encoding):System.Void
---@param path System.String
---@param contents System.String
---@return System.Void
function System.IO.File.WriteAllText(path, contents)end
---@param path System.String
---@return System.Void
function System.IO.File.Encrypt(path)end
---@param path System.String
---@return System.Void
function System.IO.File.Decrypt(path)end
---@overload fun(path:System.String, encoding:System.Text.Encoding):System.Collections.Generic.IEnumerable
---@param path System.String
---@return System.Collections.Generic.IEnumerable
function System.IO.File.ReadLines(path)end
---@overload fun(path:System.String, contents:System.Collections.Generic.IEnumerable, encoding:System.Text.Encoding):System.Void
---@param path System.String
---@param contents System.Collections.Generic.IEnumerable
---@return System.Void
function System.IO.File.AppendAllLines(path, contents)end
---@class System.IO.FileAccess : System.Enum
System.IO.FileAccess = {}
---@type System.IO.FileAccess
CS.System.IO.FileAccess = System.IO.FileAccess

---@return System.Int32 value:1
System.IO.FileAccess.Read = 1
---@return System.Int32 value:2
System.IO.FileAccess.Write = 2

---@class System.IO.FileAttributes : System.Enum
System.IO.FileAttributes = {}
---@type System.IO.FileAttributes
CS.System.IO.FileAttributes = System.IO.FileAttributes

---@return System.Int32 value:1
System.IO.FileAttributes.ReadOnly = 1
---@return System.Int32 value:2
System.IO.FileAttributes.Hidden = 2
---@return System.Int32 value:4
System.IO.FileAttributes.System = 4

---@class System.IO.FileMode : System.Enum
System.IO.FileMode = {}
---@type System.IO.FileMode
CS.System.IO.FileMode = System.IO.FileMode

---@return System.Int32 value:1
System.IO.FileMode.CreateNew = 1
---@return System.Int32 value:2
System.IO.FileMode.Create = 2
---@return System.Int32 value:3
System.IO.FileMode.Open = 3
---@return System.Int32 value:4
System.IO.FileMode.OpenOrCreate = 4
---@return System.Int32 value:5
System.IO.FileMode.Truncate = 5

---@class System.IO.FileOptions : System.Enum
System.IO.FileOptions = {}
---@type System.IO.FileOptions
CS.System.IO.FileOptions = System.IO.FileOptions

---@return System.Int32 value:0
System.IO.FileOptions.None = 0

---@class System.IO.FileShare : System.Enum
System.IO.FileShare = {}
---@type System.IO.FileShare
CS.System.IO.FileShare = System.IO.FileShare

---@return System.Int32 value:0
System.IO.FileShare.None = 0
---@return System.Int32 value:1
System.IO.FileShare.Read = 1
---@return System.Int32 value:2
System.IO.FileShare.Write = 2
---@return System.Int32 value:3
System.IO.FileShare.ReadWrite = 3
---@return System.Int32 value:4
System.IO.FileShare.Delete = 4

---@class System.IO.FileStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public IsAsync System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public Handle System.IntPtr @  getter
---@field public SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle @  getter
System.IO.FileStream = {}
---@type System.IO.FileStream
CS.System.IO.FileStream = System.IO.FileStream

---@return System.Int32
function System.IO.FileStream:ReadByte()end
---@param value System.Byte
---@return System.Void
function System.IO.FileStream:WriteByte(value)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.FileStream:Read(array, offset, count)end
---@param array System.Byte[]
---@param offset System.Int32
---@param numBytes System.Int32
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.FileStream:BeginRead(array, offset, numBytes, userCallback, stateObject)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.FileStream:EndRead(asyncResult)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.FileStream:Write(array, offset, count)end
---@param array System.Byte[]
---@param offset System.Int32
---@param numBytes System.Int32
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.FileStream:BeginWrite(array, offset, numBytes, userCallback, stateObject)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.FileStream:EndWrite(asyncResult)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.FileStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.FileStream:SetLength(value)end
---@overload fun(flushToDisk:System.Boolean):System.Void
---@return System.Void
function System.IO.FileStream:Flush()end
---@param position System.Int64
---@param length System.Int64
---@return System.Void
function System.IO.FileStream:Lock(position, length)end
---@param position System.Int64
---@param length System.Int64
---@return System.Void
function System.IO.FileStream:Unlock(position, length)end
---@return System.Security.AccessControl.FileSecurity
function System.IO.FileStream:GetAccessControl()end
---@param fileSecurity System.Security.AccessControl.FileSecurity
---@return System.Void
function System.IO.FileStream:SetAccessControl(fileSecurity)end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:FlushAsync(cancellationToken)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:ReadAsync(buffer, offset, count, cancellationToken)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:WriteAsync(buffer, offset, count, cancellationToken)end
---@class System.IO.Path : System.Object
---@field public InvalidPathChars System.Char[]
---@field public AltDirectorySeparatorChar System.Char
---@field public DirectorySeparatorChar System.Char
---@field public PathSeparator System.Char
---@field public VolumeSeparatorChar System.Char
System.IO.Path = {}
---@type System.IO.Path
CS.System.IO.Path = System.IO.Path

---@param path System.String
---@param extension System.String
---@return System.String
function System.IO.Path.ChangeExtension(path, extension)end
---@overload fun(path1:System.String, path2:System.String):System.String
---@overload fun(path1:System.String, path2:System.String, path3:System.String):System.String
---@overload fun(path1:System.String, path2:System.String, path3:System.String, path4:System.String):System.String
---@param paths System.String[]
---@return System.String
function System.IO.Path.Combine(paths)end
---@param path System.String
---@return System.String
function System.IO.Path.GetDirectoryName(path)end
---@param path System.String
---@return System.String
function System.IO.Path.GetExtension(path)end
---@param path System.String
---@return System.String
function System.IO.Path.GetFileName(path)end
---@param path System.String
---@return System.String
function System.IO.Path.GetFileNameWithoutExtension(path)end
---@param path System.String
---@return System.String
function System.IO.Path.GetFullPath(path)end
---@param path System.String
---@return System.String
function System.IO.Path.GetPathRoot(path)end
---@return System.String
function System.IO.Path.GetTempFileName()end
---@return System.String
function System.IO.Path.GetTempPath()end
---@param path System.String
---@return System.Boolean
function System.IO.Path.HasExtension(path)end
---@param path System.String
---@return System.Boolean
function System.IO.Path.IsPathRooted(path)end
---@return System.Char[]
function System.IO.Path.GetInvalidFileNameChars()end
---@return System.Char[]
function System.IO.Path.GetInvalidPathChars()end
---@return System.String
function System.IO.Path.GetRandomFileName()end
---@class System.IO.SearchOption : System.Enum
System.IO.SearchOption = {}
---@type System.IO.SearchOption
CS.System.IO.SearchOption = System.IO.SearchOption

---@return System.Int32 value:0
System.IO.SearchOption.TopDirectoryOnly = 0
---@return System.Int32 value:1
System.IO.SearchOption.AllDirectories = 1

---@class System.IO.SeekOrigin : System.Enum
System.IO.SeekOrigin = {}
---@type System.IO.SeekOrigin
CS.System.IO.SeekOrigin = System.IO.SeekOrigin

---@return System.Int32 value:0
System.IO.SeekOrigin.Begin = 0
---@return System.Int32 value:1
System.IO.SeekOrigin.Current = 1
---@return System.Int32 value:2
System.IO.SeekOrigin.End = 2

---@class System.IO.HandleInheritability : System.Enum
System.IO.HandleInheritability = {}
---@type System.IO.HandleInheritability
CS.System.IO.HandleInheritability = System.IO.HandleInheritability

---@return System.Int32 value:0
System.IO.HandleInheritability.None = 0
---@return System.Int32 value:1
System.IO.HandleInheritability.Inheritable = 1

---@class System.IO.ErrorEventArgs : System.EventArgs
System.IO.ErrorEventArgs = {}
---@type System.IO.ErrorEventArgs
CS.System.IO.ErrorEventArgs = System.IO.ErrorEventArgs

---@return System.Exception
function System.IO.ErrorEventArgs:GetException()end
---@class System.IO.FileSystemEventArgs : System.EventArgs
---@field public ChangeType System.IO.WatcherChangeTypes @  getter
---@field public FullPath System.String @  getter
---@field public Name System.String @  getter
System.IO.FileSystemEventArgs = {}
---@type System.IO.FileSystemEventArgs
CS.System.IO.FileSystemEventArgs = System.IO.FileSystemEventArgs

---@class System.IO.FileSystemWatcher : System.ComponentModel.Component
---@field public EnableRaisingEvents System.Boolean @ setter getter
---@field public Filter System.String @ setter getter
---@field public IncludeSubdirectories System.Boolean @ setter getter
---@field public InternalBufferSize System.Int32 @ setter getter
---@field public NotifyFilter System.IO.NotifyFilters @ setter getter
---@field public Path System.String @ setter getter
---@field public Site System.ComponentModel.ISite @ setter getter
---@field public SynchronizingObject System.ComponentModel.ISynchronizeInvoke @ setter getter
System.IO.FileSystemWatcher = {}
---@type System.IO.FileSystemWatcher
CS.System.IO.FileSystemWatcher = System.IO.FileSystemWatcher

---@return System.Void
function System.IO.FileSystemWatcher:BeginInit()end
---@return System.Void
function System.IO.FileSystemWatcher:EndInit()end
---@overload fun(changeType:System.IO.WatcherChangeTypes, timeout:System.Int32):System.IO.WaitForChangedResult
---@param changeType System.IO.WatcherChangeTypes
---@return System.IO.WaitForChangedResult
function System.IO.FileSystemWatcher:WaitForChanged(changeType)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:add_Changed(value)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:remove_Changed(value)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:add_Created(value)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:remove_Created(value)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:add_Deleted(value)end
---@param value System.IO.FileSystemEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:remove_Deleted(value)end
---@param value System.IO.ErrorEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:add_Error(value)end
---@param value System.IO.ErrorEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:remove_Error(value)end
---@param value System.IO.RenamedEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:add_Renamed(value)end
---@param value System.IO.RenamedEventHandler
---@return System.Void
function System.IO.FileSystemWatcher:remove_Renamed(value)end
---@class System.IO.IODescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field public Description System.String @  getter
System.IO.IODescriptionAttribute = {}
---@type System.IO.IODescriptionAttribute
CS.System.IO.IODescriptionAttribute = System.IO.IODescriptionAttribute

---@class System.IO.InternalBufferOverflowException : System.SystemException
System.IO.InternalBufferOverflowException = {}
---@type System.IO.InternalBufferOverflowException
CS.System.IO.InternalBufferOverflowException = System.IO.InternalBufferOverflowException

---@class System.IO.InvalidDataException : System.SystemException
System.IO.InvalidDataException = {}
---@type System.IO.InvalidDataException
CS.System.IO.InvalidDataException = System.IO.InvalidDataException

---@class System.IO.NotifyFilters : System.Enum
System.IO.NotifyFilters = {}
---@type System.IO.NotifyFilters
CS.System.IO.NotifyFilters = System.IO.NotifyFilters

---@return System.Int32 value:1
System.IO.NotifyFilters.FileName = 1
---@return System.Int32 value:2
System.IO.NotifyFilters.DirectoryName = 2
---@return System.Int32 value:4
System.IO.NotifyFilters.Attributes = 4

---@class System.IO.RenamedEventArgs : System.IO.FileSystemEventArgs
---@field public OldFullPath System.String @  getter
---@field public OldName System.String @  getter
System.IO.RenamedEventArgs = {}
---@type System.IO.RenamedEventArgs
CS.System.IO.RenamedEventArgs = System.IO.RenamedEventArgs

---@class System.IO.WaitForChangedResult : System.ValueType
---@field public ChangeType System.IO.WatcherChangeTypes @ setter getter
---@field public Name System.String @ setter getter
---@field public OldName System.String @ setter getter
---@field public TimedOut System.Boolean @ setter getter
System.IO.WaitForChangedResult = {}
---@type System.IO.WaitForChangedResult
CS.System.IO.WaitForChangedResult = System.IO.WaitForChangedResult

---@class System.IO.WatcherChangeTypes : System.Enum
System.IO.WatcherChangeTypes = {}
---@type System.IO.WatcherChangeTypes
CS.System.IO.WatcherChangeTypes = System.IO.WatcherChangeTypes

---@return System.Int32 value:1
System.IO.WatcherChangeTypes.Created = 1
---@return System.Int32 value:2
System.IO.WatcherChangeTypes.Deleted = 2
---@return System.Int32 value:4
System.IO.WatcherChangeTypes.Changed = 4

