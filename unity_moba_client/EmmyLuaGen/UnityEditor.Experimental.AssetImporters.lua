---@class UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor : UnityEditor.Experimental.AssetImporters.AssetImporterEditor
UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor = {}
---@type UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor
CS.UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor = UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor

---@return System.Void
function UnityEditor.Experimental.AssetImporters.ScriptedImporterEditor:OnInspectorGUI()end
---@class UnityEditor.Experimental.AssetImporters.ScriptedImporter : UnityEditor.AssetImporter
UnityEditor.Experimental.AssetImporters.ScriptedImporter = {}
---@type UnityEditor.Experimental.AssetImporters.ScriptedImporter
CS.UnityEditor.Experimental.AssetImporters.ScriptedImporter = UnityEditor.Experimental.AssetImporters.ScriptedImporter

---@param ctx UnityEditor.Experimental.AssetImporters.AssetImportContext
---@return System.Void
function UnityEditor.Experimental.AssetImporters.ScriptedImporter:OnImportAsset(ctx)end
---@param type System.Type
---@return System.Boolean
function UnityEditor.Experimental.AssetImporters.ScriptedImporter:SupportsRemappedAssetType(type)end
---@class UnityEditor.Experimental.AssetImporters.ScriptedImporterAttribute : System.Attribute
---@field public version System.Int32 @ setter getter
---@field public importQueuePriority System.Int32 @ setter getter
---@field public fileExtensions System.String[] @ setter getter
UnityEditor.Experimental.AssetImporters.ScriptedImporterAttribute = {}
---@type UnityEditor.Experimental.AssetImporters.ScriptedImporterAttribute
CS.UnityEditor.Experimental.AssetImporters.ScriptedImporterAttribute = UnityEditor.Experimental.AssetImporters.ScriptedImporterAttribute

---@class UnityEditor.Experimental.AssetImporters.AssetImportContext : System.Object
---@field public assetPath System.String @ setter getter
---@field public selectedBuildTarget UnityEditor.BuildTarget @  getter
---@field public mainObject UnityEngine.Object @  getter
UnityEditor.Experimental.AssetImporters.AssetImportContext = {}
---@type UnityEditor.Experimental.AssetImporters.AssetImportContext
CS.UnityEditor.Experimental.AssetImporters.AssetImportContext = UnityEditor.Experimental.AssetImporters.AssetImportContext

---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:SetMainObject(obj)end
---@overload fun(identifier:System.String, obj:UnityEngine.Object, thumbnail:UnityEngine.Texture2D):System.Void
---@param identifier System.String
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:AddObjectToAsset(identifier, obj)end
---@param objects System.Collections.Generic.List
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:GetObjects(objects)end
---@param path System.String
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:DependsOnSourceAsset(path)end
---@overload fun(msg:System.String):System.Void
---@param msg System.String
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:LogImportError(msg, obj)end
---@overload fun(msg:System.String):System.Void
---@param msg System.String
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImportContext:LogImportWarning(msg, obj)end
---@class UnityEditor.Experimental.AssetImporters.SpriteImportData : System.ValueType
---@field public name System.String @ setter getter
---@field public rect UnityEngine.Rect @ setter getter
---@field public alignment UnityEngine.SpriteAlignment @ setter getter
---@field public pivot UnityEngine.Vector2 @ setter getter
---@field public border UnityEngine.Vector4 @ setter getter
---@field public outline System.Collections.Generic.List @ setter getter
---@field public tessellationDetail System.Single @ setter getter
---@field public spriteID System.String @ setter getter
UnityEditor.Experimental.AssetImporters.SpriteImportData = {}
---@type UnityEditor.Experimental.AssetImporters.SpriteImportData
CS.UnityEditor.Experimental.AssetImporters.SpriteImportData = UnityEditor.Experimental.AssetImporters.SpriteImportData

---@class UnityEditor.Experimental.AssetImporters.TextureGenerationOutput : System.ValueType
---@field public texture UnityEngine.Texture2D @  getter
---@field public importInspectorWarnings System.String @  getter
---@field public importWarnings System.String[] @  getter
---@field public thumbNail UnityEngine.Texture2D @  getter
---@field public sprites UnityEngine.Sprite[] @  getter
UnityEditor.Experimental.AssetImporters.TextureGenerationOutput = {}
---@type UnityEditor.Experimental.AssetImporters.TextureGenerationOutput
CS.UnityEditor.Experimental.AssetImporters.TextureGenerationOutput = UnityEditor.Experimental.AssetImporters.TextureGenerationOutput

---@class UnityEditor.Experimental.AssetImporters.SourceTextureInformation : System.Object
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public containsAlpha System.Boolean @ setter getter
---@field public hdr System.Boolean @ setter getter
UnityEditor.Experimental.AssetImporters.SourceTextureInformation = {}
---@type UnityEditor.Experimental.AssetImporters.SourceTextureInformation
CS.UnityEditor.Experimental.AssetImporters.SourceTextureInformation = UnityEditor.Experimental.AssetImporters.SourceTextureInformation

---@class UnityEditor.Experimental.AssetImporters.TextureGenerationSettings : System.ValueType
---@field public assetPath System.String @ setter getter
---@field public qualifyForSpritePacking System.Boolean @ setter getter
---@field public enablePostProcessor System.Boolean @ setter getter
---@field public textureImporterSettings UnityEditor.TextureImporterSettings @ setter getter
---@field public platformSettings UnityEditor.TextureImporterPlatformSettings @ setter getter
---@field public sourceTextureInformation UnityEditor.Experimental.AssetImporters.SourceTextureInformation @ setter getter
---@field public spriteImportData UnityEditor.Experimental.AssetImporters.SpriteImportData[] @ setter getter
---@field public spritePackingTag System.String @ setter getter
UnityEditor.Experimental.AssetImporters.TextureGenerationSettings = {}
---@type UnityEditor.Experimental.AssetImporters.TextureGenerationSettings
CS.UnityEditor.Experimental.AssetImporters.TextureGenerationSettings = UnityEditor.Experimental.AssetImporters.TextureGenerationSettings

---@class UnityEditor.Experimental.AssetImporters.TextureGenerator : System.Object
UnityEditor.Experimental.AssetImporters.TextureGenerator = {}
---@type UnityEditor.Experimental.AssetImporters.TextureGenerator
CS.UnityEditor.Experimental.AssetImporters.TextureGenerator = UnityEditor.Experimental.AssetImporters.TextureGenerator

---@param settings UnityEditor.Experimental.AssetImporters.TextureGenerationSettings
---@param colorBuffer Unity.Collections.NativeArray
---@return UnityEditor.Experimental.AssetImporters.TextureGenerationOutput
function UnityEditor.Experimental.AssetImporters.TextureGenerator.GenerateTexture(settings, colorBuffer)end
---@class UnityEditor.Experimental.AssetImporters.AssetImporterEditor : UnityEditor.Editor
---@field public showImportedObject System.Boolean @  getter
UnityEditor.Experimental.AssetImporters.AssetImporterEditor = {}
---@type UnityEditor.Experimental.AssetImporters.AssetImporterEditor
CS.UnityEditor.Experimental.AssetImporters.AssetImporterEditor = UnityEditor.Experimental.AssetImporters.AssetImporterEditor

---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImporterEditor:OnEnable()end
---@return System.Void
function UnityEditor.Experimental.AssetImporters.AssetImporterEditor:OnDisable()end
---@return System.Boolean
function UnityEditor.Experimental.AssetImporters.AssetImporterEditor:HasModified()end
