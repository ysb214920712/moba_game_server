---@class System.Text.ASCIIEncoding : System.Text.Encoding
---@field public IsSingleByte System.Boolean @  getter
System.Text.ASCIIEncoding = {}
---@type System.Text.ASCIIEncoding
CS.System.Text.ASCIIEncoding = System.Text.ASCIIEncoding

---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param chars System.String
---@return System.Int32
function System.Text.ASCIIEncoding:GetByteCount(chars)end
---@overload fun(chars:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@return System.Int32
function System.Text.ASCIIEncoding:GetBytes(chars, charCount, bytes, byteCount)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte
---@param count System.Int32
---@return System.Int32
function System.Text.ASCIIEncoding:GetCharCount(bytes, count)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@return System.Int32
function System.Text.ASCIIEncoding:GetChars(bytes, byteCount, chars, charCount)end
---@param bytes System.Byte[]
---@param byteIndex System.Int32
---@param byteCount System.Int32
---@return System.String
function System.Text.ASCIIEncoding:GetString(bytes, byteIndex, byteCount)end
---@param charCount System.Int32
---@return System.Int32
function System.Text.ASCIIEncoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.ASCIIEncoding:GetMaxCharCount(byteCount)end
---@return System.Text.Decoder
function System.Text.ASCIIEncoding:GetDecoder()end
---@return System.Text.Encoder
function System.Text.ASCIIEncoding:GetEncoder()end
---@class System.Text.Decoder : System.Object
---@field public Fallback System.Text.DecoderFallback @ setter getter
---@field public FallbackBuffer System.Text.DecoderFallbackBuffer @  getter
System.Text.Decoder = {}
---@type System.Text.Decoder
CS.System.Text.Decoder = System.Text.Decoder

---@return System.Void
function System.Text.Decoder:Reset()end
---@overload fun(bytes:System.Byte, count:System.Int32, flush:System.Boolean):System.Int32
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32, flush:System.Boolean):System.Int32
---@param bytes System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Int32
function System.Text.Decoder:GetCharCount(bytes, index, count)end
---@overload fun(bytes:System.Byte, byteCount:System.Int32, chars:System.Char, charCount:System.Int32, flush:System.Boolean):System.Int32
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32, flush:System.Boolean):System.Int32
---@param bytes System.Byte[]
---@param byteIndex System.Int32
---@param byteCount System.Int32
---@param chars System.Char[]
---@param charIndex System.Int32
---@return System.Int32
function System.Text.Decoder:GetChars(bytes, byteIndex, byteCount, chars, charIndex)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, flush:System.Boolean, bytesUsed:System.Int32, charsUsed:System.Int32, completed:System.Boolean):System.Void
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param flush System.Boolean
---@param bytesUsed System.Int32
---@param charsUsed System.Int32
---@param completed System.Boolean
---@return System.Void
function System.Text.Decoder:Convert(bytes, byteCount, chars, charCount, flush, bytesUsed, charsUsed, completed)end
---@class System.Text.DecoderExceptionFallback : System.Text.DecoderFallback
---@field public MaxCharCount System.Int32 @  getter
System.Text.DecoderExceptionFallback = {}
---@type System.Text.DecoderExceptionFallback
CS.System.Text.DecoderExceptionFallback = System.Text.DecoderExceptionFallback

---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderExceptionFallback:CreateFallbackBuffer()end
---@param value System.Object
---@return System.Boolean
function System.Text.DecoderExceptionFallback:Equals(value)end
---@return System.Int32
function System.Text.DecoderExceptionFallback:GetHashCode()end
---@class System.Text.DecoderExceptionFallbackBuffer : System.Text.DecoderFallbackBuffer
---@field public Remaining System.Int32 @  getter
System.Text.DecoderExceptionFallbackBuffer = {}
---@type System.Text.DecoderExceptionFallbackBuffer
CS.System.Text.DecoderExceptionFallbackBuffer = System.Text.DecoderExceptionFallbackBuffer

---@param bytesUnknown System.Byte[]
---@param index System.Int32
---@return System.Boolean
function System.Text.DecoderExceptionFallbackBuffer:Fallback(bytesUnknown, index)end
---@return System.Char
function System.Text.DecoderExceptionFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.DecoderExceptionFallbackBuffer:MovePrevious()end
---@class System.Text.DecoderFallbackException : System.ArgumentException
---@field public BytesUnknown System.Byte[] @  getter
---@field public Index System.Int32 @  getter
System.Text.DecoderFallbackException = {}
---@type System.Text.DecoderFallbackException
CS.System.Text.DecoderFallbackException = System.Text.DecoderFallbackException

---@class System.Text.DecoderFallback : System.Object
---@field public ReplacementFallback System.Text.DecoderFallback @static  getter
---@field public ExceptionFallback System.Text.DecoderFallback @static  getter
---@field public MaxCharCount System.Int32 @  getter
System.Text.DecoderFallback = {}
---@type System.Text.DecoderFallback
CS.System.Text.DecoderFallback = System.Text.DecoderFallback

---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderFallback:CreateFallbackBuffer()end
---@class System.Text.DecoderFallbackBuffer : System.Object
---@field public Remaining System.Int32 @  getter
System.Text.DecoderFallbackBuffer = {}
---@type System.Text.DecoderFallbackBuffer
CS.System.Text.DecoderFallbackBuffer = System.Text.DecoderFallbackBuffer

---@param bytesUnknown System.Byte[]
---@param index System.Int32
---@return System.Boolean
function System.Text.DecoderFallbackBuffer:Fallback(bytesUnknown, index)end
---@return System.Char
function System.Text.DecoderFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.DecoderFallbackBuffer:MovePrevious()end
---@return System.Void
function System.Text.DecoderFallbackBuffer:Reset()end
---@class System.Text.DecoderReplacementFallback : System.Text.DecoderFallback
---@field public DefaultString System.String @  getter
---@field public MaxCharCount System.Int32 @  getter
System.Text.DecoderReplacementFallback = {}
---@type System.Text.DecoderReplacementFallback
CS.System.Text.DecoderReplacementFallback = System.Text.DecoderReplacementFallback

---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderReplacementFallback:CreateFallbackBuffer()end
---@param value System.Object
---@return System.Boolean
function System.Text.DecoderReplacementFallback:Equals(value)end
---@return System.Int32
function System.Text.DecoderReplacementFallback:GetHashCode()end
---@class System.Text.DecoderReplacementFallbackBuffer : System.Text.DecoderFallbackBuffer
---@field public Remaining System.Int32 @  getter
System.Text.DecoderReplacementFallbackBuffer = {}
---@type System.Text.DecoderReplacementFallbackBuffer
CS.System.Text.DecoderReplacementFallbackBuffer = System.Text.DecoderReplacementFallbackBuffer

---@param bytesUnknown System.Byte[]
---@param index System.Int32
---@return System.Boolean
function System.Text.DecoderReplacementFallbackBuffer:Fallback(bytesUnknown, index)end
---@return System.Char
function System.Text.DecoderReplacementFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.DecoderReplacementFallbackBuffer:MovePrevious()end
---@return System.Void
function System.Text.DecoderReplacementFallbackBuffer:Reset()end
---@class System.Text.Encoder : System.Object
---@field public Fallback System.Text.EncoderFallback @ setter getter
---@field public FallbackBuffer System.Text.EncoderFallbackBuffer @  getter
System.Text.Encoder = {}
---@type System.Text.Encoder
CS.System.Text.Encoder = System.Text.Encoder

---@return System.Void
function System.Text.Encoder:Reset()end
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32, flush:System.Boolean):System.Int32
---@param chars System.Char
---@param count System.Int32
---@param flush System.Boolean
---@return System.Int32
function System.Text.Encoder:GetByteCount(chars, count, flush)end
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32, flush:System.Boolean):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param flush System.Boolean
---@return System.Int32
function System.Text.Encoder:GetBytes(chars, charCount, bytes, byteCount, flush)end
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, flush:System.Boolean, charsUsed:System.Int32, bytesUsed:System.Int32, completed:System.Boolean):System.Void
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param flush System.Boolean
---@param charsUsed System.Int32
---@param bytesUsed System.Int32
---@param completed System.Boolean
---@return System.Void
function System.Text.Encoder:Convert(chars, charCount, bytes, byteCount, flush, charsUsed, bytesUsed, completed)end
---@class System.Text.EncoderExceptionFallback : System.Text.EncoderFallback
---@field public MaxCharCount System.Int32 @  getter
System.Text.EncoderExceptionFallback = {}
---@type System.Text.EncoderExceptionFallback
CS.System.Text.EncoderExceptionFallback = System.Text.EncoderExceptionFallback

---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderExceptionFallback:CreateFallbackBuffer()end
---@param value System.Object
---@return System.Boolean
function System.Text.EncoderExceptionFallback:Equals(value)end
---@return System.Int32
function System.Text.EncoderExceptionFallback:GetHashCode()end
---@class System.Text.EncoderExceptionFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field public Remaining System.Int32 @  getter
System.Text.EncoderExceptionFallbackBuffer = {}
---@type System.Text.EncoderExceptionFallbackBuffer
CS.System.Text.EncoderExceptionFallbackBuffer = System.Text.EncoderExceptionFallbackBuffer

---@overload fun(charUnknownHigh:System.Char, charUnknownLow:System.Char, index:System.Int32):System.Boolean
---@param charUnknown System.Char
---@param index System.Int32
---@return System.Boolean
function System.Text.EncoderExceptionFallbackBuffer:Fallback(charUnknown, index)end
---@return System.Char
function System.Text.EncoderExceptionFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.EncoderExceptionFallbackBuffer:MovePrevious()end
---@class System.Text.EncoderFallbackException : System.ArgumentException
---@field public CharUnknown System.Char @  getter
---@field public CharUnknownHigh System.Char @  getter
---@field public CharUnknownLow System.Char @  getter
---@field public Index System.Int32 @  getter
System.Text.EncoderFallbackException = {}
---@type System.Text.EncoderFallbackException
CS.System.Text.EncoderFallbackException = System.Text.EncoderFallbackException

---@return System.Boolean
function System.Text.EncoderFallbackException:IsUnknownSurrogate()end
---@class System.Text.EncoderFallback : System.Object
---@field public ReplacementFallback System.Text.EncoderFallback @static  getter
---@field public ExceptionFallback System.Text.EncoderFallback @static  getter
---@field public MaxCharCount System.Int32 @  getter
System.Text.EncoderFallback = {}
---@type System.Text.EncoderFallback
CS.System.Text.EncoderFallback = System.Text.EncoderFallback

---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderFallback:CreateFallbackBuffer()end
---@class System.Text.EncoderFallbackBuffer : System.Object
---@field public Remaining System.Int32 @  getter
System.Text.EncoderFallbackBuffer = {}
---@type System.Text.EncoderFallbackBuffer
CS.System.Text.EncoderFallbackBuffer = System.Text.EncoderFallbackBuffer

---@overload fun(charUnknownHigh:System.Char, charUnknownLow:System.Char, index:System.Int32):System.Boolean
---@param charUnknown System.Char
---@param index System.Int32
---@return System.Boolean
function System.Text.EncoderFallbackBuffer:Fallback(charUnknown, index)end
---@return System.Char
function System.Text.EncoderFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.EncoderFallbackBuffer:MovePrevious()end
---@return System.Void
function System.Text.EncoderFallbackBuffer:Reset()end
---@class System.Text.EncoderReplacementFallback : System.Text.EncoderFallback
---@field public DefaultString System.String @  getter
---@field public MaxCharCount System.Int32 @  getter
System.Text.EncoderReplacementFallback = {}
---@type System.Text.EncoderReplacementFallback
CS.System.Text.EncoderReplacementFallback = System.Text.EncoderReplacementFallback

---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderReplacementFallback:CreateFallbackBuffer()end
---@param value System.Object
---@return System.Boolean
function System.Text.EncoderReplacementFallback:Equals(value)end
---@return System.Int32
function System.Text.EncoderReplacementFallback:GetHashCode()end
---@class System.Text.EncoderReplacementFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field public Remaining System.Int32 @  getter
System.Text.EncoderReplacementFallbackBuffer = {}
---@type System.Text.EncoderReplacementFallbackBuffer
CS.System.Text.EncoderReplacementFallbackBuffer = System.Text.EncoderReplacementFallbackBuffer

---@overload fun(charUnknownHigh:System.Char, charUnknownLow:System.Char, index:System.Int32):System.Boolean
---@param charUnknown System.Char
---@param index System.Int32
---@return System.Boolean
function System.Text.EncoderReplacementFallbackBuffer:Fallback(charUnknown, index)end
---@return System.Char
function System.Text.EncoderReplacementFallbackBuffer:GetNextChar()end
---@return System.Boolean
function System.Text.EncoderReplacementFallbackBuffer:MovePrevious()end
---@return System.Void
function System.Text.EncoderReplacementFallbackBuffer:Reset()end
---@class System.Text.Encoding : System.Object
---@field public BodyName System.String @  getter
---@field public EncodingName System.String @  getter
---@field public HeaderName System.String @  getter
---@field public WebName System.String @  getter
---@field public WindowsCodePage System.Int32 @  getter
---@field public IsBrowserDisplay System.Boolean @  getter
---@field public IsBrowserSave System.Boolean @  getter
---@field public IsMailNewsDisplay System.Boolean @  getter
---@field public IsMailNewsSave System.Boolean @  getter
---@field public IsSingleByte System.Boolean @  getter
---@field public EncoderFallback System.Text.EncoderFallback @ setter getter
---@field public DecoderFallback System.Text.DecoderFallback @ setter getter
---@field public IsReadOnly System.Boolean @  getter
---@field public ASCII System.Text.Encoding @static  getter
---@field public CodePage System.Int32 @  getter
---@field public Default System.Text.Encoding @static  getter
---@field public Unicode System.Text.Encoding @static  getter
---@field public BigEndianUnicode System.Text.Encoding @static  getter
---@field public UTF7 System.Text.Encoding @static  getter
---@field public UTF8 System.Text.Encoding @static  getter
---@field public UTF32 System.Text.Encoding @static  getter
System.Text.Encoding = {}
---@type System.Text.Encoding
CS.System.Text.Encoding = System.Text.Encoding

---@overload fun(srcEncoding:System.Text.Encoding, dstEncoding:System.Text.Encoding, bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Byte[]
---@param srcEncoding System.Text.Encoding
---@param dstEncoding System.Text.Encoding
---@param bytes System.Byte[]
---@return System.Byte[]
function System.Text.Encoding.Convert(srcEncoding, dstEncoding, bytes)end
---@param provider System.Text.EncodingProvider
---@return System.Void
function System.Text.Encoding.RegisterProvider(provider)end
---@overload fun(name:System.String):System.Text.Encoding
---@overload fun(codepage:System.Int32, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback):System.Text.Encoding
---@overload fun(name:System.String, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback):System.Text.Encoding
---@param codepage System.Int32
---@return System.Text.Encoding
function System.Text.Encoding.GetEncoding(codepage)end
---@return System.Text.EncodingInfo[]
function System.Text.Encoding.GetEncodings()end
---@return System.Byte[]
function System.Text.Encoding:GetPreamble()end
---@return System.Object
function System.Text.Encoding:Clone()end
---@overload fun(s:System.String):System.Int32
---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param chars System.Char[]
---@return System.Int32
function System.Text.Encoding:GetByteCount(chars)end
---@overload fun(s:System.String):System.Byte[]
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Byte[]
---@overload fun(chars:System.Char, charCount:System.Int32, bytes:System.Byte, byteCount:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(s:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char[]
---@return System.Byte[]
function System.Text.Encoding:GetBytes(chars)end
---@overload fun(bytes:System.Byte, count:System.Int32):System.Int32
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte[]
---@return System.Int32
function System.Text.Encoding:GetCharCount(bytes)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Char[]
---@overload fun(bytes:System.Byte, byteCount:System.Int32, chars:System.Char, charCount:System.Int32):System.Int32
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte[]
---@return System.Char[]
function System.Text.Encoding:GetChars(bytes)end
---@overload fun(bytes:System.Byte, byteCount:System.Int32):System.String
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.String
---@param bytes System.Byte[]
---@return System.String
function System.Text.Encoding:GetString(bytes)end
---@overload fun(form:System.Text.NormalizationForm):System.Boolean
---@return System.Boolean
function System.Text.Encoding:IsAlwaysNormalized()end
---@return System.Text.Decoder
function System.Text.Encoding:GetDecoder()end
---@return System.Text.Encoder
function System.Text.Encoding:GetEncoder()end
---@param charCount System.Int32
---@return System.Int32
function System.Text.Encoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.Encoding:GetMaxCharCount(byteCount)end
---@param value System.Object
---@return System.Boolean
function System.Text.Encoding:Equals(value)end
---@return System.Int32
function System.Text.Encoding:GetHashCode()end
---@class System.Text.EncodingInfo : System.Object
---@field public CodePage System.Int32 @  getter
---@field public Name System.String @  getter
---@field public DisplayName System.String @  getter
System.Text.EncodingInfo = {}
---@type System.Text.EncodingInfo
CS.System.Text.EncodingInfo = System.Text.EncodingInfo

---@return System.Text.Encoding
function System.Text.EncodingInfo:GetEncoding()end
---@param value System.Object
---@return System.Boolean
function System.Text.EncodingInfo:Equals(value)end
---@return System.Int32
function System.Text.EncodingInfo:GetHashCode()end
---@class System.Text.EncodingProvider : System.Object
System.Text.EncodingProvider = {}
---@type System.Text.EncodingProvider
CS.System.Text.EncodingProvider = System.Text.EncodingProvider

---@overload fun(name:System.String):System.Text.Encoding
---@overload fun(codepage:System.Int32, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback):System.Text.Encoding
---@overload fun(name:System.String, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback):System.Text.Encoding
---@param codepage System.Int32
---@return System.Text.Encoding
function System.Text.EncodingProvider:GetEncoding(codepage)end
---@class System.Text.StringBuilder : System.Object
---@field public Capacity System.Int32 @ setter getter
---@field public MaxCapacity System.Int32 @  getter
---@field public Length System.Int32 @ setter getter
---@field public Chars System.Char @ setter getter
System.Text.StringBuilder = {}
---@type System.Text.StringBuilder
CS.System.Text.StringBuilder = System.Text.StringBuilder

---@param capacity System.Int32
---@return System.Int32
function System.Text.StringBuilder:EnsureCapacity(capacity)end
---@overload fun(startIndex:System.Int32, length:System.Int32):System.String
---@return System.String
function System.Text.StringBuilder:ToString()end
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Clear()end
---@overload fun(value:System.SByte):System.Text.StringBuilder
---@overload fun(value:System.Byte):System.Text.StringBuilder
---@overload fun(value:System.Char):System.Text.StringBuilder
---@overload fun(value:System.Int16):System.Text.StringBuilder
---@overload fun(value:System.Int32):System.Text.StringBuilder
---@overload fun(value:System.Int64):System.Text.StringBuilder
---@overload fun(value:System.Single):System.Text.StringBuilder
---@overload fun(value:System.Double):System.Text.StringBuilder
---@overload fun(value:System.UInt16):System.Text.StringBuilder
---@overload fun(value:System.UInt32):System.Text.StringBuilder
---@overload fun(value:System.UInt64):System.Text.StringBuilder
---@overload fun(value:System.Char, repeatCount:System.Int32):System.Text.StringBuilder
---@overload fun(value:System.String):System.Text.StringBuilder
---@overload fun(value:System.Decimal):System.Text.StringBuilder
---@overload fun(value:System.Object):System.Text.StringBuilder
---@overload fun(value:System.Char[]):System.Text.StringBuilder
---@overload fun(value:System.Char, valueCount:System.Int32):System.Text.StringBuilder
---@overload fun(value:System.Char[], startIndex:System.Int32, charCount:System.Int32):System.Text.StringBuilder
---@overload fun(value:System.String, startIndex:System.Int32, count:System.Int32):System.Text.StringBuilder
---@param value System.Boolean
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Append(value)end
---@overload fun(value:System.String):System.Text.StringBuilder
---@return System.Text.StringBuilder
function System.Text.StringBuilder:AppendLine()end
---@param sourceIndex System.Int32
---@param destination System.Char[]
---@param destinationIndex System.Int32
---@param count System.Int32
---@return System.Void
function System.Text.StringBuilder:CopyTo(sourceIndex, destination, destinationIndex, count)end
---@overload fun(index:System.Int32, value:System.SByte):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Byte):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Int16):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Char):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Int32):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Int64):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Single):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Double):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.UInt16):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.UInt32):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.UInt64):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.String):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Char[]):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Decimal):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Object):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.String, count:System.Int32):System.Text.StringBuilder
---@overload fun(index:System.Int32, value:System.Char[], startIndex:System.Int32, charCount:System.Int32):System.Text.StringBuilder
---@param index System.Int32
---@param value System.Boolean
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Insert(index, value)end
---@param startIndex System.Int32
---@param length System.Int32
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Remove(startIndex, length)end
---@overload fun(format:System.String, args:System.Object[]):System.Text.StringBuilder
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Text.StringBuilder
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object):System.Text.StringBuilder
---@overload fun(provider:System.IFormatProvider, format:System.String, args:System.Object[]):System.Text.StringBuilder
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Text.StringBuilder
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object):System.Text.StringBuilder
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.Text.StringBuilder
---@param format System.String
---@param arg0 System.Object
---@return System.Text.StringBuilder
function System.Text.StringBuilder:AppendFormat(format, arg0)end
---@overload fun(oldChar:System.Char, newChar:System.Char, startIndex:System.Int32, count:System.Int32):System.Text.StringBuilder
---@overload fun(oldValue:System.String, newValue:System.String):System.Text.StringBuilder
---@overload fun(oldValue:System.String, newValue:System.String, startIndex:System.Int32, count:System.Int32):System.Text.StringBuilder
---@param oldChar System.Char
---@param newChar System.Char
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Replace(oldChar, newChar)end
---@param sb System.Text.StringBuilder
---@return System.Boolean
function System.Text.StringBuilder:Equals(sb)end
---@class System.Text.UnicodeEncoding : System.Text.Encoding
---@field public CharSize System.Int32
System.Text.UnicodeEncoding = {}
---@type System.Text.UnicodeEncoding
CS.System.Text.UnicodeEncoding = System.Text.UnicodeEncoding

---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param s System.String
---@return System.Int32
function System.Text.UnicodeEncoding:GetByteCount(s)end
---@overload fun(s:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UnicodeEncoding:GetBytes(chars, charCount, bytes, byteCount)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte
---@param count System.Int32
---@return System.Int32
function System.Text.UnicodeEncoding:GetCharCount(bytes, count)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@return System.Int32
function System.Text.UnicodeEncoding:GetChars(bytes, byteCount, chars, charCount)end
---@param bytes System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.String
function System.Text.UnicodeEncoding:GetString(bytes, index, count)end
---@return System.Text.Encoder
function System.Text.UnicodeEncoding:GetEncoder()end
---@return System.Text.Decoder
function System.Text.UnicodeEncoding:GetDecoder()end
---@return System.Byte[]
function System.Text.UnicodeEncoding:GetPreamble()end
---@param charCount System.Int32
---@return System.Int32
function System.Text.UnicodeEncoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UnicodeEncoding:GetMaxCharCount(byteCount)end
---@param value System.Object
---@return System.Boolean
function System.Text.UnicodeEncoding:Equals(value)end
---@return System.Int32
function System.Text.UnicodeEncoding:GetHashCode()end
---@class System.Text.UTF32Encoding : System.Text.Encoding
System.Text.UTF32Encoding = {}
---@type System.Text.UTF32Encoding
CS.System.Text.UTF32Encoding = System.Text.UTF32Encoding

---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param s System.String
---@return System.Int32
function System.Text.UTF32Encoding:GetByteCount(s)end
---@overload fun(s:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF32Encoding:GetBytes(chars, charCount, bytes, byteCount)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte
---@param count System.Int32
---@return System.Int32
function System.Text.UTF32Encoding:GetCharCount(bytes, count)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF32Encoding:GetChars(bytes, byteCount, chars, charCount)end
---@param bytes System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.String
function System.Text.UTF32Encoding:GetString(bytes, index, count)end
---@return System.Text.Decoder
function System.Text.UTF32Encoding:GetDecoder()end
---@return System.Text.Encoder
function System.Text.UTF32Encoding:GetEncoder()end
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF32Encoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF32Encoding:GetMaxCharCount(byteCount)end
---@return System.Byte[]
function System.Text.UTF32Encoding:GetPreamble()end
---@param value System.Object
---@return System.Boolean
function System.Text.UTF32Encoding:Equals(value)end
---@return System.Int32
function System.Text.UTF32Encoding:GetHashCode()end
---@class System.Text.UTF7Encoding : System.Text.Encoding
System.Text.UTF7Encoding = {}
---@type System.Text.UTF7Encoding
CS.System.Text.UTF7Encoding = System.Text.UTF7Encoding

---@param value System.Object
---@return System.Boolean
function System.Text.UTF7Encoding:Equals(value)end
---@return System.Int32
function System.Text.UTF7Encoding:GetHashCode()end
---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param s System.String
---@return System.Int32
function System.Text.UTF7Encoding:GetByteCount(s)end
---@overload fun(s:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF7Encoding:GetBytes(chars, charCount, bytes, byteCount)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte
---@param count System.Int32
---@return System.Int32
function System.Text.UTF7Encoding:GetCharCount(bytes, count)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF7Encoding:GetChars(bytes, byteCount, chars, charCount)end
---@param bytes System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.String
function System.Text.UTF7Encoding:GetString(bytes, index, count)end
---@return System.Text.Decoder
function System.Text.UTF7Encoding:GetDecoder()end
---@return System.Text.Encoder
function System.Text.UTF7Encoding:GetEncoder()end
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF7Encoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF7Encoding:GetMaxCharCount(byteCount)end
---@class System.Text.UTF8Encoding : System.Text.Encoding
System.Text.UTF8Encoding = {}
---@type System.Text.UTF8Encoding
CS.System.Text.UTF8Encoding = System.Text.UTF8Encoding

---@overload fun(chars:System.Char, count:System.Int32):System.Int32
---@overload fun(chars:System.Char[], index:System.Int32, count:System.Int32):System.Int32
---@param chars System.String
---@return System.Int32
function System.Text.UTF8Encoding:GetByteCount(chars)end
---@overload fun(s:System.String, charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@overload fun(chars:System.Char[], charIndex:System.Int32, charCount:System.Int32, bytes:System.Byte[], byteIndex:System.Int32):System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF8Encoding:GetBytes(chars, charCount, bytes, byteCount)end
---@overload fun(bytes:System.Byte[], index:System.Int32, count:System.Int32):System.Int32
---@param bytes System.Byte
---@param count System.Int32
---@return System.Int32
function System.Text.UTF8Encoding:GetCharCount(bytes, count)end
---@overload fun(bytes:System.Byte[], byteIndex:System.Int32, byteCount:System.Int32, chars:System.Char[], charIndex:System.Int32):System.Int32
---@param bytes System.Byte
---@param byteCount System.Int32
---@param chars System.Char
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF8Encoding:GetChars(bytes, byteCount, chars, charCount)end
---@param bytes System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.String
function System.Text.UTF8Encoding:GetString(bytes, index, count)end
---@return System.Text.Decoder
function System.Text.UTF8Encoding:GetDecoder()end
---@return System.Text.Encoder
function System.Text.UTF8Encoding:GetEncoder()end
---@param charCount System.Int32
---@return System.Int32
function System.Text.UTF8Encoding:GetMaxByteCount(charCount)end
---@param byteCount System.Int32
---@return System.Int32
function System.Text.UTF8Encoding:GetMaxCharCount(byteCount)end
---@return System.Byte[]
function System.Text.UTF8Encoding:GetPreamble()end
---@param value System.Object
---@return System.Boolean
function System.Text.UTF8Encoding:Equals(value)end
---@return System.Int32
function System.Text.UTF8Encoding:GetHashCode()end
---@class System.Text.NormalizationForm : System.Enum
System.Text.NormalizationForm = {}
---@type System.Text.NormalizationForm
CS.System.Text.NormalizationForm = System.Text.NormalizationForm

---@return System.Int32 value:1
System.Text.NormalizationForm.FormC = 1
---@return System.Int32 value:2
System.Text.NormalizationForm.FormD = 2

