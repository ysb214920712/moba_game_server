---@class Mono.Math.Prime.ConfidenceFactor : System.Enum
Mono.Math.Prime.ConfidenceFactor = {}
---@type Mono.Math.Prime.ConfidenceFactor
CS.Mono.Math.Prime.ConfidenceFactor = Mono.Math.Prime.ConfidenceFactor

---@return System.Int32 value:0
Mono.Math.Prime.ConfidenceFactor.ExtraLow = 0
---@return System.Int32 value:1
Mono.Math.Prime.ConfidenceFactor.Low = 1
---@return System.Int32 value:2
Mono.Math.Prime.ConfidenceFactor.Medium = 2
---@return System.Int32 value:3
Mono.Math.Prime.ConfidenceFactor.High = 3
---@return System.Int32 value:4
Mono.Math.Prime.ConfidenceFactor.ExtraHigh = 4
---@return System.Int32 value:5
Mono.Math.Prime.ConfidenceFactor.Provable = 5

---@class Mono.Math.Prime.PrimalityTests : System.Object
Mono.Math.Prime.PrimalityTests = {}
---@type Mono.Math.Prime.PrimalityTests
CS.Mono.Math.Prime.PrimalityTests = Mono.Math.Prime.PrimalityTests

---@param n Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return System.Boolean
function Mono.Math.Prime.PrimalityTests.Test(n, confidence)end
---@param n Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return System.Boolean
function Mono.Math.Prime.PrimalityTests.RabinMillerTest(n, confidence)end
---@param bi Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return System.Boolean
function Mono.Math.Prime.PrimalityTests.SmallPrimeSppTest(bi, confidence)end
