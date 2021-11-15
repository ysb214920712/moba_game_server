---@class System.ComponentModel.AddingNewEventArgs : System.EventArgs
---@field public NewObject System.Object @ setter getter
System.ComponentModel.AddingNewEventArgs = {}
---@type System.ComponentModel.AddingNewEventArgs
CS.System.ComponentModel.AddingNewEventArgs = System.ComponentModel.AddingNewEventArgs

---@class System.ComponentModel.AmbientValueAttribute : System.Attribute
---@field public Value System.Object @  getter
System.ComponentModel.AmbientValueAttribute = {}
---@type System.ComponentModel.AmbientValueAttribute
CS.System.ComponentModel.AmbientValueAttribute = System.ComponentModel.AmbientValueAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.AmbientValueAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.AmbientValueAttribute:GetHashCode()end
---@class System.ComponentModel.ArrayConverter : System.ComponentModel.CollectionConverter
System.ComponentModel.ArrayConverter = {}
---@type System.ComponentModel.ArrayConverter
CS.System.ComponentModel.ArrayConverter = System.ComponentModel.ArrayConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.ArrayConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.ArrayConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.ArrayConverter:GetPropertiesSupported(context)end
---@class System.ComponentModel.AsyncCompletedEventArgs : System.EventArgs
---@field public Cancelled System.Boolean @  getter
---@field public Error System.Exception @  getter
---@field public UserState System.Object @  getter
System.ComponentModel.AsyncCompletedEventArgs = {}
---@type System.ComponentModel.AsyncCompletedEventArgs
CS.System.ComponentModel.AsyncCompletedEventArgs = System.ComponentModel.AsyncCompletedEventArgs

---@class System.ComponentModel.AsyncOperation : System.Object
---@field public UserSuppliedState System.Object @  getter
---@field public SynchronizationContext System.Threading.SynchronizationContext @  getter
System.ComponentModel.AsyncOperation = {}
---@type System.ComponentModel.AsyncOperation
CS.System.ComponentModel.AsyncOperation = System.ComponentModel.AsyncOperation

---@param d System.Threading.SendOrPostCallback
---@param arg System.Object
---@return System.Void
function System.ComponentModel.AsyncOperation:Post(d, arg)end
---@param d System.Threading.SendOrPostCallback
---@param arg System.Object
---@return System.Void
function System.ComponentModel.AsyncOperation:PostOperationCompleted(d, arg)end
---@return System.Void
function System.ComponentModel.AsyncOperation:OperationCompleted()end
---@class System.ComponentModel.AsyncOperationManager : System.Object
---@field public SynchronizationContext System.Threading.SynchronizationContext @static setter getter
System.ComponentModel.AsyncOperationManager = {}
---@type System.ComponentModel.AsyncOperationManager
CS.System.ComponentModel.AsyncOperationManager = System.ComponentModel.AsyncOperationManager

---@param userSuppliedState System.Object
---@return System.ComponentModel.AsyncOperation
function System.ComponentModel.AsyncOperationManager.CreateOperation(userSuppliedState)end
---@class System.ComponentModel.AttributeCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.Attribute @  getter
---@field public Item System.Attribute @  getter
---@field public Empty System.ComponentModel.AttributeCollection
System.ComponentModel.AttributeCollection = {}
---@type System.ComponentModel.AttributeCollection
CS.System.ComponentModel.AttributeCollection = System.ComponentModel.AttributeCollection

---@param existing System.ComponentModel.AttributeCollection
---@param newAttributes System.Attribute[]
---@return System.ComponentModel.AttributeCollection
function System.ComponentModel.AttributeCollection.FromExisting(existing, newAttributes)end
---@overload fun(attributes:System.Attribute[]):System.Boolean
---@param attribute System.Attribute
---@return System.Boolean
function System.ComponentModel.AttributeCollection:Contains(attribute)end
---@return System.Collections.IEnumerator
function System.ComponentModel.AttributeCollection:GetEnumerator()end
---@overload fun(attributes:System.Attribute[]):System.Boolean
---@param attribute System.Attribute
---@return System.Boolean
function System.ComponentModel.AttributeCollection:Matches(attribute)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.ComponentModel.AttributeCollection:CopyTo(array, index)end
---@class System.ComponentModel.AttributeProviderAttribute : System.Attribute
---@field public TypeName System.String @  getter
---@field public PropertyName System.String @  getter
System.ComponentModel.AttributeProviderAttribute = {}
---@type System.ComponentModel.AttributeProviderAttribute
CS.System.ComponentModel.AttributeProviderAttribute = System.ComponentModel.AttributeProviderAttribute

---@class System.ComponentModel.BackgroundWorker : System.ComponentModel.Component
---@field public CancellationPending System.Boolean @  getter
---@field public IsBusy System.Boolean @  getter
---@field public WorkerReportsProgress System.Boolean @ setter getter
---@field public WorkerSupportsCancellation System.Boolean @ setter getter
System.ComponentModel.BackgroundWorker = {}
---@type System.ComponentModel.BackgroundWorker
CS.System.ComponentModel.BackgroundWorker = System.ComponentModel.BackgroundWorker

---@return System.Void
function System.ComponentModel.BackgroundWorker:CancelAsync()end
---@param value System.ComponentModel.DoWorkEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:add_DoWork(value)end
---@param value System.ComponentModel.DoWorkEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:remove_DoWork(value)end
---@param value System.ComponentModel.ProgressChangedEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:add_ProgressChanged(value)end
---@param value System.ComponentModel.ProgressChangedEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:remove_ProgressChanged(value)end
---@overload fun(percentProgress:System.Int32, userState:System.Object):System.Void
---@param percentProgress System.Int32
---@return System.Void
function System.ComponentModel.BackgroundWorker:ReportProgress(percentProgress)end
---@overload fun(argument:System.Object):System.Void
---@return System.Void
function System.ComponentModel.BackgroundWorker:RunWorkerAsync()end
---@param value System.ComponentModel.RunWorkerCompletedEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:add_RunWorkerCompleted(value)end
---@param value System.ComponentModel.RunWorkerCompletedEventHandler
---@return System.Void
function System.ComponentModel.BackgroundWorker:remove_RunWorkerCompleted(value)end
---@class System.ComponentModel.ComponentEditor : System.Object
System.ComponentModel.ComponentEditor = {}
---@type System.ComponentModel.ComponentEditor
CS.System.ComponentModel.ComponentEditor = System.ComponentModel.ComponentEditor

---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, component:System.Object):System.Boolean
---@param component System.Object
---@return System.Boolean
function System.ComponentModel.ComponentEditor:EditComponent(component)end
---@class System.ComponentModel.BindableAttribute : System.Attribute
---@field public Bindable System.Boolean @  getter
---@field public Direction System.ComponentModel.BindingDirection @  getter
---@field public Yes System.ComponentModel.BindableAttribute
---@field public No System.ComponentModel.BindableAttribute
---@field public Default System.ComponentModel.BindableAttribute
System.ComponentModel.BindableAttribute = {}
---@type System.ComponentModel.BindableAttribute
CS.System.ComponentModel.BindableAttribute = System.ComponentModel.BindableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.BindableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.BindableAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.BindableAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.BindableSupport : System.Enum
System.ComponentModel.BindableSupport = {}
---@type System.ComponentModel.BindableSupport
CS.System.ComponentModel.BindableSupport = System.ComponentModel.BindableSupport

---@return System.Int32 value:0
System.ComponentModel.BindableSupport.No = 0
---@return System.Int32 value:1
System.ComponentModel.BindableSupport.Yes = 1
---@return System.Int32 value:2
System.ComponentModel.BindableSupport.Default = 2

---@class System.ComponentModel.BindingDirection : System.Enum
System.ComponentModel.BindingDirection = {}
---@type System.ComponentModel.BindingDirection
CS.System.ComponentModel.BindingDirection = System.ComponentModel.BindingDirection

---@return System.Int32 value:0
System.ComponentModel.BindingDirection.OneWay = 0
---@return System.Int32 value:1
System.ComponentModel.BindingDirection.TwoWay = 1

---@class System.ComponentModel.BindingList : any
---@field public RaiseListChangedEvents System.Boolean @ setter getter
---@field public AllowNew System.Boolean @ setter getter
---@field public AllowEdit System.Boolean @ setter getter
---@field public AllowRemove System.Boolean @ setter getter
System.ComponentModel.BindingList = {}
---@type System.ComponentModel.BindingList
CS.System.ComponentModel.BindingList = System.ComponentModel.BindingList

---@param value System.ComponentModel.AddingNewEventHandler
---@return System.Void
function System.ComponentModel.BindingList:add_AddingNew(value)end
---@param value System.ComponentModel.AddingNewEventHandler
---@return System.Void
function System.ComponentModel.BindingList:remove_AddingNew(value)end
---@param value System.ComponentModel.ListChangedEventHandler
---@return System.Void
function System.ComponentModel.BindingList:add_ListChanged(value)end
---@param value System.ComponentModel.ListChangedEventHandler
---@return System.Void
function System.ComponentModel.BindingList:remove_ListChanged(value)end
---@return System.Void
function System.ComponentModel.BindingList:ResetBindings()end
---@param position System.Int32
---@return System.Void
function System.ComponentModel.BindingList:ResetItem(position)end
---@param itemIndex System.Int32
---@return System.Void
function System.ComponentModel.BindingList:CancelNew(itemIndex)end
---@param itemIndex System.Int32
---@return System.Void
function System.ComponentModel.BindingList:EndNew(itemIndex)end
---@return any
function System.ComponentModel.BindingList:AddNew()end
---@class System.ComponentModel.BooleanConverter : System.ComponentModel.TypeConverter
System.ComponentModel.BooleanConverter = {}
---@type System.ComponentModel.BooleanConverter
CS.System.ComponentModel.BooleanConverter = System.ComponentModel.BooleanConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.BooleanConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.BooleanConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.BooleanConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.BooleanConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.BooleanConverter:GetStandardValuesSupported(context)end
---@class System.ComponentModel.BrowsableAttribute : System.Attribute
---@field public Browsable System.Boolean @  getter
---@field public Yes System.ComponentModel.BrowsableAttribute
---@field public No System.ComponentModel.BrowsableAttribute
---@field public Default System.ComponentModel.BrowsableAttribute
System.ComponentModel.BrowsableAttribute = {}
---@type System.ComponentModel.BrowsableAttribute
CS.System.ComponentModel.BrowsableAttribute = System.ComponentModel.BrowsableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.BrowsableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.BrowsableAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.BrowsableAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ByteConverter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.ByteConverter = {}
---@type System.ComponentModel.ByteConverter
CS.System.ComponentModel.ByteConverter = System.ComponentModel.ByteConverter

---@class System.ComponentModel.CancelEventArgs : System.EventArgs
---@field public Cancel System.Boolean @ setter getter
System.ComponentModel.CancelEventArgs = {}
---@type System.ComponentModel.CancelEventArgs
CS.System.ComponentModel.CancelEventArgs = System.ComponentModel.CancelEventArgs

---@class System.ComponentModel.CategoryAttribute : System.Attribute
---@field public Action System.ComponentModel.CategoryAttribute @static  getter
---@field public Appearance System.ComponentModel.CategoryAttribute @static  getter
---@field public Asynchronous System.ComponentModel.CategoryAttribute @static  getter
---@field public Behavior System.ComponentModel.CategoryAttribute @static  getter
---@field public Data System.ComponentModel.CategoryAttribute @static  getter
---@field public Default System.ComponentModel.CategoryAttribute @static  getter
---@field public Design System.ComponentModel.CategoryAttribute @static  getter
---@field public DragDrop System.ComponentModel.CategoryAttribute @static  getter
---@field public Focus System.ComponentModel.CategoryAttribute @static  getter
---@field public Format System.ComponentModel.CategoryAttribute @static  getter
---@field public Key System.ComponentModel.CategoryAttribute @static  getter
---@field public Layout System.ComponentModel.CategoryAttribute @static  getter
---@field public Mouse System.ComponentModel.CategoryAttribute @static  getter
---@field public WindowStyle System.ComponentModel.CategoryAttribute @static  getter
---@field public Category System.String @  getter
System.ComponentModel.CategoryAttribute = {}
---@type System.ComponentModel.CategoryAttribute
CS.System.ComponentModel.CategoryAttribute = System.ComponentModel.CategoryAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.CategoryAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.CategoryAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.CategoryAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.CharConverter : System.ComponentModel.TypeConverter
System.ComponentModel.CharConverter = {}
---@type System.ComponentModel.CharConverter
CS.System.ComponentModel.CharConverter = System.ComponentModel.CharConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.CharConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.CharConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.CharConverter:ConvertFrom(context, culture, value)end
---@class System.ComponentModel.CollectionChangeAction : System.Enum
System.ComponentModel.CollectionChangeAction = {}
---@type System.ComponentModel.CollectionChangeAction
CS.System.ComponentModel.CollectionChangeAction = System.ComponentModel.CollectionChangeAction

---@return System.Int32 value:1
System.ComponentModel.CollectionChangeAction.Add = 1
---@return System.Int32 value:2
System.ComponentModel.CollectionChangeAction.Remove = 2

---@class System.ComponentModel.CollectionChangeEventArgs : System.EventArgs
---@field public Action System.ComponentModel.CollectionChangeAction @  getter
---@field public Element System.Object @  getter
System.ComponentModel.CollectionChangeEventArgs = {}
---@type System.ComponentModel.CollectionChangeEventArgs
CS.System.ComponentModel.CollectionChangeEventArgs = System.ComponentModel.CollectionChangeEventArgs

---@class System.ComponentModel.CollectionConverter : System.ComponentModel.TypeConverter
System.ComponentModel.CollectionConverter = {}
---@type System.ComponentModel.CollectionConverter
CS.System.ComponentModel.CollectionConverter = System.ComponentModel.CollectionConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.CollectionConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.CollectionConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.CollectionConverter:GetPropertiesSupported(context)end
---@class System.ComponentModel.ComplexBindingPropertiesAttribute : System.Attribute
---@field public DataSource System.String @  getter
---@field public DataMember System.String @  getter
---@field public Default System.ComponentModel.ComplexBindingPropertiesAttribute
System.ComponentModel.ComplexBindingPropertiesAttribute = {}
---@type System.ComponentModel.ComplexBindingPropertiesAttribute
CS.System.ComponentModel.ComplexBindingPropertiesAttribute = System.ComponentModel.ComplexBindingPropertiesAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ComplexBindingPropertiesAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ComplexBindingPropertiesAttribute:GetHashCode()end
---@class System.ComponentModel.Component : System.MarshalByRefObject
---@field public Site System.ComponentModel.ISite @ setter getter
---@field public Container System.ComponentModel.IContainer @  getter
System.ComponentModel.Component = {}
---@type System.ComponentModel.Component
CS.System.ComponentModel.Component = System.ComponentModel.Component

---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.Component:add_Disposed(value)end
---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.Component:remove_Disposed(value)end
---@return System.Void
function System.ComponentModel.Component:Dispose()end
---@return System.String
function System.ComponentModel.Component:ToString()end
---@class System.ComponentModel.ComponentCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.ComponentModel.IComponent @  getter
---@field public Item System.ComponentModel.IComponent @  getter
System.ComponentModel.ComponentCollection = {}
---@type System.ComponentModel.ComponentCollection
CS.System.ComponentModel.ComponentCollection = System.ComponentModel.ComponentCollection

---@param array System.ComponentModel.IComponent[]
---@param index System.Int32
---@return System.Void
function System.ComponentModel.ComponentCollection:CopyTo(array, index)end
---@class System.ComponentModel.ComponentConverter : System.ComponentModel.ReferenceConverter
System.ComponentModel.ComponentConverter = {}
---@type System.ComponentModel.ComponentConverter
CS.System.ComponentModel.ComponentConverter = System.ComponentModel.ComponentConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.ComponentConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.ComponentConverter:GetPropertiesSupported(context)end
---@class System.ComponentModel.ComponentResourceManager : System.Resources.ResourceManager
System.ComponentModel.ComponentResourceManager = {}
---@type System.ComponentModel.ComponentResourceManager
CS.System.ComponentModel.ComponentResourceManager = System.ComponentModel.ComponentResourceManager

---@overload fun(value:System.Object, objectName:System.String, culture:System.Globalization.CultureInfo):System.Void
---@param value System.Object
---@param objectName System.String
---@return System.Void
function System.ComponentModel.ComponentResourceManager:ApplyResources(value, objectName)end
---@class System.ComponentModel.Container : System.Object
---@field public Components System.ComponentModel.ComponentCollection @  getter
System.ComponentModel.Container = {}
---@type System.ComponentModel.Container
CS.System.ComponentModel.Container = System.ComponentModel.Container

---@overload fun(component:System.ComponentModel.IComponent, name:System.String):System.Void
---@param component System.ComponentModel.IComponent
---@return System.Void
function System.ComponentModel.Container:Add(component)end
---@return System.Void
function System.ComponentModel.Container:Dispose()end
---@param component System.ComponentModel.IComponent
---@return System.Void
function System.ComponentModel.Container:Remove(component)end
---@class System.ComponentModel.ContainerFilterService : System.Object
System.ComponentModel.ContainerFilterService = {}
---@type System.ComponentModel.ContainerFilterService
CS.System.ComponentModel.ContainerFilterService = System.ComponentModel.ContainerFilterService

---@param components System.ComponentModel.ComponentCollection
---@return System.ComponentModel.ComponentCollection
function System.ComponentModel.ContainerFilterService:FilterComponents(components)end
---@class System.ComponentModel.CultureInfoConverter : System.ComponentModel.TypeConverter
System.ComponentModel.CultureInfoConverter = {}
---@type System.ComponentModel.CultureInfoConverter
CS.System.ComponentModel.CultureInfoConverter = System.ComponentModel.CultureInfoConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.CultureInfoConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.CultureInfoConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.CultureInfoConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.CultureInfoConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.CultureInfoConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.CultureInfoConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.CultureInfoConverter:GetStandardValuesSupported(context)end
---@class System.ComponentModel.CustomTypeDescriptor : System.Object
System.ComponentModel.CustomTypeDescriptor = {}
---@type System.ComponentModel.CustomTypeDescriptor
CS.System.ComponentModel.CustomTypeDescriptor = System.ComponentModel.CustomTypeDescriptor

---@return System.ComponentModel.AttributeCollection
function System.ComponentModel.CustomTypeDescriptor:GetAttributes()end
---@return System.String
function System.ComponentModel.CustomTypeDescriptor:GetClassName()end
---@return System.String
function System.ComponentModel.CustomTypeDescriptor:GetComponentName()end
---@return System.ComponentModel.TypeConverter
function System.ComponentModel.CustomTypeDescriptor:GetConverter()end
---@return System.ComponentModel.EventDescriptor
function System.ComponentModel.CustomTypeDescriptor:GetDefaultEvent()end
---@return System.ComponentModel.PropertyDescriptor
function System.ComponentModel.CustomTypeDescriptor:GetDefaultProperty()end
---@param editorBaseType System.Type
---@return System.Object
function System.ComponentModel.CustomTypeDescriptor:GetEditor(editorBaseType)end
---@overload fun(attributes:System.Attribute[]):System.ComponentModel.EventDescriptorCollection
---@return System.ComponentModel.EventDescriptorCollection
function System.ComponentModel.CustomTypeDescriptor:GetEvents()end
---@overload fun(attributes:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.CustomTypeDescriptor:GetProperties()end
---@param pd System.ComponentModel.PropertyDescriptor
---@return System.Object
function System.ComponentModel.CustomTypeDescriptor:GetPropertyOwner(pd)end
---@class System.ComponentModel.DataErrorsChangedEventArgs : System.EventArgs
---@field public PropertyName System.String @  getter
System.ComponentModel.DataErrorsChangedEventArgs = {}
---@type System.ComponentModel.DataErrorsChangedEventArgs
CS.System.ComponentModel.DataErrorsChangedEventArgs = System.ComponentModel.DataErrorsChangedEventArgs

---@class System.ComponentModel.DataObjectAttribute : System.Attribute
---@field public IsDataObject System.Boolean @  getter
---@field public DataObject System.ComponentModel.DataObjectAttribute
---@field public NonDataObject System.ComponentModel.DataObjectAttribute
---@field public Default System.ComponentModel.DataObjectAttribute
System.ComponentModel.DataObjectAttribute = {}
---@type System.ComponentModel.DataObjectAttribute
CS.System.ComponentModel.DataObjectAttribute = System.ComponentModel.DataObjectAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DataObjectAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DataObjectAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DataObjectAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DataObjectFieldAttribute : System.Attribute
---@field public IsIdentity System.Boolean @  getter
---@field public IsNullable System.Boolean @  getter
---@field public Length System.Int32 @  getter
---@field public PrimaryKey System.Boolean @  getter
System.ComponentModel.DataObjectFieldAttribute = {}
---@type System.ComponentModel.DataObjectFieldAttribute
CS.System.ComponentModel.DataObjectFieldAttribute = System.ComponentModel.DataObjectFieldAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DataObjectFieldAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DataObjectFieldAttribute:GetHashCode()end
---@class System.ComponentModel.DataObjectMethodAttribute : System.Attribute
---@field public IsDefault System.Boolean @  getter
---@field public MethodType System.ComponentModel.DataObjectMethodType @  getter
System.ComponentModel.DataObjectMethodAttribute = {}
---@type System.ComponentModel.DataObjectMethodAttribute
CS.System.ComponentModel.DataObjectMethodAttribute = System.ComponentModel.DataObjectMethodAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DataObjectMethodAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DataObjectMethodAttribute:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DataObjectMethodAttribute:Match(obj)end
---@class System.ComponentModel.DataObjectMethodType : System.Enum
System.ComponentModel.DataObjectMethodType = {}
---@type System.ComponentModel.DataObjectMethodType
CS.System.ComponentModel.DataObjectMethodType = System.ComponentModel.DataObjectMethodType

---@return System.Int32 value:0
System.ComponentModel.DataObjectMethodType.Fill = 0
---@return System.Int32 value:1
System.ComponentModel.DataObjectMethodType.Select = 1
---@return System.Int32 value:2
System.ComponentModel.DataObjectMethodType.Update = 2
---@return System.Int32 value:3
System.ComponentModel.DataObjectMethodType.Insert = 3
---@return System.Int32 value:4
System.ComponentModel.DataObjectMethodType.Delete = 4

---@class System.ComponentModel.DateTimeConverter : System.ComponentModel.TypeConverter
System.ComponentModel.DateTimeConverter = {}
---@type System.ComponentModel.DateTimeConverter
CS.System.ComponentModel.DateTimeConverter = System.ComponentModel.DateTimeConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.DateTimeConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.DateTimeConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.DateTimeConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.DateTimeConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.ComponentModel.DateTimeOffsetConverter : System.ComponentModel.TypeConverter
System.ComponentModel.DateTimeOffsetConverter = {}
---@type System.ComponentModel.DateTimeOffsetConverter
CS.System.ComponentModel.DateTimeOffsetConverter = System.ComponentModel.DateTimeOffsetConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.DateTimeOffsetConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.DateTimeOffsetConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.DateTimeOffsetConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.DateTimeOffsetConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.ComponentModel.DecimalConverter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.DecimalConverter = {}
---@type System.ComponentModel.DecimalConverter
CS.System.ComponentModel.DecimalConverter = System.ComponentModel.DecimalConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.DecimalConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.DecimalConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.ComponentModel.DefaultBindingPropertyAttribute : System.Attribute
---@field public Name System.String @  getter
---@field public Default System.ComponentModel.DefaultBindingPropertyAttribute
System.ComponentModel.DefaultBindingPropertyAttribute = {}
---@type System.ComponentModel.DefaultBindingPropertyAttribute
CS.System.ComponentModel.DefaultBindingPropertyAttribute = System.ComponentModel.DefaultBindingPropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DefaultBindingPropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DefaultBindingPropertyAttribute:GetHashCode()end
---@class System.ComponentModel.DefaultEventAttribute : System.Attribute
---@field public Name System.String @  getter
---@field public Default System.ComponentModel.DefaultEventAttribute
System.ComponentModel.DefaultEventAttribute = {}
---@type System.ComponentModel.DefaultEventAttribute
CS.System.ComponentModel.DefaultEventAttribute = System.ComponentModel.DefaultEventAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DefaultEventAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DefaultEventAttribute:GetHashCode()end
---@class System.ComponentModel.DefaultPropertyAttribute : System.Attribute
---@field public Name System.String @  getter
---@field public Default System.ComponentModel.DefaultPropertyAttribute
System.ComponentModel.DefaultPropertyAttribute = {}
---@type System.ComponentModel.DefaultPropertyAttribute
CS.System.ComponentModel.DefaultPropertyAttribute = System.ComponentModel.DefaultPropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DefaultPropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DefaultPropertyAttribute:GetHashCode()end
---@class System.ComponentModel.DefaultValueAttribute : System.Attribute
---@field public Value System.Object @  getter
System.ComponentModel.DefaultValueAttribute = {}
---@type System.ComponentModel.DefaultValueAttribute
CS.System.ComponentModel.DefaultValueAttribute = System.ComponentModel.DefaultValueAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DefaultValueAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DefaultValueAttribute:GetHashCode()end
---@class System.ComponentModel.DescriptionAttribute : System.Attribute
---@field public Description System.String @  getter
---@field public Default System.ComponentModel.DescriptionAttribute
System.ComponentModel.DescriptionAttribute = {}
---@type System.ComponentModel.DescriptionAttribute
CS.System.ComponentModel.DescriptionAttribute = System.ComponentModel.DescriptionAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DescriptionAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DescriptionAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DescriptionAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DesignOnlyAttribute : System.Attribute
---@field public IsDesignOnly System.Boolean @  getter
---@field public Yes System.ComponentModel.DesignOnlyAttribute
---@field public No System.ComponentModel.DesignOnlyAttribute
---@field public Default System.ComponentModel.DesignOnlyAttribute
System.ComponentModel.DesignOnlyAttribute = {}
---@type System.ComponentModel.DesignOnlyAttribute
CS.System.ComponentModel.DesignOnlyAttribute = System.ComponentModel.DesignOnlyAttribute

---@return System.Boolean
function System.ComponentModel.DesignOnlyAttribute:IsDefaultAttribute()end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DesignOnlyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DesignOnlyAttribute:GetHashCode()end
---@class System.ComponentModel.DesignTimeVisibleAttribute : System.Attribute
---@field public Visible System.Boolean @  getter
---@field public Yes System.ComponentModel.DesignTimeVisibleAttribute
---@field public No System.ComponentModel.DesignTimeVisibleAttribute
---@field public Default System.ComponentModel.DesignTimeVisibleAttribute
System.ComponentModel.DesignTimeVisibleAttribute = {}
---@type System.ComponentModel.DesignTimeVisibleAttribute
CS.System.ComponentModel.DesignTimeVisibleAttribute = System.ComponentModel.DesignTimeVisibleAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DesignTimeVisibleAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DesignTimeVisibleAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DesignTimeVisibleAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DesignerAttribute : System.Attribute
---@field public DesignerBaseTypeName System.String @  getter
---@field public DesignerTypeName System.String @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.DesignerAttribute = {}
---@type System.ComponentModel.DesignerAttribute
CS.System.ComponentModel.DesignerAttribute = System.ComponentModel.DesignerAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DesignerAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DesignerAttribute:GetHashCode()end
---@class System.ComponentModel.DesignerCategoryAttribute : System.Attribute
---@field public Category System.String @  getter
---@field public TypeId System.Object @  getter
---@field public Component System.ComponentModel.DesignerCategoryAttribute
---@field public Default System.ComponentModel.DesignerCategoryAttribute
---@field public Form System.ComponentModel.DesignerCategoryAttribute
---@field public Generic System.ComponentModel.DesignerCategoryAttribute
System.ComponentModel.DesignerCategoryAttribute = {}
---@type System.ComponentModel.DesignerCategoryAttribute
CS.System.ComponentModel.DesignerCategoryAttribute = System.ComponentModel.DesignerCategoryAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DesignerCategoryAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DesignerCategoryAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DesignerCategoryAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DesignerSerializationVisibility : System.Enum
System.ComponentModel.DesignerSerializationVisibility = {}
---@type System.ComponentModel.DesignerSerializationVisibility
CS.System.ComponentModel.DesignerSerializationVisibility = System.ComponentModel.DesignerSerializationVisibility

---@return System.Int32 value:0
System.ComponentModel.DesignerSerializationVisibility.Hidden = 0
---@return System.Int32 value:1
System.ComponentModel.DesignerSerializationVisibility.Visible = 1
---@return System.Int32 value:2
System.ComponentModel.DesignerSerializationVisibility.Content = 2

---@class System.ComponentModel.DesignerSerializationVisibilityAttribute : System.Attribute
---@field public Visibility System.ComponentModel.DesignerSerializationVisibility @  getter
---@field public Content System.ComponentModel.DesignerSerializationVisibilityAttribute
---@field public Hidden System.ComponentModel.DesignerSerializationVisibilityAttribute
---@field public Visible System.ComponentModel.DesignerSerializationVisibilityAttribute
---@field public Default System.ComponentModel.DesignerSerializationVisibilityAttribute
System.ComponentModel.DesignerSerializationVisibilityAttribute = {}
---@type System.ComponentModel.DesignerSerializationVisibilityAttribute
CS.System.ComponentModel.DesignerSerializationVisibilityAttribute = System.ComponentModel.DesignerSerializationVisibilityAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DesignerSerializationVisibilityAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DesignerSerializationVisibilityAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DesignerSerializationVisibilityAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DisplayNameAttribute : System.Attribute
---@field public DisplayName System.String @  getter
---@field public Default System.ComponentModel.DisplayNameAttribute
System.ComponentModel.DisplayNameAttribute = {}
---@type System.ComponentModel.DisplayNameAttribute
CS.System.ComponentModel.DisplayNameAttribute = System.ComponentModel.DisplayNameAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.DisplayNameAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.DisplayNameAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.DisplayNameAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.DoWorkEventArgs : System.ComponentModel.CancelEventArgs
---@field public Argument System.Object @  getter
---@field public Result System.Object @ setter getter
System.ComponentModel.DoWorkEventArgs = {}
---@type System.ComponentModel.DoWorkEventArgs
CS.System.ComponentModel.DoWorkEventArgs = System.ComponentModel.DoWorkEventArgs

---@class System.ComponentModel.DoubleConverter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.DoubleConverter = {}
---@type System.ComponentModel.DoubleConverter
CS.System.ComponentModel.DoubleConverter = System.ComponentModel.DoubleConverter

---@class System.ComponentModel.EditorAttribute : System.Attribute
---@field public EditorBaseTypeName System.String @  getter
---@field public EditorTypeName System.String @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.EditorAttribute = {}
---@type System.ComponentModel.EditorAttribute
CS.System.ComponentModel.EditorAttribute = System.ComponentModel.EditorAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.EditorAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.EditorAttribute:GetHashCode()end
---@class System.ComponentModel.EditorBrowsableAttribute : System.Attribute
---@field public State System.ComponentModel.EditorBrowsableState @  getter
System.ComponentModel.EditorBrowsableAttribute = {}
---@type System.ComponentModel.EditorBrowsableAttribute
CS.System.ComponentModel.EditorBrowsableAttribute = System.ComponentModel.EditorBrowsableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.EditorBrowsableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.EditorBrowsableAttribute:GetHashCode()end
---@class System.ComponentModel.EditorBrowsableState : System.Enum
System.ComponentModel.EditorBrowsableState = {}
---@type System.ComponentModel.EditorBrowsableState
CS.System.ComponentModel.EditorBrowsableState = System.ComponentModel.EditorBrowsableState

---@return System.Int32 value:0
System.ComponentModel.EditorBrowsableState.Always = 0
---@return System.Int32 value:1
System.ComponentModel.EditorBrowsableState.Never = 1
---@return System.Int32 value:2
System.ComponentModel.EditorBrowsableState.Advanced = 2

---@class System.ComponentModel.EnumConverter : System.ComponentModel.TypeConverter
System.ComponentModel.EnumConverter = {}
---@type System.ComponentModel.EnumConverter
CS.System.ComponentModel.EnumConverter = System.ComponentModel.EnumConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.EnumConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.EnumConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.EnumConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.EnumConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.EnumConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.EnumConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.EnumConverter:GetStandardValuesSupported(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@return System.Boolean
function System.ComponentModel.EnumConverter:IsValid(context, value)end
---@class System.ComponentModel.EventDescriptor : System.ComponentModel.MemberDescriptor
---@field public ComponentType System.Type @  getter
---@field public EventType System.Type @  getter
---@field public IsMulticast System.Boolean @  getter
System.ComponentModel.EventDescriptor = {}
---@type System.ComponentModel.EventDescriptor
CS.System.ComponentModel.EventDescriptor = System.ComponentModel.EventDescriptor

---@param component System.Object
---@param value System.Delegate
---@return System.Void
function System.ComponentModel.EventDescriptor:AddEventHandler(component, value)end
---@param component System.Object
---@param value System.Delegate
---@return System.Void
function System.ComponentModel.EventDescriptor:RemoveEventHandler(component, value)end
---@class System.ComponentModel.EventDescriptorCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.ComponentModel.EventDescriptor @  getter
---@field public Item System.ComponentModel.EventDescriptor @  getter
---@field public Empty System.ComponentModel.EventDescriptorCollection
System.ComponentModel.EventDescriptorCollection = {}
---@type System.ComponentModel.EventDescriptorCollection
CS.System.ComponentModel.EventDescriptorCollection = System.ComponentModel.EventDescriptorCollection

---@param value System.ComponentModel.EventDescriptor
---@return System.Int32
function System.ComponentModel.EventDescriptorCollection:Add(value)end
---@return System.Void
function System.ComponentModel.EventDescriptorCollection:Clear()end
---@param value System.ComponentModel.EventDescriptor
---@return System.Boolean
function System.ComponentModel.EventDescriptorCollection:Contains(value)end
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.ComponentModel.EventDescriptor
function System.ComponentModel.EventDescriptorCollection:Find(name, ignoreCase)end
---@param value System.ComponentModel.EventDescriptor
---@return System.Int32
function System.ComponentModel.EventDescriptorCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.ComponentModel.EventDescriptor
---@return System.Void
function System.ComponentModel.EventDescriptorCollection:Insert(index, value)end
---@param value System.ComponentModel.EventDescriptor
---@return System.Void
function System.ComponentModel.EventDescriptorCollection:Remove(value)end
---@param index System.Int32
---@return System.Void
function System.ComponentModel.EventDescriptorCollection:RemoveAt(index)end
---@return System.Collections.IEnumerator
function System.ComponentModel.EventDescriptorCollection:GetEnumerator()end
---@overload fun(names:System.String[]):System.ComponentModel.EventDescriptorCollection
---@overload fun(comparer:System.Collections.IComparer):System.ComponentModel.EventDescriptorCollection
---@overload fun(names:System.String[], comparer:System.Collections.IComparer):System.ComponentModel.EventDescriptorCollection
---@return System.ComponentModel.EventDescriptorCollection
function System.ComponentModel.EventDescriptorCollection:Sort()end
---@class System.ComponentModel.EventHandlerList : System.Object
---@field public Item System.Delegate @ setter getter
System.ComponentModel.EventHandlerList = {}
---@type System.ComponentModel.EventHandlerList
CS.System.ComponentModel.EventHandlerList = System.ComponentModel.EventHandlerList

---@param key System.Object
---@param value System.Delegate
---@return System.Void
function System.ComponentModel.EventHandlerList:AddHandler(key, value)end
---@param listToAddFrom System.ComponentModel.EventHandlerList
---@return System.Void
function System.ComponentModel.EventHandlerList:AddHandlers(listToAddFrom)end
---@return System.Void
function System.ComponentModel.EventHandlerList:Dispose()end
---@param key System.Object
---@param value System.Delegate
---@return System.Void
function System.ComponentModel.EventHandlerList:RemoveHandler(key, value)end
---@class System.ComponentModel.ExpandableObjectConverter : System.ComponentModel.TypeConverter
System.ComponentModel.ExpandableObjectConverter = {}
---@type System.ComponentModel.ExpandableObjectConverter
CS.System.ComponentModel.ExpandableObjectConverter = System.ComponentModel.ExpandableObjectConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.ExpandableObjectConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.ExpandableObjectConverter:GetPropertiesSupported(context)end
---@class System.ComponentModel.ExtenderProvidedPropertyAttribute : System.Attribute
---@field public ExtenderProperty System.ComponentModel.PropertyDescriptor @  getter
---@field public Provider System.ComponentModel.IExtenderProvider @  getter
---@field public ReceiverType System.Type @  getter
System.ComponentModel.ExtenderProvidedPropertyAttribute = {}
---@type System.ComponentModel.ExtenderProvidedPropertyAttribute
CS.System.ComponentModel.ExtenderProvidedPropertyAttribute = System.ComponentModel.ExtenderProvidedPropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ExtenderProvidedPropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ExtenderProvidedPropertyAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.ExtenderProvidedPropertyAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.GuidConverter : System.ComponentModel.TypeConverter
System.ComponentModel.GuidConverter = {}
---@type System.ComponentModel.GuidConverter
CS.System.ComponentModel.GuidConverter = System.ComponentModel.GuidConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.GuidConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.GuidConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.GuidConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.GuidConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.ComponentModel.HandledEventArgs : System.EventArgs
---@field public Handled System.Boolean @ setter getter
System.ComponentModel.HandledEventArgs = {}
---@type System.ComponentModel.HandledEventArgs
CS.System.ComponentModel.HandledEventArgs = System.ComponentModel.HandledEventArgs

---@class System.ComponentModel.ImmutableObjectAttribute : System.Attribute
---@field public Immutable System.Boolean @  getter
---@field public Yes System.ComponentModel.ImmutableObjectAttribute
---@field public No System.ComponentModel.ImmutableObjectAttribute
---@field public Default System.ComponentModel.ImmutableObjectAttribute
System.ComponentModel.ImmutableObjectAttribute = {}
---@type System.ComponentModel.ImmutableObjectAttribute
CS.System.ComponentModel.ImmutableObjectAttribute = System.ComponentModel.ImmutableObjectAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ImmutableObjectAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ImmutableObjectAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.ImmutableObjectAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.InitializationEventAttribute : System.Attribute
---@field public EventName System.String @  getter
System.ComponentModel.InitializationEventAttribute = {}
---@type System.ComponentModel.InitializationEventAttribute
CS.System.ComponentModel.InitializationEventAttribute = System.ComponentModel.InitializationEventAttribute

---@class System.ComponentModel.InstallerTypeAttribute : System.Attribute
---@field public InstallerType System.Type @  getter
System.ComponentModel.InstallerTypeAttribute = {}
---@type System.ComponentModel.InstallerTypeAttribute
CS.System.ComponentModel.InstallerTypeAttribute = System.ComponentModel.InstallerTypeAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.InstallerTypeAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.InstallerTypeAttribute:GetHashCode()end
---@class System.ComponentModel.InstanceCreationEditor : System.Object
---@field public Text System.String @  getter
System.ComponentModel.InstanceCreationEditor = {}
---@type System.ComponentModel.InstanceCreationEditor
CS.System.ComponentModel.InstanceCreationEditor = System.ComponentModel.InstanceCreationEditor

---@param context System.ComponentModel.ITypeDescriptorContext
---@param instanceType System.Type
---@return System.Object
function System.ComponentModel.InstanceCreationEditor:CreateInstance(context, instanceType)end
---@class System.ComponentModel.Int16Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.Int16Converter = {}
---@type System.ComponentModel.Int16Converter
CS.System.ComponentModel.Int16Converter = System.ComponentModel.Int16Converter

---@class System.ComponentModel.Int32Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.Int32Converter = {}
---@type System.ComponentModel.Int32Converter
CS.System.ComponentModel.Int32Converter = System.ComponentModel.Int32Converter

---@class System.ComponentModel.Int64Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.Int64Converter = {}
---@type System.ComponentModel.Int64Converter
CS.System.ComponentModel.Int64Converter = System.ComponentModel.Int64Converter

---@class System.ComponentModel.InvalidAsynchronousStateException : System.ArgumentException
System.ComponentModel.InvalidAsynchronousStateException = {}
---@type System.ComponentModel.InvalidAsynchronousStateException
CS.System.ComponentModel.InvalidAsynchronousStateException = System.ComponentModel.InvalidAsynchronousStateException

---@class System.ComponentModel.InvalidEnumArgumentException : System.ArgumentException
System.ComponentModel.InvalidEnumArgumentException = {}
---@type System.ComponentModel.InvalidEnumArgumentException
CS.System.ComponentModel.InvalidEnumArgumentException = System.ComponentModel.InvalidEnumArgumentException

---@class System.ComponentModel.LicFileLicenseProvider : System.ComponentModel.LicenseProvider
System.ComponentModel.LicFileLicenseProvider = {}
---@type System.ComponentModel.LicFileLicenseProvider
CS.System.ComponentModel.LicFileLicenseProvider = System.ComponentModel.LicFileLicenseProvider

---@param context System.ComponentModel.LicenseContext
---@param type System.Type
---@param instance System.Object
---@param allowExceptions System.Boolean
---@return System.ComponentModel.License
function System.ComponentModel.LicFileLicenseProvider:GetLicense(context, type, instance, allowExceptions)end
---@class System.ComponentModel.License : System.Object
---@field public LicenseKey System.String @  getter
System.ComponentModel.License = {}
---@type System.ComponentModel.License
CS.System.ComponentModel.License = System.ComponentModel.License

---@return System.Void
function System.ComponentModel.License:Dispose()end
---@class System.ComponentModel.LicenseContext : System.Object
---@field public UsageMode System.ComponentModel.LicenseUsageMode @  getter
System.ComponentModel.LicenseContext = {}
---@type System.ComponentModel.LicenseContext
CS.System.ComponentModel.LicenseContext = System.ComponentModel.LicenseContext

---@param type System.Type
---@param resourceAssembly System.Reflection.Assembly
---@return System.String
function System.ComponentModel.LicenseContext:GetSavedLicenseKey(type, resourceAssembly)end
---@param type System.Type
---@return System.Object
function System.ComponentModel.LicenseContext:GetService(type)end
---@param type System.Type
---@param key System.String
---@return System.Void
function System.ComponentModel.LicenseContext:SetSavedLicenseKey(type, key)end
---@class System.ComponentModel.LicenseException : System.SystemException
---@field public LicensedType System.Type @  getter
System.ComponentModel.LicenseException = {}
---@type System.ComponentModel.LicenseException
CS.System.ComponentModel.LicenseException = System.ComponentModel.LicenseException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ComponentModel.LicenseException:GetObjectData(info, context)end
---@class System.ComponentModel.LicenseManager : System.Object
---@field public CurrentContext System.ComponentModel.LicenseContext @static setter getter
---@field public UsageMode System.ComponentModel.LicenseUsageMode @static  getter
System.ComponentModel.LicenseManager = {}
---@type System.ComponentModel.LicenseManager
CS.System.ComponentModel.LicenseManager = System.ComponentModel.LicenseManager

---@overload fun(type:System.Type, creationContext:System.ComponentModel.LicenseContext, args:System.Object[]):System.Object
---@param type System.Type
---@param creationContext System.ComponentModel.LicenseContext
---@return System.Object
function System.ComponentModel.LicenseManager.CreateWithContext(type, creationContext)end
---@param type System.Type
---@return System.Boolean
function System.ComponentModel.LicenseManager.IsLicensed(type)end
---@overload fun(type:System.Type, instance:System.Object, license:System.ComponentModel.License):System.Boolean
---@param type System.Type
---@return System.Boolean
function System.ComponentModel.LicenseManager.IsValid(type)end
---@param contextUser System.Object
---@return System.Void
function System.ComponentModel.LicenseManager.LockContext(contextUser)end
---@param contextUser System.Object
---@return System.Void
function System.ComponentModel.LicenseManager.UnlockContext(contextUser)end
---@overload fun(type:System.Type, instance:System.Object):System.ComponentModel.License
---@param type System.Type
---@return System.Void
function System.ComponentModel.LicenseManager.Validate(type)end
---@class System.ComponentModel.LicenseProvider : System.Object
System.ComponentModel.LicenseProvider = {}
---@type System.ComponentModel.LicenseProvider
CS.System.ComponentModel.LicenseProvider = System.ComponentModel.LicenseProvider

---@param context System.ComponentModel.LicenseContext
---@param type System.Type
---@param instance System.Object
---@param allowExceptions System.Boolean
---@return System.ComponentModel.License
function System.ComponentModel.LicenseProvider:GetLicense(context, type, instance, allowExceptions)end
---@class System.ComponentModel.LicenseProviderAttribute : System.Attribute
---@field public LicenseProvider System.Type @  getter
---@field public TypeId System.Object @  getter
---@field public Default System.ComponentModel.LicenseProviderAttribute
System.ComponentModel.LicenseProviderAttribute = {}
---@type System.ComponentModel.LicenseProviderAttribute
CS.System.ComponentModel.LicenseProviderAttribute = System.ComponentModel.LicenseProviderAttribute

---@param value System.Object
---@return System.Boolean
function System.ComponentModel.LicenseProviderAttribute:Equals(value)end
---@return System.Int32
function System.ComponentModel.LicenseProviderAttribute:GetHashCode()end
---@class System.ComponentModel.LicenseUsageMode : System.Enum
System.ComponentModel.LicenseUsageMode = {}
---@type System.ComponentModel.LicenseUsageMode
CS.System.ComponentModel.LicenseUsageMode = System.ComponentModel.LicenseUsageMode

---@return System.Int32 value:0
System.ComponentModel.LicenseUsageMode.Runtime = 0
---@return System.Int32 value:1
System.ComponentModel.LicenseUsageMode.Designtime = 1

---@class System.ComponentModel.ListBindableAttribute : System.Attribute
---@field public ListBindable System.Boolean @  getter
---@field public Yes System.ComponentModel.ListBindableAttribute
---@field public No System.ComponentModel.ListBindableAttribute
---@field public Default System.ComponentModel.ListBindableAttribute
System.ComponentModel.ListBindableAttribute = {}
---@type System.ComponentModel.ListBindableAttribute
CS.System.ComponentModel.ListBindableAttribute = System.ComponentModel.ListBindableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ListBindableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ListBindableAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.ListBindableAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ListChangedEventArgs : System.EventArgs
---@field public ListChangedType System.ComponentModel.ListChangedType @  getter
---@field public NewIndex System.Int32 @  getter
---@field public OldIndex System.Int32 @  getter
---@field public PropertyDescriptor System.ComponentModel.PropertyDescriptor @  getter
System.ComponentModel.ListChangedEventArgs = {}
---@type System.ComponentModel.ListChangedEventArgs
CS.System.ComponentModel.ListChangedEventArgs = System.ComponentModel.ListChangedEventArgs

---@class System.ComponentModel.ListChangedType : System.Enum
System.ComponentModel.ListChangedType = {}
---@type System.ComponentModel.ListChangedType
CS.System.ComponentModel.ListChangedType = System.ComponentModel.ListChangedType

---@return System.Int32 value:0
System.ComponentModel.ListChangedType.Reset = 0
---@return System.Int32 value:1
System.ComponentModel.ListChangedType.ItemAdded = 1
---@return System.Int32 value:2
System.ComponentModel.ListChangedType.ItemDeleted = 2
---@return System.Int32 value:3
System.ComponentModel.ListChangedType.ItemMoved = 3
---@return System.Int32 value:4
System.ComponentModel.ListChangedType.ItemChanged = 4
---@return System.Int32 value:5
System.ComponentModel.ListChangedType.PropertyDescriptorAdded = 5
---@return System.Int32 value:6
System.ComponentModel.ListChangedType.PropertyDescriptorDeleted = 6
---@return System.Int32 value:7
System.ComponentModel.ListChangedType.PropertyDescriptorChanged = 7

---@class System.ComponentModel.ListSortDescription : System.Object
---@field public PropertyDescriptor System.ComponentModel.PropertyDescriptor @ setter getter
---@field public SortDirection System.ComponentModel.ListSortDirection @ setter getter
System.ComponentModel.ListSortDescription = {}
---@type System.ComponentModel.ListSortDescription
CS.System.ComponentModel.ListSortDescription = System.ComponentModel.ListSortDescription

---@class System.ComponentModel.ListSortDescriptionCollection : System.Object
---@field public Item System.ComponentModel.ListSortDescription @ setter getter
---@field public Count System.Int32 @  getter
System.ComponentModel.ListSortDescriptionCollection = {}
---@type System.ComponentModel.ListSortDescriptionCollection
CS.System.ComponentModel.ListSortDescriptionCollection = System.ComponentModel.ListSortDescriptionCollection

---@param value System.Object
---@return System.Boolean
function System.ComponentModel.ListSortDescriptionCollection:Contains(value)end
---@param value System.Object
---@return System.Int32
function System.ComponentModel.ListSortDescriptionCollection:IndexOf(value)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.ComponentModel.ListSortDescriptionCollection:CopyTo(array, index)end
---@class System.ComponentModel.ListSortDirection : System.Enum
System.ComponentModel.ListSortDirection = {}
---@type System.ComponentModel.ListSortDirection
CS.System.ComponentModel.ListSortDirection = System.ComponentModel.ListSortDirection

---@return System.Int32 value:0
System.ComponentModel.ListSortDirection.Ascending = 0
---@return System.Int32 value:1
System.ComponentModel.ListSortDirection.Descending = 1

---@class System.ComponentModel.LocalizableAttribute : System.Attribute
---@field public IsLocalizable System.Boolean @  getter
---@field public Yes System.ComponentModel.LocalizableAttribute
---@field public No System.ComponentModel.LocalizableAttribute
---@field public Default System.ComponentModel.LocalizableAttribute
System.ComponentModel.LocalizableAttribute = {}
---@type System.ComponentModel.LocalizableAttribute
CS.System.ComponentModel.LocalizableAttribute = System.ComponentModel.LocalizableAttribute

---@return System.Boolean
function System.ComponentModel.LocalizableAttribute:IsDefaultAttribute()end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.LocalizableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.LocalizableAttribute:GetHashCode()end
---@class System.ComponentModel.LookupBindingPropertiesAttribute : System.Attribute
---@field public DataSource System.String @  getter
---@field public DisplayMember System.String @  getter
---@field public ValueMember System.String @  getter
---@field public LookupMember System.String @  getter
---@field public Default System.ComponentModel.LookupBindingPropertiesAttribute
System.ComponentModel.LookupBindingPropertiesAttribute = {}
---@type System.ComponentModel.LookupBindingPropertiesAttribute
CS.System.ComponentModel.LookupBindingPropertiesAttribute = System.ComponentModel.LookupBindingPropertiesAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.LookupBindingPropertiesAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.LookupBindingPropertiesAttribute:GetHashCode()end
---@class System.ComponentModel.MarshalByValueComponent : System.Object
---@field public Site System.ComponentModel.ISite @ setter getter
---@field public Container System.ComponentModel.IContainer @  getter
---@field public DesignMode System.Boolean @  getter
System.ComponentModel.MarshalByValueComponent = {}
---@type System.ComponentModel.MarshalByValueComponent
CS.System.ComponentModel.MarshalByValueComponent = System.ComponentModel.MarshalByValueComponent

---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.MarshalByValueComponent:add_Disposed(value)end
---@param value System.EventHandler
---@return System.Void
function System.ComponentModel.MarshalByValueComponent:remove_Disposed(value)end
---@return System.Void
function System.ComponentModel.MarshalByValueComponent:Dispose()end
---@param service System.Type
---@return System.Object
function System.ComponentModel.MarshalByValueComponent:GetService(service)end
---@return System.String
function System.ComponentModel.MarshalByValueComponent:ToString()end
---@class System.ComponentModel.MaskedTextProvider : System.Object
---@field public AllowPromptAsInput System.Boolean @  getter
---@field public AssignedEditPositionCount System.Int32 @  getter
---@field public AvailableEditPositionCount System.Int32 @  getter
---@field public Culture System.Globalization.CultureInfo @  getter
---@field public DefaultPasswordChar System.Char @static  getter
---@field public EditPositionCount System.Int32 @  getter
---@field public EditPositions System.Collections.IEnumerator @  getter
---@field public IncludeLiterals System.Boolean @ setter getter
---@field public IncludePrompt System.Boolean @ setter getter
---@field public AsciiOnly System.Boolean @  getter
---@field public IsPassword System.Boolean @ setter getter
---@field public InvalidIndex System.Int32 @static  getter
---@field public LastAssignedPosition System.Int32 @  getter
---@field public Length System.Int32 @  getter
---@field public Mask System.String @  getter
---@field public MaskCompleted System.Boolean @  getter
---@field public MaskFull System.Boolean @  getter
---@field public PasswordChar System.Char @ setter getter
---@field public PromptChar System.Char @ setter getter
---@field public ResetOnPrompt System.Boolean @ setter getter
---@field public ResetOnSpace System.Boolean @ setter getter
---@field public SkipLiterals System.Boolean @ setter getter
---@field public Item System.Char @  getter
System.ComponentModel.MaskedTextProvider = {}
---@type System.ComponentModel.MaskedTextProvider
CS.System.ComponentModel.MaskedTextProvider = System.ComponentModel.MaskedTextProvider

---@return System.Object
function System.ComponentModel.MaskedTextProvider:Clone()end
---@overload fun(input:System.Char, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@overload fun(input:System.String):System.Boolean
---@overload fun(input:System.String, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param input System.Char
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:Add(input)end
---@overload fun(resultHint:System.ComponentModel.MaskedTextResultHint):System.Void
---@return System.Void
function System.ComponentModel.MaskedTextProvider:Clear()end
---@param position System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindAssignedEditPositionFrom(position, direction)end
---@param startPosition System.Int32
---@param endPosition System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindAssignedEditPositionInRange(startPosition, endPosition, direction)end
---@param position System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindEditPositionFrom(position, direction)end
---@param startPosition System.Int32
---@param endPosition System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindEditPositionInRange(startPosition, endPosition, direction)end
---@param position System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindNonEditPositionFrom(position, direction)end
---@param startPosition System.Int32
---@param endPosition System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindNonEditPositionInRange(startPosition, endPosition, direction)end
---@param position System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindUnassignedEditPositionFrom(position, direction)end
---@param startPosition System.Int32
---@param endPosition System.Int32
---@param direction System.Boolean
---@return System.Int32
function System.ComponentModel.MaskedTextProvider:FindUnassignedEditPositionInRange(startPosition, endPosition, direction)end
---@param hint System.ComponentModel.MaskedTextResultHint
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider.GetOperationResultFromHint(hint)end
---@overload fun(input:System.Char, position:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@overload fun(input:System.String, position:System.Int32):System.Boolean
---@overload fun(input:System.String, position:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param input System.Char
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:InsertAt(input, position)end
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:IsAvailablePosition(position)end
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:IsEditPosition(position)end
---@param c System.Char
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider.IsValidInputChar(c)end
---@param c System.Char
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider.IsValidMaskChar(c)end
---@param c System.Char
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider.IsValidPasswordChar(c)end
---@overload fun(testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:Remove()end
---@overload fun(startPosition:System.Int32, endPosition:System.Int32):System.Boolean
---@overload fun(startPosition:System.Int32, endPosition:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:RemoveAt(position)end
---@overload fun(input:System.Char, position:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@overload fun(input:System.Char, startPosition:System.Int32, endPosition:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@overload fun(input:System.String, position:System.Int32):System.Boolean
---@overload fun(input:System.String, position:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@overload fun(input:System.String, startPosition:System.Int32, endPosition:System.Int32, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param input System.Char
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:Replace(input, position)end
---@overload fun(input:System.String, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param input System.String
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:Set(input)end
---@return System.String
function System.ComponentModel.MaskedTextProvider:ToDisplayString()end
---@overload fun(ignorePasswordChar:System.Boolean):System.String
---@overload fun(startPosition:System.Int32, length:System.Int32):System.String
---@overload fun(includePrompt:System.Boolean, includeLiterals:System.Boolean):System.String
---@overload fun(ignorePasswordChar:System.Boolean, startPosition:System.Int32, length:System.Int32):System.String
---@overload fun(includePrompt:System.Boolean, includeLiterals:System.Boolean, startPosition:System.Int32, length:System.Int32):System.String
---@overload fun(ignorePasswordChar:System.Boolean, includePrompt:System.Boolean, includeLiterals:System.Boolean, startPosition:System.Int32, length:System.Int32):System.String
---@return System.String
function System.ComponentModel.MaskedTextProvider:ToString()end
---@param input System.Char
---@param position System.Int32
---@param hint System.ComponentModel.MaskedTextResultHint
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:VerifyChar(input, position, hint)end
---@param input System.Char
---@param position System.Int32
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:VerifyEscapeChar(input, position)end
---@overload fun(input:System.String, testPosition:System.Int32, resultHint:System.ComponentModel.MaskedTextResultHint):System.Boolean
---@param input System.String
---@return System.Boolean
function System.ComponentModel.MaskedTextProvider:VerifyString(input)end
---@class System.ComponentModel.MaskedTextResultHint : System.Enum
System.ComponentModel.MaskedTextResultHint = {}
---@type System.ComponentModel.MaskedTextResultHint
CS.System.ComponentModel.MaskedTextResultHint = System.ComponentModel.MaskedTextResultHint

---@return System.Int32 value:0
System.ComponentModel.MaskedTextResultHint.Unknown = 0
---@return System.Int32 value:1
System.ComponentModel.MaskedTextResultHint.CharacterEscaped = 1
---@return System.Int32 value:2
System.ComponentModel.MaskedTextResultHint.NoEffect = 2
---@return System.Int32 value:3
System.ComponentModel.MaskedTextResultHint.SideEffect = 3
---@return System.Int32 value:4
System.ComponentModel.MaskedTextResultHint.Success = 4

---@class System.ComponentModel.MemberDescriptor : System.Object
---@field public Attributes System.ComponentModel.AttributeCollection @  getter
---@field public Category System.String @  getter
---@field public Description System.String @  getter
---@field public IsBrowsable System.Boolean @  getter
---@field public Name System.String @  getter
---@field public DesignTimeOnly System.Boolean @  getter
---@field public DisplayName System.String @  getter
System.ComponentModel.MemberDescriptor = {}
---@type System.ComponentModel.MemberDescriptor
CS.System.ComponentModel.MemberDescriptor = System.ComponentModel.MemberDescriptor

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.MemberDescriptor:Equals(obj)end
---@return System.Int32
function System.ComponentModel.MemberDescriptor:GetHashCode()end
---@class System.ComponentModel.MergablePropertyAttribute : System.Attribute
---@field public AllowMerge System.Boolean @  getter
---@field public Yes System.ComponentModel.MergablePropertyAttribute
---@field public No System.ComponentModel.MergablePropertyAttribute
---@field public Default System.ComponentModel.MergablePropertyAttribute
System.ComponentModel.MergablePropertyAttribute = {}
---@type System.ComponentModel.MergablePropertyAttribute
CS.System.ComponentModel.MergablePropertyAttribute = System.ComponentModel.MergablePropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.MergablePropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.MergablePropertyAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.MergablePropertyAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.MultilineStringConverter : System.ComponentModel.TypeConverter
System.ComponentModel.MultilineStringConverter = {}
---@type System.ComponentModel.MultilineStringConverter
CS.System.ComponentModel.MultilineStringConverter = System.ComponentModel.MultilineStringConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.MultilineStringConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.MultilineStringConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.MultilineStringConverter:GetPropertiesSupported(context)end
---@class System.ComponentModel.NestedContainer : System.ComponentModel.Container
---@field public Owner System.ComponentModel.IComponent @  getter
System.ComponentModel.NestedContainer = {}
---@type System.ComponentModel.NestedContainer
CS.System.ComponentModel.NestedContainer = System.ComponentModel.NestedContainer

---@class System.ComponentModel.NullableConverter : System.ComponentModel.TypeConverter
---@field public NullableType System.Type @  getter
---@field public UnderlyingType System.Type @  getter
---@field public UnderlyingTypeConverter System.ComponentModel.TypeConverter @  getter
System.ComponentModel.NullableConverter = {}
---@type System.ComponentModel.NullableConverter
CS.System.ComponentModel.NullableConverter = System.ComponentModel.NullableConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.NullableConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.NullableConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.NullableConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.NullableConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.ComponentModel.NullableConverter:CreateInstance(context, propertyValues)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.NullableConverter:GetCreateInstanceSupported(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.NullableConverter:GetProperties(context, value, attributes)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.NullableConverter:GetPropertiesSupported(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.NullableConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.NullableConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.NullableConverter:GetStandardValuesSupported(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@return System.Boolean
function System.ComponentModel.NullableConverter:IsValid(context, value)end
---@class System.ComponentModel.PasswordPropertyTextAttribute : System.Attribute
---@field public Password System.Boolean @  getter
---@field public Yes System.ComponentModel.PasswordPropertyTextAttribute
---@field public No System.ComponentModel.PasswordPropertyTextAttribute
---@field public Default System.ComponentModel.PasswordPropertyTextAttribute
System.ComponentModel.PasswordPropertyTextAttribute = {}
---@type System.ComponentModel.PasswordPropertyTextAttribute
CS.System.ComponentModel.PasswordPropertyTextAttribute = System.ComponentModel.PasswordPropertyTextAttribute

---@param o System.Object
---@return System.Boolean
function System.ComponentModel.PasswordPropertyTextAttribute:Equals(o)end
---@return System.Int32
function System.ComponentModel.PasswordPropertyTextAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.PasswordPropertyTextAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ProgressChangedEventArgs : System.EventArgs
---@field public ProgressPercentage System.Int32 @  getter
---@field public UserState System.Object @  getter
System.ComponentModel.ProgressChangedEventArgs = {}
---@type System.ComponentModel.ProgressChangedEventArgs
CS.System.ComponentModel.ProgressChangedEventArgs = System.ComponentModel.ProgressChangedEventArgs

---@class System.ComponentModel.PropertyChangedEventArgs : System.EventArgs
---@field public PropertyName System.String @  getter
System.ComponentModel.PropertyChangedEventArgs = {}
---@type System.ComponentModel.PropertyChangedEventArgs
CS.System.ComponentModel.PropertyChangedEventArgs = System.ComponentModel.PropertyChangedEventArgs

---@class System.ComponentModel.PropertyChangingEventArgs : System.EventArgs
---@field public PropertyName System.String @  getter
System.ComponentModel.PropertyChangingEventArgs = {}
---@type System.ComponentModel.PropertyChangingEventArgs
CS.System.ComponentModel.PropertyChangingEventArgs = System.ComponentModel.PropertyChangingEventArgs

---@class System.ComponentModel.PropertyDescriptor : System.ComponentModel.MemberDescriptor
---@field public ComponentType System.Type @  getter
---@field public Converter System.ComponentModel.TypeConverter @  getter
---@field public IsLocalizable System.Boolean @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public SerializationVisibility System.ComponentModel.DesignerSerializationVisibility @  getter
---@field public PropertyType System.Type @  getter
---@field public SupportsChangeEvents System.Boolean @  getter
System.ComponentModel.PropertyDescriptor = {}
---@type System.ComponentModel.PropertyDescriptor
CS.System.ComponentModel.PropertyDescriptor = System.ComponentModel.PropertyDescriptor

---@param component System.Object
---@param handler System.EventHandler
---@return System.Void
function System.ComponentModel.PropertyDescriptor:AddValueChanged(component, handler)end
---@param component System.Object
---@return System.Boolean
function System.ComponentModel.PropertyDescriptor:CanResetValue(component)end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.PropertyDescriptor:Equals(obj)end
---@overload fun(filter:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(instance:System.Object):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(instance:System.Object, filter:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.PropertyDescriptor:GetChildProperties()end
---@param editorBaseType System.Type
---@return System.Object
function System.ComponentModel.PropertyDescriptor:GetEditor(editorBaseType)end
---@return System.Int32
function System.ComponentModel.PropertyDescriptor:GetHashCode()end
---@param component System.Object
---@return System.Object
function System.ComponentModel.PropertyDescriptor:GetValue(component)end
---@param component System.Object
---@param handler System.EventHandler
---@return System.Void
function System.ComponentModel.PropertyDescriptor:RemoveValueChanged(component, handler)end
---@param component System.Object
---@return System.Void
function System.ComponentModel.PropertyDescriptor:ResetValue(component)end
---@param component System.Object
---@param value System.Object
---@return System.Void
function System.ComponentModel.PropertyDescriptor:SetValue(component, value)end
---@param component System.Object
---@return System.Boolean
function System.ComponentModel.PropertyDescriptor:ShouldSerializeValue(component)end
---@class System.ComponentModel.PropertyDescriptorCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.ComponentModel.PropertyDescriptor @  getter
---@field public Item System.ComponentModel.PropertyDescriptor @  getter
---@field public Empty System.ComponentModel.PropertyDescriptorCollection
System.ComponentModel.PropertyDescriptorCollection = {}
---@type System.ComponentModel.PropertyDescriptorCollection
CS.System.ComponentModel.PropertyDescriptorCollection = System.ComponentModel.PropertyDescriptorCollection

---@param value System.ComponentModel.PropertyDescriptor
---@return System.Int32
function System.ComponentModel.PropertyDescriptorCollection:Add(value)end
---@return System.Void
function System.ComponentModel.PropertyDescriptorCollection:Clear()end
---@param value System.ComponentModel.PropertyDescriptor
---@return System.Boolean
function System.ComponentModel.PropertyDescriptorCollection:Contains(value)end
---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.ComponentModel.PropertyDescriptorCollection:CopyTo(array, index)end
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.ComponentModel.PropertyDescriptor
function System.ComponentModel.PropertyDescriptorCollection:Find(name, ignoreCase)end
---@param value System.ComponentModel.PropertyDescriptor
---@return System.Int32
function System.ComponentModel.PropertyDescriptorCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.ComponentModel.PropertyDescriptor
---@return System.Void
function System.ComponentModel.PropertyDescriptorCollection:Insert(index, value)end
---@param value System.ComponentModel.PropertyDescriptor
---@return System.Void
function System.ComponentModel.PropertyDescriptorCollection:Remove(value)end
---@param index System.Int32
---@return System.Void
function System.ComponentModel.PropertyDescriptorCollection:RemoveAt(index)end
---@overload fun(names:System.String[]):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(comparer:System.Collections.IComparer):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(names:System.String[], comparer:System.Collections.IComparer):System.ComponentModel.PropertyDescriptorCollection
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.PropertyDescriptorCollection:Sort()end
---@return System.Collections.IEnumerator
function System.ComponentModel.PropertyDescriptorCollection:GetEnumerator()end
---@class System.ComponentModel.ProvidePropertyAttribute : System.Attribute
---@field public PropertyName System.String @  getter
---@field public ReceiverTypeName System.String @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.ProvidePropertyAttribute = {}
---@type System.ComponentModel.ProvidePropertyAttribute
CS.System.ComponentModel.ProvidePropertyAttribute = System.ComponentModel.ProvidePropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ProvidePropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ProvidePropertyAttribute:GetHashCode()end
---@class System.ComponentModel.ReadOnlyAttribute : System.Attribute
---@field public IsReadOnly System.Boolean @  getter
---@field public Yes System.ComponentModel.ReadOnlyAttribute
---@field public No System.ComponentModel.ReadOnlyAttribute
---@field public Default System.ComponentModel.ReadOnlyAttribute
System.ComponentModel.ReadOnlyAttribute = {}
---@type System.ComponentModel.ReadOnlyAttribute
CS.System.ComponentModel.ReadOnlyAttribute = System.ComponentModel.ReadOnlyAttribute

---@param value System.Object
---@return System.Boolean
function System.ComponentModel.ReadOnlyAttribute:Equals(value)end
---@return System.Int32
function System.ComponentModel.ReadOnlyAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.ReadOnlyAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.RecommendedAsConfigurableAttribute : System.Attribute
---@field public RecommendedAsConfigurable System.Boolean @  getter
---@field public No System.ComponentModel.RecommendedAsConfigurableAttribute
---@field public Yes System.ComponentModel.RecommendedAsConfigurableAttribute
---@field public Default System.ComponentModel.RecommendedAsConfigurableAttribute
System.ComponentModel.RecommendedAsConfigurableAttribute = {}
---@type System.ComponentModel.RecommendedAsConfigurableAttribute
CS.System.ComponentModel.RecommendedAsConfigurableAttribute = System.ComponentModel.RecommendedAsConfigurableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.RecommendedAsConfigurableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.RecommendedAsConfigurableAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.RecommendedAsConfigurableAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ReferenceConverter : System.ComponentModel.TypeConverter
System.ComponentModel.ReferenceConverter = {}
---@type System.ComponentModel.ReferenceConverter
CS.System.ComponentModel.ReferenceConverter = System.ComponentModel.ReferenceConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.ReferenceConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.ReferenceConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.ReferenceConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.ReferenceConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.ReferenceConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.ReferenceConverter:GetStandardValuesSupported(context)end
---@class System.ComponentModel.RefreshEventArgs : System.EventArgs
---@field public ComponentChanged System.Object @  getter
---@field public TypeChanged System.Type @  getter
System.ComponentModel.RefreshEventArgs = {}
---@type System.ComponentModel.RefreshEventArgs
CS.System.ComponentModel.RefreshEventArgs = System.ComponentModel.RefreshEventArgs

---@class System.ComponentModel.RunInstallerAttribute : System.Attribute
---@field public RunInstaller System.Boolean @  getter
---@field public Yes System.ComponentModel.RunInstallerAttribute
---@field public No System.ComponentModel.RunInstallerAttribute
---@field public Default System.ComponentModel.RunInstallerAttribute
System.ComponentModel.RunInstallerAttribute = {}
---@type System.ComponentModel.RunInstallerAttribute
CS.System.ComponentModel.RunInstallerAttribute = System.ComponentModel.RunInstallerAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.RunInstallerAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.RunInstallerAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.RunInstallerAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.RunWorkerCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field public Result System.Object @  getter
---@field public UserState System.Object @  getter
System.ComponentModel.RunWorkerCompletedEventArgs = {}
---@type System.ComponentModel.RunWorkerCompletedEventArgs
CS.System.ComponentModel.RunWorkerCompletedEventArgs = System.ComponentModel.RunWorkerCompletedEventArgs

---@class System.ComponentModel.SByteConverter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.SByteConverter = {}
---@type System.ComponentModel.SByteConverter
CS.System.ComponentModel.SByteConverter = System.ComponentModel.SByteConverter

---@class System.ComponentModel.SettingsBindableAttribute : System.Attribute
---@field public Bindable System.Boolean @  getter
---@field public Yes System.ComponentModel.SettingsBindableAttribute
---@field public No System.ComponentModel.SettingsBindableAttribute
System.ComponentModel.SettingsBindableAttribute = {}
---@type System.ComponentModel.SettingsBindableAttribute
CS.System.ComponentModel.SettingsBindableAttribute = System.ComponentModel.SettingsBindableAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.SettingsBindableAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.SettingsBindableAttribute:GetHashCode()end
---@class System.ComponentModel.SingleConverter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.SingleConverter = {}
---@type System.ComponentModel.SingleConverter
CS.System.ComponentModel.SingleConverter = System.ComponentModel.SingleConverter

---@class System.ComponentModel.StringConverter : System.ComponentModel.TypeConverter
System.ComponentModel.StringConverter = {}
---@type System.ComponentModel.StringConverter
CS.System.ComponentModel.StringConverter = System.ComponentModel.StringConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.StringConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.StringConverter:ConvertFrom(context, culture, value)end
---@class System.ComponentModel.SyntaxCheck : System.Object
System.ComponentModel.SyntaxCheck = {}
---@type System.ComponentModel.SyntaxCheck
CS.System.ComponentModel.SyntaxCheck = System.ComponentModel.SyntaxCheck

---@param value System.String
---@return System.Boolean
function System.ComponentModel.SyntaxCheck.CheckMachineName(value)end
---@param value System.String
---@return System.Boolean
function System.ComponentModel.SyntaxCheck.CheckPath(value)end
---@param value System.String
---@return System.Boolean
function System.ComponentModel.SyntaxCheck.CheckRootedPath(value)end
---@class System.ComponentModel.TimeSpanConverter : System.ComponentModel.TypeConverter
System.ComponentModel.TimeSpanConverter = {}
---@type System.ComponentModel.TimeSpanConverter
CS.System.ComponentModel.TimeSpanConverter = System.ComponentModel.TimeSpanConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.TimeSpanConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.TimeSpanConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.TimeSpanConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.TimeSpanConverter:ConvertTo(context, culture, value, destinationType)end
---@class System.ComponentModel.ToolboxItemFilterAttribute : System.Attribute
---@field public FilterString System.String @  getter
---@field public FilterType System.ComponentModel.ToolboxItemFilterType @  getter
---@field public TypeId System.Object @  getter
System.ComponentModel.ToolboxItemFilterAttribute = {}
---@type System.ComponentModel.ToolboxItemFilterAttribute
CS.System.ComponentModel.ToolboxItemFilterAttribute = System.ComponentModel.ToolboxItemFilterAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ToolboxItemFilterAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ToolboxItemFilterAttribute:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ToolboxItemFilterAttribute:Match(obj)end
---@return System.String
function System.ComponentModel.ToolboxItemFilterAttribute:ToString()end
---@class System.ComponentModel.ToolboxItemFilterType : System.Enum
System.ComponentModel.ToolboxItemFilterType = {}
---@type System.ComponentModel.ToolboxItemFilterType
CS.System.ComponentModel.ToolboxItemFilterType = System.ComponentModel.ToolboxItemFilterType

---@return System.Int32 value:0
System.ComponentModel.ToolboxItemFilterType.Allow = 0
---@return System.Int32 value:1
System.ComponentModel.ToolboxItemFilterType.Custom = 1
---@return System.Int32 value:2
System.ComponentModel.ToolboxItemFilterType.Prevent = 2
---@return System.Int32 value:3
System.ComponentModel.ToolboxItemFilterType.Require = 3

---@class System.ComponentModel.TypeConverter : System.Object
System.ComponentModel.TypeConverter = {}
---@type System.ComponentModel.TypeConverter
CS.System.ComponentModel.TypeConverter = System.ComponentModel.TypeConverter

---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, sourceType:System.Type):System.Boolean
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.TypeConverter:CanConvertFrom(sourceType)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, destinationType:System.Type):System.Boolean
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.TypeConverter:CanConvertTo(destinationType)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, culture:System.Globalization.CultureInfo, value:System.Object):System.Object
---@param value System.Object
---@return System.Object
function System.ComponentModel.TypeConverter:ConvertFrom(value)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, text:System.String):System.Object
---@param text System.String
---@return System.Object
function System.ComponentModel.TypeConverter:ConvertFromInvariantString(text)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, text:System.String):System.Object
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, culture:System.Globalization.CultureInfo, text:System.String):System.Object
---@param text System.String
---@return System.Object
function System.ComponentModel.TypeConverter:ConvertFromString(text)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, culture:System.Globalization.CultureInfo, value:System.Object, destinationType:System.Type):System.Object
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.TypeConverter:ConvertTo(value, destinationType)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, value:System.Object):System.String
---@param value System.Object
---@return System.String
function System.ComponentModel.TypeConverter:ConvertToInvariantString(value)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, value:System.Object):System.String
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, culture:System.Globalization.CultureInfo, value:System.Object):System.String
---@param value System.Object
---@return System.String
function System.ComponentModel.TypeConverter:ConvertToString(value)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, propertyValues:System.Collections.IDictionary):System.Object
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.ComponentModel.TypeConverter:CreateInstance(propertyValues)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext):System.Boolean
---@return System.Boolean
function System.ComponentModel.TypeConverter:GetCreateInstanceSupported()end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, value:System.Object):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, value:System.Object, attributes:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@param value System.Object
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.TypeConverter:GetProperties(value)end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext):System.Boolean
---@return System.Boolean
function System.ComponentModel.TypeConverter:GetPropertiesSupported()end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext):System.ComponentModel.TypeConverter.StandardValuesCollection
---@return System.Collections.ICollection
function System.ComponentModel.TypeConverter:GetStandardValues()end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext):System.Boolean
---@return System.Boolean
function System.ComponentModel.TypeConverter:GetStandardValuesExclusive()end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext):System.Boolean
---@return System.Boolean
function System.ComponentModel.TypeConverter:GetStandardValuesSupported()end
---@overload fun(context:System.ComponentModel.ITypeDescriptorContext, value:System.Object):System.Boolean
---@param value System.Object
---@return System.Boolean
function System.ComponentModel.TypeConverter:IsValid(value)end
---@class System.ComponentModel.TypeConverter.StandardValuesCollection : System.Object
---@field public Count System.Int32 @  getter
---@field public Item System.Object @  getter
System.ComponentModel.TypeConverter.StandardValuesCollection = {}
---@type System.ComponentModel.TypeConverter.StandardValuesCollection
CS.System.ComponentModel.TypeConverter.StandardValuesCollection = System.ComponentModel.TypeConverter.StandardValuesCollection

---@param array System.Array
---@param index System.Int32
---@return System.Void
function System.ComponentModel.TypeConverter.StandardValuesCollection:CopyTo(array, index)end
---@return System.Collections.IEnumerator
function System.ComponentModel.TypeConverter.StandardValuesCollection:GetEnumerator()end
---@class System.ComponentModel.TypeConverterAttribute : System.Attribute
---@field public ConverterTypeName System.String @  getter
---@field public Default System.ComponentModel.TypeConverterAttribute
System.ComponentModel.TypeConverterAttribute = {}
---@type System.ComponentModel.TypeConverterAttribute
CS.System.ComponentModel.TypeConverterAttribute = System.ComponentModel.TypeConverterAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.TypeConverterAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.TypeConverterAttribute:GetHashCode()end
---@class System.ComponentModel.TypeDescriptionProvider : System.Object
System.ComponentModel.TypeDescriptionProvider = {}
---@type System.ComponentModel.TypeDescriptionProvider
CS.System.ComponentModel.TypeDescriptionProvider = System.ComponentModel.TypeDescriptionProvider

---@param provider System.IServiceProvider
---@param objectType System.Type
---@param argTypes System.Type[]
---@param args System.Object[]
---@return System.Object
function System.ComponentModel.TypeDescriptionProvider:CreateInstance(provider, objectType, argTypes, args)end
---@param instance System.Object
---@return System.Collections.IDictionary
function System.ComponentModel.TypeDescriptionProvider:GetCache(instance)end
---@param instance System.Object
---@return System.ComponentModel.ICustomTypeDescriptor
function System.ComponentModel.TypeDescriptionProvider:GetExtendedTypeDescriptor(instance)end
---@param component System.Object
---@return System.String
function System.ComponentModel.TypeDescriptionProvider:GetFullComponentName(component)end
---@overload fun(instance:System.Object):System.Type
---@overload fun(objectType:System.Type, instance:System.Object):System.Type
---@param objectType System.Type
---@return System.Type
function System.ComponentModel.TypeDescriptionProvider:GetReflectionType(objectType)end
---@param reflectionType System.Type
---@return System.Type
function System.ComponentModel.TypeDescriptionProvider:GetRuntimeType(reflectionType)end
---@overload fun(instance:System.Object):System.ComponentModel.ICustomTypeDescriptor
---@overload fun(objectType:System.Type, instance:System.Object):System.ComponentModel.ICustomTypeDescriptor
---@param objectType System.Type
---@return System.ComponentModel.ICustomTypeDescriptor
function System.ComponentModel.TypeDescriptionProvider:GetTypeDescriptor(objectType)end
---@param type System.Type
---@return System.Boolean
function System.ComponentModel.TypeDescriptionProvider:IsSupportedType(type)end
---@class System.ComponentModel.TypeDescriptionProviderAttribute : System.Attribute
---@field public TypeName System.String @  getter
System.ComponentModel.TypeDescriptionProviderAttribute = {}
---@type System.ComponentModel.TypeDescriptionProviderAttribute
CS.System.ComponentModel.TypeDescriptionProviderAttribute = System.ComponentModel.TypeDescriptionProviderAttribute

---@class System.ComponentModel.TypeDescriptor : System.Object
---@field public ComNativeDescriptorHandler System.ComponentModel.IComNativeDescriptorHandler @static setter getter
---@field public ComObjectType System.Type @static  getter
---@field public InterfaceType System.Type @static  getter
System.ComponentModel.TypeDescriptor = {}
---@type System.ComponentModel.TypeDescriptor
CS.System.ComponentModel.TypeDescriptor = System.ComponentModel.TypeDescriptor

---@param value System.ComponentModel.RefreshEventHandler
---@return System.Void
function System.ComponentModel.TypeDescriptor.add_Refreshed(value)end
---@param value System.ComponentModel.RefreshEventHandler
---@return System.Void
function System.ComponentModel.TypeDescriptor.remove_Refreshed(value)end
---@overload fun(instance:System.Object, attributes:System.Attribute[]):System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@param attributes System.Attribute[]
---@return System.ComponentModel.TypeDescriptionProvider
function System.ComponentModel.TypeDescriptor.AddAttributes(type, attributes)end
---@param editorBaseType System.Type
---@param table System.Collections.Hashtable
---@return System.Void
function System.ComponentModel.TypeDescriptor.AddEditorTable(editorBaseType, table)end
---@overload fun(provider:System.ComponentModel.TypeDescriptionProvider, instance:System.Object):System.Void
---@param provider System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@return System.Void
function System.ComponentModel.TypeDescriptor.AddProvider(provider, type)end
---@overload fun(provider:System.ComponentModel.TypeDescriptionProvider, instance:System.Object):System.Void
---@param provider System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@return System.Void
function System.ComponentModel.TypeDescriptor.AddProviderTransparent(provider, type)end
---@param primary System.Object
---@param secondary System.Object
---@return System.Void
function System.ComponentModel.TypeDescriptor.CreateAssociation(primary, secondary)end
---@param component System.ComponentModel.IComponent
---@param designerBaseType System.Type
---@return System.ComponentModel.Design.IDesigner
function System.ComponentModel.TypeDescriptor.CreateDesigner(component, designerBaseType)end
---@overload fun(componentType:System.Type, name:System.String, type:System.Type, attributes:System.Attribute[]):System.ComponentModel.EventDescriptor
---@param componentType System.Type
---@param oldEventDescriptor System.ComponentModel.EventDescriptor
---@param attributes System.Attribute[]
---@return System.ComponentModel.EventDescriptor
function System.ComponentModel.TypeDescriptor.CreateEvent(componentType, oldEventDescriptor, attributes)end
---@param provider System.IServiceProvider
---@param objectType System.Type
---@param argTypes System.Type[]
---@param args System.Object[]
---@return System.Object
function System.ComponentModel.TypeDescriptor.CreateInstance(provider, objectType, argTypes, args)end
---@overload fun(componentType:System.Type, name:System.String, type:System.Type, attributes:System.Attribute[]):System.ComponentModel.PropertyDescriptor
---@param componentType System.Type
---@param oldPropertyDescriptor System.ComponentModel.PropertyDescriptor
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptor
function System.ComponentModel.TypeDescriptor.CreateProperty(componentType, oldPropertyDescriptor, attributes)end
---@param type System.Type
---@param primary System.Object
---@return System.Object
function System.ComponentModel.TypeDescriptor.GetAssociation(type, primary)end
---@overload fun(component:System.Object):System.ComponentModel.AttributeCollection
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.AttributeCollection
---@param componentType System.Type
---@return System.ComponentModel.AttributeCollection
function System.ComponentModel.TypeDescriptor.GetAttributes(componentType)end
---@overload fun(componentType:System.Type):System.String
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.String
---@param component System.Object
---@return System.String
function System.ComponentModel.TypeDescriptor.GetClassName(component)end
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.String
---@param component System.Object
---@return System.String
function System.ComponentModel.TypeDescriptor.GetComponentName(component)end
---@overload fun(type:System.Type):System.ComponentModel.TypeConverter
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.TypeConverter
---@param component System.Object
---@return System.ComponentModel.TypeConverter
function System.ComponentModel.TypeDescriptor.GetConverter(component)end
---@overload fun(component:System.Object):System.ComponentModel.EventDescriptor
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.EventDescriptor
---@param componentType System.Type
---@return System.ComponentModel.EventDescriptor
function System.ComponentModel.TypeDescriptor.GetDefaultEvent(componentType)end
---@overload fun(component:System.Object):System.ComponentModel.PropertyDescriptor
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.PropertyDescriptor
---@param componentType System.Type
---@return System.ComponentModel.PropertyDescriptor
function System.ComponentModel.TypeDescriptor.GetDefaultProperty(componentType)end
---@overload fun(type:System.Type, editorBaseType:System.Type):System.Object
---@overload fun(component:System.Object, editorBaseType:System.Type, noCustomTypeDesc:System.Boolean):System.Object
---@param component System.Object
---@param editorBaseType System.Type
---@return System.Object
function System.ComponentModel.TypeDescriptor.GetEditor(component, editorBaseType)end
---@overload fun(component:System.Object):System.ComponentModel.EventDescriptorCollection
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.EventDescriptorCollection
---@overload fun(componentType:System.Type, attributes:System.Attribute[]):System.ComponentModel.EventDescriptorCollection
---@overload fun(component:System.Object, attributes:System.Attribute[]):System.ComponentModel.EventDescriptorCollection
---@overload fun(component:System.Object, attributes:System.Attribute[], noCustomTypeDesc:System.Boolean):System.ComponentModel.EventDescriptorCollection
---@param componentType System.Type
---@return System.ComponentModel.EventDescriptorCollection
function System.ComponentModel.TypeDescriptor.GetEvents(componentType)end
---@param component System.Object
---@return System.String
function System.ComponentModel.TypeDescriptor.GetFullComponentName(component)end
---@overload fun(component:System.Object):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(component:System.Object, noCustomTypeDesc:System.Boolean):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(componentType:System.Type, attributes:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(component:System.Object, attributes:System.Attribute[]):System.ComponentModel.PropertyDescriptorCollection
---@overload fun(component:System.Object, attributes:System.Attribute[], noCustomTypeDesc:System.Boolean):System.ComponentModel.PropertyDescriptorCollection
---@param componentType System.Type
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.TypeDescriptor.GetProperties(componentType)end
---@overload fun(instance:System.Object):System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@return System.ComponentModel.TypeDescriptionProvider
function System.ComponentModel.TypeDescriptor.GetProvider(type)end
---@overload fun(instance:System.Object):System.Type
---@param type System.Type
---@return System.Type
function System.ComponentModel.TypeDescriptor.GetReflectionType(type)end
---@overload fun(type:System.Type):System.Void
---@overload fun(module:System.Reflection.Module):System.Void
---@overload fun(assembly:System.Reflection.Assembly):System.Void
---@param component System.Object
---@return System.Void
function System.ComponentModel.TypeDescriptor.Refresh(component)end
---@param primary System.Object
---@param secondary System.Object
---@return System.Void
function System.ComponentModel.TypeDescriptor.RemoveAssociation(primary, secondary)end
---@param primary System.Object
---@return System.Void
function System.ComponentModel.TypeDescriptor.RemoveAssociations(primary)end
---@overload fun(provider:System.ComponentModel.TypeDescriptionProvider, instance:System.Object):System.Void
---@param provider System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@return System.Void
function System.ComponentModel.TypeDescriptor.RemoveProvider(provider, type)end
---@overload fun(provider:System.ComponentModel.TypeDescriptionProvider, instance:System.Object):System.Void
---@param provider System.ComponentModel.TypeDescriptionProvider
---@param type System.Type
---@return System.Void
function System.ComponentModel.TypeDescriptor.RemoveProviderTransparent(provider, type)end
---@param infos System.Collections.IList
---@return System.Void
function System.ComponentModel.TypeDescriptor.SortDescriptorArray(infos)end
---@class System.ComponentModel.TypeListConverter : System.ComponentModel.TypeConverter
System.ComponentModel.TypeListConverter = {}
---@type System.ComponentModel.TypeListConverter
CS.System.ComponentModel.TypeListConverter = System.ComponentModel.TypeListConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.TypeListConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return System.Boolean
function System.ComponentModel.TypeListConverter:CanConvertTo(context, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.TypeListConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.TypeListConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.ComponentModel.TypeListConverter:GetStandardValues(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.TypeListConverter:GetStandardValuesExclusive(context)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Boolean
function System.ComponentModel.TypeListConverter:GetStandardValuesSupported(context)end
---@class System.ComponentModel.UInt16Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.UInt16Converter = {}
---@type System.ComponentModel.UInt16Converter
CS.System.ComponentModel.UInt16Converter = System.ComponentModel.UInt16Converter

---@class System.ComponentModel.UInt32Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.UInt32Converter = {}
---@type System.ComponentModel.UInt32Converter
CS.System.ComponentModel.UInt32Converter = System.ComponentModel.UInt32Converter

---@class System.ComponentModel.UInt64Converter : System.ComponentModel.BaseNumberConverter
System.ComponentModel.UInt64Converter = {}
---@type System.ComponentModel.UInt64Converter
CS.System.ComponentModel.UInt64Converter = System.ComponentModel.UInt64Converter

---@class System.ComponentModel.WarningException : System.SystemException
---@field public HelpUrl System.String @  getter
---@field public HelpTopic System.String @  getter
System.ComponentModel.WarningException = {}
---@type System.ComponentModel.WarningException
CS.System.ComponentModel.WarningException = System.ComponentModel.WarningException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ComponentModel.WarningException:GetObjectData(info, context)end
---@class System.ComponentModel.Win32Exception : System.Runtime.InteropServices.ExternalException
---@field public NativeErrorCode System.Int32 @  getter
System.ComponentModel.Win32Exception = {}
---@type System.ComponentModel.Win32Exception
CS.System.ComponentModel.Win32Exception = System.ComponentModel.Win32Exception

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.ComponentModel.Win32Exception:GetObjectData(info, context)end
---@class System.ComponentModel.BaseNumberConverter : System.ComponentModel.TypeConverter
System.ComponentModel.BaseNumberConverter = {}
---@type System.ComponentModel.BaseNumberConverter
CS.System.ComponentModel.BaseNumberConverter = System.ComponentModel.BaseNumberConverter

---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return System.Boolean
function System.ComponentModel.BaseNumberConverter:CanConvertFrom(context, sourceType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.ComponentModel.BaseNumberConverter:ConvertFrom(context, culture, value)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.ComponentModel.BaseNumberConverter:ConvertTo(context, culture, value, destinationType)end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param t System.Type
---@return System.Boolean
function System.ComponentModel.BaseNumberConverter:CanConvertTo(context, t)end
---@class System.ComponentModel.InheritanceAttribute : System.Attribute
---@field public InheritanceLevel System.ComponentModel.InheritanceLevel @  getter
---@field public Inherited System.ComponentModel.InheritanceAttribute
---@field public InheritedReadOnly System.ComponentModel.InheritanceAttribute
---@field public NotInherited System.ComponentModel.InheritanceAttribute
---@field public Default System.ComponentModel.InheritanceAttribute
System.ComponentModel.InheritanceAttribute = {}
---@type System.ComponentModel.InheritanceAttribute
CS.System.ComponentModel.InheritanceAttribute = System.ComponentModel.InheritanceAttribute

---@param value System.Object
---@return System.Boolean
function System.ComponentModel.InheritanceAttribute:Equals(value)end
---@return System.Int32
function System.ComponentModel.InheritanceAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.InheritanceAttribute:IsDefaultAttribute()end
---@return System.String
function System.ComponentModel.InheritanceAttribute:ToString()end
---@class System.ComponentModel.InheritanceLevel : System.Enum
System.ComponentModel.InheritanceLevel = {}
---@type System.ComponentModel.InheritanceLevel
CS.System.ComponentModel.InheritanceLevel = System.ComponentModel.InheritanceLevel

---@return System.Int32 value:1
System.ComponentModel.InheritanceLevel.Inherited = 1
---@return System.Int32 value:2
System.ComponentModel.InheritanceLevel.InheritedReadOnly = 2

---@class System.ComponentModel.NotifyParentPropertyAttribute : System.Attribute
---@field public NotifyParent System.Boolean @  getter
---@field public Yes System.ComponentModel.NotifyParentPropertyAttribute
---@field public No System.ComponentModel.NotifyParentPropertyAttribute
---@field public Default System.ComponentModel.NotifyParentPropertyAttribute
System.ComponentModel.NotifyParentPropertyAttribute = {}
---@type System.ComponentModel.NotifyParentPropertyAttribute
CS.System.ComponentModel.NotifyParentPropertyAttribute = System.ComponentModel.NotifyParentPropertyAttribute

---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.NotifyParentPropertyAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.NotifyParentPropertyAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.NotifyParentPropertyAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ParenthesizePropertyNameAttribute : System.Attribute
---@field public NeedParenthesis System.Boolean @  getter
---@field public Default System.ComponentModel.ParenthesizePropertyNameAttribute
System.ComponentModel.ParenthesizePropertyNameAttribute = {}
---@type System.ComponentModel.ParenthesizePropertyNameAttribute
CS.System.ComponentModel.ParenthesizePropertyNameAttribute = System.ComponentModel.ParenthesizePropertyNameAttribute

---@param o System.Object
---@return System.Boolean
function System.ComponentModel.ParenthesizePropertyNameAttribute:Equals(o)end
---@return System.Int32
function System.ComponentModel.ParenthesizePropertyNameAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.ParenthesizePropertyNameAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.PropertyTabAttribute : System.Attribute
---@field public TabClasses System.Type[] @  getter
---@field public TabScopes System.ComponentModel.PropertyTabScope[] @  getter
System.ComponentModel.PropertyTabAttribute = {}
---@type System.ComponentModel.PropertyTabAttribute
CS.System.ComponentModel.PropertyTabAttribute = System.ComponentModel.PropertyTabAttribute

---@overload fun(other:System.ComponentModel.PropertyTabAttribute):System.Boolean
---@param other System.Object
---@return System.Boolean
function System.ComponentModel.PropertyTabAttribute:Equals(other)end
---@return System.Int32
function System.ComponentModel.PropertyTabAttribute:GetHashCode()end
---@class System.ComponentModel.PropertyTabScope : System.Enum
System.ComponentModel.PropertyTabScope = {}
---@type System.ComponentModel.PropertyTabScope
CS.System.ComponentModel.PropertyTabScope = System.ComponentModel.PropertyTabScope

---@return System.Int32 value:0
System.ComponentModel.PropertyTabScope.Static = 0
---@return System.Int32 value:1
System.ComponentModel.PropertyTabScope.Global = 1
---@return System.Int32 value:2
System.ComponentModel.PropertyTabScope.Document = 2
---@return System.Int32 value:3
System.ComponentModel.PropertyTabScope.Component = 3

---@class System.ComponentModel.RefreshProperties : System.Enum
System.ComponentModel.RefreshProperties = {}
---@type System.ComponentModel.RefreshProperties
CS.System.ComponentModel.RefreshProperties = System.ComponentModel.RefreshProperties

---@return System.Int32 value:0
System.ComponentModel.RefreshProperties.None = 0
---@return System.Int32 value:1
System.ComponentModel.RefreshProperties.All = 1
---@return System.Int32 value:2
System.ComponentModel.RefreshProperties.Repaint = 2

---@class System.ComponentModel.RefreshPropertiesAttribute : System.Attribute
---@field public RefreshProperties System.ComponentModel.RefreshProperties @  getter
---@field public All System.ComponentModel.RefreshPropertiesAttribute
---@field public Repaint System.ComponentModel.RefreshPropertiesAttribute
---@field public Default System.ComponentModel.RefreshPropertiesAttribute
System.ComponentModel.RefreshPropertiesAttribute = {}
---@type System.ComponentModel.RefreshPropertiesAttribute
CS.System.ComponentModel.RefreshPropertiesAttribute = System.ComponentModel.RefreshPropertiesAttribute

---@param value System.Object
---@return System.Boolean
function System.ComponentModel.RefreshPropertiesAttribute:Equals(value)end
---@return System.Int32
function System.ComponentModel.RefreshPropertiesAttribute:GetHashCode()end
---@return System.Boolean
function System.ComponentModel.RefreshPropertiesAttribute:IsDefaultAttribute()end
---@class System.ComponentModel.ToolboxItemAttribute : System.Attribute
---@field public ToolboxItemType System.Type @  getter
---@field public ToolboxItemTypeName System.String @  getter
---@field public Default System.ComponentModel.ToolboxItemAttribute
---@field public None System.ComponentModel.ToolboxItemAttribute
System.ComponentModel.ToolboxItemAttribute = {}
---@type System.ComponentModel.ToolboxItemAttribute
CS.System.ComponentModel.ToolboxItemAttribute = System.ComponentModel.ToolboxItemAttribute

---@return System.Boolean
function System.ComponentModel.ToolboxItemAttribute:IsDefaultAttribute()end
---@param obj System.Object
---@return System.Boolean
function System.ComponentModel.ToolboxItemAttribute:Equals(obj)end
---@return System.Int32
function System.ComponentModel.ToolboxItemAttribute:GetHashCode()end
