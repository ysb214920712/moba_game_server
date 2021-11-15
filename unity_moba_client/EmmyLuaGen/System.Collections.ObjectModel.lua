---@class System.Collections.ObjectModel.Collection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item any @ setter getter
System.Collections.ObjectModel.Collection = {}
---@type System.Collections.ObjectModel.Collection
CS.System.Collections.ObjectModel.Collection = System.Collections.ObjectModel.Collection

---@param item any
---@return System.Void
function System.Collections.ObjectModel.Collection:Add(item)end
---@return System.Void
function System.Collections.ObjectModel.Collection:Clear()end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.ObjectModel.Collection:CopyTo(array, index)end
---@param item any
---@return System.Boolean
function System.Collections.ObjectModel.Collection:Contains(item)end
---@return any
function System.Collections.ObjectModel.Collection:GetEnumerator()end
---@param item any
---@return System.Int32
function System.Collections.ObjectModel.Collection:IndexOf(item)end
---@param index System.Int32
---@param item any
---@return System.Void
function System.Collections.ObjectModel.Collection:Insert(index, item)end
---@param item any
---@return System.Boolean
function System.Collections.ObjectModel.Collection:Remove(item)end
---@param index System.Int32
---@return System.Void
function System.Collections.ObjectModel.Collection:RemoveAt(index)end
---@class System.Collections.ObjectModel.KeyedCollection : any
---@field public Comparer any @  getter
---@field public Item any @  getter
System.Collections.ObjectModel.KeyedCollection = {}
---@type System.Collections.ObjectModel.KeyedCollection
CS.System.Collections.ObjectModel.KeyedCollection = System.Collections.ObjectModel.KeyedCollection

---@param key any
---@return System.Boolean
function System.Collections.ObjectModel.KeyedCollection:Contains(key)end
---@param key any
---@return System.Boolean
function System.Collections.ObjectModel.KeyedCollection:Remove(key)end
---@class System.Collections.ObjectModel.ReadOnlyCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item any @  getter
System.Collections.ObjectModel.ReadOnlyCollection = {}
---@type System.Collections.ObjectModel.ReadOnlyCollection
CS.System.Collections.ObjectModel.ReadOnlyCollection = System.Collections.ObjectModel.ReadOnlyCollection

---@param value any
---@return System.Boolean
function System.Collections.ObjectModel.ReadOnlyCollection:Contains(value)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Collections.ObjectModel.ReadOnlyCollection:CopyTo(array, index)end
---@return any
function System.Collections.ObjectModel.ReadOnlyCollection:GetEnumerator()end
---@param value any
---@return System.Int32
function System.Collections.ObjectModel.ReadOnlyCollection:IndexOf(value)end
---@class System.Collections.ObjectModel.ReadOnlyDictionary : System.Object
---@field public Keys any @  getter
---@field public Values any @  getter
---@field public Item any @  getter
---@field public Count System.Int32 @  getter
System.Collections.ObjectModel.ReadOnlyDictionary = {}
---@type System.Collections.ObjectModel.ReadOnlyDictionary
CS.System.Collections.ObjectModel.ReadOnlyDictionary = System.Collections.ObjectModel.ReadOnlyDictionary

---@param key any
---@return System.Boolean
function System.Collections.ObjectModel.ReadOnlyDictionary:ContainsKey(key)end
---@param key any
---@param value any
---@return System.Boolean
function System.Collections.ObjectModel.ReadOnlyDictionary:TryGetValue(key, value)end
---@return any
function System.Collections.ObjectModel.ReadOnlyDictionary:GetEnumerator()end
---@class System.Collections.ObjectModel.ReadOnlyDictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.ObjectModel.ReadOnlyDictionary = {}
---@type System.Collections.ObjectModel.ReadOnlyDictionary
CS.System.Collections.ObjectModel.ReadOnlyDictionary = System.Collections.ObjectModel.ReadOnlyDictionary

---@param array TKey[]
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.ObjectModel.ReadOnlyDictionary:CopyTo(array, arrayIndex)end
---@return any
function System.Collections.ObjectModel.ReadOnlyDictionary:GetEnumerator()end
---@class System.Collections.ObjectModel.ReadOnlyDictionary : System.Object
---@field public Count System.Int32 @  getter
System.Collections.ObjectModel.ReadOnlyDictionary = {}
---@type System.Collections.ObjectModel.ReadOnlyDictionary
CS.System.Collections.ObjectModel.ReadOnlyDictionary = System.Collections.ObjectModel.ReadOnlyDictionary

---@param array TValue[]
---@param arrayIndex System.Int32
---@return System.Void
function System.Collections.ObjectModel.ReadOnlyDictionary:CopyTo(array, arrayIndex)end
---@return any
function System.Collections.ObjectModel.ReadOnlyDictionary:GetEnumerator()end
---@class System.Collections.ObjectModel.ObservableCollection : any
System.Collections.ObjectModel.ObservableCollection = {}
---@type System.Collections.ObjectModel.ObservableCollection
CS.System.Collections.ObjectModel.ObservableCollection = System.Collections.ObjectModel.ObservableCollection

---@param oldIndex System.Int32
---@param newIndex System.Int32
---@return System.Void
function System.Collections.ObjectModel.ObservableCollection:Move(oldIndex, newIndex)end
---@param value System.Collections.Specialized.NotifyCollectionChangedEventHandler
---@return System.Void
function System.Collections.ObjectModel.ObservableCollection:add_CollectionChanged(value)end
---@param value System.Collections.Specialized.NotifyCollectionChangedEventHandler
---@return System.Void
function System.Collections.ObjectModel.ObservableCollection:remove_CollectionChanged(value)end
---@class System.Collections.ObjectModel.ReadOnlyObservableCollection : any
System.Collections.ObjectModel.ReadOnlyObservableCollection = {}
---@type System.Collections.ObjectModel.ReadOnlyObservableCollection
CS.System.Collections.ObjectModel.ReadOnlyObservableCollection = System.Collections.ObjectModel.ReadOnlyObservableCollection

