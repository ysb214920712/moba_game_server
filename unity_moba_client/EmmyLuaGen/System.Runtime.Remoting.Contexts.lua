---@class System.Runtime.Remoting.Contexts.Context : System.Object
---@field public DefaultContext System.Runtime.Remoting.Contexts.Context @static  getter
---@field public ContextID System.Int32 @  getter
---@field public ContextProperties System.Runtime.Remoting.Contexts.IContextProperty[] @  getter
System.Runtime.Remoting.Contexts.Context = {}
---@type System.Runtime.Remoting.Contexts.Context
CS.System.Runtime.Remoting.Contexts.Context = System.Runtime.Remoting.Contexts.Context

---@param prop System.Runtime.Remoting.Contexts.IDynamicProperty
---@param obj System.ContextBoundObject
---@param ctx System.Runtime.Remoting.Contexts.Context
---@return System.Boolean
function System.Runtime.Remoting.Contexts.Context.RegisterDynamicProperty(prop, obj, ctx)end
---@param name System.String
---@param obj System.ContextBoundObject
---@param ctx System.Runtime.Remoting.Contexts.Context
---@return System.Boolean
function System.Runtime.Remoting.Contexts.Context.UnregisterDynamicProperty(name, obj, ctx)end
---@param name System.String
---@return System.Runtime.Remoting.Contexts.IContextProperty
function System.Runtime.Remoting.Contexts.Context:GetProperty(name)end
---@param prop System.Runtime.Remoting.Contexts.IContextProperty
---@return System.Void
function System.Runtime.Remoting.Contexts.Context:SetProperty(prop)end
---@return System.Void
function System.Runtime.Remoting.Contexts.Context:Freeze()end
---@return System.String
function System.Runtime.Remoting.Contexts.Context:ToString()end
---@param deleg System.Runtime.Remoting.Contexts.CrossContextDelegate
---@return System.Void
function System.Runtime.Remoting.Contexts.Context:DoCallBack(deleg)end
---@return System.LocalDataStoreSlot
function System.Runtime.Remoting.Contexts.Context.AllocateDataSlot()end
---@param name System.String
---@return System.LocalDataStoreSlot
function System.Runtime.Remoting.Contexts.Context.AllocateNamedDataSlot(name)end
---@param name System.String
---@return System.Void
function System.Runtime.Remoting.Contexts.Context.FreeNamedDataSlot(name)end
---@param name System.String
---@return System.LocalDataStoreSlot
function System.Runtime.Remoting.Contexts.Context.GetNamedDataSlot(name)end
---@param slot System.LocalDataStoreSlot
---@return System.Object
function System.Runtime.Remoting.Contexts.Context.GetData(slot)end
---@param slot System.LocalDataStoreSlot
---@param data System.Object
---@return System.Void
function System.Runtime.Remoting.Contexts.Context.SetData(slot, data)end
---@class System.Runtime.Remoting.Contexts.ContextAttribute : System.Attribute
---@field public Name System.String @  getter
System.Runtime.Remoting.Contexts.ContextAttribute = {}
---@type System.Runtime.Remoting.Contexts.ContextAttribute
CS.System.Runtime.Remoting.Contexts.ContextAttribute = System.Runtime.Remoting.Contexts.ContextAttribute

---@param o System.Object
---@return System.Boolean
function System.Runtime.Remoting.Contexts.ContextAttribute:Equals(o)end
---@param newContext System.Runtime.Remoting.Contexts.Context
---@return System.Void
function System.Runtime.Remoting.Contexts.ContextAttribute:Freeze(newContext)end
---@return System.Int32
function System.Runtime.Remoting.Contexts.ContextAttribute:GetHashCode()end
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Void
function System.Runtime.Remoting.Contexts.ContextAttribute:GetPropertiesForNewContext(ctorMsg)end
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Boolean
function System.Runtime.Remoting.Contexts.ContextAttribute:IsContextOK(ctx, ctorMsg)end
---@param newCtx System.Runtime.Remoting.Contexts.Context
---@return System.Boolean
function System.Runtime.Remoting.Contexts.ContextAttribute:IsNewContextOK(newCtx)end
---@class System.Runtime.Remoting.Contexts.ContextProperty : System.Object
---@field public Name System.String @  getter
---@field public Property System.Object @  getter
System.Runtime.Remoting.Contexts.ContextProperty = {}
---@type System.Runtime.Remoting.Contexts.ContextProperty
CS.System.Runtime.Remoting.Contexts.ContextProperty = System.Runtime.Remoting.Contexts.ContextProperty

---@class System.Runtime.Remoting.Contexts.SynchronizationAttribute : System.Runtime.Remoting.Contexts.ContextAttribute
---@field public IsReEntrant System.Boolean @  getter
---@field public Locked System.Boolean @ setter getter
---@field public NOT_SUPPORTED System.Int32
---@field public SUPPORTED System.Int32
---@field public REQUIRED System.Int32
---@field public REQUIRES_NEW System.Int32
System.Runtime.Remoting.Contexts.SynchronizationAttribute = {}
---@type System.Runtime.Remoting.Contexts.SynchronizationAttribute
CS.System.Runtime.Remoting.Contexts.SynchronizationAttribute = System.Runtime.Remoting.Contexts.SynchronizationAttribute

---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Void
function System.Runtime.Remoting.Contexts.SynchronizationAttribute:GetPropertiesForNewContext(ctorMsg)end
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function System.Runtime.Remoting.Contexts.SynchronizationAttribute:GetClientContextSink(nextSink)end
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function System.Runtime.Remoting.Contexts.SynchronizationAttribute:GetServerContextSink(nextSink)end
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Boolean
function System.Runtime.Remoting.Contexts.SynchronizationAttribute:IsContextOK(ctx, msg)end
