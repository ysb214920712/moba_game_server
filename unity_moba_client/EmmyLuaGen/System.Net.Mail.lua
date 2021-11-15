---@class System.Net.Mail.AlternateView : System.Net.Mail.AttachmentBase
---@field public BaseUri System.Uri @ setter getter
---@field public LinkedResources System.Net.Mail.LinkedResourceCollection @  getter
System.Net.Mail.AlternateView = {}
---@type System.Net.Mail.AlternateView
CS.System.Net.Mail.AlternateView = System.Net.Mail.AlternateView

---@overload fun(content:System.String, contentType:System.Net.Mime.ContentType):System.Net.Mail.AlternateView
---@overload fun(content:System.String, contentEncoding:System.Text.Encoding, mediaType:System.String):System.Net.Mail.AlternateView
---@param content System.String
---@return System.Net.Mail.AlternateView
function System.Net.Mail.AlternateView.CreateAlternateViewFromString(content)end
---@class System.Net.Mail.AlternateViewCollection : System.Collections.ObjectModel.Collection
System.Net.Mail.AlternateViewCollection = {}
---@type System.Net.Mail.AlternateViewCollection
CS.System.Net.Mail.AlternateViewCollection = System.Net.Mail.AlternateViewCollection

---@return System.Void
function System.Net.Mail.AlternateViewCollection:Dispose()end
---@class System.Net.Mail.Attachment : System.Net.Mail.AttachmentBase
---@field public ContentDisposition System.Net.Mime.ContentDisposition @  getter
---@field public Name System.String @ setter getter
---@field public NameEncoding System.Text.Encoding @ setter getter
System.Net.Mail.Attachment = {}
---@type System.Net.Mail.Attachment
CS.System.Net.Mail.Attachment = System.Net.Mail.Attachment

---@overload fun(content:System.String, name:System.String):System.Net.Mail.Attachment
---@overload fun(content:System.String, name:System.String, contentEncoding:System.Text.Encoding, mediaType:System.String):System.Net.Mail.Attachment
---@param content System.String
---@param contentType System.Net.Mime.ContentType
---@return System.Net.Mail.Attachment
function System.Net.Mail.Attachment.CreateAttachmentFromString(content, contentType)end
---@class System.Net.Mail.AttachmentBase : System.Object
---@field public ContentId System.String @ setter getter
---@field public ContentStream System.IO.Stream @  getter
---@field public ContentType System.Net.Mime.ContentType @ setter getter
---@field public TransferEncoding System.Net.Mime.TransferEncoding @ setter getter
System.Net.Mail.AttachmentBase = {}
---@type System.Net.Mail.AttachmentBase
CS.System.Net.Mail.AttachmentBase = System.Net.Mail.AttachmentBase

---@return System.Void
function System.Net.Mail.AttachmentBase:Dispose()end
---@class System.Net.Mail.AttachmentCollection : System.Collections.ObjectModel.Collection
System.Net.Mail.AttachmentCollection = {}
---@type System.Net.Mail.AttachmentCollection
CS.System.Net.Mail.AttachmentCollection = System.Net.Mail.AttachmentCollection

---@return System.Void
function System.Net.Mail.AttachmentCollection:Dispose()end
---@class System.Net.Mail.DeliveryNotificationOptions : System.Enum
System.Net.Mail.DeliveryNotificationOptions = {}
---@type System.Net.Mail.DeliveryNotificationOptions
CS.System.Net.Mail.DeliveryNotificationOptions = System.Net.Mail.DeliveryNotificationOptions

---@return System.Int32 value:0
System.Net.Mail.DeliveryNotificationOptions.None = 0
---@return System.Int32 value:1
System.Net.Mail.DeliveryNotificationOptions.OnSuccess = 1
---@return System.Int32 value:2
System.Net.Mail.DeliveryNotificationOptions.OnFailure = 2
---@return System.Int32 value:4
System.Net.Mail.DeliveryNotificationOptions.Delay = 4

---@class System.Net.Mail.LinkedResource : System.Net.Mail.AttachmentBase
---@field public ContentLink System.Uri @ setter getter
System.Net.Mail.LinkedResource = {}
---@type System.Net.Mail.LinkedResource
CS.System.Net.Mail.LinkedResource = System.Net.Mail.LinkedResource

---@overload fun(content:System.String, contentType:System.Net.Mime.ContentType):System.Net.Mail.LinkedResource
---@overload fun(content:System.String, contentEncoding:System.Text.Encoding, mediaType:System.String):System.Net.Mail.LinkedResource
---@param content System.String
---@return System.Net.Mail.LinkedResource
function System.Net.Mail.LinkedResource.CreateLinkedResourceFromString(content)end
---@class System.Net.Mail.LinkedResourceCollection : System.Collections.ObjectModel.Collection
System.Net.Mail.LinkedResourceCollection = {}
---@type System.Net.Mail.LinkedResourceCollection
CS.System.Net.Mail.LinkedResourceCollection = System.Net.Mail.LinkedResourceCollection

---@return System.Void
function System.Net.Mail.LinkedResourceCollection:Dispose()end
---@class System.Net.Mail.MailAddress : System.Object
---@field public Address System.String @  getter
---@field public DisplayName System.String @  getter
---@field public Host System.String @  getter
---@field public User System.String @  getter
System.Net.Mail.MailAddress = {}
---@type System.Net.Mail.MailAddress
CS.System.Net.Mail.MailAddress = System.Net.Mail.MailAddress

---@param value System.Object
---@return System.Boolean
function System.Net.Mail.MailAddress:Equals(value)end
---@return System.Int32
function System.Net.Mail.MailAddress:GetHashCode()end
---@return System.String
function System.Net.Mail.MailAddress:ToString()end
---@class System.Net.Mail.MailAddressCollection : System.Collections.ObjectModel.Collection
System.Net.Mail.MailAddressCollection = {}
---@type System.Net.Mail.MailAddressCollection
CS.System.Net.Mail.MailAddressCollection = System.Net.Mail.MailAddressCollection

---@param addresses System.String
---@return System.Void
function System.Net.Mail.MailAddressCollection:Add(addresses)end
---@return System.String
function System.Net.Mail.MailAddressCollection:ToString()end
---@class System.Net.Mail.MailMessage : System.Object
---@field public AlternateViews System.Net.Mail.AlternateViewCollection @  getter
---@field public Attachments System.Net.Mail.AttachmentCollection @  getter
---@field public Bcc System.Net.Mail.MailAddressCollection @  getter
---@field public Body System.String @ setter getter
---@field public BodyEncoding System.Text.Encoding @ setter getter
---@field public BodyTransferEncoding System.Net.Mime.TransferEncoding @ setter getter
---@field public CC System.Net.Mail.MailAddressCollection @  getter
---@field public DeliveryNotificationOptions System.Net.Mail.DeliveryNotificationOptions @ setter getter
---@field public From System.Net.Mail.MailAddress @ setter getter
---@field public Headers System.Collections.Specialized.NameValueCollection @  getter
---@field public IsBodyHtml System.Boolean @ setter getter
---@field public Priority System.Net.Mail.MailPriority @ setter getter
---@field public HeadersEncoding System.Text.Encoding @ setter getter
---@field public ReplyToList System.Net.Mail.MailAddressCollection @  getter
---@field public ReplyTo System.Net.Mail.MailAddress @ setter getter
---@field public Sender System.Net.Mail.MailAddress @ setter getter
---@field public Subject System.String @ setter getter
---@field public SubjectEncoding System.Text.Encoding @ setter getter
---@field public To System.Net.Mail.MailAddressCollection @  getter
System.Net.Mail.MailMessage = {}
---@type System.Net.Mail.MailMessage
CS.System.Net.Mail.MailMessage = System.Net.Mail.MailMessage

---@return System.Void
function System.Net.Mail.MailMessage:Dispose()end
---@class System.Net.Mail.MailPriority : System.Enum
System.Net.Mail.MailPriority = {}
---@type System.Net.Mail.MailPriority
CS.System.Net.Mail.MailPriority = System.Net.Mail.MailPriority

---@return System.Int32 value:0
System.Net.Mail.MailPriority.Normal = 0
---@return System.Int32 value:1
System.Net.Mail.MailPriority.Low = 1
---@return System.Int32 value:2
System.Net.Mail.MailPriority.High = 2

---@class System.Net.Mail.SmtpAccess : System.Enum
System.Net.Mail.SmtpAccess = {}
---@type System.Net.Mail.SmtpAccess
CS.System.Net.Mail.SmtpAccess = System.Net.Mail.SmtpAccess

---@return System.Int32 value:0
System.Net.Mail.SmtpAccess.None = 0
---@return System.Int32 value:1
System.Net.Mail.SmtpAccess.Connect = 1
---@return System.Int32 value:2
System.Net.Mail.SmtpAccess.ConnectToUnrestrictedPort = 2

---@class System.Net.Mail.SmtpClient : System.Object
---@field public ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection @  getter
---@field public TargetName System.String @ setter getter
---@field public Credentials System.Net.ICredentialsByHost @ setter getter
---@field public DeliveryMethod System.Net.Mail.SmtpDeliveryMethod @ setter getter
---@field public EnableSsl System.Boolean @ setter getter
---@field public Host System.String @ setter getter
---@field public PickupDirectoryLocation System.String @ setter getter
---@field public Port System.Int32 @ setter getter
---@field public DeliveryFormat System.Net.Mail.SmtpDeliveryFormat @ setter getter
---@field public ServicePoint System.Net.ServicePoint @  getter
---@field public Timeout System.Int32 @ setter getter
---@field public UseDefaultCredentials System.Boolean @ setter getter
System.Net.Mail.SmtpClient = {}
---@type System.Net.Mail.SmtpClient
CS.System.Net.Mail.SmtpClient = System.Net.Mail.SmtpClient

---@param value System.Net.Mail.SendCompletedEventHandler
---@return System.Void
function System.Net.Mail.SmtpClient:add_SendCompleted(value)end
---@param value System.Net.Mail.SendCompletedEventHandler
---@return System.Void
function System.Net.Mail.SmtpClient:remove_SendCompleted(value)end
---@return System.Void
function System.Net.Mail.SmtpClient:Dispose()end
---@overload fun(from:System.String, recipients:System.String, subject:System.String, body:System.String):System.Void
---@param message System.Net.Mail.MailMessage
---@return System.Void
function System.Net.Mail.SmtpClient:Send(message)end
---@overload fun(from:System.String, recipients:System.String, subject:System.String, body:System.String):System.Threading.Tasks.Task
---@param message System.Net.Mail.MailMessage
---@return System.Threading.Tasks.Task
function System.Net.Mail.SmtpClient:SendMailAsync(message)end
---@overload fun(from:System.String, recipients:System.String, subject:System.String, body:System.String, userToken:System.Object):System.Void
---@param message System.Net.Mail.MailMessage
---@param userToken System.Object
---@return System.Void
function System.Net.Mail.SmtpClient:SendAsync(message, userToken)end
---@return System.Void
function System.Net.Mail.SmtpClient:SendAsyncCancel()end
---@class System.Net.Mail.SmtpDeliveryFormat : System.Enum
System.Net.Mail.SmtpDeliveryFormat = {}
---@type System.Net.Mail.SmtpDeliveryFormat
CS.System.Net.Mail.SmtpDeliveryFormat = System.Net.Mail.SmtpDeliveryFormat

---@return System.Int32 value:0
System.Net.Mail.SmtpDeliveryFormat.SevenBit = 0
---@return System.Int32 value:1
System.Net.Mail.SmtpDeliveryFormat.International = 1

---@class System.Net.Mail.SmtpDeliveryMethod : System.Enum
System.Net.Mail.SmtpDeliveryMethod = {}
---@type System.Net.Mail.SmtpDeliveryMethod
CS.System.Net.Mail.SmtpDeliveryMethod = System.Net.Mail.SmtpDeliveryMethod

---@return System.Int32 value:0
System.Net.Mail.SmtpDeliveryMethod.Network = 0
---@return System.Int32 value:1
System.Net.Mail.SmtpDeliveryMethod.SpecifiedPickupDirectory = 1
---@return System.Int32 value:2
System.Net.Mail.SmtpDeliveryMethod.PickupDirectoryFromIis = 2

---@class System.Net.Mail.SmtpException : System.Exception
---@field public StatusCode System.Net.Mail.SmtpStatusCode @ setter getter
System.Net.Mail.SmtpException = {}
---@type System.Net.Mail.SmtpException
CS.System.Net.Mail.SmtpException = System.Net.Mail.SmtpException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.Mail.SmtpException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.Mail.SmtpFailedRecipientException : System.Net.Mail.SmtpException
---@field public FailedRecipient System.String @  getter
System.Net.Mail.SmtpFailedRecipientException = {}
---@type System.Net.Mail.SmtpFailedRecipientException
CS.System.Net.Mail.SmtpFailedRecipientException = System.Net.Mail.SmtpFailedRecipientException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.Mail.SmtpFailedRecipientException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.Mail.SmtpFailedRecipientsException : System.Net.Mail.SmtpFailedRecipientException
---@field public InnerExceptions System.Net.Mail.SmtpFailedRecipientException[] @  getter
System.Net.Mail.SmtpFailedRecipientsException = {}
---@type System.Net.Mail.SmtpFailedRecipientsException
CS.System.Net.Mail.SmtpFailedRecipientsException = System.Net.Mail.SmtpFailedRecipientsException

---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Net.Mail.SmtpFailedRecipientsException:GetObjectData(serializationInfo, streamingContext)end
---@class System.Net.Mail.SmtpPermission : System.Security.CodeAccessPermission
---@field public Access System.Net.Mail.SmtpAccess @  getter
System.Net.Mail.SmtpPermission = {}
---@type System.Net.Mail.SmtpPermission
CS.System.Net.Mail.SmtpPermission = System.Net.Mail.SmtpPermission

---@param access System.Net.Mail.SmtpAccess
---@return System.Void
function System.Net.Mail.SmtpPermission:AddPermission(access)end
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Copy()end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Intersect(target)end
---@param target System.Security.IPermission
---@return System.Boolean
function System.Net.Mail.SmtpPermission:IsSubsetOf(target)end
---@return System.Boolean
function System.Net.Mail.SmtpPermission:IsUnrestricted()end
---@return System.Security.SecurityElement
function System.Net.Mail.SmtpPermission:ToXml()end
---@param securityElement System.Security.SecurityElement
---@return System.Void
function System.Net.Mail.SmtpPermission:FromXml(securityElement)end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Union(target)end
---@class System.Net.Mail.SmtpPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Access System.String @ setter getter
System.Net.Mail.SmtpPermissionAttribute = {}
---@type System.Net.Mail.SmtpPermissionAttribute
CS.System.Net.Mail.SmtpPermissionAttribute = System.Net.Mail.SmtpPermissionAttribute

---@return System.Security.IPermission
function System.Net.Mail.SmtpPermissionAttribute:CreatePermission()end
---@class System.Net.Mail.SmtpStatusCode : System.Enum
System.Net.Mail.SmtpStatusCode = {}
---@type System.Net.Mail.SmtpStatusCode
CS.System.Net.Mail.SmtpStatusCode = System.Net.Mail.SmtpStatusCode


