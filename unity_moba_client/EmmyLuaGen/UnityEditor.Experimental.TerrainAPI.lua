---@class UnityEditor.Experimental.TerrainAPI.CreateTerrainTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.CreateTerrainTool = {}
---@type UnityEditor.Experimental.TerrainAPI.CreateTerrainTool
CS.UnityEditor.Experimental.TerrainAPI.CreateTerrainTool = UnityEditor.Experimental.TerrainAPI.CreateTerrainTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.CreateTerrainTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.CreateTerrainTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.CreateTerrainTool:OnSceneGUI(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.PaintHeightTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.PaintHeightTool = {}
---@type UnityEditor.Experimental.TerrainAPI.PaintHeightTool
CS.UnityEditor.Experimental.TerrainAPI.PaintHeightTool = UnityEditor.Experimental.TerrainAPI.PaintHeightTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.PaintHeightTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.PaintHeightTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.PaintHeightTool:OnInspectorGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.PaintHeightTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.PaintHeightTool:OnPaint(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.PaintTextureTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.PaintTextureTool = {}
---@type UnityEditor.Experimental.TerrainAPI.PaintTextureTool
CS.UnityEditor.Experimental.TerrainAPI.PaintTextureTool = UnityEditor.Experimental.TerrainAPI.PaintTextureTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.PaintTextureTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.PaintTextureTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.PaintTextureTool:OnPaint(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.PaintTextureTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.PaintTextureTool:OnInspectorGUI(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.SetHeightTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.SetHeightTool = {}
---@type UnityEditor.Experimental.TerrainAPI.SetHeightTool
CS.UnityEditor.Experimental.TerrainAPI.SetHeightTool = UnityEditor.Experimental.TerrainAPI.SetHeightTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.SetHeightTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.SetHeightTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.SetHeightTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.SetHeightTool:OnPaint(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.SetHeightTool:OnInspectorGUI(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.SmoothHeightTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.SmoothHeightTool = {}
---@type UnityEditor.Experimental.TerrainAPI.SmoothHeightTool
CS.UnityEditor.Experimental.TerrainAPI.SmoothHeightTool = UnityEditor.Experimental.TerrainAPI.SmoothHeightTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.SmoothHeightTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.SmoothHeightTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.SmoothHeightTool:OnInspectorGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.SmoothHeightTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.SmoothHeightTool:OnPaint(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.StampTool : UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
UnityEditor.Experimental.TerrainAPI.StampTool = {}
---@type UnityEditor.Experimental.TerrainAPI.StampTool
CS.UnityEditor.Experimental.TerrainAPI.StampTool = UnityEditor.Experimental.TerrainAPI.StampTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.StampTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.StampTool:GetDesc()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.StampTool:OnPaint(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.StampTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.StampTool:OnInspectorGUI(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags : System.Enum
UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags = {}
---@type UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags
CS.UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags = UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags

---@return System.Int32 value:1
UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags.Select = 1
---@return System.Int32 value:2
UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags.Inspect = 2
---@return System.Int32 value:3
UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags.SelectAndInspect = 3
---@return System.Int32 value:4
UnityEditor.Experimental.TerrainAPI.BrushGUIEditFlags.Size = 4

---@class UnityEditor.Experimental.TerrainAPI.RepaintFlags : System.Enum
UnityEditor.Experimental.TerrainAPI.RepaintFlags = {}
---@type UnityEditor.Experimental.TerrainAPI.RepaintFlags
CS.UnityEditor.Experimental.TerrainAPI.RepaintFlags = UnityEditor.Experimental.TerrainAPI.RepaintFlags

---@return System.Int32 value:1
UnityEditor.Experimental.TerrainAPI.RepaintFlags.UI = 1

---@class UnityEditor.Experimental.TerrainAPI.TerrainPaintTool : any
UnityEditor.Experimental.TerrainAPI.TerrainPaintTool = {}
---@type UnityEditor.Experimental.TerrainAPI.TerrainPaintTool
CS.UnityEditor.Experimental.TerrainAPI.TerrainPaintTool = UnityEditor.Experimental.TerrainAPI.TerrainPaintTool

---@return System.String
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:GetName()end
---@return System.String
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:GetDesc()end
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnEnable()end
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnDisable()end
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnEnterToolMode()end
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnExitToolMode()end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnSceneGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnSceneGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnInspectorGUI
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnInspectorGUI(terrain, editContext)end
---@param terrain UnityEngine.Terrain
---@param editContext UnityEditor.Experimental.TerrainAPI.IOnPaint
---@return System.Boolean
function UnityEditor.Experimental.TerrainAPI.TerrainPaintTool:OnPaint(terrain, editContext)end
---@class UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor : System.Object
UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor = {}
---@type UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor
CS.UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor = UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor

---@param terrain UnityEngine.Terrain
---@param brushTexture UnityEngine.Texture
---@param brushSize System.Single
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.ShowDefaultPreviewBrush(terrain, brushTexture, brushSize)end
---@return UnityEngine.Material
function UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.GetDefaultBrushPreviewMaterial()end
---@param heightmapPC UnityEngine.Experimental.TerrainAPI.PaintContext
---@param previewTexture UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview
---@param brushTexture UnityEngine.Texture
---@param brushXform UnityEngine.Experimental.TerrainAPI.BrushTransform
---@param proceduralMaterial UnityEngine.Material
---@param materialPassIndex System.Int32
---@return System.Void
function UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.DrawBrushPreview(heightmapPC, previewTexture, brushTexture, brushXform, proceduralMaterial, materialPassIndex)end
---@class UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview : System.Enum
UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview = {}
---@type UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview
CS.UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview = UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview

---@return System.Int32 value:0
UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview.SourceRenderTexture = 0
---@return System.Int32 value:1
UnityEditor.Experimental.TerrainAPI.TerrainPaintUtilityEditor.BrushPreview.DestinationRenderTexture = 1

