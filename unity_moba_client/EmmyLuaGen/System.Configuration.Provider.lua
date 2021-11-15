---@class System.Configuration.Provider.ProviderBase : System.Object
---@field public Name System.String @  getter
---@field public Description System.String @  getter
System.Configuration.Provider.ProviderBase = {}
---@type System.Configuration.Provider.ProviderBase
CS.System.Configuration.Provider.ProviderBase = System.Configuration.Provider.ProviderBase

---@param name System.String
---@param config System.Collections.Specialized.NameValueCollection
---@return System.Void
function System.Configuration.Provider.ProviderBase:Initialize(name, config)end
---@class System.Configuration.Provider.ProviderCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public IsSynchronized System.Boolean @  getter
---@field public SyncRoot System.Object @  getter
---@field public Item System.Configuration.Provider.ProviderBase @  getter
System.Configuration.Provider.ProviderCollection = {}
---@type System.Configuration.Provider.ProviderCollection
CS.System.Configuration.Provider.ProviderCollection = System.Configuration.Provider.ProviderCollection

---@param provider System.Configuration.Provider.ProviderBase
---@return System.Void
function System.Configuration.Provider.ProviderCollection:Add(provider)end
---@return System.Void
function System.Configuration.Provider.ProviderCollection:Clear()end
---@param array System.Configuration.Provider.ProviderBase[]
---@param index System.Int32
---@return System.Void
function System.Configuration.Provider.ProviderCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.Configuration.Provider.ProviderCollection:GetEnumerator()end
---@param name System.String
---@return System.Void
function System.Configuration.Provider.ProviderCollection:Remove(name)end
---@return System.Void
function System.Configuration.Provider.ProviderCollection:SetReadOnly()end
---@class System.Configuration.Provider.ProviderException : System.Exception
System.Configuration.Provider.ProviderException = {}
---@type System.Configuration.Provider.ProviderException
CS.System.Configuration.Provider.ProviderException = System.Configuration.Provider.ProviderException

