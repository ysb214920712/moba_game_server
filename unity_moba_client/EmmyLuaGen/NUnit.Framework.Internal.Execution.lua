---@class NUnit.Framework.Internal.Execution.WorkItemState : System.Enum
NUnit.Framework.Internal.Execution.WorkItemState = {}
---@type NUnit.Framework.Internal.Execution.WorkItemState
CS.NUnit.Framework.Internal.Execution.WorkItemState = NUnit.Framework.Internal.Execution.WorkItemState

---@return System.Int32 value:0
NUnit.Framework.Internal.Execution.WorkItemState.Ready = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.Execution.WorkItemState.Running = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.Execution.WorkItemState.Complete = 2

---@class NUnit.Framework.Internal.Execution.WorkItem : System.Object
---@field public State NUnit.Framework.Internal.Execution.WorkItemState @ setter getter
---@field public Test NUnit.Framework.Internal.Test @ setter getter
---@field public Context NUnit.Framework.Internal.TestExecutionContext @ setter getter
---@field public WorkerId System.String @ setter getter
---@field public Actions System.Collections.Generic.List @ setter getter
---@field public Result NUnit.Framework.Internal.TestResult @ setter getter
NUnit.Framework.Internal.Execution.WorkItem = {}
---@type NUnit.Framework.Internal.Execution.WorkItem
CS.NUnit.Framework.Internal.Execution.WorkItem = NUnit.Framework.Internal.Execution.WorkItem

---@param test NUnit.Framework.Interfaces.ITest
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return NUnit.Framework.Internal.Execution.WorkItem
function NUnit.Framework.Internal.Execution.WorkItem.CreateWorkItem(test, filter)end
---@param context NUnit.Framework.Internal.TestExecutionContext
---@return System.Void
function NUnit.Framework.Internal.Execution.WorkItem:InitializeContext(context)end
---@param value System.EventHandler
---@return System.Void
function NUnit.Framework.Internal.Execution.WorkItem:add_Completed(value)end
---@param value System.EventHandler
---@return System.Void
function NUnit.Framework.Internal.Execution.WorkItem:remove_Completed(value)end
---@return System.Void
function NUnit.Framework.Internal.Execution.WorkItem:Execute()end
---@param force System.Boolean
---@return System.Void
function NUnit.Framework.Internal.Execution.WorkItem:Cancel(force)end
---@class NUnit.Framework.Internal.Execution.SimpleWorkItem : NUnit.Framework.Internal.Execution.WorkItem
NUnit.Framework.Internal.Execution.SimpleWorkItem = {}
---@type NUnit.Framework.Internal.Execution.SimpleWorkItem
CS.NUnit.Framework.Internal.Execution.SimpleWorkItem = NUnit.Framework.Internal.Execution.SimpleWorkItem

---@class NUnit.Framework.Internal.Execution.CountdownEvent : System.Object
---@field public InitialCount System.Int32 @  getter
---@field public CurrentCount System.Int32 @  getter
NUnit.Framework.Internal.Execution.CountdownEvent = {}
---@type NUnit.Framework.Internal.Execution.CountdownEvent
CS.NUnit.Framework.Internal.Execution.CountdownEvent = NUnit.Framework.Internal.Execution.CountdownEvent

---@return System.Void
function NUnit.Framework.Internal.Execution.CountdownEvent:Signal()end
---@return System.Void
function NUnit.Framework.Internal.Execution.CountdownEvent:Wait()end
---@class NUnit.Framework.Internal.Execution.CompositeWorkItem : NUnit.Framework.Internal.Execution.WorkItem
---@field public Children System.Collections.Generic.List @ setter getter
NUnit.Framework.Internal.Execution.CompositeWorkItem = {}
---@type NUnit.Framework.Internal.Execution.CompositeWorkItem
CS.NUnit.Framework.Internal.Execution.CompositeWorkItem = NUnit.Framework.Internal.Execution.CompositeWorkItem

---@param force System.Boolean
---@return System.Void
function NUnit.Framework.Internal.Execution.CompositeWorkItem:Cancel(force)end
---@class NUnit.Framework.Internal.Execution.CommandBuilder : System.Object
NUnit.Framework.Internal.Execution.CommandBuilder = {}
---@type NUnit.Framework.Internal.Execution.CommandBuilder
CS.NUnit.Framework.Internal.Execution.CommandBuilder = NUnit.Framework.Internal.Execution.CommandBuilder

---@param suite NUnit.Framework.Internal.TestSuite
---@param setUpTearDown System.Collections.Generic.List
---@param actions System.Collections.Generic.List
---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.Internal.Execution.CommandBuilder.MakeOneTimeSetUpCommand(suite, setUpTearDown, actions)end
---@param suite NUnit.Framework.Internal.TestSuite
---@param setUpTearDownItems System.Collections.Generic.List
---@param actions System.Collections.Generic.List
---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.Internal.Execution.CommandBuilder.MakeOneTimeTearDownCommand(suite, setUpTearDownItems, actions)end
---@param test NUnit.Framework.Internal.TestMethod
---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.Internal.Execution.CommandBuilder.MakeTestCommand(test)end
---@param test NUnit.Framework.Internal.Test
---@return NUnit.Framework.Internal.Commands.SkipCommand
function NUnit.Framework.Internal.Execution.CommandBuilder.MakeSkipCommand(test)end
---@param fixtureType System.Type
---@param setUpType System.Type
---@param tearDownType System.Type
---@return System.Collections.Generic.List
function NUnit.Framework.Internal.Execution.CommandBuilder.BuildSetUpTearDownList(fixtureType, setUpType, tearDownType)end
---@class NUnit.Framework.Internal.Execution.TextCapture : System.IO.TextWriter
---@field public Encoding System.Text.Encoding @  getter
NUnit.Framework.Internal.Execution.TextCapture = {}
---@type NUnit.Framework.Internal.Execution.TextCapture
CS.NUnit.Framework.Internal.Execution.TextCapture = NUnit.Framework.Internal.Execution.TextCapture

---@overload fun(value:System.String):System.Void
---@param value System.Char
---@return System.Void
function NUnit.Framework.Internal.Execution.TextCapture:Write(value)end
---@param value System.String
---@return System.Void
function NUnit.Framework.Internal.Execution.TextCapture:WriteLine(value)end
---@class NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher : System.Object
NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher = {}
---@type NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher
CS.NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher = NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher

---@param work NUnit.Framework.Internal.Execution.WorkItem
---@return System.Void
function NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher:Dispatch(work)end
---@param force System.Boolean
---@return System.Void
function NUnit.Framework.Internal.Execution.SimpleWorkItemDispatcher:CancelRun(force)end
---@class NUnit.Framework.Internal.Execution.EventListenerTextWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding @  getter
NUnit.Framework.Internal.Execution.EventListenerTextWriter = {}
---@type NUnit.Framework.Internal.Execution.EventListenerTextWriter
CS.NUnit.Framework.Internal.Execution.EventListenerTextWriter = NUnit.Framework.Internal.Execution.EventListenerTextWriter

---@overload fun(aString:System.String):System.Void
---@param aChar System.Char
---@return System.Void
function NUnit.Framework.Internal.Execution.EventListenerTextWriter:Write(aChar)end
---@param aString System.String
---@return System.Void
function NUnit.Framework.Internal.Execution.EventListenerTextWriter:WriteLine(aString)end
