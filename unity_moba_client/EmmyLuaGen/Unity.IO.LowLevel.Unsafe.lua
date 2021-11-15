---@class Unity.IO.LowLevel.Unsafe.ReadCommand : System.ValueType
---@field public Buffer System.Void
---@field public Offset System.Int64
---@field public Size System.Int64
Unity.IO.LowLevel.Unsafe.ReadCommand = {}
---@type Unity.IO.LowLevel.Unsafe.ReadCommand
CS.Unity.IO.LowLevel.Unsafe.ReadCommand = Unity.IO.LowLevel.Unsafe.ReadCommand

---@class Unity.IO.LowLevel.Unsafe.ReadStatus : System.Enum
Unity.IO.LowLevel.Unsafe.ReadStatus = {}
---@type Unity.IO.LowLevel.Unsafe.ReadStatus
CS.Unity.IO.LowLevel.Unsafe.ReadStatus = Unity.IO.LowLevel.Unsafe.ReadStatus

---@return System.Int32 value:0
Unity.IO.LowLevel.Unsafe.ReadStatus.Complete = 0
---@return System.Int32 value:1
Unity.IO.LowLevel.Unsafe.ReadStatus.InProgress = 1
---@return System.Int32 value:2
Unity.IO.LowLevel.Unsafe.ReadStatus.Failed = 2

---@class Unity.IO.LowLevel.Unsafe.ReadHandle : System.ValueType
---@field public JobHandle Unity.Jobs.JobHandle @  getter
---@field public Status Unity.IO.LowLevel.Unsafe.ReadStatus @  getter
Unity.IO.LowLevel.Unsafe.ReadHandle = {}
---@type Unity.IO.LowLevel.Unsafe.ReadHandle
CS.Unity.IO.LowLevel.Unsafe.ReadHandle = Unity.IO.LowLevel.Unsafe.ReadHandle

---@return System.Boolean
function Unity.IO.LowLevel.Unsafe.ReadHandle:IsValid()end
---@return System.Void
function Unity.IO.LowLevel.Unsafe.ReadHandle:Dispose()end
---@class Unity.IO.LowLevel.Unsafe.AsyncReadManager : System.Object
Unity.IO.LowLevel.Unsafe.AsyncReadManager = {}
---@type Unity.IO.LowLevel.Unsafe.AsyncReadManager
CS.Unity.IO.LowLevel.Unsafe.AsyncReadManager = Unity.IO.LowLevel.Unsafe.AsyncReadManager

---@param filename System.String
---@param readCmds Unity.IO.LowLevel.Unsafe.ReadCommand
---@param readCmdCount System.UInt32
---@return Unity.IO.LowLevel.Unsafe.ReadHandle
function Unity.IO.LowLevel.Unsafe.AsyncReadManager.Read(filename, readCmds, readCmdCount)end
