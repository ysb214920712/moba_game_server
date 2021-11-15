---@class UnityEngine.U2D.SpriteAtlasManager : System.Object
UnityEngine.U2D.SpriteAtlasManager = {}
---@type UnityEngine.U2D.SpriteAtlasManager
CS.UnityEngine.U2D.SpriteAtlasManager = UnityEngine.U2D.SpriteAtlasManager

---@param value System.Action
---@return System.Void
function UnityEngine.U2D.SpriteAtlasManager.add_atlasRequested(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.U2D.SpriteAtlasManager.remove_atlasRequested(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.U2D.SpriteAtlasManager.add_atlasRegistered(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.U2D.SpriteAtlasManager.remove_atlasRegistered(value)end
---@class UnityEngine.U2D.SpriteAtlas : UnityEngine.Object
---@field public isVariant System.Boolean @  getter
---@field public tag System.String @  getter
---@field public spriteCount System.Int32 @  getter
UnityEngine.U2D.SpriteAtlas = {}
---@type UnityEngine.U2D.SpriteAtlas
CS.UnityEngine.U2D.SpriteAtlas = UnityEngine.U2D.SpriteAtlas

---@param sprite UnityEngine.Sprite
---@return System.Boolean
function UnityEngine.U2D.SpriteAtlas:CanBindTo(sprite)end
---@param name System.String
---@return UnityEngine.Sprite
function UnityEngine.U2D.SpriteAtlas:GetSprite(name)end
---@overload fun(sprites:UnityEngine.Sprite[], name:System.String):System.Int32
---@param sprites UnityEngine.Sprite[]
---@return System.Int32
function UnityEngine.U2D.SpriteAtlas:GetSprites(sprites)end
