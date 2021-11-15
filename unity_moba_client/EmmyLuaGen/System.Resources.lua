---@class System.Resources.MissingManifestResourceException : System.SystemException
System.Resources.MissingManifestResourceException = {}
---@type System.Resources.MissingManifestResourceException
CS.System.Resources.MissingManifestResourceException = System.Resources.MissingManifestResourceException

---@class System.Resources.MissingSatelliteAssemblyException : System.SystemException
---@field public CultureName System.String @  getter
System.Resources.MissingSatelliteAssemblyException = {}
---@type System.Resources.MissingSatelliteAssemblyException
CS.System.Resources.MissingSatelliteAssemblyException = System.Resources.MissingSatelliteAssemblyException

---@class System.Resources.NeutralResourcesLanguageAttribute : System.Attribute
---@field public CultureName System.String @  getter
---@field public Location System.Resources.UltimateResourceFallbackLocation @  getter
System.Resources.NeutralResourcesLanguageAttribute = {}
---@type System.Resources.NeutralResourcesLanguageAttribute
CS.System.Resources.NeutralResourcesLanguageAttribute = System.Resources.NeutralResourcesLanguageAttribute

---@class System.Resources.ResourceManager : System.Object
---@field public BaseName System.String @  getter
---@field public IgnoreCase System.Boolean @ setter getter
---@field public ResourceSetType System.Type @  getter
---@field public MagicNumber System.Int32
---@field public HeaderVersionNumber System.Int32
System.Resources.ResourceManager = {}
---@type System.Resources.ResourceManager
CS.System.Resources.ResourceManager = System.Resources.ResourceManager

---@return System.Void
function System.Resources.ResourceManager:ReleaseAllResources()end
---@param baseName System.String
---@param resourceDir System.String
---@param usingResourceSet System.Type
---@return System.Resources.ResourceManager
function System.Resources.ResourceManager.CreateFileBasedResourceManager(baseName, resourceDir, usingResourceSet)end
---@param culture System.Globalization.CultureInfo
---@param createIfNotExists System.Boolean
---@param tryParents System.Boolean
---@return System.Resources.ResourceSet
function System.Resources.ResourceManager:GetResourceSet(culture, createIfNotExists, tryParents)end
---@overload fun(name:System.String, culture:System.Globalization.CultureInfo):System.String
---@param name System.String
---@return System.String
function System.Resources.ResourceManager:GetString(name)end
---@overload fun(name:System.String, culture:System.Globalization.CultureInfo):System.Object
---@param name System.String
---@return System.Object
function System.Resources.ResourceManager:GetObject(name)end
---@overload fun(name:System.String, culture:System.Globalization.CultureInfo):System.IO.UnmanagedMemoryStream
---@param name System.String
---@return System.IO.UnmanagedMemoryStream
function System.Resources.ResourceManager:GetStream(name)end
---@class System.Resources.ResourceReader : System.Object
System.Resources.ResourceReader = {}
---@type System.Resources.ResourceReader
CS.System.Resources.ResourceReader = System.Resources.ResourceReader

---@return System.Void
function System.Resources.ResourceReader:Close()end
---@return System.Void
function System.Resources.ResourceReader:Dispose()end
---@return System.Collections.IDictionaryEnumerator
function System.Resources.ResourceReader:GetEnumerator()end
---@param resourceName System.String
---@param resourceType System.String
---@param resourceData System.Byte[]
---@return System.Void
function System.Resources.ResourceReader:GetResourceData(resourceName, resourceType, resourceData)end
---@class System.Resources.ResourceSet : System.Object
System.Resources.ResourceSet = {}
---@type System.Resources.ResourceSet
CS.System.Resources.ResourceSet = System.Resources.ResourceSet

---@return System.Void
function System.Resources.ResourceSet:Close()end
---@return System.Void
function System.Resources.ResourceSet:Dispose()end
---@return System.Type
function System.Resources.ResourceSet:GetDefaultReader()end
---@return System.Type
function System.Resources.ResourceSet:GetDefaultWriter()end
---@return System.Collections.IDictionaryEnumerator
function System.Resources.ResourceSet:GetEnumerator()end
---@overload fun(name:System.String, ignoreCase:System.Boolean):System.String
---@param name System.String
---@return System.String
function System.Resources.ResourceSet:GetString(name)end
---@overload fun(name:System.String, ignoreCase:System.Boolean):System.Object
---@param name System.String
---@return System.Object
function System.Resources.ResourceSet:GetObject(name)end
---@class System.Resources.ResourceWriter : System.Object
---@field public TypeNameConverter System.Func @ setter getter
System.Resources.ResourceWriter = {}
---@type System.Resources.ResourceWriter
CS.System.Resources.ResourceWriter = System.Resources.ResourceWriter

---@overload fun(name:System.String, value:System.Object):System.Void
---@overload fun(name:System.String, value:System.IO.Stream):System.Void
---@overload fun(name:System.String, value:System.Byte[]):System.Void
---@overload fun(name:System.String, value:System.IO.Stream, closeAfterWrite:System.Boolean):System.Void
---@param name System.String
---@param value System.String
---@return System.Void
function System.Resources.ResourceWriter:AddResource(name, value)end
---@param name System.String
---@param typeName System.String
---@param serializedData System.Byte[]
---@return System.Void
function System.Resources.ResourceWriter:AddResourceData(name, typeName, serializedData)end
---@return System.Void
function System.Resources.ResourceWriter:Close()end
---@return System.Void
function System.Resources.ResourceWriter:Dispose()end
---@return System.Void
function System.Resources.ResourceWriter:Generate()end
---@class System.Resources.SatelliteContractVersionAttribute : System.Attribute
---@field public Version System.String @  getter
System.Resources.SatelliteContractVersionAttribute = {}
---@type System.Resources.SatelliteContractVersionAttribute
CS.System.Resources.SatelliteContractVersionAttribute = System.Resources.SatelliteContractVersionAttribute

---@class System.Resources.UltimateResourceFallbackLocation : System.Enum
System.Resources.UltimateResourceFallbackLocation = {}
---@type System.Resources.UltimateResourceFallbackLocation
CS.System.Resources.UltimateResourceFallbackLocation = System.Resources.UltimateResourceFallbackLocation

---@return System.Int32 value:0
System.Resources.UltimateResourceFallbackLocation.MainAssembly = 0
---@return System.Int32 value:1
System.Resources.UltimateResourceFallbackLocation.Satellite = 1

