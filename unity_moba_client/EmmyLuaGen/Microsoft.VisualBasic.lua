---@class Microsoft.VisualBasic.VBCodeProvider : System.CodeDom.Compiler.CodeDomProvider
---@field public FileExtension System.String @  getter
---@field public LanguageOptions System.CodeDom.Compiler.LanguageOptions @  getter
Microsoft.VisualBasic.VBCodeProvider = {}
---@type Microsoft.VisualBasic.VBCodeProvider
CS.Microsoft.VisualBasic.VBCodeProvider = Microsoft.VisualBasic.VBCodeProvider

---@return System.CodeDom.Compiler.ICodeGenerator
function Microsoft.VisualBasic.VBCodeProvider:CreateGenerator()end
---@return System.CodeDom.Compiler.ICodeCompiler
function Microsoft.VisualBasic.VBCodeProvider:CreateCompiler()end
---@param type System.Type
---@return System.ComponentModel.TypeConverter
function Microsoft.VisualBasic.VBCodeProvider:GetConverter(type)end
---@param member System.CodeDom.CodeTypeMember
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function Microsoft.VisualBasic.VBCodeProvider:GenerateCodeFromMember(member, writer, options)end
