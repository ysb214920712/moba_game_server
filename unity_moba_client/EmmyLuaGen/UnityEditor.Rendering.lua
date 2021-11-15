---@class UnityEditor.Rendering.EditorGraphicsSettings : System.Object
---@field public albedoSwatches UnityEditor.Rendering.AlbedoSwatchInfo[] @static setter getter
UnityEditor.Rendering.EditorGraphicsSettings = {}
---@type UnityEditor.Rendering.EditorGraphicsSettings
CS.UnityEditor.Rendering.EditorGraphicsSettings = UnityEditor.Rendering.EditorGraphicsSettings

---@overload fun(target:UnityEditor.BuildTargetGroup, tier:UnityEngine.Rendering.ShaderHardwareTier):UnityEditor.Rendering.TierSettings
---@param target UnityEditor.BuildTargetGroup
---@param tier UnityEngine.Rendering.GraphicsTier
---@return UnityEditor.Rendering.TierSettings
function UnityEditor.Rendering.EditorGraphicsSettings.GetTierSettings(target, tier)end
---@overload fun(target:UnityEditor.BuildTargetGroup, tier:UnityEngine.Rendering.ShaderHardwareTier, settings:UnityEditor.Rendering.TierSettings):System.Void
---@param target UnityEditor.BuildTargetGroup
---@param tier UnityEngine.Rendering.GraphicsTier
---@param settings UnityEditor.Rendering.TierSettings
---@return System.Void
function UnityEditor.Rendering.EditorGraphicsSettings.SetTierSettings(target, tier, settings)end
---@param target UnityEditor.BuildTargetGroup
---@param tier UnityEngine.Rendering.ShaderHardwareTier
---@return UnityEditor.Rendering.PlatformShaderSettings
function UnityEditor.Rendering.EditorGraphicsSettings.GetShaderSettingsForPlatform(target, tier)end
---@param target UnityEditor.BuildTargetGroup
---@param tier UnityEngine.Rendering.ShaderHardwareTier
---@param settings UnityEditor.Rendering.PlatformShaderSettings
---@return System.Void
function UnityEditor.Rendering.EditorGraphicsSettings.SetShaderSettingsForPlatform(target, tier, settings)end
---@class UnityEditor.Rendering.ShaderQuality : System.Enum
UnityEditor.Rendering.ShaderQuality = {}
---@type UnityEditor.Rendering.ShaderQuality
CS.UnityEditor.Rendering.ShaderQuality = UnityEditor.Rendering.ShaderQuality

---@return System.Int32 value:0
UnityEditor.Rendering.ShaderQuality.Low = 0
---@return System.Int32 value:1
UnityEditor.Rendering.ShaderQuality.Medium = 1
---@return System.Int32 value:2
UnityEditor.Rendering.ShaderQuality.High = 2

---@class UnityEditor.Rendering.AlbedoSwatchInfo : System.ValueType
---@field public name System.String
---@field public color UnityEngine.Color
---@field public minLuminance System.Single
---@field public maxLuminance System.Single
UnityEditor.Rendering.AlbedoSwatchInfo = {}
---@type UnityEditor.Rendering.AlbedoSwatchInfo
CS.UnityEditor.Rendering.AlbedoSwatchInfo = UnityEditor.Rendering.AlbedoSwatchInfo

---@class UnityEditor.Rendering.TierSettings : System.ValueType
---@field public standardShaderQuality UnityEditor.Rendering.ShaderQuality
---@field public hdrMode UnityEngine.Rendering.CameraHDRMode
---@field public reflectionProbeBoxProjection System.Boolean
---@field public reflectionProbeBlending System.Boolean
---@field public hdr System.Boolean
---@field public detailNormalMap System.Boolean
---@field public cascadedShadowMaps System.Boolean
---@field public prefer32BitShadowMaps System.Boolean
---@field public enableLPPV System.Boolean
---@field public semitransparentShadows System.Boolean
---@field public renderingPath UnityEngine.RenderingPath
---@field public realtimeGICPUUsage UnityEngine.Rendering.RealtimeGICPUUsage
UnityEditor.Rendering.TierSettings = {}
---@type UnityEditor.Rendering.TierSettings
CS.UnityEditor.Rendering.TierSettings = UnityEditor.Rendering.TierSettings

---@class UnityEditor.Rendering.PlatformShaderSettings : System.ValueType
---@field public cascadedShadowMaps System.Boolean
---@field public reflectionProbeBoxProjection System.Boolean
---@field public reflectionProbeBlending System.Boolean
---@field public standardShaderQuality UnityEditor.Rendering.ShaderQuality
UnityEditor.Rendering.PlatformShaderSettings = {}
---@type UnityEditor.Rendering.PlatformShaderSettings
CS.UnityEditor.Rendering.PlatformShaderSettings = UnityEditor.Rendering.PlatformShaderSettings

---@class UnityEditor.Rendering.ShaderSnippetData : System.ValueType
---@field public shaderType UnityEditor.Rendering.ShaderType @  getter
---@field public passType UnityEngine.Rendering.PassType @  getter
---@field public passName System.String @  getter
UnityEditor.Rendering.ShaderSnippetData = {}
---@type UnityEditor.Rendering.ShaderSnippetData
CS.UnityEditor.Rendering.ShaderSnippetData = UnityEditor.Rendering.ShaderSnippetData

---@class UnityEditor.Rendering.ShaderCompilerData : System.ValueType
---@field public shaderRequirements UnityEditor.Rendering.ShaderRequirements @  getter
---@field public graphicsTier UnityEngine.Rendering.GraphicsTier @  getter
---@field public shaderCompilerPlatform UnityEditor.Rendering.ShaderCompilerPlatform @  getter
---@field public shaderKeywordSet UnityEngine.Rendering.ShaderKeywordSet
---@field public platformKeywordSet UnityEngine.Rendering.PlatformKeywordSet
UnityEditor.Rendering.ShaderCompilerData = {}
---@type UnityEditor.Rendering.ShaderCompilerData
CS.UnityEditor.Rendering.ShaderCompilerData = UnityEditor.Rendering.ShaderCompilerData

---@class UnityEditor.Rendering.ShaderCompilerPlatform : System.Enum
UnityEditor.Rendering.ShaderCompilerPlatform = {}
---@type UnityEditor.Rendering.ShaderCompilerPlatform
CS.UnityEditor.Rendering.ShaderCompilerPlatform = UnityEditor.Rendering.ShaderCompilerPlatform

---@return System.Int32 value:0
UnityEditor.Rendering.ShaderCompilerPlatform.None = 0
---@return System.Int32 value:4
UnityEditor.Rendering.ShaderCompilerPlatform.D3D = 4
---@return System.Int32 value:5
UnityEditor.Rendering.ShaderCompilerPlatform.GLES20 = 5
---@return System.Int32 value:9
UnityEditor.Rendering.ShaderCompilerPlatform.GLES3x = 9

---@class UnityEditor.Rendering.ShaderRequirements : System.Enum
UnityEditor.Rendering.ShaderRequirements = {}
---@type UnityEditor.Rendering.ShaderRequirements
CS.UnityEditor.Rendering.ShaderRequirements = UnityEditor.Rendering.ShaderRequirements

---@return System.Int32 value:0
UnityEditor.Rendering.ShaderRequirements.None = 0
---@return System.Int32 value:1
UnityEditor.Rendering.ShaderRequirements.BaseShaders = 1
---@return System.Int32 value:2
UnityEditor.Rendering.ShaderRequirements.Interpolators10 = 2
---@return System.Int32 value:4
UnityEditor.Rendering.ShaderRequirements.Interpolators32 = 4
---@return System.Int32 value:8
UnityEditor.Rendering.ShaderRequirements.MRT4 = 8
---@return System.Int32 value:16
UnityEditor.Rendering.ShaderRequirements.MRT8 = 16

---@class UnityEditor.Rendering.ShaderType : System.Enum
UnityEditor.Rendering.ShaderType = {}
---@type UnityEditor.Rendering.ShaderType
CS.UnityEditor.Rendering.ShaderType = UnityEditor.Rendering.ShaderType

---@return System.Int32 value:1
UnityEditor.Rendering.ShaderType.Vertex = 1
---@return System.Int32 value:2
UnityEditor.Rendering.ShaderType.Fragment = 2
---@return System.Int32 value:3
UnityEditor.Rendering.ShaderType.Geometry = 3
---@return System.Int32 value:4
UnityEditor.Rendering.ShaderType.Hull = 4

