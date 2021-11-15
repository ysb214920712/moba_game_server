---@class UnityEngine.TextCore.FaceInfo : System.ValueType
---@field public familyName System.String @ setter getter
---@field public styleName System.String @ setter getter
---@field public pointSize System.Int32 @ setter getter
---@field public scale System.Single @ setter getter
---@field public lineHeight System.Single @ setter getter
---@field public ascentLine System.Single @ setter getter
---@field public capLine System.Single @ setter getter
---@field public meanLine System.Single @ setter getter
---@field public baseline System.Single @ setter getter
---@field public descentLine System.Single @ setter getter
---@field public superscriptOffset System.Single @ setter getter
---@field public superscriptSize System.Single @ setter getter
---@field public subscriptOffset System.Single @ setter getter
---@field public subscriptSize System.Single @ setter getter
---@field public underlineOffset System.Single @ setter getter
---@field public underlineThickness System.Single @ setter getter
---@field public strikethroughOffset System.Single @ setter getter
---@field public strikethroughThickness System.Single @ setter getter
---@field public tabWidth System.Single @ setter getter
UnityEngine.TextCore.FaceInfo = {}
---@type UnityEngine.TextCore.FaceInfo
CS.UnityEngine.TextCore.FaceInfo = UnityEngine.TextCore.FaceInfo

---@param other UnityEngine.TextCore.FaceInfo
---@return System.Boolean
function UnityEngine.TextCore.FaceInfo:Compare(other)end
---@class UnityEngine.TextCore.GlyphRect : System.ValueType
---@field public x System.Int32 @ setter getter
---@field public y System.Int32 @ setter getter
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public zero UnityEngine.TextCore.GlyphRect @static  getter
UnityEngine.TextCore.GlyphRect = {}
---@type UnityEngine.TextCore.GlyphRect
CS.UnityEngine.TextCore.GlyphRect = UnityEngine.TextCore.GlyphRect

---@return System.Int32
function UnityEngine.TextCore.GlyphRect:GetHashCode()end
---@overload fun(other:UnityEngine.TextCore.GlyphRect):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.TextCore.GlyphRect:Equals(obj)end
---@param lhs UnityEngine.TextCore.GlyphRect
---@param rhs UnityEngine.TextCore.GlyphRect
---@return System.Boolean
function UnityEngine.TextCore.GlyphRect.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.TextCore.GlyphRect
---@param rhs UnityEngine.TextCore.GlyphRect
---@return System.Boolean
function UnityEngine.TextCore.GlyphRect.op_Inequality(lhs, rhs)end
---@class UnityEngine.TextCore.GlyphMetrics : System.ValueType
---@field public width System.Single @ setter getter
---@field public height System.Single @ setter getter
---@field public horizontalBearingX System.Single @ setter getter
---@field public horizontalBearingY System.Single @ setter getter
---@field public horizontalAdvance System.Single @ setter getter
UnityEngine.TextCore.GlyphMetrics = {}
---@type UnityEngine.TextCore.GlyphMetrics
CS.UnityEngine.TextCore.GlyphMetrics = UnityEngine.TextCore.GlyphMetrics

---@return System.Int32
function UnityEngine.TextCore.GlyphMetrics:GetHashCode()end
---@overload fun(other:UnityEngine.TextCore.GlyphMetrics):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.TextCore.GlyphMetrics:Equals(obj)end
---@param lhs UnityEngine.TextCore.GlyphMetrics
---@param rhs UnityEngine.TextCore.GlyphMetrics
---@return System.Boolean
function UnityEngine.TextCore.GlyphMetrics.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.TextCore.GlyphMetrics
---@param rhs UnityEngine.TextCore.GlyphMetrics
---@return System.Boolean
function UnityEngine.TextCore.GlyphMetrics.op_Inequality(lhs, rhs)end
---@class UnityEngine.TextCore.Glyph : System.Object
---@field public index System.UInt32 @ setter getter
---@field public metrics UnityEngine.TextCore.GlyphMetrics @ setter getter
---@field public glyphRect UnityEngine.TextCore.GlyphRect @ setter getter
---@field public scale System.Single @ setter getter
---@field public atlasIndex System.Int32 @ setter getter
UnityEngine.TextCore.Glyph = {}
---@type UnityEngine.TextCore.Glyph
CS.UnityEngine.TextCore.Glyph = UnityEngine.TextCore.Glyph

---@param other UnityEngine.TextCore.Glyph
---@return System.Boolean
function UnityEngine.TextCore.Glyph:Compare(other)end
