---@class UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint : System.Enum
UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint = {}
---@type UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
CS.UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint = UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint.BeginFrame = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint.EndFrame = 1

---@class UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint : System.Enum
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint = {}
---@type UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
CS.UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint = UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint.EndOfFrame = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint.AfterScriptUpdate = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint.AfterScriptLateUpdate = 2
---@return System.Int32 value:3
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint.WaitForPresent = 3

---@class UnityEngine.Experimental.Rendering.GraphicsDeviceSettings : System.Object
---@field public waitForPresentSyncPoint UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint @static setter getter
---@field public graphicsJobsSyncPoint UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint @static setter getter
UnityEngine.Experimental.Rendering.GraphicsDeviceSettings = {}
---@type UnityEngine.Experimental.Rendering.GraphicsDeviceSettings
CS.UnityEngine.Experimental.Rendering.GraphicsDeviceSettings = UnityEngine.Experimental.Rendering.GraphicsDeviceSettings

---@class UnityEngine.Experimental.Rendering.TextureCreationFlags : System.Enum
UnityEngine.Experimental.Rendering.TextureCreationFlags = {}
---@type UnityEngine.Experimental.Rendering.TextureCreationFlags
CS.UnityEngine.Experimental.Rendering.TextureCreationFlags = UnityEngine.Experimental.Rendering.TextureCreationFlags

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.TextureCreationFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.TextureCreationFlags.MipChain = 1

---@class UnityEngine.Experimental.Rendering.FormatUsage : System.Enum
UnityEngine.Experimental.Rendering.FormatUsage = {}
---@type UnityEngine.Experimental.Rendering.FormatUsage
CS.UnityEngine.Experimental.Rendering.FormatUsage = UnityEngine.Experimental.Rendering.FormatUsage

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.FormatUsage.Sample = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.FormatUsage.Linear = 1
---@return System.Int32 value:3
UnityEngine.Experimental.Rendering.FormatUsage.Render = 3
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.FormatUsage.Blend = 4

---@class UnityEngine.Experimental.Rendering.GraphicsFormat : System.Enum
UnityEngine.Experimental.Rendering.GraphicsFormat = {}
---@type UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.Experimental.Rendering.GraphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.GraphicsFormat.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.GraphicsFormat.R8_SRGB = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8_SRGB = 2
---@return System.Int32 value:3
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_SRGB = 3
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_SRGB = 4
---@return System.Int32 value:5
UnityEngine.Experimental.Rendering.GraphicsFormat.R8_UNorm = 5
---@return System.Int32 value:6
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8_UNorm = 6
---@return System.Int32 value:7
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_UNorm = 7
---@return System.Int32 value:8
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_UNorm = 8
---@return System.Int32 value:9
UnityEngine.Experimental.Rendering.GraphicsFormat.R8_SNorm = 9
---@return System.Int32 value:10
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8_SNorm = 10
---@return System.Int32 value:11
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_SNorm = 11
---@return System.Int32 value:12
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_SNorm = 12
---@return System.Int32 value:13
UnityEngine.Experimental.Rendering.GraphicsFormat.R8_UInt = 13
---@return System.Int32 value:14
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8_UInt = 14
---@return System.Int32 value:15
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_UInt = 15
---@return System.Int32 value:16
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_UInt = 16
---@return System.Int32 value:17
UnityEngine.Experimental.Rendering.GraphicsFormat.R8_SInt = 17
---@return System.Int32 value:18
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8_SInt = 18
---@return System.Int32 value:19
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_SInt = 19
---@return System.Int32 value:20
UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_SInt = 20
---@return System.Int32 value:21
UnityEngine.Experimental.Rendering.GraphicsFormat.R16_UNorm = 21
---@return System.Int32 value:22
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16_UNorm = 22
---@return System.Int32 value:23
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16_UNorm = 23
---@return System.Int32 value:24
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_UNorm = 24
---@return System.Int32 value:25
UnityEngine.Experimental.Rendering.GraphicsFormat.R16_SNorm = 25
---@return System.Int32 value:26
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16_SNorm = 26
---@return System.Int32 value:27
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16_SNorm = 27
---@return System.Int32 value:28
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_SNorm = 28
---@return System.Int32 value:29
UnityEngine.Experimental.Rendering.GraphicsFormat.R16_UInt = 29
---@return System.Int32 value:30
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16_UInt = 30
---@return System.Int32 value:31
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16_UInt = 31
---@return System.Int32 value:32
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_UInt = 32
---@return System.Int32 value:33
UnityEngine.Experimental.Rendering.GraphicsFormat.R16_SInt = 33
---@return System.Int32 value:34
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16_SInt = 34
---@return System.Int32 value:35
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16_SInt = 35
---@return System.Int32 value:36
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_SInt = 36
---@return System.Int32 value:37
UnityEngine.Experimental.Rendering.GraphicsFormat.R32_UInt = 37
---@return System.Int32 value:38
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32_UInt = 38
---@return System.Int32 value:39
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32_UInt = 39
---@return System.Int32 value:40
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32A32_UInt = 40
---@return System.Int32 value:41
UnityEngine.Experimental.Rendering.GraphicsFormat.R32_SInt = 41
---@return System.Int32 value:42
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32_SInt = 42
---@return System.Int32 value:43
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32_SInt = 43
---@return System.Int32 value:44
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32A32_SInt = 44
---@return System.Int32 value:45
UnityEngine.Experimental.Rendering.GraphicsFormat.R16_SFloat = 45
---@return System.Int32 value:46
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16_SFloat = 46
---@return System.Int32 value:47
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16_SFloat = 47
---@return System.Int32 value:48
UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_SFloat = 48
---@return System.Int32 value:49
UnityEngine.Experimental.Rendering.GraphicsFormat.R32_SFloat = 49
---@return System.Int32 value:50
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32_SFloat = 50
---@return System.Int32 value:51
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32_SFloat = 51
---@return System.Int32 value:52
UnityEngine.Experimental.Rendering.GraphicsFormat.R32G32B32A32_SFloat = 52
---@return System.Int32 value:56
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8_SRGB = 56
---@return System.Int32 value:57
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8A8_SRGB = 57
---@return System.Int32 value:58
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8_UNorm = 58
---@return System.Int32 value:59
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8A8_UNorm = 59
---@return System.Int32 value:60
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8_SNorm = 60
---@return System.Int32 value:61
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8A8_SNorm = 61
---@return System.Int32 value:62
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8_UInt = 62
---@return System.Int32 value:63
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8A8_UInt = 63
---@return System.Int32 value:64
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8_SInt = 64
---@return System.Int32 value:65
UnityEngine.Experimental.Rendering.GraphicsFormat.B8G8R8A8_SInt = 65
---@return System.Int32 value:66
UnityEngine.Experimental.Rendering.GraphicsFormat.R4G4B4A4_UNormPack16 = 66
---@return System.Int32 value:67
UnityEngine.Experimental.Rendering.GraphicsFormat.B4G4R4A4_UNormPack16 = 67
---@return System.Int32 value:68
UnityEngine.Experimental.Rendering.GraphicsFormat.R5G6B5_UNormPack16 = 68
---@return System.Int32 value:69
UnityEngine.Experimental.Rendering.GraphicsFormat.B5G6R5_UNormPack16 = 69
---@return System.Int32 value:70
UnityEngine.Experimental.Rendering.GraphicsFormat.R5G5B5A1_UNormPack16 = 70
---@return System.Int32 value:71
UnityEngine.Experimental.Rendering.GraphicsFormat.B5G5R5A1_UNormPack16 = 71
---@return System.Int32 value:72
UnityEngine.Experimental.Rendering.GraphicsFormat.A1R5G5B5_UNormPack16 = 72
---@return System.Int32 value:73
UnityEngine.Experimental.Rendering.GraphicsFormat.E5B9G9R9_UFloatPack32 = 73
---@return System.Int32 value:74
UnityEngine.Experimental.Rendering.GraphicsFormat.B10G11R11_UFloatPack32 = 74
---@return System.Int32 value:75
UnityEngine.Experimental.Rendering.GraphicsFormat.A2B10G10R10_UNormPack32 = 75
---@return System.Int32 value:76
UnityEngine.Experimental.Rendering.GraphicsFormat.A2B10G10R10_UIntPack32 = 76
---@return System.Int32 value:77
UnityEngine.Experimental.Rendering.GraphicsFormat.A2B10G10R10_SIntPack32 = 77
---@return System.Int32 value:78
UnityEngine.Experimental.Rendering.GraphicsFormat.A2R10G10B10_UNormPack32 = 78
---@return System.Int32 value:79
UnityEngine.Experimental.Rendering.GraphicsFormat.A2R10G10B10_UIntPack32 = 79
---@return System.Int32 value:80
UnityEngine.Experimental.Rendering.GraphicsFormat.A2R10G10B10_SIntPack32 = 80
---@return System.Int32 value:81
UnityEngine.Experimental.Rendering.GraphicsFormat.A2R10G10B10_XRSRGBPack32 = 81
---@return System.Int32 value:82
UnityEngine.Experimental.Rendering.GraphicsFormat.A2R10G10B10_XRUNormPack32 = 82
---@return System.Int32 value:83
UnityEngine.Experimental.Rendering.GraphicsFormat.R10G10B10_XRSRGBPack32 = 83
---@return System.Int32 value:84
UnityEngine.Experimental.Rendering.GraphicsFormat.R10G10B10_XRUNormPack32 = 84
---@return System.Int32 value:85
UnityEngine.Experimental.Rendering.GraphicsFormat.A10R10G10B10_XRSRGBPack32 = 85
---@return System.Int32 value:86
UnityEngine.Experimental.Rendering.GraphicsFormat.A10R10G10B10_XRUNormPack32 = 86
---@return System.Int32 value:90
UnityEngine.Experimental.Rendering.GraphicsFormat.D16_UNorm = 90
---@return System.Int32 value:91
UnityEngine.Experimental.Rendering.GraphicsFormat.D24_UNorm = 91
---@return System.Int32 value:92
UnityEngine.Experimental.Rendering.GraphicsFormat.D24_UNorm_S8_UInt = 92
---@return System.Int32 value:93
UnityEngine.Experimental.Rendering.GraphicsFormat.D32_SFloat = 93
---@return System.Int32 value:94
UnityEngine.Experimental.Rendering.GraphicsFormat.D32_SFloat_S8_Uint = 94
---@return System.Int32 value:95
UnityEngine.Experimental.Rendering.GraphicsFormat.S8_Uint = 95
---@return System.Int32 value:96
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT1_SRGB = 96
---@return System.Int32 value:97
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT1_UNorm = 97
---@return System.Int32 value:98
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT3_SRGB = 98
---@return System.Int32 value:99
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT3_UNorm = 99
---@return System.Int32 value:100
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT5_SRGB = 100
---@return System.Int32 value:101
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_DXT5_UNorm = 101
---@return System.Int32 value:102
UnityEngine.Experimental.Rendering.GraphicsFormat.R_BC4_UNorm = 102
---@return System.Int32 value:103
UnityEngine.Experimental.Rendering.GraphicsFormat.R_BC4_SNorm = 103
---@return System.Int32 value:104
UnityEngine.Experimental.Rendering.GraphicsFormat.RG_BC5_UNorm = 104
---@return System.Int32 value:105
UnityEngine.Experimental.Rendering.GraphicsFormat.RG_BC5_SNorm = 105
---@return System.Int32 value:106
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_BC6H_UFloat = 106
---@return System.Int32 value:107
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_BC6H_SFloat = 107
---@return System.Int32 value:108
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_BC7_SRGB = 108
---@return System.Int32 value:109
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_BC7_UNorm = 109
---@return System.Int32 value:110
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_PVRTC_2Bpp_SRGB = 110
---@return System.Int32 value:111
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_PVRTC_2Bpp_UNorm = 111
---@return System.Int32 value:112
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_PVRTC_4Bpp_SRGB = 112
---@return System.Int32 value:113
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_PVRTC_4Bpp_UNorm = 113
---@return System.Int32 value:114
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_PVRTC_2Bpp_SRGB = 114
---@return System.Int32 value:115
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_PVRTC_2Bpp_UNorm = 115
---@return System.Int32 value:116
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_PVRTC_4Bpp_SRGB = 116
---@return System.Int32 value:117
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_PVRTC_4Bpp_UNorm = 117
---@return System.Int32 value:118
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_ETC_UNorm = 118
---@return System.Int32 value:119
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_ETC2_SRGB = 119
---@return System.Int32 value:120
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_ETC2_UNorm = 120
---@return System.Int32 value:121
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_A1_ETC2_SRGB = 121
---@return System.Int32 value:122
UnityEngine.Experimental.Rendering.GraphicsFormat.RGB_A1_ETC2_UNorm = 122
---@return System.Int32 value:123
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ETC2_SRGB = 123
---@return System.Int32 value:124
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ETC2_UNorm = 124
---@return System.Int32 value:125
UnityEngine.Experimental.Rendering.GraphicsFormat.R_EAC_UNorm = 125
---@return System.Int32 value:126
UnityEngine.Experimental.Rendering.GraphicsFormat.R_EAC_SNorm = 126
---@return System.Int32 value:127
UnityEngine.Experimental.Rendering.GraphicsFormat.RG_EAC_UNorm = 127
---@return System.Int32 value:128
UnityEngine.Experimental.Rendering.GraphicsFormat.RG_EAC_SNorm = 128
---@return System.Int32 value:129
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC4X4_SRGB = 129
---@return System.Int32 value:130
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC4X4_UNorm = 130
---@return System.Int32 value:131
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC5X5_SRGB = 131
---@return System.Int32 value:132
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC5X5_UNorm = 132
---@return System.Int32 value:133
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC6X6_SRGB = 133
---@return System.Int32 value:134
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC6X6_UNorm = 134
---@return System.Int32 value:135
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC8X8_SRGB = 135
---@return System.Int32 value:136
UnityEngine.Experimental.Rendering.GraphicsFormat.RGBA_ASTC8X8_UNorm = 136

---@class UnityEngine.Experimental.Rendering.GraphicsFormatUtility : System.Object
UnityEngine.Experimental.Rendering.GraphicsFormatUtility = {}
---@type UnityEngine.Experimental.Rendering.GraphicsFormatUtility
CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility = UnityEngine.Experimental.Rendering.GraphicsFormatUtility

---@overload fun(format:UnityEngine.RenderTextureFormat, isSRGB:System.Boolean):UnityEngine.Experimental.Rendering.GraphicsFormat
---@param format UnityEngine.TextureFormat
---@param isSRGB System.Boolean
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetGraphicsFormat(format, isSRGB)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.TextureFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetTextureFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSRGBFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.RenderTextureFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetRenderTextureFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetColorComponentCount(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetAlphaComponentCount(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetComponentCount(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCompressedFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPackedFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.Is16BitPackedFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ConvertToAlphaFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsAlphaOnlyFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.HasAlphaChannel(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDepthFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsStencilFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIEEE754Format(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsFloatFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsHalfFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUnsignedFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSignedFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsNormFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUNormFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSNormFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIntegerFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUIntFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSIntFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDXTCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsRGTCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBPTCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPVRTCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsETCFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsASTCFormat(format)end
---@param format UnityEngine.TextureFormat
---@return System.Boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCrunchFormat(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockSize(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockWidth(format)end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockHeight(format)end
---@overload fun(width:System.Int32, height:System.Int32, depth:System.Int32, format:UnityEngine.Experimental.Rendering.GraphicsFormat):System.UInt32
---@param width System.Int32
---@param height System.Int32
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return System.UInt32
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ComputeMipmapSize(width, height, format)end
---@class UnityEngine.Experimental.Rendering.ScriptableRenderContext : System.ValueType
UnityEngine.Experimental.Rendering.ScriptableRenderContext = {}
---@type UnityEngine.Experimental.Rendering.ScriptableRenderContext
CS.UnityEngine.Experimental.Rendering.ScriptableRenderContext = UnityEngine.Experimental.Rendering.ScriptableRenderContext

---@param _self System.IntPtr
---@param w System.Int32
---@param h System.Int32
---@param samples System.Int32
---@param colors UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param depth UnityEngine.Experimental.Rendering.RenderPassAttachment
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext.BeginRenderPassInternal(_self, w, h, samples, colors, depth)end
---@param _self System.IntPtr
---@param colors UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param inputs UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param readOnlyDepth System.Boolean
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext.BeginSubPassInternal(_self, colors, inputs, readOnlyDepth)end
---@param _self System.IntPtr
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext.EndRenderPassInternal(_self)end
---@param cullingCamera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext.EmitWorldGeometryForSceneView(cullingCamera)end
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:Submit()end
---@overload fun(renderers:UnityEngine.Experimental.Rendering.FilterResults, drawSettings:UnityEngine.Experimental.Rendering.DrawRendererSettings, filterSettings:UnityEngine.Experimental.Rendering.FilterRenderersSettings, stateBlock:UnityEngine.Experimental.Rendering.RenderStateBlock):System.Void
---@overload fun(renderers:UnityEngine.Experimental.Rendering.FilterResults, drawSettings:UnityEngine.Experimental.Rendering.DrawRendererSettings, filterSettings:UnityEngine.Experimental.Rendering.FilterRenderersSettings, stateMap:System.Collections.Generic.List):System.Void
---@param renderers UnityEngine.Experimental.Rendering.FilterResults
---@param drawSettings UnityEngine.Experimental.Rendering.DrawRendererSettings
---@param filterSettings UnityEngine.Experimental.Rendering.FilterRenderersSettings
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:DrawRenderers(renderers, drawSettings, filterSettings)end
---@param settings UnityEngine.Experimental.Rendering.DrawShadowsSettings
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:DrawShadows(settings)end
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:ExecuteCommandBuffer(commandBuffer)end
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:ExecuteCommandBufferAsync(commandBuffer, queueType)end
---@overload fun(camera:UnityEngine.Camera, stereoSetup:System.Boolean):System.Void
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:SetupCameraProperties(camera)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:StereoEndRender(camera)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:StartMultiEye(camera)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:StopMultiEye(camera)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableRenderContext:DrawSkybox(camera)end
---@class UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem : System.Object
UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem = {}
---@type UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem
CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem = UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem

---@return System.Boolean
function UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem:TickRealtimeProbes()end
---@class UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings : System.Object
---@field public system UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem @static setter getter
UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings = {}
---@type UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings
CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings = UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings

---@class UnityEngine.Experimental.Rendering.BlendState : System.ValueType
---@field public Default UnityEngine.Experimental.Rendering.BlendState @static  getter
---@field public separateMRTBlendStates System.Boolean @ setter getter
---@field public alphaToMask System.Boolean @ setter getter
---@field public blendState0 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState1 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState2 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState3 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState4 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState5 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState6 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
---@field public blendState7 UnityEngine.Experimental.Rendering.RenderTargetBlendState @ setter getter
UnityEngine.Experimental.Rendering.BlendState = {}
---@type UnityEngine.Experimental.Rendering.BlendState
CS.UnityEngine.Experimental.Rendering.BlendState = UnityEngine.Experimental.Rendering.BlendState

---@class UnityEngine.Experimental.Rendering.CoreCameraValues : System.ValueType
UnityEngine.Experimental.Rendering.CoreCameraValues = {}
---@type UnityEngine.Experimental.Rendering.CoreCameraValues
CS.UnityEngine.Experimental.Rendering.CoreCameraValues = UnityEngine.Experimental.Rendering.CoreCameraValues

---@class UnityEngine.Experimental.Rendering.CameraProperties : System.ValueType
UnityEngine.Experimental.Rendering.CameraProperties = {}
---@type UnityEngine.Experimental.Rendering.CameraProperties
CS.UnityEngine.Experimental.Rendering.CameraProperties = UnityEngine.Experimental.Rendering.CameraProperties

---@param index System.Int32
---@return UnityEngine.Plane
function UnityEngine.Experimental.Rendering.CameraProperties:GetShadowCullingPlane(index)end
---@param index System.Int32
---@param plane UnityEngine.Plane
---@return System.Void
function UnityEngine.Experimental.Rendering.CameraProperties:SetShadowCullingPlane(index, plane)end
---@param index System.Int32
---@return UnityEngine.Plane
function UnityEngine.Experimental.Rendering.CameraProperties:GetCameraCullingPlane(index)end
---@param index System.Int32
---@param plane UnityEngine.Plane
---@return System.Void
function UnityEngine.Experimental.Rendering.CameraProperties:SetCameraCullingPlane(index, plane)end
---@class UnityEngine.Experimental.Rendering.CullFlag : System.Enum
UnityEngine.Experimental.Rendering.CullFlag = {}
---@type UnityEngine.Experimental.Rendering.CullFlag
CS.UnityEngine.Experimental.Rendering.CullFlag = UnityEngine.Experimental.Rendering.CullFlag

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.CullFlag.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.CullFlag.ForceEvenIfCameraIsNotActive = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.CullFlag.OcclusionCull = 2
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.CullFlag.NeedsLighting = 4

---@class UnityEngine.Experimental.Rendering.ScriptableCullingParameters : System.ValueType
---@field public cullingPlaneCount System.Int32 @ setter getter
---@field public isOrthographic System.Boolean @ setter getter
---@field public lodParameters UnityEngine.Experimental.Rendering.LODParameters @ setter getter
---@field public cullingMask System.Int32 @ setter getter
---@field public sceneMask System.Int64 @ setter getter
---@field public layerCull System.Int32 @ setter getter
---@field public cullingMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public shadowDistance System.Single @ setter getter
---@field public cullingFlags UnityEngine.Experimental.Rendering.CullFlag @ setter getter
---@field public reflectionProbeSortOptions UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions @ setter getter
---@field public cameraProperties UnityEngine.Experimental.Rendering.CameraProperties @ setter getter
---@field public accurateOcclusionThreshold System.Single @ setter getter
---@field public cullStereoView UnityEngine.Matrix4x4
---@field public cullStereoProj UnityEngine.Matrix4x4
---@field public cullStereoSeparation System.Single
UnityEngine.Experimental.Rendering.ScriptableCullingParameters = {}
---@type UnityEngine.Experimental.Rendering.ScriptableCullingParameters
CS.UnityEngine.Experimental.Rendering.ScriptableCullingParameters = UnityEngine.Experimental.Rendering.ScriptableCullingParameters

---@param layerIndex System.Int32
---@return System.Single
function UnityEngine.Experimental.Rendering.ScriptableCullingParameters:GetLayerCullDistance(layerIndex)end
---@param layerIndex System.Int32
---@param distance System.Single
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableCullingParameters:SetLayerCullDistance(layerIndex, distance)end
---@param index System.Int32
---@return UnityEngine.Plane
function UnityEngine.Experimental.Rendering.ScriptableCullingParameters:GetCullingPlane(index)end
---@param index System.Int32
---@param plane UnityEngine.Plane
---@return System.Void
function UnityEngine.Experimental.Rendering.ScriptableCullingParameters:SetCullingPlane(index, plane)end
---@class UnityEngine.Experimental.Rendering.DepthState : System.ValueType
---@field public Default UnityEngine.Experimental.Rendering.DepthState @static  getter
---@field public writeEnabled System.Boolean @ setter getter
---@field public compareFunction UnityEngine.Rendering.CompareFunction @ setter getter
UnityEngine.Experimental.Rendering.DepthState = {}
---@type UnityEngine.Experimental.Rendering.DepthState
CS.UnityEngine.Experimental.Rendering.DepthState = UnityEngine.Experimental.Rendering.DepthState

---@class UnityEngine.Experimental.Rendering.DrawRendererFlags : System.Enum
UnityEngine.Experimental.Rendering.DrawRendererFlags = {}
---@type UnityEngine.Experimental.Rendering.DrawRendererFlags
CS.UnityEngine.Experimental.Rendering.DrawRendererFlags = UnityEngine.Experimental.Rendering.DrawRendererFlags

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.DrawRendererFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.DrawRendererFlags.EnableDynamicBatching = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.DrawRendererFlags.EnableInstancing = 2

---@class UnityEngine.Experimental.Rendering.DrawRendererSortMode : System.Enum
UnityEngine.Experimental.Rendering.DrawRendererSortMode = {}
---@type UnityEngine.Experimental.Rendering.DrawRendererSortMode
CS.UnityEngine.Experimental.Rendering.DrawRendererSortMode = UnityEngine.Experimental.Rendering.DrawRendererSortMode

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.DrawRendererSortMode.Perspective = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.DrawRendererSortMode.Orthographic = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.DrawRendererSortMode.CustomAxis = 2

---@class UnityEngine.Experimental.Rendering.DrawRendererSortSettings : System.ValueType
---@field public sortOrthographic System.Boolean @ setter getter
---@field public worldToCameraMatrix UnityEngine.Matrix4x4
---@field public cameraPosition UnityEngine.Vector3
---@field public cameraCustomSortAxis UnityEngine.Vector3
---@field public flags UnityEngine.Experimental.Rendering.SortFlags
---@field public sortMode UnityEngine.Experimental.Rendering.DrawRendererSortMode
UnityEngine.Experimental.Rendering.DrawRendererSortSettings = {}
---@type UnityEngine.Experimental.Rendering.DrawRendererSortSettings
CS.UnityEngine.Experimental.Rendering.DrawRendererSortSettings = UnityEngine.Experimental.Rendering.DrawRendererSortSettings

---@class UnityEngine.Experimental.Rendering.DrawShadowsSettings : System.ValueType
---@field public cullResults UnityEngine.Experimental.Rendering.CullResults @ setter 
---@field public lightIndex System.Int32
---@field public splitData UnityEngine.Experimental.Rendering.ShadowSplitData
UnityEngine.Experimental.Rendering.DrawShadowsSettings = {}
---@type UnityEngine.Experimental.Rendering.DrawShadowsSettings
CS.UnityEngine.Experimental.Rendering.DrawShadowsSettings = UnityEngine.Experimental.Rendering.DrawShadowsSettings

---@class UnityEngine.Experimental.Rendering.FilterRenderersSettings : System.ValueType
---@field public renderQueueRange UnityEngine.Experimental.Rendering.RenderQueueRange @ setter getter
---@field public layerMask System.Int32 @ setter getter
---@field public renderingLayerMask System.UInt32 @ setter getter
---@field public excludeMotionVectorObjects System.Boolean @ setter getter
UnityEngine.Experimental.Rendering.FilterRenderersSettings = {}
---@type UnityEngine.Experimental.Rendering.FilterRenderersSettings
CS.UnityEngine.Experimental.Rendering.FilterRenderersSettings = UnityEngine.Experimental.Rendering.FilterRenderersSettings

---@class UnityEngine.Experimental.Rendering.FilterResults : System.ValueType
UnityEngine.Experimental.Rendering.FilterResults = {}
---@type UnityEngine.Experimental.Rendering.FilterResults
CS.UnityEngine.Experimental.Rendering.FilterResults = UnityEngine.Experimental.Rendering.FilterResults

---@class UnityEngine.Experimental.Rendering.LODParameters : System.ValueType
---@field public isOrthographic System.Boolean @ setter getter
---@field public cameraPosition UnityEngine.Vector3 @ setter getter
---@field public fieldOfView System.Single @ setter getter
---@field public orthoSize System.Single @ setter getter
---@field public cameraPixelHeight System.Int32 @ setter getter
UnityEngine.Experimental.Rendering.LODParameters = {}
---@type UnityEngine.Experimental.Rendering.LODParameters
CS.UnityEngine.Experimental.Rendering.LODParameters = UnityEngine.Experimental.Rendering.LODParameters

---@class UnityEngine.Experimental.Rendering.RasterState : System.ValueType
---@field public cullingMode UnityEngine.Rendering.CullMode @ setter getter
---@field public depthClip System.Boolean @ setter getter
---@field public offsetUnits System.Int32 @ setter getter
---@field public offsetFactor System.Single @ setter getter
---@field public Default UnityEngine.Experimental.Rendering.RasterState
UnityEngine.Experimental.Rendering.RasterState = {}
---@type UnityEngine.Experimental.Rendering.RasterState
CS.UnityEngine.Experimental.Rendering.RasterState = UnityEngine.Experimental.Rendering.RasterState

---@class UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions : System.Enum
UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions = {}
---@type UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions
CS.UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions = UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions.Importance = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions.Size = 2
---@return System.Int32 value:3
UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions.ImportanceThenSize = 3

---@class UnityEngine.Experimental.Rendering.RendererConfiguration : System.Enum
UnityEngine.Experimental.Rendering.RendererConfiguration = {}
---@type UnityEngine.Experimental.Rendering.RendererConfiguration
CS.UnityEngine.Experimental.Rendering.RendererConfiguration = UnityEngine.Experimental.Rendering.RendererConfiguration

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.RendererConfiguration.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.RendererConfiguration.PerObjectLightProbe = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.RendererConfiguration.PerObjectReflectionProbes = 2
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.RendererConfiguration.PerObjectLightProbeProxyVolume = 4
---@return System.Int32 value:8
UnityEngine.Experimental.Rendering.RendererConfiguration.PerObjectLightmaps = 8

---@class UnityEngine.Experimental.Rendering.RenderPipeline : System.Object
---@field public disposed System.Boolean @ setter getter
UnityEngine.Experimental.Rendering.RenderPipeline = {}
---@type UnityEngine.Experimental.Rendering.RenderPipeline
CS.UnityEngine.Experimental.Rendering.RenderPipeline = UnityEngine.Experimental.Rendering.RenderPipeline

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.add_beginFrameRendering(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.remove_beginFrameRendering(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.add_beginCameraRendering(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.remove_beginCameraRendering(value)end
---@param renderContext UnityEngine.Experimental.Rendering.ScriptableRenderContext
---@param cameras UnityEngine.Camera[]
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline:Render(renderContext, cameras)end
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline:Dispose()end
---@param cameras UnityEngine.Camera[]
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.BeginFrameRendering(cameras)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipeline.BeginCameraRendering(camera)end
---@class UnityEngine.Experimental.Rendering.RenderPipelineAsset : UnityEngine.ScriptableObject
UnityEngine.Experimental.Rendering.RenderPipelineAsset = {}
---@type UnityEngine.Experimental.Rendering.RenderPipelineAsset
CS.UnityEngine.Experimental.Rendering.RenderPipelineAsset = UnityEngine.Experimental.Rendering.RenderPipelineAsset

---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:DestroyCreatedInstances()end
---@return UnityEngine.Experimental.Rendering.IRenderPipeline
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:CreatePipeline()end
---@return System.Int32
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetTerrainBrushPassIndex()end
---@return System.String[]
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetRenderingLayerMaskNames()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultMaterial()end
---@return UnityEngine.Shader
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetAutodeskInteractiveShader()end
---@return UnityEngine.Shader
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetAutodeskInteractiveTransparentShader()end
---@return UnityEngine.Shader
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetAutodeskInteractiveMaskedShader()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultParticleMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultLineMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultTerrainMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultUIMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultUIOverdrawMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultUIETC1SupportedMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefault2DMaterial()end
---@return UnityEngine.Shader
function UnityEngine.Experimental.Rendering.RenderPipelineAsset:GetDefaultShader()end
---@class UnityEngine.Experimental.Rendering.RenderPipelineManager : System.Object
---@field public currentPipeline UnityEngine.Experimental.Rendering.IRenderPipeline @static setter getter
UnityEngine.Experimental.Rendering.RenderPipelineManager = {}
---@type UnityEngine.Experimental.Rendering.RenderPipelineManager
CS.UnityEngine.Experimental.Rendering.RenderPipelineManager = UnityEngine.Experimental.Rendering.RenderPipelineManager

---@class UnityEngine.Experimental.Rendering.RenderQueueRange : System.ValueType
---@field public all UnityEngine.Experimental.Rendering.RenderQueueRange @static  getter
---@field public opaque UnityEngine.Experimental.Rendering.RenderQueueRange @static  getter
---@field public transparent UnityEngine.Experimental.Rendering.RenderQueueRange @static  getter
---@field public min System.Int32
---@field public max System.Int32
UnityEngine.Experimental.Rendering.RenderQueueRange = {}
---@type UnityEngine.Experimental.Rendering.RenderQueueRange
CS.UnityEngine.Experimental.Rendering.RenderQueueRange = UnityEngine.Experimental.Rendering.RenderQueueRange

---@class UnityEngine.Experimental.Rendering.RenderStateBlock : System.ValueType
---@field public blendState UnityEngine.Experimental.Rendering.BlendState @ setter getter
---@field public rasterState UnityEngine.Experimental.Rendering.RasterState @ setter getter
---@field public depthState UnityEngine.Experimental.Rendering.DepthState @ setter getter
---@field public stencilState UnityEngine.Experimental.Rendering.StencilState @ setter getter
---@field public stencilReference System.Int32 @ setter getter
---@field public mask UnityEngine.Experimental.Rendering.RenderStateMask @ setter getter
UnityEngine.Experimental.Rendering.RenderStateBlock = {}
---@type UnityEngine.Experimental.Rendering.RenderStateBlock
CS.UnityEngine.Experimental.Rendering.RenderStateBlock = UnityEngine.Experimental.Rendering.RenderStateBlock

---@class UnityEngine.Experimental.Rendering.RenderStateMapping : System.ValueType
---@field public renderType System.String @ setter getter
---@field public stateBlock UnityEngine.Experimental.Rendering.RenderStateBlock @ setter getter
UnityEngine.Experimental.Rendering.RenderStateMapping = {}
---@type UnityEngine.Experimental.Rendering.RenderStateMapping
CS.UnityEngine.Experimental.Rendering.RenderStateMapping = UnityEngine.Experimental.Rendering.RenderStateMapping

---@class UnityEngine.Experimental.Rendering.RenderStateMask : System.Enum
UnityEngine.Experimental.Rendering.RenderStateMask = {}
---@type UnityEngine.Experimental.Rendering.RenderStateMask
CS.UnityEngine.Experimental.Rendering.RenderStateMask = UnityEngine.Experimental.Rendering.RenderStateMask

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.RenderStateMask.Nothing = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.RenderStateMask.Blend = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.RenderStateMask.Raster = 2
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.RenderStateMask.Depth = 4

---@class UnityEngine.Experimental.Rendering.RenderTargetBlendState : System.ValueType
---@field public Default UnityEngine.Experimental.Rendering.RenderTargetBlendState @static  getter
---@field public writeMask UnityEngine.Rendering.ColorWriteMask @ setter getter
---@field public sourceColorBlendMode UnityEngine.Rendering.BlendMode @ setter getter
---@field public destinationColorBlendMode UnityEngine.Rendering.BlendMode @ setter getter
---@field public sourceAlphaBlendMode UnityEngine.Rendering.BlendMode @ setter getter
---@field public destinationAlphaBlendMode UnityEngine.Rendering.BlendMode @ setter getter
---@field public colorBlendOperation UnityEngine.Rendering.BlendOp @ setter getter
---@field public alphaBlendOperation UnityEngine.Rendering.BlendOp @ setter getter
UnityEngine.Experimental.Rendering.RenderTargetBlendState = {}
---@type UnityEngine.Experimental.Rendering.RenderTargetBlendState
CS.UnityEngine.Experimental.Rendering.RenderTargetBlendState = UnityEngine.Experimental.Rendering.RenderTargetBlendState

---@class UnityEngine.Experimental.Rendering.ShadowSplitData : System.ValueType
---@field public cullingPlaneCount System.Int32
---@field public cullingSphere UnityEngine.Vector4
UnityEngine.Experimental.Rendering.ShadowSplitData = {}
---@type UnityEngine.Experimental.Rendering.ShadowSplitData
CS.UnityEngine.Experimental.Rendering.ShadowSplitData = UnityEngine.Experimental.Rendering.ShadowSplitData

---@param index System.Int32
---@return UnityEngine.Plane
function UnityEngine.Experimental.Rendering.ShadowSplitData:GetCullingPlane(index)end
---@param index System.Int32
---@param plane UnityEngine.Plane
---@return System.Void
function UnityEngine.Experimental.Rendering.ShadowSplitData:SetCullingPlane(index, plane)end
---@class UnityEngine.Experimental.Rendering.SortFlags : System.Enum
UnityEngine.Experimental.Rendering.SortFlags = {}
---@type UnityEngine.Experimental.Rendering.SortFlags
CS.UnityEngine.Experimental.Rendering.SortFlags = UnityEngine.Experimental.Rendering.SortFlags

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.SortFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.SortFlags.SortingLayer = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.SortFlags.RenderQueue = 2
---@return System.Int32 value:4
UnityEngine.Experimental.Rendering.SortFlags.BackToFront = 4
---@return System.Int32 value:8
UnityEngine.Experimental.Rendering.SortFlags.QuantizedFrontToBack = 8

---@class UnityEngine.Experimental.Rendering.StencilState : System.ValueType
---@field public Default UnityEngine.Experimental.Rendering.StencilState @static  getter
---@field public enabled System.Boolean @ setter getter
---@field public readMask System.Byte @ setter getter
---@field public writeMask System.Byte @ setter getter
---@field public compareFunction UnityEngine.Rendering.CompareFunction @ setter 
---@field public passOperation UnityEngine.Rendering.StencilOp @ setter 
---@field public failOperation UnityEngine.Rendering.StencilOp @ setter 
---@field public zFailOperation UnityEngine.Rendering.StencilOp @ setter 
---@field public compareFunctionFront UnityEngine.Rendering.CompareFunction @ setter getter
---@field public passOperationFront UnityEngine.Rendering.StencilOp @ setter getter
---@field public failOperationFront UnityEngine.Rendering.StencilOp @ setter getter
---@field public zFailOperationFront UnityEngine.Rendering.StencilOp @ setter getter
---@field public compareFunctionBack UnityEngine.Rendering.CompareFunction @ setter getter
---@field public passOperationBack UnityEngine.Rendering.StencilOp @ setter getter
---@field public failOperationBack UnityEngine.Rendering.StencilOp @ setter getter
---@field public zFailOperationBack UnityEngine.Rendering.StencilOp @ setter getter
UnityEngine.Experimental.Rendering.StencilState = {}
---@type UnityEngine.Experimental.Rendering.StencilState
CS.UnityEngine.Experimental.Rendering.StencilState = UnityEngine.Experimental.Rendering.StencilState

---@class UnityEngine.Experimental.Rendering.SupportedRenderingFeatures : System.Object
---@field public active UnityEngine.Experimental.Rendering.SupportedRenderingFeatures @static setter getter
---@field public reflectionProbeSupportFlags UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags @ setter getter
---@field public defaultMixedLightingMode UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode @ setter getter
---@field public supportedMixedLightingModes UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode @ setter getter
---@field public supportedLightmapBakeTypes UnityEngine.LightmapBakeType @ setter getter
---@field public supportedLightmapsModes UnityEngine.LightmapsMode @ setter getter
---@field public rendererSupportsLightProbeProxyVolumes System.Boolean @ setter getter
---@field public rendererSupportsMotionVectors System.Boolean @ setter getter
---@field public rendererSupportsReceiveShadows System.Boolean @ setter getter
---@field public rendererSupportsReflectionProbes System.Boolean @ setter getter
---@field public rendererSupportsRendererPriority System.Boolean @ setter getter
---@field public rendererOverridesEnvironmentLighting System.Boolean @ setter getter
---@field public rendererOverridesFog System.Boolean @ setter getter
---@field public rendererOverridesOtherLightingSettings System.Boolean @ setter getter
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures = {}
---@type UnityEngine.Experimental.Rendering.SupportedRenderingFeatures
CS.UnityEngine.Experimental.Rendering.SupportedRenderingFeatures = UnityEngine.Experimental.Rendering.SupportedRenderingFeatures

---@class UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags : System.Enum
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags = {}
---@type UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags
CS.UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags = UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.ReflectionProbeSupportFlags.Rotation = 1

---@class UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode : System.Enum
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode = {}
---@type UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode
CS.UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode = UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode.IndirectOnly = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.SupportedRenderingFeatures.LightmapMixedBakeMode.Subtractive = 2

---@class UnityEngine.Experimental.Rendering.VisibleLightFlags : System.Enum
UnityEngine.Experimental.Rendering.VisibleLightFlags = {}
---@type UnityEngine.Experimental.Rendering.VisibleLightFlags
CS.UnityEngine.Experimental.Rendering.VisibleLightFlags = UnityEngine.Experimental.Rendering.VisibleLightFlags

---@return System.Int32 value:0
UnityEngine.Experimental.Rendering.VisibleLightFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.Rendering.VisibleLightFlags.IntersectsNearPlane = 1
---@return System.Int32 value:2
UnityEngine.Experimental.Rendering.VisibleLightFlags.IntersectsFarPlane = 2

---@class UnityEngine.Experimental.Rendering.RenderPass : System.Object
---@field public colorAttachments UnityEngine.Experimental.Rendering.RenderPassAttachment[] @ setter getter
---@field public depthAttachment UnityEngine.Experimental.Rendering.RenderPassAttachment @ setter getter
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public sampleCount System.Int32 @ setter getter
---@field public context UnityEngine.Experimental.Rendering.ScriptableRenderContext @ setter getter
UnityEngine.Experimental.Rendering.RenderPass = {}
---@type UnityEngine.Experimental.Rendering.RenderPass
CS.UnityEngine.Experimental.Rendering.RenderPass = UnityEngine.Experimental.Rendering.RenderPass

---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPass:Dispose()end
---@class UnityEngine.Experimental.Rendering.RenderPass.SubPass : System.Object
UnityEngine.Experimental.Rendering.RenderPass.SubPass = {}
---@type UnityEngine.Experimental.Rendering.RenderPass.SubPass
CS.UnityEngine.Experimental.Rendering.RenderPass.SubPass = UnityEngine.Experimental.Rendering.RenderPass.SubPass

---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPass.SubPass:Dispose()end
---@class UnityEngine.Experimental.Rendering.RenderPassAttachment : UnityEngine.Object
---@field public loadAction UnityEngine.Rendering.RenderBufferLoadAction @ setter getter
---@field public storeAction UnityEngine.Rendering.RenderBufferStoreAction @ setter getter
---@field public format UnityEngine.RenderTextureFormat @ setter getter
---@field public clearColor UnityEngine.Color @ setter getter
---@field public clearDepth System.Single @ setter getter
---@field public clearStencil System.UInt32 @ setter getter
UnityEngine.Experimental.Rendering.RenderPassAttachment = {}
---@type UnityEngine.Experimental.Rendering.RenderPassAttachment
CS.UnityEngine.Experimental.Rendering.RenderPassAttachment = UnityEngine.Experimental.Rendering.RenderPassAttachment

---@param tgt UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents System.Boolean
---@param storeResults System.Boolean
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPassAttachment:BindSurface(tgt, loadExistingContents, storeResults)end
---@param tgt UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPassAttachment:BindResolveSurface(tgt)end
---@overload fun(clearCol:UnityEngine.Color, clearDep:System.Single):System.Void
---@overload fun(clearCol:UnityEngine.Color):System.Void
---@param clearCol UnityEngine.Color
---@param clearDep System.Single
---@param clearStenc System.UInt32
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPassAttachment:Clear(clearCol, clearDep, clearStenc)end
---@param self UnityEngine.Experimental.Rendering.RenderPassAttachment
---@return System.Void
function UnityEngine.Experimental.Rendering.RenderPassAttachment.Internal_CreateAttachment(self)end
---@class UnityEngine.Experimental.Rendering.ShaderPassName : System.ValueType
UnityEngine.Experimental.Rendering.ShaderPassName = {}
---@type UnityEngine.Experimental.Rendering.ShaderPassName
CS.UnityEngine.Experimental.Rendering.ShaderPassName = UnityEngine.Experimental.Rendering.ShaderPassName

---@class UnityEngine.Experimental.Rendering.DrawRendererSettings : System.ValueType
---@field public maxShaderPasses System.Int32
---@field public sorting UnityEngine.Experimental.Rendering.DrawRendererSortSettings
---@field public rendererConfiguration UnityEngine.Experimental.Rendering.RendererConfiguration
---@field public flags UnityEngine.Experimental.Rendering.DrawRendererFlags
UnityEngine.Experimental.Rendering.DrawRendererSettings = {}
---@type UnityEngine.Experimental.Rendering.DrawRendererSettings
CS.UnityEngine.Experimental.Rendering.DrawRendererSettings = UnityEngine.Experimental.Rendering.DrawRendererSettings

---@param mat UnityEngine.Material
---@param passIndex System.Int32
---@return System.Void
function UnityEngine.Experimental.Rendering.DrawRendererSettings:SetOverrideMaterial(mat, passIndex)end
---@param index System.Int32
---@param shaderPassName UnityEngine.Experimental.Rendering.ShaderPassName
---@return System.Void
function UnityEngine.Experimental.Rendering.DrawRendererSettings:SetShaderPassName(index, shaderPassName)end
---@class UnityEngine.Experimental.Rendering.VisibleLight : System.ValueType
---@field public light UnityEngine.Light @  getter
---@field public lightType UnityEngine.LightType
---@field public finalColor UnityEngine.Color
---@field public screenRect UnityEngine.Rect
---@field public localToWorld UnityEngine.Matrix4x4
---@field public range System.Single
---@field public spotAngle System.Single
---@field public flags UnityEngine.Experimental.Rendering.VisibleLightFlags
UnityEngine.Experimental.Rendering.VisibleLight = {}
---@type UnityEngine.Experimental.Rendering.VisibleLight
CS.UnityEngine.Experimental.Rendering.VisibleLight = UnityEngine.Experimental.Rendering.VisibleLight

---@class UnityEngine.Experimental.Rendering.VisibleReflectionProbe : System.ValueType
---@field public texture UnityEngine.Texture @  getter
---@field public probe UnityEngine.ReflectionProbe @  getter
---@field public bounds UnityEngine.Bounds
---@field public localToWorld UnityEngine.Matrix4x4
---@field public hdr UnityEngine.Vector4
---@field public center UnityEngine.Vector3
---@field public blendDistance System.Single
---@field public importance System.Int32
---@field public boxProjection System.Int32
UnityEngine.Experimental.Rendering.VisibleReflectionProbe = {}
---@type UnityEngine.Experimental.Rendering.VisibleReflectionProbe
CS.UnityEngine.Experimental.Rendering.VisibleReflectionProbe = UnityEngine.Experimental.Rendering.VisibleReflectionProbe

---@class UnityEngine.Experimental.Rendering.CullResults : System.ValueType
---@field public visibleLights System.Collections.Generic.List
---@field public visibleOffscreenVertexLights System.Collections.Generic.List
---@field public visibleReflectionProbes System.Collections.Generic.List
---@field public visibleRenderers UnityEngine.Experimental.Rendering.FilterResults
UnityEngine.Experimental.Rendering.CullResults = {}
---@type UnityEngine.Experimental.Rendering.CullResults
CS.UnityEngine.Experimental.Rendering.CullResults = UnityEngine.Experimental.Rendering.CullResults

---@overload fun(camera:UnityEngine.Camera, stereoAware:System.Boolean, cullingParameters:UnityEngine.Experimental.Rendering.ScriptableCullingParameters):System.Boolean
---@param camera UnityEngine.Camera
---@param cullingParameters UnityEngine.Experimental.Rendering.ScriptableCullingParameters
---@return System.Boolean
function UnityEngine.Experimental.Rendering.CullResults.GetCullingParameters(camera, cullingParameters)end
---@overload fun(camera:UnityEngine.Camera, renderLoop:UnityEngine.Experimental.Rendering.ScriptableRenderContext, results:UnityEngine.Experimental.Rendering.CullResults):System.Boolean
---@overload fun(parameters:UnityEngine.Experimental.Rendering.ScriptableCullingParameters, renderLoop:UnityEngine.Experimental.Rendering.ScriptableRenderContext, results:UnityEngine.Experimental.Rendering.CullResults):System.Void
---@param parameters UnityEngine.Experimental.Rendering.ScriptableCullingParameters
---@param renderLoop UnityEngine.Experimental.Rendering.ScriptableRenderContext
---@return UnityEngine.Experimental.Rendering.CullResults
function UnityEngine.Experimental.Rendering.CullResults.Cull(parameters, renderLoop)end
---@param lightIndex System.Int32
---@param outBounds UnityEngine.Bounds
---@return System.Boolean
function UnityEngine.Experimental.Rendering.CullResults:GetShadowCasterBounds(lightIndex, outBounds)end
---@return System.Int32
function UnityEngine.Experimental.Rendering.CullResults:GetLightIndicesCount()end
---@param computeBuffer UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Experimental.Rendering.CullResults:FillLightIndices(computeBuffer)end
---@return System.Int32[]
function UnityEngine.Experimental.Rendering.CullResults:GetLightIndexMap()end
---@param mapping System.Int32[]
---@return System.Void
function UnityEngine.Experimental.Rendering.CullResults:SetLightIndexMap(mapping)end
---@param activeLightIndex System.Int32
---@param viewMatrix UnityEngine.Matrix4x4
---@param projMatrix UnityEngine.Matrix4x4
---@param shadowSplitData UnityEngine.Experimental.Rendering.ShadowSplitData
---@return System.Boolean
function UnityEngine.Experimental.Rendering.CullResults:ComputeSpotShadowMatricesAndCullingPrimitives(activeLightIndex, viewMatrix, projMatrix, shadowSplitData)end
---@param activeLightIndex System.Int32
---@param cubemapFace UnityEngine.CubemapFace
---@param fovBias System.Single
---@param viewMatrix UnityEngine.Matrix4x4
---@param projMatrix UnityEngine.Matrix4x4
---@param shadowSplitData UnityEngine.Experimental.Rendering.ShadowSplitData
---@return System.Boolean
function UnityEngine.Experimental.Rendering.CullResults:ComputePointShadowMatricesAndCullingPrimitives(activeLightIndex, cubemapFace, fovBias, viewMatrix, projMatrix, shadowSplitData)end
---@param activeLightIndex System.Int32
---@param splitIndex System.Int32
---@param splitCount System.Int32
---@param splitRatio UnityEngine.Vector3
---@param shadowResolution System.Int32
---@param shadowNearPlaneOffset System.Single
---@param viewMatrix UnityEngine.Matrix4x4
---@param projMatrix UnityEngine.Matrix4x4
---@param shadowSplitData UnityEngine.Experimental.Rendering.ShadowSplitData
---@return System.Boolean
function UnityEngine.Experimental.Rendering.CullResults:ComputeDirectionalShadowMatricesAndCullingPrimitives(activeLightIndex, splitIndex, splitCount, splitRatio, shadowResolution, shadowNearPlaneOffset, viewMatrix, projMatrix, shadowSplitData)end
