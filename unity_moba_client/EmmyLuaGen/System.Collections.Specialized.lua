---@class System.Collections.Specialized.BitVector32 : System.ValueType
---@field public Item System.Boolean @ setter getter
---@field public Item System.Int32 @ setter getter
---@field public Data System.Int32 @  getter
System.Collections.Specialized.BitVector32 = {}
---@type System.Collections.Specialized.BitVector32
CS.System.Collections.Specialized.BitVector32 = System.Collections.Specialized.BitVector32

---@overload fun(previous:System.Int32):System.Int32
---@return System.Int32
function System.Collections.Specialized.BitVector32.CreateMask()end
---@overload fun(maxValue:System.Int16, previous:System.Collections.Specialized.BitVector32.Section):System.Collections.Specialized.BitVector32.Section
---@param maxValue System.Int16
---@return System.Collections.Specialized.BitVector32.Section
function System.Collections.Specialized.BitVector32.CreateSection(maxValue)end
---@param o System.Object
---@return System.Boolean
function System.Collections.Specialized.BitVector32:Equals(o)end
---@return System.Int32
function System.Collections.Specialized.BitVector32:GetHashCode()end
---@param value System.Collections.Specialized.BitVector32
---@return System.String
function System.Collections.Specialized.BitVector32.ToString(value)end
---@return System.String
function System.Collections.Specialized.BitVector32:ToString()end
---@class System.Collections.Specialized.BitVector32.Section : System.ValueType
---@field public Mask System.Int16 @  getter
---@field public Offset System.Int16 @  getter
System.Collections.Specialized.BitVector32.Section = {}
---@type System.Collections.Specialized.BitVector32.Section
CS.System.Collections.Specialized.BitVector32.Section = System.Collections.Specialized.BitVector32.Section

---@overload fun(obj:System.Collections.Specialized.BitVector32.Section):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Collections.Specialized.BitVector32.Section:Equals(o)end
---@param a System.Collections.Specialized.BitVector32.Section
---@param b System.Collections.Specialized.BitVector32.Section
---@return System.Boolean
function System.Collections.Specialized.BitVector32.Section.op_Equality(a, b)end
---@param a System.Collections.Specialized.BitVector32.Section
---@param b System.Collections.Specialized.BitVector32.Section
---@return System.Boolean
function System.Collections.Specialized.BitVector32.Section.op_Inequality(a, b)end
---@return System.Int32
function System.Collections.Specialized.BitVector32.Section:GetHashCode()end
---@param value System.Collections.Specialized.BitVector32.Section
---@return System.String
function System.Collections.Specialized.BitVector32.Section.ToString(value)end
---@return System.String
function System.Collections.Specialized.BitVector32.Section:ToString()end
---@class System.Collections.Specialized.CollectionsUtil : System.Object
System.Collections.Specialized.CollectionsUtil = {}
---@type System.Collections.Specialized.CollectionsUtil
CS.System.Collections.Specialized.CollectionsUtil = System.Collections.Specialized.CollectionsUtil

---@overload fun(capacity:System.Int32):System.Collections.Hashtable
---@overload fun(d:System.Collections.IDictionary):System.Collections.Hashtable
---@return System.Collections.Hashtable
function System.Collections.Specialized.CollectionsUtil.CreateCaseInsensitiveHashtable()end
---@return System.Collections.SortedList
function System.Collections.Specialized.CollectionsUtil.CreateCaseInsensitiveSortedList()end
---@class System.Collections.Specialized.HybridDictionary : System.Object
---@field public Item System.Object @ setter getter
---@field public Count System.Int32 @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Values System.Collections.ICollection @  getter
System.Collections.Specialized.HybridDictionary = {}
---@type System.Collections.Specialized.HybridDictionary
CS.System.Collections.Specialized.HybridDictionary = System.Collections.Specialized.HybridDictionary

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.Specialized.HybridDictionary:Add(key, value)end
---@return System.Void
function System.Collections.Specialized.HybridDictionary:Clear()end
---@param key System.Object
---@return System.Boolean
function System.Collections.Specialized.HybridDictionary:Contains(key)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.HybridDictionary:CopyTo(array, index)end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Specialized.HybridDictionary:GetEnumerator()end
---@param key System.Object
---@return System.Void
function System.Collections.Specialized.HybridDictionary:Remove(key)end
---@class System.Collections.Specialized.ListDictionary : System.Object
---@field public Item System.Object @ setter getter
---@field public Count System.Int32 @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Values System.Collections.ICollection @  getter
System.Collections.Specialized.ListDictionary = {}
---@type System.Collections.Specialized.ListDictionary
CS.System.Collections.Specialized.ListDictionary = System.Collections.Specialized.ListDictionary

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.Specialized.ListDictionary:Add(key, value)end
---@return System.Void
function System.Collections.Specialized.ListDictionary:Clear()end
---@param key System.Object
---@return System.Boolean
function System.Collections.Specialized.ListDictionary:Contains(key)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.ListDictionary:CopyTo(array, index)end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Specialized.ListDictionary:GetEnumerator()end
---@param key System.Object
---@return System.Void
function System.Collections.Specialized.ListDictionary:Remove(key)end
---@class System.Collections.Specialized.NameObjectCollectionBase : System.Object
---@field public Count System.Int32 @  getter
---@field public Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection @  getter
System.Collections.Specialized.NameObjectCollectionBase = {}
---@type System.Collections.Specialized.NameObjectCollectionBase
CS.System.Collections.Specialized.NameObjectCollectionBase = System.Collections.Specialized.NameObjectCollectionBase

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Specialized.NameObjectCollectionBase:GetObjectData(info, context)end
---@param sender System.Object
---@return System.Void
function System.Collections.Specialized.NameObjectCollectionBase:OnDeserialization(sender)end
---@return System.Collections.IEnumerator
function System.Collections.Specialized.NameObjectCollectionBase:GetEnumerator()end
---@class System.Collections.Specialized.NameObjectCollectionBase.KeysCollection : System.Object
---@field public Item System.String @  getter
---@field public Count System.Int32 @  getter
System.Collections.Specialized.NameObjectCollectionBase.KeysCollection = {}
---@type System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
CS.System.Collections.Specialized.NameObjectCollectionBase.KeysCollection = System.Collections.Specialized.NameObjectCollectionBase.KeysCollection

---@param index System.Int32
---@return System.String
function System.Collections.Specialized.NameObjectCollectionBase.KeysCollection:Get(index)end
---@return System.Collections.IEnumerator
function System.Collections.Specialized.NameObjectCollectionBase.KeysCollection:GetEnumerator()end
---@class System.Collections.Specialized.NameValueCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field public Item System.String @ setter getter
---@field public Item System.String @  getter
---@field public AllKeys System.String[] @  getter
System.Collections.Specialized.NameValueCollection = {}
---@type System.Collections.Specialized.NameValueCollection
CS.System.Collections.Specialized.NameValueCollection = System.Collections.Specialized.NameValueCollection

---@overload fun(name:System.String, value:System.String):System.Void
---@param c System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Collections.Specialized.NameValueCollection:Add(c)end
---@return System.Void
function System.Collections.Specialized.NameValueCollection:Clear()end
---@param dest System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.NameValueCollection:CopyTo(dest, index)end
---@return System.Boolean
function System.Collections.Specialized.NameValueCollection:HasKeys()end
---@overload fun(name:System.String):System.String
---@param index System.Int32
---@return System.String
function System.Collections.Specialized.NameValueCollection:Get(index)end
---@overload fun(name:System.String):System.String[]
---@param index System.Int32
---@return System.String[]
function System.Collections.Specialized.NameValueCollection:GetValues(index)end
---@param name System.String
---@param value System.String
---@return System.Void
function System.Collections.Specialized.NameValueCollection:Set(name, value)end
---@param name System.String
---@return System.Void
function System.Collections.Specialized.NameValueCollection:Remove(name)end
---@param index System.Int32
---@return System.String
function System.Collections.Specialized.NameValueCollection:GetKey(index)end
---@class System.Collections.Specialized.NotifyCollectionChangedAction : System.Enum
System.Collections.Specialized.NotifyCollectionChangedAction = {}
---@type System.Collections.Specialized.NotifyCollectionChangedAction
CS.System.Collections.Specialized.NotifyCollectionChangedAction = System.Collections.Specialized.NotifyCollectionChangedAction

---@return System.Int32 value:0
System.Collections.Specialized.NotifyCollectionChangedAction.Add = 0
---@return System.Int32 value:1
System.Collections.Specialized.NotifyCollectionChangedAction.Remove = 1
---@return System.Int32 value:2
System.Collections.Specialized.NotifyCollectionChangedAction.Replace = 2
---@return System.Int32 value:3
System.Collections.Specialized.NotifyCollectionChangedAction.Move = 3
---@return System.Int32 value:4
System.Collections.Specialized.NotifyCollectionChangedAction.Reset = 4

---@class System.Collections.Specialized.NotifyCollectionChangedEventArgs : System.EventArgs
---@field public Action System.Collections.Specialized.NotifyCollectionChangedAction @  getter
---@field public NewItems System.Collections.IList @  getter
---@field public OldItems System.Collections.IList @  getter
---@field public NewStartingIndex System.Int32 @  getter
---@field public OldStartingIndex System.Int32 @  getter
System.Collections.Specialized.NotifyCollectionChangedEventArgs = {}
---@type System.Collections.Specialized.NotifyCollectionChangedEventArgs
CS.System.Collections.Specialized.NotifyCollectionChangedEventArgs = System.Collections.Specialized.NotifyCollectionChangedEventArgs

---@class System.Collections.Specialized.OrderedDictionary : System.Object
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Keys System.Collections.ICollection @  getter
---@field public Item System.Object @ setter getter
---@field public Item System.Object @ setter getter
---@field public Values System.Collections.ICollection @  getter
System.Collections.Specialized.OrderedDictionary = {}
---@type System.Collections.Specialized.OrderedDictionary
CS.System.Collections.Specialized.OrderedDictionary = System.Collections.Specialized.OrderedDictionary

---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:Add(key, value)end
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:Clear()end
---@return System.Collections.Specialized.OrderedDictionary
function System.Collections.Specialized.OrderedDictionary:AsReadOnly()end
---@param key System.Object
---@return System.Boolean
function System.Collections.Specialized.OrderedDictionary:Contains(key)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:CopyTo(array, index)end
---@param index System.Int32
---@param key System.Object
---@param value System.Object
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:Insert(index, key, value)end
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:RemoveAt(index)end
---@param key System.Object
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:Remove(key)end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Specialized.OrderedDictionary:GetEnumerator()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Collections.Specialized.OrderedDictionary:GetObjectData(info, context)end
---@class System.Collections.Specialized.StringCollection : System.Object
---@field public Item System.String @ setter getter
---@field public Count System.Int32 @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Collections.Specialized.StringCollection = {}
---@type System.Collections.Specialized.StringCollection
CS.System.Collections.Specialized.StringCollection = System.Collections.Specialized.StringCollection

---@param value System.String
---@return System.Int32
function System.Collections.Specialized.StringCollection:Add(value)end
---@param value System.String[]
---@return System.Void
function System.Collections.Specialized.StringCollection:AddRange(value)end
---@return System.Void
function System.Collections.Specialized.StringCollection:Clear()end
---@param value System.String
---@return System.Boolean
function System.Collections.Specialized.StringCollection:Contains(value)end
---@param array System.String[]
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.StringCollection:CopyTo(array, index)end
---@return System.Collections.Specialized.StringEnumerator
function System.Collections.Specialized.StringCollection:GetEnumerator()end
---@param value System.String
---@return System.Int32
function System.Collections.Specialized.StringCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.String
---@return System.Void
function System.Collections.Specialized.StringCollection:Insert(index, value)end
---@param value System.String
---@return System.Void
function System.Collections.Specialized.StringCollection:Remove(value)end
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.StringCollection:RemoveAt(index)end
---@class System.Collections.Specialized.StringEnumerator : System.Object
---@field public Current System.String @  getter
System.Collections.Specialized.StringEnumerator = {}
---@type System.Collections.Specialized.StringEnumerator
CS.System.Collections.Specialized.StringEnumerator = System.Collections.Specialized.StringEnumerator

---@return System.Boolean
function System.Collections.Specialized.StringEnumerator:MoveNext()end
---@return System.Void
function System.Collections.Specialized.StringEnumerator:Reset()end
---@class System.Collections.Specialized.StringDictionary : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.String @ setter getter
---@field public Keys System.Collections.ICollection @  getter
---@field public SyncRoot System.Object @  getter
---@field public Values System.Collections.ICollection @  getter
System.Collections.Specialized.StringDictionary = {}
---@type System.Collections.Specialized.StringDictionary
CS.System.Collections.Specialized.StringDictionary = System.Collections.Specialized.StringDictionary

---@param key System.String
---@param value System.String
---@return System.Void
function System.Collections.Specialized.StringDictionary:Add(key, value)end
---@return System.Void
function System.Collections.Specialized.StringDictionary:Clear()end
---@param key System.String
---@return System.Boolean
function System.Collections.Specialized.StringDictionary:ContainsKey(key)end
---@param value System.String
---@return System.Boolean
function System.Collections.Specialized.StringDictionary:ContainsValue(value)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Collections.Specialized.StringDictionary:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Collections.Specialized.StringDictionary:GetEnumerator()end
---@param key System.String
---@return System.Void
function System.Collections.Specialized.StringDictionary:Remove(key)end
