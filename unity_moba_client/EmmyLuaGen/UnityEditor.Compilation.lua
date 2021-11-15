---@class UnityEditor.Compilation.CompilationPipeline : System.Object
UnityEditor.Compilation.CompilationPipeline = {}
---@type UnityEditor.Compilation.CompilationPipeline
CS.UnityEditor.Compilation.CompilationPipeline = UnityEditor.Compilation.CompilationPipeline

---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.CompilationPipeline.add_assemblyCompilationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.CompilationPipeline.remove_assemblyCompilationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.CompilationPipeline.add_assemblyCompilationFinished(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.CompilationPipeline.remove_assemblyCompilationFinished(value)end
---@overload fun(assembliesType:UnityEditor.Compilation.AssembliesType):UnityEditor.Compilation.Assembly[]
---@return UnityEditor.Compilation.Assembly[]
function UnityEditor.Compilation.CompilationPipeline.GetAssemblies()end
---@param sourceFilePath System.String
---@return System.String
function UnityEditor.Compilation.CompilationPipeline.GetAssemblyNameFromScriptPath(sourceFilePath)end
---@param sourceFilePath System.String
---@return System.String
function UnityEditor.Compilation.CompilationPipeline.GetAssemblyDefinitionFilePathFromScriptPath(sourceFilePath)end
---@param assemblyName System.String
---@return System.String
function UnityEditor.Compilation.CompilationPipeline.GetAssemblyDefinitionFilePathFromAssemblyName(assemblyName)end
---@return UnityEditor.Compilation.AssemblyDefinitionPlatform[]
function UnityEditor.Compilation.CompilationPipeline.GetAssemblyDefinitionPlatforms()end
---@return System.String[]
function UnityEditor.Compilation.CompilationPipeline.GetPrecompiledAssemblyNames()end
---@param assemblyName System.String
---@return System.String
function UnityEditor.Compilation.CompilationPipeline.GetPrecompiledAssemblyPathFromAssemblyName(assemblyName)end
---@class UnityEditor.Compilation.AssemblyBuilderStatus : System.Enum
UnityEditor.Compilation.AssemblyBuilderStatus = {}
---@type UnityEditor.Compilation.AssemblyBuilderStatus
CS.UnityEditor.Compilation.AssemblyBuilderStatus = UnityEditor.Compilation.AssemblyBuilderStatus

---@return System.Int32 value:0
UnityEditor.Compilation.AssemblyBuilderStatus.NotStarted = 0
---@return System.Int32 value:1
UnityEditor.Compilation.AssemblyBuilderStatus.IsCompiling = 1
---@return System.Int32 value:2
UnityEditor.Compilation.AssemblyBuilderStatus.Finished = 2

---@class UnityEditor.Compilation.AssemblyBuilderFlags : System.Enum
UnityEditor.Compilation.AssemblyBuilderFlags = {}
---@type UnityEditor.Compilation.AssemblyBuilderFlags
CS.UnityEditor.Compilation.AssemblyBuilderFlags = UnityEditor.Compilation.AssemblyBuilderFlags

---@return System.Int32 value:0
UnityEditor.Compilation.AssemblyBuilderFlags.None = 0
---@return System.Int32 value:1
UnityEditor.Compilation.AssemblyBuilderFlags.EditorAssembly = 1
---@return System.Int32 value:2
UnityEditor.Compilation.AssemblyBuilderFlags.DevelopmentBuild = 2

---@class UnityEditor.Compilation.AssemblyBuilder : System.Object
---@field public scriptPaths System.String[] @ setter getter
---@field public assemblyPath System.String @ setter getter
---@field public additionalDefines System.String[] @ setter getter
---@field public additionalReferences System.String[] @ setter getter
---@field public excludeReferences System.String[] @ setter getter
---@field public compilerOptions UnityEditor.Compilation.ScriptCompilerOptions @ setter getter
---@field public flags UnityEditor.Compilation.AssemblyBuilderFlags @ setter getter
---@field public buildTargetGroup UnityEditor.BuildTargetGroup @ setter getter
---@field public buildTarget UnityEditor.BuildTarget @ setter getter
---@field public defaultReferences System.String[] @  getter
---@field public defaultDefines System.String[] @  getter
---@field public status UnityEditor.Compilation.AssemblyBuilderStatus @  getter
UnityEditor.Compilation.AssemblyBuilder = {}
---@type UnityEditor.Compilation.AssemblyBuilder
CS.UnityEditor.Compilation.AssemblyBuilder = UnityEditor.Compilation.AssemblyBuilder

---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.AssemblyBuilder:add_buildStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.AssemblyBuilder:remove_buildStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.AssemblyBuilder:add_buildFinished(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Compilation.AssemblyBuilder:remove_buildFinished(value)end
---@return System.Boolean
function UnityEditor.Compilation.AssemblyBuilder:Build()end
---@class UnityEditor.Compilation.AssemblyDefinitionException : System.Exception
---@field public filePaths System.String[] @ setter getter
UnityEditor.Compilation.AssemblyDefinitionException = {}
---@type UnityEditor.Compilation.AssemblyDefinitionException
CS.UnityEditor.Compilation.AssemblyDefinitionException = UnityEditor.Compilation.AssemblyDefinitionException

---@class UnityEditor.Compilation.PrecompiledAssemblyException : System.Exception
---@field public filePaths System.String[] @ setter getter
UnityEditor.Compilation.PrecompiledAssemblyException = {}
---@type UnityEditor.Compilation.PrecompiledAssemblyException
CS.UnityEditor.Compilation.PrecompiledAssemblyException = UnityEditor.Compilation.PrecompiledAssemblyException

---@class UnityEditor.Compilation.AssemblyFlags : System.Enum
UnityEditor.Compilation.AssemblyFlags = {}
---@type UnityEditor.Compilation.AssemblyFlags
CS.UnityEditor.Compilation.AssemblyFlags = UnityEditor.Compilation.AssemblyFlags

---@return System.Int32 value:0
UnityEditor.Compilation.AssemblyFlags.None = 0
---@return System.Int32 value:1
UnityEditor.Compilation.AssemblyFlags.EditorAssembly = 1

---@class UnityEditor.Compilation.ScriptCompilerOptions : System.Object
---@field public AllowUnsafeCode System.Boolean @ setter getter
UnityEditor.Compilation.ScriptCompilerOptions = {}
---@type UnityEditor.Compilation.ScriptCompilerOptions
CS.UnityEditor.Compilation.ScriptCompilerOptions = UnityEditor.Compilation.ScriptCompilerOptions

---@class UnityEditor.Compilation.AssembliesType : System.Enum
UnityEditor.Compilation.AssembliesType = {}
---@type UnityEditor.Compilation.AssembliesType
CS.UnityEditor.Compilation.AssembliesType = UnityEditor.Compilation.AssembliesType

---@return System.Int32 value:0
UnityEditor.Compilation.AssembliesType.Editor = 0
---@return System.Int32 value:1
UnityEditor.Compilation.AssembliesType.Player = 1

---@class UnityEditor.Compilation.Assembly : System.Object
---@field public name System.String @ setter getter
---@field public outputPath System.String @ setter getter
---@field public sourceFiles System.String[] @ setter getter
---@field public defines System.String[] @ setter getter
---@field public assemblyReferences UnityEditor.Compilation.Assembly[] @ setter getter
---@field public compiledAssemblyReferences System.String[] @ setter getter
---@field public flags UnityEditor.Compilation.AssemblyFlags @ setter getter
---@field public compilerOptions UnityEditor.Compilation.ScriptCompilerOptions @ setter getter
---@field public allReferences System.String[] @  getter
UnityEditor.Compilation.Assembly = {}
---@type UnityEditor.Compilation.Assembly
CS.UnityEditor.Compilation.Assembly = UnityEditor.Compilation.Assembly

---@class UnityEditor.Compilation.AssemblyDefinitionPlatform : System.ValueType
---@field public Name System.String @ setter getter
---@field public DisplayName System.String @ setter getter
---@field public BuildTarget UnityEditor.BuildTarget @ setter getter
UnityEditor.Compilation.AssemblyDefinitionPlatform = {}
---@type UnityEditor.Compilation.AssemblyDefinitionPlatform
CS.UnityEditor.Compilation.AssemblyDefinitionPlatform = UnityEditor.Compilation.AssemblyDefinitionPlatform

---@class UnityEditor.Compilation.CompilerMessageType : System.Enum
UnityEditor.Compilation.CompilerMessageType = {}
---@type UnityEditor.Compilation.CompilerMessageType
CS.UnityEditor.Compilation.CompilerMessageType = UnityEditor.Compilation.CompilerMessageType

---@return System.Int32 value:0
UnityEditor.Compilation.CompilerMessageType.Error = 0
---@return System.Int32 value:1
UnityEditor.Compilation.CompilerMessageType.Warning = 1

---@class UnityEditor.Compilation.CompilerMessage : System.ValueType
---@field public message System.String
---@field public file System.String
---@field public line System.Int32
---@field public column System.Int32
---@field public type UnityEditor.Compilation.CompilerMessageType
UnityEditor.Compilation.CompilerMessage = {}
---@type UnityEditor.Compilation.CompilerMessage
CS.UnityEditor.Compilation.CompilerMessage = UnityEditor.Compilation.CompilerMessage

