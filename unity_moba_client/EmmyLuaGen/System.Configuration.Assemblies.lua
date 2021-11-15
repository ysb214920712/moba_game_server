---@class System.Configuration.Assemblies.AssemblyHash : System.ValueType
---@field public Algorithm System.Configuration.Assemblies.AssemblyHashAlgorithm @ setter getter
---@field public Empty System.Configuration.Assemblies.AssemblyHash
System.Configuration.Assemblies.AssemblyHash = {}
---@type System.Configuration.Assemblies.AssemblyHash
CS.System.Configuration.Assemblies.AssemblyHash = System.Configuration.Assemblies.AssemblyHash

---@return System.Object
function System.Configuration.Assemblies.AssemblyHash:Clone()end
---@return System.Byte[]
function System.Configuration.Assemblies.AssemblyHash:GetValue()end
---@param value System.Byte[]
---@return System.Void
function System.Configuration.Assemblies.AssemblyHash:SetValue(value)end
---@class System.Configuration.Assemblies.AssemblyHashAlgorithm : System.Enum
System.Configuration.Assemblies.AssemblyHashAlgorithm = {}
---@type System.Configuration.Assemblies.AssemblyHashAlgorithm
CS.System.Configuration.Assemblies.AssemblyHashAlgorithm = System.Configuration.Assemblies.AssemblyHashAlgorithm

---@return System.Int32 value:0
System.Configuration.Assemblies.AssemblyHashAlgorithm.None = 0

---@class System.Configuration.Assemblies.AssemblyVersionCompatibility : System.Enum
System.Configuration.Assemblies.AssemblyVersionCompatibility = {}
---@type System.Configuration.Assemblies.AssemblyVersionCompatibility
CS.System.Configuration.Assemblies.AssemblyVersionCompatibility = System.Configuration.Assemblies.AssemblyVersionCompatibility

---@return System.Int32 value:1
System.Configuration.Assemblies.AssemblyVersionCompatibility.SameMachine = 1
---@return System.Int32 value:2
System.Configuration.Assemblies.AssemblyVersionCompatibility.SameProcess = 2

