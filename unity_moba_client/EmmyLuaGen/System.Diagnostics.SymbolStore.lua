---@class System.Diagnostics.SymbolStore.SymAddressKind : System.Enum
System.Diagnostics.SymbolStore.SymAddressKind = {}
---@type System.Diagnostics.SymbolStore.SymAddressKind
CS.System.Diagnostics.SymbolStore.SymAddressKind = System.Diagnostics.SymbolStore.SymAddressKind

---@return System.Int32 value:1
System.Diagnostics.SymbolStore.SymAddressKind.ILOffset = 1
---@return System.Int32 value:2
System.Diagnostics.SymbolStore.SymAddressKind.NativeRVA = 2
---@return System.Int32 value:3
System.Diagnostics.SymbolStore.SymAddressKind.NativeRegister = 3
---@return System.Int32 value:4
System.Diagnostics.SymbolStore.SymAddressKind.NativeRegisterRelative = 4
---@return System.Int32 value:5
System.Diagnostics.SymbolStore.SymAddressKind.NativeOffset = 5
---@return System.Int32 value:6
System.Diagnostics.SymbolStore.SymAddressKind.NativeRegisterRegister = 6
---@return System.Int32 value:7
System.Diagnostics.SymbolStore.SymAddressKind.NativeRegisterStack = 7
---@return System.Int32 value:8
System.Diagnostics.SymbolStore.SymAddressKind.NativeStackRegister = 8
---@return System.Int32 value:9
System.Diagnostics.SymbolStore.SymAddressKind.BitField = 9

---@class System.Diagnostics.SymbolStore.SymDocumentType : System.Object
---@field public Text System.Guid
System.Diagnostics.SymbolStore.SymDocumentType = {}
---@type System.Diagnostics.SymbolStore.SymDocumentType
CS.System.Diagnostics.SymbolStore.SymDocumentType = System.Diagnostics.SymbolStore.SymDocumentType

---@class System.Diagnostics.SymbolStore.SymLanguageType : System.Object
---@field public Basic System.Guid
---@field public C System.Guid
---@field public Cobol System.Guid
---@field public CPlusPlus System.Guid
---@field public CSharp System.Guid
---@field public ILAssembly System.Guid
---@field public Java System.Guid
---@field public JScript System.Guid
---@field public MCPlusPlus System.Guid
---@field public Pascal System.Guid
---@field public SMC System.Guid
System.Diagnostics.SymbolStore.SymLanguageType = {}
---@type System.Diagnostics.SymbolStore.SymLanguageType
CS.System.Diagnostics.SymbolStore.SymLanguageType = System.Diagnostics.SymbolStore.SymLanguageType

---@class System.Diagnostics.SymbolStore.SymLanguageVendor : System.Object
---@field public Microsoft System.Guid
System.Diagnostics.SymbolStore.SymLanguageVendor = {}
---@type System.Diagnostics.SymbolStore.SymLanguageVendor
CS.System.Diagnostics.SymbolStore.SymLanguageVendor = System.Diagnostics.SymbolStore.SymLanguageVendor

---@class System.Diagnostics.SymbolStore.SymbolToken : System.ValueType
System.Diagnostics.SymbolStore.SymbolToken = {}
---@type System.Diagnostics.SymbolStore.SymbolToken
CS.System.Diagnostics.SymbolStore.SymbolToken = System.Diagnostics.SymbolStore.SymbolToken

---@overload fun(obj:System.Diagnostics.SymbolStore.SymbolToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Diagnostics.SymbolStore.SymbolToken:Equals(obj)end
---@param a System.Diagnostics.SymbolStore.SymbolToken
---@param b System.Diagnostics.SymbolStore.SymbolToken
---@return System.Boolean
function System.Diagnostics.SymbolStore.SymbolToken.op_Equality(a, b)end
---@param a System.Diagnostics.SymbolStore.SymbolToken
---@param b System.Diagnostics.SymbolStore.SymbolToken
---@return System.Boolean
function System.Diagnostics.SymbolStore.SymbolToken.op_Inequality(a, b)end
---@return System.Int32
function System.Diagnostics.SymbolStore.SymbolToken:GetHashCode()end
---@return System.Int32
function System.Diagnostics.SymbolStore.SymbolToken:GetToken()end
