---@class Unity.DataContract.UpdateMode : System.Enum
Unity.DataContract.UpdateMode = {}
---@type Unity.DataContract.UpdateMode
CS.Unity.DataContract.UpdateMode = Unity.DataContract.UpdateMode

---@return System.Int32 value:0
Unity.DataContract.UpdateMode.Automatic = 0
---@return System.Int32 value:1
Unity.DataContract.UpdateMode.Periodic = 1
---@return System.Int32 value:2
Unity.DataContract.UpdateMode.Manual = 2

---@class Unity.DataContract.PackageInfo : System.Object
---@field public files System.Collections.Generic.Dictionary @ setter getter
---@field public packageName System.String @  getter
---@field public organisation System.String
---@field public name System.String
---@field public version Unity.DataContract.PackageVersion
---@field public unityVersion Unity.DataContract.PackageVersion
---@field public basePath System.String
---@field public type Unity.DataContract.PackageType
---@field public description System.String
---@field public releaseNotes System.String
---@field public loaded System.Boolean
Unity.DataContract.PackageInfo = {}
---@type Unity.DataContract.PackageInfo
CS.Unity.DataContract.PackageInfo = Unity.DataContract.PackageInfo

---@return System.String
function Unity.DataContract.PackageInfo:ToString()end
---@return System.Int32
function Unity.DataContract.PackageInfo:GetHashCode()end
---@param other System.Object
---@return System.Boolean
function Unity.DataContract.PackageInfo:Equals(other)end
---@param a Unity.DataContract.PackageInfo
---@param z Unity.DataContract.PackageInfo
---@return System.Boolean
function Unity.DataContract.PackageInfo.op_Equality(a, z)end
---@param a Unity.DataContract.PackageInfo
---@param z Unity.DataContract.PackageInfo
---@return System.Boolean
function Unity.DataContract.PackageInfo.op_Inequality(a, z)end
---@class Unity.DataContract.PackageFileData : System.Object
---@field public type Unity.DataContract.PackageFileType
---@field public url System.String
---@field public guid System.String
Unity.DataContract.PackageFileData = {}
---@type Unity.DataContract.PackageFileData
CS.Unity.DataContract.PackageFileData = Unity.DataContract.PackageFileData

---@class Unity.DataContract.PackageType : System.Enum
Unity.DataContract.PackageType = {}
---@type Unity.DataContract.PackageType
CS.Unity.DataContract.PackageType = Unity.DataContract.PackageType

---@return System.Int32 value:0
Unity.DataContract.PackageType.Unknown = 0
---@return System.Int32 value:1
Unity.DataContract.PackageType.PlaybackEngine = 1
---@return System.Int32 value:2
Unity.DataContract.PackageType.UnityExtension = 2
---@return System.Int32 value:3
Unity.DataContract.PackageType.PackageManager = 3

---@class Unity.DataContract.PackageFileType : System.Enum
Unity.DataContract.PackageFileType = {}
---@type Unity.DataContract.PackageFileType
CS.Unity.DataContract.PackageFileType = Unity.DataContract.PackageFileType

---@return System.Int32 value:0
Unity.DataContract.PackageFileType.None = 0
---@return System.Int32 value:1
Unity.DataContract.PackageFileType.Package = 1
---@return System.Int32 value:2
Unity.DataContract.PackageFileType.Ivy = 2
---@return System.Int32 value:3
Unity.DataContract.PackageFileType.Dll = 3
---@return System.Int32 value:4
Unity.DataContract.PackageFileType.ReleaseNotes = 4
---@return System.Int32 value:5
Unity.DataContract.PackageFileType.DebugSymbols = 5

---@class Unity.DataContract.PackageVersion : System.Object
---@field public major System.Int32 @ setter getter
---@field public minor System.Int32 @ setter getter
---@field public micro System.Int32 @ setter getter
---@field public special System.String @ setter getter
---@field public text System.String @ setter getter
---@field public parts System.Int32 @ setter getter
Unity.DataContract.PackageVersion = {}
---@type Unity.DataContract.PackageVersion
CS.Unity.DataContract.PackageVersion = Unity.DataContract.PackageVersion

---@return System.String
function Unity.DataContract.PackageVersion:ToString()end
---@param obj System.Object
---@return System.Int32
function Unity.DataContract.PackageVersion:CompareTo(obj)end
---@return System.Int32
function Unity.DataContract.PackageVersion:GetHashCode()end
---@param other Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion:IsCompatibleWith(other)end
---@param obj System.Object
---@return System.Boolean
function Unity.DataContract.PackageVersion:Equals(obj)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_Equality(a, z)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_Inequality(a, z)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_GreaterThan(a, z)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_LessThan(a, z)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_GreaterThanOrEqual(a, z)end
---@param a Unity.DataContract.PackageVersion
---@param z Unity.DataContract.PackageVersion
---@return System.Boolean
function Unity.DataContract.PackageVersion.op_LessThanOrEqual(a, z)end
---@param version Unity.DataContract.PackageVersion
---@return System.String
function Unity.DataContract.PackageVersion.op_Implicit(version)end
