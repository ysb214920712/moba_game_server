---@class UnityEngine.TextCore.LowLevel.GlyphLoadFlags : System.Enum
UnityEngine.TextCore.LowLevel.GlyphLoadFlags = {}
---@type UnityEngine.TextCore.LowLevel.GlyphLoadFlags
CS.UnityEngine.TextCore.LowLevel.GlyphLoadFlags = UnityEngine.TextCore.LowLevel.GlyphLoadFlags

---@return System.Int32 value:0
UnityEngine.TextCore.LowLevel.GlyphLoadFlags.LOAD_DEFAULT = 0
---@return System.Int32 value:1
UnityEngine.TextCore.LowLevel.GlyphLoadFlags.LOAD_NO_SCALE = 1
---@return System.Int32 value:2
UnityEngine.TextCore.LowLevel.GlyphLoadFlags.LOAD_NO_HINTING = 2
---@return System.Int32 value:4
UnityEngine.TextCore.LowLevel.GlyphLoadFlags.LOAD_RENDER = 4
---@return System.Int32 value:8
UnityEngine.TextCore.LowLevel.GlyphLoadFlags.LOAD_NO_BITMAP = 8

---@class UnityEngine.TextCore.LowLevel.FontEngineError : System.Enum
UnityEngine.TextCore.LowLevel.FontEngineError = {}
---@type UnityEngine.TextCore.LowLevel.FontEngineError
CS.UnityEngine.TextCore.LowLevel.FontEngineError = UnityEngine.TextCore.LowLevel.FontEngineError

---@return System.Int32 value:0
UnityEngine.TextCore.LowLevel.FontEngineError.Success = 0
---@return System.Int32 value:1
UnityEngine.TextCore.LowLevel.FontEngineError.Invalid_File_Path = 1
---@return System.Int32 value:2
UnityEngine.TextCore.LowLevel.FontEngineError.Invalid_File_Format = 2
---@return System.Int32 value:3
UnityEngine.TextCore.LowLevel.FontEngineError.Invalid_File_Structure = 3
---@return System.Int32 value:4
UnityEngine.TextCore.LowLevel.FontEngineError.Invalid_File = 4
---@return System.Int32 value:8
UnityEngine.TextCore.LowLevel.FontEngineError.Invalid_Table = 8

---@class UnityEngine.TextCore.LowLevel.GlyphRenderMode : System.Enum
UnityEngine.TextCore.LowLevel.GlyphRenderMode = {}
---@type UnityEngine.TextCore.LowLevel.GlyphRenderMode
CS.UnityEngine.TextCore.LowLevel.GlyphRenderMode = UnityEngine.TextCore.LowLevel.GlyphRenderMode


---@class UnityEngine.TextCore.LowLevel.GlyphPackingMode : System.Enum
UnityEngine.TextCore.LowLevel.GlyphPackingMode = {}
---@type UnityEngine.TextCore.LowLevel.GlyphPackingMode
CS.UnityEngine.TextCore.LowLevel.GlyphPackingMode = UnityEngine.TextCore.LowLevel.GlyphPackingMode

---@return System.Int32 value:0
UnityEngine.TextCore.LowLevel.GlyphPackingMode.BestShortSideFit = 0
---@return System.Int32 value:1
UnityEngine.TextCore.LowLevel.GlyphPackingMode.BestLongSideFit = 1
---@return System.Int32 value:2
UnityEngine.TextCore.LowLevel.GlyphPackingMode.BestAreaFit = 2
---@return System.Int32 value:3
UnityEngine.TextCore.LowLevel.GlyphPackingMode.BottomLeftRule = 3
---@return System.Int32 value:4
UnityEngine.TextCore.LowLevel.GlyphPackingMode.ContactPointRule = 4

---@class UnityEngine.TextCore.LowLevel.FontEngine : System.Object
UnityEngine.TextCore.LowLevel.FontEngine = {}
---@type UnityEngine.TextCore.LowLevel.FontEngine
CS.UnityEngine.TextCore.LowLevel.FontEngine = UnityEngine.TextCore.LowLevel.FontEngine

---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.InitializeFontEngine()end
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.DestroyFontEngine()end
---@overload fun(sourceFontFile:System.Byte[]):UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(font:UnityEngine.Font):UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(filePath:System.String, pointSize:System.Int32):UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(sourceFontFile:System.Byte[], pointSize:System.Int32):UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(font:UnityEngine.Font, pointSize:System.Int32):UnityEngine.TextCore.LowLevel.FontEngineError
---@param filePath System.String
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.LoadFontFace(filePath)end
---@param pointSize System.Int32
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.SetFaceSize(pointSize)end
---@return UnityEngine.TextCore.FaceInfo
function UnityEngine.TextCore.LowLevel.FontEngine.GetFaceInfo()end
---@param unicode System.UInt32
---@param glyphIndex System.UInt32
---@return System.Boolean
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphIndex(unicode, glyphIndex)end
---@param unicode System.UInt32
---@param flags UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@param glyph UnityEngine.TextCore.Glyph
---@return System.Boolean
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphWithUnicodeValue(unicode, flags, glyph)end
---@param glyphIndex System.UInt32
---@param flags UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@param glyph UnityEngine.TextCore.Glyph
---@return System.Boolean
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphWithIndexValue(glyphIndex, flags, glyph)end
