---@class UnityEngine.Experimental.U2D.PixelPerfectRendering : System.Object
---@field public pixelSnapSpacing System.Single @static setter getter
UnityEngine.Experimental.U2D.PixelPerfectRendering = {}
---@type UnityEngine.Experimental.U2D.PixelPerfectRendering
CS.UnityEngine.Experimental.U2D.PixelPerfectRendering = UnityEngine.Experimental.U2D.PixelPerfectRendering

---@class UnityEngine.Experimental.U2D.SpriteBone : System.ValueType
---@field public name System.String @ setter getter
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public length System.Single @ setter getter
---@field public parentId System.Int32 @ setter getter
UnityEngine.Experimental.U2D.SpriteBone = {}
---@type UnityEngine.Experimental.U2D.SpriteBone
CS.UnityEngine.Experimental.U2D.SpriteBone = UnityEngine.Experimental.U2D.SpriteBone

---@class UnityEngine.Experimental.U2D.SpriteDataAccessExtensions : System.Object
UnityEngine.Experimental.U2D.SpriteDataAccessExtensions = {}
---@type UnityEngine.Experimental.U2D.SpriteDataAccessExtensions
CS.UnityEngine.Experimental.U2D.SpriteDataAccessExtensions = UnityEngine.Experimental.U2D.SpriteDataAccessExtensions

---@class UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions : System.Object
UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions = {}
---@type UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions
CS.UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions = UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions

---@class UnityEngine.Experimental.U2D.SpriteShapeParameters : System.ValueType
---@field public transform UnityEngine.Matrix4x4
---@field public fillTexture UnityEngine.Texture2D
---@field public fillScale System.UInt32
---@field public splineDetail System.UInt32
---@field public angleThreshold System.Single
---@field public borderPivot System.Single
---@field public bevelCutoff System.Single
---@field public bevelSize System.Single
---@field public carpet System.Boolean
---@field public smartSprite System.Boolean
---@field public adaptiveUV System.Boolean
---@field public spriteBorders System.Boolean
UnityEngine.Experimental.U2D.SpriteShapeParameters = {}
---@type UnityEngine.Experimental.U2D.SpriteShapeParameters
CS.UnityEngine.Experimental.U2D.SpriteShapeParameters = UnityEngine.Experimental.U2D.SpriteShapeParameters

---@class UnityEngine.Experimental.U2D.SpriteShapeMetaData : System.ValueType
---@field public height System.Single
---@field public bevelCutoff System.Single
---@field public bevelSize System.Single
---@field public spriteIndex System.UInt32
---@field public corner System.Boolean
UnityEngine.Experimental.U2D.SpriteShapeMetaData = {}
---@type UnityEngine.Experimental.U2D.SpriteShapeMetaData
CS.UnityEngine.Experimental.U2D.SpriteShapeMetaData = UnityEngine.Experimental.U2D.SpriteShapeMetaData

---@class UnityEngine.Experimental.U2D.ShapeControlPoint : System.ValueType
---@field public position UnityEngine.Vector3
---@field public leftTangent UnityEngine.Vector3
---@field public rightTangent UnityEngine.Vector3
---@field public mode System.Int32
UnityEngine.Experimental.U2D.ShapeControlPoint = {}
---@type UnityEngine.Experimental.U2D.ShapeControlPoint
CS.UnityEngine.Experimental.U2D.ShapeControlPoint = UnityEngine.Experimental.U2D.ShapeControlPoint

---@class UnityEngine.Experimental.U2D.AngleRangeInfo : System.ValueType
---@field public start System.Single
---@field public end System.Single
---@field public order System.UInt32
---@field public sprites System.Int32[]
UnityEngine.Experimental.U2D.AngleRangeInfo = {}
---@type UnityEngine.Experimental.U2D.AngleRangeInfo
CS.UnityEngine.Experimental.U2D.AngleRangeInfo = UnityEngine.Experimental.U2D.AngleRangeInfo

---@class UnityEngine.Experimental.U2D.SpriteShapeRenderer : UnityEngine.Renderer
UnityEngine.Experimental.U2D.SpriteShapeRenderer = {}
---@type UnityEngine.Experimental.U2D.SpriteShapeRenderer
CS.UnityEngine.Experimental.U2D.SpriteShapeRenderer = UnityEngine.Experimental.U2D.SpriteShapeRenderer

---@class UnityEngine.Experimental.U2D.SpriteShapeUtility : System.Object
UnityEngine.Experimental.U2D.SpriteShapeUtility = {}
---@type UnityEngine.Experimental.U2D.SpriteShapeUtility
CS.UnityEngine.Experimental.U2D.SpriteShapeUtility = UnityEngine.Experimental.U2D.SpriteShapeUtility

---@param mesh UnityEngine.Mesh
---@param shapeParams UnityEngine.Experimental.U2D.SpriteShapeParameters
---@param points UnityEngine.Experimental.U2D.ShapeControlPoint[]
---@param metaData UnityEngine.Experimental.U2D.SpriteShapeMetaData[]
---@param angleRange UnityEngine.Experimental.U2D.AngleRangeInfo[]
---@param sprites UnityEngine.Sprite[]
---@param corners UnityEngine.Sprite[]
---@return System.Int32[]
function UnityEngine.Experimental.U2D.SpriteShapeUtility.Generate(mesh, shapeParams, points, metaData, angleRange, sprites, corners)end
---@param renderer UnityEngine.Experimental.U2D.SpriteShapeRenderer
---@param shapeParams UnityEngine.Experimental.U2D.SpriteShapeParameters
---@param points UnityEngine.Experimental.U2D.ShapeControlPoint[]
---@param metaData UnityEngine.Experimental.U2D.SpriteShapeMetaData[]
---@param angleRange UnityEngine.Experimental.U2D.AngleRangeInfo[]
---@param sprites UnityEngine.Sprite[]
---@param corners UnityEngine.Sprite[]
---@return System.Void
function UnityEngine.Experimental.U2D.SpriteShapeUtility.GenerateSpriteShape(renderer, shapeParams, points, metaData, angleRange, sprites, corners)end
