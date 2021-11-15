---@class Mono.Math.Prime.Generator.NextPrimeFinder : Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
Mono.Math.Prime.Generator.NextPrimeFinder = {}
---@type Mono.Math.Prime.Generator.NextPrimeFinder
CS.Mono.Math.Prime.Generator.NextPrimeFinder = Mono.Math.Prime.Generator.NextPrimeFinder

---@class Mono.Math.Prime.Generator.PrimeGeneratorBase : System.Object
---@field public Confidence Mono.Math.Prime.ConfidenceFactor @  getter
---@field public PrimalityTest Mono.Math.Prime.PrimalityTest @  getter
---@field public TrialDivisionBounds System.Int32 @  getter
Mono.Math.Prime.Generator.PrimeGeneratorBase = {}
---@type Mono.Math.Prime.Generator.PrimeGeneratorBase
CS.Mono.Math.Prime.Generator.PrimeGeneratorBase = Mono.Math.Prime.Generator.PrimeGeneratorBase

---@param bits System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.Prime.Generator.PrimeGeneratorBase:GenerateNewPrime(bits)end
---@class Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase : Mono.Math.Prime.Generator.PrimeGeneratorBase
Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase = {}
---@type Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
CS.Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase = Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase

---@overload fun(bits:System.Int32, context:System.Object):Mono.Math.BigInteger
---@param bits System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase:GenerateNewPrime(bits)end
