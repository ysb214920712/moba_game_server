---@class Mono.Math.BigInteger : System.Object
Mono.Math.BigInteger = {}
---@type Mono.Math.BigInteger
CS.Mono.Math.BigInteger = Mono.Math.BigInteger

---@overload fun(value:System.Int32):Mono.Math.BigInteger
---@overload fun(value:System.UInt64):Mono.Math.BigInteger
---@param value System.UInt32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_Implicit(value)end
---@param number System.String
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.Parse(number)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_Addition(bi1, bi2)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_Subtraction(bi1, bi2)end
---@overload fun(bi:Mono.Math.BigInteger, ui:System.UInt32):System.UInt32
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return System.Int32
function Mono.Math.BigInteger.op_Modulus(bi, i)end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_Division(bi, i)end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_Multiply(bi, i)end
---@param bi1 Mono.Math.BigInteger
---@param shiftVal System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_LeftShift(bi1, shiftVal)end
---@param bi1 Mono.Math.BigInteger
---@param shiftVal System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.op_RightShift(bi1, shiftVal)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.Add(bi1, bi2)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.Subtract(bi1, bi2)end
---@overload fun(bi:Mono.Math.BigInteger, ui:System.UInt32):System.UInt32
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return System.Int32
function Mono.Math.BigInteger.Modulus(bi, i)end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.Divid(bi, i)end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param bi Mono.Math.BigInteger
---@param i System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.Multiply(bi, i)end
---@overload fun(bits:System.Int32, rng:System.Security.Cryptography.RandomNumberGenerator):Mono.Math.BigInteger
---@param bits System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.GenerateRandom(bits)end
---@overload fun(rng:System.Security.Cryptography.RandomNumberGenerator):System.Void
---@return System.Void
function Mono.Math.BigInteger:Randomize()end
---@return System.Int32
function Mono.Math.BigInteger:BitCount()end
---@overload fun(bitNum:System.Int32):System.Boolean
---@param bitNum System.UInt32
---@return System.Boolean
function Mono.Math.BigInteger:TestBit(bitNum)end
---@overload fun(bitNum:System.UInt32, value:System.Boolean):System.Void
---@param bitNum System.UInt32
---@return System.Void
function Mono.Math.BigInteger:SetBit(bitNum)end
---@param bitNum System.UInt32
---@return System.Void
function Mono.Math.BigInteger:ClearBit(bitNum)end
---@return System.Int32
function Mono.Math.BigInteger:LowestSetBit()end
---@return System.Byte[]
function Mono.Math.BigInteger:GetBytes()end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):System.Boolean
---@param bi1 Mono.Math.BigInteger
---@param ui System.UInt32
---@return System.Boolean
function Mono.Math.BigInteger.op_Equality(bi1, ui)end
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger):System.Boolean
---@param bi1 Mono.Math.BigInteger
---@param ui System.UInt32
---@return System.Boolean
function Mono.Math.BigInteger.op_Inequality(bi1, ui)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return System.Boolean
function Mono.Math.BigInteger.op_GreaterThan(bi1, bi2)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return System.Boolean
function Mono.Math.BigInteger.op_LessThan(bi1, bi2)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return System.Boolean
function Mono.Math.BigInteger.op_GreaterThanOrEqual(bi1, bi2)end
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return System.Boolean
function Mono.Math.BigInteger.op_LessThanOrEqual(bi1, bi2)end
---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger.Sign
function Mono.Math.BigInteger:Compare(bi)end
---@overload fun(radix:System.UInt32):System.String
---@overload fun(radix:System.UInt32, characterSet:System.String):System.String
---@return System.String
function Mono.Math.BigInteger:ToString()end
---@return System.Void
function Mono.Math.BigInteger:Clear()end
---@return System.Int32
function Mono.Math.BigInteger:GetHashCode()end
---@param o System.Object
---@return System.Boolean
function Mono.Math.BigInteger:Equals(o)end
---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger:GCD(bi)end
---@param modulus Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger:ModInverse(modulus)end
---@param exp Mono.Math.BigInteger
---@param n Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger:ModPow(exp, n)end
---@return System.Boolean
function Mono.Math.BigInteger:IsProbablePrime()end
---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.NextHighestPrime(bi)end
---@param bits System.Int32
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.GeneratePseudoPrime(bits)end
---@return System.Void
function Mono.Math.BigInteger:Incr2()end
---@class Mono.Math.BigInteger.Sign : System.Enum
Mono.Math.BigInteger.Sign = {}
---@type Mono.Math.BigInteger.Sign
CS.Mono.Math.BigInteger.Sign = Mono.Math.BigInteger.Sign

---@return System.Int32 value:0
Mono.Math.BigInteger.Sign.Zero = 0
---@return System.Int32 value:1
Mono.Math.BigInteger.Sign.Positive = 1

---@class Mono.Math.BigInteger.ModulusRing : System.Object
Mono.Math.BigInteger.ModulusRing = {}
---@type Mono.Math.BigInteger.ModulusRing
CS.Mono.Math.BigInteger.ModulusRing = Mono.Math.BigInteger.ModulusRing

---@param x Mono.Math.BigInteger
---@return System.Void
function Mono.Math.BigInteger.ModulusRing:BarrettReduction(x)end
---@param a Mono.Math.BigInteger
---@param b Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.ModulusRing:Multiply(a, b)end
---@param a Mono.Math.BigInteger
---@param b Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.ModulusRing:Difference(a, b)end
---@overload fun(a:Mono.Math.BigInteger, k:Mono.Math.BigInteger):Mono.Math.BigInteger
---@param b System.UInt32
---@param exp Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function Mono.Math.BigInteger.ModulusRing:Pow(b, exp)end
