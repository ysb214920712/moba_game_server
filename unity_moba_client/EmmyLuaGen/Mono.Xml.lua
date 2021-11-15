---@class Mono.Xml.MiniParser : System.Object
Mono.Xml.MiniParser = {}
---@type Mono.Xml.MiniParser
CS.Mono.Xml.MiniParser = Mono.Xml.MiniParser

---@return System.Void
function Mono.Xml.MiniParser:Reset()end
---@param reader Mono.Xml.MiniParser.IReader
---@param handler Mono.Xml.MiniParser.IHandler
---@return System.Void
function Mono.Xml.MiniParser:Parse(reader, handler)end
---@class Mono.Xml.SecurityParser : Mono.Xml.MiniParser
Mono.Xml.SecurityParser = {}
---@type Mono.Xml.SecurityParser
CS.Mono.Xml.SecurityParser = Mono.Xml.SecurityParser

---@param xml System.String
---@return System.Void
function Mono.Xml.SecurityParser:LoadXml(xml)end
---@return System.Security.SecurityElement
function Mono.Xml.SecurityParser:ToXml()end
---@return System.Int32
function Mono.Xml.SecurityParser:Read()end
---@param parser Mono.Xml.MiniParser
---@return System.Void
function Mono.Xml.SecurityParser:OnStartParsing(parser)end
---@param name System.String
---@param attrs Mono.Xml.MiniParser.IAttrList
---@return System.Void
function Mono.Xml.SecurityParser:OnStartElement(name, attrs)end
---@param name System.String
---@return System.Void
function Mono.Xml.SecurityParser:OnEndElement(name)end
---@param ch System.String
---@return System.Void
function Mono.Xml.SecurityParser:OnChars(ch)end
---@param parser Mono.Xml.MiniParser
---@return System.Void
function Mono.Xml.SecurityParser:OnEndParsing(parser)end
---@class Mono.Xml.MiniParser.HandlerAdapter : System.Object
Mono.Xml.MiniParser.HandlerAdapter = {}
---@type Mono.Xml.MiniParser.HandlerAdapter
CS.Mono.Xml.MiniParser.HandlerAdapter = Mono.Xml.MiniParser.HandlerAdapter

---@param parser Mono.Xml.MiniParser
---@return System.Void
function Mono.Xml.MiniParser.HandlerAdapter:OnStartParsing(parser)end
---@param name System.String
---@param attrs Mono.Xml.MiniParser.IAttrList
---@return System.Void
function Mono.Xml.MiniParser.HandlerAdapter:OnStartElement(name, attrs)end
---@param name System.String
---@return System.Void
function Mono.Xml.MiniParser.HandlerAdapter:OnEndElement(name)end
---@param ch System.String
---@return System.Void
function Mono.Xml.MiniParser.HandlerAdapter:OnChars(ch)end
---@param parser Mono.Xml.MiniParser
---@return System.Void
function Mono.Xml.MiniParser.HandlerAdapter:OnEndParsing(parser)end
---@class Mono.Xml.MiniParser.AttrListImpl : System.Object
---@field public Length System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
---@field public Names System.String[] @  getter
---@field public Values System.String[] @  getter
Mono.Xml.MiniParser.AttrListImpl = {}
---@type Mono.Xml.MiniParser.AttrListImpl
CS.Mono.Xml.MiniParser.AttrListImpl = Mono.Xml.MiniParser.AttrListImpl

---@param i System.Int32
---@return System.String
function Mono.Xml.MiniParser.AttrListImpl:GetName(i)end
---@overload fun(name:System.String):System.String
---@param i System.Int32
---@return System.String
function Mono.Xml.MiniParser.AttrListImpl:GetValue(i)end
---@param name System.String
---@param newValue System.String
---@return System.Void
function Mono.Xml.MiniParser.AttrListImpl:ChangeValue(name, newValue)end
---@return System.Void
function Mono.Xml.MiniParser.AttrListImpl:Clear()end
---@param name System.String
---@param value System.String
---@return System.Void
function Mono.Xml.MiniParser.AttrListImpl:Add(name, value)end
---@overload fun(name:System.String):System.Void
---@param i System.Int32
---@return System.Void
function Mono.Xml.MiniParser.AttrListImpl:Remove(i)end
---@param attrs Mono.Xml.MiniParser.IAttrList
---@return System.Void
function Mono.Xml.MiniParser.AttrListImpl:CopyFrom(attrs)end
---@class Mono.Xml.MiniParser.XMLError : System.Exception
---@field public Line System.Int32 @  getter
---@field public Column System.Int32 @  getter
Mono.Xml.MiniParser.XMLError = {}
---@type Mono.Xml.MiniParser.XMLError
CS.Mono.Xml.MiniParser.XMLError = Mono.Xml.MiniParser.XMLError

---@return System.String
function Mono.Xml.MiniParser.XMLError:ToString()end
