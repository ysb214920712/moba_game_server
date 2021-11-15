---@class System.Collections.DictionaryEntry : System.ValueType
---@field public Key System.Object @ setter getter
---@field public Value System.Object @ setter getter
System.Collections.DictionaryEntry = {}
---@type System.Collections.DictionaryEntry
CS.System.Collections.DictionaryEntry = System.Collections.DictionaryEntry

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.DictionaryEntry:Deconstruct(key, value)end
---@class System.Collections.ArrayList : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Item System.Object @ setter getter
System.Collections.ArrayList = {}
---@type System.Collections.ArrayList
CS.System.Collections.ArrayList = System.Collections.ArrayList

---@param list System.Collections.IList
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Adapter(list)end
---@param value System.Object
---@return System.Int32
function System.Collections.ArrayList:Add(value)end
---@param c System.Collections.ICollection
---@return System.Void
function System.Collections.ArrayList:AddRange(c)end
---@overload fun(value:System.Object, comparer:System.Collections.IComparer):System.Int32
---@overload fun(index:System.Int32, count:System.Int32, value:System.Object, comparer:System.Collections.IComparer):System.Int32
---@param value System.Object
---@return System.Int32
function System.Collections.ArrayList:BinarySearch(value)end
---@return System.Void
function System.Collections.ArrayList:Clear()end
---@return System.Object
function System.Collections.ArrayList:Clone()end
---@param item System.Object
---@return System.Boolean
function System.Collections.ArrayList:Contains(item)end
---@overload fun(array:System.Array, arrayIndex:System.Int32):System.Void
---@overload fun(index:System.Int32, array:System.Array, arrayIndex:System.Int32, count:System.Int32):System.Void
---@param array System.Array
---@return System.Void
function System.Collections.ArrayList:CopyTo(array)end
---@overload fun(list:System.Collections.ArrayList):System.Collections.ArrayList
---@param list System.Collections.IList
---@return System.Collections.IList
function System.Collections.ArrayList.FixedSize(list)end
---@overload fun(index:System.Int32, count:System.Int32):System.Collections.IEnumerator
---@return System.Collections.IEnumerator
function System.Collections.ArrayList:GetEnumerator()end
---@overload fun(value:System.Object, startIndex:System.Int32):System.Int32
---@overload fun(value:System.Object, startIndex:System.Int32, count:System.Int32):System.Int32
---@param value System.Object
---@return System.Int32
function System.Collections.ArrayList:IndexOf(value)end
---@param index System.Int32
---@param value System.Object
---@return System.Void
function System.Collections.ArrayList:Insert(index, value)end
---@param index System.Int32
---@param c System.Collections.ICollection
---@return System.Void
function System.Collections.ArrayList:InsertRange(index, c)end
---@overload fun(value:System.Object, startIndex:System.Int32):System.Int32
---@overload fun(value:System.Object, startIndex:System.Int32, count:System.Int32):System.Int32
---@param value System.Object
---@return System.Int32
function System.Collections.ArrayList:LastIndexOf(value)end
---@overload fun(list:System.Collections.ArrayList):System.Collections.ArrayList
---@param list System.Collections.IList
---@return System.Collections.IList
function System.Collections.ArrayList.ReadOnly(list)end
---@param obj System.Object
---@return System.Void
function System.Collections.ArrayList:Remove(obj)end
---@param index System.Int32
---@return System.Void
function System.Collections.ArrayList:RemoveAt(index)end
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Collections.ArrayList:RemoveRange(index, count)end
---@param value System.Object
---@param count System.Int32
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Repeat(value, count)end
---@overload fun(index:System.Int32, count:System.Int32):System.Void
---@return System.Void
function System.Collections.ArrayList:Reverse()end
---@param index System.Int32
---@param c System.Collections.ICollection
---@return System.Void
function System.Collections.ArrayList:SetRange(index, c)end
---@param index System.Int32
---@param count System.Int32
---@return System.Collections.ArrayList
function System.Collections.ArrayList:GetRange(index, count)end
---@overload fun(comparer:System.Collections.IComparer):System.Void
---@overload fun(index:System.Int32, count:System.Int32, comparer:System.Collections.IComparer):System.Void
---@return System.Void
function System.Collections.ArrayList:Sort()end
---@overload fun(list:System.Collections.ArrayList):System.Collections.ArrayList
---@param list System.Collections.IList
---@return System.Collections.IList
function System.Collections.ArrayList.Synchronized(list)end
---@overload fun(type:System.Type):System.Array
---@return System.Object[]
function System.Collections.ArrayList:ToArray()end
---@return System.Void
function System.Collections.ArrayList:TrimToSize()end
---@class System.Collections.BitArray : System.Object
---@field public Item System.Boolean @ setter getter
---@field public Length System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public SyncRoot System.Object @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
System.Collections.BitArray = {}
---@type System.Collections.BitArray
CS.System.Collections.BitArray = System.Collections.BitArray

---@param index System.Int32
---@return System.Boolean
function System.Collections.BitArray:Get(index)end
---@param index System.Int32
---@param value System.Boolean
---@return System.Void
function System.Collections.BitArray:Set(index, value)end
---@param value System.Boolean
---@return System.Void
function System.Collections.BitArray:SetAll(value)end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:And(value)end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:Or(value)end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:Xor(value)end
---@return System.Collections.BitArray
function System.Collections.BitArray:Not()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.BitArray:CopyTo(array, index)end
---@return System.Object
function System.Collections.BitArray:Clone()end
---@return System.Collections.IEnumerator
function System.Collections.BitArray:GetEnumerator()end
---@class System.Collections.CaseInsensitiveComparer : System.Object
---@field public Default System.Collections.CaseInsensitiveComparer @static  getter
---@field public DefaultInvariant System.Collections.CaseInsensitiveComparer @static  getter
System.Collections.CaseInsensitiveComparer = {}
---@type System.Collections.CaseInsensitiveComparer
CS.System.Collections.CaseInsensitiveComparer = System.Collections.CaseInsensitiveComparer

---@param a System.Object
---@param b System.Object
---@return System.Int32
function System.Collections.CaseInsensitiveComparer:Compare(a, b)end
---@class System.Collections.CaseInsensitiveHashCodeProvider : System.Object
---@field public Default System.Collections.CaseInsensitiveHashCodeProvider @static  getter
---@field public DefaultInvariant System.Collections.CaseInsensitiveHashCodeProvider @static  getter
System.Collections.CaseInsensitiveHashCodeProvider = {}
---@type System.Collections.CaseInsensitiveHashCodeProvider
CS.System.Collections.CaseInsensitiveHashCodeProvider = System.Collections.CaseInsensitiveHashCodeProvider

---@param obj System.Object
---@return System.Int32
function System.Collections.CaseInsensitiveHashCodeProvider:GetHashCode(obj)end
---@class System.Collections.CollectionBase : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
System.Collections.CollectionBase = {}
---@type System.Collections.CollectionBase
CS.System.Collections.CollectionBase = System.Collections.CollectionBase

---@return System.Void
function System.Collections.CollectionBase:Clear()end
---@param index System.Int32
---@return System.Void
function System.Collections.CollectionBase:RemoveAt(index)end
---@return System.Collections.IEnumerator
function System.Collections.CollectionBase:GetEnumerator()end
---@class System.Collections.Comparer : System.Object
---@field public Default System.Collections.Comparer
---@field public DefaultInvariant System.Collections.Comparer
System.Collections.Comparer = {}
---@type System.Collections.Comparer
CS.System.Collections.Comparer = System.Collections.Comparer

---@param a System.Object
---@param b System.Object
---@return System.Int32
function System.Collections.Comparer:Compare(a, b)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Comparer:GetObjectData(info, context)end
---@class System.Collections.DictionaryBase : System.Object
---@field public Count System.Int32 @  getter
System.Collections.DictionaryBase = {}
---@type System.Collections.DictionaryBase
CS.System.Collections.DictionaryBase = System.Collections.DictionaryBase

---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.DictionaryBase:CopyTo(array, index)end
---@return System.Void
function System.Collections.DictionaryBase:Clear()end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.DictionaryBase:GetEnumerator()end
---@class System.Collections.Hashtable : System.Object
---@field public Item System.Object @ setter getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Values System.Collections.ICollection @  getter
---@field public SyncRoot System.Object @  getter
---@field public Count System.Int32 @  getter
System.Collections.Hashtable = {}
---@type System.Collections.Hashtable
CS.System.Collections.Hashtable = System.Collections.Hashtable

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.Hashtable:Add(key, value)end
---@return System.Void
function System.Collections.Hashtable:Clear()end
---@return System.Object
function System.Collections.Hashtable:Clone()end
---@param key System.Object
---@return System.Boolean
function System.Collections.Hashtable:Contains(key)end
---@param key System.Object
---@return System.Boolean
function System.Collections.Hashtable:ContainsKey(key)end
---@param value System.Object
---@return System.Boolean
function System.Collections.Hashtable:ContainsValue(value)end
---@param array System.Array
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.Hashtable:CopyTo(array, arrayIndex)end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Hashtable:GetEnumerator()end
---@param key System.Object
---@return System.Void
function System.Collections.Hashtable:Remove(key)end
---@param table System.Collections.Hashtable
---@return System.Collections.Hashtable
function System.Collections.Hashtable.Synchronized(table)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Hashtable:GetObjectData(info, context)end
---@param sender System.Object
---@return System.Void
function System.Collections.Hashtable:OnDeserialization(sender)end
---@class System.Collections.Queue : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Collections.Queue = {}
---@type System.Collections.Queue
CS.System.Collections.Queue = System.Collections.Queue

---@return System.Object
function System.Collections.Queue:Clone()end
---@return System.Void
function System.Collections.Queue:Clear()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Queue:CopyTo(array, index)end
---@param obj System.Object
---@return System.Void
function System.Collections.Queue:Enqueue(obj)end
---@return System.Collections.IEnumerator
function System.Collections.Queue:GetEnumerator()end
---@return System.Object
function System.Collections.Queue:Dequeue()end
---@return System.Object
function System.Collections.Queue:Peek()end
---@param queue System.Collections.Queue
---@return System.Collections.Queue
function System.Collections.Queue.Synchronized(queue)end
---@param obj System.Object
---@return System.Boolean
function System.Collections.Queue:Contains(obj)end
---@return System.Object[]
function System.Collections.Queue:ToArray()end
---@return System.Void
function System.Collections.Queue:TrimToSize()end
---@class System.Collections.ReadOnlyCollectionBase : System.Object
---@field public Count System.Int32 @  getter
System.Collections.ReadOnlyCollectionBase = {}
---@type System.Collections.ReadOnlyCollectionBase
CS.System.Collections.ReadOnlyCollectionBase = System.Collections.ReadOnlyCollectionBase

---@return System.Collections.IEnumerator
function System.Collections.ReadOnlyCollectionBase:GetEnumerator()end
---@class System.Collections.SortedList : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Values System.Collections.ICollection @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Item System.Object @ setter getter
System.Collections.SortedList = {}
---@type System.Collections.SortedList
CS.System.Collections.SortedList = System.Collections.SortedList

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.SortedList:Add(key, value)end
---@return System.Void
function System.Collections.SortedList:Clear()end
---@return System.Object
function System.Collections.SortedList:Clone()end
---@param key System.Object
---@return System.Boolean
function System.Collections.SortedList:Contains(key)end
---@param key System.Object
---@return System.Boolean
function System.Collections.SortedList:ContainsKey(key)end
---@param value System.Object
---@return System.Boolean
function System.Collections.SortedList:ContainsValue(value)end
---@param array System.Array
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.SortedList:CopyTo(array, arrayIndex)end
---@param index System.Int32
---@return System.Object
function System.Collections.SortedList:GetByIndex(index)end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.SortedList:GetEnumerator()end
---@param index System.Int32
---@return System.Object
function System.Collections.SortedList:GetKey(index)end
---@return System.Collections.IList
function System.Collections.SortedList:GetKeyList()end
---@return System.Collections.IList
function System.Collections.SortedList:GetValueList()end
---@param key System.Object
---@return System.Int32
function System.Collections.SortedList:IndexOfKey(key)end
---@param value System.Object
---@return System.Int32
function System.Collections.SortedList:IndexOfValue(value)end
---@param index System.Int32
---@return System.Void
function System.Collections.SortedList:RemoveAt(index)end
---@param key System.Object
---@return System.Void
function System.Collections.SortedList:Remove(key)end
---@param index System.Int32
---@param value System.Object
---@return System.Void
function System.Collections.SortedList:SetByIndex(index, value)end
---@param list System.Collections.SortedList
---@return System.Collections.SortedList
function System.Collections.SortedList.Synchronized(list)end
---@return System.Void
function System.Collections.SortedList:TrimToSize()end
---@class System.Collections.Stack : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Collections.Stack = {}
---@type System.Collections.Stack
CS.System.Collections.Stack = System.Collections.Stack

---@return System.Void
function System.Collections.Stack:Clear()end
---@return System.Object
function System.Collections.Stack:Clone()end
---@param obj System.Object
---@return System.Boolean
function System.Collections.Stack:Contains(obj)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Stack:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Collections.Stack:GetEnumerator()end
---@return System.Object
function System.Collections.Stack:Peek()end
---@return System.Object
function System.Collections.Stack:Pop()end
---@param obj System.Object
---@return System.Void
function System.Collections.Stack:Push(obj)end
---@param stack System.Collections.Stack
---@return System.Collections.Stack
function System.Collections.Stack.Synchronized(stack)end
---@return System.Object[]
function System.Collections.Stack:ToArray()end
---@class System.Collections.StructuralComparisons : System.Object
---@field public StructuralComparer System.Collections.IComparer @static  getter
---@field public StructuralEqualityComparer System.Collections.IEqualityComparer @static  getter
System.Collections.StructuralComparisons = {}
---@type System.Collections.StructuralComparisons
CS.System.Collections.StructuralComparisons = System.Collections.StructuralComparisons

