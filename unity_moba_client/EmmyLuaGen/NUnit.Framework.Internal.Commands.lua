---@class NUnit.Framework.Internal.Commands.TestCommand : System.Object
---@field public Test NUnit.Framework.Internal.Test @ setter getter
NUnit.Framework.Internal.Commands.TestCommand = {}
---@type NUnit.Framework.Internal.Commands.TestCommand
CS.NUnit.Framework.Internal.Commands.TestCommand = NUnit.Framework.Internal.Commands.TestCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.TestCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.DelegatingTestCommand : NUnit.Framework.Internal.Commands.TestCommand
NUnit.Framework.Internal.Commands.DelegatingTestCommand = {}
---@type NUnit.Framework.Internal.Commands.DelegatingTestCommand
CS.NUnit.Framework.Internal.Commands.DelegatingTestCommand = NUnit.Framework.Internal.Commands.DelegatingTestCommand

---@return NUnit.Framework.Internal.Commands.TestCommand
function NUnit.Framework.Internal.Commands.DelegatingTestCommand:GetInnerCommand()end
---@class NUnit.Framework.Internal.Commands.MaxTimeCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.Internal.Commands.MaxTimeCommand = {}
---@type NUnit.Framework.Internal.Commands.MaxTimeCommand
CS.NUnit.Framework.Internal.Commands.MaxTimeCommand = NUnit.Framework.Internal.Commands.MaxTimeCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.MaxTimeCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.TestActionCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.Internal.Commands.TestActionCommand = {}
---@type NUnit.Framework.Internal.Commands.TestActionCommand
CS.NUnit.Framework.Internal.Commands.TestActionCommand = NUnit.Framework.Internal.Commands.TestActionCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.TestActionCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand = {}
---@type NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand
CS.NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand = NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Void
function NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand:ApplyChanges(context)end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.TheoryResultCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.Internal.Commands.TheoryResultCommand = {}
---@type NUnit.Framework.Internal.Commands.TheoryResultCommand
CS.NUnit.Framework.Internal.Commands.TheoryResultCommand = NUnit.Framework.Internal.Commands.TheoryResultCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.TheoryResultCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.OneTimeSetUpCommand : NUnit.Framework.Internal.Commands.TestCommand
NUnit.Framework.Internal.Commands.OneTimeSetUpCommand = {}
---@type NUnit.Framework.Internal.Commands.OneTimeSetUpCommand
CS.NUnit.Framework.Internal.Commands.OneTimeSetUpCommand = NUnit.Framework.Internal.Commands.OneTimeSetUpCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.OneTimeSetUpCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.OneTimeTearDownCommand : NUnit.Framework.Internal.Commands.TestCommand
NUnit.Framework.Internal.Commands.OneTimeTearDownCommand = {}
---@type NUnit.Framework.Internal.Commands.OneTimeTearDownCommand
CS.NUnit.Framework.Internal.Commands.OneTimeTearDownCommand = NUnit.Framework.Internal.Commands.OneTimeTearDownCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.OneTimeTearDownCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.CommandStage : System.Enum
NUnit.Framework.Internal.Commands.CommandStage = {}
---@type NUnit.Framework.Internal.Commands.CommandStage
CS.NUnit.Framework.Internal.Commands.CommandStage = NUnit.Framework.Internal.Commands.CommandStage

---@return System.Int32 value:0
NUnit.Framework.Internal.Commands.CommandStage.Default = 0
---@return System.Int32 value:1
NUnit.Framework.Internal.Commands.CommandStage.BelowSetUpTearDown = 1
---@return System.Int32 value:2
NUnit.Framework.Internal.Commands.CommandStage.SetUpTearDown = 2
---@return System.Int32 value:3
NUnit.Framework.Internal.Commands.CommandStage.AboveSetUpTearDown = 3

---@class NUnit.Framework.Internal.Commands.SkipCommand : NUnit.Framework.Internal.Commands.TestCommand
NUnit.Framework.Internal.Commands.SkipCommand = {}
---@type NUnit.Framework.Internal.Commands.SkipCommand
CS.NUnit.Framework.Internal.Commands.SkipCommand = NUnit.Framework.Internal.Commands.SkipCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.SkipCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.TestActionItem : System.Object
NUnit.Framework.Internal.Commands.TestActionItem = {}
---@type NUnit.Framework.Internal.Commands.TestActionItem
CS.NUnit.Framework.Internal.Commands.TestActionItem = NUnit.Framework.Internal.Commands.TestActionItem

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.Commands.TestActionItem:BeforeTest(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Void
function NUnit.Framework.Internal.Commands.TestActionItem:AfterTest(test)end
---@class NUnit.Framework.Internal.Commands.TestMethodCommand : NUnit.Framework.Internal.Commands.TestCommand
NUnit.Framework.Internal.Commands.TestMethodCommand = {}
---@type NUnit.Framework.Internal.Commands.TestMethodCommand
CS.NUnit.Framework.Internal.Commands.TestMethodCommand = NUnit.Framework.Internal.Commands.TestMethodCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.TestMethodCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.SetUpTearDownCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
NUnit.Framework.Internal.Commands.SetUpTearDownCommand = {}
---@type NUnit.Framework.Internal.Commands.SetUpTearDownCommand
CS.NUnit.Framework.Internal.Commands.SetUpTearDownCommand = NUnit.Framework.Internal.Commands.SetUpTearDownCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function NUnit.Framework.Internal.Commands.SetUpTearDownCommand:Execute(context)end
---@class NUnit.Framework.Internal.Commands.SetUpTearDownItem : System.Object
---@field public HasMethods System.Boolean @  getter
NUnit.Framework.Internal.Commands.SetUpTearDownItem = {}
---@type NUnit.Framework.Internal.Commands.SetUpTearDownItem
CS.NUnit.Framework.Internal.Commands.SetUpTearDownItem = NUnit.Framework.Internal.Commands.SetUpTearDownItem

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Void
function NUnit.Framework.Internal.Commands.SetUpTearDownItem:RunSetUp(context)end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Void
function NUnit.Framework.Internal.Commands.SetUpTearDownItem:RunTearDown(context)end
