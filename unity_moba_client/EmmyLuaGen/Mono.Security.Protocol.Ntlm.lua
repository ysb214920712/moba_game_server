---@class Mono.Security.Protocol.Ntlm.ChallengeResponse : System.Object
---@field public Password System.String @ setter getter
---@field public Challenge System.Byte[] @ setter getter
---@field public LM System.Byte[] @  getter
---@field public NT System.Byte[] @  getter
Mono.Security.Protocol.Ntlm.ChallengeResponse = {}
---@type Mono.Security.Protocol.Ntlm.ChallengeResponse
CS.Mono.Security.Protocol.Ntlm.ChallengeResponse = Mono.Security.Protocol.Ntlm.ChallengeResponse

---@return System.Void
function Mono.Security.Protocol.Ntlm.ChallengeResponse:Dispose()end
---@class Mono.Security.Protocol.Ntlm.ChallengeResponse2 : System.Object
Mono.Security.Protocol.Ntlm.ChallengeResponse2 = {}
---@type Mono.Security.Protocol.Ntlm.ChallengeResponse2
CS.Mono.Security.Protocol.Ntlm.ChallengeResponse2 = Mono.Security.Protocol.Ntlm.ChallengeResponse2

---@param type2 Mono.Security.Protocol.Ntlm.Type2Message
---@param level Mono.Security.Protocol.Ntlm.NtlmAuthLevel
---@param username System.String
---@param password System.String
---@param domain System.String
---@param lm System.Byte[]
---@param ntlm System.Byte[]
---@return System.Void
function Mono.Security.Protocol.Ntlm.ChallengeResponse2.Compute(type2, level, username, password, domain, lm, ntlm)end
---@class Mono.Security.Protocol.Ntlm.MessageBase : System.Object
---@field public Flags Mono.Security.Protocol.Ntlm.NtlmFlags @ setter getter
---@field public Type System.Int32 @  getter
Mono.Security.Protocol.Ntlm.MessageBase = {}
---@type Mono.Security.Protocol.Ntlm.MessageBase
CS.Mono.Security.Protocol.Ntlm.MessageBase = Mono.Security.Protocol.Ntlm.MessageBase

---@return System.Byte[]
function Mono.Security.Protocol.Ntlm.MessageBase:GetBytes()end
---@class Mono.Security.Protocol.Ntlm.NtlmAuthLevel : System.Enum
Mono.Security.Protocol.Ntlm.NtlmAuthLevel = {}
---@type Mono.Security.Protocol.Ntlm.NtlmAuthLevel
CS.Mono.Security.Protocol.Ntlm.NtlmAuthLevel = Mono.Security.Protocol.Ntlm.NtlmAuthLevel

---@return System.Int32 value:0
Mono.Security.Protocol.Ntlm.NtlmAuthLevel.LM_and_NTLM = 0
---@return System.Int32 value:1
Mono.Security.Protocol.Ntlm.NtlmAuthLevel.LM_and_NTLM_and_try_NTLMv2_Session = 1
---@return System.Int32 value:2
Mono.Security.Protocol.Ntlm.NtlmAuthLevel.NTLM_only = 2
---@return System.Int32 value:3
Mono.Security.Protocol.Ntlm.NtlmAuthLevel.NTLMv2_only = 3

---@class Mono.Security.Protocol.Ntlm.NtlmFlags : System.Enum
Mono.Security.Protocol.Ntlm.NtlmFlags = {}
---@type Mono.Security.Protocol.Ntlm.NtlmFlags
CS.Mono.Security.Protocol.Ntlm.NtlmFlags = Mono.Security.Protocol.Ntlm.NtlmFlags

---@return System.Int32 value:1
Mono.Security.Protocol.Ntlm.NtlmFlags.NegotiateUnicode = 1
---@return System.Int32 value:2
Mono.Security.Protocol.Ntlm.NtlmFlags.NegotiateOem = 2
---@return System.Int32 value:4
Mono.Security.Protocol.Ntlm.NtlmFlags.RequestTarget = 4

---@class Mono.Security.Protocol.Ntlm.NtlmSettings : System.Object
---@field public DefaultAuthLevel Mono.Security.Protocol.Ntlm.NtlmAuthLevel @static setter getter
Mono.Security.Protocol.Ntlm.NtlmSettings = {}
---@type Mono.Security.Protocol.Ntlm.NtlmSettings
CS.Mono.Security.Protocol.Ntlm.NtlmSettings = Mono.Security.Protocol.Ntlm.NtlmSettings

---@class Mono.Security.Protocol.Ntlm.Type1Message : Mono.Security.Protocol.Ntlm.MessageBase
---@field public Domain System.String @ setter getter
---@field public Host System.String @ setter getter
Mono.Security.Protocol.Ntlm.Type1Message = {}
---@type Mono.Security.Protocol.Ntlm.Type1Message
CS.Mono.Security.Protocol.Ntlm.Type1Message = Mono.Security.Protocol.Ntlm.Type1Message

---@return System.Byte[]
function Mono.Security.Protocol.Ntlm.Type1Message:GetBytes()end
---@class Mono.Security.Protocol.Ntlm.Type2Message : Mono.Security.Protocol.Ntlm.MessageBase
---@field public Nonce System.Byte[] @ setter getter
---@field public TargetName System.String @  getter
---@field public TargetInfo System.Byte[] @  getter
Mono.Security.Protocol.Ntlm.Type2Message = {}
---@type Mono.Security.Protocol.Ntlm.Type2Message
CS.Mono.Security.Protocol.Ntlm.Type2Message = Mono.Security.Protocol.Ntlm.Type2Message

---@return System.Byte[]
function Mono.Security.Protocol.Ntlm.Type2Message:GetBytes()end
---@class Mono.Security.Protocol.Ntlm.Type3Message : Mono.Security.Protocol.Ntlm.MessageBase
---@field public DefaultAuthLevel Mono.Security.Protocol.Ntlm.NtlmAuthLevel @static setter getter
---@field public Level Mono.Security.Protocol.Ntlm.NtlmAuthLevel @ setter getter
---@field public Challenge System.Byte[] @ setter getter
---@field public Domain System.String @ setter getter
---@field public Host System.String @ setter getter
---@field public Password System.String @ setter getter
---@field public Username System.String @ setter getter
---@field public LM System.Byte[] @  getter
---@field public NT System.Byte[] @ setter getter
Mono.Security.Protocol.Ntlm.Type3Message = {}
---@type Mono.Security.Protocol.Ntlm.Type3Message
CS.Mono.Security.Protocol.Ntlm.Type3Message = Mono.Security.Protocol.Ntlm.Type3Message

---@return System.Byte[]
function Mono.Security.Protocol.Ntlm.Type3Message:GetBytes()end
