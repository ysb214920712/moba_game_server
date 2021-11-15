---@class System.Runtime.ConstrainedExecution.CriticalFinalizerObject : System.Object
System.Runtime.ConstrainedExecution.CriticalFinalizerObject = {}
---@type System.Runtime.ConstrainedExecution.CriticalFinalizerObject
CS.System.Runtime.ConstrainedExecution.CriticalFinalizerObject = System.Runtime.ConstrainedExecution.CriticalFinalizerObject

---@class System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute : System.Attribute
System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute = {}
---@type System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute
CS.System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute = System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute

---@class System.Runtime.ConstrainedExecution.Consistency : System.Enum
System.Runtime.ConstrainedExecution.Consistency = {}
---@type System.Runtime.ConstrainedExecution.Consistency
CS.System.Runtime.ConstrainedExecution.Consistency = System.Runtime.ConstrainedExecution.Consistency

---@return System.Int32 value:0
System.Runtime.ConstrainedExecution.Consistency.MayCorruptProcess = 0
---@return System.Int32 value:1
System.Runtime.ConstrainedExecution.Consistency.MayCorruptAppDomain = 1
---@return System.Int32 value:2
System.Runtime.ConstrainedExecution.Consistency.MayCorruptInstance = 2
---@return System.Int32 value:3
System.Runtime.ConstrainedExecution.Consistency.WillNotCorruptState = 3

---@class System.Runtime.ConstrainedExecution.Cer : System.Enum
System.Runtime.ConstrainedExecution.Cer = {}
---@type System.Runtime.ConstrainedExecution.Cer
CS.System.Runtime.ConstrainedExecution.Cer = System.Runtime.ConstrainedExecution.Cer

---@return System.Int32 value:0
System.Runtime.ConstrainedExecution.Cer.None = 0
---@return System.Int32 value:1
System.Runtime.ConstrainedExecution.Cer.MayFail = 1
---@return System.Int32 value:2
System.Runtime.ConstrainedExecution.Cer.Success = 2

---@class System.Runtime.ConstrainedExecution.ReliabilityContractAttribute : System.Attribute
---@field public ConsistencyGuarantee System.Runtime.ConstrainedExecution.Consistency @  getter
---@field public Cer System.Runtime.ConstrainedExecution.Cer @  getter
System.Runtime.ConstrainedExecution.ReliabilityContractAttribute = {}
---@type System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
CS.System.Runtime.ConstrainedExecution.ReliabilityContractAttribute = System.Runtime.ConstrainedExecution.ReliabilityContractAttribute

