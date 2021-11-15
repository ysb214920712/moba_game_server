---@class System.Runtime.InteropServices.Architecture : System.Enum
System.Runtime.InteropServices.Architecture = {}
---@type System.Runtime.InteropServices.Architecture
CS.System.Runtime.InteropServices.Architecture = System.Runtime.InteropServices.Architecture

---@return System.Int32 value:0
System.Runtime.InteropServices.Architecture.X86 = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.Architecture.X64 = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.Architecture.Arm = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.Architecture.Arm64 = 3

---@class System.Runtime.InteropServices.OSPlatform : System.ValueType
---@field public Linux System.Runtime.InteropServices.OSPlatform @static  getter
---@field public OSX System.Runtime.InteropServices.OSPlatform @static  getter
---@field public Windows System.Runtime.InteropServices.OSPlatform @static  getter
System.Runtime.InteropServices.OSPlatform = {}
---@type System.Runtime.InteropServices.OSPlatform
CS.System.Runtime.InteropServices.OSPlatform = System.Runtime.InteropServices.OSPlatform

---@param osPlatform System.String
---@return System.Runtime.InteropServices.OSPlatform
function System.Runtime.InteropServices.OSPlatform.Create(osPlatform)end
---@overload fun(obj:System.Object):System.Boolean
---@param other System.Runtime.InteropServices.OSPlatform
---@return System.Boolean
function System.Runtime.InteropServices.OSPlatform:Equals(other)end
---@return System.Int32
function System.Runtime.InteropServices.OSPlatform:GetHashCode()end
---@return System.String
function System.Runtime.InteropServices.OSPlatform:ToString()end
---@param left System.Runtime.InteropServices.OSPlatform
---@param right System.Runtime.InteropServices.OSPlatform
---@return System.Boolean
function System.Runtime.InteropServices.OSPlatform.op_Equality(left, right)end
---@param left System.Runtime.InteropServices.OSPlatform
---@param right System.Runtime.InteropServices.OSPlatform
---@return System.Boolean
function System.Runtime.InteropServices.OSPlatform.op_Inequality(left, right)end
---@class System.Runtime.InteropServices.ArrayWithOffset : System.ValueType
System.Runtime.InteropServices.ArrayWithOffset = {}
---@type System.Runtime.InteropServices.ArrayWithOffset
CS.System.Runtime.InteropServices.ArrayWithOffset = System.Runtime.InteropServices.ArrayWithOffset

---@return System.Object
function System.Runtime.InteropServices.ArrayWithOffset:GetArray()end
---@return System.Int32
function System.Runtime.InteropServices.ArrayWithOffset:GetOffset()end
---@return System.Int32
function System.Runtime.InteropServices.ArrayWithOffset:GetHashCode()end
---@overload fun(obj:System.Runtime.InteropServices.ArrayWithOffset):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Runtime.InteropServices.ArrayWithOffset:Equals(obj)end
---@param a System.Runtime.InteropServices.ArrayWithOffset
---@param b System.Runtime.InteropServices.ArrayWithOffset
---@return System.Boolean
function System.Runtime.InteropServices.ArrayWithOffset.op_Equality(a, b)end
---@param a System.Runtime.InteropServices.ArrayWithOffset
---@param b System.Runtime.InteropServices.ArrayWithOffset
---@return System.Boolean
function System.Runtime.InteropServices.ArrayWithOffset.op_Inequality(a, b)end
---@class System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute : System.Attribute
---@field public CallingConvention System.Runtime.InteropServices.CallingConvention @  getter
---@field public CharSet System.Runtime.InteropServices.CharSet
---@field public BestFitMapping System.Boolean
---@field public ThrowOnUnmappableChar System.Boolean
---@field public SetLastError System.Boolean
System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute = {}
---@type System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
CS.System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute = System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute

---@class System.Runtime.InteropServices.TypeIdentifierAttribute : System.Attribute
---@field public Scope System.String @  getter
---@field public Identifier System.String @  getter
System.Runtime.InteropServices.TypeIdentifierAttribute = {}
---@type System.Runtime.InteropServices.TypeIdentifierAttribute
CS.System.Runtime.InteropServices.TypeIdentifierAttribute = System.Runtime.InteropServices.TypeIdentifierAttribute

---@class System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute : System.Attribute
System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute = {}
---@type System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute
CS.System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute = System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute

---@class System.Runtime.InteropServices.DispIdAttribute : System.Attribute
---@field public Value System.Int32 @  getter
System.Runtime.InteropServices.DispIdAttribute = {}
---@type System.Runtime.InteropServices.DispIdAttribute
CS.System.Runtime.InteropServices.DispIdAttribute = System.Runtime.InteropServices.DispIdAttribute

---@class System.Runtime.InteropServices.ComInterfaceType : System.Enum
System.Runtime.InteropServices.ComInterfaceType = {}
---@type System.Runtime.InteropServices.ComInterfaceType
CS.System.Runtime.InteropServices.ComInterfaceType = System.Runtime.InteropServices.ComInterfaceType

---@return System.Int32 value:0
System.Runtime.InteropServices.ComInterfaceType.InterfaceIsDual = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComInterfaceType.InterfaceIsIUnknown = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComInterfaceType.InterfaceIsIDispatch = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComInterfaceType.InterfaceIsIInspectable = 3

---@class System.Runtime.InteropServices.InterfaceTypeAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.ComInterfaceType @  getter
System.Runtime.InteropServices.InterfaceTypeAttribute = {}
---@type System.Runtime.InteropServices.InterfaceTypeAttribute
CS.System.Runtime.InteropServices.InterfaceTypeAttribute = System.Runtime.InteropServices.InterfaceTypeAttribute

---@class System.Runtime.InteropServices.ComDefaultInterfaceAttribute : System.Attribute
---@field public Value System.Type @  getter
System.Runtime.InteropServices.ComDefaultInterfaceAttribute = {}
---@type System.Runtime.InteropServices.ComDefaultInterfaceAttribute
CS.System.Runtime.InteropServices.ComDefaultInterfaceAttribute = System.Runtime.InteropServices.ComDefaultInterfaceAttribute

---@class System.Runtime.InteropServices.ClassInterfaceType : System.Enum
System.Runtime.InteropServices.ClassInterfaceType = {}
---@type System.Runtime.InteropServices.ClassInterfaceType
CS.System.Runtime.InteropServices.ClassInterfaceType = System.Runtime.InteropServices.ClassInterfaceType

---@return System.Int32 value:0
System.Runtime.InteropServices.ClassInterfaceType.None = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ClassInterfaceType.AutoDispatch = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ClassInterfaceType.AutoDual = 2

---@class System.Runtime.InteropServices.ClassInterfaceAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.ClassInterfaceType @  getter
System.Runtime.InteropServices.ClassInterfaceAttribute = {}
---@type System.Runtime.InteropServices.ClassInterfaceAttribute
CS.System.Runtime.InteropServices.ClassInterfaceAttribute = System.Runtime.InteropServices.ClassInterfaceAttribute

---@class System.Runtime.InteropServices.ComVisibleAttribute : System.Attribute
---@field public Value System.Boolean @  getter
System.Runtime.InteropServices.ComVisibleAttribute = {}
---@type System.Runtime.InteropServices.ComVisibleAttribute
CS.System.Runtime.InteropServices.ComVisibleAttribute = System.Runtime.InteropServices.ComVisibleAttribute

---@class System.Runtime.InteropServices.TypeLibImportClassAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.TypeLibImportClassAttribute = {}
---@type System.Runtime.InteropServices.TypeLibImportClassAttribute
CS.System.Runtime.InteropServices.TypeLibImportClassAttribute = System.Runtime.InteropServices.TypeLibImportClassAttribute

---@class System.Runtime.InteropServices.LCIDConversionAttribute : System.Attribute
---@field public Value System.Int32 @  getter
System.Runtime.InteropServices.LCIDConversionAttribute = {}
---@type System.Runtime.InteropServices.LCIDConversionAttribute
CS.System.Runtime.InteropServices.LCIDConversionAttribute = System.Runtime.InteropServices.LCIDConversionAttribute

---@class System.Runtime.InteropServices.ComRegisterFunctionAttribute : System.Attribute
System.Runtime.InteropServices.ComRegisterFunctionAttribute = {}
---@type System.Runtime.InteropServices.ComRegisterFunctionAttribute
CS.System.Runtime.InteropServices.ComRegisterFunctionAttribute = System.Runtime.InteropServices.ComRegisterFunctionAttribute

---@class System.Runtime.InteropServices.ComUnregisterFunctionAttribute : System.Attribute
System.Runtime.InteropServices.ComUnregisterFunctionAttribute = {}
---@type System.Runtime.InteropServices.ComUnregisterFunctionAttribute
CS.System.Runtime.InteropServices.ComUnregisterFunctionAttribute = System.Runtime.InteropServices.ComUnregisterFunctionAttribute

---@class System.Runtime.InteropServices.ProgIdAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.ProgIdAttribute = {}
---@type System.Runtime.InteropServices.ProgIdAttribute
CS.System.Runtime.InteropServices.ProgIdAttribute = System.Runtime.InteropServices.ProgIdAttribute

---@class System.Runtime.InteropServices.ImportedFromTypeLibAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.ImportedFromTypeLibAttribute = {}
---@type System.Runtime.InteropServices.ImportedFromTypeLibAttribute
CS.System.Runtime.InteropServices.ImportedFromTypeLibAttribute = System.Runtime.InteropServices.ImportedFromTypeLibAttribute

---@class System.Runtime.InteropServices.IDispatchImplType : System.Enum
System.Runtime.InteropServices.IDispatchImplType = {}
---@type System.Runtime.InteropServices.IDispatchImplType
CS.System.Runtime.InteropServices.IDispatchImplType = System.Runtime.InteropServices.IDispatchImplType

---@return System.Int32 value:0
System.Runtime.InteropServices.IDispatchImplType.SystemDefinedImpl = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.IDispatchImplType.InternalImpl = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.IDispatchImplType.CompatibleImpl = 2

---@class System.Runtime.InteropServices.IDispatchImplAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.IDispatchImplType @  getter
System.Runtime.InteropServices.IDispatchImplAttribute = {}
---@type System.Runtime.InteropServices.IDispatchImplAttribute
CS.System.Runtime.InteropServices.IDispatchImplAttribute = System.Runtime.InteropServices.IDispatchImplAttribute

---@class System.Runtime.InteropServices.ComSourceInterfacesAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.ComSourceInterfacesAttribute = {}
---@type System.Runtime.InteropServices.ComSourceInterfacesAttribute
CS.System.Runtime.InteropServices.ComSourceInterfacesAttribute = System.Runtime.InteropServices.ComSourceInterfacesAttribute

---@class System.Runtime.InteropServices.ComConversionLossAttribute : System.Attribute
System.Runtime.InteropServices.ComConversionLossAttribute = {}
---@type System.Runtime.InteropServices.ComConversionLossAttribute
CS.System.Runtime.InteropServices.ComConversionLossAttribute = System.Runtime.InteropServices.ComConversionLossAttribute

---@class System.Runtime.InteropServices.TypeLibTypeFlags : System.Enum
System.Runtime.InteropServices.TypeLibTypeFlags = {}
---@type System.Runtime.InteropServices.TypeLibTypeFlags
CS.System.Runtime.InteropServices.TypeLibTypeFlags = System.Runtime.InteropServices.TypeLibTypeFlags

---@return System.Int32 value:1
System.Runtime.InteropServices.TypeLibTypeFlags.FAppObject = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TypeLibTypeFlags.FCanCreate = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TypeLibTypeFlags.FLicensed = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.TypeLibTypeFlags.FPreDeclId = 8

---@class System.Runtime.InteropServices.TypeLibFuncFlags : System.Enum
System.Runtime.InteropServices.TypeLibFuncFlags = {}
---@type System.Runtime.InteropServices.TypeLibFuncFlags
CS.System.Runtime.InteropServices.TypeLibFuncFlags = System.Runtime.InteropServices.TypeLibFuncFlags

---@return System.Int32 value:1
System.Runtime.InteropServices.TypeLibFuncFlags.FRestricted = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TypeLibFuncFlags.FSource = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TypeLibFuncFlags.FBindable = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.TypeLibFuncFlags.FRequestEdit = 8

---@class System.Runtime.InteropServices.TypeLibVarFlags : System.Enum
System.Runtime.InteropServices.TypeLibVarFlags = {}
---@type System.Runtime.InteropServices.TypeLibVarFlags
CS.System.Runtime.InteropServices.TypeLibVarFlags = System.Runtime.InteropServices.TypeLibVarFlags

---@return System.Int32 value:1
System.Runtime.InteropServices.TypeLibVarFlags.FReadOnly = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TypeLibVarFlags.FSource = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TypeLibVarFlags.FBindable = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.TypeLibVarFlags.FRequestEdit = 8

---@class System.Runtime.InteropServices.TypeLibTypeAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.TypeLibTypeFlags @  getter
System.Runtime.InteropServices.TypeLibTypeAttribute = {}
---@type System.Runtime.InteropServices.TypeLibTypeAttribute
CS.System.Runtime.InteropServices.TypeLibTypeAttribute = System.Runtime.InteropServices.TypeLibTypeAttribute

---@class System.Runtime.InteropServices.TypeLibFuncAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.TypeLibFuncFlags @  getter
System.Runtime.InteropServices.TypeLibFuncAttribute = {}
---@type System.Runtime.InteropServices.TypeLibFuncAttribute
CS.System.Runtime.InteropServices.TypeLibFuncAttribute = System.Runtime.InteropServices.TypeLibFuncAttribute

---@class System.Runtime.InteropServices.TypeLibVarAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.TypeLibVarFlags @  getter
System.Runtime.InteropServices.TypeLibVarAttribute = {}
---@type System.Runtime.InteropServices.TypeLibVarAttribute
CS.System.Runtime.InteropServices.TypeLibVarAttribute = System.Runtime.InteropServices.TypeLibVarAttribute

---@class System.Runtime.InteropServices.VarEnum : System.Enum
System.Runtime.InteropServices.VarEnum = {}
---@type System.Runtime.InteropServices.VarEnum
CS.System.Runtime.InteropServices.VarEnum = System.Runtime.InteropServices.VarEnum

---@return System.Int32 value:0
System.Runtime.InteropServices.VarEnum.VT_EMPTY = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.VarEnum.VT_NULL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.VarEnum.VT_I2 = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.VarEnum.VT_I4 = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.VarEnum.VT_R4 = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.VarEnum.VT_R8 = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.VarEnum.VT_CY = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.VarEnum.VT_DATE = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.VarEnum.VT_BSTR = 8
---@return System.Int32 value:9
System.Runtime.InteropServices.VarEnum.VT_DISPATCH = 9
---@return System.Int32 value:10
System.Runtime.InteropServices.VarEnum.VT_ERROR = 10
---@return System.Int32 value:11
System.Runtime.InteropServices.VarEnum.VT_BOOL = 11
---@return System.Int32 value:12
System.Runtime.InteropServices.VarEnum.VT_VARIANT = 12
---@return System.Int32 value:13
System.Runtime.InteropServices.VarEnum.VT_UNKNOWN = 13
---@return System.Int32 value:14
System.Runtime.InteropServices.VarEnum.VT_DECIMAL = 14
---@return System.Int32 value:16
System.Runtime.InteropServices.VarEnum.VT_I1 = 16
---@return System.Int32 value:17
System.Runtime.InteropServices.VarEnum.VT_UI1 = 17
---@return System.Int32 value:18
System.Runtime.InteropServices.VarEnum.VT_UI2 = 18
---@return System.Int32 value:19
System.Runtime.InteropServices.VarEnum.VT_UI4 = 19
---@return System.Int32 value:20
System.Runtime.InteropServices.VarEnum.VT_I8 = 20
---@return System.Int32 value:21
System.Runtime.InteropServices.VarEnum.VT_UI8 = 21
---@return System.Int32 value:22
System.Runtime.InteropServices.VarEnum.VT_INT = 22
---@return System.Int32 value:23
System.Runtime.InteropServices.VarEnum.VT_UINT = 23
---@return System.Int32 value:24
System.Runtime.InteropServices.VarEnum.VT_VOID = 24
---@return System.Int32 value:25
System.Runtime.InteropServices.VarEnum.VT_HRESULT = 25
---@return System.Int32 value:26
System.Runtime.InteropServices.VarEnum.VT_PTR = 26
---@return System.Int32 value:27
System.Runtime.InteropServices.VarEnum.VT_SAFEARRAY = 27
---@return System.Int32 value:28
System.Runtime.InteropServices.VarEnum.VT_CARRAY = 28
---@return System.Int32 value:29
System.Runtime.InteropServices.VarEnum.VT_USERDEFINED = 29
---@return System.Int32 value:30
System.Runtime.InteropServices.VarEnum.VT_LPSTR = 30
---@return System.Int32 value:31
System.Runtime.InteropServices.VarEnum.VT_LPWSTR = 31
---@return System.Int32 value:36
System.Runtime.InteropServices.VarEnum.VT_RECORD = 36

---@class System.Runtime.InteropServices.UnmanagedType : System.Enum
System.Runtime.InteropServices.UnmanagedType = {}
---@type System.Runtime.InteropServices.UnmanagedType
CS.System.Runtime.InteropServices.UnmanagedType = System.Runtime.InteropServices.UnmanagedType

---@return System.Int32 value:2
System.Runtime.InteropServices.UnmanagedType.Bool = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.UnmanagedType.I1 = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.UnmanagedType.U1 = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.UnmanagedType.I2 = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.UnmanagedType.U2 = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.UnmanagedType.I4 = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.UnmanagedType.U4 = 8
---@return System.Int32 value:9
System.Runtime.InteropServices.UnmanagedType.I8 = 9
---@return System.Int32 value:10
System.Runtime.InteropServices.UnmanagedType.U8 = 10
---@return System.Int32 value:11
System.Runtime.InteropServices.UnmanagedType.R4 = 11
---@return System.Int32 value:12
System.Runtime.InteropServices.UnmanagedType.R8 = 12
---@return System.Int32 value:15
System.Runtime.InteropServices.UnmanagedType.Currency = 15
---@return System.Int32 value:19
System.Runtime.InteropServices.UnmanagedType.BStr = 19
---@return System.Int32 value:20
System.Runtime.InteropServices.UnmanagedType.LPStr = 20
---@return System.Int32 value:21
System.Runtime.InteropServices.UnmanagedType.LPWStr = 21
---@return System.Int32 value:22
System.Runtime.InteropServices.UnmanagedType.LPTStr = 22
---@return System.Int32 value:23
System.Runtime.InteropServices.UnmanagedType.ByValTStr = 23
---@return System.Int32 value:25
System.Runtime.InteropServices.UnmanagedType.IUnknown = 25
---@return System.Int32 value:26
System.Runtime.InteropServices.UnmanagedType.IDispatch = 26
---@return System.Int32 value:27
System.Runtime.InteropServices.UnmanagedType.Struct = 27
---@return System.Int32 value:28
System.Runtime.InteropServices.UnmanagedType.Interface = 28
---@return System.Int32 value:29
System.Runtime.InteropServices.UnmanagedType.SafeArray = 29
---@return System.Int32 value:30
System.Runtime.InteropServices.UnmanagedType.ByValArray = 30
---@return System.Int32 value:31
System.Runtime.InteropServices.UnmanagedType.SysInt = 31
---@return System.Int32 value:32
System.Runtime.InteropServices.UnmanagedType.SysUInt = 32
---@return System.Int32 value:34
System.Runtime.InteropServices.UnmanagedType.VBByRefStr = 34
---@return System.Int32 value:35
System.Runtime.InteropServices.UnmanagedType.AnsiBStr = 35
---@return System.Int32 value:36
System.Runtime.InteropServices.UnmanagedType.TBStr = 36
---@return System.Int32 value:37
System.Runtime.InteropServices.UnmanagedType.VariantBool = 37

---@class System.Runtime.InteropServices.ComImportAttribute : System.Attribute
System.Runtime.InteropServices.ComImportAttribute = {}
---@type System.Runtime.InteropServices.ComImportAttribute
CS.System.Runtime.InteropServices.ComImportAttribute = System.Runtime.InteropServices.ComImportAttribute

---@class System.Runtime.InteropServices.GuidAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.GuidAttribute = {}
---@type System.Runtime.InteropServices.GuidAttribute
CS.System.Runtime.InteropServices.GuidAttribute = System.Runtime.InteropServices.GuidAttribute

---@class System.Runtime.InteropServices.PreserveSigAttribute : System.Attribute
System.Runtime.InteropServices.PreserveSigAttribute = {}
---@type System.Runtime.InteropServices.PreserveSigAttribute
CS.System.Runtime.InteropServices.PreserveSigAttribute = System.Runtime.InteropServices.PreserveSigAttribute

---@class System.Runtime.InteropServices.InAttribute : System.Attribute
System.Runtime.InteropServices.InAttribute = {}
---@type System.Runtime.InteropServices.InAttribute
CS.System.Runtime.InteropServices.InAttribute = System.Runtime.InteropServices.InAttribute

---@class System.Runtime.InteropServices.OutAttribute : System.Attribute
System.Runtime.InteropServices.OutAttribute = {}
---@type System.Runtime.InteropServices.OutAttribute
CS.System.Runtime.InteropServices.OutAttribute = System.Runtime.InteropServices.OutAttribute

---@class System.Runtime.InteropServices.OptionalAttribute : System.Attribute
System.Runtime.InteropServices.OptionalAttribute = {}
---@type System.Runtime.InteropServices.OptionalAttribute
CS.System.Runtime.InteropServices.OptionalAttribute = System.Runtime.InteropServices.OptionalAttribute

---@class System.Runtime.InteropServices.DllImportSearchPath : System.Enum
System.Runtime.InteropServices.DllImportSearchPath = {}
---@type System.Runtime.InteropServices.DllImportSearchPath
CS.System.Runtime.InteropServices.DllImportSearchPath = System.Runtime.InteropServices.DllImportSearchPath

---@return System.Int32 value:0
System.Runtime.InteropServices.DllImportSearchPath.LegacyBehavior = 0
---@return System.Int32 value:2
System.Runtime.InteropServices.DllImportSearchPath.AssemblyDirectory = 2

---@class System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute : System.Attribute
---@field public Paths System.Runtime.InteropServices.DllImportSearchPath @  getter
System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute = {}
---@type System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute
CS.System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute = System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute

---@class System.Runtime.InteropServices.DllImportAttribute : System.Attribute
---@field public Value System.String @  getter
---@field public EntryPoint System.String
---@field public CharSet System.Runtime.InteropServices.CharSet
---@field public SetLastError System.Boolean
---@field public ExactSpelling System.Boolean
---@field public PreserveSig System.Boolean
---@field public CallingConvention System.Runtime.InteropServices.CallingConvention
---@field public BestFitMapping System.Boolean
---@field public ThrowOnUnmappableChar System.Boolean
System.Runtime.InteropServices.DllImportAttribute = {}
---@type System.Runtime.InteropServices.DllImportAttribute
CS.System.Runtime.InteropServices.DllImportAttribute = System.Runtime.InteropServices.DllImportAttribute

---@class System.Runtime.InteropServices.StructLayoutAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.LayoutKind @  getter
---@field public Pack System.Int32
---@field public Size System.Int32
---@field public CharSet System.Runtime.InteropServices.CharSet
System.Runtime.InteropServices.StructLayoutAttribute = {}
---@type System.Runtime.InteropServices.StructLayoutAttribute
CS.System.Runtime.InteropServices.StructLayoutAttribute = System.Runtime.InteropServices.StructLayoutAttribute

---@class System.Runtime.InteropServices.FieldOffsetAttribute : System.Attribute
---@field public Value System.Int32 @  getter
System.Runtime.InteropServices.FieldOffsetAttribute = {}
---@type System.Runtime.InteropServices.FieldOffsetAttribute
CS.System.Runtime.InteropServices.FieldOffsetAttribute = System.Runtime.InteropServices.FieldOffsetAttribute

---@class System.Runtime.InteropServices.ComAliasNameAttribute : System.Attribute
---@field public Value System.String @  getter
System.Runtime.InteropServices.ComAliasNameAttribute = {}
---@type System.Runtime.InteropServices.ComAliasNameAttribute
CS.System.Runtime.InteropServices.ComAliasNameAttribute = System.Runtime.InteropServices.ComAliasNameAttribute

---@class System.Runtime.InteropServices.AutomationProxyAttribute : System.Attribute
---@field public Value System.Boolean @  getter
System.Runtime.InteropServices.AutomationProxyAttribute = {}
---@type System.Runtime.InteropServices.AutomationProxyAttribute
CS.System.Runtime.InteropServices.AutomationProxyAttribute = System.Runtime.InteropServices.AutomationProxyAttribute

---@class System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute : System.Attribute
---@field public MajorVersion System.Int32 @  getter
---@field public MinorVersion System.Int32 @  getter
System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute = {}
---@type System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
CS.System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute = System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute

---@class System.Runtime.InteropServices.CoClassAttribute : System.Attribute
---@field public CoClass System.Type @  getter
System.Runtime.InteropServices.CoClassAttribute = {}
---@type System.Runtime.InteropServices.CoClassAttribute
CS.System.Runtime.InteropServices.CoClassAttribute = System.Runtime.InteropServices.CoClassAttribute

---@class System.Runtime.InteropServices.ComEventInterfaceAttribute : System.Attribute
---@field public SourceInterface System.Type @  getter
---@field public EventProvider System.Type @  getter
System.Runtime.InteropServices.ComEventInterfaceAttribute = {}
---@type System.Runtime.InteropServices.ComEventInterfaceAttribute
CS.System.Runtime.InteropServices.ComEventInterfaceAttribute = System.Runtime.InteropServices.ComEventInterfaceAttribute

---@class System.Runtime.InteropServices.TypeLibVersionAttribute : System.Attribute
---@field public MajorVersion System.Int32 @  getter
---@field public MinorVersion System.Int32 @  getter
System.Runtime.InteropServices.TypeLibVersionAttribute = {}
---@type System.Runtime.InteropServices.TypeLibVersionAttribute
CS.System.Runtime.InteropServices.TypeLibVersionAttribute = System.Runtime.InteropServices.TypeLibVersionAttribute

---@class System.Runtime.InteropServices.ComCompatibleVersionAttribute : System.Attribute
---@field public MajorVersion System.Int32 @  getter
---@field public MinorVersion System.Int32 @  getter
---@field public BuildNumber System.Int32 @  getter
---@field public RevisionNumber System.Int32 @  getter
System.Runtime.InteropServices.ComCompatibleVersionAttribute = {}
---@type System.Runtime.InteropServices.ComCompatibleVersionAttribute
CS.System.Runtime.InteropServices.ComCompatibleVersionAttribute = System.Runtime.InteropServices.ComCompatibleVersionAttribute

---@class System.Runtime.InteropServices.BestFitMappingAttribute : System.Attribute
---@field public BestFitMapping System.Boolean @  getter
---@field public ThrowOnUnmappableChar System.Boolean
System.Runtime.InteropServices.BestFitMappingAttribute = {}
---@type System.Runtime.InteropServices.BestFitMappingAttribute
CS.System.Runtime.InteropServices.BestFitMappingAttribute = System.Runtime.InteropServices.BestFitMappingAttribute

---@class System.Runtime.InteropServices.DefaultCharSetAttribute : System.Attribute
---@field public CharSet System.Runtime.InteropServices.CharSet @  getter
System.Runtime.InteropServices.DefaultCharSetAttribute = {}
---@type System.Runtime.InteropServices.DefaultCharSetAttribute
CS.System.Runtime.InteropServices.DefaultCharSetAttribute = System.Runtime.InteropServices.DefaultCharSetAttribute

---@class System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute : System.Attribute
System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute = {}
---@type System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute
CS.System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute = System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute

---@class System.Runtime.InteropServices.ManagedToNativeComInteropStubAttribute : System.Attribute
---@field public ClassType System.Type @  getter
---@field public MethodName System.String @  getter
System.Runtime.InteropServices.ManagedToNativeComInteropStubAttribute = {}
---@type System.Runtime.InteropServices.ManagedToNativeComInteropStubAttribute
CS.System.Runtime.InteropServices.ManagedToNativeComInteropStubAttribute = System.Runtime.InteropServices.ManagedToNativeComInteropStubAttribute

---@class System.Runtime.InteropServices.BStrWrapper : System.Object
---@field public WrappedObject System.String @  getter
System.Runtime.InteropServices.BStrWrapper = {}
---@type System.Runtime.InteropServices.BStrWrapper
CS.System.Runtime.InteropServices.BStrWrapper = System.Runtime.InteropServices.BStrWrapper

---@class System.Runtime.InteropServices.CallingConvention : System.Enum
System.Runtime.InteropServices.CallingConvention = {}
---@type System.Runtime.InteropServices.CallingConvention
CS.System.Runtime.InteropServices.CallingConvention = System.Runtime.InteropServices.CallingConvention

---@return System.Int32 value:1
System.Runtime.InteropServices.CallingConvention.Winapi = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.CallingConvention.Cdecl = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.CallingConvention.StdCall = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.CallingConvention.ThisCall = 4

---@class System.Runtime.InteropServices.CharSet : System.Enum
System.Runtime.InteropServices.CharSet = {}
---@type System.Runtime.InteropServices.CharSet
CS.System.Runtime.InteropServices.CharSet = System.Runtime.InteropServices.CharSet

---@return System.Int32 value:1
System.Runtime.InteropServices.CharSet.None = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.CharSet.Ansi = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.CharSet.Unicode = 3

---@class System.Runtime.InteropServices.COMException : System.Runtime.InteropServices.ExternalException
System.Runtime.InteropServices.COMException = {}
---@type System.Runtime.InteropServices.COMException
CS.System.Runtime.InteropServices.COMException = System.Runtime.InteropServices.COMException

---@return System.String
function System.Runtime.InteropServices.COMException:ToString()end
---@class System.Runtime.InteropServices.ComMemberType : System.Enum
System.Runtime.InteropServices.ComMemberType = {}
---@type System.Runtime.InteropServices.ComMemberType
CS.System.Runtime.InteropServices.ComMemberType = System.Runtime.InteropServices.ComMemberType

---@return System.Int32 value:0
System.Runtime.InteropServices.ComMemberType.Method = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComMemberType.PropGet = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComMemberType.PropSet = 2

---@class System.Runtime.InteropServices.CriticalHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsClosed System.Boolean @  getter
---@field public IsInvalid System.Boolean @  getter
System.Runtime.InteropServices.CriticalHandle = {}
---@type System.Runtime.InteropServices.CriticalHandle
CS.System.Runtime.InteropServices.CriticalHandle = System.Runtime.InteropServices.CriticalHandle

---@return System.Void
function System.Runtime.InteropServices.CriticalHandle:Close()end
---@return System.Void
function System.Runtime.InteropServices.CriticalHandle:Dispose()end
---@return System.Void
function System.Runtime.InteropServices.CriticalHandle:SetHandleAsInvalid()end
---@class System.Runtime.InteropServices.CurrencyWrapper : System.Object
---@field public WrappedObject System.Decimal @  getter
System.Runtime.InteropServices.CurrencyWrapper = {}
---@type System.Runtime.InteropServices.CurrencyWrapper
CS.System.Runtime.InteropServices.CurrencyWrapper = System.Runtime.InteropServices.CurrencyWrapper

---@class System.Runtime.InteropServices.DispatchWrapper : System.Object
---@field public WrappedObject System.Object @  getter
System.Runtime.InteropServices.DispatchWrapper = {}
---@type System.Runtime.InteropServices.DispatchWrapper
CS.System.Runtime.InteropServices.DispatchWrapper = System.Runtime.InteropServices.DispatchWrapper

---@class System.Runtime.InteropServices.ErrorWrapper : System.Object
---@field public ErrorCode System.Int32 @  getter
System.Runtime.InteropServices.ErrorWrapper = {}
---@type System.Runtime.InteropServices.ErrorWrapper
CS.System.Runtime.InteropServices.ErrorWrapper = System.Runtime.InteropServices.ErrorWrapper

---@class System.Runtime.InteropServices.ExternalException : System.SystemException
---@field public ErrorCode System.Int32 @  getter
System.Runtime.InteropServices.ExternalException = {}
---@type System.Runtime.InteropServices.ExternalException
CS.System.Runtime.InteropServices.ExternalException = System.Runtime.InteropServices.ExternalException

---@return System.String
function System.Runtime.InteropServices.ExternalException:ToString()end
---@class System.Runtime.InteropServices.HandleRef : System.ValueType
---@field public Wrapper System.Object @  getter
---@field public Handle System.IntPtr @  getter
System.Runtime.InteropServices.HandleRef = {}
---@type System.Runtime.InteropServices.HandleRef
CS.System.Runtime.InteropServices.HandleRef = System.Runtime.InteropServices.HandleRef

---@param value System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Runtime.InteropServices.HandleRef.op_Explicit(value)end
---@param value System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Runtime.InteropServices.HandleRef.ToIntPtr(value)end
---@class System.Runtime.InteropServices.CustomQueryInterfaceResult : System.Enum
System.Runtime.InteropServices.CustomQueryInterfaceResult = {}
---@type System.Runtime.InteropServices.CustomQueryInterfaceResult
CS.System.Runtime.InteropServices.CustomQueryInterfaceResult = System.Runtime.InteropServices.CustomQueryInterfaceResult

---@return System.Int32 value:0
System.Runtime.InteropServices.CustomQueryInterfaceResult.Handled = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.CustomQueryInterfaceResult.NotHandled = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.CustomQueryInterfaceResult.Failed = 2

---@class System.Runtime.InteropServices.InvalidComObjectException : System.SystemException
System.Runtime.InteropServices.InvalidComObjectException = {}
---@type System.Runtime.InteropServices.InvalidComObjectException
CS.System.Runtime.InteropServices.InvalidComObjectException = System.Runtime.InteropServices.InvalidComObjectException

---@class System.Runtime.InteropServices.InvalidOleVariantTypeException : System.SystemException
System.Runtime.InteropServices.InvalidOleVariantTypeException = {}
---@type System.Runtime.InteropServices.InvalidOleVariantTypeException
CS.System.Runtime.InteropServices.InvalidOleVariantTypeException = System.Runtime.InteropServices.InvalidOleVariantTypeException

---@class System.Runtime.InteropServices.AssemblyRegistrationFlags : System.Enum
System.Runtime.InteropServices.AssemblyRegistrationFlags = {}
---@type System.Runtime.InteropServices.AssemblyRegistrationFlags
CS.System.Runtime.InteropServices.AssemblyRegistrationFlags = System.Runtime.InteropServices.AssemblyRegistrationFlags

---@return System.Int32 value:0
System.Runtime.InteropServices.AssemblyRegistrationFlags.None = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.AssemblyRegistrationFlags.SetCodeBase = 1

---@class System.Runtime.InteropServices.LayoutKind : System.Enum
System.Runtime.InteropServices.LayoutKind = {}
---@type System.Runtime.InteropServices.LayoutKind
CS.System.Runtime.InteropServices.LayoutKind = System.Runtime.InteropServices.LayoutKind

---@return System.Int32 value:0
System.Runtime.InteropServices.LayoutKind.Sequential = 0
---@return System.Int32 value:2
System.Runtime.InteropServices.LayoutKind.Explicit = 2

---@class System.Runtime.InteropServices.MarshalDirectiveException : System.SystemException
System.Runtime.InteropServices.MarshalDirectiveException = {}
---@type System.Runtime.InteropServices.MarshalDirectiveException
CS.System.Runtime.InteropServices.MarshalDirectiveException = System.Runtime.InteropServices.MarshalDirectiveException

---@class System.Runtime.InteropServices.RuntimeEnvironment : System.Object
---@field public SystemConfigurationFile System.String @static  getter
System.Runtime.InteropServices.RuntimeEnvironment = {}
---@type System.Runtime.InteropServices.RuntimeEnvironment
CS.System.Runtime.InteropServices.RuntimeEnvironment = System.Runtime.InteropServices.RuntimeEnvironment

---@param a System.Reflection.Assembly
---@return System.Boolean
function System.Runtime.InteropServices.RuntimeEnvironment.FromGlobalAccessCache(a)end
---@return System.String
function System.Runtime.InteropServices.RuntimeEnvironment.GetSystemVersion()end
---@return System.String
function System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeDirectory()end
---@param clsid System.Guid
---@param riid System.Guid
---@return System.IntPtr
function System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeInterfaceAsIntPtr(clsid, riid)end
---@param clsid System.Guid
---@param riid System.Guid
---@return System.Object
function System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeInterfaceAsObject(clsid, riid)end
---@class System.Runtime.InteropServices.SafeArrayRankMismatchException : System.SystemException
System.Runtime.InteropServices.SafeArrayRankMismatchException = {}
---@type System.Runtime.InteropServices.SafeArrayRankMismatchException
CS.System.Runtime.InteropServices.SafeArrayRankMismatchException = System.Runtime.InteropServices.SafeArrayRankMismatchException

---@class System.Runtime.InteropServices.SafeArrayTypeMismatchException : System.SystemException
System.Runtime.InteropServices.SafeArrayTypeMismatchException = {}
---@type System.Runtime.InteropServices.SafeArrayTypeMismatchException
CS.System.Runtime.InteropServices.SafeArrayTypeMismatchException = System.Runtime.InteropServices.SafeArrayTypeMismatchException

---@class System.Runtime.InteropServices.SafeHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsClosed System.Boolean @  getter
---@field public IsInvalid System.Boolean @  getter
System.Runtime.InteropServices.SafeHandle = {}
---@type System.Runtime.InteropServices.SafeHandle
CS.System.Runtime.InteropServices.SafeHandle = System.Runtime.InteropServices.SafeHandle

---@return System.IntPtr
function System.Runtime.InteropServices.SafeHandle:DangerousGetHandle()end
---@return System.Void
function System.Runtime.InteropServices.SafeHandle:Close()end
---@return System.Void
function System.Runtime.InteropServices.SafeHandle:Dispose()end
---@return System.Void
function System.Runtime.InteropServices.SafeHandle:SetHandleAsInvalid()end
---@param success System.Boolean
---@return System.Void
function System.Runtime.InteropServices.SafeHandle:DangerousAddRef(success)end
---@return System.Void
function System.Runtime.InteropServices.SafeHandle:DangerousRelease()end
---@class System.Runtime.InteropServices.SEHException : System.Runtime.InteropServices.ExternalException
System.Runtime.InteropServices.SEHException = {}
---@type System.Runtime.InteropServices.SEHException
CS.System.Runtime.InteropServices.SEHException = System.Runtime.InteropServices.SEHException

---@return System.Boolean
function System.Runtime.InteropServices.SEHException:CanResume()end
---@class System.Runtime.InteropServices.CONNECTDATA : System.ValueType
---@field public pUnk System.Object
---@field public dwCookie System.Int32
System.Runtime.InteropServices.CONNECTDATA = {}
---@type System.Runtime.InteropServices.CONNECTDATA
CS.System.Runtime.InteropServices.CONNECTDATA = System.Runtime.InteropServices.CONNECTDATA

---@class System.Runtime.InteropServices.TYPEKIND : System.Enum
System.Runtime.InteropServices.TYPEKIND = {}
---@type System.Runtime.InteropServices.TYPEKIND
CS.System.Runtime.InteropServices.TYPEKIND = System.Runtime.InteropServices.TYPEKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.TYPEKIND.TKIND_ENUM = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.TYPEKIND.TKIND_RECORD = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TYPEKIND.TKIND_MODULE = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.TYPEKIND.TKIND_INTERFACE = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.TYPEKIND.TKIND_DISPATCH = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.TYPEKIND.TKIND_COCLASS = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.TYPEKIND.TKIND_ALIAS = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.TYPEKIND.TKIND_UNION = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.TYPEKIND.TKIND_MAX = 8

---@class System.Runtime.InteropServices.TYPEFLAGS : System.Enum
System.Runtime.InteropServices.TYPEFLAGS = {}
---@type System.Runtime.InteropServices.TYPEFLAGS
CS.System.Runtime.InteropServices.TYPEFLAGS = System.Runtime.InteropServices.TYPEFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.TYPEFLAGS.TYPEFLAG_FAPPOBJECT = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TYPEFLAGS.TYPEFLAG_FCANCREATE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TYPEFLAGS.TYPEFLAG_FLICENSED = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.TYPEFLAGS.TYPEFLAG_FPREDECLID = 8

---@class System.Runtime.InteropServices.IMPLTYPEFLAGS : System.Enum
System.Runtime.InteropServices.IMPLTYPEFLAGS = {}
---@type System.Runtime.InteropServices.IMPLTYPEFLAGS
CS.System.Runtime.InteropServices.IMPLTYPEFLAGS = System.Runtime.InteropServices.IMPLTYPEFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.IMPLTYPEFLAGS.IMPLTYPEFLAG_FDEFAULT = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.IMPLTYPEFLAGS.IMPLTYPEFLAG_FSOURCE = 2

---@class System.Runtime.InteropServices.TYPEATTR : System.ValueType
---@field public MEMBER_ID_NIL System.Int32
---@field public guid System.Guid
---@field public lcid System.Int32
---@field public dwReserved System.Int32
---@field public memidConstructor System.Int32
---@field public memidDestructor System.Int32
---@field public lpstrSchema System.IntPtr
---@field public cbSizeInstance System.Int32
---@field public typekind System.Runtime.InteropServices.TYPEKIND
---@field public cFuncs System.Int16
---@field public cVars System.Int16
---@field public cImplTypes System.Int16
---@field public cbSizeVft System.Int16
---@field public cbAlignment System.Int16
---@field public wTypeFlags System.Runtime.InteropServices.TYPEFLAGS
---@field public wMajorVerNum System.Int16
---@field public wMinorVerNum System.Int16
---@field public tdescAlias System.Runtime.InteropServices.TYPEDESC
---@field public idldescType System.Runtime.InteropServices.IDLDESC
System.Runtime.InteropServices.TYPEATTR = {}
---@type System.Runtime.InteropServices.TYPEATTR
CS.System.Runtime.InteropServices.TYPEATTR = System.Runtime.InteropServices.TYPEATTR

---@class System.Runtime.InteropServices.FUNCDESC : System.ValueType
---@field public memid System.Int32
---@field public lprgscode System.IntPtr
---@field public lprgelemdescParam System.IntPtr
---@field public funckind System.Runtime.InteropServices.FUNCKIND
---@field public invkind System.Runtime.InteropServices.INVOKEKIND
---@field public callconv System.Runtime.InteropServices.CALLCONV
---@field public cParams System.Int16
---@field public cParamsOpt System.Int16
---@field public oVft System.Int16
---@field public cScodes System.Int16
---@field public elemdescFunc System.Runtime.InteropServices.ELEMDESC
---@field public wFuncFlags System.Int16
System.Runtime.InteropServices.FUNCDESC = {}
---@type System.Runtime.InteropServices.FUNCDESC
CS.System.Runtime.InteropServices.FUNCDESC = System.Runtime.InteropServices.FUNCDESC

---@class System.Runtime.InteropServices.IDLFLAG : System.Enum
System.Runtime.InteropServices.IDLFLAG = {}
---@type System.Runtime.InteropServices.IDLFLAG
CS.System.Runtime.InteropServices.IDLFLAG = System.Runtime.InteropServices.IDLFLAG

---@return System.Int32 value:0
System.Runtime.InteropServices.IDLFLAG.IDLFLAG_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.IDLFLAG.IDLFLAG_FIN = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.IDLFLAG.IDLFLAG_FOUT = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.IDLFLAG.IDLFLAG_FLCID = 4

---@class System.Runtime.InteropServices.IDLDESC : System.ValueType
---@field public dwReserved System.Int32
---@field public wIDLFlags System.Runtime.InteropServices.IDLFLAG
System.Runtime.InteropServices.IDLDESC = {}
---@type System.Runtime.InteropServices.IDLDESC
CS.System.Runtime.InteropServices.IDLDESC = System.Runtime.InteropServices.IDLDESC

---@class System.Runtime.InteropServices.PARAMFLAG : System.Enum
System.Runtime.InteropServices.PARAMFLAG = {}
---@type System.Runtime.InteropServices.PARAMFLAG
CS.System.Runtime.InteropServices.PARAMFLAG = System.Runtime.InteropServices.PARAMFLAG

---@return System.Int32 value:0
System.Runtime.InteropServices.PARAMFLAG.PARAMFLAG_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.PARAMFLAG.PARAMFLAG_FIN = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.PARAMFLAG.PARAMFLAG_FOUT = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.PARAMFLAG.PARAMFLAG_FLCID = 4

---@class System.Runtime.InteropServices.PARAMDESC : System.ValueType
---@field public lpVarValue System.IntPtr
---@field public wParamFlags System.Runtime.InteropServices.PARAMFLAG
System.Runtime.InteropServices.PARAMDESC = {}
---@type System.Runtime.InteropServices.PARAMDESC
CS.System.Runtime.InteropServices.PARAMDESC = System.Runtime.InteropServices.PARAMDESC

---@class System.Runtime.InteropServices.TYPEDESC : System.ValueType
---@field public lpValue System.IntPtr
---@field public vt System.Int16
System.Runtime.InteropServices.TYPEDESC = {}
---@type System.Runtime.InteropServices.TYPEDESC
CS.System.Runtime.InteropServices.TYPEDESC = System.Runtime.InteropServices.TYPEDESC

---@class System.Runtime.InteropServices.ELEMDESC : System.ValueType
---@field public tdesc System.Runtime.InteropServices.TYPEDESC
---@field public desc System.Runtime.InteropServices.ELEMDESC.DESCUNION
System.Runtime.InteropServices.ELEMDESC = {}
---@type System.Runtime.InteropServices.ELEMDESC
CS.System.Runtime.InteropServices.ELEMDESC = System.Runtime.InteropServices.ELEMDESC

---@class System.Runtime.InteropServices.ELEMDESC.DESCUNION : System.ValueType
---@field public idldesc System.Runtime.InteropServices.IDLDESC
---@field public paramdesc System.Runtime.InteropServices.PARAMDESC
System.Runtime.InteropServices.ELEMDESC.DESCUNION = {}
---@type System.Runtime.InteropServices.ELEMDESC.DESCUNION
CS.System.Runtime.InteropServices.ELEMDESC.DESCUNION = System.Runtime.InteropServices.ELEMDESC.DESCUNION

---@class System.Runtime.InteropServices.VARDESC : System.ValueType
---@field public memid System.Int32
---@field public lpstrSchema System.String
---@field public elemdescVar System.Runtime.InteropServices.ELEMDESC
---@field public wVarFlags System.Int16
---@field public varkind System.Runtime.InteropServices.VarEnum
System.Runtime.InteropServices.VARDESC = {}
---@type System.Runtime.InteropServices.VARDESC
CS.System.Runtime.InteropServices.VARDESC = System.Runtime.InteropServices.VARDESC

---@class System.Runtime.InteropServices.VARDESC.DESCUNION : System.ValueType
---@field public oInst System.Int32
---@field public lpvarValue System.IntPtr
System.Runtime.InteropServices.VARDESC.DESCUNION = {}
---@type System.Runtime.InteropServices.VARDESC.DESCUNION
CS.System.Runtime.InteropServices.VARDESC.DESCUNION = System.Runtime.InteropServices.VARDESC.DESCUNION

---@class System.Runtime.InteropServices.DISPPARAMS : System.ValueType
---@field public rgvarg System.IntPtr
---@field public rgdispidNamedArgs System.IntPtr
---@field public cArgs System.Int32
---@field public cNamedArgs System.Int32
System.Runtime.InteropServices.DISPPARAMS = {}
---@type System.Runtime.InteropServices.DISPPARAMS
CS.System.Runtime.InteropServices.DISPPARAMS = System.Runtime.InteropServices.DISPPARAMS

---@class System.Runtime.InteropServices.EXCEPINFO : System.ValueType
---@field public wCode System.Int16
---@field public wReserved System.Int16
---@field public bstrSource System.String
---@field public bstrDescription System.String
---@field public bstrHelpFile System.String
---@field public dwHelpContext System.Int32
---@field public pvReserved System.IntPtr
---@field public pfnDeferredFillIn System.IntPtr
System.Runtime.InteropServices.EXCEPINFO = {}
---@type System.Runtime.InteropServices.EXCEPINFO
CS.System.Runtime.InteropServices.EXCEPINFO = System.Runtime.InteropServices.EXCEPINFO

---@class System.Runtime.InteropServices.FUNCKIND : System.Enum
System.Runtime.InteropServices.FUNCKIND = {}
---@type System.Runtime.InteropServices.FUNCKIND
CS.System.Runtime.InteropServices.FUNCKIND = System.Runtime.InteropServices.FUNCKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.FUNCKIND.FUNC_VIRTUAL = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.FUNCKIND.FUNC_PUREVIRTUAL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.FUNCKIND.FUNC_NONVIRTUAL = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.FUNCKIND.FUNC_STATIC = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.FUNCKIND.FUNC_DISPATCH = 4

---@class System.Runtime.InteropServices.INVOKEKIND : System.Enum
System.Runtime.InteropServices.INVOKEKIND = {}
---@type System.Runtime.InteropServices.INVOKEKIND
CS.System.Runtime.InteropServices.INVOKEKIND = System.Runtime.InteropServices.INVOKEKIND

---@return System.Int32 value:1
System.Runtime.InteropServices.INVOKEKIND.INVOKE_FUNC = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.INVOKEKIND.INVOKE_PROPERTYGET = 2

---@class System.Runtime.InteropServices.CALLCONV : System.Enum
System.Runtime.InteropServices.CALLCONV = {}
---@type System.Runtime.InteropServices.CALLCONV
CS.System.Runtime.InteropServices.CALLCONV = System.Runtime.InteropServices.CALLCONV

---@return System.Int32 value:1
System.Runtime.InteropServices.CALLCONV.CC_CDECL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.CALLCONV.CC_MSCPASCAL = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.CALLCONV.CC_MACPASCAL = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.CALLCONV.CC_STDCALL = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.CALLCONV.CC_RESERVED = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.CALLCONV.CC_SYSCALL = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.CALLCONV.CC_MPWCDECL = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.CALLCONV.CC_MPWPASCAL = 8
---@return System.Int32 value:9
System.Runtime.InteropServices.CALLCONV.CC_MAX = 9

---@class System.Runtime.InteropServices.FUNCFLAGS : System.Enum
System.Runtime.InteropServices.FUNCFLAGS = {}
---@type System.Runtime.InteropServices.FUNCFLAGS
CS.System.Runtime.InteropServices.FUNCFLAGS = System.Runtime.InteropServices.FUNCFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.FUNCFLAGS.FUNCFLAG_FRESTRICTED = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.FUNCFLAGS.FUNCFLAG_FSOURCE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.FUNCFLAGS.FUNCFLAG_FBINDABLE = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.FUNCFLAGS.FUNCFLAG_FREQUESTEDIT = 8

---@class System.Runtime.InteropServices.VARFLAGS : System.Enum
System.Runtime.InteropServices.VARFLAGS = {}
---@type System.Runtime.InteropServices.VARFLAGS
CS.System.Runtime.InteropServices.VARFLAGS = System.Runtime.InteropServices.VARFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.VARFLAGS.VARFLAG_FREADONLY = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.VARFLAGS.VARFLAG_FSOURCE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.VARFLAGS.VARFLAG_FBINDABLE = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.VARFLAGS.VARFLAG_FREQUESTEDIT = 8

---@class System.Runtime.InteropServices.UnknownWrapper : System.Object
---@field public WrappedObject System.Object @  getter
System.Runtime.InteropServices.UnknownWrapper = {}
---@type System.Runtime.InteropServices.UnknownWrapper
CS.System.Runtime.InteropServices.UnknownWrapper = System.Runtime.InteropServices.UnknownWrapper

---@class System.Runtime.InteropServices.VariantWrapper : System.Object
---@field public WrappedObject System.Object @  getter
System.Runtime.InteropServices.VariantWrapper = {}
---@type System.Runtime.InteropServices.VariantWrapper
CS.System.Runtime.InteropServices.VariantWrapper = System.Runtime.InteropServices.VariantWrapper

---@class System.Runtime.InteropServices.RuntimeInformation : System.Object
---@field public FrameworkDescription System.String @static  getter
---@field public OSDescription System.String @static  getter
---@field public OSArchitecture System.Runtime.InteropServices.Architecture @static  getter
---@field public ProcessArchitecture System.Runtime.InteropServices.Architecture @static  getter
System.Runtime.InteropServices.RuntimeInformation = {}
---@type System.Runtime.InteropServices.RuntimeInformation
CS.System.Runtime.InteropServices.RuntimeInformation = System.Runtime.InteropServices.RuntimeInformation

---@param osPlatform System.Runtime.InteropServices.OSPlatform
---@return System.Boolean
function System.Runtime.InteropServices.RuntimeInformation.IsOSPlatform(osPlatform)end
---@class System.Runtime.InteropServices.BINDPTR : System.ValueType
---@field public lpfuncdesc System.IntPtr
---@field public lptcomp System.IntPtr
---@field public lpvardesc System.IntPtr
System.Runtime.InteropServices.BINDPTR = {}
---@type System.Runtime.InteropServices.BINDPTR
CS.System.Runtime.InteropServices.BINDPTR = System.Runtime.InteropServices.BINDPTR

---@class System.Runtime.InteropServices.BIND_OPTS : System.ValueType
---@field public cbStruct System.Int32
---@field public grfFlags System.Int32
---@field public grfMode System.Int32
---@field public dwTickCountDeadline System.Int32
System.Runtime.InteropServices.BIND_OPTS = {}
---@type System.Runtime.InteropServices.BIND_OPTS
CS.System.Runtime.InteropServices.BIND_OPTS = System.Runtime.InteropServices.BIND_OPTS

---@class System.Runtime.InteropServices.ComEventsHelper : System.Object
System.Runtime.InteropServices.ComEventsHelper = {}
---@type System.Runtime.InteropServices.ComEventsHelper
CS.System.Runtime.InteropServices.ComEventsHelper = System.Runtime.InteropServices.ComEventsHelper

---@param rcw System.Object
---@param iid System.Guid
---@param dispid System.Int32
---@param d System.Delegate
---@return System.Void
function System.Runtime.InteropServices.ComEventsHelper.Combine(rcw, iid, dispid, d)end
---@param rcw System.Object
---@param iid System.Guid
---@param dispid System.Int32
---@param d System.Delegate
---@return System.Delegate
function System.Runtime.InteropServices.ComEventsHelper.Remove(rcw, iid, dispid, d)end
---@class System.Runtime.InteropServices.CustomQueryInterfaceMode : System.Enum
System.Runtime.InteropServices.CustomQueryInterfaceMode = {}
---@type System.Runtime.InteropServices.CustomQueryInterfaceMode
CS.System.Runtime.InteropServices.CustomQueryInterfaceMode = System.Runtime.InteropServices.CustomQueryInterfaceMode

---@return System.Int32 value:0
System.Runtime.InteropServices.CustomQueryInterfaceMode.Ignore = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.CustomQueryInterfaceMode.Allow = 1

---@class System.Runtime.InteropServices.DESCKIND : System.Enum
System.Runtime.InteropServices.DESCKIND = {}
---@type System.Runtime.InteropServices.DESCKIND
CS.System.Runtime.InteropServices.DESCKIND = System.Runtime.InteropServices.DESCKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.DESCKIND.DESCKIND_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.DESCKIND.DESCKIND_FUNCDESC = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.DESCKIND.DESCKIND_VARDESC = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.DESCKIND.DESCKIND_TYPECOMP = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.DESCKIND.DESCKIND_IMPLICITAPPOBJ = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.DESCKIND.DESCKIND_MAX = 5

---@class System.Runtime.InteropServices.ExporterEventKind : System.Enum
System.Runtime.InteropServices.ExporterEventKind = {}
---@type System.Runtime.InteropServices.ExporterEventKind
CS.System.Runtime.InteropServices.ExporterEventKind = System.Runtime.InteropServices.ExporterEventKind

---@return System.Int32 value:0
System.Runtime.InteropServices.ExporterEventKind.NOTIF_TYPECONVERTED = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ExporterEventKind.NOTIF_CONVERTWARNING = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ExporterEventKind.ERROR_REFTOINVALIDASSEMBLY = 2

---@class System.Runtime.InteropServices.ExtensibleClassFactory : System.Object
System.Runtime.InteropServices.ExtensibleClassFactory = {}
---@type System.Runtime.InteropServices.ExtensibleClassFactory
CS.System.Runtime.InteropServices.ExtensibleClassFactory = System.Runtime.InteropServices.ExtensibleClassFactory

---@param callback System.Runtime.InteropServices.ObjectCreationDelegate
---@return System.Void
function System.Runtime.InteropServices.ExtensibleClassFactory.RegisterObjectCreationCallback(callback)end
---@class System.Runtime.InteropServices.FILETIME : System.ValueType
---@field public dwLowDateTime System.Int32
---@field public dwHighDateTime System.Int32
System.Runtime.InteropServices.FILETIME = {}
---@type System.Runtime.InteropServices.FILETIME
CS.System.Runtime.InteropServices.FILETIME = System.Runtime.InteropServices.FILETIME

---@class System.Runtime.InteropServices.GCHandle : System.ValueType
---@field public IsAllocated System.Boolean @  getter
---@field public Target System.Object @ setter getter
System.Runtime.InteropServices.GCHandle = {}
---@type System.Runtime.InteropServices.GCHandle
CS.System.Runtime.InteropServices.GCHandle = System.Runtime.InteropServices.GCHandle

---@return System.IntPtr
function System.Runtime.InteropServices.GCHandle:AddrOfPinnedObject()end
---@overload fun(value:System.Object, type:System.Runtime.InteropServices.GCHandleType):System.Runtime.InteropServices.GCHandle
---@param value System.Object
---@return System.Runtime.InteropServices.GCHandle
function System.Runtime.InteropServices.GCHandle.Alloc(value)end
---@return System.Void
function System.Runtime.InteropServices.GCHandle:Free()end
---@overload fun(value:System.Runtime.InteropServices.GCHandle):System.IntPtr
---@param value System.IntPtr
---@return System.Runtime.InteropServices.GCHandle
function System.Runtime.InteropServices.GCHandle.op_Explicit(value)end
---@param a System.Runtime.InteropServices.GCHandle
---@param b System.Runtime.InteropServices.GCHandle
---@return System.Boolean
function System.Runtime.InteropServices.GCHandle.op_Equality(a, b)end
---@param a System.Runtime.InteropServices.GCHandle
---@param b System.Runtime.InteropServices.GCHandle
---@return System.Boolean
function System.Runtime.InteropServices.GCHandle.op_Inequality(a, b)end
---@param o System.Object
---@return System.Boolean
function System.Runtime.InteropServices.GCHandle:Equals(o)end
---@return System.Int32
function System.Runtime.InteropServices.GCHandle:GetHashCode()end
---@param value System.IntPtr
---@return System.Runtime.InteropServices.GCHandle
function System.Runtime.InteropServices.GCHandle.FromIntPtr(value)end
---@param value System.Runtime.InteropServices.GCHandle
---@return System.IntPtr
function System.Runtime.InteropServices.GCHandle.ToIntPtr(value)end
---@class System.Runtime.InteropServices.GCHandleType : System.Enum
System.Runtime.InteropServices.GCHandleType = {}
---@type System.Runtime.InteropServices.GCHandleType
CS.System.Runtime.InteropServices.GCHandleType = System.Runtime.InteropServices.GCHandleType

---@return System.Int32 value:0
System.Runtime.InteropServices.GCHandleType.Weak = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.GCHandleType.WeakTrackResurrection = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.GCHandleType.Normal = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.GCHandleType.Pinned = 3

---@class System.Runtime.InteropServices.ImporterEventKind : System.Enum
System.Runtime.InteropServices.ImporterEventKind = {}
---@type System.Runtime.InteropServices.ImporterEventKind
CS.System.Runtime.InteropServices.ImporterEventKind = System.Runtime.InteropServices.ImporterEventKind

---@return System.Int32 value:0
System.Runtime.InteropServices.ImporterEventKind.NOTIF_TYPECONVERTED = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ImporterEventKind.NOTIF_CONVERTWARNING = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ImporterEventKind.ERROR_REFTOINVALIDTYPELIB = 2

---@class System.Runtime.InteropServices.LIBFLAGS : System.Enum
System.Runtime.InteropServices.LIBFLAGS = {}
---@type System.Runtime.InteropServices.LIBFLAGS
CS.System.Runtime.InteropServices.LIBFLAGS = System.Runtime.InteropServices.LIBFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.LIBFLAGS.LIBFLAG_FRESTRICTED = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.LIBFLAGS.LIBFLAG_FCONTROL = 2

---@class System.Runtime.InteropServices.Marshal : System.Object
---@field public SystemMaxDBCSCharSize System.Int32
---@field public SystemDefaultCharSize System.Int32
System.Runtime.InteropServices.Marshal = {}
---@type System.Runtime.InteropServices.Marshal
CS.System.Runtime.InteropServices.Marshal = System.Runtime.InteropServices.Marshal

---@param pUnk System.IntPtr
---@return System.Int32
function System.Runtime.InteropServices.Marshal.AddRef(pUnk)end
---@return System.Boolean
function System.Runtime.InteropServices.Marshal.AreComObjectsAvailableForCleanup()end
---@return System.Void
function System.Runtime.InteropServices.Marshal.CleanupUnusedObjectsInCurrentContext()end
---@param cb System.Int32
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.AllocCoTaskMem(cb)end
---@overload fun(cb:System.Int32):System.IntPtr
---@param cb System.IntPtr
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.AllocHGlobal(cb)end
---@param monikerName System.String
---@return System.Object
function System.Runtime.InteropServices.Marshal.BindToMoniker(monikerName)end
---@param otp System.Object
---@param fIsWeak System.Boolean
---@return System.Void
function System.Runtime.InteropServices.Marshal.ChangeWrapperHandleStrength(otp, fIsWeak)end
---@overload fun(source:System.Char[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.Int16[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.Int32[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.Int64[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.Single[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.Double[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr[], startIndex:System.Int32, destination:System.IntPtr, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Byte[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Char[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Int16[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Int32[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Int64[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Single[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.Double[], startIndex:System.Int32, length:System.Int32):System.Void
---@overload fun(source:System.IntPtr, destination:System.IntPtr[], startIndex:System.Int32, length:System.Int32):System.Void
---@param source System.Byte[]
---@param startIndex System.Int32
---@param destination System.IntPtr
---@param length System.Int32
---@return System.Void
function System.Runtime.InteropServices.Marshal.Copy(source, startIndex, destination, length)end
---@overload fun(pOuter:System.IntPtr, o:any):System.IntPtr
---@param pOuter System.IntPtr
---@param o System.Object
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.CreateAggregatedObject(pOuter, o)end
---@overload fun(o:System.Object, t:System.Type):System.Object
---@param o any
---@return any
function System.Runtime.InteropServices.Marshal.CreateWrapperOfType(o)end
---@overload fun(ptr:System.IntPtr, structuretype:System.Type):System.Void
---@param ptr System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.DestroyStructure(ptr)end
---@param ptr System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.FreeBSTR(ptr)end
---@param ptr System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.FreeCoTaskMem(ptr)end
---@param hglobal System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.FreeHGlobal(hglobal)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeBSTR(s)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeCoTaskMemAnsi(s)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeCoTaskMemUnicode(s)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeCoTaskMemUTF8(s)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeGlobalAllocAnsi(s)end
---@param s System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.ZeroFreeGlobalAllocUnicode(s)end
---@param type System.Type
---@return System.Guid
function System.Runtime.InteropServices.Marshal.GenerateGuidForType(type)end
---@param type System.Type
---@return System.String
function System.Runtime.InteropServices.Marshal.GenerateProgIdForType(type)end
---@param progID System.String
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetActiveObject(progID)end
---@overload fun(o:System.Object, T:System.Type):System.IntPtr
---@overload fun(o:System.Object, T:System.Type, mode:System.Runtime.InteropServices.CustomQueryInterfaceMode):System.IntPtr
---@param o any
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetComInterfaceForObject(o)end
---@param o System.Object
---@param t System.Type
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetComInterfaceForObjectInContext(o, t)end
---@param obj System.Object
---@param key System.Object
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetComObjectData(obj, key)end
---@param m System.Reflection.MemberInfo
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetComSlotForMethodInfo(m)end
---@param t System.Type
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetEndComSlot(t)end
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetExceptionPointers()end
---@param m System.Reflection.Module
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetHINSTANCE(m)end
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetExceptionCode()end
---@param e System.Exception
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetHRForException(e)end
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetHRForLastWin32Error()end
---@param o System.Object
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetIDispatchForObject(o)end
---@param o System.Object
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetIDispatchForObjectInContext(o)end
---@param t System.Type
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetITypeInfoForType(t)end
---@param o System.Object
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetIUnknownForObjectInContext(o)end
---@param pfnMethodToWrap System.IntPtr
---@param pbSignature System.IntPtr
---@param cbSignature System.Int32
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetManagedThunkForUnmanagedMethodPtr(pfnMethodToWrap, pbSignature, cbSignature)end
---@param t System.Type
---@param slot System.Int32
---@param memberType System.Runtime.InteropServices.ComMemberType
---@return System.Reflection.MemberInfo
function System.Runtime.InteropServices.Marshal.GetMethodInfoForComSlot(t, slot, memberType)end
---@param o System.Object
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetIUnknownForObject(o)end
---@overload fun(obj:any, pDstNativeVariant:System.IntPtr):System.Void
---@param obj System.Object
---@param pDstNativeVariant System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.GetNativeVariantForObject(obj, pDstNativeVariant)end
---@param pUnk System.IntPtr
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetObjectForIUnknown(pUnk)end
---@overload fun(pSrcNativeVariant:System.IntPtr):any
---@param pSrcNativeVariant System.IntPtr
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetObjectForNativeVariant(pSrcNativeVariant)end
---@overload fun(aSrcNativeVariant:System.IntPtr, cVars:System.Int32):T[]
---@param aSrcNativeVariant System.IntPtr
---@param cVars System.Int32
---@return System.Object[]
function System.Runtime.InteropServices.Marshal.GetObjectsForNativeVariants(aSrcNativeVariant, cVars)end
---@param t System.Type
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetStartComSlot(t)end
---@param cookie System.Int32
---@return System.Threading.Thread
function System.Runtime.InteropServices.Marshal.GetThreadFromFiberCookie(cookie)end
---@param pUnk System.IntPtr
---@param t System.Type
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetTypedObjectForIUnknown(pUnk, t)end
---@param piTypeInfo System.IntPtr
---@return System.Type
function System.Runtime.InteropServices.Marshal.GetTypeForITypeInfo(piTypeInfo)end
---@overload fun(typeInfo:System.Runtime.InteropServices.ComTypes.ITypeInfo):System.String
---@param pTI System.Runtime.InteropServices.UCOMITypeInfo
---@return System.String
function System.Runtime.InteropServices.Marshal.GetTypeInfoName(pTI)end
---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib):System.Guid
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return System.Guid
function System.Runtime.InteropServices.Marshal.GetTypeLibGuid(pTLB)end
---@param asm System.Reflection.Assembly
---@return System.Guid
function System.Runtime.InteropServices.Marshal.GetTypeLibGuidForAssembly(asm)end
---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib):System.Int32
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetTypeLibLcid(pTLB)end
---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib):System.String
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return System.String
function System.Runtime.InteropServices.Marshal.GetTypeLibName(pTLB)end
---@param inputAssembly System.Reflection.Assembly
---@param majorVersion System.Int32
---@param minorVersion System.Int32
---@return System.Void
function System.Runtime.InteropServices.Marshal.GetTypeLibVersionForAssembly(inputAssembly, majorVersion, minorVersion)end
---@param pfnMethodToWrap System.IntPtr
---@param pbSignature System.IntPtr
---@param cbSignature System.Int32
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetUnmanagedThunkForManagedMethodPtr(pfnMethodToWrap, pbSignature, cbSignature)end
---@param t System.Type
---@return System.Boolean
function System.Runtime.InteropServices.Marshal.IsTypeVisibleFromCom(t)end
---@param m System.Reflection.MethodInfo
---@return System.Int32
function System.Runtime.InteropServices.Marshal.NumParamBytes(m)end
---@param clsid System.Guid
---@return System.Type
function System.Runtime.InteropServices.Marshal.GetTypeFromCLSID(clsid)end
---@param unknown System.IntPtr
---@return System.Object
function System.Runtime.InteropServices.Marshal.GetUniqueObjectForIUnknown(unknown)end
---@param o System.Object
---@return System.Boolean
function System.Runtime.InteropServices.Marshal.IsComObject(o)end
---@return System.Int32
function System.Runtime.InteropServices.Marshal.GetLastWin32Error()end
---@overload fun(t:System.Type, fieldName:System.String):System.IntPtr
---@param fieldName System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.OffsetOf(fieldName)end
---@param m System.Reflection.MethodInfo
---@return System.Void
function System.Runtime.InteropServices.Marshal.Prelink(m)end
---@param c System.Type
---@return System.Void
function System.Runtime.InteropServices.Marshal.PrelinkAll(c)end
---@overload fun(ptr:System.IntPtr, len:System.Int32):System.String
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.Marshal.PtrToStringAnsi(ptr)end
---@overload fun(ptr:System.IntPtr, byteLen:System.Int32):System.String
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.Marshal.PtrToStringUTF8(ptr)end
---@overload fun(ptr:System.IntPtr, len:System.Int32):System.String
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.Marshal.PtrToStringAuto(ptr)end
---@overload fun(ptr:System.IntPtr, len:System.Int32):System.String
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.Marshal.PtrToStringUni(ptr)end
---@param ptr System.IntPtr
---@return System.String
function System.Runtime.InteropServices.Marshal.PtrToStringBSTR(ptr)end
---@overload fun(ptr:System.IntPtr, structure:System.Object):System.Void
---@overload fun(ptr:System.IntPtr, structureType:System.Type):System.Object
---@overload fun(ptr:System.IntPtr, structure:any):System.Void
---@param ptr System.IntPtr
---@return any
function System.Runtime.InteropServices.Marshal.PtrToStructure(ptr)end
---@param pUnk System.IntPtr
---@param iid System.Guid
---@param ppv System.IntPtr
---@return System.Int32
function System.Runtime.InteropServices.Marshal.QueryInterface(pUnk, iid, ppv)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32):System.Byte
---@overload fun(ptr:System.Object, ofs:System.Int32):System.Byte
---@param ptr System.IntPtr
---@return System.Byte
function System.Runtime.InteropServices.Marshal.ReadByte(ptr)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32):System.Int16
---@overload fun(ptr:System.Object, ofs:System.Int32):System.Int16
---@param ptr System.IntPtr
---@return System.Int16
function System.Runtime.InteropServices.Marshal.ReadInt16(ptr)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32):System.Int32
---@overload fun(ptr:System.Object, ofs:System.Int32):System.Int32
---@param ptr System.IntPtr
---@return System.Int32
function System.Runtime.InteropServices.Marshal.ReadInt32(ptr)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32):System.Int64
---@overload fun(ptr:System.Object, ofs:System.Int32):System.Int64
---@param ptr System.IntPtr
---@return System.Int64
function System.Runtime.InteropServices.Marshal.ReadInt64(ptr)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32):System.IntPtr
---@overload fun(ptr:System.Object, ofs:System.Int32):System.IntPtr
---@param ptr System.IntPtr
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.ReadIntPtr(ptr)end
---@param pv System.IntPtr
---@param cb System.Int32
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.ReAllocCoTaskMem(pv, cb)end
---@param pv System.IntPtr
---@param cb System.IntPtr
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.ReAllocHGlobal(pv, cb)end
---@param pUnk System.IntPtr
---@return System.Int32
function System.Runtime.InteropServices.Marshal.Release(pUnk)end
---@param o System.Object
---@return System.Int32
function System.Runtime.InteropServices.Marshal.ReleaseComObject(o)end
---@return System.Void
function System.Runtime.InteropServices.Marshal.ReleaseThreadCache()end
---@param obj System.Object
---@param key System.Object
---@param data System.Object
---@return System.Boolean
function System.Runtime.InteropServices.Marshal.SetComObjectData(obj, key, data)end
---@overload fun(structure:System.Object):System.Int32
---@overload fun(t:System.Type):System.Int32
---@overload fun(structure:any):System.Int32
---@return System.Int32
function System.Runtime.InteropServices.Marshal.SizeOf()end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToBSTR(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToCoTaskMemAnsi(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToCoTaskMemAuto(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToCoTaskMemUni(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToHGlobalAnsi(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToAllocatedMemoryUTF8(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToHGlobalAuto(s)end
---@param s System.String
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.StringToHGlobalUni(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.SecureStringToBSTR(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.SecureStringToCoTaskMemAnsi(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.SecureStringToCoTaskMemUnicode(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.SecureStringToGlobalAllocAnsi(s)end
---@param s System.Security.SecureString
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.SecureStringToGlobalAllocUnicode(s)end
---@overload fun(structure:any, ptr:System.IntPtr, fDeleteOld:System.Boolean):System.Void
---@param structure System.Object
---@param ptr System.IntPtr
---@param fDeleteOld System.Boolean
---@return System.Void
function System.Runtime.InteropServices.Marshal.StructureToPtr(structure, ptr, fDeleteOld)end
---@overload fun(errorCode:System.Int32, errorInfo:System.IntPtr):System.Void
---@param errorCode System.Int32
---@return System.Void
function System.Runtime.InteropServices.Marshal.ThrowExceptionForHR(errorCode)end
---@overload fun(arr:T[], index:System.Int32):System.IntPtr
---@param arr System.Array
---@param index System.Int32
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.UnsafeAddrOfPinnedArrayElement(arr, index)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.Byte):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.Byte):System.Void
---@param ptr System.IntPtr
---@param val System.Byte
---@return System.Void
function System.Runtime.InteropServices.Marshal.WriteByte(ptr, val)end
---@overload fun(ptr:System.IntPtr, val:System.Char):System.Void
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.Int16):System.Void
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.Char):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.Int16):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.Char):System.Void
---@param ptr System.IntPtr
---@param val System.Int16
---@return System.Void
function System.Runtime.InteropServices.Marshal.WriteInt16(ptr, val)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.Int32):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.Int32):System.Void
---@param ptr System.IntPtr
---@param val System.Int32
---@return System.Void
function System.Runtime.InteropServices.Marshal.WriteInt32(ptr, val)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.Int64):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.Int64):System.Void
---@param ptr System.IntPtr
---@param val System.Int64
---@return System.Void
function System.Runtime.InteropServices.Marshal.WriteInt64(ptr, val)end
---@overload fun(ptr:System.IntPtr, ofs:System.Int32, val:System.IntPtr):System.Void
---@overload fun(ptr:System.Object, ofs:System.Int32, val:System.IntPtr):System.Void
---@param ptr System.IntPtr
---@param val System.IntPtr
---@return System.Void
function System.Runtime.InteropServices.Marshal.WriteIntPtr(ptr, val)end
---@overload fun(errorCode:System.Int32, errorInfo:System.IntPtr):System.Exception
---@param errorCode System.Int32
---@return System.Exception
function System.Runtime.InteropServices.Marshal.GetExceptionForHR(errorCode)end
---@param o System.Object
---@return System.Int32
function System.Runtime.InteropServices.Marshal.FinalReleaseComObject(o)end
---@overload fun(ptr:System.IntPtr, t:System.Type):System.Delegate
---@param ptr System.IntPtr
---@return any
function System.Runtime.InteropServices.Marshal.GetDelegateForFunctionPointer(ptr)end
---@overload fun(d:any):System.IntPtr
---@param d System.Delegate
---@return System.IntPtr
function System.Runtime.InteropServices.Marshal.GetFunctionPointerForDelegate(d)end
---@class System.Runtime.InteropServices.MarshalAsAttribute : System.Attribute
---@field public Value System.Runtime.InteropServices.UnmanagedType @  getter
---@field public MarshalCookie System.String
---@field public MarshalType System.String
---@field public MarshalTypeRef System.Type
---@field public SafeArrayUserDefinedSubType System.Type
---@field public ArraySubType System.Runtime.InteropServices.UnmanagedType
---@field public SafeArraySubType System.Runtime.InteropServices.VarEnum
---@field public SizeConst System.Int32
---@field public IidParameterIndex System.Int32
---@field public SizeParamIndex System.Int16
System.Runtime.InteropServices.MarshalAsAttribute = {}
---@type System.Runtime.InteropServices.MarshalAsAttribute
CS.System.Runtime.InteropServices.MarshalAsAttribute = System.Runtime.InteropServices.MarshalAsAttribute

---@class System.Runtime.InteropServices.RegistrationClassContext : System.Enum
System.Runtime.InteropServices.RegistrationClassContext = {}
---@type System.Runtime.InteropServices.RegistrationClassContext
CS.System.Runtime.InteropServices.RegistrationClassContext = System.Runtime.InteropServices.RegistrationClassContext

---@return System.Int32 value:1
System.Runtime.InteropServices.RegistrationClassContext.InProcessServer = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.RegistrationClassContext.InProcessHandler = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.RegistrationClassContext.LocalServer = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.RegistrationClassContext.InProcessServer16 = 8
---@return System.Int32 value:16
System.Runtime.InteropServices.RegistrationClassContext.RemoteServer = 16

---@class System.Runtime.InteropServices.RegistrationConnectionType : System.Enum
System.Runtime.InteropServices.RegistrationConnectionType = {}
---@type System.Runtime.InteropServices.RegistrationConnectionType
CS.System.Runtime.InteropServices.RegistrationConnectionType = System.Runtime.InteropServices.RegistrationConnectionType

---@return System.Int32 value:0
System.Runtime.InteropServices.RegistrationConnectionType.SingleUse = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.RegistrationConnectionType.MultipleUse = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.RegistrationConnectionType.MultiSeparate = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.RegistrationConnectionType.Suspended = 4

---@class System.Runtime.InteropServices.RegistrationServices : System.Object
System.Runtime.InteropServices.RegistrationServices = {}
---@type System.Runtime.InteropServices.RegistrationServices
CS.System.Runtime.InteropServices.RegistrationServices = System.Runtime.InteropServices.RegistrationServices

---@return System.Guid
function System.Runtime.InteropServices.RegistrationServices:GetManagedCategoryGuid()end
---@param type System.Type
---@return System.String
function System.Runtime.InteropServices.RegistrationServices:GetProgIdForType(type)end
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function System.Runtime.InteropServices.RegistrationServices:GetRegistrableTypesInAssembly(assembly)end
---@param assembly System.Reflection.Assembly
---@param flags System.Runtime.InteropServices.AssemblyRegistrationFlags
---@return System.Boolean
function System.Runtime.InteropServices.RegistrationServices:RegisterAssembly(assembly, flags)end
---@overload fun(type:System.Type, classContext:System.Runtime.InteropServices.RegistrationClassContext, flags:System.Runtime.InteropServices.RegistrationConnectionType):System.Int32
---@param type System.Type
---@param g System.Guid
---@return System.Void
function System.Runtime.InteropServices.RegistrationServices:RegisterTypeForComClients(type, g)end
---@param type System.Type
---@return System.Boolean
function System.Runtime.InteropServices.RegistrationServices:TypeRepresentsComType(type)end
---@param type System.Type
---@return System.Boolean
function System.Runtime.InteropServices.RegistrationServices:TypeRequiresRegistration(type)end
---@param assembly System.Reflection.Assembly
---@return System.Boolean
function System.Runtime.InteropServices.RegistrationServices:UnregisterAssembly(assembly)end
---@param cookie System.Int32
---@return System.Void
function System.Runtime.InteropServices.RegistrationServices:UnregisterTypeForComClients(cookie)end
---@class System.Runtime.InteropServices.STATSTG : System.ValueType
---@field public pwcsName System.String
---@field public type System.Int32
---@field public cbSize System.Int64
---@field public mtime System.Runtime.InteropServices.FILETIME
---@field public ctime System.Runtime.InteropServices.FILETIME
---@field public atime System.Runtime.InteropServices.FILETIME
---@field public grfMode System.Int32
---@field public grfLocksSupported System.Int32
---@field public clsid System.Guid
---@field public grfStateBits System.Int32
---@field public reserved System.Int32
System.Runtime.InteropServices.STATSTG = {}
---@type System.Runtime.InteropServices.STATSTG
CS.System.Runtime.InteropServices.STATSTG = System.Runtime.InteropServices.STATSTG

---@class System.Runtime.InteropServices.SYSKIND : System.Enum
System.Runtime.InteropServices.SYSKIND = {}
---@type System.Runtime.InteropServices.SYSKIND
CS.System.Runtime.InteropServices.SYSKIND = System.Runtime.InteropServices.SYSKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.SYSKIND.SYS_WIN16 = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.SYSKIND.SYS_WIN32 = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.SYSKIND.SYS_MAC = 2

---@class System.Runtime.InteropServices.SafeBuffer : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
---@field public ByteLength System.UInt64 @  getter
System.Runtime.InteropServices.SafeBuffer = {}
---@type System.Runtime.InteropServices.SafeBuffer
CS.System.Runtime.InteropServices.SafeBuffer = System.Runtime.InteropServices.SafeBuffer

---@overload fun(numElements:System.UInt32):System.Void
---@overload fun(numElements:System.UInt32, sizeOfEachElement:System.UInt32):System.Void
---@param numBytes System.UInt64
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:Initialize(numBytes)end
---@param pointer System.Byte
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:AcquirePointer(pointer)end
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:ReleasePointer()end
---@param byteOffset System.UInt64
---@return any
function System.Runtime.InteropServices.SafeBuffer:Read(byteOffset)end
---@param byteOffset System.UInt64
---@param array T[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:ReadArray(byteOffset, array, index, count)end
---@param byteOffset System.UInt64
---@param value any
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:Write(byteOffset, value)end
---@param byteOffset System.UInt64
---@param array T[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Runtime.InteropServices.SafeBuffer:WriteArray(byteOffset, array, index, count)end
---@class System.Runtime.InteropServices.TYPELIBATTR : System.ValueType
---@field public guid System.Guid
---@field public lcid System.Int32
---@field public syskind System.Runtime.InteropServices.SYSKIND
---@field public wMajorVerNum System.Int16
---@field public wMinorVerNum System.Int16
---@field public wLibFlags System.Runtime.InteropServices.LIBFLAGS
System.Runtime.InteropServices.TYPELIBATTR = {}
---@type System.Runtime.InteropServices.TYPELIBATTR
CS.System.Runtime.InteropServices.TYPELIBATTR = System.Runtime.InteropServices.TYPELIBATTR

---@class System.Runtime.InteropServices.TypeLibConverter : System.Object
System.Runtime.InteropServices.TypeLibConverter = {}
---@type System.Runtime.InteropServices.TypeLibConverter
CS.System.Runtime.InteropServices.TypeLibConverter = System.Runtime.InteropServices.TypeLibConverter

---@param assembly System.Reflection.Assembly
---@param strTypeLibName System.String
---@param flags System.Runtime.InteropServices.TypeLibExporterFlags
---@param notifySink System.Runtime.InteropServices.ITypeLibExporterNotifySink
---@return System.Object
function System.Runtime.InteropServices.TypeLibConverter:ConvertAssemblyToTypeLib(assembly, strTypeLibName, flags, notifySink)end
---@overload fun(typeLib:System.Object, asmFileName:System.String, flags:System.Runtime.InteropServices.TypeLibImporterFlags, notifySink:System.Runtime.InteropServices.ITypeLibImporterNotifySink, publicKey:System.Byte[], keyPair:System.Reflection.StrongNameKeyPair, asmNamespace:System.String, asmVersion:System.Version):System.Reflection.Emit.AssemblyBuilder
---@param typeLib System.Object
---@param asmFileName System.String
---@param flags System.Int32
---@param notifySink System.Runtime.InteropServices.ITypeLibImporterNotifySink
---@param publicKey System.Byte[]
---@param keyPair System.Reflection.StrongNameKeyPair
---@param unsafeInterfaces System.Boolean
---@return System.Reflection.Emit.AssemblyBuilder
function System.Runtime.InteropServices.TypeLibConverter:ConvertTypeLibToAssembly(typeLib, asmFileName, flags, notifySink, publicKey, keyPair, unsafeInterfaces)end
---@param g System.Guid
---@param major System.Int32
---@param minor System.Int32
---@param lcid System.Int32
---@param asmName System.String
---@param asmCodeBase System.String
---@return System.Boolean
function System.Runtime.InteropServices.TypeLibConverter:GetPrimaryInteropAssembly(g, major, minor, lcid, asmName, asmCodeBase)end
---@class System.Runtime.InteropServices.TypeLibExporterFlags : System.Enum
System.Runtime.InteropServices.TypeLibExporterFlags = {}
---@type System.Runtime.InteropServices.TypeLibExporterFlags
CS.System.Runtime.InteropServices.TypeLibExporterFlags = System.Runtime.InteropServices.TypeLibExporterFlags

---@return System.Int32 value:0
System.Runtime.InteropServices.TypeLibExporterFlags.None = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.TypeLibExporterFlags.OnlyReferenceRegistered = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TypeLibExporterFlags.CallerResolvedReferences = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TypeLibExporterFlags.OldNames = 4

---@class System.Runtime.InteropServices.TypeLibImporterFlags : System.Enum
System.Runtime.InteropServices.TypeLibImporterFlags = {}
---@type System.Runtime.InteropServices.TypeLibImporterFlags
CS.System.Runtime.InteropServices.TypeLibImporterFlags = System.Runtime.InteropServices.TypeLibImporterFlags

---@return System.Int32 value:0
System.Runtime.InteropServices.TypeLibImporterFlags.None = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.TypeLibImporterFlags.PrimaryInteropAssembly = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.TypeLibImporterFlags.UnsafeInterfaces = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.TypeLibImporterFlags.SafeArrayAsSystemArray = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.TypeLibImporterFlags.TransformDispRetVals = 8

---@class System.Runtime.InteropServices.ComAwareEventInfo : System.Reflection.EventInfo
---@field public Attributes System.Reflection.EventAttributes @  getter
---@field public DeclaringType System.Type @  getter
---@field public Name System.String @  getter
---@field public ReflectedType System.Type @  getter
System.Runtime.InteropServices.ComAwareEventInfo = {}
---@type System.Runtime.InteropServices.ComAwareEventInfo
CS.System.Runtime.InteropServices.ComAwareEventInfo = System.Runtime.InteropServices.ComAwareEventInfo

---@param target System.Object
---@param handler System.Delegate
---@return System.Void
function System.Runtime.InteropServices.ComAwareEventInfo:AddEventHandler(target, handler)end
---@param target System.Object
---@param handler System.Delegate
---@return System.Void
function System.Runtime.InteropServices.ComAwareEventInfo:RemoveEventHandler(target, handler)end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo
function System.Runtime.InteropServices.ComAwareEventInfo:GetAddMethod(nonPublic)end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo
function System.Runtime.InteropServices.ComAwareEventInfo:GetRaiseMethod(nonPublic)end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo
function System.Runtime.InteropServices.ComAwareEventInfo:GetRemoveMethod(nonPublic)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Runtime.InteropServices.ComAwareEventInfo:GetCustomAttributes(inherit)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Runtime.InteropServices.ComAwareEventInfo:IsDefined(attributeType, inherit)end
---@class System.Runtime.InteropServices.DefaultParameterValueAttribute : System.Attribute
---@field public Value System.Object @  getter
System.Runtime.InteropServices.DefaultParameterValueAttribute = {}
---@type System.Runtime.InteropServices.DefaultParameterValueAttribute
CS.System.Runtime.InteropServices.DefaultParameterValueAttribute = System.Runtime.InteropServices.DefaultParameterValueAttribute

---@class System.Runtime.InteropServices.HandleCollector : System.Object
---@field public Count System.Int32 @  getter
---@field public InitialThreshold System.Int32 @  getter
---@field public MaximumThreshold System.Int32 @  getter
---@field public Name System.String @  getter
System.Runtime.InteropServices.HandleCollector = {}
---@type System.Runtime.InteropServices.HandleCollector
CS.System.Runtime.InteropServices.HandleCollector = System.Runtime.InteropServices.HandleCollector

---@return System.Void
function System.Runtime.InteropServices.HandleCollector:Add()end
---@return System.Void
function System.Runtime.InteropServices.HandleCollector:Remove()end
---@class System.Runtime.InteropServices.StandardOleMarshalObject : System.MarshalByRefObject
System.Runtime.InteropServices.StandardOleMarshalObject = {}
---@type System.Runtime.InteropServices.StandardOleMarshalObject
CS.System.Runtime.InteropServices.StandardOleMarshalObject = System.Runtime.InteropServices.StandardOleMarshalObject

