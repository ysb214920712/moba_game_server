---@class UnityEditor.Experimental.U2D.SpriteEditorExtension : System.Object
UnityEditor.Experimental.U2D.SpriteEditorExtension = {}
---@type UnityEditor.Experimental.U2D.SpriteEditorExtension
CS.UnityEditor.Experimental.U2D.SpriteEditorExtension = UnityEditor.Experimental.U2D.SpriteEditorExtension

---@class UnityEditor.Experimental.U2D.Vertex2DMetaData : System.ValueType
---@field public position UnityEngine.Vector2
---@field public boneWeight UnityEngine.BoneWeight
UnityEditor.Experimental.U2D.Vertex2DMetaData = {}
---@type UnityEditor.Experimental.U2D.Vertex2DMetaData
CS.UnityEditor.Experimental.U2D.Vertex2DMetaData = UnityEditor.Experimental.U2D.Vertex2DMetaData

---@class UnityEditor.Experimental.U2D.SpriteEditorModuleBase : System.Object
---@field public spriteEditor UnityEditor.Experimental.U2D.ISpriteEditor @ setter getter
---@field public moduleName System.String @  getter
UnityEditor.Experimental.U2D.SpriteEditorModuleBase = {}
---@type UnityEditor.Experimental.U2D.SpriteEditorModuleBase
CS.UnityEditor.Experimental.U2D.SpriteEditorModuleBase = UnityEditor.Experimental.U2D.SpriteEditorModuleBase

---@return System.Boolean
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:CanBeActivated()end
---@return System.Void
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:DoMainGUI()end
---@param drawArea UnityEngine.Rect
---@return System.Void
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:DoToolbarGUI(drawArea)end
---@return System.Void
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:OnModuleActivate()end
---@return System.Void
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:OnModuleDeactivate()end
---@return System.Void
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:DoPostGUI()end
---@param apply System.Boolean
---@return System.Boolean
function UnityEditor.Experimental.U2D.SpriteEditorModuleBase:ApplyRevert(apply)end
---@class UnityEditor.Experimental.U2D.RequireSpriteDataProviderAttribute : System.Attribute
UnityEditor.Experimental.U2D.RequireSpriteDataProviderAttribute = {}
---@type UnityEditor.Experimental.U2D.RequireSpriteDataProviderAttribute
CS.UnityEditor.Experimental.U2D.RequireSpriteDataProviderAttribute = UnityEditor.Experimental.U2D.RequireSpriteDataProviderAttribute

