---@class System.Memory : System.ValueType
---@field public Empty System.Memory @static  getter
---@field public Length System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Span any @  getter
System.Memory = {}
---@type System.Memory
CS.System.Memory = System.Memory

---@overload fun(arraySegment:any):System.Memory
---@overload fun(memory:System.Memory):any
---@param array T[]
---@return System.Memory
function System.Memory.op_Implicit(array)end
---@overload fun(start:System.Int32, length:System.Int32):System.Memory
---@param start System.Int32
---@return System.Memory
function System.Memory:Slice(start)end
---@overload fun():System.Buffers.MemoryHandle
---@param pin System.Boolean
---@return System.Buffers.MemoryHandle
function System.Memory:Retain(pin)end
---@param arraySegment System.ArraySegment
---@return System.Boolean
function System.Memory:TryGetArray(arraySegment)end
---@return T[]
function System.Memory:ToArray()end
---@overload fun(other:System.Memory):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Memory:Equals(obj)end
---@return System.Int32
function System.Memory:GetHashCode()end
---@class System.ReadOnlyMemory : System.ValueType
---@field public Empty System.ReadOnlyMemory @static  getter
---@field public Length System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Span any @  getter
System.ReadOnlyMemory = {}
---@type System.ReadOnlyMemory
CS.System.ReadOnlyMemory = System.ReadOnlyMemory

---@overload fun(arraySegment:any):System.ReadOnlyMemory
---@param array T[]
---@return System.ReadOnlyMemory
function System.ReadOnlyMemory.op_Implicit(array)end
---@overload fun(start:System.Int32, length:System.Int32):System.ReadOnlyMemory
---@param start System.Int32
---@return System.ReadOnlyMemory
function System.ReadOnlyMemory:Slice(start)end
---@overload fun():System.Buffers.MemoryHandle
---@param pin System.Boolean
---@return System.Buffers.MemoryHandle
function System.ReadOnlyMemory:Retain(pin)end
---@param arraySegment System.ArraySegment
---@return System.Boolean
function System.ReadOnlyMemory:DangerousTryGetArray(arraySegment)end
---@return T[]
function System.ReadOnlyMemory:ToArray()end
---@overload fun(other:System.ReadOnlyMemory):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ReadOnlyMemory:Equals(obj)end
---@return System.Int32
function System.ReadOnlyMemory:GetHashCode()end
---@class System.ReadOnlySpan : System.ValueType
---@field public Length System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Item any @  getter
---@field public Empty System.ReadOnlySpan @static  getter
System.ReadOnlySpan = {}
---@type System.ReadOnlySpan
CS.System.ReadOnlySpan = System.ReadOnlySpan

---@param obj System.Object
---@param objectData any
---@param length System.Int32
---@return System.ReadOnlySpan
function System.ReadOnlySpan.DangerousCreate(obj, objectData, length)end
---@param destination any
---@return System.Void
function System.ReadOnlySpan:CopyTo(destination)end
---@param destination any
---@return System.Boolean
function System.ReadOnlySpan:TryCopyTo(destination)end
---@param left System.ReadOnlySpan
---@param right System.ReadOnlySpan
---@return System.Boolean
function System.ReadOnlySpan.op_Equality(left, right)end
---@param left System.ReadOnlySpan
---@param right System.ReadOnlySpan
---@return System.Boolean
function System.ReadOnlySpan.op_Inequality(left, right)end
---@param obj System.Object
---@return System.Boolean
function System.ReadOnlySpan:Equals(obj)end
---@return System.Int32
function System.ReadOnlySpan:GetHashCode()end
---@overload fun(arraySegment:any):System.ReadOnlySpan
---@param array T[]
---@return System.ReadOnlySpan
function System.ReadOnlySpan.op_Implicit(array)end
---@overload fun(start:System.Int32, length:System.Int32):System.ReadOnlySpan
---@param start System.Int32
---@return System.ReadOnlySpan
function System.ReadOnlySpan:Slice(start)end
---@return T[]
function System.ReadOnlySpan:ToArray()end
---@return any
function System.ReadOnlySpan:DangerousGetPinnableReference()end
---@class System.Span : System.ValueType
---@field public Length System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Item any @  getter
---@field public Empty System.Span @static  getter
System.Span = {}
---@type System.Span
CS.System.Span = System.Span

---@param obj System.Object
---@param objectData any
---@param length System.Int32
---@return System.Span
function System.Span.DangerousCreate(obj, objectData, length)end
---@return System.Void
function System.Span:Clear()end
---@param value any
---@return System.Void
function System.Span:Fill(value)end
---@param destination System.Span
---@return System.Void
function System.Span:CopyTo(destination)end
---@param destination System.Span
---@return System.Boolean
function System.Span:TryCopyTo(destination)end
---@param left System.Span
---@param right System.Span
---@return System.Boolean
function System.Span.op_Equality(left, right)end
---@param left System.Span
---@param right System.Span
---@return System.Boolean
function System.Span.op_Inequality(left, right)end
---@param obj System.Object
---@return System.Boolean
function System.Span:Equals(obj)end
---@return System.Int32
function System.Span:GetHashCode()end
---@overload fun(arraySegment:any):System.Span
---@overload fun(span:System.Span):any
---@param array T[]
---@return System.Span
function System.Span.op_Implicit(array)end
---@overload fun(start:System.Int32, length:System.Int32):System.Span
---@param start System.Int32
---@return System.Span
function System.Span:Slice(start)end
---@return T[]
function System.Span:ToArray()end
---@return any
function System.Span:DangerousGetPinnableReference()end
---@class System.SpanExtensions : System.Object
System.SpanExtensions = {}
---@type System.SpanExtensions
CS.System.SpanExtensions = System.SpanExtensions

---@class System.TupleExtensions : System.Object
System.TupleExtensions = {}
---@type System.TupleExtensions
CS.System.TupleExtensions = System.TupleExtensions

---@class System.ValueTuple : System.ValueType
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@overload fun(item1:any):any
---@overload fun(item1:any, item2:any):any
---@overload fun(item1:any, item2:any, item3:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any, item8:any):any
---@return System.ValueTuple
function System.ValueTuple.Create()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
---@field public Item5 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
---@field public Item5 any
---@field public Item6 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
---@field public Item5 any
---@field public Item6 any
---@field public Item7 any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.ValueTuple : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
---@field public Item5 any
---@field public Item6 any
---@field public Item7 any
---@field public Rest any
System.ValueTuple = {}
---@type System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@overload fun(other:System.ValueTuple):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ValueTuple:Equals(obj)end
---@param other System.ValueTuple
---@return System.Int32
function System.ValueTuple:CompareTo(other)end
---@return System.Int32
function System.ValueTuple:GetHashCode()end
---@return System.String
function System.ValueTuple:ToString()end
---@class System.Array : System.Object
---@field public LongLength System.Int64 @  getter
---@field public IsFixedSize System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Length System.Int32 @  getter
---@field public Rank System.Int32 @  getter
System.Array = {}
---@type System.Array
CS.System.Array = System.Array

---@overload fun(elementType:System.Type, length1:System.Int32, length2:System.Int32):System.Array
---@overload fun(elementType:System.Type, length1:System.Int32, length2:System.Int32, length3:System.Int32):System.Array
---@overload fun(elementType:System.Type, lengths:System.Int64[]):System.Array
---@overload fun(elementType:System.Type, lengths:System.Int32[]):System.Array
---@overload fun(elementType:System.Type, lengths:System.Int32[], lowerBounds:System.Int32[]):System.Array
---@param elementType System.Type
---@param length System.Int32
---@return System.Array
function System.Array.CreateInstance(elementType, length)end
---@param array T[]
---@return any
function System.Array.AsReadOnly(array)end
---@param array T[]
---@param newSize System.Int32
---@return System.Void
function System.Array.Resize(array, newSize)end
---@overload fun(array:System.Array, index:System.Int64):System.Void
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Array:CopyTo(array, index)end
---@return System.Object
function System.Array:Clone()end
---@overload fun(array:T[], value:any):System.Int32
---@overload fun(array:System.Array, index:System.Int32, length:System.Int32, value:System.Object):System.Int32
---@overload fun(array:T[], index:System.Int32, length:System.Int32, value:any):System.Int32
---@overload fun(array:System.Array, value:System.Object, comparer:System.Collections.IComparer):System.Int32
---@overload fun(array:T[], value:any, comparer:any):System.Int32
---@overload fun(array:System.Array, index:System.Int32, length:System.Int32, value:System.Object, comparer:System.Collections.IComparer):System.Int32
---@overload fun(array:T[], index:System.Int32, length:System.Int32, value:any, comparer:any):System.Int32
---@param array System.Array
---@param value System.Object
---@return System.Int32
function System.Array.BinarySearch(array, value)end
---@param array TInput[]
---@param converter any
---@return TOutput[]
function System.Array.ConvertAll(array, converter)end
---@overload fun(sourceArray:System.Array, destinationArray:System.Array, length:System.Int32):System.Void
---@overload fun(sourceArray:System.Array, sourceIndex:System.Int64, destinationArray:System.Array, destinationIndex:System.Int64, length:System.Int64):System.Void
---@overload fun(sourceArray:System.Array, sourceIndex:System.Int32, destinationArray:System.Array, destinationIndex:System.Int32, length:System.Int32):System.Void
---@param sourceArray System.Array
---@param destinationArray System.Array
---@param length System.Int64
---@return System.Void
function System.Array.Copy(sourceArray, destinationArray, length)end
---@param array T[]
---@param action any
---@return System.Void
function System.Array.ForEach(array, action)end
---@param dimension System.Int32
---@return System.Int64
function System.Array:GetLongLength(dimension)end
---@overload fun(index:System.Int32):System.Object
---@overload fun(index1:System.Int64, index2:System.Int64):System.Object
---@overload fun(index1:System.Int32, index2:System.Int32):System.Object
---@overload fun(index1:System.Int64, index2:System.Int64, index3:System.Int64):System.Object
---@overload fun(index1:System.Int32, index2:System.Int32, index3:System.Int32):System.Object
---@overload fun(indices:System.Int64[]):System.Object
---@overload fun(indices:System.Int32[]):System.Object
---@param index System.Int64
---@return System.Object
function System.Array:GetValue(index)end
---@overload fun(array:T[], value:any):System.Int32
---@overload fun(array:System.Array, value:System.Object, startIndex:System.Int32):System.Int32
---@overload fun(array:T[], value:any, startIndex:System.Int32):System.Int32
---@overload fun(array:System.Array, value:System.Object, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(array:T[], value:any, startIndex:System.Int32, count:System.Int32):System.Int32
---@param array System.Array
---@param value System.Object
---@return System.Int32
function System.Array.IndexOf(array, value)end
---@overload fun(array:T[], value:any):System.Int32
---@overload fun(array:System.Array, value:System.Object, startIndex:System.Int32):System.Int32
---@overload fun(array:T[], value:any, startIndex:System.Int32):System.Int32
---@overload fun(array:System.Array, value:System.Object, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(array:T[], value:any, startIndex:System.Int32, count:System.Int32):System.Int32
---@param array System.Array
---@param value System.Object
---@return System.Int32
function System.Array.LastIndexOf(array, value)end
---@overload fun(array:T[]):System.Void
---@overload fun(array:System.Array, index:System.Int32, length:System.Int32):System.Void
---@overload fun(array:T[], index:System.Int32, length:System.Int32):System.Void
---@param array System.Array
---@return System.Void
function System.Array.Reverse(array)end
---@overload fun(value:System.Object, index:System.Int32):System.Void
---@overload fun(value:System.Object, index1:System.Int64, index2:System.Int64):System.Void
---@overload fun(value:System.Object, index1:System.Int32, index2:System.Int32):System.Void
---@overload fun(value:System.Object, index1:System.Int64, index2:System.Int64, index3:System.Int64):System.Void
---@overload fun(value:System.Object, index1:System.Int32, index2:System.Int32, index3:System.Int32):System.Void
---@overload fun(value:System.Object, indices:System.Int64[]):System.Void
---@overload fun(value:System.Object, indices:System.Int32[]):System.Void
---@param value System.Object
---@param index System.Int64
---@return System.Void
function System.Array:SetValue(value, index)end
---@overload fun(array:T[]):System.Void
---@overload fun(array:System.Array, index:System.Int32, length:System.Int32):System.Void
---@overload fun(array:T[], index:System.Int32, length:System.Int32):System.Void
---@overload fun(array:System.Array, comparer:System.Collections.IComparer):System.Void
---@overload fun(keys:System.Array, items:System.Array):System.Void
---@overload fun(array:T[], comparer:any):System.Void
---@overload fun(array:T[], comparison:any):System.Void
---@overload fun(keys:TKey[], items:TValue[]):System.Void
---@overload fun(array:System.Array, index:System.Int32, length:System.Int32, comparer:System.Collections.IComparer):System.Void
---@overload fun(keys:System.Array, items:System.Array, index:System.Int32, length:System.Int32):System.Void
---@overload fun(array:T[], index:System.Int32, length:System.Int32, comparer:any):System.Void
---@overload fun(keys:TKey[], items:TValue[], index:System.Int32, length:System.Int32):System.Void
---@overload fun(keys:System.Array, items:System.Array, comparer:System.Collections.IComparer):System.Void
---@overload fun(keys:TKey[], items:TValue[], comparer:any):System.Void
---@overload fun(keys:System.Array, items:System.Array, index:System.Int32, length:System.Int32, comparer:System.Collections.IComparer):System.Void
---@overload fun(keys:TKey[], items:TValue[], index:System.Int32, length:System.Int32, comparer:any):System.Void
---@param array System.Array
---@return System.Void
function System.Array.Sort(array)end
---@param array T[]
---@param match any
---@return System.Boolean
function System.Array.Exists(array, match)end
---@overload fun(array:T[], value:any, startIndex:System.Int32, count:System.Int32):System.Void
---@param array T[]
---@param value any
---@return System.Void
function System.Array.Fill(array, value)end
---@param array T[]
---@param match any
---@return any
function System.Array.Find(array, match)end
---@param array T[]
---@param match any
---@return T[]
function System.Array.FindAll(array, match)end
---@overload fun(array:T[], startIndex:System.Int32, match:any):System.Int32
---@overload fun(array:T[], startIndex:System.Int32, count:System.Int32, match:any):System.Int32
---@param array T[]
---@param match any
---@return System.Int32
function System.Array.FindIndex(array, match)end
---@param array T[]
---@param match any
---@return any
function System.Array.FindLast(array, match)end
---@overload fun(array:T[], startIndex:System.Int32, match:any):System.Int32
---@overload fun(array:T[], startIndex:System.Int32, count:System.Int32, match:any):System.Int32
---@param array T[]
---@param match any
---@return System.Int32
function System.Array.FindLastIndex(array, match)end
---@param array T[]
---@param match any
---@return System.Boolean
function System.Array.TrueForAll(array, match)end
---@return System.Collections.IEnumerator
function System.Array:GetEnumerator()end
---@param dimension System.Int32
---@return System.Int32
function System.Array:GetLength(dimension)end
---@param dimension System.Int32
---@return System.Int32
function System.Array:GetLowerBound(dimension)end
---@param dimension System.Int32
---@return System.Int32
function System.Array:GetUpperBound(dimension)end
---@param array System.Array
---@param index System.Int32
---@param length System.Int32
---@return System.Void
function System.Array.Clear(array, index, length)end
---@param sourceArray System.Array
---@param sourceIndex System.Int32
---@param destinationArray System.Array
---@param destinationIndex System.Int32
---@param length System.Int32
---@return System.Void
function System.Array.ConstrainedCopy(sourceArray, sourceIndex, destinationArray, destinationIndex, length)end
---@return T[]
function System.Array.Empty()end
---@return System.Void
function System.Array:Initialize()end
---@class System.Tuple : System.Object
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@overload fun(item1:any, item2:any):any
---@overload fun(item1:any, item2:any, item3:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any):any
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any, item8:any):any
---@param item1 any
---@return any
function System.Tuple.Create(item1)end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
---@field public Item4 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
---@field public Item4 any @  getter
---@field public Item5 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
---@field public Item4 any @  getter
---@field public Item5 any @  getter
---@field public Item6 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
---@field public Item4 any @  getter
---@field public Item5 any @  getter
---@field public Item6 any @  getter
---@field public Item7 any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.Tuple : System.Object
---@field public Item1 any @  getter
---@field public Item2 any @  getter
---@field public Item3 any @  getter
---@field public Item4 any @  getter
---@field public Item5 any @  getter
---@field public Item6 any @  getter
---@field public Item7 any @  getter
---@field public Rest any @  getter
System.Tuple = {}
---@type System.Tuple
CS.System.Tuple = System.Tuple

---@param obj System.Object
---@return System.Boolean
function System.Tuple:Equals(obj)end
---@return System.Int32
function System.Tuple:GetHashCode()end
---@return System.String
function System.Tuple:ToString()end
---@class System.AggregateException : System.Exception
---@field public InnerExceptions System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.AggregateException = {}
---@type System.AggregateException
CS.System.AggregateException = System.AggregateException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.AggregateException:GetObjectData(info, context)end
---@return System.Exception
function System.AggregateException:GetBaseException()end
---@param predicate System.Func
---@return System.Void
function System.AggregateException:Handle(predicate)end
---@return System.AggregateException
function System.AggregateException:Flatten()end
---@return System.String
function System.AggregateException:ToString()end
---@class System.AppContext : System.Object
---@field public BaseDirectory System.String @static  getter
---@field public TargetFrameworkName System.String @static  getter
System.AppContext = {}
---@type System.AppContext
CS.System.AppContext = System.AppContext

---@param name System.String
---@return System.Object
function System.AppContext.GetData(name)end
---@param switchName System.String
---@param isEnabled System.Boolean
---@return System.Boolean
function System.AppContext.TryGetSwitch(switchName, isEnabled)end
---@param switchName System.String
---@param isEnabled System.Boolean
---@return System.Void
function System.AppContext.SetSwitch(switchName, isEnabled)end
---@class System.FormattableString : System.Object
---@field public Format System.String @  getter
---@field public ArgumentCount System.Int32 @  getter
System.FormattableString = {}
---@type System.FormattableString
CS.System.FormattableString = System.FormattableString

---@return System.Object[]
function System.FormattableString:GetArguments()end
---@param index System.Int32
---@return System.Object
function System.FormattableString:GetArgument(index)end
---@overload fun(formatProvider:System.IFormatProvider):System.String
---@return System.String
function System.FormattableString:ToString()end
---@param formattable System.FormattableString
---@return System.String
function System.FormattableString.Invariant(formattable)end
---@class System.Lazy : System.Object
---@field public IsValueCreated System.Boolean @  getter
---@field public Value any @  getter
System.Lazy = {}
---@type System.Lazy
CS.System.Lazy = System.Lazy

---@return System.String
function System.Lazy:ToString()end
---@class System.LocalDataStoreSlot : System.Object
System.LocalDataStoreSlot = {}
---@type System.LocalDataStoreSlot
CS.System.LocalDataStoreSlot = System.LocalDataStoreSlot

---@class System.AccessViolationException : System.SystemException
System.AccessViolationException = {}
---@type System.AccessViolationException
CS.System.AccessViolationException = System.AccessViolationException

---@class System.Activator : System.Object
System.Activator = {}
---@type System.Activator
CS.System.Activator = System.Activator

---@overload fun(type:System.Type):System.Object
---@overload fun(activationContext:System.ActivationContext):System.Runtime.Remoting.ObjectHandle
---@overload fun(type:System.Type, nonPublic:System.Boolean):System.Object
---@overload fun(type:System.Type, args:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String):System.Runtime.Remoting.ObjectHandle
---@overload fun(activationContext:System.ActivationContext, activationCustomData:System.String[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(type:System.Type, args:System.Object[], activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyName:System.String, typeName:System.String):System.Runtime.Remoting.ObjectHandle
---@overload fun(type:System.Type, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo):System.Object
---@overload fun(type:System.Type, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityInfo:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@return any
function System.Activator.CreateInstance()end
---@overload fun(assemblyFile:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyFile:System.String, typeName:System.String):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityInfo:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(domain:System.AppDomain, assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@param assemblyFile System.String
---@param typeName System.String
---@return System.Runtime.Remoting.ObjectHandle
function System.Activator.CreateInstanceFrom(assemblyFile, typeName)end
---@overload fun(assemblyName:System.String, typeName:System.String, hashValue:System.Byte[], hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):System.Runtime.Remoting.ObjectHandle
---@param assemblyName System.String
---@param typeName System.String
---@return System.Runtime.Remoting.ObjectHandle
function System.Activator.CreateComInstanceFrom(assemblyName, typeName)end
---@overload fun(type:System.Type, url:System.String, state:System.Object):System.Object
---@param type System.Type
---@param url System.String
---@return System.Object
function System.Activator.GetObject(type, url)end
---@class System.LoaderOptimization : System.Enum
System.LoaderOptimization = {}
---@type System.LoaderOptimization
CS.System.LoaderOptimization = System.LoaderOptimization

---@return System.Int32 value:0
System.LoaderOptimization.NotSpecified = 0
---@return System.Int32 value:1
System.LoaderOptimization.SingleDomain = 1
---@return System.Int32 value:2
System.LoaderOptimization.MultiDomain = 2
---@return System.Int32 value:3
System.LoaderOptimization.DomainMask = 3
---@return System.Int32 value:4
System.LoaderOptimization.DisallowBindings = 4

---@class System.LoaderOptimizationAttribute : System.Attribute
---@field public Value System.LoaderOptimization @  getter
System.LoaderOptimizationAttribute = {}
---@type System.LoaderOptimizationAttribute
CS.System.LoaderOptimizationAttribute = System.LoaderOptimizationAttribute

---@class System.AppDomainUnloadedException : System.SystemException
System.AppDomainUnloadedException = {}
---@type System.AppDomainUnloadedException
CS.System.AppDomainUnloadedException = System.AppDomainUnloadedException

---@class System.ApplicationException : System.Exception
System.ApplicationException = {}
---@type System.ApplicationException
CS.System.ApplicationException = System.ApplicationException

---@class System.ApplicationId : System.Object
---@field public PublicKeyToken System.Byte[] @  getter
---@field public Name System.String @  getter
---@field public Version System.Version @  getter
---@field public ProcessorArchitecture System.String @  getter
---@field public Culture System.String @  getter
System.ApplicationId = {}
---@type System.ApplicationId
CS.System.ApplicationId = System.ApplicationId

---@return System.ApplicationId
function System.ApplicationId:Copy()end
---@return System.String
function System.ApplicationId:ToString()end
---@param o System.Object
---@return System.Boolean
function System.ApplicationId:Equals(o)end
---@return System.Int32
function System.ApplicationId:GetHashCode()end
---@class System.ArgumentException : System.SystemException
---@field public Message System.String @  getter
---@field public ParamName System.String @  getter
System.ArgumentException = {}
---@type System.ArgumentException
CS.System.ArgumentException = System.ArgumentException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ArgumentException:GetObjectData(info, context)end
---@class System.ArgumentNullException : System.ArgumentException
System.ArgumentNullException = {}
---@type System.ArgumentNullException
CS.System.ArgumentNullException = System.ArgumentNullException

---@class System.ArgumentOutOfRangeException : System.ArgumentException
---@field public Message System.String @  getter
---@field public ActualValue System.Object @  getter
System.ArgumentOutOfRangeException = {}
---@type System.ArgumentOutOfRangeException
CS.System.ArgumentOutOfRangeException = System.ArgumentOutOfRangeException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ArgumentOutOfRangeException:GetObjectData(info, context)end
---@class System.ArithmeticException : System.SystemException
System.ArithmeticException = {}
---@type System.ArithmeticException
CS.System.ArithmeticException = System.ArithmeticException

---@class System.ArraySegment : System.ValueType
---@field public Array T[] @  getter
---@field public Offset System.Int32 @  getter
---@field public Count System.Int32 @  getter
System.ArraySegment = {}
---@type System.ArraySegment
CS.System.ArraySegment = System.ArraySegment

---@return System.Int32
function System.ArraySegment:GetHashCode()end
---@overload fun(obj:System.ArraySegment):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ArraySegment:Equals(obj)end
---@param a System.ArraySegment
---@param b System.ArraySegment
---@return System.Boolean
function System.ArraySegment.op_Equality(a, b)end
---@param a System.ArraySegment
---@param b System.ArraySegment
---@return System.Boolean
function System.ArraySegment.op_Inequality(a, b)end
---@class System.ArrayTypeMismatchException : System.SystemException
System.ArrayTypeMismatchException = {}
---@type System.ArrayTypeMismatchException
CS.System.ArrayTypeMismatchException = System.ArrayTypeMismatchException

---@class System.Attribute : System.Object
---@field public TypeId System.Object @  getter
System.Attribute = {}
---@type System.Attribute
CS.System.Attribute = System.Attribute

---@overload fun(element:System.Reflection.ParameterInfo):System.Attribute[]
---@overload fun(element:System.Reflection.Module):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly):System.Attribute[]
---@overload fun(element:System.Reflection.MemberInfo, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.Module, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.MemberInfo, type:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.MemberInfo, type:System.Type, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:System.Boolean):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:System.Boolean):System.Attribute[]
---@param element System.Reflection.MemberInfo
---@return System.Attribute[]
function System.Attribute.GetCustomAttributes(element)end
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):System.Boolean
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):System.Boolean
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):System.Boolean
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:System.Boolean):System.Boolean
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:System.Boolean):System.Boolean
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:System.Boolean):System.Boolean
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:System.Boolean):System.Boolean
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return System.Boolean
function System.Attribute.IsDefined(element, attributeType)end
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:System.Boolean):System.Attribute
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:System.Boolean):System.Attribute
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:System.Boolean):System.Attribute
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:System.Boolean):System.Attribute
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return System.Attribute
function System.Attribute.GetCustomAttribute(element, attributeType)end
---@param obj System.Object
---@return System.Boolean
function System.Attribute:Equals(obj)end
---@return System.Int32
function System.Attribute:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function System.Attribute:Match(obj)end
---@return System.Boolean
function System.Attribute:IsDefaultAttribute()end
---@class System.AttributeTargets : System.Enum
System.AttributeTargets = {}
---@type System.AttributeTargets
CS.System.AttributeTargets = System.AttributeTargets

---@return System.Int32 value:1
System.AttributeTargets.Assembly = 1
---@return System.Int32 value:2
System.AttributeTargets.Module = 2
---@return System.Int32 value:4
System.AttributeTargets.Class = 4
---@return System.Int32 value:8
System.AttributeTargets.Struct = 8

---@class System.AttributeUsageAttribute : System.Attribute
---@field public ValidOn System.AttributeTargets @  getter
---@field public AllowMultiple System.Boolean @ setter getter
---@field public Inherited System.Boolean @ setter getter
System.AttributeUsageAttribute = {}
---@type System.AttributeUsageAttribute
CS.System.AttributeUsageAttribute = System.AttributeUsageAttribute

---@class System.BadImageFormatException : System.SystemException
---@field public Message System.String @  getter
---@field public FileName System.String @  getter
---@field public FusionLog System.String @  getter
System.BadImageFormatException = {}
---@type System.BadImageFormatException
CS.System.BadImageFormatException = System.BadImageFormatException

---@return System.String
function System.BadImageFormatException:ToString()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.BadImageFormatException:GetObjectData(info, context)end
---@class System.BitConverter : System.Object
---@field public IsLittleEndian System.Boolean
System.BitConverter = {}
---@type System.BitConverter
CS.System.BitConverter = System.BitConverter

---@overload fun(value:System.Char):System.Byte[]
---@overload fun(value:System.Int16):System.Byte[]
---@overload fun(value:System.Int32):System.Byte[]
---@overload fun(value:System.Int64):System.Byte[]
---@overload fun(value:System.UInt16):System.Byte[]
---@overload fun(value:System.UInt32):System.Byte[]
---@overload fun(value:System.UInt64):System.Byte[]
---@overload fun(value:System.Single):System.Byte[]
---@overload fun(value:System.Double):System.Byte[]
---@param value System.Boolean
---@return System.Byte[]
function System.BitConverter.GetBytes(value)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Char
function System.BitConverter.ToChar(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Int16
function System.BitConverter.ToInt16(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Int32
function System.BitConverter.ToInt32(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Int64
function System.BitConverter.ToInt64(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.UInt16
function System.BitConverter.ToUInt16(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.UInt32
function System.BitConverter.ToUInt32(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.UInt64
function System.BitConverter.ToUInt64(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Single
function System.BitConverter.ToSingle(value, startIndex)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Double
function System.BitConverter.ToDouble(value, startIndex)end
---@overload fun(value:System.Byte[], startIndex:System.Int32):System.String
---@overload fun(value:System.Byte[], startIndex:System.Int32, length:System.Int32):System.String
---@param value System.Byte[]
---@return System.String
function System.BitConverter.ToString(value)end
---@param value System.Byte[]
---@param startIndex System.Int32
---@return System.Boolean
function System.BitConverter.ToBoolean(value, startIndex)end
---@param value System.Double
---@return System.Int64
function System.BitConverter.DoubleToInt64Bits(value)end
---@param value System.Int64
---@return System.Double
function System.BitConverter.Int64BitsToDouble(value)end
---@class System.Boolean : System.ValueType
---@field public TrueString System.String
---@field public FalseString System.String
System.Boolean = {}
---@type System.Boolean
CS.System.Boolean = System.Boolean

---@return System.Int32
function System.Boolean:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@return System.String
function System.Boolean:ToString()end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Boolean
---@return System.Boolean
function System.Boolean:Equals(obj)end
---@overload fun(obj:System.Object):System.Int32
---@param value System.Boolean
---@return System.Int32
function System.Boolean:CompareTo(value)end
---@param value System.String
---@return System.Boolean
function System.Boolean.Parse(value)end
---@param value System.String
---@param result System.Boolean
---@return System.Boolean
function System.Boolean.TryParse(value, result)end
---@return System.TypeCode
function System.Boolean:GetTypeCode()end
---@class System.Buffer : System.Object
System.Buffer = {}
---@type System.Buffer
CS.System.Buffer = System.Buffer

---@param array System.Array
---@return System.Int32
function System.Buffer.ByteLength(array)end
---@param array System.Array
---@param index System.Int32
---@return System.Byte
function System.Buffer.GetByte(array, index)end
---@param array System.Array
---@param index System.Int32
---@param value System.Byte
---@return System.Void
function System.Buffer.SetByte(array, index, value)end
---@param src System.Array
---@param srcOffset System.Int32
---@param dst System.Array
---@param dstOffset System.Int32
---@param count System.Int32
---@return System.Void
function System.Buffer.BlockCopy(src, srcOffset, dst, dstOffset, count)end
---@overload fun(source:System.Void, destination:System.Void, destinationSizeInBytes:System.UInt64, sourceBytesToCopy:System.UInt64):System.Void
---@param source System.Void
---@param destination System.Void
---@param destinationSizeInBytes System.Int64
---@param sourceBytesToCopy System.Int64
---@return System.Void
function System.Buffer.MemoryCopy(source, destination, destinationSizeInBytes, sourceBytesToCopy)end
---@class System.Byte : System.ValueType
---@field public MaxValue System.Byte
---@field public MinValue System.Byte
System.Byte = {}
---@type System.Byte
CS.System.Byte = System.Byte

---@overload fun(value:System.Object):System.Int32
---@param value System.Byte
---@return System.Int32
function System.Byte:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Byte
---@return System.Boolean
function System.Byte:Equals(obj)end
---@return System.Int32
function System.Byte:GetHashCode()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Byte
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Byte
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Byte
---@param s System.String
---@return System.Byte
function System.Byte.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Byte):System.Boolean
---@param s System.String
---@param result System.Byte
---@return System.Boolean
function System.Byte.TryParse(s, result)end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Byte:ToString()end
---@return System.TypeCode
function System.Byte:GetTypeCode()end
---@class System.CannotUnloadAppDomainException : System.SystemException
System.CannotUnloadAppDomainException = {}
---@type System.CannotUnloadAppDomainException
CS.System.CannotUnloadAppDomainException = System.CannotUnloadAppDomainException

---@class System.Char : System.ValueType
---@field public MaxValue System.Char
---@field public MinValue System.Char
System.Char = {}
---@type System.Char
CS.System.Char = System.Char

---@return System.Int32
function System.Char:GetHashCode()end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Char
---@return System.Boolean
function System.Char:Equals(obj)end
---@overload fun(value:System.Object):System.Int32
---@param value System.Char
---@return System.Int32
function System.Char:CompareTo(value)end
---@overload fun(provider:System.IFormatProvider):System.String
---@return System.String
function System.Char:ToString()end
---@param c System.Char
---@return System.String
function System.Char.ToString(c)end
---@param s System.String
---@return System.Char
function System.Char.Parse(s)end
---@param s System.String
---@param result System.Char
---@return System.Boolean
function System.Char.TryParse(s, result)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsDigit(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsLetter(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsWhiteSpace(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsUpper(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsLower(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsPunctuation(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsLetterOrDigit(c)end
---@overload fun(c:System.Char, culture:System.Globalization.CultureInfo):System.Char
---@param c System.Char
---@return System.Char
function System.Char.ToUpper(c)end
---@param c System.Char
---@return System.Char
function System.Char.ToUpperInvariant(c)end
---@overload fun(c:System.Char, culture:System.Globalization.CultureInfo):System.Char
---@param c System.Char
---@return System.Char
function System.Char.ToLower(c)end
---@param c System.Char
---@return System.Char
function System.Char.ToLowerInvariant(c)end
---@return System.TypeCode
function System.Char:GetTypeCode()end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsControl(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsNumber(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsSeparator(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsSurrogate(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsSymbol(c)end
---@overload fun(s:System.String, index:System.Int32):System.Globalization.UnicodeCategory
---@param c System.Char
---@return System.Globalization.UnicodeCategory
function System.Char.GetUnicodeCategory(c)end
---@overload fun(s:System.String, index:System.Int32):System.Double
---@param c System.Char
---@return System.Double
function System.Char.GetNumericValue(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsHighSurrogate(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param c System.Char
---@return System.Boolean
function System.Char.IsLowSurrogate(c)end
---@overload fun(s:System.String, index:System.Int32):System.Boolean
---@param highSurrogate System.Char
---@param lowSurrogate System.Char
---@return System.Boolean
function System.Char.IsSurrogatePair(highSurrogate, lowSurrogate)end
---@param utf32 System.Int32
---@return System.String
function System.Char.ConvertFromUtf32(utf32)end
---@overload fun(s:System.String, index:System.Int32):System.Int32
---@param highSurrogate System.Char
---@param lowSurrogate System.Char
---@return System.Int32
function System.Char.ConvertToUtf32(highSurrogate, lowSurrogate)end
---@class System.CharEnumerator : System.Object
---@field public Current System.Char @  getter
System.CharEnumerator = {}
---@type System.CharEnumerator
CS.System.CharEnumerator = System.CharEnumerator

---@return System.Object
function System.CharEnumerator:Clone()end
---@return System.Boolean
function System.CharEnumerator:MoveNext()end
---@return System.Void
function System.CharEnumerator:Dispose()end
---@return System.Void
function System.CharEnumerator:Reset()end
---@class System.CLSCompliantAttribute : System.Attribute
---@field public IsCompliant System.Boolean @  getter
System.CLSCompliantAttribute = {}
---@type System.CLSCompliantAttribute
CS.System.CLSCompliantAttribute = System.CLSCompliantAttribute

---@class System.ConsoleCancelEventArgs : System.EventArgs
---@field public Cancel System.Boolean @ setter getter
---@field public SpecialKey System.ConsoleSpecialKey @  getter
System.ConsoleCancelEventArgs = {}
---@type System.ConsoleCancelEventArgs
CS.System.ConsoleCancelEventArgs = System.ConsoleCancelEventArgs

---@class System.ConsoleColor : System.Enum
System.ConsoleColor = {}
---@type System.ConsoleColor
CS.System.ConsoleColor = System.ConsoleColor

---@return System.Int32 value:0
System.ConsoleColor.Black = 0
---@return System.Int32 value:1
System.ConsoleColor.DarkBlue = 1
---@return System.Int32 value:2
System.ConsoleColor.DarkGreen = 2
---@return System.Int32 value:3
System.ConsoleColor.DarkCyan = 3
---@return System.Int32 value:4
System.ConsoleColor.DarkRed = 4
---@return System.Int32 value:5
System.ConsoleColor.DarkMagenta = 5
---@return System.Int32 value:6
System.ConsoleColor.DarkYellow = 6
---@return System.Int32 value:7
System.ConsoleColor.Gray = 7
---@return System.Int32 value:8
System.ConsoleColor.DarkGray = 8
---@return System.Int32 value:9
System.ConsoleColor.Blue = 9
---@return System.Int32 value:10
System.ConsoleColor.Green = 10
---@return System.Int32 value:11
System.ConsoleColor.Cyan = 11
---@return System.Int32 value:12
System.ConsoleColor.Red = 12
---@return System.Int32 value:13
System.ConsoleColor.Magenta = 13
---@return System.Int32 value:14
System.ConsoleColor.Yellow = 14
---@return System.Int32 value:15
System.ConsoleColor.White = 15

---@class System.ConsoleKey : System.Enum
System.ConsoleKey = {}
---@type System.ConsoleKey
CS.System.ConsoleKey = System.ConsoleKey

---@return System.Int32 value:8
System.ConsoleKey.Backspace = 8
---@return System.Int32 value:9
System.ConsoleKey.Tab = 9
---@return System.Int32 value:12
System.ConsoleKey.Clear = 12
---@return System.Int32 value:13
System.ConsoleKey.Enter = 13
---@return System.Int32 value:19
System.ConsoleKey.Pause = 19
---@return System.Int32 value:27
System.ConsoleKey.Escape = 27
---@return System.Int32 value:32
System.ConsoleKey.Spacebar = 32
---@return System.Int32 value:33
System.ConsoleKey.PageUp = 33
---@return System.Int32 value:34
System.ConsoleKey.PageDown = 34
---@return System.Int32 value:35
System.ConsoleKey.End = 35
---@return System.Int32 value:36
System.ConsoleKey.Home = 36
---@return System.Int32 value:37
System.ConsoleKey.LeftArrow = 37
---@return System.Int32 value:38
System.ConsoleKey.UpArrow = 38
---@return System.Int32 value:39
System.ConsoleKey.RightArrow = 39
---@return System.Int32 value:40
System.ConsoleKey.DownArrow = 40
---@return System.Int32 value:41
System.ConsoleKey.Select = 41
---@return System.Int32 value:42
System.ConsoleKey.Print = 42
---@return System.Int32 value:43
System.ConsoleKey.Execute = 43
---@return System.Int32 value:44
System.ConsoleKey.PrintScreen = 44
---@return System.Int32 value:45
System.ConsoleKey.Insert = 45
---@return System.Int32 value:46
System.ConsoleKey.Delete = 46
---@return System.Int32 value:47
System.ConsoleKey.Help = 47
---@return System.Int32 value:48
System.ConsoleKey.D0 = 48
---@return System.Int32 value:49
System.ConsoleKey.D1 = 49
---@return System.Int32 value:50
System.ConsoleKey.D2 = 50
---@return System.Int32 value:51
System.ConsoleKey.D3 = 51
---@return System.Int32 value:52
System.ConsoleKey.D4 = 52
---@return System.Int32 value:53
System.ConsoleKey.D5 = 53
---@return System.Int32 value:54
System.ConsoleKey.D6 = 54
---@return System.Int32 value:55
System.ConsoleKey.D7 = 55
---@return System.Int32 value:56
System.ConsoleKey.D8 = 56
---@return System.Int32 value:57
System.ConsoleKey.D9 = 57
---@return System.Int32 value:65
System.ConsoleKey.A = 65
---@return System.Int32 value:66
System.ConsoleKey.B = 66
---@return System.Int32 value:67
System.ConsoleKey.C = 67
---@return System.Int32 value:68
System.ConsoleKey.D = 68
---@return System.Int32 value:69
System.ConsoleKey.E = 69
---@return System.Int32 value:70
System.ConsoleKey.F = 70
---@return System.Int32 value:71
System.ConsoleKey.G = 71
---@return System.Int32 value:72
System.ConsoleKey.H = 72
---@return System.Int32 value:73
System.ConsoleKey.I = 73
---@return System.Int32 value:74
System.ConsoleKey.J = 74
---@return System.Int32 value:75
System.ConsoleKey.K = 75
---@return System.Int32 value:76
System.ConsoleKey.L = 76
---@return System.Int32 value:77
System.ConsoleKey.M = 77
---@return System.Int32 value:78
System.ConsoleKey.N = 78
---@return System.Int32 value:79
System.ConsoleKey.O = 79
---@return System.Int32 value:80
System.ConsoleKey.P = 80
---@return System.Int32 value:81
System.ConsoleKey.Q = 81
---@return System.Int32 value:82
System.ConsoleKey.R = 82
---@return System.Int32 value:83
System.ConsoleKey.S = 83
---@return System.Int32 value:84
System.ConsoleKey.T = 84
---@return System.Int32 value:85
System.ConsoleKey.U = 85
---@return System.Int32 value:86
System.ConsoleKey.V = 86
---@return System.Int32 value:87
System.ConsoleKey.W = 87
---@return System.Int32 value:88
System.ConsoleKey.X = 88
---@return System.Int32 value:89
System.ConsoleKey.Y = 89
---@return System.Int32 value:90
System.ConsoleKey.Z = 90
---@return System.Int32 value:91
System.ConsoleKey.LeftWindows = 91
---@return System.Int32 value:92
System.ConsoleKey.RightWindows = 92
---@return System.Int32 value:93
System.ConsoleKey.Applications = 93
---@return System.Int32 value:95
System.ConsoleKey.Sleep = 95
---@return System.Int32 value:96
System.ConsoleKey.NumPad0 = 96
---@return System.Int32 value:97
System.ConsoleKey.NumPad1 = 97
---@return System.Int32 value:98
System.ConsoleKey.NumPad2 = 98
---@return System.Int32 value:99
System.ConsoleKey.NumPad3 = 99
---@return System.Int32 value:100
System.ConsoleKey.NumPad4 = 100
---@return System.Int32 value:101
System.ConsoleKey.NumPad5 = 101
---@return System.Int32 value:102
System.ConsoleKey.NumPad6 = 102
---@return System.Int32 value:103
System.ConsoleKey.NumPad7 = 103
---@return System.Int32 value:104
System.ConsoleKey.NumPad8 = 104
---@return System.Int32 value:105
System.ConsoleKey.NumPad9 = 105
---@return System.Int32 value:106
System.ConsoleKey.Multiply = 106
---@return System.Int32 value:107
System.ConsoleKey.Add = 107
---@return System.Int32 value:108
System.ConsoleKey.Separator = 108
---@return System.Int32 value:109
System.ConsoleKey.Subtract = 109
---@return System.Int32 value:110
System.ConsoleKey.Decimal = 110
---@return System.Int32 value:111
System.ConsoleKey.Divide = 111
---@return System.Int32 value:112
System.ConsoleKey.F1 = 112
---@return System.Int32 value:113
System.ConsoleKey.F2 = 113
---@return System.Int32 value:114
System.ConsoleKey.F3 = 114
---@return System.Int32 value:115
System.ConsoleKey.F4 = 115
---@return System.Int32 value:116
System.ConsoleKey.F5 = 116
---@return System.Int32 value:117
System.ConsoleKey.F6 = 117
---@return System.Int32 value:118
System.ConsoleKey.F7 = 118
---@return System.Int32 value:119
System.ConsoleKey.F8 = 119
---@return System.Int32 value:120
System.ConsoleKey.F9 = 120
---@return System.Int32 value:121
System.ConsoleKey.F10 = 121
---@return System.Int32 value:122
System.ConsoleKey.F11 = 122
---@return System.Int32 value:123
System.ConsoleKey.F12 = 123
---@return System.Int32 value:124
System.ConsoleKey.F13 = 124
---@return System.Int32 value:125
System.ConsoleKey.F14 = 125
---@return System.Int32 value:126
System.ConsoleKey.F15 = 126
---@return System.Int32 value:127
System.ConsoleKey.F16 = 127
---@return System.Int32 value:128
System.ConsoleKey.F17 = 128
---@return System.Int32 value:129
System.ConsoleKey.F18 = 129
---@return System.Int32 value:130
System.ConsoleKey.F19 = 130
---@return System.Int32 value:131
System.ConsoleKey.F20 = 131
---@return System.Int32 value:132
System.ConsoleKey.F21 = 132
---@return System.Int32 value:133
System.ConsoleKey.F22 = 133
---@return System.Int32 value:134
System.ConsoleKey.F23 = 134
---@return System.Int32 value:135
System.ConsoleKey.F24 = 135

---@class System.ConsoleKeyInfo : System.ValueType
---@field public KeyChar System.Char @  getter
---@field public Key System.ConsoleKey @  getter
---@field public Modifiers System.ConsoleModifiers @  getter
System.ConsoleKeyInfo = {}
---@type System.ConsoleKeyInfo
CS.System.ConsoleKeyInfo = System.ConsoleKeyInfo

---@overload fun(obj:System.ConsoleKeyInfo):System.Boolean
---@param value System.Object
---@return System.Boolean
function System.ConsoleKeyInfo:Equals(value)end
---@param a System.ConsoleKeyInfo
---@param b System.ConsoleKeyInfo
---@return System.Boolean
function System.ConsoleKeyInfo.op_Equality(a, b)end
---@param a System.ConsoleKeyInfo
---@param b System.ConsoleKeyInfo
---@return System.Boolean
function System.ConsoleKeyInfo.op_Inequality(a, b)end
---@return System.Int32
function System.ConsoleKeyInfo:GetHashCode()end
---@class System.ConsoleModifiers : System.Enum
System.ConsoleModifiers = {}
---@type System.ConsoleModifiers
CS.System.ConsoleModifiers = System.ConsoleModifiers

---@return System.Int32 value:1
System.ConsoleModifiers.Alt = 1
---@return System.Int32 value:2
System.ConsoleModifiers.Shift = 2

---@class System.ConsoleSpecialKey : System.Enum
System.ConsoleSpecialKey = {}
---@type System.ConsoleSpecialKey
CS.System.ConsoleSpecialKey = System.ConsoleSpecialKey

---@return System.Int32 value:0
System.ConsoleSpecialKey.ControlC = 0
---@return System.Int32 value:1
System.ConsoleSpecialKey.ControlBreak = 1

---@class System.ContextBoundObject : System.MarshalByRefObject
System.ContextBoundObject = {}
---@type System.ContextBoundObject
CS.System.ContextBoundObject = System.ContextBoundObject

---@class System.ContextMarshalException : System.SystemException
System.ContextMarshalException = {}
---@type System.ContextMarshalException
CS.System.ContextMarshalException = System.ContextMarshalException

---@class System.ContextStaticAttribute : System.Attribute
System.ContextStaticAttribute = {}
---@type System.ContextStaticAttribute
CS.System.ContextStaticAttribute = System.ContextStaticAttribute

---@class System.Base64FormattingOptions : System.Enum
System.Base64FormattingOptions = {}
---@type System.Base64FormattingOptions
CS.System.Base64FormattingOptions = System.Base64FormattingOptions

---@return System.Int32 value:0
System.Base64FormattingOptions.None = 0
---@return System.Int32 value:1
System.Base64FormattingOptions.InsertLineBreaks = 1

---@class System.Convert : System.Object
---@field public DBNull System.Object
System.Convert = {}
---@type System.Convert
CS.System.Convert = System.Convert

---@param value System.Object
---@return System.TypeCode
function System.Convert.GetTypeCode(value)end
---@param value System.Object
---@return System.Boolean
function System.Convert.IsDBNull(value)end
---@overload fun(value:System.Object, conversionType:System.Type):System.Object
---@overload fun(value:System.Object, typeCode:System.TypeCode, provider:System.IFormatProvider):System.Object
---@overload fun(value:System.Object, conversionType:System.Type, provider:System.IFormatProvider):System.Object
---@param value System.Object
---@param typeCode System.TypeCode
---@return System.Object
function System.Convert.ChangeType(value, typeCode)end
---@overload fun(value:System.SByte):System.Boolean
---@overload fun(value:System.Char):System.Boolean
---@overload fun(value:System.Byte):System.Boolean
---@overload fun(value:System.Int16):System.Boolean
---@overload fun(value:System.UInt16):System.Boolean
---@overload fun(value:System.Int32):System.Boolean
---@overload fun(value:System.UInt32):System.Boolean
---@overload fun(value:System.Int64):System.Boolean
---@overload fun(value:System.UInt64):System.Boolean
---@overload fun(value:System.Single):System.Boolean
---@overload fun(value:System.Double):System.Boolean
---@overload fun(value:System.Object):System.Boolean
---@overload fun(value:System.String):System.Boolean
---@overload fun(value:System.Decimal):System.Boolean
---@overload fun(value:System.DateTime):System.Boolean
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Boolean
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Boolean
---@param value System.Boolean
---@return System.Boolean
function System.Convert.ToBoolean(value)end
---@overload fun(value:System.Char):System.Char
---@overload fun(value:System.SByte):System.Char
---@overload fun(value:System.Byte):System.Char
---@overload fun(value:System.Int16):System.Char
---@overload fun(value:System.UInt16):System.Char
---@overload fun(value:System.Int32):System.Char
---@overload fun(value:System.UInt32):System.Char
---@overload fun(value:System.Int64):System.Char
---@overload fun(value:System.UInt64):System.Char
---@overload fun(value:System.Single):System.Char
---@overload fun(value:System.Double):System.Char
---@overload fun(value:System.Object):System.Char
---@overload fun(value:System.String):System.Char
---@overload fun(value:System.Decimal):System.Char
---@overload fun(value:System.DateTime):System.Char
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Char
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Char
---@param value System.Boolean
---@return System.Char
function System.Convert.ToChar(value)end
---@overload fun(value:System.SByte):System.SByte
---@overload fun(value:System.Char):System.SByte
---@overload fun(value:System.Byte):System.SByte
---@overload fun(value:System.Int16):System.SByte
---@overload fun(value:System.UInt16):System.SByte
---@overload fun(value:System.Int32):System.SByte
---@overload fun(value:System.UInt32):System.SByte
---@overload fun(value:System.Int64):System.SByte
---@overload fun(value:System.UInt64):System.SByte
---@overload fun(value:System.Single):System.SByte
---@overload fun(value:System.Double):System.SByte
---@overload fun(value:System.Object):System.SByte
---@overload fun(value:System.Decimal):System.SByte
---@overload fun(value:System.String):System.SByte
---@overload fun(value:System.DateTime):System.SByte
---@overload fun(value:System.String, fromBase:System.Int32):System.SByte
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.SByte
---@overload fun(value:System.String, provider:System.IFormatProvider):System.SByte
---@param value System.Boolean
---@return System.SByte
function System.Convert.ToSByte(value)end
---@overload fun(value:System.Byte):System.Byte
---@overload fun(value:System.Char):System.Byte
---@overload fun(value:System.SByte):System.Byte
---@overload fun(value:System.Int16):System.Byte
---@overload fun(value:System.UInt16):System.Byte
---@overload fun(value:System.Int32):System.Byte
---@overload fun(value:System.UInt32):System.Byte
---@overload fun(value:System.Int64):System.Byte
---@overload fun(value:System.UInt64):System.Byte
---@overload fun(value:System.Single):System.Byte
---@overload fun(value:System.Double):System.Byte
---@overload fun(value:System.Object):System.Byte
---@overload fun(value:System.Decimal):System.Byte
---@overload fun(value:System.String):System.Byte
---@overload fun(value:System.DateTime):System.Byte
---@overload fun(value:System.String, fromBase:System.Int32):System.Byte
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Byte
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Byte
---@param value System.Boolean
---@return System.Byte
function System.Convert.ToByte(value)end
---@overload fun(value:System.Char):System.Int16
---@overload fun(value:System.SByte):System.Int16
---@overload fun(value:System.Byte):System.Int16
---@overload fun(value:System.UInt16):System.Int16
---@overload fun(value:System.Int32):System.Int16
---@overload fun(value:System.UInt32):System.Int16
---@overload fun(value:System.Int16):System.Int16
---@overload fun(value:System.Int64):System.Int16
---@overload fun(value:System.UInt64):System.Int16
---@overload fun(value:System.Single):System.Int16
---@overload fun(value:System.Double):System.Int16
---@overload fun(value:System.Object):System.Int16
---@overload fun(value:System.Decimal):System.Int16
---@overload fun(value:System.String):System.Int16
---@overload fun(value:System.DateTime):System.Int16
---@overload fun(value:System.String, fromBase:System.Int32):System.Int16
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Int16
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Int16
---@param value System.Boolean
---@return System.Int16
function System.Convert.ToInt16(value)end
---@overload fun(value:System.Char):System.UInt16
---@overload fun(value:System.SByte):System.UInt16
---@overload fun(value:System.Byte):System.UInt16
---@overload fun(value:System.Int16):System.UInt16
---@overload fun(value:System.Int32):System.UInt16
---@overload fun(value:System.UInt16):System.UInt16
---@overload fun(value:System.UInt32):System.UInt16
---@overload fun(value:System.Int64):System.UInt16
---@overload fun(value:System.UInt64):System.UInt16
---@overload fun(value:System.Single):System.UInt16
---@overload fun(value:System.Double):System.UInt16
---@overload fun(value:System.Object):System.UInt16
---@overload fun(value:System.Decimal):System.UInt16
---@overload fun(value:System.String):System.UInt16
---@overload fun(value:System.DateTime):System.UInt16
---@overload fun(value:System.String, fromBase:System.Int32):System.UInt16
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.UInt16
---@overload fun(value:System.String, provider:System.IFormatProvider):System.UInt16
---@param value System.Boolean
---@return System.UInt16
function System.Convert.ToUInt16(value)end
---@overload fun(value:System.Char):System.Int32
---@overload fun(value:System.SByte):System.Int32
---@overload fun(value:System.Byte):System.Int32
---@overload fun(value:System.Int16):System.Int32
---@overload fun(value:System.UInt16):System.Int32
---@overload fun(value:System.UInt32):System.Int32
---@overload fun(value:System.Int32):System.Int32
---@overload fun(value:System.Int64):System.Int32
---@overload fun(value:System.UInt64):System.Int32
---@overload fun(value:System.Single):System.Int32
---@overload fun(value:System.Double):System.Int32
---@overload fun(value:System.Object):System.Int32
---@overload fun(value:System.Decimal):System.Int32
---@overload fun(value:System.String):System.Int32
---@overload fun(value:System.DateTime):System.Int32
---@overload fun(value:System.String, fromBase:System.Int32):System.Int32
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Int32
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Int32
---@param value System.Boolean
---@return System.Int32
function System.Convert.ToInt32(value)end
---@overload fun(value:System.Char):System.UInt32
---@overload fun(value:System.SByte):System.UInt32
---@overload fun(value:System.Byte):System.UInt32
---@overload fun(value:System.Int16):System.UInt32
---@overload fun(value:System.UInt16):System.UInt32
---@overload fun(value:System.Int32):System.UInt32
---@overload fun(value:System.UInt32):System.UInt32
---@overload fun(value:System.Int64):System.UInt32
---@overload fun(value:System.UInt64):System.UInt32
---@overload fun(value:System.Single):System.UInt32
---@overload fun(value:System.Double):System.UInt32
---@overload fun(value:System.Object):System.UInt32
---@overload fun(value:System.Decimal):System.UInt32
---@overload fun(value:System.String):System.UInt32
---@overload fun(value:System.DateTime):System.UInt32
---@overload fun(value:System.String, fromBase:System.Int32):System.UInt32
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.UInt32
---@overload fun(value:System.String, provider:System.IFormatProvider):System.UInt32
---@param value System.Boolean
---@return System.UInt32
function System.Convert.ToUInt32(value)end
---@overload fun(value:System.Char):System.Int64
---@overload fun(value:System.SByte):System.Int64
---@overload fun(value:System.Byte):System.Int64
---@overload fun(value:System.Int16):System.Int64
---@overload fun(value:System.UInt16):System.Int64
---@overload fun(value:System.Int32):System.Int64
---@overload fun(value:System.UInt32):System.Int64
---@overload fun(value:System.UInt64):System.Int64
---@overload fun(value:System.Int64):System.Int64
---@overload fun(value:System.Single):System.Int64
---@overload fun(value:System.Double):System.Int64
---@overload fun(value:System.Object):System.Int64
---@overload fun(value:System.Decimal):System.Int64
---@overload fun(value:System.String):System.Int64
---@overload fun(value:System.DateTime):System.Int64
---@overload fun(value:System.String, fromBase:System.Int32):System.Int64
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Int64
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Int64
---@param value System.Boolean
---@return System.Int64
function System.Convert.ToInt64(value)end
---@overload fun(value:System.Char):System.UInt64
---@overload fun(value:System.SByte):System.UInt64
---@overload fun(value:System.Byte):System.UInt64
---@overload fun(value:System.Int16):System.UInt64
---@overload fun(value:System.UInt16):System.UInt64
---@overload fun(value:System.Int32):System.UInt64
---@overload fun(value:System.UInt32):System.UInt64
---@overload fun(value:System.Int64):System.UInt64
---@overload fun(value:System.UInt64):System.UInt64
---@overload fun(value:System.Single):System.UInt64
---@overload fun(value:System.Double):System.UInt64
---@overload fun(value:System.Object):System.UInt64
---@overload fun(value:System.Decimal):System.UInt64
---@overload fun(value:System.String):System.UInt64
---@overload fun(value:System.DateTime):System.UInt64
---@overload fun(value:System.String, fromBase:System.Int32):System.UInt64
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.UInt64
---@overload fun(value:System.String, provider:System.IFormatProvider):System.UInt64
---@param value System.Boolean
---@return System.UInt64
function System.Convert.ToUInt64(value)end
---@overload fun(value:System.Byte):System.Single
---@overload fun(value:System.Char):System.Single
---@overload fun(value:System.Int16):System.Single
---@overload fun(value:System.UInt16):System.Single
---@overload fun(value:System.Int32):System.Single
---@overload fun(value:System.UInt32):System.Single
---@overload fun(value:System.Int64):System.Single
---@overload fun(value:System.UInt64):System.Single
---@overload fun(value:System.Single):System.Single
---@overload fun(value:System.Double):System.Single
---@overload fun(value:System.Boolean):System.Single
---@overload fun(value:System.Object):System.Single
---@overload fun(value:System.Decimal):System.Single
---@overload fun(value:System.String):System.Single
---@overload fun(value:System.DateTime):System.Single
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Single
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Single
---@param value System.SByte
---@return System.Single
function System.Convert.ToSingle(value)end
---@overload fun(value:System.Byte):System.Double
---@overload fun(value:System.Int16):System.Double
---@overload fun(value:System.Char):System.Double
---@overload fun(value:System.UInt16):System.Double
---@overload fun(value:System.Int32):System.Double
---@overload fun(value:System.UInt32):System.Double
---@overload fun(value:System.Int64):System.Double
---@overload fun(value:System.UInt64):System.Double
---@overload fun(value:System.Single):System.Double
---@overload fun(value:System.Double):System.Double
---@overload fun(value:System.Boolean):System.Double
---@overload fun(value:System.Object):System.Double
---@overload fun(value:System.Decimal):System.Double
---@overload fun(value:System.String):System.Double
---@overload fun(value:System.DateTime):System.Double
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Double
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Double
---@param value System.SByte
---@return System.Double
function System.Convert.ToDouble(value)end
---@overload fun(value:System.Byte):System.Decimal
---@overload fun(value:System.Char):System.Decimal
---@overload fun(value:System.Int16):System.Decimal
---@overload fun(value:System.UInt16):System.Decimal
---@overload fun(value:System.Int32):System.Decimal
---@overload fun(value:System.UInt32):System.Decimal
---@overload fun(value:System.Int64):System.Decimal
---@overload fun(value:System.UInt64):System.Decimal
---@overload fun(value:System.Single):System.Decimal
---@overload fun(value:System.Double):System.Decimal
---@overload fun(value:System.Boolean):System.Decimal
---@overload fun(value:System.Object):System.Decimal
---@overload fun(value:System.String):System.Decimal
---@overload fun(value:System.Decimal):System.Decimal
---@overload fun(value:System.DateTime):System.Decimal
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.Decimal
---@overload fun(value:System.String, provider:System.IFormatProvider):System.Decimal
---@param value System.SByte
---@return System.Decimal
function System.Convert.ToDecimal(value)end
---@overload fun(value:System.Byte):System.DateTime
---@overload fun(value:System.Int16):System.DateTime
---@overload fun(value:System.UInt16):System.DateTime
---@overload fun(value:System.Int32):System.DateTime
---@overload fun(value:System.UInt32):System.DateTime
---@overload fun(value:System.Int64):System.DateTime
---@overload fun(value:System.UInt64):System.DateTime
---@overload fun(value:System.Boolean):System.DateTime
---@overload fun(value:System.Char):System.DateTime
---@overload fun(value:System.Single):System.DateTime
---@overload fun(value:System.Double):System.DateTime
---@overload fun(value:System.DateTime):System.DateTime
---@overload fun(value:System.Object):System.DateTime
---@overload fun(value:System.String):System.DateTime
---@overload fun(value:System.Decimal):System.DateTime
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.DateTime
---@overload fun(value:System.String, provider:System.IFormatProvider):System.DateTime
---@param value System.SByte
---@return System.DateTime
function System.Convert.ToDateTime(value)end
---@overload fun(value:System.Char):System.String
---@overload fun(value:System.SByte):System.String
---@overload fun(value:System.Byte):System.String
---@overload fun(value:System.Int16):System.String
---@overload fun(value:System.UInt16):System.String
---@overload fun(value:System.Int32):System.String
---@overload fun(value:System.UInt32):System.String
---@overload fun(value:System.Int64):System.String
---@overload fun(value:System.UInt64):System.String
---@overload fun(value:System.Single):System.String
---@overload fun(value:System.Double):System.String
---@overload fun(value:System.Byte, toBase:System.Int32):System.String
---@overload fun(value:System.Int16, toBase:System.Int32):System.String
---@overload fun(value:System.Int32, toBase:System.Int32):System.String
---@overload fun(value:System.Int64, toBase:System.Int32):System.String
---@overload fun(value:System.Object):System.String
---@overload fun(value:System.Decimal):System.String
---@overload fun(value:System.DateTime):System.String
---@overload fun(value:System.String):System.String
---@overload fun(value:System.Boolean, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Char, provider:System.IFormatProvider):System.String
---@overload fun(value:System.SByte, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Byte, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Int16, provider:System.IFormatProvider):System.String
---@overload fun(value:System.UInt16, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Int32, provider:System.IFormatProvider):System.String
---@overload fun(value:System.UInt32, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Int64, provider:System.IFormatProvider):System.String
---@overload fun(value:System.UInt64, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Single, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Double, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Object, provider:System.IFormatProvider):System.String
---@overload fun(value:System.Decimal, provider:System.IFormatProvider):System.String
---@overload fun(value:System.DateTime, provider:System.IFormatProvider):System.String
---@overload fun(value:System.String, provider:System.IFormatProvider):System.String
---@param value System.Boolean
---@return System.String
function System.Convert.ToString(value)end
---@overload fun(inArray:System.Byte[], offset:System.Int32, length:System.Int32):System.String
---@overload fun(inArray:System.Byte[], options:System.Base64FormattingOptions):System.String
---@overload fun(inArray:System.Byte[], offset:System.Int32, length:System.Int32, options:System.Base64FormattingOptions):System.String
---@param inArray System.Byte[]
---@return System.String
function System.Convert.ToBase64String(inArray)end
---@overload fun(inArray:System.Byte[], offsetIn:System.Int32, length:System.Int32, outArray:System.Char[], offsetOut:System.Int32, options:System.Base64FormattingOptions):System.Int32
---@param inArray System.Byte[]
---@param offsetIn System.Int32
---@param length System.Int32
---@param outArray System.Char[]
---@param offsetOut System.Int32
---@return System.Int32
function System.Convert.ToBase64CharArray(inArray, offsetIn, length, outArray, offsetOut)end
---@param s System.String
---@return System.Byte[]
function System.Convert.FromBase64String(s)end
---@param inArray System.Char[]
---@param offset System.Int32
---@param length System.Int32
---@return System.Byte[]
function System.Convert.FromBase64CharArray(inArray, offset, length)end
---@class System.DataMisalignedException : System.SystemException
System.DataMisalignedException = {}
---@type System.DataMisalignedException
CS.System.DataMisalignedException = System.DataMisalignedException

---@class System.DateTime : System.ValueType
---@field public Date System.DateTime @  getter
---@field public Day System.Int32 @  getter
---@field public DayOfWeek System.DayOfWeek @  getter
---@field public DayOfYear System.Int32 @  getter
---@field public Hour System.Int32 @  getter
---@field public Kind System.DateTimeKind @  getter
---@field public Millisecond System.Int32 @  getter
---@field public Minute System.Int32 @  getter
---@field public Month System.Int32 @  getter
---@field public Now System.DateTime @static  getter
---@field public UtcNow System.DateTime @static  getter
---@field public Second System.Int32 @  getter
---@field public Ticks System.Int64 @  getter
---@field public TimeOfDay System.TimeSpan @  getter
---@field public Today System.DateTime @static  getter
---@field public Year System.Int32 @  getter
---@field public MinValue System.DateTime
---@field public MaxValue System.DateTime
System.DateTime = {}
---@type System.DateTime
CS.System.DateTime = System.DateTime

---@param value System.TimeSpan
---@return System.DateTime
function System.DateTime:Add(value)end
---@param value System.Double
---@return System.DateTime
function System.DateTime:AddDays(value)end
---@param value System.Double
---@return System.DateTime
function System.DateTime:AddHours(value)end
---@param value System.Double
---@return System.DateTime
function System.DateTime:AddMilliseconds(value)end
---@param value System.Double
---@return System.DateTime
function System.DateTime:AddMinutes(value)end
---@param months System.Int32
---@return System.DateTime
function System.DateTime:AddMonths(months)end
---@param value System.Double
---@return System.DateTime
function System.DateTime:AddSeconds(value)end
---@param value System.Int64
---@return System.DateTime
function System.DateTime:AddTicks(value)end
---@param value System.Int32
---@return System.DateTime
function System.DateTime:AddYears(value)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Int32
function System.DateTime.Compare(t1, t2)end
---@overload fun(value:System.DateTime):System.Int32
---@param value System.Object
---@return System.Int32
function System.DateTime:CompareTo(value)end
---@param year System.Int32
---@param month System.Int32
---@return System.Int32
function System.DateTime.DaysInMonth(year, month)end
---@overload fun(value:System.DateTime):System.Boolean
---@param value System.Object
---@return System.Boolean
function System.DateTime:Equals(value)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Boolean
function System.DateTime.Equals(t1, t2)end
---@param dateData System.Int64
---@return System.DateTime
function System.DateTime.FromBinary(dateData)end
---@param fileTime System.Int64
---@return System.DateTime
function System.DateTime.FromFileTime(fileTime)end
---@param fileTime System.Int64
---@return System.DateTime
function System.DateTime.FromFileTimeUtc(fileTime)end
---@param d System.Double
---@return System.DateTime
function System.DateTime.FromOADate(d)end
---@return System.Boolean
function System.DateTime:IsDaylightSavingTime()end
---@param value System.DateTime
---@param kind System.DateTimeKind
---@return System.DateTime
function System.DateTime.SpecifyKind(value, kind)end
---@return System.Int64
function System.DateTime:ToBinary()end
---@return System.Int32
function System.DateTime:GetHashCode()end
---@param year System.Int32
---@return System.Boolean
function System.DateTime.IsLeapYear(year)end
---@overload fun(s:System.String, provider:System.IFormatProvider):System.DateTime
---@overload fun(s:System.String, provider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):System.DateTime
---@param s System.String
---@return System.DateTime
function System.DateTime.Parse(s)end
---@overload fun(s:System.String, format:System.String, provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles):System.DateTime
---@overload fun(s:System.String, formats:System.String[], provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles):System.DateTime
---@param s System.String
---@param format System.String
---@param provider System.IFormatProvider
---@return System.DateTime
function System.DateTime.ParseExact(s, format, provider)end
---@overload fun(value:System.TimeSpan):System.DateTime
---@param value System.DateTime
---@return System.TimeSpan
function System.DateTime:Subtract(value)end
---@return System.Double
function System.DateTime:ToOADate()end
---@return System.Int64
function System.DateTime:ToFileTime()end
---@return System.Int64
function System.DateTime:ToFileTimeUtc()end
---@return System.DateTime
function System.DateTime:ToLocalTime()end
---@return System.String
function System.DateTime:ToLongDateString()end
---@return System.String
function System.DateTime:ToLongTimeString()end
---@return System.String
function System.DateTime:ToShortDateString()end
---@return System.String
function System.DateTime:ToShortTimeString()end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.DateTime:ToString()end
---@return System.DateTime
function System.DateTime:ToUniversalTime()end
---@overload fun(s:System.String, provider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles, result:System.DateTime):System.Boolean
---@param s System.String
---@param result System.DateTime
---@return System.Boolean
function System.DateTime.TryParse(s, result)end
---@overload fun(s:System.String, formats:System.String[], provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles, result:System.DateTime):System.Boolean
---@param s System.String
---@param format System.String
---@param provider System.IFormatProvider
---@param style System.Globalization.DateTimeStyles
---@param result System.DateTime
---@return System.Boolean
function System.DateTime.TryParseExact(s, format, provider, style, result)end
---@param d System.DateTime
---@param t System.TimeSpan
---@return System.DateTime
function System.DateTime.op_Addition(d, t)end
---@overload fun(d1:System.DateTime, d2:System.DateTime):System.TimeSpan
---@param d System.DateTime
---@param t System.TimeSpan
---@return System.DateTime
function System.DateTime.op_Subtraction(d, t)end
---@param d1 System.DateTime
---@param d2 System.DateTime
---@return System.Boolean
function System.DateTime.op_Equality(d1, d2)end
---@param d1 System.DateTime
---@param d2 System.DateTime
---@return System.Boolean
function System.DateTime.op_Inequality(d1, d2)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Boolean
function System.DateTime.op_LessThan(t1, t2)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Boolean
function System.DateTime.op_LessThanOrEqual(t1, t2)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Boolean
function System.DateTime.op_GreaterThan(t1, t2)end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return System.Boolean
function System.DateTime.op_GreaterThanOrEqual(t1, t2)end
---@overload fun(format:System.Char):System.String[]
---@overload fun(provider:System.IFormatProvider):System.String[]
---@overload fun(format:System.Char, provider:System.IFormatProvider):System.String[]
---@return System.String[]
function System.DateTime:GetDateTimeFormats()end
---@return System.TypeCode
function System.DateTime:GetTypeCode()end
---@class System.DateTimeKind : System.Enum
System.DateTimeKind = {}
---@type System.DateTimeKind
CS.System.DateTimeKind = System.DateTimeKind

---@return System.Int32 value:0
System.DateTimeKind.Unspecified = 0
---@return System.Int32 value:1
System.DateTimeKind.Utc = 1
---@return System.Int32 value:2
System.DateTimeKind.Local = 2

---@class System.DateTimeOffset : System.ValueType
---@field public Now System.DateTimeOffset @static  getter
---@field public UtcNow System.DateTimeOffset @static  getter
---@field public DateTime System.DateTime @  getter
---@field public UtcDateTime System.DateTime @  getter
---@field public LocalDateTime System.DateTime @  getter
---@field public Date System.DateTime @  getter
---@field public Day System.Int32 @  getter
---@field public DayOfWeek System.DayOfWeek @  getter
---@field public DayOfYear System.Int32 @  getter
---@field public Hour System.Int32 @  getter
---@field public Millisecond System.Int32 @  getter
---@field public Minute System.Int32 @  getter
---@field public Month System.Int32 @  getter
---@field public Offset System.TimeSpan @  getter
---@field public Second System.Int32 @  getter
---@field public Ticks System.Int64 @  getter
---@field public UtcTicks System.Int64 @  getter
---@field public TimeOfDay System.TimeSpan @  getter
---@field public Year System.Int32 @  getter
---@field public MinValue System.DateTimeOffset
---@field public MaxValue System.DateTimeOffset
System.DateTimeOffset = {}
---@type System.DateTimeOffset
CS.System.DateTimeOffset = System.DateTimeOffset

---@param offset System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset:ToOffset(offset)end
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset:Add(timeSpan)end
---@param days System.Double
---@return System.DateTimeOffset
function System.DateTimeOffset:AddDays(days)end
---@param hours System.Double
---@return System.DateTimeOffset
function System.DateTimeOffset:AddHours(hours)end
---@param milliseconds System.Double
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMilliseconds(milliseconds)end
---@param minutes System.Double
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMinutes(minutes)end
---@param months System.Int32
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMonths(months)end
---@param seconds System.Double
---@return System.DateTimeOffset
function System.DateTimeOffset:AddSeconds(seconds)end
---@param ticks System.Int64
---@return System.DateTimeOffset
function System.DateTimeOffset:AddTicks(ticks)end
---@param years System.Int32
---@return System.DateTimeOffset
function System.DateTimeOffset:AddYears(years)end
---@param first System.DateTimeOffset
---@param second System.DateTimeOffset
---@return System.Int32
function System.DateTimeOffset.Compare(first, second)end
---@param other System.DateTimeOffset
---@return System.Int32
function System.DateTimeOffset:CompareTo(other)end
---@overload fun(other:System.DateTimeOffset):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.DateTimeOffset:Equals(obj)end
---@param other System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset:EqualsExact(other)end
---@param first System.DateTimeOffset
---@param second System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.Equals(first, second)end
---@param fileTime System.Int64
---@return System.DateTimeOffset
function System.DateTimeOffset.FromFileTime(fileTime)end
---@param seconds System.Int64
---@return System.DateTimeOffset
function System.DateTimeOffset.FromUnixTimeSeconds(seconds)end
---@param milliseconds System.Int64
---@return System.DateTimeOffset
function System.DateTimeOffset.FromUnixTimeMilliseconds(milliseconds)end
---@return System.Int32
function System.DateTimeOffset:GetHashCode()end
---@overload fun(input:System.String, formatProvider:System.IFormatProvider):System.DateTimeOffset
---@overload fun(input:System.String, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):System.DateTimeOffset
---@param input System.String
---@return System.DateTimeOffset
function System.DateTimeOffset.Parse(input)end
---@overload fun(input:System.String, format:System.String, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):System.DateTimeOffset
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):System.DateTimeOffset
---@param input System.String
---@param format System.String
---@param formatProvider System.IFormatProvider
---@return System.DateTimeOffset
function System.DateTimeOffset.ParseExact(input, format, formatProvider)end
---@overload fun(value:System.TimeSpan):System.DateTimeOffset
---@param value System.DateTimeOffset
---@return System.TimeSpan
function System.DateTimeOffset:Subtract(value)end
---@return System.Int64
function System.DateTimeOffset:ToFileTime()end
---@return System.Int64
function System.DateTimeOffset:ToUnixTimeSeconds()end
---@return System.Int64
function System.DateTimeOffset:ToUnixTimeMilliseconds()end
---@return System.DateTimeOffset
function System.DateTimeOffset:ToLocalTime()end
---@overload fun(format:System.String):System.String
---@overload fun(formatProvider:System.IFormatProvider):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function System.DateTimeOffset:ToString()end
---@return System.DateTimeOffset
function System.DateTimeOffset:ToUniversalTime()end
---@overload fun(input:System.String, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles, result:System.DateTimeOffset):System.Boolean
---@param input System.String
---@param result System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.TryParse(input, result)end
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles, result:System.DateTimeOffset):System.Boolean
---@param input System.String
---@param format System.String
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@param result System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.TryParseExact(input, format, formatProvider, styles, result)end
---@param dateTime System.DateTime
---@return System.DateTimeOffset
function System.DateTimeOffset.op_Implicit(dateTime)end
---@param dateTimeOffset System.DateTimeOffset
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset.op_Addition(dateTimeOffset, timeSpan)end
---@overload fun(left:System.DateTimeOffset, right:System.DateTimeOffset):System.TimeSpan
---@param dateTimeOffset System.DateTimeOffset
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset.op_Subtraction(dateTimeOffset, timeSpan)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_Equality(left, right)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_Inequality(left, right)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_LessThan(left, right)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_LessThanOrEqual(left, right)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_GreaterThan(left, right)end
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return System.Boolean
function System.DateTimeOffset.op_GreaterThanOrEqual(left, right)end
---@class System.DayOfWeek : System.Enum
System.DayOfWeek = {}
---@type System.DayOfWeek
CS.System.DayOfWeek = System.DayOfWeek

---@return System.Int32 value:0
System.DayOfWeek.Sunday = 0
---@return System.Int32 value:1
System.DayOfWeek.Monday = 1
---@return System.Int32 value:2
System.DayOfWeek.Tuesday = 2
---@return System.Int32 value:3
System.DayOfWeek.Wednesday = 3
---@return System.Int32 value:4
System.DayOfWeek.Thursday = 4
---@return System.Int32 value:5
System.DayOfWeek.Friday = 5
---@return System.Int32 value:6
System.DayOfWeek.Saturday = 6

---@class System.DBNull : System.Object
---@field public Value System.DBNull
System.DBNull = {}
---@type System.DBNull
CS.System.DBNull = System.DBNull

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.DBNull:GetObjectData(info, context)end
---@overload fun(provider:System.IFormatProvider):System.String
---@return System.String
function System.DBNull:ToString()end
---@return System.TypeCode
function System.DBNull:GetTypeCode()end
---@class System.Decimal : System.ValueType
---@field public Zero System.Decimal
---@field public One System.Decimal
---@field public MinusOne System.Decimal
---@field public MaxValue System.Decimal
---@field public MinValue System.Decimal
System.Decimal = {}
---@type System.Decimal
CS.System.Decimal = System.Decimal

---@param value System.Decimal
---@return System.Int64
function System.Decimal.ToOACurrency(value)end
---@param cy System.Int64
---@return System.Decimal
function System.Decimal.FromOACurrency(cy)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Add(d1, d2)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Ceiling(d)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Int32
function System.Decimal.Compare(d1, d2)end
---@overload fun(value:System.Decimal):System.Int32
---@param value System.Object
---@return System.Int32
function System.Decimal:CompareTo(value)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Divide(d1, d2)end
---@overload fun(value:System.Decimal):System.Boolean
---@param value System.Object
---@return System.Boolean
function System.Decimal:Equals(value)end
---@return System.Int32
function System.Decimal:GetHashCode()end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.Equals(d1, d2)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Floor(d)end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Decimal:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Decimal
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Decimal
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Decimal
---@param s System.String
---@return System.Decimal
function System.Decimal.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Decimal):System.Boolean
---@param s System.String
---@param result System.Decimal
---@return System.Boolean
function System.Decimal.TryParse(s, result)end
---@param d System.Decimal
---@return System.Int32[]
function System.Decimal.GetBits(d)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Remainder(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Multiply(d1, d2)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Negate(d)end
---@overload fun(d:System.Decimal, decimals:System.Int32):System.Decimal
---@overload fun(d:System.Decimal, mode:System.MidpointRounding):System.Decimal
---@overload fun(d:System.Decimal, decimals:System.Int32, mode:System.MidpointRounding):System.Decimal
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Round(d)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Subtract(d1, d2)end
---@param value System.Decimal
---@return System.Byte
function System.Decimal.ToByte(value)end
---@param value System.Decimal
---@return System.SByte
function System.Decimal.ToSByte(value)end
---@param value System.Decimal
---@return System.Int16
function System.Decimal.ToInt16(value)end
---@param d System.Decimal
---@return System.Double
function System.Decimal.ToDouble(d)end
---@param d System.Decimal
---@return System.Int32
function System.Decimal.ToInt32(d)end
---@param d System.Decimal
---@return System.Int64
function System.Decimal.ToInt64(d)end
---@param value System.Decimal
---@return System.UInt16
function System.Decimal.ToUInt16(value)end
---@param d System.Decimal
---@return System.UInt32
function System.Decimal.ToUInt32(d)end
---@param d System.Decimal
---@return System.UInt64
function System.Decimal.ToUInt64(d)end
---@param d System.Decimal
---@return System.Single
function System.Decimal.ToSingle(d)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Truncate(d)end
---@overload fun(value:System.SByte):System.Decimal
---@overload fun(value:System.Int16):System.Decimal
---@overload fun(value:System.UInt16):System.Decimal
---@overload fun(value:System.Char):System.Decimal
---@overload fun(value:System.Int32):System.Decimal
---@overload fun(value:System.UInt32):System.Decimal
---@overload fun(value:System.Int64):System.Decimal
---@overload fun(value:System.UInt64):System.Decimal
---@param value System.Byte
---@return System.Decimal
function System.Decimal.op_Implicit(value)end
---@overload fun(value:System.Double):System.Decimal
---@overload fun(value:System.Decimal):System.Byte
---@overload fun(value:System.Decimal):System.SByte
---@overload fun(value:System.Decimal):System.Char
---@overload fun(value:System.Decimal):System.Int16
---@overload fun(value:System.Decimal):System.UInt16
---@overload fun(value:System.Decimal):System.Int32
---@overload fun(value:System.Decimal):System.UInt32
---@overload fun(value:System.Decimal):System.Int64
---@overload fun(value:System.Decimal):System.UInt64
---@overload fun(value:System.Decimal):System.Single
---@overload fun(value:System.Decimal):System.Double
---@param value System.Single
---@return System.Decimal
function System.Decimal.op_Explicit(value)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.op_UnaryPlus(d)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.op_UnaryNegation(d)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.op_Increment(d)end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.op_Decrement(d)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.op_Addition(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.op_Subtraction(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.op_Multiply(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.op_Division(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.op_Modulus(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_Equality(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_Inequality(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_LessThan(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_LessThanOrEqual(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_GreaterThan(d1, d2)end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Boolean
function System.Decimal.op_GreaterThanOrEqual(d1, d2)end
---@return System.TypeCode
function System.Decimal:GetTypeCode()end
---@class System.DivideByZeroException : System.ArithmeticException
System.DivideByZeroException = {}
---@type System.DivideByZeroException
CS.System.DivideByZeroException = System.DivideByZeroException

---@class System.DllNotFoundException : System.TypeLoadException
System.DllNotFoundException = {}
---@type System.DllNotFoundException
CS.System.DllNotFoundException = System.DllNotFoundException

---@class System.Double : System.ValueType
---@field public MinValue System.Double
---@field public MaxValue System.Double
---@field public Epsilon System.Double
---@field public NegativeInfinity System.Double
---@field public PositiveInfinity System.Double
---@field public NaN System.Double
System.Double = {}
---@type System.Double
CS.System.Double = System.Double

---@param d System.Double
---@return System.Boolean
function System.Double.IsInfinity(d)end
---@param d System.Double
---@return System.Boolean
function System.Double.IsPositiveInfinity(d)end
---@param d System.Double
---@return System.Boolean
function System.Double.IsNegativeInfinity(d)end
---@param d System.Double
---@return System.Boolean
function System.Double.IsNaN(d)end
---@param d System.Double
---@return System.Boolean
function System.Double.IsFinite(d)end
---@overload fun(value:System.Object):System.Int32
---@param value System.Double
---@return System.Int32
function System.Double:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Double
---@return System.Boolean
function System.Double:Equals(obj)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_Equality(left, right)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_Inequality(left, right)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_LessThan(left, right)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_GreaterThan(left, right)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_LessThanOrEqual(left, right)end
---@param left System.Double
---@param right System.Double
---@return System.Boolean
function System.Double.op_GreaterThanOrEqual(left, right)end
---@return System.Int32
function System.Double:GetHashCode()end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Double:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Double
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Double
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Double
---@param s System.String
---@return System.Double
function System.Double.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Double):System.Boolean
---@param s System.String
---@param result System.Double
---@return System.Boolean
function System.Double.TryParse(s, result)end
---@return System.TypeCode
function System.Double:GetTypeCode()end
---@class System.DuplicateWaitObjectException : System.ArgumentException
System.DuplicateWaitObjectException = {}
---@type System.DuplicateWaitObjectException
CS.System.DuplicateWaitObjectException = System.DuplicateWaitObjectException

---@class System.EntryPointNotFoundException : System.TypeLoadException
System.EntryPointNotFoundException = {}
---@type System.EntryPointNotFoundException
CS.System.EntryPointNotFoundException = System.EntryPointNotFoundException

---@class System.Enum : System.ValueType
System.Enum = {}
---@type System.Enum
CS.System.Enum = System.Enum

---@overload fun(value:System.String, ignoreCase:System.Boolean, result:any):System.Boolean
---@param value System.String
---@param result any
---@return System.Boolean
function System.Enum.TryParse(value, result)end
---@overload fun(enumType:System.Type, value:System.String, ignoreCase:System.Boolean):System.Object
---@param enumType System.Type
---@param value System.String
---@return System.Object
function System.Enum.Parse(enumType, value)end
---@param enumType System.Type
---@return System.Type
function System.Enum.GetUnderlyingType(enumType)end
---@param enumType System.Type
---@return System.Array
function System.Enum.GetValues(enumType)end
---@param enumType System.Type
---@param value System.Object
---@return System.String
function System.Enum.GetName(enumType, value)end
---@param enumType System.Type
---@return System.String[]
function System.Enum.GetNames(enumType)end
---@overload fun(enumType:System.Type, value:System.Int16):System.Object
---@overload fun(enumType:System.Type, value:System.Int32):System.Object
---@overload fun(enumType:System.Type, value:System.Byte):System.Object
---@overload fun(enumType:System.Type, value:System.UInt16):System.Object
---@overload fun(enumType:System.Type, value:System.UInt32):System.Object
---@overload fun(enumType:System.Type, value:System.Int64):System.Object
---@overload fun(enumType:System.Type, value:System.UInt64):System.Object
---@overload fun(enumType:System.Type, value:System.Object):System.Object
---@param enumType System.Type
---@param value System.SByte
---@return System.Object
function System.Enum.ToObject(enumType, value)end
---@param enumType System.Type
---@param value System.Object
---@return System.Boolean
function System.Enum.IsDefined(enumType, value)end
---@param enumType System.Type
---@param value System.Object
---@param format System.String
---@return System.String
function System.Enum.Format(enumType, value, format)end
---@param obj System.Object
---@return System.Boolean
function System.Enum:Equals(obj)end
---@return System.Int32
function System.Enum:GetHashCode()end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Enum:ToString()end
---@param target System.Object
---@return System.Int32
function System.Enum:CompareTo(target)end
---@param flag System.Enum
---@return System.Boolean
function System.Enum:HasFlag(flag)end
---@return System.TypeCode
function System.Enum:GetTypeCode()end
---@class System.EventArgs : System.Object
---@field public Empty System.EventArgs
System.EventArgs = {}
---@type System.EventArgs
CS.System.EventArgs = System.EventArgs

---@class System.Exception : System.Object
---@field public Message System.String @  getter
---@field public Data System.Collections.IDictionary @  getter
---@field public InnerException System.Exception @  getter
---@field public TargetSite System.Reflection.MethodBase @  getter
---@field public StackTrace System.String @  getter
---@field public HelpLink System.String @ setter getter
---@field public Source System.String @ setter getter
---@field public HResult System.Int32 @ setter getter
System.Exception = {}
---@type System.Exception
CS.System.Exception = System.Exception

---@return System.Exception
function System.Exception:GetBaseException()end
---@return System.String
function System.Exception:ToString()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Exception:GetObjectData(info, context)end
---@return System.Type
function System.Exception:GetType()end
---@class System.ExecutionEngineException : System.SystemException
System.ExecutionEngineException = {}
---@type System.ExecutionEngineException
CS.System.ExecutionEngineException = System.ExecutionEngineException

---@class System.FieldAccessException : System.MemberAccessException
System.FieldAccessException = {}
---@type System.FieldAccessException
CS.System.FieldAccessException = System.FieldAccessException

---@class System.FlagsAttribute : System.Attribute
System.FlagsAttribute = {}
---@type System.FlagsAttribute
CS.System.FlagsAttribute = System.FlagsAttribute

---@class System.FormatException : System.SystemException
System.FormatException = {}
---@type System.FormatException
CS.System.FormatException = System.FormatException

---@class System.GCCollectionMode : System.Enum
System.GCCollectionMode = {}
---@type System.GCCollectionMode
CS.System.GCCollectionMode = System.GCCollectionMode

---@return System.Int32 value:0
System.GCCollectionMode.Default = 0
---@return System.Int32 value:1
System.GCCollectionMode.Forced = 1
---@return System.Int32 value:2
System.GCCollectionMode.Optimized = 2

---@class System.GCNotificationStatus : System.Enum
System.GCNotificationStatus = {}
---@type System.GCNotificationStatus
CS.System.GCNotificationStatus = System.GCNotificationStatus

---@return System.Int32 value:0
System.GCNotificationStatus.Succeeded = 0
---@return System.Int32 value:1
System.GCNotificationStatus.Failed = 1
---@return System.Int32 value:2
System.GCNotificationStatus.Canceled = 2
---@return System.Int32 value:3
System.GCNotificationStatus.Timeout = 3
---@return System.Int32 value:4
System.GCNotificationStatus.NotApplicable = 4

---@class System.GC : System.Object
---@field public MaxGeneration System.Int32 @static  getter
System.GC = {}
---@type System.GC
CS.System.GC = System.GC

---@param bytesAllocated System.Int64
---@return System.Void
function System.GC.AddMemoryPressure(bytesAllocated)end
---@param bytesAllocated System.Int64
---@return System.Void
function System.GC.RemoveMemoryPressure(bytesAllocated)end
---@overload fun(wo:System.WeakReference):System.Int32
---@param obj System.Object
---@return System.Int32
function System.GC.GetGeneration(obj)end
---@overload fun(generation:System.Int32):System.Void
---@overload fun(generation:System.Int32, mode:System.GCCollectionMode):System.Void
---@overload fun(generation:System.Int32, mode:System.GCCollectionMode, blocking:System.Boolean):System.Void
---@overload fun(generation:System.Int32, mode:System.GCCollectionMode, blocking:System.Boolean, compacting:System.Boolean):System.Void
---@return System.Void
function System.GC.Collect()end
---@param generation System.Int32
---@return System.Int32
function System.GC.CollectionCount(generation)end
---@param obj System.Object
---@return System.Void
function System.GC.KeepAlive(obj)end
---@return System.Void
function System.GC.WaitForPendingFinalizers()end
---@param obj System.Object
---@return System.Void
function System.GC.SuppressFinalize(obj)end
---@param obj System.Object
---@return System.Void
function System.GC.ReRegisterForFinalize(obj)end
---@param forceFullCollection System.Boolean
---@return System.Int64
function System.GC.GetTotalMemory(forceFullCollection)end
---@param maxGenerationThreshold System.Int32
---@param largeObjectHeapThreshold System.Int32
---@return System.Void
function System.GC.RegisterForFullGCNotification(maxGenerationThreshold, largeObjectHeapThreshold)end
---@return System.Void
function System.GC.CancelFullGCNotification()end
---@overload fun(millisecondsTimeout:System.Int32):System.GCNotificationStatus
---@return System.GCNotificationStatus
function System.GC.WaitForFullGCApproach()end
---@overload fun(millisecondsTimeout:System.Int32):System.GCNotificationStatus
---@return System.GCNotificationStatus
function System.GC.WaitForFullGCComplete()end
---@overload fun(totalSize:System.Int64, lohSize:System.Int64):System.Boolean
---@overload fun(totalSize:System.Int64, disallowFullBlockingGC:System.Boolean):System.Boolean
---@overload fun(totalSize:System.Int64, lohSize:System.Int64, disallowFullBlockingGC:System.Boolean):System.Boolean
---@param totalSize System.Int64
---@return System.Boolean
function System.GC.TryStartNoGCRegion(totalSize)end
---@return System.Void
function System.GC.EndNoGCRegion()end
---@class System.Guid : System.ValueType
---@field public Empty System.Guid
System.Guid = {}
---@type System.Guid
CS.System.Guid = System.Guid

---@param input System.String
---@return System.Guid
function System.Guid.Parse(input)end
---@param input System.String
---@param result System.Guid
---@return System.Boolean
function System.Guid.TryParse(input, result)end
---@param input System.String
---@param format System.String
---@return System.Guid
function System.Guid.ParseExact(input, format)end
---@param input System.String
---@param format System.String
---@param result System.Guid
---@return System.Boolean
function System.Guid.TryParseExact(input, format, result)end
---@return System.Byte[]
function System.Guid:ToByteArray()end
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Guid:ToString()end
---@return System.Int32
function System.Guid:GetHashCode()end
---@overload fun(g:System.Guid):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Guid:Equals(o)end
---@overload fun(value:System.Guid):System.Int32
---@param value System.Object
---@return System.Int32
function System.Guid:CompareTo(value)end
---@param a System.Guid
---@param b System.Guid
---@return System.Boolean
function System.Guid.op_Equality(a, b)end
---@param a System.Guid
---@param b System.Guid
---@return System.Boolean
function System.Guid.op_Inequality(a, b)end
---@return System.Guid
function System.Guid.NewGuid()end
---@class System.IndexOutOfRangeException : System.SystemException
System.IndexOutOfRangeException = {}
---@type System.IndexOutOfRangeException
CS.System.IndexOutOfRangeException = System.IndexOutOfRangeException

---@class System.InsufficientExecutionStackException : System.SystemException
System.InsufficientExecutionStackException = {}
---@type System.InsufficientExecutionStackException
CS.System.InsufficientExecutionStackException = System.InsufficientExecutionStackException

---@class System.InsufficientMemoryException : System.OutOfMemoryException
System.InsufficientMemoryException = {}
---@type System.InsufficientMemoryException
CS.System.InsufficientMemoryException = System.InsufficientMemoryException

---@class System.Int16 : System.ValueType
---@field public MaxValue System.Int16
---@field public MinValue System.Int16
System.Int16 = {}
---@type System.Int16
CS.System.Int16 = System.Int16

---@overload fun(value:System.Object):System.Int32
---@param value System.Int16
---@return System.Int32
function System.Int16:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Int16
---@return System.Boolean
function System.Int16:Equals(obj)end
---@return System.Int32
function System.Int16:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Int16:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Int16
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Int16
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Int16
---@param s System.String
---@return System.Int16
function System.Int16.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Int16):System.Boolean
---@param s System.String
---@param result System.Int16
---@return System.Boolean
function System.Int16.TryParse(s, result)end
---@return System.TypeCode
function System.Int16:GetTypeCode()end
---@class System.Int32 : System.ValueType
---@field public MaxValue System.Int32
---@field public MinValue System.Int32
System.Int32 = {}
---@type System.Int32
CS.System.Int32 = System.Int32

---@overload fun(value:System.Object):System.Int32
---@param value System.Int32
---@return System.Int32
function System.Int32:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Int32
---@return System.Boolean
function System.Int32:Equals(obj)end
---@return System.Int32
function System.Int32:GetHashCode()end
---@overload fun(format:System.String):System.String
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Int32:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Int32
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Int32
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Int32
---@param s System.String
---@return System.Int32
function System.Int32.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Int32):System.Boolean
---@param s System.String
---@param result System.Int32
---@return System.Boolean
function System.Int32.TryParse(s, result)end
---@return System.TypeCode
function System.Int32:GetTypeCode()end
---@class System.Int64 : System.ValueType
---@field public MaxValue System.Int64
---@field public MinValue System.Int64
System.Int64 = {}
---@type System.Int64
CS.System.Int64 = System.Int64

---@overload fun(value:System.Object):System.Int32
---@param value System.Int64
---@return System.Int32
function System.Int64:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Int64
---@return System.Boolean
function System.Int64:Equals(obj)end
---@return System.Int32
function System.Int64:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Int64:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Int64
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Int64
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Int64
---@param s System.String
---@return System.Int64
function System.Int64.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Int64):System.Boolean
---@param s System.String
---@param result System.Int64
---@return System.Boolean
function System.Int64.TryParse(s, result)end
---@return System.TypeCode
function System.Int64:GetTypeCode()end
---@class System.InvalidCastException : System.SystemException
System.InvalidCastException = {}
---@type System.InvalidCastException
CS.System.InvalidCastException = System.InvalidCastException

---@class System.InvalidOperationException : System.SystemException
System.InvalidOperationException = {}
---@type System.InvalidOperationException
CS.System.InvalidOperationException = System.InvalidOperationException

---@class System.InvalidProgramException : System.SystemException
System.InvalidProgramException = {}
---@type System.InvalidProgramException
CS.System.InvalidProgramException = System.InvalidProgramException

---@class System.InvalidTimeZoneException : System.Exception
System.InvalidTimeZoneException = {}
---@type System.InvalidTimeZoneException
CS.System.InvalidTimeZoneException = System.InvalidTimeZoneException

---@class System.Math : System.Object
---@field public PI System.Double
---@field public E System.Double
System.Math = {}
---@type System.Math
CS.System.Math = System.Math

---@param d System.Double
---@return System.Double
function System.Math.Acos(d)end
---@param d System.Double
---@return System.Double
function System.Math.Asin(d)end
---@param d System.Double
---@return System.Double
function System.Math.Atan(d)end
---@param y System.Double
---@param x System.Double
---@return System.Double
function System.Math.Atan2(y, x)end
---@overload fun(d:System.Decimal):System.Decimal
---@param a System.Double
---@return System.Double
function System.Math.Ceiling(a)end
---@param d System.Double
---@return System.Double
function System.Math.Cos(d)end
---@param value System.Double
---@return System.Double
function System.Math.Cosh(value)end
---@overload fun(d:System.Decimal):System.Decimal
---@param d System.Double
---@return System.Double
function System.Math.Floor(d)end
---@param a System.Double
---@return System.Double
function System.Math.Sin(a)end
---@param a System.Double
---@return System.Double
function System.Math.Tan(a)end
---@param value System.Double
---@return System.Double
function System.Math.Sinh(value)end
---@param value System.Double
---@return System.Double
function System.Math.Tanh(value)end
---@overload fun(value:System.Double, digits:System.Int32):System.Double
---@overload fun(d:System.Decimal):System.Decimal
---@overload fun(value:System.Double, mode:System.MidpointRounding):System.Double
---@overload fun(d:System.Decimal, decimals:System.Int32):System.Decimal
---@overload fun(value:System.Double, digits:System.Int32, mode:System.MidpointRounding):System.Double
---@overload fun(d:System.Decimal, mode:System.MidpointRounding):System.Decimal
---@overload fun(d:System.Decimal, decimals:System.Int32, mode:System.MidpointRounding):System.Decimal
---@param a System.Double
---@return System.Double
function System.Math.Round(a)end
---@overload fun(d:System.Decimal):System.Decimal
---@param d System.Double
---@return System.Double
function System.Math.Truncate(d)end
---@param d System.Double
---@return System.Double
function System.Math.Sqrt(d)end
---@overload fun(a:System.Double, newBase:System.Double):System.Double
---@param d System.Double
---@return System.Double
function System.Math.Log(d)end
---@param d System.Double
---@return System.Double
function System.Math.Log10(d)end
---@param d System.Double
---@return System.Double
function System.Math.Exp(d)end
---@param x System.Double
---@param y System.Double
---@return System.Double
function System.Math.Pow(x, y)end
---@param x System.Double
---@param y System.Double
---@return System.Double
function System.Math.IEEERemainder(x, y)end
---@overload fun(value:System.Int16):System.Int16
---@overload fun(value:System.Int32):System.Int32
---@overload fun(value:System.Int64):System.Int64
---@overload fun(value:System.Single):System.Single
---@overload fun(value:System.Double):System.Double
---@overload fun(value:System.Decimal):System.Decimal
---@param value System.SByte
---@return System.SByte
function System.Math.Abs(value)end
---@overload fun(val1:System.Byte, val2:System.Byte):System.Byte
---@overload fun(val1:System.Int16, val2:System.Int16):System.Int16
---@overload fun(val1:System.UInt16, val2:System.UInt16):System.UInt16
---@overload fun(val1:System.Int32, val2:System.Int32):System.Int32
---@overload fun(val1:System.UInt32, val2:System.UInt32):System.UInt32
---@overload fun(val1:System.Int64, val2:System.Int64):System.Int64
---@overload fun(val1:System.UInt64, val2:System.UInt64):System.UInt64
---@overload fun(val1:System.Single, val2:System.Single):System.Single
---@overload fun(val1:System.Double, val2:System.Double):System.Double
---@overload fun(val1:System.Decimal, val2:System.Decimal):System.Decimal
---@param val1 System.SByte
---@param val2 System.SByte
---@return System.SByte
function System.Math.Max(val1, val2)end
---@overload fun(val1:System.Byte, val2:System.Byte):System.Byte
---@overload fun(val1:System.Int16, val2:System.Int16):System.Int16
---@overload fun(val1:System.UInt16, val2:System.UInt16):System.UInt16
---@overload fun(val1:System.Int32, val2:System.Int32):System.Int32
---@overload fun(val1:System.UInt32, val2:System.UInt32):System.UInt32
---@overload fun(val1:System.Int64, val2:System.Int64):System.Int64
---@overload fun(val1:System.UInt64, val2:System.UInt64):System.UInt64
---@overload fun(val1:System.Single, val2:System.Single):System.Single
---@overload fun(val1:System.Double, val2:System.Double):System.Double
---@overload fun(val1:System.Decimal, val2:System.Decimal):System.Decimal
---@param val1 System.SByte
---@param val2 System.SByte
---@return System.SByte
function System.Math.Min(val1, val2)end
---@overload fun(value:System.Int16):System.Int32
---@overload fun(value:System.Int32):System.Int32
---@overload fun(value:System.Int64):System.Int32
---@overload fun(value:System.Single):System.Int32
---@overload fun(value:System.Double):System.Int32
---@overload fun(value:System.Decimal):System.Int32
---@param value System.SByte
---@return System.Int32
function System.Math.Sign(value)end
---@param a System.Int32
---@param b System.Int32
---@return System.Int64
function System.Math.BigMul(a, b)end
---@overload fun(a:System.Int64, b:System.Int64, result:System.Int64):System.Int64
---@param a System.Int32
---@param b System.Int32
---@param result System.Int32
---@return System.Int32
function System.Math.DivRem(a, b, result)end
---@class System.MemberAccessException : System.SystemException
System.MemberAccessException = {}
---@type System.MemberAccessException
CS.System.MemberAccessException = System.MemberAccessException

---@class System.MethodAccessException : System.MemberAccessException
System.MethodAccessException = {}
---@type System.MethodAccessException
CS.System.MethodAccessException = System.MethodAccessException

---@class System.MidpointRounding : System.Enum
System.MidpointRounding = {}
---@type System.MidpointRounding
CS.System.MidpointRounding = System.MidpointRounding

---@return System.Int32 value:0
System.MidpointRounding.ToEven = 0
---@return System.Int32 value:1
System.MidpointRounding.AwayFromZero = 1

---@class System.MissingFieldException : System.MissingMemberException
---@field public Message System.String @  getter
System.MissingFieldException = {}
---@type System.MissingFieldException
CS.System.MissingFieldException = System.MissingFieldException

---@class System.MissingMemberException : System.MemberAccessException
---@field public Message System.String @  getter
System.MissingMemberException = {}
---@type System.MissingMemberException
CS.System.MissingMemberException = System.MissingMemberException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.MissingMemberException:GetObjectData(info, context)end
---@class System.MissingMethodException : System.MissingMemberException
---@field public Message System.String @  getter
System.MissingMethodException = {}
---@type System.MissingMethodException
CS.System.MissingMethodException = System.MissingMethodException

---@class System.MulticastNotSupportedException : System.SystemException
System.MulticastNotSupportedException = {}
---@type System.MulticastNotSupportedException
CS.System.MulticastNotSupportedException = System.MulticastNotSupportedException

---@class System.NonSerializedAttribute : System.Attribute
System.NonSerializedAttribute = {}
---@type System.NonSerializedAttribute
CS.System.NonSerializedAttribute = System.NonSerializedAttribute

---@class System.NotFiniteNumberException : System.ArithmeticException
---@field public OffendingNumber System.Double @  getter
System.NotFiniteNumberException = {}
---@type System.NotFiniteNumberException
CS.System.NotFiniteNumberException = System.NotFiniteNumberException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.NotFiniteNumberException:GetObjectData(info, context)end
---@class System.NotImplementedException : System.SystemException
System.NotImplementedException = {}
---@type System.NotImplementedException
CS.System.NotImplementedException = System.NotImplementedException

---@class System.NotSupportedException : System.SystemException
System.NotSupportedException = {}
---@type System.NotSupportedException
CS.System.NotSupportedException = System.NotSupportedException

---@class System.NullReferenceException : System.SystemException
System.NullReferenceException = {}
---@type System.NullReferenceException
CS.System.NullReferenceException = System.NullReferenceException

---@class System.ObjectDisposedException : System.InvalidOperationException
---@field public Message System.String @  getter
---@field public ObjectName System.String @  getter
System.ObjectDisposedException = {}
---@type System.ObjectDisposedException
CS.System.ObjectDisposedException = System.ObjectDisposedException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ObjectDisposedException:GetObjectData(info, context)end
---@class System.ObsoleteAttribute : System.Attribute
---@field public Message System.String @  getter
---@field public IsError System.Boolean @  getter
System.ObsoleteAttribute = {}
---@type System.ObsoleteAttribute
CS.System.ObsoleteAttribute = System.ObsoleteAttribute

---@class System.OperationCanceledException : System.SystemException
---@field public CancellationToken System.Threading.CancellationToken @ setter getter
System.OperationCanceledException = {}
---@type System.OperationCanceledException
CS.System.OperationCanceledException = System.OperationCanceledException

---@class System.OutOfMemoryException : System.SystemException
System.OutOfMemoryException = {}
---@type System.OutOfMemoryException
CS.System.OutOfMemoryException = System.OutOfMemoryException

---@class System.OverflowException : System.ArithmeticException
System.OverflowException = {}
---@type System.OverflowException
CS.System.OverflowException = System.OverflowException

---@class System.ParamArrayAttribute : System.Attribute
System.ParamArrayAttribute = {}
---@type System.ParamArrayAttribute
CS.System.ParamArrayAttribute = System.ParamArrayAttribute

---@class System.PlatformNotSupportedException : System.NotSupportedException
System.PlatformNotSupportedException = {}
---@type System.PlatformNotSupportedException
CS.System.PlatformNotSupportedException = System.PlatformNotSupportedException

---@class System.Progress : System.Object
System.Progress = {}
---@type System.Progress
CS.System.Progress = System.Progress

---@param value any
---@return System.Void
function System.Progress:add_ProgressChanged(value)end
---@param value any
---@return System.Void
function System.Progress:remove_ProgressChanged(value)end
---@class System.Random : System.Object
System.Random = {}
---@type System.Random
CS.System.Random = System.Random

---@overload fun(maxValue:System.Int32):System.Int32
---@overload fun(minValue:System.Int32, maxValue:System.Int32):System.Int32
---@return System.Int32
function System.Random:Next()end
---@return System.Double
function System.Random:NextDouble()end
---@param buffer System.Byte[]
---@return System.Void
function System.Random:NextBytes(buffer)end
---@class System.RankException : System.SystemException
System.RankException = {}
---@type System.RankException
CS.System.RankException = System.RankException

---@class System.SByte : System.ValueType
---@field public MaxValue System.SByte
---@field public MinValue System.SByte
System.SByte = {}
---@type System.SByte
CS.System.SByte = System.SByte

---@overload fun(obj:System.Object):System.Int32
---@param value System.SByte
---@return System.Int32
function System.SByte:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.SByte
---@return System.Boolean
function System.SByte:Equals(obj)end
---@return System.Int32
function System.SByte:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.SByte:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.SByte
---@overload fun(s:System.String, provider:System.IFormatProvider):System.SByte
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.SByte
---@param s System.String
---@return System.SByte
function System.SByte.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.SByte):System.Boolean
---@param s System.String
---@param result System.SByte
---@return System.Boolean
function System.SByte.TryParse(s, result)end
---@return System.TypeCode
function System.SByte:GetTypeCode()end
---@class System.SerializableAttribute : System.Attribute
System.SerializableAttribute = {}
---@type System.SerializableAttribute
CS.System.SerializableAttribute = System.SerializableAttribute

---@class System.Single : System.ValueType
---@field public MinValue System.Single
---@field public Epsilon System.Single
---@field public MaxValue System.Single
---@field public PositiveInfinity System.Single
---@field public NegativeInfinity System.Single
---@field public NaN System.Single
System.Single = {}
---@type System.Single
CS.System.Single = System.Single

---@param f System.Single
---@return System.Boolean
function System.Single.IsInfinity(f)end
---@param f System.Single
---@return System.Boolean
function System.Single.IsPositiveInfinity(f)end
---@param f System.Single
---@return System.Boolean
function System.Single.IsNegativeInfinity(f)end
---@param f System.Single
---@return System.Boolean
function System.Single.IsNaN(f)end
---@param f System.Single
---@return System.Boolean
function System.Single.IsFinite(f)end
---@overload fun(value:System.Object):System.Int32
---@param value System.Single
---@return System.Int32
function System.Single:CompareTo(value)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_Equality(left, right)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_Inequality(left, right)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_LessThan(left, right)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_GreaterThan(left, right)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_LessThanOrEqual(left, right)end
---@param left System.Single
---@param right System.Single
---@return System.Boolean
function System.Single.op_GreaterThanOrEqual(left, right)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.Single
---@return System.Boolean
function System.Single:Equals(obj)end
---@return System.Int32
function System.Single:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.Single:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.Single
---@overload fun(s:System.String, provider:System.IFormatProvider):System.Single
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Single
---@param s System.String
---@return System.Single
function System.Single.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Single):System.Boolean
---@param s System.String
---@param result System.Single
---@return System.Boolean
function System.Single.TryParse(s, result)end
---@return System.TypeCode
function System.Single:GetTypeCode()end
---@class System.StackOverflowException : System.SystemException
System.StackOverflowException = {}
---@type System.StackOverflowException
CS.System.StackOverflowException = System.StackOverflowException

---@class System.String : System.Object
---@field public Chars System.Char @  getter
---@field public Length System.Int32 @  getter
---@field public Empty System.String
System.String = {}
---@type System.String
CS.System.String = System.String

---@overload fun(separator:System.String, values:System.Object[]):System.String
---@overload fun(separator:System.String, values:any):System.String
---@overload fun(separator:System.String, values:System.Collections.Generic.IEnumerable):System.String
---@overload fun(separator:System.String, value:System.String[], startIndex:System.Int32, count:System.Int32):System.String
---@param separator System.String
---@param value System.String[]
---@return System.String
function System.String.Join(separator, value)end
---@overload fun(value:System.String):System.Boolean
---@overload fun(value:System.String, comparisonType:System.StringComparison):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.String:Equals(obj)end
---@overload fun(a:System.String, b:System.String, comparisonType:System.StringComparison):System.Boolean
---@param a System.String
---@param b System.String
---@return System.Boolean
function System.String.Equals(a, b)end
---@param a System.String
---@param b System.String
---@return System.Boolean
function System.String.op_Equality(a, b)end
---@param a System.String
---@param b System.String
---@return System.Boolean
function System.String.op_Inequality(a, b)end
---@param sourceIndex System.Int32
---@param destination System.Char[]
---@param destinationIndex System.Int32
---@param count System.Int32
---@return System.Void
function System.String:CopyTo(sourceIndex, destination, destinationIndex, count)end
---@overload fun(startIndex:System.Int32, length:System.Int32):System.Char[]
---@return System.Char[]
function System.String:ToCharArray()end
---@param value System.String
---@return System.Boolean
function System.String.IsNullOrEmpty(value)end
---@param value System.String
---@return System.Boolean
function System.String.IsNullOrWhiteSpace(value)end
---@return System.Int32
function System.String:GetHashCode()end
---@overload fun(separator:System.Char[], count:System.Int32):System.String[]
---@overload fun(separator:System.Char[], options:System.StringSplitOptions):System.String[]
---@overload fun(separator:System.String[], options:System.StringSplitOptions):System.String[]
---@overload fun(separator:System.Char[], count:System.Int32, options:System.StringSplitOptions):System.String[]
---@overload fun(separator:System.String[], count:System.Int32, options:System.StringSplitOptions):System.String[]
---@param separator System.Char[]
---@return System.String[]
function System.String:Split(separator)end
---@overload fun(startIndex:System.Int32, length:System.Int32):System.String
---@param startIndex System.Int32
---@return System.String
function System.String:Substring(startIndex)end
---@overload fun(trimChars:System.Char[]):System.String
---@return System.String
function System.String:Trim()end
---@param trimChars System.Char[]
---@return System.String
function System.String:TrimStart(trimChars)end
---@param trimChars System.Char[]
---@return System.String
function System.String:TrimEnd(trimChars)end
---@overload fun(normalizationForm:System.Text.NormalizationForm):System.Boolean
---@return System.Boolean
function System.String:IsNormalized()end
---@overload fun(normalizationForm:System.Text.NormalizationForm):System.String
---@return System.String
function System.String:Normalize()end
---@overload fun(strA:System.String, strB:System.String, ignoreCase:System.Boolean):System.Int32
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32):System.Int32
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32, ignoreCase:System.Boolean):System.Int32
---@overload fun(strA:System.String, strB:System.String, comparisonType:System.StringComparison):System.Int32
---@overload fun(strA:System.String, strB:System.String, ignoreCase:System.Boolean, culture:System.Globalization.CultureInfo):System.Int32
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32, comparisonType:System.StringComparison):System.Int32
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32, ignoreCase:System.Boolean, culture:System.Globalization.CultureInfo):System.Int32
---@overload fun(strA:System.String, strB:System.String, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):System.Int32
---@param strA System.String
---@param strB System.String
---@return System.Int32
function System.String.Compare(strA, strB)end
---@overload fun(strB:System.String):System.Int32
---@param value System.Object
---@return System.Int32
function System.String:CompareTo(value)end
---@overload fun(strA:System.String, indexA:System.Int32, strB:System.String, indexB:System.Int32, length:System.Int32):System.Int32
---@param strA System.String
---@param strB System.String
---@return System.Int32
function System.String.CompareOrdinal(strA, strB)end
---@param value System.String
---@return System.Boolean
function System.String:Contains(value)end
---@overload fun(value:System.String, comparisonType:System.StringComparison):System.Boolean
---@overload fun(value:System.String, ignoreCase:System.Boolean, culture:System.Globalization.CultureInfo):System.Boolean
---@param value System.String
---@return System.Boolean
function System.String:EndsWith(value)end
---@overload fun(value:System.Char, startIndex:System.Int32):System.Int32
---@overload fun(value:System.Char, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(value:System.String):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(value:System.String, comparisonType:System.StringComparison):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, comparisonType:System.StringComparison):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, count:System.Int32, comparisonType:System.StringComparison):System.Int32
---@param value System.Char
---@return System.Int32
function System.String:IndexOf(value)end
---@overload fun(anyOf:System.Char[], startIndex:System.Int32):System.Int32
---@overload fun(anyOf:System.Char[], startIndex:System.Int32, count:System.Int32):System.Int32
---@param anyOf System.Char[]
---@return System.Int32
function System.String:IndexOfAny(anyOf)end
---@overload fun(value:System.Char, startIndex:System.Int32):System.Int32
---@overload fun(value:System.Char, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(value:System.String):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(value:System.String, comparisonType:System.StringComparison):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, comparisonType:System.StringComparison):System.Int32
---@overload fun(value:System.String, startIndex:System.Int32, count:System.Int32, comparisonType:System.StringComparison):System.Int32
---@param value System.Char
---@return System.Int32
function System.String:LastIndexOf(value)end
---@overload fun(anyOf:System.Char[], startIndex:System.Int32):System.Int32
---@overload fun(anyOf:System.Char[], startIndex:System.Int32, count:System.Int32):System.Int32
---@param anyOf System.Char[]
---@return System.Int32
function System.String:LastIndexOfAny(anyOf)end
---@overload fun(totalWidth:System.Int32, paddingChar:System.Char):System.String
---@param totalWidth System.Int32
---@return System.String
function System.String:PadLeft(totalWidth)end
---@overload fun(totalWidth:System.Int32, paddingChar:System.Char):System.String
---@param totalWidth System.Int32
---@return System.String
function System.String:PadRight(totalWidth)end
---@overload fun(value:System.String, comparisonType:System.StringComparison):System.Boolean
---@overload fun(value:System.String, ignoreCase:System.Boolean, culture:System.Globalization.CultureInfo):System.Boolean
---@param value System.String
---@return System.Boolean
function System.String:StartsWith(value)end
---@overload fun(culture:System.Globalization.CultureInfo):System.String
---@return System.String
function System.String:ToLower()end
---@return System.String
function System.String:ToLowerInvariant()end
---@overload fun(culture:System.Globalization.CultureInfo):System.String
---@return System.String
function System.String:ToUpper()end
---@return System.String
function System.String:ToUpperInvariant()end
---@overload fun(provider:System.IFormatProvider):System.String
---@return System.String
function System.String:ToString()end
---@return System.Object
function System.String:Clone()end
---@param startIndex System.Int32
---@param value System.String
---@return System.String
function System.String:Insert(startIndex, value)end
---@overload fun(oldValue:System.String, newValue:System.String):System.String
---@param oldChar System.Char
---@param newChar System.Char
---@return System.String
function System.String:Replace(oldChar, newChar)end
---@overload fun(startIndex:System.Int32, count:System.Int32):System.String
---@param startIndex System.Int32
---@return System.String
function System.String:Remove(startIndex)end
---@overload fun(format:System.String, args:System.Object[]):System.String
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, args:System.Object[]):System.String
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@param format System.String
---@param arg0 System.Object
---@return System.String
function System.String.Format(format, arg0)end
---@param str System.String
---@return System.String
function System.String.Copy(str)end
---@overload fun(args:System.Object[]):System.String
---@overload fun(values:any):System.String
---@overload fun(values:System.Collections.Generic.IEnumerable):System.String
---@overload fun(values:System.String[]):System.String
---@overload fun(arg0:System.Object, arg1:System.Object):System.String
---@overload fun(str0:System.String, str1:System.String):System.String
---@overload fun(arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@overload fun(str0:System.String, str1:System.String, str2:System.String):System.String
---@overload fun(arg0:System.Object, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.String
---@overload fun(str0:System.String, str1:System.String, str2:System.String, str3:System.String):System.String
---@param arg0 System.Object
---@return System.String
function System.String.Concat(arg0)end
---@param str System.String
---@return System.String
function System.String.Intern(str)end
---@param str System.String
---@return System.String
function System.String.IsInterned(str)end
---@return System.TypeCode
function System.String:GetTypeCode()end
---@return System.CharEnumerator
function System.String:GetEnumerator()end
---@class System.StringSplitOptions : System.Enum
System.StringSplitOptions = {}
---@type System.StringSplitOptions
CS.System.StringSplitOptions = System.StringSplitOptions

---@return System.Int32 value:0
System.StringSplitOptions.None = 0
---@return System.Int32 value:1
System.StringSplitOptions.RemoveEmptyEntries = 1

---@class System.StringComparer : System.Object
---@field public InvariantCulture System.StringComparer @static  getter
---@field public InvariantCultureIgnoreCase System.StringComparer @static  getter
---@field public CurrentCulture System.StringComparer @static  getter
---@field public CurrentCultureIgnoreCase System.StringComparer @static  getter
---@field public Ordinal System.StringComparer @static  getter
---@field public OrdinalIgnoreCase System.StringComparer @static  getter
System.StringComparer = {}
---@type System.StringComparer
CS.System.StringComparer = System.StringComparer

---@param culture System.Globalization.CultureInfo
---@param ignoreCase System.Boolean
---@return System.StringComparer
function System.StringComparer.Create(culture, ignoreCase)end
---@overload fun(x:System.String, y:System.String):System.Int32
---@param x System.Object
---@param y System.Object
---@return System.Int32
function System.StringComparer:Compare(x, y)end
---@overload fun(x:System.String, y:System.String):System.Boolean
---@param x System.Object
---@param y System.Object
---@return System.Boolean
function System.StringComparer:Equals(x, y)end
---@overload fun(obj:System.String):System.Int32
---@param obj System.Object
---@return System.Int32
function System.StringComparer:GetHashCode(obj)end
---@class System.SystemException : System.Exception
System.SystemException = {}
---@type System.SystemException
CS.System.SystemException = System.SystemException

---@class System.STAThreadAttribute : System.Attribute
System.STAThreadAttribute = {}
---@type System.STAThreadAttribute
CS.System.STAThreadAttribute = System.STAThreadAttribute

---@class System.MTAThreadAttribute : System.Attribute
System.MTAThreadAttribute = {}
---@type System.MTAThreadAttribute
CS.System.MTAThreadAttribute = System.MTAThreadAttribute

---@class System.ThreadStaticAttribute : System.Attribute
System.ThreadStaticAttribute = {}
---@type System.ThreadStaticAttribute
CS.System.ThreadStaticAttribute = System.ThreadStaticAttribute

---@class System.TimeoutException : System.SystemException
System.TimeoutException = {}
---@type System.TimeoutException
CS.System.TimeoutException = System.TimeoutException

---@class System.TimeSpan : System.ValueType
---@field public Ticks System.Int64 @  getter
---@field public Days System.Int32 @  getter
---@field public Hours System.Int32 @  getter
---@field public Milliseconds System.Int32 @  getter
---@field public Minutes System.Int32 @  getter
---@field public Seconds System.Int32 @  getter
---@field public TotalDays System.Double @  getter
---@field public TotalHours System.Double @  getter
---@field public TotalMilliseconds System.Double @  getter
---@field public TotalMinutes System.Double @  getter
---@field public TotalSeconds System.Double @  getter
---@field public TicksPerMillisecond System.Int64
---@field public TicksPerSecond System.Int64
---@field public TicksPerMinute System.Int64
---@field public TicksPerHour System.Int64
---@field public TicksPerDay System.Int64
---@field public Zero System.TimeSpan
---@field public MaxValue System.TimeSpan
---@field public MinValue System.TimeSpan
System.TimeSpan = {}
---@type System.TimeSpan
CS.System.TimeSpan = System.TimeSpan

---@param ts System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan:Add(ts)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Int32
function System.TimeSpan.Compare(t1, t2)end
---@overload fun(value:System.TimeSpan):System.Int32
---@param value System.Object
---@return System.Int32
function System.TimeSpan:CompareTo(value)end
---@param value System.Double
---@return System.TimeSpan
function System.TimeSpan.FromDays(value)end
---@return System.TimeSpan
function System.TimeSpan:Duration()end
---@overload fun(obj:System.TimeSpan):System.Boolean
---@param value System.Object
---@return System.Boolean
function System.TimeSpan:Equals(value)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.Equals(t1, t2)end
---@return System.Int32
function System.TimeSpan:GetHashCode()end
---@param value System.Double
---@return System.TimeSpan
function System.TimeSpan.FromHours(value)end
---@param value System.Double
---@return System.TimeSpan
function System.TimeSpan.FromMilliseconds(value)end
---@param value System.Double
---@return System.TimeSpan
function System.TimeSpan.FromMinutes(value)end
---@return System.TimeSpan
function System.TimeSpan:Negate()end
---@param value System.Double
---@return System.TimeSpan
function System.TimeSpan.FromSeconds(value)end
---@param ts System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan:Subtract(ts)end
---@param value System.Int64
---@return System.TimeSpan
function System.TimeSpan.FromTicks(value)end
---@overload fun(input:System.String, formatProvider:System.IFormatProvider):System.TimeSpan
---@param s System.String
---@return System.TimeSpan
function System.TimeSpan.Parse(s)end
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider):System.TimeSpan
---@overload fun(input:System.String, format:System.String, formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles):System.TimeSpan
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles):System.TimeSpan
---@param input System.String
---@param format System.String
---@param formatProvider System.IFormatProvider
---@return System.TimeSpan
function System.TimeSpan.ParseExact(input, format, formatProvider)end
---@overload fun(input:System.String, formatProvider:System.IFormatProvider, result:System.TimeSpan):System.Boolean
---@param s System.String
---@param result System.TimeSpan
---@return System.Boolean
function System.TimeSpan.TryParse(s, result)end
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider, result:System.TimeSpan):System.Boolean
---@overload fun(input:System.String, format:System.String, formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles, result:System.TimeSpan):System.Boolean
---@overload fun(input:System.String, formats:System.String[], formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles, result:System.TimeSpan):System.Boolean
---@param input System.String
---@param format System.String
---@param formatProvider System.IFormatProvider
---@param result System.TimeSpan
---@return System.Boolean
function System.TimeSpan.TryParseExact(input, format, formatProvider, result)end
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function System.TimeSpan:ToString()end
---@param t System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan.op_UnaryNegation(t)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan.op_Subtraction(t1, t2)end
---@param t System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan.op_UnaryPlus(t)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan.op_Addition(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_Equality(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_Inequality(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_LessThan(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_LessThanOrEqual(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_GreaterThan(t1, t2)end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.Boolean
function System.TimeSpan.op_GreaterThanOrEqual(t1, t2)end
---@class System.TimeZoneInfo : System.Object
---@field public BaseUtcOffset System.TimeSpan @  getter
---@field public DaylightName System.String @  getter
---@field public DisplayName System.String @  getter
---@field public Id System.String @  getter
---@field public Local System.TimeZoneInfo @static  getter
---@field public StandardName System.String @  getter
---@field public SupportsDaylightSavingTime System.Boolean @  getter
---@field public Utc System.TimeZoneInfo @static  getter
System.TimeZoneInfo = {}
---@type System.TimeZoneInfo
CS.System.TimeZoneInfo = System.TimeZoneInfo

---@param source System.String
---@return System.TimeZoneInfo
function System.TimeZoneInfo.FromSerializedString(source)end
---@return System.String
function System.TimeZoneInfo:ToSerializedString()end
---@return System.Void
function System.TimeZoneInfo.ClearCachedData()end
---@overload fun(dateTimeOffset:System.DateTimeOffset, destinationTimeZone:System.TimeZoneInfo):System.DateTimeOffset
---@overload fun(dateTime:System.DateTime, sourceTimeZone:System.TimeZoneInfo, destinationTimeZone:System.TimeZoneInfo):System.DateTime
---@param dateTime System.DateTime
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function System.TimeZoneInfo.ConvertTime(dateTime, destinationTimeZone)end
---@overload fun(dateTimeOffset:System.DateTimeOffset, destinationTimeZoneId:System.String):System.DateTimeOffset
---@overload fun(dateTime:System.DateTime, sourceTimeZoneId:System.String, destinationTimeZoneId:System.String):System.DateTime
---@param dateTime System.DateTime
---@param destinationTimeZoneId System.String
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dateTime, destinationTimeZoneId)end
---@param dateTime System.DateTime
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeFromUtc(dateTime, destinationTimeZone)end
---@overload fun(dateTime:System.DateTime, sourceTimeZone:System.TimeZoneInfo):System.DateTime
---@param dateTime System.DateTime
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeToUtc(dateTime)end
---@overload fun(id:System.String, baseUtcOffset:System.TimeSpan, displayName:System.String, standardDisplayName:System.String, daylightDisplayName:System.String, adjustmentRules:System.TimeZoneInfo.AdjustmentRule[]):System.TimeZoneInfo
---@overload fun(id:System.String, baseUtcOffset:System.TimeSpan, displayName:System.String, standardDisplayName:System.String, daylightDisplayName:System.String, adjustmentRules:System.TimeZoneInfo.AdjustmentRule[], disableDaylightSavingTime:System.Boolean):System.TimeZoneInfo
---@param id System.String
---@param baseUtcOffset System.TimeSpan
---@param displayName System.String
---@param standardDisplayName System.String
---@return System.TimeZoneInfo
function System.TimeZoneInfo.CreateCustomTimeZone(id, baseUtcOffset, displayName, standardDisplayName)end
---@overload fun(other:System.TimeZoneInfo):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.TimeZoneInfo:Equals(obj)end
---@param id System.String
---@return System.TimeZoneInfo
function System.TimeZoneInfo.FindSystemTimeZoneById(id)end
---@return System.TimeZoneInfo.AdjustmentRule[]
function System.TimeZoneInfo:GetAdjustmentRules()end
---@overload fun(dateTimeOffset:System.DateTimeOffset):System.TimeSpan[]
---@param dateTime System.DateTime
---@return System.TimeSpan[]
function System.TimeZoneInfo:GetAmbiguousTimeOffsets(dateTime)end
---@return System.Int32
function System.TimeZoneInfo:GetHashCode()end
---@return System.Collections.ObjectModel.ReadOnlyCollection
function System.TimeZoneInfo.GetSystemTimeZones()end
---@overload fun(dateTimeOffset:System.DateTimeOffset):System.TimeSpan
---@param dateTime System.DateTime
---@return System.TimeSpan
function System.TimeZoneInfo:GetUtcOffset(dateTime)end
---@param other System.TimeZoneInfo
---@return System.Boolean
function System.TimeZoneInfo:HasSameRules(other)end
---@overload fun(dateTimeOffset:System.DateTimeOffset):System.Boolean
---@param dateTime System.DateTime
---@return System.Boolean
function System.TimeZoneInfo:IsAmbiguousTime(dateTime)end
---@overload fun(dateTimeOffset:System.DateTimeOffset):System.Boolean
---@param dateTime System.DateTime
---@return System.Boolean
function System.TimeZoneInfo:IsDaylightSavingTime(dateTime)end
---@param dateTime System.DateTime
---@return System.Boolean
function System.TimeZoneInfo:IsInvalidTime(dateTime)end
---@return System.String
function System.TimeZoneInfo:ToString()end
---@class System.TimeZoneInfo.AdjustmentRule : System.Object
---@field public DateStart System.DateTime @  getter
---@field public DateEnd System.DateTime @  getter
---@field public DaylightDelta System.TimeSpan @  getter
---@field public DaylightTransitionStart System.TimeZoneInfo.TransitionTime @  getter
---@field public DaylightTransitionEnd System.TimeZoneInfo.TransitionTime @  getter
System.TimeZoneInfo.AdjustmentRule = {}
---@type System.TimeZoneInfo.AdjustmentRule
CS.System.TimeZoneInfo.AdjustmentRule = System.TimeZoneInfo.AdjustmentRule

---@param other System.TimeZoneInfo.AdjustmentRule
---@return System.Boolean
function System.TimeZoneInfo.AdjustmentRule:Equals(other)end
---@return System.Int32
function System.TimeZoneInfo.AdjustmentRule:GetHashCode()end
---@param dateStart System.DateTime
---@param dateEnd System.DateTime
---@param daylightDelta System.TimeSpan
---@param daylightTransitionStart System.TimeZoneInfo.TransitionTime
---@param daylightTransitionEnd System.TimeZoneInfo.TransitionTime
---@return System.TimeZoneInfo.AdjustmentRule
function System.TimeZoneInfo.AdjustmentRule.CreateAdjustmentRule(dateStart, dateEnd, daylightDelta, daylightTransitionStart, daylightTransitionEnd)end
---@class System.TimeZoneInfo.TransitionTime : System.ValueType
---@field public TimeOfDay System.DateTime @  getter
---@field public Month System.Int32 @  getter
---@field public Week System.Int32 @  getter
---@field public Day System.Int32 @  getter
---@field public DayOfWeek System.DayOfWeek @  getter
---@field public IsFixedDateRule System.Boolean @  getter
System.TimeZoneInfo.TransitionTime = {}
---@type System.TimeZoneInfo.TransitionTime
CS.System.TimeZoneInfo.TransitionTime = System.TimeZoneInfo.TransitionTime

---@overload fun(other:System.TimeZoneInfo.TransitionTime):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.TimeZoneInfo.TransitionTime:Equals(obj)end
---@param t1 System.TimeZoneInfo.TransitionTime
---@param t2 System.TimeZoneInfo.TransitionTime
---@return System.Boolean
function System.TimeZoneInfo.TransitionTime.op_Equality(t1, t2)end
---@param t1 System.TimeZoneInfo.TransitionTime
---@param t2 System.TimeZoneInfo.TransitionTime
---@return System.Boolean
function System.TimeZoneInfo.TransitionTime.op_Inequality(t1, t2)end
---@return System.Int32
function System.TimeZoneInfo.TransitionTime:GetHashCode()end
---@param timeOfDay System.DateTime
---@param month System.Int32
---@param day System.Int32
---@return System.TimeZoneInfo.TransitionTime
function System.TimeZoneInfo.TransitionTime.CreateFixedDateRule(timeOfDay, month, day)end
---@param timeOfDay System.DateTime
---@param month System.Int32
---@param week System.Int32
---@param dayOfWeek System.DayOfWeek
---@return System.TimeZoneInfo.TransitionTime
function System.TimeZoneInfo.TransitionTime.CreateFloatingDateRule(timeOfDay, month, week, dayOfWeek)end
---@class System.TimeZoneNotFoundException : System.Exception
System.TimeZoneNotFoundException = {}
---@type System.TimeZoneNotFoundException
CS.System.TimeZoneNotFoundException = System.TimeZoneNotFoundException

---@class System.Type : System.Reflection.MemberInfo
---@field public MemberType System.Reflection.MemberTypes @  getter
---@field public DeclaringType System.Type @  getter
---@field public DeclaringMethod System.Reflection.MethodBase @  getter
---@field public ReflectedType System.Type @  getter
---@field public StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute @  getter
---@field public GUID System.Guid @  getter
---@field public DefaultBinder System.Reflection.Binder @static  getter
---@field public Module System.Reflection.Module @  getter
---@field public Assembly System.Reflection.Assembly @  getter
---@field public TypeHandle System.RuntimeTypeHandle @  getter
---@field public FullName System.String @  getter
---@field public Namespace System.String @  getter
---@field public AssemblyQualifiedName System.String @  getter
---@field public BaseType System.Type @  getter
---@field public TypeInitializer System.Reflection.ConstructorInfo @  getter
---@field public IsNested System.Boolean @  getter
---@field public Attributes System.Reflection.TypeAttributes @  getter
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes @  getter
---@field public IsVisible System.Boolean @  getter
---@field public IsNotPublic System.Boolean @  getter
---@field public IsPublic System.Boolean @  getter
---@field public IsNestedPublic System.Boolean @  getter
---@field public IsNestedPrivate System.Boolean @  getter
---@field public IsNestedFamily System.Boolean @  getter
---@field public IsNestedAssembly System.Boolean @  getter
---@field public IsNestedFamANDAssem System.Boolean @  getter
---@field public IsNestedFamORAssem System.Boolean @  getter
---@field public IsAutoLayout System.Boolean @  getter
---@field public IsLayoutSequential System.Boolean @  getter
---@field public IsExplicitLayout System.Boolean @  getter
---@field public IsClass System.Boolean @  getter
---@field public IsInterface System.Boolean @  getter
---@field public IsValueType System.Boolean @  getter
---@field public IsAbstract System.Boolean @  getter
---@field public IsSealed System.Boolean @  getter
---@field public IsEnum System.Boolean @  getter
---@field public IsSpecialName System.Boolean @  getter
---@field public IsImport System.Boolean @  getter
---@field public IsSerializable System.Boolean @  getter
---@field public IsAnsiClass System.Boolean @  getter
---@field public IsUnicodeClass System.Boolean @  getter
---@field public IsAutoClass System.Boolean @  getter
---@field public IsArray System.Boolean @  getter
---@field public IsGenericType System.Boolean @  getter
---@field public IsGenericTypeDefinition System.Boolean @  getter
---@field public IsConstructedGenericType System.Boolean @  getter
---@field public IsGenericParameter System.Boolean @  getter
---@field public GenericParameterPosition System.Int32 @  getter
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public IsByRef System.Boolean @  getter
---@field public IsPointer System.Boolean @  getter
---@field public IsPrimitive System.Boolean @  getter
---@field public IsCOMObject System.Boolean @  getter
---@field public HasElementType System.Boolean @  getter
---@field public IsContextful System.Boolean @  getter
---@field public IsMarshalByRef System.Boolean @  getter
---@field public GenericTypeArguments System.Type[] @  getter
---@field public IsSecurityCritical System.Boolean @  getter
---@field public IsSecuritySafeCritical System.Boolean @  getter
---@field public IsSecurityTransparent System.Boolean @  getter
---@field public UnderlyingSystemType System.Type @  getter
---@field public IsSZArray System.Boolean @  getter
---@field public FilterAttribute System.Reflection.MemberFilter
---@field public FilterName System.Reflection.MemberFilter
---@field public FilterNameIgnoreCase System.Reflection.MemberFilter
---@field public Missing System.Object
---@field public Delimiter System.Char
---@field public EmptyTypes System.Type[]
System.Type = {}
---@type System.Type
CS.System.Type = System.Type

---@overload fun(typeName:System.String, throwOnError:System.Boolean):System.Type
---@overload fun(typeName:System.String, throwOnError:System.Boolean, ignoreCase:System.Boolean):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func, throwOnError:System.Boolean):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func, throwOnError:System.Boolean, ignoreCase:System.Boolean):System.Type
---@param typeName System.String
---@return System.Type
function System.Type.GetType(typeName)end
---@return System.Type
function System.Type:MakePointerType()end
---@return System.Type
function System.Type:MakeByRefType()end
---@overload fun(rank:System.Int32):System.Type
---@return System.Type
function System.Type:MakeArrayType()end
---@overload fun(progID:System.String, throwOnError:System.Boolean):System.Type
---@overload fun(progID:System.String, server:System.String):System.Type
---@overload fun(progID:System.String, server:System.String, throwOnError:System.Boolean):System.Type
---@param progID System.String
---@return System.Type
function System.Type.GetTypeFromProgID(progID)end
---@overload fun(clsid:System.Guid, throwOnError:System.Boolean):System.Type
---@overload fun(clsid:System.Guid, server:System.String):System.Type
---@overload fun(clsid:System.Guid, server:System.String, throwOnError:System.Boolean):System.Type
---@param clsid System.Guid
---@return System.Type
function System.Type.GetTypeFromCLSID(clsid)end
---@param type System.Type
---@return System.TypeCode
function System.Type.GetTypeCode(type)end
---@overload fun(name:System.String, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:System.Object, args:System.Object[], culture:System.Globalization.CultureInfo):System.Object
---@overload fun(name:System.String, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:System.Object, args:System.Object[], modifiers:System.Reflection.ParameterModifier[], culture:System.Globalization.CultureInfo, namedParameters:System.String[]):System.Object
---@param name System.String
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@return System.Object
function System.Type:InvokeMember(name, invokeAttr, binder, target, args)end
---@param o System.Object
---@return System.RuntimeTypeHandle
function System.Type.GetTypeHandle(o)end
---@return System.Int32
function System.Type:GetArrayRank()end
---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.ConstructorInfo
---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.ConstructorInfo
---@param types System.Type[]
---@return System.Reflection.ConstructorInfo
function System.Type:GetConstructor(types)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.ConstructorInfo[]
---@return System.Reflection.ConstructorInfo[]
function System.Type:GetConstructors()end
---@overload fun(name:System.String, types:System.Type[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MethodInfo
---@overload fun(name:System.String, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@param name System.String
---@return System.Reflection.MethodInfo
function System.Type:GetMethod(name)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.MethodInfo[]
---@return System.Reflection.MethodInfo[]
function System.Type:GetMethods()end
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.FieldInfo
---@param name System.String
---@return System.Reflection.FieldInfo
function System.Type:GetField(name)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.FieldInfo[]
---@return System.Reflection.FieldInfo[]
function System.Type:GetFields()end
---@overload fun(name:System.String, ignoreCase:System.Boolean):System.Type
---@param name System.String
---@return System.Type
function System.Type:GetInterface(name)end
---@return System.Type[]
function System.Type:GetInterfaces()end
---@param filter System.Reflection.TypeFilter
---@param filterCriteria System.Object
---@return System.Type[]
function System.Type:FindInterfaces(filter, filterCriteria)end
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo
---@param name System.String
---@return System.Reflection.EventInfo
function System.Type:GetEvent(name)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo[]
---@return System.Reflection.EventInfo[]
function System.Type:GetEvents()end
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.PropertyInfo
---@overload fun(name:System.String, types:System.Type[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type, types:System.Type[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.PropertyInfo
---@param name System.String
---@return System.Reflection.PropertyInfo
function System.Type:GetProperty(name)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.PropertyInfo[]
---@return System.Reflection.PropertyInfo[]
function System.Type:GetProperties()end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Type[]
---@return System.Type[]
function System.Type:GetNestedTypes()end
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Type
---@param name System.String
---@return System.Type
function System.Type:GetNestedType(name)end
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@overload fun(name:System.String, type:System.Reflection.MemberTypes, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@param name System.String
---@return System.Reflection.MemberInfo[]
function System.Type:GetMember(name)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@return System.Reflection.MemberInfo[]
function System.Type:GetMembers()end
---@return System.Reflection.MemberInfo[]
function System.Type:GetDefaultMembers()end
---@param memberType System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@param filter System.Reflection.MemberFilter
---@param filterCriteria System.Object
---@return System.Reflection.MemberInfo[]
function System.Type:FindMembers(memberType, bindingAttr, filter, filterCriteria)end
---@return System.Type[]
function System.Type:GetGenericParameterConstraints()end
---@param typeArguments System.Type[]
---@return System.Type
function System.Type:MakeGenericType(typeArguments)end
---@return System.Type
function System.Type:GetElementType()end
---@return System.Type[]
function System.Type:GetGenericArguments()end
---@return System.Type
function System.Type:GetGenericTypeDefinition()end
---@return System.String[]
function System.Type:GetEnumNames()end
---@return System.Array
function System.Type:GetEnumValues()end
---@return System.Type
function System.Type:GetEnumUnderlyingType()end
---@param value System.Object
---@return System.Boolean
function System.Type:IsEnumDefined(value)end
---@param value System.Object
---@return System.String
function System.Type:GetEnumName(value)end
---@param c System.Type
---@return System.Boolean
function System.Type:IsSubclassOf(c)end
---@param o System.Object
---@return System.Boolean
function System.Type:IsInstanceOfType(o)end
---@param c System.Type
---@return System.Boolean
function System.Type:IsAssignableFrom(c)end
---@param other System.Type
---@return System.Boolean
function System.Type:IsEquivalentTo(other)end
---@return System.String
function System.Type:ToString()end
---@param args System.Object[]
---@return System.Type[]
function System.Type.GetTypeArray(args)end
---@overload fun(o:System.Type):System.Boolean
---@param o System.Object
---@return System.Boolean
function System.Type:Equals(o)end
---@param left System.Type
---@param right System.Type
---@return System.Boolean
function System.Type.op_Equality(left, right)end
---@param left System.Type
---@param right System.Type
---@return System.Boolean
function System.Type.op_Inequality(left, right)end
---@return System.Int32
function System.Type:GetHashCode()end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Type:GetInterfaceMap(interfaceType)end
---@return System.Type
function System.Type:GetType()end
---@param typeName System.String
---@param throwIfNotFound System.Boolean
---@param ignoreCase System.Boolean
---@return System.Type
function System.Type.ReflectionOnlyGetType(typeName, throwIfNotFound, ignoreCase)end
---@param handle System.RuntimeTypeHandle
---@return System.Type
function System.Type.GetTypeFromHandle(handle)end
---@class System.TypeAccessException : System.TypeLoadException
System.TypeAccessException = {}
---@type System.TypeAccessException
CS.System.TypeAccessException = System.TypeAccessException

---@class System.TypedReference : System.ValueType
System.TypedReference = {}
---@type System.TypedReference
CS.System.TypedReference = System.TypedReference

---@param target System.Object
---@param flds System.Reflection.FieldInfo[]
---@return System.TypedReference
function System.TypedReference.MakeTypedReference(target, flds)end
---@return System.Int32
function System.TypedReference:GetHashCode()end
---@param o System.Object
---@return System.Boolean
function System.TypedReference:Equals(o)end
---@param value System.TypedReference
---@return System.Object
function System.TypedReference.ToObject(value)end
---@param value System.TypedReference
---@return System.Type
function System.TypedReference.GetTargetType(value)end
---@param value System.TypedReference
---@return System.RuntimeTypeHandle
function System.TypedReference.TargetTypeToken(value)end
---@param target System.TypedReference
---@param value System.Object
---@return System.Void
function System.TypedReference.SetTypedReference(target, value)end
---@class System.TypeInitializationException : System.SystemException
---@field public TypeName System.String @  getter
System.TypeInitializationException = {}
---@type System.TypeInitializationException
CS.System.TypeInitializationException = System.TypeInitializationException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.TypeInitializationException:GetObjectData(info, context)end
---@class System.TypeLoadException : System.SystemException
---@field public Message System.String @  getter
---@field public TypeName System.String @  getter
System.TypeLoadException = {}
---@type System.TypeLoadException
CS.System.TypeLoadException = System.TypeLoadException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.TypeLoadException:GetObjectData(info, context)end
---@class System.TypeUnloadedException : System.SystemException
System.TypeUnloadedException = {}
---@type System.TypeUnloadedException
CS.System.TypeUnloadedException = System.TypeUnloadedException

---@class System.UInt16 : System.ValueType
---@field public MaxValue System.UInt16
---@field public MinValue System.UInt16
System.UInt16 = {}
---@type System.UInt16
CS.System.UInt16 = System.UInt16

---@overload fun(value:System.Object):System.Int32
---@param value System.UInt16
---@return System.Int32
function System.UInt16:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.UInt16
---@return System.Boolean
function System.UInt16:Equals(obj)end
---@return System.Int32
function System.UInt16:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.UInt16:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.UInt16
---@overload fun(s:System.String, provider:System.IFormatProvider):System.UInt16
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.UInt16
---@param s System.String
---@return System.UInt16
function System.UInt16.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.UInt16):System.Boolean
---@param s System.String
---@param result System.UInt16
---@return System.Boolean
function System.UInt16.TryParse(s, result)end
---@return System.TypeCode
function System.UInt16:GetTypeCode()end
---@class System.UInt32 : System.ValueType
---@field public MaxValue System.UInt32
---@field public MinValue System.UInt32
System.UInt32 = {}
---@type System.UInt32
CS.System.UInt32 = System.UInt32

---@overload fun(value:System.Object):System.Int32
---@param value System.UInt32
---@return System.Int32
function System.UInt32:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.UInt32
---@return System.Boolean
function System.UInt32:Equals(obj)end
---@return System.Int32
function System.UInt32:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.UInt32:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.UInt32
---@overload fun(s:System.String, provider:System.IFormatProvider):System.UInt32
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.UInt32
---@param s System.String
---@return System.UInt32
function System.UInt32.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.UInt32):System.Boolean
---@param s System.String
---@param result System.UInt32
---@return System.Boolean
function System.UInt32.TryParse(s, result)end
---@return System.TypeCode
function System.UInt32:GetTypeCode()end
---@class System.UInt64 : System.ValueType
---@field public MaxValue System.UInt64
---@field public MinValue System.UInt64
System.UInt64 = {}
---@type System.UInt64
CS.System.UInt64 = System.UInt64

---@overload fun(value:System.Object):System.Int32
---@param value System.UInt64
---@return System.Int32
function System.UInt64:CompareTo(value)end
---@overload fun(obj:System.Object):System.Boolean
---@param obj System.UInt64
---@return System.Boolean
function System.UInt64:Equals(obj)end
---@return System.Int32
function System.UInt64:GetHashCode()end
---@overload fun(provider:System.IFormatProvider):System.String
---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, provider:System.IFormatProvider):System.String
---@return System.String
function System.UInt64:ToString()end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles):System.UInt64
---@overload fun(s:System.String, provider:System.IFormatProvider):System.UInt64
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.UInt64
---@param s System.String
---@return System.UInt64
function System.UInt64.Parse(s)end
---@overload fun(s:System.String, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.UInt64):System.Boolean
---@param s System.String
---@param result System.UInt64
---@return System.Boolean
function System.UInt64.TryParse(s, result)end
---@return System.TypeCode
function System.UInt64:GetTypeCode()end
---@class System.UnauthorizedAccessException : System.SystemException
System.UnauthorizedAccessException = {}
---@type System.UnauthorizedAccessException
CS.System.UnauthorizedAccessException = System.UnauthorizedAccessException

---@class System.UnhandledExceptionEventArgs : System.EventArgs
---@field public ExceptionObject System.Object @  getter
---@field public IsTerminating System.Boolean @  getter
System.UnhandledExceptionEventArgs = {}
---@type System.UnhandledExceptionEventArgs
CS.System.UnhandledExceptionEventArgs = System.UnhandledExceptionEventArgs

---@class System.Version : System.Object
---@field public Major System.Int32 @  getter
---@field public Minor System.Int32 @  getter
---@field public Build System.Int32 @  getter
---@field public Revision System.Int32 @  getter
---@field public MajorRevision System.Int16 @  getter
---@field public MinorRevision System.Int16 @  getter
System.Version = {}
---@type System.Version
CS.System.Version = System.Version

---@return System.Object
function System.Version:Clone()end
---@overload fun(value:System.Version):System.Int32
---@param version System.Object
---@return System.Int32
function System.Version:CompareTo(version)end
---@overload fun(obj:System.Version):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Version:Equals(obj)end
---@return System.Int32
function System.Version:GetHashCode()end
---@overload fun(fieldCount:System.Int32):System.String
---@return System.String
function System.Version:ToString()end
---@param input System.String
---@return System.Version
function System.Version.Parse(input)end
---@param input System.String
---@param result System.Version
---@return System.Boolean
function System.Version.TryParse(input, result)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_Equality(v1, v2)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_Inequality(v1, v2)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_LessThan(v1, v2)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_LessThanOrEqual(v1, v2)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_GreaterThan(v1, v2)end
---@param v1 System.Version
---@param v2 System.Version
---@return System.Boolean
function System.Version.op_GreaterThanOrEqual(v1, v2)end
---@class System.AppDomain : System.MarshalByRefObject
---@field public SetupInformation System.AppDomainSetup @  getter
---@field public ApplicationTrust System.Security.Policy.ApplicationTrust @  getter
---@field public BaseDirectory System.String @  getter
---@field public RelativeSearchPath System.String @  getter
---@field public DynamicDirectory System.String @  getter
---@field public ShadowCopyFiles System.Boolean @  getter
---@field public FriendlyName System.String @  getter
---@field public Evidence System.Security.Policy.Evidence @  getter
---@field public PermissionSet System.Security.PermissionSet @  getter
---@field public CurrentDomain System.AppDomain @static  getter
---@field public IsHomogenous System.Boolean @  getter
---@field public IsFullyTrusted System.Boolean @  getter
---@field public DomainManager System.AppDomainManager @  getter
---@field public ActivationContext System.ActivationContext @  getter
---@field public ApplicationIdentity System.ApplicationIdentity @  getter
---@field public Id System.Int32 @  getter
---@field public MonitoringIsEnabled System.Boolean @static setter getter
---@field public MonitoringSurvivedMemorySize System.Int64 @  getter
---@field public MonitoringSurvivedProcessMemorySize System.Int64 @static  getter
---@field public MonitoringTotalAllocatedMemorySize System.Int64 @  getter
---@field public MonitoringTotalProcessorTime System.TimeSpan @  getter
System.AppDomain = {}
---@type System.AppDomain
CS.System.AppDomain = System.AppDomain

---@param path System.String
---@return System.Void
function System.AppDomain:AppendPrivatePath(path)end
---@return System.Void
function System.AppDomain:ClearPrivatePath()end
---@return System.Void
function System.AppDomain:ClearShadowCopyPath()end
---@overload fun(assemblyFile:System.String, typeName:System.String, hashValue:System.Byte[], hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):System.Runtime.Remoting.ObjectHandle
---@param assemblyName System.String
---@param typeName System.String
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateComInstanceFrom(assemblyName, typeName)end
---@overload fun(assemblyName:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@param assemblyName System.String
---@param typeName System.String
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateInstance(assemblyName, typeName)end
---@overload fun(assemblyName:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Object
---@param assemblyName System.String
---@param typeName System.String
---@return System.Object
function System.AppDomain:CreateInstanceAndUnwrap(assemblyName, typeName)end
---@overload fun(assemblyFile:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Runtime.Remoting.ObjectHandle
---@param assemblyFile System.String
---@param typeName System.String
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateInstanceFrom(assemblyFile, typeName)end
---@overload fun(assemblyName:System.String, typeName:System.String, activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyFile:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[]):System.Object
---@overload fun(assemblyName:System.String, typeName:System.String, ignoreCase:System.Boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:System.Object[], culture:System.Globalization.CultureInfo, activationAttributes:System.Object[], securityAttributes:System.Security.Policy.Evidence):System.Object
---@param assemblyName System.String
---@param typeName System.String
---@return System.Object
function System.AppDomain:CreateInstanceFromAndUnwrap(assemblyName, typeName)end
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, evidence:System.Security.Policy.Evidence):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable, securityContextSource:System.Security.SecurityContextSource):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, isSynchronized:System.Boolean, assemblyAttributes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet, isSynchronized:System.Boolean):System.Reflection.Emit.AssemblyBuilder
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:System.String, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet, isSynchronized:System.Boolean, assemblyAttributes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.AssemblyBuilder
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@return System.Reflection.Emit.AssemblyBuilder
function System.AppDomain:DefineDynamicAssembly(name, access)end
---@param callBackDelegate System.CrossAppDomainDelegate
---@return System.Void
function System.AppDomain:DoCallBack(callBackDelegate)end
---@overload fun(assemblyFile:System.String, assemblySecurity:System.Security.Policy.Evidence):System.Int32
---@overload fun(assemblyFile:System.String, args:System.String[]):System.Int32
---@overload fun(assemblyFile:System.String, assemblySecurity:System.Security.Policy.Evidence, args:System.String[]):System.Int32
---@overload fun(assemblyFile:System.String, args:System.String[], hashValue:System.Byte[], hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):System.Int32
---@overload fun(assemblyFile:System.String, assemblySecurity:System.Security.Policy.Evidence, args:System.String[], hashValue:System.Byte[], hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):System.Int32
---@param assemblyFile System.String
---@return System.Int32
function System.AppDomain:ExecuteAssembly(assemblyFile)end
---@return System.Reflection.Assembly[]
function System.AppDomain:GetAssemblies()end
---@param name System.String
---@return System.Object
function System.AppDomain:GetData(name)end
---@return System.Type
function System.AppDomain:GetType()end
---@return System.Object
function System.AppDomain:InitializeLifetimeService()end
---@overload fun(assemblyString:System.String):System.Reflection.Assembly
---@overload fun(rawAssembly:System.Byte[]):System.Reflection.Assembly
---@overload fun(assemblyRef:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence):System.Reflection.Assembly
---@overload fun(assemblyString:System.String, assemblySecurity:System.Security.Policy.Evidence):System.Reflection.Assembly
---@overload fun(rawAssembly:System.Byte[], rawSymbolStore:System.Byte[]):System.Reflection.Assembly
---@overload fun(rawAssembly:System.Byte[], rawSymbolStore:System.Byte[], securityEvidence:System.Security.Policy.Evidence):System.Reflection.Assembly
---@param assemblyRef System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function System.AppDomain:Load(assemblyRef)end
---@param domainPolicy System.Security.Policy.PolicyLevel
---@return System.Void
function System.AppDomain:SetAppDomainPolicy(domainPolicy)end
---@param path System.String
---@return System.Void
function System.AppDomain:SetCachePath(path)end
---@param policy System.Security.Principal.PrincipalPolicy
---@return System.Void
function System.AppDomain:SetPrincipalPolicy(policy)end
---@return System.Void
function System.AppDomain:SetShadowCopyFiles()end
---@param path System.String
---@return System.Void
function System.AppDomain:SetShadowCopyPath(path)end
---@param principal System.Security.Principal.IPrincipal
---@return System.Void
function System.AppDomain:SetThreadPrincipal(principal)end
---@overload fun(friendlyName:System.String, securityInfo:System.Security.Policy.Evidence):System.AppDomain
---@overload fun(friendlyName:System.String, securityInfo:System.Security.Policy.Evidence, info:System.AppDomainSetup):System.AppDomain
---@overload fun(friendlyName:System.String, securityInfo:System.Security.Policy.Evidence, appBasePath:System.String, appRelativeSearchPath:System.String, shadowCopyFiles:System.Boolean):System.AppDomain
---@overload fun(friendlyName:System.String, securityInfo:System.Security.Policy.Evidence, info:System.AppDomainSetup, grantSet:System.Security.PermissionSet, fullTrustAssemblies:System.Security.Policy.StrongName[]):System.AppDomain
---@overload fun(friendlyName:System.String, securityInfo:System.Security.Policy.Evidence, appBasePath:System.String, appRelativeSearchPath:System.String, shadowCopyFiles:System.Boolean, adInit:System.AppDomainInitializer, adInitArgs:System.String[]):System.AppDomain
---@param friendlyName System.String
---@return System.AppDomain
function System.AppDomain.CreateDomain(friendlyName)end
---@return System.Boolean
function System.AppDomain:IsFinalizingForUnload()end
---@param domain System.AppDomain
---@return System.Void
function System.AppDomain.Unload(domain)end
---@overload fun(name:System.String, data:System.Object, permission:System.Security.IPermission):System.Void
---@param name System.String
---@param data System.Object
---@return System.Void
function System.AppDomain:SetData(name, data)end
---@param path System.String
---@return System.Void
function System.AppDomain:SetDynamicBase(path)end
---@return System.Int32
function System.AppDomain.GetCurrentThreadId()end
---@return System.String
function System.AppDomain:ToString()end
---@param value System.AssemblyLoadEventHandler
---@return System.Void
function System.AppDomain:add_AssemblyLoad(value)end
---@param value System.AssemblyLoadEventHandler
---@return System.Void
function System.AppDomain:remove_AssemblyLoad(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:add_AssemblyResolve(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:remove_AssemblyResolve(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:add_DomainUnload(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:remove_DomainUnload(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:add_ProcessExit(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:remove_ProcessExit(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:add_ResourceResolve(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:remove_ResourceResolve(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:add_TypeResolve(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:remove_TypeResolve(value)end
---@param value System.UnhandledExceptionEventHandler
---@return System.Void
function System.AppDomain:add_UnhandledException(value)end
---@param value System.UnhandledExceptionEventHandler
---@return System.Void
function System.AppDomain:remove_UnhandledException(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:add_FirstChanceException(value)end
---@param value System.EventHandler
---@return System.Void
function System.AppDomain:remove_FirstChanceException(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:add_ReflectionOnlyAssemblyResolve(value)end
---@param value System.ResolveEventHandler
---@return System.Void
function System.AppDomain:remove_ReflectionOnlyAssemblyResolve(value)end
---@param assemblyName System.String
---@return System.String
function System.AppDomain:ApplyPolicy(assemblyName)end
---@overload fun(assemblyName:System.String, assemblySecurity:System.Security.Policy.Evidence):System.Int32
---@overload fun(assemblyName:System.String, args:System.String[]):System.Int32
---@overload fun(assemblyName:System.Reflection.AssemblyName, args:System.String[]):System.Int32
---@overload fun(assemblyName:System.String, assemblySecurity:System.Security.Policy.Evidence, args:System.String[]):System.Int32
---@overload fun(assemblyName:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence, args:System.String[]):System.Int32
---@param assemblyName System.String
---@return System.Int32
function System.AppDomain:ExecuteAssemblyByName(assemblyName)end
---@return System.Boolean
function System.AppDomain:IsDefaultAppDomain()end
---@return System.Reflection.Assembly[]
function System.AppDomain:ReflectionOnlyGetAssemblies()end
---@param value System.String
---@return System.Nullable
function System.AppDomain:IsCompatibilitySwitchSet(value)end
---@class System.Environment : System.Object
---@field public CommandLine System.String @static  getter
---@field public CurrentDirectory System.String @static setter getter
---@field public CurrentManagedThreadId System.Int32 @static  getter
---@field public ExitCode System.Int32 @static setter getter
---@field public HasShutdownStarted System.Boolean @static  getter
---@field public MachineName System.String @static  getter
---@field public NewLine System.String @static  getter
---@field public OSVersion System.OperatingSystem @static  getter
---@field public StackTrace System.String @static  getter
---@field public SystemDirectory System.String @static  getter
---@field public TickCount System.Int32 @static  getter
---@field public UserDomainName System.String @static  getter
---@field public UserInteractive System.Boolean @static  getter
---@field public UserName System.String @static  getter
---@field public Version System.Version @static  getter
---@field public WorkingSet System.Int64 @static  getter
---@field public Is64BitOperatingSystem System.Boolean @static  getter
---@field public SystemPageSize System.Int32 @static  getter
---@field public Is64BitProcess System.Boolean @static  getter
---@field public ProcessorCount System.Int32 @static  getter
System.Environment = {}
---@type System.Environment
CS.System.Environment = System.Environment

---@param exitCode System.Int32
---@return System.Void
function System.Environment.Exit(exitCode)end
---@param name System.String
---@return System.String
function System.Environment.ExpandEnvironmentVariables(name)end
---@return System.String[]
function System.Environment.GetCommandLineArgs()end
---@overload fun(variable:System.String, target:System.EnvironmentVariableTarget):System.String
---@param variable System.String
---@return System.String
function System.Environment.GetEnvironmentVariable(variable)end
---@overload fun(target:System.EnvironmentVariableTarget):System.Collections.IDictionary
---@return System.Collections.IDictionary
function System.Environment.GetEnvironmentVariables()end
---@overload fun(folder:System.Environment.SpecialFolder, option:System.Environment.SpecialFolderOption):System.String
---@param folder System.Environment.SpecialFolder
---@return System.String
function System.Environment.GetFolderPath(folder)end
---@return System.String[]
function System.Environment.GetLogicalDrives()end
---@overload fun(variable:System.String, value:System.String, target:System.EnvironmentVariableTarget):System.Void
---@param variable System.String
---@param value System.String
---@return System.Void
function System.Environment.SetEnvironmentVariable(variable, value)end
---@overload fun(message:System.String, exception:System.Exception):System.Void
---@param message System.String
---@return System.Void
function System.Environment.FailFast(message)end
---@class System.Environment.SpecialFolder : System.Enum
System.Environment.SpecialFolder = {}
---@type System.Environment.SpecialFolder
CS.System.Environment.SpecialFolder = System.Environment.SpecialFolder

---@return System.Int32 value:0
System.Environment.SpecialFolder.Desktop = 0
---@return System.Int32 value:2
System.Environment.SpecialFolder.Programs = 2
---@return System.Int32 value:5
System.Environment.SpecialFolder.MyDocuments = 5
---@return System.Int32 value:6
System.Environment.SpecialFolder.Favorites = 6
---@return System.Int32 value:7
System.Environment.SpecialFolder.Startup = 7
---@return System.Int32 value:8
System.Environment.SpecialFolder.Recent = 8
---@return System.Int32 value:9
System.Environment.SpecialFolder.SendTo = 9
---@return System.Int32 value:11
System.Environment.SpecialFolder.StartMenu = 11
---@return System.Int32 value:13
System.Environment.SpecialFolder.MyMusic = 13
---@return System.Int32 value:14
System.Environment.SpecialFolder.MyVideos = 14
---@return System.Int32 value:16
System.Environment.SpecialFolder.DesktopDirectory = 16
---@return System.Int32 value:17
System.Environment.SpecialFolder.MyComputer = 17
---@return System.Int32 value:19
System.Environment.SpecialFolder.NetworkShortcuts = 19
---@return System.Int32 value:20
System.Environment.SpecialFolder.Fonts = 20
---@return System.Int32 value:21
System.Environment.SpecialFolder.Templates = 21
---@return System.Int32 value:22
System.Environment.SpecialFolder.CommonStartMenu = 22
---@return System.Int32 value:23
System.Environment.SpecialFolder.CommonPrograms = 23
---@return System.Int32 value:24
System.Environment.SpecialFolder.CommonStartup = 24
---@return System.Int32 value:25
System.Environment.SpecialFolder.CommonDesktopDirectory = 25
---@return System.Int32 value:26
System.Environment.SpecialFolder.ApplicationData = 26
---@return System.Int32 value:27
System.Environment.SpecialFolder.PrinterShortcuts = 27
---@return System.Int32 value:28
System.Environment.SpecialFolder.LocalApplicationData = 28
---@return System.Int32 value:32
System.Environment.SpecialFolder.InternetCache = 32
---@return System.Int32 value:33
System.Environment.SpecialFolder.Cookies = 33
---@return System.Int32 value:34
System.Environment.SpecialFolder.History = 34
---@return System.Int32 value:35
System.Environment.SpecialFolder.CommonApplicationData = 35
---@return System.Int32 value:36
System.Environment.SpecialFolder.Windows = 36
---@return System.Int32 value:37
System.Environment.SpecialFolder.System = 37
---@return System.Int32 value:38
System.Environment.SpecialFolder.ProgramFiles = 38
---@return System.Int32 value:39
System.Environment.SpecialFolder.MyPictures = 39
---@return System.Int32 value:40
System.Environment.SpecialFolder.UserProfile = 40
---@return System.Int32 value:41
System.Environment.SpecialFolder.SystemX86 = 41
---@return System.Int32 value:42
System.Environment.SpecialFolder.ProgramFilesX86 = 42
---@return System.Int32 value:43
System.Environment.SpecialFolder.CommonProgramFiles = 43
---@return System.Int32 value:44
System.Environment.SpecialFolder.CommonProgramFilesX86 = 44
---@return System.Int32 value:45
System.Environment.SpecialFolder.CommonTemplates = 45
---@return System.Int32 value:46
System.Environment.SpecialFolder.CommonDocuments = 46

---@class System.Environment.SpecialFolderOption : System.Enum
System.Environment.SpecialFolderOption = {}
---@type System.Environment.SpecialFolderOption
CS.System.Environment.SpecialFolderOption = System.Environment.SpecialFolderOption

---@return System.Int32 value:0
System.Environment.SpecialFolderOption.None = 0

---@class System.ActivationContext : System.Object
---@field public Form System.ActivationContext.ContextForm @  getter
---@field public Identity System.ApplicationIdentity @  getter
---@field public ApplicationManifestBytes System.Byte[] @  getter
---@field public DeploymentManifestBytes System.Byte[] @  getter
System.ActivationContext = {}
---@type System.ActivationContext
CS.System.ActivationContext = System.ActivationContext

---@overload fun(identity:System.ApplicationIdentity, manifestPaths:System.String[]):System.ActivationContext
---@param identity System.ApplicationIdentity
---@return System.ActivationContext
function System.ActivationContext.CreatePartialActivationContext(identity)end
---@return System.Void
function System.ActivationContext:Dispose()end
---@class System.ActivationContext.ContextForm : System.Enum
System.ActivationContext.ContextForm = {}
---@type System.ActivationContext.ContextForm
CS.System.ActivationContext.ContextForm = System.ActivationContext.ContextForm

---@return System.Int32 value:0
System.ActivationContext.ContextForm.Loose = 0
---@return System.Int32 value:1
System.ActivationContext.ContextForm.StoreBounded = 1

---@class System.AppDomainManager : System.MarshalByRefObject
---@field public ApplicationActivator System.Runtime.Hosting.ApplicationActivator @  getter
---@field public EntryAssembly System.Reflection.Assembly @  getter
---@field public HostExecutionContextManager System.Threading.HostExecutionContextManager @  getter
---@field public HostSecurityManager System.Security.HostSecurityManager @  getter
---@field public InitializationFlags System.AppDomainManagerInitializationOptions @ setter getter
System.AppDomainManager = {}
---@type System.AppDomainManager
CS.System.AppDomainManager = System.AppDomainManager

---@param friendlyName System.String
---@param securityInfo System.Security.Policy.Evidence
---@param appDomainInfo System.AppDomainSetup
---@return System.AppDomain
function System.AppDomainManager:CreateDomain(friendlyName, securityInfo, appDomainInfo)end
---@param appDomainInfo System.AppDomainSetup
---@return System.Void
function System.AppDomainManager:InitializeNewDomain(appDomainInfo)end
---@param state System.Security.SecurityState
---@return System.Boolean
function System.AppDomainManager:CheckSecuritySettings(state)end
---@class System.AppDomainSetup : System.Object
---@field public ApplicationBase System.String @ setter getter
---@field public ApplicationName System.String @ setter getter
---@field public CachePath System.String @ setter getter
---@field public ConfigurationFile System.String @ setter getter
---@field public DisallowPublisherPolicy System.Boolean @ setter getter
---@field public DynamicBase System.String @ setter getter
---@field public LicenseFile System.String @ setter getter
---@field public LoaderOptimization System.LoaderOptimization @ setter getter
---@field public PrivateBinPath System.String @ setter getter
---@field public PrivateBinPathProbe System.String @ setter getter
---@field public ShadowCopyDirectories System.String @ setter getter
---@field public ShadowCopyFiles System.String @ setter getter
---@field public DisallowBindingRedirects System.Boolean @ setter getter
---@field public DisallowCodeDownload System.Boolean @ setter getter
---@field public TargetFrameworkName System.String @ setter getter
---@field public ActivationArguments System.Runtime.Hosting.ActivationArguments @ setter getter
---@field public AppDomainInitializer System.AppDomainInitializer @ setter getter
---@field public AppDomainInitializerArguments System.String[] @ setter getter
---@field public ApplicationTrust System.Security.Policy.ApplicationTrust @ setter getter
---@field public DisallowApplicationBaseProbing System.Boolean @ setter getter
---@field public AppDomainManagerAssembly System.String @ setter getter
---@field public AppDomainManagerType System.String @ setter getter
---@field public PartialTrustVisibleAssemblies System.String[] @ setter getter
---@field public SandboxInterop System.Boolean @ setter getter
System.AppDomainSetup = {}
---@type System.AppDomainSetup
CS.System.AppDomainSetup = System.AppDomainSetup

---@return System.Byte[]
function System.AppDomainSetup:GetConfigurationBytes()end
---@param value System.Byte[]
---@return System.Void
function System.AppDomainSetup:SetConfigurationBytes(value)end
---@param switches System.Collections.Generic.IEnumerable
---@return System.Void
function System.AppDomainSetup:SetCompatibilitySwitches(switches)end
---@param functionName System.String
---@param functionVersion System.Int32
---@param functionPointer System.IntPtr
---@return System.Void
function System.AppDomainSetup:SetNativeFunction(functionName, functionVersion, functionPointer)end
---@class System.ApplicationIdentity : System.Object
---@field public CodeBase System.String @  getter
---@field public FullName System.String @  getter
System.ApplicationIdentity = {}
---@type System.ApplicationIdentity
CS.System.ApplicationIdentity = System.ApplicationIdentity

---@return System.String
function System.ApplicationIdentity:ToString()end
---@class System.ArgIterator : System.ValueType
System.ArgIterator = {}
---@type System.ArgIterator
CS.System.ArgIterator = System.ArgIterator

---@return System.Void
function System.ArgIterator:End()end
---@param o System.Object
---@return System.Boolean
function System.ArgIterator:Equals(o)end
---@return System.Int32
function System.ArgIterator:GetHashCode()end
---@overload fun(rth:System.RuntimeTypeHandle):System.TypedReference
---@return System.TypedReference
function System.ArgIterator:GetNextArg()end
---@return System.RuntimeTypeHandle
function System.ArgIterator:GetNextArgType()end
---@return System.Int32
function System.ArgIterator:GetRemainingCount()end
---@class System.AssemblyLoadEventArgs : System.EventArgs
---@field public LoadedAssembly System.Reflection.Assembly @  getter
System.AssemblyLoadEventArgs = {}
---@type System.AssemblyLoadEventArgs
CS.System.AssemblyLoadEventArgs = System.AssemblyLoadEventArgs

---@class System.Console : System.Object
---@field public Error System.IO.TextWriter @static  getter
---@field public Out System.IO.TextWriter @static  getter
---@field public In System.IO.TextReader @static  getter
---@field public InputEncoding System.Text.Encoding @static setter getter
---@field public OutputEncoding System.Text.Encoding @static setter getter
---@field public BackgroundColor System.ConsoleColor @static setter getter
---@field public BufferHeight System.Int32 @static setter getter
---@field public BufferWidth System.Int32 @static setter getter
---@field public CapsLock System.Boolean @static  getter
---@field public CursorLeft System.Int32 @static setter getter
---@field public CursorTop System.Int32 @static setter getter
---@field public CursorSize System.Int32 @static setter getter
---@field public CursorVisible System.Boolean @static setter getter
---@field public ForegroundColor System.ConsoleColor @static setter getter
---@field public KeyAvailable System.Boolean @static  getter
---@field public LargestWindowHeight System.Int32 @static  getter
---@field public LargestWindowWidth System.Int32 @static  getter
---@field public NumberLock System.Boolean @static  getter
---@field public Title System.String @static setter getter
---@field public TreatControlCAsInput System.Boolean @static setter getter
---@field public WindowHeight System.Int32 @static setter getter
---@field public WindowLeft System.Int32 @static setter getter
---@field public WindowTop System.Int32 @static setter getter
---@field public WindowWidth System.Int32 @static setter getter
---@field public IsErrorRedirected System.Boolean @static  getter
---@field public IsOutputRedirected System.Boolean @static  getter
---@field public IsInputRedirected System.Boolean @static  getter
System.Console = {}
---@type System.Console
CS.System.Console = System.Console

---@overload fun(bufferSize:System.Int32):System.IO.Stream
---@return System.IO.Stream
function System.Console.OpenStandardError()end
---@overload fun(bufferSize:System.Int32):System.IO.Stream
---@return System.IO.Stream
function System.Console.OpenStandardInput()end
---@overload fun(bufferSize:System.Int32):System.IO.Stream
---@return System.IO.Stream
function System.Console.OpenStandardOutput()end
---@param newError System.IO.TextWriter
---@return System.Void
function System.Console.SetError(newError)end
---@param newIn System.IO.TextReader
---@return System.Void
function System.Console.SetIn(newIn)end
---@param newOut System.IO.TextWriter
---@return System.Void
function System.Console.SetOut(newOut)end
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.Void
---@param value System.Boolean
---@return System.Void
function System.Console.Write(value)end
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(value:System.UInt64):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Decimal):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.Void
---@return System.Void
function System.Console.WriteLine()end
---@return System.Int32
function System.Console.Read()end
---@return System.String
function System.Console.ReadLine()end
---@overload fun(frequency:System.Int32, duration:System.Int32):System.Void
---@return System.Void
function System.Console.Beep()end
---@return System.Void
function System.Console.Clear()end
---@overload fun(sourceLeft:System.Int32, sourceTop:System.Int32, sourceWidth:System.Int32, sourceHeight:System.Int32, targetLeft:System.Int32, targetTop:System.Int32, sourceChar:System.Char, sourceForeColor:System.ConsoleColor, sourceBackColor:System.ConsoleColor):System.Void
---@param sourceLeft System.Int32
---@param sourceTop System.Int32
---@param sourceWidth System.Int32
---@param sourceHeight System.Int32
---@param targetLeft System.Int32
---@param targetTop System.Int32
---@return System.Void
function System.Console.MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop)end
---@overload fun(intercept:System.Boolean):System.ConsoleKeyInfo
---@return System.ConsoleKeyInfo
function System.Console.ReadKey()end
---@return System.Void
function System.Console.ResetColor()end
---@param width System.Int32
---@param height System.Int32
---@return System.Void
function System.Console.SetBufferSize(width, height)end
---@param left System.Int32
---@param top System.Int32
---@return System.Void
function System.Console.SetCursorPosition(left, top)end
---@param left System.Int32
---@param top System.Int32
---@return System.Void
function System.Console.SetWindowPosition(left, top)end
---@param width System.Int32
---@param height System.Int32
---@return System.Void
function System.Console.SetWindowSize(width, height)end
---@param value System.ConsoleCancelEventHandler
---@return System.Void
function System.Console.add_CancelKeyPress(value)end
---@param value System.ConsoleCancelEventHandler
---@return System.Void
function System.Console.remove_CancelKeyPress(value)end
---@class System.Delegate : System.Object
---@field public Method System.Reflection.MethodInfo @  getter
---@field public Target System.Object @  getter
System.Delegate = {}
---@type System.Delegate
CS.System.Delegate = System.Delegate

---@overload fun(type:System.Type, method:System.Reflection.MethodInfo, throwOnBindFailure:System.Boolean):System.Delegate
---@overload fun(type:System.Type, firstArgument:System.Object, method:System.Reflection.MethodInfo):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String):System.Delegate
---@overload fun(type:System.Type, firstArgument:System.Object, method:System.Reflection.MethodInfo, throwOnBindFailure:System.Boolean):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String, ignoreCase:System.Boolean):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String, ignoreCase:System.Boolean):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String, ignoreCase:System.Boolean, throwOnBindFailure:System.Boolean):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String, ignoreCase:System.Boolean, throwOnBindFailure:System.Boolean):System.Delegate
---@param type System.Type
---@param method System.Reflection.MethodInfo
---@return System.Delegate
function System.Delegate.CreateDelegate(type, method)end
---@param args System.Object[]
---@return System.Object
function System.Delegate:DynamicInvoke(args)end
---@return System.Object
function System.Delegate:Clone()end
---@param obj System.Object
---@return System.Boolean
function System.Delegate:Equals(obj)end
---@return System.Int32
function System.Delegate:GetHashCode()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Delegate:GetObjectData(info, context)end
---@return System.Delegate[]
function System.Delegate:GetInvocationList()end
---@overload fun(a:System.Delegate, b:System.Delegate):System.Delegate
---@param delegates System.Delegate[]
---@return System.Delegate
function System.Delegate.Combine(delegates)end
---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function System.Delegate.Remove(source, value)end
---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function System.Delegate.RemoveAll(source, value)end
---@param d1 System.Delegate
---@param d2 System.Delegate
---@return System.Boolean
function System.Delegate.op_Equality(d1, d2)end
---@param d1 System.Delegate
---@param d2 System.Delegate
---@return System.Boolean
function System.Delegate.op_Inequality(d1, d2)end
---@class System.AppDomainManagerInitializationOptions : System.Enum
System.AppDomainManagerInitializationOptions = {}
---@type System.AppDomainManagerInitializationOptions
CS.System.AppDomainManagerInitializationOptions = System.AppDomainManagerInitializationOptions

---@return System.Int32 value:0
System.AppDomainManagerInitializationOptions.None = 0
---@return System.Int32 value:1
System.AppDomainManagerInitializationOptions.RegisterWithHost = 1

---@class System.EnvironmentVariableTarget : System.Enum
System.EnvironmentVariableTarget = {}
---@type System.EnvironmentVariableTarget
CS.System.EnvironmentVariableTarget = System.EnvironmentVariableTarget

---@return System.Int32 value:0
System.EnvironmentVariableTarget.Process = 0
---@return System.Int32 value:1
System.EnvironmentVariableTarget.User = 1
---@return System.Int32 value:2
System.EnvironmentVariableTarget.Machine = 2

---@class System.IntPtr : System.ValueType
---@field public Size System.Int32 @static  getter
---@field public Zero System.IntPtr
System.IntPtr = {}
---@type System.IntPtr
CS.System.IntPtr = System.IntPtr

---@param obj System.Object
---@return System.Boolean
function System.IntPtr:Equals(obj)end
---@return System.Int32
function System.IntPtr:GetHashCode()end
---@return System.Int32
function System.IntPtr:ToInt32()end
---@return System.Int64
function System.IntPtr:ToInt64()end
---@return System.Void
function System.IntPtr:ToPointer()end
---@overload fun(format:System.String):System.String
---@return System.String
function System.IntPtr:ToString()end
---@param value1 System.IntPtr
---@param value2 System.IntPtr
---@return System.Boolean
function System.IntPtr.op_Equality(value1, value2)end
---@param value1 System.IntPtr
---@param value2 System.IntPtr
---@return System.Boolean
function System.IntPtr.op_Inequality(value1, value2)end
---@overload fun(value:System.Int64):System.IntPtr
---@overload fun(value:System.IntPtr):System.Int32
---@overload fun(value:System.IntPtr):System.Int64
---@overload fun(value:System.IntPtr):System.Void
---@overload fun(value:System.Void):System.IntPtr
---@param value System.Int32
---@return System.IntPtr
function System.IntPtr.op_Explicit(value)end
---@param pointer System.IntPtr
---@param offset System.Int32
---@return System.IntPtr
function System.IntPtr.Add(pointer, offset)end
---@param pointer System.IntPtr
---@param offset System.Int32
---@return System.IntPtr
function System.IntPtr.Subtract(pointer, offset)end
---@param pointer System.IntPtr
---@param offset System.Int32
---@return System.IntPtr
function System.IntPtr.op_Addition(pointer, offset)end
---@param pointer System.IntPtr
---@param offset System.Int32
---@return System.IntPtr
function System.IntPtr.op_Subtraction(pointer, offset)end
---@class System.MarshalByRefObject : System.Object
System.MarshalByRefObject = {}
---@type System.MarshalByRefObject
CS.System.MarshalByRefObject = System.MarshalByRefObject

---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function System.MarshalByRefObject:CreateObjRef(requestedType)end
---@return System.Object
function System.MarshalByRefObject:GetLifetimeService()end
---@return System.Object
function System.MarshalByRefObject:InitializeLifetimeService()end
---@class System.ModuleHandle : System.ValueType
---@field public MDStreamVersion System.Int32 @  getter
---@field public EmptyHandle System.ModuleHandle
System.ModuleHandle = {}
---@type System.ModuleHandle
CS.System.ModuleHandle = System.ModuleHandle

---@overload fun(fieldToken:System.Int32, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):System.RuntimeFieldHandle
---@param fieldToken System.Int32
---@return System.RuntimeFieldHandle
function System.ModuleHandle:ResolveFieldHandle(fieldToken)end
---@overload fun(methodToken:System.Int32, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):System.RuntimeMethodHandle
---@param methodToken System.Int32
---@return System.RuntimeMethodHandle
function System.ModuleHandle:ResolveMethodHandle(methodToken)end
---@overload fun(typeToken:System.Int32, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):System.RuntimeTypeHandle
---@param typeToken System.Int32
---@return System.RuntimeTypeHandle
function System.ModuleHandle:ResolveTypeHandle(typeToken)end
---@param fieldToken System.Int32
---@return System.RuntimeFieldHandle
function System.ModuleHandle:GetRuntimeFieldHandleFromMetadataToken(fieldToken)end
---@param methodToken System.Int32
---@return System.RuntimeMethodHandle
function System.ModuleHandle:GetRuntimeMethodHandleFromMetadataToken(methodToken)end
---@param typeToken System.Int32
---@return System.RuntimeTypeHandle
function System.ModuleHandle:GetRuntimeTypeHandleFromMetadataToken(typeToken)end
---@overload fun(handle:System.ModuleHandle):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.ModuleHandle:Equals(obj)end
---@return System.Int32
function System.ModuleHandle:GetHashCode()end
---@param left System.ModuleHandle
---@param right System.ModuleHandle
---@return System.Boolean
function System.ModuleHandle.op_Equality(left, right)end
---@param left System.ModuleHandle
---@param right System.ModuleHandle
---@return System.Boolean
function System.ModuleHandle.op_Inequality(left, right)end
---@class System.MulticastDelegate : System.Delegate
System.MulticastDelegate = {}
---@type System.MulticastDelegate
CS.System.MulticastDelegate = System.MulticastDelegate

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.MulticastDelegate:GetObjectData(info, context)end
---@param obj System.Object
---@return System.Boolean
function System.MulticastDelegate:Equals(obj)end
---@return System.Int32
function System.MulticastDelegate:GetHashCode()end
---@return System.Delegate[]
function System.MulticastDelegate:GetInvocationList()end
---@param d1 System.MulticastDelegate
---@param d2 System.MulticastDelegate
---@return System.Boolean
function System.MulticastDelegate.op_Equality(d1, d2)end
---@param d1 System.MulticastDelegate
---@param d2 System.MulticastDelegate
---@return System.Boolean
function System.MulticastDelegate.op_Inequality(d1, d2)end
---@class System.Nullable : System.Object
System.Nullable = {}
---@type System.Nullable
CS.System.Nullable = System.Nullable

---@param n1 any
---@param n2 any
---@return System.Int32
function System.Nullable.Compare(n1, n2)end
---@param n1 any
---@param n2 any
---@return System.Boolean
function System.Nullable.Equals(n1, n2)end
---@param nullableType System.Type
---@return System.Type
function System.Nullable.GetUnderlyingType(nullableType)end
---@class System.Nullable : System.ValueType
---@field public HasValue System.Boolean @  getter
---@field public Value any @  getter
System.Nullable = {}
---@type System.Nullable
CS.System.Nullable = System.Nullable

---@param other System.Object
---@return System.Boolean
function System.Nullable:Equals(other)end
---@return System.Int32
function System.Nullable:GetHashCode()end
---@overload fun(defaultValue:any):any
---@return any
function System.Nullable:GetValueOrDefault()end
---@return System.String
function System.Nullable:ToString()end
---@param value any
---@return System.Nullable
function System.Nullable.op_Implicit(value)end
---@param value System.Nullable
---@return any
function System.Nullable.op_Explicit(value)end
---@class System.Object
System.Object = {}
---@type System.Object
CS.System.Object = System.Object

---@param obj System.Object
---@return System.Boolean
function System.Object:Equals(obj)end
---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function System.Object.Equals(objA, objB)end
---@return System.Int32
function System.Object:GetHashCode()end
---@return System.Type
function System.Object:GetType()end
---@return System.String
function System.Object:ToString()end
---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function System.Object.ReferenceEquals(objA, objB)end
---@class System.OperatingSystem : System.Object
---@field public Platform System.PlatformID @  getter
---@field public Version System.Version @  getter
---@field public ServicePack System.String @  getter
---@field public VersionString System.String @  getter
System.OperatingSystem = {}
---@type System.OperatingSystem
CS.System.OperatingSystem = System.OperatingSystem

---@return System.Object
function System.OperatingSystem:Clone()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.OperatingSystem:GetObjectData(info, context)end
---@return System.String
function System.OperatingSystem:ToString()end
---@class System.PlatformID : System.Enum
System.PlatformID = {}
---@type System.PlatformID
CS.System.PlatformID = System.PlatformID

---@return System.Int32 value:0
System.PlatformID.Win32S = 0
---@return System.Int32 value:1
System.PlatformID.Win32Windows = 1
---@return System.Int32 value:2
System.PlatformID.Win32NT = 2
---@return System.Int32 value:3
System.PlatformID.WinCE = 3
---@return System.Int32 value:4
System.PlatformID.Unix = 4
---@return System.Int32 value:5
System.PlatformID.Xbox = 5
---@return System.Int32 value:6
System.PlatformID.MacOSX = 6

---@class System.ResolveEventArgs : System.EventArgs
---@field public Name System.String @  getter
---@field public RequestingAssembly System.Reflection.Assembly @  getter
System.ResolveEventArgs = {}
---@type System.ResolveEventArgs
CS.System.ResolveEventArgs = System.ResolveEventArgs

---@class System.RuntimeArgumentHandle : System.ValueType
System.RuntimeArgumentHandle = {}
---@type System.RuntimeArgumentHandle
CS.System.RuntimeArgumentHandle = System.RuntimeArgumentHandle

---@class System.RuntimeFieldHandle : System.ValueType
---@field public Value System.IntPtr @  getter
System.RuntimeFieldHandle = {}
---@type System.RuntimeFieldHandle
CS.System.RuntimeFieldHandle = System.RuntimeFieldHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.RuntimeFieldHandle:GetObjectData(info, context)end
---@overload fun(handle:System.RuntimeFieldHandle):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.RuntimeFieldHandle:Equals(obj)end
---@return System.Int32
function System.RuntimeFieldHandle:GetHashCode()end
---@param left System.RuntimeFieldHandle
---@param right System.RuntimeFieldHandle
---@return System.Boolean
function System.RuntimeFieldHandle.op_Equality(left, right)end
---@param left System.RuntimeFieldHandle
---@param right System.RuntimeFieldHandle
---@return System.Boolean
function System.RuntimeFieldHandle.op_Inequality(left, right)end
---@class System.RuntimeMethodHandle : System.ValueType
---@field public Value System.IntPtr @  getter
System.RuntimeMethodHandle = {}
---@type System.RuntimeMethodHandle
CS.System.RuntimeMethodHandle = System.RuntimeMethodHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.RuntimeMethodHandle:GetObjectData(info, context)end
---@return System.IntPtr
function System.RuntimeMethodHandle:GetFunctionPointer()end
---@overload fun(handle:System.RuntimeMethodHandle):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.RuntimeMethodHandle:Equals(obj)end
---@return System.Int32
function System.RuntimeMethodHandle:GetHashCode()end
---@param left System.RuntimeMethodHandle
---@param right System.RuntimeMethodHandle
---@return System.Boolean
function System.RuntimeMethodHandle.op_Equality(left, right)end
---@param left System.RuntimeMethodHandle
---@param right System.RuntimeMethodHandle
---@return System.Boolean
function System.RuntimeMethodHandle.op_Inequality(left, right)end
---@class System.RuntimeTypeHandle : System.ValueType
---@field public Value System.IntPtr @  getter
System.RuntimeTypeHandle = {}
---@type System.RuntimeTypeHandle
CS.System.RuntimeTypeHandle = System.RuntimeTypeHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.RuntimeTypeHandle:GetObjectData(info, context)end
---@overload fun(handle:System.RuntimeTypeHandle):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.RuntimeTypeHandle:Equals(obj)end
---@return System.Int32
function System.RuntimeTypeHandle:GetHashCode()end
---@overload fun(left:System.Object, right:System.RuntimeTypeHandle):System.Boolean
---@param left System.RuntimeTypeHandle
---@param right System.Object
---@return System.Boolean
function System.RuntimeTypeHandle.op_Equality(left, right)end
---@overload fun(left:System.Object, right:System.RuntimeTypeHandle):System.Boolean
---@param left System.RuntimeTypeHandle
---@param right System.Object
---@return System.Boolean
function System.RuntimeTypeHandle.op_Inequality(left, right)end
---@return System.ModuleHandle
function System.RuntimeTypeHandle:GetModuleHandle()end
---@class System.StringComparison : System.Enum
System.StringComparison = {}
---@type System.StringComparison
CS.System.StringComparison = System.StringComparison

---@return System.Int32 value:0
System.StringComparison.CurrentCulture = 0
---@return System.Int32 value:1
System.StringComparison.CurrentCultureIgnoreCase = 1
---@return System.Int32 value:2
System.StringComparison.InvariantCulture = 2
---@return System.Int32 value:3
System.StringComparison.InvariantCultureIgnoreCase = 3
---@return System.Int32 value:4
System.StringComparison.Ordinal = 4
---@return System.Int32 value:5
System.StringComparison.OrdinalIgnoreCase = 5

---@class System.TimeZone : System.Object
---@field public CurrentTimeZone System.TimeZone @static  getter
---@field public DaylightName System.String @  getter
---@field public StandardName System.String @  getter
System.TimeZone = {}
---@type System.TimeZone
CS.System.TimeZone = System.TimeZone

---@param year System.Int32
---@return System.Globalization.DaylightTime
function System.TimeZone:GetDaylightChanges(year)end
---@param time System.DateTime
---@return System.TimeSpan
function System.TimeZone:GetUtcOffset(time)end
---@param time System.DateTime
---@return System.Boolean
function System.TimeZone:IsDaylightSavingTime(time)end
---@param time System.DateTime
---@param daylightTimes System.Globalization.DaylightTime
---@return System.Boolean
function System.TimeZone.IsDaylightSavingTime(time, daylightTimes)end
---@param time System.DateTime
---@return System.DateTime
function System.TimeZone:ToLocalTime(time)end
---@param time System.DateTime
---@return System.DateTime
function System.TimeZone:ToUniversalTime(time)end
---@class System.TypeCode : System.Enum
System.TypeCode = {}
---@type System.TypeCode
CS.System.TypeCode = System.TypeCode

---@return System.Int32 value:0
System.TypeCode.Empty = 0
---@return System.Int32 value:1
System.TypeCode.Object = 1
---@return System.Int32 value:2
System.TypeCode.DBNull = 2
---@return System.Int32 value:3
System.TypeCode.Boolean = 3
---@return System.Int32 value:4
System.TypeCode.Char = 4
---@return System.Int32 value:5
System.TypeCode.SByte = 5
---@return System.Int32 value:6
System.TypeCode.Byte = 6
---@return System.Int32 value:7
System.TypeCode.Int16 = 7
---@return System.Int32 value:8
System.TypeCode.UInt16 = 8
---@return System.Int32 value:9
System.TypeCode.Int32 = 9
---@return System.Int32 value:10
System.TypeCode.UInt32 = 10
---@return System.Int32 value:11
System.TypeCode.Int64 = 11
---@return System.Int32 value:12
System.TypeCode.UInt64 = 12
---@return System.Int32 value:13
System.TypeCode.Single = 13
---@return System.Int32 value:14
System.TypeCode.Double = 14
---@return System.Int32 value:15
System.TypeCode.Decimal = 15
---@return System.Int32 value:16
System.TypeCode.DateTime = 16

---@class System.UIntPtr : System.ValueType
---@field public Size System.Int32 @static  getter
---@field public Zero System.UIntPtr
System.UIntPtr = {}
---@type System.UIntPtr
CS.System.UIntPtr = System.UIntPtr

---@param obj System.Object
---@return System.Boolean
function System.UIntPtr:Equals(obj)end
---@return System.Int32
function System.UIntPtr:GetHashCode()end
---@return System.UInt32
function System.UIntPtr:ToUInt32()end
---@return System.UInt64
function System.UIntPtr:ToUInt64()end
---@return System.Void
function System.UIntPtr:ToPointer()end
---@return System.String
function System.UIntPtr:ToString()end
---@param value1 System.UIntPtr
---@param value2 System.UIntPtr
---@return System.Boolean
function System.UIntPtr.op_Equality(value1, value2)end
---@param value1 System.UIntPtr
---@param value2 System.UIntPtr
---@return System.Boolean
function System.UIntPtr.op_Inequality(value1, value2)end
---@overload fun(value:System.UIntPtr):System.UInt32
---@overload fun(value:System.UInt64):System.UIntPtr
---@overload fun(value:System.UIntPtr):System.Void
---@overload fun(value:System.UInt32):System.UIntPtr
---@overload fun(value:System.Void):System.UIntPtr
---@param value System.UIntPtr
---@return System.UInt64
function System.UIntPtr.op_Explicit(value)end
---@param pointer System.UIntPtr
---@param offset System.Int32
---@return System.UIntPtr
function System.UIntPtr.Add(pointer, offset)end
---@param pointer System.UIntPtr
---@param offset System.Int32
---@return System.UIntPtr
function System.UIntPtr.Subtract(pointer, offset)end
---@param pointer System.UIntPtr
---@param offset System.Int32
---@return System.UIntPtr
function System.UIntPtr.op_Addition(pointer, offset)end
---@param pointer System.UIntPtr
---@param offset System.Int32
---@return System.UIntPtr
function System.UIntPtr.op_Subtraction(pointer, offset)end
---@class System.ValueType : System.Object
System.ValueType = {}
---@type System.ValueType
CS.System.ValueType = System.ValueType

---@param obj System.Object
---@return System.Boolean
function System.ValueType:Equals(obj)end
---@return System.Int32
function System.ValueType:GetHashCode()end
---@return System.String
function System.ValueType:ToString()end
---@class System.Void : System.ValueType
System.Void = {}
---@type System.Void
CS.System.Void = System.Void

---@class System.WeakReference : System.Object
---@field public IsAlive System.Boolean @  getter
---@field public Target System.Object @ setter getter
---@field public TrackResurrection System.Boolean @  getter
System.WeakReference = {}
---@type System.WeakReference
CS.System.WeakReference = System.WeakReference

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.WeakReference:GetObjectData(info, context)end
---@class System.WeakReference : System.Object
System.WeakReference = {}
---@type System.WeakReference
CS.System.WeakReference = System.WeakReference

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.WeakReference:GetObjectData(info, context)end
---@param target any
---@return System.Void
function System.WeakReference:SetTarget(target)end
---@param target any
---@return System.Boolean
function System.WeakReference:TryGetTarget(target)end
---@class System.UriBuilder : System.Object
---@field public Fragment System.String @ setter getter
---@field public Host System.String @ setter getter
---@field public Password System.String @ setter getter
---@field public Path System.String @ setter getter
---@field public Port System.Int32 @ setter getter
---@field public Query System.String @ setter getter
---@field public Scheme System.String @ setter getter
---@field public Uri System.Uri @  getter
---@field public UserName System.String @ setter getter
System.UriBuilder = {}
---@type System.UriBuilder
CS.System.UriBuilder = System.UriBuilder

---@param rparam System.Object
---@return System.Boolean
function System.UriBuilder:Equals(rparam)end
---@return System.Int32
function System.UriBuilder:GetHashCode()end
---@return System.String
function System.UriBuilder:ToString()end
---@class System.GenericUriParserOptions : System.Enum
System.GenericUriParserOptions = {}
---@type System.GenericUriParserOptions
CS.System.GenericUriParserOptions = System.GenericUriParserOptions

---@return System.Int32 value:0
System.GenericUriParserOptions.Default = 0
---@return System.Int32 value:1
System.GenericUriParserOptions.GenericAuthority = 1
---@return System.Int32 value:2
System.GenericUriParserOptions.AllowEmptyAuthority = 2
---@return System.Int32 value:4
System.GenericUriParserOptions.NoUserInfo = 4
---@return System.Int32 value:8
System.GenericUriParserOptions.NoPort = 8

---@class System.GenericUriParser : System.UriParser
System.GenericUriParser = {}
---@type System.GenericUriParser
CS.System.GenericUriParser = System.GenericUriParser

---@class System.Uri : System.Object
---@field public AbsolutePath System.String @  getter
---@field public AbsoluteUri System.String @  getter
---@field public LocalPath System.String @  getter
---@field public Authority System.String @  getter
---@field public HostNameType System.UriHostNameType @  getter
---@field public IsDefaultPort System.Boolean @  getter
---@field public IsFile System.Boolean @  getter
---@field public IsLoopback System.Boolean @  getter
---@field public PathAndQuery System.String @  getter
---@field public Segments System.String[] @  getter
---@field public IsUnc System.Boolean @  getter
---@field public Host System.String @  getter
---@field public Port System.Int32 @  getter
---@field public Query System.String @  getter
---@field public Fragment System.String @  getter
---@field public Scheme System.String @  getter
---@field public OriginalString System.String @  getter
---@field public DnsSafeHost System.String @  getter
---@field public IdnHost System.String @  getter
---@field public IsAbsoluteUri System.Boolean @  getter
---@field public UserEscaped System.Boolean @  getter
---@field public UserInfo System.String @  getter
---@field public UriSchemeFile System.String
---@field public UriSchemeFtp System.String
---@field public UriSchemeGopher System.String
---@field public UriSchemeHttp System.String
---@field public UriSchemeHttps System.String
---@field public UriSchemeMailto System.String
---@field public UriSchemeNews System.String
---@field public UriSchemeNntp System.String
---@field public UriSchemeNetTcp System.String
---@field public UriSchemeNetPipe System.String
---@field public SchemeDelimiter System.String
System.Uri = {}
---@type System.Uri
CS.System.Uri = System.Uri

---@param name System.String
---@return System.UriHostNameType
function System.Uri.CheckHostName(name)end
---@param part System.UriPartial
---@return System.String
function System.Uri:GetLeftPart(part)end
---@param character System.Char
---@return System.String
function System.Uri.HexEscape(character)end
---@param pattern System.String
---@param index System.Int32
---@return System.Char
function System.Uri.HexUnescape(pattern, index)end
---@param pattern System.String
---@param index System.Int32
---@return System.Boolean
function System.Uri.IsHexEncoding(pattern, index)end
---@param schemeName System.String
---@return System.Boolean
function System.Uri.CheckSchemeName(schemeName)end
---@param character System.Char
---@return System.Boolean
function System.Uri.IsHexDigit(character)end
---@param digit System.Char
---@return System.Int32
function System.Uri.FromHex(digit)end
---@return System.Int32
function System.Uri:GetHashCode()end
---@return System.String
function System.Uri:ToString()end
---@param uri1 System.Uri
---@param uri2 System.Uri
---@return System.Boolean
function System.Uri.op_Equality(uri1, uri2)end
---@param uri1 System.Uri
---@param uri2 System.Uri
---@return System.Boolean
function System.Uri.op_Inequality(uri1, uri2)end
---@param comparand System.Object
---@return System.Boolean
function System.Uri:Equals(comparand)end
---@param uri System.Uri
---@return System.Uri
function System.Uri:MakeRelativeUri(uri)end
---@param toUri System.Uri
---@return System.String
function System.Uri:MakeRelative(toUri)end
---@overload fun(baseUri:System.Uri, relativeUri:System.String, result:System.Uri):System.Boolean
---@overload fun(baseUri:System.Uri, relativeUri:System.Uri, result:System.Uri):System.Boolean
---@param uriString System.String
---@param uriKind System.UriKind
---@param result System.Uri
---@return System.Boolean
function System.Uri.TryCreate(uriString, uriKind, result)end
---@param components System.UriComponents
---@param format System.UriFormat
---@return System.String
function System.Uri:GetComponents(components, format)end
---@param uri1 System.Uri
---@param uri2 System.Uri
---@param partsToCompare System.UriComponents
---@param compareFormat System.UriFormat
---@param comparisonType System.StringComparison
---@return System.Int32
function System.Uri.Compare(uri1, uri2, partsToCompare, compareFormat, comparisonType)end
---@return System.Boolean
function System.Uri:IsWellFormedOriginalString()end
---@param uriString System.String
---@param uriKind System.UriKind
---@return System.Boolean
function System.Uri.IsWellFormedUriString(uriString, uriKind)end
---@param stringToUnescape System.String
---@return System.String
function System.Uri.UnescapeDataString(stringToUnescape)end
---@param stringToEscape System.String
---@return System.String
function System.Uri.EscapeUriString(stringToEscape)end
---@param stringToEscape System.String
---@return System.String
function System.Uri.EscapeDataString(stringToEscape)end
---@param uri System.Uri
---@return System.Boolean
function System.Uri:IsBaseOf(uri)end
---@class System.UriFormatException : System.FormatException
System.UriFormatException = {}
---@type System.UriFormatException
CS.System.UriFormatException = System.UriFormatException

---@class System.UriPartial : System.Enum
System.UriPartial = {}
---@type System.UriPartial
CS.System.UriPartial = System.UriPartial

---@return System.Int32 value:0
System.UriPartial.Scheme = 0
---@return System.Int32 value:1
System.UriPartial.Authority = 1
---@return System.Int32 value:2
System.UriPartial.Path = 2
---@return System.Int32 value:3
System.UriPartial.Query = 3

---@class System.UriKind : System.Enum
System.UriKind = {}
---@type System.UriKind
CS.System.UriKind = System.UriKind

---@return System.Int32 value:0
System.UriKind.RelativeOrAbsolute = 0
---@return System.Int32 value:1
System.UriKind.Absolute = 1
---@return System.Int32 value:2
System.UriKind.Relative = 2

---@class System.UriComponents : System.Enum
System.UriComponents = {}
---@type System.UriComponents
CS.System.UriComponents = System.UriComponents

---@return System.Int32 value:1
System.UriComponents.Scheme = 1
---@return System.Int32 value:2
System.UriComponents.UserInfo = 2
---@return System.Int32 value:4
System.UriComponents.Host = 4
---@return System.Int32 value:8
System.UriComponents.Port = 8
---@return System.Int32 value:13
System.UriComponents.SchemeAndServer = 13
---@return System.Int32 value:16
System.UriComponents.Path = 16

---@class System.UriFormat : System.Enum
System.UriFormat = {}
---@type System.UriFormat
CS.System.UriFormat = System.UriFormat

---@return System.Int32 value:1
System.UriFormat.UriEscaped = 1
---@return System.Int32 value:2
System.UriFormat.Unescaped = 2

---@class System.UriIdnScope : System.Enum
System.UriIdnScope = {}
---@type System.UriIdnScope
CS.System.UriIdnScope = System.UriIdnScope

---@return System.Int32 value:0
System.UriIdnScope.None = 0
---@return System.Int32 value:1
System.UriIdnScope.AllExceptIntranet = 1
---@return System.Int32 value:2
System.UriIdnScope.All = 2

---@class System.UriHostNameType : System.Enum
System.UriHostNameType = {}
---@type System.UriHostNameType
CS.System.UriHostNameType = System.UriHostNameType

---@return System.Int32 value:0
System.UriHostNameType.Unknown = 0
---@return System.Int32 value:1
System.UriHostNameType.Basic = 1
---@return System.Int32 value:2
System.UriHostNameType.Dns = 2
---@return System.Int32 value:3
System.UriHostNameType.IPv4 = 3
---@return System.Int32 value:4
System.UriHostNameType.IPv6 = 4

---@class System.HttpStyleUriParser : System.UriParser
System.HttpStyleUriParser = {}
---@type System.HttpStyleUriParser
CS.System.HttpStyleUriParser = System.HttpStyleUriParser

---@class System.FtpStyleUriParser : System.UriParser
System.FtpStyleUriParser = {}
---@type System.FtpStyleUriParser
CS.System.FtpStyleUriParser = System.FtpStyleUriParser

---@class System.FileStyleUriParser : System.UriParser
System.FileStyleUriParser = {}
---@type System.FileStyleUriParser
CS.System.FileStyleUriParser = System.FileStyleUriParser

---@class System.NewsStyleUriParser : System.UriParser
System.NewsStyleUriParser = {}
---@type System.NewsStyleUriParser
CS.System.NewsStyleUriParser = System.NewsStyleUriParser

---@class System.GopherStyleUriParser : System.UriParser
System.GopherStyleUriParser = {}
---@type System.GopherStyleUriParser
CS.System.GopherStyleUriParser = System.GopherStyleUriParser

---@class System.LdapStyleUriParser : System.UriParser
System.LdapStyleUriParser = {}
---@type System.LdapStyleUriParser
CS.System.LdapStyleUriParser = System.LdapStyleUriParser

---@class System.NetPipeStyleUriParser : System.UriParser
System.NetPipeStyleUriParser = {}
---@type System.NetPipeStyleUriParser
CS.System.NetPipeStyleUriParser = System.NetPipeStyleUriParser

---@class System.NetTcpStyleUriParser : System.UriParser
System.NetTcpStyleUriParser = {}
---@type System.NetTcpStyleUriParser
CS.System.NetTcpStyleUriParser = System.NetTcpStyleUriParser

---@class System.UriParser : System.Object
System.UriParser = {}
---@type System.UriParser
CS.System.UriParser = System.UriParser

---@param uriParser System.UriParser
---@param schemeName System.String
---@param defaultPort System.Int32
---@return System.Void
function System.UriParser.Register(uriParser, schemeName, defaultPort)end
---@param schemeName System.String
---@return System.Boolean
function System.UriParser.IsKnownScheme(schemeName)end
---@class System.UriTypeConverter : System.ComponentModel.TypeConverter
System.UriTypeConverter = {}
---@type System.UriTypeConverter
CS.System.UriTypeConverter = System.UriTypeConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.UriTypeConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.UriTypeConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.UriTypeConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.UriTypeConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@return System.Boolean
function System.UriTypeConverter:IsValid(context, value)end
---@class System.StringNormalizationExtensions : System.Object
System.StringNormalizationExtensions = {}
---@type System.StringNormalizationExtensions
CS.System.StringNormalizationExtensions = System.StringNormalizationExtensions

