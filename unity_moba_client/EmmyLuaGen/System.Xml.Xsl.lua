---@class System.Xml.Xsl.XslCompiledTransform : System.Object
---@field public OutputSettings System.Xml.XmlWriterSettings @  getter
---@field public TemporaryFiles System.CodeDom.Compiler.TempFileCollection @  getter
System.Xml.Xsl.XslCompiledTransform = {}
---@type System.Xml.Xsl.XslCompiledTransform
CS.System.Xml.Xsl.XslCompiledTransform = System.Xml.Xsl.XslCompiledTransform

---@overload fun(stylesheet:System.Xml.XPath.IXPathNavigable):System.Void
---@overload fun(stylesheetUri:System.String):System.Void
---@overload fun(compiledStylesheet:System.Type):System.Void
---@overload fun(stylesheet:System.Xml.XmlReader, settings:System.Xml.Xsl.XsltSettings, stylesheetResolver:System.Xml.XmlResolver):System.Void
---@overload fun(stylesheet:System.Xml.XPath.IXPathNavigable, settings:System.Xml.Xsl.XsltSettings, stylesheetResolver:System.Xml.XmlResolver):System.Void
---@overload fun(stylesheetUri:System.String, settings:System.Xml.Xsl.XsltSettings, stylesheetResolver:System.Xml.XmlResolver):System.Void
---@overload fun(executeMethod:System.Reflection.MethodInfo, queryData:System.Byte[], earlyBoundTypes:System.Type[]):System.Void
---@param stylesheet System.Xml.XmlReader
---@return System.Void
function System.Xml.Xsl.XslCompiledTransform:Load(stylesheet)end
---@param stylesheet System.Xml.XmlReader
---@param settings System.Xml.Xsl.XsltSettings
---@param stylesheetResolver System.Xml.XmlResolver
---@param debug System.Boolean
---@param typeBuilder System.Reflection.Emit.TypeBuilder
---@param scriptAssemblyPath System.String
---@return System.CodeDom.Compiler.CompilerErrorCollection
function System.Xml.Xsl.XslCompiledTransform.CompileToType(stylesheet, settings, stylesheetResolver, debug, typeBuilder, scriptAssemblyPath)end
---@overload fun(input:System.Xml.XmlReader, results:System.Xml.XmlWriter):System.Void
---@overload fun(inputUri:System.String, results:System.Xml.XmlWriter):System.Void
---@overload fun(inputUri:System.String, resultsFile:System.String):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, arguments:System.Xml.Xsl.XsltArgumentList, results:System.Xml.XmlWriter):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.TextWriter):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.Stream):System.Void
---@overload fun(input:System.Xml.XmlReader, arguments:System.Xml.Xsl.XsltArgumentList, results:System.Xml.XmlWriter):System.Void
---@overload fun(input:System.Xml.XmlReader, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.TextWriter):System.Void
---@overload fun(input:System.Xml.XmlReader, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.Stream):System.Void
---@overload fun(inputUri:System.String, arguments:System.Xml.Xsl.XsltArgumentList, results:System.Xml.XmlWriter):System.Void
---@overload fun(inputUri:System.String, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.TextWriter):System.Void
---@overload fun(inputUri:System.String, arguments:System.Xml.Xsl.XsltArgumentList, results:System.IO.Stream):System.Void
---@overload fun(input:System.Xml.XmlReader, arguments:System.Xml.Xsl.XsltArgumentList, results:System.Xml.XmlWriter, documentResolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, arguments:System.Xml.Xsl.XsltArgumentList, results:System.Xml.XmlWriter, documentResolver:System.Xml.XmlResolver):System.Void
---@param input System.Xml.XPath.IXPathNavigable
---@param results System.Xml.XmlWriter
---@return System.Void
function System.Xml.Xsl.XslCompiledTransform:Transform(input, results)end
---@class System.Xml.Xsl.XslTransform : System.Object
---@field public XmlResolver System.Xml.XmlResolver @ setter 
System.Xml.Xsl.XslTransform = {}
---@type System.Xml.Xsl.XslTransform
CS.System.Xml.Xsl.XslTransform = System.Xml.Xsl.XslTransform

---@overload fun(stylesheet:System.Xml.XPath.IXPathNavigable):System.Void
---@overload fun(stylesheet:System.Xml.XPath.XPathNavigator):System.Void
---@overload fun(url:System.String):System.Void
---@overload fun(stylesheet:System.Xml.XmlReader, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(stylesheet:System.Xml.XPath.IXPathNavigable, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(stylesheet:System.Xml.XPath.XPathNavigator, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(url:System.String, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(stylesheet:System.Xml.XPath.IXPathNavigable, resolver:System.Xml.XmlResolver, evidence:System.Security.Policy.Evidence):System.Void
---@overload fun(stylesheet:System.Xml.XmlReader, resolver:System.Xml.XmlResolver, evidence:System.Security.Policy.Evidence):System.Void
---@overload fun(stylesheet:System.Xml.XPath.XPathNavigator, resolver:System.Xml.XmlResolver, evidence:System.Security.Policy.Evidence):System.Void
---@param stylesheet System.Xml.XmlReader
---@return System.Void
function System.Xml.Xsl.XslTransform:Load(stylesheet)end
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList):System.Xml.XmlReader
---@overload fun(inputfile:System.String, outputfile:System.String):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, resolver:System.Xml.XmlResolver):System.Xml.XmlReader
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.Xml.XmlWriter):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.Stream):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.TextWriter):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, resolver:System.Xml.XmlResolver):System.Xml.XmlReader
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.TextWriter):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.Stream):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.Xml.XmlWriter):System.Void
---@overload fun(inputfile:System.String, outputfile:System.String, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.Xml.XmlWriter, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.Stream, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.XPathNavigator, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.TextWriter, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.TextWriter, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.IO.Stream, resolver:System.Xml.XmlResolver):System.Void
---@overload fun(input:System.Xml.XPath.IXPathNavigable, args:System.Xml.Xsl.XsltArgumentList, output:System.Xml.XmlWriter, resolver:System.Xml.XmlResolver):System.Void
---@param input System.Xml.XPath.XPathNavigator
---@param args System.Xml.Xsl.XsltArgumentList
---@return System.Xml.XmlReader
function System.Xml.Xsl.XslTransform:Transform(input, args)end
---@class System.Xml.Xsl.XsltMessageEncounteredEventArgs : System.EventArgs
---@field public Message System.String @  getter
System.Xml.Xsl.XsltMessageEncounteredEventArgs = {}
---@type System.Xml.Xsl.XsltMessageEncounteredEventArgs
CS.System.Xml.Xsl.XsltMessageEncounteredEventArgs = System.Xml.Xsl.XsltMessageEncounteredEventArgs

---@class System.Xml.Xsl.XsltArgumentList : System.Object
System.Xml.Xsl.XsltArgumentList = {}
---@type System.Xml.Xsl.XsltArgumentList
CS.System.Xml.Xsl.XsltArgumentList = System.Xml.Xsl.XsltArgumentList

---@param name System.String
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:GetParam(name, namespaceUri)end
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:GetExtensionObject(namespaceUri)end
---@param name System.String
---@param namespaceUri System.String
---@param parameter System.Object
---@return System.Void
function System.Xml.Xsl.XsltArgumentList:AddParam(name, namespaceUri, parameter)end
---@param namespaceUri System.String
---@param extension System.Object
---@return System.Void
function System.Xml.Xsl.XsltArgumentList:AddExtensionObject(namespaceUri, extension)end
---@param name System.String
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:RemoveParam(name, namespaceUri)end
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:RemoveExtensionObject(namespaceUri)end
---@param value System.Xml.Xsl.XsltMessageEncounteredEventHandler
---@return System.Void
function System.Xml.Xsl.XsltArgumentList:add_XsltMessageEncountered(value)end
---@param value System.Xml.Xsl.XsltMessageEncounteredEventHandler
---@return System.Void
function System.Xml.Xsl.XsltArgumentList:remove_XsltMessageEncountered(value)end
---@return System.Void
function System.Xml.Xsl.XsltArgumentList:Clear()end
---@class System.Xml.Xsl.XsltContext : System.Xml.XmlNamespaceManager
---@field public Whitespace System.Boolean @  getter
System.Xml.Xsl.XsltContext = {}
---@type System.Xml.Xsl.XsltContext
CS.System.Xml.Xsl.XsltContext = System.Xml.Xsl.XsltContext

---@param prefix System.String
---@param name System.String
---@return System.Xml.Xsl.IXsltContextVariable
function System.Xml.Xsl.XsltContext:ResolveVariable(prefix, name)end
---@param prefix System.String
---@param name System.String
---@param ArgTypes System.Xml.XPath.XPathResultType[]
---@return System.Xml.Xsl.IXsltContextFunction
function System.Xml.Xsl.XsltContext:ResolveFunction(prefix, name, ArgTypes)end
---@param node System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.XsltContext:PreserveWhitespace(node)end
---@param baseUri System.String
---@param nextbaseUri System.String
---@return System.Int32
function System.Xml.Xsl.XsltContext:CompareDocument(baseUri, nextbaseUri)end
---@class System.Xml.Xsl.XsltException : System.SystemException
---@field public SourceUri System.String @  getter
---@field public LineNumber System.Int32 @  getter
---@field public LinePosition System.Int32 @  getter
---@field public Message System.String @  getter
System.Xml.Xsl.XsltException = {}
---@type System.Xml.Xsl.XsltException
CS.System.Xml.Xsl.XsltException = System.Xml.Xsl.XsltException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.Xsl.XsltException:GetObjectData(info, context)end
---@class System.Xml.Xsl.XsltCompileException : System.Xml.Xsl.XsltException
System.Xml.Xsl.XsltCompileException = {}
---@type System.Xml.Xsl.XsltCompileException
CS.System.Xml.Xsl.XsltCompileException = System.Xml.Xsl.XsltCompileException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.Xsl.XsltCompileException:GetObjectData(info, context)end
---@class System.Xml.Xsl.XsltSettings : System.Object
---@field public Default System.Xml.Xsl.XsltSettings @static  getter
---@field public TrustedXslt System.Xml.Xsl.XsltSettings @static  getter
---@field public EnableDocumentFunction System.Boolean @ setter getter
---@field public EnableScript System.Boolean @ setter getter
System.Xml.Xsl.XsltSettings = {}
---@type System.Xml.Xsl.XsltSettings
CS.System.Xml.Xsl.XsltSettings = System.Xml.Xsl.XsltSettings

