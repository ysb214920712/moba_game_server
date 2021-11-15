---@class NUnit.Framework.Interfaces.RunState : System.Enum
NUnit.Framework.Interfaces.RunState = {}
---@type NUnit.Framework.Interfaces.RunState
CS.NUnit.Framework.Interfaces.RunState = NUnit.Framework.Interfaces.RunState

---@return System.Int32 value:0
NUnit.Framework.Interfaces.RunState.NotRunnable = 0
---@return System.Int32 value:1
NUnit.Framework.Interfaces.RunState.Runnable = 1
---@return System.Int32 value:2
NUnit.Framework.Interfaces.RunState.Explicit = 2
---@return System.Int32 value:3
NUnit.Framework.Interfaces.RunState.Skipped = 3
---@return System.Int32 value:4
NUnit.Framework.Interfaces.RunState.Ignored = 4

---@class NUnit.Framework.Interfaces.TestStatus : System.Enum
NUnit.Framework.Interfaces.TestStatus = {}
---@type NUnit.Framework.Interfaces.TestStatus
CS.NUnit.Framework.Interfaces.TestStatus = NUnit.Framework.Interfaces.TestStatus

---@return System.Int32 value:0
NUnit.Framework.Interfaces.TestStatus.Inconclusive = 0
---@return System.Int32 value:1
NUnit.Framework.Interfaces.TestStatus.Skipped = 1
---@return System.Int32 value:2
NUnit.Framework.Interfaces.TestStatus.Passed = 2
---@return System.Int32 value:3
NUnit.Framework.Interfaces.TestStatus.Failed = 3

---@class NUnit.Framework.Interfaces.TestOutput : System.Object
---@field public Text System.String @ setter getter
---@field public Stream System.String @ setter getter
---@field public TestName System.String @ setter getter
NUnit.Framework.Interfaces.TestOutput = {}
---@type NUnit.Framework.Interfaces.TestOutput
CS.NUnit.Framework.Interfaces.TestOutput = NUnit.Framework.Interfaces.TestOutput

---@return System.String
function NUnit.Framework.Interfaces.TestOutput:ToString()end
---@return System.String
function NUnit.Framework.Interfaces.TestOutput:ToXml()end
---@class NUnit.Framework.Interfaces.TNode : System.Object
---@field public Name System.String @ setter getter
---@field public Value System.String @ setter getter
---@field public ValueIsCDATA System.Boolean @ setter getter
---@field public Attributes NUnit.Framework.Interfaces.AttributeDictionary @ setter getter
---@field public ChildNodes NUnit.Framework.Interfaces.NodeList @ setter getter
---@field public FirstChild NUnit.Framework.Interfaces.TNode @  getter
---@field public OuterXml System.String @  getter
NUnit.Framework.Interfaces.TNode = {}
---@type NUnit.Framework.Interfaces.TNode
CS.NUnit.Framework.Interfaces.TNode = NUnit.Framework.Interfaces.TNode

---@param xmlText System.String
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Interfaces.TNode.FromXml(xmlText)end
---@overload fun(name:System.String, value:System.String):NUnit.Framework.Interfaces.TNode
---@param name System.String
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Interfaces.TNode:AddElement(name)end
---@param name System.String
---@param value System.String
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Interfaces.TNode:AddElementWithCDATA(name, value)end
---@param name System.String
---@param value System.String
---@return System.Void
function NUnit.Framework.Interfaces.TNode:AddAttribute(name, value)end
---@param xpath System.String
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Interfaces.TNode:SelectSingleNode(xpath)end
---@param xpath System.String
---@return NUnit.Framework.Interfaces.NodeList
function NUnit.Framework.Interfaces.TNode:SelectNodes(xpath)end
---@param writer System.Xml.XmlWriter
---@return System.Void
function NUnit.Framework.Interfaces.TNode:WriteTo(writer)end
---@class NUnit.Framework.Interfaces.NodeList : System.Collections.Generic.List
NUnit.Framework.Interfaces.NodeList = {}
---@type NUnit.Framework.Interfaces.NodeList
CS.NUnit.Framework.Interfaces.NodeList = NUnit.Framework.Interfaces.NodeList

---@class NUnit.Framework.Interfaces.AttributeDictionary : System.Collections.Generic.Dictionary
---@field public Item System.String @  getter
NUnit.Framework.Interfaces.AttributeDictionary = {}
---@type NUnit.Framework.Interfaces.AttributeDictionary
CS.NUnit.Framework.Interfaces.AttributeDictionary = NUnit.Framework.Interfaces.AttributeDictionary

---@class NUnit.Framework.Interfaces.ResultState : System.Object
---@field public Status NUnit.Framework.Interfaces.TestStatus @ setter getter
---@field public Label System.String @ setter getter
---@field public Site NUnit.Framework.Interfaces.FailureSite @ setter getter
---@field public Inconclusive NUnit.Framework.Interfaces.ResultState
---@field public Skipped NUnit.Framework.Interfaces.ResultState
---@field public Ignored NUnit.Framework.Interfaces.ResultState
---@field public Explicit NUnit.Framework.Interfaces.ResultState
---@field public Success NUnit.Framework.Interfaces.ResultState
---@field public Failure NUnit.Framework.Interfaces.ResultState
---@field public Error NUnit.Framework.Interfaces.ResultState
---@field public Cancelled NUnit.Framework.Interfaces.ResultState
---@field public NotRunnable NUnit.Framework.Interfaces.ResultState
---@field public ChildFailure NUnit.Framework.Interfaces.ResultState
---@field public SetUpFailure NUnit.Framework.Interfaces.ResultState
---@field public SetUpError NUnit.Framework.Interfaces.ResultState
---@field public TearDownError NUnit.Framework.Interfaces.ResultState
NUnit.Framework.Interfaces.ResultState = {}
---@type NUnit.Framework.Interfaces.ResultState
CS.NUnit.Framework.Interfaces.ResultState = NUnit.Framework.Interfaces.ResultState

---@param site NUnit.Framework.Interfaces.FailureSite
---@return NUnit.Framework.Interfaces.ResultState
function NUnit.Framework.Interfaces.ResultState:WithSite(site)end
---@param obj System.Object
---@return System.Boolean
function NUnit.Framework.Interfaces.ResultState:Equals(obj)end
---@return System.Int32
function NUnit.Framework.Interfaces.ResultState:GetHashCode()end
---@return System.String
function NUnit.Framework.Interfaces.ResultState:ToString()end
---@class NUnit.Framework.Interfaces.FailureSite : System.Enum
NUnit.Framework.Interfaces.FailureSite = {}
---@type NUnit.Framework.Interfaces.FailureSite
CS.NUnit.Framework.Interfaces.FailureSite = NUnit.Framework.Interfaces.FailureSite

---@return System.Int32 value:0
NUnit.Framework.Interfaces.FailureSite.Test = 0
---@return System.Int32 value:1
NUnit.Framework.Interfaces.FailureSite.SetUp = 1
---@return System.Int32 value:2
NUnit.Framework.Interfaces.FailureSite.TearDown = 2
---@return System.Int32 value:3
NUnit.Framework.Interfaces.FailureSite.Parent = 3
---@return System.Int32 value:4
NUnit.Framework.Interfaces.FailureSite.Child = 4

