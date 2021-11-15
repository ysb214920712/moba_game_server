---@class System.Xml.Serialization.Configuration.DateTimeSerializationSection : System.Configuration.ConfigurationSection
---@field public Mode System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode @ setter getter
System.Xml.Serialization.Configuration.DateTimeSerializationSection = {}
---@type System.Xml.Serialization.Configuration.DateTimeSerializationSection
CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection = System.Xml.Serialization.Configuration.DateTimeSerializationSection

---@class System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode : System.Enum
System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode = {}
---@type System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode = System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode

---@return System.Int32 value:0
System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode.Default = 0
---@return System.Int32 value:1
System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode.Roundtrip = 1
---@return System.Int32 value:2
System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode.Local = 2

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElement : System.Configuration.ConfigurationElement
---@field public Name System.String @ setter getter
---@field public Type System.Type @ setter getter
System.Xml.Serialization.Configuration.SchemaImporterExtensionElement = {}
---@type System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement = System.Xml.Serialization.Configuration.SchemaImporterExtensionElement

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Xml.Serialization.Configuration.SchemaImporterExtensionElement @ setter getter
---@field public Item System.Xml.Serialization.Configuration.SchemaImporterExtensionElement @ setter getter
System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection = {}
---@type System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection = System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection

---@param element System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@return System.Void
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Add(element)end
---@return System.Void
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Clear()end
---@param element System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@return System.Int32
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:IndexOf(element)end
---@overload fun(name:System.String):System.Void
---@param element System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@return System.Void
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Remove(element)end
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:RemoveAt(index)end
---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection : System.Configuration.ConfigurationSection
---@field public SchemaImporterExtensions System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection @  getter
System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection = {}
---@type System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection = System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection

---@class System.Xml.Serialization.Configuration.SerializationSectionGroup : System.Configuration.ConfigurationSectionGroup
---@field public SchemaImporterExtensions System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection @  getter
---@field public DateTimeSerialization System.Xml.Serialization.Configuration.DateTimeSerializationSection @  getter
---@field public XmlSerializer System.Xml.Serialization.Configuration.XmlSerializerSection @  getter
System.Xml.Serialization.Configuration.SerializationSectionGroup = {}
---@type System.Xml.Serialization.Configuration.SerializationSectionGroup
CS.System.Xml.Serialization.Configuration.SerializationSectionGroup = System.Xml.Serialization.Configuration.SerializationSectionGroup

---@class System.Xml.Serialization.Configuration.XmlSerializerSection : System.Configuration.ConfigurationSection
---@field public CheckDeserializeAdvances System.Boolean @ setter getter
---@field public TempFilesLocation System.String @ setter getter
---@field public UseLegacySerializerGeneration System.Boolean @ setter getter
System.Xml.Serialization.Configuration.XmlSerializerSection = {}
---@type System.Xml.Serialization.Configuration.XmlSerializerSection
CS.System.Xml.Serialization.Configuration.XmlSerializerSection = System.Xml.Serialization.Configuration.XmlSerializerSection

---@class System.Xml.Serialization.Configuration.RootedPathValidator : System.Configuration.ConfigurationValidatorBase
System.Xml.Serialization.Configuration.RootedPathValidator = {}
---@type System.Xml.Serialization.Configuration.RootedPathValidator
CS.System.Xml.Serialization.Configuration.RootedPathValidator = System.Xml.Serialization.Configuration.RootedPathValidator

---@param type System.Type
---@return System.Boolean
function System.Xml.Serialization.Configuration.RootedPathValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Xml.Serialization.Configuration.RootedPathValidator:Validate(value)end
