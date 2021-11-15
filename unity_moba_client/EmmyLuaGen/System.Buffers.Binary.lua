---@class System.Buffers.Binary.BinaryPrimitives : System.Object
System.Buffers.Binary.BinaryPrimitives = {}
---@type System.Buffers.Binary.BinaryPrimitives
CS.System.Buffers.Binary.BinaryPrimitives = System.Buffers.Binary.BinaryPrimitives

---@overload fun(value:System.Int16):System.Int16
---@overload fun(value:System.Int32):System.Int32
---@overload fun(value:System.Int64):System.Int64
---@overload fun(value:System.Byte):System.Byte
---@overload fun(value:System.UInt16):System.UInt16
---@overload fun(value:System.UInt32):System.UInt32
---@overload fun(value:System.UInt64):System.UInt64
---@param value System.SByte
---@return System.SByte
function System.Buffers.Binary.BinaryPrimitives.ReverseEndianness(value)end
---@param buffer System.ReadOnlySpan
---@return any
function System.Buffers.Binary.BinaryPrimitives.ReadMachineEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@param value any
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadMachineEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@return System.Int16
function System.Buffers.Binary.BinaryPrimitives.ReadInt16BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.Int32
function System.Buffers.Binary.BinaryPrimitives.ReadInt32BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.Int64
function System.Buffers.Binary.BinaryPrimitives.ReadInt64BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt16
function System.Buffers.Binary.BinaryPrimitives.ReadUInt16BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt32
function System.Buffers.Binary.BinaryPrimitives.ReadUInt32BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt64
function System.Buffers.Binary.BinaryPrimitives.ReadUInt64BigEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@param value System.Int16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt16BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.Int32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt32BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.Int64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt64BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt16BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt32BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt64BigEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@return System.Int16
function System.Buffers.Binary.BinaryPrimitives.ReadInt16LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.Int32
function System.Buffers.Binary.BinaryPrimitives.ReadInt32LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.Int64
function System.Buffers.Binary.BinaryPrimitives.ReadInt64LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt16
function System.Buffers.Binary.BinaryPrimitives.ReadUInt16LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt32
function System.Buffers.Binary.BinaryPrimitives.ReadUInt32LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@return System.UInt64
function System.Buffers.Binary.BinaryPrimitives.ReadUInt64LittleEndian(buffer)end
---@param buffer System.ReadOnlySpan
---@param value System.Int16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt16LittleEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.Int32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt32LittleEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.Int64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadInt64LittleEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt16LittleEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt32LittleEndian(buffer, value)end
---@param buffer System.ReadOnlySpan
---@param value System.UInt64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt64LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value any
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteMachineEndian(buffer, value)end
---@param buffer System.Span
---@param value any
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteMachineEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int16
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt16BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int32
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt32BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int64
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt64BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt16
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt16BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt32
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt32BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt64
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt64BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt16BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt32BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt64BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt16BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt32BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt64BigEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int16
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt16LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int32
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt32LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int64
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteInt64LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt16
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt16LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt32
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt32LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt64
---@return System.Void
function System.Buffers.Binary.BinaryPrimitives.WriteUInt64LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt16LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt32LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.Int64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt64LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt16
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt16LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt32
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt32LittleEndian(buffer, value)end
---@param buffer System.Span
---@param value System.UInt64
---@return System.Boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt64LittleEndian(buffer, value)end
