---@class System.Runtime.Serialization.Formatters.FormatterTypeStyle : System.Enum
System.Runtime.Serialization.Formatters.FormatterTypeStyle = {}
---@type System.Runtime.Serialization.Formatters.FormatterTypeStyle
CS.System.Runtime.Serialization.Formatters.FormatterTypeStyle = System.Runtime.Serialization.Formatters.FormatterTypeStyle

---@return System.Int32 value:0
System.Runtime.Serialization.Formatters.FormatterTypeStyle.TypesWhenNeeded = 0
---@return System.Int32 value:1
System.Runtime.Serialization.Formatters.FormatterTypeStyle.TypesAlways = 1
---@return System.Int32 value:2
System.Runtime.Serialization.Formatters.FormatterTypeStyle.XsdString = 2

---@class System.Runtime.Serialization.Formatters.FormatterAssemblyStyle : System.Enum
System.Runtime.Serialization.Formatters.FormatterAssemblyStyle = {}
---@type System.Runtime.Serialization.Formatters.FormatterAssemblyStyle
CS.System.Runtime.Serialization.Formatters.FormatterAssemblyStyle = System.Runtime.Serialization.Formatters.FormatterAssemblyStyle

---@return System.Int32 value:0
System.Runtime.Serialization.Formatters.FormatterAssemblyStyle.Simple = 0
---@return System.Int32 value:1
System.Runtime.Serialization.Formatters.FormatterAssemblyStyle.Full = 1

---@class System.Runtime.Serialization.Formatters.TypeFilterLevel : System.Enum
System.Runtime.Serialization.Formatters.TypeFilterLevel = {}
---@type System.Runtime.Serialization.Formatters.TypeFilterLevel
CS.System.Runtime.Serialization.Formatters.TypeFilterLevel = System.Runtime.Serialization.Formatters.TypeFilterLevel


---@class System.Runtime.Serialization.Formatters.InternalRM : System.Object
System.Runtime.Serialization.Formatters.InternalRM = {}
---@type System.Runtime.Serialization.Formatters.InternalRM
CS.System.Runtime.Serialization.Formatters.InternalRM = System.Runtime.Serialization.Formatters.InternalRM

---@param messages System.Object[]
---@return System.Void
function System.Runtime.Serialization.Formatters.InternalRM.InfoSoap(messages)end
---@return System.Boolean
function System.Runtime.Serialization.Formatters.InternalRM.SoapCheckEnabled()end
---@class System.Runtime.Serialization.Formatters.InternalST : System.Object
System.Runtime.Serialization.Formatters.InternalST = {}
---@type System.Runtime.Serialization.Formatters.InternalST
CS.System.Runtime.Serialization.Formatters.InternalST = System.Runtime.Serialization.Formatters.InternalST

---@param messages System.Object[]
---@return System.Void
function System.Runtime.Serialization.Formatters.InternalST.InfoSoap(messages)end
---@return System.Boolean
function System.Runtime.Serialization.Formatters.InternalST.SoapCheckEnabled()end
---@param messages System.Object[]
---@return System.Void
function System.Runtime.Serialization.Formatters.InternalST.Soap(messages)end
---@param condition System.Boolean
---@param message System.String
---@return System.Void
function System.Runtime.Serialization.Formatters.InternalST.SoapAssert(condition, message)end
---@param fi System.Reflection.FieldInfo
---@param target System.Object
---@param value System.Object
---@return System.Void
function System.Runtime.Serialization.Formatters.InternalST.SerializationSetValue(fi, target, value)end
---@param assemblyString System.String
---@return System.Reflection.Assembly
function System.Runtime.Serialization.Formatters.InternalST.LoadAssemblyFromString(assemblyString)end
---@class System.Runtime.Serialization.Formatters.SoapFault : System.Object
---@field public FaultCode System.String @ setter getter
---@field public FaultString System.String @ setter getter
---@field public FaultActor System.String @ setter getter
---@field public Detail System.Object @ setter getter
System.Runtime.Serialization.Formatters.SoapFault = {}
---@type System.Runtime.Serialization.Formatters.SoapFault
CS.System.Runtime.Serialization.Formatters.SoapFault = System.Runtime.Serialization.Formatters.SoapFault

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Runtime.Serialization.Formatters.SoapFault:GetObjectData(info, context)end
---@class System.Runtime.Serialization.Formatters.ServerFault : System.Object
---@field public ExceptionType System.String @ setter getter
---@field public ExceptionMessage System.String @ setter getter
---@field public StackTrace System.String @ setter getter
System.Runtime.Serialization.Formatters.ServerFault = {}
---@type System.Runtime.Serialization.Formatters.ServerFault
CS.System.Runtime.Serialization.Formatters.ServerFault = System.Runtime.Serialization.Formatters.ServerFault

---@class System.Runtime.Serialization.Formatters.SoapMessage : System.Object
---@field public ParamNames System.String[] @ setter getter
---@field public ParamValues System.Object[] @ setter getter
---@field public ParamTypes System.Type[] @ setter getter
---@field public MethodName System.String @ setter getter
---@field public XmlNameSpace System.String @ setter getter
---@field public Headers System.Runtime.Remoting.Messaging.Header[] @ setter getter
System.Runtime.Serialization.Formatters.SoapMessage = {}
---@type System.Runtime.Serialization.Formatters.SoapMessage
CS.System.Runtime.Serialization.Formatters.SoapMessage = System.Runtime.Serialization.Formatters.SoapMessage

