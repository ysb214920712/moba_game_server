---@class System.Net.Cache.RequestCacheLevel : System.Enum
System.Net.Cache.RequestCacheLevel = {}
---@type System.Net.Cache.RequestCacheLevel
CS.System.Net.Cache.RequestCacheLevel = System.Net.Cache.RequestCacheLevel

---@return System.Int32 value:0
System.Net.Cache.RequestCacheLevel.Default = 0
---@return System.Int32 value:1
System.Net.Cache.RequestCacheLevel.BypassCache = 1
---@return System.Int32 value:2
System.Net.Cache.RequestCacheLevel.CacheOnly = 2
---@return System.Int32 value:3
System.Net.Cache.RequestCacheLevel.CacheIfAvailable = 3
---@return System.Int32 value:4
System.Net.Cache.RequestCacheLevel.Revalidate = 4
---@return System.Int32 value:5
System.Net.Cache.RequestCacheLevel.Reload = 5
---@return System.Int32 value:6
System.Net.Cache.RequestCacheLevel.NoCacheNoStore = 6

---@class System.Net.Cache.RequestCachePolicy : System.Object
---@field public Level System.Net.Cache.RequestCacheLevel @  getter
System.Net.Cache.RequestCachePolicy = {}
---@type System.Net.Cache.RequestCachePolicy
CS.System.Net.Cache.RequestCachePolicy = System.Net.Cache.RequestCachePolicy

---@return System.String
function System.Net.Cache.RequestCachePolicy:ToString()end
---@class System.Net.Cache.HttpRequestCacheLevel : System.Enum
System.Net.Cache.HttpRequestCacheLevel = {}
---@type System.Net.Cache.HttpRequestCacheLevel
CS.System.Net.Cache.HttpRequestCacheLevel = System.Net.Cache.HttpRequestCacheLevel

---@return System.Int32 value:0
System.Net.Cache.HttpRequestCacheLevel.Default = 0
---@return System.Int32 value:1
System.Net.Cache.HttpRequestCacheLevel.BypassCache = 1
---@return System.Int32 value:2
System.Net.Cache.HttpRequestCacheLevel.CacheOnly = 2
---@return System.Int32 value:3
System.Net.Cache.HttpRequestCacheLevel.CacheIfAvailable = 3
---@return System.Int32 value:4
System.Net.Cache.HttpRequestCacheLevel.Revalidate = 4
---@return System.Int32 value:5
System.Net.Cache.HttpRequestCacheLevel.Reload = 5
---@return System.Int32 value:6
System.Net.Cache.HttpRequestCacheLevel.NoCacheNoStore = 6
---@return System.Int32 value:7
System.Net.Cache.HttpRequestCacheLevel.CacheOrNextCacheOnly = 7
---@return System.Int32 value:8
System.Net.Cache.HttpRequestCacheLevel.Refresh = 8

---@class System.Net.Cache.HttpCacheAgeControl : System.Enum
System.Net.Cache.HttpCacheAgeControl = {}
---@type System.Net.Cache.HttpCacheAgeControl
CS.System.Net.Cache.HttpCacheAgeControl = System.Net.Cache.HttpCacheAgeControl

---@return System.Int32 value:0
System.Net.Cache.HttpCacheAgeControl.None = 0
---@return System.Int32 value:1
System.Net.Cache.HttpCacheAgeControl.MinFresh = 1
---@return System.Int32 value:2
System.Net.Cache.HttpCacheAgeControl.MaxAge = 2
---@return System.Int32 value:3
System.Net.Cache.HttpCacheAgeControl.MaxAgeAndMinFresh = 3
---@return System.Int32 value:4
System.Net.Cache.HttpCacheAgeControl.MaxStale = 4

---@class System.Net.Cache.HttpRequestCachePolicy : System.Net.Cache.RequestCachePolicy
---@field public Level System.Net.Cache.HttpRequestCacheLevel @  getter
---@field public CacheSyncDate System.DateTime @  getter
---@field public MaxAge System.TimeSpan @  getter
---@field public MinFresh System.TimeSpan @  getter
---@field public MaxStale System.TimeSpan @  getter
System.Net.Cache.HttpRequestCachePolicy = {}
---@type System.Net.Cache.HttpRequestCachePolicy
CS.System.Net.Cache.HttpRequestCachePolicy = System.Net.Cache.HttpRequestCachePolicy

---@return System.String
function System.Net.Cache.HttpRequestCachePolicy:ToString()end
