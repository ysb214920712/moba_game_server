---@class UnityEditor.Sprites.SpriteUtility : System.Object
UnityEditor.Sprites.SpriteUtility = {}
---@type UnityEditor.Sprites.SpriteUtility
CS.UnityEditor.Sprites.SpriteUtility = UnityEditor.Sprites.SpriteUtility

---@param sprite UnityEngine.Sprite
---@param getAtlasData System.Boolean
---@return UnityEngine.Texture2D
function UnityEditor.Sprites.SpriteUtility.GetSpriteTexture(sprite, getAtlasData)end
---@param sprite UnityEngine.Sprite
---@param getAtlasData System.Boolean
---@return UnityEngine.Vector2[]
function UnityEditor.Sprites.SpriteUtility.GetSpriteMesh(sprite, getAtlasData)end
---@param sprite UnityEngine.Sprite
---@param getAtlasData System.Boolean
---@return UnityEngine.Vector2[]
function UnityEditor.Sprites.SpriteUtility.GetSpriteUVs(sprite, getAtlasData)end
---@param sprite UnityEngine.Sprite
---@param getAtlasData System.Boolean
---@return System.UInt16[]
function UnityEditor.Sprites.SpriteUtility.GetSpriteIndices(sprite, getAtlasData)end
---@class UnityEditor.Sprites.DataUtility : System.Object
UnityEditor.Sprites.DataUtility = {}
---@type UnityEditor.Sprites.DataUtility
CS.UnityEditor.Sprites.DataUtility = UnityEditor.Sprites.DataUtility

---@class UnityEditor.Sprites.AtlasSettings : System.ValueType
---@field public format UnityEngine.TextureFormat
---@field public colorSpace UnityEngine.ColorSpace
---@field public compressionQuality System.Int32
---@field public filterMode UnityEngine.FilterMode
---@field public maxWidth System.Int32
---@field public maxHeight System.Int32
---@field public paddingPower System.UInt32
---@field public anisoLevel System.Int32
---@field public generateMipMaps System.Boolean
---@field public enableRotation System.Boolean
---@field public allowsAlphaSplitting System.Boolean
UnityEditor.Sprites.AtlasSettings = {}
---@type UnityEditor.Sprites.AtlasSettings
CS.UnityEditor.Sprites.AtlasSettings = UnityEditor.Sprites.AtlasSettings

---@class UnityEditor.Sprites.PackerJob : System.Object
UnityEditor.Sprites.PackerJob = {}
---@type UnityEditor.Sprites.PackerJob
CS.UnityEditor.Sprites.PackerJob = UnityEditor.Sprites.PackerJob

---@param atlasName System.String
---@param settings UnityEditor.Sprites.AtlasSettings
---@return System.Void
function UnityEditor.Sprites.PackerJob:AddAtlas(atlasName, settings)end
---@param atlasName System.String
---@param sprite UnityEngine.Sprite
---@param packingMode UnityEngine.SpritePackingMode
---@param packingRotation UnityEngine.SpritePackingRotation
---@return System.Void
function UnityEditor.Sprites.PackerJob:AssignToAtlas(atlasName, sprite, packingMode, packingRotation)end
---@class UnityEditor.Sprites.Packer : System.Object
---@field public atlasNames System.String[] @static  getter
---@field public Policies System.String[] @static  getter
---@field public SelectedPolicy System.String @static setter getter
---@field public kDefaultPolicy System.String
UnityEditor.Sprites.Packer = {}
---@type UnityEditor.Sprites.Packer
CS.UnityEditor.Sprites.Packer = UnityEditor.Sprites.Packer

---@param atlasName System.String
---@return UnityEngine.Texture2D[]
function UnityEditor.Sprites.Packer.GetTexturesForAtlas(atlasName)end
---@param atlasName System.String
---@return UnityEngine.Texture2D[]
function UnityEditor.Sprites.Packer.GetAlphaTexturesForAtlas(atlasName)end
---@overload fun(target:UnityEditor.BuildTarget, displayProgressBar:System.Boolean):System.Void
---@overload fun(target:UnityEditor.BuildTarget, displayProgressBar:System.Boolean, execution:UnityEditor.Sprites.Packer.Execution):System.Void
---@param target UnityEditor.BuildTarget
---@return System.Void
function UnityEditor.Sprites.Packer.RebuildAtlasCacheIfNeeded(target)end
---@param sprite UnityEngine.Sprite
---@param atlasName System.String
---@param atlasTexture UnityEngine.Texture2D
---@return System.Void
function UnityEditor.Sprites.Packer.GetAtlasDataForSprite(sprite, atlasName, atlasTexture)end
---@class UnityEditor.Sprites.Packer.Execution : System.Enum
UnityEditor.Sprites.Packer.Execution = {}
---@type UnityEditor.Sprites.Packer.Execution
CS.UnityEditor.Sprites.Packer.Execution = UnityEditor.Sprites.Packer.Execution

---@return System.Int32 value:0
UnityEditor.Sprites.Packer.Execution.Normal = 0
---@return System.Int32 value:1
UnityEditor.Sprites.Packer.Execution.ForceRegroup = 1

