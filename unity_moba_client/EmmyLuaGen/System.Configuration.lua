---@class System.Configuration.AppSettingsReader : System.Object
System.Configuration.AppSettingsReader = {}
---@type System.Configuration.AppSettingsReader
CS.System.Configuration.AppSettingsReader = System.Configuration.AppSettingsReader

---@param key System.String
---@param type System.Type
---@return System.Object
function System.Configuration.AppSettingsReader:GetValue(key, type)end
---@class System.Configuration.ApplicationScopedSettingAttribute : System.Configuration.SettingAttribute
System.Configuration.ApplicationScopedSettingAttribute = {}
---@type System.Configuration.ApplicationScopedSettingAttribute
CS.System.Configuration.ApplicationScopedSettingAttribute = System.Configuration.ApplicationScopedSettingAttribute

---@class System.Configuration.ApplicationSettingsBase : System.Configuration.SettingsBase
---@field public Context System.Configuration.SettingsContext @  getter
---@field public Item System.Object @ setter getter
---@field public Properties System.Configuration.SettingsPropertyCollection @  getter
---@field public PropertyValues System.Configuration.SettingsPropertyValueCollection @  getter
---@field public Providers System.Configuration.SettingsProviderCollection @  getter
---@field public SettingsKey System.String @ setter getter
System.Configuration.ApplicationSettingsBase = {}
---@type System.Configuration.ApplicationSettingsBase
CS.System.Configuration.ApplicationSettingsBase = System.Configuration.ApplicationSettingsBase

---@param value System.ComponentModel.PropertyChangedEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:add_PropertyChanged(value)end
---@param value System.ComponentModel.PropertyChangedEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:remove_PropertyChanged(value)end
---@param value System.Configuration.SettingChangingEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:add_SettingChanging(value)end
---@param value System.Configuration.SettingChangingEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:remove_SettingChanging(value)end
---@param value System.Configuration.SettingsLoadedEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:add_SettingsLoaded(value)end
---@param value System.Configuration.SettingsLoadedEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:remove_SettingsLoaded(value)end
---@param value System.Configuration.SettingsSavingEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:add_SettingsSaving(value)end
---@param value System.Configuration.SettingsSavingEventHandler
---@return System.Void
function System.Configuration.ApplicationSettingsBase:remove_SettingsSaving(value)end
---@param propertyName System.String
---@return System.Object
function System.Configuration.ApplicationSettingsBase:GetPreviousVersion(propertyName)end
---@return System.Void
function System.Configuration.ApplicationSettingsBase:Reload()end
---@return System.Void
function System.Configuration.ApplicationSettingsBase:Reset()end
---@return System.Void
function System.Configuration.ApplicationSettingsBase:Save()end
---@return System.Void
function System.Configuration.ApplicationSettingsBase:Upgrade()end
---@class System.Configuration.ApplicationSettingsGroup : System.Configuration.ConfigurationSectionGroup
System.Configuration.ApplicationSettingsGroup = {}
---@type System.Configuration.ApplicationSettingsGroup
CS.System.Configuration.ApplicationSettingsGroup = System.Configuration.ApplicationSettingsGroup

---@class System.Configuration.ClientSettingsSection : System.Configuration.ConfigurationSection
---@field public Settings System.Configuration.SettingElementCollection @  getter
System.Configuration.ClientSettingsSection = {}
---@type System.Configuration.ClientSettingsSection
CS.System.Configuration.ClientSettingsSection = System.Configuration.ClientSettingsSection

---@class System.Configuration.ConfigXmlDocument : System.Xml.XmlDocument
---@field public Filename System.String @  getter
---@field public LineNumber System.Int32 @  getter
System.Configuration.ConfigXmlDocument = {}
---@type System.Configuration.ConfigXmlDocument
CS.System.Configuration.ConfigXmlDocument = System.Configuration.ConfigXmlDocument

---@param prefix System.String
---@param localName System.String
---@param namespaceUri System.String
---@return System.Xml.XmlAttribute
function System.Configuration.ConfigXmlDocument:CreateAttribute(prefix, localName, namespaceUri)end
---@param data System.String
---@return System.Xml.XmlCDataSection
function System.Configuration.ConfigXmlDocument:CreateCDataSection(data)end
---@param data System.String
---@return System.Xml.XmlComment
function System.Configuration.ConfigXmlDocument:CreateComment(data)end
---@param prefix System.String
---@param localName System.String
---@param namespaceUri System.String
---@return System.Xml.XmlElement
function System.Configuration.ConfigXmlDocument:CreateElement(prefix, localName, namespaceUri)end
---@param data System.String
---@return System.Xml.XmlSignificantWhitespace
function System.Configuration.ConfigXmlDocument:CreateSignificantWhitespace(data)end
---@param text System.String
---@return System.Xml.XmlText
function System.Configuration.ConfigXmlDocument:CreateTextNode(text)end
---@param data System.String
---@return System.Xml.XmlWhitespace
function System.Configuration.ConfigXmlDocument:CreateWhitespace(data)end
---@param filename System.String
---@return System.Void
function System.Configuration.ConfigXmlDocument:Load(filename)end
---@param filename System.String
---@param sourceReader System.Xml.XmlTextReader
---@return System.Void
function System.Configuration.ConfigXmlDocument:LoadSingleElement(filename, sourceReader)end
---@class System.Configuration.ConfigurationException : System.SystemException
---@field public BareMessage System.String @  getter
---@field public Filename System.String @  getter
---@field public Line System.Int32 @  getter
---@field public Message System.String @  getter
System.Configuration.ConfigurationException = {}
---@type System.Configuration.ConfigurationException
CS.System.Configuration.ConfigurationException = System.Configuration.ConfigurationException

---@param node System.Xml.XmlNode
---@return System.String
function System.Configuration.ConfigurationException.GetXmlNodeFilename(node)end
---@param node System.Xml.XmlNode
---@return System.Int32
function System.Configuration.ConfigurationException.GetXmlNodeLineNumber(node)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Configuration.ConfigurationException:GetObjectData(info, context)end
---@class System.Configuration.ConfigurationSettings : System.Object
---@field public AppSettings System.Collections.Specialized.NameValueCollection @static  getter
System.Configuration.ConfigurationSettings = {}
---@type System.Configuration.ConfigurationSettings
CS.System.Configuration.ConfigurationSettings = System.Configuration.ConfigurationSettings

---@param sectionName System.String
---@return System.Object
function System.Configuration.ConfigurationSettings.GetConfig(sectionName)end
---@class System.Configuration.DefaultSettingValueAttribute : System.Attribute
---@field public Value System.String @  getter
System.Configuration.DefaultSettingValueAttribute = {}
---@type System.Configuration.DefaultSettingValueAttribute
CS.System.Configuration.DefaultSettingValueAttribute = System.Configuration.DefaultSettingValueAttribute

---@class System.Configuration.DictionarySectionHandler : System.Object
System.Configuration.DictionarySectionHandler = {}
---@type System.Configuration.DictionarySectionHandler
CS.System.Configuration.DictionarySectionHandler = System.Configuration.DictionarySectionHandler

---@param parent System.Object
---@param context System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Configuration.DictionarySectionHandler:Create(parent, context, section)end
---@class System.Configuration.IdnElement : System.Configuration.ConfigurationElement
---@field public Enabled System.UriIdnScope @ setter getter
System.Configuration.IdnElement = {}
---@type System.Configuration.IdnElement
CS.System.Configuration.IdnElement = System.Configuration.IdnElement

---@param o System.Object
---@return System.Boolean
function System.Configuration.IdnElement:Equals(o)end
---@return System.Int32
function System.Configuration.IdnElement:GetHashCode()end
---@class System.Configuration.IgnoreSectionHandler : System.Object
System.Configuration.IgnoreSectionHandler = {}
---@type System.Configuration.IgnoreSectionHandler
CS.System.Configuration.IgnoreSectionHandler = System.Configuration.IgnoreSectionHandler

---@param parent System.Object
---@param configContext System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Configuration.IgnoreSectionHandler:Create(parent, configContext, section)end
---@class System.Configuration.IriParsingElement : System.Configuration.ConfigurationElement
---@field public Enabled System.Boolean @ setter getter
System.Configuration.IriParsingElement = {}
---@type System.Configuration.IriParsingElement
CS.System.Configuration.IriParsingElement = System.Configuration.IriParsingElement

---@param o System.Object
---@return System.Boolean
function System.Configuration.IriParsingElement:Equals(o)end
---@return System.Int32
function System.Configuration.IriParsingElement:GetHashCode()end
---@class System.Configuration.LocalFileSettingsProvider : System.Configuration.SettingsProvider
---@field public ApplicationName System.String @ setter getter
System.Configuration.LocalFileSettingsProvider = {}
---@type System.Configuration.LocalFileSettingsProvider
CS.System.Configuration.LocalFileSettingsProvider = System.Configuration.LocalFileSettingsProvider

---@param context System.Configuration.SettingsContext
---@param property System.Configuration.SettingsProperty
---@return System.Configuration.SettingsPropertyValue
function System.Configuration.LocalFileSettingsProvider:GetPreviousVersion(context, property)end
---@param context System.Configuration.SettingsContext
---@param properties System.Configuration.SettingsPropertyCollection
---@return System.Configuration.SettingsPropertyValueCollection
function System.Configuration.LocalFileSettingsProvider:GetPropertyValues(context, properties)end
---@param name System.String
---@param values System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Configuration.LocalFileSettingsProvider:Initialize(name, values)end
---@param context System.Configuration.SettingsContext
---@return System.Void
function System.Configuration.LocalFileSettingsProvider:Reset(context)end
---@param context System.Configuration.SettingsContext
---@param values System.Configuration.SettingsPropertyValueCollection
---@return System.Void
function System.Configuration.LocalFileSettingsProvider:SetPropertyValues(context, values)end
---@param context System.Configuration.SettingsContext
---@param properties System.Configuration.SettingsPropertyCollection
---@return System.Void
function System.Configuration.LocalFileSettingsProvider:Upgrade(context, properties)end
---@class System.Configuration.NameValueFileSectionHandler : System.Object
System.Configuration.NameValueFileSectionHandler = {}
---@type System.Configuration.NameValueFileSectionHandler
CS.System.Configuration.NameValueFileSectionHandler = System.Configuration.NameValueFileSectionHandler

---@param parent System.Object
---@param configContext System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Configuration.NameValueFileSectionHandler:Create(parent, configContext, section)end
---@class System.Configuration.NameValueSectionHandler : System.Object
System.Configuration.NameValueSectionHandler = {}
---@type System.Configuration.NameValueSectionHandler
CS.System.Configuration.NameValueSectionHandler = System.Configuration.NameValueSectionHandler

---@param parent System.Object
---@param context System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Configuration.NameValueSectionHandler:Create(parent, context, section)end
---@class System.Configuration.NoSettingsVersionUpgradeAttribute : System.Attribute
System.Configuration.NoSettingsVersionUpgradeAttribute = {}
---@type System.Configuration.NoSettingsVersionUpgradeAttribute
CS.System.Configuration.NoSettingsVersionUpgradeAttribute = System.Configuration.NoSettingsVersionUpgradeAttribute

---@class System.Configuration.SettingAttribute : System.Attribute
System.Configuration.SettingAttribute = {}
---@type System.Configuration.SettingAttribute
CS.System.Configuration.SettingAttribute = System.Configuration.SettingAttribute

---@class System.Configuration.SettingChangingEventArgs : System.ComponentModel.CancelEventArgs
---@field public SettingName System.String @  getter
---@field public SettingClass System.String @  getter
---@field public SettingKey System.String @  getter
---@field public NewValue System.Object @  getter
System.Configuration.SettingChangingEventArgs = {}
---@type System.Configuration.SettingChangingEventArgs
CS.System.Configuration.SettingChangingEventArgs = System.Configuration.SettingChangingEventArgs

---@class System.Configuration.SettingElement : System.Configuration.ConfigurationElement
---@field public Name System.String @ setter getter
---@field public Value System.Configuration.SettingValueElement @ setter getter
---@field public SerializeAs System.Configuration.SettingsSerializeAs @ setter getter
System.Configuration.SettingElement = {}
---@type System.Configuration.SettingElement
CS.System.Configuration.SettingElement = System.Configuration.SettingElement

---@param settings System.Object
---@return System.Boolean
function System.Configuration.SettingElement:Equals(settings)end
---@return System.Int32
function System.Configuration.SettingElement:GetHashCode()end
---@class System.Configuration.SettingElementCollection : System.Configuration.ConfigurationElementCollection
---@field public CollectionType System.Configuration.ConfigurationElementCollectionType @  getter
System.Configuration.SettingElementCollection = {}
---@type System.Configuration.SettingElementCollection
CS.System.Configuration.SettingElementCollection = System.Configuration.SettingElementCollection

---@param element System.Configuration.SettingElement
---@return System.Void
function System.Configuration.SettingElementCollection:Add(element)end
---@return System.Void
function System.Configuration.SettingElementCollection:Clear()end
---@param elementKey System.String
---@return System.Configuration.SettingElement
function System.Configuration.SettingElementCollection:Get(elementKey)end
---@param element System.Configuration.SettingElement
---@return System.Void
function System.Configuration.SettingElementCollection:Remove(element)end
---@class System.Configuration.SettingValueElement : System.Configuration.ConfigurationElement
---@field public ValueXml System.Xml.XmlNode @ setter getter
System.Configuration.SettingValueElement = {}
---@type System.Configuration.SettingValueElement
CS.System.Configuration.SettingValueElement = System.Configuration.SettingValueElement

---@param settingValue System.Object
---@return System.Boolean
function System.Configuration.SettingValueElement:Equals(settingValue)end
---@return System.Int32
function System.Configuration.SettingValueElement:GetHashCode()end
---@class System.Configuration.SettingsAttributeDictionary : System.Collections.Hashtable
System.Configuration.SettingsAttributeDictionary = {}
---@type System.Configuration.SettingsAttributeDictionary
CS.System.Configuration.SettingsAttributeDictionary = System.Configuration.SettingsAttributeDictionary

---@class System.Configuration.SettingsBase : System.Object
---@field public Context System.Configuration.SettingsContext @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Object @ setter getter
---@field public Properties System.Configuration.SettingsPropertyCollection @  getter
---@field public PropertyValues System.Configuration.SettingsPropertyValueCollection @  getter
---@field public Providers System.Configuration.SettingsProviderCollection @  getter
System.Configuration.SettingsBase = {}
---@type System.Configuration.SettingsBase
CS.System.Configuration.SettingsBase = System.Configuration.SettingsBase

---@param context System.Configuration.SettingsContext
---@param properties System.Configuration.SettingsPropertyCollection
---@param providers System.Configuration.SettingsProviderCollection
---@return System.Void
function System.Configuration.SettingsBase:Initialize(context, properties, providers)end
---@return System.Void
function System.Configuration.SettingsBase:Save()end
---@param settingsBase System.Configuration.SettingsBase
---@return System.Configuration.SettingsBase
function System.Configuration.SettingsBase.Synchronized(settingsBase)end
---@class System.Configuration.SettingsContext : System.Collections.Hashtable
System.Configuration.SettingsContext = {}
---@type System.Configuration.SettingsContext
CS.System.Configuration.SettingsContext = System.Configuration.SettingsContext

---@class System.Configuration.SettingsDescriptionAttribute : System.Attribute
---@field public Description System.String @  getter
System.Configuration.SettingsDescriptionAttribute = {}
---@type System.Configuration.SettingsDescriptionAttribute
CS.System.Configuration.SettingsDescriptionAttribute = System.Configuration.SettingsDescriptionAttribute

---@class System.Configuration.SettingsGroupDescriptionAttribute : System.Attribute
---@field public Description System.String @  getter
System.Configuration.SettingsGroupDescriptionAttribute = {}
---@type System.Configuration.SettingsGroupDescriptionAttribute
CS.System.Configuration.SettingsGroupDescriptionAttribute = System.Configuration.SettingsGroupDescriptionAttribute

---@class System.Configuration.SettingsGroupNameAttribute : System.Attribute
---@field public GroupName System.String @  getter
System.Configuration.SettingsGroupNameAttribute = {}
---@type System.Configuration.SettingsGroupNameAttribute
CS.System.Configuration.SettingsGroupNameAttribute = System.Configuration.SettingsGroupNameAttribute

---@class System.Configuration.SettingsLoadedEventArgs : System.EventArgs
---@field public Provider System.Configuration.SettingsProvider @  getter
System.Configuration.SettingsLoadedEventArgs = {}
---@type System.Configuration.SettingsLoadedEventArgs
CS.System.Configuration.SettingsLoadedEventArgs = System.Configuration.SettingsLoadedEventArgs

---@class System.Configuration.SettingsManageability : System.Enum
System.Configuration.SettingsManageability = {}
---@type System.Configuration.SettingsManageability
CS.System.Configuration.SettingsManageability = System.Configuration.SettingsManageability

---@return System.Int32 value:0
System.Configuration.SettingsManageability.Roaming = 0

---@class System.Configuration.SettingsManageabilityAttribute : System.Attribute
---@field public Manageability System.Configuration.SettingsManageability @  getter
System.Configuration.SettingsManageabilityAttribute = {}
---@type System.Configuration.SettingsManageabilityAttribute
CS.System.Configuration.SettingsManageabilityAttribute = System.Configuration.SettingsManageabilityAttribute

---@class System.Configuration.SettingsProperty : System.Object
---@field public Attributes System.Configuration.SettingsAttributeDictionary @  getter
---@field public DefaultValue System.Object @ setter getter
---@field public IsReadOnly System.Boolean @ setter getter
---@field public Name System.String @ setter getter
---@field public PropertyType System.Type @ setter getter
---@field public Provider System.Configuration.SettingsProvider @ setter getter
---@field public SerializeAs System.Configuration.SettingsSerializeAs @ setter getter
---@field public ThrowOnErrorDeserializing System.Boolean @ setter getter
---@field public ThrowOnErrorSerializing System.Boolean @ setter getter
System.Configuration.SettingsProperty = {}
---@type System.Configuration.SettingsProperty
CS.System.Configuration.SettingsProperty = System.Configuration.SettingsProperty

---@class System.Configuration.SettingsPropertyCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Configuration.SettingsProperty @  getter
---@field public SyncRoot System.Object @  getter
System.Configuration.SettingsPropertyCollection = {}
---@type System.Configuration.SettingsPropertyCollection
CS.System.Configuration.SettingsPropertyCollection = System.Configuration.SettingsPropertyCollection

---@param property System.Configuration.SettingsProperty
---@return System.Void
function System.Configuration.SettingsPropertyCollection:Add(property)end
---@return System.Void
function System.Configuration.SettingsPropertyCollection:Clear()end
---@return System.Object
function System.Configuration.SettingsPropertyCollection:Clone()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Configuration.SettingsPropertyCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.SettingsPropertyCollection:GetEnumerator()end
---@param name System.String
---@return System.Void
function System.Configuration.SettingsPropertyCollection:Remove(name)end
---@return System.Void
function System.Configuration.SettingsPropertyCollection:SetReadOnly()end
---@class System.Configuration.SettingsPropertyIsReadOnlyException : System.Exception
System.Configuration.SettingsPropertyIsReadOnlyException = {}
---@type System.Configuration.SettingsPropertyIsReadOnlyException
CS.System.Configuration.SettingsPropertyIsReadOnlyException = System.Configuration.SettingsPropertyIsReadOnlyException

---@class System.Configuration.SettingsPropertyNotFoundException : System.Exception
System.Configuration.SettingsPropertyNotFoundException = {}
---@type System.Configuration.SettingsPropertyNotFoundException
CS.System.Configuration.SettingsPropertyNotFoundException = System.Configuration.SettingsPropertyNotFoundException

---@class System.Configuration.SettingsPropertyValue : System.Object
---@field public Deserialized System.Boolean @ setter getter
---@field public IsDirty System.Boolean @ setter getter
---@field public Name System.String @  getter
---@field public Property System.Configuration.SettingsProperty @  getter
---@field public PropertyValue System.Object @ setter getter
---@field public SerializedValue System.Object @ setter getter
---@field public UsingDefaultValue System.Boolean @  getter
System.Configuration.SettingsPropertyValue = {}
---@type System.Configuration.SettingsPropertyValue
CS.System.Configuration.SettingsPropertyValue = System.Configuration.SettingsPropertyValue

---@class System.Configuration.SettingsPropertyValueCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Configuration.SettingsPropertyValue @  getter
---@field public SyncRoot System.Object @  getter
System.Configuration.SettingsPropertyValueCollection = {}
---@type System.Configuration.SettingsPropertyValueCollection
CS.System.Configuration.SettingsPropertyValueCollection = System.Configuration.SettingsPropertyValueCollection

---@param property System.Configuration.SettingsPropertyValue
---@return System.Void
function System.Configuration.SettingsPropertyValueCollection:Add(property)end
---@return System.Void
function System.Configuration.SettingsPropertyValueCollection:Clear()end
---@return System.Object
function System.Configuration.SettingsPropertyValueCollection:Clone()end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.Configuration.SettingsPropertyValueCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.SettingsPropertyValueCollection:GetEnumerator()end
---@param name System.String
---@return System.Void
function System.Configuration.SettingsPropertyValueCollection:Remove(name)end
---@return System.Void
function System.Configuration.SettingsPropertyValueCollection:SetReadOnly()end
---@class System.Configuration.SettingsPropertyWrongTypeException : System.Exception
System.Configuration.SettingsPropertyWrongTypeException = {}
---@type System.Configuration.SettingsPropertyWrongTypeException
CS.System.Configuration.SettingsPropertyWrongTypeException = System.Configuration.SettingsPropertyWrongTypeException

---@class System.Configuration.SettingsProvider : System.Configuration.Provider.ProviderBase
---@field public ApplicationName System.String @ setter getter
System.Configuration.SettingsProvider = {}
---@type System.Configuration.SettingsProvider
CS.System.Configuration.SettingsProvider = System.Configuration.SettingsProvider

---@param context System.Configuration.SettingsContext
---@param collection System.Configuration.SettingsPropertyCollection
---@return System.Configuration.SettingsPropertyValueCollection
function System.Configuration.SettingsProvider:GetPropertyValues(context, collection)end
---@param context System.Configuration.SettingsContext
---@param collection System.Configuration.SettingsPropertyValueCollection
---@return System.Void
function System.Configuration.SettingsProvider:SetPropertyValues(context, collection)end
---@class System.Configuration.SettingsProviderAttribute : System.Attribute
---@field public ProviderTypeName System.String @  getter
System.Configuration.SettingsProviderAttribute = {}
---@type System.Configuration.SettingsProviderAttribute
CS.System.Configuration.SettingsProviderAttribute = System.Configuration.SettingsProviderAttribute

---@class System.Configuration.SettingsProviderCollection : System.Configuration.Provider.ProviderCollection
---@field public Item System.Configuration.SettingsProvider @  getter
System.Configuration.SettingsProviderCollection = {}
---@type System.Configuration.SettingsProviderCollection
CS.System.Configuration.SettingsProviderCollection = System.Configuration.SettingsProviderCollection

---@param provider System.Configuration.Provider.ProviderBase
---@return System.Void
function System.Configuration.SettingsProviderCollection:Add(provider)end
---@class System.Configuration.SettingsSerializeAs : System.Enum
System.Configuration.SettingsSerializeAs = {}
---@type System.Configuration.SettingsSerializeAs
CS.System.Configuration.SettingsSerializeAs = System.Configuration.SettingsSerializeAs

---@return System.Int32 value:0
System.Configuration.SettingsSerializeAs.String = 0
---@return System.Int32 value:1
System.Configuration.SettingsSerializeAs.Xml = 1
---@return System.Int32 value:2
System.Configuration.SettingsSerializeAs.Binary = 2
---@return System.Int32 value:3
System.Configuration.SettingsSerializeAs.ProviderSpecific = 3

---@class System.Configuration.SettingsSerializeAsAttribute : System.Attribute
---@field public SerializeAs System.Configuration.SettingsSerializeAs @  getter
System.Configuration.SettingsSerializeAsAttribute = {}
---@type System.Configuration.SettingsSerializeAsAttribute
CS.System.Configuration.SettingsSerializeAsAttribute = System.Configuration.SettingsSerializeAsAttribute

---@class System.Configuration.SingleTagSectionHandler : System.Object
System.Configuration.SingleTagSectionHandler = {}
---@type System.Configuration.SingleTagSectionHandler
CS.System.Configuration.SingleTagSectionHandler = System.Configuration.SingleTagSectionHandler

---@param parent System.Object
---@param context System.Object
---@param section System.Xml.XmlNode
---@return System.Object
function System.Configuration.SingleTagSectionHandler:Create(parent, context, section)end
---@class System.Configuration.SpecialSetting : System.Enum
System.Configuration.SpecialSetting = {}
---@type System.Configuration.SpecialSetting
CS.System.Configuration.SpecialSetting = System.Configuration.SpecialSetting

---@return System.Int32 value:0
System.Configuration.SpecialSetting.ConnectionString = 0
---@return System.Int32 value:1
System.Configuration.SpecialSetting.WebServiceUrl = 1

---@class System.Configuration.SpecialSettingAttribute : System.Attribute
---@field public SpecialSetting System.Configuration.SpecialSetting @  getter
System.Configuration.SpecialSettingAttribute = {}
---@type System.Configuration.SpecialSettingAttribute
CS.System.Configuration.SpecialSettingAttribute = System.Configuration.SpecialSettingAttribute

---@class System.Configuration.UriSection : System.Configuration.ConfigurationSection
---@field public Idn System.Configuration.IdnElement @  getter
---@field public IriParsing System.Configuration.IriParsingElement @  getter
---@field public SchemeSettings System.Configuration.SchemeSettingElementCollection @  getter
System.Configuration.UriSection = {}
---@type System.Configuration.UriSection
CS.System.Configuration.UriSection = System.Configuration.UriSection

---@class System.Configuration.UserScopedSettingAttribute : System.Configuration.SettingAttribute
System.Configuration.UserScopedSettingAttribute = {}
---@type System.Configuration.UserScopedSettingAttribute
CS.System.Configuration.UserScopedSettingAttribute = System.Configuration.UserScopedSettingAttribute

---@class System.Configuration.UserSettingsGroup : System.Configuration.ConfigurationSectionGroup
System.Configuration.UserSettingsGroup = {}
---@type System.Configuration.UserSettingsGroup
CS.System.Configuration.UserSettingsGroup = System.Configuration.UserSettingsGroup

---@class System.Configuration.SchemeSettingElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Configuration.SchemeSettingElement @  getter
System.Configuration.SchemeSettingElementCollection = {}
---@type System.Configuration.SchemeSettingElementCollection
CS.System.Configuration.SchemeSettingElementCollection = System.Configuration.SchemeSettingElementCollection

---@param element System.Configuration.SchemeSettingElement
---@return System.Int32
function System.Configuration.SchemeSettingElementCollection:IndexOf(element)end
---@class System.Configuration.SchemeSettingElement : System.Configuration.ConfigurationElement
---@field public GenericUriParserOptions System.GenericUriParserOptions @  getter
---@field public Name System.String @  getter
System.Configuration.SchemeSettingElement = {}
---@type System.Configuration.SchemeSettingElement
CS.System.Configuration.SchemeSettingElement = System.Configuration.SchemeSettingElement

---@class System.Configuration.AppSettingsSection : System.Configuration.ConfigurationSection
---@field public File System.String @ setter getter
---@field public Settings System.Configuration.KeyValueConfigurationCollection @  getter
System.Configuration.AppSettingsSection = {}
---@type System.Configuration.AppSettingsSection
CS.System.Configuration.AppSettingsSection = System.Configuration.AppSettingsSection

---@class System.Configuration.CallbackValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.CallbackValidator = {}
---@type System.Configuration.CallbackValidator
CS.System.Configuration.CallbackValidator = System.Configuration.CallbackValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.CallbackValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.CallbackValidator:Validate(value)end
---@class System.Configuration.CallbackValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public CallbackMethodName System.String @ setter getter
---@field public Type System.Type @ setter getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.CallbackValidatorAttribute = {}
---@type System.Configuration.CallbackValidatorAttribute
CS.System.Configuration.CallbackValidatorAttribute = System.Configuration.CallbackValidatorAttribute

---@class System.Configuration.CommaDelimitedStringCollection : System.Collections.Specialized.StringCollection
---@field public IsModified System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Item System.String @ setter getter
System.Configuration.CommaDelimitedStringCollection = {}
---@type System.Configuration.CommaDelimitedStringCollection
CS.System.Configuration.CommaDelimitedStringCollection = System.Configuration.CommaDelimitedStringCollection

---@param value System.String
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:Add(value)end
---@param range System.String[]
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:AddRange(range)end
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:Clear()end
---@return System.Configuration.CommaDelimitedStringCollection
function System.Configuration.CommaDelimitedStringCollection:Clone()end
---@param index System.Int32
---@param value System.String
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:Insert(index, value)end
---@param value System.String
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:Remove(value)end
---@return System.Void
function System.Configuration.CommaDelimitedStringCollection:SetReadOnly()end
---@return System.String
function System.Configuration.CommaDelimitedStringCollection:ToString()end
---@class System.Configuration.CommaDelimitedStringCollectionConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.CommaDelimitedStringCollectionConverter = {}
---@type System.Configuration.CommaDelimitedStringCollectionConverter
CS.System.Configuration.CommaDelimitedStringCollectionConverter = System.Configuration.CommaDelimitedStringCollectionConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.CommaDelimitedStringCollectionConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.CommaDelimitedStringCollectionConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.Configuration : System.Object
---@field public AppSettings System.Configuration.AppSettingsSection @  getter
---@field public ConnectionStrings System.Configuration.ConnectionStringsSection @  getter
---@field public FilePath System.String @  getter
---@field public HasFile System.Boolean @  getter
---@field public EvaluationContext System.Configuration.ContextInformation @  getter
---@field public Locations System.Configuration.ConfigurationLocationCollection @  getter
---@field public NamespaceDeclared System.Boolean @ setter getter
---@field public RootSectionGroup System.Configuration.ConfigurationSectionGroup @  getter
---@field public SectionGroups System.Configuration.ConfigurationSectionGroupCollection @  getter
---@field public Sections System.Configuration.ConfigurationSectionCollection @  getter
---@field public AssemblyStringTransformer System.Func @ setter getter
---@field public TargetFramework System.Runtime.Versioning.FrameworkName @ setter getter
---@field public TypeStringTransformer System.Func @ setter getter
System.Configuration.Configuration = {}
---@type System.Configuration.Configuration
CS.System.Configuration.Configuration = System.Configuration.Configuration

---@param sectionName System.String
---@return System.Configuration.ConfigurationSection
function System.Configuration.Configuration:GetSection(sectionName)end
---@param sectionGroupName System.String
---@return System.Configuration.ConfigurationSectionGroup
function System.Configuration.Configuration:GetSectionGroup(sectionGroupName)end
---@overload fun(saveMode:System.Configuration.ConfigurationSaveMode):System.Void
---@overload fun(saveMode:System.Configuration.ConfigurationSaveMode, forceSaveAll:System.Boolean):System.Void
---@return System.Void
function System.Configuration.Configuration:Save()end
---@overload fun(filename:System.String, saveMode:System.Configuration.ConfigurationSaveMode):System.Void
---@overload fun(filename:System.String, saveMode:System.Configuration.ConfigurationSaveMode, forceSaveAll:System.Boolean):System.Void
---@param filename System.String
---@return System.Void
function System.Configuration.Configuration:SaveAs(filename)end
---@class System.Configuration.ConfigurationAllowDefinition : System.Enum
System.Configuration.ConfigurationAllowDefinition = {}
---@type System.Configuration.ConfigurationAllowDefinition
CS.System.Configuration.ConfigurationAllowDefinition = System.Configuration.ConfigurationAllowDefinition

---@return System.Int32 value:0
System.Configuration.ConfigurationAllowDefinition.MachineOnly = 0

---@class System.Configuration.ConfigurationAllowExeDefinition : System.Enum
System.Configuration.ConfigurationAllowExeDefinition = {}
---@type System.Configuration.ConfigurationAllowExeDefinition
CS.System.Configuration.ConfigurationAllowExeDefinition = System.Configuration.ConfigurationAllowExeDefinition

---@return System.Int32 value:0
System.Configuration.ConfigurationAllowExeDefinition.MachineOnly = 0

---@class System.Configuration.ConfigurationCollectionAttribute : System.Attribute
---@field public AddItemName System.String @ setter getter
---@field public ClearItemsName System.String @ setter getter
---@field public RemoveItemName System.String @ setter getter
---@field public CollectionType System.Configuration.ConfigurationElementCollectionType @ setter getter
---@field public ItemType System.Type @  getter
System.Configuration.ConfigurationCollectionAttribute = {}
---@type System.Configuration.ConfigurationCollectionAttribute
CS.System.Configuration.ConfigurationCollectionAttribute = System.Configuration.ConfigurationCollectionAttribute

---@class System.Configuration.ConfigurationConverterBase : System.ComponentModel.TypeConverter
System.Configuration.ConfigurationConverterBase = {}
---@type System.Configuration.ConfigurationConverterBase
CS.System.Configuration.ConfigurationConverterBase = System.Configuration.ConfigurationConverterBase

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param type System.Type
---@return System.Boolean
function System.Configuration.ConfigurationConverterBase:CanConvertFrom(ctx, type)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param type System.Type
---@return System.Boolean
function System.Configuration.ConfigurationConverterBase:CanConvertTo(ctx, type)end
---@class System.Configuration.ConfigurationElement : System.Object
---@field public ElementInformation System.Configuration.ElementInformation @  getter
---@field public LockAllAttributesExcept System.Configuration.ConfigurationLockCollection @  getter
---@field public LockAllElementsExcept System.Configuration.ConfigurationLockCollection @  getter
---@field public LockAttributes System.Configuration.ConfigurationLockCollection @  getter
---@field public LockElements System.Configuration.ConfigurationLockCollection @  getter
---@field public LockItem System.Boolean @ setter getter
---@field public CurrentConfiguration System.Configuration.Configuration @  getter
System.Configuration.ConfigurationElement = {}
---@type System.Configuration.ConfigurationElement
CS.System.Configuration.ConfigurationElement = System.Configuration.ConfigurationElement

---@param compareTo System.Object
---@return System.Boolean
function System.Configuration.ConfigurationElement:Equals(compareTo)end
---@return System.Int32
function System.Configuration.ConfigurationElement:GetHashCode()end
---@return System.Boolean
function System.Configuration.ConfigurationElement:IsReadOnly()end
---@class System.Configuration.ConfigurationElementCollection : System.Configuration.ConfigurationElement
---@field public CollectionType System.Configuration.ConfigurationElementCollectionType @  getter
---@field public Count System.Int32 @  getter
---@field public EmitClear System.Boolean @ setter getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Configuration.ConfigurationElementCollection = {}
---@type System.Configuration.ConfigurationElementCollection
CS.System.Configuration.ConfigurationElementCollection = System.Configuration.ConfigurationElementCollection

---@param array System.Configuration.ConfigurationElement[]
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationElementCollection:CopyTo(array, index)end
---@param compareTo System.Object
---@return System.Boolean
function System.Configuration.ConfigurationElementCollection:Equals(compareTo)end
---@return System.Int32
function System.Configuration.ConfigurationElementCollection:GetHashCode()end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationElementCollection:GetEnumerator()end
---@return System.Boolean
function System.Configuration.ConfigurationElementCollection:IsReadOnly()end
---@class System.Configuration.ConfigurationElementCollectionType : System.Enum
System.Configuration.ConfigurationElementCollectionType = {}
---@type System.Configuration.ConfigurationElementCollectionType
CS.System.Configuration.ConfigurationElementCollectionType = System.Configuration.ConfigurationElementCollectionType

---@return System.Int32 value:0
System.Configuration.ConfigurationElementCollectionType.BasicMap = 0
---@return System.Int32 value:1
System.Configuration.ConfigurationElementCollectionType.AddRemoveClearMap = 1
---@return System.Int32 value:2
System.Configuration.ConfigurationElementCollectionType.BasicMapAlternate = 2
---@return System.Int32 value:3
System.Configuration.ConfigurationElementCollectionType.AddRemoveClearMapAlternate = 3

---@class System.Configuration.ConfigurationElementProperty : System.Object
---@field public Validator System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.ConfigurationElementProperty = {}
---@type System.Configuration.ConfigurationElementProperty
CS.System.Configuration.ConfigurationElementProperty = System.Configuration.ConfigurationElementProperty

---@class System.Configuration.ConfigurationErrorsException : System.Configuration.ConfigurationException
---@field public BareMessage System.String @  getter
---@field public Errors System.Collections.ICollection @  getter
---@field public Filename System.String @  getter
---@field public Line System.Int32 @  getter
---@field public Message System.String @  getter
System.Configuration.ConfigurationErrorsException = {}
---@type System.Configuration.ConfigurationErrorsException
CS.System.Configuration.ConfigurationErrorsException = System.Configuration.ConfigurationErrorsException

---@overload fun(node:System.Xml.XmlNode):System.String
---@param reader System.Xml.XmlReader
---@return System.String
function System.Configuration.ConfigurationErrorsException.GetFilename(reader)end
---@overload fun(node:System.Xml.XmlNode):System.Int32
---@param reader System.Xml.XmlReader
---@return System.Int32
function System.Configuration.ConfigurationErrorsException.GetLineNumber(reader)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Configuration.ConfigurationErrorsException:GetObjectData(info, context)end
---@class System.Configuration.ConfigurationFileMap : System.Object
---@field public MachineConfigFilename System.String @ setter getter
System.Configuration.ConfigurationFileMap = {}
---@type System.Configuration.ConfigurationFileMap
CS.System.Configuration.ConfigurationFileMap = System.Configuration.ConfigurationFileMap

---@return System.Object
function System.Configuration.ConfigurationFileMap:Clone()end
---@class System.Configuration.ConfigurationLocation : System.Object
---@field public Path System.String @  getter
System.Configuration.ConfigurationLocation = {}
---@type System.Configuration.ConfigurationLocation
CS.System.Configuration.ConfigurationLocation = System.Configuration.ConfigurationLocation

---@return System.Configuration.Configuration
function System.Configuration.ConfigurationLocation:OpenConfiguration()end
---@class System.Configuration.ConfigurationLocationCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.Configuration.ConfigurationLocation @  getter
System.Configuration.ConfigurationLocationCollection = {}
---@type System.Configuration.ConfigurationLocationCollection
CS.System.Configuration.ConfigurationLocationCollection = System.Configuration.ConfigurationLocationCollection

---@class System.Configuration.ConfigurationLockCollection : System.Object
---@field public AttributeList System.String @  getter
---@field public Count System.Int32 @  getter
---@field public HasParentElements System.Boolean @  getter
---@field public IsModified System.Boolean @ setter getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Configuration.ConfigurationLockCollection = {}
---@type System.Configuration.ConfigurationLockCollection
CS.System.Configuration.ConfigurationLockCollection = System.Configuration.ConfigurationLockCollection

---@param name System.String
---@return System.Void
function System.Configuration.ConfigurationLockCollection:Add(name)end
---@return System.Void
function System.Configuration.ConfigurationLockCollection:Clear()end
---@param name System.String
---@return System.Boolean
function System.Configuration.ConfigurationLockCollection:Contains(name)end
---@param array System.String[]
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationLockCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationLockCollection:GetEnumerator()end
---@param name System.String
---@return System.Boolean
function System.Configuration.ConfigurationLockCollection:IsReadOnly(name)end
---@param name System.String
---@return System.Void
function System.Configuration.ConfigurationLockCollection:Remove(name)end
---@param attributeList System.String
---@return System.Void
function System.Configuration.ConfigurationLockCollection:SetFromList(attributeList)end
---@class System.Configuration.ConfigurationManager : System.Object
---@field public AppSettings System.Collections.Specialized.NameValueCollection @static  getter
---@field public ConnectionStrings System.Configuration.ConnectionStringSettingsCollection @static  getter
System.Configuration.ConfigurationManager = {}
---@type System.Configuration.ConfigurationManager
CS.System.Configuration.ConfigurationManager = System.Configuration.ConfigurationManager

---@overload fun(exePath:System.String):System.Configuration.Configuration
---@param userLevel System.Configuration.ConfigurationUserLevel
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenExeConfiguration(userLevel)end
---@overload fun(fileMap:System.Configuration.ExeConfigurationFileMap, userLevel:System.Configuration.ConfigurationUserLevel, preLoad:System.Boolean):System.Configuration.Configuration
---@param fileMap System.Configuration.ExeConfigurationFileMap
---@param userLevel System.Configuration.ConfigurationUserLevel
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMappedExeConfiguration(fileMap, userLevel)end
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMachineConfiguration()end
---@param fileMap System.Configuration.ConfigurationFileMap
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMappedMachineConfiguration(fileMap)end
---@param sectionName System.String
---@return System.Object
function System.Configuration.ConfigurationManager.GetSection(sectionName)end
---@param sectionName System.String
---@return System.Void
function System.Configuration.ConfigurationManager.RefreshSection(sectionName)end
---@class System.Configuration.ConfigurationPermission : System.Security.CodeAccessPermission
System.Configuration.ConfigurationPermission = {}
---@type System.Configuration.ConfigurationPermission
CS.System.Configuration.ConfigurationPermission = System.Configuration.ConfigurationPermission

---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Copy()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Configuration.ConfigurationPermission:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Union(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Configuration.ConfigurationPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Configuration.ConfigurationPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Configuration.ConfigurationPermission:ToXml()end
---@class System.Configuration.ConfigurationPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
System.Configuration.ConfigurationPermissionAttribute = {}
---@type System.Configuration.ConfigurationPermissionAttribute
CS.System.Configuration.ConfigurationPermissionAttribute = System.Configuration.ConfigurationPermissionAttribute

---@return System.Security.IPermission
function System.Configuration.ConfigurationPermissionAttribute:CreatePermission()end
---@class System.Configuration.ConfigurationProperty : System.Object
---@field public Converter System.ComponentModel.TypeConverter @  getter
---@field public DefaultValue System.Object @  getter
---@field public IsKey System.Boolean @  getter
---@field public IsRequired System.Boolean @  getter
---@field public IsDefaultCollection System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Description System.String @  getter
---@field public Type System.Type @  getter
---@field public Validator System.Configuration.ConfigurationValidatorBase @  getter
---@field public IsAssemblyStringTransformationRequired System.Boolean @  getter
---@field public IsTypeStringTransformationRequired System.Boolean @  getter
---@field public IsVersionCheckRequired System.Boolean @  getter
System.Configuration.ConfigurationProperty = {}
---@type System.Configuration.ConfigurationProperty
CS.System.Configuration.ConfigurationProperty = System.Configuration.ConfigurationProperty

---@class System.Configuration.ConfigurationPropertyAttribute : System.Attribute
---@field public IsKey System.Boolean @ setter getter
---@field public IsDefaultCollection System.Boolean @ setter getter
---@field public DefaultValue System.Object @ setter getter
---@field public Options System.Configuration.ConfigurationPropertyOptions @ setter getter
---@field public Name System.String @  getter
---@field public IsRequired System.Boolean @ setter getter
System.Configuration.ConfigurationPropertyAttribute = {}
---@type System.Configuration.ConfigurationPropertyAttribute
CS.System.Configuration.ConfigurationPropertyAttribute = System.Configuration.ConfigurationPropertyAttribute

---@class System.Configuration.ConfigurationPropertyCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.Configuration.ConfigurationProperty @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Configuration.ConfigurationPropertyCollection = {}
---@type System.Configuration.ConfigurationPropertyCollection
CS.System.Configuration.ConfigurationPropertyCollection = System.Configuration.ConfigurationPropertyCollection

---@param property System.Configuration.ConfigurationProperty
---@return System.Void
function System.Configuration.ConfigurationPropertyCollection:Add(property)end
---@param name System.String
---@return System.Boolean
function System.Configuration.ConfigurationPropertyCollection:Contains(name)end
---@param array System.Configuration.ConfigurationProperty[]
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationPropertyCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationPropertyCollection:GetEnumerator()end
---@param name System.String
---@return System.Boolean
function System.Configuration.ConfigurationPropertyCollection:Remove(name)end
---@return System.Void
function System.Configuration.ConfigurationPropertyCollection:Clear()end
---@class System.Configuration.ConfigurationPropertyOptions : System.Enum
System.Configuration.ConfigurationPropertyOptions = {}
---@type System.Configuration.ConfigurationPropertyOptions
CS.System.Configuration.ConfigurationPropertyOptions = System.Configuration.ConfigurationPropertyOptions

---@return System.Int32 value:0
System.Configuration.ConfigurationPropertyOptions.None = 0
---@return System.Int32 value:1
System.Configuration.ConfigurationPropertyOptions.IsDefaultCollection = 1
---@return System.Int32 value:2
System.Configuration.ConfigurationPropertyOptions.IsRequired = 2
---@return System.Int32 value:4
System.Configuration.ConfigurationPropertyOptions.IsKey = 4

---@class System.Configuration.ConfigurationSaveMode : System.Enum
System.Configuration.ConfigurationSaveMode = {}
---@type System.Configuration.ConfigurationSaveMode
CS.System.Configuration.ConfigurationSaveMode = System.Configuration.ConfigurationSaveMode

---@return System.Int32 value:0
System.Configuration.ConfigurationSaveMode.Modified = 0
---@return System.Int32 value:1
System.Configuration.ConfigurationSaveMode.Minimal = 1
---@return System.Int32 value:2
System.Configuration.ConfigurationSaveMode.Full = 2

---@class System.Configuration.ConfigurationSection : System.Configuration.ConfigurationElement
---@field public SectionInformation System.Configuration.SectionInformation @  getter
System.Configuration.ConfigurationSection = {}
---@type System.Configuration.ConfigurationSection
CS.System.Configuration.ConfigurationSection = System.Configuration.ConfigurationSection

---@class System.Configuration.ConfigurationSectionCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field public Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection @  getter
---@field public Count System.Int32 @  getter
---@field public Item System.Configuration.ConfigurationSection @  getter
---@field public Item System.Configuration.ConfigurationSection @  getter
System.Configuration.ConfigurationSectionCollection = {}
---@type System.Configuration.ConfigurationSectionCollection
CS.System.Configuration.ConfigurationSectionCollection = System.Configuration.ConfigurationSectionCollection

---@param name System.String
---@param section System.Configuration.ConfigurationSection
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:Add(name, section)end
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:Clear()end
---@param array System.Configuration.ConfigurationSection[]
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:CopyTo(array, index)end
---@overload fun(name:System.String):System.Configuration.ConfigurationSection
---@param index System.Int32
---@return System.Configuration.ConfigurationSection
function System.Configuration.ConfigurationSectionCollection:Get(index)end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationSectionCollection:GetEnumerator()end
---@param index System.Int32
---@return System.String
function System.Configuration.ConfigurationSectionCollection:GetKey(index)end
---@param name System.String
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:Remove(name)end
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:RemoveAt(index)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Configuration.ConfigurationSectionCollection:GetObjectData(info, context)end
---@class System.Configuration.ConfigurationSectionGroup : System.Object
---@field public IsDeclared System.Boolean @  getter
---@field public IsDeclarationRequired System.Boolean @  getter
---@field public Name System.String @  getter
---@field public SectionGroupName System.String @  getter
---@field public SectionGroups System.Configuration.ConfigurationSectionGroupCollection @  getter
---@field public Sections System.Configuration.ConfigurationSectionCollection @  getter
---@field public Type System.String @ setter getter
System.Configuration.ConfigurationSectionGroup = {}
---@type System.Configuration.ConfigurationSectionGroup
CS.System.Configuration.ConfigurationSectionGroup = System.Configuration.ConfigurationSectionGroup

---@overload fun(force:System.Boolean):System.Void
---@return System.Void
function System.Configuration.ConfigurationSectionGroup:ForceDeclaration()end
---@class System.Configuration.ConfigurationSectionGroupCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field public Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection @  getter
---@field public Count System.Int32 @  getter
---@field public Item System.Configuration.ConfigurationSectionGroup @  getter
---@field public Item System.Configuration.ConfigurationSectionGroup @  getter
System.Configuration.ConfigurationSectionGroupCollection = {}
---@type System.Configuration.ConfigurationSectionGroupCollection
CS.System.Configuration.ConfigurationSectionGroupCollection = System.Configuration.ConfigurationSectionGroupCollection

---@param name System.String
---@param sectionGroup System.Configuration.ConfigurationSectionGroup
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:Add(name, sectionGroup)end
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:Clear()end
---@param array System.Configuration.ConfigurationSectionGroup[]
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:CopyTo(array, index)end
---@overload fun(name:System.String):System.Configuration.ConfigurationSectionGroup
---@param index System.Int32
---@return System.Configuration.ConfigurationSectionGroup
function System.Configuration.ConfigurationSectionGroupCollection:Get(index)end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationSectionGroupCollection:GetEnumerator()end
---@param index System.Int32
---@return System.String
function System.Configuration.ConfigurationSectionGroupCollection:GetKey(index)end
---@param name System.String
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:Remove(name)end
---@param index System.Int32
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:RemoveAt(index)end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Configuration.ConfigurationSectionGroupCollection:GetObjectData(info, context)end
---@class System.Configuration.ConfigurationUserLevel : System.Enum
System.Configuration.ConfigurationUserLevel = {}
---@type System.Configuration.ConfigurationUserLevel
CS.System.Configuration.ConfigurationUserLevel = System.Configuration.ConfigurationUserLevel

---@return System.Int32 value:0
System.Configuration.ConfigurationUserLevel.None = 0

---@class System.Configuration.ConfigurationValidatorAttribute : System.Attribute
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
---@field public ValidatorType System.Type @  getter
System.Configuration.ConfigurationValidatorAttribute = {}
---@type System.Configuration.ConfigurationValidatorAttribute
CS.System.Configuration.ConfigurationValidatorAttribute = System.Configuration.ConfigurationValidatorAttribute

---@class System.Configuration.ConfigurationValidatorBase : System.Object
System.Configuration.ConfigurationValidatorBase = {}
---@type System.Configuration.ConfigurationValidatorBase
CS.System.Configuration.ConfigurationValidatorBase = System.Configuration.ConfigurationValidatorBase

---@param type System.Type
---@return System.Boolean
function System.Configuration.ConfigurationValidatorBase:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.ConfigurationValidatorBase:Validate(value)end
---@class System.Configuration.ConnectionStringSettings : System.Configuration.ConfigurationElement
---@field public Name System.String @ setter getter
---@field public ProviderName System.String @ setter getter
---@field public ConnectionString System.String @ setter getter
System.Configuration.ConnectionStringSettings = {}
---@type System.Configuration.ConnectionStringSettings
CS.System.Configuration.ConnectionStringSettings = System.Configuration.ConnectionStringSettings

---@return System.String
function System.Configuration.ConnectionStringSettings:ToString()end
---@class System.Configuration.ConnectionStringSettingsCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Configuration.ConnectionStringSettings @  getter
---@field public Item System.Configuration.ConnectionStringSettings @ setter getter
System.Configuration.ConnectionStringSettingsCollection = {}
---@type System.Configuration.ConnectionStringSettingsCollection
CS.System.Configuration.ConnectionStringSettingsCollection = System.Configuration.ConnectionStringSettingsCollection

---@param settings System.Configuration.ConnectionStringSettings
---@return System.Void
function System.Configuration.ConnectionStringSettingsCollection:Add(settings)end
---@return System.Void
function System.Configuration.ConnectionStringSettingsCollection:Clear()end
---@param settings System.Configuration.ConnectionStringSettings
---@return System.Int32
function System.Configuration.ConnectionStringSettingsCollection:IndexOf(settings)end
---@overload fun(name:System.String):System.Void
---@param settings System.Configuration.ConnectionStringSettings
---@return System.Void
function System.Configuration.ConnectionStringSettingsCollection:Remove(settings)end
---@param index System.Int32
---@return System.Void
function System.Configuration.ConnectionStringSettingsCollection:RemoveAt(index)end
---@class System.Configuration.ConnectionStringsSection : System.Configuration.ConfigurationSection
---@field public ConnectionStrings System.Configuration.ConnectionStringSettingsCollection @  getter
System.Configuration.ConnectionStringsSection = {}
---@type System.Configuration.ConnectionStringsSection
CS.System.Configuration.ConnectionStringsSection = System.Configuration.ConnectionStringsSection

---@class System.Configuration.ContextInformation : System.Object
---@field public HostingContext System.Object @  getter
---@field public IsMachineLevel System.Boolean @  getter
System.Configuration.ContextInformation = {}
---@type System.Configuration.ContextInformation
CS.System.Configuration.ContextInformation = System.Configuration.ContextInformation

---@param sectionName System.String
---@return System.Object
function System.Configuration.ContextInformation:GetSection(sectionName)end
---@class System.Configuration.DefaultSection : System.Configuration.ConfigurationSection
System.Configuration.DefaultSection = {}
---@type System.Configuration.DefaultSection
CS.System.Configuration.DefaultSection = System.Configuration.DefaultSection

---@class System.Configuration.DefaultValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.DefaultValidator = {}
---@type System.Configuration.DefaultValidator
CS.System.Configuration.DefaultValidator = System.Configuration.DefaultValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.DefaultValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.DefaultValidator:Validate(value)end
---@class System.Configuration.DpapiProtectedConfigurationProvider : System.Configuration.ProtectedConfigurationProvider
---@field public UseMachineProtection System.Boolean @  getter
System.Configuration.DpapiProtectedConfigurationProvider = {}
---@type System.Configuration.DpapiProtectedConfigurationProvider
CS.System.Configuration.DpapiProtectedConfigurationProvider = System.Configuration.DpapiProtectedConfigurationProvider

---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.DpapiProtectedConfigurationProvider:Decrypt(encryptedNode)end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.DpapiProtectedConfigurationProvider:Encrypt(node)end
---@param name System.String
---@param configurationValues System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Configuration.DpapiProtectedConfigurationProvider:Initialize(name, configurationValues)end
---@class System.Configuration.ElementInformation : System.Object
---@field public Errors System.Collections.ICollection @  getter
---@field public IsCollection System.Boolean @  getter
---@field public IsLocked System.Boolean @  getter
---@field public IsPresent System.Boolean @  getter
---@field public LineNumber System.Int32 @  getter
---@field public Source System.String @  getter
---@field public Type System.Type @  getter
---@field public Validator System.Configuration.ConfigurationValidatorBase @  getter
---@field public Properties System.Configuration.PropertyInformationCollection @  getter
System.Configuration.ElementInformation = {}
---@type System.Configuration.ElementInformation
CS.System.Configuration.ElementInformation = System.Configuration.ElementInformation

---@class System.Configuration.ExeConfigurationFileMap : System.Configuration.ConfigurationFileMap
---@field public ExeConfigFilename System.String @ setter getter
---@field public LocalUserConfigFilename System.String @ setter getter
---@field public RoamingUserConfigFilename System.String @ setter getter
System.Configuration.ExeConfigurationFileMap = {}
---@type System.Configuration.ExeConfigurationFileMap
CS.System.Configuration.ExeConfigurationFileMap = System.Configuration.ExeConfigurationFileMap

---@return System.Object
function System.Configuration.ExeConfigurationFileMap:Clone()end
---@class System.Configuration.ExeContext : System.Object
---@field public ExePath System.String @  getter
---@field public UserLevel System.Configuration.ConfigurationUserLevel @  getter
System.Configuration.ExeContext = {}
---@type System.Configuration.ExeContext
CS.System.Configuration.ExeContext = System.Configuration.ExeContext

---@class System.Configuration.GenericEnumConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.GenericEnumConverter = {}
---@type System.Configuration.GenericEnumConverter
CS.System.Configuration.GenericEnumConverter = System.Configuration.GenericEnumConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.GenericEnumConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.GenericEnumConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.IgnoreSection : System.Configuration.ConfigurationSection
System.Configuration.IgnoreSection = {}
---@type System.Configuration.IgnoreSection
CS.System.Configuration.IgnoreSection = System.Configuration.IgnoreSection

---@class System.Configuration.InfiniteIntConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.InfiniteIntConverter = {}
---@type System.Configuration.InfiniteIntConverter
CS.System.Configuration.InfiniteIntConverter = System.Configuration.InfiniteIntConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.InfiniteIntConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.InfiniteIntConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.InfiniteTimeSpanConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.InfiniteTimeSpanConverter = {}
---@type System.Configuration.InfiniteTimeSpanConverter
CS.System.Configuration.InfiniteTimeSpanConverter = System.Configuration.InfiniteTimeSpanConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.InfiniteTimeSpanConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.InfiniteTimeSpanConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.IntegerValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.IntegerValidator = {}
---@type System.Configuration.IntegerValidator
CS.System.Configuration.IntegerValidator = System.Configuration.IntegerValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.IntegerValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.IntegerValidator:Validate(value)end
---@class System.Configuration.IntegerValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public ExcludeRange System.Boolean @ setter getter
---@field public MaxValue System.Int32 @ setter getter
---@field public MinValue System.Int32 @ setter getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.IntegerValidatorAttribute = {}
---@type System.Configuration.IntegerValidatorAttribute
CS.System.Configuration.IntegerValidatorAttribute = System.Configuration.IntegerValidatorAttribute

---@class System.Configuration.KeyValueConfigurationCollection : System.Configuration.ConfigurationElementCollection
---@field public AllKeys System.String[] @  getter
---@field public Item System.Configuration.KeyValueConfigurationElement @  getter
System.Configuration.KeyValueConfigurationCollection = {}
---@type System.Configuration.KeyValueConfigurationCollection
CS.System.Configuration.KeyValueConfigurationCollection = System.Configuration.KeyValueConfigurationCollection

---@overload fun(key:System.String, value:System.String):System.Void
---@param keyValue System.Configuration.KeyValueConfigurationElement
---@return System.Void
function System.Configuration.KeyValueConfigurationCollection:Add(keyValue)end
---@return System.Void
function System.Configuration.KeyValueConfigurationCollection:Clear()end
---@param key System.String
---@return System.Void
function System.Configuration.KeyValueConfigurationCollection:Remove(key)end
---@class System.Configuration.KeyValueConfigurationElement : System.Configuration.ConfigurationElement
---@field public Key System.String @  getter
---@field public Value System.String @ setter getter
System.Configuration.KeyValueConfigurationElement = {}
---@type System.Configuration.KeyValueConfigurationElement
CS.System.Configuration.KeyValueConfigurationElement = System.Configuration.KeyValueConfigurationElement

---@class System.Configuration.LongValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.LongValidator = {}
---@type System.Configuration.LongValidator
CS.System.Configuration.LongValidator = System.Configuration.LongValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.LongValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.LongValidator:Validate(value)end
---@class System.Configuration.LongValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public ExcludeRange System.Boolean @ setter getter
---@field public MaxValue System.Int64 @ setter getter
---@field public MinValue System.Int64 @ setter getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.LongValidatorAttribute = {}
---@type System.Configuration.LongValidatorAttribute
CS.System.Configuration.LongValidatorAttribute = System.Configuration.LongValidatorAttribute

---@class System.Configuration.NameValueConfigurationCollection : System.Configuration.ConfigurationElementCollection
---@field public AllKeys System.String[] @  getter
---@field public Item System.Configuration.NameValueConfigurationElement @ setter getter
System.Configuration.NameValueConfigurationCollection = {}
---@type System.Configuration.NameValueConfigurationCollection
CS.System.Configuration.NameValueConfigurationCollection = System.Configuration.NameValueConfigurationCollection

---@param nameValue System.Configuration.NameValueConfigurationElement
---@return System.Void
function System.Configuration.NameValueConfigurationCollection:Add(nameValue)end
---@return System.Void
function System.Configuration.NameValueConfigurationCollection:Clear()end
---@overload fun(name:System.String):System.Void
---@param nameValue System.Configuration.NameValueConfigurationElement
---@return System.Void
function System.Configuration.NameValueConfigurationCollection:Remove(nameValue)end
---@class System.Configuration.NameValueConfigurationElement : System.Configuration.ConfigurationElement
---@field public Name System.String @  getter
---@field public Value System.String @ setter getter
System.Configuration.NameValueConfigurationElement = {}
---@type System.Configuration.NameValueConfigurationElement
CS.System.Configuration.NameValueConfigurationElement = System.Configuration.NameValueConfigurationElement

---@class System.Configuration.PositiveTimeSpanValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.PositiveTimeSpanValidator = {}
---@type System.Configuration.PositiveTimeSpanValidator
CS.System.Configuration.PositiveTimeSpanValidator = System.Configuration.PositiveTimeSpanValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.PositiveTimeSpanValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.PositiveTimeSpanValidator:Validate(value)end
---@class System.Configuration.PositiveTimeSpanValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.PositiveTimeSpanValidatorAttribute = {}
---@type System.Configuration.PositiveTimeSpanValidatorAttribute
CS.System.Configuration.PositiveTimeSpanValidatorAttribute = System.Configuration.PositiveTimeSpanValidatorAttribute

---@class System.Configuration.PropertyInformation : System.Object
---@field public Converter System.ComponentModel.TypeConverter @  getter
---@field public DefaultValue System.Object @  getter
---@field public Description System.String @  getter
---@field public IsKey System.Boolean @  getter
---@field public IsLocked System.Boolean @ setter getter
---@field public IsModified System.Boolean @ setter getter
---@field public IsRequired System.Boolean @  getter
---@field public LineNumber System.Int32 @ setter getter
---@field public Name System.String @  getter
---@field public Source System.String @ setter getter
---@field public Type System.Type @  getter
---@field public Validator System.Configuration.ConfigurationValidatorBase @  getter
---@field public Value System.Object @ setter getter
---@field public ValueOrigin System.Configuration.PropertyValueOrigin @  getter
System.Configuration.PropertyInformation = {}
---@type System.Configuration.PropertyInformation
CS.System.Configuration.PropertyInformation = System.Configuration.PropertyInformation

---@class System.Configuration.PropertyInformationCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field public Item System.Configuration.PropertyInformation @  getter
System.Configuration.PropertyInformationCollection = {}
---@type System.Configuration.PropertyInformationCollection
CS.System.Configuration.PropertyInformationCollection = System.Configuration.PropertyInformationCollection

---@param array System.Configuration.PropertyInformation[]
---@param index System.Int32
---@return System.Void
function System.Configuration.PropertyInformationCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.PropertyInformationCollection:GetEnumerator()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Configuration.PropertyInformationCollection:GetObjectData(info, context)end
---@class System.Configuration.PropertyValueOrigin : System.Enum
System.Configuration.PropertyValueOrigin = {}
---@type System.Configuration.PropertyValueOrigin
CS.System.Configuration.PropertyValueOrigin = System.Configuration.PropertyValueOrigin

---@return System.Int32 value:0
System.Configuration.PropertyValueOrigin.Default = 0
---@return System.Int32 value:1
System.Configuration.PropertyValueOrigin.Inherited = 1
---@return System.Int32 value:2
System.Configuration.PropertyValueOrigin.SetHere = 2

---@class System.Configuration.ProtectedConfiguration : System.Object
---@field public DefaultProvider System.String @static  getter
---@field public Providers System.Configuration.ProtectedConfigurationProviderCollection @static  getter
---@field public DataProtectionProviderName System.String
---@field public ProtectedDataSectionName System.String
---@field public RsaProviderName System.String
System.Configuration.ProtectedConfiguration = {}
---@type System.Configuration.ProtectedConfiguration
CS.System.Configuration.ProtectedConfiguration = System.Configuration.ProtectedConfiguration

---@class System.Configuration.ProtectedConfigurationProvider : System.Configuration.Provider.ProviderBase
System.Configuration.ProtectedConfigurationProvider = {}
---@type System.Configuration.ProtectedConfigurationProvider
CS.System.Configuration.ProtectedConfigurationProvider = System.Configuration.ProtectedConfigurationProvider

---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ProtectedConfigurationProvider:Decrypt(encryptedNode)end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ProtectedConfigurationProvider:Encrypt(node)end
---@class System.Configuration.ProtectedConfigurationProviderCollection : System.Configuration.Provider.ProviderCollection
---@field public Item System.Configuration.ProtectedConfigurationProvider @  getter
System.Configuration.ProtectedConfigurationProviderCollection = {}
---@type System.Configuration.ProtectedConfigurationProviderCollection
CS.System.Configuration.ProtectedConfigurationProviderCollection = System.Configuration.ProtectedConfigurationProviderCollection

---@param provider System.Configuration.Provider.ProviderBase
---@return System.Void
function System.Configuration.ProtectedConfigurationProviderCollection:Add(provider)end
---@class System.Configuration.ProtectedConfigurationSection : System.Configuration.ConfigurationSection
---@field public DefaultProvider System.String @ setter getter
---@field public Providers System.Configuration.ProviderSettingsCollection @  getter
System.Configuration.ProtectedConfigurationSection = {}
---@type System.Configuration.ProtectedConfigurationSection
CS.System.Configuration.ProtectedConfigurationSection = System.Configuration.ProtectedConfigurationSection

---@class System.Configuration.ProtectedProviderSettings : System.Configuration.ConfigurationElement
---@field public Providers System.Configuration.ProviderSettingsCollection @  getter
System.Configuration.ProtectedProviderSettings = {}
---@type System.Configuration.ProtectedProviderSettings
CS.System.Configuration.ProtectedProviderSettings = System.Configuration.ProtectedProviderSettings

---@class System.Configuration.ProviderSettings : System.Configuration.ConfigurationElement
---@field public Name System.String @ setter getter
---@field public Type System.String @ setter getter
---@field public Parameters System.Collections.Specialized.NameValueCollection @  getter
System.Configuration.ProviderSettings = {}
---@type System.Configuration.ProviderSettings
CS.System.Configuration.ProviderSettings = System.Configuration.ProviderSettings

---@class System.Configuration.ProviderSettingsCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Configuration.ProviderSettings @ setter getter
---@field public Item System.Configuration.ProviderSettings @  getter
System.Configuration.ProviderSettingsCollection = {}
---@type System.Configuration.ProviderSettingsCollection
CS.System.Configuration.ProviderSettingsCollection = System.Configuration.ProviderSettingsCollection

---@param provider System.Configuration.ProviderSettings
---@return System.Void
function System.Configuration.ProviderSettingsCollection:Add(provider)end
---@return System.Void
function System.Configuration.ProviderSettingsCollection:Clear()end
---@param name System.String
---@return System.Void
function System.Configuration.ProviderSettingsCollection:Remove(name)end
---@class System.Configuration.RegexStringValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.RegexStringValidator = {}
---@type System.Configuration.RegexStringValidator
CS.System.Configuration.RegexStringValidator = System.Configuration.RegexStringValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.RegexStringValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.RegexStringValidator:Validate(value)end
---@class System.Configuration.RegexStringValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public Regex System.String @  getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.RegexStringValidatorAttribute = {}
---@type System.Configuration.RegexStringValidatorAttribute
CS.System.Configuration.RegexStringValidatorAttribute = System.Configuration.RegexStringValidatorAttribute

---@class System.Configuration.RsaProtectedConfigurationProvider : System.Configuration.ProtectedConfigurationProvider
---@field public CspProviderName System.String @  getter
---@field public KeyContainerName System.String @  getter
---@field public RsaPublicKey System.Security.Cryptography.RSAParameters @  getter
---@field public UseMachineContainer System.Boolean @  getter
---@field public UseOAEP System.Boolean @  getter
---@field public UseFIPS System.Boolean @  getter
System.Configuration.RsaProtectedConfigurationProvider = {}
---@type System.Configuration.RsaProtectedConfigurationProvider
CS.System.Configuration.RsaProtectedConfigurationProvider = System.Configuration.RsaProtectedConfigurationProvider

---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.RsaProtectedConfigurationProvider:Decrypt(encryptedNode)end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.RsaProtectedConfigurationProvider:Encrypt(node)end
---@param name System.String
---@param configurationValues System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Configuration.RsaProtectedConfigurationProvider:Initialize(name, configurationValues)end
---@param keySize System.Int32
---@param exportable System.Boolean
---@return System.Void
function System.Configuration.RsaProtectedConfigurationProvider:AddKey(keySize, exportable)end
---@return System.Void
function System.Configuration.RsaProtectedConfigurationProvider:DeleteKey()end
---@param xmlFileName System.String
---@param includePrivateParameters System.Boolean
---@return System.Void
function System.Configuration.RsaProtectedConfigurationProvider:ExportKey(xmlFileName, includePrivateParameters)end
---@param xmlFileName System.String
---@param exportable System.Boolean
---@return System.Void
function System.Configuration.RsaProtectedConfigurationProvider:ImportKey(xmlFileName, exportable)end
---@class System.Configuration.SectionInformation : System.Object
---@field public AllowDefinition System.Configuration.ConfigurationAllowDefinition @ setter getter
---@field public AllowExeDefinition System.Configuration.ConfigurationAllowExeDefinition @ setter getter
---@field public AllowLocation System.Boolean @ setter getter
---@field public AllowOverride System.Boolean @ setter getter
---@field public ConfigSource System.String @ setter getter
---@field public ForceSave System.Boolean @ setter getter
---@field public InheritInChildApplications System.Boolean @ setter getter
---@field public IsDeclarationRequired System.Boolean @  getter
---@field public IsDeclared System.Boolean @  getter
---@field public IsLocked System.Boolean @  getter
---@field public IsProtected System.Boolean @  getter
---@field public Name System.String @  getter
---@field public ProtectionProvider System.Configuration.ProtectedConfigurationProvider @  getter
---@field public RequirePermission System.Boolean @ setter getter
---@field public RestartOnExternalChanges System.Boolean @ setter getter
---@field public SectionName System.String @  getter
---@field public Type System.String @ setter getter
---@field public ConfigurationBuilder System.Configuration.ConfigurationBuilder @  getter
---@field public OverrideMode System.Configuration.OverrideMode @ setter getter
---@field public OverrideModeDefault System.Configuration.OverrideMode @ setter getter
---@field public OverrideModeEffective System.Configuration.OverrideMode @  getter
System.Configuration.SectionInformation = {}
---@type System.Configuration.SectionInformation
CS.System.Configuration.SectionInformation = System.Configuration.SectionInformation

---@return System.Configuration.ConfigurationSection
function System.Configuration.SectionInformation:GetParentSection()end
---@return System.String
function System.Configuration.SectionInformation:GetRawXml()end
---@param protectionProvider System.String
---@return System.Void
function System.Configuration.SectionInformation:ProtectSection(protectionProvider)end
---@overload fun(force:System.Boolean):System.Void
---@return System.Void
function System.Configuration.SectionInformation:ForceDeclaration()end
---@return System.Void
function System.Configuration.SectionInformation:RevertToParent()end
---@return System.Void
function System.Configuration.SectionInformation:UnprotectSection()end
---@param rawXml System.String
---@return System.Void
function System.Configuration.SectionInformation:SetRawXml(rawXml)end
---@class System.Configuration.StringValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.StringValidator = {}
---@type System.Configuration.StringValidator
CS.System.Configuration.StringValidator = System.Configuration.StringValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.StringValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.StringValidator:Validate(value)end
---@class System.Configuration.StringValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public InvalidCharacters System.String @ setter getter
---@field public MaxLength System.Int32 @ setter getter
---@field public MinLength System.Int32 @ setter getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.StringValidatorAttribute = {}
---@type System.Configuration.StringValidatorAttribute
CS.System.Configuration.StringValidatorAttribute = System.Configuration.StringValidatorAttribute

---@class System.Configuration.SubclassTypeValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.SubclassTypeValidator = {}
---@type System.Configuration.SubclassTypeValidator
CS.System.Configuration.SubclassTypeValidator = System.Configuration.SubclassTypeValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.SubclassTypeValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.SubclassTypeValidator:Validate(value)end
---@class System.Configuration.SubclassTypeValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public BaseClass System.Type @  getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
System.Configuration.SubclassTypeValidatorAttribute = {}
---@type System.Configuration.SubclassTypeValidatorAttribute
CS.System.Configuration.SubclassTypeValidatorAttribute = System.Configuration.SubclassTypeValidatorAttribute

---@class System.Configuration.TimeSpanMinutesConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TimeSpanMinutesConverter = {}
---@type System.Configuration.TimeSpanMinutesConverter
CS.System.Configuration.TimeSpanMinutesConverter = System.Configuration.TimeSpanMinutesConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanMinutesConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanMinutesConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.TimeSpanMinutesOrInfiniteConverter : System.Configuration.TimeSpanMinutesConverter
System.Configuration.TimeSpanMinutesOrInfiniteConverter = {}
---@type System.Configuration.TimeSpanMinutesOrInfiniteConverter
CS.System.Configuration.TimeSpanMinutesOrInfiniteConverter = System.Configuration.TimeSpanMinutesOrInfiniteConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanMinutesOrInfiniteConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanMinutesOrInfiniteConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.TimeSpanSecondsConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TimeSpanSecondsConverter = {}
---@type System.Configuration.TimeSpanSecondsConverter
CS.System.Configuration.TimeSpanSecondsConverter = System.Configuration.TimeSpanSecondsConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanSecondsConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanSecondsConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.TimeSpanSecondsOrInfiniteConverter : System.Configuration.TimeSpanSecondsConverter
System.Configuration.TimeSpanSecondsOrInfiniteConverter = {}
---@type System.Configuration.TimeSpanSecondsOrInfiniteConverter
CS.System.Configuration.TimeSpanSecondsOrInfiniteConverter = System.Configuration.TimeSpanSecondsOrInfiniteConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanSecondsOrInfiniteConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanSecondsOrInfiniteConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.TimeSpanValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.TimeSpanValidator = {}
---@type System.Configuration.TimeSpanValidator
CS.System.Configuration.TimeSpanValidator = System.Configuration.TimeSpanValidator

---@param type System.Type
---@return System.Boolean
function System.Configuration.TimeSpanValidator:CanValidate(type)end
---@param value System.Object
---@return System.Void
function System.Configuration.TimeSpanValidator:Validate(value)end
---@class System.Configuration.TimeSpanValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field public MaxValueString System.String @ setter getter
---@field public MinValueString System.String @ setter getter
---@field public MaxValue System.TimeSpan @  getter
---@field public MinValue System.TimeSpan @  getter
---@field public ExcludeRange System.Boolean @ setter getter
---@field public ValidatorInstance System.Configuration.ConfigurationValidatorBase @  getter
---@field public TimeSpanMaxValue System.String
---@field public TimeSpanMinValue System.String
System.Configuration.TimeSpanValidatorAttribute = {}
---@type System.Configuration.TimeSpanValidatorAttribute
CS.System.Configuration.TimeSpanValidatorAttribute = System.Configuration.TimeSpanValidatorAttribute

---@class System.Configuration.TypeNameConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TypeNameConverter = {}
---@type System.Configuration.TypeNameConverter
CS.System.Configuration.TypeNameConverter = System.Configuration.TypeNameConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TypeNameConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TypeNameConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.WhiteSpaceTrimStringConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.WhiteSpaceTrimStringConverter = {}
---@type System.Configuration.WhiteSpaceTrimStringConverter
CS.System.Configuration.WhiteSpaceTrimStringConverter = System.Configuration.WhiteSpaceTrimStringConverter

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.WhiteSpaceTrimStringConverter:ConvertFrom(ctx, ci, data)end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.WhiteSpaceTrimStringConverter:ConvertTo(ctx, ci, value, type)end
---@class System.Configuration.ConfigurationBuilder : System.Configuration.Provider.ProviderBase
System.Configuration.ConfigurationBuilder = {}
---@type System.Configuration.ConfigurationBuilder
CS.System.Configuration.ConfigurationBuilder = System.Configuration.ConfigurationBuilder

---@param configSection System.Configuration.ConfigurationSection
---@return System.Configuration.ConfigurationSection
function System.Configuration.ConfigurationBuilder:ProcessConfigurationSection(configSection)end
---@param rawXml System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ConfigurationBuilder:ProcessRawXml(rawXml)end
---@class System.Configuration.OverrideMode : System.Enum
System.Configuration.OverrideMode = {}
---@type System.Configuration.OverrideMode
CS.System.Configuration.OverrideMode = System.Configuration.OverrideMode

---@return System.Int32 value:0
System.Configuration.OverrideMode.Inherit = 0
---@return System.Int32 value:1
System.Configuration.OverrideMode.Allow = 1
---@return System.Int32 value:2
System.Configuration.OverrideMode.Deny = 2

---@class System.Configuration.ConfigurationBuilderCollection : System.Configuration.Provider.ProviderCollection
System.Configuration.ConfigurationBuilderCollection = {}
---@type System.Configuration.ConfigurationBuilderCollection
CS.System.Configuration.ConfigurationBuilderCollection = System.Configuration.ConfigurationBuilderCollection

---@class System.Configuration.ConfigurationBuilderSettings : System.Configuration.ConfigurationElement
---@field public Builders System.Configuration.ProviderSettingsCollection @  getter
System.Configuration.ConfigurationBuilderSettings = {}
---@type System.Configuration.ConfigurationBuilderSettings
CS.System.Configuration.ConfigurationBuilderSettings = System.Configuration.ConfigurationBuilderSettings

---@class System.Configuration.ConfigurationBuildersSection : System.Configuration.ConfigurationSection
---@field public Builders System.Configuration.ProviderSettingsCollection @  getter
System.Configuration.ConfigurationBuildersSection = {}
---@type System.Configuration.ConfigurationBuildersSection
CS.System.Configuration.ConfigurationBuildersSection = System.Configuration.ConfigurationBuildersSection

---@param builderName System.String
---@return System.Configuration.ConfigurationBuilder
function System.Configuration.ConfigurationBuildersSection:GetBuilderFromName(builderName)end
