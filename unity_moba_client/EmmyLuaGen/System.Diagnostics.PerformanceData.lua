---@class System.Diagnostics.PerformanceData.CounterData : System.Object
---@field public RawValue System.Int64 @ setter getter
---@field public Value System.Int64 @ setter getter
System.Diagnostics.PerformanceData.CounterData = {}
---@type System.Diagnostics.PerformanceData.CounterData
CS.System.Diagnostics.PerformanceData.CounterData = System.Diagnostics.PerformanceData.CounterData

---@return System.Void
function System.Diagnostics.PerformanceData.CounterData:Decrement()end
---@return System.Void
function System.Diagnostics.PerformanceData.CounterData:Increment()end
---@param value System.Int64
---@return System.Void
function System.Diagnostics.PerformanceData.CounterData:IncrementBy(value)end
---@class System.Diagnostics.PerformanceData.CounterSet : System.Object
System.Diagnostics.PerformanceData.CounterSet = {}
---@type System.Diagnostics.PerformanceData.CounterSet
CS.System.Diagnostics.PerformanceData.CounterSet = System.Diagnostics.PerformanceData.CounterSet

---@overload fun(counterId:System.Int32, counterType:System.Diagnostics.PerformanceData.CounterType, counterName:System.String):System.Void
---@param counterId System.Int32
---@param counterType System.Diagnostics.PerformanceData.CounterType
---@return System.Void
function System.Diagnostics.PerformanceData.CounterSet:AddCounter(counterId, counterType)end
---@param instanceName System.String
---@return System.Diagnostics.PerformanceData.CounterSetInstance
function System.Diagnostics.PerformanceData.CounterSet:CreateCounterSetInstance(instanceName)end
---@return System.Void
function System.Diagnostics.PerformanceData.CounterSet:Dispose()end
---@class System.Diagnostics.PerformanceData.CounterSetInstanceType : System.Enum
System.Diagnostics.PerformanceData.CounterSetInstanceType = {}
---@type System.Diagnostics.PerformanceData.CounterSetInstanceType
CS.System.Diagnostics.PerformanceData.CounterSetInstanceType = System.Diagnostics.PerformanceData.CounterSetInstanceType

---@return System.Int32 value:0
System.Diagnostics.PerformanceData.CounterSetInstanceType.Single = 0
---@return System.Int32 value:2
System.Diagnostics.PerformanceData.CounterSetInstanceType.Multiple = 2
---@return System.Int32 value:4
System.Diagnostics.PerformanceData.CounterSetInstanceType.GlobalAggregate = 4

---@class System.Diagnostics.PerformanceData.CounterType : System.Enum
System.Diagnostics.PerformanceData.CounterType = {}
---@type System.Diagnostics.PerformanceData.CounterType
CS.System.Diagnostics.PerformanceData.CounterType = System.Diagnostics.PerformanceData.CounterType

---@return System.Int32 value:0
System.Diagnostics.PerformanceData.CounterType.RawDataHex32 = 0

---@class System.Diagnostics.PerformanceData.CounterSetInstance : System.Object
---@field public Counters System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet @  getter
System.Diagnostics.PerformanceData.CounterSetInstance = {}
---@type System.Diagnostics.PerformanceData.CounterSetInstance
CS.System.Diagnostics.PerformanceData.CounterSetInstance = System.Diagnostics.PerformanceData.CounterSetInstance

---@return System.Void
function System.Diagnostics.PerformanceData.CounterSetInstance:Dispose()end
---@class System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet : System.Object
---@field public Item System.Diagnostics.PerformanceData.CounterData @  getter
System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet = {}
---@type System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet
CS.System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet = System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet

---@return System.Void
function System.Diagnostics.PerformanceData.CounterSetInstanceCounterDataSet:Dispose()end
