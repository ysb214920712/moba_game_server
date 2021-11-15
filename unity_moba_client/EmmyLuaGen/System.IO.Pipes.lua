---@class System.IO.Pipes.AnonymousPipeClientStream : System.IO.Pipes.PipeStream
---@field public ReadMode System.IO.Pipes.PipeTransmissionMode @ setter 
---@field public TransmissionMode System.IO.Pipes.PipeTransmissionMode @  getter
System.IO.Pipes.AnonymousPipeClientStream = {}
---@type System.IO.Pipes.AnonymousPipeClientStream
CS.System.IO.Pipes.AnonymousPipeClientStream = System.IO.Pipes.AnonymousPipeClientStream

---@class System.IO.Pipes.AnonymousPipeServerStream : System.IO.Pipes.PipeStream
---@field public ClientSafePipeHandle Microsoft.Win32.SafeHandles.SafePipeHandle @ setter getter
---@field public ReadMode System.IO.Pipes.PipeTransmissionMode @ setter 
---@field public TransmissionMode System.IO.Pipes.PipeTransmissionMode @  getter
System.IO.Pipes.AnonymousPipeServerStream = {}
---@type System.IO.Pipes.AnonymousPipeServerStream
CS.System.IO.Pipes.AnonymousPipeServerStream = System.IO.Pipes.AnonymousPipeServerStream

---@return System.Void
function System.IO.Pipes.AnonymousPipeServerStream:DisposeLocalCopyOfClientHandle()end
---@return System.String
function System.IO.Pipes.AnonymousPipeServerStream:GetClientHandleAsString()end
---@class System.IO.Pipes.NamedPipeClientStream : System.IO.Pipes.PipeStream
---@field public NumberOfServerInstances System.Int32 @  getter
System.IO.Pipes.NamedPipeClientStream = {}
---@type System.IO.Pipes.NamedPipeClientStream
CS.System.IO.Pipes.NamedPipeClientStream = System.IO.Pipes.NamedPipeClientStream

---@overload fun(timeout:System.Int32):System.Void
---@return System.Void
function System.IO.Pipes.NamedPipeClientStream:Connect()end
---@overload fun(timeout:System.Int32):System.Threading.Tasks.Task
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(timeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.Pipes.NamedPipeClientStream:ConnectAsync()end
---@class System.IO.Pipes.NamedPipeServerStream : System.IO.Pipes.PipeStream
---@field public MaxAllowedServerInstances System.Int32
System.IO.Pipes.NamedPipeServerStream = {}
---@type System.IO.Pipes.NamedPipeServerStream
CS.System.IO.Pipes.NamedPipeServerStream = System.IO.Pipes.NamedPipeServerStream

---@return System.Void
function System.IO.Pipes.NamedPipeServerStream:Disconnect()end
---@param impersonationWorker System.IO.Pipes.PipeStreamImpersonationWorker
---@return System.Void
function System.IO.Pipes.NamedPipeServerStream:RunAsClient(impersonationWorker)end
---@return System.Void
function System.IO.Pipes.NamedPipeServerStream:WaitForConnection()end
---@overload fun(cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.Pipes.NamedPipeServerStream:WaitForConnectionAsync()end
---@return System.String
function System.IO.Pipes.NamedPipeServerStream:GetImpersonationUserName()end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Pipes.NamedPipeServerStream:BeginWaitForConnection(callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.Pipes.NamedPipeServerStream:EndWaitForConnection(asyncResult)end
---@class System.IO.Pipes.PipeAccessRights : System.Enum
System.IO.Pipes.PipeAccessRights = {}
---@type System.IO.Pipes.PipeAccessRights
CS.System.IO.Pipes.PipeAccessRights = System.IO.Pipes.PipeAccessRights

---@return System.Int32 value:1
System.IO.Pipes.PipeAccessRights.ReadData = 1
---@return System.Int32 value:2
System.IO.Pipes.PipeAccessRights.WriteData = 2
---@return System.Int32 value:4
System.IO.Pipes.PipeAccessRights.CreateNewInstance = 4
---@return System.Int32 value:8
System.IO.Pipes.PipeAccessRights.ReadExtendedAttributes = 8
---@return System.Int32 value:16
System.IO.Pipes.PipeAccessRights.WriteExtendedAttributes = 16

---@class System.IO.Pipes.PipeAccessRule : System.Security.AccessControl.AccessRule
---@field public PipeAccessRights System.IO.Pipes.PipeAccessRights @  getter
System.IO.Pipes.PipeAccessRule = {}
---@type System.IO.Pipes.PipeAccessRule
CS.System.IO.Pipes.PipeAccessRule = System.IO.Pipes.PipeAccessRule

---@class System.IO.Pipes.PipeAuditRule : System.Security.AccessControl.AuditRule
---@field public PipeAccessRights System.IO.Pipes.PipeAccessRights @  getter
System.IO.Pipes.PipeAuditRule = {}
---@type System.IO.Pipes.PipeAuditRule
CS.System.IO.Pipes.PipeAuditRule = System.IO.Pipes.PipeAuditRule

---@class System.IO.Pipes.PipeDirection : System.Enum
System.IO.Pipes.PipeDirection = {}
---@type System.IO.Pipes.PipeDirection
CS.System.IO.Pipes.PipeDirection = System.IO.Pipes.PipeDirection

---@return System.Int32 value:1
System.IO.Pipes.PipeDirection.In = 1
---@return System.Int32 value:2
System.IO.Pipes.PipeDirection.Out = 2

---@class System.IO.Pipes.PipeOptions : System.Enum
System.IO.Pipes.PipeOptions = {}
---@type System.IO.Pipes.PipeOptions
CS.System.IO.Pipes.PipeOptions = System.IO.Pipes.PipeOptions

---@return System.Int32 value:0
System.IO.Pipes.PipeOptions.None = 0

---@class System.IO.Pipes.PipeSecurity : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type @  getter
---@field public AccessRuleType System.Type @  getter
---@field public AuditRuleType System.Type @  getter
System.IO.Pipes.PipeSecurity = {}
---@type System.IO.Pipes.PipeSecurity
CS.System.IO.Pipes.PipeSecurity = System.IO.Pipes.PipeSecurity

---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function System.IO.Pipes.PipeSecurity:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type)end
---@param rule System.IO.Pipes.PipeAccessRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:AddAccessRule(rule)end
---@param rule System.IO.Pipes.PipeAuditRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:AddAuditRule(rule)end
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask System.Int32
---@param isInherited System.Boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function System.IO.Pipes.PipeSecurity:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags)end
---@param rule System.IO.Pipes.PipeAccessRule
---@return System.Boolean
function System.IO.Pipes.PipeSecurity:RemoveAccessRule(rule)end
---@param rule System.IO.Pipes.PipeAccessRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:RemoveAccessRuleSpecific(rule)end
---@param rule System.IO.Pipes.PipeAuditRule
---@return System.Boolean
function System.IO.Pipes.PipeSecurity:RemoveAuditRule(rule)end
---@param rule System.IO.Pipes.PipeAuditRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:RemoveAuditRuleAll(rule)end
---@param rule System.IO.Pipes.PipeAuditRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:RemoveAuditRuleSpecific(rule)end
---@param rule System.IO.Pipes.PipeAccessRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:ResetAccessRule(rule)end
---@param rule System.IO.Pipes.PipeAccessRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:SetAccessRule(rule)end
---@param rule System.IO.Pipes.PipeAuditRule
---@return System.Void
function System.IO.Pipes.PipeSecurity:SetAuditRule(rule)end
---@class System.IO.Pipes.PipeStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public InBufferSize System.Int32 @  getter
---@field public IsAsync System.Boolean @ setter getter
---@field public IsConnected System.Boolean @ setter getter
---@field public IsMessageComplete System.Boolean @ setter getter
---@field public OutBufferSize System.Int32 @  getter
---@field public ReadMode System.IO.Pipes.PipeTransmissionMode @ setter getter
---@field public SafePipeHandle Microsoft.Win32.SafeHandles.SafePipeHandle @  getter
---@field public TransmissionMode System.IO.Pipes.PipeTransmissionMode @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
System.IO.Pipes.PipeStream = {}
---@type System.IO.Pipes.PipeStream
CS.System.IO.Pipes.PipeStream = System.IO.Pipes.PipeStream

---@param value System.Int64
---@return System.Void
function System.IO.Pipes.PipeStream:SetLength(value)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.IO.Pipes.PipeStream:Seek(offset, origin)end
---@return System.IO.Pipes.PipeSecurity
function System.IO.Pipes.PipeStream:GetAccessControl()end
---@param pipeSecurity System.IO.Pipes.PipeSecurity
---@return System.Void
function System.IO.Pipes.PipeStream:SetAccessControl(pipeSecurity)end
---@return System.Void
function System.IO.Pipes.PipeStream:WaitForPipeDrain()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.Pipes.PipeStream:Read(buffer, offset, count)end
---@return System.Int32
function System.IO.Pipes.PipeStream:ReadByte()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.IO.Pipes.PipeStream:Write(buffer, offset, count)end
---@param value System.Byte
---@return System.Void
function System.IO.Pipes.PipeStream:WriteByte(value)end
---@return System.Void
function System.IO.Pipes.PipeStream:Flush()end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Pipes.PipeStream:BeginRead(buffer, offset, count, callback, state)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Pipes.PipeStream:BeginWrite(buffer, offset, count, callback, state)end
---@param asyncResult System.IAsyncResult
---@return System.Int32
function System.IO.Pipes.PipeStream:EndRead(asyncResult)end
---@param asyncResult System.IAsyncResult
---@return System.Void
function System.IO.Pipes.PipeStream:EndWrite(asyncResult)end
---@class System.IO.Pipes.PipeTransmissionMode : System.Enum
System.IO.Pipes.PipeTransmissionMode = {}
---@type System.IO.Pipes.PipeTransmissionMode
CS.System.IO.Pipes.PipeTransmissionMode = System.IO.Pipes.PipeTransmissionMode

---@return System.Int32 value:0
System.IO.Pipes.PipeTransmissionMode.Byte = 0
---@return System.Int32 value:1
System.IO.Pipes.PipeTransmissionMode.Message = 1

