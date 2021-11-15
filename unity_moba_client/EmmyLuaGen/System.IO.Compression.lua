---@class System.IO.Compression.CompressionLevel : System.Enum
System.IO.Compression.CompressionLevel = {}
---@type System.IO.Compression.CompressionLevel
CS.System.IO.Compression.CompressionLevel = System.IO.Compression.CompressionLevel

---@return System.Int32 value:0
System.IO.Compression.CompressionLevel.Optimal = 0
---@return System.Int32 value:1
System.IO.Compression.CompressionLevel.Fastest = 1
---@return System.Int32 value:2
System.IO.Compression.CompressionLevel.NoCompression = 2

---@class System.IO.Compression.CompressionMode : System.Enum
System.IO.Compression.CompressionMode = {}
---@type System.IO.Compression.CompressionMode
CS.System.IO.Compression.CompressionMode = System.IO.Compression.CompressionMode

---@return System.Int32 value:0
System.IO.Compression.CompressionMode.Decompress = 0
---@return System.Int32 value:1
System.IO.Compression.CompressionMode.Compress = 1

---@class System.IO.Compression.GZipStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public BaseStream System.IO.Stream @  getter
System.IO.Compression.GZipStream = {}
---@type System.IO.Compression.GZipStream
CS.System.IO.Compression.GZipStream = System.IO.Compression.GZipStream

---@return System.Void
function System.IO.Compression.GZipStream:Flush()end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.Compression.GZipStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.Compression.GZipStream:SetLength(value)end
---@return System.Int32
function System.IO.Compression.GZipStream:ReadByte()end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.IO.Compression.GZipStream:BeginRead(array, offset, count, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.Compression.GZipStream:EndRead(asyncResult)end
---@overload fun(array:System.Byte[], offset:System.Int32, count:System.Int32):System.Int32
---@param destination System.Span
---@return System.Int32
function System.IO.Compression.GZipStream:Read(destination)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.IO.Compression.GZipStream:BeginWrite(array, offset, count, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.Compression.GZipStream:EndWrite(asyncResult)end
---@overload fun(array:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param source System.ReadOnlySpan
---@return System.Void
function System.IO.Compression.GZipStream:Write(source)end
---@param destination System.IO.Stream
---@param bufferSize System.Int32
---@return System.Void
function System.IO.Compression.GZipStream:CopyTo(destination, bufferSize)end
---@overload fun(destination:System.Memory):System.Threading.Tasks.ValueTask
---@overload fun(array:System.Byte[], offset:System.Int32, count:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param destination System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.Compression.GZipStream:ReadAsync(destination, cancellationToken)end
---@overload fun(source:System.ReadOnlyMemory):System.Threading.Tasks.Task
---@overload fun(array:System.Byte[], offset:System.Int32, count:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param source System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Compression.GZipStream:WriteAsync(source, cancellationToken)end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Compression.GZipStream:FlushAsync(cancellationToken)end
---@param destination System.IO.Stream
---@param bufferSize System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Compression.GZipStream:CopyToAsync(destination, bufferSize, cancellationToken)end
---@class System.IO.Compression.DeflateStream : System.IO.Stream
---@field public BaseStream System.IO.Stream @  getter
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.IO.Compression.DeflateStream = {}
---@type System.IO.Compression.DeflateStream
CS.System.IO.Compression.DeflateStream = System.IO.Compression.DeflateStream

---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.Compression.DeflateStream:Read(array, offset, count)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.Compression.DeflateStream:Write(array, offset, count)end
---@return System.Void
function System.IO.Compression.DeflateStream:Flush()end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.IO.Compression.DeflateStream:BeginRead(array, offset, count, asyncCallback, asyncState)end
---@param array System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.IO.Compression.DeflateStream:BeginWrite(array, offset, count, asyncCallback, asyncState)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.Compression.DeflateStream:EndRead(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.Compression.DeflateStream:EndWrite(asyncResult)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.Compression.DeflateStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.IO.Compression.DeflateStream:SetLength(value)end
