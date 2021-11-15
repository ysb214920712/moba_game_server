---@class System.Collections.Generic.CollectionExtensions : System.Object
System.Collections.Generic.CollectionExtensions = {}
---@type System.Collections.Generic.CollectionExtensions
CS.System.Collections.Generic.CollectionExtensions = System.Collections.Generic.CollectionExtensions

---@class System.Collections.Generic.KeyValuePair : System.Object
System.Collections.Generic.KeyValuePair = {}
---@type System.Collections.Generic.KeyValuePair
CS.System.Collections.Generic.KeyValuePair = System.Collections.Generic.KeyValuePair

---@param key any
---@param value any
---@return any
function System.Collections.Generic.KeyValuePair.Create(key, value)end
---@class System.Collections.Generic.KeyValuePair : System.ValueType
---@field public Key any @  getter
---@field public Value any @  getter
System.Collections.Generic.KeyValuePair = {}
---@type System.Collections.Generic.KeyValuePair
CS.System.Collections.Generic.KeyValuePair = System.Collections.Generic.KeyValuePair

---@return System.String
function System.Collections.Generic.KeyValuePair:ToString()end
---@param key any
---@param value any
---@return System.Void
function System.Collections.Generic.KeyValuePair:Deconstruct(key, value)end
---@class System.Collections.Generic.Dictionary : System.Object
---@field public Comparer any @  getter
---@field public Count System.Int32 @  getter
---@field public Keys any @  getter
---@field public Values any @  getter
---@field public Item any @ setter getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@param key any
---@param value any
---@return System.Void
function System.Collections.Generic.Dictionary:Add(key, value)end
---@return System.Void
function System.Collections.Generic.Dictionary:Clear()end
---@param key any
---@return System.Boolean
function System.Collections.Generic.Dictionary:ContainsKey(key)end
---@param value any
---@return System.Boolean
function System.Collections.Generic.Dictionary:ContainsValue(value)end
---@return any
function System.Collections.Generic.Dictionary:GetEnumerator()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Generic.Dictionary:GetObjectData(info, context)end
---@param sender System.Object
---@return System.Void
function System.Collections.Generic.Dictionary:OnDeserialization(sender)end
---@overload fun(key:any, value:any):System.Boolean
---@param key any
---@return System.Boolean
function System.Collections.Generic.Dictionary:Remove(key)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Generic.Dictionary:TryGetValue(key, value)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Generic.Dictionary:TryAdd(key, value)end
---@class System.Collections.Generic.Dictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@return System.Boolean
function System.Collections.Generic.Dictionary:MoveNext()end
---@return System.Void
function System.Collections.Generic.Dictionary:Dispose()end
---@class System.Collections.Generic.Dictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@return any
function System.Collections.Generic.Dictionary:GetEnumerator()end
---@param array TKey[]
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.Dictionary:CopyTo(array, index)end
---@class System.Collections.Generic.Dictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@return System.Void
function System.Collections.Generic.Dictionary:Dispose()end
---@return System.Boolean
function System.Collections.Generic.Dictionary:MoveNext()end
---@class System.Collections.Generic.Dictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@return any
function System.Collections.Generic.Dictionary:GetEnumerator()end
---@param array TValue[]
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.Dictionary:CopyTo(array, index)end
---@class System.Collections.Generic.Dictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.Dictionary = {}
---@type System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@return System.Void
function System.Collections.Generic.Dictionary:Dispose()end
---@return System.Boolean
function System.Collections.Generic.Dictionary:MoveNext()end
---@class System.Collections.Generic.Comparer : System.Object
---@field public Default System.Collections.Generic.Comparer @static  getter
System.Collections.Generic.Comparer = {}
---@type System.Collections.Generic.Comparer
CS.System.Collections.Generic.Comparer = System.Collections.Generic.Comparer

---@param comparison any
---@return System.Collections.Generic.Comparer
function System.Collections.Generic.Comparer.Create(comparison)end
---@param x any
---@param y any
---@return System.Int32
function System.Collections.Generic.Comparer:Compare(x, y)end
---@class System.Collections.Generic.EqualityComparer : System.Object
---@field public Default System.Collections.Generic.EqualityComparer @static  getter
System.Collections.Generic.EqualityComparer = {}
---@type System.Collections.Generic.EqualityComparer
CS.System.Collections.Generic.EqualityComparer = System.Collections.Generic.EqualityComparer

---@param x any
---@param y any
---@return System.Boolean
function System.Collections.Generic.EqualityComparer:Equals(x, y)end
---@param obj any
---@return System.Int32
function System.Collections.Generic.EqualityComparer:GetHashCode(obj)end
---@class System.Collections.Generic.KeyNotFoundException : System.SystemException
System.Collections.Generic.KeyNotFoundException = {}
---@type System.Collections.Generic.KeyNotFoundException
CS.System.Collections.Generic.KeyNotFoundException = System.Collections.Generic.KeyNotFoundException

---@class System.Collections.Generic.List : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Count System.Int32 @  getter
---@field public Item any @ setter getter
System.Collections.Generic.List = {}
---@type System.Collections.Generic.List
CS.System.Collections.Generic.List = System.Collections.Generic.List

---@param item any
---@return System.Void
function System.Collections.Generic.List:Add(item)end
---@param collection any
---@return System.Void
function System.Collections.Generic.List:AddRange(collection)end
---@return any
function System.Collections.Generic.List:AsReadOnly()end
---@overload fun(item:any, comparer:any):System.Int32
---@overload fun(index:System.Int32, count:System.Int32, item:any, comparer:any):System.Int32
---@param item any
---@return System.Int32
function System.Collections.Generic.List:BinarySearch(item)end
---@return System.Void
function System.Collections.Generic.List:Clear()end
---@param item any
---@return System.Boolean
function System.Collections.Generic.List:Contains(item)end
---@param converter any
---@return any
function System.Collections.Generic.List:ConvertAll(converter)end
---@overload fun(array:T[], arrayIndex:System.Int32):System.Void
---@overload fun(index:System.Int32, array:T[], arrayIndex:System.Int32, count:System.Int32):System.Void
---@param array T[]
---@return System.Void
function System.Collections.Generic.List:CopyTo(array)end
---@param match any
---@return System.Boolean
function System.Collections.Generic.List:Exists(match)end
---@param match any
---@return any
function System.Collections.Generic.List:Find(match)end
---@param match any
---@return System.Collections.Generic.List
function System.Collections.Generic.List:FindAll(match)end
---@overload fun(startIndex:System.Int32, match:any):System.Int32
---@overload fun(startIndex:System.Int32, count:System.Int32, match:any):System.Int32
---@param match any
---@return System.Int32
function System.Collections.Generic.List:FindIndex(match)end
---@param match any
---@return any
function System.Collections.Generic.List:FindLast(match)end
---@overload fun(startIndex:System.Int32, match:any):System.Int32
---@overload fun(startIndex:System.Int32, count:System.Int32, match:any):System.Int32
---@param match any
---@return System.Int32
function System.Collections.Generic.List:FindLastIndex(match)end
---@param action any
---@return System.Void
function System.Collections.Generic.List:ForEach(action)end
---@return any
function System.Collections.Generic.List:GetEnumerator()end
---@param index System.Int32
---@param count System.Int32
---@return System.Collections.Generic.List
function System.Collections.Generic.List:GetRange(index, count)end
---@overload fun(item:any, index:System.Int32):System.Int32
---@overload fun(item:any, index:System.Int32, count:System.Int32):System.Int32
---@param item any
---@return System.Int32
function System.Collections.Generic.List:IndexOf(item)end
---@param index System.Int32
---@param item any
---@return System.Void
function System.Collections.Generic.List:Insert(index, item)end
---@param index System.Int32
---@param collection any
---@return System.Void
function System.Collections.Generic.List:InsertRange(index, collection)end
---@overload fun(item:any, index:System.Int32):System.Int32
---@overload fun(item:any, index:System.Int32, count:System.Int32):System.Int32
---@param item any
---@return System.Int32
function System.Collections.Generic.List:LastIndexOf(item)end
---@param item any
---@return System.Boolean
function System.Collections.Generic.List:Remove(item)end
---@param match any
---@return System.Int32
function System.Collections.Generic.List:RemoveAll(match)end
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.List:RemoveAt(index)end
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Collections.Generic.List:RemoveRange(index, count)end
---@overload fun(index:System.Int32, count:System.Int32):System.Void
---@return System.Void
function System.Collections.Generic.List:Reverse()end
---@overload fun(comparer:any):System.Void
---@overload fun(comparison:any):System.Void
---@overload fun(index:System.Int32, count:System.Int32, comparer:any):System.Void
---@return System.Void
function System.Collections.Generic.List:Sort()end
---@return T[]
function System.Collections.Generic.List:ToArray()end
---@return System.Void
function System.Collections.Generic.List:TrimExcess()end
---@param match any
---@return System.Boolean
function System.Collections.Generic.List:TrueForAll(match)end
---@class System.Collections.Generic.List : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.List = {}
---@type System.Collections.Generic.List
CS.System.Collections.Generic.List = System.Collections.Generic.List

---@return System.Void
function System.Collections.Generic.List:Dispose()end
---@return System.Boolean
function System.Collections.Generic.List:MoveNext()end
---@class System.Collections.Generic.HashSet : System.Object
---@field public Count System.Int32 @  getter
---@field public Comparer any @  getter
System.Collections.Generic.HashSet = {}
---@type System.Collections.Generic.HashSet
CS.System.Collections.Generic.HashSet = System.Collections.Generic.HashSet

---@return System.Void
function System.Collections.Generic.HashSet:Clear()end
---@param item any
---@return System.Boolean
function System.Collections.Generic.HashSet:Contains(item)end
---@overload fun(array:T[], arrayIndex:System.Int32):System.Void
---@overload fun(array:T[], arrayIndex:System.Int32, count:System.Int32):System.Void
---@param array T[]
---@return System.Void
function System.Collections.Generic.HashSet:CopyTo(array)end
---@param item any
---@return System.Boolean
function System.Collections.Generic.HashSet:Remove(item)end
---@return any
function System.Collections.Generic.HashSet:GetEnumerator()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Generic.HashSet:GetObjectData(info, context)end
---@param sender System.Object
---@return System.Void
function System.Collections.Generic.HashSet:OnDeserialization(sender)end
---@param item any
---@return System.Boolean
function System.Collections.Generic.HashSet:Add(item)end
---@param equalValue any
---@param actualValue any
---@return System.Boolean
function System.Collections.Generic.HashSet:TryGetValue(equalValue, actualValue)end
---@param other any
---@return System.Void
function System.Collections.Generic.HashSet:UnionWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.HashSet:IntersectWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.HashSet:ExceptWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.HashSet:SymmetricExceptWith(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:IsSubsetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:IsProperSubsetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:IsSupersetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:IsProperSupersetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:Overlaps(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.HashSet:SetEquals(other)end
---@param match any
---@return System.Int32
function System.Collections.Generic.HashSet:RemoveWhere(match)end
---@return System.Void
function System.Collections.Generic.HashSet:TrimExcess()end
---@return any
function System.Collections.Generic.HashSet.CreateSetComparer()end
---@class System.Collections.Generic.HashSet : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.HashSet = {}
---@type System.Collections.Generic.HashSet
CS.System.Collections.Generic.HashSet = System.Collections.Generic.HashSet

---@return System.Void
function System.Collections.Generic.HashSet:Dispose()end
---@return System.Boolean
function System.Collections.Generic.HashSet:MoveNext()end
---@class System.Collections.Generic.LinkedList : System.Object
---@field public Count System.Int32 @  getter
---@field public First any @  getter
---@field public Last any @  getter
System.Collections.Generic.LinkedList = {}
---@type System.Collections.Generic.LinkedList
CS.System.Collections.Generic.LinkedList = System.Collections.Generic.LinkedList

---@overload fun(node:any, newNode:any):System.Void
---@param node any
---@param value any
---@return any
function System.Collections.Generic.LinkedList:AddAfter(node, value)end
---@overload fun(node:any, newNode:any):System.Void
---@param node any
---@param value any
---@return any
function System.Collections.Generic.LinkedList:AddBefore(node, value)end
---@overload fun(node:any):System.Void
---@param value any
---@return any
function System.Collections.Generic.LinkedList:AddFirst(value)end
---@overload fun(node:any):System.Void
---@param value any
---@return any
function System.Collections.Generic.LinkedList:AddLast(value)end
---@return System.Void
function System.Collections.Generic.LinkedList:Clear()end
---@param value any
---@return System.Boolean
function System.Collections.Generic.LinkedList:Contains(value)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.LinkedList:CopyTo(array, index)end
---@param value any
---@return any
function System.Collections.Generic.LinkedList:Find(value)end
---@param value any
---@return any
function System.Collections.Generic.LinkedList:FindLast(value)end
---@return any
function System.Collections.Generic.LinkedList:GetEnumerator()end
---@overload fun(node:any):System.Void
---@param value any
---@return System.Boolean
function System.Collections.Generic.LinkedList:Remove(value)end
---@return System.Void
function System.Collections.Generic.LinkedList:RemoveFirst()end
---@return System.Void
function System.Collections.Generic.LinkedList:RemoveLast()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Generic.LinkedList:GetObjectData(info, context)end
---@param sender System.Object
---@return System.Void
function System.Collections.Generic.LinkedList:OnDeserialization(sender)end
---@class System.Collections.Generic.LinkedList : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.LinkedList = {}
---@type System.Collections.Generic.LinkedList
CS.System.Collections.Generic.LinkedList = System.Collections.Generic.LinkedList

---@return System.Boolean
function System.Collections.Generic.LinkedList:MoveNext()end
---@return System.Void
function System.Collections.Generic.LinkedList:Dispose()end
---@class System.Collections.Generic.LinkedListNode : System.Object
---@field public List any @  getter
---@field public Next System.Collections.Generic.LinkedListNode @  getter
---@field public Previous System.Collections.Generic.LinkedListNode @  getter
---@field public Value any @ setter getter
System.Collections.Generic.LinkedListNode = {}
---@type System.Collections.Generic.LinkedListNode
CS.System.Collections.Generic.LinkedListNode = System.Collections.Generic.LinkedListNode

---@class System.Collections.Generic.Queue : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.Queue = {}
---@type System.Collections.Generic.Queue
CS.System.Collections.Generic.Queue = System.Collections.Generic.Queue

---@return System.Void
function System.Collections.Generic.Queue:Clear()end
---@param array T[]
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.Generic.Queue:CopyTo(array, arrayIndex)end
---@param item any
---@return System.Void
function System.Collections.Generic.Queue:Enqueue(item)end
---@return any
function System.Collections.Generic.Queue:GetEnumerator()end
---@return any
function System.Collections.Generic.Queue:Dequeue()end
---@param result any
---@return System.Boolean
function System.Collections.Generic.Queue:TryDequeue(result)end
---@return any
function System.Collections.Generic.Queue:Peek()end
---@param result any
---@return System.Boolean
function System.Collections.Generic.Queue:TryPeek(result)end
---@param item any
---@return System.Boolean
function System.Collections.Generic.Queue:Contains(item)end
---@return T[]
function System.Collections.Generic.Queue:ToArray()end
---@return System.Void
function System.Collections.Generic.Queue:TrimExcess()end
---@class System.Collections.Generic.Queue : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.Queue = {}
---@type System.Collections.Generic.Queue
CS.System.Collections.Generic.Queue = System.Collections.Generic.Queue

---@return System.Void
function System.Collections.Generic.Queue:Dispose()end
---@return System.Boolean
function System.Collections.Generic.Queue:MoveNext()end
---@class System.Collections.Generic.SortedDictionary : System.Object
---@field public Item any @ setter getter
---@field public Count System.Int32 @  getter
---@field public Comparer any @  getter
---@field public Keys any @  getter
---@field public Values any @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@param key any
---@param value any
---@return System.Void
function System.Collections.Generic.SortedDictionary:Add(key, value)end
---@return System.Void
function System.Collections.Generic.SortedDictionary:Clear()end
---@param key any
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:ContainsKey(key)end
---@param value any
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:ContainsValue(value)end
---@param array System.Collections.Generic.KeyValuePair
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.SortedDictionary:CopyTo(array, index)end
---@return any
function System.Collections.Generic.SortedDictionary:GetEnumerator()end
---@param key any
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:Remove(key)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:TryGetValue(key, value)end
---@class System.Collections.Generic.SortedDictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@return System.Boolean
function System.Collections.Generic.SortedDictionary:MoveNext()end
---@return System.Void
function System.Collections.Generic.SortedDictionary:Dispose()end
---@class System.Collections.Generic.SortedDictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@return any
function System.Collections.Generic.SortedDictionary:GetEnumerator()end
---@param array TKey[]
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.SortedDictionary:CopyTo(array, index)end
---@class System.Collections.Generic.SortedDictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@return System.Void
function System.Collections.Generic.SortedDictionary:Dispose()end
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:MoveNext()end
---@class System.Collections.Generic.SortedDictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@return any
function System.Collections.Generic.SortedDictionary:GetEnumerator()end
---@param array TValue[]
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.SortedDictionary:CopyTo(array, index)end
---@class System.Collections.Generic.SortedDictionary : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.SortedDictionary = {}
---@type System.Collections.Generic.SortedDictionary
CS.System.Collections.Generic.SortedDictionary = System.Collections.Generic.SortedDictionary

---@return System.Void
function System.Collections.Generic.SortedDictionary:Dispose()end
---@return System.Boolean
function System.Collections.Generic.SortedDictionary:MoveNext()end
---@class System.Collections.Generic.SortedList : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public Comparer any @  getter
---@field public Count System.Int32 @  getter
---@field public Keys any @  getter
---@field public Values any @  getter
---@field public Item any @ setter getter
System.Collections.Generic.SortedList = {}
---@type System.Collections.Generic.SortedList
CS.System.Collections.Generic.SortedList = System.Collections.Generic.SortedList

---@param key any
---@param value any
---@return System.Void
function System.Collections.Generic.SortedList:Add(key, value)end
---@return System.Void
function System.Collections.Generic.SortedList:Clear()end
---@param key any
---@return System.Boolean
function System.Collections.Generic.SortedList:ContainsKey(key)end
---@param value any
---@return System.Boolean
function System.Collections.Generic.SortedList:ContainsValue(value)end
---@return any
function System.Collections.Generic.SortedList:GetEnumerator()end
---@param key any
---@return System.Int32
function System.Collections.Generic.SortedList:IndexOfKey(key)end
---@param value any
---@return System.Int32
function System.Collections.Generic.SortedList:IndexOfValue(value)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.Generic.SortedList:TryGetValue(key, value)end
---@param index System.Int32
---@return System.Void
function System.Collections.Generic.SortedList:RemoveAt(index)end
---@param key any
---@return System.Boolean
function System.Collections.Generic.SortedList:Remove(key)end
---@return System.Void
function System.Collections.Generic.SortedList:TrimExcess()end
---@class System.Collections.Generic.SortedSet : System.Object
---@field public Count System.Int32 @  getter
---@field public Comparer any @  getter
---@field public Min any @  getter
---@field public Max any @  getter
System.Collections.Generic.SortedSet = {}
---@type System.Collections.Generic.SortedSet
CS.System.Collections.Generic.SortedSet = System.Collections.Generic.SortedSet

---@param item any
---@return System.Boolean
function System.Collections.Generic.SortedSet:Add(item)end
---@param item any
---@return System.Boolean
function System.Collections.Generic.SortedSet:Remove(item)end
---@return System.Void
function System.Collections.Generic.SortedSet:Clear()end
---@param item any
---@return System.Boolean
function System.Collections.Generic.SortedSet:Contains(item)end
---@overload fun(array:T[], index:System.Int32):System.Void
---@overload fun(array:T[], index:System.Int32, count:System.Int32):System.Void
---@param array T[]
---@return System.Void
function System.Collections.Generic.SortedSet:CopyTo(array)end
---@return any
function System.Collections.Generic.SortedSet:GetEnumerator()end
---@overload fun(memberEqualityComparer:any):any
---@return any
function System.Collections.Generic.SortedSet.CreateSetComparer()end
---@param other any
---@return System.Void
function System.Collections.Generic.SortedSet:UnionWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.SortedSet:IntersectWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.SortedSet:ExceptWith(other)end
---@param other any
---@return System.Void
function System.Collections.Generic.SortedSet:SymmetricExceptWith(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:IsSubsetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:IsProperSubsetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:IsSupersetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:IsProperSupersetOf(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:SetEquals(other)end
---@param other any
---@return System.Boolean
function System.Collections.Generic.SortedSet:Overlaps(other)end
---@param match any
---@return System.Int32
function System.Collections.Generic.SortedSet:RemoveWhere(match)end
---@return any
function System.Collections.Generic.SortedSet:Reverse()end
---@param lowerValue any
---@param upperValue any
---@return System.Collections.Generic.SortedSet
function System.Collections.Generic.SortedSet:GetViewBetween(lowerValue, upperValue)end
---@param equalValue any
---@param actualValue any
---@return System.Boolean
function System.Collections.Generic.SortedSet:TryGetValue(equalValue, actualValue)end
---@class System.Collections.Generic.SortedSet : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.SortedSet = {}
---@type System.Collections.Generic.SortedSet
CS.System.Collections.Generic.SortedSet = System.Collections.Generic.SortedSet

---@return System.Boolean
function System.Collections.Generic.SortedSet:MoveNext()end
---@return System.Void
function System.Collections.Generic.SortedSet:Dispose()end
---@class System.Collections.Generic.Stack : System.Object
---@field public Count System.Int32 @  getter
System.Collections.Generic.Stack = {}
---@type System.Collections.Generic.Stack
CS.System.Collections.Generic.Stack = System.Collections.Generic.Stack

---@return System.Void
function System.Collections.Generic.Stack:Clear()end
---@param item any
---@return System.Boolean
function System.Collections.Generic.Stack:Contains(item)end
---@param array T[]
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.Generic.Stack:CopyTo(array, arrayIndex)end
---@return any
function System.Collections.Generic.Stack:GetEnumerator()end
---@return System.Void
function System.Collections.Generic.Stack:TrimExcess()end
---@return any
function System.Collections.Generic.Stack:Peek()end
---@param result any
---@return System.Boolean
function System.Collections.Generic.Stack:TryPeek(result)end
---@return any
function System.Collections.Generic.Stack:Pop()end
---@param result any
---@return System.Boolean
function System.Collections.Generic.Stack:TryPop(result)end
---@param item any
---@return System.Void
function System.Collections.Generic.Stack:Push(item)end
---@return T[]
function System.Collections.Generic.Stack:ToArray()end
---@class System.Collections.Generic.Stack : System.ValueType
---@field public Current any @  getter
System.Collections.Generic.Stack = {}
---@type System.Collections.Generic.Stack
CS.System.Collections.Generic.Stack = System.Collections.Generic.Stack

---@return System.Void
function System.Collections.Generic.Stack:Dispose()end
---@return System.Boolean
function System.Collections.Generic.Stack:MoveNext()end
