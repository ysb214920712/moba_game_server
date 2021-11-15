---@class System.Collections.Concurrent.ConcurrentDictionary : System.Object
---@field public Item any @ setter getter
---@field public Count System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Keys any @  getter
---@field public Values any @  getter
System.Collections.Concurrent.ConcurrentDictionary = {}
---@type System.Collections.Concurrent.ConcurrentDictionary
CS.System.Collections.Concurrent.ConcurrentDictionary = System.Collections.Concurrent.ConcurrentDictionary

---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryAdd(key, value)end
---@param key any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentDictionary:ContainsKey(key)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryRemove(key, value)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryGetValue(key, value)end
---@param key any
---@param newValue any
---@param comparisonValue any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryUpdate(key, newValue, comparisonValue)end
---@return System.Void
function System.Collections.Concurrent.ConcurrentDictionary:Clear()end
---@return System.Collections.Generic.KeyValuePair
function System.Collections.Concurrent.ConcurrentDictionary:ToArray()end
---@return any
function System.Collections.Concurrent.ConcurrentDictionary:GetEnumerator()end
---@overload fun(key:any, value:any):any
---@overload fun(key:any, valueFactory:any, factoryArgument:any):any
---@param key any
---@param valueFactory any
---@return any
function System.Collections.Concurrent.ConcurrentDictionary:GetOrAdd(key, valueFactory)end
---@overload fun(key:any, addValue:any, updateValueFactory:any):any
---@overload fun(key:any, addValueFactory:any, updateValueFactory:any, factoryArgument:any):any
---@param key any
---@param addValueFactory any
---@param updateValueFactory any
---@return any
function System.Collections.Concurrent.ConcurrentDictionary:AddOrUpdate(key, addValueFactory, updateValueFactory)end
---@class System.Collections.Concurrent.ConcurrentQueue : System.Object
---@field public IsEmpty System.Boolean @  getter
---@field public Count System.Int32 @  getter
System.Collections.Concurrent.ConcurrentQueue = {}
---@type System.Collections.Concurrent.ConcurrentQueue
CS.System.Collections.Concurrent.ConcurrentQueue = System.Collections.Concurrent.ConcurrentQueue

---@return T[]
function System.Collections.Concurrent.ConcurrentQueue:ToArray()end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.Concurrent.ConcurrentQueue:CopyTo(array, index)end
---@return any
function System.Collections.Concurrent.ConcurrentQueue:GetEnumerator()end
---@param item any
---@return System.Void
function System.Collections.Concurrent.ConcurrentQueue:Enqueue(item)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentQueue:TryDequeue(result)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentQueue:TryPeek(result)end
---@return System.Void
function System.Collections.Concurrent.ConcurrentQueue:Clear()end
---@class System.Collections.Concurrent.ConcurrentStack : System.Object
---@field public IsEmpty System.Boolean @  getter
---@field public Count System.Int32 @  getter
System.Collections.Concurrent.ConcurrentStack = {}
---@type System.Collections.Concurrent.ConcurrentStack
CS.System.Collections.Concurrent.ConcurrentStack = System.Collections.Concurrent.ConcurrentStack

---@return System.Void
function System.Collections.Concurrent.ConcurrentStack:Clear()end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.Concurrent.ConcurrentStack:CopyTo(array, index)end
---@param item any
---@return System.Void
function System.Collections.Concurrent.ConcurrentStack:Push(item)end
---@overload fun(items:T[], startIndex:System.Int32, count:System.Int32):System.Void
---@param items T[]
---@return System.Void
function System.Collections.Concurrent.ConcurrentStack:PushRange(items)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentStack:TryPeek(result)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentStack:TryPop(result)end
---@overload fun(items:T[], startIndex:System.Int32, count:System.Int32):System.Int32
---@param items T[]
---@return System.Int32
function System.Collections.Concurrent.ConcurrentStack:TryPopRange(items)end
---@return T[]
function System.Collections.Concurrent.ConcurrentStack:ToArray()end
---@return any
function System.Collections.Concurrent.ConcurrentStack:GetEnumerator()end
---@class System.Collections.Concurrent.OrderablePartitioner : any
---@field public KeysOrderedInEachPartition System.Boolean @ setter getter
---@field public KeysOrderedAcrossPartitions System.Boolean @ setter getter
---@field public KeysNormalized System.Boolean @ setter getter
System.Collections.Concurrent.OrderablePartitioner = {}
---@type System.Collections.Concurrent.OrderablePartitioner
CS.System.Collections.Concurrent.OrderablePartitioner = System.Collections.Concurrent.OrderablePartitioner

---@param partitionCount System.Int32
---@return any
function System.Collections.Concurrent.OrderablePartitioner:GetOrderablePartitions(partitionCount)end
---@return any
function System.Collections.Concurrent.OrderablePartitioner:GetOrderableDynamicPartitions()end
---@param partitionCount System.Int32
---@return any
function System.Collections.Concurrent.OrderablePartitioner:GetPartitions(partitionCount)end
---@return any
function System.Collections.Concurrent.OrderablePartitioner:GetDynamicPartitions()end
---@class System.Collections.Concurrent.Partitioner : System.Object
---@field public SupportsDynamicPartitions System.Boolean @  getter
System.Collections.Concurrent.Partitioner = {}
---@type System.Collections.Concurrent.Partitioner
CS.System.Collections.Concurrent.Partitioner = System.Collections.Concurrent.Partitioner

---@param partitionCount System.Int32
---@return any
function System.Collections.Concurrent.Partitioner:GetPartitions(partitionCount)end
---@return any
function System.Collections.Concurrent.Partitioner:GetDynamicPartitions()end
---@class System.Collections.Concurrent.EnumerablePartitionerOptions : System.Enum
System.Collections.Concurrent.EnumerablePartitionerOptions = {}
---@type System.Collections.Concurrent.EnumerablePartitionerOptions
CS.System.Collections.Concurrent.EnumerablePartitionerOptions = System.Collections.Concurrent.EnumerablePartitionerOptions

---@return System.Int32 value:0
System.Collections.Concurrent.EnumerablePartitionerOptions.None = 0
---@return System.Int32 value:1
System.Collections.Concurrent.EnumerablePartitionerOptions.NoBuffering = 1

---@class System.Collections.Concurrent.Partitioner : System.Object
System.Collections.Concurrent.Partitioner = {}
---@type System.Collections.Concurrent.Partitioner
CS.System.Collections.Concurrent.Partitioner = System.Collections.Concurrent.Partitioner

---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32):System.Collections.Concurrent.OrderablePartitioner
---@overload fun(fromInclusive:System.Int64, toExclusive:System.Int64, rangeSize:System.Int64):System.Collections.Concurrent.OrderablePartitioner
---@overload fun(fromInclusive:System.Int32, toExclusive:System.Int32, rangeSize:System.Int32):System.Collections.Concurrent.OrderablePartitioner
---@overload fun(source:any):any
---@overload fun(list:any, loadBalance:System.Boolean):any
---@overload fun(array:TSource[], loadBalance:System.Boolean):any
---@overload fun(source:any, partitionerOptions:System.Collections.Concurrent.EnumerablePartitionerOptions):any
---@param fromInclusive System.Int64
---@param toExclusive System.Int64
---@return System.Collections.Concurrent.OrderablePartitioner
function System.Collections.Concurrent.Partitioner.Create(fromInclusive, toExclusive)end
---@class System.Collections.Concurrent.BlockingCollection : System.Object
---@field public BoundedCapacity System.Int32 @  getter
---@field public IsAddingCompleted System.Boolean @  getter
---@field public IsCompleted System.Boolean @  getter
---@field public Count System.Int32 @  getter
System.Collections.Concurrent.BlockingCollection = {}
---@type System.Collections.Concurrent.BlockingCollection
CS.System.Collections.Concurrent.BlockingCollection = System.Collections.Concurrent.BlockingCollection

---@overload fun(item:any, cancellationToken:System.Threading.CancellationToken):System.Void
---@param item any
---@return System.Void
function System.Collections.Concurrent.BlockingCollection:Add(item)end
---@overload fun(item:any, millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(item:any, timeout:System.TimeSpan):System.Boolean
---@overload fun(item:any, millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@param item any
---@return System.Boolean
function System.Collections.Concurrent.BlockingCollection:TryAdd(item)end
---@overload fun(cancellationToken:System.Threading.CancellationToken):any
---@return any
function System.Collections.Concurrent.BlockingCollection:Take()end
---@overload fun(item:any, millisecondsTimeout:System.Int32):System.Boolean
---@overload fun(item:any, timeout:System.TimeSpan):System.Boolean
---@overload fun(item:any, millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Boolean
---@param item any
---@return System.Boolean
function System.Collections.Concurrent.BlockingCollection:TryTake(item)end
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, cancellationToken:System.Threading.CancellationToken):System.Int32
---@param collections System.Collections.Concurrent.BlockingCollection
---@param item any
---@return System.Int32
function System.Collections.Concurrent.BlockingCollection.AddToAny(collections, item)end
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, millisecondsTimeout:System.Int32):System.Int32
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, timeout:System.TimeSpan):System.Int32
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Int32
---@param collections System.Collections.Concurrent.BlockingCollection
---@param item any
---@return System.Int32
function System.Collections.Concurrent.BlockingCollection.TryAddToAny(collections, item)end
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, cancellationToken:System.Threading.CancellationToken):System.Int32
---@param collections System.Collections.Concurrent.BlockingCollection
---@param item any
---@return System.Int32
function System.Collections.Concurrent.BlockingCollection.TakeFromAny(collections, item)end
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, millisecondsTimeout:System.Int32):System.Int32
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, timeout:System.TimeSpan):System.Int32
---@overload fun(collections:System.Collections.Concurrent.BlockingCollection, item:any, millisecondsTimeout:System.Int32, cancellationToken:System.Threading.CancellationToken):System.Int32
---@param collections System.Collections.Concurrent.BlockingCollection
---@param item any
---@return System.Int32
function System.Collections.Concurrent.BlockingCollection.TryTakeFromAny(collections, item)end
---@return System.Void
function System.Collections.Concurrent.BlockingCollection:CompleteAdding()end
---@return System.Void
function System.Collections.Concurrent.BlockingCollection:Dispose()end
---@return T[]
function System.Collections.Concurrent.BlockingCollection:ToArray()end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.Concurrent.BlockingCollection:CopyTo(array, index)end
---@overload fun(cancellationToken:System.Threading.CancellationToken):any
---@return any
function System.Collections.Concurrent.BlockingCollection:GetConsumingEnumerable()end
---@class System.Collections.Concurrent.ConcurrentBag : System.Object
---@field public Count System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
System.Collections.Concurrent.ConcurrentBag = {}
---@type System.Collections.Concurrent.ConcurrentBag
CS.System.Collections.Concurrent.ConcurrentBag = System.Collections.Concurrent.ConcurrentBag

---@param item any
---@return System.Void
function System.Collections.Concurrent.ConcurrentBag:Add(item)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentBag:TryTake(result)end
---@param result any
---@return System.Boolean
function System.Collections.Concurrent.ConcurrentBag:TryPeek(result)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.Concurrent.ConcurrentBag:CopyTo(array, index)end
---@return T[]
function System.Collections.Concurrent.ConcurrentBag:ToArray()end
---@return System.Void
function System.Collections.Concurrent.ConcurrentBag:Clear()end
---@return any
function System.Collections.Concurrent.ConcurrentBag:GetEnumerator()end
