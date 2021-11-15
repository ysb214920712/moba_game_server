---@class System.Xml.Serialization.Advanced.SchemaImporterExtension : System.Object
System.Xml.Serialization.Advanced.SchemaImporterExtension = {}
---@type System.Xml.Serialization.Advanced.SchemaImporterExtension
CS.System.Xml.Serialization.Advanced.SchemaImporterExtension = System.Xml.Serialization.Advanced.SchemaImporterExtension

---@overload fun(name:System.String, ns:System.String, context:System.Xml.Schema.XmlSchemaObject, schemas:System.Xml.Serialization.XmlSchemas, importer:System.Xml.Serialization.XmlSchemaImporter, compileUnit:System.CodeDom.CodeCompileUnit, mainNamespace:System.CodeDom.CodeNamespace, options:System.Xml.Serialization.CodeGenerationOptions, codeProvider:System.CodeDom.Compiler.CodeDomProvider):System.String
---@param type System.Xml.Schema.XmlSchemaType
---@param context System.Xml.Schema.XmlSchemaObject
---@param schemas System.Xml.Serialization.XmlSchemas
---@param importer System.Xml.Serialization.XmlSchemaImporter
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param mainNamespace System.CodeDom.CodeNamespace
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return System.String
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportSchemaType(type, context, schemas, importer, compileUnit, mainNamespace, options, codeProvider)end
---@param any System.Xml.Schema.XmlSchemaAny
---@param mixed System.Boolean
---@param schemas System.Xml.Serialization.XmlSchemas
---@param importer System.Xml.Serialization.XmlSchemaImporter
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param mainNamespace System.CodeDom.CodeNamespace
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return System.String
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportAnyElement(any, mixed, schemas, importer, compileUnit, mainNamespace, options, codeProvider)end
---@param value System.String
---@param type System.String
---@return System.CodeDom.CodeExpression
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportDefaultValue(value, type)end
---@class System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection : System.Collections.CollectionBase
---@field public Item System.Xml.Serialization.Advanced.SchemaImporterExtension @ setter getter
System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection = {}
---@type System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
CS.System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection = System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection

---@overload fun(name:System.String, type:System.Type):System.Int32
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return System.Int32
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Add(extension)end
---@overload fun(extension:System.Xml.Serialization.Advanced.SchemaImporterExtension):System.Void
---@param name System.String
---@return System.Void
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Remove(name)end
---@return System.Void
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Clear()end
---@param index System.Int32
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return System.Void
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Insert(index, extension)end
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return System.Int32
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:IndexOf(extension)end
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return System.Boolean
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Contains(extension)end
---@param array System.Xml.Serialization.Advanced.SchemaImporterExtension[]
---@param index System.Int32
---@return System.Void
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:CopyTo(array, index)end
