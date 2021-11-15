---@class System.CodeDom.Compiler.TempFileCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public TempDir System.String @  getter
---@field public BasePath System.String @  getter
---@field public KeepFiles System.Boolean @ setter getter
System.CodeDom.Compiler.TempFileCollection = {}
---@type System.CodeDom.Compiler.TempFileCollection
CS.System.CodeDom.Compiler.TempFileCollection = System.CodeDom.Compiler.TempFileCollection

---@overload fun(fileExtension:System.String, keepFile:System.Boolean):System.String
---@param fileExtension System.String
---@return System.String
function System.CodeDom.Compiler.TempFileCollection:AddExtension(fileExtension)end
---@param fileName System.String
---@param keepFile System.Boolean
---@return System.Void
function System.CodeDom.Compiler.TempFileCollection:AddFile(fileName, keepFile)end
---@return System.Collections.IEnumerator
function System.CodeDom.Compiler.TempFileCollection:GetEnumerator()end
---@param fileNames System.String[]
---@param start System.Int32
---@return System.Void
function System.CodeDom.Compiler.TempFileCollection:CopyTo(fileNames, start)end
---@return System.Void
function System.CodeDom.Compiler.TempFileCollection:Delete()end
---@class System.CodeDom.Compiler.CodeCompiler : System.CodeDom.Compiler.CodeGenerator
System.CodeDom.Compiler.CodeCompiler = {}
---@type System.CodeDom.Compiler.CodeCompiler
CS.System.CodeDom.Compiler.CodeCompiler = System.CodeDom.Compiler.CodeCompiler

---@class System.CodeDom.Compiler.CodeDomProvider : System.ComponentModel.Component
---@field public FileExtension System.String @  getter
---@field public LanguageOptions System.CodeDom.Compiler.LanguageOptions @  getter
System.CodeDom.Compiler.CodeDomProvider = {}
---@type System.CodeDom.Compiler.CodeDomProvider
CS.System.CodeDom.Compiler.CodeDomProvider = System.CodeDom.Compiler.CodeDomProvider

---@overload fun(language:System.String, providerOptions:System.Collections.Generic.IDictionary):System.CodeDom.Compiler.CodeDomProvider
---@param language System.String
---@return System.CodeDom.Compiler.CodeDomProvider
function System.CodeDom.Compiler.CodeDomProvider.CreateProvider(language)end
---@param extension System.String
---@return System.String
function System.CodeDom.Compiler.CodeDomProvider.GetLanguageFromExtension(extension)end
---@param language System.String
---@return System.Boolean
function System.CodeDom.Compiler.CodeDomProvider.IsDefinedLanguage(language)end
---@param extension System.String
---@return System.Boolean
function System.CodeDom.Compiler.CodeDomProvider.IsDefinedExtension(extension)end
---@param language System.String
---@return System.CodeDom.Compiler.CompilerInfo
function System.CodeDom.Compiler.CodeDomProvider.GetCompilerInfo(language)end
---@return System.CodeDom.Compiler.CompilerInfo[]
function System.CodeDom.Compiler.CodeDomProvider.GetAllCompilerInfo()end
---@overload fun(output:System.IO.TextWriter):System.CodeDom.Compiler.ICodeGenerator
---@overload fun(fileName:System.String):System.CodeDom.Compiler.ICodeGenerator
---@return System.CodeDom.Compiler.ICodeGenerator
function System.CodeDom.Compiler.CodeDomProvider:CreateGenerator()end
---@return System.CodeDom.Compiler.ICodeCompiler
function System.CodeDom.Compiler.CodeDomProvider:CreateCompiler()end
---@return System.CodeDom.Compiler.ICodeParser
function System.CodeDom.Compiler.CodeDomProvider:CreateParser()end
---@param type System.Type
---@return System.ComponentModel.TypeConverter
function System.CodeDom.Compiler.CodeDomProvider:GetConverter(type)end
---@param options System.CodeDom.Compiler.CompilerParameters
---@param compilationUnits System.CodeDom.CodeCompileUnit[]
---@return System.CodeDom.Compiler.CompilerResults
function System.CodeDom.Compiler.CodeDomProvider:CompileAssemblyFromDom(options, compilationUnits)end
---@param options System.CodeDom.Compiler.CompilerParameters
---@param fileNames System.String[]
---@return System.CodeDom.Compiler.CompilerResults
function System.CodeDom.Compiler.CodeDomProvider:CompileAssemblyFromFile(options, fileNames)end
---@param options System.CodeDom.Compiler.CompilerParameters
---@param sources System.String[]
---@return System.CodeDom.Compiler.CompilerResults
function System.CodeDom.Compiler.CodeDomProvider:CompileAssemblyFromSource(options, sources)end
---@param value System.String
---@return System.Boolean
function System.CodeDom.Compiler.CodeDomProvider:IsValidIdentifier(value)end
---@param value System.String
---@return System.String
function System.CodeDom.Compiler.CodeDomProvider:CreateEscapedIdentifier(value)end
---@param value System.String
---@return System.String
function System.CodeDom.Compiler.CodeDomProvider:CreateValidIdentifier(value)end
---@param type System.CodeDom.CodeTypeReference
---@return System.String
function System.CodeDom.Compiler.CodeDomProvider:GetTypeOutput(type)end
---@param generatorSupport System.CodeDom.Compiler.GeneratorSupport
---@return System.Boolean
function System.CodeDom.Compiler.CodeDomProvider:Supports(generatorSupport)end
---@param expression System.CodeDom.CodeExpression
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromExpression(expression, writer, options)end
---@param statement System.CodeDom.CodeStatement
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromStatement(statement, writer, options)end
---@param codeNamespace System.CodeDom.CodeNamespace
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromNamespace(codeNamespace, writer, options)end
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromCompileUnit(compileUnit, writer, options)end
---@param codeType System.CodeDom.CodeTypeDeclaration
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromType(codeType, writer, options)end
---@param member System.CodeDom.CodeTypeMember
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeDomProvider:GenerateCodeFromMember(member, writer, options)end
---@param codeStream System.IO.TextReader
---@return System.CodeDom.CodeCompileUnit
function System.CodeDom.Compiler.CodeDomProvider:Parse(codeStream)end
---@class System.CodeDom.Compiler.CodeGenerator : System.Object
System.CodeDom.Compiler.CodeGenerator = {}
---@type System.CodeDom.Compiler.CodeGenerator
CS.System.CodeDom.Compiler.CodeGenerator = System.CodeDom.Compiler.CodeGenerator

---@param member System.CodeDom.CodeTypeMember
---@param writer System.IO.TextWriter
---@param options System.CodeDom.Compiler.CodeGeneratorOptions
---@return System.Void
function System.CodeDom.Compiler.CodeGenerator:GenerateCodeFromMember(member, writer, options)end
---@param value System.String
---@return System.Boolean
function System.CodeDom.Compiler.CodeGenerator.IsValidLanguageIndependentIdentifier(value)end
---@param e System.CodeDom.CodeObject
---@return System.Void
function System.CodeDom.Compiler.CodeGenerator.ValidateIdentifiers(e)end
---@class System.CodeDom.Compiler.CodeGeneratorOptions : System.Object
---@field public Item System.Object @ setter getter
---@field public IndentString System.String @ setter getter
---@field public BracingStyle System.String @ setter getter
---@field public ElseOnClosing System.Boolean @ setter getter
---@field public BlankLinesBetweenMembers System.Boolean @ setter getter
---@field public VerbatimOrder System.Boolean @ setter getter
System.CodeDom.Compiler.CodeGeneratorOptions = {}
---@type System.CodeDom.Compiler.CodeGeneratorOptions
CS.System.CodeDom.Compiler.CodeGeneratorOptions = System.CodeDom.Compiler.CodeGeneratorOptions

---@class System.CodeDom.Compiler.CodeParser : System.Object
System.CodeDom.Compiler.CodeParser = {}
---@type System.CodeDom.Compiler.CodeParser
CS.System.CodeDom.Compiler.CodeParser = System.CodeDom.Compiler.CodeParser

---@param codeStream System.IO.TextReader
---@return System.CodeDom.CodeCompileUnit
function System.CodeDom.Compiler.CodeParser:Parse(codeStream)end
---@class System.CodeDom.Compiler.CompilerError : System.Object
---@field public Line System.Int32 @ setter getter
---@field public Column System.Int32 @ setter getter
---@field public ErrorNumber System.String @ setter getter
---@field public ErrorText System.String @ setter getter
---@field public IsWarning System.Boolean @ setter getter
---@field public FileName System.String @ setter getter
System.CodeDom.Compiler.CompilerError = {}
---@type System.CodeDom.Compiler.CompilerError
CS.System.CodeDom.Compiler.CompilerError = System.CodeDom.Compiler.CompilerError

---@return System.String
function System.CodeDom.Compiler.CompilerError:ToString()end
---@class System.CodeDom.Compiler.CompilerErrorCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.Compiler.CompilerError @ setter getter
---@field public HasErrors System.Boolean @  getter
---@field public HasWarnings System.Boolean @  getter
System.CodeDom.Compiler.CompilerErrorCollection = {}
---@type System.CodeDom.Compiler.CompilerErrorCollection
CS.System.CodeDom.Compiler.CompilerErrorCollection = System.CodeDom.Compiler.CompilerErrorCollection

---@param value System.CodeDom.Compiler.CompilerError
---@return System.Int32
function System.CodeDom.Compiler.CompilerErrorCollection:Add(value)end
---@overload fun(value:System.CodeDom.Compiler.CompilerErrorCollection):System.Void
---@param value System.CodeDom.Compiler.CompilerError[]
---@return System.Void
function System.CodeDom.Compiler.CompilerErrorCollection:AddRange(value)end
---@param value System.CodeDom.Compiler.CompilerError
---@return System.Boolean
function System.CodeDom.Compiler.CompilerErrorCollection:Contains(value)end
---@param array System.CodeDom.Compiler.CompilerError[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.Compiler.CompilerErrorCollection:CopyTo(array, index)end
---@param value System.CodeDom.Compiler.CompilerError
---@return System.Int32
function System.CodeDom.Compiler.CompilerErrorCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.Compiler.CompilerError
---@return System.Void
function System.CodeDom.Compiler.CompilerErrorCollection:Insert(index, value)end
---@param value System.CodeDom.Compiler.CompilerError
---@return System.Void
function System.CodeDom.Compiler.CompilerErrorCollection:Remove(value)end
---@class System.CodeDom.Compiler.CompilerInfo : System.Object
---@field public CodeDomProviderType System.Type @  getter
---@field public IsCodeDomProviderTypeValid System.Boolean @  getter
System.CodeDom.Compiler.CompilerInfo = {}
---@type System.CodeDom.Compiler.CompilerInfo
CS.System.CodeDom.Compiler.CompilerInfo = System.CodeDom.Compiler.CompilerInfo

---@return System.String[]
function System.CodeDom.Compiler.CompilerInfo:GetLanguages()end
---@return System.String[]
function System.CodeDom.Compiler.CompilerInfo:GetExtensions()end
---@overload fun(providerOptions:System.Collections.Generic.IDictionary):System.CodeDom.Compiler.CodeDomProvider
---@return System.CodeDom.Compiler.CodeDomProvider
function System.CodeDom.Compiler.CompilerInfo:CreateProvider()end
---@return System.CodeDom.Compiler.CompilerParameters
function System.CodeDom.Compiler.CompilerInfo:CreateDefaultCompilerParameters()end
---@return System.Int32
function System.CodeDom.Compiler.CompilerInfo:GetHashCode()end
---@param o System.Object
---@return System.Boolean
function System.CodeDom.Compiler.CompilerInfo:Equals(o)end
---@class System.CodeDom.Compiler.CompilerParameters : System.Object
---@field public Evidence System.Security.Policy.Evidence @ setter getter
---@field public CoreAssemblyFileName System.String @ setter getter
---@field public GenerateExecutable System.Boolean @ setter getter
---@field public GenerateInMemory System.Boolean @ setter getter
---@field public ReferencedAssemblies System.Collections.Specialized.StringCollection @  getter
---@field public MainClass System.String @ setter getter
---@field public OutputAssembly System.String @ setter getter
---@field public TempFiles System.CodeDom.Compiler.TempFileCollection @ setter getter
---@field public IncludeDebugInformation System.Boolean @ setter getter
---@field public TreatWarningsAsErrors System.Boolean @ setter getter
---@field public WarningLevel System.Int32 @ setter getter
---@field public CompilerOptions System.String @ setter getter
---@field public Win32Resource System.String @ setter getter
---@field public EmbeddedResources System.Collections.Specialized.StringCollection @  getter
---@field public LinkedResources System.Collections.Specialized.StringCollection @  getter
---@field public UserToken System.IntPtr @ setter getter
System.CodeDom.Compiler.CompilerParameters = {}
---@type System.CodeDom.Compiler.CompilerParameters
CS.System.CodeDom.Compiler.CompilerParameters = System.CodeDom.Compiler.CompilerParameters

---@class System.CodeDom.Compiler.CompilerResults : System.Object
---@field public Evidence System.Security.Policy.Evidence @ setter getter
---@field public TempFiles System.CodeDom.Compiler.TempFileCollection @ setter getter
---@field public CompiledAssembly System.Reflection.Assembly @ setter getter
---@field public Errors System.CodeDom.Compiler.CompilerErrorCollection @  getter
---@field public Output System.Collections.Specialized.StringCollection @  getter
---@field public PathToAssembly System.String @ setter getter
---@field public NativeCompilerReturnValue System.Int32 @ setter getter
System.CodeDom.Compiler.CompilerResults = {}
---@type System.CodeDom.Compiler.CompilerResults
CS.System.CodeDom.Compiler.CompilerResults = System.CodeDom.Compiler.CompilerResults

---@class System.CodeDom.Compiler.GeneratorSupport : System.Enum
System.CodeDom.Compiler.GeneratorSupport = {}
---@type System.CodeDom.Compiler.GeneratorSupport
CS.System.CodeDom.Compiler.GeneratorSupport = System.CodeDom.Compiler.GeneratorSupport

---@return System.Int32 value:1
System.CodeDom.Compiler.GeneratorSupport.ArraysOfArrays = 1
---@return System.Int32 value:2
System.CodeDom.Compiler.GeneratorSupport.EntryPointMethod = 2
---@return System.Int32 value:4
System.CodeDom.Compiler.GeneratorSupport.GotoStatements = 4
---@return System.Int32 value:8
System.CodeDom.Compiler.GeneratorSupport.MultidimensionalArrays = 8
---@return System.Int32 value:16
System.CodeDom.Compiler.GeneratorSupport.StaticConstructors = 16

---@class System.CodeDom.Compiler.LanguageOptions : System.Enum
System.CodeDom.Compiler.LanguageOptions = {}
---@type System.CodeDom.Compiler.LanguageOptions
CS.System.CodeDom.Compiler.LanguageOptions = System.CodeDom.Compiler.LanguageOptions

---@return System.Int32 value:0
System.CodeDom.Compiler.LanguageOptions.None = 0
---@return System.Int32 value:1
System.CodeDom.Compiler.LanguageOptions.CaseInsensitive = 1

---@class System.CodeDom.Compiler.IndentedTextWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding @  getter
---@field public NewLine System.String @ setter getter
---@field public Indent System.Int32 @ setter getter
---@field public InnerWriter System.IO.TextWriter @  getter
---@field public DefaultTabString System.String
System.CodeDom.Compiler.IndentedTextWriter = {}
---@type System.CodeDom.Compiler.IndentedTextWriter
CS.System.CodeDom.Compiler.IndentedTextWriter = System.CodeDom.Compiler.IndentedTextWriter

---@return System.Void
function System.CodeDom.Compiler.IndentedTextWriter:Close()end
---@return System.Void
function System.CodeDom.Compiler.IndentedTextWriter:Flush()end
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(s:System.String):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@param value System.Boolean
---@return System.Void
function System.CodeDom.Compiler.IndentedTextWriter:Write(value)end
---@param s System.String
---@return System.Void
function System.CodeDom.Compiler.IndentedTextWriter:WriteLineNoTabs(s)end
---@overload fun(value:System.Boolean):System.Void
---@overload fun(value:System.Char):System.Void
---@overload fun(value:System.Double):System.Void
---@overload fun(value:System.Single):System.Void
---@overload fun(value:System.Int32):System.Void
---@overload fun(value:System.Int64):System.Void
---@overload fun(value:System.UInt32):System.Void
---@overload fun(s:System.String):System.Void
---@overload fun(buffer:System.Char[]):System.Void
---@overload fun(value:System.Object):System.Void
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@overload fun(format:System.String, arg0:System.Object):System.Void
---@overload fun(format:System.String, arg:System.Object[]):System.Void
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.Void
---@return System.Void
function System.CodeDom.Compiler.IndentedTextWriter:WriteLine()end
---@class System.CodeDom.Compiler.GeneratedCodeAttribute : System.Attribute
---@field public Tool System.String @  getter
---@field public Version System.String @  getter
System.CodeDom.Compiler.GeneratedCodeAttribute = {}
---@type System.CodeDom.Compiler.GeneratedCodeAttribute
CS.System.CodeDom.Compiler.GeneratedCodeAttribute = System.CodeDom.Compiler.GeneratedCodeAttribute

---@class System.CodeDom.Compiler.Executor : System.Object
System.CodeDom.Compiler.Executor = {}
---@type System.CodeDom.Compiler.Executor
CS.System.CodeDom.Compiler.Executor = System.CodeDom.Compiler.Executor

---@param cmd System.String
---@param tempFiles System.CodeDom.Compiler.TempFileCollection
---@return System.Void
function System.CodeDom.Compiler.Executor.ExecWait(cmd, tempFiles)end
---@overload fun(userToken:System.IntPtr, cmd:System.String, tempFiles:System.CodeDom.Compiler.TempFileCollection, outputName:System.String, errorName:System.String):System.Int32
---@overload fun(cmd:System.String, currentDir:System.String, tempFiles:System.CodeDom.Compiler.TempFileCollection, outputName:System.String, errorName:System.String):System.Int32
---@overload fun(userToken:System.IntPtr, cmd:System.String, currentDir:System.String, tempFiles:System.CodeDom.Compiler.TempFileCollection, outputName:System.String, errorName:System.String):System.Int32
---@param cmd System.String
---@param tempFiles System.CodeDom.Compiler.TempFileCollection
---@param outputName System.String
---@param errorName System.String
---@return System.Int32
function System.CodeDom.Compiler.Executor.ExecWaitWithCapture(cmd, tempFiles, outputName, errorName)end
