---@class UnityEngine.TestTools.EnterPlayMode : System.Object
---@field public ExpectDomainReload System.Boolean @  getter
---@field public ExpectedPlaymodeState System.Boolean @ setter getter
UnityEngine.TestTools.EnterPlayMode = {}
---@type UnityEngine.TestTools.EnterPlayMode
CS.UnityEngine.TestTools.EnterPlayMode = UnityEngine.TestTools.EnterPlayMode

---@return System.Collections.IEnumerator
function UnityEngine.TestTools.EnterPlayMode:Perform()end
---@class UnityEngine.TestTools.ExitPlayMode : System.Object
---@field public ExpectDomainReload System.Boolean @  getter
---@field public ExpectedPlaymodeState System.Boolean @ setter getter
UnityEngine.TestTools.ExitPlayMode = {}
---@type UnityEngine.TestTools.ExitPlayMode
CS.UnityEngine.TestTools.ExitPlayMode = UnityEngine.TestTools.ExitPlayMode

---@return System.Collections.IEnumerator
function UnityEngine.TestTools.ExitPlayMode:Perform()end
---@class UnityEngine.TestTools.LogAssert : System.Object
---@field public ignoreFailingMessages System.Boolean @static setter getter
UnityEngine.TestTools.LogAssert = {}
---@type UnityEngine.TestTools.LogAssert
CS.UnityEngine.TestTools.LogAssert = UnityEngine.TestTools.LogAssert

---@overload fun(type:UnityEngine.LogType, message:System.Text.RegularExpressions.Regex):System.Void
---@param type UnityEngine.LogType
---@param message System.String
---@return System.Void
function UnityEngine.TestTools.LogAssert.Expect(type, message)end
---@return System.Void
function UnityEngine.TestTools.LogAssert.NoUnexpectedReceived()end
---@class UnityEngine.TestTools.UnityPlatformAttribute : NUnit.Framework.NUnitAttribute
---@field public include UnityEngine.RuntimePlatform[] @ setter getter
---@field public exclude UnityEngine.RuntimePlatform[] @ setter getter
UnityEngine.TestTools.UnityPlatformAttribute = {}
---@type UnityEngine.TestTools.UnityPlatformAttribute
CS.UnityEngine.TestTools.UnityPlatformAttribute = UnityEngine.TestTools.UnityPlatformAttribute

---@param test NUnit.Framework.Internal.Test
---@return System.Void
function UnityEngine.TestTools.UnityPlatformAttribute:ApplyToTest(test)end
---@class UnityEngine.TestTools.UnitySetUpAttribute : NUnit.Framework.NUnitAttribute
UnityEngine.TestTools.UnitySetUpAttribute = {}
---@type UnityEngine.TestTools.UnitySetUpAttribute
CS.UnityEngine.TestTools.UnitySetUpAttribute = UnityEngine.TestTools.UnitySetUpAttribute

---@class UnityEngine.TestTools.UnityTearDownAttribute : NUnit.Framework.NUnitAttribute
UnityEngine.TestTools.UnityTearDownAttribute = {}
---@type UnityEngine.TestTools.UnityTearDownAttribute
CS.UnityEngine.TestTools.UnityTearDownAttribute = UnityEngine.TestTools.UnityTearDownAttribute

---@class UnityEngine.TestTools.UnityTestAttribute : NUnit.Framework.CombiningStrategyAttribute
UnityEngine.TestTools.UnityTestAttribute = {}
---@type UnityEngine.TestTools.UnityTestAttribute
CS.UnityEngine.TestTools.UnityTestAttribute = UnityEngine.TestTools.UnityTestAttribute

---@param command NUnit.Framework.Internal.Commands.TestCommand
---@return NUnit.Framework.Internal.Commands.TestCommand
function UnityEngine.TestTools.UnityTestAttribute:Wrap(command)end
---@class UnityEngine.TestTools.TestPlatform : System.Enum
UnityEngine.TestTools.TestPlatform = {}
---@type UnityEngine.TestTools.TestPlatform
CS.UnityEngine.TestTools.TestPlatform = UnityEngine.TestTools.TestPlatform

---@return System.Int32 value:2
UnityEngine.TestTools.TestPlatform.EditMode = 2

---@class UnityEngine.TestTools.PostBuildCleanupAttribute : System.Attribute
UnityEngine.TestTools.PostBuildCleanupAttribute = {}
---@type UnityEngine.TestTools.PostBuildCleanupAttribute
CS.UnityEngine.TestTools.PostBuildCleanupAttribute = UnityEngine.TestTools.PostBuildCleanupAttribute

---@class UnityEngine.TestTools.PrebuildSetupAttribute : System.Attribute
UnityEngine.TestTools.PrebuildSetupAttribute = {}
---@type UnityEngine.TestTools.PrebuildSetupAttribute
CS.UnityEngine.TestTools.PrebuildSetupAttribute = UnityEngine.TestTools.PrebuildSetupAttribute

---@class UnityEngine.TestTools.MonoBehaviourTest : UnityEngine.CustomYieldInstruction
---@field public component any @  getter
---@field public gameObject UnityEngine.GameObject @  getter
---@field public keepWaiting System.Boolean @  getter
UnityEngine.TestTools.MonoBehaviourTest = {}
---@type UnityEngine.TestTools.MonoBehaviourTest
CS.UnityEngine.TestTools.MonoBehaviourTest = UnityEngine.TestTools.MonoBehaviourTest

