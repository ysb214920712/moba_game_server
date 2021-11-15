---@class System.Runtime.InteropServices.WindowsRuntime.DefaultInterfaceAttribute : System.Attribute
---@field public DefaultInterface System.Type @  getter
System.Runtime.InteropServices.WindowsRuntime.DefaultInterfaceAttribute = {}
---@type System.Runtime.InteropServices.WindowsRuntime.DefaultInterfaceAttribute
CS.System.Runtime.InteropServices.WindowsRuntime.DefaultInterfaceAttribute = System.Runtime.InteropServices.WindowsRuntime.DefaultInterfaceAttribute

---@class System.Runtime.InteropServices.WindowsRuntime.InterfaceImplementedInVersionAttribute : System.Attribute
---@field public InterfaceType System.Type @  getter
---@field public MajorVersion System.Byte @  getter
---@field public MinorVersion System.Byte @  getter
---@field public BuildVersion System.Byte @  getter
---@field public RevisionVersion System.Byte @  getter
System.Runtime.InteropServices.WindowsRuntime.InterfaceImplementedInVersionAttribute = {}
---@type System.Runtime.InteropServices.WindowsRuntime.InterfaceImplementedInVersionAttribute
CS.System.Runtime.InteropServices.WindowsRuntime.InterfaceImplementedInVersionAttribute = System.Runtime.InteropServices.WindowsRuntime.InterfaceImplementedInVersionAttribute

---@class System.Runtime.InteropServices.WindowsRuntime.ReadOnlyArrayAttribute : System.Attribute
System.Runtime.InteropServices.WindowsRuntime.ReadOnlyArrayAttribute = {}
---@type System.Runtime.InteropServices.WindowsRuntime.ReadOnlyArrayAttribute
CS.System.Runtime.InteropServices.WindowsRuntime.ReadOnlyArrayAttribute = System.Runtime.InteropServices.WindowsRuntime.ReadOnlyArrayAttribute

---@class System.Runtime.InteropServices.WindowsRuntime.WriteOnlyArrayAttribute : System.Attribute
System.Runtime.InteropServices.WindowsRuntime.WriteOnlyArrayAttribute = {}
---@type System.Runtime.InteropServices.WindowsRuntime.WriteOnlyArrayAttribute
CS.System.Runtime.InteropServices.WindowsRuntime.WriteOnlyArrayAttribute = System.Runtime.InteropServices.WindowsRuntime.WriteOnlyArrayAttribute

---@class System.Runtime.InteropServices.WindowsRuntime.ReturnValueNameAttribute : System.Attribute
---@field public Name System.String @  getter
System.Runtime.InteropServices.WindowsRuntime.ReturnValueNameAttribute = {}
---@type System.Runtime.InteropServices.WindowsRuntime.ReturnValueNameAttribute
CS.System.Runtime.InteropServices.WindowsRuntime.ReturnValueNameAttribute = System.Runtime.InteropServices.WindowsRuntime.ReturnValueNameAttribute

---@class System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken : System.ValueType
System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken = {}
---@type System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
CS.System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken = System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken

---@param left System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@param right System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return System.Boolean
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken.op_Equality(left, right)end
---@param left System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@param right System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return System.Boolean
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken.op_Inequality(left, right)end
---@param obj System.Object
---@return System.Boolean
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken:Equals(obj)end
---@return System.Int32
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken:GetHashCode()end
---@class System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable : System.Object
---@field public InvocationList any @ setter getter
System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable = {}
---@type System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable
CS.System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable = System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable

---@param handler any
---@return System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable:AddEventHandler(handler)end
---@overload fun(handler:any):System.Void
---@param token System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable:RemoveEventHandler(token)end
---@param refEventTable System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable
---@return System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable
function System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable.GetOrCreateEventRegistrationTokenTable(refEventTable)end
---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal : System.Object
System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal = {}
---@type System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal
CS.System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal = System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal

---@param addMethod any
---@param removeMethod System.Action
---@param handler any
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.AddEventHandler(addMethod, removeMethod, handler)end
---@param removeMethod System.Action
---@param handler any
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.RemoveEventHandler(removeMethod, handler)end
---@param removeMethod System.Action
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.RemoveAllEventHandlers(removeMethod)end
---@param type System.Type
---@return System.Runtime.InteropServices.WindowsRuntime.IActivationFactory
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.GetActivationFactory(type)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.StringToHString(s)end
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.PtrToStringHString(ptr)end
---@param ptr System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.FreeHString(ptr)end
---@class System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs : System.EventArgs
---@field public NamespaceName System.String @ setter getter
---@field public ResolvedAssemblyFiles System.Collections.ObjectModel.Collection @ setter getter
System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs = {}
---@type System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs
CS.System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs = System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs

---@class System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs : System.EventArgs
---@field public NamespaceName System.String @ setter getter
---@field public RequestingAssembly System.Reflection.Assembly @ setter getter
---@field public ResolvedAssemblies System.Collections.ObjectModel.Collection @ setter getter
System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs = {}
---@type System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs
CS.System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs = System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs

---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata : System.Object
System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata = {}
---@type System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata
CS.System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata = System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata

---@overload fun(namespaceName:System.String, windowsSdkFilePath:System.String, packageGraphFilePaths:System.Collections.Generic.IEnumerable):System.Collections.Generic.IEnumerable
---@param namespaceName System.String
---@param packageGraphFilePaths System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata.ResolveNamespace(namespaceName, packageGraphFilePaths)end
---@param value System.EventHandler
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata.add_DesignerNamespaceResolve(value)end
---@param value System.EventHandler
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata.remove_DesignerNamespaceResolve(value)end
---@param value System.EventHandler
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata.add_ReflectionOnlyNamespaceResolve(value)end
---@param value System.EventHandler
---@return System.Void
function System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata.remove_ReflectionOnlyNamespaceResolve(value)end
