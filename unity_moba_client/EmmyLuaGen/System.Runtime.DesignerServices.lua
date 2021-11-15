---@class System.Runtime.DesignerServices.WindowsRuntimeDesignerContext : System.Object
---@field public Name System.String @  getter
System.Runtime.DesignerServices.WindowsRuntimeDesignerContext = {}
---@type System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
CS.System.Runtime.DesignerServices.WindowsRuntimeDesignerContext = System.Runtime.DesignerServices.WindowsRuntimeDesignerContext

---@param assemblyName System.String
---@return System.Reflection.Assembly
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext:GetAssembly(assemblyName)end
---@param typeName System.String
---@return System.Type
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext:GetType(typeName)end
---@param paths System.Collections.Generic.IEnumerable
---@return System.Void
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext.InitializeSharedContext(paths)end
---@param context System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
---@return System.Void
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext.SetIterationContext(context)end
