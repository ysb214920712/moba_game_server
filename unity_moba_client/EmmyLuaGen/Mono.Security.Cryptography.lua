---@class Mono.Security.Cryptography.ARC4Managed : Mono.Security.Cryptography.RC4
---@field public Key System.Byte[] @ setter getter
---@field public CanReuseTransform System.Boolean @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public InputBlockSize System.Int32 @  getter
---@field public OutputBlockSize System.Int32 @  getter
Mono.Security.Cryptography.ARC4Managed = {}
---@type Mono.Security.Cryptography.ARC4Managed
CS.Mono.Security.Cryptography.ARC4Managed = Mono.Security.Cryptography.ARC4Managed

---@param rgbKey System.Byte[]
---@param rgvIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function Mono.Security.Cryptography.ARC4Managed:CreateEncryptor(rgbKey, rgvIV)end
---@param rgbKey System.Byte[]
---@param rgvIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function Mono.Security.Cryptography.ARC4Managed:CreateDecryptor(rgbKey, rgvIV)end
---@return System.Void
function Mono.Security.Cryptography.ARC4Managed:GenerateIV()end
---@return System.Void
function Mono.Security.Cryptography.ARC4Managed:GenerateKey()end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function Mono.Security.Cryptography.ARC4Managed:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.ARC4Managed:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@class Mono.Security.Cryptography.CryptoConvert : System.Object
Mono.Security.Cryptography.CryptoConvert = {}
---@type Mono.Security.Cryptography.CryptoConvert
CS.Mono.Security.Cryptography.CryptoConvert = Mono.Security.Cryptography.CryptoConvert

---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.RSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.RSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiPrivateKeyBlob(blob)end
---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.DSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.DSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiPrivateKeyBlobDSA(blob)end
---@overload fun(dsa:System.Security.Cryptography.DSA):System.Byte[]
---@param rsa System.Security.Cryptography.RSA
---@return System.Byte[]
function Mono.Security.Cryptography.CryptoConvert.ToCapiPrivateKeyBlob(rsa)end
---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.RSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.RSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiPublicKeyBlob(blob)end
---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.DSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.DSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiPublicKeyBlobDSA(blob)end
---@overload fun(dsa:System.Security.Cryptography.DSA):System.Byte[]
---@param rsa System.Security.Cryptography.RSA
---@return System.Byte[]
function Mono.Security.Cryptography.CryptoConvert.ToCapiPublicKeyBlob(rsa)end
---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.RSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.RSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiKeyBlob(blob)end
---@overload fun(blob:System.Byte[], offset:System.Int32):System.Security.Cryptography.DSA
---@param blob System.Byte[]
---@return System.Security.Cryptography.DSA
function Mono.Security.Cryptography.CryptoConvert.FromCapiKeyBlobDSA(blob)end
---@overload fun(rsa:System.Security.Cryptography.RSA, includePrivateKey:System.Boolean):System.Byte[]
---@overload fun(dsa:System.Security.Cryptography.DSA, includePrivateKey:System.Boolean):System.Byte[]
---@param keypair System.Security.Cryptography.AsymmetricAlgorithm
---@param includePrivateKey System.Boolean
---@return System.Byte[]
function Mono.Security.Cryptography.CryptoConvert.ToCapiKeyBlob(keypair, includePrivateKey)end
---@param input System.Byte[]
---@return System.String
function Mono.Security.Cryptography.CryptoConvert.ToHex(input)end
---@param hex System.String
---@return System.Byte[]
function Mono.Security.Cryptography.CryptoConvert.FromHex(hex)end
---@class Mono.Security.Cryptography.KeyBuilder : System.Object
Mono.Security.Cryptography.KeyBuilder = {}
---@type Mono.Security.Cryptography.KeyBuilder
CS.Mono.Security.Cryptography.KeyBuilder = Mono.Security.Cryptography.KeyBuilder

---@param size System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.KeyBuilder.Key(size)end
---@param size System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.KeyBuilder.IV(size)end
---@class Mono.Security.Cryptography.BlockProcessor : System.Object
Mono.Security.Cryptography.BlockProcessor = {}
---@type Mono.Security.Cryptography.BlockProcessor
CS.Mono.Security.Cryptography.BlockProcessor = Mono.Security.Cryptography.BlockProcessor

---@return System.Void
function Mono.Security.Cryptography.BlockProcessor:Initialize()end
---@overload fun(rgb:System.Byte[], ib:System.Int32, cb:System.Int32):System.Void
---@param rgb System.Byte[]
---@return System.Void
function Mono.Security.Cryptography.BlockProcessor:Core(rgb)end
---@return System.Byte[]
function Mono.Security.Cryptography.BlockProcessor:Final()end
---@class Mono.Security.Cryptography.DHKeyGeneration : System.Enum
Mono.Security.Cryptography.DHKeyGeneration = {}
---@type Mono.Security.Cryptography.DHKeyGeneration
CS.Mono.Security.Cryptography.DHKeyGeneration = Mono.Security.Cryptography.DHKeyGeneration

---@return System.Int32 value:0
Mono.Security.Cryptography.DHKeyGeneration.Random = 0
---@return System.Int32 value:1
Mono.Security.Cryptography.DHKeyGeneration.Static = 1

---@class Mono.Security.Cryptography.DHParameters : System.ValueType
---@field public P System.Byte[]
---@field public G System.Byte[]
---@field public X System.Byte[]
Mono.Security.Cryptography.DHParameters = {}
---@type Mono.Security.Cryptography.DHParameters
CS.Mono.Security.Cryptography.DHParameters = Mono.Security.Cryptography.DHParameters

---@class Mono.Security.Cryptography.DiffieHellman : System.Security.Cryptography.AsymmetricAlgorithm
Mono.Security.Cryptography.DiffieHellman = {}
---@type Mono.Security.Cryptography.DiffieHellman
CS.Mono.Security.Cryptography.DiffieHellman = Mono.Security.Cryptography.DiffieHellman

---@overload fun(algName:System.String):Mono.Security.Cryptography.DiffieHellman
---@return Mono.Security.Cryptography.DiffieHellman
function Mono.Security.Cryptography.DiffieHellman.Create()end
---@return System.Byte[]
function Mono.Security.Cryptography.DiffieHellman:CreateKeyExchange()end
---@param keyex System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.DiffieHellman:DecryptKeyExchange(keyex)end
---@param includePrivate System.Boolean
---@return Mono.Security.Cryptography.DHParameters
function Mono.Security.Cryptography.DiffieHellman:ExportParameters(includePrivate)end
---@param parameters Mono.Security.Cryptography.DHParameters
---@return System.Void
function Mono.Security.Cryptography.DiffieHellman:ImportParameters(parameters)end
---@param xmlString System.String
---@return System.Void
function Mono.Security.Cryptography.DiffieHellman:FromXmlString(xmlString)end
---@param includePrivateParameters System.Boolean
---@return System.String
function Mono.Security.Cryptography.DiffieHellman:ToXmlString(includePrivateParameters)end
---@class Mono.Security.Cryptography.DiffieHellmanManaged : Mono.Security.Cryptography.DiffieHellman
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public SignatureAlgorithm System.String @  getter
Mono.Security.Cryptography.DiffieHellmanManaged = {}
---@type Mono.Security.Cryptography.DiffieHellmanManaged
CS.Mono.Security.Cryptography.DiffieHellmanManaged = Mono.Security.Cryptography.DiffieHellmanManaged

---@return System.Byte[]
function Mono.Security.Cryptography.DiffieHellmanManaged:CreateKeyExchange()end
---@param keyEx System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.DiffieHellmanManaged:DecryptKeyExchange(keyEx)end
---@param includePrivateParameters System.Boolean
---@return Mono.Security.Cryptography.DHParameters
function Mono.Security.Cryptography.DiffieHellmanManaged:ExportParameters(includePrivateParameters)end
---@param parameters Mono.Security.Cryptography.DHParameters
---@return System.Void
function Mono.Security.Cryptography.DiffieHellmanManaged:ImportParameters(parameters)end
---@class Mono.Security.Cryptography.KeyPairPersistence : System.Object
---@field public Filename System.String @  getter
---@field public KeyValue System.String @ setter getter
---@field public Parameters System.Security.Cryptography.CspParameters @  getter
Mono.Security.Cryptography.KeyPairPersistence = {}
---@type Mono.Security.Cryptography.KeyPairPersistence
CS.Mono.Security.Cryptography.KeyPairPersistence = Mono.Security.Cryptography.KeyPairPersistence

---@return System.Boolean
function Mono.Security.Cryptography.KeyPairPersistence:Load()end
---@return System.Void
function Mono.Security.Cryptography.KeyPairPersistence:Save()end
---@return System.Void
function Mono.Security.Cryptography.KeyPairPersistence:Remove()end
---@class Mono.Security.Cryptography.MD2 : System.Security.Cryptography.HashAlgorithm
Mono.Security.Cryptography.MD2 = {}
---@type Mono.Security.Cryptography.MD2
CS.Mono.Security.Cryptography.MD2 = Mono.Security.Cryptography.MD2

---@overload fun(hashName:System.String):Mono.Security.Cryptography.MD2
---@return Mono.Security.Cryptography.MD2
function Mono.Security.Cryptography.MD2.Create()end
---@class Mono.Security.Cryptography.MD2Managed : Mono.Security.Cryptography.MD2
Mono.Security.Cryptography.MD2Managed = {}
---@type Mono.Security.Cryptography.MD2Managed
CS.Mono.Security.Cryptography.MD2Managed = Mono.Security.Cryptography.MD2Managed

---@return System.Void
function Mono.Security.Cryptography.MD2Managed:Initialize()end
---@class Mono.Security.Cryptography.MD4 : System.Security.Cryptography.HashAlgorithm
Mono.Security.Cryptography.MD4 = {}
---@type Mono.Security.Cryptography.MD4
CS.Mono.Security.Cryptography.MD4 = Mono.Security.Cryptography.MD4

---@overload fun(hashName:System.String):Mono.Security.Cryptography.MD4
---@return Mono.Security.Cryptography.MD4
function Mono.Security.Cryptography.MD4.Create()end
---@class Mono.Security.Cryptography.MD4Managed : Mono.Security.Cryptography.MD4
Mono.Security.Cryptography.MD4Managed = {}
---@type Mono.Security.Cryptography.MD4Managed
CS.Mono.Security.Cryptography.MD4Managed = Mono.Security.Cryptography.MD4Managed

---@return System.Void
function Mono.Security.Cryptography.MD4Managed:Initialize()end
---@class Mono.Security.Cryptography.PKCS1 : System.Object
Mono.Security.Cryptography.PKCS1 = {}
---@type Mono.Security.Cryptography.PKCS1
CS.Mono.Security.Cryptography.PKCS1 = Mono.Security.Cryptography.PKCS1

---@overload fun(x:System.Byte[], size:System.Int32):System.Byte[]
---@param x System.Int32
---@param size System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.I2OSP(x, size)end
---@param x System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.OS2IP(x)end
---@param rsa System.Security.Cryptography.RSA
---@param m System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.RSAEP(rsa, m)end
---@param rsa System.Security.Cryptography.RSA
---@param c System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.RSADP(rsa, c)end
---@param rsa System.Security.Cryptography.RSA
---@param m System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.RSASP1(rsa, m)end
---@param rsa System.Security.Cryptography.RSA
---@param s System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.RSAVP1(rsa, s)end
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param rng System.Security.Cryptography.RandomNumberGenerator
---@param M System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Encrypt_OAEP(rsa, hash, rng, M)end
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param C System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Decrypt_OAEP(rsa, hash, C)end
---@param rsa System.Security.Cryptography.RSA
---@param rng System.Security.Cryptography.RandomNumberGenerator
---@param M System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Encrypt_v15(rsa, rng, M)end
---@param rsa System.Security.Cryptography.RSA
---@param C System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Decrypt_v15(rsa, C)end
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Sign_v15(rsa, hash, hashValue)end
---@overload fun(rsa:System.Security.Cryptography.RSA, hash:System.Security.Cryptography.HashAlgorithm, hashValue:System.Byte[], signature:System.Byte[], tryNonStandardEncoding:System.Boolean):System.Boolean
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue System.Byte[]
---@param signature System.Byte[]
---@return System.Boolean
function Mono.Security.Cryptography.PKCS1.Verify_v15(rsa, hash, hashValue, signature)end
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue System.Byte[]
---@param emLength System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.Encode_v15(hash, hashValue, emLength)end
---@param hash System.Security.Cryptography.HashAlgorithm
---@param mgfSeed System.Byte[]
---@param maskLen System.Int32
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS1.MGF1(hash, mgfSeed, maskLen)end
---@class Mono.Security.Cryptography.PKCS8 : System.Object
Mono.Security.Cryptography.PKCS8 = {}
---@type Mono.Security.Cryptography.PKCS8
CS.Mono.Security.Cryptography.PKCS8 = Mono.Security.Cryptography.PKCS8

---@param data System.Byte[]
---@return Mono.Security.Cryptography.PKCS8.KeyInfo
function Mono.Security.Cryptography.PKCS8.GetType(data)end
---@class Mono.Security.Cryptography.RC4 : System.Security.Cryptography.SymmetricAlgorithm
---@field public IV System.Byte[] @ setter getter
Mono.Security.Cryptography.RC4 = {}
---@type Mono.Security.Cryptography.RC4
CS.Mono.Security.Cryptography.RC4 = Mono.Security.Cryptography.RC4

---@overload fun(algName:System.String):Mono.Security.Cryptography.RC4
---@return Mono.Security.Cryptography.RC4
function Mono.Security.Cryptography.RC4.Create()end
---@class Mono.Security.Cryptography.RSAManaged : System.Security.Cryptography.RSA
---@field public KeySize System.Int32 @  getter
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public PublicOnly System.Boolean @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public UseKeyBlinding System.Boolean @ setter getter
---@field public IsCrtPossible System.Boolean @  getter
Mono.Security.Cryptography.RSAManaged = {}
---@type Mono.Security.Cryptography.RSAManaged
CS.Mono.Security.Cryptography.RSAManaged = Mono.Security.Cryptography.RSAManaged

---@param rgb System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.RSAManaged:DecryptValue(rgb)end
---@param rgb System.Byte[]
---@return System.Byte[]
function Mono.Security.Cryptography.RSAManaged:EncryptValue(rgb)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.RSAParameters
function Mono.Security.Cryptography.RSAManaged:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.RSAParameters
---@return System.Void
function Mono.Security.Cryptography.RSAManaged:ImportParameters(parameters)end
---@param value Mono.Security.Cryptography.RSAManaged.KeyGeneratedEventHandler
---@return System.Void
function Mono.Security.Cryptography.RSAManaged:add_KeyGenerated(value)end
---@param value Mono.Security.Cryptography.RSAManaged.KeyGeneratedEventHandler
---@return System.Void
function Mono.Security.Cryptography.RSAManaged:remove_KeyGenerated(value)end
---@param includePrivateParameters System.Boolean
---@return System.String
function Mono.Security.Cryptography.RSAManaged:ToXmlString(includePrivateParameters)end
---@class Mono.Security.Cryptography.SHA224 : System.Security.Cryptography.HashAlgorithm
Mono.Security.Cryptography.SHA224 = {}
---@type Mono.Security.Cryptography.SHA224
CS.Mono.Security.Cryptography.SHA224 = Mono.Security.Cryptography.SHA224

---@overload fun(hashName:System.String):Mono.Security.Cryptography.SHA224
---@return Mono.Security.Cryptography.SHA224
function Mono.Security.Cryptography.SHA224.Create()end
---@class Mono.Security.Cryptography.SHA224Managed : Mono.Security.Cryptography.SHA224
Mono.Security.Cryptography.SHA224Managed = {}
---@type Mono.Security.Cryptography.SHA224Managed
CS.Mono.Security.Cryptography.SHA224Managed = Mono.Security.Cryptography.SHA224Managed

---@return System.Void
function Mono.Security.Cryptography.SHA224Managed:Initialize()end
---@class Mono.Security.Cryptography.PKCS8.KeyInfo : System.Enum
Mono.Security.Cryptography.PKCS8.KeyInfo = {}
---@type Mono.Security.Cryptography.PKCS8.KeyInfo
CS.Mono.Security.Cryptography.PKCS8.KeyInfo = Mono.Security.Cryptography.PKCS8.KeyInfo

---@return System.Int32 value:0
Mono.Security.Cryptography.PKCS8.KeyInfo.PrivateKey = 0
---@return System.Int32 value:1
Mono.Security.Cryptography.PKCS8.KeyInfo.EncryptedPrivateKey = 1
---@return System.Int32 value:2
Mono.Security.Cryptography.PKCS8.KeyInfo.Unknown = 2

---@class Mono.Security.Cryptography.PKCS8.PrivateKeyInfo : System.Object
---@field public Algorithm System.String @ setter getter
---@field public Attributes System.Collections.ArrayList @  getter
---@field public PrivateKey System.Byte[] @ setter getter
---@field public Version System.Int32 @ setter getter
Mono.Security.Cryptography.PKCS8.PrivateKeyInfo = {}
---@type Mono.Security.Cryptography.PKCS8.PrivateKeyInfo
CS.Mono.Security.Cryptography.PKCS8.PrivateKeyInfo = Mono.Security.Cryptography.PKCS8.PrivateKeyInfo

---@return System.Byte[]
function Mono.Security.Cryptography.PKCS8.PrivateKeyInfo:GetBytes()end
---@param keypair System.Byte[]
---@return System.Security.Cryptography.RSA
function Mono.Security.Cryptography.PKCS8.PrivateKeyInfo.DecodeRSA(keypair)end
---@overload fun(dsa:System.Security.Cryptography.DSA):System.Byte[]
---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm):System.Byte[]
---@param rsa System.Security.Cryptography.RSA
---@return System.Byte[]
function Mono.Security.Cryptography.PKCS8.PrivateKeyInfo.Encode(rsa)end
---@param privateKey System.Byte[]
---@param dsaParameters System.Security.Cryptography.DSAParameters
---@return System.Security.Cryptography.DSA
function Mono.Security.Cryptography.PKCS8.PrivateKeyInfo.DecodeDSA(privateKey, dsaParameters)end
---@class Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo : System.Object
---@field public Algorithm System.String @ setter getter
---@field public EncryptedData System.Byte[] @ setter getter
---@field public Salt System.Byte[] @ setter getter
---@field public IterationCount System.Int32 @ setter getter
Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo = {}
---@type Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo
CS.Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo = Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo

---@return System.Byte[]
function Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo:GetBytes()end
