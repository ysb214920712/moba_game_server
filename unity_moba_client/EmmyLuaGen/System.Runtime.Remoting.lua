---@class System.Runtime.Remoting.ActivatedClientTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ApplicationUrl System.String @  getter
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[] @ setter getter
---@field public ObjectType System.Type @  getter
System.Runtime.Remoting.ActivatedClientTypeEntry = {}
---@type System.Runtime.Remoting.ActivatedClientTypeEntry
CS.System.Runtime.Remoting.ActivatedClientTypeEntry = System.Runtime.Remoting.ActivatedClientTypeEntry

---@return System.String
function System.Runtime.Remoting.ActivatedClientTypeEntry:ToString()end
---@class System.Runtime.Remoting.ActivatedServiceTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[] @ setter getter
---@field public ObjectType System.Type @  getter
System.Runtime.Remoting.ActivatedServiceTypeEntry = {}
---@type System.Runtime.Remoting.ActivatedServiceTypeEntry
CS.System.Runtime.Remoting.ActivatedServiceTypeEntry = System.Runtime.Remoting.ActivatedServiceTypeEntry

---@return System.String
function System.Runtime.Remoting.ActivatedServiceTypeEntry:ToString()end
---@class System.Runtime.Remoting.CustomErrorsModes : System.Enum
System.Runtime.Remoting.CustomErrorsModes = {}
---@type System.Runtime.Remoting.CustomErrorsModes
CS.System.Runtime.Remoting.CustomErrorsModes = System.Runtime.Remoting.CustomErrorsModes

---@return System.Int32 value:0
System.Runtime.Remoting.CustomErrorsModes.On = 0
---@return System.Int32 value:1
System.Runtime.Remoting.CustomErrorsModes.Off = 1
---@return System.Int32 value:2
System.Runtime.Remoting.CustomErrorsModes.RemoteOnly = 2

---@class System.Runtime.Remoting.InternalRemotingServices : System.Object
System.Runtime.Remoting.InternalRemotingServices = {}
---@type System.Runtime.Remoting.InternalRemotingServices
CS.System.Runtime.Remoting.InternalRemotingServices = System.Runtime.Remoting.InternalRemotingServices

---@param s System.String
---@return System.Void
function System.Runtime.Remoting.InternalRemotingServices.DebugOutChnl(s)end
---@param reflectionObject System.Object
---@return System.Runtime.Remoting.Metadata.SoapAttribute
function System.Runtime.Remoting.InternalRemotingServices.GetCachedSoapAttribute(reflectionObject)end
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Runtime.Remoting.InternalRemotingServices.RemotingAssert(condition, message)end
---@param messages System.Object[]
---@return System.Void
function System.Runtime.Remoting.InternalRemotingServices.RemotingTrace(messages)end
---@param m System.Runtime.Remoting.Messaging.MethodCall
---@param srvID System.Object
---@return System.Void
function System.Runtime.Remoting.InternalRemotingServices.SetServerIdentity(m, srvID)end
---@class System.Runtime.Remoting.ObjRef : System.Object
---@field public ChannelInfo System.Runtime.Remoting.IChannelInfo @ setter getter
---@field public EnvoyInfo System.Runtime.Remoting.IEnvoyInfo @ setter getter
---@field public TypeInfo System.Runtime.Remoting.IRemotingTypeInfo @ setter getter
---@field public URI System.String @ setter getter
System.Runtime.Remoting.ObjRef = {}
---@type System.Runtime.Remoting.ObjRef
CS.System.Runtime.Remoting.ObjRef = System.Runtime.Remoting.ObjRef

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.ObjRef:GetObjectData(info, context)end
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Object
function System.Runtime.Remoting.ObjRef:GetRealObject(context)end
---@return System.Boolean
function System.Runtime.Remoting.ObjRef:IsFromThisAppDomain()end
---@return System.Boolean
function System.Runtime.Remoting.ObjRef:IsFromThisProcess()end
---@class System.Runtime.Remoting.ObjectHandle : System.MarshalByRefObject
System.Runtime.Remoting.ObjectHandle = {}
---@type System.Runtime.Remoting.ObjectHandle
CS.System.Runtime.Remoting.ObjectHandle = System.Runtime.Remoting.ObjectHandle

---@return System.Object
function System.Runtime.Remoting.ObjectHandle:InitializeLifetimeService()end
---@return System.Object
function System.Runtime.Remoting.ObjectHandle:Unwrap()end
---@class System.Runtime.Remoting.RemotingConfiguration : System.Object
---@field public ApplicationId System.String @static  getter
---@field public ApplicationName System.String @static setter getter
---@field public CustomErrorsMode System.Runtime.Remoting.CustomErrorsModes @static setter getter
---@field public ProcessId System.String @static  getter
System.Runtime.Remoting.RemotingConfiguration = {}
---@type System.Runtime.Remoting.RemotingConfiguration
CS.System.Runtime.Remoting.RemotingConfiguration = System.Runtime.Remoting.RemotingConfiguration

---@overload fun(filename:System.String, ensureSecurity:System.Boolean):System.Void
---@param filename System.String
---@return System.Void
function System.Runtime.Remoting.RemotingConfiguration.Configure(filename)end
---@return System.Runtime.Remoting.ActivatedClientTypeEntry[]
function System.Runtime.Remoting.RemotingConfiguration.GetRegisteredActivatedClientTypes()end
---@return System.Runtime.Remoting.ActivatedServiceTypeEntry[]
function System.Runtime.Remoting.RemotingConfiguration.GetRegisteredActivatedServiceTypes()end
---@return System.Runtime.Remoting.WellKnownClientTypeEntry[]
function System.Runtime.Remoting.RemotingConfiguration.GetRegisteredWellKnownClientTypes()end
---@return System.Runtime.Remoting.WellKnownServiceTypeEntry[]
function System.Runtime.Remoting.RemotingConfiguration.GetRegisteredWellKnownServiceTypes()end
---@param svrType System.Type
---@return System.Boolean
function System.Runtime.Remoting.RemotingConfiguration.IsActivationAllowed(svrType)end
---@overload fun(typeName:System.String, assemblyName:System.String):System.Runtime.Remoting.ActivatedClientTypeEntry
---@param svrType System.Type
---@return System.Runtime.Remoting.ActivatedClientTypeEntry
function System.Runtime.Remoting.RemotingConfiguration.IsRemotelyActivatedClientType(svrType)end
---@overload fun(typeName:System.String, assemblyName:System.String):System.Runtime.Remoting.WellKnownClientTypeEntry
---@param svrType System.Type
---@return System.Runtime.Remoting.WellKnownClientTypeEntry
function System.Runtime.Remoting.RemotingConfiguration.IsWellKnownClientType(svrType)end
---@overload fun(type:System.Type, appUrl:System.String):System.Void
---@param entry System.Runtime.Remoting.ActivatedClientTypeEntry
---@return System.Void
function System.Runtime.Remoting.RemotingConfiguration.RegisterActivatedClientType(entry)end
---@overload fun(type:System.Type):System.Void
---@param entry System.Runtime.Remoting.ActivatedServiceTypeEntry
---@return System.Void
function System.Runtime.Remoting.RemotingConfiguration.RegisterActivatedServiceType(entry)end
---@overload fun(type:System.Type, objectUrl:System.String):System.Void
---@param entry System.Runtime.Remoting.WellKnownClientTypeEntry
---@return System.Void
function System.Runtime.Remoting.RemotingConfiguration.RegisterWellKnownClientType(entry)end
---@overload fun(type:System.Type, objectUri:System.String, mode:System.Runtime.Remoting.WellKnownObjectMode):System.Void
---@param entry System.Runtime.Remoting.WellKnownServiceTypeEntry
---@return System.Void
function System.Runtime.Remoting.RemotingConfiguration.RegisterWellKnownServiceType(entry)end
---@param isLocalRequest System.Boolean
---@return System.Boolean
function System.Runtime.Remoting.RemotingConfiguration.CustomErrorsEnabled(isLocalRequest)end
---@class System.Runtime.Remoting.RemotingException : System.SystemException
System.Runtime.Remoting.RemotingException = {}
---@type System.Runtime.Remoting.RemotingException
CS.System.Runtime.Remoting.RemotingException = System.Runtime.Remoting.RemotingException

---@class System.Runtime.Remoting.RemotingServices : System.Object
System.Runtime.Remoting.RemotingServices = {}
---@type System.Runtime.Remoting.RemotingServices
CS.System.Runtime.Remoting.RemotingServices = System.Runtime.Remoting.RemotingServices

---@param proxy System.Object
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.IsTransparentProxy(proxy)end
---@param target System.MarshalByRefObject
---@param reqMsg System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return System.Runtime.Remoting.Messaging.IMethodReturnMessage
function System.Runtime.Remoting.RemotingServices.ExecuteMessage(target, reqMsg)end
---@overload fun(classToProxy:System.Type, url:System.String, data:System.Object):System.Object
---@param classToProxy System.Type
---@param url System.String
---@return System.Object
function System.Runtime.Remoting.RemotingServices.Connect(classToProxy, url)end
---@param obj System.MarshalByRefObject
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.Disconnect(obj)end
---@param URI System.String
---@return System.Type
function System.Runtime.Remoting.RemotingServices.GetServerTypeForUri(URI)end
---@param obj System.MarshalByRefObject
---@return System.String
function System.Runtime.Remoting.RemotingServices.GetObjectUri(obj)end
---@overload fun(objectRef:System.Runtime.Remoting.ObjRef, fRefine:System.Boolean):System.Object
---@param objectRef System.Runtime.Remoting.ObjRef
---@return System.Object
function System.Runtime.Remoting.RemotingServices.Unmarshal(objectRef)end
---@overload fun(Obj:System.MarshalByRefObject, URI:System.String):System.Runtime.Remoting.ObjRef
---@overload fun(Obj:System.MarshalByRefObject, ObjURI:System.String, RequestedType:System.Type):System.Runtime.Remoting.ObjRef
---@param Obj System.MarshalByRefObject
---@return System.Runtime.Remoting.ObjRef
function System.Runtime.Remoting.RemotingServices.Marshal(Obj)end
---@param proxy System.Object
---@return System.Runtime.Remoting.Proxies.RealProxy
function System.Runtime.Remoting.RemotingServices.GetRealProxy(proxy)end
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return System.Reflection.MethodBase
function System.Runtime.Remoting.RemotingServices.GetMethodBaseFromMethodMessage(msg)end
---@param obj System.Object
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Remoting.RemotingServices.GetObjectData(obj, info, context)end
---@param obj System.MarshalByRefObject
---@return System.Runtime.Remoting.ObjRef
function System.Runtime.Remoting.RemotingServices.GetObjRefForProxy(obj)end
---@param obj System.MarshalByRefObject
---@return System.Object
function System.Runtime.Remoting.RemotingServices.GetLifetimeService(obj)end
---@param obj System.MarshalByRefObject
---@return System.Runtime.Remoting.Messaging.IMessageSink
function System.Runtime.Remoting.RemotingServices.GetEnvoyChainForProxy(obj)end
---@param stage System.Int32
---@return System.Void
function System.Runtime.Remoting.RemotingServices.LogRemotingStage(stage)end
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return System.String
function System.Runtime.Remoting.RemotingServices.GetSessionIdForMethodMessage(msg)end
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.IsMethodOverloaded(msg)end
---@param tp System.Object
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.IsObjectOutOfAppDomain(tp)end
---@param tp System.Object
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.IsObjectOutOfContext(tp)end
---@param method System.Reflection.MethodBase
---@return System.Boolean
function System.Runtime.Remoting.RemotingServices.IsOneWay(method)end
---@param obj System.MarshalByRefObject
---@param uri System.String
---@return System.Void
function System.Runtime.Remoting.RemotingServices.SetObjectUriForMarshal(obj, uri)end
---@class System.Runtime.Remoting.RemotingTimeoutException : System.Runtime.Remoting.RemotingException
System.Runtime.Remoting.RemotingTimeoutException = {}
---@type System.Runtime.Remoting.RemotingTimeoutException
CS.System.Runtime.Remoting.RemotingTimeoutException = System.Runtime.Remoting.RemotingTimeoutException

---@class System.Runtime.Remoting.ServerException : System.SystemException
System.Runtime.Remoting.ServerException = {}
---@type System.Runtime.Remoting.ServerException
CS.System.Runtime.Remoting.ServerException = System.Runtime.Remoting.ServerException

---@class System.Runtime.Remoting.SoapServices : System.Object
---@field public XmlNsForClrType System.String @static  getter
---@field public XmlNsForClrTypeWithAssembly System.String @static  getter
---@field public XmlNsForClrTypeWithNs System.String @static  getter
---@field public XmlNsForClrTypeWithNsAndAssembly System.String @static  getter
System.Runtime.Remoting.SoapServices = {}
---@type System.Runtime.Remoting.SoapServices
CS.System.Runtime.Remoting.SoapServices = System.Runtime.Remoting.SoapServices

---@param typeNamespace System.String
---@param assemblyName System.String
---@return System.String
function System.Runtime.Remoting.SoapServices.CodeXmlNamespaceForClrTypeNamespace(typeNamespace, assemblyName)end
---@param inNamespace System.String
---@param typeNamespace System.String
---@param assemblyName System.String
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.DecodeXmlNamespaceForClrTypeNamespace(inNamespace, typeNamespace, assemblyName)end
---@param containingType System.Type
---@param xmlAttribute System.String
---@param xmlNamespace System.String
---@param type System.Type
---@param name System.String
---@return System.Void
function System.Runtime.Remoting.SoapServices.GetInteropFieldTypeAndNameFromXmlAttribute(containingType, xmlAttribute, xmlNamespace, type, name)end
---@param containingType System.Type
---@param xmlElement System.String
---@param xmlNamespace System.String
---@param type System.Type
---@param name System.String
---@return System.Void
function System.Runtime.Remoting.SoapServices.GetInteropFieldTypeAndNameFromXmlElement(containingType, xmlElement, xmlNamespace, type, name)end
---@param xmlElement System.String
---@param xmlNamespace System.String
---@return System.Type
function System.Runtime.Remoting.SoapServices.GetInteropTypeFromXmlElement(xmlElement, xmlNamespace)end
---@param xmlType System.String
---@param xmlTypeNamespace System.String
---@return System.Type
function System.Runtime.Remoting.SoapServices.GetInteropTypeFromXmlType(xmlType, xmlTypeNamespace)end
---@param mb System.Reflection.MethodBase
---@return System.String
function System.Runtime.Remoting.SoapServices.GetSoapActionFromMethodBase(mb)end
---@param soapAction System.String
---@param typeName System.String
---@param methodName System.String
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.GetTypeAndMethodNameFromSoapAction(soapAction, typeName, methodName)end
---@param type System.Type
---@param xmlElement System.String
---@param xmlNamespace System.String
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.GetXmlElementForInteropType(type, xmlElement, xmlNamespace)end
---@param mb System.Reflection.MethodBase
---@return System.String
function System.Runtime.Remoting.SoapServices.GetXmlNamespaceForMethodCall(mb)end
---@param mb System.Reflection.MethodBase
---@return System.String
function System.Runtime.Remoting.SoapServices.GetXmlNamespaceForMethodResponse(mb)end
---@param type System.Type
---@param xmlType System.String
---@param xmlTypeNamespace System.String
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.GetXmlTypeForInteropType(type, xmlType, xmlTypeNamespace)end
---@param namespaceString System.String
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.IsClrTypeNamespace(namespaceString)end
---@param soapAction System.String
---@param mb System.Reflection.MethodBase
---@return System.Boolean
function System.Runtime.Remoting.SoapServices.IsSoapActionValidForMethodBase(soapAction, mb)end
---@overload fun(type:System.Type):System.Void
---@param assembly System.Reflection.Assembly
---@return System.Void
function System.Runtime.Remoting.SoapServices.PreLoad(assembly)end
---@param xmlElement System.String
---@param xmlNamespace System.String
---@param type System.Type
---@return System.Void
function System.Runtime.Remoting.SoapServices.RegisterInteropXmlElement(xmlElement, xmlNamespace, type)end
---@param xmlType System.String
---@param xmlTypeNamespace System.String
---@param type System.Type
---@return System.Void
function System.Runtime.Remoting.SoapServices.RegisterInteropXmlType(xmlType, xmlTypeNamespace, type)end
---@overload fun(mb:System.Reflection.MethodBase, soapAction:System.String):System.Void
---@param mb System.Reflection.MethodBase
---@return System.Void
function System.Runtime.Remoting.SoapServices.RegisterSoapActionForMethodBase(mb)end
---@class System.Runtime.Remoting.TypeEntry : System.Object
---@field public AssemblyName System.String @ setter getter
---@field public TypeName System.String @ setter getter
System.Runtime.Remoting.TypeEntry = {}
---@type System.Runtime.Remoting.TypeEntry
CS.System.Runtime.Remoting.TypeEntry = System.Runtime.Remoting.TypeEntry

---@class System.Runtime.Remoting.WellKnownClientTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ApplicationUrl System.String @ setter getter
---@field public ObjectType System.Type @  getter
---@field public ObjectUrl System.String @  getter
System.Runtime.Remoting.WellKnownClientTypeEntry = {}
---@type System.Runtime.Remoting.WellKnownClientTypeEntry
CS.System.Runtime.Remoting.WellKnownClientTypeEntry = System.Runtime.Remoting.WellKnownClientTypeEntry

---@return System.String
function System.Runtime.Remoting.WellKnownClientTypeEntry:ToString()end
---@class System.Runtime.Remoting.WellKnownObjectMode : System.Enum
System.Runtime.Remoting.WellKnownObjectMode = {}
---@type System.Runtime.Remoting.WellKnownObjectMode
CS.System.Runtime.Remoting.WellKnownObjectMode = System.Runtime.Remoting.WellKnownObjectMode

---@return System.Int32 value:1
System.Runtime.Remoting.WellKnownObjectMode.Singleton = 1

---@class System.Runtime.Remoting.WellKnownServiceTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[] @ setter getter
---@field public Mode System.Runtime.Remoting.WellKnownObjectMode @  getter
---@field public ObjectType System.Type @  getter
---@field public ObjectUri System.String @  getter
System.Runtime.Remoting.WellKnownServiceTypeEntry = {}
---@type System.Runtime.Remoting.WellKnownServiceTypeEntry
CS.System.Runtime.Remoting.WellKnownServiceTypeEntry = System.Runtime.Remoting.WellKnownServiceTypeEntry

---@return System.String
function System.Runtime.Remoting.WellKnownServiceTypeEntry:ToString()end
