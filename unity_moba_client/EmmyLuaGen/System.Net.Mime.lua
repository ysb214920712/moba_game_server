---@class System.Net.Mime.ContentDisposition : System.Object
---@field public DispositionType System.String @ setter getter
---@field public Parameters System.Collections.Specialized.StringDictionary @  getter
---@field public FileName System.String @ setter getter
---@field public CreationDate System.DateTime @ setter getter
---@field public ModificationDate System.DateTime @ setter getter
---@field public Inline System.Boolean @ setter getter
---@field public ReadDate System.DateTime @ setter getter
---@field public Size System.Int64 @ setter getter
System.Net.Mime.ContentDisposition = {}
---@type System.Net.Mime.ContentDisposition
CS.System.Net.Mime.ContentDisposition = System.Net.Mime.ContentDisposition

---@return System.String
function System.Net.Mime.ContentDisposition:ToString()end
---@param rparam System.Object
---@return System.Boolean
function System.Net.Mime.ContentDisposition:Equals(rparam)end
---@return System.Int32
function System.Net.Mime.ContentDisposition:GetHashCode()end
---@class System.Net.Mime.ContentType : System.Object
---@field public Boundary System.String @ setter getter
---@field public CharSet System.String @ setter getter
---@field public MediaType System.String @ setter getter
---@field public Name System.String @ setter getter
---@field public Parameters System.Collections.Specialized.StringDictionary @  getter
System.Net.Mime.ContentType = {}
---@type System.Net.Mime.ContentType
CS.System.Net.Mime.ContentType = System.Net.Mime.ContentType

---@return System.String
function System.Net.Mime.ContentType:ToString()end
---@param rparam System.Object
---@return System.Boolean
function System.Net.Mime.ContentType:Equals(rparam)end
---@return System.Int32
function System.Net.Mime.ContentType:GetHashCode()end
---@class System.Net.Mime.DispositionTypeNames : System.Object
---@field public Inline System.String
---@field public Attachment System.String
System.Net.Mime.DispositionTypeNames = {}
---@type System.Net.Mime.DispositionTypeNames
CS.System.Net.Mime.DispositionTypeNames = System.Net.Mime.DispositionTypeNames

---@class System.Net.Mime.TransferEncoding : System.Enum
System.Net.Mime.TransferEncoding = {}
---@type System.Net.Mime.TransferEncoding
CS.System.Net.Mime.TransferEncoding = System.Net.Mime.TransferEncoding

---@return System.Int32 value:0
System.Net.Mime.TransferEncoding.QuotedPrintable = 0
---@return System.Int32 value:1
System.Net.Mime.TransferEncoding.Base64 = 1
---@return System.Int32 value:2
System.Net.Mime.TransferEncoding.SevenBit = 2
---@return System.Int32 value:3
System.Net.Mime.TransferEncoding.EightBit = 3

---@class System.Net.Mime.MediaTypeNames : System.Object
System.Net.Mime.MediaTypeNames = {}
---@type System.Net.Mime.MediaTypeNames
CS.System.Net.Mime.MediaTypeNames = System.Net.Mime.MediaTypeNames

---@class System.Net.Mime.MediaTypeNames.Text : System.Object
---@field public Plain System.String
---@field public Html System.String
---@field public Xml System.String
---@field public RichText System.String
System.Net.Mime.MediaTypeNames.Text = {}
---@type System.Net.Mime.MediaTypeNames.Text
CS.System.Net.Mime.MediaTypeNames.Text = System.Net.Mime.MediaTypeNames.Text

---@class System.Net.Mime.MediaTypeNames.Application : System.Object
---@field public Soap System.String
---@field public Octet System.String
---@field public Rtf System.String
---@field public Pdf System.String
---@field public Zip System.String
System.Net.Mime.MediaTypeNames.Application = {}
---@type System.Net.Mime.MediaTypeNames.Application
CS.System.Net.Mime.MediaTypeNames.Application = System.Net.Mime.MediaTypeNames.Application

---@class System.Net.Mime.MediaTypeNames.Image : System.Object
---@field public Gif System.String
---@field public Tiff System.String
---@field public Jpeg System.String
System.Net.Mime.MediaTypeNames.Image = {}
---@type System.Net.Mime.MediaTypeNames.Image
CS.System.Net.Mime.MediaTypeNames.Image = System.Net.Mime.MediaTypeNames.Image

