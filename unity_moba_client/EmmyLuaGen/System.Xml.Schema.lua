---@class System.Xml.Schema.XmlSchemaDatatypeVariety : System.Enum
System.Xml.Schema.XmlSchemaDatatypeVariety = {}
---@type System.Xml.Schema.XmlSchemaDatatypeVariety
CS.System.Xml.Schema.XmlSchemaDatatypeVariety = System.Xml.Schema.XmlSchemaDatatypeVariety

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaDatatypeVariety.Atomic = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaDatatypeVariety.List = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaDatatypeVariety.Union = 2

---@class System.Xml.Schema.XmlSchemaInference : System.Object
---@field public Occurrence System.Xml.Schema.XmlSchemaInference.InferenceOption @ setter getter
---@field public TypeInference System.Xml.Schema.XmlSchemaInference.InferenceOption @ setter getter
System.Xml.Schema.XmlSchemaInference = {}
---@type System.Xml.Schema.XmlSchemaInference
CS.System.Xml.Schema.XmlSchemaInference = System.Xml.Schema.XmlSchemaInference

---@overload fun(instanceDocument:System.Xml.XmlReader, schemas:System.Xml.Schema.XmlSchemaSet):System.Xml.Schema.XmlSchemaSet
---@param instanceDocument System.Xml.XmlReader
---@return System.Xml.Schema.XmlSchemaSet
function System.Xml.Schema.XmlSchemaInference:InferSchema(instanceDocument)end
---@class System.Xml.Schema.XmlSchemaInference.InferenceOption : System.Enum
System.Xml.Schema.XmlSchemaInference.InferenceOption = {}
---@type System.Xml.Schema.XmlSchemaInference.InferenceOption
CS.System.Xml.Schema.XmlSchemaInference.InferenceOption = System.Xml.Schema.XmlSchemaInference.InferenceOption

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaInference.InferenceOption.Restricted = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaInference.InferenceOption.Relaxed = 1

---@class System.Xml.Schema.XmlSchemaInferenceException : System.Xml.Schema.XmlSchemaException
System.Xml.Schema.XmlSchemaInferenceException = {}
---@type System.Xml.Schema.XmlSchemaInferenceException
CS.System.Xml.Schema.XmlSchemaInferenceException = System.Xml.Schema.XmlSchemaInferenceException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.Schema.XmlSchemaInferenceException:GetObjectData(info, context)end
---@class System.Xml.Schema.ValidationEventArgs : System.EventArgs
---@field public Severity System.Xml.Schema.XmlSeverityType @  getter
---@field public Exception System.Xml.Schema.XmlSchemaException @  getter
---@field public Message System.String @  getter
System.Xml.Schema.ValidationEventArgs = {}
---@type System.Xml.Schema.ValidationEventArgs
CS.System.Xml.Schema.ValidationEventArgs = System.Xml.Schema.ValidationEventArgs

---@class System.Xml.Schema.XmlAtomicValue : System.Xml.XPath.XPathItem
---@field public IsNode System.Boolean @  getter
---@field public XmlType System.Xml.Schema.XmlSchemaType @  getter
---@field public ValueType System.Type @  getter
---@field public TypedValue System.Object @  getter
---@field public ValueAsBoolean System.Boolean @  getter
---@field public ValueAsDateTime System.DateTime @  getter
---@field public ValueAsDouble System.Double @  getter
---@field public ValueAsInt System.Int32 @  getter
---@field public ValueAsLong System.Int64 @  getter
---@field public Value System.String @  getter
System.Xml.Schema.XmlAtomicValue = {}
---@type System.Xml.Schema.XmlAtomicValue
CS.System.Xml.Schema.XmlAtomicValue = System.Xml.Schema.XmlAtomicValue

---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Schema.XmlAtomicValue:Clone()end
---@param type System.Type
---@param nsResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.Schema.XmlAtomicValue:ValueAs(type, nsResolver)end
---@return System.String
function System.Xml.Schema.XmlAtomicValue:ToString()end
---@class System.Xml.Schema.XmlSchema : System.Xml.Schema.XmlSchemaObject
---@field public AttributeFormDefault System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public BlockDefault System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public FinalDefault System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public ElementFormDefault System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public TargetNamespace System.String @ setter getter
---@field public Version System.String @ setter getter
---@field public Includes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public IsCompiled System.Boolean @  getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public AttributeGroups System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public SchemaTypes System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public Elements System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public Id System.String @ setter getter
---@field public UnhandledAttributes System.Xml.XmlAttribute[] @ setter getter
---@field public Groups System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public Notations System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public Namespace System.String
---@field public InstanceNamespace System.String
System.Xml.Schema.XmlSchema = {}
---@type System.Xml.Schema.XmlSchema
CS.System.Xml.Schema.XmlSchema = System.Xml.Schema.XmlSchema

---@overload fun(stream:System.IO.Stream, validationEventHandler:System.Xml.Schema.ValidationEventHandler):System.Xml.Schema.XmlSchema
---@overload fun(reader:System.Xml.XmlReader, validationEventHandler:System.Xml.Schema.ValidationEventHandler):System.Xml.Schema.XmlSchema
---@param reader System.IO.TextReader
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Xml.Schema.XmlSchema
function System.Xml.Schema.XmlSchema.Read(reader, validationEventHandler)end
---@overload fun(writer:System.IO.TextWriter):System.Void
---@overload fun(writer:System.Xml.XmlWriter):System.Void
---@overload fun(stream:System.IO.Stream, namespaceManager:System.Xml.XmlNamespaceManager):System.Void
---@overload fun(writer:System.IO.TextWriter, namespaceManager:System.Xml.XmlNamespaceManager):System.Void
---@overload fun(writer:System.Xml.XmlWriter, namespaceManager:System.Xml.XmlNamespaceManager):System.Void
---@param stream System.IO.Stream
---@return System.Void
function System.Xml.Schema.XmlSchema:Write(stream)end
---@overload fun(validationEventHandler:System.Xml.Schema.ValidationEventHandler, resolver:System.Xml.XmlResolver):System.Void
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchema:Compile(validationEventHandler)end
---@class System.Xml.Schema.XmlSchemaAll : System.Xml.Schema.XmlSchemaGroupBase
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
System.Xml.Schema.XmlSchemaAll = {}
---@type System.Xml.Schema.XmlSchemaAll
CS.System.Xml.Schema.XmlSchemaAll = System.Xml.Schema.XmlSchemaAll

---@class System.Xml.Schema.XmlSchemaAnnotated : System.Xml.Schema.XmlSchemaObject
---@field public Id System.String @ setter getter
---@field public Annotation System.Xml.Schema.XmlSchemaAnnotation @ setter getter
---@field public UnhandledAttributes System.Xml.XmlAttribute[] @ setter getter
System.Xml.Schema.XmlSchemaAnnotated = {}
---@type System.Xml.Schema.XmlSchemaAnnotated
CS.System.Xml.Schema.XmlSchemaAnnotated = System.Xml.Schema.XmlSchemaAnnotated

---@class System.Xml.Schema.XmlSchemaAnnotation : System.Xml.Schema.XmlSchemaObject
---@field public Id System.String @ setter getter
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public UnhandledAttributes System.Xml.XmlAttribute[] @ setter getter
System.Xml.Schema.XmlSchemaAnnotation = {}
---@type System.Xml.Schema.XmlSchemaAnnotation
CS.System.Xml.Schema.XmlSchemaAnnotation = System.Xml.Schema.XmlSchemaAnnotation

---@class System.Xml.Schema.XmlSchemaAny : System.Xml.Schema.XmlSchemaParticle
---@field public Namespace System.String @ setter getter
---@field public ProcessContents System.Xml.Schema.XmlSchemaContentProcessing @ setter getter
System.Xml.Schema.XmlSchemaAny = {}
---@type System.Xml.Schema.XmlSchemaAny
CS.System.Xml.Schema.XmlSchemaAny = System.Xml.Schema.XmlSchemaAny

---@class System.Xml.Schema.XmlSchemaAnyAttribute : System.Xml.Schema.XmlSchemaAnnotated
---@field public Namespace System.String @ setter getter
---@field public ProcessContents System.Xml.Schema.XmlSchemaContentProcessing @ setter getter
System.Xml.Schema.XmlSchemaAnyAttribute = {}
---@type System.Xml.Schema.XmlSchemaAnyAttribute
CS.System.Xml.Schema.XmlSchemaAnyAttribute = System.Xml.Schema.XmlSchemaAnyAttribute

---@class System.Xml.Schema.XmlSchemaAppInfo : System.Xml.Schema.XmlSchemaObject
---@field public Source System.String @ setter getter
---@field public Markup System.Xml.XmlNode[] @ setter getter
System.Xml.Schema.XmlSchemaAppInfo = {}
---@type System.Xml.Schema.XmlSchemaAppInfo
CS.System.Xml.Schema.XmlSchemaAppInfo = System.Xml.Schema.XmlSchemaAppInfo

---@class System.Xml.Schema.XmlSchemaAttribute : System.Xml.Schema.XmlSchemaAnnotated
---@field public DefaultValue System.String @ setter getter
---@field public FixedValue System.String @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public Name System.String @ setter getter
---@field public RefName System.Xml.XmlQualifiedName @ setter getter
---@field public SchemaTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public SchemaType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
---@field public Use System.Xml.Schema.XmlSchemaUse @ setter getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
---@field public AttributeType System.Object @  getter
---@field public AttributeSchemaType System.Xml.Schema.XmlSchemaSimpleType @  getter
System.Xml.Schema.XmlSchemaAttribute = {}
---@type System.Xml.Schema.XmlSchemaAttribute
CS.System.Xml.Schema.XmlSchemaAttribute = System.Xml.Schema.XmlSchemaAttribute

---@class System.Xml.Schema.XmlSchemaAttributeGroup : System.Xml.Schema.XmlSchemaAnnotated
---@field public Name System.String @ setter getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
---@field public RedefinedAttributeGroup System.Xml.Schema.XmlSchemaAttributeGroup @  getter
System.Xml.Schema.XmlSchemaAttributeGroup = {}
---@type System.Xml.Schema.XmlSchemaAttributeGroup
CS.System.Xml.Schema.XmlSchemaAttributeGroup = System.Xml.Schema.XmlSchemaAttributeGroup

---@class System.Xml.Schema.XmlSchemaAttributeGroupRef : System.Xml.Schema.XmlSchemaAnnotated
---@field public RefName System.Xml.XmlQualifiedName @ setter getter
System.Xml.Schema.XmlSchemaAttributeGroupRef = {}
---@type System.Xml.Schema.XmlSchemaAttributeGroupRef
CS.System.Xml.Schema.XmlSchemaAttributeGroupRef = System.Xml.Schema.XmlSchemaAttributeGroupRef

---@class System.Xml.Schema.XmlSchemaChoice : System.Xml.Schema.XmlSchemaGroupBase
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
System.Xml.Schema.XmlSchemaChoice = {}
---@type System.Xml.Schema.XmlSchemaChoice
CS.System.Xml.Schema.XmlSchemaChoice = System.Xml.Schema.XmlSchemaChoice

---@class System.Xml.Schema.XmlSchemaCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public Item System.Xml.Schema.XmlSchema @  getter
System.Xml.Schema.XmlSchemaCollection = {}
---@type System.Xml.Schema.XmlSchemaCollection
CS.System.Xml.Schema.XmlSchemaCollection = System.Xml.Schema.XmlSchemaCollection

---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaCollection:add_ValidationEventHandler(value)end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaCollection:remove_ValidationEventHandler(value)end
---@overload fun(schema:System.Xml.Schema.XmlSchemaCollection):System.Void
---@overload fun(ns:System.String, uri:System.String):System.Xml.Schema.XmlSchema
---@overload fun(ns:System.String, reader:System.Xml.XmlReader):System.Xml.Schema.XmlSchema
---@overload fun(schema:System.Xml.Schema.XmlSchema, resolver:System.Xml.XmlResolver):System.Xml.Schema.XmlSchema
---@overload fun(ns:System.String, reader:System.Xml.XmlReader, resolver:System.Xml.XmlResolver):System.Xml.Schema.XmlSchema
---@param schema System.Xml.Schema.XmlSchema
---@return System.Xml.Schema.XmlSchema
function System.Xml.Schema.XmlSchemaCollection:Add(schema)end
---@overload fun(ns:System.String):System.Boolean
---@param schema System.Xml.Schema.XmlSchema
---@return System.Boolean
function System.Xml.Schema.XmlSchemaCollection:Contains(schema)end
---@return System.Xml.Schema.XmlSchemaCollectionEnumerator
function System.Xml.Schema.XmlSchemaCollection:GetEnumerator()end
---@param array System.Xml.Schema.XmlSchema[]
---@param index System.Int32
---@return System.Void
function System.Xml.Schema.XmlSchemaCollection:CopyTo(array, index)end
---@class System.Xml.Schema.XmlSchemaCollectionEnumerator : System.Object
---@field public Current System.Xml.Schema.XmlSchema @  getter
System.Xml.Schema.XmlSchemaCollectionEnumerator = {}
---@type System.Xml.Schema.XmlSchemaCollectionEnumerator
CS.System.Xml.Schema.XmlSchemaCollectionEnumerator = System.Xml.Schema.XmlSchemaCollectionEnumerator

---@return System.Boolean
function System.Xml.Schema.XmlSchemaCollectionEnumerator:MoveNext()end
---@class System.Xml.Schema.XmlSchemaCompilationSettings : System.Object
---@field public EnableUpaCheck System.Boolean @ setter getter
System.Xml.Schema.XmlSchemaCompilationSettings = {}
---@type System.Xml.Schema.XmlSchemaCompilationSettings
CS.System.Xml.Schema.XmlSchemaCompilationSettings = System.Xml.Schema.XmlSchemaCompilationSettings

---@class System.Xml.Schema.XmlSchemaComplexContent : System.Xml.Schema.XmlSchemaContentModel
---@field public IsMixed System.Boolean @ setter getter
---@field public Content System.Xml.Schema.XmlSchemaContent @ setter getter
System.Xml.Schema.XmlSchemaComplexContent = {}
---@type System.Xml.Schema.XmlSchemaComplexContent
CS.System.Xml.Schema.XmlSchemaComplexContent = System.Xml.Schema.XmlSchemaComplexContent

---@class System.Xml.Schema.XmlSchemaComplexContentExtension : System.Xml.Schema.XmlSchemaContent
---@field public BaseTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public Particle System.Xml.Schema.XmlSchemaParticle @ setter getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
System.Xml.Schema.XmlSchemaComplexContentExtension = {}
---@type System.Xml.Schema.XmlSchemaComplexContentExtension
CS.System.Xml.Schema.XmlSchemaComplexContentExtension = System.Xml.Schema.XmlSchemaComplexContentExtension

---@class System.Xml.Schema.XmlSchemaComplexContentRestriction : System.Xml.Schema.XmlSchemaContent
---@field public BaseTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public Particle System.Xml.Schema.XmlSchemaParticle @ setter getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
System.Xml.Schema.XmlSchemaComplexContentRestriction = {}
---@type System.Xml.Schema.XmlSchemaComplexContentRestriction
CS.System.Xml.Schema.XmlSchemaComplexContentRestriction = System.Xml.Schema.XmlSchemaComplexContentRestriction

---@class System.Xml.Schema.XmlSchemaComplexType : System.Xml.Schema.XmlSchemaType
---@field public IsAbstract System.Boolean @ setter getter
---@field public Block System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public IsMixed System.Boolean @ setter getter
---@field public ContentModel System.Xml.Schema.XmlSchemaContentModel @ setter getter
---@field public Particle System.Xml.Schema.XmlSchemaParticle @ setter getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
---@field public ContentType System.Xml.Schema.XmlSchemaContentType @  getter
---@field public ContentTypeParticle System.Xml.Schema.XmlSchemaParticle @  getter
---@field public BlockResolved System.Xml.Schema.XmlSchemaDerivationMethod @  getter
---@field public AttributeUses System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public AttributeWildcard System.Xml.Schema.XmlSchemaAnyAttribute @  getter
System.Xml.Schema.XmlSchemaComplexType = {}
---@type System.Xml.Schema.XmlSchemaComplexType
CS.System.Xml.Schema.XmlSchemaComplexType = System.Xml.Schema.XmlSchemaComplexType

---@class System.Xml.Schema.XmlSchemaContent : System.Xml.Schema.XmlSchemaAnnotated
System.Xml.Schema.XmlSchemaContent = {}
---@type System.Xml.Schema.XmlSchemaContent
CS.System.Xml.Schema.XmlSchemaContent = System.Xml.Schema.XmlSchemaContent

---@class System.Xml.Schema.XmlSchemaContentModel : System.Xml.Schema.XmlSchemaAnnotated
---@field public Content System.Xml.Schema.XmlSchemaContent @ setter getter
System.Xml.Schema.XmlSchemaContentModel = {}
---@type System.Xml.Schema.XmlSchemaContentModel
CS.System.Xml.Schema.XmlSchemaContentModel = System.Xml.Schema.XmlSchemaContentModel

---@class System.Xml.Schema.XmlSchemaContentProcessing : System.Enum
System.Xml.Schema.XmlSchemaContentProcessing = {}
---@type System.Xml.Schema.XmlSchemaContentProcessing
CS.System.Xml.Schema.XmlSchemaContentProcessing = System.Xml.Schema.XmlSchemaContentProcessing

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaContentProcessing.None = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaContentProcessing.Skip = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaContentProcessing.Lax = 2
---@return System.Int32 value:3
System.Xml.Schema.XmlSchemaContentProcessing.Strict = 3

---@class System.Xml.Schema.XmlSchemaContentType : System.Enum
System.Xml.Schema.XmlSchemaContentType = {}
---@type System.Xml.Schema.XmlSchemaContentType
CS.System.Xml.Schema.XmlSchemaContentType = System.Xml.Schema.XmlSchemaContentType

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaContentType.TextOnly = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaContentType.Empty = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaContentType.ElementOnly = 2
---@return System.Int32 value:3
System.Xml.Schema.XmlSchemaContentType.Mixed = 3

---@class System.Xml.Schema.XmlSchemaDatatype : System.Object
---@field public ValueType System.Type @  getter
---@field public TokenizedType System.Xml.XmlTokenizedType @  getter
---@field public Variety System.Xml.Schema.XmlSchemaDatatypeVariety @  getter
---@field public TypeCode System.Xml.Schema.XmlTypeCode @  getter
System.Xml.Schema.XmlSchemaDatatype = {}
---@type System.Xml.Schema.XmlSchemaDatatype
CS.System.Xml.Schema.XmlSchemaDatatype = System.Xml.Schema.XmlSchemaDatatype

---@param s System.String
---@param nameTable System.Xml.XmlNameTable
---@param nsmgr System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.Schema.XmlSchemaDatatype:ParseValue(s, nameTable, nsmgr)end
---@overload fun(value:System.Object, targetType:System.Type, namespaceResolver:System.Xml.IXmlNamespaceResolver):System.Object
---@param value System.Object
---@param targetType System.Type
---@return System.Object
function System.Xml.Schema.XmlSchemaDatatype:ChangeType(value, targetType)end
---@param datatype System.Xml.Schema.XmlSchemaDatatype
---@return System.Boolean
function System.Xml.Schema.XmlSchemaDatatype:IsDerivedFrom(datatype)end
---@class System.Xml.Schema.XmlSchemaDerivationMethod : System.Enum
System.Xml.Schema.XmlSchemaDerivationMethod = {}
---@type System.Xml.Schema.XmlSchemaDerivationMethod
CS.System.Xml.Schema.XmlSchemaDerivationMethod = System.Xml.Schema.XmlSchemaDerivationMethod

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaDerivationMethod.Empty = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaDerivationMethod.Substitution = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaDerivationMethod.Extension = 2
---@return System.Int32 value:4
System.Xml.Schema.XmlSchemaDerivationMethod.Restriction = 4

---@class System.Xml.Schema.XmlSchemaDocumentation : System.Xml.Schema.XmlSchemaObject
---@field public Source System.String @ setter getter
---@field public Language System.String @ setter getter
---@field public Markup System.Xml.XmlNode[] @ setter getter
System.Xml.Schema.XmlSchemaDocumentation = {}
---@type System.Xml.Schema.XmlSchemaDocumentation
CS.System.Xml.Schema.XmlSchemaDocumentation = System.Xml.Schema.XmlSchemaDocumentation

---@class System.Xml.Schema.XmlSchemaElement : System.Xml.Schema.XmlSchemaParticle
---@field public IsAbstract System.Boolean @ setter getter
---@field public Block System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public DefaultValue System.String @ setter getter
---@field public Final System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public FixedValue System.String @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public Name System.String @ setter getter
---@field public IsNillable System.Boolean @ setter getter
---@field public RefName System.Xml.XmlQualifiedName @ setter getter
---@field public SubstitutionGroup System.Xml.XmlQualifiedName @ setter getter
---@field public SchemaTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public SchemaType System.Xml.Schema.XmlSchemaType @ setter getter
---@field public Constraints System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
---@field public ElementType System.Object @  getter
---@field public ElementSchemaType System.Xml.Schema.XmlSchemaType @  getter
---@field public BlockResolved System.Xml.Schema.XmlSchemaDerivationMethod @  getter
---@field public FinalResolved System.Xml.Schema.XmlSchemaDerivationMethod @  getter
System.Xml.Schema.XmlSchemaElement = {}
---@type System.Xml.Schema.XmlSchemaElement
CS.System.Xml.Schema.XmlSchemaElement = System.Xml.Schema.XmlSchemaElement

---@class System.Xml.Schema.XmlSchemaException : System.SystemException
---@field public SourceUri System.String @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public SourceSchemaObject System.Xml.Schema.XmlSchemaObject @  getter
---@field public Message System.String @  getter
System.Xml.Schema.XmlSchemaException = {}
---@type System.Xml.Schema.XmlSchemaException
CS.System.Xml.Schema.XmlSchemaException = System.Xml.Schema.XmlSchemaException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.Schema.XmlSchemaException:GetObjectData(info, context)end
---@class System.Xml.Schema.XmlSchemaExternal : System.Xml.Schema.XmlSchemaObject
---@field public SchemaLocation System.String @ setter getter
---@field public Schema System.Xml.Schema.XmlSchema @ setter getter
---@field public Id System.String @ setter getter
---@field public UnhandledAttributes System.Xml.XmlAttribute[] @ setter getter
System.Xml.Schema.XmlSchemaExternal = {}
---@type System.Xml.Schema.XmlSchemaExternal
CS.System.Xml.Schema.XmlSchemaExternal = System.Xml.Schema.XmlSchemaExternal

---@class System.Xml.Schema.XmlSchemaFacet : System.Xml.Schema.XmlSchemaAnnotated
---@field public Value System.String @ setter getter
---@field public IsFixed System.Boolean @ setter getter
System.Xml.Schema.XmlSchemaFacet = {}
---@type System.Xml.Schema.XmlSchemaFacet
CS.System.Xml.Schema.XmlSchemaFacet = System.Xml.Schema.XmlSchemaFacet

---@class System.Xml.Schema.XmlSchemaNumericFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaNumericFacet = {}
---@type System.Xml.Schema.XmlSchemaNumericFacet
CS.System.Xml.Schema.XmlSchemaNumericFacet = System.Xml.Schema.XmlSchemaNumericFacet

---@class System.Xml.Schema.XmlSchemaLengthFacet : System.Xml.Schema.XmlSchemaNumericFacet
System.Xml.Schema.XmlSchemaLengthFacet = {}
---@type System.Xml.Schema.XmlSchemaLengthFacet
CS.System.Xml.Schema.XmlSchemaLengthFacet = System.Xml.Schema.XmlSchemaLengthFacet

---@class System.Xml.Schema.XmlSchemaMinLengthFacet : System.Xml.Schema.XmlSchemaNumericFacet
System.Xml.Schema.XmlSchemaMinLengthFacet = {}
---@type System.Xml.Schema.XmlSchemaMinLengthFacet
CS.System.Xml.Schema.XmlSchemaMinLengthFacet = System.Xml.Schema.XmlSchemaMinLengthFacet

---@class System.Xml.Schema.XmlSchemaMaxLengthFacet : System.Xml.Schema.XmlSchemaNumericFacet
System.Xml.Schema.XmlSchemaMaxLengthFacet = {}
---@type System.Xml.Schema.XmlSchemaMaxLengthFacet
CS.System.Xml.Schema.XmlSchemaMaxLengthFacet = System.Xml.Schema.XmlSchemaMaxLengthFacet

---@class System.Xml.Schema.XmlSchemaPatternFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaPatternFacet = {}
---@type System.Xml.Schema.XmlSchemaPatternFacet
CS.System.Xml.Schema.XmlSchemaPatternFacet = System.Xml.Schema.XmlSchemaPatternFacet

---@class System.Xml.Schema.XmlSchemaEnumerationFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaEnumerationFacet = {}
---@type System.Xml.Schema.XmlSchemaEnumerationFacet
CS.System.Xml.Schema.XmlSchemaEnumerationFacet = System.Xml.Schema.XmlSchemaEnumerationFacet

---@class System.Xml.Schema.XmlSchemaMinExclusiveFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaMinExclusiveFacet = {}
---@type System.Xml.Schema.XmlSchemaMinExclusiveFacet
CS.System.Xml.Schema.XmlSchemaMinExclusiveFacet = System.Xml.Schema.XmlSchemaMinExclusiveFacet

---@class System.Xml.Schema.XmlSchemaMinInclusiveFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaMinInclusiveFacet = {}
---@type System.Xml.Schema.XmlSchemaMinInclusiveFacet
CS.System.Xml.Schema.XmlSchemaMinInclusiveFacet = System.Xml.Schema.XmlSchemaMinInclusiveFacet

---@class System.Xml.Schema.XmlSchemaMaxExclusiveFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaMaxExclusiveFacet = {}
---@type System.Xml.Schema.XmlSchemaMaxExclusiveFacet
CS.System.Xml.Schema.XmlSchemaMaxExclusiveFacet = System.Xml.Schema.XmlSchemaMaxExclusiveFacet

---@class System.Xml.Schema.XmlSchemaMaxInclusiveFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaMaxInclusiveFacet = {}
---@type System.Xml.Schema.XmlSchemaMaxInclusiveFacet
CS.System.Xml.Schema.XmlSchemaMaxInclusiveFacet = System.Xml.Schema.XmlSchemaMaxInclusiveFacet

---@class System.Xml.Schema.XmlSchemaTotalDigitsFacet : System.Xml.Schema.XmlSchemaNumericFacet
System.Xml.Schema.XmlSchemaTotalDigitsFacet = {}
---@type System.Xml.Schema.XmlSchemaTotalDigitsFacet
CS.System.Xml.Schema.XmlSchemaTotalDigitsFacet = System.Xml.Schema.XmlSchemaTotalDigitsFacet

---@class System.Xml.Schema.XmlSchemaFractionDigitsFacet : System.Xml.Schema.XmlSchemaNumericFacet
System.Xml.Schema.XmlSchemaFractionDigitsFacet = {}
---@type System.Xml.Schema.XmlSchemaFractionDigitsFacet
CS.System.Xml.Schema.XmlSchemaFractionDigitsFacet = System.Xml.Schema.XmlSchemaFractionDigitsFacet

---@class System.Xml.Schema.XmlSchemaWhiteSpaceFacet : System.Xml.Schema.XmlSchemaFacet
System.Xml.Schema.XmlSchemaWhiteSpaceFacet = {}
---@type System.Xml.Schema.XmlSchemaWhiteSpaceFacet
CS.System.Xml.Schema.XmlSchemaWhiteSpaceFacet = System.Xml.Schema.XmlSchemaWhiteSpaceFacet

---@class System.Xml.Schema.XmlSchemaForm : System.Enum
System.Xml.Schema.XmlSchemaForm = {}
---@type System.Xml.Schema.XmlSchemaForm
CS.System.Xml.Schema.XmlSchemaForm = System.Xml.Schema.XmlSchemaForm

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaForm.None = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaForm.Qualified = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaForm.Unqualified = 2

---@class System.Xml.Schema.XmlSchemaGroup : System.Xml.Schema.XmlSchemaAnnotated
---@field public Name System.String @ setter getter
---@field public Particle System.Xml.Schema.XmlSchemaGroupBase @ setter getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
System.Xml.Schema.XmlSchemaGroup = {}
---@type System.Xml.Schema.XmlSchemaGroup
CS.System.Xml.Schema.XmlSchemaGroup = System.Xml.Schema.XmlSchemaGroup

---@class System.Xml.Schema.XmlSchemaGroupBase : System.Xml.Schema.XmlSchemaParticle
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
System.Xml.Schema.XmlSchemaGroupBase = {}
---@type System.Xml.Schema.XmlSchemaGroupBase
CS.System.Xml.Schema.XmlSchemaGroupBase = System.Xml.Schema.XmlSchemaGroupBase

---@class System.Xml.Schema.XmlSchemaGroupRef : System.Xml.Schema.XmlSchemaParticle
---@field public RefName System.Xml.XmlQualifiedName @ setter getter
---@field public Particle System.Xml.Schema.XmlSchemaGroupBase @  getter
System.Xml.Schema.XmlSchemaGroupRef = {}
---@type System.Xml.Schema.XmlSchemaGroupRef
CS.System.Xml.Schema.XmlSchemaGroupRef = System.Xml.Schema.XmlSchemaGroupRef

---@class System.Xml.Schema.XmlSchemaIdentityConstraint : System.Xml.Schema.XmlSchemaAnnotated
---@field public Name System.String @ setter getter
---@field public Selector System.Xml.Schema.XmlSchemaXPath @ setter getter
---@field public Fields System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
System.Xml.Schema.XmlSchemaIdentityConstraint = {}
---@type System.Xml.Schema.XmlSchemaIdentityConstraint
CS.System.Xml.Schema.XmlSchemaIdentityConstraint = System.Xml.Schema.XmlSchemaIdentityConstraint

---@class System.Xml.Schema.XmlSchemaXPath : System.Xml.Schema.XmlSchemaAnnotated
---@field public XPath System.String @ setter getter
System.Xml.Schema.XmlSchemaXPath = {}
---@type System.Xml.Schema.XmlSchemaXPath
CS.System.Xml.Schema.XmlSchemaXPath = System.Xml.Schema.XmlSchemaXPath

---@class System.Xml.Schema.XmlSchemaUnique : System.Xml.Schema.XmlSchemaIdentityConstraint
System.Xml.Schema.XmlSchemaUnique = {}
---@type System.Xml.Schema.XmlSchemaUnique
CS.System.Xml.Schema.XmlSchemaUnique = System.Xml.Schema.XmlSchemaUnique

---@class System.Xml.Schema.XmlSchemaKey : System.Xml.Schema.XmlSchemaIdentityConstraint
System.Xml.Schema.XmlSchemaKey = {}
---@type System.Xml.Schema.XmlSchemaKey
CS.System.Xml.Schema.XmlSchemaKey = System.Xml.Schema.XmlSchemaKey

---@class System.Xml.Schema.XmlSchemaKeyref : System.Xml.Schema.XmlSchemaIdentityConstraint
---@field public Refer System.Xml.XmlQualifiedName @ setter getter
System.Xml.Schema.XmlSchemaKeyref = {}
---@type System.Xml.Schema.XmlSchemaKeyref
CS.System.Xml.Schema.XmlSchemaKeyref = System.Xml.Schema.XmlSchemaKeyref

---@class System.Xml.Schema.XmlSchemaImport : System.Xml.Schema.XmlSchemaExternal
---@field public Namespace System.String @ setter getter
---@field public Annotation System.Xml.Schema.XmlSchemaAnnotation @ setter getter
System.Xml.Schema.XmlSchemaImport = {}
---@type System.Xml.Schema.XmlSchemaImport
CS.System.Xml.Schema.XmlSchemaImport = System.Xml.Schema.XmlSchemaImport

---@class System.Xml.Schema.XmlSchemaInclude : System.Xml.Schema.XmlSchemaExternal
---@field public Annotation System.Xml.Schema.XmlSchemaAnnotation @ setter getter
System.Xml.Schema.XmlSchemaInclude = {}
---@type System.Xml.Schema.XmlSchemaInclude
CS.System.Xml.Schema.XmlSchemaInclude = System.Xml.Schema.XmlSchemaInclude

---@class System.Xml.Schema.XmlSchemaInfo : System.Object
---@field public Validity System.Xml.Schema.XmlSchemaValidity @ setter getter
---@field public IsDefault System.Boolean @ setter getter
---@field public IsNil System.Boolean @ setter getter
---@field public MemberType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
---@field public SchemaType System.Xml.Schema.XmlSchemaType @ setter getter
---@field public SchemaElement System.Xml.Schema.XmlSchemaElement @ setter getter
---@field public SchemaAttribute System.Xml.Schema.XmlSchemaAttribute @ setter getter
---@field public ContentType System.Xml.Schema.XmlSchemaContentType @ setter getter
System.Xml.Schema.XmlSchemaInfo = {}
---@type System.Xml.Schema.XmlSchemaInfo
CS.System.Xml.Schema.XmlSchemaInfo = System.Xml.Schema.XmlSchemaInfo

---@class System.Xml.Schema.XmlSchemaNotation : System.Xml.Schema.XmlSchemaAnnotated
---@field public Name System.String @ setter getter
---@field public Public System.String @ setter getter
---@field public System System.String @ setter getter
System.Xml.Schema.XmlSchemaNotation = {}
---@type System.Xml.Schema.XmlSchemaNotation
CS.System.Xml.Schema.XmlSchemaNotation = System.Xml.Schema.XmlSchemaNotation

---@class System.Xml.Schema.XmlSchemaObject : System.Object
---@field public LineNumber System.Int32 @ setter getter
---@field public LinePosition System.Int32 @ setter getter
---@field public SourceUri System.String @ setter getter
---@field public Parent System.Xml.Schema.XmlSchemaObject @ setter getter
---@field public Namespaces System.Xml.Serialization.XmlSerializerNamespaces @ setter getter
System.Xml.Schema.XmlSchemaObject = {}
---@type System.Xml.Schema.XmlSchemaObject
CS.System.Xml.Schema.XmlSchemaObject = System.Xml.Schema.XmlSchemaObject

---@class System.Xml.Schema.XmlSchemaObjectCollection : System.Collections.CollectionBase
---@field public Item System.Xml.Schema.XmlSchemaObject @ setter getter
System.Xml.Schema.XmlSchemaObjectCollection = {}
---@type System.Xml.Schema.XmlSchemaObjectCollection
CS.System.Xml.Schema.XmlSchemaObjectCollection = System.Xml.Schema.XmlSchemaObjectCollection

---@return System.Xml.Schema.XmlSchemaObjectEnumerator
function System.Xml.Schema.XmlSchemaObjectCollection:GetEnumerator()end
---@param item System.Xml.Schema.XmlSchemaObject
---@return System.Int32
function System.Xml.Schema.XmlSchemaObjectCollection:Add(item)end
---@param index System.Int32
---@param item System.Xml.Schema.XmlSchemaObject
---@return System.Void
function System.Xml.Schema.XmlSchemaObjectCollection:Insert(index, item)end
---@param item System.Xml.Schema.XmlSchemaObject
---@return System.Int32
function System.Xml.Schema.XmlSchemaObjectCollection:IndexOf(item)end
---@param item System.Xml.Schema.XmlSchemaObject
---@return System.Boolean
function System.Xml.Schema.XmlSchemaObjectCollection:Contains(item)end
---@param item System.Xml.Schema.XmlSchemaObject
---@return System.Void
function System.Xml.Schema.XmlSchemaObjectCollection:Remove(item)end
---@param array System.Xml.Schema.XmlSchemaObject[]
---@param index System.Int32
---@return System.Void
function System.Xml.Schema.XmlSchemaObjectCollection:CopyTo(array, index)end
---@class System.Xml.Schema.XmlSchemaObjectEnumerator : System.Object
---@field public Current System.Xml.Schema.XmlSchemaObject @  getter
System.Xml.Schema.XmlSchemaObjectEnumerator = {}
---@type System.Xml.Schema.XmlSchemaObjectEnumerator
CS.System.Xml.Schema.XmlSchemaObjectEnumerator = System.Xml.Schema.XmlSchemaObjectEnumerator

---@return System.Void
function System.Xml.Schema.XmlSchemaObjectEnumerator:Reset()end
---@return System.Boolean
function System.Xml.Schema.XmlSchemaObjectEnumerator:MoveNext()end
---@class System.Xml.Schema.XmlSchemaObjectTable : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.Xml.Schema.XmlSchemaObject @  getter
---@field public Names System.Collections.ICollection @  getter
---@field public Values System.Collections.ICollection @  getter
System.Xml.Schema.XmlSchemaObjectTable = {}
---@type System.Xml.Schema.XmlSchemaObjectTable
CS.System.Xml.Schema.XmlSchemaObjectTable = System.Xml.Schema.XmlSchemaObjectTable

---@param name System.Xml.XmlQualifiedName
---@return System.Boolean
function System.Xml.Schema.XmlSchemaObjectTable:Contains(name)end
---@return System.Collections.IDictionaryEnumerator
function System.Xml.Schema.XmlSchemaObjectTable:GetEnumerator()end
---@class System.Xml.Schema.XmlSchemaParticle : System.Xml.Schema.XmlSchemaAnnotated
---@field public MinOccursString System.String @ setter getter
---@field public MaxOccursString System.String @ setter getter
---@field public MinOccurs System.Decimal @ setter getter
---@field public MaxOccurs System.Decimal @ setter getter
System.Xml.Schema.XmlSchemaParticle = {}
---@type System.Xml.Schema.XmlSchemaParticle
CS.System.Xml.Schema.XmlSchemaParticle = System.Xml.Schema.XmlSchemaParticle

---@class System.Xml.Schema.XmlSchemaRedefine : System.Xml.Schema.XmlSchemaExternal
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AttributeGroups System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public SchemaTypes System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public Groups System.Xml.Schema.XmlSchemaObjectTable @  getter
System.Xml.Schema.XmlSchemaRedefine = {}
---@type System.Xml.Schema.XmlSchemaRedefine
CS.System.Xml.Schema.XmlSchemaRedefine = System.Xml.Schema.XmlSchemaRedefine

---@class System.Xml.Schema.XmlSchemaSequence : System.Xml.Schema.XmlSchemaGroupBase
---@field public Items System.Xml.Schema.XmlSchemaObjectCollection @  getter
System.Xml.Schema.XmlSchemaSequence = {}
---@type System.Xml.Schema.XmlSchemaSequence
CS.System.Xml.Schema.XmlSchemaSequence = System.Xml.Schema.XmlSchemaSequence

---@class System.Xml.Schema.XmlSchemaSet : System.Object
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public IsCompiled System.Boolean @  getter
---@field public XmlResolver System.Xml.XmlResolver @ setter 
---@field public CompilationSettings System.Xml.Schema.XmlSchemaCompilationSettings @ setter getter
---@field public Count System.Int32 @  getter
---@field public GlobalElements System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public GlobalAttributes System.Xml.Schema.XmlSchemaObjectTable @  getter
---@field public GlobalTypes System.Xml.Schema.XmlSchemaObjectTable @  getter
System.Xml.Schema.XmlSchemaSet = {}
---@type System.Xml.Schema.XmlSchemaSet
CS.System.Xml.Schema.XmlSchemaSet = System.Xml.Schema.XmlSchemaSet

---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaSet:add_ValidationEventHandler(value)end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaSet:remove_ValidationEventHandler(value)end
---@overload fun(schema:System.Xml.Schema.XmlSchema):System.Xml.Schema.XmlSchema
---@overload fun(targetNamespace:System.String, schemaUri:System.String):System.Xml.Schema.XmlSchema
---@overload fun(targetNamespace:System.String, schemaDocument:System.Xml.XmlReader):System.Xml.Schema.XmlSchema
---@param schemas System.Xml.Schema.XmlSchemaSet
---@return System.Void
function System.Xml.Schema.XmlSchemaSet:Add(schemas)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Xml.Schema.XmlSchema
function System.Xml.Schema.XmlSchemaSet:Remove(schema)end
---@param schemaToRemove System.Xml.Schema.XmlSchema
---@return System.Boolean
function System.Xml.Schema.XmlSchemaSet:RemoveRecursive(schemaToRemove)end
---@overload fun(schema:System.Xml.Schema.XmlSchema):System.Boolean
---@param targetNamespace System.String
---@return System.Boolean
function System.Xml.Schema.XmlSchemaSet:Contains(targetNamespace)end
---@return System.Void
function System.Xml.Schema.XmlSchemaSet:Compile()end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Xml.Schema.XmlSchema
function System.Xml.Schema.XmlSchemaSet:Reprocess(schema)end
---@param schemas System.Xml.Schema.XmlSchema[]
---@param index System.Int32
---@return System.Void
function System.Xml.Schema.XmlSchemaSet:CopyTo(schemas, index)end
---@overload fun(targetNamespace:System.String):System.Collections.ICollection
---@return System.Collections.ICollection
function System.Xml.Schema.XmlSchemaSet:Schemas()end
---@class System.Xml.Schema.XmlSchemaSimpleContent : System.Xml.Schema.XmlSchemaContentModel
---@field public Content System.Xml.Schema.XmlSchemaContent @ setter getter
System.Xml.Schema.XmlSchemaSimpleContent = {}
---@type System.Xml.Schema.XmlSchemaSimpleContent
CS.System.Xml.Schema.XmlSchemaSimpleContent = System.Xml.Schema.XmlSchemaSimpleContent

---@class System.Xml.Schema.XmlSchemaSimpleContentExtension : System.Xml.Schema.XmlSchemaContent
---@field public BaseTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
System.Xml.Schema.XmlSchemaSimpleContentExtension = {}
---@type System.Xml.Schema.XmlSchemaSimpleContentExtension
CS.System.Xml.Schema.XmlSchemaSimpleContentExtension = System.Xml.Schema.XmlSchemaSimpleContentExtension

---@class System.Xml.Schema.XmlSchemaSimpleContentRestriction : System.Xml.Schema.XmlSchemaContent
---@field public BaseTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public BaseType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
---@field public Facets System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public Attributes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public AnyAttribute System.Xml.Schema.XmlSchemaAnyAttribute @ setter getter
System.Xml.Schema.XmlSchemaSimpleContentRestriction = {}
---@type System.Xml.Schema.XmlSchemaSimpleContentRestriction
CS.System.Xml.Schema.XmlSchemaSimpleContentRestriction = System.Xml.Schema.XmlSchemaSimpleContentRestriction

---@class System.Xml.Schema.XmlSchemaSimpleType : System.Xml.Schema.XmlSchemaType
---@field public Content System.Xml.Schema.XmlSchemaSimpleTypeContent @ setter getter
System.Xml.Schema.XmlSchemaSimpleType = {}
---@type System.Xml.Schema.XmlSchemaSimpleType
CS.System.Xml.Schema.XmlSchemaSimpleType = System.Xml.Schema.XmlSchemaSimpleType

---@class System.Xml.Schema.XmlSchemaSimpleTypeContent : System.Xml.Schema.XmlSchemaAnnotated
System.Xml.Schema.XmlSchemaSimpleTypeContent = {}
---@type System.Xml.Schema.XmlSchemaSimpleTypeContent
CS.System.Xml.Schema.XmlSchemaSimpleTypeContent = System.Xml.Schema.XmlSchemaSimpleTypeContent

---@class System.Xml.Schema.XmlSchemaSimpleTypeList : System.Xml.Schema.XmlSchemaSimpleTypeContent
---@field public ItemTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public ItemType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
---@field public BaseItemType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
System.Xml.Schema.XmlSchemaSimpleTypeList = {}
---@type System.Xml.Schema.XmlSchemaSimpleTypeList
CS.System.Xml.Schema.XmlSchemaSimpleTypeList = System.Xml.Schema.XmlSchemaSimpleTypeList

---@class System.Xml.Schema.XmlSchemaSimpleTypeRestriction : System.Xml.Schema.XmlSchemaSimpleTypeContent
---@field public BaseTypeName System.Xml.XmlQualifiedName @ setter getter
---@field public BaseType System.Xml.Schema.XmlSchemaSimpleType @ setter getter
---@field public Facets System.Xml.Schema.XmlSchemaObjectCollection @  getter
System.Xml.Schema.XmlSchemaSimpleTypeRestriction = {}
---@type System.Xml.Schema.XmlSchemaSimpleTypeRestriction
CS.System.Xml.Schema.XmlSchemaSimpleTypeRestriction = System.Xml.Schema.XmlSchemaSimpleTypeRestriction

---@class System.Xml.Schema.XmlSchemaSimpleTypeUnion : System.Xml.Schema.XmlSchemaSimpleTypeContent
---@field public BaseTypes System.Xml.Schema.XmlSchemaObjectCollection @  getter
---@field public MemberTypes System.Xml.XmlQualifiedName[] @ setter getter
---@field public BaseMemberTypes System.Xml.Schema.XmlSchemaSimpleType[] @  getter
System.Xml.Schema.XmlSchemaSimpleTypeUnion = {}
---@type System.Xml.Schema.XmlSchemaSimpleTypeUnion
CS.System.Xml.Schema.XmlSchemaSimpleTypeUnion = System.Xml.Schema.XmlSchemaSimpleTypeUnion

---@class System.Xml.Schema.XmlSchemaType : System.Xml.Schema.XmlSchemaAnnotated
---@field public Name System.String @ setter getter
---@field public Final System.Xml.Schema.XmlSchemaDerivationMethod @ setter getter
---@field public QualifiedName System.Xml.XmlQualifiedName @  getter
---@field public FinalResolved System.Xml.Schema.XmlSchemaDerivationMethod @  getter
---@field public BaseSchemaType System.Object @  getter
---@field public BaseXmlSchemaType System.Xml.Schema.XmlSchemaType @  getter
---@field public DerivedBy System.Xml.Schema.XmlSchemaDerivationMethod @  getter
---@field public Datatype System.Xml.Schema.XmlSchemaDatatype @  getter
---@field public IsMixed System.Boolean @ setter getter
---@field public TypeCode System.Xml.Schema.XmlTypeCode @  getter
System.Xml.Schema.XmlSchemaType = {}
---@type System.Xml.Schema.XmlSchemaType
CS.System.Xml.Schema.XmlSchemaType = System.Xml.Schema.XmlSchemaType

---@overload fun(typeCode:System.Xml.Schema.XmlTypeCode):System.Xml.Schema.XmlSchemaSimpleType
---@param qualifiedName System.Xml.XmlQualifiedName
---@return System.Xml.Schema.XmlSchemaSimpleType
function System.Xml.Schema.XmlSchemaType.GetBuiltInSimpleType(qualifiedName)end
---@overload fun(qualifiedName:System.Xml.XmlQualifiedName):System.Xml.Schema.XmlSchemaComplexType
---@param typeCode System.Xml.Schema.XmlTypeCode
---@return System.Xml.Schema.XmlSchemaComplexType
function System.Xml.Schema.XmlSchemaType.GetBuiltInComplexType(typeCode)end
---@param derivedType System.Xml.Schema.XmlSchemaType
---@param baseType System.Xml.Schema.XmlSchemaType
---@param except System.Xml.Schema.XmlSchemaDerivationMethod
---@return System.Boolean
function System.Xml.Schema.XmlSchemaType.IsDerivedFrom(derivedType, baseType, except)end
---@class System.Xml.Schema.XmlSchemaUse : System.Enum
System.Xml.Schema.XmlSchemaUse = {}
---@type System.Xml.Schema.XmlSchemaUse
CS.System.Xml.Schema.XmlSchemaUse = System.Xml.Schema.XmlSchemaUse

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaUse.None = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaUse.Optional = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaUse.Prohibited = 2
---@return System.Int32 value:3
System.Xml.Schema.XmlSchemaUse.Required = 3

---@class System.Xml.Schema.XmlSchemaValidationException : System.Xml.Schema.XmlSchemaException
---@field public SourceObject System.Object @  getter
System.Xml.Schema.XmlSchemaValidationException = {}
---@type System.Xml.Schema.XmlSchemaValidationException
CS.System.Xml.Schema.XmlSchemaValidationException = System.Xml.Schema.XmlSchemaValidationException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.Schema.XmlSchemaValidationException:GetObjectData(info, context)end
---@class System.Xml.Schema.XmlSchemaValidationFlags : System.Enum
System.Xml.Schema.XmlSchemaValidationFlags = {}
---@type System.Xml.Schema.XmlSchemaValidationFlags
CS.System.Xml.Schema.XmlSchemaValidationFlags = System.Xml.Schema.XmlSchemaValidationFlags

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaValidationFlags.None = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaValidationFlags.ProcessInlineSchema = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaValidationFlags.ProcessSchemaLocation = 2
---@return System.Int32 value:4
System.Xml.Schema.XmlSchemaValidationFlags.ReportValidationWarnings = 4

---@class System.Xml.Schema.XmlSchemaValidator : System.Object
---@field public XmlResolver System.Xml.XmlResolver @ setter 
---@field public LineInfoProvider System.Xml.IXmlLineInfo @ setter getter
---@field public SourceUri System.Uri @ setter getter
---@field public ValidationEventSender System.Object @ setter getter
System.Xml.Schema.XmlSchemaValidator = {}
---@type System.Xml.Schema.XmlSchemaValidator
CS.System.Xml.Schema.XmlSchemaValidator = System.Xml.Schema.XmlSchemaValidator

---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:add_ValidationEventHandler(value)end
---@param value System.Xml.Schema.ValidationEventHandler
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:remove_ValidationEventHandler(value)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:AddSchema(schema)end
---@overload fun(partialValidationType:System.Xml.Schema.XmlSchemaObject):System.Void
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:Initialize()end
---@overload fun(localName:System.String, namespaceUri:System.String, schemaInfo:System.Xml.Schema.XmlSchemaInfo, xsiType:System.String, xsiNil:System.String, xsiSchemaLocation:System.String, xsiNoNamespaceSchemaLocation:System.String):System.Void
---@param localName System.String
---@param namespaceUri System.String
---@param schemaInfo System.Xml.Schema.XmlSchemaInfo
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:ValidateElement(localName, namespaceUri, schemaInfo)end
---@overload fun(localName:System.String, namespaceUri:System.String, attributeValue:System.Xml.Schema.XmlValueGetter, schemaInfo:System.Xml.Schema.XmlSchemaInfo):System.Object
---@param localName System.String
---@param namespaceUri System.String
---@param attributeValue System.String
---@param schemaInfo System.Xml.Schema.XmlSchemaInfo
---@return System.Object
function System.Xml.Schema.XmlSchemaValidator:ValidateAttribute(localName, namespaceUri, attributeValue, schemaInfo)end
---@param defaultAttributes System.Collections.ArrayList
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:GetUnspecifiedDefaultAttributes(defaultAttributes)end
---@param schemaInfo System.Xml.Schema.XmlSchemaInfo
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:ValidateEndOfAttributes(schemaInfo)end
---@overload fun(elementValue:System.Xml.Schema.XmlValueGetter):System.Void
---@param elementValue System.String
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:ValidateText(elementValue)end
---@overload fun(elementValue:System.Xml.Schema.XmlValueGetter):System.Void
---@param elementValue System.String
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:ValidateWhitespace(elementValue)end
---@overload fun(schemaInfo:System.Xml.Schema.XmlSchemaInfo, typedValue:System.Object):System.Object
---@param schemaInfo System.Xml.Schema.XmlSchemaInfo
---@return System.Object
function System.Xml.Schema.XmlSchemaValidator:ValidateEndElement(schemaInfo)end
---@param schemaInfo System.Xml.Schema.XmlSchemaInfo
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:SkipToEndElement(schemaInfo)end
---@return System.Void
function System.Xml.Schema.XmlSchemaValidator:EndValidation()end
---@return System.Xml.Schema.XmlSchemaParticle[]
function System.Xml.Schema.XmlSchemaValidator:GetExpectedParticles()end
---@return System.Xml.Schema.XmlSchemaAttribute[]
function System.Xml.Schema.XmlSchemaValidator:GetExpectedAttributes()end
---@class System.Xml.Schema.XmlSchemaValidity : System.Enum
System.Xml.Schema.XmlSchemaValidity = {}
---@type System.Xml.Schema.XmlSchemaValidity
CS.System.Xml.Schema.XmlSchemaValidity = System.Xml.Schema.XmlSchemaValidity

---@return System.Int32 value:0
System.Xml.Schema.XmlSchemaValidity.NotKnown = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSchemaValidity.Valid = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlSchemaValidity.Invalid = 2

---@class System.Xml.Schema.XmlSeverityType : System.Enum
System.Xml.Schema.XmlSeverityType = {}
---@type System.Xml.Schema.XmlSeverityType
CS.System.Xml.Schema.XmlSeverityType = System.Xml.Schema.XmlSeverityType

---@return System.Int32 value:0
System.Xml.Schema.XmlSeverityType.Error = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlSeverityType.Warning = 1

---@class System.Xml.Schema.XmlTypeCode : System.Enum
System.Xml.Schema.XmlTypeCode = {}
---@type System.Xml.Schema.XmlTypeCode
CS.System.Xml.Schema.XmlTypeCode = System.Xml.Schema.XmlTypeCode

---@return System.Int32 value:0
System.Xml.Schema.XmlTypeCode.None = 0
---@return System.Int32 value:1
System.Xml.Schema.XmlTypeCode.Item = 1
---@return System.Int32 value:2
System.Xml.Schema.XmlTypeCode.Node = 2
---@return System.Int32 value:3
System.Xml.Schema.XmlTypeCode.Document = 3
---@return System.Int32 value:4
System.Xml.Schema.XmlTypeCode.Element = 4
---@return System.Int32 value:5
System.Xml.Schema.XmlTypeCode.Attribute = 5
---@return System.Int32 value:6
System.Xml.Schema.XmlTypeCode.Namespace = 6
---@return System.Int32 value:7
System.Xml.Schema.XmlTypeCode.ProcessingInstruction = 7
---@return System.Int32 value:8
System.Xml.Schema.XmlTypeCode.Comment = 8
---@return System.Int32 value:9
System.Xml.Schema.XmlTypeCode.Text = 9
---@return System.Int32 value:10
System.Xml.Schema.XmlTypeCode.AnyAtomicType = 10
---@return System.Int32 value:11
System.Xml.Schema.XmlTypeCode.UntypedAtomic = 11
---@return System.Int32 value:12
System.Xml.Schema.XmlTypeCode.String = 12
---@return System.Int32 value:13
System.Xml.Schema.XmlTypeCode.Boolean = 13
---@return System.Int32 value:14
System.Xml.Schema.XmlTypeCode.Decimal = 14
---@return System.Int32 value:15
System.Xml.Schema.XmlTypeCode.Float = 15
---@return System.Int32 value:16
System.Xml.Schema.XmlTypeCode.Double = 16
---@return System.Int32 value:17
System.Xml.Schema.XmlTypeCode.Duration = 17
---@return System.Int32 value:18
System.Xml.Schema.XmlTypeCode.DateTime = 18
---@return System.Int32 value:19
System.Xml.Schema.XmlTypeCode.Time = 19
---@return System.Int32 value:20
System.Xml.Schema.XmlTypeCode.Date = 20
---@return System.Int32 value:21
System.Xml.Schema.XmlTypeCode.GYearMonth = 21
---@return System.Int32 value:22
System.Xml.Schema.XmlTypeCode.GYear = 22
---@return System.Int32 value:23
System.Xml.Schema.XmlTypeCode.GMonthDay = 23
---@return System.Int32 value:24
System.Xml.Schema.XmlTypeCode.GDay = 24
---@return System.Int32 value:25
System.Xml.Schema.XmlTypeCode.GMonth = 25
---@return System.Int32 value:26
System.Xml.Schema.XmlTypeCode.HexBinary = 26
---@return System.Int32 value:27
System.Xml.Schema.XmlTypeCode.Base64Binary = 27
---@return System.Int32 value:28
System.Xml.Schema.XmlTypeCode.AnyUri = 28
---@return System.Int32 value:29
System.Xml.Schema.XmlTypeCode.QName = 29
---@return System.Int32 value:30
System.Xml.Schema.XmlTypeCode.Notation = 30
---@return System.Int32 value:31
System.Xml.Schema.XmlTypeCode.NormalizedString = 31
---@return System.Int32 value:32
System.Xml.Schema.XmlTypeCode.Token = 32
---@return System.Int32 value:33
System.Xml.Schema.XmlTypeCode.Language = 33
---@return System.Int32 value:34
System.Xml.Schema.XmlTypeCode.NmToken = 34
---@return System.Int32 value:35
System.Xml.Schema.XmlTypeCode.Name = 35
---@return System.Int32 value:36
System.Xml.Schema.XmlTypeCode.NCName = 36
---@return System.Int32 value:37
System.Xml.Schema.XmlTypeCode.Id = 37
---@return System.Int32 value:38
System.Xml.Schema.XmlTypeCode.Idref = 38
---@return System.Int32 value:39
System.Xml.Schema.XmlTypeCode.Entity = 39
---@return System.Int32 value:40
System.Xml.Schema.XmlTypeCode.Integer = 40
---@return System.Int32 value:41
System.Xml.Schema.XmlTypeCode.NonPositiveInteger = 41
---@return System.Int32 value:42
System.Xml.Schema.XmlTypeCode.NegativeInteger = 42
---@return System.Int32 value:43
System.Xml.Schema.XmlTypeCode.Long = 43
---@return System.Int32 value:44
System.Xml.Schema.XmlTypeCode.Int = 44
---@return System.Int32 value:45
System.Xml.Schema.XmlTypeCode.Short = 45
---@return System.Int32 value:46
System.Xml.Schema.XmlTypeCode.Byte = 46
---@return System.Int32 value:47
System.Xml.Schema.XmlTypeCode.NonNegativeInteger = 47
---@return System.Int32 value:48
System.Xml.Schema.XmlTypeCode.UnsignedLong = 48
---@return System.Int32 value:49
System.Xml.Schema.XmlTypeCode.UnsignedInt = 49
---@return System.Int32 value:50
System.Xml.Schema.XmlTypeCode.UnsignedShort = 50
---@return System.Int32 value:51
System.Xml.Schema.XmlTypeCode.UnsignedByte = 51
---@return System.Int32 value:52
System.Xml.Schema.XmlTypeCode.PositiveInteger = 52
---@return System.Int32 value:53
System.Xml.Schema.XmlTypeCode.YearMonthDuration = 53
---@return System.Int32 value:54
System.Xml.Schema.XmlTypeCode.DayTimeDuration = 54

