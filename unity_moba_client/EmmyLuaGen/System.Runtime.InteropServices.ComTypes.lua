---@class System.Runtime.InteropServices.ComTypes.BIND_OPTS : System.ValueType
---@field public cbStruct System.Int32
---@field public grfFlags System.Int32
---@field public grfMode System.Int32
---@field public dwTickCountDeadline System.Int32
System.Runtime.InteropServices.ComTypes.BIND_OPTS = {}
---@type System.Runtime.InteropServices.ComTypes.BIND_OPTS
CS.System.Runtime.InteropServices.ComTypes.BIND_OPTS = System.Runtime.InteropServices.ComTypes.BIND_OPTS

---@class System.Runtime.InteropServices.ComTypes.CONNECTDATA : System.ValueType
---@field public pUnk System.Object
---@field public dwCookie System.Int32
System.Runtime.InteropServices.ComTypes.CONNECTDATA = {}
---@type System.Runtime.InteropServices.ComTypes.CONNECTDATA
CS.System.Runtime.InteropServices.ComTypes.CONNECTDATA = System.Runtime.InteropServices.ComTypes.CONNECTDATA

---@class System.Runtime.InteropServices.ComTypes.FILETIME : System.ValueType
---@field public dwLowDateTime System.Int32
---@field public dwHighDateTime System.Int32
System.Runtime.InteropServices.ComTypes.FILETIME = {}
---@type System.Runtime.InteropServices.ComTypes.FILETIME
CS.System.Runtime.InteropServices.ComTypes.FILETIME = System.Runtime.InteropServices.ComTypes.FILETIME

---@class System.Runtime.InteropServices.ComTypes.STATSTG : System.ValueType
---@field public pwcsName System.String
---@field public type System.Int32
---@field public cbSize System.Int64
---@field public mtime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public ctime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public atime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public grfMode System.Int32
---@field public grfLocksSupported System.Int32
---@field public clsid System.Guid
---@field public grfStateBits System.Int32
---@field public reserved System.Int32
System.Runtime.InteropServices.ComTypes.STATSTG = {}
---@type System.Runtime.InteropServices.ComTypes.STATSTG
CS.System.Runtime.InteropServices.ComTypes.STATSTG = System.Runtime.InteropServices.ComTypes.STATSTG

---@class System.Runtime.InteropServices.ComTypes.DESCKIND : System.Enum
System.Runtime.InteropServices.ComTypes.DESCKIND = {}
---@type System.Runtime.InteropServices.ComTypes.DESCKIND
CS.System.Runtime.InteropServices.ComTypes.DESCKIND = System.Runtime.InteropServices.ComTypes.DESCKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_FUNCDESC = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_VARDESC = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_TYPECOMP = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_IMPLICITAPPOBJ = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.ComTypes.DESCKIND.DESCKIND_MAX = 5

---@class System.Runtime.InteropServices.ComTypes.BINDPTR : System.ValueType
---@field public lpfuncdesc System.IntPtr
---@field public lpvardesc System.IntPtr
---@field public lptcomp System.IntPtr
System.Runtime.InteropServices.ComTypes.BINDPTR = {}
---@type System.Runtime.InteropServices.ComTypes.BINDPTR
CS.System.Runtime.InteropServices.ComTypes.BINDPTR = System.Runtime.InteropServices.ComTypes.BINDPTR

---@class System.Runtime.InteropServices.ComTypes.TYPEKIND : System.Enum
System.Runtime.InteropServices.ComTypes.TYPEKIND = {}
---@type System.Runtime.InteropServices.ComTypes.TYPEKIND
CS.System.Runtime.InteropServices.ComTypes.TYPEKIND = System.Runtime.InteropServices.ComTypes.TYPEKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_ENUM = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_RECORD = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_MODULE = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_INTERFACE = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_DISPATCH = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_COCLASS = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_ALIAS = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_UNION = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.ComTypes.TYPEKIND.TKIND_MAX = 8

---@class System.Runtime.InteropServices.ComTypes.TYPEFLAGS : System.Enum
System.Runtime.InteropServices.ComTypes.TYPEFLAGS = {}
---@type System.Runtime.InteropServices.ComTypes.TYPEFLAGS
CS.System.Runtime.InteropServices.ComTypes.TYPEFLAGS = System.Runtime.InteropServices.ComTypes.TYPEFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.TYPEFLAGS.TYPEFLAG_FAPPOBJECT = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.TYPEFLAGS.TYPEFLAG_FCANCREATE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.TYPEFLAGS.TYPEFLAG_FLICENSED = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.ComTypes.TYPEFLAGS.TYPEFLAG_FPREDECLID = 8

---@class System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS : System.Enum
System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS = {}
---@type System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS
CS.System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS = System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS.IMPLTYPEFLAG_FDEFAULT = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS.IMPLTYPEFLAG_FSOURCE = 2

---@class System.Runtime.InteropServices.ComTypes.TYPEATTR : System.ValueType
---@field public MEMBER_ID_NIL System.Int32
---@field public guid System.Guid
---@field public lcid System.Int32
---@field public dwReserved System.Int32
---@field public memidConstructor System.Int32
---@field public memidDestructor System.Int32
---@field public lpstrSchema System.IntPtr
---@field public cbSizeInstance System.Int32
---@field public typekind System.Runtime.InteropServices.ComTypes.TYPEKIND
---@field public cFuncs System.Int16
---@field public cVars System.Int16
---@field public cImplTypes System.Int16
---@field public cbSizeVft System.Int16
---@field public cbAlignment System.Int16
---@field public wTypeFlags System.Runtime.InteropServices.ComTypes.TYPEFLAGS
---@field public wMajorVerNum System.Int16
---@field public wMinorVerNum System.Int16
---@field public tdescAlias System.Runtime.InteropServices.ComTypes.TYPEDESC
---@field public idldescType System.Runtime.InteropServices.ComTypes.IDLDESC
System.Runtime.InteropServices.ComTypes.TYPEATTR = {}
---@type System.Runtime.InteropServices.ComTypes.TYPEATTR
CS.System.Runtime.InteropServices.ComTypes.TYPEATTR = System.Runtime.InteropServices.ComTypes.TYPEATTR

---@class System.Runtime.InteropServices.ComTypes.FUNCDESC : System.ValueType
---@field public memid System.Int32
---@field public lprgscode System.IntPtr
---@field public lprgelemdescParam System.IntPtr
---@field public funckind System.Runtime.InteropServices.ComTypes.FUNCKIND
---@field public invkind System.Runtime.InteropServices.ComTypes.INVOKEKIND
---@field public callconv System.Runtime.InteropServices.ComTypes.CALLCONV
---@field public cParams System.Int16
---@field public cParamsOpt System.Int16
---@field public oVft System.Int16
---@field public cScodes System.Int16
---@field public elemdescFunc System.Runtime.InteropServices.ComTypes.ELEMDESC
---@field public wFuncFlags System.Int16
System.Runtime.InteropServices.ComTypes.FUNCDESC = {}
---@type System.Runtime.InteropServices.ComTypes.FUNCDESC
CS.System.Runtime.InteropServices.ComTypes.FUNCDESC = System.Runtime.InteropServices.ComTypes.FUNCDESC

---@class System.Runtime.InteropServices.ComTypes.IDLFLAG : System.Enum
System.Runtime.InteropServices.ComTypes.IDLFLAG = {}
---@type System.Runtime.InteropServices.ComTypes.IDLFLAG
CS.System.Runtime.InteropServices.ComTypes.IDLFLAG = System.Runtime.InteropServices.ComTypes.IDLFLAG

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.IDLFLAG.IDLFLAG_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.IDLFLAG.IDLFLAG_FIN = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.IDLFLAG.IDLFLAG_FOUT = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.IDLFLAG.IDLFLAG_FLCID = 4

---@class System.Runtime.InteropServices.ComTypes.IDLDESC : System.ValueType
---@field public dwReserved System.IntPtr
---@field public wIDLFlags System.Runtime.InteropServices.ComTypes.IDLFLAG
System.Runtime.InteropServices.ComTypes.IDLDESC = {}
---@type System.Runtime.InteropServices.ComTypes.IDLDESC
CS.System.Runtime.InteropServices.ComTypes.IDLDESC = System.Runtime.InteropServices.ComTypes.IDLDESC

---@class System.Runtime.InteropServices.ComTypes.PARAMFLAG : System.Enum
System.Runtime.InteropServices.ComTypes.PARAMFLAG = {}
---@type System.Runtime.InteropServices.ComTypes.PARAMFLAG
CS.System.Runtime.InteropServices.ComTypes.PARAMFLAG = System.Runtime.InteropServices.ComTypes.PARAMFLAG

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.PARAMFLAG.PARAMFLAG_NONE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.PARAMFLAG.PARAMFLAG_FIN = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.PARAMFLAG.PARAMFLAG_FOUT = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.PARAMFLAG.PARAMFLAG_FLCID = 4

---@class System.Runtime.InteropServices.ComTypes.PARAMDESC : System.ValueType
---@field public lpVarValue System.IntPtr
---@field public wParamFlags System.Runtime.InteropServices.ComTypes.PARAMFLAG
System.Runtime.InteropServices.ComTypes.PARAMDESC = {}
---@type System.Runtime.InteropServices.ComTypes.PARAMDESC
CS.System.Runtime.InteropServices.ComTypes.PARAMDESC = System.Runtime.InteropServices.ComTypes.PARAMDESC

---@class System.Runtime.InteropServices.ComTypes.TYPEDESC : System.ValueType
---@field public lpValue System.IntPtr
---@field public vt System.Int16
System.Runtime.InteropServices.ComTypes.TYPEDESC = {}
---@type System.Runtime.InteropServices.ComTypes.TYPEDESC
CS.System.Runtime.InteropServices.ComTypes.TYPEDESC = System.Runtime.InteropServices.ComTypes.TYPEDESC

---@class System.Runtime.InteropServices.ComTypes.ELEMDESC : System.ValueType
---@field public tdesc System.Runtime.InteropServices.ComTypes.TYPEDESC
---@field public desc System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION
System.Runtime.InteropServices.ComTypes.ELEMDESC = {}
---@type System.Runtime.InteropServices.ComTypes.ELEMDESC
CS.System.Runtime.InteropServices.ComTypes.ELEMDESC = System.Runtime.InteropServices.ComTypes.ELEMDESC

---@class System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION : System.ValueType
---@field public idldesc System.Runtime.InteropServices.ComTypes.IDLDESC
---@field public paramdesc System.Runtime.InteropServices.ComTypes.PARAMDESC
System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION = {}
---@type System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION
CS.System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION = System.Runtime.InteropServices.ComTypes.ELEMDESC.DESCUNION

---@class System.Runtime.InteropServices.ComTypes.VARKIND : System.Enum
System.Runtime.InteropServices.ComTypes.VARKIND = {}
---@type System.Runtime.InteropServices.ComTypes.VARKIND
CS.System.Runtime.InteropServices.ComTypes.VARKIND = System.Runtime.InteropServices.ComTypes.VARKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.VARKIND.VAR_PERINSTANCE = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.VARKIND.VAR_STATIC = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.VARKIND.VAR_CONST = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.VARKIND.VAR_DISPATCH = 3

---@class System.Runtime.InteropServices.ComTypes.VARDESC : System.ValueType
---@field public memid System.Int32
---@field public lpstrSchema System.String
---@field public desc System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION
---@field public elemdescVar System.Runtime.InteropServices.ComTypes.ELEMDESC
---@field public wVarFlags System.Int16
---@field public varkind System.Runtime.InteropServices.ComTypes.VARKIND
System.Runtime.InteropServices.ComTypes.VARDESC = {}
---@type System.Runtime.InteropServices.ComTypes.VARDESC
CS.System.Runtime.InteropServices.ComTypes.VARDESC = System.Runtime.InteropServices.ComTypes.VARDESC

---@class System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION : System.ValueType
---@field public oInst System.Int32
---@field public lpvarValue System.IntPtr
System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION = {}
---@type System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION
CS.System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION = System.Runtime.InteropServices.ComTypes.VARDESC.DESCUNION

---@class System.Runtime.InteropServices.ComTypes.DISPPARAMS : System.ValueType
---@field public rgvarg System.IntPtr
---@field public rgdispidNamedArgs System.IntPtr
---@field public cArgs System.Int32
---@field public cNamedArgs System.Int32
System.Runtime.InteropServices.ComTypes.DISPPARAMS = {}
---@type System.Runtime.InteropServices.ComTypes.DISPPARAMS
CS.System.Runtime.InteropServices.ComTypes.DISPPARAMS = System.Runtime.InteropServices.ComTypes.DISPPARAMS

---@class System.Runtime.InteropServices.ComTypes.EXCEPINFO : System.ValueType
---@field public wCode System.Int16
---@field public wReserved System.Int16
---@field public bstrSource System.String
---@field public bstrDescription System.String
---@field public bstrHelpFile System.String
---@field public dwHelpContext System.Int32
---@field public pvReserved System.IntPtr
---@field public pfnDeferredFillIn System.IntPtr
---@field public scode System.Int32
System.Runtime.InteropServices.ComTypes.EXCEPINFO = {}
---@type System.Runtime.InteropServices.ComTypes.EXCEPINFO
CS.System.Runtime.InteropServices.ComTypes.EXCEPINFO = System.Runtime.InteropServices.ComTypes.EXCEPINFO

---@class System.Runtime.InteropServices.ComTypes.FUNCKIND : System.Enum
System.Runtime.InteropServices.ComTypes.FUNCKIND = {}
---@type System.Runtime.InteropServices.ComTypes.FUNCKIND
CS.System.Runtime.InteropServices.ComTypes.FUNCKIND = System.Runtime.InteropServices.ComTypes.FUNCKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.FUNCKIND.FUNC_VIRTUAL = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.FUNCKIND.FUNC_PUREVIRTUAL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.FUNCKIND.FUNC_NONVIRTUAL = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.FUNCKIND.FUNC_STATIC = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.FUNCKIND.FUNC_DISPATCH = 4

---@class System.Runtime.InteropServices.ComTypes.INVOKEKIND : System.Enum
System.Runtime.InteropServices.ComTypes.INVOKEKIND = {}
---@type System.Runtime.InteropServices.ComTypes.INVOKEKIND
CS.System.Runtime.InteropServices.ComTypes.INVOKEKIND = System.Runtime.InteropServices.ComTypes.INVOKEKIND

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.INVOKEKIND.INVOKE_FUNC = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.INVOKEKIND.INVOKE_PROPERTYGET = 2

---@class System.Runtime.InteropServices.ComTypes.CALLCONV : System.Enum
System.Runtime.InteropServices.ComTypes.CALLCONV = {}
---@type System.Runtime.InteropServices.ComTypes.CALLCONV
CS.System.Runtime.InteropServices.ComTypes.CALLCONV = System.Runtime.InteropServices.ComTypes.CALLCONV

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_CDECL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_MSCPASCAL = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_MACPASCAL = 3
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_STDCALL = 4
---@return System.Int32 value:5
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_RESERVED = 5
---@return System.Int32 value:6
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_SYSCALL = 6
---@return System.Int32 value:7
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_MPWCDECL = 7
---@return System.Int32 value:8
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_MPWPASCAL = 8
---@return System.Int32 value:9
System.Runtime.InteropServices.ComTypes.CALLCONV.CC_MAX = 9

---@class System.Runtime.InteropServices.ComTypes.FUNCFLAGS : System.Enum
System.Runtime.InteropServices.ComTypes.FUNCFLAGS = {}
---@type System.Runtime.InteropServices.ComTypes.FUNCFLAGS
CS.System.Runtime.InteropServices.ComTypes.FUNCFLAGS = System.Runtime.InteropServices.ComTypes.FUNCFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.FUNCFLAGS.FUNCFLAG_FRESTRICTED = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.FUNCFLAGS.FUNCFLAG_FSOURCE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.FUNCFLAGS.FUNCFLAG_FBINDABLE = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.ComTypes.FUNCFLAGS.FUNCFLAG_FREQUESTEDIT = 8

---@class System.Runtime.InteropServices.ComTypes.VARFLAGS : System.Enum
System.Runtime.InteropServices.ComTypes.VARFLAGS = {}
---@type System.Runtime.InteropServices.ComTypes.VARFLAGS
CS.System.Runtime.InteropServices.ComTypes.VARFLAGS = System.Runtime.InteropServices.ComTypes.VARFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.VARFLAGS.VARFLAG_FREADONLY = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.VARFLAGS.VARFLAG_FSOURCE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.VARFLAGS.VARFLAG_FBINDABLE = 4
---@return System.Int32 value:8
System.Runtime.InteropServices.ComTypes.VARFLAGS.VARFLAG_FREQUESTEDIT = 8

---@class System.Runtime.InteropServices.ComTypes.SYSKIND : System.Enum
System.Runtime.InteropServices.ComTypes.SYSKIND = {}
---@type System.Runtime.InteropServices.ComTypes.SYSKIND
CS.System.Runtime.InteropServices.ComTypes.SYSKIND = System.Runtime.InteropServices.ComTypes.SYSKIND

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.SYSKIND.SYS_WIN16 = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.SYSKIND.SYS_WIN32 = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.SYSKIND.SYS_MAC = 2
---@return System.Int32 value:3
System.Runtime.InteropServices.ComTypes.SYSKIND.SYS_WIN64 = 3

---@class System.Runtime.InteropServices.ComTypes.LIBFLAGS : System.Enum
System.Runtime.InteropServices.ComTypes.LIBFLAGS = {}
---@type System.Runtime.InteropServices.ComTypes.LIBFLAGS
CS.System.Runtime.InteropServices.ComTypes.LIBFLAGS = System.Runtime.InteropServices.ComTypes.LIBFLAGS

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.LIBFLAGS.LIBFLAG_FRESTRICTED = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.LIBFLAGS.LIBFLAG_FCONTROL = 2

---@class System.Runtime.InteropServices.ComTypes.TYPELIBATTR : System.ValueType
---@field public guid System.Guid
---@field public lcid System.Int32
---@field public syskind System.Runtime.InteropServices.ComTypes.SYSKIND
---@field public wMajorVerNum System.Int16
---@field public wMinorVerNum System.Int16
---@field public wLibFlags System.Runtime.InteropServices.ComTypes.LIBFLAGS
System.Runtime.InteropServices.ComTypes.TYPELIBATTR = {}
---@type System.Runtime.InteropServices.ComTypes.TYPELIBATTR
CS.System.Runtime.InteropServices.ComTypes.TYPELIBATTR = System.Runtime.InteropServices.ComTypes.TYPELIBATTR

---@class System.Runtime.InteropServices.ComTypes.ADVF : System.Enum
System.Runtime.InteropServices.ComTypes.ADVF = {}
---@type System.Runtime.InteropServices.ComTypes.ADVF
CS.System.Runtime.InteropServices.ComTypes.ADVF = System.Runtime.InteropServices.ComTypes.ADVF

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.ADVF.ADVF_NODATA = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.ADVF.ADVF_PRIMEFIRST = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.ADVF.ADVF_ONLYONCE = 4

---@class System.Runtime.InteropServices.ComTypes.DATADIR : System.Enum
System.Runtime.InteropServices.ComTypes.DATADIR = {}
---@type System.Runtime.InteropServices.ComTypes.DATADIR
CS.System.Runtime.InteropServices.ComTypes.DATADIR = System.Runtime.InteropServices.ComTypes.DATADIR

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.DATADIR.DATADIR_GET = 1

---@class System.Runtime.InteropServices.ComTypes.DVASPECT : System.Enum
System.Runtime.InteropServices.ComTypes.DVASPECT = {}
---@type System.Runtime.InteropServices.ComTypes.DVASPECT
CS.System.Runtime.InteropServices.ComTypes.DVASPECT = System.Runtime.InteropServices.ComTypes.DVASPECT

---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.DVASPECT.DVASPECT_CONTENT = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.DVASPECT.DVASPECT_THUMBNAIL = 2

---@class System.Runtime.InteropServices.ComTypes.FORMATETC : System.ValueType
---@field public cfFormat System.Int16
---@field public dwAspect System.Runtime.InteropServices.ComTypes.DVASPECT
---@field public lindex System.Int32
---@field public ptd System.IntPtr
---@field public tymed System.Runtime.InteropServices.ComTypes.TYMED
System.Runtime.InteropServices.ComTypes.FORMATETC = {}
---@type System.Runtime.InteropServices.ComTypes.FORMATETC
CS.System.Runtime.InteropServices.ComTypes.FORMATETC = System.Runtime.InteropServices.ComTypes.FORMATETC

---@class System.Runtime.InteropServices.ComTypes.STATDATA : System.ValueType
---@field public advf System.Runtime.InteropServices.ComTypes.ADVF
---@field public advSink System.Runtime.InteropServices.ComTypes.IAdviseSink
---@field public connection System.Int32
---@field public formatetc System.Runtime.InteropServices.ComTypes.FORMATETC
System.Runtime.InteropServices.ComTypes.STATDATA = {}
---@type System.Runtime.InteropServices.ComTypes.STATDATA
CS.System.Runtime.InteropServices.ComTypes.STATDATA = System.Runtime.InteropServices.ComTypes.STATDATA

---@class System.Runtime.InteropServices.ComTypes.STGMEDIUM : System.ValueType
---@field public pUnkForRelease System.Object
---@field public tymed System.Runtime.InteropServices.ComTypes.TYMED
---@field public unionmember System.IntPtr
System.Runtime.InteropServices.ComTypes.STGMEDIUM = {}
---@type System.Runtime.InteropServices.ComTypes.STGMEDIUM
CS.System.Runtime.InteropServices.ComTypes.STGMEDIUM = System.Runtime.InteropServices.ComTypes.STGMEDIUM

---@class System.Runtime.InteropServices.ComTypes.TYMED : System.Enum
System.Runtime.InteropServices.ComTypes.TYMED = {}
---@type System.Runtime.InteropServices.ComTypes.TYMED
CS.System.Runtime.InteropServices.ComTypes.TYMED = System.Runtime.InteropServices.ComTypes.TYMED

---@return System.Int32 value:0
System.Runtime.InteropServices.ComTypes.TYMED.TYMED_NULL = 0
---@return System.Int32 value:1
System.Runtime.InteropServices.ComTypes.TYMED.TYMED_HGLOBAL = 1
---@return System.Int32 value:2
System.Runtime.InteropServices.ComTypes.TYMED.TYMED_FILE = 2
---@return System.Int32 value:4
System.Runtime.InteropServices.ComTypes.TYMED.TYMED_ISTREAM = 4

