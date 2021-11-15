---@class System.Xml.XPath.XPathDocument : System.Object
System.Xml.XPath.XPathDocument = {}
---@type System.Xml.XPath.XPathDocument
CS.System.Xml.XPath.XPathDocument = System.Xml.XPath.XPathDocument

---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathDocument:CreateNavigator()end
---@class System.Xml.XPath.XPathException : System.SystemException
---@field public Message System.String @  getter
System.Xml.XPath.XPathException = {}
---@type System.Xml.XPath.XPathException
CS.System.Xml.XPath.XPathException = System.Xml.XPath.XPathException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Xml.XPath.XPathException:GetObjectData(info, context)end
---@class System.Xml.XPath.XmlSortOrder : System.Enum
System.Xml.XPath.XmlSortOrder = {}
---@type System.Xml.XPath.XmlSortOrder
CS.System.Xml.XPath.XmlSortOrder = System.Xml.XPath.XmlSortOrder

---@return System.Int32 value:1
System.Xml.XPath.XmlSortOrder.Ascending = 1

---@class System.Xml.XPath.XmlCaseOrder : System.Enum
System.Xml.XPath.XmlCaseOrder = {}
---@type System.Xml.XPath.XmlCaseOrder
CS.System.Xml.XPath.XmlCaseOrder = System.Xml.XPath.XmlCaseOrder

---@return System.Int32 value:0
System.Xml.XPath.XmlCaseOrder.None = 0
---@return System.Int32 value:1
System.Xml.XPath.XmlCaseOrder.UpperFirst = 1
---@return System.Int32 value:2
System.Xml.XPath.XmlCaseOrder.LowerFirst = 2

---@class System.Xml.XPath.XmlDataType : System.Enum
System.Xml.XPath.XmlDataType = {}
---@type System.Xml.XPath.XmlDataType
CS.System.Xml.XPath.XmlDataType = System.Xml.XPath.XmlDataType

---@return System.Int32 value:1
System.Xml.XPath.XmlDataType.Text = 1

---@class System.Xml.XPath.XPathResultType : System.Enum
System.Xml.XPath.XPathResultType = {}
---@type System.Xml.XPath.XPathResultType
CS.System.Xml.XPath.XPathResultType = System.Xml.XPath.XPathResultType

---@return System.Int32 value:0
System.Xml.XPath.XPathResultType.Number = 0
---@return System.Int32 value:1
System.Xml.XPath.XPathResultType.String = 1
---@return System.Int32 value:2
System.Xml.XPath.XPathResultType.Boolean = 2
---@return System.Int32 value:3
System.Xml.XPath.XPathResultType.NodeSet = 3
---@return System.Int32 value:5
System.Xml.XPath.XPathResultType.Any = 5
---@return System.Int32 value:6
System.Xml.XPath.XPathResultType.Error = 6

---@class System.Xml.XPath.XPathExpression : System.Object
---@field public Expression System.String @  getter
---@field public ReturnType System.Xml.XPath.XPathResultType @  getter
System.Xml.XPath.XPathExpression = {}
---@type System.Xml.XPath.XPathExpression
CS.System.Xml.XPath.XPathExpression = System.Xml.XPath.XPathExpression

---@overload fun(expr:System.Object, order:System.Xml.XPath.XmlSortOrder, caseOrder:System.Xml.XPath.XmlCaseOrder, lang:System.String, dataType:System.Xml.XPath.XmlDataType):System.Void
---@param expr System.Object
---@param comparer System.Collections.IComparer
---@return System.Void
function System.Xml.XPath.XPathExpression:AddSort(expr, comparer)end
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathExpression:Clone()end
---@overload fun(nsResolver:System.Xml.IXmlNamespaceResolver):System.Void
---@param nsManager System.Xml.XmlNamespaceManager
---@return System.Void
function System.Xml.XPath.XPathExpression:SetContext(nsManager)end
---@overload fun(xpath:System.String, nsResolver:System.Xml.IXmlNamespaceResolver):System.Xml.XPath.XPathExpression
---@param xpath System.String
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathExpression.Compile(xpath)end
---@class System.Xml.XPath.XPathItem : System.Object
---@field public IsNode System.Boolean @  getter
---@field public XmlType System.Xml.Schema.XmlSchemaType @  getter
---@field public Value System.String @  getter
---@field public TypedValue System.Object @  getter
---@field public ValueType System.Type @  getter
---@field public ValueAsBoolean System.Boolean @  getter
---@field public ValueAsDateTime System.DateTime @  getter
---@field public ValueAsDouble System.Double @  getter
---@field public ValueAsInt System.Int32 @  getter
---@field public ValueAsLong System.Int64 @  getter
System.Xml.XPath.XPathItem = {}
---@type System.Xml.XPath.XPathItem
CS.System.Xml.XPath.XPathItem = System.Xml.XPath.XPathItem

---@overload fun(returnType:System.Type, nsResolver:System.Xml.IXmlNamespaceResolver):System.Object
---@param returnType System.Type
---@return System.Object
function System.Xml.XPath.XPathItem:ValueAs(returnType)end
---@class System.Xml.XPath.XPathNamespaceScope : System.Enum
System.Xml.XPath.XPathNamespaceScope = {}
---@type System.Xml.XPath.XPathNamespaceScope
CS.System.Xml.XPath.XPathNamespaceScope = System.Xml.XPath.XPathNamespaceScope

---@return System.Int32 value:0
System.Xml.XPath.XPathNamespaceScope.All = 0
---@return System.Int32 value:1
System.Xml.XPath.XPathNamespaceScope.ExcludeXml = 1
---@return System.Int32 value:2
System.Xml.XPath.XPathNamespaceScope.Local = 2

---@class System.Xml.XPath.XPathNavigator : System.Xml.XPath.XPathItem
---@field public IsNode System.Boolean @  getter
---@field public XmlType System.Xml.Schema.XmlSchemaType @  getter
---@field public TypedValue System.Object @  getter
---@field public ValueType System.Type @  getter
---@field public ValueAsBoolean System.Boolean @  getter
---@field public ValueAsDateTime System.DateTime @  getter
---@field public ValueAsDouble System.Double @  getter
---@field public ValueAsInt System.Int32 @  getter
---@field public ValueAsLong System.Int64 @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public NavigatorComparer System.Collections.IEqualityComparer @static  getter
---@field public NodeType System.Xml.XPath.XPathNodeType @  getter
---@field public LocalName System.String @  getter
---@field public Name System.String @  getter
---@field public NamespaceURI System.String @  getter
---@field public Prefix System.String @  getter
---@field public BaseURI System.String @  getter
---@field public IsEmptyElement System.Boolean @  getter
---@field public XmlLang System.String @  getter
---@field public UnderlyingObject System.Object @  getter
---@field public HasAttributes System.Boolean @  getter
---@field public HasChildren System.Boolean @  getter
---@field public SchemaInfo System.Xml.Schema.IXmlSchemaInfo @  getter
---@field public CanEdit System.Boolean @  getter
---@field public OuterXml System.String @ setter getter
---@field public InnerXml System.String @ setter getter
System.Xml.XPath.XPathNavigator = {}
---@type System.Xml.XPath.XPathNavigator
CS.System.Xml.XPath.XPathNavigator = System.Xml.XPath.XPathNavigator

---@return System.String
function System.Xml.XPath.XPathNavigator:ToString()end
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:SetValue(value)end
---@param typedValue System.Object
---@return System.Void
function System.Xml.XPath.XPathNavigator:SetTypedValue(typedValue)end
---@param returnType System.Type
---@param nsResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XPath.XPathNavigator:ValueAs(returnType, nsResolver)end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:CreateNavigator()end
---@param prefix System.String
---@return System.String
function System.Xml.XPath.XPathNavigator:LookupNamespace(prefix)end
---@param namespaceURI System.String
---@return System.String
function System.Xml.XPath.XPathNavigator:LookupPrefix(namespaceURI)end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XPath.XPathNavigator:GetNamespacesInScope(scope)end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:Clone()end
---@return System.Xml.XmlReader
function System.Xml.XPath.XPathNavigator:ReadSubtree()end
---@param writer System.Xml.XmlWriter
---@return System.Void
function System.Xml.XPath.XPathNavigator:WriteSubtree(writer)end
---@param localName System.String
---@param namespaceURI System.String
---@return System.String
function System.Xml.XPath.XPathNavigator:GetAttribute(localName, namespaceURI)end
---@param localName System.String
---@param namespaceURI System.String
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToAttribute(localName, namespaceURI)end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstAttribute()end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToNextAttribute()end
---@param name System.String
---@return System.String
function System.Xml.XPath.XPathNavigator:GetNamespace(name)end
---@param name System.String
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToNamespace(name)end
---@overload fun(namespaceScope:System.Xml.XPath.XPathNamespaceScope):System.Boolean
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstNamespace()end
---@overload fun(namespaceScope:System.Xml.XPath.XPathNamespaceScope):System.Boolean
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToNextNamespace()end
---@overload fun(type:System.Xml.XPath.XPathNodeType):System.Boolean
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToNext()end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToPrevious()end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToFirst()end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstChild()end
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToParent()end
---@return System.Void
function System.Xml.XPath.XPathNavigator:MoveToRoot()end
---@param other System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveTo(other)end
---@param id System.String
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToId(id)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@param type System.Xml.XPath.XPathNodeType
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToChild(type)end
---@overload fun(localName:System.String, namespaceURI:System.String):System.Boolean
---@overload fun(type:System.Xml.XPath.XPathNodeType, _end:System.Xml.XPath.XPathNavigator):System.Boolean
---@overload fun(localName:System.String, namespaceURI:System.String, _end:System.Xml.XPath.XPathNavigator):System.Boolean
---@param type System.Xml.XPath.XPathNodeType
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:MoveToFollowing(type)end
---@param other System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:IsSamePosition(other)end
---@param nav System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:IsDescendant(nav)end
---@param nav System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlNodeOrder
function System.Xml.XPath.XPathNavigator:ComparePosition(nav)end
---@param schemas System.Xml.Schema.XmlSchemaSet
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:CheckValidity(schemas, validationEventHandler)end
---@param xpath System.String
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathNavigator:Compile(xpath)end
---@overload fun(expression:System.Xml.XPath.XPathExpression):System.Xml.XPath.XPathNavigator
---@overload fun(xpath:System.String, resolver:System.Xml.IXmlNamespaceResolver):System.Xml.XPath.XPathNavigator
---@param xpath System.String
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:SelectSingleNode(xpath)end
---@overload fun(expr:System.Xml.XPath.XPathExpression):System.Xml.XPath.XPathNodeIterator
---@overload fun(xpath:System.String, resolver:System.Xml.IXmlNamespaceResolver):System.Xml.XPath.XPathNodeIterator
---@param xpath System.String
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:Select(xpath)end
---@overload fun(expr:System.Xml.XPath.XPathExpression):System.Object
---@overload fun(xpath:System.String, resolver:System.Xml.IXmlNamespaceResolver):System.Object
---@overload fun(expr:System.Xml.XPath.XPathExpression, context:System.Xml.XPath.XPathNodeIterator):System.Object
---@param xpath System.String
---@return System.Object
function System.Xml.XPath.XPathNavigator:Evaluate(xpath)end
---@overload fun(xpath:System.String):System.Boolean
---@param expr System.Xml.XPath.XPathExpression
---@return System.Boolean
function System.Xml.XPath.XPathNavigator:Matches(expr)end
---@overload fun(name:System.String, namespaceURI:System.String):System.Xml.XPath.XPathNodeIterator
---@param type System.Xml.XPath.XPathNodeType
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectChildren(type)end
---@overload fun(name:System.String, namespaceURI:System.String, matchSelf:System.Boolean):System.Xml.XPath.XPathNodeIterator
---@param type System.Xml.XPath.XPathNodeType
---@param matchSelf System.Boolean
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectAncestors(type, matchSelf)end
---@overload fun(name:System.String, namespaceURI:System.String, matchSelf:System.Boolean):System.Xml.XPath.XPathNodeIterator
---@param type System.Xml.XPath.XPathNodeType
---@param matchSelf System.Boolean
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectDescendants(type, matchSelf)end
---@overload fun(newChild:System.String):System.Void
---@overload fun(newChild:System.Xml.XmlReader):System.Void
---@overload fun(newChild:System.Xml.XPath.XPathNavigator):System.Void
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:PrependChild()end
---@overload fun(newChild:System.String):System.Void
---@overload fun(newChild:System.Xml.XmlReader):System.Void
---@overload fun(newChild:System.Xml.XPath.XPathNavigator):System.Void
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:AppendChild()end
---@overload fun(newSibling:System.String):System.Void
---@overload fun(newSibling:System.Xml.XmlReader):System.Void
---@overload fun(newSibling:System.Xml.XPath.XPathNavigator):System.Void
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:InsertAfter()end
---@overload fun(newSibling:System.String):System.Void
---@overload fun(newSibling:System.Xml.XmlReader):System.Void
---@overload fun(newSibling:System.Xml.XPath.XPathNavigator):System.Void
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:InsertBefore()end
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:CreateAttributes()end
---@param lastSiblingToReplace System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:ReplaceRange(lastSiblingToReplace)end
---@overload fun(newNode:System.Xml.XmlReader):System.Void
---@overload fun(newNode:System.Xml.XPath.XPathNavigator):System.Void
---@param newNode System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:ReplaceSelf(newNode)end
---@param lastSiblingToDelete System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.XPath.XPathNavigator:DeleteRange(lastSiblingToDelete)end
---@return System.Void
function System.Xml.XPath.XPathNavigator:DeleteSelf()end
---@param prefix System.String
---@param localName System.String
---@param namespaceURI System.String
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:PrependChildElement(prefix, localName, namespaceURI, value)end
---@param prefix System.String
---@param localName System.String
---@param namespaceURI System.String
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:AppendChildElement(prefix, localName, namespaceURI, value)end
---@param prefix System.String
---@param localName System.String
---@param namespaceURI System.String
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:InsertElementBefore(prefix, localName, namespaceURI, value)end
---@param prefix System.String
---@param localName System.String
---@param namespaceURI System.String
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:InsertElementAfter(prefix, localName, namespaceURI, value)end
---@param prefix System.String
---@param localName System.String
---@param namespaceURI System.String
---@param value System.String
---@return System.Void
function System.Xml.XPath.XPathNavigator:CreateAttribute(prefix, localName, namespaceURI, value)end
---@class System.Xml.XPath.XPathNodeIterator : System.Object
---@field public Current System.Xml.XPath.XPathNavigator @  getter
---@field public CurrentPosition System.Int32 @  getter
---@field public Count System.Int32 @  getter
System.Xml.XPath.XPathNodeIterator = {}
---@type System.Xml.XPath.XPathNodeIterator
CS.System.Xml.XPath.XPathNodeIterator = System.Xml.XPath.XPathNodeIterator

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNodeIterator:Clone()end
---@return System.Boolean
function System.Xml.XPath.XPathNodeIterator:MoveNext()end
---@return System.Collections.IEnumerator
function System.Xml.XPath.XPathNodeIterator:GetEnumerator()end
---@class System.Xml.XPath.XPathNodeType : System.Enum
System.Xml.XPath.XPathNodeType = {}
---@type System.Xml.XPath.XPathNodeType
CS.System.Xml.XPath.XPathNodeType = System.Xml.XPath.XPathNodeType

---@return System.Int32 value:0
System.Xml.XPath.XPathNodeType.Root = 0
---@return System.Int32 value:1
System.Xml.XPath.XPathNodeType.Element = 1
---@return System.Int32 value:2
System.Xml.XPath.XPathNodeType.Attribute = 2
---@return System.Int32 value:3
System.Xml.XPath.XPathNodeType.Namespace = 3
---@return System.Int32 value:4
System.Xml.XPath.XPathNodeType.Text = 4
---@return System.Int32 value:5
System.Xml.XPath.XPathNodeType.SignificantWhitespace = 5
---@return System.Int32 value:6
System.Xml.XPath.XPathNodeType.Whitespace = 6
---@return System.Int32 value:7
System.Xml.XPath.XPathNodeType.ProcessingInstruction = 7
---@return System.Int32 value:8
System.Xml.XPath.XPathNodeType.Comment = 8
---@return System.Int32 value:9
System.Xml.XPath.XPathNodeType.All = 9

