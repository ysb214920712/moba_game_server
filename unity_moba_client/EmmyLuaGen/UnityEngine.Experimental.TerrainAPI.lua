---@class UnityEngine.Experimental.TerrainAPI.BrushTransform : System.ValueType
---@field public brushOrigin UnityEngine.Vector2 @  getter
---@field public brushU UnityEngine.Vector2 @  getter
---@field public brushV UnityEngine.Vector2 @  getter
---@field public targetOrigin UnityEngine.Vector2 @  getter
---@field public targetX UnityEngine.Vector2 @  getter
---@field public targetY UnityEngine.Vector2 @  getter
UnityEngine.Experimental.TerrainAPI.BrushTransform = {}
---@type UnityEngine.Experimental.TerrainAPI.BrushTransform
CS.UnityEngine.Experimental.TerrainAPI.BrushTransform = UnityEngine.Experimental.TerrainAPI.BrushTransform

---@return UnityEngine.Rect
function UnityEngine.Experimental.TerrainAPI.BrushTransform:GetBrushXYBounds()end
---@param brushRect UnityEngine.Rect
---@return UnityEngine.Experimental.TerrainAPI.BrushTransform
function UnityEngine.Experimental.TerrainAPI.BrushTransform.FromRect(brushRect)end
---@param targetXY UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Experimental.TerrainAPI.BrushTransform:ToBrushUV(targetXY)end
---@param brushUV UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Experimental.TerrainAPI.BrushTransform:FromBrushUV(brushUV)end
---@class UnityEngine.Experimental.TerrainAPI.PaintContext : System.Object
---@field public originTerrain UnityEngine.Terrain @  getter
---@field public pixelRect UnityEngine.RectInt @  getter
---@field public targetTextureWidth System.Int32 @  getter
---@field public targetTextureHeight System.Int32 @  getter
---@field public pixelSize UnityEngine.Vector2 @  getter
---@field public sourceRenderTexture UnityEngine.RenderTexture @  getter
---@field public destinationRenderTexture UnityEngine.RenderTexture @  getter
---@field public oldRenderTexture UnityEngine.RenderTexture @  getter
---@field public terrainCount System.Int32 @  getter
UnityEngine.Experimental.TerrainAPI.PaintContext = {}
---@type UnityEngine.Experimental.TerrainAPI.PaintContext
CS.UnityEngine.Experimental.TerrainAPI.PaintContext = UnityEngine.Experimental.TerrainAPI.PaintContext

---@param terrainIndex System.Int32
---@return UnityEngine.Terrain
function UnityEngine.Experimental.TerrainAPI.PaintContext:GetTerrain(terrainIndex)end
---@param terrainIndex System.Int32
---@return UnityEngine.RectInt
function UnityEngine.Experimental.TerrainAPI.PaintContext:GetClippedPixelRectInTerrainPixels(terrainIndex)end
---@param terrainIndex System.Int32
---@return UnityEngine.RectInt
function UnityEngine.Experimental.TerrainAPI.PaintContext:GetClippedPixelRectInRenderTexturePixels(terrainIndex)end
---@overload fun(terrain:UnityEngine.Terrain, boundsInTerrainSpace:UnityEngine.Rect, inputTextureWidth:System.Int32, inputTextureHeight:System.Int32):UnityEngine.Experimental.TerrainAPI.PaintContext
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param inputTextureWidth System.Int32
---@param inputTextureHeight System.Int32
---@param extraBorderPixels System.Int32
---@return UnityEngine.Experimental.TerrainAPI.PaintContext
function UnityEngine.Experimental.TerrainAPI.PaintContext.CreateFromBounds(terrain, boundsInTerrainSpace, inputTextureWidth, inputTextureHeight, extraBorderPixels)end
---@param colorFormat UnityEngine.RenderTextureFormat
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:CreateRenderTargets(colorFormat)end
---@overload fun():System.Void
---@param restoreRenderTexture System.Boolean
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:Cleanup(restoreRenderTexture)end
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:GatherHeightmap()end
---@param editorUndoName System.String
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:ScatterHeightmap(editorUndoName)end
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:GatherNormals()end
---@overload fun(inputLayer:UnityEngine.TerrainLayer):System.Void
---@param inputLayer UnityEngine.TerrainLayer
---@param addLayerIfDoesntExist System.Boolean
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:GatherAlphamap(inputLayer, addLayerIfDoesntExist)end
---@param editorUndoName System.String
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext:ScatterAlphamap(editorUndoName)end
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.PaintContext.ApplyDelayedActions()end
---@class UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility : System.Object
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility
CS.UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility = UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility

---@return UnityEngine.Material
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.GetBuiltinPaintMaterial()end
---@param terrain UnityEngine.Terrain
---@param brushCenterTerrainUV UnityEngine.Vector2
---@param brushSize System.Single
---@param brushRotationDegrees System.Single
---@return UnityEngine.Experimental.TerrainAPI.BrushTransform
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.CalculateBrushTransform(terrain, brushCenterTerrainUV, brushSize, brushRotationDegrees)end
---@param src UnityEngine.Experimental.TerrainAPI.PaintContext
---@param dst UnityEngine.Experimental.TerrainAPI.PaintContext
---@param scaleOffset UnityEngine.Vector4
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuildTransformPaintContextUVToPaintContextUV(src, dst, scaleOffset)end
---@param paintContext UnityEngine.Experimental.TerrainAPI.PaintContext
---@param brushXform UnityEngine.Experimental.TerrainAPI.BrushTransform
---@param material UnityEngine.Material
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.SetupTerrainToolMaterialProperties(paintContext, brushXform, material)end
---@param ctx UnityEngine.Experimental.TerrainAPI.PaintContext
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.ReleaseContextResources(ctx)end
---@overload fun(terrain:UnityEngine.Terrain, boundsInTerrainSpace:UnityEngine.Rect):UnityEngine.Experimental.TerrainAPI.PaintContext
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param extraBorderPixels System.Int32
---@return UnityEngine.Experimental.TerrainAPI.PaintContext
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BeginPaintHeightmap(terrain, boundsInTerrainSpace, extraBorderPixels)end
---@param ctx UnityEngine.Experimental.TerrainAPI.PaintContext
---@param editorUndoName System.String
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.EndPaintHeightmap(ctx, editorUndoName)end
---@overload fun(terrain:UnityEngine.Terrain, boundsInTerrainSpace:UnityEngine.Rect):UnityEngine.Experimental.TerrainAPI.PaintContext
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param extraBorderPixels System.Int32
---@return UnityEngine.Experimental.TerrainAPI.PaintContext
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.CollectNormals(terrain, boundsInTerrainSpace, extraBorderPixels)end
---@overload fun(terrain:UnityEngine.Terrain, boundsInTerrainSpace:UnityEngine.Rect, inputLayer:UnityEngine.TerrainLayer):UnityEngine.Experimental.TerrainAPI.PaintContext
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param inputLayer UnityEngine.TerrainLayer
---@param extraBorderPixels System.Int32
---@return UnityEngine.Experimental.TerrainAPI.PaintContext
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BeginPaintTexture(terrain, boundsInTerrainSpace, inputLayer, extraBorderPixels)end
---@param ctx UnityEngine.Experimental.TerrainAPI.PaintContext
---@param editorUndoName System.String
---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.EndPaintTexture(ctx, editorUndoName)end
---@return UnityEngine.Material
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.GetBlitMaterial()end
---@return UnityEngine.Material
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.GetCopyTerrainLayerMaterial()end
---@param terrain UnityEngine.Terrain
---@param mapIndex System.Int32
---@return UnityEngine.Texture2D
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.GetTerrainAlphaMapChecked(terrain, mapIndex)end
---@param terrain UnityEngine.Terrain
---@param inputLayer UnityEngine.TerrainLayer
---@return System.Int32
function UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.FindTerrainLayerIndex(terrain, inputLayer)end
---@class UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses : System.Enum
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses
CS.UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses = UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses

---@return System.Int32 value:0
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses.RaiseLowerHeight = 0
---@return System.Int32 value:1
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses.StampHeight = 1
---@return System.Int32 value:2
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses.SetHeights = 2
---@return System.Int32 value:3
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses.SmoothHeights = 3
---@return System.Int32 value:4
UnityEngine.Experimental.TerrainAPI.TerrainPaintUtility.BuiltinPaintMaterialPasses.PaintTexture = 4

---@class UnityEngine.Experimental.TerrainAPI.TerrainUtility : System.Object
UnityEngine.Experimental.TerrainAPI.TerrainUtility = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainUtility
CS.UnityEngine.Experimental.TerrainAPI.TerrainUtility = UnityEngine.Experimental.TerrainAPI.TerrainUtility

---@return System.Void
function UnityEngine.Experimental.TerrainAPI.TerrainUtility.AutoConnect()end
---@class UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap : System.Object
---@field public m_errorCode UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode
---@field public m_terrainTiles System.Collections.Generic.Dictionary
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
CS.UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap = UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap

---@param tileX System.Int32
---@param tileZ System.Int32
---@return UnityEngine.Terrain
function UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap:GetTerrain(tileX, tileZ)end
---@overload fun(originTerrain:UnityEngine.Terrain, filter:UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TerrainFilter):UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
---@overload fun(originTerrain:UnityEngine.Terrain):UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
---@overload fun(gridOrigin:UnityEngine.Vector2, gridSize:UnityEngine.Vector2):UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
---@overload fun(gridOrigin:UnityEngine.Vector2, gridSize:UnityEngine.Vector2):UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
---@overload fun(gridOrigin:UnityEngine.Vector2, gridSize:UnityEngine.Vector2):UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
---@param originTerrain UnityEngine.Terrain
---@param filter UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TerrainFilter
---@param fullValidation System.Boolean
---@return UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap
function UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.CreateFromPlacement(originTerrain, filter, fullValidation)end
---@class UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TileCoord : System.ValueType
---@field public tileX System.Int32
---@field public tileZ System.Int32
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TileCoord = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TileCoord
CS.UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TileCoord = UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.TileCoord

---@class UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode : System.Enum
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode
CS.UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode = UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode

---@return System.Int32 value:0
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode.OK = 0
---@return System.Int32 value:1
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainMap.ErrorCode.Overlapping = 1

---@class UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainGroups : System.Collections.Generic.Dictionary
UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainGroups = {}
---@type UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainGroups
CS.UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainGroups = UnityEngine.Experimental.TerrainAPI.TerrainUtility.TerrainGroups

