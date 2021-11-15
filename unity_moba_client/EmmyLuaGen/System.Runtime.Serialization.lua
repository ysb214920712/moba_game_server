---@class System.Runtime.Serialization.Formatter : System.Object
---@field public SurrogateSelector System.Runtime.Serialization.ISurrogateSelector @ setter getter
---@field public Binder System.Runtime.Serialization.SerializationBinder @ setter getter
---@field public Context System.Runtime.Serialization.StreamingContext @ setter getter
System.Runtime.Serialization.Formatter = {}
---@type System.Runtime.Serialization.Formatter
CS.System.Runtime.Serialization.Formatter = System.Runtime.Serialization.Formatter

---@param serializationStream System.IO.Stream
---@return System.Object
function System.Runtime.Serialization.Formatter:Deserialize(serializationStream)end
---@param serializationStream System.IO.Stream
---@param graph System.Object
---@return System.Void
function System.Runtime.Serialization.Formatter:Serialize(serializationStream, graph)end
---@class System.Runtime.Serialization.FormatterConverter : System.Object
System.Runtime.Serialization.FormatterConverter = {}
---@type System.Runtime.Serialization.FormatterConverter
CS.System.Runtime.Serialization.FormatterConverter = System.Runtime.Serialization.FormatterConverter

---@overload fun(value:System.Object, typeCode:System.TypeCode):System.Object
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Runtime.Serialization.FormatterConverter:Convert(value, type)end
---@param value System.Object
---@return System.Boolean
function System.Runtime.Serialization.FormatterConverter:ToBoolean(value)end
---@param value System.Object
---@return System.Char
function System.Runtime.Serialization.FormatterConverter:ToChar(value)end
---@param value System.Object
---@return System.SByte
function System.Runtime.Serialization.FormatterConverter:ToSByte(value)end
---@param value System.Object
---@return System.Byte
function System.Runtime.Serialization.FormatterConverter:ToByte(value)end
---@param value System.Object
---@return System.Int16
function System.Runtime.Serialization.FormatterConverter:ToInt16(value)end
---@param value System.Object
---@return System.UInt16
function System.Runtime.Serialization.FormatterConverter:ToUInt16(value)end
---@param value System.Object
---@return System.Int32
function System.Runtime.Serialization.FormatterConverter:ToInt32(value)end
---@param value System.Object
---@return System.UInt32
function System.Runtime.Serialization.FormatterConverter:ToUInt32(value)end
---@param value System.Object
---@return System.Int64
function System.Runtime.Serialization.FormatterConverter:ToInt64(value)end
---@param value System.Object
---@return System.UInt64
function System.Runtime.Serialization.FormatterConverter:ToUInt64(value)end
---@param value System.Object
---@return System.Single
function System.Runtime.Serialization.FormatterConverter:ToSingle(value)end
---@param value System.Object
---@return System.Double
function System.Runtime.Serialization.FormatterConverter:ToDouble(value)end
---@param value System.Object
---@return System.Decimal
function System.Runtime.Serialization.FormatterConverter:ToDecimal(value)end
---@param value System.Object
---@return System.DateTime
function System.Runtime.Serialization.FormatterConverter:ToDateTime(value)end
---@param value System.Object
---@return System.String
function System.Runtime.Serialization.FormatterConverter:ToString(value)end
---@class System.Runtime.Serialization.FormatterServices : System.Object
System.Runtime.Serialization.FormatterServices = {}
---@type System.Runtime.Serialization.FormatterServices
CS.System.Runtime.Serialization.FormatterServices = System.Runtime.Serialization.FormatterServices

---@overload fun(type:System.Type, context:System.Runtime.Serialization.StreamingContext):System.Reflection.MemberInfo[]
---@param type System.Type
---@return System.Reflection.MemberInfo[]
function System.Runtime.Serialization.FormatterServices.GetSerializableMembers(type)end
---@param t System.Type
---@param securityLevel System.Runtime.Serialization.Formatters.TypeFilterLevel
---@return System.Void
function System.Runtime.Serialization.FormatterServices.CheckTypeSecurity(t, securityLevel)end
---@param type System.Type
---@return System.Object
function System.Runtime.Serialization.FormatterServices.GetUninitializedObject(type)end
---@param type System.Type
---@return System.Object
function System.Runtime.Serialization.FormatterServices.GetSafeUninitializedObject(type)end
---@param obj System.Object
---@param members System.Reflection.MemberInfo[]
---@param data System.Object[]
---@return System.Object
function System.Runtime.Serialization.FormatterServices.PopulateObjectMembers(obj, members, data)end
---@param obj System.Object
---@param members System.Reflection.MemberInfo[]
---@return System.Object[]
function System.Runtime.Serialization.FormatterServices.GetObjectData(obj, members)end
---@param innerSurrogate System.Runtime.Serialization.ISerializationSurrogate
---@return System.Runtime.Serialization.ISerializationSurrogate
function System.Runtime.Serialization.FormatterServices.GetSurrogateForCyclicalReference(innerSurrogate)end
---@param assem System.Reflection.Assembly
---@param name System.String
---@return System.Type
function System.Runtime.Serialization.FormatterServices.GetTypeFromAssembly(assem, name)end
---@class System.Runtime.Serialization.ObjectIDGenerator : System.Object
System.Runtime.Serialization.ObjectIDGenerator = {}
---@type System.Runtime.Serialization.ObjectIDGenerator
CS.System.Runtime.Serialization.ObjectIDGenerator = System.Runtime.Serialization.ObjectIDGenerator

---@param obj System.Object
---@param firstTime System.Boolean
---@return System.Int64
function System.Runtime.Serialization.ObjectIDGenerator:GetId(obj, firstTime)end
---@param obj System.Object
---@param firstTime System.Boolean
---@return System.Int64
function System.Runtime.Serialization.ObjectIDGenerator:HasId(obj, firstTime)end
---@class System.Runtime.Serialization.ObjectManager : System.Object
System.Runtime.Serialization.ObjectManager = {}
---@type System.Runtime.Serialization.ObjectManager
CS.System.Runtime.Serialization.ObjectManager = System.Runtime.Serialization.ObjectManager

---@param objectID System.Int64
---@return System.Object
function System.Runtime.Serialization.ObjectManager:GetObject(objectID)end
---@overload fun(obj:System.Object, objectID:System.Int64, info:System.Runtime.Serialization.SerializationInfo):System.Void
---@overload fun(obj:System.Object, objectID:System.Int64, info:System.Runtime.Serialization.SerializationInfo, idOfContainingObj:System.Int64, member:System.Reflection.MemberInfo):System.Void
---@overload fun(obj:System.Object, objectID:System.Int64, info:System.Runtime.Serialization.SerializationInfo, idOfContainingObj:System.Int64, member:System.Reflection.MemberInfo, arrayIndex:System.Int32[]):System.Void
---@param obj System.Object
---@param objectID System.Int64
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RegisterObject(obj, objectID)end
---@return System.Void
function System.Runtime.Serialization.ObjectManager:DoFixups()end
---@param objectToBeFixed System.Int64
---@param member System.Reflection.MemberInfo
---@param objectRequired System.Int64
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RecordFixup(objectToBeFixed, member, objectRequired)end
---@param objectToBeFixed System.Int64
---@param memberName System.String
---@param objectRequired System.Int64
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RecordDelayedFixup(objectToBeFixed, memberName, objectRequired)end
---@overload fun(arrayToBeFixed:System.Int64, indices:System.Int32[], objectRequired:System.Int64):System.Void
---@param arrayToBeFixed System.Int64
---@param index System.Int32
---@param objectRequired System.Int64
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RecordArrayElementFixup(arrayToBeFixed, index, objectRequired)end
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RaiseDeserializationEvent()end
---@param obj System.Object
---@return System.Void
function System.Runtime.Serialization.ObjectManager:RaiseOnDeserializingEvent(obj)end
---@class System.Runtime.Serialization.SafeSerializationEventArgs : System.EventArgs
---@field public StreamingContext System.Runtime.Serialization.StreamingContext @  getter
System.Runtime.Serialization.SafeSerializationEventArgs = {}
---@type System.Runtime.Serialization.SafeSerializationEventArgs
CS.System.Runtime.Serialization.SafeSerializationEventArgs = System.Runtime.Serialization.SafeSerializationEventArgs

---@param serializedState System.Runtime.Serialization.ISafeSerializationData
---@return System.Void
function System.Runtime.Serialization.SafeSerializationEventArgs:AddSerializedState(serializedState)end
---@class System.Runtime.Serialization.OptionalFieldAttribute : System.Attribute
---@field public VersionAdded System.Int32 @ setter getter
System.Runtime.Serialization.OptionalFieldAttribute = {}
---@type System.Runtime.Serialization.OptionalFieldAttribute
CS.System.Runtime.Serialization.OptionalFieldAttribute = System.Runtime.Serialization.OptionalFieldAttribute

---@class System.Runtime.Serialization.OnSerializingAttribute : System.Attribute
System.Runtime.Serialization.OnSerializingAttribute = {}
---@type System.Runtime.Serialization.OnSerializingAttribute
CS.System.Runtime.Serialization.OnSerializingAttribute = System.Runtime.Serialization.OnSerializingAttribute

---@class System.Runtime.Serialization.OnSerializedAttribute : System.Attribute
System.Runtime.Serialization.OnSerializedAttribute = {}
---@type System.Runtime.Serialization.OnSerializedAttribute
CS.System.Runtime.Serialization.OnSerializedAttribute = System.Runtime.Serialization.OnSerializedAttribute

---@class System.Runtime.Serialization.OnDeserializingAttribute : System.Attribute
System.Runtime.Serialization.OnDeserializingAttribute = {}
---@type System.Runtime.Serialization.OnDeserializingAttribute
CS.System.Runtime.Serialization.OnDeserializingAttribute = System.Runtime.Serialization.OnDeserializingAttribute

---@class System.Runtime.Serialization.OnDeserializedAttribute : System.Attribute
System.Runtime.Serialization.OnDeserializedAttribute = {}
---@type System.Runtime.Serialization.OnDeserializedAttribute
CS.System.Runtime.Serialization.OnDeserializedAttribute = System.Runtime.Serialization.OnDeserializedAttribute

---@class System.Runtime.Serialization.SerializationBinder : System.Object
System.Runtime.Serialization.SerializationBinder = {}
---@type System.Runtime.Serialization.SerializationBinder
CS.System.Runtime.Serialization.SerializationBinder = System.Runtime.Serialization.SerializationBinder

---@param serializedType System.Type
---@param assemblyName System.String
---@param typeName System.String
---@return System.Void
function System.Runtime.Serialization.SerializationBinder:BindToName(serializedType, assemblyName, typeName)end
---@param assemblyName System.String
---@param typeName System.String
---@return System.Type
function System.Runtime.Serialization.SerializationBinder:BindToType(assemblyName, typeName)end
---@class System.Runtime.Serialization.SerializationException : System.SystemException
System.Runtime.Serialization.SerializationException = {}
---@type System.Runtime.Serialization.SerializationException
CS.System.Runtime.Serialization.SerializationException = System.Runtime.Serialization.SerializationException

---@class System.Runtime.Serialization.SerializationInfo : System.Object
---@field public FullTypeName System.String @ setter getter
---@field public AssemblyName System.String @ setter getter
---@field public MemberCount System.Int32 @  getter
---@field public ObjectType System.Type @  getter
---@field public IsFullTypeNameSetExplicit System.Boolean @  getter
---@field public IsAssemblyNameSetExplicit System.Boolean @  getter
System.Runtime.Serialization.SerializationInfo = {}
---@type System.Runtime.Serialization.SerializationInfo
CS.System.Runtime.Serialization.SerializationInfo = System.Runtime.Serialization.SerializationInfo

---@param type System.Type
---@return System.Void
function System.Runtime.Serialization.SerializationInfo:SetType(type)end
---@return System.Runtime.Serialization.SerializationInfoEnumerator
function System.Runtime.Serialization.SerializationInfo:GetEnumerator()end
---@overload fun(name:System.String, value:System.Char):System.Void
---@overload fun(name:System.String, value:System.SByte):System.Void
---@overload fun(name:System.String, value:System.Byte):System.Void
---@overload fun(name:System.String, value:System.Int16):System.Void
---@overload fun(name:System.String, value:System.UInt16):System.Void
---@overload fun(name:System.String, value:System.Int32):System.Void
---@overload fun(name:System.String, value:System.UInt32):System.Void
---@overload fun(name:System.String, value:System.Int64):System.Void
---@overload fun(name:System.String, value:System.UInt64):System.Void
---@overload fun(name:System.String, value:System.Single):System.Void
---@overload fun(name:System.String, value:System.Double):System.Void
---@overload fun(name:System.String, value:System.Object):System.Void
---@overload fun(name:System.String, value:System.Decimal):System.Void
---@overload fun(name:System.String, value:System.DateTime):System.Void
---@overload fun(name:System.String, value:System.Object, type:System.Type):System.Void
---@param name System.String
---@param value System.Boolean
---@return System.Void
function System.Runtime.Serialization.SerializationInfo:AddValue(name, value)end
---@param name System.String
---@param type System.Type
---@return System.Object
function System.Runtime.Serialization.SerializationInfo:GetValue(name, type)end
---@param name System.String
---@return System.Boolean
function System.Runtime.Serialization.SerializationInfo:GetBoolean(name)end
---@param name System.String
---@return System.Char
function System.Runtime.Serialization.SerializationInfo:GetChar(name)end
---@param name System.String
---@return System.SByte
function System.Runtime.Serialization.SerializationInfo:GetSByte(name)end
---@param name System.String
---@return System.Byte
function System.Runtime.Serialization.SerializationInfo:GetByte(name)end
---@param name System.String
---@return System.Int16
function System.Runtime.Serialization.SerializationInfo:GetInt16(name)end
---@param name System.String
---@return System.UInt16
function System.Runtime.Serialization.SerializationInfo:GetUInt16(name)end
---@param name System.String
---@return System.Int32
function System.Runtime.Serialization.SerializationInfo:GetInt32(name)end
---@param name System.String
---@return System.UInt32
function System.Runtime.Serialization.SerializationInfo:GetUInt32(name)end
---@param name System.String
---@return System.Int64
function System.Runtime.Serialization.SerializationInfo:GetInt64(name)end
---@param name System.String
---@return System.UInt64
function System.Runtime.Serialization.SerializationInfo:GetUInt64(name)end
---@param name System.String
---@return System.Single
function System.Runtime.Serialization.SerializationInfo:GetSingle(name)end
---@param name System.String
---@return System.Double
function System.Runtime.Serialization.SerializationInfo:GetDouble(name)end
---@param name System.String
---@return System.Decimal
function System.Runtime.Serialization.SerializationInfo:GetDecimal(name)end
---@param name System.String
---@return System.DateTime
function System.Runtime.Serialization.SerializationInfo:GetDateTime(name)end
---@param name System.String
---@return System.String
function System.Runtime.Serialization.SerializationInfo:GetString(name)end
---@class System.Runtime.Serialization.SerializationEntry : System.ValueType
---@field public Value System.Object @  getter
---@field public Name System.String @  getter
---@field public ObjectType System.Type @  getter
System.Runtime.Serialization.SerializationEntry = {}
---@type System.Runtime.Serialization.SerializationEntry
CS.System.Runtime.Serialization.SerializationEntry = System.Runtime.Serialization.SerializationEntry

---@class System.Runtime.Serialization.SerializationInfoEnumerator : System.Object
---@field public Current System.Runtime.Serialization.SerializationEntry @  getter
---@field public Name System.String @  getter
---@field public Value System.Object @  getter
---@field public ObjectType System.Type @  getter
System.Runtime.Serialization.SerializationInfoEnumerator = {}
---@type System.Runtime.Serialization.SerializationInfoEnumerator
CS.System.Runtime.Serialization.SerializationInfoEnumerator = System.Runtime.Serialization.SerializationInfoEnumerator

---@return System.Boolean
function System.Runtime.Serialization.SerializationInfoEnumerator:MoveNext()end
---@return System.Void
function System.Runtime.Serialization.SerializationInfoEnumerator:Reset()end
---@class System.Runtime.Serialization.SerializationObjectManager : System.Object
System.Runtime.Serialization.SerializationObjectManager = {}
---@type System.Runtime.Serialization.SerializationObjectManager
CS.System.Runtime.Serialization.SerializationObjectManager = System.Runtime.Serialization.SerializationObjectManager

---@param obj System.Object
---@return System.Void
function System.Runtime.Serialization.SerializationObjectManager:RegisterObject(obj)end
---@return System.Void
function System.Runtime.Serialization.SerializationObjectManager:RaiseOnSerializedEvent()end
---@class System.Runtime.Serialization.StreamingContext : System.ValueType
---@field public Context System.Object @  getter
---@field public State System.Runtime.Serialization.StreamingContextStates @  getter
System.Runtime.Serialization.StreamingContext = {}
---@type System.Runtime.Serialization.StreamingContext
CS.System.Runtime.Serialization.StreamingContext = System.Runtime.Serialization.StreamingContext

---@param obj System.Object
---@return System.Boolean
function System.Runtime.Serialization.StreamingContext:Equals(obj)end
---@return System.Int32
function System.Runtime.Serialization.StreamingContext:GetHashCode()end
---@class System.Runtime.Serialization.StreamingContextStates : System.Enum
System.Runtime.Serialization.StreamingContextStates = {}
---@type System.Runtime.Serialization.StreamingContextStates
CS.System.Runtime.Serialization.StreamingContextStates = System.Runtime.Serialization.StreamingContextStates

---@return System.Int32 value:1
System.Runtime.Serialization.StreamingContextStates.CrossProcess = 1
---@return System.Int32 value:2
System.Runtime.Serialization.StreamingContextStates.CrossMachine = 2
---@return System.Int32 value:4
System.Runtime.Serialization.StreamingContextStates.File = 4
---@return System.Int32 value:8
System.Runtime.Serialization.StreamingContextStates.Persistence = 8

---@class System.Runtime.Serialization.SurrogateSelector : System.Object
System.Runtime.Serialization.SurrogateSelector = {}
---@type System.Runtime.Serialization.SurrogateSelector
CS.System.Runtime.Serialization.SurrogateSelector = System.Runtime.Serialization.SurrogateSelector

---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param surrogate System.Runtime.Serialization.ISerializationSurrogate
---@return System.Void
function System.Runtime.Serialization.SurrogateSelector:AddSurrogate(type, context, surrogate)end
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Void
function System.Runtime.Serialization.SurrogateSelector:ChainSelector(selector)end
---@return System.Runtime.Serialization.ISurrogateSelector
function System.Runtime.Serialization.SurrogateSelector:GetNextSelector()end
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Runtime.Serialization.ISerializationSurrogate
function System.Runtime.Serialization.SurrogateSelector:GetSurrogate(type, context, selector)end
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Serialization.SurrogateSelector:RemoveSurrogate(type, context)end
