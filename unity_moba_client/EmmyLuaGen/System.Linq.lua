---@class System.Linq.OrderedParallelQuery : any
System.Linq.OrderedParallelQuery = {}
---@type System.Linq.OrderedParallelQuery
CS.System.Linq.OrderedParallelQuery = System.Linq.OrderedParallelQuery

---@return any
function System.Linq.OrderedParallelQuery:GetEnumerator()end
---@class System.Linq.ParallelQuery : System.Object
System.Linq.ParallelQuery = {}
---@type System.Linq.ParallelQuery
CS.System.Linq.ParallelQuery = System.Linq.ParallelQuery

---@class System.Linq.ParallelQuery : System.Linq.ParallelQuery
System.Linq.ParallelQuery = {}
---@type System.Linq.ParallelQuery
CS.System.Linq.ParallelQuery = System.Linq.ParallelQuery

---@return any
function System.Linq.ParallelQuery:GetEnumerator()end
---@class System.Linq.ParallelEnumerable : System.Object
System.Linq.ParallelEnumerable = {}
---@type System.Linq.ParallelEnumerable
CS.System.Linq.ParallelEnumerable = System.Linq.ParallelEnumerable

---@param start System.Int32
---@param count System.Int32
---@return System.Linq.ParallelQuery
function System.Linq.ParallelEnumerable.Range(start, count)end
---@param element any
---@param count System.Int32
---@return any
function System.Linq.ParallelEnumerable.Repeat(element, count)end
---@return any
function System.Linq.ParallelEnumerable.Empty()end
---@class System.Linq.ParallelExecutionMode : System.Enum
System.Linq.ParallelExecutionMode = {}
---@type System.Linq.ParallelExecutionMode
CS.System.Linq.ParallelExecutionMode = System.Linq.ParallelExecutionMode

---@return System.Int32 value:0
System.Linq.ParallelExecutionMode.Default = 0
---@return System.Int32 value:1
System.Linq.ParallelExecutionMode.ForceParallelism = 1

---@class System.Linq.ParallelMergeOptions : System.Enum
System.Linq.ParallelMergeOptions = {}
---@type System.Linq.ParallelMergeOptions
CS.System.Linq.ParallelMergeOptions = System.Linq.ParallelMergeOptions

---@return System.Int32 value:0
System.Linq.ParallelMergeOptions.Default = 0
---@return System.Int32 value:1
System.Linq.ParallelMergeOptions.NotBuffered = 1
---@return System.Int32 value:2
System.Linq.ParallelMergeOptions.AutoBuffered = 2
---@return System.Int32 value:3
System.Linq.ParallelMergeOptions.FullyBuffered = 3

---@class System.Linq.EnumerableExecutor : System.Object
System.Linq.EnumerableExecutor = {}
---@type System.Linq.EnumerableExecutor
CS.System.Linq.EnumerableExecutor = System.Linq.EnumerableExecutor

---@class System.Linq.EnumerableExecutor : System.Linq.EnumerableExecutor
System.Linq.EnumerableExecutor = {}
---@type System.Linq.EnumerableExecutor
CS.System.Linq.EnumerableExecutor = System.Linq.EnumerableExecutor

---@class System.Linq.EnumerableQuery : System.Object
System.Linq.EnumerableQuery = {}
---@type System.Linq.EnumerableQuery
CS.System.Linq.EnumerableQuery = System.Linq.EnumerableQuery

---@class System.Linq.EnumerableQuery : System.Linq.EnumerableQuery
System.Linq.EnumerableQuery = {}
---@type System.Linq.EnumerableQuery
CS.System.Linq.EnumerableQuery = System.Linq.EnumerableQuery

---@return System.String
function System.Linq.EnumerableQuery:ToString()end
---@class System.Linq.Queryable : System.Object
System.Linq.Queryable = {}
---@type System.Linq.Queryable
CS.System.Linq.Queryable = System.Linq.Queryable

---@class System.Linq.Enumerable : System.Object
System.Linq.Enumerable = {}
---@type System.Linq.Enumerable
CS.System.Linq.Enumerable = System.Linq.Enumerable

---@return any
function System.Linq.Enumerable.Empty()end
---@param start System.Int32
---@param count System.Int32
---@return System.Collections.Generic.IEnumerable
function System.Linq.Enumerable.Range(start, count)end
---@param element any
---@param count System.Int32
---@return any
function System.Linq.Enumerable.Repeat(element, count)end
---@class System.Linq.Lookup : System.Object
---@field public Count System.Int32 @  getter
---@field public Item any @  getter
System.Linq.Lookup = {}
---@type System.Linq.Lookup
CS.System.Linq.Lookup = System.Linq.Lookup

---@param key any
---@return System.Boolean
function System.Linq.Lookup:Contains(key)end
---@return any
function System.Linq.Lookup:GetEnumerator()end
---@param resultSelector any
---@return any
function System.Linq.Lookup:ApplyResultSelector(resultSelector)end
