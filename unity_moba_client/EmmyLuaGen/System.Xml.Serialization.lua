---@class System.Xml.Serialization.CodeExporter : System.Object
---@field public IncludeMetadata System.CodeDom.CodeAttributeDeclarationCollection @  getter
System.Xml.Serialization.CodeExporter = {}
---@type System.Xml.Serialization.CodeExporter
CS.System.Xml.Serialization.CodeExporter = System.Xml.Serialization.CodeExporter

---@class System.Xml.Serialization.CodeGenerationOptions : System.Enum
System.Xml.Serialization.CodeGenerationOptions = {}
---@type System.Xml.Serialization.CodeGenerationOptions
CS.System.Xml.Serialization.CodeGenerationOptions = System.Xml.Serialization.CodeGenerationOptions

---@return System.Int32 value:0
System.Xml.Serialization.CodeGenerationOptions.None = 0
---@return System.Int32 value:1
System.Xml.Serialization.CodeGenerationOptions.GenerateProperties = 1
---@return System.Int32 value:2
System.Xml.Serialization.CodeGenerationOptions.GenerateNewAsync = 2
---@return System.Int32 value:4
System.Xml.Serialization.CodeGenerationOptions.GenerateOldAsync = 4

---@class System.Xml.Serialization.CodeIdentifier : System.Object
System.Xml.Serialization.CodeIdentifier = {}
---@type System.Xml.Serialization.CodeIdentifier
CS.System.Xml.Serialization.CodeIdentifier = System.Xml.Serialization.CodeIdentifier

---@param identifier System.String
---@return System.String
function System.Xml.Serialization.CodeIdentifier.MakePascal(identifier)end
---@param identifier System.String
---@return System.String
function System.Xml.Serialization.CodeIdentifier.MakeCamel(identifier)end
---@param identifier System.String
---@return System.String
function System.Xml.Serialization.CodeIdentifier.MakeValid(identifier)end
---@class System.Xml.Serialization.CodeIdentifiers : System.Object
---@field public UseCamelCasing System.Boolean @ setter getter
System.Xml.Serialization.CodeIdentifiers = {}
---@type System.Xml.Serialization.CodeIdentifiers
CS.System.Xml.Serialization.CodeIdentifiers = System.Xml.Serialization.CodeIdentifiers

---@return System.Void
function System.Xml.Serialization.CodeIdentifiers:Clear()end
---@param identifier System.String
---@return System.String
function System.Xml.Serialization.CodeIdentifiers:MakeRightCase(identifier)end
---@param identifier System.String
---@return System.String
function System.Xml.Serialization.CodeIdentifiers:MakeUnique(identifier)end
---@param identifier System.String
---@return System.Void
function System.Xml.Serialization.CodeIdentifiers:AddReserved(identifier)end
---@param identifier System.String
---@return System.Void
function System.Xml.Serialization.CodeIdentifiers:RemoveReserved(identifier)end
---@param identifier System.String
---@param value System.Object
---@return System.String
function System.Xml.Serialization.CodeIdentifiers:AddUnique(identifier, value)end
---@param identifier System.String
---@return System.Boolean
function System.Xml.Serialization.CodeIdentifiers:IsInUse(identifier)end
---@param identifier System.String
---@param value System.Object
---@return System.Void
function System.Xml.Serialization.CodeIdentifiers:Add(identifier, value)end
---@param identifier System.String
---@return System.Void
function System.Xml.Serialization.CodeIdentifiers:Remove(identifier)end
---@param type System.Type
---@return System.Object
function System.Xml.Serialization.CodeIdentifiers:ToArray(type)end
---@class System.Xml.Serialization.ImportContext : System.Object
---@field public TypeIdentifiers System.Xml.Serialization.CodeIdentifiers @  getter
---@field public ShareTypes System.Boolean @  getter
---@field public Warnings System.Collections.Specialized.StringCollection @  getter
System.Xml.Serialization.ImportContext = {}
---@type System.Xml.Serialization.ImportContext
CS.System.Xml.Serialization.ImportContext = System.Xml.Serialization.ImportContext

---@class System.Xml.Serialization.SchemaImporter : System.Object
---@field public Extensions System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection @  getter
System.Xml.Serialization.SchemaImporter = {}
---@type System.Xml.Serialization.SchemaImporter
CS.System.Xml.Serialization.SchemaImporter = System.Xml.Serialization.SchemaImporter

---@class System.Xml.Serialization.SoapAttributeAttribute : System.Attribute
---@field public AttributeName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public DataType System.String @ setter getter
System.Xml.Serialization.SoapAttributeAttribute = {}
---@type System.Xml.Serialization.SoapAttributeAttribute
CS.System.Xml.Serialization.SoapAttributeAttribute = System.Xml.Serialization.SoapAttributeAttribute

---@class System.Xml.Serialization.SoapAttributeOverrides : System.Object
---@field public Item System.Xml.Serialization.SoapAttributes @  getter
---@field public Item System.Xml.Serialization.SoapAttributes @  getter
System.Xml.Serialization.SoapAttributeOverrides = {}
---@type System.Xml.Serialization.SoapAttributeOverrides
CS.System.Xml.Serialization.SoapAttributeOverrides = System.Xml.Serialization.SoapAttributeOverrides

---@overload fun(type:System.Type, member:System.String, attributes:System.Xml.Serialization.SoapAttributes):System.Void
---@param type System.Type
---@param attributes System.Xml.Serialization.SoapAttributes
---@return System.Void
function System.Xml.Serialization.SoapAttributeOverrides:Add(type, attributes)end
---@class System.Xml.Serialization.SoapAttributes : System.Object
---@field public SoapType System.Xml.Serialization.SoapTypeAttribute @ setter getter
---@field public SoapEnum System.Xml.Serialization.SoapEnumAttribute @ setter getter
---@field public SoapIgnore System.Boolean @ setter getter
---@field public SoapElement System.Xml.Serialization.SoapElementAttribute @ setter getter
---@field public SoapAttribute System.Xml.Serialization.SoapAttributeAttribute @ setter getter
---@field public SoapDefaultValue System.Object @ setter getter
System.Xml.Serialization.SoapAttributes = {}
---@type System.Xml.Serialization.SoapAttributes
CS.System.Xml.Serialization.SoapAttributes = System.Xml.Serialization.SoapAttributes

---@class System.Xml.Serialization.SoapCodeExporter : System.Xml.Serialization.CodeExporter
System.Xml.Serialization.SoapCodeExporter = {}
---@type System.Xml.Serialization.SoapCodeExporter
CS.System.Xml.Serialization.SoapCodeExporter = System.Xml.Serialization.SoapCodeExporter

---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
---@return System.Void
function System.Xml.Serialization.SoapCodeExporter:ExportTypeMapping(xmlTypeMapping)end
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@return System.Void
function System.Xml.Serialization.SoapCodeExporter:ExportMembersMapping(xmlMembersMapping)end
---@overload fun(metadata:System.CodeDom.CodeAttributeDeclarationCollection, member:System.Xml.Serialization.XmlMemberMapping, forceUseMemberName:System.Boolean):System.Void
---@param metadata System.CodeDom.CodeAttributeDeclarationCollection
---@param member System.Xml.Serialization.XmlMemberMapping
---@return System.Void
function System.Xml.Serialization.SoapCodeExporter:AddMappingMetadata(metadata, member)end
---@class System.Xml.Serialization.SoapElementAttribute : System.Attribute
---@field public ElementName System.String @ setter getter
---@field public DataType System.String @ setter getter
---@field public IsNullable System.Boolean @ setter getter
System.Xml.Serialization.SoapElementAttribute = {}
---@type System.Xml.Serialization.SoapElementAttribute
CS.System.Xml.Serialization.SoapElementAttribute = System.Xml.Serialization.SoapElementAttribute

---@class System.Xml.Serialization.SoapEnumAttribute : System.Attribute
---@field public Name System.String @ setter getter
System.Xml.Serialization.SoapEnumAttribute = {}
---@type System.Xml.Serialization.SoapEnumAttribute
CS.System.Xml.Serialization.SoapEnumAttribute = System.Xml.Serialization.SoapEnumAttribute

---@class System.Xml.Serialization.SoapIgnoreAttribute : System.Attribute
System.Xml.Serialization.SoapIgnoreAttribute = {}
---@type System.Xml.Serialization.SoapIgnoreAttribute
CS.System.Xml.Serialization.SoapIgnoreAttribute = System.Xml.Serialization.SoapIgnoreAttribute

---@class System.Xml.Serialization.SoapIncludeAttribute : System.Attribute
---@field public Type System.Type @ setter getter
System.Xml.Serialization.SoapIncludeAttribute = {}
---@type System.Xml.Serialization.SoapIncludeAttribute
CS.System.Xml.Serialization.SoapIncludeAttribute = System.Xml.Serialization.SoapIncludeAttribute

---@class System.Xml.Serialization.SoapReflectionImporter : System.Object
System.Xml.Serialization.SoapReflectionImporter = {}
---@type System.Xml.Serialization.SoapReflectionImporter
CS.System.Xml.Serialization.SoapReflectionImporter = System.Xml.Serialization.SoapReflectionImporter

---@param provider System.Reflection.ICustomAttributeProvider
---@return System.Void
function System.Xml.Serialization.SoapReflectionImporter:IncludeTypes(provider)end
---@param type System.Type
---@return System.Void
function System.Xml.Serialization.SoapReflectionImporter:IncludeType(type)end
---@overload fun(type:System.Type, defaultNamespace:System.String):System.Xml.Serialization.XmlTypeMapping
---@param type System.Type
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapReflectionImporter:ImportTypeMapping(type)end
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, writeAccessors:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, writeAccessors:System.Boolean, validate:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, writeAccessors:System.Boolean, validate:System.Boolean, access:System.Xml.Serialization.XmlMappingAccess):System.Xml.Serialization.XmlMembersMapping
---@param elementName System.String
---@param ns System.String
---@param members System.Xml.Serialization.XmlReflectionMember[]
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.SoapReflectionImporter:ImportMembersMapping(elementName, ns, members)end
---@class System.Xml.Serialization.SoapSchemaExporter : System.Object
System.Xml.Serialization.SoapSchemaExporter = {}
---@type System.Xml.Serialization.SoapSchemaExporter
CS.System.Xml.Serialization.SoapSchemaExporter = System.Xml.Serialization.SoapSchemaExporter

---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
---@return System.Void
function System.Xml.Serialization.SoapSchemaExporter:ExportTypeMapping(xmlTypeMapping)end
---@overload fun(xmlMembersMapping:System.Xml.Serialization.XmlMembersMapping, exportEnclosingType:System.Boolean):System.Void
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@return System.Void
function System.Xml.Serialization.SoapSchemaExporter:ExportMembersMapping(xmlMembersMapping)end
---@class System.Xml.Serialization.SoapSchemaImporter : System.Xml.Serialization.SchemaImporter
System.Xml.Serialization.SoapSchemaImporter = {}
---@type System.Xml.Serialization.SoapSchemaImporter
CS.System.Xml.Serialization.SoapSchemaImporter = System.Xml.Serialization.SoapSchemaImporter

---@param name System.Xml.XmlQualifiedName
---@param baseType System.Type
---@param baseTypeCanBeIndirect System.Boolean
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapSchemaImporter:ImportDerivedTypeMapping(name, baseType, baseTypeCanBeIndirect)end
---@overload fun(name:System.String, ns:System.String, members:System.Xml.Serialization.SoapSchemaMember[]):System.Xml.Serialization.XmlMembersMapping
---@overload fun(name:System.String, ns:System.String, members:System.Xml.Serialization.SoapSchemaMember[], hasWrapperElement:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(name:System.String, ns:System.String, members:System.Xml.Serialization.SoapSchemaMember[], hasWrapperElement:System.Boolean, baseType:System.Type, baseTypeCanBeIndirect:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@param name System.String
---@param ns System.String
---@param member System.Xml.Serialization.SoapSchemaMember
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.SoapSchemaImporter:ImportMembersMapping(name, ns, member)end
---@class System.Xml.Serialization.SoapSchemaMember : System.Object
---@field public MemberType System.Xml.XmlQualifiedName @ setter getter
---@field public MemberName System.String @ setter getter
System.Xml.Serialization.SoapSchemaMember = {}
---@type System.Xml.Serialization.SoapSchemaMember
CS.System.Xml.Serialization.SoapSchemaMember = System.Xml.Serialization.SoapSchemaMember

---@class System.Xml.Serialization.SoapTypeAttribute : System.Attribute
---@field public IncludeInSchema System.Boolean @ setter getter
---@field public TypeName System.String @ setter getter
---@field public Namespace System.String @ setter getter
System.Xml.Serialization.SoapTypeAttribute = {}
---@type System.Xml.Serialization.SoapTypeAttribute
CS.System.Xml.Serialization.SoapTypeAttribute = System.Xml.Serialization.SoapTypeAttribute

---@class System.Xml.Serialization.XmlAnyAttributeAttribute : System.Attribute
System.Xml.Serialization.XmlAnyAttributeAttribute = {}
---@type System.Xml.Serialization.XmlAnyAttributeAttribute
CS.System.Xml.Serialization.XmlAnyAttributeAttribute = System.Xml.Serialization.XmlAnyAttributeAttribute

---@class System.Xml.Serialization.XmlAnyElementAttribute : System.Attribute
---@field public Name System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public Order System.Int32 @ setter getter
System.Xml.Serialization.XmlAnyElementAttribute = {}
---@type System.Xml.Serialization.XmlAnyElementAttribute
CS.System.Xml.Serialization.XmlAnyElementAttribute = System.Xml.Serialization.XmlAnyElementAttribute

---@class System.Xml.Serialization.XmlAnyElementAttributes : System.Collections.CollectionBase
---@field public Item System.Xml.Serialization.XmlAnyElementAttribute @ setter getter
System.Xml.Serialization.XmlAnyElementAttributes = {}
---@type System.Xml.Serialization.XmlAnyElementAttributes
CS.System.Xml.Serialization.XmlAnyElementAttributes = System.Xml.Serialization.XmlAnyElementAttributes

---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return System.Int32
function System.Xml.Serialization.XmlAnyElementAttributes:Add(attribute)end
---@param index System.Int32
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return System.Void
function System.Xml.Serialization.XmlAnyElementAttributes:Insert(index, attribute)end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return System.Int32
function System.Xml.Serialization.XmlAnyElementAttributes:IndexOf(attribute)end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return System.Boolean
function System.Xml.Serialization.XmlAnyElementAttributes:Contains(attribute)end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return System.Void
function System.Xml.Serialization.XmlAnyElementAttributes:Remove(attribute)end
---@param array System.Xml.Serialization.XmlAnyElementAttribute[]
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.XmlAnyElementAttributes:CopyTo(array, index)end
---@class System.Xml.Serialization.XmlArrayAttribute : System.Attribute
---@field public ElementName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public IsNullable System.Boolean @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public Order System.Int32 @ setter getter
System.Xml.Serialization.XmlArrayAttribute = {}
---@type System.Xml.Serialization.XmlArrayAttribute
CS.System.Xml.Serialization.XmlArrayAttribute = System.Xml.Serialization.XmlArrayAttribute

---@class System.Xml.Serialization.XmlArrayItemAttribute : System.Attribute
---@field public Type System.Type @ setter getter
---@field public ElementName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public NestingLevel System.Int32 @ setter getter
---@field public DataType System.String @ setter getter
---@field public IsNullable System.Boolean @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
System.Xml.Serialization.XmlArrayItemAttribute = {}
---@type System.Xml.Serialization.XmlArrayItemAttribute
CS.System.Xml.Serialization.XmlArrayItemAttribute = System.Xml.Serialization.XmlArrayItemAttribute

---@class System.Xml.Serialization.XmlArrayItemAttributes : System.Collections.CollectionBase
---@field public Item System.Xml.Serialization.XmlArrayItemAttribute @ setter getter
System.Xml.Serialization.XmlArrayItemAttributes = {}
---@type System.Xml.Serialization.XmlArrayItemAttributes
CS.System.Xml.Serialization.XmlArrayItemAttributes = System.Xml.Serialization.XmlArrayItemAttributes

---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return System.Int32
function System.Xml.Serialization.XmlArrayItemAttributes:Add(attribute)end
---@param index System.Int32
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return System.Void
function System.Xml.Serialization.XmlArrayItemAttributes:Insert(index, attribute)end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return System.Int32
function System.Xml.Serialization.XmlArrayItemAttributes:IndexOf(attribute)end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return System.Boolean
function System.Xml.Serialization.XmlArrayItemAttributes:Contains(attribute)end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return System.Void
function System.Xml.Serialization.XmlArrayItemAttributes:Remove(attribute)end
---@param array System.Xml.Serialization.XmlArrayItemAttribute[]
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.XmlArrayItemAttributes:CopyTo(array, index)end
---@class System.Xml.Serialization.XmlAttributeAttribute : System.Attribute
---@field public Type System.Type @ setter getter
---@field public AttributeName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public DataType System.String @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
System.Xml.Serialization.XmlAttributeAttribute = {}
---@type System.Xml.Serialization.XmlAttributeAttribute
CS.System.Xml.Serialization.XmlAttributeAttribute = System.Xml.Serialization.XmlAttributeAttribute

---@class System.Xml.Serialization.XmlAttributeOverrides : System.Object
---@field public Item System.Xml.Serialization.XmlAttributes @  getter
---@field public Item System.Xml.Serialization.XmlAttributes @  getter
System.Xml.Serialization.XmlAttributeOverrides = {}
---@type System.Xml.Serialization.XmlAttributeOverrides
CS.System.Xml.Serialization.XmlAttributeOverrides = System.Xml.Serialization.XmlAttributeOverrides

---@overload fun(type:System.Type, member:System.String, attributes:System.Xml.Serialization.XmlAttributes):System.Void
---@param type System.Type
---@param attributes System.Xml.Serialization.XmlAttributes
---@return System.Void
function System.Xml.Serialization.XmlAttributeOverrides:Add(type, attributes)end
---@class System.Xml.Serialization.XmlAttributes : System.Object
---@field public XmlElements System.Xml.Serialization.XmlElementAttributes @  getter
---@field public XmlAttribute System.Xml.Serialization.XmlAttributeAttribute @ setter getter
---@field public XmlEnum System.Xml.Serialization.XmlEnumAttribute @ setter getter
---@field public XmlText System.Xml.Serialization.XmlTextAttribute @ setter getter
---@field public XmlArray System.Xml.Serialization.XmlArrayAttribute @ setter getter
---@field public XmlArrayItems System.Xml.Serialization.XmlArrayItemAttributes @  getter
---@field public XmlDefaultValue System.Object @ setter getter
---@field public XmlIgnore System.Boolean @ setter getter
---@field public XmlType System.Xml.Serialization.XmlTypeAttribute @ setter getter
---@field public XmlRoot System.Xml.Serialization.XmlRootAttribute @ setter getter
---@field public XmlAnyElements System.Xml.Serialization.XmlAnyElementAttributes @  getter
---@field public XmlAnyAttribute System.Xml.Serialization.XmlAnyAttributeAttribute @ setter getter
---@field public XmlChoiceIdentifier System.Xml.Serialization.XmlChoiceIdentifierAttribute @  getter
---@field public Xmlns System.Boolean @ setter getter
System.Xml.Serialization.XmlAttributes = {}
---@type System.Xml.Serialization.XmlAttributes
CS.System.Xml.Serialization.XmlAttributes = System.Xml.Serialization.XmlAttributes

---@class System.Xml.Serialization.XmlChoiceIdentifierAttribute : System.Attribute
---@field public MemberName System.String @ setter getter
System.Xml.Serialization.XmlChoiceIdentifierAttribute = {}
---@type System.Xml.Serialization.XmlChoiceIdentifierAttribute
CS.System.Xml.Serialization.XmlChoiceIdentifierAttribute = System.Xml.Serialization.XmlChoiceIdentifierAttribute

---@class System.Xml.Serialization.XmlCodeExporter : System.Xml.Serialization.CodeExporter
System.Xml.Serialization.XmlCodeExporter = {}
---@type System.Xml.Serialization.XmlCodeExporter
CS.System.Xml.Serialization.XmlCodeExporter = System.Xml.Serialization.XmlCodeExporter

---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
---@return System.Void
function System.Xml.Serialization.XmlCodeExporter:ExportTypeMapping(xmlTypeMapping)end
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@return System.Void
function System.Xml.Serialization.XmlCodeExporter:ExportMembersMapping(xmlMembersMapping)end
---@overload fun(metadata:System.CodeDom.CodeAttributeDeclarationCollection, member:System.Xml.Serialization.XmlMemberMapping, ns:System.String):System.Void
---@overload fun(metadata:System.CodeDom.CodeAttributeDeclarationCollection, member:System.Xml.Serialization.XmlMemberMapping, ns:System.String, forceUseMemberName:System.Boolean):System.Void
---@param metadata System.CodeDom.CodeAttributeDeclarationCollection
---@param mapping System.Xml.Serialization.XmlTypeMapping
---@param ns System.String
---@return System.Void
function System.Xml.Serialization.XmlCodeExporter:AddMappingMetadata(metadata, mapping, ns)end
---@class System.Xml.Serialization.XmlElementAttribute : System.Attribute
---@field public Type System.Type @ setter getter
---@field public ElementName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public DataType System.String @ setter getter
---@field public IsNullable System.Boolean @ setter getter
---@field public Form System.Xml.Schema.XmlSchemaForm @ setter getter
---@field public Order System.Int32 @ setter getter
System.Xml.Serialization.XmlElementAttribute = {}
---@type System.Xml.Serialization.XmlElementAttribute
CS.System.Xml.Serialization.XmlElementAttribute = System.Xml.Serialization.XmlElementAttribute

---@class System.Xml.Serialization.XmlElementAttributes : System.Collections.CollectionBase
---@field public Item System.Xml.Serialization.XmlElementAttribute @ setter getter
System.Xml.Serialization.XmlElementAttributes = {}
---@type System.Xml.Serialization.XmlElementAttributes
CS.System.Xml.Serialization.XmlElementAttributes = System.Xml.Serialization.XmlElementAttributes

---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return System.Int32
function System.Xml.Serialization.XmlElementAttributes:Add(attribute)end
---@param index System.Int32
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return System.Void
function System.Xml.Serialization.XmlElementAttributes:Insert(index, attribute)end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return System.Int32
function System.Xml.Serialization.XmlElementAttributes:IndexOf(attribute)end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return System.Boolean
function System.Xml.Serialization.XmlElementAttributes:Contains(attribute)end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return System.Void
function System.Xml.Serialization.XmlElementAttributes:Remove(attribute)end
---@param array System.Xml.Serialization.XmlElementAttribute[]
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.XmlElementAttributes:CopyTo(array, index)end
---@class System.Xml.Serialization.XmlEnumAttribute : System.Attribute
---@field public Name System.String @ setter getter
System.Xml.Serialization.XmlEnumAttribute = {}
---@type System.Xml.Serialization.XmlEnumAttribute
CS.System.Xml.Serialization.XmlEnumAttribute = System.Xml.Serialization.XmlEnumAttribute

---@class System.Xml.Serialization.XmlIgnoreAttribute : System.Attribute
System.Xml.Serialization.XmlIgnoreAttribute = {}
---@type System.Xml.Serialization.XmlIgnoreAttribute
CS.System.Xml.Serialization.XmlIgnoreAttribute = System.Xml.Serialization.XmlIgnoreAttribute

---@class System.Xml.Serialization.XmlIncludeAttribute : System.Attribute
---@field public Type System.Type @ setter getter
System.Xml.Serialization.XmlIncludeAttribute = {}
---@type System.Xml.Serialization.XmlIncludeAttribute
CS.System.Xml.Serialization.XmlIncludeAttribute = System.Xml.Serialization.XmlIncludeAttribute

---@class System.Xml.Serialization.XmlMappingAccess : System.Enum
System.Xml.Serialization.XmlMappingAccess = {}
---@type System.Xml.Serialization.XmlMappingAccess
CS.System.Xml.Serialization.XmlMappingAccess = System.Xml.Serialization.XmlMappingAccess

---@return System.Int32 value:0
System.Xml.Serialization.XmlMappingAccess.None = 0
---@return System.Int32 value:1
System.Xml.Serialization.XmlMappingAccess.Read = 1
---@return System.Int32 value:2
System.Xml.Serialization.XmlMappingAccess.Write = 2

---@class System.Xml.Serialization.XmlMapping : System.Object
---@field public ElementName System.String @  getter
---@field public XsdElementName System.String @  getter
---@field public Namespace System.String @  getter
System.Xml.Serialization.XmlMapping = {}
---@type System.Xml.Serialization.XmlMapping
CS.System.Xml.Serialization.XmlMapping = System.Xml.Serialization.XmlMapping

---@param key System.String
---@return System.Void
function System.Xml.Serialization.XmlMapping:SetKey(key)end
---@class System.Xml.Serialization.XmlMemberMapping : System.Object
---@field public Any System.Boolean @  getter
---@field public ElementName System.String @  getter
---@field public XsdElementName System.String @  getter
---@field public Namespace System.String @  getter
---@field public MemberName System.String @  getter
---@field public TypeName System.String @  getter
---@field public TypeNamespace System.String @  getter
---@field public TypeFullName System.String @  getter
---@field public CheckSpecified System.Boolean @  getter
System.Xml.Serialization.XmlMemberMapping = {}
---@type System.Xml.Serialization.XmlMemberMapping
CS.System.Xml.Serialization.XmlMemberMapping = System.Xml.Serialization.XmlMemberMapping

---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return System.String
function System.Xml.Serialization.XmlMemberMapping:GenerateTypeName(codeProvider)end
---@class System.Xml.Serialization.XmlMembersMapping : System.Xml.Serialization.XmlMapping
---@field public TypeName System.String @  getter
---@field public TypeNamespace System.String @  getter
---@field public Item System.Xml.Serialization.XmlMemberMapping @  getter
---@field public Count System.Int32 @  getter
System.Xml.Serialization.XmlMembersMapping = {}
---@type System.Xml.Serialization.XmlMembersMapping
CS.System.Xml.Serialization.XmlMembersMapping = System.Xml.Serialization.XmlMembersMapping

---@class System.Xml.Serialization.XmlNamespaceDeclarationsAttribute : System.Attribute
System.Xml.Serialization.XmlNamespaceDeclarationsAttribute = {}
---@type System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
CS.System.Xml.Serialization.XmlNamespaceDeclarationsAttribute = System.Xml.Serialization.XmlNamespaceDeclarationsAttribute

---@class System.Xml.Serialization.XmlReflectionImporter : System.Object
System.Xml.Serialization.XmlReflectionImporter = {}
---@type System.Xml.Serialization.XmlReflectionImporter
CS.System.Xml.Serialization.XmlReflectionImporter = System.Xml.Serialization.XmlReflectionImporter

---@param provider System.Reflection.ICustomAttributeProvider
---@return System.Void
function System.Xml.Serialization.XmlReflectionImporter:IncludeTypes(provider)end
---@param type System.Type
---@return System.Void
function System.Xml.Serialization.XmlReflectionImporter:IncludeType(type)end
---@overload fun(type:System.Type, defaultNamespace:System.String):System.Xml.Serialization.XmlTypeMapping
---@overload fun(type:System.Type, root:System.Xml.Serialization.XmlRootAttribute):System.Xml.Serialization.XmlTypeMapping
---@overload fun(type:System.Type, root:System.Xml.Serialization.XmlRootAttribute, defaultNamespace:System.String):System.Xml.Serialization.XmlTypeMapping
---@param type System.Type
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlReflectionImporter:ImportTypeMapping(type)end
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, rpc:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, rpc:System.Boolean, openModel:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(elementName:System.String, ns:System.String, members:System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement:System.Boolean, rpc:System.Boolean, openModel:System.Boolean, access:System.Xml.Serialization.XmlMappingAccess):System.Xml.Serialization.XmlMembersMapping
---@param elementName System.String
---@param ns System.String
---@param members System.Xml.Serialization.XmlReflectionMember[]
---@param hasWrapperElement System.Boolean
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlReflectionImporter:ImportMembersMapping(elementName, ns, members, hasWrapperElement)end
---@class System.Xml.Serialization.XmlReflectionMember : System.Object
---@field public MemberType System.Type @ setter getter
---@field public XmlAttributes System.Xml.Serialization.XmlAttributes @ setter getter
---@field public SoapAttributes System.Xml.Serialization.SoapAttributes @ setter getter
---@field public MemberName System.String @ setter getter
---@field public IsReturnValue System.Boolean @ setter getter
---@field public OverrideIsNullable System.Boolean @ setter getter
System.Xml.Serialization.XmlReflectionMember = {}
---@type System.Xml.Serialization.XmlReflectionMember
CS.System.Xml.Serialization.XmlReflectionMember = System.Xml.Serialization.XmlReflectionMember

---@class System.Xml.Serialization.XmlRootAttribute : System.Attribute
---@field public ElementName System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public DataType System.String @ setter getter
---@field public IsNullable System.Boolean @ setter getter
System.Xml.Serialization.XmlRootAttribute = {}
---@type System.Xml.Serialization.XmlRootAttribute
CS.System.Xml.Serialization.XmlRootAttribute = System.Xml.Serialization.XmlRootAttribute

---@class System.Xml.Serialization.XmlSchemaExporter : System.Object
System.Xml.Serialization.XmlSchemaExporter = {}
---@type System.Xml.Serialization.XmlSchemaExporter
CS.System.Xml.Serialization.XmlSchemaExporter = System.Xml.Serialization.XmlSchemaExporter

---@overload fun(xmlMembersMapping:System.Xml.Serialization.XmlMembersMapping):System.Xml.XmlQualifiedName
---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
---@return System.Void
function System.Xml.Serialization.XmlSchemaExporter:ExportTypeMapping(xmlTypeMapping)end
---@overload fun(xmlMembersMapping:System.Xml.Serialization.XmlMembersMapping, exportEnclosingType:System.Boolean):System.Void
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@return System.Void
function System.Xml.Serialization.XmlSchemaExporter:ExportMembersMapping(xmlMembersMapping)end
---@overload fun(members:System.Xml.Serialization.XmlMembersMapping):System.String
---@param ns System.String
---@return System.String
function System.Xml.Serialization.XmlSchemaExporter:ExportAnyType(ns)end
---@class System.Xml.Serialization.XmlSchemaImporter : System.Xml.Serialization.SchemaImporter
System.Xml.Serialization.XmlSchemaImporter = {}
---@type System.Xml.Serialization.XmlSchemaImporter
CS.System.Xml.Serialization.XmlSchemaImporter = System.Xml.Serialization.XmlSchemaImporter

---@overload fun(name:System.Xml.XmlQualifiedName, baseType:System.Type, baseTypeCanBeIndirect:System.Boolean):System.Xml.Serialization.XmlTypeMapping
---@param name System.Xml.XmlQualifiedName
---@param baseType System.Type
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportDerivedTypeMapping(name, baseType)end
---@overload fun(typeName:System.Xml.XmlQualifiedName, baseType:System.Type):System.Xml.Serialization.XmlTypeMapping
---@overload fun(typeName:System.Xml.XmlQualifiedName, baseType:System.Type, baseTypeCanBeIndirect:System.Boolean):System.Xml.Serialization.XmlTypeMapping
---@param typeName System.Xml.XmlQualifiedName
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportSchemaType(typeName)end
---@param name System.Xml.XmlQualifiedName
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportTypeMapping(name)end
---@overload fun(names:System.Xml.XmlQualifiedName[]):System.Xml.Serialization.XmlMembersMapping
---@overload fun(names:System.Xml.XmlQualifiedName[], baseType:System.Type, baseTypeCanBeIndirect:System.Boolean):System.Xml.Serialization.XmlMembersMapping
---@overload fun(name:System.String, ns:System.String, members:System.Xml.Serialization.SoapSchemaMember[]):System.Xml.Serialization.XmlMembersMapping
---@param name System.Xml.XmlQualifiedName
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportMembersMapping(name)end
---@param typeName System.Xml.XmlQualifiedName
---@param elementName System.String
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportAnyType(typeName, elementName)end
---@class System.Xml.Serialization.XmlSchemaProviderAttribute : System.Attribute
---@field public MethodName System.String @  getter
---@field public IsAny System.Boolean @ setter getter
System.Xml.Serialization.XmlSchemaProviderAttribute = {}
---@type System.Xml.Serialization.XmlSchemaProviderAttribute
CS.System.Xml.Serialization.XmlSchemaProviderAttribute = System.Xml.Serialization.XmlSchemaProviderAttribute

---@class System.Xml.Serialization.XmlSchemas : System.Collections.CollectionBase
---@field public Item System.Xml.Schema.XmlSchema @ setter getter
---@field public Item System.Xml.Schema.XmlSchema @  getter
---@field public IsCompiled System.Boolean @  getter
System.Xml.Serialization.XmlSchemas = {}
---@type System.Xml.Serialization.XmlSchemas
CS.System.Xml.Serialization.XmlSchemas = System.Xml.Serialization.XmlSchemas

---@param ns System.String
---@return System.Collections.IList
function System.Xml.Serialization.XmlSchemas:GetSchemas(ns)end
---@overload fun(schemas:System.Xml.Serialization.XmlSchemas):System.Void
---@overload fun(schema:System.Xml.Schema.XmlSchema, baseUri:System.Uri):System.Int32
---@param schema System.Xml.Schema.XmlSchema
---@return System.Int32
function System.Xml.Serialization.XmlSchemas:Add(schema)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Void
function System.Xml.Serialization.XmlSchemas:AddReference(schema)end
---@param index System.Int32
---@param schema System.Xml.Schema.XmlSchema
---@return System.Void
function System.Xml.Serialization.XmlSchemas:Insert(index, schema)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Int32
function System.Xml.Serialization.XmlSchemas:IndexOf(schema)end
---@overload fun(targetNamespace:System.String):System.Boolean
---@param schema System.Xml.Schema.XmlSchema
---@return System.Boolean
function System.Xml.Serialization.XmlSchemas:Contains(schema)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Void
function System.Xml.Serialization.XmlSchemas:Remove(schema)end
---@param array System.Xml.Schema.XmlSchema[]
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.XmlSchemas:CopyTo(array, index)end
---@param name System.Xml.XmlQualifiedName
---@param type System.Type
---@return System.Object
function System.Xml.Serialization.XmlSchemas:Find(name, type)end
---@param schema System.Xml.Schema.XmlSchema
---@return System.Boolean
function System.Xml.Serialization.XmlSchemas.IsDataSet(schema)end
---@param handler System.Xml.Schema.ValidationEventHandler
---@param fullCompile System.Boolean
---@return System.Void
function System.Xml.Serialization.XmlSchemas:Compile(handler, fullCompile)end
---@class System.Xml.Serialization.XmlSchemaEnumerator : System.Object
---@field public Current System.Xml.Schema.XmlSchema @  getter
System.Xml.Serialization.XmlSchemaEnumerator = {}
---@type System.Xml.Serialization.XmlSchemaEnumerator
CS.System.Xml.Serialization.XmlSchemaEnumerator = System.Xml.Serialization.XmlSchemaEnumerator

---@return System.Void
function System.Xml.Serialization.XmlSchemaEnumerator:Dispose()end
---@return System.Boolean
function System.Xml.Serialization.XmlSchemaEnumerator:MoveNext()end
---@class System.Xml.Serialization.XmlSerializationGeneratedCode : System.Object
System.Xml.Serialization.XmlSerializationGeneratedCode = {}
---@type System.Xml.Serialization.XmlSerializationGeneratedCode
CS.System.Xml.Serialization.XmlSerializationGeneratedCode = System.Xml.Serialization.XmlSerializationGeneratedCode

---@class System.Xml.Serialization.XmlSerializationReader : System.Xml.Serialization.XmlSerializationGeneratedCode
System.Xml.Serialization.XmlSerializationReader = {}
---@type System.Xml.Serialization.XmlSerializationReader
CS.System.Xml.Serialization.XmlSerializationReader = System.Xml.Serialization.XmlSerializationReader

---@class System.Xml.Serialization.XmlSerializationWriter : System.Xml.Serialization.XmlSerializationGeneratedCode
System.Xml.Serialization.XmlSerializationWriter = {}
---@type System.Xml.Serialization.XmlSerializationWriter
CS.System.Xml.Serialization.XmlSerializationWriter = System.Xml.Serialization.XmlSerializationWriter

---@class System.Xml.Serialization.XmlDeserializationEvents : System.ValueType
---@field public OnUnknownNode System.Xml.Serialization.XmlNodeEventHandler @ setter getter
---@field public OnUnknownAttribute System.Xml.Serialization.XmlAttributeEventHandler @ setter getter
---@field public OnUnknownElement System.Xml.Serialization.XmlElementEventHandler @ setter getter
---@field public OnUnreferencedObject System.Xml.Serialization.UnreferencedObjectEventHandler @ setter getter
System.Xml.Serialization.XmlDeserializationEvents = {}
---@type System.Xml.Serialization.XmlDeserializationEvents
CS.System.Xml.Serialization.XmlDeserializationEvents = System.Xml.Serialization.XmlDeserializationEvents

---@class System.Xml.Serialization.XmlSerializerImplementation : System.Object
---@field public Reader System.Xml.Serialization.XmlSerializationReader @  getter
---@field public Writer System.Xml.Serialization.XmlSerializationWriter @  getter
---@field public ReadMethods System.Collections.Hashtable @  getter
---@field public WriteMethods System.Collections.Hashtable @  getter
---@field public TypedSerializers System.Collections.Hashtable @  getter
System.Xml.Serialization.XmlSerializerImplementation = {}
---@type System.Xml.Serialization.XmlSerializerImplementation
CS.System.Xml.Serialization.XmlSerializerImplementation = System.Xml.Serialization.XmlSerializerImplementation

---@param type System.Type
---@return System.Boolean
function System.Xml.Serialization.XmlSerializerImplementation:CanSerialize(type)end
---@param type System.Type
---@return System.Xml.Serialization.XmlSerializer
function System.Xml.Serialization.XmlSerializerImplementation:GetSerializer(type)end
---@class System.Xml.Serialization.XmlSerializer : System.Object
System.Xml.Serialization.XmlSerializer = {}
---@type System.Xml.Serialization.XmlSerializer
CS.System.Xml.Serialization.XmlSerializer = System.Xml.Serialization.XmlSerializer

---@overload fun(stream:System.IO.Stream, o:System.Object):System.Void
---@overload fun(xmlWriter:System.Xml.XmlWriter, o:System.Object):System.Void
---@overload fun(textWriter:System.IO.TextWriter, o:System.Object, namespaces:System.Xml.Serialization.XmlSerializerNamespaces):System.Void
---@overload fun(stream:System.IO.Stream, o:System.Object, namespaces:System.Xml.Serialization.XmlSerializerNamespaces):System.Void
---@overload fun(xmlWriter:System.Xml.XmlWriter, o:System.Object, namespaces:System.Xml.Serialization.XmlSerializerNamespaces):System.Void
---@overload fun(xmlWriter:System.Xml.XmlWriter, o:System.Object, namespaces:System.Xml.Serialization.XmlSerializerNamespaces, encodingStyle:System.String):System.Void
---@overload fun(xmlWriter:System.Xml.XmlWriter, o:System.Object, namespaces:System.Xml.Serialization.XmlSerializerNamespaces, encodingStyle:System.String, id:System.String):System.Void
---@param textWriter System.IO.TextWriter
---@param o System.Object
---@return System.Void
function System.Xml.Serialization.XmlSerializer:Serialize(textWriter, o)end
---@overload fun(textReader:System.IO.TextReader):System.Object
---@overload fun(xmlReader:System.Xml.XmlReader):System.Object
---@overload fun(xmlReader:System.Xml.XmlReader, events:System.Xml.Serialization.XmlDeserializationEvents):System.Object
---@overload fun(xmlReader:System.Xml.XmlReader, encodingStyle:System.String):System.Object
---@overload fun(xmlReader:System.Xml.XmlReader, encodingStyle:System.String, events:System.Xml.Serialization.XmlDeserializationEvents):System.Object
---@param stream System.IO.Stream
---@return System.Object
function System.Xml.Serialization.XmlSerializer:Deserialize(stream)end
---@param xmlReader System.Xml.XmlReader
---@return System.Boolean
function System.Xml.Serialization.XmlSerializer:CanDeserialize(xmlReader)end
---@overload fun(mappings:System.Xml.Serialization.XmlMapping[], type:System.Type):System.Xml.Serialization.XmlSerializer[]
---@overload fun(mappings:System.Xml.Serialization.XmlMapping[], evidence:System.Security.Policy.Evidence):System.Xml.Serialization.XmlSerializer[]
---@param mappings System.Xml.Serialization.XmlMapping[]
---@return System.Xml.Serialization.XmlSerializer[]
function System.Xml.Serialization.XmlSerializer.FromMappings(mappings)end
---@overload fun(types:System.Type[], mappings:System.Xml.Serialization.XmlMapping[], parameters:System.CodeDom.Compiler.CompilerParameters):System.Reflection.Assembly
---@param types System.Type[]
---@param mappings System.Xml.Serialization.XmlMapping[]
---@return System.Reflection.Assembly
function System.Xml.Serialization.XmlSerializer.GenerateSerializer(types, mappings)end
---@param types System.Type[]
---@return System.Xml.Serialization.XmlSerializer[]
function System.Xml.Serialization.XmlSerializer.FromTypes(types)end
---@overload fun(type:System.Type, defaultNamespace:System.String):System.String
---@param type System.Type
---@return System.String
function System.Xml.Serialization.XmlSerializer.GetXmlSerializerAssemblyName(type)end
---@param value System.Xml.Serialization.XmlNodeEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:add_UnknownNode(value)end
---@param value System.Xml.Serialization.XmlNodeEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:remove_UnknownNode(value)end
---@param value System.Xml.Serialization.XmlAttributeEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:add_UnknownAttribute(value)end
---@param value System.Xml.Serialization.XmlAttributeEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:remove_UnknownAttribute(value)end
---@param value System.Xml.Serialization.XmlElementEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:add_UnknownElement(value)end
---@param value System.Xml.Serialization.XmlElementEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:remove_UnknownElement(value)end
---@param value System.Xml.Serialization.UnreferencedObjectEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:add_UnreferencedObject(value)end
---@param value System.Xml.Serialization.UnreferencedObjectEventHandler
---@return System.Void
function System.Xml.Serialization.XmlSerializer:remove_UnreferencedObject(value)end
---@class System.Xml.Serialization.XmlSerializerAssemblyAttribute : System.Attribute
---@field public CodeBase System.String @ setter getter
---@field public AssemblyName System.String @ setter getter
System.Xml.Serialization.XmlSerializerAssemblyAttribute = {}
---@type System.Xml.Serialization.XmlSerializerAssemblyAttribute
CS.System.Xml.Serialization.XmlSerializerAssemblyAttribute = System.Xml.Serialization.XmlSerializerAssemblyAttribute

---@class System.Xml.Serialization.XmlSerializerFactory : System.Object
System.Xml.Serialization.XmlSerializerFactory = {}
---@type System.Xml.Serialization.XmlSerializerFactory
CS.System.Xml.Serialization.XmlSerializerFactory = System.Xml.Serialization.XmlSerializerFactory

---@overload fun(type:System.Type):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, root:System.Xml.Serialization.XmlRootAttribute):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, extraTypes:System.Type[]):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, overrides:System.Xml.Serialization.XmlAttributeOverrides):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, defaultNamespace:System.String):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, overrides:System.Xml.Serialization.XmlAttributeOverrides, extraTypes:System.Type[], root:System.Xml.Serialization.XmlRootAttribute, defaultNamespace:System.String):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, overrides:System.Xml.Serialization.XmlAttributeOverrides, extraTypes:System.Type[], root:System.Xml.Serialization.XmlRootAttribute, defaultNamespace:System.String, location:System.String):System.Xml.Serialization.XmlSerializer
---@overload fun(type:System.Type, overrides:System.Xml.Serialization.XmlAttributeOverrides, extraTypes:System.Type[], root:System.Xml.Serialization.XmlRootAttribute, defaultNamespace:System.String, location:System.String, evidence:System.Security.Policy.Evidence):System.Xml.Serialization.XmlSerializer
---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
---@return System.Xml.Serialization.XmlSerializer
function System.Xml.Serialization.XmlSerializerFactory:CreateSerializer(xmlTypeMapping)end
---@class System.Xml.Serialization.XmlSerializerNamespaces : System.Object
---@field public Count System.Int32 @  getter
System.Xml.Serialization.XmlSerializerNamespaces = {}
---@type System.Xml.Serialization.XmlSerializerNamespaces
CS.System.Xml.Serialization.XmlSerializerNamespaces = System.Xml.Serialization.XmlSerializerNamespaces

---@param prefix System.String
---@param ns System.String
---@return System.Void
function System.Xml.Serialization.XmlSerializerNamespaces:Add(prefix, ns)end
---@return System.Xml.XmlQualifiedName[]
function System.Xml.Serialization.XmlSerializerNamespaces:ToArray()end
---@class System.Xml.Serialization.XmlSerializerVersionAttribute : System.Attribute
---@field public ParentAssemblyId System.String @ setter getter
---@field public Version System.String @ setter getter
---@field public Namespace System.String @ setter getter
---@field public Type System.Type @ setter getter
System.Xml.Serialization.XmlSerializerVersionAttribute = {}
---@type System.Xml.Serialization.XmlSerializerVersionAttribute
CS.System.Xml.Serialization.XmlSerializerVersionAttribute = System.Xml.Serialization.XmlSerializerVersionAttribute

---@class System.Xml.Serialization.XmlTextAttribute : System.Attribute
---@field public Type System.Type @ setter getter
---@field public DataType System.String @ setter getter
System.Xml.Serialization.XmlTextAttribute = {}
---@type System.Xml.Serialization.XmlTextAttribute
CS.System.Xml.Serialization.XmlTextAttribute = System.Xml.Serialization.XmlTextAttribute

---@class System.Xml.Serialization.XmlTypeAttribute : System.Attribute
---@field public AnonymousType System.Boolean @ setter getter
---@field public IncludeInSchema System.Boolean @ setter getter
---@field public TypeName System.String @ setter getter
---@field public Namespace System.String @ setter getter
System.Xml.Serialization.XmlTypeAttribute = {}
---@type System.Xml.Serialization.XmlTypeAttribute
CS.System.Xml.Serialization.XmlTypeAttribute = System.Xml.Serialization.XmlTypeAttribute

---@class System.Xml.Serialization.XmlTypeMapping : System.Xml.Serialization.XmlMapping
---@field public TypeName System.String @  getter
---@field public TypeFullName System.String @  getter
---@field public XsdTypeName System.String @  getter
---@field public XsdTypeNamespace System.String @  getter
System.Xml.Serialization.XmlTypeMapping = {}
---@type System.Xml.Serialization.XmlTypeMapping
CS.System.Xml.Serialization.XmlTypeMapping = System.Xml.Serialization.XmlTypeMapping

---@class System.Xml.Serialization.XmlAttributeEventArgs : System.EventArgs
---@field public ObjectBeingDeserialized System.Object @  getter
---@field public Attr System.Xml.XmlAttribute @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public ExpectedAttributes System.String @  getter
System.Xml.Serialization.XmlAttributeEventArgs = {}
---@type System.Xml.Serialization.XmlAttributeEventArgs
CS.System.Xml.Serialization.XmlAttributeEventArgs = System.Xml.Serialization.XmlAttributeEventArgs

---@class System.Xml.Serialization.XmlElementEventArgs : System.EventArgs
---@field public ObjectBeingDeserialized System.Object @  getter
---@field public Element System.Xml.XmlElement @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public ExpectedElements System.String @  getter
System.Xml.Serialization.XmlElementEventArgs = {}
---@type System.Xml.Serialization.XmlElementEventArgs
CS.System.Xml.Serialization.XmlElementEventArgs = System.Xml.Serialization.XmlElementEventArgs

---@class System.Xml.Serialization.XmlNodeEventArgs : System.EventArgs
---@field public ObjectBeingDeserialized System.Object @  getter
---@field public NodeType System.Xml.XmlNodeType @  getter
---@field public Name System.String @  getter
---@field public LocalName System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Text System.String @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
System.Xml.Serialization.XmlNodeEventArgs = {}
---@type System.Xml.Serialization.XmlNodeEventArgs
CS.System.Xml.Serialization.XmlNodeEventArgs = System.Xml.Serialization.XmlNodeEventArgs

---@class System.Xml.Serialization.UnreferencedObjectEventArgs : System.EventArgs
---@field public UnreferencedObject System.Object @  getter
---@field public UnreferencedId System.String @  getter
System.Xml.Serialization.UnreferencedObjectEventArgs = {}
---@type System.Xml.Serialization.UnreferencedObjectEventArgs
CS.System.Xml.Serialization.UnreferencedObjectEventArgs = System.Xml.Serialization.UnreferencedObjectEventArgs

