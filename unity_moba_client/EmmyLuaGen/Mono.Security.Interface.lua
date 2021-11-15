---@class Mono.Security.Interface.AlertLevel : System.Enum
Mono.Security.Interface.AlertLevel = {}
---@type Mono.Security.Interface.AlertLevel
CS.Mono.Security.Interface.AlertLevel = Mono.Security.Interface.AlertLevel

---@return System.Int32 value:1
Mono.Security.Interface.AlertLevel.Warning = 1

---@class Mono.Security.Interface.AlertDescription : System.Enum
Mono.Security.Interface.AlertDescription = {}
---@type Mono.Security.Interface.AlertDescription
CS.Mono.Security.Interface.AlertDescription = Mono.Security.Interface.AlertDescription

---@return System.Int32 value:0
Mono.Security.Interface.AlertDescription.CloseNotify = 0
---@return System.Int32 value:10
Mono.Security.Interface.AlertDescription.UnexpectedMessage = 10
---@return System.Int32 value:20
Mono.Security.Interface.AlertDescription.BadRecordMAC = 20
---@return System.Int32 value:21
Mono.Security.Interface.AlertDescription.DecryptionFailed_RESERVED = 21
---@return System.Int32 value:22
Mono.Security.Interface.AlertDescription.RecordOverflow = 22

---@class Mono.Security.Interface.Alert : System.Object
---@field public Level Mono.Security.Interface.AlertLevel @  getter
---@field public Description Mono.Security.Interface.AlertDescription @  getter
---@field public Message System.String @  getter
---@field public IsWarning System.Boolean @  getter
---@field public IsCloseNotify System.Boolean @  getter
Mono.Security.Interface.Alert = {}
---@type Mono.Security.Interface.Alert
CS.Mono.Security.Interface.Alert = Mono.Security.Interface.Alert

---@return System.String
function Mono.Security.Interface.Alert:ToString()end
---@param description Mono.Security.Interface.AlertDescription
---@return System.String
function Mono.Security.Interface.Alert.GetAlertMessage(description)end
---@class Mono.Security.Interface.ValidationResult : System.Object
---@field public Trusted System.Boolean @  getter
---@field public UserDenied System.Boolean @  getter
---@field public ErrorCode System.Int32 @  getter
---@field public PolicyErrors System.Nullable @  getter
Mono.Security.Interface.ValidationResult = {}
---@type Mono.Security.Interface.ValidationResult
CS.Mono.Security.Interface.ValidationResult = Mono.Security.Interface.ValidationResult

---@class Mono.Security.Interface.CertificateValidationHelper : System.Object
---@field public SupportsX509Chain System.Boolean @static  getter
---@field public SupportsTrustAnchors System.Boolean @static  getter
Mono.Security.Interface.CertificateValidationHelper = {}
---@type Mono.Security.Interface.CertificateValidationHelper
CS.Mono.Security.Interface.CertificateValidationHelper = Mono.Security.Interface.CertificateValidationHelper

---@param settings Mono.Security.Interface.MonoTlsSettings
---@return Mono.Security.Interface.ICertificateValidator
function Mono.Security.Interface.CertificateValidationHelper.GetValidator(settings)end
---@class Mono.Security.Interface.CipherAlgorithmType : System.Enum
Mono.Security.Interface.CipherAlgorithmType = {}
---@type Mono.Security.Interface.CipherAlgorithmType
CS.Mono.Security.Interface.CipherAlgorithmType = Mono.Security.Interface.CipherAlgorithmType

---@return System.Int32 value:0
Mono.Security.Interface.CipherAlgorithmType.None = 0
---@return System.Int32 value:1
Mono.Security.Interface.CipherAlgorithmType.Aes128 = 1
---@return System.Int32 value:2
Mono.Security.Interface.CipherAlgorithmType.Aes256 = 2
---@return System.Int32 value:3
Mono.Security.Interface.CipherAlgorithmType.AesGcm128 = 3
---@return System.Int32 value:4
Mono.Security.Interface.CipherAlgorithmType.AesGcm256 = 4

---@class Mono.Security.Interface.CipherSuiteCode : System.Enum
Mono.Security.Interface.CipherSuiteCode = {}
---@type Mono.Security.Interface.CipherSuiteCode
CS.Mono.Security.Interface.CipherSuiteCode = Mono.Security.Interface.CipherSuiteCode

---@return System.Int32 value:0
Mono.Security.Interface.CipherSuiteCode.TLS_NULL_WITH_NULL_NULL = 0
---@return System.Int32 value:1
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_NULL_MD5 = 1
---@return System.Int32 value:2
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_NULL_SHA = 2
---@return System.Int32 value:3
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_EXPORT_WITH_RC4_40_MD5 = 3
---@return System.Int32 value:4
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_RC4_128_MD5 = 4
---@return System.Int32 value:5
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_RC4_128_SHA = 5
---@return System.Int32 value:6
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_EXPORT_WITH_RC2_CBC_40_MD5 = 6
---@return System.Int32 value:7
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_IDEA_CBC_SHA = 7
---@return System.Int32 value:8
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = 8
---@return System.Int32 value:9
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_DES_CBC_SHA = 9
---@return System.Int32 value:10
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_3DES_EDE_CBC_SHA = 10
---@return System.Int32 value:11
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_EXPORT_WITH_DES40_CBC_SHA = 11
---@return System.Int32 value:12
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_DES_CBC_SHA = 12
---@return System.Int32 value:13
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA = 13
---@return System.Int32 value:14
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_EXPORT_WITH_DES40_CBC_SHA = 14
---@return System.Int32 value:15
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_DES_CBC_SHA = 15
---@return System.Int32 value:16
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA = 16
---@return System.Int32 value:17
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = 17
---@return System.Int32 value:18
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_DES_CBC_SHA = 18
---@return System.Int32 value:19
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = 19
---@return System.Int32 value:20
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = 20
---@return System.Int32 value:21
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_DES_CBC_SHA = 21
---@return System.Int32 value:22
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = 22
---@return System.Int32 value:23
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = 23
---@return System.Int32 value:24
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_RC4_128_MD5 = 24
---@return System.Int32 value:25
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = 25
---@return System.Int32 value:26
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_DES_CBC_SHA = 26
---@return System.Int32 value:27
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = 27
---@return System.Int32 value:44
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_NULL_SHA = 44
---@return System.Int32 value:45
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_NULL_SHA = 45
---@return System.Int32 value:46
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_NULL_SHA = 46
---@return System.Int32 value:47
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_128_CBC_SHA = 47
---@return System.Int32 value:48
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_128_CBC_SHA = 48
---@return System.Int32 value:49
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_128_CBC_SHA = 49
---@return System.Int32 value:50
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_128_CBC_SHA = 50
---@return System.Int32 value:51
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_128_CBC_SHA = 51
---@return System.Int32 value:52
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_128_CBC_SHA = 52
---@return System.Int32 value:53
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_256_CBC_SHA = 53
---@return System.Int32 value:54
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_256_CBC_SHA = 54
---@return System.Int32 value:55
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_256_CBC_SHA = 55
---@return System.Int32 value:56
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_256_CBC_SHA = 56
---@return System.Int32 value:57
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_256_CBC_SHA = 57
---@return System.Int32 value:58
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_256_CBC_SHA = 58
---@return System.Int32 value:59
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_NULL_SHA256 = 59
---@return System.Int32 value:60
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_128_CBC_SHA256 = 60
---@return System.Int32 value:61
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_256_CBC_SHA256 = 61
---@return System.Int32 value:62
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_128_CBC_SHA256 = 62
---@return System.Int32 value:63
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_128_CBC_SHA256 = 63
---@return System.Int32 value:64
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = 64
---@return System.Int32 value:65
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA = 65
---@return System.Int32 value:66
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA = 66
---@return System.Int32 value:67
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA = 67
---@return System.Int32 value:68
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA = 68
---@return System.Int32 value:69
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA = 69
---@return System.Int32 value:70
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA = 70
---@return System.Int32 value:103
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = 103
---@return System.Int32 value:104
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_256_CBC_SHA256 = 104
---@return System.Int32 value:105
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_256_CBC_SHA256 = 105
---@return System.Int32 value:106
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = 106
---@return System.Int32 value:107
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = 107
---@return System.Int32 value:108
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_128_CBC_SHA256 = 108
---@return System.Int32 value:109
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_256_CBC_SHA256 = 109
---@return System.Int32 value:132
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA = 132
---@return System.Int32 value:133
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA = 133
---@return System.Int32 value:134
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA = 134
---@return System.Int32 value:135
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA = 135
---@return System.Int32 value:136
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA = 136
---@return System.Int32 value:137
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA = 137
---@return System.Int32 value:138
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_RC4_128_SHA = 138
---@return System.Int32 value:139
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_3DES_EDE_CBC_SHA = 139
---@return System.Int32 value:140
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_128_CBC_SHA = 140
---@return System.Int32 value:141
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_256_CBC_SHA = 141
---@return System.Int32 value:142
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_RC4_128_SHA = 142
---@return System.Int32 value:143
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA = 143
---@return System.Int32 value:144
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_128_CBC_SHA = 144
---@return System.Int32 value:145
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_256_CBC_SHA = 145
---@return System.Int32 value:146
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_RC4_128_SHA = 146
---@return System.Int32 value:147
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA = 147
---@return System.Int32 value:148
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_128_CBC_SHA = 148
---@return System.Int32 value:149
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_256_CBC_SHA = 149
---@return System.Int32 value:150
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_SEED_CBC_SHA = 150
---@return System.Int32 value:151
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_SEED_CBC_SHA = 151
---@return System.Int32 value:152
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_SEED_CBC_SHA = 152
---@return System.Int32 value:153
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_SEED_CBC_SHA = 153
---@return System.Int32 value:154
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_SEED_CBC_SHA = 154
---@return System.Int32 value:155
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_SEED_CBC_SHA = 155
---@return System.Int32 value:156
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_128_GCM_SHA256 = 156
---@return System.Int32 value:157
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_AES_256_GCM_SHA384 = 157
---@return System.Int32 value:158
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = 158
---@return System.Int32 value:159
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = 159
---@return System.Int32 value:160
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_128_GCM_SHA256 = 160
---@return System.Int32 value:161
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_AES_256_GCM_SHA384 = 161
---@return System.Int32 value:162
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = 162
---@return System.Int32 value:163
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = 163
---@return System.Int32 value:164
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 = 164
---@return System.Int32 value:165
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_AES_256_GCM_SHA384 = 165
---@return System.Int32 value:166
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_128_GCM_SHA256 = 166
---@return System.Int32 value:167
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_AES_256_GCM_SHA384 = 167
---@return System.Int32 value:168
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_128_GCM_SHA256 = 168
---@return System.Int32 value:169
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_256_GCM_SHA384 = 169
---@return System.Int32 value:170
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 = 170
---@return System.Int32 value:171
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 = 171
---@return System.Int32 value:172
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256 = 172
---@return System.Int32 value:173
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 = 173
---@return System.Int32 value:174
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_128_CBC_SHA256 = 174
---@return System.Int32 value:175
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_AES_256_CBC_SHA384 = 175
---@return System.Int32 value:176
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_NULL_SHA256 = 176
---@return System.Int32 value:177
Mono.Security.Interface.CipherSuiteCode.TLS_PSK_WITH_NULL_SHA384 = 177
---@return System.Int32 value:178
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256 = 178
---@return System.Int32 value:179
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384 = 179
---@return System.Int32 value:180
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_NULL_SHA256 = 180
---@return System.Int32 value:181
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_PSK_WITH_NULL_SHA384 = 181
---@return System.Int32 value:182
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256 = 182
---@return System.Int32 value:183
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384 = 183
---@return System.Int32 value:184
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_NULL_SHA256 = 184
---@return System.Int32 value:185
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_PSK_WITH_NULL_SHA384 = 185
---@return System.Int32 value:186
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 = 186
---@return System.Int32 value:187
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 = 187
---@return System.Int32 value:188
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256 = 188
---@return System.Int32 value:189
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 = 189
---@return System.Int32 value:190
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 = 190
---@return System.Int32 value:191
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256 = 191
---@return System.Int32 value:192
Mono.Security.Interface.CipherSuiteCode.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256 = 192
---@return System.Int32 value:193
Mono.Security.Interface.CipherSuiteCode.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256 = 193
---@return System.Int32 value:194
Mono.Security.Interface.CipherSuiteCode.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256 = 194
---@return System.Int32 value:195
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256 = 195
---@return System.Int32 value:196
Mono.Security.Interface.CipherSuiteCode.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 = 196
---@return System.Int32 value:197
Mono.Security.Interface.CipherSuiteCode.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256 = 197
---@return System.Int32 value:255
Mono.Security.Interface.CipherSuiteCode.TLS_EMPTY_RENEGOTIATION_INFO_SCSV = 255

---@class Mono.Security.Interface.ExchangeAlgorithmType : System.Enum
Mono.Security.Interface.ExchangeAlgorithmType = {}
---@type Mono.Security.Interface.ExchangeAlgorithmType
CS.Mono.Security.Interface.ExchangeAlgorithmType = Mono.Security.Interface.ExchangeAlgorithmType

---@return System.Int32 value:0
Mono.Security.Interface.ExchangeAlgorithmType.None = 0
---@return System.Int32 value:1
Mono.Security.Interface.ExchangeAlgorithmType.Dhe = 1
---@return System.Int32 value:2
Mono.Security.Interface.ExchangeAlgorithmType.Rsa = 2
---@return System.Int32 value:3
Mono.Security.Interface.ExchangeAlgorithmType.EcDhe = 3

---@class Mono.Security.Interface.HashAlgorithmType : System.Enum
Mono.Security.Interface.HashAlgorithmType = {}
---@type Mono.Security.Interface.HashAlgorithmType
CS.Mono.Security.Interface.HashAlgorithmType = Mono.Security.Interface.HashAlgorithmType

---@return System.Int32 value:0
Mono.Security.Interface.HashAlgorithmType.None = 0
---@return System.Int32 value:1
Mono.Security.Interface.HashAlgorithmType.Md5 = 1
---@return System.Int32 value:2
Mono.Security.Interface.HashAlgorithmType.Sha1 = 2
---@return System.Int32 value:3
Mono.Security.Interface.HashAlgorithmType.Sha224 = 3
---@return System.Int32 value:4
Mono.Security.Interface.HashAlgorithmType.Sha256 = 4
---@return System.Int32 value:5
Mono.Security.Interface.HashAlgorithmType.Sha384 = 5
---@return System.Int32 value:6
Mono.Security.Interface.HashAlgorithmType.Sha512 = 6

---@class Mono.Security.Interface.MonoTlsConnectionInfo : System.Object
---@field public CipherSuiteCode Mono.Security.Interface.CipherSuiteCode @ setter getter
---@field public ProtocolVersion Mono.Security.Interface.TlsProtocols @ setter getter
---@field public CipherAlgorithmType Mono.Security.Interface.CipherAlgorithmType @ setter getter
---@field public HashAlgorithmType Mono.Security.Interface.HashAlgorithmType @ setter getter
---@field public ExchangeAlgorithmType Mono.Security.Interface.ExchangeAlgorithmType @ setter getter
---@field public PeerDomainName System.String @ setter getter
Mono.Security.Interface.MonoTlsConnectionInfo = {}
---@type Mono.Security.Interface.MonoTlsConnectionInfo
CS.Mono.Security.Interface.MonoTlsConnectionInfo = Mono.Security.Interface.MonoTlsConnectionInfo

---@return System.String
function Mono.Security.Interface.MonoTlsConnectionInfo:ToString()end
---@class Mono.Security.Interface.MonoSslPolicyErrors : System.Enum
Mono.Security.Interface.MonoSslPolicyErrors = {}
---@type Mono.Security.Interface.MonoSslPolicyErrors
CS.Mono.Security.Interface.MonoSslPolicyErrors = Mono.Security.Interface.MonoSslPolicyErrors

---@return System.Int32 value:0
Mono.Security.Interface.MonoSslPolicyErrors.None = 0
---@return System.Int32 value:1
Mono.Security.Interface.MonoSslPolicyErrors.RemoteCertificateNotAvailable = 1
---@return System.Int32 value:2
Mono.Security.Interface.MonoSslPolicyErrors.RemoteCertificateNameMismatch = 2

---@class Mono.Security.Interface.MonoEncryptionPolicy : System.Enum
Mono.Security.Interface.MonoEncryptionPolicy = {}
---@type Mono.Security.Interface.MonoEncryptionPolicy
CS.Mono.Security.Interface.MonoEncryptionPolicy = Mono.Security.Interface.MonoEncryptionPolicy

---@return System.Int32 value:0
Mono.Security.Interface.MonoEncryptionPolicy.RequireEncryption = 0
---@return System.Int32 value:1
Mono.Security.Interface.MonoEncryptionPolicy.AllowNoEncryption = 1
---@return System.Int32 value:2
Mono.Security.Interface.MonoEncryptionPolicy.NoEncryption = 2

---@class Mono.Security.Interface.MonoTlsProvider : System.Object
---@field public ID System.Guid @  getter
---@field public Name System.String @  getter
---@field public SupportsSslStream System.Boolean @  getter
---@field public SupportsConnectionInfo System.Boolean @  getter
---@field public SupportsMonoExtensions System.Boolean @  getter
---@field public SupportedProtocols System.Security.Authentication.SslProtocols @  getter
Mono.Security.Interface.MonoTlsProvider = {}
---@type Mono.Security.Interface.MonoTlsProvider
CS.Mono.Security.Interface.MonoTlsProvider = Mono.Security.Interface.MonoTlsProvider

---@overload fun(innerStream:System.IO.Stream, leaveInnerStreamOpen:System.Boolean):Mono.Security.Interface.IMonoSslStream
---@param innerStream System.IO.Stream
---@param leaveInnerStreamOpen System.Boolean
---@param settings Mono.Security.Interface.MonoTlsSettings
---@return Mono.Security.Interface.IMonoSslStream
function Mono.Security.Interface.MonoTlsProvider:CreateSslStream(innerStream, leaveInnerStreamOpen, settings)end
---@class Mono.Security.Interface.MonoTlsProviderFactory : System.Object
---@field public IsInitialized System.Boolean @static  getter
Mono.Security.Interface.MonoTlsProviderFactory = {}
---@type Mono.Security.Interface.MonoTlsProviderFactory
CS.Mono.Security.Interface.MonoTlsProviderFactory = Mono.Security.Interface.MonoTlsProviderFactory

---@overload fun(provider:System.String):Mono.Security.Interface.MonoTlsProvider
---@return Mono.Security.Interface.MonoTlsProvider
function Mono.Security.Interface.MonoTlsProviderFactory.GetProvider()end
---@overload fun(provider:System.String):System.Void
---@return System.Void
function Mono.Security.Interface.MonoTlsProviderFactory.Initialize()end
---@param provider System.String
---@return System.Boolean
function Mono.Security.Interface.MonoTlsProviderFactory.IsProviderSupported(provider)end
---@overload fun(requestUri:System.Uri, provider:Mono.Security.Interface.MonoTlsProvider):System.Net.HttpWebRequest
---@param requestUri System.Uri
---@param provider Mono.Security.Interface.MonoTlsProvider
---@param settings Mono.Security.Interface.MonoTlsSettings
---@return System.Net.HttpWebRequest
function Mono.Security.Interface.MonoTlsProviderFactory.CreateHttpsRequest(requestUri, provider, settings)end
---@overload fun(certificate:System.Security.Cryptography.X509Certificates.X509Certificate, provider:Mono.Security.Interface.MonoTlsProvider):System.Net.HttpListener
---@overload fun(certificate:System.Security.Cryptography.X509Certificates.X509Certificate):System.Net.HttpListener
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param provider Mono.Security.Interface.MonoTlsProvider
---@param settings Mono.Security.Interface.MonoTlsSettings
---@return System.Net.HttpListener
function Mono.Security.Interface.MonoTlsProviderFactory.CreateHttpListener(certificate, provider, settings)end
---@overload fun(context:System.Net.HttpListenerContext):Mono.Security.Interface.IMonoSslStream
---@param stream System.Net.Security.SslStream
---@return Mono.Security.Interface.IMonoSslStream
function Mono.Security.Interface.MonoTlsProviderFactory.GetMonoSslStream(stream)end
---@class Mono.Security.Interface.MonoTlsSettings : System.Object
---@field public RemoteCertificateValidationCallback Mono.Security.Interface.MonoRemoteCertificateValidationCallback @ setter getter
---@field public ClientCertificateSelectionCallback Mono.Security.Interface.MonoLocalCertificateSelectionCallback @ setter getter
---@field public CheckCertificateName System.Boolean @ setter getter
---@field public CheckCertificateRevocationStatus System.Boolean @ setter getter
---@field public UseServicePointManagerCallback System.Nullable @ setter getter
---@field public SkipSystemValidators System.Boolean @ setter getter
---@field public CallbackNeedsCertificateChain System.Boolean @ setter getter
---@field public CertificateValidationTime System.Nullable @ setter getter
---@field public TrustAnchors System.Security.Cryptography.X509Certificates.X509CertificateCollection @ setter getter
---@field public UserSettings System.Object @ setter getter
---@field public EnabledProtocols System.Nullable @ setter getter
---@field public EnabledCiphers Mono.Security.Interface.CipherSuiteCode[] @ setter getter
---@field public DefaultSettings Mono.Security.Interface.MonoTlsSettings @static setter getter
---@field public CertificateValidator Mono.Security.Interface.ICertificateValidator @  getter
Mono.Security.Interface.MonoTlsSettings = {}
---@type Mono.Security.Interface.MonoTlsSettings
CS.Mono.Security.Interface.MonoTlsSettings = Mono.Security.Interface.MonoTlsSettings

---@return Mono.Security.Interface.MonoTlsSettings
function Mono.Security.Interface.MonoTlsSettings.CopyDefaultSettings()end
---@param validator Mono.Security.Interface.ICertificateValidator
---@return Mono.Security.Interface.MonoTlsSettings
function Mono.Security.Interface.MonoTlsSettings:CloneWithValidator(validator)end
---@return Mono.Security.Interface.MonoTlsSettings
function Mono.Security.Interface.MonoTlsSettings:Clone()end
---@class Mono.Security.Interface.TlsException : System.Exception
---@field public Alert Mono.Security.Interface.Alert @  getter
Mono.Security.Interface.TlsException = {}
---@type Mono.Security.Interface.TlsException
CS.Mono.Security.Interface.TlsException = Mono.Security.Interface.TlsException

---@class Mono.Security.Interface.TlsProtocolCode : System.Enum
Mono.Security.Interface.TlsProtocolCode = {}
---@type Mono.Security.Interface.TlsProtocolCode
CS.Mono.Security.Interface.TlsProtocolCode = Mono.Security.Interface.TlsProtocolCode


---@class Mono.Security.Interface.TlsProtocols : System.Enum
Mono.Security.Interface.TlsProtocols = {}
---@type Mono.Security.Interface.TlsProtocols
CS.Mono.Security.Interface.TlsProtocols = Mono.Security.Interface.TlsProtocols

---@return System.Int32 value:0
Mono.Security.Interface.TlsProtocols.Zero = 0

