---@class UnityEngine.Tilemaps.ITilemap : System.Object
---@field public origin UnityEngine.Vector3Int @  getter
---@field public size UnityEngine.Vector3Int @  getter
---@field public localBounds UnityEngine.Bounds @  getter
---@field public cellBounds UnityEngine.BoundsInt @  getter
UnityEngine.Tilemaps.ITilemap = {}
---@type UnityEngine.Tilemaps.ITilemap
CS.UnityEngine.Tilemaps.ITilemap = UnityEngine.Tilemaps.ITilemap

---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.ITilemap:GetSprite(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.ITilemap:GetColor(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.ITilemap:GetTransformMatrix(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.ITilemap:GetTileFlags(position)end
---@overload fun(position:UnityEngine.Vector3Int):any
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.ITilemap:GetTile(position)end
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.Tilemaps.ITilemap:RefreshTile(position)end
---@return any
function UnityEngine.Tilemaps.ITilemap:GetComponent()end
---@class UnityEngine.Tilemaps.Tile : UnityEngine.Tilemaps.TileBase
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public transform UnityEngine.Matrix4x4 @ setter getter
---@field public gameObject UnityEngine.GameObject @ setter getter
---@field public flags UnityEngine.Tilemaps.TileFlags @ setter getter
---@field public colliderType UnityEngine.Tilemaps.Tile.ColliderType @ setter getter
UnityEngine.Tilemaps.Tile = {}
---@type UnityEngine.Tilemaps.Tile
CS.UnityEngine.Tilemaps.Tile = UnityEngine.Tilemaps.Tile

---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param tileData UnityEngine.Tilemaps.TileData
---@return System.Void
function UnityEngine.Tilemaps.Tile:GetTileData(position, tilemap, tileData)end
---@class UnityEngine.Tilemaps.Tile.ColliderType : System.Enum
UnityEngine.Tilemaps.Tile.ColliderType = {}
---@type UnityEngine.Tilemaps.Tile.ColliderType
CS.UnityEngine.Tilemaps.Tile.ColliderType = UnityEngine.Tilemaps.Tile.ColliderType

---@return System.Int32 value:0
UnityEngine.Tilemaps.Tile.ColliderType.None = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.Tile.ColliderType.Sprite = 1
---@return System.Int32 value:2
UnityEngine.Tilemaps.Tile.ColliderType.Grid = 2

---@class UnityEngine.Tilemaps.TileBase : UnityEngine.ScriptableObject
UnityEngine.Tilemaps.TileBase = {}
---@type UnityEngine.Tilemaps.TileBase
CS.UnityEngine.Tilemaps.TileBase = UnityEngine.Tilemaps.TileBase

---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@return System.Void
function UnityEngine.Tilemaps.TileBase:RefreshTile(position, tilemap)end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param tileData UnityEngine.Tilemaps.TileData
---@return System.Void
function UnityEngine.Tilemaps.TileBase:GetTileData(position, tilemap, tileData)end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param tileAnimationData UnityEngine.Tilemaps.TileAnimationData
---@return System.Boolean
function UnityEngine.Tilemaps.TileBase:GetTileAnimationData(position, tilemap, tileAnimationData)end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.Tilemaps.TileBase:StartUp(position, tilemap, go)end
---@class UnityEngine.Tilemaps.Tilemap : UnityEngine.GridLayout
---@field public layoutGrid UnityEngine.Grid @  getter
---@field public cellBounds UnityEngine.BoundsInt @  getter
---@field public localBounds UnityEngine.Bounds @  getter
---@field public animationFrameRate System.Single @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public origin UnityEngine.Vector3Int @ setter getter
---@field public size UnityEngine.Vector3Int @ setter getter
---@field public tileAnchor UnityEngine.Vector3 @ setter getter
---@field public orientation UnityEngine.Tilemaps.Tilemap.Orientation @ setter getter
---@field public orientationMatrix UnityEngine.Matrix4x4 @ setter getter
---@field public editorPreviewOrigin UnityEngine.Vector3Int @  getter
---@field public editorPreviewSize UnityEngine.Vector3Int @  getter
UnityEngine.Tilemaps.Tilemap = {}
---@type UnityEngine.Tilemaps.Tilemap
CS.UnityEngine.Tilemaps.Tilemap = UnityEngine.Tilemaps.Tilemap

---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Tilemaps.Tilemap:GetCellCenterLocal(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Tilemaps.Tilemap:GetCellCenterWorld(position)end
---@overload fun(position:UnityEngine.Vector3Int):any
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:GetTile(position)end
---@param bounds UnityEngine.BoundsInt
---@return UnityEngine.Tilemaps.TileBase[]
function UnityEngine.Tilemaps.Tilemap:GetTilesBlock(bounds)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetTile(position, tile)end
---@param positionArray UnityEngine.Vector3Int[]
---@param tileArray UnityEngine.Tilemaps.TileBase[]
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetTiles(positionArray, tileArray)end
---@param position UnityEngine.BoundsInt
---@param tileArray UnityEngine.Tilemaps.TileBase[]
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetTilesBlock(position, tileArray)end
---@param position UnityEngine.Vector3Int
---@return System.Boolean
function UnityEngine.Tilemaps.Tilemap:HasTile(position)end
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:RefreshTile(position)end
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:RefreshAllTiles()end
---@param changeTile UnityEngine.Tilemaps.TileBase
---@param newTile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SwapTile(changeTile, newTile)end
---@param tileAsset UnityEngine.Tilemaps.TileBase
---@return System.Boolean
function UnityEngine.Tilemaps.Tilemap:ContainsTile(tileAsset)end
---@return System.Int32
function UnityEngine.Tilemaps.Tilemap:GetUsedTilesCount()end
---@param usedTiles UnityEngine.Tilemaps.TileBase[]
---@return System.Int32
function UnityEngine.Tilemaps.Tilemap:GetUsedTilesNonAlloc(usedTiles)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.Tilemap:GetSprite(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:GetTransformMatrix(position)end
---@param position UnityEngine.Vector3Int
---@param transform UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetTransformMatrix(position, transform)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:GetColor(position)end
---@param position UnityEngine.Vector3Int
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetColor(position, color)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:GetTileFlags(position)end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetTileFlags(position, flags)end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:AddTileFlags(position, flags)end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:RemoveTileFlags(position, flags)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.GameObject
function UnityEngine.Tilemaps.Tilemap:GetInstantiatedObject(position)end
---@param position UnityEngine.Vector3Int
---@param colliderType UnityEngine.Tilemaps.Tile.ColliderType
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetColliderType(position, colliderType)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.Tile.ColliderType
function UnityEngine.Tilemaps.Tilemap:GetColliderType(position)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:FloodFill(position, tile)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@param startX System.Int32
---@param startY System.Int32
---@param endX System.Int32
---@param endY System.Int32
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:BoxFill(position, tile, startX, startY, endX, endY)end
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:ClearAllTiles()end
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:ResizeBounds()end
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:CompressBounds()end
---@overload fun(position:UnityEngine.Vector3Int):any
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTile(position)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewTile(position, tile)end
---@param position UnityEngine.Vector3Int
---@return System.Boolean
function UnityEngine.Tilemaps.Tilemap:HasEditorPreviewTile(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewSprite(position)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTransformMatrix(position)end
---@param position UnityEngine.Vector3Int
---@param transform UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewTransformMatrix(position, transform)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewColor(position)end
---@param position UnityEngine.Vector3Int
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewColor(position, color)end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTileFlags(position)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:EditorPreviewFloodFill(position, tile)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Object
---@param startX System.Int32
---@param startY System.Int32
---@param endX System.Int32
---@param endY System.Int32
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:EditorPreviewBoxFill(position, tile, startX, startY, endX, endY)end
---@return System.Void
function UnityEngine.Tilemaps.Tilemap:ClearAllEditorPreviewTiles()end
---@class UnityEngine.Tilemaps.Tilemap.Orientation : System.Enum
UnityEngine.Tilemaps.Tilemap.Orientation = {}
---@type UnityEngine.Tilemaps.Tilemap.Orientation
CS.UnityEngine.Tilemaps.Tilemap.Orientation = UnityEngine.Tilemaps.Tilemap.Orientation

---@return System.Int32 value:0
UnityEngine.Tilemaps.Tilemap.Orientation.XY = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.Tilemap.Orientation.XZ = 1
---@return System.Int32 value:2
UnityEngine.Tilemaps.Tilemap.Orientation.YX = 2
---@return System.Int32 value:3
UnityEngine.Tilemaps.Tilemap.Orientation.YZ = 3
---@return System.Int32 value:4
UnityEngine.Tilemaps.Tilemap.Orientation.ZX = 4
---@return System.Int32 value:5
UnityEngine.Tilemaps.Tilemap.Orientation.ZY = 5
---@return System.Int32 value:6
UnityEngine.Tilemaps.Tilemap.Orientation.Custom = 6

---@class UnityEngine.Tilemaps.TileFlags : System.Enum
UnityEngine.Tilemaps.TileFlags = {}
---@type UnityEngine.Tilemaps.TileFlags
CS.UnityEngine.Tilemaps.TileFlags = UnityEngine.Tilemaps.TileFlags

---@return System.Int32 value:0
UnityEngine.Tilemaps.TileFlags.None = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.TileFlags.LockColor = 1
---@return System.Int32 value:2
UnityEngine.Tilemaps.TileFlags.LockTransform = 2
---@return System.Int32 value:3
UnityEngine.Tilemaps.TileFlags.LockAll = 3
---@return System.Int32 value:4
UnityEngine.Tilemaps.TileFlags.InstantiateGameObjectRuntimeOnly = 4

---@class UnityEngine.Tilemaps.TilemapRenderer : UnityEngine.Renderer
---@field public chunkSize UnityEngine.Vector3Int @ setter getter
---@field public chunkCullingBounds UnityEngine.Vector3 @ setter getter
---@field public maxChunkCount System.Int32 @ setter getter
---@field public maxFrameAge System.Int32 @ setter getter
---@field public sortOrder UnityEngine.Tilemaps.TilemapRenderer.SortOrder @ setter getter
---@field public mode UnityEngine.Tilemaps.TilemapRenderer.Mode @ setter getter
---@field public detectChunkCullingBounds UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds @ setter getter
---@field public maskInteraction UnityEngine.SpriteMaskInteraction @ setter getter
UnityEngine.Tilemaps.TilemapRenderer = {}
---@type UnityEngine.Tilemaps.TilemapRenderer
CS.UnityEngine.Tilemaps.TilemapRenderer = UnityEngine.Tilemaps.TilemapRenderer

---@class UnityEngine.Tilemaps.TilemapRenderer.SortOrder : System.Enum
UnityEngine.Tilemaps.TilemapRenderer.SortOrder = {}
---@type UnityEngine.Tilemaps.TilemapRenderer.SortOrder
CS.UnityEngine.Tilemaps.TilemapRenderer.SortOrder = UnityEngine.Tilemaps.TilemapRenderer.SortOrder

---@return System.Int32 value:0
UnityEngine.Tilemaps.TilemapRenderer.SortOrder.BottomLeft = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.TilemapRenderer.SortOrder.BottomRight = 1
---@return System.Int32 value:2
UnityEngine.Tilemaps.TilemapRenderer.SortOrder.TopLeft = 2
---@return System.Int32 value:3
UnityEngine.Tilemaps.TilemapRenderer.SortOrder.TopRight = 3

---@class UnityEngine.Tilemaps.TilemapRenderer.Mode : System.Enum
UnityEngine.Tilemaps.TilemapRenderer.Mode = {}
---@type UnityEngine.Tilemaps.TilemapRenderer.Mode
CS.UnityEngine.Tilemaps.TilemapRenderer.Mode = UnityEngine.Tilemaps.TilemapRenderer.Mode

---@return System.Int32 value:0
UnityEngine.Tilemaps.TilemapRenderer.Mode.Chunk = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.TilemapRenderer.Mode.Individual = 1

---@class UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds : System.Enum
UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds = {}
---@type UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
CS.UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds = UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds

---@return System.Int32 value:0
UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds.Auto = 0
---@return System.Int32 value:1
UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds.Manual = 1

---@class UnityEngine.Tilemaps.TileData : System.ValueType
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public color UnityEngine.Color @ setter getter
---@field public transform UnityEngine.Matrix4x4 @ setter getter
---@field public gameObject UnityEngine.GameObject @ setter getter
---@field public flags UnityEngine.Tilemaps.TileFlags @ setter getter
---@field public colliderType UnityEngine.Tilemaps.Tile.ColliderType @ setter getter
UnityEngine.Tilemaps.TileData = {}
---@type UnityEngine.Tilemaps.TileData
CS.UnityEngine.Tilemaps.TileData = UnityEngine.Tilemaps.TileData

---@class UnityEngine.Tilemaps.TileAnimationData : System.ValueType
---@field public animatedSprites UnityEngine.Sprite[] @ setter getter
---@field public animationSpeed System.Single @ setter getter
---@field public animationStartTime System.Single @ setter getter
UnityEngine.Tilemaps.TileAnimationData = {}
---@type UnityEngine.Tilemaps.TileAnimationData
CS.UnityEngine.Tilemaps.TileAnimationData = UnityEngine.Tilemaps.TileAnimationData

---@class UnityEngine.Tilemaps.TilemapCollider2D : UnityEngine.Collider2D
UnityEngine.Tilemaps.TilemapCollider2D = {}
---@type UnityEngine.Tilemaps.TilemapCollider2D
CS.UnityEngine.Tilemaps.TilemapCollider2D = UnityEngine.Tilemaps.TilemapCollider2D

