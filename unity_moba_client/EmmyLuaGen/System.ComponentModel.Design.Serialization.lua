---@class System.ComponentModel.Design.Serialization.ComponentSerializationService : System.Object
System.ComponentModel.Design.Serialization.ComponentSerializationService = {}
---@type System.ComponentModel.Design.Serialization.ComponentSerializationService
CS.System.ComponentModel.Design.Serialization.ComponentSerializationService = System.ComponentModel.Design.Serialization.ComponentSerializationService

---@return System.ComponentModel.Design.Serialization.SerializationStore
function System.ComponentModel.Design.Serialization.ComponentSerializationService:CreateStore()end
---@param stream System.IO.Stream
---@return System.ComponentModel.Design.Serialization.SerializationStore
function System.ComponentModel.Design.Serialization.ComponentSerializationService:LoadStore(stream)end
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@param value System.Object
---@return System.Void
function System.ComponentModel.Design.Serialization.ComponentSerializationService:Serialize(store, value)end
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@param value System.Object
---@return System.Void
function System.ComponentModel.Design.Serialization.ComponentSerializationService:SerializeAbsolute(store, value)end
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@param owningObject System.Object
---@param member System.ComponentModel.MemberDescriptor
---@return System.Void
function System.ComponentModel.Design.Serialization.ComponentSerializationService:SerializeMember(store, owningObject, member)end
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@param owningObject System.Object
---@param member System.ComponentModel.MemberDescriptor
---@return System.Void
function System.ComponentModel.Design.Serialization.ComponentSerializationService:SerializeMemberAbsolute(store, owningObject, member)end
---@overload fun(store:System.ComponentModel.Design.Serialization.SerializationStore, container:System.ComponentModel.IContainer):System.Collections.ICollection
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@return System.Collections.ICollection
function System.ComponentModel.Design.Serialization.ComponentSerializationService:Deserialize(store)end
---@overload fun(store:System.ComponentModel.Design.Serialization.SerializationStore, container:System.ComponentModel.IContainer, validateRecycledTypes:System.Boolean):System.Void
---@overload fun(store:System.ComponentModel.Design.Serialization.SerializationStore, container:System.ComponentModel.IContainer, validateRecycledTypes:System.Boolean, applyDefaults:System.Boolean):System.Void
---@param store System.ComponentModel.Design.Serialization.SerializationStore
---@param container System.ComponentModel.IContainer
---@return System.Void
function System.ComponentModel.Design.Serialization.ComponentSerializationService:DeserializeTo(store, container)end
---@class System.ComponentModel.Design.Serialization.ContextStack : System.Object
---@field public Current System.Object @  getter
---@field public Item System.Object @  getter
---@field public Item System.Object @  getter
System.ComponentModel.Design.Serialization.ContextStack = {}
---@type System.ComponentModel.Design.Serialization.ContextStack
CS.System.ComponentModel.Design.Serialization.ContextStack = System.ComponentModel.Design.Serialization.ContextStack

---@param context System.Object
---@return System.Void
function System.ComponentModel.Design.Serialization.ContextStack:Append(context)end
---@return System.Object
function System.ComponentModel.Design.Serialization.ContextStack:Pop()end
---@param context System.Object
---@return System.Void
function System.ComponentModel.Design.Serialization.ContextStack:Push(context)end
---@class System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute : System.Attribute
---@field public ProviderTypeName System.String @  getter
System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute = {}
---@type System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute
CS.System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute = System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute

---@class System.ComponentModel.Design.Serialization.DesignerLoader : System.Object
---@field public Loading System.Boolean @  getter
System.ComponentModel.Design.Serialization.DesignerLoader = {}
---@type System.ComponentModel.Design.Serialization.DesignerLoader
CS.System.ComponentModel.Design.Serialization.DesignerLoader = System.ComponentModel.Design.Serialization.DesignerLoader

---@param host System.ComponentModel.Design.Serialization.IDesignerLoaderHost
---@return System.Void
function System.ComponentModel.Design.Serialization.DesignerLoader:BeginLoad(host)end
---@return System.Void
function System.ComponentModel.Design.Serialization.DesignerLoader:Dispose()end
---@return System.Void
function System.ComponentModel.Design.Serialization.DesignerLoader:Flush()end
---@class System.ComponentModel.Design.Serialization.DesignerSerializerAttribute : System.Attribute
---@field public SerializerTypeName System.String @  getter
---@field public SerializerBaseTypeName System.String @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.Design.Serialization.DesignerSerializerAttribute = {}
---@type System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
CS.System.ComponentModel.Design.Serialization.DesignerSerializerAttribute = System.ComponentModel.Design.Serialization.DesignerSerializerAttribute

---@class System.ComponentModel.Design.Serialization.InstanceDescriptor : System.Object
---@field public Arguments System.Collections.ICollection @  getter
---@field public IsComplete System.Boolean @  getter
---@field public MemberInfo System.Reflection.MemberInfo @  getter
System.ComponentModel.Design.Serialization.InstanceDescriptor = {}
---@type System.ComponentModel.Design.Serialization.InstanceDescriptor
CS.System.ComponentModel.Design.Serialization.InstanceDescriptor = System.ComponentModel.Design.Serialization.InstanceDescriptor

---@return System.Object
function System.ComponentModel.Design.Serialization.InstanceDescriptor:Invoke()end
---@class System.ComponentModel.Design.Serialization.MemberRelationshipService : System.Object
---@field public Item System.ComponentModel.Design.Serialization.MemberRelationship @ setter getter
---@field public Item System.ComponentModel.Design.Serialization.MemberRelationship @ setter getter
System.ComponentModel.Design.Serialization.MemberRelationshipService = {}
---@type System.ComponentModel.Design.Serialization.MemberRelationshipService
CS.System.ComponentModel.Design.Serialization.MemberRelationshipService = System.ComponentModel.Design.Serialization.MemberRelationshipService

---@param source System.ComponentModel.Design.Serialization.MemberRelationship
---@param relationship System.ComponentModel.Design.Serialization.MemberRelationship
---@return System.Boolean
function System.ComponentModel.Design.Serialization.MemberRelationshipService:SupportsRelationship(source, relationship)end
---@class System.ComponentModel.Design.Serialization.MemberRelationship : System.ValueType
---@field public IsEmpty System.Boolean @  getter
---@field public Member System.ComponentModel.MemberDescriptor @  getter
---@field public Owner System.Object @  getter
---@field public Empty System.ComponentModel.Design.Serialization.MemberRelationship
System.ComponentModel.Design.Serialization.MemberRelationship = {}
---@type System.ComponentModel.Design.Serialization.MemberRelationship
CS.System.ComponentModel.Design.Serialization.MemberRelationship = System.ComponentModel.Design.Serialization.MemberRelationship

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.Design.Serialization.MemberRelationship:Equals(obj)end
---@return System.Int32
function System.ComponentModel.Design.Serialization.MemberRelationship:GetHashCode()end
---@param left System.ComponentModel.Design.Serialization.MemberRelationship
---@param right System.ComponentModel.Design.Serialization.MemberRelationship
---@return System.Boolean
function System.ComponentModel.Design.Serialization.MemberRelationship.op_Equality(left, right)end
---@param left System.ComponentModel.Design.Serialization.MemberRelationship
---@param right System.ComponentModel.Design.Serialization.MemberRelationship
---@return System.Boolean
function System.ComponentModel.Design.Serialization.MemberRelationship.op_Inequality(left, right)end
---@class System.ComponentModel.Design.Serialization.ResolveNameEventArgs : System.EventArgs
---@field public Name System.String @  getter
---@field public Value System.Object @ setter getter
System.ComponentModel.Design.Serialization.ResolveNameEventArgs = {}
---@type System.ComponentModel.Design.Serialization.ResolveNameEventArgs
CS.System.ComponentModel.Design.Serialization.ResolveNameEventArgs = System.ComponentModel.Design.Serialization.ResolveNameEventArgs

---@class System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute : System.Attribute
---@field public Reloadable System.Boolean @  getter
---@field public SerializerTypeName System.String @  getter
---@field public SerializerBaseTypeName System.String @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute = {}
---@type System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
CS.System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute = System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute

---@class System.ComponentModel.Design.Serialization.SerializationStore : System.Object
---@field public Errors System.Collections.ICollection @  getter
System.ComponentModel.Design.Serialization.SerializationStore = {}
---@type System.ComponentModel.Design.Serialization.SerializationStore
CS.System.ComponentModel.Design.Serialization.SerializationStore = System.ComponentModel.Design.Serialization.SerializationStore

---@return System.Void
function System.ComponentModel.Design.Serialization.SerializationStore:Close()end
---@param stream System.IO.Stream
---@return System.Void
function System.ComponentModel.Design.Serialization.SerializationStore:Save(stream)end
