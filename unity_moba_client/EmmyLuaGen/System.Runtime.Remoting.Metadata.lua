---@class System.Runtime.Remoting.Metadata.SoapAttribute : System.Attribute
---@field public Embedded System.Boolean @ setter getter
---@field public UseAttribute System.Boolean @ setter getter
---@field public XmlNamespace System.String @ setter getter
System.Runtime.Remoting.Metadata.SoapAttribute = {}
---@type System.Runtime.Remoting.Metadata.SoapAttribute
CS.System.Runtime.Remoting.Metadata.SoapAttribute = System.Runtime.Remoting.Metadata.SoapAttribute

---@class System.Runtime.Remoting.Metadata.SoapFieldAttribute : System.Runtime.Remoting.Metadata.SoapAttribute
---@field public Order System.Int32 @ setter getter
---@field public XmlElementName System.String @ setter getter
System.Runtime.Remoting.Metadata.SoapFieldAttribute = {}
---@type System.Runtime.Remoting.Metadata.SoapFieldAttribute
CS.System.Runtime.Remoting.Metadata.SoapFieldAttribute = System.Runtime.Remoting.Metadata.SoapFieldAttribute

---@return System.Boolean
function System.Runtime.Remoting.Metadata.SoapFieldAttribute:IsInteropXmlElement()end
---@class System.Runtime.Remoting.Metadata.SoapMethodAttribute : System.Runtime.Remoting.Metadata.SoapAttribute
---@field public ResponseXmlElementName System.String @ setter getter
---@field public ResponseXmlNamespace System.String @ setter getter
---@field public ReturnXmlElementName System.String @ setter getter
---@field public SoapAction System.String @ setter getter
---@field public UseAttribute System.Boolean @ setter getter
---@field public XmlNamespace System.String @ setter getter
System.Runtime.Remoting.Metadata.SoapMethodAttribute = {}
---@type System.Runtime.Remoting.Metadata.SoapMethodAttribute
CS.System.Runtime.Remoting.Metadata.SoapMethodAttribute = System.Runtime.Remoting.Metadata.SoapMethodAttribute

---@class System.Runtime.Remoting.Metadata.SoapOption : System.Enum
System.Runtime.Remoting.Metadata.SoapOption = {}
---@type System.Runtime.Remoting.Metadata.SoapOption
CS.System.Runtime.Remoting.Metadata.SoapOption = System.Runtime.Remoting.Metadata.SoapOption

---@return System.Int32 value:0
System.Runtime.Remoting.Metadata.SoapOption.None = 0
---@return System.Int32 value:1
System.Runtime.Remoting.Metadata.SoapOption.AlwaysIncludeTypes = 1
---@return System.Int32 value:2
System.Runtime.Remoting.Metadata.SoapOption.XsdString = 2
---@return System.Int32 value:4
System.Runtime.Remoting.Metadata.SoapOption.EmbedAll = 4

---@class System.Runtime.Remoting.Metadata.SoapParameterAttribute : System.Runtime.Remoting.Metadata.SoapAttribute
System.Runtime.Remoting.Metadata.SoapParameterAttribute = {}
---@type System.Runtime.Remoting.Metadata.SoapParameterAttribute
CS.System.Runtime.Remoting.Metadata.SoapParameterAttribute = System.Runtime.Remoting.Metadata.SoapParameterAttribute

---@class System.Runtime.Remoting.Metadata.SoapTypeAttribute : System.Runtime.Remoting.Metadata.SoapAttribute
---@field public SoapOptions System.Runtime.Remoting.Metadata.SoapOption @ setter getter
---@field public UseAttribute System.Boolean @ setter getter
---@field public XmlElementName System.String @ setter getter
---@field public XmlFieldOrder System.Runtime.Remoting.Metadata.XmlFieldOrderOption @ setter getter
---@field public XmlNamespace System.String @ setter getter
---@field public XmlTypeName System.String @ setter getter
---@field public XmlTypeNamespace System.String @ setter getter
System.Runtime.Remoting.Metadata.SoapTypeAttribute = {}
---@type System.Runtime.Remoting.Metadata.SoapTypeAttribute
CS.System.Runtime.Remoting.Metadata.SoapTypeAttribute = System.Runtime.Remoting.Metadata.SoapTypeAttribute

---@class System.Runtime.Remoting.Metadata.XmlFieldOrderOption : System.Enum
System.Runtime.Remoting.Metadata.XmlFieldOrderOption = {}
---@type System.Runtime.Remoting.Metadata.XmlFieldOrderOption
CS.System.Runtime.Remoting.Metadata.XmlFieldOrderOption = System.Runtime.Remoting.Metadata.XmlFieldOrderOption

---@return System.Int32 value:0
System.Runtime.Remoting.Metadata.XmlFieldOrderOption.All = 0
---@return System.Int32 value:1
System.Runtime.Remoting.Metadata.XmlFieldOrderOption.Sequence = 1
---@return System.Int32 value:2
System.Runtime.Remoting.Metadata.XmlFieldOrderOption.Choice = 2

