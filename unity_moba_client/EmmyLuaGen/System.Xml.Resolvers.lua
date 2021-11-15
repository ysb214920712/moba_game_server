---@class System.Xml.Resolvers.XmlKnownDtds : System.Enum
System.Xml.Resolvers.XmlKnownDtds = {}
---@type System.Xml.Resolvers.XmlKnownDtds
CS.System.Xml.Resolvers.XmlKnownDtds = System.Xml.Resolvers.XmlKnownDtds

---@return System.Int32 value:0
System.Xml.Resolvers.XmlKnownDtds.None = 0
---@return System.Int32 value:1
System.Xml.Resolvers.XmlKnownDtds.Xhtml10 = 1
---@return System.Int32 value:2
System.Xml.Resolvers.XmlKnownDtds.Rss091 = 2

---@class System.Xml.Resolvers.XmlPreloadedResolver : System.Xml.XmlResolver
---@field public Credentials System.Net.ICredentials @ setter 
---@field public PreloadedUris System.Collections.Generic.IEnumerable @  getter
System.Xml.Resolvers.XmlPreloadedResolver = {}
---@type System.Xml.Resolvers.XmlPreloadedResolver
CS.System.Xml.Resolvers.XmlPreloadedResolver = System.Xml.Resolvers.XmlPreloadedResolver

---@param baseUri System.Uri
---@param relativeUri System.String
---@return System.Uri
function System.Xml.Resolvers.XmlPreloadedResolver:ResolveUri(baseUri, relativeUri)end
---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.Resolvers.XmlPreloadedResolver:GetEntity(absoluteUri, role, ofObjectToReturn)end
---@param absoluteUri System.Uri
---@param type System.Type
---@return System.Boolean
function System.Xml.Resolvers.XmlPreloadedResolver:SupportsType(absoluteUri, type)end
---@overload fun(uri:System.Uri, value:System.IO.Stream):System.Void
---@overload fun(uri:System.Uri, value:System.String):System.Void
---@overload fun(uri:System.Uri, value:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@param uri System.Uri
---@param value System.Byte[]
---@return System.Void
function System.Xml.Resolvers.XmlPreloadedResolver:Add(uri, value)end
---@param uri System.Uri
---@return System.Void
function System.Xml.Resolvers.XmlPreloadedResolver:Remove(uri)end
---@param absoluteUri System.Uri
---@param role System.String
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.Resolvers.XmlPreloadedResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn)end
