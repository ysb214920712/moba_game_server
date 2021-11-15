---@class System.Configuration.Internal.DelegatingConfigHost : System.Object
---@field public IsRemote System.Boolean @  getter
---@field public SupportsChangeNotifications System.Boolean @  getter
---@field public SupportsLocation System.Boolean @  getter
---@field public SupportsPath System.Boolean @  getter
---@field public SupportsRefresh System.Boolean @  getter
System.Configuration.Internal.DelegatingConfigHost = {}
---@type System.Configuration.Internal.DelegatingConfigHost
CS.System.Configuration.Internal.DelegatingConfigHost = System.Configuration.Internal.DelegatingConfigHost

---@param configPath System.String
---@param locationSubPath System.String
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:CreateConfigurationContext(configPath, locationSubPath)end
---@param configPath System.String
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:CreateDeprecatedConfigContext(configPath)end
---@param encryptedXml System.String
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:DecryptSection(encryptedXml, protectionProvider, protectedConfigSection)end
---@param streamName System.String
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:DeleteStream(streamName)end
---@param clearTextXml System.String
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:EncryptSection(clearTextXml, protectionProvider, protectedConfigSection)end
---@param configPath System.String
---@param locationSubPath System.String
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:GetConfigPathFromLocationSubPath(configPath, locationSubPath)end
---@param typeName System.String
---@param throwOnError System.Boolean
---@return System.Type
function System.Configuration.Internal.DelegatingConfigHost:GetConfigType(typeName, throwOnError)end
---@param t System.Type
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:GetConfigTypeName(t)end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@param permissionSet System.Security.PermissionSet
---@param isHostReady System.Boolean
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:GetRestrictedPermissions(configRecord, permissionSet, isHostReady)end
---@param configPath System.String
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:GetStreamName(configPath)end
---@param streamName System.String
---@param configSource System.String
---@return System.String
function System.Configuration.Internal.DelegatingConfigHost:GetStreamNameForConfigSource(streamName, configSource)end
---@param streamName System.String
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:GetStreamVersion(streamName)end
---@return System.IDisposable
function System.Configuration.Internal.DelegatingConfigHost:Impersonate()end
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:Init(configRoot, hostInitParams)end
---@param locationSubPath System.String
---@param configPath System.String
---@param locationConfigPath System.String
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:InitForConfiguration(locationSubPath, configPath, locationConfigPath, configRoot, hostInitConfigurationParams)end
---@param configPath System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsAboveApplication(configPath)end
---@param configPath System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsConfigRecordRequired(configPath)end
---@param configPath System.String
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsDefinitionAllowed(configPath, allowDefinition, allowExeDefinition)end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsInitDelayed(configRecord)end
---@param streamName System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsFile(streamName)end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsFullTrustSectionWithoutAptcaAllowed(configRecord)end
---@param configPath System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsLocationApplicable(configPath)end
---@param configPath System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsSecondaryRoot(configPath)end
---@param configPath System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:IsTrustedConfigPath(configPath)end
---@overload fun(streamName:System.String, assertPermissions:System.Boolean):System.IO.Stream
---@param streamName System.String
---@return System.IO.Stream
function System.Configuration.Internal.DelegatingConfigHost:OpenStreamForRead(streamName)end
---@overload fun(streamName:System.String, templateStreamName:System.String, writeContext:System.Object, assertPermissions:System.Boolean):System.IO.Stream
---@param streamName System.String
---@param templateStreamName System.String
---@param writeContext System.Object
---@return System.IO.Stream
function System.Configuration.Internal.DelegatingConfigHost:OpenStreamForWrite(streamName, templateStreamName, writeContext)end
---@param configPath System.String
---@param streamName System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:PrefetchAll(configPath, streamName)end
---@param sectionGroupName System.String
---@param sectionName System.String
---@return System.Boolean
function System.Configuration.Internal.DelegatingConfigHost:PrefetchSection(sectionGroupName, sectionName)end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:RequireCompleteInit(configRecord)end
---@param streamName System.String
---@param callback System.Configuration.Internal.StreamChangeCallback
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:StartMonitoringStreamForChanges(streamName, callback)end
---@param streamName System.String
---@param callback System.Configuration.Internal.StreamChangeCallback
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:StopMonitoringStreamForChanges(streamName, callback)end
---@param configPath System.String
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:VerifyDefinitionAllowed(configPath, allowDefinition, allowExeDefinition, errorInfo)end
---@overload fun(streamName:System.String, success:System.Boolean, writeContext:System.Object, assertPermissions:System.Boolean):System.Void
---@param streamName System.String
---@param success System.Boolean
---@param writeContext System.Object
---@return System.Void
function System.Configuration.Internal.DelegatingConfigHost:WriteCompleted(streamName, success, writeContext)end
---@param configSection System.Configuration.ConfigurationSection
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Configuration.ConfigurationSection
function System.Configuration.Internal.DelegatingConfigHost:ProcessConfigurationSection(configSection, builder)end
---@param rawXml System.Xml.XmlNode
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Xml.XmlNode
function System.Configuration.Internal.DelegatingConfigHost:ProcessRawXml(rawXml, builder)end
---@class System.Configuration.Internal.InternalConfigEventArgs : System.EventArgs
---@field public ConfigPath System.String @ setter getter
System.Configuration.Internal.InternalConfigEventArgs = {}
---@type System.Configuration.Internal.InternalConfigEventArgs
CS.System.Configuration.Internal.InternalConfigEventArgs = System.Configuration.Internal.InternalConfigEventArgs

