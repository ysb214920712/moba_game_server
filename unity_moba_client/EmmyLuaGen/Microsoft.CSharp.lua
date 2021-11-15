---@class Microsoft.CSharp.CSharpCodeProvider : System.CodeDom.Compiler.CodeDomProvider
---@field public FileExtension System.String @  getter
Microsoft.CSharp.CSharpCodeProvider = {}
---@type Microsoft.CSharp.CSharpCodeProvider
CS.Microsoft.CSharp.CSharpCodeProvider = Microsoft.CSharp.CSharpCodeProvider

---@return System.CodeDom.Compiler.ICodeGenerator
function Microsoft.CSharp.CSharpCodeProvider:CreateGenerator()end
---@return System.CodeDom.Compiler.ICodeCompiler
function Microsoft.CSharp.CSharpCodeProvider:CreateCompiler()end
---@param type System.Type
---@return System.ComponentModel.TypeConverter
function Microsoft.CSharp.CSharpCodeProvider:GetConverter(type)end
---@param member System.CodeDom.CodeTypeMember
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function Microsoft.CSharp.CSharpCodeProvider:GenerateCodeFromMember(member, writer, options)end
