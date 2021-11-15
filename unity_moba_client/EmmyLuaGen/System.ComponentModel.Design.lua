---@class System.ComponentModel.Design.TypeDescriptionProviderService : System.Object
System.ComponentModel.Design.TypeDescriptionProviderService = {}
---@type System.ComponentModel.Design.TypeDescriptionProviderService
CS.System.ComponentModel.Design.TypeDescriptionProviderService = System.ComponentModel.Design.TypeDescriptionProviderService

---@overload fun(type:System.Type):System.ComponentModel.TypeDescriptionProvider
---@param instance System.Object
---@return System.ComponentModel.TypeDescriptionProvider
function System.ComponentModel.Design.TypeDescriptionProviderService:GetProvider(instance)end
---@class System.ComponentModel.Design.ActiveDesignerEventArgs : System.EventArgs
---@field public OldDesigner System.ComponentModel.Design.IDesignerHost @  getter
---@field public NewDesigner System.ComponentModel.Design.IDesignerHost @  getter
System.ComponentModel.Design.ActiveDesignerEventArgs = {}
---@type System.ComponentModel.Design.ActiveDesignerEventArgs
CS.System.ComponentModel.Design.ActiveDesignerEventArgs = System.ComponentModel.Design.ActiveDesignerEventArgs

---@class System.ComponentModel.Design.CheckoutException : System.Runtime.InteropServices.ExternalException
---@field public Canceled System.ComponentModel.Design.CheckoutException
System.ComponentModel.Design.CheckoutException = {}
---@type System.ComponentModel.Design.CheckoutException
CS.System.ComponentModel.Design.CheckoutException = System.ComponentModel.Design.CheckoutException

---@class System.ComponentModel.Design.CommandID : System.Object
---@field public ID System.Int32 @  getter
---@field public Guid System.Guid @  getter
System.ComponentModel.Design.CommandID = {}
---@type System.ComponentModel.Design.CommandID
CS.System.ComponentModel.Design.CommandID = System.ComponentModel.Design.CommandID

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.Design.CommandID:Equals(obj)end
---@return System.Int32
function System.ComponentModel.Design.CommandID:GetHashCode()end
---@return System.String
function System.ComponentModel.Design.CommandID:ToString()end
---@class System.ComponentModel.Design.ComponentChangedEventArgs : System.EventArgs
---@field public Component System.Object @  getter
---@field public Member System.ComponentModel.MemberDescriptor @  getter
---@field public NewValue System.Object @  getter
---@field public OldValue System.Object @  getter
System.ComponentModel.Design.ComponentChangedEventArgs = {}
---@type System.ComponentModel.Design.ComponentChangedEventArgs
CS.System.ComponentModel.Design.ComponentChangedEventArgs = System.ComponentModel.Design.ComponentChangedEventArgs

---@class System.ComponentModel.Design.ComponentChangingEventArgs : System.EventArgs
---@field public Component System.Object @  getter
---@field public Member System.ComponentModel.MemberDescriptor @  getter
System.ComponentModel.Design.ComponentChangingEventArgs = {}
---@type System.ComponentModel.Design.ComponentChangingEventArgs
CS.System.ComponentModel.Design.ComponentChangingEventArgs = System.ComponentModel.Design.ComponentChangingEventArgs

---@class System.ComponentModel.Design.ComponentEventArgs : System.EventArgs
---@field public Component System.ComponentModel.IComponent @  getter
System.ComponentModel.Design.ComponentEventArgs = {}
---@type System.ComponentModel.Design.ComponentEventArgs
CS.System.ComponentModel.Design.ComponentEventArgs = System.ComponentModel.Design.ComponentEventArgs

---@class System.ComponentModel.Design.ComponentRenameEventArgs : System.EventArgs
---@field public Component System.Object @  getter
---@field public OldName System.String @  getter
---@field public NewName System.String @  getter
System.ComponentModel.Design.ComponentRenameEventArgs = {}
---@type System.ComponentModel.Design.ComponentRenameEventArgs
CS.System.ComponentModel.Design.ComponentRenameEventArgs = System.ComponentModel.Design.ComponentRenameEventArgs

---@class System.ComponentModel.Design.DesignerOptionService : System.Object
---@field public Options System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection @  getter
System.ComponentModel.Design.DesignerOptionService = {}
---@type System.ComponentModel.Design.DesignerOptionService
CS.System.ComponentModel.Design.DesignerOptionService = System.ComponentModel.Design.DesignerOptionService

---@class System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Name System.String @  getter
---@field public Parent System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection @  getter
---@field public Properties System.ComponentModel.PropertyDescriptorCollection @  getter
---@field public Item System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection @  getter
---@field public Item System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection @  getter
System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection = {}
---@type System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection
CS.System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection = System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection

---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection:GetEnumerator()end
---@param value System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection
---@return System.Int32
function System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection:IndexOf(value)end
---@return System.Boolean
function System.ComponentModel.Design.DesignerOptionService.DesignerOptionCollection:ShowDialog()end
---@class System.ComponentModel.Design.DesignerTransaction : System.Object
---@field public Canceled System.Boolean @  getter
---@field public Committed System.Boolean @  getter
---@field public Description System.String @  getter
System.ComponentModel.Design.DesignerTransaction = {}
---@type System.ComponentModel.Design.DesignerTransaction
CS.System.ComponentModel.Design.DesignerTransaction = System.ComponentModel.Design.DesignerTransaction

---@return System.Void
function System.ComponentModel.Design.DesignerTransaction:Cancel()end
---@return System.Void
function System.ComponentModel.Design.DesignerTransaction:Commit()end
---@class System.ComponentModel.Design.DesignerTransactionCloseEventArgs : System.EventArgs
---@field public TransactionCommitted System.Boolean @  getter
---@field public LastTransaction System.Boolean @  getter
System.ComponentModel.Design.DesignerTransactionCloseEventArgs = {}
---@type System.ComponentModel.Design.DesignerTransactionCloseEventArgs
CS.System.ComponentModel.Design.DesignerTransactionCloseEventArgs = System.ComponentModel.Design.DesignerTransactionCloseEventArgs

---@class System.ComponentModel.Design.DesignerVerb : System.ComponentModel.Design.MenuCommand
---@field public Description System.String @ setter getter
---@field public Text System.String @  getter
System.ComponentModel.Design.DesignerVerb = {}
---@type System.ComponentModel.Design.DesignerVerb
CS.System.ComponentModel.Design.DesignerVerb = System.ComponentModel.Design.DesignerVerb

---@return System.String
function System.ComponentModel.Design.DesignerVerb:ToString()end
---@class System.ComponentModel.Design.DesignerVerbCollection : System.Collections.CollectionBase
---@field public Item System.ComponentModel.Design.DesignerVerb @ setter getter
System.ComponentModel.Design.DesignerVerbCollection = {}
---@type System.ComponentModel.Design.DesignerVerbCollection
CS.System.ComponentModel.Design.DesignerVerbCollection = System.ComponentModel.Design.DesignerVerbCollection

---@param value System.ComponentModel.Design.DesignerVerb
---@return System.Int32
function System.ComponentModel.Design.DesignerVerbCollection:Add(value)end
---@overload fun(value:System.ComponentModel.Design.DesignerVerbCollection):System.Void
---@param value System.ComponentModel.Design.DesignerVerb[]
---@return System.Void
function System.ComponentModel.Design.DesignerVerbCollection:AddRange(value)end
---@param index System.Int32
---@param value System.ComponentModel.Design.DesignerVerb
---@return System.Void
function System.ComponentModel.Design.DesignerVerbCollection:Insert(index, value)end
---@param value System.ComponentModel.Design.DesignerVerb
---@return System.Int32
function System.ComponentModel.Design.DesignerVerbCollection:IndexOf(value)end
---@param value System.ComponentModel.Design.DesignerVerb
---@return System.Boolean
function System.ComponentModel.Design.DesignerVerbCollection:Contains(value)end
---@param value System.ComponentModel.Design.DesignerVerb
---@return System.Void
function System.ComponentModel.Design.DesignerVerbCollection:Remove(value)end
---@param array System.ComponentModel.Design.DesignerVerb[]
---@param index System.Int32
---@return System.Void
function System.ComponentModel.Design.DesignerVerbCollection:CopyTo(array, index)end
---@class System.ComponentModel.Design.DesigntimeLicenseContext : System.ComponentModel.LicenseContext
---@field public UsageMode System.ComponentModel.LicenseUsageMode @  getter
System.ComponentModel.Design.DesigntimeLicenseContext = {}
---@type System.ComponentModel.Design.DesigntimeLicenseContext
CS.System.ComponentModel.Design.DesigntimeLicenseContext = System.ComponentModel.Design.DesigntimeLicenseContext

---@param type System.Type
---@param resourceAssembly System.Reflection.Assembly
---@return System.String
function System.ComponentModel.Design.DesigntimeLicenseContext:GetSavedLicenseKey(type, resourceAssembly)end
---@param type System.Type
---@param key System.String
---@return System.Void
function System.ComponentModel.Design.DesigntimeLicenseContext:SetSavedLicenseKey(type, key)end
---@class System.ComponentModel.Design.DesigntimeLicenseContextSerializer : System.Object
System.ComponentModel.Design.DesigntimeLicenseContextSerializer = {}
---@type System.ComponentModel.Design.DesigntimeLicenseContextSerializer
CS.System.ComponentModel.Design.DesigntimeLicenseContextSerializer = System.ComponentModel.Design.DesigntimeLicenseContextSerializer

---@param o System.IO.Stream
---@param cryptoKey System.String
---@param context System.ComponentModel.Design.DesigntimeLicenseContext
---@return System.Void
function System.ComponentModel.Design.DesigntimeLicenseContextSerializer.Serialize(o, cryptoKey, context)end
---@class System.ComponentModel.Design.DesignerCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.ComponentModel.Design.IDesignerHost @  getter
System.ComponentModel.Design.DesignerCollection = {}
---@type System.ComponentModel.Design.DesignerCollection
CS.System.ComponentModel.Design.DesignerCollection = System.ComponentModel.Design.DesignerCollection

---@return System.Collections.IEnumerator
function System.ComponentModel.Design.DesignerCollection:GetEnumerator()end
---@class System.ComponentModel.Design.DesignerEventArgs : System.EventArgs
---@field public Designer System.ComponentModel.Design.IDesignerHost @  getter
System.ComponentModel.Design.DesignerEventArgs = {}
---@type System.ComponentModel.Design.DesignerEventArgs
CS.System.ComponentModel.Design.DesignerEventArgs = System.ComponentModel.Design.DesignerEventArgs

---@class System.ComponentModel.Design.HelpContextType : System.Enum
System.ComponentModel.Design.HelpContextType = {}
---@type System.ComponentModel.Design.HelpContextType
CS.System.ComponentModel.Design.HelpContextType = System.ComponentModel.Design.HelpContextType

---@return System.Int32 value:0
System.ComponentModel.Design.HelpContextType.Ambient = 0
---@return System.Int32 value:1
System.ComponentModel.Design.HelpContextType.Window = 1
---@return System.Int32 value:2
System.ComponentModel.Design.HelpContextType.Selection = 2
---@return System.Int32 value:3
System.ComponentModel.Design.HelpContextType.ToolWindowSelection = 3

---@class System.ComponentModel.Design.HelpKeywordAttribute : System.Attribute
---@field public HelpKeyword System.String @  getter
---@field public Default System.ComponentModel.Design.HelpKeywordAttribute
System.ComponentModel.Design.HelpKeywordAttribute = {}
---@type System.ComponentModel.Design.HelpKeywordAttribute
CS.System.ComponentModel.Design.HelpKeywordAttribute = System.ComponentModel.Design.HelpKeywordAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.Design.HelpKeywordAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.Design.HelpKeywordAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.Design.HelpKeywordAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.Design.HelpKeywordType : System.Enum
System.ComponentModel.Design.HelpKeywordType = {}
---@type System.ComponentModel.Design.HelpKeywordType
CS.System.ComponentModel.Design.HelpKeywordType = System.ComponentModel.Design.HelpKeywordType

---@return System.Int32 value:0
System.ComponentModel.Design.HelpKeywordType.F1Keyword = 0
---@return System.Int32 value:1
System.ComponentModel.Design.HelpKeywordType.GeneralKeyword = 1
---@return System.Int32 value:2
System.ComponentModel.Design.HelpKeywordType.FilterKeyword = 2

---@class System.ComponentModel.Design.MenuCommand : System.Object
---@field public Checked System.Boolean @ setter getter
---@field public Enabled System.Boolean @ setter getter
---@field public Properties System.Collections.IDictionary @  getter
---@field public Supported System.Boolean @ setter getter
---@field public Visible System.Boolean @ setter getter
---@field public CommandID System.ComponentModel.Design.CommandID @  getter
---@field public OleStatus System.Int32 @  getter
System.ComponentModel.Design.MenuCommand = {}
---@type System.ComponentModel.Design.MenuCommand
CS.System.ComponentModel.Design.MenuCommand = System.ComponentModel.Design.MenuCommand

---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.Design.MenuCommand:add_CommandChanged(value)end
---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.Design.MenuCommand:remove_CommandChanged(value)end
---@overload fun(arg:System.Object):System.Void
---@return System.Void
function System.ComponentModel.Design.MenuCommand:Invoke()end
---@return System.String
function System.ComponentModel.Design.MenuCommand:ToString()end
---@class System.ComponentModel.Design.SelectionTypes : System.Enum
System.ComponentModel.Design.SelectionTypes = {}
---@type System.ComponentModel.Design.SelectionTypes
CS.System.ComponentModel.Design.SelectionTypes = System.ComponentModel.Design.SelectionTypes

---@return System.Int32 value:1
System.ComponentModel.Design.SelectionTypes.Auto = 1
---@return System.Int32 value:2
System.ComponentModel.Design.SelectionTypes.Replace = 2
---@return System.Int32 value:4
System.ComponentModel.Design.SelectionTypes.MouseDown = 4
---@return System.Int32 value:8
System.ComponentModel.Design.SelectionTypes.MouseUp = 8

---@class System.ComponentModel.Design.ServiceContainer : System.Object
System.ComponentModel.Design.ServiceContainer = {}
---@type System.ComponentModel.Design.ServiceContainer
CS.System.ComponentModel.Design.ServiceContainer = System.ComponentModel.Design.ServiceContainer

---@overload fun(serviceType:System.Type, callback:System.ComponentModel.Design.ServiceCreatorCallback):System.Void
---@overload fun(serviceType:System.Type, serviceInstance:System.Object, promote:System.Boolean):System.Void
---@overload fun(serviceType:System.Type, callback:System.ComponentModel.Design.ServiceCreatorCallback, promote:System.Boolean):System.Void
---@param serviceType System.Type
---@param serviceInstance System.Object
---@return System.Void
function System.ComponentModel.Design.ServiceContainer:AddService(serviceType, serviceInstance)end
---@return System.Void
function System.ComponentModel.Design.ServiceContainer:Dispose()end
---@param serviceType System.Type
---@return System.Object
function System.ComponentModel.Design.ServiceContainer:GetService(serviceType)end
---@overload fun(serviceType:System.Type, promote:System.Boolean):System.Void
---@param serviceType System.Type
---@return System.Void
function System.ComponentModel.Design.ServiceContainer:RemoveService(serviceType)end
---@class System.ComponentModel.Design.StandardCommands : System.Object
---@field public AlignBottom System.ComponentModel.Design.CommandID
---@field public AlignHorizontalCenters System.ComponentModel.Design.CommandID
---@field public AlignLeft System.ComponentModel.Design.CommandID
---@field public AlignRight System.ComponentModel.Design.CommandID
---@field public AlignToGrid System.ComponentModel.Design.CommandID
---@field public AlignTop System.ComponentModel.Design.CommandID
---@field public AlignVerticalCenters System.ComponentModel.Design.CommandID
---@field public ArrangeBottom System.ComponentModel.Design.CommandID
---@field public ArrangeRight System.ComponentModel.Design.CommandID
---@field public BringForward System.ComponentModel.Design.CommandID
---@field public BringToFront System.ComponentModel.Design.CommandID
---@field public CenterHorizontally System.ComponentModel.Design.CommandID
---@field public CenterVertically System.ComponentModel.Design.CommandID
---@field public ViewCode System.ComponentModel.Design.CommandID
---@field public DocumentOutline System.ComponentModel.Design.CommandID
---@field public Copy System.ComponentModel.Design.CommandID
---@field public Cut System.ComponentModel.Design.CommandID
---@field public Delete System.ComponentModel.Design.CommandID
---@field public Group System.ComponentModel.Design.CommandID
---@field public HorizSpaceConcatenate System.ComponentModel.Design.CommandID
---@field public HorizSpaceDecrease System.ComponentModel.Design.CommandID
---@field public HorizSpaceIncrease System.ComponentModel.Design.CommandID
---@field public HorizSpaceMakeEqual System.ComponentModel.Design.CommandID
---@field public Paste System.ComponentModel.Design.CommandID
---@field public Properties System.ComponentModel.Design.CommandID
---@field public Redo System.ComponentModel.Design.CommandID
---@field public MultiLevelRedo System.ComponentModel.Design.CommandID
---@field public SelectAll System.ComponentModel.Design.CommandID
---@field public SendBackward System.ComponentModel.Design.CommandID
---@field public SendToBack System.ComponentModel.Design.CommandID
---@field public SizeToControl System.ComponentModel.Design.CommandID
---@field public SizeToControlHeight System.ComponentModel.Design.CommandID
---@field public SizeToControlWidth System.ComponentModel.Design.CommandID
---@field public SizeToFit System.ComponentModel.Design.CommandID
---@field public SizeToGrid System.ComponentModel.Design.CommandID
---@field public SnapToGrid System.ComponentModel.Design.CommandID
---@field public TabOrder System.ComponentModel.Design.CommandID
---@field public Undo System.ComponentModel.Design.CommandID
---@field public MultiLevelUndo System.ComponentModel.Design.CommandID
---@field public Ungroup System.ComponentModel.Design.CommandID
---@field public VertSpaceConcatenate System.ComponentModel.Design.CommandID
---@field public VertSpaceDecrease System.ComponentModel.Design.CommandID
---@field public VertSpaceIncrease System.ComponentModel.Design.CommandID
---@field public VertSpaceMakeEqual System.ComponentModel.Design.CommandID
---@field public ShowGrid System.ComponentModel.Design.CommandID
---@field public ViewGrid System.ComponentModel.Design.CommandID
---@field public Replace System.ComponentModel.Design.CommandID
---@field public PropertiesWindow System.ComponentModel.Design.CommandID
---@field public LockControls System.ComponentModel.Design.CommandID
---@field public F1Help System.ComponentModel.Design.CommandID
---@field public ArrangeIcons System.ComponentModel.Design.CommandID
---@field public LineupIcons System.ComponentModel.Design.CommandID
---@field public ShowLargeIcons System.ComponentModel.Design.CommandID
---@field public VerbFirst System.ComponentModel.Design.CommandID
---@field public VerbLast System.ComponentModel.Design.CommandID
System.ComponentModel.Design.StandardCommands = {}
---@type System.ComponentModel.Design.StandardCommands
CS.System.ComponentModel.Design.StandardCommands = System.ComponentModel.Design.StandardCommands

---@class System.ComponentModel.Design.StandardToolWindows : System.Object
---@field public ObjectBrowser System.Guid
---@field public OutputWindow System.Guid
---@field public ProjectExplorer System.Guid
---@field public PropertyBrowser System.Guid
---@field public RelatedLinks System.Guid
---@field public ServerExplorer System.Guid
---@field public TaskList System.Guid
---@field public Toolbox System.Guid
System.ComponentModel.Design.StandardToolWindows = {}
---@type System.ComponentModel.Design.StandardToolWindows
CS.System.ComponentModel.Design.StandardToolWindows = System.ComponentModel.Design.StandardToolWindows

---@class System.ComponentModel.Design.ViewTechnology : System.Enum
System.ComponentModel.Design.ViewTechnology = {}
---@type System.ComponentModel.Design.ViewTechnology
CS.System.ComponentModel.Design.ViewTechnology = System.ComponentModel.Design.ViewTechnology

---@return System.Int32 value:0
System.ComponentModel.Design.ViewTechnology.Passthrough = 0
---@return System.Int32 value:1
System.ComponentModel.Design.ViewTechnology.WindowsForms = 1
---@return System.Int32 value:2
System.ComponentModel.Design.ViewTechnology.Default = 2

