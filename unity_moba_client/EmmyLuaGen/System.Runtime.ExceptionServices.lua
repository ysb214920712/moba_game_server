---@class System.Runtime.ExceptionServices.HandleProcessCorruptedStateExceptionsAttribute : System.Attribute
System.Runtime.ExceptionServices.HandleProcessCorruptedStateExceptionsAttribute = {}
---@type System.Runtime.ExceptionServices.HandleProcessCorruptedStateExceptionsAttribute
CS.System.Runtime.ExceptionServices.HandleProcessCorruptedStateExceptionsAttribute = System.Runtime.ExceptionServices.HandleProcessCorruptedStateExceptionsAttribute

---@class System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs : System.EventArgs
---@field public Exception System.Exception @  getter
System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs = {}
---@type System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs
CS.System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs = System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs

---@class System.Runtime.ExceptionServices.ExceptionDispatchInfo : System.Object
---@field public SourceException System.Exception @  getter
System.Runtime.ExceptionServices.ExceptionDispatchInfo = {}
---@type System.Runtime.ExceptionServices.ExceptionDispatchInfo
CS.System.Runtime.ExceptionServices.ExceptionDispatchInfo = System.Runtime.ExceptionServices.ExceptionDispatchInfo

---@param source System.Exception
---@return System.Runtime.ExceptionServices.ExceptionDispatchInfo
function System.Runtime.ExceptionServices.ExceptionDispatchInfo.Capture(source)end
---@return System.Void
function System.Runtime.ExceptionServices.ExceptionDispatchInfo:Throw()end
---@param source System.Exception
---@return System.Void
function System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw(source)end
