---@class System.Buffers.MemoryHandle : System.ValueType
---@field public PinnedPointer System.Void @  getter
System.Buffers.MemoryHandle = {}
---@type System.Buffers.MemoryHandle
CS.System.Buffers.MemoryHandle = System.Buffers.MemoryHandle

---@return System.Void
function System.Buffers.MemoryHandle:Dispose()end
---@class System.Buffers.OwnedMemory : System.Object
---@field public Length System.Int32 @  getter
---@field public Span any @  getter
---@field public Memory any @  getter
---@field public IsDisposed System.Boolean @  getter
System.Buffers.OwnedMemory = {}
---@type System.Buffers.OwnedMemory
CS.System.Buffers.OwnedMemory = System.Buffers.OwnedMemory

---@return System.Buffers.MemoryHandle
function System.Buffers.OwnedMemory:Pin()end
---@return System.Void
function System.Buffers.OwnedMemory:Dispose()end
---@return System.Void
function System.Buffers.OwnedMemory:Retain()end
---@return System.Boolean
function System.Buffers.OwnedMemory:Release()end
