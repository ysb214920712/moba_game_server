---@class System.Xml.ConformanceLevel : System.Enum
System.Xml.ConformanceLevel = {}
---@type System.Xml.ConformanceLevel
CS.System.Xml.ConformanceLevel = System.Xml.ConformanceLevel

---@return System.Int32 value:0
System.Xml.ConformanceLevel.Auto = 0
---@return System.Int32 value:1
System.Xml.ConformanceLevel.Fragment = 1
---@return System.Int32 value:2
System.Xml.ConformanceLevel.Document = 2

---@class System.Xml.DtdProcessing : System.Enum
System.Xml.DtdProcessing = {}
---@type System.Xml.DtdProcessing
CS.System.Xml.DtdProcessing = System.Xml.DtdProcessing

---@return System.Int32 value:0
System.Xml.DtdProcessing.Prohibit = 0
---@return System.Int32 value:1
System.Xml.DtdProcessing.Ignore = 1
---@return System.Int32 value:2
System.Xml.DtdProcessing.Parse = 2

---@class System.Xml.EntityHandling : System.Enum
System.Xml.EntityHandling = {}
---@type System.Xml.EntityHandling
CS.System.Xml.EntityHandling = System.Xml.EntityHandling

---@return System.Int32 value:1
System.Xml.EntityHandling.ExpandEntities = 1

---@class System.Xml.NamespaceHandling : System.Enum
System.Xml.NamespaceHandling = {}
---@type System.Xml.NamespaceHandling
CS.System.Xml.NamespaceHandling = System.Xml.NamespaceHandling

---@return System.Int32 value:0
System.Xml.NamespaceHandling.Default = 0
---@return System.Int32 value:1
System.Xml.NamespaceHandling.OmitDuplicates = 1

---@class System.Xml.NewLineHandling : System.Enum
System.Xml.NewLineHandling = {}
---@type System.Xml.NewLineHandling
CS.System.Xml.NewLineHandling = System.Xml.NewLineHandling

---@return System.Int32 value:0
System.Xml.NewLineHandling.Replace = 0
---@return System.Int32 value:1
System.Xml.NewLineHandling.Entitize = 1
---@return System.Int32 value:2
System.Xml.NewLineHandling.None = 2

---@class System.Xml.ReadState : System.Enum
System.Xml.ReadState = {}
---@type System.Xml.ReadState
CS.System.Xml.ReadState = System.Xml.ReadState

---@return System.Int32 value:0
System.Xml.ReadState.Initial = 0
---@return System.Int32 value:1
System.Xml.ReadState.Interactive = 1
---@return System.Int32 value:2
System.Xml.ReadState.Error = 2
---@return System.Int32 value:3
System.Xml.ReadState.EndOfFile = 3
---@return System.Int32 value:4
System.Xml.ReadState.Closed = 4

---@class System.Xml.ValidationType : System.Enum
System.Xml.ValidationType = {}
---@type System.Xml.ValidationType
CS.System.Xml.ValidationType = System.Xml.ValidationType

---@return System.Int32 value:0
System.Xml.ValidationType.None = 0
---@return System.Int32 value:1
System.Xml.ValidationType.Auto = 1
---@return System.Int32 value:2
System.Xml.ValidationType.DTD = 2
---@return System.Int32 value:3
System.Xml.ValidationType.XDR = 3
---@return System.Int32 value:4
System.Xml.ValidationType.Schema = 4

---@class System.Xml.WhitespaceHandling : System.Enum
System.Xml.WhitespaceHandling = {}
---@type System.Xml.WhitespaceHandling
CS.System.Xml.WhitespaceHandling = System.Xml.WhitespaceHandling

---@return System.Int32 value:0
System.Xml.WhitespaceHandling.All = 0
---@return System.Int32 value:1
System.Xml.WhitespaceHandling.Significant = 1
---@return System.Int32 value:2
System.Xml.WhitespaceHandling.None = 2

---@class System.Xml.XmlParserContext : System.Object
---@field public NameTable System.Xml.XmlNameTable @ setter getter
---@field public NamespaceManager System.Xml.XmlNamespaceManager @ setter getter
---@field public DocTypeName System.String @ setter getter
---@field public PublicId System.String @ setter getter
---@field public SystemId System.String @ setter getter
---@field public BaseURI System.String @ setter getter
---@field public InternalSubset System.String @ setter getter
---@field public XmlLang System.String @ setter getter
---@field public XmlSpace System.Xml.XmlSpace @ setter getter
---@field public Encoding System.Text.Encoding @ setter getter
System.Xml.XmlParserContext = {}
---@type System.Xml.XmlParserContext
CS.System.Xml.XmlParserContext = System.Xml.XmlParserContext

---@class System.Xml.XmlReader : System.Object
---@field public Settings System.Xml.XmlReaderSettings @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @  getter
---@field public HasValue System.Boolean @  getter
---@field public Value System.String @  getter
---@field public Depth System.Int32 @  getter
---@field public BaseURI System.String @  getter
---@field public IsEmptyElement System.Boolean @  getter
---@field public IsDefault System.Boolean @  getter
---@field public QuoteChar System.Char @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public ValueType System.Type @  getter
---@field public AttributeCount System.Int32 @  getter
---@field public Item System.String @  getter
---@field public Item System.String @  getter
---@field public Item System.String @  getter
---@field public EOF System.Boolean @  getter
---@field public ReadState System.Xml.ReadState @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public CanResolveEntity System.Boolean @  getter
---@field public CanReadBinaryContent System.Boolean @  getter
---@field public CanReadValueChunk System.Boolean @  getter
---@field public HasAttributes System.Boolean @  getter
System.Xml.XmlReader = {}
---@type System.Xml.XmlReader
CS.System.Xml.XmlReader = System.Xml.XmlReader

---@return System.Object
function System.Xml.XmlReader:ReadContentAsObject()end
---@return System.Boolean
function System.Xml.XmlReader:ReadContentAsBoolean()end
---@return System.DateTime
function System.Xml.XmlReader:ReadContentAsDateTime()end
---@return System.DateTimeOffset
function System.Xml.XmlReader:ReadContentAsDateTimeOffset()end
---@return System.Double
function System.Xml.XmlReader:ReadContentAsDouble()end
---@return System.Single
function System.Xml.XmlReader:ReadContentAsFloat()end
---@return System.Decimal
function System.Xml.XmlReader:ReadContentAsDecimal()end
---@return System.Int32
function System.Xml.XmlReader:ReadContentAsInt()end
---@return System.Int64
function System.Xml.XmlReader:ReadContentAsLong()end
---@return System.String
function System.Xml.XmlReader:ReadContentAsString()end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlReader:ReadContentAs(returnType, namespaceResolver)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Object
---@return System.Object
function System.Xml.XmlReader:ReadElementContentAsObject()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@return System.Boolean
function System.Xml.XmlReader:ReadElementContentAsBoolean()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.DateTime
---@return System.DateTime
function System.Xml.XmlReader:ReadElementContentAsDateTime()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Double
---@return System.Double
function System.Xml.XmlReader:ReadElementContentAsDouble()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Single
---@return System.Single
function System.Xml.XmlReader:ReadElementContentAsFloat()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Decimal
---@return System.Decimal
function System.Xml.XmlReader:ReadElementContentAsDecimal()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadElementContentAsInt()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Int64
---@return System.Int64
function System.Xml.XmlReader:ReadElementContentAsLong()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.String
---@return System.String
function System.Xml.XmlReader:ReadElementContentAsString()end
---@overload fun(returnType:System.Type, namespaceResolver:System.Xml.IXmlNamespaceResolver, localName:System.String, namespaceURI:System.String):System.Object
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlReader:ReadElementContentAs(returnType, namespaceResolver)end
---@overload fun(name:System.String):System.String
---@overload fun(name:System.String, namespaceURI:System.String):System.String
---@param i System.Int32
---@return System.String
function System.Xml.XmlReader:GetAttribute(i)end
---@overload fun(name:System.String):System.Boolean
---@overload fun(name:System.String, ns:System.String):System.Boolean
---@param i System.Int32
---@return System.Void
function System.Xml.XmlReader:MoveToAttribute(i)end
---@return System.Boolean
function System.Xml.XmlReader:MoveToFirstAttribute()end
---@return System.Boolean
function System.Xml.XmlReader:MoveToNextAttribute()end
---@return System.Boolean
function System.Xml.XmlReader:MoveToElement()end
---@return System.Boolean
function System.Xml.XmlReader:ReadAttributeValue()end
---@return System.Boolean
function System.Xml.XmlReader:Read()end
---@return System.Void
function System.Xml.XmlReader:Close()end
---@return System.Void
function System.Xml.XmlReader:Skip()end
---@param prefix System.String
---@return System.String
function System.Xml.XmlReader:LookupNamespace(prefix)end
---@return System.Void
function System.Xml.XmlReader:ResolveEntity()end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadElementContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadContentAsBinHex(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadElementContentAsBinHex(buffer, index, count)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlReader:ReadValueChunk(buffer, index, count)end
---@return System.String
function System.Xml.XmlReader:ReadString()end
---@return System.Xml.XmlNodeType
function System.Xml.XmlReader:MoveToContent()end
---@overload fun(name:System.String):System.Void
---@overload fun(localname:System.String, ns:System.String):System.Void
---@return System.Void
function System.Xml.XmlReader:ReadStartElement()end
---@overload fun(name:System.String):System.String
---@overload fun(localname:System.String, ns:System.String):System.String
---@return System.String
function System.Xml.XmlReader:ReadElementString()end
---@return System.Void
function System.Xml.XmlReader:ReadEndElement()end
---@overload fun(name:System.String):System.Boolean
---@overload fun(localname:System.String, ns:System.String):System.Boolean
---@return System.Boolean
function System.Xml.XmlReader:IsStartElement()end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param name System.String
---@return System.Boolean
function System.Xml.XmlReader:ReadToFollowing(name)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param name System.String
---@return System.Boolean
function System.Xml.XmlReader:ReadToDescendant(name)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param name System.String
---@return System.Boolean
function System.Xml.XmlReader:ReadToNextSibling(name)end
---@param str System.String
---@return System.Boolean
function System.Xml.XmlReader.IsName(str)end
---@param str System.String
---@return System.Boolean
function System.Xml.XmlReader.IsNameToken(str)end
---@return System.String
function System.Xml.XmlReader:ReadInnerXml()end
---@return System.String
function System.Xml.XmlReader:ReadOuterXml()end
---@return System.Xml.XmlReader
function System.Xml.XmlReader:ReadSubtree()end
---@return System.Void
function System.Xml.XmlReader:Dispose()end
---@overload fun(input:System.IO.Stream):System.Xml.XmlReader
---@overload fun(input:System.IO.TextReader):System.Xml.XmlReader
---@overload fun(inputUri:System.String, settings:System.Xml.XmlReaderSettings):System.Xml.XmlReader
---@overload fun(input:System.IO.Stream, settings:System.Xml.XmlReaderSettings):System.Xml.XmlReader
---@overload fun(input:System.IO.TextReader, settings:System.Xml.XmlReaderSettings):System.Xml.XmlReader
---@overload fun(reader:System.Xml.XmlReader, settings:System.Xml.XmlReaderSettings):System.Xml.XmlReader
---@overload fun(inputUri:System.String, settings:System.Xml.XmlReaderSettings, inputContext:System.Xml.XmlParserContext):System.Xml.XmlReader
---@overload fun(input:System.IO.Stream, settings:System.Xml.XmlReaderSettings, baseUri:System.String):System.Xml.XmlReader
---@overload fun(input:System.IO.Stream, settings:System.Xml.XmlReaderSettings, inputContext:System.Xml.XmlParserContext):System.Xml.XmlReader
---@overload fun(input:System.IO.TextReader, settings:System.Xml.XmlReaderSettings, baseUri:System.String):System.Xml.XmlReader
---@overload fun(input:System.IO.TextReader, settings:System.Xml.XmlReaderSettings, inputContext:System.Xml.XmlParserContext):System.Xml.XmlReader
---@param inputUri System.String
---@return System.Xml.XmlReader
function System.Xml.XmlReader.Create(inputUri)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:GetValueAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsObjectAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsStringAsync()end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsAsync(returnType, namespaceResolver)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsObjectAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsStringAsync()end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsAsync(returnType, namespaceResolver)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:SkipAsync()end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsBase64Async(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsBase64Async(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsBinHexAsync(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsBinHexAsync(buffer, index, count)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadValueChunkAsync(buffer, index, count)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:MoveToContentAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadInnerXmlAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadOuterXmlAsync()end
---@class System.Xml.XmlReaderSettings : System.Object
---@field public Async System.Boolean @ setter getter
---@field public NameTable System.Xml.XmlNameTable @ setter getter
---@field public XmlResolver System.Xml.XmlResolver @ setter 
---@field public LineNumberOffset System.Int32 @ setter getter
---@field public LinePositionOffset System.Int32 @ setter getter
---@field public ConformanceLevel System.Xml.ConformanceLevel @ setter getter
---@field public CheckCharacters System.Boolean @ setter getter
---@field public MaxCharactersInDocument System.Int64 @ setter getter
---@field public MaxCharactersFromEntities System.Int64 @ setter getter
---@field public IgnoreWhitespace System.Boolean @ setter getter
---@field public IgnoreProcessingInstructions System.Boolean @ setter getter
---@field public IgnoreComments System.Boolean @ setter getter
---@field public ProhibitDtd System.Boolean @ setter getter
---@field public DtdProcessing System.Xml.DtdProcessing @ setter getter
---@field public CloseInput System.Boolean @ setter getter
---@field public ValidationType System.Xml.ValidationType @ setter getter
---@field public ValidationFlags System.Xml.Schema.XmlSchemaValidationFlags @ setter getter
---@field public Schemas System.Xml.Schema.XmlSchemaSet @ setter getter
System.Xml.XmlReaderSettings = {}
---@type System.Xml.XmlReaderSettings
CS.System.Xml.XmlReaderSettings = System.Xml.XmlReaderSettings

---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.XmlReaderSettings:add_ValidationEventHandler(value)end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.XmlReaderSettings:remove_ValidationEventHandler(value)end
---@return System.Void
function System.Xml.XmlReaderSettings:Reset()end
---@return System.Xml.XmlReaderSettings
function System.Xml.XmlReaderSettings:Clone()end
---@class System.Xml.XmlSpace : System.Enum
System.Xml.XmlSpace = {}
---@type System.Xml.XmlSpace
CS.System.Xml.XmlSpace = System.Xml.XmlSpace

---@return System.Int32 value:0
System.Xml.XmlSpace.None = 0
---@return System.Int32 value:1
System.Xml.XmlSpace.Default = 1
---@return System.Int32 value:2
System.Xml.XmlSpace.Preserve = 2

---@class System.Xml.XmlTextReader : System.Xml.XmlReader
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @  getter
---@field public HasValue System.Boolean @  getter
---@field public Value System.String @  getter
---@field public Depth System.Int32 @  getter
---@field public BaseURI System.String @  getter
---@field public IsEmptyElement System.Boolean @  getter
---@field public IsDefault System.Boolean @  getter
---@field public QuoteChar System.Char @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
---@field public AttributeCount System.Int32 @  getter
---@field public EOF System.Boolean @  getter
---@field public ReadState System.Xml.ReadState @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public CanResolveEntity System.Boolean @  getter
---@field public CanReadBinaryContent System.Boolean @  getter
---@field public CanReadValueChunk System.Boolean @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public Namespaces System.Boolean @ setter getter
---@field public Normalization System.Boolean @ setter getter
---@field public Encoding System.Text.Encoding @  getter
---@field public WhitespaceHandling System.Xml.WhitespaceHandling @ setter getter
---@field public ProhibitDtd System.Boolean @ setter getter
---@field public DtdProcessing System.Xml.DtdProcessing @ setter getter
---@field public EntityHandling System.Xml.EntityHandling @ setter getter
---@field public XmlResolver System.Xml.XmlResolver @ setter 
System.Xml.XmlTextReader = {}
---@type System.Xml.XmlTextReader
CS.System.Xml.XmlTextReader = System.Xml.XmlTextReader

---@overload fun(name:System.String):System.String
---@overload fun(localName:System.String, namespaceURI:System.String):System.String
---@param i System.Int32
---@return System.String
function System.Xml.XmlTextReader:GetAttribute(i)end
---@overload fun(name:System.String):System.Boolean
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param i System.Int32
---@return System.Void
function System.Xml.XmlTextReader:MoveToAttribute(i)end
---@return System.Boolean
function System.Xml.XmlTextReader:MoveToFirstAttribute()end
---@return System.Boolean
function System.Xml.XmlTextReader:MoveToNextAttribute()end
---@return System.Boolean
function System.Xml.XmlTextReader:MoveToElement()end
---@return System.Boolean
function System.Xml.XmlTextReader:ReadAttributeValue()end
---@return System.Boolean
function System.Xml.XmlTextReader:Read()end
---@return System.Void
function System.Xml.XmlTextReader:Close()end
---@return System.Void
function System.Xml.XmlTextReader:Skip()end
---@param prefix System.String
---@return System.String
function System.Xml.XmlTextReader:LookupNamespace(prefix)end
---@return System.Void
function System.Xml.XmlTextReader:ResolveEntity()end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadElementContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadContentAsBinHex(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadElementContentAsBinHex(buffer, index, count)end
---@return System.String
function System.Xml.XmlTextReader:ReadString()end
---@return System.Boolean
function System.Xml.XmlTextReader:HasLineInfo()end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XmlTextReader:GetNamespacesInScope(scope)end
---@return System.Void
function System.Xml.XmlTextReader:ResetState()end
---@return System.IO.TextReader
function System.Xml.XmlTextReader:GetRemainder()end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadChars(buffer, index, count)end
---@param array System.Byte[]
---@param offset System.Int32
---@param len System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadBase64(array, offset, len)end
---@param array System.Byte[]
---@param offset System.Int32
---@param len System.Int32
---@return System.Int32
function System.Xml.XmlTextReader:ReadBinHex(array, offset, len)end
---@class System.Xml.Formatting : System.Enum
System.Xml.Formatting = {}
---@type System.Xml.Formatting
CS.System.Xml.Formatting = System.Xml.Formatting

---@return System.Int32 value:0
System.Xml.Formatting.None = 0
---@return System.Int32 value:1
System.Xml.Formatting.Indented = 1

---@class System.Xml.XmlTextWriter : System.Xml.XmlWriter
---@field public BaseStream System.IO.Stream @  getter
---@field public Namespaces System.Boolean @ setter getter
---@field public Formatting System.Xml.Formatting @ setter getter
---@field public Indentation System.Int32 @ setter getter
---@field public IndentChar System.Char @ setter getter
---@field public QuoteChar System.Char @ setter getter
---@field public WriteState System.Xml.WriteState @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
System.Xml.XmlTextWriter = {}
---@type System.Xml.XmlTextWriter
CS.System.Xml.XmlTextWriter = System.Xml.XmlTextWriter

---@overload fun(standalone:System.Boolean):System.Void
---@return System.Void
function System.Xml.XmlTextWriter:WriteStartDocument()end
---@return System.Void
function System.Xml.XmlTextWriter:WriteEndDocument()end
---@param name System.String
---@param pubid System.String
---@param sysid System.String
---@param subset System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteDocType(name, pubid, sysid, subset)end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteStartElement(prefix, localName, ns)end
---@return System.Void
function System.Xml.XmlTextWriter:WriteEndElement()end
---@return System.Void
function System.Xml.XmlTextWriter:WriteFullEndElement()end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteStartAttribute(prefix, localName, ns)end
---@return System.Void
function System.Xml.XmlTextWriter:WriteEndAttribute()end
---@param text System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteCData(text)end
---@param text System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteComment(text)end
---@param name System.String
---@param text System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteProcessingInstruction(name, text)end
---@param name System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteEntityRef(name)end
---@param ch System.Char
---@return System.Void
function System.Xml.XmlTextWriter:WriteCharEntity(ch)end
---@param ws System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteWhitespace(ws)end
---@param text System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteString(text)end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Void
function System.Xml.XmlTextWriter:WriteSurrogateCharEntity(lowChar, highChar)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlTextWriter:WriteChars(buffer, index, count)end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param data System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteRaw(data)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlTextWriter:WriteBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlTextWriter:WriteBinHex(buffer, index, count)end
---@return System.Void
function System.Xml.XmlTextWriter:Close()end
---@return System.Void
function System.Xml.XmlTextWriter:Flush()end
---@param name System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteName(name)end
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteQualifiedName(localName, ns)end
---@param ns System.String
---@return System.String
function System.Xml.XmlTextWriter:LookupPrefix(ns)end
---@param name System.String
---@return System.Void
function System.Xml.XmlTextWriter:WriteNmToken(name)end
---@class System.Xml.XmlValidatingReader : System.Xml.XmlReader
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @  getter
---@field public HasValue System.Boolean @  getter
---@field public Value System.String @  getter
---@field public Depth System.Int32 @  getter
---@field public BaseURI System.String @  getter
---@field public IsEmptyElement System.Boolean @  getter
---@field public IsDefault System.Boolean @  getter
---@field public QuoteChar System.Char @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
---@field public AttributeCount System.Int32 @  getter
---@field public EOF System.Boolean @  getter
---@field public ReadState System.Xml.ReadState @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public CanResolveEntity System.Boolean @  getter
---@field public CanReadBinaryContent System.Boolean @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public SchemaType System.Object @  getter
---@field public Reader System.Xml.XmlReader @  getter
---@field public ValidationType System.Xml.ValidationType @ setter getter
---@field public Schemas System.Xml.Schema.XmlSchemaCollection @  getter
---@field public EntityHandling System.Xml.EntityHandling @ setter getter
---@field public XmlResolver System.Xml.XmlResolver @ setter 
---@field public Namespaces System.Boolean @ setter getter
---@field public Encoding System.Text.Encoding @  getter
System.Xml.XmlValidatingReader = {}
---@type System.Xml.XmlValidatingReader
CS.System.Xml.XmlValidatingReader = System.Xml.XmlValidatingReader

---@overload fun(name:System.String):System.String
---@overload fun(localName:System.String, namespaceURI:System.String):System.String
---@param i System.Int32
---@return System.String
function System.Xml.XmlValidatingReader:GetAttribute(i)end
---@overload fun(name:System.String):System.Boolean
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param i System.Int32
---@return System.Void
function System.Xml.XmlValidatingReader:MoveToAttribute(i)end
---@return System.Boolean
function System.Xml.XmlValidatingReader:MoveToFirstAttribute()end
---@return System.Boolean
function System.Xml.XmlValidatingReader:MoveToNextAttribute()end
---@return System.Boolean
function System.Xml.XmlValidatingReader:MoveToElement()end
---@return System.Boolean
function System.Xml.XmlValidatingReader:ReadAttributeValue()end
---@return System.Boolean
function System.Xml.XmlValidatingReader:Read()end
---@return System.Void
function System.Xml.XmlValidatingReader:Close()end
---@param prefix System.String
---@return System.String
function System.Xml.XmlValidatingReader:LookupNamespace(prefix)end
---@return System.Void
function System.Xml.XmlValidatingReader:ResolveEntity()end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlValidatingReader:ReadContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlValidatingReader:ReadElementContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlValidatingReader:ReadContentAsBinHex(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlValidatingReader:ReadElementContentAsBinHex(buffer, index, count)end
---@return System.String
function System.Xml.XmlValidatingReader:ReadString()end
---@return System.Boolean
function System.Xml.XmlValidatingReader:HasLineInfo()end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.XmlValidatingReader:add_ValidationEventHandler(value)end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.XmlValidatingReader:remove_ValidationEventHandler(value)end
---@return System.Object
function System.Xml.XmlValidatingReader:ReadTypedValue()end
---@class System.Xml.WriteState : System.Enum
System.Xml.WriteState = {}
---@type System.Xml.WriteState
CS.System.Xml.WriteState = System.Xml.WriteState

---@return System.Int32 value:0
System.Xml.WriteState.Start = 0
---@return System.Int32 value:1
System.Xml.WriteState.Prolog = 1
---@return System.Int32 value:2
System.Xml.WriteState.Element = 2
---@return System.Int32 value:3
System.Xml.WriteState.Attribute = 3
---@return System.Int32 value:4
System.Xml.WriteState.Content = 4
---@return System.Int32 value:5
System.Xml.WriteState.Closed = 5
---@return System.Int32 value:6
System.Xml.WriteState.Error = 6

---@class System.Xml.XmlWriter : System.Object
---@field public Settings System.Xml.XmlWriterSettings @  getter
---@field public WriteState System.Xml.WriteState @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
System.Xml.XmlWriter = {}
---@type System.Xml.XmlWriter
CS.System.Xml.XmlWriter = System.Xml.XmlWriter

---@overload fun(standalone:System.Boolean):System.Void
---@return System.Void
function System.Xml.XmlWriter:WriteStartDocument()end
---@return System.Void
function System.Xml.XmlWriter:WriteEndDocument()end
---@param name System.String
---@param pubid System.String
---@param sysid System.String
---@param subset System.String
---@return System.Void
function System.Xml.XmlWriter:WriteDocType(name, pubid, sysid, subset)end
---@overload fun(localName:System.String, ns:System.String):System.Void
---@overload fun(prefix:System.String, localName:System.String, ns:System.String):System.Void
---@param localName System.String
---@return System.Void
function System.Xml.XmlWriter:WriteStartElement(localName)end
---@return System.Void
function System.Xml.XmlWriter:WriteEndElement()end
---@return System.Void
function System.Xml.XmlWriter:WriteFullEndElement()end
---@overload fun(localName:System.String, ns:System.String, value:System.String):System.Void
---@overload fun(prefix:System.String, localName:System.String, ns:System.String, value:System.String):System.Void
---@param localName System.String
---@param value System.String
---@return System.Void
function System.Xml.XmlWriter:WriteAttributeString(localName, value)end
---@overload fun(localName:System.String, ns:System.String):System.Void
---@overload fun(prefix:System.String, localName:System.String, ns:System.String):System.Void
---@param localName System.String
---@return System.Void
function System.Xml.XmlWriter:WriteStartAttribute(localName)end
---@return System.Void
function System.Xml.XmlWriter:WriteEndAttribute()end
---@param text System.String
---@return System.Void
function System.Xml.XmlWriter:WriteCData(text)end
---@param text System.String
---@return System.Void
function System.Xml.XmlWriter:WriteComment(text)end
---@param name System.String
---@param text System.String
---@return System.Void
function System.Xml.XmlWriter:WriteProcessingInstruction(name, text)end
---@param name System.String
---@return System.Void
function System.Xml.XmlWriter:WriteEntityRef(name)end
---@param ch System.Char
---@return System.Void
function System.Xml.XmlWriter:WriteCharEntity(ch)end
---@param ws System.String
---@return System.Void
function System.Xml.XmlWriter:WriteWhitespace(ws)end
---@param text System.String
---@return System.Void
function System.Xml.XmlWriter:WriteString(text)end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Void
function System.Xml.XmlWriter:WriteSurrogateCharEntity(lowChar, highChar)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlWriter:WriteChars(buffer, index, count)end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param data System.String
---@return System.Void
function System.Xml.XmlWriter:WriteRaw(data)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlWriter:WriteBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlWriter:WriteBinHex(buffer, index, count)end
---@return System.Void
function System.Xml.XmlWriter:Close()end
---@return System.Void
function System.Xml.XmlWriter:Flush()end
---@param ns System.String
---@return System.String
function System.Xml.XmlWriter:LookupPrefix(ns)end
---@param name System.String
---@return System.Void
function System.Xml.XmlWriter:WriteNmToken(name)end
---@param name System.String
---@return System.Void
function System.Xml.XmlWriter:WriteName(name)end
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.XmlWriter:WriteQualifiedName(localName, ns)end
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(value:System.String):System.Void
---@overload fun(value:System.DateTime):System.Void
---@overload fun(value:System.DateTimeOffset):System.Void
---@overload fun(value:System.Decimal):System.Void
---@param value System.Boolean
---@return System.Void
function System.Xml.XmlWriter:WriteValue(value)end
---@param reader System.Xml.XmlReader
---@param defattr System.Boolean
---@return System.Void
function System.Xml.XmlWriter:WriteAttributes(reader, defattr)end
---@overload fun(navigator:System.Xml.XPath.XPathNavigator, defattr:System.Boolean):System.Void
---@param reader System.Xml.XmlReader
---@param defattr System.Boolean
---@return System.Void
function System.Xml.XmlWriter:WriteNode(reader, defattr)end
---@overload fun(localName:System.String, ns:System.String, value:System.String):System.Void
---@overload fun(prefix:System.String, localName:System.String, ns:System.String, value:System.String):System.Void
---@param localName System.String
---@param value System.String
---@return System.Void
function System.Xml.XmlWriter:WriteElementString(localName, value)end
---@return System.Void
function System.Xml.XmlWriter:Dispose()end
---@overload fun(output:System.IO.Stream):System.Xml.XmlWriter
---@overload fun(output:System.IO.TextWriter):System.Xml.XmlWriter
---@overload fun(output:System.Text.StringBuilder):System.Xml.XmlWriter
---@overload fun(output:System.Xml.XmlWriter):System.Xml.XmlWriter
---@overload fun(outputFileName:System.String, settings:System.Xml.XmlWriterSettings):System.Xml.XmlWriter
---@overload fun(output:System.IO.Stream, settings:System.Xml.XmlWriterSettings):System.Xml.XmlWriter
---@overload fun(output:System.IO.TextWriter, settings:System.Xml.XmlWriterSettings):System.Xml.XmlWriter
---@overload fun(output:System.Text.StringBuilder, settings:System.Xml.XmlWriterSettings):System.Xml.XmlWriter
---@overload fun(output:System.Xml.XmlWriter, settings:System.Xml.XmlWriterSettings):System.Xml.XmlWriter
---@param outputFileName System.String
---@return System.Xml.XmlWriter
function System.Xml.XmlWriter.Create(outputFileName)end
---@overload fun(standalone:System.Boolean):System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStartDocumentAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEndDocumentAsync()end
---@param name System.String
---@param pubid System.String
---@param sysid System.String
---@param subset System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteDocTypeAsync(name, pubid, sysid, subset)end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStartElementAsync(prefix, localName, ns)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEndElementAsync()end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteFullEndElementAsync()end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@param value System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteAttributeStringAsync(prefix, localName, ns, value)end
---@param text System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCDataAsync(text)end
---@param text System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCommentAsync(text)end
---@param name System.String
---@param text System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteProcessingInstructionAsync(name, text)end
---@param name System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEntityRefAsync(name)end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCharEntityAsync(ch)end
---@param ws System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteWhitespaceAsync(ws)end
---@param text System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStringAsync(text)end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteSurrogateCharEntityAsync(lowChar, highChar)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCharsAsync(buffer, index, count)end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Threading.Tasks.Task
---@param data System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteRawAsync(data)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteBase64Async(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteBinHexAsync(buffer, index, count)end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:FlushAsync()end
---@param name System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNmTokenAsync(name)end
---@param name System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNameAsync(name)end
---@param localName System.String
---@param ns System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteQualifiedNameAsync(localName, ns)end
---@param reader System.Xml.XmlReader
---@param defattr System.Boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteAttributesAsync(reader, defattr)end
---@overload fun(navigator:System.Xml.XPath.XPathNavigator, defattr:System.Boolean):System.Threading.Tasks.Task
---@param reader System.Xml.XmlReader
---@param defattr System.Boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNodeAsync(reader, defattr)end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@param value System.String
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteElementStringAsync(prefix, localName, ns, value)end
---@class System.Xml.XmlOutputMethod : System.Enum
System.Xml.XmlOutputMethod = {}
---@type System.Xml.XmlOutputMethod
CS.System.Xml.XmlOutputMethod = System.Xml.XmlOutputMethod

---@return System.Int32 value:0
System.Xml.XmlOutputMethod.Xml = 0
---@return System.Int32 value:1
System.Xml.XmlOutputMethod.Html = 1
---@return System.Int32 value:2
System.Xml.XmlOutputMethod.Text = 2
---@return System.Int32 value:3
System.Xml.XmlOutputMethod.AutoDetect = 3

---@class System.Xml.XmlWriterSettings : System.Object
---@field public Async System.Boolean @ setter getter
---@field public Encoding System.Text.Encoding @ setter getter
---@field public OmitXmlDeclaration System.Boolean @ setter getter
---@field public NewLineHandling System.Xml.NewLineHandling @ setter getter
---@field public NewLineChars System.String @ setter getter
---@field public Indent System.Boolean @ setter getter
---@field public IndentChars System.String @ setter getter
---@field public NewLineOnAttributes System.Boolean @ setter getter
---@field public CloseOutput System.Boolean @ setter getter
---@field public ConformanceLevel System.Xml.ConformanceLevel @ setter getter
---@field public CheckCharacters System.Boolean @ setter getter
---@field public NamespaceHandling System.Xml.NamespaceHandling @ setter getter
---@field public WriteEndDocumentOnClose System.Boolean @ setter getter
---@field public OutputMethod System.Xml.XmlOutputMethod @ setter getter
---@field public DoNotEscapeUriAttributes System.Boolean @ setter getter
System.Xml.XmlWriterSettings = {}
---@type System.Xml.XmlWriterSettings
CS.System.Xml.XmlWriterSettings = System.Xml.XmlWriterSettings

---@return System.Void
function System.Xml.XmlWriterSettings:Reset()end
---@return System.Xml.XmlWriterSettings
function System.Xml.XmlWriterSettings:Clone()end
---@class System.Xml.XmlAttribute : System.Xml.XmlNode
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public OwnerDocument System.Xml.XmlDocument @  getter
---@field public Value System.String @ setter getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public InnerText System.String @ setter 
---@field public Specified System.Boolean @  getter
---@field public OwnerElement System.Xml.XmlElement @  getter
---@field public InnerXml System.String @ setter 
---@field public BaseURI System.String @  getter
System.Xml.XmlAttribute = {}
---@type System.Xml.XmlAttribute
CS.System.Xml.XmlAttribute = System.Xml.XmlAttribute

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:CloneNode(deep)end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:InsertBefore(newChild, refChild)end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:InsertAfter(newChild, refChild)end
---@param newChild System.Xml.XmlNode
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:ReplaceChild(newChild, oldChild)end
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:RemoveChild(oldChild)end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:PrependChild(newChild)end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:AppendChild(newChild)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlAttribute:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlAttribute:WriteContentTo(w)end
---@class System.Xml.XmlAttributeCollection : System.Xml.XmlNamedNodeMap
---@field public ItemOf System.Xml.XmlAttribute @  getter
---@field public ItemOf System.Xml.XmlAttribute @  getter
---@field public ItemOf System.Xml.XmlAttribute @  getter
System.Xml.XmlAttributeCollection = {}
---@type System.Xml.XmlAttributeCollection
CS.System.Xml.XmlAttributeCollection = System.Xml.XmlAttributeCollection

---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttributeCollection:SetNamedItem(node)end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Prepend(node)end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Append(node)end
---@param newNode System.Xml.XmlAttribute
---@param refNode System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:InsertBefore(newNode, refNode)end
---@param newNode System.Xml.XmlAttribute
---@param refNode System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:InsertAfter(newNode, refNode)end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Remove(node)end
---@param i System.Int32
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:RemoveAt(i)end
---@return System.Void
function System.Xml.XmlAttributeCollection:RemoveAll()end
---@param array System.Xml.XmlAttribute[]
---@param index System.Int32
---@return System.Void
function System.Xml.XmlAttributeCollection:CopyTo(array, index)end
---@class System.Xml.XmlCDataSection : System.Xml.XmlCharacterData
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public PreviousText System.Xml.XmlNode @  getter
System.Xml.XmlCDataSection = {}
---@type System.Xml.XmlCDataSection
CS.System.Xml.XmlCDataSection = System.Xml.XmlCDataSection

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlCDataSection:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlCDataSection:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlCDataSection:WriteContentTo(w)end
---@class System.Xml.XmlCharacterData : System.Xml.XmlLinkedNode
---@field public Value System.String @ setter getter
---@field public InnerText System.String @ setter getter
---@field public Data System.String @ setter getter
---@field public Length System.Int32 @  getter
System.Xml.XmlCharacterData = {}
---@type System.Xml.XmlCharacterData
CS.System.Xml.XmlCharacterData = System.Xml.XmlCharacterData

---@param offset System.Int32
---@param count System.Int32
---@return System.String
function System.Xml.XmlCharacterData:Substring(offset, count)end
---@param strData System.String
---@return System.Void
function System.Xml.XmlCharacterData:AppendData(strData)end
---@param offset System.Int32
---@param strData System.String
---@return System.Void
function System.Xml.XmlCharacterData:InsertData(offset, strData)end
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.XmlCharacterData:DeleteData(offset, count)end
---@param offset System.Int32
---@param count System.Int32
---@param strData System.String
---@return System.Void
function System.Xml.XmlCharacterData:ReplaceData(offset, count, strData)end
---@class System.Xml.XmlComment : System.Xml.XmlCharacterData
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
System.Xml.XmlComment = {}
---@type System.Xml.XmlComment
CS.System.Xml.XmlComment = System.Xml.XmlComment

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlComment:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlComment:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlComment:WriteContentTo(w)end
---@class System.Xml.XmlDeclaration : System.Xml.XmlLinkedNode
---@field public Version System.String @ setter getter
---@field public Encoding System.String @ setter getter
---@field public Standalone System.String @ setter getter
---@field public Value System.String @ setter getter
---@field public InnerText System.String @ setter getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
System.Xml.XmlDeclaration = {}
---@type System.Xml.XmlDeclaration
CS.System.Xml.XmlDeclaration = System.Xml.XmlDeclaration

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDeclaration:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDeclaration:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDeclaration:WriteContentTo(w)end
---@class System.Xml.XmlDocument : System.Xml.XmlNode
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public DocumentType System.Xml.XmlDocumentType @  getter
---@field public Implementation System.Xml.XmlImplementation @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public DocumentElement System.Xml.XmlElement @  getter
---@field public OwnerDocument System.Xml.XmlDocument @  getter
---@field public Schemas System.Xml.Schema.XmlSchemaSet @ setter getter
---@field public XmlResolver System.Xml.XmlResolver @ setter 
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public PreserveWhitespace System.Boolean @ setter getter
---@field public IsReadOnly System.Boolean @  getter
---@field public InnerText System.String @ setter 
---@field public InnerXml System.String @ setter getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public BaseURI System.String @  getter
System.Xml.XmlDocument = {}
---@type System.Xml.XmlDocument
CS.System.Xml.XmlDocument = System.Xml.XmlDocument

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:CloneNode(deep)end
---@overload fun(qualifiedName:System.String, namespaceURI:System.String):System.Xml.XmlAttribute
---@overload fun(prefix:System.String, localName:System.String, namespaceURI:System.String):System.Xml.XmlAttribute
---@param name System.String
---@return System.Xml.XmlAttribute
function System.Xml.XmlDocument:CreateAttribute(name)end
---@param data System.String
---@return System.Xml.XmlCDataSection
function System.Xml.XmlDocument:CreateCDataSection(data)end
---@param data System.String
---@return System.Xml.XmlComment
function System.Xml.XmlDocument:CreateComment(data)end
---@param name System.String
---@param publicId System.String
---@param systemId System.String
---@param internalSubset System.String
---@return System.Xml.XmlDocumentType
function System.Xml.XmlDocument:CreateDocumentType(name, publicId, systemId, internalSubset)end
---@return System.Xml.XmlDocumentFragment
function System.Xml.XmlDocument:CreateDocumentFragment()end
---@overload fun(qualifiedName:System.String, namespaceURI:System.String):System.Xml.XmlElement
---@overload fun(prefix:System.String, localName:System.String, namespaceURI:System.String):System.Xml.XmlElement
---@param name System.String
---@return System.Xml.XmlElement
function System.Xml.XmlDocument:CreateElement(name)end
---@param name System.String
---@return System.Xml.XmlEntityReference
function System.Xml.XmlDocument:CreateEntityReference(name)end
---@param target System.String
---@param data System.String
---@return System.Xml.XmlProcessingInstruction
function System.Xml.XmlDocument:CreateProcessingInstruction(target, data)end
---@param version System.String
---@param encoding System.String
---@param standalone System.String
---@return System.Xml.XmlDeclaration
function System.Xml.XmlDocument:CreateXmlDeclaration(version, encoding, standalone)end
---@param text System.String
---@return System.Xml.XmlText
function System.Xml.XmlDocument:CreateTextNode(text)end
---@param text System.String
---@return System.Xml.XmlSignificantWhitespace
function System.Xml.XmlDocument:CreateSignificantWhitespace(text)end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XmlDocument:CreateNavigator()end
---@param text System.String
---@return System.Xml.XmlWhitespace
function System.Xml.XmlDocument:CreateWhitespace(text)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlNodeList
---@param name System.String
---@return System.Xml.XmlNodeList
function System.Xml.XmlDocument:GetElementsByTagName(name)end
---@param elementId System.String
---@return System.Xml.XmlElement
function System.Xml.XmlDocument:GetElementById(elementId)end
---@param node System.Xml.XmlNode
---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:ImportNode(node, deep)end
---@overload fun(type:System.Xml.XmlNodeType, name:System.String, namespaceURI:System.String):System.Xml.XmlNode
---@overload fun(type:System.Xml.XmlNodeType, prefix:System.String, name:System.String, namespaceURI:System.String):System.Xml.XmlNode
---@param nodeTypeString System.String
---@param name System.String
---@param namespaceURI System.String
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:CreateNode(nodeTypeString, name, namespaceURI)end
---@param reader System.Xml.XmlReader
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:ReadNode(reader)end
---@overload fun(inStream:System.IO.Stream):System.Void
---@overload fun(txtReader:System.IO.TextReader):System.Void
---@overload fun(reader:System.Xml.XmlReader):System.Void
---@param filename System.String
---@return System.Void
function System.Xml.XmlDocument:Load(filename)end
---@param xml System.String
---@return System.Void
function System.Xml.XmlDocument:LoadXml(xml)end
---@overload fun(outStream:System.IO.Stream):System.Void
---@overload fun(writer:System.IO.TextWriter):System.Void
---@overload fun(w:System.Xml.XmlWriter):System.Void
---@param filename System.String
---@return System.Void
function System.Xml.XmlDocument:Save(filename)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocument:WriteTo(w)end
---@param xw System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocument:WriteContentTo(xw)end
---@overload fun(validationEventHandler:System.Xml.Schema.ValidationEventHandler, nodeToValidate:System.Xml.XmlNode):System.Void
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.XmlDocument:Validate(validationEventHandler)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeInserting(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeInserting(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeInserted(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeInserted(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeRemoving(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeRemoving(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeRemoved(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeRemoved(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeChanging(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeChanging(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:add_NodeChanged(value)end
---@param value System.Xml.XmlNodeChangedEventHandler
---@return System.Void
function System.Xml.XmlDocument:remove_NodeChanged(value)end
---@class System.Xml.XmlDocumentFragment : System.Xml.XmlNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public OwnerDocument System.Xml.XmlDocument @  getter
---@field public InnerXml System.String @ setter getter
System.Xml.XmlDocumentFragment = {}
---@type System.Xml.XmlDocumentFragment
CS.System.Xml.XmlDocumentFragment = System.Xml.XmlDocumentFragment

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocumentFragment:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocumentFragment:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocumentFragment:WriteContentTo(w)end
---@class System.Xml.XmlDocumentType : System.Xml.XmlLinkedNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Entities System.Xml.XmlNamedNodeMap @  getter
---@field public Notations System.Xml.XmlNamedNodeMap @  getter
---@field public PublicId System.String @  getter
---@field public SystemId System.String @  getter
---@field public InternalSubset System.String @  getter
System.Xml.XmlDocumentType = {}
---@type System.Xml.XmlDocumentType
CS.System.Xml.XmlDocumentType = System.Xml.XmlDocumentType

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocumentType:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocumentType:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlDocumentType:WriteContentTo(w)end
---@class System.Xml.XmlElement : System.Xml.XmlLinkedNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public OwnerDocument System.Xml.XmlDocument @  getter
---@field public IsEmpty System.Boolean @ setter getter
---@field public Attributes System.Xml.XmlAttributeCollection @  getter
---@field public HasAttributes System.Boolean @  getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public InnerXml System.String @ setter getter
---@field public InnerText System.String @ setter getter
---@field public NextSibling System.Xml.XmlNode @  getter
System.Xml.XmlElement = {}
---@type System.Xml.XmlElement
CS.System.Xml.XmlElement = System.Xml.XmlElement

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlElement:CloneNode(deep)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.String
---@param name System.String
---@return System.String
function System.Xml.XmlElement:GetAttribute(name)end
---@overload fun(localName:System.String, namespaceURI:System.String, value:System.String):System.String
---@param name System.String
---@param value System.String
---@return System.Void
function System.Xml.XmlElement:SetAttribute(name, value)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Void
---@param name System.String
---@return System.Void
function System.Xml.XmlElement:RemoveAttribute(name)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlAttribute
---@param name System.String
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:GetAttributeNode(name)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlAttribute
---@param newAttr System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:SetAttributeNode(newAttr)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlAttribute
---@param oldAttr System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:RemoveAttributeNode(oldAttr)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlNodeList
---@param name System.String
---@return System.Xml.XmlNodeList
function System.Xml.XmlElement:GetElementsByTagName(name)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param name System.String
---@return System.Boolean
function System.Xml.XmlElement:HasAttribute(name)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlElement:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlElement:WriteContentTo(w)end
---@param i System.Int32
---@return System.Xml.XmlNode
function System.Xml.XmlElement:RemoveAttributeAt(i)end
---@return System.Void
function System.Xml.XmlElement:RemoveAllAttributes()end
---@return System.Void
function System.Xml.XmlElement:RemoveAll()end
---@class System.Xml.XmlEntity : System.Xml.XmlNode
---@field public IsReadOnly System.Boolean @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public InnerText System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public PublicId System.String @  getter
---@field public SystemId System.String @  getter
---@field public NotationName System.String @  getter
---@field public OuterXml System.String @  getter
---@field public InnerXml System.String @ setter getter
---@field public BaseURI System.String @  getter
System.Xml.XmlEntity = {}
---@type System.Xml.XmlEntity
CS.System.Xml.XmlEntity = System.Xml.XmlEntity

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlEntity:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlEntity:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlEntity:WriteContentTo(w)end
---@class System.Xml.XmlEntityReference : System.Xml.XmlLinkedNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public Value System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public BaseURI System.String @  getter
System.Xml.XmlEntityReference = {}
---@type System.Xml.XmlEntityReference
CS.System.Xml.XmlEntityReference = System.Xml.XmlEntityReference

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlEntityReference:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlEntityReference:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlEntityReference:WriteContentTo(w)end
---@class System.Xml.XmlNodeChangedAction : System.Enum
System.Xml.XmlNodeChangedAction = {}
---@type System.Xml.XmlNodeChangedAction
CS.System.Xml.XmlNodeChangedAction = System.Xml.XmlNodeChangedAction

---@return System.Int32 value:0
System.Xml.XmlNodeChangedAction.Insert = 0
---@return System.Int32 value:1
System.Xml.XmlNodeChangedAction.Remove = 1
---@return System.Int32 value:2
System.Xml.XmlNodeChangedAction.Change = 2

---@class System.Xml.XmlImplementation : System.Object
System.Xml.XmlImplementation = {}
---@type System.Xml.XmlImplementation
CS.System.Xml.XmlImplementation = System.Xml.XmlImplementation

---@param strFeature System.String
---@param strVersion System.String
---@return System.Boolean
function System.Xml.XmlImplementation:HasFeature(strFeature, strVersion)end
---@return System.Xml.XmlDocument
function System.Xml.XmlImplementation:CreateDocument()end
---@class System.Xml.XmlLinkedNode : System.Xml.XmlNode
---@field public PreviousSibling System.Xml.XmlNode @  getter
---@field public NextSibling System.Xml.XmlNode @  getter
System.Xml.XmlLinkedNode = {}
---@type System.Xml.XmlLinkedNode
CS.System.Xml.XmlLinkedNode = System.Xml.XmlLinkedNode

---@class System.Xml.XmlNamedNodeMap : System.Object
---@field public Count System.Int32 @  getter
System.Xml.XmlNamedNodeMap = {}
---@type System.Xml.XmlNamedNodeMap
CS.System.Xml.XmlNamedNodeMap = System.Xml.XmlNamedNodeMap

---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlNode
---@param name System.String
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:GetNamedItem(name)end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:SetNamedItem(node)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Xml.XmlNode
---@param name System.String
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:RemoveNamedItem(name)end
---@param index System.Int32
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:Item(index)end
---@return System.Collections.IEnumerator
function System.Xml.XmlNamedNodeMap:GetEnumerator()end
---@class System.Xml.XmlNode : System.Object
---@field public Name System.String @  getter
---@field public Value System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public ChildNodes System.Xml.XmlNodeList @  getter
---@field public PreviousSibling System.Xml.XmlNode @  getter
---@field public NextSibling System.Xml.XmlNode @  getter
---@field public Attributes System.Xml.XmlAttributeCollection @  getter
---@field public OwnerDocument System.Xml.XmlDocument @  getter
---@field public FirstChild System.Xml.XmlNode @  getter
---@field public LastChild System.Xml.XmlNode @  getter
---@field public HasChildNodes System.Boolean @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @ setter getter
---@field public LocalName System.String @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public InnerText System.String @ setter getter
---@field public OuterXml System.String @  getter
---@field public InnerXml System.String @ setter getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public BaseURI System.String @  getter
---@field public Item System.Xml.XmlElement @  getter
---@field public Item System.Xml.XmlElement @  getter
---@field public PreviousText System.Xml.XmlNode @  getter
System.Xml.XmlNode = {}
---@type System.Xml.XmlNode
CS.System.Xml.XmlNode = System.Xml.XmlNode

---@return System.Xml.XPath.XPathNavigator
function System.Xml.XmlNode:CreateNavigator()end
---@overload fun(xpath:System.String, nsmgr:System.Xml.XmlNamespaceManager):System.Xml.XmlNode
---@param xpath System.String
---@return System.Xml.XmlNode
function System.Xml.XmlNode:SelectSingleNode(xpath)end
---@overload fun(xpath:System.String, nsmgr:System.Xml.XmlNamespaceManager):System.Xml.XmlNodeList
---@param xpath System.String
---@return System.Xml.XmlNodeList
function System.Xml.XmlNode:SelectNodes(xpath)end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:InsertBefore(newChild, refChild)end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:InsertAfter(newChild, refChild)end
---@param newChild System.Xml.XmlNode
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:ReplaceChild(newChild, oldChild)end
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:RemoveChild(oldChild)end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:PrependChild(newChild)end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:AppendChild(newChild)end
---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlNode:CloneNode(deep)end
---@return System.Void
function System.Xml.XmlNode:Normalize()end
---@param feature System.String
---@param version System.String
---@return System.Boolean
function System.Xml.XmlNode:Supports(feature, version)end
---@return System.Xml.XmlNode
function System.Xml.XmlNode:Clone()end
---@return System.Collections.IEnumerator
function System.Xml.XmlNode:GetEnumerator()end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlNode:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlNode:WriteContentTo(w)end
---@return System.Void
function System.Xml.XmlNode:RemoveAll()end
---@param prefix System.String
---@return System.String
function System.Xml.XmlNode:GetNamespaceOfPrefix(prefix)end
---@param namespaceURI System.String
---@return System.String
function System.Xml.XmlNode:GetPrefixOfNamespace(namespaceURI)end
---@class System.Xml.XmlNodeChangedEventArgs : System.EventArgs
---@field public Action System.Xml.XmlNodeChangedAction @  getter
---@field public Node System.Xml.XmlNode @  getter
---@field public OldParent System.Xml.XmlNode @  getter
---@field public NewParent System.Xml.XmlNode @  getter
---@field public OldValue System.String @  getter
---@field public NewValue System.String @  getter
System.Xml.XmlNodeChangedEventArgs = {}
---@type System.Xml.XmlNodeChangedEventArgs
CS.System.Xml.XmlNodeChangedEventArgs = System.Xml.XmlNodeChangedEventArgs

---@class System.Xml.XmlNodeList : System.Object
---@field public Count System.Int32 @  getter
---@field public ItemOf System.Xml.XmlNode @  getter
System.Xml.XmlNodeList = {}
---@type System.Xml.XmlNodeList
CS.System.Xml.XmlNodeList = System.Xml.XmlNodeList

---@param index System.Int32
---@return System.Xml.XmlNode
function System.Xml.XmlNodeList:Item(index)end
---@return System.Collections.IEnumerator
function System.Xml.XmlNodeList:GetEnumerator()end
---@class System.Xml.XmlNodeReader : System.Xml.XmlReader
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @  getter
---@field public HasValue System.Boolean @  getter
---@field public Value System.String @  getter
---@field public Depth System.Int32 @  getter
---@field public BaseURI System.String @  getter
---@field public CanResolveEntity System.Boolean @  getter
---@field public IsEmptyElement System.Boolean @  getter
---@field public IsDefault System.Boolean @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public AttributeCount System.Int32 @  getter
---@field public EOF System.Boolean @  getter
---@field public ReadState System.Xml.ReadState @  getter
---@field public HasAttributes System.Boolean @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public CanReadBinaryContent System.Boolean @  getter
System.Xml.XmlNodeReader = {}
---@type System.Xml.XmlNodeReader
CS.System.Xml.XmlNodeReader = System.Xml.XmlNodeReader

---@overload fun(name:System.String):System.String
---@overload fun(name:System.String, namespaceURI:System.String):System.String
---@param attributeIndex System.Int32
---@return System.String
function System.Xml.XmlNodeReader:GetAttribute(attributeIndex)end
---@overload fun(name:System.String):System.Boolean
---@overload fun(name:System.String, namespaceURI:System.String):System.Boolean
---@param attributeIndex System.Int32
---@return System.Void
function System.Xml.XmlNodeReader:MoveToAttribute(attributeIndex)end
---@return System.Boolean
function System.Xml.XmlNodeReader:MoveToFirstAttribute()end
---@return System.Boolean
function System.Xml.XmlNodeReader:MoveToNextAttribute()end
---@return System.Boolean
function System.Xml.XmlNodeReader:MoveToElement()end
---@return System.Boolean
function System.Xml.XmlNodeReader:Read()end
---@return System.Void
function System.Xml.XmlNodeReader:Close()end
---@return System.Void
function System.Xml.XmlNodeReader:Skip()end
---@return System.String
function System.Xml.XmlNodeReader:ReadString()end
---@param prefix System.String
---@return System.String
function System.Xml.XmlNodeReader:LookupNamespace(prefix)end
---@return System.Void
function System.Xml.XmlNodeReader:ResolveEntity()end
---@return System.Boolean
function System.Xml.XmlNodeReader:ReadAttributeValue()end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlNodeReader:ReadContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlNodeReader:ReadContentAsBinHex(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlNodeReader:ReadElementContentAsBase64(buffer, index, count)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Xml.XmlNodeReader:ReadElementContentAsBinHex(buffer, index, count)end
---@class System.Xml.XmlNotation : System.Xml.XmlNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public PublicId System.String @  getter
---@field public SystemId System.String @  getter
---@field public OuterXml System.String @  getter
---@field public InnerXml System.String @ setter getter
System.Xml.XmlNotation = {}
---@type System.Xml.XmlNotation
CS.System.Xml.XmlNotation = System.Xml.XmlNotation

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlNotation:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlNotation:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlNotation:WriteContentTo(w)end
---@class System.Xml.XmlProcessingInstruction : System.Xml.XmlLinkedNode
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public Value System.String @ setter getter
---@field public Target System.String @  getter
---@field public Data System.String @ setter getter
---@field public InnerText System.String @ setter getter
---@field public NodeType System.Xml.XmlNodeType @  getter
System.Xml.XmlProcessingInstruction = {}
---@type System.Xml.XmlProcessingInstruction
CS.System.Xml.XmlProcessingInstruction = System.Xml.XmlProcessingInstruction

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlProcessingInstruction:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlProcessingInstruction:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlProcessingInstruction:WriteContentTo(w)end
---@class System.Xml.XmlSignificantWhitespace : System.Xml.XmlCharacterData
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public Value System.String @ setter getter
---@field public PreviousText System.Xml.XmlNode @  getter
System.Xml.XmlSignificantWhitespace = {}
---@type System.Xml.XmlSignificantWhitespace
CS.System.Xml.XmlSignificantWhitespace = System.Xml.XmlSignificantWhitespace

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlSignificantWhitespace:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlSignificantWhitespace:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlSignificantWhitespace:WriteContentTo(w)end
---@class System.Xml.XmlText : System.Xml.XmlCharacterData
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public Value System.String @ setter getter
---@field public PreviousText System.Xml.XmlNode @  getter
System.Xml.XmlText = {}
---@type System.Xml.XmlText
CS.System.Xml.XmlText = System.Xml.XmlText

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlText:CloneNode(deep)end
---@param offset System.Int32
---@return System.Xml.XmlText
function System.Xml.XmlText:SplitText(offset)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlText:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlText:WriteContentTo(w)end
---@class System.Xml.XmlWhitespace : System.Xml.XmlCharacterData
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public ParentNode System.Xml.XmlNode @  getter
---@field public Value System.String @ setter getter
---@field public PreviousText System.Xml.XmlNode @  getter
System.Xml.XmlWhitespace = {}
---@type System.Xml.XmlWhitespace
CS.System.Xml.XmlWhitespace = System.Xml.XmlWhitespace

---@param deep System.Boolean
---@return System.Xml.XmlNode
function System.Xml.XmlWhitespace:CloneNode(deep)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlWhitespace:WriteTo(w)end
---@param w System.Xml.XmlWriter
---@return System.Void
function System.Xml.XmlWhitespace:WriteContentTo(w)end
---@class System.Xml.NameTable : System.Xml.XmlNameTable
System.Xml.NameTable = {}
---@type System.Xml.NameTable
CS.System.Xml.NameTable = System.Xml.NameTable

---@overload fun(key:System.Char[], start:System.Int32, len:System.Int32):System.String
---@param key System.String
---@return System.String
function System.Xml.NameTable:Add(key)end
---@overload fun(key:System.Char[], start:System.Int32, len:System.Int32):System.String
---@param value System.String
---@return System.String
function System.Xml.NameTable:Get(value)end
---@class System.Xml.XmlTokenizedType : System.Enum
System.Xml.XmlTokenizedType = {}
---@type System.Xml.XmlTokenizedType
CS.System.Xml.XmlTokenizedType = System.Xml.XmlTokenizedType

---@return System.Int32 value:0
System.Xml.XmlTokenizedType.CDATA = 0
---@return System.Int32 value:1
System.Xml.XmlTokenizedType.ID = 1
---@return System.Int32 value:2
System.Xml.XmlTokenizedType.IDREF = 2
---@return System.Int32 value:3
System.Xml.XmlTokenizedType.IDREFS = 3
---@return System.Int32 value:4
System.Xml.XmlTokenizedType.ENTITY = 4
---@return System.Int32 value:5
System.Xml.XmlTokenizedType.ENTITIES = 5
---@return System.Int32 value:6
System.Xml.XmlTokenizedType.NMTOKEN = 6
---@return System.Int32 value:7
System.Xml.XmlTokenizedType.NMTOKENS = 7
---@return System.Int32 value:8
System.Xml.XmlTokenizedType.NOTATION = 8
---@return System.Int32 value:9
System.Xml.XmlTokenizedType.ENUMERATION = 9
---@return System.Int32 value:10
System.Xml.XmlTokenizedType.QName = 10
---@return System.Int32 value:11
System.Xml.XmlTokenizedType.NCName = 11
---@return System.Int32 value:12
System.Xml.XmlTokenizedType.None = 12

---@class System.Xml.XmlDateTimeSerializationMode : System.Enum
System.Xml.XmlDateTimeSerializationMode = {}
---@type System.Xml.XmlDateTimeSerializationMode
CS.System.Xml.XmlDateTimeSerializationMode = System.Xml.XmlDateTimeSerializationMode

---@return System.Int32 value:0
System.Xml.XmlDateTimeSerializationMode.Local = 0
---@return System.Int32 value:1
System.Xml.XmlDateTimeSerializationMode.Utc = 1
---@return System.Int32 value:2
System.Xml.XmlDateTimeSerializationMode.Unspecified = 2
---@return System.Int32 value:3
System.Xml.XmlDateTimeSerializationMode.RoundtripKind = 3

---@class System.Xml.XmlConvert : System.Object
System.Xml.XmlConvert = {}
---@type System.Xml.XmlConvert
CS.System.Xml.XmlConvert = System.Xml.XmlConvert

---@param name System.String
---@return System.String
function System.Xml.XmlConvert.EncodeName(name)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.EncodeNmToken(name)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.EncodeLocalName(name)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.DecodeName(name)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.VerifyName(name)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.VerifyNCName(name)end
---@param token System.String
---@return System.String
function System.Xml.XmlConvert.VerifyTOKEN(token)end
---@param name System.String
---@return System.String
function System.Xml.XmlConvert.VerifyNMTOKEN(name)end
---@param content System.String
---@return System.String
function System.Xml.XmlConvert.VerifyXmlChars(content)end
---@param publicId System.String
---@return System.String
function System.Xml.XmlConvert.VerifyPublicId(publicId)end
---@param content System.String
---@return System.String
function System.Xml.XmlConvert.VerifyWhitespace(content)end
---@param ch System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsStartNCNameChar(ch)end
---@param ch System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsNCNameChar(ch)end
---@param ch System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsXmlChar(ch)end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsXmlSurrogatePair(lowChar, highChar)end
---@param ch System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsPublicIdChar(ch)end
---@param ch System.Char
---@return System.Boolean
function System.Xml.XmlConvert.IsWhitespaceChar(ch)end
---@overload fun(value:System.Char):System.String
---@overload fun(value:System.SByte):System.String
---@overload fun(value:System.Int16):System.String
---@overload fun(value:System.Int32):System.String
---@overload fun(value:System.Int64):System.String
---@overload fun(value:System.Byte):System.String
---@overload fun(value:System.UInt16):System.String
---@overload fun(value:System.UInt32):System.String
---@overload fun(value:System.UInt64):System.String
---@overload fun(value:System.Single):System.String
---@overload fun(value:System.Double):System.String
---@overload fun(value:System.Decimal):System.String
---@overload fun(value:System.TimeSpan):System.String
---@overload fun(value:System.DateTime):System.String
---@overload fun(value:System.DateTimeOffset):System.String
---@overload fun(value:System.Guid):System.String
---@overload fun(value:System.DateTime, format:System.String):System.String
---@overload fun(value:System.DateTime, dateTimeOption:System.Xml.XmlDateTimeSerializationMode):System.String
---@overload fun(value:System.DateTimeOffset, format:System.String):System.String
---@param value System.Boolean
---@return System.String
function System.Xml.XmlConvert.ToString(value)end
---@param s System.String
---@return System.Boolean
function System.Xml.XmlConvert.ToBoolean(s)end
---@param s System.String
---@return System.Char
function System.Xml.XmlConvert.ToChar(s)end
---@param s System.String
---@return System.Decimal
function System.Xml.XmlConvert.ToDecimal(s)end
---@param s System.String
---@return System.SByte
function System.Xml.XmlConvert.ToSByte(s)end
---@param s System.String
---@return System.Int16
function System.Xml.XmlConvert.ToInt16(s)end
---@param s System.String
---@return System.Int32
function System.Xml.XmlConvert.ToInt32(s)end
---@param s System.String
---@return System.Int64
function System.Xml.XmlConvert.ToInt64(s)end
---@param s System.String
---@return System.Byte
function System.Xml.XmlConvert.ToByte(s)end
---@param s System.String
---@return System.UInt16
function System.Xml.XmlConvert.ToUInt16(s)end
---@param s System.String
---@return System.UInt32
function System.Xml.XmlConvert.ToUInt32(s)end
---@param s System.String
---@return System.UInt64
function System.Xml.XmlConvert.ToUInt64(s)end
---@param s System.String
---@return System.Single
function System.Xml.XmlConvert.ToSingle(s)end
---@param s System.String
---@return System.Double
function System.Xml.XmlConvert.ToDouble(s)end
---@param s System.String
---@return System.TimeSpan
function System.Xml.XmlConvert.ToTimeSpan(s)end
---@overload fun(s:System.String, format:System.String):System.DateTime
---@overload fun(s:System.String, formats:System.String[]):System.DateTime
---@overload fun(s:System.String, dateTimeOption:System.Xml.XmlDateTimeSerializationMode):System.DateTime
---@param s System.String
---@return System.DateTime
function System.Xml.XmlConvert.ToDateTime(s)end
---@overload fun(s:System.String, format:System.String):System.DateTimeOffset
---@overload fun(s:System.String, formats:System.String[]):System.DateTimeOffset
---@param s System.String
---@return System.DateTimeOffset
function System.Xml.XmlConvert.ToDateTimeOffset(s)end
---@param s System.String
---@return System.Guid
function System.Xml.XmlConvert.ToGuid(s)end
---@class System.Xml.XmlException : System.SystemException
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public SourceUri System.String @  getter
---@field public Message System.String @  getter
System.Xml.XmlException = {}
---@type System.Xml.XmlException
CS.System.Xml.XmlException = System.Xml.XmlException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.XmlException:GetObjectData(info, context)end
---@class System.Xml.XmlNameTable : System.Object
System.Xml.XmlNameTable = {}
---@type System.Xml.XmlNameTable
CS.System.Xml.XmlNameTable = System.Xml.XmlNameTable

---@overload fun(array:System.Char[], offset:System.Int32, length:System.Int32):System.String
---@param array System.String
---@return System.String
function System.Xml.XmlNameTable:Get(array)end
---@overload fun(array:System.Char[], offset:System.Int32, length:System.Int32):System.String
---@param array System.String
---@return System.String
function System.Xml.XmlNameTable:Add(array)end
---@class System.Xml.XmlNamespaceScope : System.Enum
System.Xml.XmlNamespaceScope = {}
---@type System.Xml.XmlNamespaceScope
CS.System.Xml.XmlNamespaceScope = System.Xml.XmlNamespaceScope

---@return System.Int32 value:0
System.Xml.XmlNamespaceScope.All = 0
---@return System.Int32 value:1
System.Xml.XmlNamespaceScope.ExcludeXml = 1
---@return System.Int32 value:2
System.Xml.XmlNamespaceScope.Local = 2

---@class System.Xml.XmlNamespaceManager : System.Object
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public DefaultNamespace System.String @  getter
System.Xml.XmlNamespaceManager = {}
---@type System.Xml.XmlNamespaceManager
CS.System.Xml.XmlNamespaceManager = System.Xml.XmlNamespaceManager

---@return System.Void
function System.Xml.XmlNamespaceManager:PushScope()end
---@return System.Boolean
function System.Xml.XmlNamespaceManager:PopScope()end
---@param prefix System.String
---@param uri System.String
---@return System.Void
function System.Xml.XmlNamespaceManager:AddNamespace(prefix, uri)end
---@param prefix System.String
---@param uri System.String
---@return System.Void
function System.Xml.XmlNamespaceManager:RemoveNamespace(prefix, uri)end
---@return System.Collections.IEnumerator
function System.Xml.XmlNamespaceManager:GetEnumerator()end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XmlNamespaceManager:GetNamespacesInScope(scope)end
---@param prefix System.String
---@return System.String
function System.Xml.XmlNamespaceManager:LookupNamespace(prefix)end
---@param uri System.String
---@return System.String
function System.Xml.XmlNamespaceManager:LookupPrefix(uri)end
---@param prefix System.String
---@return System.Boolean
function System.Xml.XmlNamespaceManager:HasNamespace(prefix)end
---@class System.Xml.XmlNodeOrder : System.Enum
System.Xml.XmlNodeOrder = {}
---@type System.Xml.XmlNodeOrder
CS.System.Xml.XmlNodeOrder = System.Xml.XmlNodeOrder

---@return System.Int32 value:0
System.Xml.XmlNodeOrder.Before = 0
---@return System.Int32 value:1
System.Xml.XmlNodeOrder.After = 1
---@return System.Int32 value:2
System.Xml.XmlNodeOrder.Same = 2
---@return System.Int32 value:3
System.Xml.XmlNodeOrder.Unknown = 3

---@class System.Xml.XmlNodeType : System.Enum
System.Xml.XmlNodeType = {}
---@type System.Xml.XmlNodeType
CS.System.Xml.XmlNodeType = System.Xml.XmlNodeType

---@return System.Int32 value:0
System.Xml.XmlNodeType.None = 0
---@return System.Int32 value:1
System.Xml.XmlNodeType.Element = 1
---@return System.Int32 value:2
System.Xml.XmlNodeType.Attribute = 2
---@return System.Int32 value:3
System.Xml.XmlNodeType.Text = 3
---@return System.Int32 value:4
System.Xml.XmlNodeType.CDATA = 4
---@return System.Int32 value:5
System.Xml.XmlNodeType.EntityReference = 5
---@return System.Int32 value:6
System.Xml.XmlNodeType.Entity = 6
---@return System.Int32 value:7
System.Xml.XmlNodeType.ProcessingInstruction = 7
---@return System.Int32 value:8
System.Xml.XmlNodeType.Comment = 8
---@return System.Int32 value:9
System.Xml.XmlNodeType.Document = 9
---@return System.Int32 value:10
System.Xml.XmlNodeType.DocumentType = 10
---@return System.Int32 value:11
System.Xml.XmlNodeType.DocumentFragment = 11
---@return System.Int32 value:12
System.Xml.XmlNodeType.Notation = 12
---@return System.Int32 value:13
System.Xml.XmlNodeType.Whitespace = 13
---@return System.Int32 value:14
System.Xml.XmlNodeType.SignificantWhitespace = 14
---@return System.Int32 value:15
System.Xml.XmlNodeType.EndElement = 15
---@return System.Int32 value:16
System.Xml.XmlNodeType.EndEntity = 16
---@return System.Int32 value:17
System.Xml.XmlNodeType.XmlDeclaration = 17

---@class System.Xml.XmlQualifiedName : System.Object
---@field public Namespace System.String @  getter
---@field public Name System.String @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Empty System.Xml.XmlQualifiedName
System.Xml.XmlQualifiedName = {}
---@type System.Xml.XmlQualifiedName
CS.System.Xml.XmlQualifiedName = System.Xml.XmlQualifiedName

---@return System.Int32
function System.Xml.XmlQualifiedName:GetHashCode()end
---@return System.String
function System.Xml.XmlQualifiedName:ToString()end
---@param other System.Object
---@return System.Boolean
function System.Xml.XmlQualifiedName:Equals(other)end
---@param a System.Xml.XmlQualifiedName
---@param b System.Xml.XmlQualifiedName
---@return System.Boolean
function System.Xml.XmlQualifiedName.op_Equality(a, b)end
---@param a System.Xml.XmlQualifiedName
---@param b System.Xml.XmlQualifiedName
---@return System.Boolean
function System.Xml.XmlQualifiedName.op_Inequality(a, b)end
---@param name System.String
---@param ns System.String
---@return System.String
function System.Xml.XmlQualifiedName.ToString(name, ns)end
---@class System.Xml.XmlResolver : System.Object
---@field public Credentials System.Net.ICredentials @ setter 
System.Xml.XmlResolver = {}
---@type System.Xml.XmlResolver
CS.System.Xml.XmlResolver = System.Xml.XmlResolver

---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlResolver:GetEntity(absoluteUri, role, ofObjectToReturn)end
---@param baseUri System.Uri
---@param relativeUri System.String
---@return System.Uri
function System.Xml.XmlResolver:ResolveUri(baseUri, relativeUri)end
---@param absoluteUri System.Uri
---@param type System.Type
---@return System.Boolean
function System.Xml.XmlResolver:SupportsType(absoluteUri, type)end
---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn)end
---@class System.Xml.XmlSecureResolver : System.Xml.XmlResolver
---@field public Credentials System.Net.ICredentials @ setter 
System.Xml.XmlSecureResolver = {}
---@type System.Xml.XmlSecureResolver
CS.System.Xml.XmlSecureResolver = System.Xml.XmlSecureResolver

---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlSecureResolver:GetEntity(absoluteUri, role, ofObjectToReturn)end
---@param baseUri System.Uri
---@param relativeUri System.String
---@return System.Uri
function System.Xml.XmlSecureResolver:ResolveUri(baseUri, relativeUri)end
---@param securityUrl System.String
---@return System.Security.Policy.Evidence
function System.Xml.XmlSecureResolver.CreateEvidenceForUrl(securityUrl)end
---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlSecureResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn)end
---@class System.Xml.XmlUrlResolver : System.Xml.XmlResolver
---@field public Credentials System.Net.ICredentials @ setter 
---@field public Proxy System.Net.IWebProxy @ setter 
---@field public CachePolicy System.Net.Cache.RequestCachePolicy @ setter 
System.Xml.XmlUrlResolver = {}
---@type System.Xml.XmlUrlResolver
CS.System.Xml.XmlUrlResolver = System.Xml.XmlUrlResolver

---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlUrlResolver:GetEntity(absoluteUri, role, ofObjectToReturn)end
---@param baseUri System.Uri
---@param relativeUri System.String
---@return System.Uri
function System.Xml.XmlUrlResolver:ResolveUri(baseUri, relativeUri)end
---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlUrlResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn)end
---@class System.Xml.XmlXapResolver : System.Xml.XmlResolver
System.Xml.XmlXapResolver = {}
---@type System.Xml.XmlXapResolver
CS.System.Xml.XmlXapResolver = System.Xml.XmlXapResolver

---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlXapResolver:GetEntity(absoluteUri, role, ofObjectToReturn)end
---@param appStreamResolver System.Xml.IApplicationResourceStreamResolver
---@return System.Void
function System.Xml.XmlXapResolver.RegisterApplicationResourceStreamResolver(appStreamResolver)end
