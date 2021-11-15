---@class System.Runtime.Remoting.Proxies.ProxyAttribute : System.Attribute
System.Runtime.Remoting.Proxies.ProxyAttribute = {}
---@type System.Runtime.Remoting.Proxies.ProxyAttribute
CS.System.Runtime.Remoting.Proxies.ProxyAttribute = System.Runtime.Remoting.Proxies.ProxyAttribute

---@param serverType System.Type
---@return System.MarshalByRefObject
function System.Runtime.Remoting.Proxies.ProxyAttribute:CreateInstance(serverType)end
---@param objRef System.Runtime.Remoting.ObjRef
---@param serverType System.Type
---@param serverObject System.Object
---@param serverContext System.Runtime.Remoting.Contexts.Context
---@return System.Runtime.Remoting.Proxies.RealProxy
function System.Runtime.Remoting.Proxies.ProxyAttribute:CreateProxy(objRef, serverType, serverObject, serverContext)end
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Void
function System.Runtime.Remoting.Proxies.ProxyAttribute:GetPropertiesForNewContext(msg)end
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Boolean
function System.Runtime.Remoting.Proxies.ProxyAttribute:IsContextOK(ctx, msg)end
---@class System.Runtime.Remoting.Proxies.RealProxy : System.Object
System.Runtime.Remoting.Proxies.RealProxy = {}
---@type System.Runtime.Remoting.Proxies.RealProxy
CS.System.Runtime.Remoting.Proxies.RealProxy = System.Runtime.Remoting.Proxies.RealProxy

---@return System.Type
function System.Runtime.Remoting.Proxies.RealProxy:GetProxiedType()end
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function System.Runtime.Remoting.Proxies.RealProxy:CreateObjRef(requestedType)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.Proxies.RealProxy:GetObjectData(info, context)end
---@param fIsMarshalled System.Boolean
---@return System.IntPtr
function System.Runtime.Remoting.Proxies.RealProxy:GetCOMIUnknown(fIsMarshalled)end
---@param i System.IntPtr
---@return System.Void
function System.Runtime.Remoting.Proxies.RealProxy:SetCOMIUnknown(i)end
---@param iid System.Guid
---@return System.IntPtr
function System.Runtime.Remoting.Proxies.RealProxy:SupportsInterface(iid)end
---@param rp System.Runtime.Remoting.Proxies.RealProxy
---@return System.Object
function System.Runtime.Remoting.Proxies.RealProxy.GetStubData(rp)end
---@param rp System.Runtime.Remoting.Proxies.RealProxy
---@param stubData System.Object
---@return System.Void
function System.Runtime.Remoting.Proxies.RealProxy.SetStubData(rp, stubData)end
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function System.Runtime.Remoting.Proxies.RealProxy:Invoke(msg)end
---@return System.Object
function System.Runtime.Remoting.Proxies.RealProxy:GetTransparentProxy()end
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function System.Runtime.Remoting.Proxies.RealProxy:InitializeServerObject(ctorMsg)end
