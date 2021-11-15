---@class System.Net.Configuration.UnicodeDecodingConformance : System.Enum
System.Net.Configuration.UnicodeDecodingConformance = {}
---@type System.Net.Configuration.UnicodeDecodingConformance
CS.System.Net.Configuration.UnicodeDecodingConformance = System.Net.Configuration.UnicodeDecodingConformance

---@return System.Int32 value:0
System.Net.Configuration.UnicodeDecodingConformance.Auto = 0
---@return System.Int32 value:1
System.Net.Configuration.UnicodeDecodingConformance.Strict = 1
---@return System.Int32 value:2
System.Net.Configuration.UnicodeDecodingConformance.Compat = 2
---@return System.Int32 value:3
System.Net.Configuration.UnicodeDecodingConformance.Loose = 3

---@class System.Net.Configuration.UnicodeEncodingConformance : System.Enum
System.Net.Configuration.UnicodeEncodingConformance = {}
---@type System.Net.Configuration.UnicodeEncodingConformance
CS.System.Net.Configuration.UnicodeEncodingConformance = System.Net.Configuration.UnicodeEncodingConformance

---@return System.Int32 value:0
System.Net.Configuration.UnicodeEncodingConformance.Auto = 0
---@return System.Int32 value:1
System.Net.Configuration.UnicodeEncodingConformance.Strict = 1
---@return System.Int32 value:2
System.Net.Configuration.UnicodeEncodingConformance.Compat = 2

---@class System.Net.Configuration.AuthenticationModuleElement : System.Configuration.ConfigurationElement
---@field public Type System.String @ setter getter
System.Net.Configuration.AuthenticationModuleElement = {}
---@type System.Net.Configuration.AuthenticationModuleElement
CS.System.Net.Configuration.AuthenticationModuleElement = System.Net.Configuration.AuthenticationModuleElement

---@class System.Net.Configuration.AuthenticationModuleElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Net.Configuration.AuthenticationModuleElement @ setter getter
---@field public Item System.Net.Configuration.AuthenticationModuleElement @ setter getter
System.Net.Configuration.AuthenticationModuleElementCollection = {}
---@type System.Net.Configuration.AuthenticationModuleElementCollection
CS.System.Net.Configuration.AuthenticationModuleElementCollection = System.Net.Configuration.AuthenticationModuleElementCollection

---@param element System.Net.Configuration.AuthenticationModuleElement
---@return System.Void
function System.Net.Configuration.AuthenticationModuleElementCollection:Add(element)end
---@return System.Void
function System.Net.Configuration.AuthenticationModuleElementCollection:Clear()end
---@param element System.Net.Configuration.AuthenticationModuleElement
---@return System.Int32
function System.Net.Configuration.AuthenticationModuleElementCollection:IndexOf(element)end
---@overload fun(name:System.String):System.Void
---@param element System.Net.Configuration.AuthenticationModuleElement
---@return System.Void
function System.Net.Configuration.AuthenticationModuleElementCollection:Remove(element)end
---@param index System.Int32
---@return System.Void
function System.Net.Configuration.AuthenticationModuleElementCollection:RemoveAt(index)end
---@class System.Net.Configuration.AuthenticationModulesSection : System.Configuration.ConfigurationSection
---@field public AuthenticationModules System.Net.Configuration.AuthenticationModuleElementCollection @  getter
System.Net.Configuration.AuthenticationModulesSection = {}
---@type System.Net.Configuration.AuthenticationModulesSection
CS.System.Net.Configuration.AuthenticationModulesSection = System.Net.Configuration.AuthenticationModulesSection

---@class System.Net.Configuration.BypassElement : System.Configuration.ConfigurationElement
---@field public Address System.String @ setter getter
System.Net.Configuration.BypassElement = {}
---@type System.Net.Configuration.BypassElement
CS.System.Net.Configuration.BypassElement = System.Net.Configuration.BypassElement

---@class System.Net.Configuration.BypassElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Net.Configuration.BypassElement @ setter getter
---@field public Item System.Net.Configuration.BypassElement @ setter getter
System.Net.Configuration.BypassElementCollection = {}
---@type System.Net.Configuration.BypassElementCollection
CS.System.Net.Configuration.BypassElementCollection = System.Net.Configuration.BypassElementCollection

---@param element System.Net.Configuration.BypassElement
---@return System.Void
function System.Net.Configuration.BypassElementCollection:Add(element)end
---@return System.Void
function System.Net.Configuration.BypassElementCollection:Clear()end
---@param element System.Net.Configuration.BypassElement
---@return System.Int32
function System.Net.Configuration.BypassElementCollection:IndexOf(element)end
---@overload fun(name:System.String):System.Void
---@param element System.Net.Configuration.BypassElement
---@return System.Void
function System.Net.Configuration.BypassElementCollection:Remove(element)end
---@param index System.Int32
---@return System.Void
function System.Net.Configuration.BypassElementCollection:RemoveAt(index)end
---@class System.Net.Configuration.ConnectionManagementElement : System.Configuration.ConfigurationElement
---@field public Address System.String @ setter getter
---@field public MaxConnection System.Int32 @ setter getter
System.Net.Configuration.ConnectionManagementElement = {}
---@type System.Net.Configuration.ConnectionManagementElement
CS.System.Net.Configuration.ConnectionManagementElement = System.Net.Configuration.ConnectionManagementElement

---@class System.Net.Configuration.ConnectionManagementElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Net.Configuration.ConnectionManagementElement @ setter getter
---@field public Item System.Net.Configuration.ConnectionManagementElement @ setter getter
System.Net.Configuration.ConnectionManagementElementCollection = {}
---@type System.Net.Configuration.ConnectionManagementElementCollection
CS.System.Net.Configuration.ConnectionManagementElementCollection = System.Net.Configuration.ConnectionManagementElementCollection

---@param element System.Net.Configuration.ConnectionManagementElement
---@return System.Void
function System.Net.Configuration.ConnectionManagementElementCollection:Add(element)end
---@return System.Void
function System.Net.Configuration.ConnectionManagementElementCollection:Clear()end
---@param element System.Net.Configuration.ConnectionManagementElement
---@return System.Int32
function System.Net.Configuration.ConnectionManagementElementCollection:IndexOf(element)end
---@overload fun(name:System.String):System.Void
---@param element System.Net.Configuration.ConnectionManagementElement
---@return System.Void
function System.Net.Configuration.ConnectionManagementElementCollection:Remove(element)end
---@param index System.Int32
---@return System.Void
function System.Net.Configuration.ConnectionManagementElementCollection:RemoveAt(index)end
---@class System.Net.Configuration.ConnectionManagementSection : System.Configuration.ConfigurationSection
---@field public ConnectionManagement System.Net.Configuration.ConnectionManagementElementCollection @  getter
System.Net.Configuration.ConnectionManagementSection = {}
---@type System.Net.Configuration.ConnectionManagementSection
CS.System.Net.Configuration.ConnectionManagementSection = System.Net.Configuration.ConnectionManagementSection

---@class System.Net.Configuration.DefaultProxySection : System.Configuration.ConfigurationSection
---@field public BypassList System.Net.Configuration.BypassElementCollection @  getter
---@field public Enabled System.Boolean @ setter getter
---@field public Module System.Net.Configuration.ModuleElement @  getter
---@field public Proxy System.Net.Configuration.ProxyElement @  getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
System.Net.Configuration.DefaultProxySection = {}
---@type System.Net.Configuration.DefaultProxySection
CS.System.Net.Configuration.DefaultProxySection = System.Net.Configuration.DefaultProxySection

---@class System.Net.Configuration.FtpCachePolicyElement : System.Configuration.ConfigurationElement
---@field public PolicyLevel System.Net.Cache.RequestCacheLevel @ setter getter
System.Net.Configuration.FtpCachePolicyElement = {}
---@type System.Net.Configuration.FtpCachePolicyElement
CS.System.Net.Configuration.FtpCachePolicyElement = System.Net.Configuration.FtpCachePolicyElement

---@class System.Net.Configuration.HttpCachePolicyElement : System.Configuration.ConfigurationElement
---@field public MaximumAge System.TimeSpan @ setter getter
---@field public MaximumStale System.TimeSpan @ setter getter
---@field public MinimumFresh System.TimeSpan @ setter getter
---@field public PolicyLevel System.Net.Cache.HttpRequestCacheLevel @ setter getter
System.Net.Configuration.HttpCachePolicyElement = {}
---@type System.Net.Configuration.HttpCachePolicyElement
CS.System.Net.Configuration.HttpCachePolicyElement = System.Net.Configuration.HttpCachePolicyElement

---@class System.Net.Configuration.HttpWebRequestElement : System.Configuration.ConfigurationElement
---@field public MaximumErrorResponseLength System.Int32 @ setter getter
---@field public MaximumResponseHeadersLength System.Int32 @ setter getter
---@field public MaximumUnauthorizedUploadLength System.Int32 @ setter getter
---@field public UseUnsafeHeaderParsing System.Boolean @ setter getter
System.Net.Configuration.HttpWebRequestElement = {}
---@type System.Net.Configuration.HttpWebRequestElement
CS.System.Net.Configuration.HttpWebRequestElement = System.Net.Configuration.HttpWebRequestElement

---@class System.Net.Configuration.Ipv6Element : System.Configuration.ConfigurationElement
---@field public Enabled System.Boolean @ setter getter
System.Net.Configuration.Ipv6Element = {}
---@type System.Net.Configuration.Ipv6Element
CS.System.Net.Configuration.Ipv6Element = System.Net.Configuration.Ipv6Element

---@class System.Net.Configuration.MailSettingsSectionGroup : System.Configuration.ConfigurationSectionGroup
---@field public Smtp System.Net.Configuration.SmtpSection @  getter
System.Net.Configuration.MailSettingsSectionGroup = {}
---@type System.Net.Configuration.MailSettingsSectionGroup
CS.System.Net.Configuration.MailSettingsSectionGroup = System.Net.Configuration.MailSettingsSectionGroup

---@class System.Net.Configuration.ModuleElement : System.Configuration.ConfigurationElement
---@field public Type System.String @ setter getter
System.Net.Configuration.ModuleElement = {}
---@type System.Net.Configuration.ModuleElement
CS.System.Net.Configuration.ModuleElement = System.Net.Configuration.ModuleElement

---@class System.Net.Configuration.NetSectionGroup : System.Configuration.ConfigurationSectionGroup
---@field public AuthenticationModules System.Net.Configuration.AuthenticationModulesSection @  getter
---@field public ConnectionManagement System.Net.Configuration.ConnectionManagementSection @  getter
---@field public DefaultProxy System.Net.Configuration.DefaultProxySection @  getter
---@field public MailSettings System.Net.Configuration.MailSettingsSectionGroup @  getter
---@field public RequestCaching System.Net.Configuration.RequestCachingSection @  getter
---@field public Settings System.Net.Configuration.SettingsSection @  getter
---@field public WebRequestModules System.Net.Configuration.WebRequestModulesSection @  getter
System.Net.Configuration.NetSectionGroup = {}
---@type System.Net.Configuration.NetSectionGroup
CS.System.Net.Configuration.NetSectionGroup = System.Net.Configuration.NetSectionGroup

---@param config System.Configuration.Configuration
---@return System.Net.Configuration.NetSectionGroup
function System.Net.Configuration.NetSectionGroup.GetSectionGroup(config)end
---@class System.Net.Configuration.PerformanceCountersElement : System.Configuration.ConfigurationElement
---@field public Enabled System.Boolean @ setter getter
System.Net.Configuration.PerformanceCountersElement = {}
---@type System.Net.Configuration.PerformanceCountersElement
CS.System.Net.Configuration.PerformanceCountersElement = System.Net.Configuration.PerformanceCountersElement

---@class System.Net.Configuration.ProxyElement : System.Configuration.ConfigurationElement
---@field public AutoDetect System.Net.Configuration.ProxyElement.AutoDetectValues @ setter getter
---@field public BypassOnLocal System.Net.Configuration.ProxyElement.BypassOnLocalValues @ setter getter
---@field public ProxyAddress System.Uri @ setter getter
---@field public ScriptLocation System.Uri @ setter getter
---@field public UseSystemDefault System.Net.Configuration.ProxyElement.UseSystemDefaultValues @ setter getter
System.Net.Configuration.ProxyElement = {}
---@type System.Net.Configuration.ProxyElement
CS.System.Net.Configuration.ProxyElement = System.Net.Configuration.ProxyElement

---@class System.Net.Configuration.ProxyElement.BypassOnLocalValues : System.Enum
System.Net.Configuration.ProxyElement.BypassOnLocalValues = {}
---@type System.Net.Configuration.ProxyElement.BypassOnLocalValues
CS.System.Net.Configuration.ProxyElement.BypassOnLocalValues = System.Net.Configuration.ProxyElement.BypassOnLocalValues

---@return System.Int32 value:0
System.Net.Configuration.ProxyElement.BypassOnLocalValues.False = 0
---@return System.Int32 value:1
System.Net.Configuration.ProxyElement.BypassOnLocalValues.True = 1

---@class System.Net.Configuration.ProxyElement.UseSystemDefaultValues : System.Enum
System.Net.Configuration.ProxyElement.UseSystemDefaultValues = {}
---@type System.Net.Configuration.ProxyElement.UseSystemDefaultValues
CS.System.Net.Configuration.ProxyElement.UseSystemDefaultValues = System.Net.Configuration.ProxyElement.UseSystemDefaultValues

---@return System.Int32 value:0
System.Net.Configuration.ProxyElement.UseSystemDefaultValues.False = 0
---@return System.Int32 value:1
System.Net.Configuration.ProxyElement.UseSystemDefaultValues.True = 1

---@class System.Net.Configuration.ProxyElement.AutoDetectValues : System.Enum
System.Net.Configuration.ProxyElement.AutoDetectValues = {}
---@type System.Net.Configuration.ProxyElement.AutoDetectValues
CS.System.Net.Configuration.ProxyElement.AutoDetectValues = System.Net.Configuration.ProxyElement.AutoDetectValues

---@return System.Int32 value:0
System.Net.Configuration.ProxyElement.AutoDetectValues.False = 0
---@return System.Int32 value:1
System.Net.Configuration.ProxyElement.AutoDetectValues.True = 1

---@class System.Net.Configuration.RequestCachingSection : System.Configuration.ConfigurationSection
---@field public DefaultFtpCachePolicy System.Net.Configuration.FtpCachePolicyElement @  getter
---@field public DefaultHttpCachePolicy System.Net.Configuration.HttpCachePolicyElement @  getter
---@field public DefaultPolicyLevel System.Net.Cache.RequestCacheLevel @ setter getter
---@field public DisableAllCaching System.Boolean @ setter getter
---@field public IsPrivateCache System.Boolean @ setter getter
---@field public UnspecifiedMaximumAge System.TimeSpan @ setter getter
System.Net.Configuration.RequestCachingSection = {}
---@type System.Net.Configuration.RequestCachingSection
CS.System.Net.Configuration.RequestCachingSection = System.Net.Configuration.RequestCachingSection

---@class System.Net.Configuration.ServicePointManagerElement : System.Configuration.ConfigurationElement
---@field public CheckCertificateName System.Boolean @ setter getter
---@field public CheckCertificateRevocationList System.Boolean @ setter getter
---@field public DnsRefreshTimeout System.Int32 @ setter getter
---@field public EnableDnsRoundRobin System.Boolean @ setter getter
---@field public Expect100Continue System.Boolean @ setter getter
---@field public UseNagleAlgorithm System.Boolean @ setter getter
---@field public EncryptionPolicy System.Net.Security.EncryptionPolicy @ setter getter
System.Net.Configuration.ServicePointManagerElement = {}
---@type System.Net.Configuration.ServicePointManagerElement
CS.System.Net.Configuration.ServicePointManagerElement = System.Net.Configuration.ServicePointManagerElement

---@class System.Net.Configuration.SettingsSection : System.Configuration.ConfigurationSection
---@field public HttpWebRequest System.Net.Configuration.HttpWebRequestElement @  getter
---@field public Ipv6 System.Net.Configuration.Ipv6Element @  getter
---@field public PerformanceCounters System.Net.Configuration.PerformanceCountersElement @  getter
---@field public ServicePointManager System.Net.Configuration.ServicePointManagerElement @  getter
---@field public Socket System.Net.Configuration.SocketElement @  getter
---@field public WebProxyScript System.Net.Configuration.WebProxyScriptElement @  getter
---@field public HttpListener System.Net.Configuration.HttpListenerElement @  getter
---@field public WebUtility System.Net.Configuration.WebUtilityElement @  getter
System.Net.Configuration.SettingsSection = {}
---@type System.Net.Configuration.SettingsSection
CS.System.Net.Configuration.SettingsSection = System.Net.Configuration.SettingsSection

---@class System.Net.Configuration.SmtpNetworkElement : System.Configuration.ConfigurationElement
---@field public DefaultCredentials System.Boolean @ setter getter
---@field public Host System.String @ setter getter
---@field public Password System.String @ setter getter
---@field public Port System.Int32 @ setter getter
---@field public UserName System.String @ setter getter
---@field public TargetName System.String @ setter getter
---@field public EnableSsl System.Boolean @ setter getter
---@field public ClientDomain System.String @ setter getter
System.Net.Configuration.SmtpNetworkElement = {}
---@type System.Net.Configuration.SmtpNetworkElement
CS.System.Net.Configuration.SmtpNetworkElement = System.Net.Configuration.SmtpNetworkElement

---@class System.Net.Configuration.SmtpSection : System.Configuration.ConfigurationSection
---@field public DeliveryMethod System.Net.Mail.SmtpDeliveryMethod @ setter getter
---@field public DeliveryFormat System.Net.Mail.SmtpDeliveryFormat @ setter getter
---@field public From System.String @ setter getter
---@field public Network System.Net.Configuration.SmtpNetworkElement @  getter
---@field public SpecifiedPickupDirectory System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement @  getter
System.Net.Configuration.SmtpSection = {}
---@type System.Net.Configuration.SmtpSection
CS.System.Net.Configuration.SmtpSection = System.Net.Configuration.SmtpSection

---@class System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement : System.Configuration.ConfigurationElement
---@field public PickupDirectoryLocation System.String @ setter getter
System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement = {}
---@type System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement
CS.System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement = System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement

---@class System.Net.Configuration.SocketElement : System.Configuration.ConfigurationElement
---@field public AlwaysUseCompletionPortsForAccept System.Boolean @ setter getter
---@field public AlwaysUseCompletionPortsForConnect System.Boolean @ setter getter
---@field public IPProtectionLevel System.Net.Sockets.IPProtectionLevel @ setter getter
System.Net.Configuration.SocketElement = {}
---@type System.Net.Configuration.SocketElement
CS.System.Net.Configuration.SocketElement = System.Net.Configuration.SocketElement

---@class System.Net.Configuration.WebProxyScriptElement : System.Configuration.ConfigurationElement
---@field public DownloadTimeout System.TimeSpan @ setter getter
System.Net.Configuration.WebProxyScriptElement = {}
---@type System.Net.Configuration.WebProxyScriptElement
CS.System.Net.Configuration.WebProxyScriptElement = System.Net.Configuration.WebProxyScriptElement

---@class System.Net.Configuration.WebRequestModuleElement : System.Configuration.ConfigurationElement
---@field public Prefix System.String @ setter getter
---@field public Type System.Type @ setter getter
System.Net.Configuration.WebRequestModuleElement = {}
---@type System.Net.Configuration.WebRequestModuleElement
CS.System.Net.Configuration.WebRequestModuleElement = System.Net.Configuration.WebRequestModuleElement

---@class System.Net.Configuration.WebRequestModuleElementCollection : System.Configuration.ConfigurationElementCollection
---@field public Item System.Net.Configuration.WebRequestModuleElement @ setter getter
---@field public Item System.Net.Configuration.WebRequestModuleElement @ setter getter
System.Net.Configuration.WebRequestModuleElementCollection = {}
---@type System.Net.Configuration.WebRequestModuleElementCollection
CS.System.Net.Configuration.WebRequestModuleElementCollection = System.Net.Configuration.WebRequestModuleElementCollection

---@param element System.Net.Configuration.WebRequestModuleElement
---@return System.Void
function System.Net.Configuration.WebRequestModuleElementCollection:Add(element)end
---@return System.Void
function System.Net.Configuration.WebRequestModuleElementCollection:Clear()end
---@param element System.Net.Configuration.WebRequestModuleElement
---@return System.Int32
function System.Net.Configuration.WebRequestModuleElementCollection:IndexOf(element)end
---@overload fun(name:System.String):System.Void
---@param element System.Net.Configuration.WebRequestModuleElement
---@return System.Void
function System.Net.Configuration.WebRequestModuleElementCollection:Remove(element)end
---@param index System.Int32
---@return System.Void
function System.Net.Configuration.WebRequestModuleElementCollection:RemoveAt(index)end
---@class System.Net.Configuration.WebRequestModulesSection : System.Configuration.ConfigurationSection
---@field public WebRequestModules System.Net.Configuration.WebRequestModuleElementCollection @  getter
System.Net.Configuration.WebRequestModulesSection = {}
---@type System.Net.Configuration.WebRequestModulesSection
CS.System.Net.Configuration.WebRequestModulesSection = System.Net.Configuration.WebRequestModulesSection

---@class System.Net.Configuration.HttpListenerElement : System.Configuration.ConfigurationElement
---@field public Timeouts System.Net.Configuration.HttpListenerTimeoutsElement @  getter
---@field public UnescapeRequestUrl System.Boolean @  getter
System.Net.Configuration.HttpListenerElement = {}
---@type System.Net.Configuration.HttpListenerElement
CS.System.Net.Configuration.HttpListenerElement = System.Net.Configuration.HttpListenerElement

---@class System.Net.Configuration.HttpListenerTimeoutsElement : System.Configuration.ConfigurationElement
---@field public DrainEntityBody System.TimeSpan @  getter
---@field public EntityBody System.TimeSpan @  getter
---@field public HeaderWait System.TimeSpan @  getter
---@field public IdleConnection System.TimeSpan @  getter
---@field public MinSendBytesPerSecond System.Int64 @  getter
---@field public RequestQueue System.TimeSpan @  getter
System.Net.Configuration.HttpListenerTimeoutsElement = {}
---@type System.Net.Configuration.HttpListenerTimeoutsElement
CS.System.Net.Configuration.HttpListenerTimeoutsElement = System.Net.Configuration.HttpListenerTimeoutsElement

---@class System.Net.Configuration.WebUtilityElement : System.Configuration.ConfigurationElement
---@field public UnicodeDecodingConformance System.Net.Configuration.UnicodeDecodingConformance @ setter getter
---@field public UnicodeEncodingConformance System.Net.Configuration.UnicodeEncodingConformance @ setter getter
System.Net.Configuration.WebUtilityElement = {}
---@type System.Net.Configuration.WebUtilityElement
CS.System.Net.Configuration.WebUtilityElement = System.Net.Configuration.WebUtilityElement

