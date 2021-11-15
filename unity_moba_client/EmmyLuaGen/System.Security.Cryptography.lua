---@class System.Security.Cryptography.HashAlgorithmName : System.ValueType
---@field public MD5 System.Security.Cryptography.HashAlgorithmName @static  getter
---@field public SHA1 System.Security.Cryptography.HashAlgorithmName @static  getter
---@field public SHA256 System.Security.Cryptography.HashAlgorithmName @static  getter
---@field public SHA384 System.Security.Cryptography.HashAlgorithmName @static  getter
---@field public SHA512 System.Security.Cryptography.HashAlgorithmName @static  getter
---@field public Name System.String @  getter
System.Security.Cryptography.HashAlgorithmName = {}
---@type System.Security.Cryptography.HashAlgorithmName
CS.System.Security.Cryptography.HashAlgorithmName = System.Security.Cryptography.HashAlgorithmName

---@return System.String
function System.Security.Cryptography.HashAlgorithmName:ToString()end
---@overload fun(other:System.Security.Cryptography.HashAlgorithmName):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.HashAlgorithmName:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.HashAlgorithmName:GetHashCode()end
---@param left System.Security.Cryptography.HashAlgorithmName
---@param right System.Security.Cryptography.HashAlgorithmName
---@return System.Boolean
function System.Security.Cryptography.HashAlgorithmName.op_Equality(left, right)end
---@param left System.Security.Cryptography.HashAlgorithmName
---@param right System.Security.Cryptography.HashAlgorithmName
---@return System.Boolean
function System.Security.Cryptography.HashAlgorithmName.op_Inequality(left, right)end
---@class System.Security.Cryptography.RSAEncryptionPadding : System.Object
---@field public Pkcs1 System.Security.Cryptography.RSAEncryptionPadding @static  getter
---@field public OaepSHA1 System.Security.Cryptography.RSAEncryptionPadding @static  getter
---@field public OaepSHA256 System.Security.Cryptography.RSAEncryptionPadding @static  getter
---@field public OaepSHA384 System.Security.Cryptography.RSAEncryptionPadding @static  getter
---@field public OaepSHA512 System.Security.Cryptography.RSAEncryptionPadding @static  getter
---@field public Mode System.Security.Cryptography.RSAEncryptionPaddingMode @  getter
---@field public OaepHashAlgorithm System.Security.Cryptography.HashAlgorithmName @  getter
System.Security.Cryptography.RSAEncryptionPadding = {}
---@type System.Security.Cryptography.RSAEncryptionPadding
CS.System.Security.Cryptography.RSAEncryptionPadding = System.Security.Cryptography.RSAEncryptionPadding

---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Security.Cryptography.RSAEncryptionPadding
function System.Security.Cryptography.RSAEncryptionPadding.CreateOaep(hashAlgorithm)end
---@return System.Int32
function System.Security.Cryptography.RSAEncryptionPadding:GetHashCode()end
---@overload fun(other:System.Security.Cryptography.RSAEncryptionPadding):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.RSAEncryptionPadding:Equals(obj)end
---@param left System.Security.Cryptography.RSAEncryptionPadding
---@param right System.Security.Cryptography.RSAEncryptionPadding
---@return System.Boolean
function System.Security.Cryptography.RSAEncryptionPadding.op_Equality(left, right)end
---@param left System.Security.Cryptography.RSAEncryptionPadding
---@param right System.Security.Cryptography.RSAEncryptionPadding
---@return System.Boolean
function System.Security.Cryptography.RSAEncryptionPadding.op_Inequality(left, right)end
---@return System.String
function System.Security.Cryptography.RSAEncryptionPadding:ToString()end
---@class System.Security.Cryptography.RSAEncryptionPaddingMode : System.Enum
System.Security.Cryptography.RSAEncryptionPaddingMode = {}
---@type System.Security.Cryptography.RSAEncryptionPaddingMode
CS.System.Security.Cryptography.RSAEncryptionPaddingMode = System.Security.Cryptography.RSAEncryptionPaddingMode

---@return System.Int32 value:0
System.Security.Cryptography.RSAEncryptionPaddingMode.Pkcs1 = 0
---@return System.Int32 value:1
System.Security.Cryptography.RSAEncryptionPaddingMode.Oaep = 1

---@class System.Security.Cryptography.RSASignaturePadding : System.Object
---@field public Pkcs1 System.Security.Cryptography.RSASignaturePadding @static  getter
---@field public Pss System.Security.Cryptography.RSASignaturePadding @static  getter
---@field public Mode System.Security.Cryptography.RSASignaturePaddingMode @  getter
System.Security.Cryptography.RSASignaturePadding = {}
---@type System.Security.Cryptography.RSASignaturePadding
CS.System.Security.Cryptography.RSASignaturePadding = System.Security.Cryptography.RSASignaturePadding

---@return System.Int32
function System.Security.Cryptography.RSASignaturePadding:GetHashCode()end
---@overload fun(other:System.Security.Cryptography.RSASignaturePadding):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.RSASignaturePadding:Equals(obj)end
---@param left System.Security.Cryptography.RSASignaturePadding
---@param right System.Security.Cryptography.RSASignaturePadding
---@return System.Boolean
function System.Security.Cryptography.RSASignaturePadding.op_Equality(left, right)end
---@param left System.Security.Cryptography.RSASignaturePadding
---@param right System.Security.Cryptography.RSASignaturePadding
---@return System.Boolean
function System.Security.Cryptography.RSASignaturePadding.op_Inequality(left, right)end
---@return System.String
function System.Security.Cryptography.RSASignaturePadding:ToString()end
---@class System.Security.Cryptography.RSASignaturePaddingMode : System.Enum
System.Security.Cryptography.RSASignaturePaddingMode = {}
---@type System.Security.Cryptography.RSASignaturePaddingMode
CS.System.Security.Cryptography.RSASignaturePaddingMode = System.Security.Cryptography.RSASignaturePaddingMode

---@return System.Int32 value:0
System.Security.Cryptography.RSASignaturePaddingMode.Pkcs1 = 0
---@return System.Int32 value:1
System.Security.Cryptography.RSASignaturePaddingMode.Pss = 1

---@class System.Security.Cryptography.Aes : System.Security.Cryptography.SymmetricAlgorithm
System.Security.Cryptography.Aes = {}
---@type System.Security.Cryptography.Aes
CS.System.Security.Cryptography.Aes = System.Security.Cryptography.Aes

---@overload fun(algorithmName:System.String):System.Security.Cryptography.Aes
---@return System.Security.Cryptography.Aes
function System.Security.Cryptography.Aes.Create()end
---@class System.Security.Cryptography.AsymmetricAlgorithm : System.Object
---@field public KeySize System.Int32 @ setter getter
---@field public LegalKeySizes System.Security.Cryptography.KeySizes[] @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public KeyExchangeAlgorithm System.String @  getter
System.Security.Cryptography.AsymmetricAlgorithm = {}
---@type System.Security.Cryptography.AsymmetricAlgorithm
CS.System.Security.Cryptography.AsymmetricAlgorithm = System.Security.Cryptography.AsymmetricAlgorithm

---@return System.Void
function System.Security.Cryptography.AsymmetricAlgorithm:Dispose()end
---@return System.Void
function System.Security.Cryptography.AsymmetricAlgorithm:Clear()end
---@overload fun(algName:System.String):System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricAlgorithm.Create()end
---@param xmlString System.String
---@return System.Void
function System.Security.Cryptography.AsymmetricAlgorithm:FromXmlString(xmlString)end
---@param includePrivateParameters System.Boolean
---@return System.String
function System.Security.Cryptography.AsymmetricAlgorithm:ToXmlString(includePrivateParameters)end
---@class System.Security.Cryptography.AsymmetricKeyExchangeDeformatter : System.Object
---@field public Parameters System.String @ setter getter
System.Security.Cryptography.AsymmetricKeyExchangeDeformatter = {}
---@type System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
CS.System.Security.Cryptography.AsymmetricKeyExchangeDeformatter = System.Security.Cryptography.AsymmetricKeyExchangeDeformatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.AsymmetricKeyExchangeDeformatter:SetKey(key)end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricKeyExchangeDeformatter:DecryptKeyExchange(rgb)end
---@class System.Security.Cryptography.AsymmetricKeyExchangeFormatter : System.Object
---@field public Parameters System.String @  getter
System.Security.Cryptography.AsymmetricKeyExchangeFormatter = {}
---@type System.Security.Cryptography.AsymmetricKeyExchangeFormatter
CS.System.Security.Cryptography.AsymmetricKeyExchangeFormatter = System.Security.Cryptography.AsymmetricKeyExchangeFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.AsymmetricKeyExchangeFormatter:SetKey(key)end
---@overload fun(data:System.Byte[], symAlgType:System.Type):System.Byte[]
---@param data System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricKeyExchangeFormatter:CreateKeyExchange(data)end
---@class System.Security.Cryptography.AsymmetricSignatureDeformatter : System.Object
System.Security.Cryptography.AsymmetricSignatureDeformatter = {}
---@type System.Security.Cryptography.AsymmetricSignatureDeformatter
CS.System.Security.Cryptography.AsymmetricSignatureDeformatter = System.Security.Cryptography.AsymmetricSignatureDeformatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.AsymmetricSignatureDeformatter:SetKey(key)end
---@param strName System.String
---@return System.Void
function System.Security.Cryptography.AsymmetricSignatureDeformatter:SetHashAlgorithm(strName)end
---@overload fun(rgbHash:System.Byte[], rgbSignature:System.Byte[]):System.Boolean
---@param hash System.Security.Cryptography.HashAlgorithm
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.AsymmetricSignatureDeformatter:VerifySignature(hash, rgbSignature)end
---@class System.Security.Cryptography.AsymmetricSignatureFormatter : System.Object
System.Security.Cryptography.AsymmetricSignatureFormatter = {}
---@type System.Security.Cryptography.AsymmetricSignatureFormatter
CS.System.Security.Cryptography.AsymmetricSignatureFormatter = System.Security.Cryptography.AsymmetricSignatureFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.AsymmetricSignatureFormatter:SetKey(key)end
---@param strName System.String
---@return System.Void
function System.Security.Cryptography.AsymmetricSignatureFormatter:SetHashAlgorithm(strName)end
---@overload fun(rgbHash:System.Byte[]):System.Byte[]
---@param hash System.Security.Cryptography.HashAlgorithm
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricSignatureFormatter:CreateSignature(hash)end
---@class System.Security.Cryptography.FromBase64TransformMode : System.Enum
System.Security.Cryptography.FromBase64TransformMode = {}
---@type System.Security.Cryptography.FromBase64TransformMode
CS.System.Security.Cryptography.FromBase64TransformMode = System.Security.Cryptography.FromBase64TransformMode

---@return System.Int32 value:0
System.Security.Cryptography.FromBase64TransformMode.IgnoreWhiteSpaces = 0
---@return System.Int32 value:1
System.Security.Cryptography.FromBase64TransformMode.DoNotIgnoreWhiteSpaces = 1

---@class System.Security.Cryptography.ToBase64Transform : System.Object
---@field public InputBlockSize System.Int32 @  getter
---@field public OutputBlockSize System.Int32 @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public CanReuseTransform System.Boolean @  getter
System.Security.Cryptography.ToBase64Transform = {}
---@type System.Security.Cryptography.ToBase64Transform
CS.System.Security.Cryptography.ToBase64Transform = System.Security.Cryptography.ToBase64Transform

---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function System.Security.Cryptography.ToBase64Transform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function System.Security.Cryptography.ToBase64Transform:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@return System.Void
function System.Security.Cryptography.ToBase64Transform:Dispose()end
---@return System.Void
function System.Security.Cryptography.ToBase64Transform:Clear()end
---@class System.Security.Cryptography.FromBase64Transform : System.Object
---@field public InputBlockSize System.Int32 @  getter
---@field public OutputBlockSize System.Int32 @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public CanReuseTransform System.Boolean @  getter
System.Security.Cryptography.FromBase64Transform = {}
---@type System.Security.Cryptography.FromBase64Transform
CS.System.Security.Cryptography.FromBase64Transform = System.Security.Cryptography.FromBase64Transform

---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function System.Security.Cryptography.FromBase64Transform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function System.Security.Cryptography.FromBase64Transform:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@return System.Void
function System.Security.Cryptography.FromBase64Transform:Dispose()end
---@return System.Void
function System.Security.Cryptography.FromBase64Transform:Clear()end
---@class System.Security.Cryptography.CipherMode : System.Enum
System.Security.Cryptography.CipherMode = {}
---@type System.Security.Cryptography.CipherMode
CS.System.Security.Cryptography.CipherMode = System.Security.Cryptography.CipherMode

---@return System.Int32 value:1
System.Security.Cryptography.CipherMode.CBC = 1
---@return System.Int32 value:2
System.Security.Cryptography.CipherMode.ECB = 2
---@return System.Int32 value:3
System.Security.Cryptography.CipherMode.OFB = 3
---@return System.Int32 value:4
System.Security.Cryptography.CipherMode.CFB = 4

---@class System.Security.Cryptography.PaddingMode : System.Enum
System.Security.Cryptography.PaddingMode = {}
---@type System.Security.Cryptography.PaddingMode
CS.System.Security.Cryptography.PaddingMode = System.Security.Cryptography.PaddingMode

---@return System.Int32 value:1
System.Security.Cryptography.PaddingMode.None = 1
---@return System.Int32 value:2
System.Security.Cryptography.PaddingMode.PKCS7 = 2
---@return System.Int32 value:3
System.Security.Cryptography.PaddingMode.Zeros = 3
---@return System.Int32 value:4
System.Security.Cryptography.PaddingMode.ANSIX923 = 4

---@class System.Security.Cryptography.KeySizes : System.Object
---@field public MinSize System.Int32 @  getter
---@field public MaxSize System.Int32 @  getter
---@field public SkipSize System.Int32 @  getter
System.Security.Cryptography.KeySizes = {}
---@type System.Security.Cryptography.KeySizes
CS.System.Security.Cryptography.KeySizes = System.Security.Cryptography.KeySizes

---@class System.Security.Cryptography.CryptographicException : System.SystemException
System.Security.Cryptography.CryptographicException = {}
---@type System.Security.Cryptography.CryptographicException
CS.System.Security.Cryptography.CryptographicException = System.Security.Cryptography.CryptographicException

---@class System.Security.Cryptography.CryptographicUnexpectedOperationException : System.Security.Cryptography.CryptographicException
System.Security.Cryptography.CryptographicUnexpectedOperationException = {}
---@type System.Security.Cryptography.CryptographicUnexpectedOperationException
CS.System.Security.Cryptography.CryptographicUnexpectedOperationException = System.Security.Cryptography.CryptographicUnexpectedOperationException

---@class System.Security.Cryptography.CspProviderFlags : System.Enum
System.Security.Cryptography.CspProviderFlags = {}
---@type System.Security.Cryptography.CspProviderFlags
CS.System.Security.Cryptography.CspProviderFlags = System.Security.Cryptography.CspProviderFlags

---@return System.Int32 value:0
System.Security.Cryptography.CspProviderFlags.NoFlags = 0
---@return System.Int32 value:1
System.Security.Cryptography.CspProviderFlags.UseMachineKeyStore = 1
---@return System.Int32 value:2
System.Security.Cryptography.CspProviderFlags.UseDefaultKeyContainer = 2
---@return System.Int32 value:4
System.Security.Cryptography.CspProviderFlags.UseNonExportableKey = 4
---@return System.Int32 value:8
System.Security.Cryptography.CspProviderFlags.UseExistingKey = 8

---@class System.Security.Cryptography.CspParameters : System.Object
---@field public Flags System.Security.Cryptography.CspProviderFlags @ setter getter
---@field public CryptoKeySecurity System.Security.AccessControl.CryptoKeySecurity @ setter getter
---@field public KeyPassword System.Security.SecureString @ setter getter
---@field public ParentWindowHandle System.IntPtr @ setter getter
---@field public ProviderType System.Int32
---@field public ProviderName System.String
---@field public KeyContainerName System.String
---@field public KeyNumber System.Int32
System.Security.Cryptography.CspParameters = {}
---@type System.Security.Cryptography.CspParameters
CS.System.Security.Cryptography.CspParameters = System.Security.Cryptography.CspParameters

---@class System.Security.Cryptography.CryptoStreamMode : System.Enum
System.Security.Cryptography.CryptoStreamMode = {}
---@type System.Security.Cryptography.CryptoStreamMode
CS.System.Security.Cryptography.CryptoStreamMode = System.Security.Cryptography.CryptoStreamMode

---@return System.Int32 value:0
System.Security.Cryptography.CryptoStreamMode.Read = 0
---@return System.Int32 value:1
System.Security.Cryptography.CryptoStreamMode.Write = 1

---@class System.Security.Cryptography.CryptoStream : System.IO.Stream
---@field public CanRead System.Boolean @  getter
---@field public CanSeek System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public Length System.Int64 @  getter
---@field public Position System.Int64 @ setter getter
---@field public HasFlushedFinalBlock System.Boolean @  getter
System.Security.Cryptography.CryptoStream = {}
---@type System.Security.Cryptography.CryptoStream
CS.System.Security.Cryptography.CryptoStream = System.Security.Cryptography.CryptoStream

---@return System.Void
function System.Security.Cryptography.CryptoStream:FlushFinalBlock()end
---@return System.Void
function System.Security.Cryptography.CryptoStream:Flush()end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:FlushAsync(cancellationToken)end
---@param offset System.Int64
---@param origin System.IO.SeekOrigin
---@return System.Int64
function System.Security.Cryptography.CryptoStream:Seek(offset, origin)end
---@param value System.Int64
---@return System.Void
function System.Security.Cryptography.CryptoStream:SetLength(value)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.Security.Cryptography.CryptoStream:Read(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:ReadAsync(buffer, offset, count, cancellationToken)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Void
function System.Security.Cryptography.CryptoStream:Write(buffer, offset, count)end
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:WriteAsync(buffer, offset, count, cancellationToken)end
---@return System.Void
function System.Security.Cryptography.CryptoStream:Clear()end
---@class System.Security.Cryptography.DeriveBytes : System.Object
System.Security.Cryptography.DeriveBytes = {}
---@type System.Security.Cryptography.DeriveBytes
CS.System.Security.Cryptography.DeriveBytes = System.Security.Cryptography.DeriveBytes

---@param cb System.Int32
---@return System.Byte[]
function System.Security.Cryptography.DeriveBytes:GetBytes(cb)end
---@return System.Void
function System.Security.Cryptography.DeriveBytes:Reset()end
---@return System.Void
function System.Security.Cryptography.DeriveBytes:Dispose()end
---@class System.Security.Cryptography.DES : System.Security.Cryptography.SymmetricAlgorithm
---@field public Key System.Byte[] @ setter getter
System.Security.Cryptography.DES = {}
---@type System.Security.Cryptography.DES
CS.System.Security.Cryptography.DES = System.Security.Cryptography.DES

---@overload fun(algName:System.String):System.Security.Cryptography.DES
---@return System.Security.Cryptography.DES
function System.Security.Cryptography.DES.Create()end
---@param rgbKey System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DES.IsWeakKey(rgbKey)end
---@param rgbKey System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DES.IsSemiWeakKey(rgbKey)end
---@class System.Security.Cryptography.DESCryptoServiceProvider : System.Security.Cryptography.DES
System.Security.Cryptography.DESCryptoServiceProvider = {}
---@type System.Security.Cryptography.DESCryptoServiceProvider
CS.System.Security.Cryptography.DESCryptoServiceProvider = System.Security.Cryptography.DESCryptoServiceProvider

---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.DESCryptoServiceProvider:CreateEncryptor(rgbKey, rgbIV)end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.DESCryptoServiceProvider:CreateDecryptor(rgbKey, rgbIV)end
---@return System.Void
function System.Security.Cryptography.DESCryptoServiceProvider:GenerateKey()end
---@return System.Void
function System.Security.Cryptography.DESCryptoServiceProvider:GenerateIV()end
---@class System.Security.Cryptography.DSAParameters : System.ValueType
---@field public P System.Byte[]
---@field public Q System.Byte[]
---@field public G System.Byte[]
---@field public Y System.Byte[]
---@field public J System.Byte[]
---@field public X System.Byte[]
---@field public Seed System.Byte[]
---@field public Counter System.Int32
System.Security.Cryptography.DSAParameters = {}
---@type System.Security.Cryptography.DSAParameters
CS.System.Security.Cryptography.DSAParameters = System.Security.Cryptography.DSAParameters

---@class System.Security.Cryptography.DSA : System.Security.Cryptography.AsymmetricAlgorithm
System.Security.Cryptography.DSA = {}
---@type System.Security.Cryptography.DSA
CS.System.Security.Cryptography.DSA = System.Security.Cryptography.DSA

---@overload fun(algName:System.String):System.Security.Cryptography.DSA
---@return System.Security.Cryptography.DSA
function System.Security.Cryptography.DSA.Create()end
---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSA:CreateSignature(rgbHash)end
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSA:VerifySignature(rgbHash, rgbSignature)end
---@overload fun(data:System.IO.Stream, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Byte[]
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Byte[]
---@param data System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Byte[]
function System.Security.Cryptography.DSA:SignData(data, hashAlgorithm)end
---@overload fun(data:System.IO.Stream, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Boolean
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Boolean
---@param data System.Byte[]
---@param signature System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Boolean
function System.Security.Cryptography.DSA:VerifyData(data, signature, hashAlgorithm)end
---@param xmlString System.String
---@return System.Void
function System.Security.Cryptography.DSA:FromXmlString(xmlString)end
---@param includePrivateParameters System.Boolean
---@return System.String
function System.Security.Cryptography.DSA:ToXmlString(includePrivateParameters)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.DSAParameters
function System.Security.Cryptography.DSA:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.DSAParameters
---@return System.Void
function System.Security.Cryptography.DSA:ImportParameters(parameters)end
---@class System.Security.Cryptography.DSASignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter
System.Security.Cryptography.DSASignatureDeformatter = {}
---@type System.Security.Cryptography.DSASignatureDeformatter
CS.System.Security.Cryptography.DSASignatureDeformatter = System.Security.Cryptography.DSASignatureDeformatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.DSASignatureDeformatter:SetKey(key)end
---@param strName System.String
---@return System.Void
function System.Security.Cryptography.DSASignatureDeformatter:SetHashAlgorithm(strName)end
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSASignatureDeformatter:VerifySignature(rgbHash, rgbSignature)end
---@class System.Security.Cryptography.DSASignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter
System.Security.Cryptography.DSASignatureFormatter = {}
---@type System.Security.Cryptography.DSASignatureFormatter
CS.System.Security.Cryptography.DSASignatureFormatter = System.Security.Cryptography.DSASignatureFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.DSASignatureFormatter:SetKey(key)end
---@param strName System.String
---@return System.Void
function System.Security.Cryptography.DSASignatureFormatter:SetHashAlgorithm(strName)end
---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSASignatureFormatter:CreateSignature(rgbHash)end
---@class System.Security.Cryptography.HashAlgorithm : System.Object
---@field public HashSize System.Int32 @  getter
---@field public Hash System.Byte[] @  getter
---@field public InputBlockSize System.Int32 @  getter
---@field public OutputBlockSize System.Int32 @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public CanReuseTransform System.Boolean @  getter
System.Security.Cryptography.HashAlgorithm = {}
---@type System.Security.Cryptography.HashAlgorithm
CS.System.Security.Cryptography.HashAlgorithm = System.Security.Cryptography.HashAlgorithm

---@overload fun(hashName:System.String):System.Security.Cryptography.HashAlgorithm
---@return System.Security.Cryptography.HashAlgorithm
function System.Security.Cryptography.HashAlgorithm.Create()end
---@overload fun(buffer:System.Byte[]):System.Byte[]
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Byte[]
---@param inputStream System.IO.Stream
---@return System.Byte[]
function System.Security.Cryptography.HashAlgorithm:ComputeHash(inputStream)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function System.Security.Cryptography.HashAlgorithm:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function System.Security.Cryptography.HashAlgorithm:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@return System.Void
function System.Security.Cryptography.HashAlgorithm:Dispose()end
---@return System.Void
function System.Security.Cryptography.HashAlgorithm:Clear()end
---@return System.Void
function System.Security.Cryptography.HashAlgorithm:Initialize()end
---@class System.Security.Cryptography.HMAC : System.Security.Cryptography.KeyedHashAlgorithm
---@field public Key System.Byte[] @ setter getter
---@field public HashName System.String @ setter getter
System.Security.Cryptography.HMAC = {}
---@type System.Security.Cryptography.HMAC
CS.System.Security.Cryptography.HMAC = System.Security.Cryptography.HMAC

---@overload fun(algorithmName:System.String):System.Security.Cryptography.HMAC
---@return System.Security.Cryptography.HMAC
function System.Security.Cryptography.HMAC.Create()end
---@return System.Void
function System.Security.Cryptography.HMAC:Initialize()end
---@class System.Security.Cryptography.HMACMD5 : System.Security.Cryptography.HMAC
System.Security.Cryptography.HMACMD5 = {}
---@type System.Security.Cryptography.HMACMD5
CS.System.Security.Cryptography.HMACMD5 = System.Security.Cryptography.HMACMD5

---@class System.Security.Cryptography.HMACRIPEMD160 : System.Security.Cryptography.HMAC
System.Security.Cryptography.HMACRIPEMD160 = {}
---@type System.Security.Cryptography.HMACRIPEMD160
CS.System.Security.Cryptography.HMACRIPEMD160 = System.Security.Cryptography.HMACRIPEMD160

---@class System.Security.Cryptography.HMACSHA1 : System.Security.Cryptography.HMAC
System.Security.Cryptography.HMACSHA1 = {}
---@type System.Security.Cryptography.HMACSHA1
CS.System.Security.Cryptography.HMACSHA1 = System.Security.Cryptography.HMACSHA1

---@class System.Security.Cryptography.HMACSHA256 : System.Security.Cryptography.HMAC
System.Security.Cryptography.HMACSHA256 = {}
---@type System.Security.Cryptography.HMACSHA256
CS.System.Security.Cryptography.HMACSHA256 = System.Security.Cryptography.HMACSHA256

---@class System.Security.Cryptography.HMACSHA384 : System.Security.Cryptography.HMAC
---@field public ProduceLegacyHmacValues System.Boolean @ setter getter
System.Security.Cryptography.HMACSHA384 = {}
---@type System.Security.Cryptography.HMACSHA384
CS.System.Security.Cryptography.HMACSHA384 = System.Security.Cryptography.HMACSHA384

---@class System.Security.Cryptography.HMACSHA512 : System.Security.Cryptography.HMAC
---@field public ProduceLegacyHmacValues System.Boolean @ setter getter
System.Security.Cryptography.HMACSHA512 = {}
---@type System.Security.Cryptography.HMACSHA512
CS.System.Security.Cryptography.HMACSHA512 = System.Security.Cryptography.HMACSHA512

---@class System.Security.Cryptography.KeyedHashAlgorithm : System.Security.Cryptography.HashAlgorithm
---@field public Key System.Byte[] @ setter getter
System.Security.Cryptography.KeyedHashAlgorithm = {}
---@type System.Security.Cryptography.KeyedHashAlgorithm
CS.System.Security.Cryptography.KeyedHashAlgorithm = System.Security.Cryptography.KeyedHashAlgorithm

---@overload fun(algName:System.String):System.Security.Cryptography.KeyedHashAlgorithm
---@return System.Security.Cryptography.KeyedHashAlgorithm
function System.Security.Cryptography.KeyedHashAlgorithm.Create()end
---@class System.Security.Cryptography.MACTripleDES : System.Security.Cryptography.KeyedHashAlgorithm
---@field public Padding System.Security.Cryptography.PaddingMode @ setter getter
System.Security.Cryptography.MACTripleDES = {}
---@type System.Security.Cryptography.MACTripleDES
CS.System.Security.Cryptography.MACTripleDES = System.Security.Cryptography.MACTripleDES

---@return System.Void
function System.Security.Cryptography.MACTripleDES:Initialize()end
---@class System.Security.Cryptography.MaskGenerationMethod : System.Object
System.Security.Cryptography.MaskGenerationMethod = {}
---@type System.Security.Cryptography.MaskGenerationMethod
CS.System.Security.Cryptography.MaskGenerationMethod = System.Security.Cryptography.MaskGenerationMethod

---@param rgbSeed System.Byte[]
---@param cbReturn System.Int32
---@return System.Byte[]
function System.Security.Cryptography.MaskGenerationMethod:GenerateMask(rgbSeed, cbReturn)end
---@class System.Security.Cryptography.MD5 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.MD5 = {}
---@type System.Security.Cryptography.MD5
CS.System.Security.Cryptography.MD5 = System.Security.Cryptography.MD5

---@overload fun(algName:System.String):System.Security.Cryptography.MD5
---@return System.Security.Cryptography.MD5
function System.Security.Cryptography.MD5.Create()end
---@class System.Security.Cryptography.PasswordDeriveBytes : System.Security.Cryptography.DeriveBytes
---@field public HashName System.String @ setter getter
---@field public IterationCount System.Int32 @ setter getter
---@field public Salt System.Byte[] @ setter getter
System.Security.Cryptography.PasswordDeriveBytes = {}
---@type System.Security.Cryptography.PasswordDeriveBytes
CS.System.Security.Cryptography.PasswordDeriveBytes = System.Security.Cryptography.PasswordDeriveBytes

---@param cb System.Int32
---@return System.Byte[]
function System.Security.Cryptography.PasswordDeriveBytes:GetBytes(cb)end
---@return System.Void
function System.Security.Cryptography.PasswordDeriveBytes:Reset()end
---@param algname System.String
---@param alghashname System.String
---@param keySize System.Int32
---@param rgbIV System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.PasswordDeriveBytes:CryptDeriveKey(algname, alghashname, keySize, rgbIV)end
---@class System.Security.Cryptography.PKCS1MaskGenerationMethod : System.Security.Cryptography.MaskGenerationMethod
---@field public HashName System.String @ setter getter
System.Security.Cryptography.PKCS1MaskGenerationMethod = {}
---@type System.Security.Cryptography.PKCS1MaskGenerationMethod
CS.System.Security.Cryptography.PKCS1MaskGenerationMethod = System.Security.Cryptography.PKCS1MaskGenerationMethod

---@param rgbSeed System.Byte[]
---@param cbReturn System.Int32
---@return System.Byte[]
function System.Security.Cryptography.PKCS1MaskGenerationMethod:GenerateMask(rgbSeed, cbReturn)end
---@class System.Security.Cryptography.RandomNumberGenerator : System.Object
System.Security.Cryptography.RandomNumberGenerator = {}
---@type System.Security.Cryptography.RandomNumberGenerator
CS.System.Security.Cryptography.RandomNumberGenerator = System.Security.Cryptography.RandomNumberGenerator

---@overload fun(rngName:System.String):System.Security.Cryptography.RandomNumberGenerator
---@return System.Security.Cryptography.RandomNumberGenerator
function System.Security.Cryptography.RandomNumberGenerator.Create()end
---@return System.Void
function System.Security.Cryptography.RandomNumberGenerator:Dispose()end
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param data System.Byte[]
---@return System.Void
function System.Security.Cryptography.RandomNumberGenerator:GetBytes(data)end
---@param data System.Byte[]
---@return System.Void
function System.Security.Cryptography.RandomNumberGenerator:GetNonZeroBytes(data)end
---@class System.Security.Cryptography.RC2 : System.Security.Cryptography.SymmetricAlgorithm
---@field public EffectiveKeySize System.Int32 @ setter getter
---@field public KeySize System.Int32 @ setter getter
System.Security.Cryptography.RC2 = {}
---@type System.Security.Cryptography.RC2
CS.System.Security.Cryptography.RC2 = System.Security.Cryptography.RC2

---@overload fun(AlgName:System.String):System.Security.Cryptography.RC2
---@return System.Security.Cryptography.RC2
function System.Security.Cryptography.RC2.Create()end
---@class System.Security.Cryptography.RC2CryptoServiceProvider : System.Security.Cryptography.RC2
---@field public EffectiveKeySize System.Int32 @ setter getter
---@field public UseSalt System.Boolean @ setter getter
System.Security.Cryptography.RC2CryptoServiceProvider = {}
---@type System.Security.Cryptography.RC2CryptoServiceProvider
CS.System.Security.Cryptography.RC2CryptoServiceProvider = System.Security.Cryptography.RC2CryptoServiceProvider

---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.RC2CryptoServiceProvider:CreateEncryptor(rgbKey, rgbIV)end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.RC2CryptoServiceProvider:CreateDecryptor(rgbKey, rgbIV)end
---@return System.Void
function System.Security.Cryptography.RC2CryptoServiceProvider:GenerateKey()end
---@return System.Void
function System.Security.Cryptography.RC2CryptoServiceProvider:GenerateIV()end
---@class System.Security.Cryptography.Rfc2898DeriveBytes : System.Security.Cryptography.DeriveBytes
---@field public IterationCount System.Int32 @ setter getter
---@field public Salt System.Byte[] @ setter getter
System.Security.Cryptography.Rfc2898DeriveBytes = {}
---@type System.Security.Cryptography.Rfc2898DeriveBytes
CS.System.Security.Cryptography.Rfc2898DeriveBytes = System.Security.Cryptography.Rfc2898DeriveBytes

---@param cb System.Int32
---@return System.Byte[]
function System.Security.Cryptography.Rfc2898DeriveBytes:GetBytes(cb)end
---@return System.Void
function System.Security.Cryptography.Rfc2898DeriveBytes:Reset()end
---@param algname System.String
---@param alghashname System.String
---@param keySize System.Int32
---@param rgbIV System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.Rfc2898DeriveBytes:CryptDeriveKey(algname, alghashname, keySize, rgbIV)end
---@class System.Security.Cryptography.Rijndael : System.Security.Cryptography.SymmetricAlgorithm
System.Security.Cryptography.Rijndael = {}
---@type System.Security.Cryptography.Rijndael
CS.System.Security.Cryptography.Rijndael = System.Security.Cryptography.Rijndael

---@overload fun(algName:System.String):System.Security.Cryptography.Rijndael
---@return System.Security.Cryptography.Rijndael
function System.Security.Cryptography.Rijndael.Create()end
---@class System.Security.Cryptography.RijndaelManaged : System.Security.Cryptography.Rijndael
System.Security.Cryptography.RijndaelManaged = {}
---@type System.Security.Cryptography.RijndaelManaged
CS.System.Security.Cryptography.RijndaelManaged = System.Security.Cryptography.RijndaelManaged

---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.RijndaelManaged:CreateEncryptor(rgbKey, rgbIV)end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.RijndaelManaged:CreateDecryptor(rgbKey, rgbIV)end
---@return System.Void
function System.Security.Cryptography.RijndaelManaged:GenerateKey()end
---@return System.Void
function System.Security.Cryptography.RijndaelManaged:GenerateIV()end
---@class System.Security.Cryptography.RijndaelManagedTransform : System.Object
---@field public BlockSizeValue System.Int32 @  getter
---@field public InputBlockSize System.Int32 @  getter
---@field public OutputBlockSize System.Int32 @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public CanReuseTransform System.Boolean @  getter
System.Security.Cryptography.RijndaelManagedTransform = {}
---@type System.Security.Cryptography.RijndaelManagedTransform
CS.System.Security.Cryptography.RijndaelManagedTransform = System.Security.Cryptography.RijndaelManagedTransform

---@return System.Void
function System.Security.Cryptography.RijndaelManagedTransform:Dispose()end
---@return System.Void
function System.Security.Cryptography.RijndaelManagedTransform:Clear()end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function System.Security.Cryptography.RijndaelManagedTransform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function System.Security.Cryptography.RijndaelManagedTransform:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@return System.Void
function System.Security.Cryptography.RijndaelManagedTransform:Reset()end
---@class System.Security.Cryptography.RIPEMD160 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.RIPEMD160 = {}
---@type System.Security.Cryptography.RIPEMD160
CS.System.Security.Cryptography.RIPEMD160 = System.Security.Cryptography.RIPEMD160

---@overload fun(hashName:System.String):System.Security.Cryptography.RIPEMD160
---@return System.Security.Cryptography.RIPEMD160
function System.Security.Cryptography.RIPEMD160.Create()end
---@class System.Security.Cryptography.RIPEMD160Managed : System.Security.Cryptography.RIPEMD160
System.Security.Cryptography.RIPEMD160Managed = {}
---@type System.Security.Cryptography.RIPEMD160Managed
CS.System.Security.Cryptography.RIPEMD160Managed = System.Security.Cryptography.RIPEMD160Managed

---@return System.Void
function System.Security.Cryptography.RIPEMD160Managed:Initialize()end
---@class System.Security.Cryptography.RSAParameters : System.ValueType
---@field public Exponent System.Byte[]
---@field public Modulus System.Byte[]
---@field public P System.Byte[]
---@field public Q System.Byte[]
---@field public DP System.Byte[]
---@field public DQ System.Byte[]
---@field public InverseQ System.Byte[]
---@field public D System.Byte[]
System.Security.Cryptography.RSAParameters = {}
---@type System.Security.Cryptography.RSAParameters
CS.System.Security.Cryptography.RSAParameters = System.Security.Cryptography.RSAParameters

---@class System.Security.Cryptography.RSA : System.Security.Cryptography.AsymmetricAlgorithm
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public SignatureAlgorithm System.String @  getter
System.Security.Cryptography.RSA = {}
---@type System.Security.Cryptography.RSA
CS.System.Security.Cryptography.RSA = System.Security.Cryptography.RSA

---@overload fun(algName:System.String):System.Security.Cryptography.RSA
---@return System.Security.Cryptography.RSA
function System.Security.Cryptography.RSA.Create()end
---@param data System.Byte[]
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return System.Byte[]
function System.Security.Cryptography.RSA:Encrypt(data, padding)end
---@param data System.Byte[]
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return System.Byte[]
function System.Security.Cryptography.RSA:Decrypt(data, padding)end
---@param hash System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return System.Byte[]
function System.Security.Cryptography.RSA:SignHash(hash, hashAlgorithm, padding)end
---@param hash System.Byte[]
---@param signature System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return System.Boolean
function System.Security.Cryptography.RSA:VerifyHash(hash, signature, hashAlgorithm, padding)end
---@overload fun(data:System.IO.Stream, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Byte[]
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Byte[]
---@param data System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return System.Byte[]
function System.Security.Cryptography.RSA:SignData(data, hashAlgorithm, padding)end
---@overload fun(data:System.IO.Stream, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Boolean
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Boolean
---@param data System.Byte[]
---@param signature System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return System.Boolean
function System.Security.Cryptography.RSA:VerifyData(data, signature, hashAlgorithm, padding)end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSA:DecryptValue(rgb)end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSA:EncryptValue(rgb)end
---@param xmlString System.String
---@return System.Void
function System.Security.Cryptography.RSA:FromXmlString(xmlString)end
---@param includePrivateParameters System.Boolean
---@return System.String
function System.Security.Cryptography.RSA:ToXmlString(includePrivateParameters)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.RSAParameters
function System.Security.Cryptography.RSA:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.RSAParameters
---@return System.Void
function System.Security.Cryptography.RSA:ImportParameters(parameters)end
---@class System.Security.Cryptography.RSACryptoServiceProvider : System.Security.Cryptography.RSA
---@field public SignatureAlgorithm System.String @  getter
---@field public UseMachineKeyStore System.Boolean @static setter getter
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public KeySize System.Int32 @  getter
---@field public PersistKeyInCsp System.Boolean @ setter getter
---@field public PublicOnly System.Boolean @  getter
---@field public CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo @  getter
System.Security.Cryptography.RSACryptoServiceProvider = {}
---@type System.Security.Cryptography.RSACryptoServiceProvider
CS.System.Security.Cryptography.RSACryptoServiceProvider = System.Security.Cryptography.RSACryptoServiceProvider

---@overload fun(data:System.Byte[], padding:System.Security.Cryptography.RSAEncryptionPadding):System.Byte[]
---@param rgb System.Byte[]
---@param fOAEP System.Boolean
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:Encrypt(rgb, fOAEP)end
---@overload fun(data:System.Byte[], padding:System.Security.Cryptography.RSAEncryptionPadding):System.Byte[]
---@param rgb System.Byte[]
---@param fOAEP System.Boolean
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:Decrypt(rgb, fOAEP)end
---@overload fun(hash:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Byte[]
---@param rgbHash System.Byte[]
---@param str System.String
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:SignHash(rgbHash, str)end
---@overload fun(hash:System.Byte[], signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):System.Boolean
---@param rgbHash System.Byte[]
---@param str System.String
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.RSACryptoServiceProvider:VerifyHash(rgbHash, str, rgbSignature)end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:DecryptValue(rgb)end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:EncryptValue(rgb)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.RSAParameters
function System.Security.Cryptography.RSACryptoServiceProvider:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.RSAParameters
---@return System.Void
function System.Security.Cryptography.RSACryptoServiceProvider:ImportParameters(parameters)end
---@overload fun(inputStream:System.IO.Stream, halg:System.Object):System.Byte[]
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32, halg:System.Object):System.Byte[]
---@param buffer System.Byte[]
---@param halg System.Object
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:SignData(buffer, halg)end
---@param buffer System.Byte[]
---@param halg System.Object
---@param signature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.RSACryptoServiceProvider:VerifyData(buffer, halg, signature)end
---@param includePrivateParameters System.Boolean
---@return System.Byte[]
function System.Security.Cryptography.RSACryptoServiceProvider:ExportCspBlob(includePrivateParameters)end
---@param keyBlob System.Byte[]
---@return System.Void
function System.Security.Cryptography.RSACryptoServiceProvider:ImportCspBlob(keyBlob)end
---@class System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
---@field public Parameters System.String @ setter getter
System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter = {}
---@type System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
CS.System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter = System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter

---@param rgbData System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter:DecryptKeyExchange(rgbData)end
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter:SetKey(key)end
---@class System.Security.Cryptography.RSAOAEPKeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter
---@field public Parameter System.Byte[] @ setter getter
---@field public Parameters System.String @  getter
---@field public Rng System.Security.Cryptography.RandomNumberGenerator @ setter getter
System.Security.Cryptography.RSAOAEPKeyExchangeFormatter = {}
---@type System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
CS.System.Security.Cryptography.RSAOAEPKeyExchangeFormatter = System.Security.Cryptography.RSAOAEPKeyExchangeFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAOAEPKeyExchangeFormatter:SetKey(key)end
---@overload fun(rgbData:System.Byte[], symAlgType:System.Type):System.Byte[]
---@param rgbData System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSAOAEPKeyExchangeFormatter:CreateKeyExchange(rgbData)end
---@class System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
---@field public RNG System.Security.Cryptography.RandomNumberGenerator @ setter getter
---@field public Parameters System.String @ setter getter
System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter = {}
---@type System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
CS.System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter = System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter

---@param rgbIn System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter:DecryptKeyExchange(rgbIn)end
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter:SetKey(key)end
---@class System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter
---@field public Parameters System.String @  getter
---@field public Rng System.Security.Cryptography.RandomNumberGenerator @ setter getter
System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter = {}
---@type System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
CS.System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter = System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter:SetKey(key)end
---@overload fun(rgbData:System.Byte[], symAlgType:System.Type):System.Byte[]
---@param rgbData System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter:CreateKeyExchange(rgbData)end
---@class System.Security.Cryptography.SHA1 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.SHA1 = {}
---@type System.Security.Cryptography.SHA1
CS.System.Security.Cryptography.SHA1 = System.Security.Cryptography.SHA1

---@overload fun(hashName:System.String):System.Security.Cryptography.SHA1
---@return System.Security.Cryptography.SHA1
function System.Security.Cryptography.SHA1.Create()end
---@class System.Security.Cryptography.SHA1Managed : System.Security.Cryptography.SHA1
System.Security.Cryptography.SHA1Managed = {}
---@type System.Security.Cryptography.SHA1Managed
CS.System.Security.Cryptography.SHA1Managed = System.Security.Cryptography.SHA1Managed

---@return System.Void
function System.Security.Cryptography.SHA1Managed:Initialize()end
---@class System.Security.Cryptography.SHA256 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.SHA256 = {}
---@type System.Security.Cryptography.SHA256
CS.System.Security.Cryptography.SHA256 = System.Security.Cryptography.SHA256

---@overload fun(hashName:System.String):System.Security.Cryptography.SHA256
---@return System.Security.Cryptography.SHA256
function System.Security.Cryptography.SHA256.Create()end
---@class System.Security.Cryptography.SHA256Managed : System.Security.Cryptography.SHA256
System.Security.Cryptography.SHA256Managed = {}
---@type System.Security.Cryptography.SHA256Managed
CS.System.Security.Cryptography.SHA256Managed = System.Security.Cryptography.SHA256Managed

---@return System.Void
function System.Security.Cryptography.SHA256Managed:Initialize()end
---@class System.Security.Cryptography.SHA384 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.SHA384 = {}
---@type System.Security.Cryptography.SHA384
CS.System.Security.Cryptography.SHA384 = System.Security.Cryptography.SHA384

---@overload fun(hashName:System.String):System.Security.Cryptography.SHA384
---@return System.Security.Cryptography.SHA384
function System.Security.Cryptography.SHA384.Create()end
---@class System.Security.Cryptography.SHA384Managed : System.Security.Cryptography.SHA384
System.Security.Cryptography.SHA384Managed = {}
---@type System.Security.Cryptography.SHA384Managed
CS.System.Security.Cryptography.SHA384Managed = System.Security.Cryptography.SHA384Managed

---@return System.Void
function System.Security.Cryptography.SHA384Managed:Initialize()end
---@class System.Security.Cryptography.SHA512 : System.Security.Cryptography.HashAlgorithm
System.Security.Cryptography.SHA512 = {}
---@type System.Security.Cryptography.SHA512
CS.System.Security.Cryptography.SHA512 = System.Security.Cryptography.SHA512

---@overload fun(hashName:System.String):System.Security.Cryptography.SHA512
---@return System.Security.Cryptography.SHA512
function System.Security.Cryptography.SHA512.Create()end
---@class System.Security.Cryptography.SHA512Managed : System.Security.Cryptography.SHA512
System.Security.Cryptography.SHA512Managed = {}
---@type System.Security.Cryptography.SHA512Managed
CS.System.Security.Cryptography.SHA512Managed = System.Security.Cryptography.SHA512Managed

---@return System.Void
function System.Security.Cryptography.SHA512Managed:Initialize()end
---@class System.Security.Cryptography.SignatureDescription : System.Object
---@field public KeyAlgorithm System.String @ setter getter
---@field public DigestAlgorithm System.String @ setter getter
---@field public FormatterAlgorithm System.String @ setter getter
---@field public DeformatterAlgorithm System.String @ setter getter
System.Security.Cryptography.SignatureDescription = {}
---@type System.Security.Cryptography.SignatureDescription
CS.System.Security.Cryptography.SignatureDescription = System.Security.Cryptography.SignatureDescription

---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureDeformatter
function System.Security.Cryptography.SignatureDescription:CreateDeformatter(key)end
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureFormatter
function System.Security.Cryptography.SignatureDescription:CreateFormatter(key)end
---@return System.Security.Cryptography.HashAlgorithm
function System.Security.Cryptography.SignatureDescription:CreateDigest()end
---@class System.Security.Cryptography.SymmetricAlgorithm : System.Object
---@field public BlockSize System.Int32 @ setter getter
---@field public FeedbackSize System.Int32 @ setter getter
---@field public IV System.Byte[] @ setter getter
---@field public Key System.Byte[] @ setter getter
---@field public LegalBlockSizes System.Security.Cryptography.KeySizes[] @  getter
---@field public LegalKeySizes System.Security.Cryptography.KeySizes[] @  getter
---@field public KeySize System.Int32 @ setter getter
---@field public Mode System.Security.Cryptography.CipherMode @ setter getter
---@field public Padding System.Security.Cryptography.PaddingMode @ setter getter
System.Security.Cryptography.SymmetricAlgorithm = {}
---@type System.Security.Cryptography.SymmetricAlgorithm
CS.System.Security.Cryptography.SymmetricAlgorithm = System.Security.Cryptography.SymmetricAlgorithm

---@return System.Void
function System.Security.Cryptography.SymmetricAlgorithm:Dispose()end
---@return System.Void
function System.Security.Cryptography.SymmetricAlgorithm:Clear()end
---@param bitLength System.Int32
---@return System.Boolean
function System.Security.Cryptography.SymmetricAlgorithm:ValidKeySize(bitLength)end
---@overload fun(algName:System.String):System.Security.Cryptography.SymmetricAlgorithm
---@return System.Security.Cryptography.SymmetricAlgorithm
function System.Security.Cryptography.SymmetricAlgorithm.Create()end
---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.SymmetricAlgorithm:CreateEncryptor()end
---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.SymmetricAlgorithm:CreateDecryptor()end
---@return System.Void
function System.Security.Cryptography.SymmetricAlgorithm:GenerateKey()end
---@return System.Void
function System.Security.Cryptography.SymmetricAlgorithm:GenerateIV()end
---@class System.Security.Cryptography.TripleDES : System.Security.Cryptography.SymmetricAlgorithm
---@field public Key System.Byte[] @ setter getter
System.Security.Cryptography.TripleDES = {}
---@type System.Security.Cryptography.TripleDES
CS.System.Security.Cryptography.TripleDES = System.Security.Cryptography.TripleDES

---@overload fun(str:System.String):System.Security.Cryptography.TripleDES
---@return System.Security.Cryptography.TripleDES
function System.Security.Cryptography.TripleDES.Create()end
---@param rgbKey System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.TripleDES.IsWeakKey(rgbKey)end
---@class System.Security.Cryptography.TripleDESCryptoServiceProvider : System.Security.Cryptography.TripleDES
System.Security.Cryptography.TripleDESCryptoServiceProvider = {}
---@type System.Security.Cryptography.TripleDESCryptoServiceProvider
CS.System.Security.Cryptography.TripleDESCryptoServiceProvider = System.Security.Cryptography.TripleDESCryptoServiceProvider

---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.TripleDESCryptoServiceProvider:CreateEncryptor(rgbKey, rgbIV)end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.TripleDESCryptoServiceProvider:CreateDecryptor(rgbKey, rgbIV)end
---@return System.Void
function System.Security.Cryptography.TripleDESCryptoServiceProvider:GenerateKey()end
---@return System.Void
function System.Security.Cryptography.TripleDESCryptoServiceProvider:GenerateIV()end
---@class System.Security.Cryptography.CryptoAPITransform : System.Object
---@field public CanReuseTransform System.Boolean @  getter
---@field public CanTransformMultipleBlocks System.Boolean @  getter
---@field public InputBlockSize System.Int32 @  getter
---@field public KeyHandle System.IntPtr @  getter
---@field public OutputBlockSize System.Int32 @  getter
System.Security.Cryptography.CryptoAPITransform = {}
---@type System.Security.Cryptography.CryptoAPITransform
CS.System.Security.Cryptography.CryptoAPITransform = System.Security.Cryptography.CryptoAPITransform

---@return System.Void
function System.Security.Cryptography.CryptoAPITransform:Dispose()end
---@return System.Void
function System.Security.Cryptography.CryptoAPITransform:Clear()end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@param outputBuffer System.Byte[]
---@param outputOffset System.Int32
---@return System.Int32
function System.Security.Cryptography.CryptoAPITransform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset)end
---@param inputBuffer System.Byte[]
---@param inputOffset System.Int32
---@param inputCount System.Int32
---@return System.Byte[]
function System.Security.Cryptography.CryptoAPITransform:TransformFinalBlock(inputBuffer, inputOffset, inputCount)end
---@return System.Void
function System.Security.Cryptography.CryptoAPITransform:Reset()end
---@class System.Security.Cryptography.CryptoConfig : System.Object
---@field public AllowOnlyFipsAlgorithms System.Boolean @static  getter
System.Security.Cryptography.CryptoConfig = {}
---@type System.Security.Cryptography.CryptoConfig
CS.System.Security.Cryptography.CryptoConfig = System.Security.Cryptography.CryptoConfig

---@param str System.String
---@return System.Byte[]
function System.Security.Cryptography.CryptoConfig.EncodeOID(str)end
---@overload fun(name:System.String, args:System.Object[]):System.Object
---@param name System.String
---@return System.Object
function System.Security.Cryptography.CryptoConfig.CreateFromName(name)end
---@param name System.String
---@return System.String
function System.Security.Cryptography.CryptoConfig.MapNameToOID(name)end
---@param algorithm System.Type
---@param names System.String[]
---@return System.Void
function System.Security.Cryptography.CryptoConfig.AddAlgorithm(algorithm, names)end
---@param oid System.String
---@param names System.String[]
---@return System.Void
function System.Security.Cryptography.CryptoConfig.AddOID(oid, names)end
---@class System.Security.Cryptography.CspKeyContainerInfo : System.Object
---@field public Accessible System.Boolean @  getter
---@field public CryptoKeySecurity System.Security.AccessControl.CryptoKeySecurity @  getter
---@field public Exportable System.Boolean @  getter
---@field public HardwareDevice System.Boolean @  getter
---@field public KeyContainerName System.String @  getter
---@field public KeyNumber System.Security.Cryptography.KeyNumber @  getter
---@field public MachineKeyStore System.Boolean @  getter
---@field public Protected System.Boolean @  getter
---@field public ProviderName System.String @  getter
---@field public ProviderType System.Int32 @  getter
---@field public RandomlyGenerated System.Boolean @  getter
---@field public Removable System.Boolean @  getter
---@field public UniqueKeyContainerName System.String @  getter
System.Security.Cryptography.CspKeyContainerInfo = {}
---@type System.Security.Cryptography.CspKeyContainerInfo
CS.System.Security.Cryptography.CspKeyContainerInfo = System.Security.Cryptography.CspKeyContainerInfo

---@class System.Security.Cryptography.DSACryptoServiceProvider : System.Security.Cryptography.DSA
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public KeySize System.Int32 @  getter
---@field public PersistKeyInCsp System.Boolean @ setter getter
---@field public PublicOnly System.Boolean @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public UseMachineKeyStore System.Boolean @static setter getter
---@field public CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo @  getter
System.Security.Cryptography.DSACryptoServiceProvider = {}
---@type System.Security.Cryptography.DSACryptoServiceProvider
CS.System.Security.Cryptography.DSACryptoServiceProvider = System.Security.Cryptography.DSACryptoServiceProvider

---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.DSAParameters
function System.Security.Cryptography.DSACryptoServiceProvider:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.DSAParameters
---@return System.Void
function System.Security.Cryptography.DSACryptoServiceProvider:ImportParameters(parameters)end
---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSACryptoServiceProvider:CreateSignature(rgbHash)end
---@overload fun(inputStream:System.IO.Stream):System.Byte[]
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Byte[]
---@param buffer System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSACryptoServiceProvider:SignData(buffer)end
---@param rgbHash System.Byte[]
---@param str System.String
---@return System.Byte[]
function System.Security.Cryptography.DSACryptoServiceProvider:SignHash(rgbHash, str)end
---@param rgbData System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSACryptoServiceProvider:VerifyData(rgbData, rgbSignature)end
---@param rgbHash System.Byte[]
---@param str System.String
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSACryptoServiceProvider:VerifyHash(rgbHash, str, rgbSignature)end
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSACryptoServiceProvider:VerifySignature(rgbHash, rgbSignature)end
---@param includePrivateParameters System.Boolean
---@return System.Byte[]
function System.Security.Cryptography.DSACryptoServiceProvider:ExportCspBlob(includePrivateParameters)end
---@param keyBlob System.Byte[]
---@return System.Void
function System.Security.Cryptography.DSACryptoServiceProvider:ImportCspBlob(keyBlob)end
---@class System.Security.Cryptography.KeyNumber : System.Enum
System.Security.Cryptography.KeyNumber = {}
---@type System.Security.Cryptography.KeyNumber
CS.System.Security.Cryptography.KeyNumber = System.Security.Cryptography.KeyNumber

---@return System.Int32 value:1
System.Security.Cryptography.KeyNumber.Exchange = 1

---@class System.Security.Cryptography.MD5CryptoServiceProvider : System.Security.Cryptography.MD5
System.Security.Cryptography.MD5CryptoServiceProvider = {}
---@type System.Security.Cryptography.MD5CryptoServiceProvider
CS.System.Security.Cryptography.MD5CryptoServiceProvider = System.Security.Cryptography.MD5CryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.MD5CryptoServiceProvider:Initialize()end
---@class System.Security.Cryptography.RNGCryptoServiceProvider : System.Security.Cryptography.RandomNumberGenerator
System.Security.Cryptography.RNGCryptoServiceProvider = {}
---@type System.Security.Cryptography.RNGCryptoServiceProvider
CS.System.Security.Cryptography.RNGCryptoServiceProvider = System.Security.Cryptography.RNGCryptoServiceProvider

---@param data System.Byte[]
---@return System.Void
function System.Security.Cryptography.RNGCryptoServiceProvider:GetBytes(data)end
---@param data System.Byte[]
---@return System.Void
function System.Security.Cryptography.RNGCryptoServiceProvider:GetNonZeroBytes(data)end
---@class System.Security.Cryptography.RSAPKCS1SignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter
System.Security.Cryptography.RSAPKCS1SignatureDeformatter = {}
---@type System.Security.Cryptography.RSAPKCS1SignatureDeformatter
CS.System.Security.Cryptography.RSAPKCS1SignatureDeformatter = System.Security.Cryptography.RSAPKCS1SignatureDeformatter

---@param strName System.String
---@return System.Void
function System.Security.Cryptography.RSAPKCS1SignatureDeformatter:SetHashAlgorithm(strName)end
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAPKCS1SignatureDeformatter:SetKey(key)end
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.RSAPKCS1SignatureDeformatter:VerifySignature(rgbHash, rgbSignature)end
---@class System.Security.Cryptography.RSAPKCS1SignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter
System.Security.Cryptography.RSAPKCS1SignatureFormatter = {}
---@type System.Security.Cryptography.RSAPKCS1SignatureFormatter
CS.System.Security.Cryptography.RSAPKCS1SignatureFormatter = System.Security.Cryptography.RSAPKCS1SignatureFormatter

---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.RSAPKCS1SignatureFormatter:CreateSignature(rgbHash)end
---@param strName System.String
---@return System.Void
function System.Security.Cryptography.RSAPKCS1SignatureFormatter:SetHashAlgorithm(strName)end
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Void
function System.Security.Cryptography.RSAPKCS1SignatureFormatter:SetKey(key)end
---@class System.Security.Cryptography.SHA1CryptoServiceProvider : System.Security.Cryptography.SHA1
System.Security.Cryptography.SHA1CryptoServiceProvider = {}
---@type System.Security.Cryptography.SHA1CryptoServiceProvider
CS.System.Security.Cryptography.SHA1CryptoServiceProvider = System.Security.Cryptography.SHA1CryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.SHA1CryptoServiceProvider:Initialize()end
---@class System.Security.Cryptography.IncrementalHash : System.Object
---@field public AlgorithmName System.Security.Cryptography.HashAlgorithmName @  getter
System.Security.Cryptography.IncrementalHash = {}
---@type System.Security.Cryptography.IncrementalHash
CS.System.Security.Cryptography.IncrementalHash = System.Security.Cryptography.IncrementalHash

---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param data System.Byte[]
---@return System.Void
function System.Security.Cryptography.IncrementalHash:AppendData(data)end
---@return System.Byte[]
function System.Security.Cryptography.IncrementalHash:GetHashAndReset()end
---@return System.Void
function System.Security.Cryptography.IncrementalHash:Dispose()end
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Security.Cryptography.IncrementalHash
function System.Security.Cryptography.IncrementalHash.CreateHash(hashAlgorithm)end
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param key System.Byte[]
---@return System.Security.Cryptography.IncrementalHash
function System.Security.Cryptography.IncrementalHash.CreateHMAC(hashAlgorithm, key)end
---@class System.Security.Cryptography.AesManaged : System.Security.Cryptography.Aes
---@field public FeedbackSize System.Int32 @ setter getter
---@field public IV System.Byte[] @ setter getter
---@field public Key System.Byte[] @ setter getter
---@field public KeySize System.Int32 @ setter getter
---@field public Mode System.Security.Cryptography.CipherMode @ setter getter
---@field public Padding System.Security.Cryptography.PaddingMode @ setter getter
System.Security.Cryptography.AesManaged = {}
---@type System.Security.Cryptography.AesManaged
CS.System.Security.Cryptography.AesManaged = System.Security.Cryptography.AesManaged

---@overload fun(key:System.Byte[], iv:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesManaged:CreateDecryptor()end
---@overload fun(key:System.Byte[], iv:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesManaged:CreateEncryptor()end
---@return System.Void
function System.Security.Cryptography.AesManaged:GenerateIV()end
---@return System.Void
function System.Security.Cryptography.AesManaged:GenerateKey()end
---@class System.Security.Cryptography.CngAlgorithm : System.Object
---@field public Algorithm System.String @  getter
---@field public Rsa System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDiffieHellman System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDiffieHellmanP256 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDiffieHellmanP384 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDiffieHellmanP521 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDsa System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDsaP256 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDsaP384 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public ECDsaP521 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public MD5 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public Sha1 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public Sha256 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public Sha384 System.Security.Cryptography.CngAlgorithm @static  getter
---@field public Sha512 System.Security.Cryptography.CngAlgorithm @static  getter
System.Security.Cryptography.CngAlgorithm = {}
---@type System.Security.Cryptography.CngAlgorithm
CS.System.Security.Cryptography.CngAlgorithm = System.Security.Cryptography.CngAlgorithm

---@param left System.Security.Cryptography.CngAlgorithm
---@param right System.Security.Cryptography.CngAlgorithm
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithm.op_Equality(left, right)end
---@param left System.Security.Cryptography.CngAlgorithm
---@param right System.Security.Cryptography.CngAlgorithm
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithm.op_Inequality(left, right)end
---@overload fun(other:System.Security.Cryptography.CngAlgorithm):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithm:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.CngAlgorithm:GetHashCode()end
---@return System.String
function System.Security.Cryptography.CngAlgorithm:ToString()end
---@class System.Security.Cryptography.CngAlgorithmGroup : System.Object
---@field public AlgorithmGroup System.String @  getter
---@field public DiffieHellman System.Security.Cryptography.CngAlgorithmGroup @static  getter
---@field public Dsa System.Security.Cryptography.CngAlgorithmGroup @static  getter
---@field public ECDiffieHellman System.Security.Cryptography.CngAlgorithmGroup @static  getter
---@field public ECDsa System.Security.Cryptography.CngAlgorithmGroup @static  getter
---@field public Rsa System.Security.Cryptography.CngAlgorithmGroup @static  getter
System.Security.Cryptography.CngAlgorithmGroup = {}
---@type System.Security.Cryptography.CngAlgorithmGroup
CS.System.Security.Cryptography.CngAlgorithmGroup = System.Security.Cryptography.CngAlgorithmGroup

---@param left System.Security.Cryptography.CngAlgorithmGroup
---@param right System.Security.Cryptography.CngAlgorithmGroup
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithmGroup.op_Equality(left, right)end
---@param left System.Security.Cryptography.CngAlgorithmGroup
---@param right System.Security.Cryptography.CngAlgorithmGroup
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithmGroup.op_Inequality(left, right)end
---@overload fun(other:System.Security.Cryptography.CngAlgorithmGroup):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.CngAlgorithmGroup:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.CngAlgorithmGroup:GetHashCode()end
---@return System.String
function System.Security.Cryptography.CngAlgorithmGroup:ToString()end
---@class System.Security.Cryptography.CngKeyHandleOpenOptions : System.Enum
System.Security.Cryptography.CngKeyHandleOpenOptions = {}
---@type System.Security.Cryptography.CngKeyHandleOpenOptions
CS.System.Security.Cryptography.CngKeyHandleOpenOptions = System.Security.Cryptography.CngKeyHandleOpenOptions

---@return System.Int32 value:0
System.Security.Cryptography.CngKeyHandleOpenOptions.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.CngKeyHandleOpenOptions.EphemeralKey = 1

---@class System.Security.Cryptography.CngKey : System.Object
---@field public AlgorithmGroup System.Security.Cryptography.CngAlgorithmGroup @  getter
---@field public Algorithm System.Security.Cryptography.CngAlgorithm @  getter
---@field public ExportPolicy System.Security.Cryptography.CngExportPolicies @  getter
---@field public Handle Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle @  getter
---@field public IsEphemeral System.Boolean @ setter getter
---@field public IsMachineKey System.Boolean @  getter
---@field public KeyName System.String @  getter
---@field public KeySize System.Int32 @  getter
---@field public KeyUsage System.Security.Cryptography.CngKeyUsages @  getter
---@field public ParentWindowHandle System.IntPtr @ setter getter
---@field public Provider System.Security.Cryptography.CngProvider @  getter
---@field public ProviderHandle Microsoft.Win32.SafeHandles.SafeNCryptProviderHandle @  getter
---@field public UniqueName System.String @  getter
---@field public UIPolicy System.Security.Cryptography.CngUIPolicy @  getter
System.Security.Cryptography.CngKey = {}
---@type System.Security.Cryptography.CngKey
CS.System.Security.Cryptography.CngKey = System.Security.Cryptography.CngKey

---@overload fun(algorithm:System.Security.Cryptography.CngAlgorithm, keyName:System.String):System.Security.Cryptography.CngKey
---@overload fun(algorithm:System.Security.Cryptography.CngAlgorithm, keyName:System.String, creationParameters:System.Security.Cryptography.CngKeyCreationParameters):System.Security.Cryptography.CngKey
---@param algorithm System.Security.Cryptography.CngAlgorithm
---@return System.Security.Cryptography.CngKey
function System.Security.Cryptography.CngKey.Create(algorithm)end
---@return System.Void
function System.Security.Cryptography.CngKey:Delete()end
---@return System.Void
function System.Security.Cryptography.CngKey:Dispose()end
---@overload fun(keyName:System.String, provider:System.Security.Cryptography.CngProvider):System.Boolean
---@overload fun(keyName:System.String, provider:System.Security.Cryptography.CngProvider, options:System.Security.Cryptography.CngKeyOpenOptions):System.Boolean
---@param keyName System.String
---@return System.Boolean
function System.Security.Cryptography.CngKey.Exists(keyName)end
---@overload fun(keyBlob:System.Byte[], format:System.Security.Cryptography.CngKeyBlobFormat, provider:System.Security.Cryptography.CngProvider):System.Security.Cryptography.CngKey
---@param keyBlob System.Byte[]
---@param format System.Security.Cryptography.CngKeyBlobFormat
---@return System.Security.Cryptography.CngKey
function System.Security.Cryptography.CngKey.Import(keyBlob, format)end
---@param format System.Security.Cryptography.CngKeyBlobFormat
---@return System.Byte[]
function System.Security.Cryptography.CngKey:Export(format)end
---@param name System.String
---@param options System.Security.Cryptography.CngPropertyOptions
---@return System.Security.Cryptography.CngProperty
function System.Security.Cryptography.CngKey:GetProperty(name, options)end
---@param name System.String
---@param options System.Security.Cryptography.CngPropertyOptions
---@return System.Boolean
function System.Security.Cryptography.CngKey:HasProperty(name, options)end
---@overload fun(keyName:System.String, provider:System.Security.Cryptography.CngProvider):System.Security.Cryptography.CngKey
---@overload fun(keyHandle:Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle, keyHandleOpenOptions:System.Security.Cryptography.CngKeyHandleOpenOptions):System.Security.Cryptography.CngKey
---@overload fun(keyName:System.String, provider:System.Security.Cryptography.CngProvider, openOptions:System.Security.Cryptography.CngKeyOpenOptions):System.Security.Cryptography.CngKey
---@param keyName System.String
---@return System.Security.Cryptography.CngKey
function System.Security.Cryptography.CngKey.Open(keyName)end
---@param property System.Security.Cryptography.CngProperty
---@return System.Void
function System.Security.Cryptography.CngKey:SetProperty(property)end
---@class System.Security.Cryptography.CngKeyBlobFormat : System.Object
---@field public Format System.String @  getter
---@field public EccPrivateBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public EccPublicBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public EccFullPrivateBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public EccFullPublicBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public GenericPrivateBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public GenericPublicBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public OpaqueTransportBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
---@field public Pkcs8PrivateBlob System.Security.Cryptography.CngKeyBlobFormat @static  getter
System.Security.Cryptography.CngKeyBlobFormat = {}
---@type System.Security.Cryptography.CngKeyBlobFormat
CS.System.Security.Cryptography.CngKeyBlobFormat = System.Security.Cryptography.CngKeyBlobFormat

---@param left System.Security.Cryptography.CngKeyBlobFormat
---@param right System.Security.Cryptography.CngKeyBlobFormat
---@return System.Boolean
function System.Security.Cryptography.CngKeyBlobFormat.op_Equality(left, right)end
---@param left System.Security.Cryptography.CngKeyBlobFormat
---@param right System.Security.Cryptography.CngKeyBlobFormat
---@return System.Boolean
function System.Security.Cryptography.CngKeyBlobFormat.op_Inequality(left, right)end
---@overload fun(other:System.Security.Cryptography.CngKeyBlobFormat):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.CngKeyBlobFormat:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.CngKeyBlobFormat:GetHashCode()end
---@return System.String
function System.Security.Cryptography.CngKeyBlobFormat:ToString()end
---@class System.Security.Cryptography.CngKeyCreationParameters : System.Object
---@field public ExportPolicy System.Nullable @ setter getter
---@field public KeyCreationOptions System.Security.Cryptography.CngKeyCreationOptions @ setter getter
---@field public KeyUsage System.Nullable @ setter getter
---@field public ParentWindowHandle System.IntPtr @ setter getter
---@field public Parameters System.Security.Cryptography.CngPropertyCollection @  getter
---@field public Provider System.Security.Cryptography.CngProvider @ setter getter
---@field public UIPolicy System.Security.Cryptography.CngUIPolicy @ setter getter
System.Security.Cryptography.CngKeyCreationParameters = {}
---@type System.Security.Cryptography.CngKeyCreationParameters
CS.System.Security.Cryptography.CngKeyCreationParameters = System.Security.Cryptography.CngKeyCreationParameters

---@class System.Security.Cryptography.CngProperty : System.ValueType
---@field public Name System.String @  getter
---@field public Options System.Security.Cryptography.CngPropertyOptions @  getter
System.Security.Cryptography.CngProperty = {}
---@type System.Security.Cryptography.CngProperty
CS.System.Security.Cryptography.CngProperty = System.Security.Cryptography.CngProperty

---@return System.Byte[]
function System.Security.Cryptography.CngProperty:GetValue()end
---@param left System.Security.Cryptography.CngProperty
---@param right System.Security.Cryptography.CngProperty
---@return System.Boolean
function System.Security.Cryptography.CngProperty.op_Equality(left, right)end
---@param left System.Security.Cryptography.CngProperty
---@param right System.Security.Cryptography.CngProperty
---@return System.Boolean
function System.Security.Cryptography.CngProperty.op_Inequality(left, right)end
---@overload fun(other:System.Security.Cryptography.CngProperty):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.CngProperty:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.CngProperty:GetHashCode()end
---@class System.Security.Cryptography.CngPropertyCollection : System.Collections.ObjectModel.Collection
System.Security.Cryptography.CngPropertyCollection = {}
---@type System.Security.Cryptography.CngPropertyCollection
CS.System.Security.Cryptography.CngPropertyCollection = System.Security.Cryptography.CngPropertyCollection

---@class System.Security.Cryptography.CngProvider : System.Object
---@field public Provider System.String @  getter
---@field public MicrosoftSmartCardKeyStorageProvider System.Security.Cryptography.CngProvider @static  getter
---@field public MicrosoftSoftwareKeyStorageProvider System.Security.Cryptography.CngProvider @static  getter
System.Security.Cryptography.CngProvider = {}
---@type System.Security.Cryptography.CngProvider
CS.System.Security.Cryptography.CngProvider = System.Security.Cryptography.CngProvider

---@param left System.Security.Cryptography.CngProvider
---@param right System.Security.Cryptography.CngProvider
---@return System.Boolean
function System.Security.Cryptography.CngProvider.op_Equality(left, right)end
---@param left System.Security.Cryptography.CngProvider
---@param right System.Security.Cryptography.CngProvider
---@return System.Boolean
function System.Security.Cryptography.CngProvider.op_Inequality(left, right)end
---@overload fun(other:System.Security.Cryptography.CngProvider):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Security.Cryptography.CngProvider:Equals(obj)end
---@return System.Int32
function System.Security.Cryptography.CngProvider:GetHashCode()end
---@return System.String
function System.Security.Cryptography.CngProvider:ToString()end
---@class System.Security.Cryptography.CngUIPolicy : System.Object
---@field public CreationTitle System.String @  getter
---@field public Description System.String @  getter
---@field public FriendlyName System.String @  getter
---@field public ProtectionLevel System.Security.Cryptography.CngUIProtectionLevels @  getter
---@field public UseContext System.String @  getter
System.Security.Cryptography.CngUIPolicy = {}
---@type System.Security.Cryptography.CngUIPolicy
CS.System.Security.Cryptography.CngUIPolicy = System.Security.Cryptography.CngUIPolicy

---@class System.Security.Cryptography.ECDiffieHellman : System.Security.Cryptography.AsymmetricAlgorithm
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public SignatureAlgorithm System.String @  getter
---@field public PublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey @  getter
System.Security.Cryptography.ECDiffieHellman = {}
---@type System.Security.Cryptography.ECDiffieHellman
CS.System.Security.Cryptography.ECDiffieHellman = System.Security.Cryptography.ECDiffieHellman

---@overload fun(algorithm:System.String):System.Security.Cryptography.ECDiffieHellman
---@overload fun(curve:System.Security.Cryptography.ECCurve):System.Security.Cryptography.ECDiffieHellman
---@overload fun(parameters:System.Security.Cryptography.ECParameters):System.Security.Cryptography.ECDiffieHellman
---@return System.Security.Cryptography.ECDiffieHellman
function System.Security.Cryptography.ECDiffieHellman.Create()end
---@param otherPartyPublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellman:DeriveKeyMaterial(otherPartyPublicKey)end
---@overload fun(otherPartyPublicKey:System.Security.Cryptography.ECDiffieHellmanPublicKey, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, secretPrepend:System.Byte[], secretAppend:System.Byte[]):System.Byte[]
---@param otherPartyPublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellman:DeriveKeyFromHash(otherPartyPublicKey, hashAlgorithm)end
---@overload fun(otherPartyPublicKey:System.Security.Cryptography.ECDiffieHellmanPublicKey, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, hmacKey:System.Byte[], secretPrepend:System.Byte[], secretAppend:System.Byte[]):System.Byte[]
---@param otherPartyPublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param hmacKey System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellman:DeriveKeyFromHmac(otherPartyPublicKey, hashAlgorithm, hmacKey)end
---@param otherPartyPublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey
---@param prfLabel System.Byte[]
---@param prfSeed System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellman:DeriveKeyTls(otherPartyPublicKey, prfLabel, prfSeed)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDiffieHellman:ExportParameters(includePrivateParameters)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDiffieHellman:ExportExplicitParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.ECParameters
---@return System.Void
function System.Security.Cryptography.ECDiffieHellman:ImportParameters(parameters)end
---@param curve System.Security.Cryptography.ECCurve
---@return System.Void
function System.Security.Cryptography.ECDiffieHellman:GenerateKey(curve)end
---@class System.Security.Cryptography.ECDiffieHellmanPublicKey : System.Object
System.Security.Cryptography.ECDiffieHellmanPublicKey = {}
---@type System.Security.Cryptography.ECDiffieHellmanPublicKey
CS.System.Security.Cryptography.ECDiffieHellmanPublicKey = System.Security.Cryptography.ECDiffieHellmanPublicKey

---@return System.Void
function System.Security.Cryptography.ECDiffieHellmanPublicKey:Dispose()end
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellmanPublicKey:ToByteArray()end
---@return System.String
function System.Security.Cryptography.ECDiffieHellmanPublicKey:ToXmlString()end
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDiffieHellmanPublicKey:ExportParameters()end
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDiffieHellmanPublicKey:ExportExplicitParameters()end
---@class System.Security.Cryptography.ECDsa : System.Security.Cryptography.AsymmetricAlgorithm
---@field public KeyExchangeAlgorithm System.String @  getter
---@field public SignatureAlgorithm System.String @  getter
System.Security.Cryptography.ECDsa = {}
---@type System.Security.Cryptography.ECDsa
CS.System.Security.Cryptography.ECDsa = System.Security.Cryptography.ECDsa

---@overload fun(algorithm:System.String):System.Security.Cryptography.ECDsa
---@overload fun(curve:System.Security.Cryptography.ECCurve):System.Security.Cryptography.ECDsa
---@overload fun(parameters:System.Security.Cryptography.ECParameters):System.Security.Cryptography.ECDsa
---@return System.Security.Cryptography.ECDsa
function System.Security.Cryptography.ECDsa.Create()end
---@param hash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.ECDsa:SignHash(hash)end
---@param hash System.Byte[]
---@param signature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.ECDsa:VerifyHash(hash, signature)end
---@overload fun(data:System.IO.Stream, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Byte[]
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Byte[]
---@param data System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Byte[]
function System.Security.Cryptography.ECDsa:SignData(data, hashAlgorithm)end
---@overload fun(data:System.IO.Stream, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Boolean
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, signature:System.Byte[], hashAlgorithm:System.Security.Cryptography.HashAlgorithmName):System.Boolean
---@param data System.Byte[]
---@param signature System.Byte[]
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Boolean
function System.Security.Cryptography.ECDsa:VerifyData(data, signature, hashAlgorithm)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDsa:ExportParameters(includePrivateParameters)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.ECParameters
function System.Security.Cryptography.ECDsa:ExportExplicitParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.ECParameters
---@return System.Void
function System.Security.Cryptography.ECDsa:ImportParameters(parameters)end
---@param curve System.Security.Cryptography.ECCurve
---@return System.Void
function System.Security.Cryptography.ECDsa:GenerateKey(curve)end
---@class System.Security.Cryptography.ECDsaCng : System.Security.Cryptography.ECDsa
---@field public HashAlgorithm System.Security.Cryptography.CngAlgorithm @ setter getter
---@field public Key System.Security.Cryptography.CngKey @ setter getter
System.Security.Cryptography.ECDsaCng = {}
---@type System.Security.Cryptography.ECDsaCng
CS.System.Security.Cryptography.ECDsaCng = System.Security.Cryptography.ECDsaCng

---@param hash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.ECDsaCng:SignHash(hash)end
---@param hash System.Byte[]
---@param signature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.ECDsaCng:VerifyHash(hash, signature)end
---@param xml System.String
---@param format System.Security.Cryptography.ECKeyXmlFormat
---@return System.Void
function System.Security.Cryptography.ECDsaCng:FromXmlString(xml, format)end
---@overload fun(data:System.IO.Stream):System.Byte[]
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32):System.Byte[]
---@param data System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.ECDsaCng:SignData(data)end
---@param format System.Security.Cryptography.ECKeyXmlFormat
---@return System.String
function System.Security.Cryptography.ECDsaCng:ToXmlString(format)end
---@overload fun(data:System.IO.Stream, signature:System.Byte[]):System.Boolean
---@overload fun(data:System.Byte[], offset:System.Int32, count:System.Int32, signature:System.Byte[]):System.Boolean
---@param data System.Byte[]
---@param signature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.ECDsaCng:VerifyData(data, signature)end
---@class System.Security.Cryptography.ECKeyXmlFormat : System.Enum
System.Security.Cryptography.ECKeyXmlFormat = {}
---@type System.Security.Cryptography.ECKeyXmlFormat
CS.System.Security.Cryptography.ECKeyXmlFormat = System.Security.Cryptography.ECKeyXmlFormat

---@return System.Int32 value:0
System.Security.Cryptography.ECKeyXmlFormat.Rfc4050 = 0

---@class System.Security.Cryptography.CngExportPolicies : System.Enum
System.Security.Cryptography.CngExportPolicies = {}
---@type System.Security.Cryptography.CngExportPolicies
CS.System.Security.Cryptography.CngExportPolicies = System.Security.Cryptography.CngExportPolicies

---@return System.Int32 value:0
System.Security.Cryptography.CngExportPolicies.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.CngExportPolicies.AllowExport = 1
---@return System.Int32 value:2
System.Security.Cryptography.CngExportPolicies.AllowPlaintextExport = 2
---@return System.Int32 value:4
System.Security.Cryptography.CngExportPolicies.AllowArchiving = 4

---@class System.Security.Cryptography.CngKeyCreationOptions : System.Enum
System.Security.Cryptography.CngKeyCreationOptions = {}
---@type System.Security.Cryptography.CngKeyCreationOptions
CS.System.Security.Cryptography.CngKeyCreationOptions = System.Security.Cryptography.CngKeyCreationOptions

---@return System.Int32 value:0
System.Security.Cryptography.CngKeyCreationOptions.None = 0

---@class System.Security.Cryptography.CngKeyOpenOptions : System.Enum
System.Security.Cryptography.CngKeyOpenOptions = {}
---@type System.Security.Cryptography.CngKeyOpenOptions
CS.System.Security.Cryptography.CngKeyOpenOptions = System.Security.Cryptography.CngKeyOpenOptions

---@return System.Int32 value:0
System.Security.Cryptography.CngKeyOpenOptions.UserKey = 0

---@class System.Security.Cryptography.CngKeyUsages : System.Enum
System.Security.Cryptography.CngKeyUsages = {}
---@type System.Security.Cryptography.CngKeyUsages
CS.System.Security.Cryptography.CngKeyUsages = System.Security.Cryptography.CngKeyUsages

---@return System.Int32 value:0
System.Security.Cryptography.CngKeyUsages.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.CngKeyUsages.Decryption = 1
---@return System.Int32 value:2
System.Security.Cryptography.CngKeyUsages.Signing = 2
---@return System.Int32 value:4
System.Security.Cryptography.CngKeyUsages.KeyAgreement = 4

---@class System.Security.Cryptography.CngPropertyOptions : System.Enum
System.Security.Cryptography.CngPropertyOptions = {}
---@type System.Security.Cryptography.CngPropertyOptions
CS.System.Security.Cryptography.CngPropertyOptions = System.Security.Cryptography.CngPropertyOptions

---@return System.Int32 value:0
System.Security.Cryptography.CngPropertyOptions.None = 0

---@class System.Security.Cryptography.CngUIProtectionLevels : System.Enum
System.Security.Cryptography.CngUIProtectionLevels = {}
---@type System.Security.Cryptography.CngUIProtectionLevels
CS.System.Security.Cryptography.CngUIProtectionLevels = System.Security.Cryptography.CngUIProtectionLevels

---@return System.Int32 value:0
System.Security.Cryptography.CngUIProtectionLevels.None = 0
---@return System.Int32 value:1
System.Security.Cryptography.CngUIProtectionLevels.ProtectKey = 1
---@return System.Int32 value:2
System.Security.Cryptography.CngUIProtectionLevels.ForceHighProtection = 2

---@class System.Security.Cryptography.RSACng : System.Security.Cryptography.RSA
---@field public Key System.Security.Cryptography.CngKey @ setter getter
System.Security.Cryptography.RSACng = {}
---@type System.Security.Cryptography.RSACng
CS.System.Security.Cryptography.RSACng = System.Security.Cryptography.RSACng

---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.RSAParameters
function System.Security.Cryptography.RSACng:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.RSAParameters
---@return System.Void
function System.Security.Cryptography.RSACng:ImportParameters(parameters)end
---@class System.Security.Cryptography.AesCng : System.Security.Cryptography.Aes
---@field public Key System.Byte[] @ setter getter
---@field public KeySize System.Int32 @ setter getter
System.Security.Cryptography.AesCng = {}
---@type System.Security.Cryptography.AesCng
CS.System.Security.Cryptography.AesCng = System.Security.Cryptography.AesCng

---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesCng:CreateDecryptor()end
---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesCng:CreateEncryptor()end
---@return System.Void
function System.Security.Cryptography.AesCng:GenerateIV()end
---@return System.Void
function System.Security.Cryptography.AesCng:GenerateKey()end
---@class System.Security.Cryptography.AesCryptoServiceProvider : System.Security.Cryptography.Aes
---@field public IV System.Byte[] @ setter getter
---@field public Key System.Byte[] @ setter getter
---@field public KeySize System.Int32 @ setter getter
---@field public FeedbackSize System.Int32 @ setter getter
---@field public Mode System.Security.Cryptography.CipherMode @ setter getter
---@field public Padding System.Security.Cryptography.PaddingMode @ setter getter
System.Security.Cryptography.AesCryptoServiceProvider = {}
---@type System.Security.Cryptography.AesCryptoServiceProvider
CS.System.Security.Cryptography.AesCryptoServiceProvider = System.Security.Cryptography.AesCryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.AesCryptoServiceProvider:GenerateIV()end
---@return System.Void
function System.Security.Cryptography.AesCryptoServiceProvider:GenerateKey()end
---@overload fun(key:System.Byte[], iv:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesCryptoServiceProvider:CreateDecryptor()end
---@overload fun(key:System.Byte[], iv:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.AesCryptoServiceProvider:CreateEncryptor()end
---@class System.Security.Cryptography.ECCurve : System.ValueType
---@field public IsCharacteristic2 System.Boolean @  getter
---@field public IsExplicit System.Boolean @  getter
---@field public IsNamed System.Boolean @  getter
---@field public IsPrime System.Boolean @  getter
---@field public Oid System.Security.Cryptography.Oid @  getter
---@field public A System.Byte[]
---@field public B System.Byte[]
---@field public Cofactor System.Byte[]
---@field public CurveType System.Security.Cryptography.ECCurve.ECCurveType
---@field public G System.Security.Cryptography.ECPoint
---@field public Hash System.Nullable
---@field public Order System.Byte[]
---@field public Polynomial System.Byte[]
---@field public Prime System.Byte[]
---@field public Seed System.Byte[]
System.Security.Cryptography.ECCurve = {}
---@type System.Security.Cryptography.ECCurve
CS.System.Security.Cryptography.ECCurve = System.Security.Cryptography.ECCurve

---@param oidFriendlyName System.String
---@return System.Security.Cryptography.ECCurve
function System.Security.Cryptography.ECCurve.CreateFromFriendlyName(oidFriendlyName)end
---@param curveOid System.Security.Cryptography.Oid
---@return System.Security.Cryptography.ECCurve
function System.Security.Cryptography.ECCurve.CreateFromOid(curveOid)end
---@param oidValue System.String
---@return System.Security.Cryptography.ECCurve
function System.Security.Cryptography.ECCurve.CreateFromValue(oidValue)end
---@return System.Void
function System.Security.Cryptography.ECCurve:Validate()end
---@class System.Security.Cryptography.ECCurve.ECCurveType : System.Enum
System.Security.Cryptography.ECCurve.ECCurveType = {}
---@type System.Security.Cryptography.ECCurve.ECCurveType
CS.System.Security.Cryptography.ECCurve.ECCurveType = System.Security.Cryptography.ECCurve.ECCurveType

---@return System.Int32 value:0
System.Security.Cryptography.ECCurve.ECCurveType.Implicit = 0
---@return System.Int32 value:1
System.Security.Cryptography.ECCurve.ECCurveType.PrimeShortWeierstrass = 1
---@return System.Int32 value:2
System.Security.Cryptography.ECCurve.ECCurveType.PrimeTwistedEdwards = 2
---@return System.Int32 value:3
System.Security.Cryptography.ECCurve.ECCurveType.PrimeMontgomery = 3
---@return System.Int32 value:4
System.Security.Cryptography.ECCurve.ECCurveType.Characteristic2 = 4
---@return System.Int32 value:5
System.Security.Cryptography.ECCurve.ECCurveType.Named = 5

---@class System.Security.Cryptography.ECCurve.NamedCurves : System.Object
---@field public brainpoolP160r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP160t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP192r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP192t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP224r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP224t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP256r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP256t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP320r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP320t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP384r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP384t1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP512r1 System.Security.Cryptography.ECCurve @static  getter
---@field public brainpoolP512t1 System.Security.Cryptography.ECCurve @static  getter
---@field public nistP256 System.Security.Cryptography.ECCurve @static  getter
---@field public nistP384 System.Security.Cryptography.ECCurve @static  getter
---@field public nistP521 System.Security.Cryptography.ECCurve @static  getter
System.Security.Cryptography.ECCurve.NamedCurves = {}
---@type System.Security.Cryptography.ECCurve.NamedCurves
CS.System.Security.Cryptography.ECCurve.NamedCurves = System.Security.Cryptography.ECCurve.NamedCurves

---@class System.Security.Cryptography.ECParameters : System.ValueType
---@field public Curve System.Security.Cryptography.ECCurve
---@field public D System.Byte[]
---@field public Q System.Security.Cryptography.ECPoint
System.Security.Cryptography.ECParameters = {}
---@type System.Security.Cryptography.ECParameters
CS.System.Security.Cryptography.ECParameters = System.Security.Cryptography.ECParameters

---@return System.Void
function System.Security.Cryptography.ECParameters:Validate()end
---@class System.Security.Cryptography.ECPoint : System.ValueType
---@field public X System.Byte[]
---@field public Y System.Byte[]
System.Security.Cryptography.ECPoint = {}
---@type System.Security.Cryptography.ECPoint
CS.System.Security.Cryptography.ECPoint = System.Security.Cryptography.ECPoint

---@class System.Security.Cryptography.MD5Cng : System.Security.Cryptography.MD5
System.Security.Cryptography.MD5Cng = {}
---@type System.Security.Cryptography.MD5Cng
CS.System.Security.Cryptography.MD5Cng = System.Security.Cryptography.MD5Cng

---@return System.Void
function System.Security.Cryptography.MD5Cng:Initialize()end
---@class System.Security.Cryptography.SHA1Cng : System.Security.Cryptography.SHA1
System.Security.Cryptography.SHA1Cng = {}
---@type System.Security.Cryptography.SHA1Cng
CS.System.Security.Cryptography.SHA1Cng = System.Security.Cryptography.SHA1Cng

---@return System.Void
function System.Security.Cryptography.SHA1Cng:Initialize()end
---@class System.Security.Cryptography.SHA256Cng : System.Security.Cryptography.SHA256
System.Security.Cryptography.SHA256Cng = {}
---@type System.Security.Cryptography.SHA256Cng
CS.System.Security.Cryptography.SHA256Cng = System.Security.Cryptography.SHA256Cng

---@return System.Void
function System.Security.Cryptography.SHA256Cng:Initialize()end
---@class System.Security.Cryptography.SHA256CryptoServiceProvider : System.Security.Cryptography.SHA256
System.Security.Cryptography.SHA256CryptoServiceProvider = {}
---@type System.Security.Cryptography.SHA256CryptoServiceProvider
CS.System.Security.Cryptography.SHA256CryptoServiceProvider = System.Security.Cryptography.SHA256CryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.SHA256CryptoServiceProvider:Initialize()end
---@class System.Security.Cryptography.SHA384Cng : System.Security.Cryptography.SHA384
System.Security.Cryptography.SHA384Cng = {}
---@type System.Security.Cryptography.SHA384Cng
CS.System.Security.Cryptography.SHA384Cng = System.Security.Cryptography.SHA384Cng

---@return System.Void
function System.Security.Cryptography.SHA384Cng:Initialize()end
---@class System.Security.Cryptography.SHA384CryptoServiceProvider : System.Security.Cryptography.SHA384
System.Security.Cryptography.SHA384CryptoServiceProvider = {}
---@type System.Security.Cryptography.SHA384CryptoServiceProvider
CS.System.Security.Cryptography.SHA384CryptoServiceProvider = System.Security.Cryptography.SHA384CryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.SHA384CryptoServiceProvider:Initialize()end
---@class System.Security.Cryptography.SHA512Cng : System.Security.Cryptography.SHA512
System.Security.Cryptography.SHA512Cng = {}
---@type System.Security.Cryptography.SHA512Cng
CS.System.Security.Cryptography.SHA512Cng = System.Security.Cryptography.SHA512Cng

---@return System.Void
function System.Security.Cryptography.SHA512Cng:Initialize()end
---@class System.Security.Cryptography.SHA512CryptoServiceProvider : System.Security.Cryptography.SHA512
System.Security.Cryptography.SHA512CryptoServiceProvider = {}
---@type System.Security.Cryptography.SHA512CryptoServiceProvider
CS.System.Security.Cryptography.SHA512CryptoServiceProvider = System.Security.Cryptography.SHA512CryptoServiceProvider

---@return System.Void
function System.Security.Cryptography.SHA512CryptoServiceProvider:Initialize()end
---@class System.Security.Cryptography.TripleDESCng : System.Security.Cryptography.TripleDES
---@field public Key System.Byte[] @ setter getter
---@field public KeySize System.Int32 @ setter getter
System.Security.Cryptography.TripleDESCng = {}
---@type System.Security.Cryptography.TripleDESCng
CS.System.Security.Cryptography.TripleDESCng = System.Security.Cryptography.TripleDESCng

---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.TripleDESCng:CreateDecryptor()end
---@overload fun(rgbKey:System.Byte[], rgbIV:System.Byte[]):System.Security.Cryptography.ICryptoTransform
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.TripleDESCng:CreateEncryptor()end
---@return System.Void
function System.Security.Cryptography.TripleDESCng:GenerateIV()end
---@return System.Void
function System.Security.Cryptography.TripleDESCng:GenerateKey()end
---@class System.Security.Cryptography.DSACng : System.Security.Cryptography.DSA
---@field public Key System.Security.Cryptography.CngKey @  getter
System.Security.Cryptography.DSACng = {}
---@type System.Security.Cryptography.DSACng
CS.System.Security.Cryptography.DSACng = System.Security.Cryptography.DSACng

---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSACng:CreateSignature(rgbHash)end
---@param includePrivateParameters System.Boolean
---@return System.Security.Cryptography.DSAParameters
function System.Security.Cryptography.DSACng:ExportParameters(includePrivateParameters)end
---@param parameters System.Security.Cryptography.DSAParameters
---@return System.Void
function System.Security.Cryptography.DSACng:ImportParameters(parameters)end
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return System.Boolean
function System.Security.Cryptography.DSACng:VerifySignature(rgbHash, rgbSignature)end
---@class System.Security.Cryptography.ECDiffieHellmanCng : System.Security.Cryptography.ECDiffieHellman
---@field public HashAlgorithm System.Security.Cryptography.CngAlgorithm @ setter getter
---@field public HmacKey System.Byte[] @ setter getter
---@field public Key System.Security.Cryptography.CngKey @  getter
---@field public KeyDerivationFunction System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction @ setter getter
---@field public Label System.Byte[] @ setter getter
---@field public PublicKey System.Security.Cryptography.ECDiffieHellmanPublicKey @  getter
---@field public SecretAppend System.Byte[] @ setter getter
---@field public SecretPrepend System.Byte[] @ setter getter
---@field public Seed System.Byte[] @ setter getter
---@field public UseSecretAgreementAsHmacKey System.Boolean @  getter
System.Security.Cryptography.ECDiffieHellmanCng = {}
---@type System.Security.Cryptography.ECDiffieHellmanCng
CS.System.Security.Cryptography.ECDiffieHellmanCng = System.Security.Cryptography.ECDiffieHellmanCng

---@param otherPartyPublicKey System.Security.Cryptography.CngKey
---@return System.Byte[]
function System.Security.Cryptography.ECDiffieHellmanCng:DeriveKeyMaterial(otherPartyPublicKey)end
---@overload fun(otherPartyPublicKey:System.Security.Cryptography.ECDiffieHellmanPublicKey):Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle
---@param otherPartyPublicKey System.Security.Cryptography.CngKey
---@return Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle
function System.Security.Cryptography.ECDiffieHellmanCng:DeriveSecretAgreementHandle(otherPartyPublicKey)end
---@param xml System.String
---@param format System.Security.Cryptography.ECKeyXmlFormat
---@return System.Void
function System.Security.Cryptography.ECDiffieHellmanCng:FromXmlString(xml, format)end
---@param format System.Security.Cryptography.ECKeyXmlFormat
---@return System.String
function System.Security.Cryptography.ECDiffieHellmanCng:ToXmlString(format)end
---@class System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction : System.Enum
System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction = {}
---@type System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction
CS.System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction = System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction

---@return System.Int32 value:0
System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction.Hash = 0
---@return System.Int32 value:1
System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction.Hmac = 1
---@return System.Int32 value:2
System.Security.Cryptography.ECDiffieHellmanKeyDerivationFunction.Tls = 2

---@class System.Security.Cryptography.ECDiffieHellmanCngPublicKey : System.Security.Cryptography.ECDiffieHellmanPublicKey
---@field public BlobFormat System.Security.Cryptography.CngKeyBlobFormat @  getter
System.Security.Cryptography.ECDiffieHellmanCngPublicKey = {}
---@type System.Security.Cryptography.ECDiffieHellmanCngPublicKey
CS.System.Security.Cryptography.ECDiffieHellmanCngPublicKey = System.Security.Cryptography.ECDiffieHellmanCngPublicKey

---@param publicKeyBlob System.Byte[]
---@param format System.Security.Cryptography.CngKeyBlobFormat
---@return System.Security.Cryptography.ECDiffieHellmanPublicKey
function System.Security.Cryptography.ECDiffieHellmanCngPublicKey.FromByteArray(publicKeyBlob, format)end
---@param xml System.String
---@return System.Security.Cryptography.ECDiffieHellmanCngPublicKey
function System.Security.Cryptography.ECDiffieHellmanCngPublicKey.FromXmlString(xml)end
---@return System.Security.Cryptography.CngKey
function System.Security.Cryptography.ECDiffieHellmanCngPublicKey:Import()end
---@class System.Security.Cryptography.ManifestSignatureInformation : System.Object
---@field public AuthenticodeSignature System.Security.Cryptography.X509Certificates.AuthenticodeSignatureInformation @  getter
---@field public Manifest System.Security.ManifestKinds @  getter
---@field public StrongNameSignature System.Security.Cryptography.StrongNameSignatureInformation @  getter
System.Security.Cryptography.ManifestSignatureInformation = {}
---@type System.Security.Cryptography.ManifestSignatureInformation
CS.System.Security.Cryptography.ManifestSignatureInformation = System.Security.Cryptography.ManifestSignatureInformation

---@overload fun(application:System.ActivationContext, manifests:System.Security.ManifestKinds):System.Security.Cryptography.ManifestSignatureInformationCollection
---@overload fun(application:System.ActivationContext, manifests:System.Security.ManifestKinds, revocationFlag:System.Security.Cryptography.X509Certificates.X509RevocationFlag, revocationMode:System.Security.Cryptography.X509Certificates.X509RevocationMode):System.Security.Cryptography.ManifestSignatureInformationCollection
---@param application System.ActivationContext
---@return System.Security.Cryptography.ManifestSignatureInformationCollection
function System.Security.Cryptography.ManifestSignatureInformation.VerifySignature(application)end
---@class System.Security.Cryptography.SignatureVerificationResult : System.Enum
System.Security.Cryptography.SignatureVerificationResult = {}
---@type System.Security.Cryptography.SignatureVerificationResult
CS.System.Security.Cryptography.SignatureVerificationResult = System.Security.Cryptography.SignatureVerificationResult

---@return System.Int32 value:0
System.Security.Cryptography.SignatureVerificationResult.Valid = 0
---@return System.Int32 value:1
System.Security.Cryptography.SignatureVerificationResult.AssemblyIdentityMismatch = 1
---@return System.Int32 value:2
System.Security.Cryptography.SignatureVerificationResult.ContainingSignatureInvalid = 2
---@return System.Int32 value:3
System.Security.Cryptography.SignatureVerificationResult.PublicKeyTokenMismatch = 3
---@return System.Int32 value:4
System.Security.Cryptography.SignatureVerificationResult.PublisherMismatch = 4

---@class System.Security.Cryptography.StrongNameSignatureInformation : System.Object
---@field public HashAlgorithm System.String @  getter
---@field public HResult System.Int32 @  getter
---@field public IsValid System.Boolean @  getter
---@field public PublicKey System.Security.Cryptography.AsymmetricAlgorithm @  getter
---@field public VerificationResult System.Security.Cryptography.SignatureVerificationResult @  getter
System.Security.Cryptography.StrongNameSignatureInformation = {}
---@type System.Security.Cryptography.StrongNameSignatureInformation
CS.System.Security.Cryptography.StrongNameSignatureInformation = System.Security.Cryptography.StrongNameSignatureInformation

---@class System.Security.Cryptography.ManifestSignatureInformationCollection : System.Collections.ObjectModel.ReadOnlyCollection
System.Security.Cryptography.ManifestSignatureInformationCollection = {}
---@type System.Security.Cryptography.ManifestSignatureInformationCollection
CS.System.Security.Cryptography.ManifestSignatureInformationCollection = System.Security.Cryptography.ManifestSignatureInformationCollection

---@class System.Security.Cryptography.OidGroup : System.Enum
System.Security.Cryptography.OidGroup = {}
---@type System.Security.Cryptography.OidGroup
CS.System.Security.Cryptography.OidGroup = System.Security.Cryptography.OidGroup

---@return System.Int32 value:0
System.Security.Cryptography.OidGroup.All = 0
---@return System.Int32 value:1
System.Security.Cryptography.OidGroup.HashAlgorithm = 1
---@return System.Int32 value:2
System.Security.Cryptography.OidGroup.EncryptionAlgorithm = 2
---@return System.Int32 value:3
System.Security.Cryptography.OidGroup.PublicKeyAlgorithm = 3
---@return System.Int32 value:4
System.Security.Cryptography.OidGroup.SignatureAlgorithm = 4
---@return System.Int32 value:5
System.Security.Cryptography.OidGroup.Attribute = 5
---@return System.Int32 value:6
System.Security.Cryptography.OidGroup.ExtensionOrAttribute = 6
---@return System.Int32 value:7
System.Security.Cryptography.OidGroup.EnhancedKeyUsage = 7
---@return System.Int32 value:8
System.Security.Cryptography.OidGroup.Policy = 8
---@return System.Int32 value:9
System.Security.Cryptography.OidGroup.Template = 9
---@return System.Int32 value:10
System.Security.Cryptography.OidGroup.KeyDerivationFunction = 10

---@class System.Security.Cryptography.Oid : System.Object
---@field public Value System.String @ setter getter
---@field public FriendlyName System.String @ setter getter
System.Security.Cryptography.Oid = {}
---@type System.Security.Cryptography.Oid
CS.System.Security.Cryptography.Oid = System.Security.Cryptography.Oid

---@param friendlyName System.String
---@param group System.Security.Cryptography.OidGroup
---@return System.Security.Cryptography.Oid
function System.Security.Cryptography.Oid.FromFriendlyName(friendlyName, group)end
---@param oidValue System.String
---@param group System.Security.Cryptography.OidGroup
---@return System.Security.Cryptography.Oid
function System.Security.Cryptography.Oid.FromOidValue(oidValue, group)end
---@class System.Security.Cryptography.OidCollection : System.Object
---@field public Item System.Security.Cryptography.Oid @  getter
---@field public Item System.Security.Cryptography.Oid @  getter
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
System.Security.Cryptography.OidCollection = {}
---@type System.Security.Cryptography.OidCollection
CS.System.Security.Cryptography.OidCollection = System.Security.Cryptography.OidCollection

---@param oid System.Security.Cryptography.Oid
---@return System.Int32
function System.Security.Cryptography.OidCollection:Add(oid)end
---@return System.Security.Cryptography.OidEnumerator
function System.Security.Cryptography.OidCollection:GetEnumerator()end
---@param array System.Security.Cryptography.Oid[]
---@param index System.Int32
---@return System.Void
function System.Security.Cryptography.OidCollection:CopyTo(array, index)end
---@class System.Security.Cryptography.OidEnumerator : System.Object
---@field public Current System.Security.Cryptography.Oid @  getter
System.Security.Cryptography.OidEnumerator = {}
---@type System.Security.Cryptography.OidEnumerator
CS.System.Security.Cryptography.OidEnumerator = System.Security.Cryptography.OidEnumerator

---@return System.Boolean
function System.Security.Cryptography.OidEnumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.OidEnumerator:Reset()end
---@class System.Security.Cryptography.AsnEncodedData : System.Object
---@field public Oid System.Security.Cryptography.Oid @ setter getter
---@field public RawData System.Byte[] @ setter getter
System.Security.Cryptography.AsnEncodedData = {}
---@type System.Security.Cryptography.AsnEncodedData
CS.System.Security.Cryptography.AsnEncodedData = System.Security.Cryptography.AsnEncodedData

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.AsnEncodedData:CopyFrom(asnEncodedData)end
---@param multiLine System.Boolean
---@return System.String
function System.Security.Cryptography.AsnEncodedData:Format(multiLine)end
---@class System.Security.Cryptography.AsnEncodedDataCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public Item System.Security.Cryptography.AsnEncodedData @  getter
---@field public SyncRoot System.Object @  getter
System.Security.Cryptography.AsnEncodedDataCollection = {}
---@type System.Security.Cryptography.AsnEncodedDataCollection
CS.System.Security.Cryptography.AsnEncodedDataCollection = System.Security.Cryptography.AsnEncodedDataCollection

---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Int32
function System.Security.Cryptography.AsnEncodedDataCollection:Add(asnEncodedData)end
---@param array System.Security.Cryptography.AsnEncodedData[]
---@param index System.Int32
---@return System.Void
function System.Security.Cryptography.AsnEncodedDataCollection:CopyTo(array, index)end
---@return System.Security.Cryptography.AsnEncodedDataEnumerator
function System.Security.Cryptography.AsnEncodedDataCollection:GetEnumerator()end
---@param asnEncodedData System.Security.Cryptography.AsnEncodedData
---@return System.Void
function System.Security.Cryptography.AsnEncodedDataCollection:Remove(asnEncodedData)end
---@class System.Security.Cryptography.AsnEncodedDataEnumerator : System.Object
---@field public Current System.Security.Cryptography.AsnEncodedData @  getter
System.Security.Cryptography.AsnEncodedDataEnumerator = {}
---@type System.Security.Cryptography.AsnEncodedDataEnumerator
CS.System.Security.Cryptography.AsnEncodedDataEnumerator = System.Security.Cryptography.AsnEncodedDataEnumerator

---@return System.Boolean
function System.Security.Cryptography.AsnEncodedDataEnumerator:MoveNext()end
---@return System.Void
function System.Security.Cryptography.AsnEncodedDataEnumerator:Reset()end
