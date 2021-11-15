---@class UnityEngine.Experimental.UIElements.BaseField : UnityEngine.Experimental.UIElements.BindableElement
---@field public value any @ setter getter
UnityEngine.Experimental.UIElements.BaseField = {}
---@type UnityEngine.Experimental.UIElements.BaseField
CS.UnityEngine.Experimental.UIElements.BaseField = UnityEngine.Experimental.UIElements.BaseField

---@param newValue any
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseField:SetValueAndNotify(newValue)end
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseField:OnPersistentDataReady()end
---@param callback any
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseField:OnValueChanged(callback)end
---@param callback any
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseField:RemoveOnValueChanged(callback)end
---@param newValue any
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseField:SetValueWithoutNotify(newValue)end
---@class UnityEngine.Experimental.UIElements.BaseField : UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.BaseField = {}
---@type UnityEngine.Experimental.UIElements.BaseField
CS.UnityEngine.Experimental.UIElements.BaseField = UnityEngine.Experimental.UIElements.BaseField

---@class UnityEngine.Experimental.UIElements.SliderDirection : System.Enum
UnityEngine.Experimental.UIElements.SliderDirection = {}
---@type UnityEngine.Experimental.UIElements.SliderDirection
CS.UnityEngine.Experimental.UIElements.SliderDirection = UnityEngine.Experimental.UIElements.SliderDirection

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.SliderDirection.Horizontal = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.SliderDirection.Vertical = 1

---@class UnityEngine.Experimental.UIElements.BaseSlider : any
---@field public lowValue any @ setter getter
---@field public highValue any @ setter getter
---@field public range any @  getter
---@field public pageSize System.Single @ setter getter
---@field public value any @ setter getter
---@field public direction UnityEngine.Experimental.UIElements.SliderDirection @ setter getter
UnityEngine.Experimental.UIElements.BaseSlider = {}
---@type UnityEngine.Experimental.UIElements.BaseSlider
CS.UnityEngine.Experimental.UIElements.BaseSlider = UnityEngine.Experimental.UIElements.BaseSlider

---@param factor System.Single
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseSlider:AdjustDragElement(factor)end
---@return System.Void
function UnityEngine.Experimental.UIElements.BaseSlider:OnPersistentDataReady()end
---@class UnityEngine.Experimental.UIElements.BindableElement : UnityEngine.Experimental.UIElements.VisualElement
---@field public binding UnityEngine.Experimental.UIElements.IBinding @ setter getter
---@field public bindingPath System.String @ setter getter
UnityEngine.Experimental.UIElements.BindableElement = {}
---@type UnityEngine.Experimental.UIElements.BindableElement
CS.UnityEngine.Experimental.UIElements.BindableElement = UnityEngine.Experimental.UIElements.BindableElement

---@class UnityEngine.Experimental.UIElements.BindableElement.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.BindableElement.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.BindableElement.UxmlFactory
CS.UnityEngine.Experimental.UIElements.BindableElement.UxmlFactory = UnityEngine.Experimental.UIElements.BindableElement.UxmlFactory

---@class UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits
CS.UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits = UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.BindableElement.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.Box : UnityEngine.Experimental.UIElements.VisualElement
UnityEngine.Experimental.UIElements.Box = {}
---@type UnityEngine.Experimental.UIElements.Box
CS.UnityEngine.Experimental.UIElements.Box = UnityEngine.Experimental.UIElements.Box

---@class UnityEngine.Experimental.UIElements.Box.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Box.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Box.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Box.UxmlFactory = UnityEngine.Experimental.UIElements.Box.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Button : UnityEngine.Experimental.UIElements.TextElement
---@field public clickable UnityEngine.Experimental.UIElements.Clickable
UnityEngine.Experimental.UIElements.Button = {}
---@type UnityEngine.Experimental.UIElements.Button
CS.UnityEngine.Experimental.UIElements.Button = UnityEngine.Experimental.UIElements.Button

---@class UnityEngine.Experimental.UIElements.Button.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Button.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Button.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Button.UxmlFactory = UnityEngine.Experimental.UIElements.Button.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Button.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
UnityEngine.Experimental.UIElements.Button.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Button.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Button.UxmlTraits = UnityEngine.Experimental.UIElements.Button.UxmlTraits

---@class UnityEngine.Experimental.UIElements.Clickable : UnityEngine.Experimental.UIElements.MouseManipulator
---@field public lastMousePosition UnityEngine.Vector2 @ setter getter
UnityEngine.Experimental.UIElements.Clickable = {}
---@type UnityEngine.Experimental.UIElements.Clickable
CS.UnityEngine.Experimental.UIElements.Clickable = UnityEngine.Experimental.UIElements.Clickable

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Clickable:add_clickedWithEventInfo(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Clickable:remove_clickedWithEventInfo(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Clickable:add_clicked(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Clickable:remove_clicked(value)end
---@class UnityEngine.Experimental.UIElements.ContextualMenu : System.Object
UnityEngine.Experimental.UIElements.ContextualMenu = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu
CS.UnityEngine.Experimental.UIElements.ContextualMenu = UnityEngine.Experimental.UIElements.ContextualMenu

---@return System.Collections.Generic.List
function UnityEngine.Experimental.UIElements.ContextualMenu:MenuItems()end
---@overload fun(actionName:System.String, action:System.Action, actionStatusCallback:System.Func):System.Void
---@param actionName System.String
---@param action System.Action
---@param actionStatusCallback System.Func
---@param userData System.Object
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:AppendAction(actionName, action, actionStatusCallback, userData)end
---@overload fun(atIndex:System.Int32, actionName:System.String, action:System.Action, actionStatusCallback:System.Func):System.Void
---@param atIndex System.Int32
---@param actionName System.String
---@param action System.Action
---@param actionStatusCallback System.Func
---@param userData System.Object
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:InsertAction(atIndex, actionName, action, actionStatusCallback, userData)end
---@overload fun():System.Void
---@param subMenuPath System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:AppendSeparator(subMenuPath)end
---@param subMenuPath System.String
---@param atIndex System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:InsertSeparator(subMenuPath, atIndex)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:RemoveItemAt(index)end
---@param e UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu:PrepareForDisplay(e)end
---@class UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo : System.Object
---@field public modifiers UnityEngine.EventModifiers @  getter
---@field public mousePosition UnityEngine.Vector2 @  getter
---@field public localMousePosition UnityEngine.Vector2 @  getter
UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo
CS.UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo = UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo

---@class UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem : System.Object
UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem
CS.UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem = UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem

---@class UnityEngine.Experimental.UIElements.ContextualMenu.Separator : UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem
---@field public subMenuPath System.String
UnityEngine.Experimental.UIElements.ContextualMenu.Separator = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu.Separator
CS.UnityEngine.Experimental.UIElements.ContextualMenu.Separator = UnityEngine.Experimental.UIElements.ContextualMenu.Separator

---@class UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction : UnityEngine.Experimental.UIElements.ContextualMenu.MenuItem
---@field public status UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags @ setter getter
---@field public eventInfo UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo @ setter getter
---@field public userData System.Object @ setter getter
---@field public name System.String
UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction
CS.UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction = UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction

---@param a UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction
---@return UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags
function UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.AlwaysEnabled(a)end
---@param a UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction
---@return UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags
function UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.AlwaysDisabled(a)end
---@param eventInfo UnityEngine.Experimental.UIElements.ContextualMenu.EventInfo
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction:UpdateActionStatus(eventInfo)end
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction:Execute()end
---@class UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags : System.Enum
UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags
CS.UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags = UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags.Normal = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags.Disabled = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.ContextualMenu.MenuAction.StatusFlags.Checked = 2

---@class UnityEngine.Experimental.UIElements.ContextualMenuManager : System.Object
UnityEngine.Experimental.UIElements.ContextualMenuManager = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenuManager
CS.UnityEngine.Experimental.UIElements.ContextualMenuManager = UnityEngine.Experimental.UIElements.ContextualMenuManager

---@param evt UnityEngine.Experimental.UIElements.EventBase
---@param eventHandler UnityEngine.Experimental.UIElements.IEventHandler
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenuManager:DisplayMenuIfEventMatches(evt, eventHandler)end
---@param triggerEvent UnityEngine.Experimental.UIElements.EventBase
---@param target UnityEngine.Experimental.UIElements.IEventHandler
---@return System.Void
function UnityEngine.Experimental.UIElements.ContextualMenuManager:DisplayMenu(triggerEvent, target)end
---@class UnityEngine.Experimental.UIElements.ContextualMenuManipulator : UnityEngine.Experimental.UIElements.MouseManipulator
UnityEngine.Experimental.UIElements.ContextualMenuManipulator = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenuManipulator
CS.UnityEngine.Experimental.UIElements.ContextualMenuManipulator = UnityEngine.Experimental.UIElements.ContextualMenuManipulator

---@class UnityEngine.Experimental.UIElements.CursorStyle : System.ValueType
---@field public texture UnityEngine.Texture2D @ setter getter
---@field public hotspot UnityEngine.Vector2 @ setter getter
UnityEngine.Experimental.UIElements.CursorStyle = {}
---@type UnityEngine.Experimental.UIElements.CursorStyle
CS.UnityEngine.Experimental.UIElements.CursorStyle = UnityEngine.Experimental.UIElements.CursorStyle

---@overload fun(obj:System.Object):System.Boolean
---@param other UnityEngine.Experimental.UIElements.CursorStyle
---@return System.Boolean
function UnityEngine.Experimental.UIElements.CursorStyle:Equals(other)end
---@return System.Int32
function UnityEngine.Experimental.UIElements.CursorStyle:GetHashCode()end
---@class UnityEngine.Experimental.UIElements.DropdownMenu : System.Object
UnityEngine.Experimental.UIElements.DropdownMenu = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu
CS.UnityEngine.Experimental.UIElements.DropdownMenu = UnityEngine.Experimental.UIElements.DropdownMenu

---@return System.Collections.Generic.List
function UnityEngine.Experimental.UIElements.DropdownMenu:MenuItems()end
---@overload fun(actionName:System.String, action:System.Action, actionStatusCallback:System.Func):System.Void
---@param actionName System.String
---@param action System.Action
---@param actionStatusCallback System.Func
---@param userData System.Object
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:AppendAction(actionName, action, actionStatusCallback, userData)end
---@overload fun(atIndex:System.Int32, actionName:System.String, action:System.Action, actionStatusCallback:System.Func):System.Void
---@param atIndex System.Int32
---@param actionName System.String
---@param action System.Action
---@param actionStatusCallback System.Func
---@param userData System.Object
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:InsertAction(atIndex, actionName, action, actionStatusCallback, userData)end
---@overload fun():System.Void
---@param subMenuPath System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:AppendSeparator(subMenuPath)end
---@param subMenuPath System.String
---@param atIndex System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:InsertSeparator(subMenuPath, atIndex)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:RemoveItemAt(index)end
---@param e UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu:PrepareForDisplay(e)end
---@class UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo : System.Object
---@field public modifiers UnityEngine.EventModifiers @  getter
---@field public mousePosition UnityEngine.Vector2 @  getter
---@field public localMousePosition UnityEngine.Vector2 @  getter
UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo
CS.UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo = UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo

---@class UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem : System.Object
UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem
CS.UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem = UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem

---@class UnityEngine.Experimental.UIElements.DropdownMenu.Separator : UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem
---@field public subMenuPath System.String
UnityEngine.Experimental.UIElements.DropdownMenu.Separator = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu.Separator
CS.UnityEngine.Experimental.UIElements.DropdownMenu.Separator = UnityEngine.Experimental.UIElements.DropdownMenu.Separator

---@class UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction : UnityEngine.Experimental.UIElements.DropdownMenu.MenuItem
---@field public status UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags @ setter getter
---@field public eventInfo UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo @ setter getter
---@field public userData System.Object @ setter getter
---@field public name System.String
UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction
CS.UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction = UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction

---@param a UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction
---@return UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags
function UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.AlwaysEnabled(a)end
---@param a UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction
---@return UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags
function UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.AlwaysDisabled(a)end
---@param eventInfo UnityEngine.Experimental.UIElements.DropdownMenu.EventInfo
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction:UpdateActionStatus(eventInfo)end
---@return System.Void
function UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction:Execute()end
---@class UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags : System.Enum
UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags = {}
---@type UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags
CS.UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags = UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags.Normal = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags.Disabled = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.DropdownMenu.MenuAction.StatusFlags.Checked = 2

---@class UnityEngine.Experimental.UIElements.EventPropagation : System.Enum
UnityEngine.Experimental.UIElements.EventPropagation = {}
---@type UnityEngine.Experimental.UIElements.EventPropagation
CS.UnityEngine.Experimental.UIElements.EventPropagation = UnityEngine.Experimental.UIElements.EventPropagation

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.EventPropagation.Continue = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.EventPropagation.Stop = 1

---@class UnityEngine.Experimental.UIElements.PropagationPhase : System.Enum
UnityEngine.Experimental.UIElements.PropagationPhase = {}
---@type UnityEngine.Experimental.UIElements.PropagationPhase
CS.UnityEngine.Experimental.UIElements.PropagationPhase = UnityEngine.Experimental.UIElements.PropagationPhase

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.PropagationPhase.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.PropagationPhase.Capture = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.PropagationPhase.AtTarget = 2
---@return System.Int32 value:3
UnityEngine.Experimental.UIElements.PropagationPhase.BubbleUp = 3
---@return System.Int32 value:4
UnityEngine.Experimental.UIElements.PropagationPhase.DefaultAction = 4

---@class UnityEngine.Experimental.UIElements.EventDispatcher : System.Object
UnityEngine.Experimental.UIElements.EventDispatcher = {}
---@type UnityEngine.Experimental.UIElements.EventDispatcher
CS.UnityEngine.Experimental.UIElements.EventDispatcher = UnityEngine.Experimental.UIElements.EventDispatcher

---@class UnityEngine.Experimental.UIElements.EventDispatcher.Gate : System.ValueType
UnityEngine.Experimental.UIElements.EventDispatcher.Gate = {}
---@type UnityEngine.Experimental.UIElements.EventDispatcher.Gate
CS.UnityEngine.Experimental.UIElements.EventDispatcher.Gate = UnityEngine.Experimental.UIElements.EventDispatcher.Gate

---@return System.Void
function UnityEngine.Experimental.UIElements.EventDispatcher.Gate:Dispose()end
---@class UnityEngine.Experimental.UIElements.Focusable : UnityEngine.Experimental.UIElements.CallbackEventHandler
---@field public focusController UnityEngine.Experimental.UIElements.FocusController @  getter
---@field public focusIndex System.Int32 @ setter getter
---@field public canGrabFocus System.Boolean @  getter
UnityEngine.Experimental.UIElements.Focusable = {}
---@type UnityEngine.Experimental.UIElements.Focusable
CS.UnityEngine.Experimental.UIElements.Focusable = UnityEngine.Experimental.UIElements.Focusable

---@return System.Void
function UnityEngine.Experimental.UIElements.Focusable:Focus()end
---@return System.Void
function UnityEngine.Experimental.UIElements.Focusable:Blur()end
---@class UnityEngine.Experimental.UIElements.FocusChangeDirection : System.Object
---@field public unspecified UnityEngine.Experimental.UIElements.FocusChangeDirection @static  getter
---@field public none UnityEngine.Experimental.UIElements.FocusChangeDirection @static  getter
UnityEngine.Experimental.UIElements.FocusChangeDirection = {}
---@type UnityEngine.Experimental.UIElements.FocusChangeDirection
CS.UnityEngine.Experimental.UIElements.FocusChangeDirection = UnityEngine.Experimental.UIElements.FocusChangeDirection

---@param fcd UnityEngine.Experimental.UIElements.FocusChangeDirection
---@return System.Int32
function UnityEngine.Experimental.UIElements.FocusChangeDirection.op_Implicit(fcd)end
---@class UnityEngine.Experimental.UIElements.FocusController : System.Object
---@field public focusedElement UnityEngine.Experimental.UIElements.Focusable @ setter getter
UnityEngine.Experimental.UIElements.FocusController = {}
---@type UnityEngine.Experimental.UIElements.FocusController
CS.UnityEngine.Experimental.UIElements.FocusController = UnityEngine.Experimental.UIElements.FocusController

---@param e UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.FocusController:SwitchFocusOnEvent(e)end
---@class UnityEngine.Experimental.UIElements.Foldout : UnityEngine.Experimental.UIElements.BindableElement
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public text System.String @ setter getter
---@field public value System.Boolean @ setter getter
UnityEngine.Experimental.UIElements.Foldout = {}
---@type UnityEngine.Experimental.UIElements.Foldout
CS.UnityEngine.Experimental.UIElements.Foldout = UnityEngine.Experimental.UIElements.Foldout

---@param newValue System.Boolean
---@return System.Void
function UnityEngine.Experimental.UIElements.Foldout:SetValueAndNotify(newValue)end
---@param newValue System.Boolean
---@return System.Void
function UnityEngine.Experimental.UIElements.Foldout:SetValueWithoutNotify(newValue)end
---@param callback UnityEngine.Experimental.UIElements.EventCallback
---@return System.Void
function UnityEngine.Experimental.UIElements.Foldout:OnValueChanged(callback)end
---@param callback UnityEngine.Experimental.UIElements.EventCallback
---@return System.Void
function UnityEngine.Experimental.UIElements.Foldout:RemoveOnValueChanged(callback)end
---@class UnityEngine.Experimental.UIElements.Foldout.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Foldout.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Foldout.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Foldout.UxmlFactory = UnityEngine.Experimental.UIElements.Foldout.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Image : UnityEngine.Experimental.UIElements.VisualElement
---@field public image UnityEngine.Experimental.UIElements.StyleSheets.StyleValue @ setter getter
---@field public sourceRect UnityEngine.Rect @ setter getter
---@field public uv UnityEngine.Rect @ setter getter
---@field public scaleMode UnityEngine.Experimental.UIElements.StyleSheets.StyleValue @ setter getter
UnityEngine.Experimental.UIElements.Image = {}
---@type UnityEngine.Experimental.UIElements.Image
CS.UnityEngine.Experimental.UIElements.Image = UnityEngine.Experimental.UIElements.Image

---@class UnityEngine.Experimental.UIElements.Image.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Image.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Image.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Image.UxmlFactory = UnityEngine.Experimental.UIElements.Image.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Image.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.Image.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Image.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Image.UxmlTraits = UnityEngine.Experimental.UIElements.Image.UxmlTraits

---@class UnityEngine.Experimental.UIElements.IMGUIContainer : UnityEngine.Experimental.UIElements.VisualElement
---@field public contextType UnityEngine.Experimental.UIElements.ContextType @ setter getter
---@field public canGrabFocus System.Boolean @  getter
UnityEngine.Experimental.UIElements.IMGUIContainer = {}
---@type UnityEngine.Experimental.UIElements.IMGUIContainer
CS.UnityEngine.Experimental.UIElements.IMGUIContainer = UnityEngine.Experimental.UIElements.IMGUIContainer

---@return System.Void
function UnityEngine.Experimental.UIElements.IMGUIContainer:MarkDirtyLayout()end
---@param evt UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.IMGUIContainer:HandleEvent(evt)end
---@class UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlFactory
CS.UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlFactory = UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlFactory

---@class UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlTraits
CS.UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlTraits = UnityEngine.Experimental.UIElements.IMGUIContainer.UxmlTraits

---@class UnityEngine.Experimental.UIElements.SelectionType : System.Enum
UnityEngine.Experimental.UIElements.SelectionType = {}
---@type UnityEngine.Experimental.UIElements.SelectionType
CS.UnityEngine.Experimental.UIElements.SelectionType = UnityEngine.Experimental.UIElements.SelectionType

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.SelectionType.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.SelectionType.Single = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.SelectionType.Multiple = 2

---@class UnityEngine.Experimental.UIElements.Label : UnityEngine.Experimental.UIElements.TextElement
UnityEngine.Experimental.UIElements.Label = {}
---@type UnityEngine.Experimental.UIElements.Label
CS.UnityEngine.Experimental.UIElements.Label = UnityEngine.Experimental.UIElements.Label

---@class UnityEngine.Experimental.UIElements.Label.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Label.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Label.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Label.UxmlFactory = UnityEngine.Experimental.UIElements.Label.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Label.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
UnityEngine.Experimental.UIElements.Label.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Label.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Label.UxmlTraits = UnityEngine.Experimental.UIElements.Label.UxmlTraits

---@class UnityEngine.Experimental.UIElements.ListView : UnityEngine.Experimental.UIElements.VisualElement
---@field public itemsSource System.Collections.IList @ setter getter
---@field public makeItem System.Func @ setter getter
---@field public bindItem System.Action @ setter getter
---@field public itemHeight System.Int32 @ setter getter
---@field public selectedIndex System.Int32 @ setter getter
---@field public selectedItem System.Object @  getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public selectionType UnityEngine.Experimental.UIElements.SelectionType @ setter getter
UnityEngine.Experimental.UIElements.ListView = {}
---@type UnityEngine.Experimental.UIElements.ListView
CS.UnityEngine.Experimental.UIElements.ListView = UnityEngine.Experimental.UIElements.ListView

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:add_onItemChosen(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:remove_onItemChosen(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:add_onSelectionChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:remove_onSelectionChanged(value)end
---@param evt UnityEngine.Experimental.UIElements.KeyDownEvent
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:OnKeyDown(evt)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:ScrollToItem(index)end
---@param visualElement UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:ScrollTo(visualElement)end
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:OnPersistentDataReady()end
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView:Refresh()end
---@class UnityEngine.Experimental.UIElements.ListView.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.ListView.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.ListView.UxmlFactory
CS.UnityEngine.Experimental.UIElements.ListView.UxmlFactory = UnityEngine.Experimental.UIElements.ListView.UxmlFactory

---@class UnityEngine.Experimental.UIElements.ListView.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.ListView.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.ListView.UxmlTraits
CS.UnityEngine.Experimental.UIElements.ListView.UxmlTraits = UnityEngine.Experimental.UIElements.ListView.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.ListView.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.ManipulatorActivationFilter : System.ValueType
---@field public button UnityEngine.Experimental.UIElements.MouseButton
---@field public modifiers UnityEngine.EventModifiers
---@field public clickCount System.Int32
UnityEngine.Experimental.UIElements.ManipulatorActivationFilter = {}
---@type UnityEngine.Experimental.UIElements.ManipulatorActivationFilter
CS.UnityEngine.Experimental.UIElements.ManipulatorActivationFilter = UnityEngine.Experimental.UIElements.ManipulatorActivationFilter

---@param e UnityEngine.Experimental.UIElements.IMouseEvent
---@return System.Boolean
function UnityEngine.Experimental.UIElements.ManipulatorActivationFilter:Matches(e)end
---@class UnityEngine.Experimental.UIElements.Manipulator : System.Object
---@field public target UnityEngine.Experimental.UIElements.VisualElement @ setter getter
UnityEngine.Experimental.UIElements.Manipulator = {}
---@type UnityEngine.Experimental.UIElements.Manipulator
CS.UnityEngine.Experimental.UIElements.Manipulator = UnityEngine.Experimental.UIElements.Manipulator

---@class UnityEngine.Experimental.UIElements.MinMaxSlider : UnityEngine.Experimental.UIElements.BaseField
---@field public minValue System.Single @ setter getter
---@field public maxValue System.Single @ setter getter
---@field public value UnityEngine.Vector2 @ setter getter
---@field public range System.Single @  getter
---@field public lowLimit System.Single @ setter getter
---@field public highLimit System.Single @ setter getter
UnityEngine.Experimental.UIElements.MinMaxSlider = {}
---@type UnityEngine.Experimental.UIElements.MinMaxSlider
CS.UnityEngine.Experimental.UIElements.MinMaxSlider = UnityEngine.Experimental.UIElements.MinMaxSlider

---@param newValue UnityEngine.Vector2
---@return System.Void
function UnityEngine.Experimental.UIElements.MinMaxSlider:SetValueWithoutNotify(newValue)end
---@class UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlFactory
CS.UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlFactory = UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlFactory

---@class UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits
CS.UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits = UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.MinMaxSlider.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.MouseButton : System.Enum
UnityEngine.Experimental.UIElements.MouseButton = {}
---@type UnityEngine.Experimental.UIElements.MouseButton
CS.UnityEngine.Experimental.UIElements.MouseButton = UnityEngine.Experimental.UIElements.MouseButton

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.MouseButton.LeftMouse = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.MouseButton.RightMouse = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.MouseButton.MiddleMouse = 2

---@class UnityEngine.Experimental.UIElements.MouseCaptureController : System.Object
UnityEngine.Experimental.UIElements.MouseCaptureController = {}
---@type UnityEngine.Experimental.UIElements.MouseCaptureController
CS.UnityEngine.Experimental.UIElements.MouseCaptureController = UnityEngine.Experimental.UIElements.MouseCaptureController

---@return System.Boolean
function UnityEngine.Experimental.UIElements.MouseCaptureController.IsMouseCaptureTaken()end
---@return System.Boolean
function UnityEngine.Experimental.UIElements.MouseCaptureController.IsMouseCaptured()end
---@return System.Void
function UnityEngine.Experimental.UIElements.MouseCaptureController.ReleaseMouseCapture()end
---@return System.Void
function UnityEngine.Experimental.UIElements.MouseCaptureController.ReleaseMouse()end
---@class UnityEngine.Experimental.UIElements.MouseManipulator : UnityEngine.Experimental.UIElements.Manipulator
---@field public activators System.Collections.Generic.List @ setter getter
UnityEngine.Experimental.UIElements.MouseManipulator = {}
---@type UnityEngine.Experimental.UIElements.MouseManipulator
CS.UnityEngine.Experimental.UIElements.MouseManipulator = UnityEngine.Experimental.UIElements.MouseManipulator

---@class UnityEngine.Experimental.UIElements.ContextType : System.Enum
UnityEngine.Experimental.UIElements.ContextType = {}
---@type UnityEngine.Experimental.UIElements.ContextType
CS.UnityEngine.Experimental.UIElements.ContextType = UnityEngine.Experimental.UIElements.ContextType

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.ContextType.Player = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.ContextType.Editor = 1

---@class UnityEngine.Experimental.UIElements.ChangeType : System.Enum
UnityEngine.Experimental.UIElements.ChangeType = {}
---@type UnityEngine.Experimental.UIElements.ChangeType
CS.UnityEngine.Experimental.UIElements.ChangeType = UnityEngine.Experimental.UIElements.ChangeType

---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.ChangeType.Repaint = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.ChangeType.StylesPath = 2
---@return System.Int32 value:4
UnityEngine.Experimental.UIElements.ChangeType.Transform = 4

---@class UnityEngine.Experimental.UIElements.PopupWindow : UnityEngine.Experimental.UIElements.TextElement
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
UnityEngine.Experimental.UIElements.PopupWindow = {}
---@type UnityEngine.Experimental.UIElements.PopupWindow
CS.UnityEngine.Experimental.UIElements.PopupWindow = UnityEngine.Experimental.UIElements.PopupWindow

---@class UnityEngine.Experimental.UIElements.PopupWindow.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.PopupWindow.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.PopupWindow.UxmlFactory
CS.UnityEngine.Experimental.UIElements.PopupWindow.UxmlFactory = UnityEngine.Experimental.UIElements.PopupWindow.UxmlFactory

---@class UnityEngine.Experimental.UIElements.PopupWindow.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.PopupWindow.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.PopupWindow.UxmlTraits
CS.UnityEngine.Experimental.UIElements.PopupWindow.UxmlTraits = UnityEngine.Experimental.UIElements.PopupWindow.UxmlTraits

---@class UnityEngine.Experimental.UIElements.RepeatButton : UnityEngine.Experimental.UIElements.TextElement
UnityEngine.Experimental.UIElements.RepeatButton = {}
---@type UnityEngine.Experimental.UIElements.RepeatButton
CS.UnityEngine.Experimental.UIElements.RepeatButton = UnityEngine.Experimental.UIElements.RepeatButton

---@param clickEvent System.Action
---@param delay System.Int64
---@param interval System.Int64
---@return System.Void
function UnityEngine.Experimental.UIElements.RepeatButton:SetAction(clickEvent, delay, interval)end
---@class UnityEngine.Experimental.UIElements.RepeatButton.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.RepeatButton.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.RepeatButton.UxmlFactory
CS.UnityEngine.Experimental.UIElements.RepeatButton.UxmlFactory = UnityEngine.Experimental.UIElements.RepeatButton.UxmlFactory

---@class UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits
CS.UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits = UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.RepeatButton.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.TimerState : System.ValueType
---@field public deltaTime System.Int64 @  getter
---@field public start System.Int64
---@field public now System.Int64
UnityEngine.Experimental.UIElements.TimerState = {}
---@type UnityEngine.Experimental.UIElements.TimerState
CS.UnityEngine.Experimental.UIElements.TimerState = UnityEngine.Experimental.UIElements.TimerState

---@class UnityEngine.Experimental.UIElements.ScrollerButton : UnityEngine.Experimental.UIElements.VisualElement
---@field public clickable UnityEngine.Experimental.UIElements.Clickable
UnityEngine.Experimental.UIElements.ScrollerButton = {}
---@type UnityEngine.Experimental.UIElements.ScrollerButton
CS.UnityEngine.Experimental.UIElements.ScrollerButton = UnityEngine.Experimental.UIElements.ScrollerButton

---@class UnityEngine.Experimental.UIElements.ScrollerButton.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.ScrollerButton.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.ScrollerButton.UxmlFactory
CS.UnityEngine.Experimental.UIElements.ScrollerButton.UxmlFactory = UnityEngine.Experimental.UIElements.ScrollerButton.UxmlFactory

---@class UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits
CS.UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits = UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.ScrollerButton.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.Scroller : UnityEngine.Experimental.UIElements.VisualElement
---@field public slider UnityEngine.Experimental.UIElements.Slider @ setter getter
---@field public lowButton UnityEngine.Experimental.UIElements.ScrollerButton @ setter getter
---@field public highButton UnityEngine.Experimental.UIElements.ScrollerButton @ setter getter
---@field public value System.Single @ setter getter
---@field public lowValue System.Single @ setter getter
---@field public highValue System.Single @ setter getter
---@field public direction UnityEngine.Experimental.UIElements.SliderDirection @ setter getter
UnityEngine.Experimental.UIElements.Scroller = {}
---@type UnityEngine.Experimental.UIElements.Scroller
CS.UnityEngine.Experimental.UIElements.Scroller = UnityEngine.Experimental.UIElements.Scroller

---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller:add_valueChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller:remove_valueChanged(value)end
---@param factor System.Single
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller:Adjust(factor)end
---@overload fun(factor:System.Single):System.Void
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller:ScrollPageUp()end
---@overload fun(factor:System.Single):System.Void
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller:ScrollPageDown()end
---@class UnityEngine.Experimental.UIElements.Scroller.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Scroller.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Scroller.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Scroller.UxmlFactory = UnityEngine.Experimental.UIElements.Scroller.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Scroller.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.Scroller.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Scroller.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Scroller.UxmlTraits = UnityEngine.Experimental.UIElements.Scroller.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.Scroller.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.ScrollView : UnityEngine.Experimental.UIElements.VisualElement
---@field public stretchContentWidth System.Boolean @ setter getter
---@field public showHorizontal System.Boolean @ setter getter
---@field public showVertical System.Boolean @ setter getter
---@field public needsHorizontal System.Boolean @  getter
---@field public needsVertical System.Boolean @  getter
---@field public scrollOffset UnityEngine.Vector2 @ setter getter
---@field public horizontalPageSize System.Single @ setter getter
---@field public verticalPageSize System.Single @ setter getter
---@field public contentViewport UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public contentView UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public horizontalScroller UnityEngine.Experimental.UIElements.Scroller @ setter getter
---@field public verticalScroller UnityEngine.Experimental.UIElements.Scroller @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
UnityEngine.Experimental.UIElements.ScrollView = {}
---@type UnityEngine.Experimental.UIElements.ScrollView
CS.UnityEngine.Experimental.UIElements.ScrollView = UnityEngine.Experimental.UIElements.ScrollView

---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.ScrollView:ScrollTo(child)end
---@param contents UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.ScrollView:SetContents(contents)end
---@class UnityEngine.Experimental.UIElements.ScrollView.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.ScrollView.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.ScrollView.UxmlFactory
CS.UnityEngine.Experimental.UIElements.ScrollView.UxmlFactory = UnityEngine.Experimental.UIElements.ScrollView.UxmlFactory

---@class UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits
CS.UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits = UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.ScrollView.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.Slider : UnityEngine.Experimental.UIElements.BaseSlider
---@field public valueChanged System.Action @ setter getter
UnityEngine.Experimental.UIElements.Slider = {}
---@type UnityEngine.Experimental.UIElements.Slider
CS.UnityEngine.Experimental.UIElements.Slider = UnityEngine.Experimental.UIElements.Slider

---@class UnityEngine.Experimental.UIElements.Slider.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Slider.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Slider.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Slider.UxmlFactory = UnityEngine.Experimental.UIElements.Slider.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Slider.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.Slider.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Slider.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Slider.UxmlTraits = UnityEngine.Experimental.UIElements.Slider.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.Slider.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.SliderInt : UnityEngine.Experimental.UIElements.BaseSlider
---@field public pageSize System.Single @ setter getter
UnityEngine.Experimental.UIElements.SliderInt = {}
---@type UnityEngine.Experimental.UIElements.SliderInt
CS.UnityEngine.Experimental.UIElements.SliderInt = UnityEngine.Experimental.UIElements.SliderInt

---@class UnityEngine.Experimental.UIElements.SliderInt.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.SliderInt.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.SliderInt.UxmlFactory
CS.UnityEngine.Experimental.UIElements.SliderInt.UxmlFactory = UnityEngine.Experimental.UIElements.SliderInt.UxmlFactory

---@class UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits
CS.UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits = UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.SliderInt.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.Spacing : System.ValueType
---@field public horizontal System.Single @  getter
---@field public vertical System.Single @  getter
---@field public left System.Single
---@field public top System.Single
---@field public right System.Single
---@field public bottom System.Single
UnityEngine.Experimental.UIElements.Spacing = {}
---@type UnityEngine.Experimental.UIElements.Spacing
CS.UnityEngine.Experimental.UIElements.Spacing = UnityEngine.Experimental.UIElements.Spacing

---@param r UnityEngine.Rect
---@param a UnityEngine.Experimental.UIElements.Spacing
---@return UnityEngine.Rect
function UnityEngine.Experimental.UIElements.Spacing.op_Addition(r, a)end
---@param r UnityEngine.Rect
---@param a UnityEngine.Experimental.UIElements.Spacing
---@return UnityEngine.Rect
function UnityEngine.Experimental.UIElements.Spacing.op_Subtraction(r, a)end
---@class UnityEngine.Experimental.UIElements.TemplateContainer : UnityEngine.Experimental.UIElements.BindableElement
---@field public templateId System.String @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
UnityEngine.Experimental.UIElements.TemplateContainer = {}
---@type UnityEngine.Experimental.UIElements.TemplateContainer
CS.UnityEngine.Experimental.UIElements.TemplateContainer = UnityEngine.Experimental.UIElements.TemplateContainer

---@class UnityEngine.Experimental.UIElements.TemplateContainer.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.TemplateContainer.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.TemplateContainer.UxmlFactory
CS.UnityEngine.Experimental.UIElements.TemplateContainer.UxmlFactory = UnityEngine.Experimental.UIElements.TemplateContainer.UxmlFactory

---@class UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits
CS.UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits = UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.TemplateContainer.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.TextElement : UnityEngine.Experimental.UIElements.VisualElement
---@field public text System.String @ setter getter
UnityEngine.Experimental.UIElements.TextElement = {}
---@type UnityEngine.Experimental.UIElements.TextElement
CS.UnityEngine.Experimental.UIElements.TextElement = UnityEngine.Experimental.UIElements.TextElement

---@param textToMeasure System.String
---@param width System.Single
---@param widthMode UnityEngine.Experimental.UIElements.VisualElement.MeasureMode
---@param height System.Single
---@param heightMode UnityEngine.Experimental.UIElements.VisualElement.MeasureMode
---@return UnityEngine.Vector2
function UnityEngine.Experimental.UIElements.TextElement:MeasureTextSize(textToMeasure, width, widthMode, height, heightMode)end
---@class UnityEngine.Experimental.UIElements.TextElement.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.TextElement.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.TextElement.UxmlFactory
CS.UnityEngine.Experimental.UIElements.TextElement.UxmlFactory = UnityEngine.Experimental.UIElements.TextElement.UxmlFactory

---@class UnityEngine.Experimental.UIElements.TextElement.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.TextElement.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
CS.UnityEngine.Experimental.UIElements.TextElement.UxmlTraits = UnityEngine.Experimental.UIElements.TextElement.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.TextElement.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.UQuery : System.Object
UnityEngine.Experimental.UIElements.UQuery = {}
---@type UnityEngine.Experimental.UIElements.UQuery
CS.UnityEngine.Experimental.UIElements.UQuery = UnityEngine.Experimental.UIElements.UQuery

---@class UnityEngine.Experimental.UIElements.UQuery.QueryBuilder : System.ValueType
UnityEngine.Experimental.UIElements.UQuery.QueryBuilder = {}
---@type UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
CS.UnityEngine.Experimental.UIElements.UQuery.QueryBuilder = UnityEngine.Experimental.UIElements.UQuery.QueryBuilder

---@param classname System.String
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Class(classname)end
---@param id System.String
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Name(id)end
---@overload fun(name:System.String, classNames:System.String[]):any
---@overload fun(classNames:System.String[]):any
---@overload fun():any
---@overload fun():any
---@overload fun():any
---@param name System.String
---@param classNames System.String[]
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Descendents(name, classNames)end
---@overload fun(name:System.String, classes:System.String[]):any
---@overload fun(classes:System.String[]):any
---@overload fun():any
---@overload fun():any
---@overload fun():any
---@param name System.String
---@param classes System.String[]
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Children(name, classes)end
---@overload fun(name:System.String, classes:System.String[]):any
---@overload fun(classes:System.String[]):any
---@overload fun():any
---@overload fun():any
---@overload fun():any
---@param name System.String
---@param classes System.String[]
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:OfType(name, classes)end
---@param selectorPredicate any
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Where(selectorPredicate)end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Active()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotActive()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Visible()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotVisible()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Hovered()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotHovered()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Checked()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotChecked()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Selected()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotSelected()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Enabled()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotEnabled()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Focused()end
---@return UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:NotFocused()end
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Build()end
---@param s UnityEngine.Experimental.UIElements.UQuery.QueryBuilder
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder.op_Implicit(s)end
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:First()end
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:Last()end
---@overload fun(results:any):System.Void
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:ToList()end
---@param index System.Int32
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:AtIndex(index)end
---@overload fun(funcCall:any):System.Void
---@overload fun(result:any, funcCall:any):System.Void
---@param funcCall any
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryBuilder:ForEach(funcCall)end
---@class UnityEngine.Experimental.UIElements.UQuery.QueryState : System.ValueType
UnityEngine.Experimental.UIElements.UQuery.QueryState = {}
---@type UnityEngine.Experimental.UIElements.UQuery.QueryState
CS.UnityEngine.Experimental.UIElements.UQuery.QueryState = UnityEngine.Experimental.UIElements.UQuery.QueryState

---@param element UnityEngine.Experimental.UIElements.VisualElement
---@return UnityEngine.Experimental.UIElements.UQuery.QueryState
function UnityEngine.Experimental.UIElements.UQuery.QueryState:RebuildOn(element)end
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryState:First()end
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryState:Last()end
---@overload fun(results:any):System.Void
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryState:ToList()end
---@param index System.Int32
---@return any
function UnityEngine.Experimental.UIElements.UQuery.QueryState:AtIndex(index)end
---@overload fun(funcCall:any):any
---@overload fun(result:any, funcCall:any):System.Void
---@param funcCall any
---@return System.Void
function UnityEngine.Experimental.UIElements.UQuery.QueryState:ForEach(funcCall)end
---@class UnityEngine.Experimental.UIElements.UQueryExtensions : System.Object
UnityEngine.Experimental.UIElements.UQueryExtensions = {}
---@type UnityEngine.Experimental.UIElements.UQueryExtensions
CS.UnityEngine.Experimental.UIElements.UQueryExtensions = UnityEngine.Experimental.UIElements.UQueryExtensions

---@class UnityEngine.Experimental.UIElements.VisualContainer : UnityEngine.Experimental.UIElements.VisualElement
UnityEngine.Experimental.UIElements.VisualContainer = {}
---@type UnityEngine.Experimental.UIElements.VisualContainer
CS.UnityEngine.Experimental.UIElements.VisualContainer = UnityEngine.Experimental.UIElements.VisualContainer

---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualContainer:AddChild(child)end
---@param index System.Int32
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualContainer:InsertChild(index, child)end
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualContainer:RemoveChild(child)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualContainer:RemoveChildAt(index)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualContainer:ClearChildren()end
---@param index System.Int32
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.VisualContainer:GetChildAt(index)end
---@class UnityEngine.Experimental.UIElements.VisualContainer.UxmlFactory : UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory
---@field public uxmlName System.String @  getter
---@field public uxmlNamespace System.String @  getter
---@field public uxmlQualifiedName System.String @  getter
---@field public substituteForTypeName System.String @  getter
---@field public substituteForTypeNamespace System.String @  getter
---@field public substituteForTypeQualifiedName System.String @  getter
UnityEngine.Experimental.UIElements.VisualContainer.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.VisualContainer.UxmlFactory
CS.UnityEngine.Experimental.UIElements.VisualContainer.UxmlFactory = UnityEngine.Experimental.UIElements.VisualContainer.UxmlFactory

---@class UnityEngine.Experimental.UIElements.PickingMode : System.Enum
UnityEngine.Experimental.UIElements.PickingMode = {}
---@type UnityEngine.Experimental.UIElements.PickingMode
CS.UnityEngine.Experimental.UIElements.PickingMode = UnityEngine.Experimental.UIElements.PickingMode

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.PickingMode.Position = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.PickingMode.Ignore = 1

---@class UnityEngine.Experimental.UIElements.VisualElement : UnityEngine.Experimental.UIElements.Focusable
---@field public persistenceKey System.String @ setter getter
---@field public userData System.Object @ setter getter
---@field public canGrabFocus System.Boolean @  getter
---@field public focusController UnityEngine.Experimental.UIElements.FocusController @  getter
---@field public transform UnityEngine.Experimental.UIElements.ITransform @  getter
---@field public layout UnityEngine.Rect @ setter getter
---@field public contentRect UnityEngine.Rect @  getter
---@field public worldBound UnityEngine.Rect @  getter
---@field public localBound UnityEngine.Rect @  getter
---@field public worldTransform UnityEngine.Matrix4x4 @  getter
---@field public pickingMode UnityEngine.Experimental.UIElements.PickingMode @ setter getter
---@field public name System.String @ setter getter
---@field public enabled System.Boolean @ setter getter
---@field public enabledInHierarchy System.Boolean @  getter
---@field public enabledSelf System.Boolean @  getter
---@field public visible System.Boolean @ setter getter
---@field public dataWatch UnityEngine.Experimental.UIElements.IUIElementDataWatch @  getter
---@field public shadow UnityEngine.Experimental.UIElements.VisualElement.Hierarchy @ setter getter
---@field public clippingOptions UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions @ setter getter
---@field public parent UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public panel UnityEngine.Experimental.UIElements.IPanel @  getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public Item UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public childCount System.Int32 @  getter
---@field public schedule UnityEngine.Experimental.UIElements.IVisualElementScheduler @  getter
---@field public style UnityEngine.Experimental.UIElements.IStyle @  getter
---@field public tooltip System.String @ setter getter
---@field public defaultFocusIndex System.Int32
UnityEngine.Experimental.UIElements.VisualElement = {}
---@type UnityEngine.Experimental.UIElements.VisualElement
CS.UnityEngine.Experimental.UIElements.VisualElement = UnityEngine.Experimental.UIElements.VisualElement

---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Focus()end
---@param e UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:SendEvent(e)end
---@param type UnityEngine.Experimental.UIElements.ChangeType
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Dirty(type)end
---@param type UnityEngine.Experimental.UIElements.ChangeType
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:IsDirty(type)end
---@param type UnityEngine.Experimental.UIElements.ChangeType
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:AnyDirty(type)end
---@param type UnityEngine.Experimental.UIElements.ChangeType
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:ClearDirty(type)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:SetEnabled(value)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:MarkDirtyRepaint()end
---@return System.String
function UnityEngine.Experimental.UIElements.VisualElement:GetFullHierarchicalPersistenceKey()end
---@overload fun(existing:UnityEngine.ScriptableObject, key:System.String):any
---@param existing System.Object
---@param key System.String
---@return any
function UnityEngine.Experimental.UIElements.VisualElement:GetOrCreatePersistentData(existing, key)end
---@param obj System.Object
---@param key System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:OverwriteFromPersistedData(obj, key)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:SavePersistentData()end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:OnPersistentDataReady()end
---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:ContainsPoint(localPoint)end
---@param rectangle UnityEngine.Rect
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:Overlaps(rectangle)end
---@param size UnityEngine.Vector2
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:SetSize(size)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:ResetPositionProperties()end
---@return System.String
function UnityEngine.Experimental.UIElements.VisualElement:ToString()end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:ClearClassList()end
---@param className System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:AddToClassList(className)end
---@param className System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:RemoveFromClassList(className)end
---@param className System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:ToggleInClassList(className)end
---@param className System.String
---@param enable System.Boolean
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:EnableInClassList(className, enable)end
---@param cls System.String
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:ClassListContains(cls)end
---@return System.Object
function UnityEngine.Experimental.UIElements.VisualElement:FindAncestorUserData()end
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Add(child)end
---@param index System.Int32
---@param element UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Insert(index, element)end
---@param element UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Remove(element)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:RemoveAt(index)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Clear()end
---@param index System.Int32
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.VisualElement:ElementAt(index)end
---@param element UnityEngine.Experimental.UIElements.VisualElement
---@return System.Int32
function UnityEngine.Experimental.UIElements.VisualElement:IndexOf(element)end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Experimental.UIElements.VisualElement:Children()end
---@param comp System.Comparison
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:Sort(comp)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:BringToFront()end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:SendToBack()end
---@param sibling UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:PlaceBehind(sibling)end
---@param sibling UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:PlaceInFront(sibling)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:RemoveFromHierarchy()end
---@return any
function UnityEngine.Experimental.UIElements.VisualElement:GetFirstOfType()end
---@return any
function UnityEngine.Experimental.UIElements.VisualElement:GetFirstAncestorOfType()end
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:Contains(child)end
---@param other UnityEngine.Experimental.UIElements.VisualElement
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.VisualElement:FindCommonAncestor(other)end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.Experimental.UIElements.VisualElement:GetEnumerator()end
---@param sheetPath System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:AddStyleSheetPath(sheetPath)end
---@param sheetPath System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement:RemoveStyleSheetPath(sheetPath)end
---@param sheetPath System.String
---@return System.Boolean
function UnityEngine.Experimental.UIElements.VisualElement:HasStyleSheetPath(sheetPath)end
---@class UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory
CS.UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory = UnityEngine.Experimental.UIElements.VisualElement.UxmlFactory

---@class UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits : UnityEngine.Experimental.UIElements.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
CS.UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits = UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.VisualElement.MeasureMode : System.Enum
UnityEngine.Experimental.UIElements.VisualElement.MeasureMode = {}
---@type UnityEngine.Experimental.UIElements.VisualElement.MeasureMode
CS.UnityEngine.Experimental.UIElements.VisualElement.MeasureMode = UnityEngine.Experimental.UIElements.VisualElement.MeasureMode

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.VisualElement.MeasureMode.Undefined = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.VisualElement.MeasureMode.Exactly = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.VisualElement.MeasureMode.AtMost = 2

---@class UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions : System.Enum
UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions = {}
---@type UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions
CS.UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions = UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions.ClipContents = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions.NoClipping = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.VisualElement.ClippingOptions.ClipAndCacheContents = 2

---@class UnityEngine.Experimental.UIElements.VisualElement.Hierarchy : System.ValueType
---@field public parent UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public childCount System.Int32 @  getter
---@field public Item UnityEngine.Experimental.UIElements.VisualElement @  getter
UnityEngine.Experimental.UIElements.VisualElement.Hierarchy = {}
---@type UnityEngine.Experimental.UIElements.VisualElement.Hierarchy
CS.UnityEngine.Experimental.UIElements.VisualElement.Hierarchy = UnityEngine.Experimental.UIElements.VisualElement.Hierarchy

---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Add(child)end
---@param index System.Int32
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Insert(index, child)end
---@param child UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Remove(child)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:RemoveAt(index)end
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Clear()end
---@param element UnityEngine.Experimental.UIElements.VisualElement
---@return System.Int32
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:IndexOf(element)end
---@param index System.Int32
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:ElementAt(index)end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Children()end
---@param comp System.Comparison
---@return System.Void
function UnityEngine.Experimental.UIElements.VisualElement.Hierarchy:Sort(comp)end
---@class UnityEngine.Experimental.UIElements.VisualElementExtensions : System.Object
UnityEngine.Experimental.UIElements.VisualElementExtensions = {}
---@type UnityEngine.Experimental.UIElements.VisualElementExtensions
CS.UnityEngine.Experimental.UIElements.VisualElementExtensions = UnityEngine.Experimental.UIElements.VisualElementExtensions

---@class UnityEngine.Experimental.UIElements.VisualElementFocusChangeDirection : UnityEngine.Experimental.UIElements.FocusChangeDirection
---@field public left UnityEngine.Experimental.UIElements.FocusChangeDirection @static  getter
---@field public right UnityEngine.Experimental.UIElements.FocusChangeDirection @static  getter
UnityEngine.Experimental.UIElements.VisualElementFocusChangeDirection = {}
---@type UnityEngine.Experimental.UIElements.VisualElementFocusChangeDirection
CS.UnityEngine.Experimental.UIElements.VisualElementFocusChangeDirection = UnityEngine.Experimental.UIElements.VisualElementFocusChangeDirection

---@class UnityEngine.Experimental.UIElements.VisualElementFocusRing : System.Object
---@field public defaultFocusOrder UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder @ setter getter
UnityEngine.Experimental.UIElements.VisualElementFocusRing = {}
---@type UnityEngine.Experimental.UIElements.VisualElementFocusRing
CS.UnityEngine.Experimental.UIElements.VisualElementFocusRing = UnityEngine.Experimental.UIElements.VisualElementFocusRing

---@param currentFocusable UnityEngine.Experimental.UIElements.Focusable
---@param e UnityEngine.Experimental.UIElements.EventBase
---@return UnityEngine.Experimental.UIElements.FocusChangeDirection
function UnityEngine.Experimental.UIElements.VisualElementFocusRing:GetFocusChangeDirection(currentFocusable, e)end
---@param currentFocusable UnityEngine.Experimental.UIElements.Focusable
---@param direction UnityEngine.Experimental.UIElements.FocusChangeDirection
---@return UnityEngine.Experimental.UIElements.Focusable
function UnityEngine.Experimental.UIElements.VisualElementFocusRing:GetNextFocusable(currentFocusable, direction)end
---@class UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder : System.Enum
UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder = {}
---@type UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder
CS.UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder = UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder.ChildOrder = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder.PositionXY = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.VisualElementFocusRing.DefaultFocusOrder.PositionYX = 2

---@class UnityEngine.Experimental.UIElements.Flex : System.ValueType
---@field public grow System.Single @ setter getter
---@field public shrink System.Single @ setter getter
---@field public basis System.Single @ setter getter
UnityEngine.Experimental.UIElements.Flex = {}
---@type UnityEngine.Experimental.UIElements.Flex
CS.UnityEngine.Experimental.UIElements.Flex = UnityEngine.Experimental.UIElements.Flex

---@class UnityEngine.Experimental.UIElements.IBindingExtensions : System.Object
UnityEngine.Experimental.UIElements.IBindingExtensions = {}
---@type UnityEngine.Experimental.UIElements.IBindingExtensions
CS.UnityEngine.Experimental.UIElements.IBindingExtensions = UnityEngine.Experimental.UIElements.IBindingExtensions

---@class UnityEngine.Experimental.UIElements.TextField : UnityEngine.Experimental.UIElements.TextInputFieldBase
---@field public multiline System.Boolean @ setter getter
---@field public isPasswordField System.Boolean @ setter 
---@field public value System.String @ setter getter
UnityEngine.Experimental.UIElements.TextField = {}
---@type UnityEngine.Experimental.UIElements.TextField
CS.UnityEngine.Experimental.UIElements.TextField = UnityEngine.Experimental.UIElements.TextField

---@param newValue System.String
---@return System.Void
function UnityEngine.Experimental.UIElements.TextField:SetValueWithoutNotify(newValue)end
---@param cursorIndex System.Int32
---@param selectionIndex System.Int32
---@return System.Void
function UnityEngine.Experimental.UIElements.TextField:SelectRange(cursorIndex, selectionIndex)end
---@return System.Void
function UnityEngine.Experimental.UIElements.TextField:OnPersistentDataReady()end
---@class UnityEngine.Experimental.UIElements.TextField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.TextField.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.TextField.UxmlFactory
CS.UnityEngine.Experimental.UIElements.TextField.UxmlFactory = UnityEngine.Experimental.UIElements.TextField.UxmlFactory

---@class UnityEngine.Experimental.UIElements.TextField.UxmlTraits : UnityEngine.Experimental.UIElements.TextInputFieldBase
UnityEngine.Experimental.UIElements.TextField.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.TextField.UxmlTraits
CS.UnityEngine.Experimental.UIElements.TextField.UxmlTraits = UnityEngine.Experimental.UIElements.TextField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.TextField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.TextInputFieldBase : any
---@field public text System.String @ setter getter
---@field public isPasswordField System.Boolean @ setter getter
---@field public selectionColor UnityEngine.Color @  getter
---@field public cursorColor UnityEngine.Color @  getter
---@field public cursorIndex System.Int32 @  getter
---@field public selectIndex System.Int32 @  getter
---@field public maxLength System.Int32 @ setter getter
---@field public doubleClickSelectsWord System.Boolean @ setter getter
---@field public tripleClickSelectsLine System.Boolean @ setter getter
---@field public isDelayed System.Boolean @ setter getter
---@field public maskChar System.Char @ setter getter
UnityEngine.Experimental.UIElements.TextInputFieldBase = {}
---@type UnityEngine.Experimental.UIElements.TextInputFieldBase
CS.UnityEngine.Experimental.UIElements.TextInputFieldBase = UnityEngine.Experimental.UIElements.TextInputFieldBase

---@return System.Void
function UnityEngine.Experimental.UIElements.TextInputFieldBase:SelectAll()end
---@class UnityEngine.Experimental.UIElements.TextInputFieldBase : any
UnityEngine.Experimental.UIElements.TextInputFieldBase = {}
---@type UnityEngine.Experimental.UIElements.TextInputFieldBase
CS.UnityEngine.Experimental.UIElements.TextInputFieldBase = UnityEngine.Experimental.UIElements.TextInputFieldBase

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.TextInputFieldBase:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.Toggle : UnityEngine.Experimental.UIElements.BaseField
---@field public text System.String @ setter getter
UnityEngine.Experimental.UIElements.Toggle = {}
---@type UnityEngine.Experimental.UIElements.Toggle
CS.UnityEngine.Experimental.UIElements.Toggle = UnityEngine.Experimental.UIElements.Toggle

---@param newValue System.Boolean
---@return System.Void
function UnityEngine.Experimental.UIElements.Toggle:SetValueWithoutNotify(newValue)end
---@param clickEvent System.Action
---@return System.Void
function UnityEngine.Experimental.UIElements.Toggle:OnToggle(clickEvent)end
---@class UnityEngine.Experimental.UIElements.Toggle.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEngine.Experimental.UIElements.Toggle.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.Toggle.UxmlFactory
CS.UnityEngine.Experimental.UIElements.Toggle.UxmlFactory = UnityEngine.Experimental.UIElements.Toggle.UxmlFactory

---@class UnityEngine.Experimental.UIElements.Toggle.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEngine.Experimental.UIElements.Toggle.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.Toggle.UxmlTraits
CS.UnityEngine.Experimental.UIElements.Toggle.UxmlTraits = UnityEngine.Experimental.UIElements.Toggle.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.Toggle.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.MouseCaptureEventBase : any
---@field public relatedTarget UnityEngine.Experimental.UIElements.IEventHandler @ setter getter
UnityEngine.Experimental.UIElements.MouseCaptureEventBase = {}
---@type UnityEngine.Experimental.UIElements.MouseCaptureEventBase
CS.UnityEngine.Experimental.UIElements.MouseCaptureEventBase = UnityEngine.Experimental.UIElements.MouseCaptureEventBase

---@param target UnityEngine.Experimental.UIElements.IEventHandler
---@param relatedTarget UnityEngine.Experimental.UIElements.IEventHandler
---@return any
function UnityEngine.Experimental.UIElements.MouseCaptureEventBase.GetPooled(target, relatedTarget)end
---@class UnityEngine.Experimental.UIElements.MouseCaptureOutEvent : UnityEngine.Experimental.UIElements.MouseCaptureEventBase
UnityEngine.Experimental.UIElements.MouseCaptureOutEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseCaptureOutEvent
CS.UnityEngine.Experimental.UIElements.MouseCaptureOutEvent = UnityEngine.Experimental.UIElements.MouseCaptureOutEvent

---@class UnityEngine.Experimental.UIElements.MouseCaptureEvent : UnityEngine.Experimental.UIElements.MouseCaptureEventBase
UnityEngine.Experimental.UIElements.MouseCaptureEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseCaptureEvent
CS.UnityEngine.Experimental.UIElements.MouseCaptureEvent = UnityEngine.Experimental.UIElements.MouseCaptureEvent

---@class UnityEngine.Experimental.UIElements.ChangeEvent : any
---@field public previousValue any @ setter getter
---@field public newValue any @ setter getter
UnityEngine.Experimental.UIElements.ChangeEvent = {}
---@type UnityEngine.Experimental.UIElements.ChangeEvent
CS.UnityEngine.Experimental.UIElements.ChangeEvent = UnityEngine.Experimental.UIElements.ChangeEvent

---@param previousValue any
---@param newValue any
---@return UnityEngine.Experimental.UIElements.ChangeEvent
function UnityEngine.Experimental.UIElements.ChangeEvent.GetPooled(previousValue, newValue)end
---@class UnityEngine.Experimental.UIElements.CommandEventBase : any
---@field public commandName System.String @ setter getter
UnityEngine.Experimental.UIElements.CommandEventBase = {}
---@type UnityEngine.Experimental.UIElements.CommandEventBase
CS.UnityEngine.Experimental.UIElements.CommandEventBase = UnityEngine.Experimental.UIElements.CommandEventBase

---@overload fun(commandName:System.String):any
---@param systemEvent UnityEngine.Event
---@return any
function UnityEngine.Experimental.UIElements.CommandEventBase.GetPooled(systemEvent)end
---@class UnityEngine.Experimental.UIElements.ValidateCommandEvent : UnityEngine.Experimental.UIElements.CommandEventBase
UnityEngine.Experimental.UIElements.ValidateCommandEvent = {}
---@type UnityEngine.Experimental.UIElements.ValidateCommandEvent
CS.UnityEngine.Experimental.UIElements.ValidateCommandEvent = UnityEngine.Experimental.UIElements.ValidateCommandEvent

---@class UnityEngine.Experimental.UIElements.ExecuteCommandEvent : UnityEngine.Experimental.UIElements.CommandEventBase
UnityEngine.Experimental.UIElements.ExecuteCommandEvent = {}
---@type UnityEngine.Experimental.UIElements.ExecuteCommandEvent
CS.UnityEngine.Experimental.UIElements.ExecuteCommandEvent = UnityEngine.Experimental.UIElements.ExecuteCommandEvent

---@class UnityEngine.Experimental.UIElements.DragAndDropEventBase : any
UnityEngine.Experimental.UIElements.DragAndDropEventBase = {}
---@type UnityEngine.Experimental.UIElements.DragAndDropEventBase
CS.UnityEngine.Experimental.UIElements.DragAndDropEventBase = UnityEngine.Experimental.UIElements.DragAndDropEventBase

---@class UnityEngine.Experimental.UIElements.DragExitedEvent : UnityEngine.Experimental.UIElements.DragAndDropEventBase
UnityEngine.Experimental.UIElements.DragExitedEvent = {}
---@type UnityEngine.Experimental.UIElements.DragExitedEvent
CS.UnityEngine.Experimental.UIElements.DragExitedEvent = UnityEngine.Experimental.UIElements.DragExitedEvent

---@class UnityEngine.Experimental.UIElements.DragEnterEvent : UnityEngine.Experimental.UIElements.DragAndDropEventBase
UnityEngine.Experimental.UIElements.DragEnterEvent = {}
---@type UnityEngine.Experimental.UIElements.DragEnterEvent
CS.UnityEngine.Experimental.UIElements.DragEnterEvent = UnityEngine.Experimental.UIElements.DragEnterEvent

---@class UnityEngine.Experimental.UIElements.DragLeaveEvent : UnityEngine.Experimental.UIElements.DragAndDropEventBase
UnityEngine.Experimental.UIElements.DragLeaveEvent = {}
---@type UnityEngine.Experimental.UIElements.DragLeaveEvent
CS.UnityEngine.Experimental.UIElements.DragLeaveEvent = UnityEngine.Experimental.UIElements.DragLeaveEvent

---@class UnityEngine.Experimental.UIElements.DragUpdatedEvent : UnityEngine.Experimental.UIElements.DragAndDropEventBase
UnityEngine.Experimental.UIElements.DragUpdatedEvent = {}
---@type UnityEngine.Experimental.UIElements.DragUpdatedEvent
CS.UnityEngine.Experimental.UIElements.DragUpdatedEvent = UnityEngine.Experimental.UIElements.DragUpdatedEvent

---@class UnityEngine.Experimental.UIElements.DragPerformEvent : UnityEngine.Experimental.UIElements.DragAndDropEventBase
UnityEngine.Experimental.UIElements.DragPerformEvent = {}
---@type UnityEngine.Experimental.UIElements.DragPerformEvent
CS.UnityEngine.Experimental.UIElements.DragPerformEvent = UnityEngine.Experimental.UIElements.DragPerformEvent

---@class UnityEngine.Experimental.UIElements.EventBase : System.Object
---@field public timestamp System.Int64 @ setter getter
---@field public bubbles System.Boolean @  getter
---@field public capturable System.Boolean @  getter
---@field public tricklesDown System.Boolean @  getter
---@field public target UnityEngine.Experimental.UIElements.IEventHandler @ setter getter
---@field public isPropagationStopped System.Boolean @ setter getter
---@field public isImmediatePropagationStopped System.Boolean @ setter getter
---@field public isDefaultPrevented System.Boolean @ setter getter
---@field public propagationPhase UnityEngine.Experimental.UIElements.PropagationPhase @ setter getter
---@field public currentTarget UnityEngine.Experimental.UIElements.IEventHandler @ setter getter
---@field public dispatch System.Boolean @ setter getter
---@field public imguiEvent UnityEngine.Event @ setter getter
---@field public originalMousePosition UnityEngine.Vector2 @ setter getter
UnityEngine.Experimental.UIElements.EventBase = {}
---@type UnityEngine.Experimental.UIElements.EventBase
CS.UnityEngine.Experimental.UIElements.EventBase = UnityEngine.Experimental.UIElements.EventBase

---@return System.Int64
function UnityEngine.Experimental.UIElements.EventBase:GetEventTypeId()end
---@return System.Void
function UnityEngine.Experimental.UIElements.EventBase:StopPropagation()end
---@return System.Void
function UnityEngine.Experimental.UIElements.EventBase:StopImmediatePropagation()end
---@return System.Void
function UnityEngine.Experimental.UIElements.EventBase:PreventDefault()end
---@return System.Void
function UnityEngine.Experimental.UIElements.EventBase:Dispose()end
---@class UnityEngine.Experimental.UIElements.EventBase : UnityEngine.Experimental.UIElements.EventBase
UnityEngine.Experimental.UIElements.EventBase = {}
---@type UnityEngine.Experimental.UIElements.EventBase
CS.UnityEngine.Experimental.UIElements.EventBase = UnityEngine.Experimental.UIElements.EventBase

---@return System.Int64
function UnityEngine.Experimental.UIElements.EventBase.TypeId()end
---@return any
function UnityEngine.Experimental.UIElements.EventBase.GetPooled()end
---@return System.Void
function UnityEngine.Experimental.UIElements.EventBase:Dispose()end
---@return System.Int64
function UnityEngine.Experimental.UIElements.EventBase:GetEventTypeId()end
---@class UnityEngine.Experimental.UIElements.Capture : System.Enum
UnityEngine.Experimental.UIElements.Capture = {}
---@type UnityEngine.Experimental.UIElements.Capture
CS.UnityEngine.Experimental.UIElements.Capture = UnityEngine.Experimental.UIElements.Capture

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.Capture.NoCapture = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.Capture.Capture = 1

---@class UnityEngine.Experimental.UIElements.TrickleDown : System.Enum
UnityEngine.Experimental.UIElements.TrickleDown = {}
---@type UnityEngine.Experimental.UIElements.TrickleDown
CS.UnityEngine.Experimental.UIElements.TrickleDown = UnityEngine.Experimental.UIElements.TrickleDown

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.TrickleDown.NoTrickleDown = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.TrickleDown.TrickleDown = 1

---@class UnityEngine.Experimental.UIElements.CallbackEventHandler : System.Object
UnityEngine.Experimental.UIElements.CallbackEventHandler = {}
---@type UnityEngine.Experimental.UIElements.CallbackEventHandler
CS.UnityEngine.Experimental.UIElements.CallbackEventHandler = UnityEngine.Experimental.UIElements.CallbackEventHandler

---@overload fun(callback:any):System.Void
---@overload fun(callback:any):System.Void
---@overload fun(callback:any, userArgs:any, useCapture:UnityEngine.Experimental.UIElements.Capture):System.Void
---@overload fun(callback:any, userArgs:any):System.Void
---@overload fun(callback:any, userArgs:any):System.Void
---@param callback any
---@param useCapture UnityEngine.Experimental.UIElements.Capture
---@return System.Void
function UnityEngine.Experimental.UIElements.CallbackEventHandler:RegisterCallback(callback, useCapture)end
---@overload fun(callback:any):System.Void
---@overload fun(callback:any):System.Void
---@overload fun(callback:any, useCapture:UnityEngine.Experimental.UIElements.Capture):System.Void
---@overload fun(callback:any):System.Void
---@overload fun(callback:any):System.Void
---@param callback any
---@param useCapture UnityEngine.Experimental.UIElements.Capture
---@return System.Void
function UnityEngine.Experimental.UIElements.CallbackEventHandler:UnregisterCallback(callback, useCapture)end
---@param e UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.CallbackEventHandler:SendEvent(e)end
---@param evt UnityEngine.Experimental.UIElements.EventBase
---@return System.Void
function UnityEngine.Experimental.UIElements.CallbackEventHandler:HandleEvent(evt)end
---@return System.Boolean
function UnityEngine.Experimental.UIElements.CallbackEventHandler:HasTrickleDownHandlers()end
---@return System.Boolean
function UnityEngine.Experimental.UIElements.CallbackEventHandler:HasBubbleUpHandlers()end
---@return System.Boolean
function UnityEngine.Experimental.UIElements.CallbackEventHandler:HasCaptureHandlers()end
---@return System.Boolean
function UnityEngine.Experimental.UIElements.CallbackEventHandler:HasBubbleHandlers()end
---@class UnityEngine.Experimental.UIElements.FocusEventBase : any
---@field public relatedTarget UnityEngine.Experimental.UIElements.Focusable @ setter getter
---@field public direction UnityEngine.Experimental.UIElements.FocusChangeDirection @ setter getter
UnityEngine.Experimental.UIElements.FocusEventBase = {}
---@type UnityEngine.Experimental.UIElements.FocusEventBase
CS.UnityEngine.Experimental.UIElements.FocusEventBase = UnityEngine.Experimental.UIElements.FocusEventBase

---@param target UnityEngine.Experimental.UIElements.IEventHandler
---@param relatedTarget UnityEngine.Experimental.UIElements.Focusable
---@param direction UnityEngine.Experimental.UIElements.FocusChangeDirection
---@param focusController UnityEngine.Experimental.UIElements.FocusController
---@return any
function UnityEngine.Experimental.UIElements.FocusEventBase.GetPooled(target, relatedTarget, direction, focusController)end
---@class UnityEngine.Experimental.UIElements.FocusOutEvent : UnityEngine.Experimental.UIElements.FocusEventBase
UnityEngine.Experimental.UIElements.FocusOutEvent = {}
---@type UnityEngine.Experimental.UIElements.FocusOutEvent
CS.UnityEngine.Experimental.UIElements.FocusOutEvent = UnityEngine.Experimental.UIElements.FocusOutEvent

---@class UnityEngine.Experimental.UIElements.BlurEvent : UnityEngine.Experimental.UIElements.FocusEventBase
UnityEngine.Experimental.UIElements.BlurEvent = {}
---@type UnityEngine.Experimental.UIElements.BlurEvent
CS.UnityEngine.Experimental.UIElements.BlurEvent = UnityEngine.Experimental.UIElements.BlurEvent

---@class UnityEngine.Experimental.UIElements.FocusInEvent : UnityEngine.Experimental.UIElements.FocusEventBase
UnityEngine.Experimental.UIElements.FocusInEvent = {}
---@type UnityEngine.Experimental.UIElements.FocusInEvent
CS.UnityEngine.Experimental.UIElements.FocusInEvent = UnityEngine.Experimental.UIElements.FocusInEvent

---@class UnityEngine.Experimental.UIElements.FocusEvent : UnityEngine.Experimental.UIElements.FocusEventBase
UnityEngine.Experimental.UIElements.FocusEvent = {}
---@type UnityEngine.Experimental.UIElements.FocusEvent
CS.UnityEngine.Experimental.UIElements.FocusEvent = UnityEngine.Experimental.UIElements.FocusEvent

---@class UnityEngine.Experimental.UIElements.InputEvent : UnityEngine.Experimental.UIElements.EventBase
---@field public previousData System.String @ setter getter
---@field public newData System.String @ setter getter
UnityEngine.Experimental.UIElements.InputEvent = {}
---@type UnityEngine.Experimental.UIElements.InputEvent
CS.UnityEngine.Experimental.UIElements.InputEvent = UnityEngine.Experimental.UIElements.InputEvent

---@param previousData System.String
---@param newData System.String
---@return UnityEngine.Experimental.UIElements.InputEvent
function UnityEngine.Experimental.UIElements.InputEvent.GetPooled(previousData, newData)end
---@class UnityEngine.Experimental.UIElements.KeyboardEventBase : any
---@field public modifiers UnityEngine.EventModifiers @ setter getter
---@field public character System.Char @ setter getter
---@field public keyCode UnityEngine.KeyCode @ setter getter
---@field public shiftKey System.Boolean @  getter
---@field public ctrlKey System.Boolean @  getter
---@field public commandKey System.Boolean @  getter
---@field public altKey System.Boolean @  getter
---@field public actionKey System.Boolean @  getter
UnityEngine.Experimental.UIElements.KeyboardEventBase = {}
---@type UnityEngine.Experimental.UIElements.KeyboardEventBase
CS.UnityEngine.Experimental.UIElements.KeyboardEventBase = UnityEngine.Experimental.UIElements.KeyboardEventBase

---@overload fun(c:System.Char, keyCode:UnityEngine.KeyCode, modifiers:UnityEngine.EventModifiers):any
---@param systemEvent UnityEngine.Event
---@return any
function UnityEngine.Experimental.UIElements.KeyboardEventBase.GetPooled(systemEvent)end
---@class UnityEngine.Experimental.UIElements.KeyDownEvent : UnityEngine.Experimental.UIElements.KeyboardEventBase
UnityEngine.Experimental.UIElements.KeyDownEvent = {}
---@type UnityEngine.Experimental.UIElements.KeyDownEvent
CS.UnityEngine.Experimental.UIElements.KeyDownEvent = UnityEngine.Experimental.UIElements.KeyDownEvent

---@class UnityEngine.Experimental.UIElements.KeyUpEvent : UnityEngine.Experimental.UIElements.KeyboardEventBase
UnityEngine.Experimental.UIElements.KeyUpEvent = {}
---@type UnityEngine.Experimental.UIElements.KeyUpEvent
CS.UnityEngine.Experimental.UIElements.KeyUpEvent = UnityEngine.Experimental.UIElements.KeyUpEvent

---@class UnityEngine.Experimental.UIElements.GeometryChangedEvent : UnityEngine.Experimental.UIElements.EventBase
---@field public oldRect UnityEngine.Rect @ setter getter
---@field public newRect UnityEngine.Rect @ setter getter
UnityEngine.Experimental.UIElements.GeometryChangedEvent = {}
---@type UnityEngine.Experimental.UIElements.GeometryChangedEvent
CS.UnityEngine.Experimental.UIElements.GeometryChangedEvent = UnityEngine.Experimental.UIElements.GeometryChangedEvent

---@param oldRect UnityEngine.Rect
---@param newRect UnityEngine.Rect
---@return UnityEngine.Experimental.UIElements.GeometryChangedEvent
function UnityEngine.Experimental.UIElements.GeometryChangedEvent.GetPooled(oldRect, newRect)end
---@class UnityEngine.Experimental.UIElements.MouseEventBase : any
---@field public modifiers UnityEngine.EventModifiers @ setter getter
---@field public mousePosition UnityEngine.Vector2 @ setter getter
---@field public localMousePosition UnityEngine.Vector2 @ setter getter
---@field public mouseDelta UnityEngine.Vector2 @ setter getter
---@field public clickCount System.Int32 @ setter getter
---@field public button System.Int32 @ setter getter
---@field public shiftKey System.Boolean @  getter
---@field public ctrlKey System.Boolean @  getter
---@field public commandKey System.Boolean @  getter
---@field public altKey System.Boolean @  getter
---@field public actionKey System.Boolean @  getter
---@field public currentTarget UnityEngine.Experimental.UIElements.IEventHandler @ setter getter
UnityEngine.Experimental.UIElements.MouseEventBase = {}
---@type UnityEngine.Experimental.UIElements.MouseEventBase
CS.UnityEngine.Experimental.UIElements.MouseEventBase = UnityEngine.Experimental.UIElements.MouseEventBase

---@overload fun(mousePosition:UnityEngine.Vector2):any
---@overload fun(triggerEvent:UnityEngine.Experimental.UIElements.IMouseEvent):any
---@param systemEvent UnityEngine.Event
---@return any
function UnityEngine.Experimental.UIElements.MouseEventBase.GetPooled(systemEvent)end
---@class UnityEngine.Experimental.UIElements.MouseDownEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseDownEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseDownEvent
CS.UnityEngine.Experimental.UIElements.MouseDownEvent = UnityEngine.Experimental.UIElements.MouseDownEvent

---@class UnityEngine.Experimental.UIElements.MouseUpEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseUpEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseUpEvent
CS.UnityEngine.Experimental.UIElements.MouseUpEvent = UnityEngine.Experimental.UIElements.MouseUpEvent

---@class UnityEngine.Experimental.UIElements.MouseMoveEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseMoveEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseMoveEvent
CS.UnityEngine.Experimental.UIElements.MouseMoveEvent = UnityEngine.Experimental.UIElements.MouseMoveEvent

---@class UnityEngine.Experimental.UIElements.ContextClickEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.ContextClickEvent = {}
---@type UnityEngine.Experimental.UIElements.ContextClickEvent
CS.UnityEngine.Experimental.UIElements.ContextClickEvent = UnityEngine.Experimental.UIElements.ContextClickEvent

---@class UnityEngine.Experimental.UIElements.WheelEvent : UnityEngine.Experimental.UIElements.MouseEventBase
---@field public delta UnityEngine.Vector3 @ setter getter
UnityEngine.Experimental.UIElements.WheelEvent = {}
---@type UnityEngine.Experimental.UIElements.WheelEvent
CS.UnityEngine.Experimental.UIElements.WheelEvent = UnityEngine.Experimental.UIElements.WheelEvent

---@param systemEvent UnityEngine.Event
---@return UnityEngine.Experimental.UIElements.WheelEvent
function UnityEngine.Experimental.UIElements.WheelEvent.GetPooled(systemEvent)end
---@class UnityEngine.Experimental.UIElements.MouseEnterEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseEnterEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseEnterEvent
CS.UnityEngine.Experimental.UIElements.MouseEnterEvent = UnityEngine.Experimental.UIElements.MouseEnterEvent

---@class UnityEngine.Experimental.UIElements.MouseLeaveEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseLeaveEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseLeaveEvent
CS.UnityEngine.Experimental.UIElements.MouseLeaveEvent = UnityEngine.Experimental.UIElements.MouseLeaveEvent

---@class UnityEngine.Experimental.UIElements.MouseEnterWindowEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseEnterWindowEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseEnterWindowEvent
CS.UnityEngine.Experimental.UIElements.MouseEnterWindowEvent = UnityEngine.Experimental.UIElements.MouseEnterWindowEvent

---@class UnityEngine.Experimental.UIElements.MouseLeaveWindowEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseLeaveWindowEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseLeaveWindowEvent
CS.UnityEngine.Experimental.UIElements.MouseLeaveWindowEvent = UnityEngine.Experimental.UIElements.MouseLeaveWindowEvent

---@class UnityEngine.Experimental.UIElements.MouseOverEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseOverEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseOverEvent
CS.UnityEngine.Experimental.UIElements.MouseOverEvent = UnityEngine.Experimental.UIElements.MouseOverEvent

---@class UnityEngine.Experimental.UIElements.MouseOutEvent : UnityEngine.Experimental.UIElements.MouseEventBase
UnityEngine.Experimental.UIElements.MouseOutEvent = {}
---@type UnityEngine.Experimental.UIElements.MouseOutEvent
CS.UnityEngine.Experimental.UIElements.MouseOutEvent = UnityEngine.Experimental.UIElements.MouseOutEvent

---@class UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent : UnityEngine.Experimental.UIElements.MouseEventBase
---@field public menu UnityEngine.Experimental.UIElements.DropdownMenu @ setter getter
---@field public triggerEvent UnityEngine.Experimental.UIElements.EventBase @ setter getter
UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent = {}
---@type UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent
CS.UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent = UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent

---@param triggerEvent UnityEngine.Experimental.UIElements.EventBase
---@param menu UnityEngine.Experimental.UIElements.DropdownMenu
---@param target UnityEngine.Experimental.UIElements.IEventHandler
---@param menuManager UnityEngine.Experimental.UIElements.ContextualMenuManager
---@return UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent
function UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent.GetPooled(triggerEvent, menu, target, menuManager)end
---@class UnityEngine.Experimental.UIElements.PanelChangedEventBase : any
---@field public originPanel UnityEngine.Experimental.UIElements.IPanel @ setter getter
---@field public destinationPanel UnityEngine.Experimental.UIElements.IPanel @ setter getter
UnityEngine.Experimental.UIElements.PanelChangedEventBase = {}
---@type UnityEngine.Experimental.UIElements.PanelChangedEventBase
CS.UnityEngine.Experimental.UIElements.PanelChangedEventBase = UnityEngine.Experimental.UIElements.PanelChangedEventBase

---@param originPanel UnityEngine.Experimental.UIElements.IPanel
---@param destinationPanel UnityEngine.Experimental.UIElements.IPanel
---@return any
function UnityEngine.Experimental.UIElements.PanelChangedEventBase.GetPooled(originPanel, destinationPanel)end
---@class UnityEngine.Experimental.UIElements.AttachToPanelEvent : UnityEngine.Experimental.UIElements.PanelChangedEventBase
UnityEngine.Experimental.UIElements.AttachToPanelEvent = {}
---@type UnityEngine.Experimental.UIElements.AttachToPanelEvent
CS.UnityEngine.Experimental.UIElements.AttachToPanelEvent = UnityEngine.Experimental.UIElements.AttachToPanelEvent

---@class UnityEngine.Experimental.UIElements.DetachFromPanelEvent : UnityEngine.Experimental.UIElements.PanelChangedEventBase
UnityEngine.Experimental.UIElements.DetachFromPanelEvent = {}
---@type UnityEngine.Experimental.UIElements.DetachFromPanelEvent
CS.UnityEngine.Experimental.UIElements.DetachFromPanelEvent = UnityEngine.Experimental.UIElements.DetachFromPanelEvent

---@class UnityEngine.Experimental.UIElements.TooltipEvent : UnityEngine.Experimental.UIElements.EventBase
---@field public tooltip System.String @ setter getter
---@field public rect UnityEngine.Rect @ setter getter
UnityEngine.Experimental.UIElements.TooltipEvent = {}
---@type UnityEngine.Experimental.UIElements.TooltipEvent
CS.UnityEngine.Experimental.UIElements.TooltipEvent = UnityEngine.Experimental.UIElements.TooltipEvent

---@class UnityEngine.Experimental.UIElements.IMGUIEvent : UnityEngine.Experimental.UIElements.EventBase
UnityEngine.Experimental.UIElements.IMGUIEvent = {}
---@type UnityEngine.Experimental.UIElements.IMGUIEvent
CS.UnityEngine.Experimental.UIElements.IMGUIEvent = UnityEngine.Experimental.UIElements.IMGUIEvent

---@param systemEvent UnityEngine.Event
---@return UnityEngine.Experimental.UIElements.IMGUIEvent
function UnityEngine.Experimental.UIElements.IMGUIEvent.GetPooled(systemEvent)end
---@class UnityEngine.Experimental.UIElements.UxmlAttributeDescription : System.Object
---@field public name System.String @ setter getter
---@field public obsoleteNames System.String[] @ setter getter
---@field public type System.String @ setter getter
---@field public typeNamespace System.String @ setter getter
---@field public defaultValueAsString System.String @  getter
---@field public use UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use @ setter getter
---@field public restriction UnityEngine.Experimental.UIElements.UxmlTypeRestriction @ setter getter
UnityEngine.Experimental.UIElements.UxmlAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlAttributeDescription = UnityEngine.Experimental.UIElements.UxmlAttributeDescription

---@class UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use : System.Enum
UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use = {}
---@type UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use
CS.UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use = UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use

---@return System.Int32 value:0
UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use.None = 0
---@return System.Int32 value:1
UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use.Optional = 1
---@return System.Int32 value:2
UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use.Prohibited = 2
---@return System.Int32 value:3
UnityEngine.Experimental.UIElements.UxmlAttributeDescription.Use.Required = 3

---@class UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.String @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription = UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.String
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.String
function UnityEngine.Experimental.UIElements.UxmlStringAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.Single @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription = UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Single
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Single
function UnityEngine.Experimental.UIElements.UxmlFloatAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.Double @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription = UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Double
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Double
function UnityEngine.Experimental.UIElements.UxmlDoubleAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.Int32 @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription = UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Int32
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Int32
function UnityEngine.Experimental.UIElements.UxmlIntAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.Int64 @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription = UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Int64
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Int64
function UnityEngine.Experimental.UIElements.UxmlLongAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue System.Boolean @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription = UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Boolean
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlBoolAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue UnityEngine.Color @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription = UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):UnityEngine.Color
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return UnityEngine.Color
function UnityEngine.Experimental.UIElements.UxmlColorAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription : UnityEngine.Experimental.UIElements.UxmlAttributeDescription
---@field public defaultValue any @ setter getter
---@field public defaultValueAsString System.String @  getter
UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription
CS.UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription = UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):any
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return any
function UnityEngine.Experimental.UIElements.UxmlEnumAttributeDescription:GetValueFromBag(bag)end
---@class UnityEngine.Experimental.UIElements.UxmlChildElementDescription : System.Object
---@field public elementName System.String @ setter getter
---@field public elementNamespace System.String @ setter getter
UnityEngine.Experimental.UIElements.UxmlChildElementDescription = {}
---@type UnityEngine.Experimental.UIElements.UxmlChildElementDescription
CS.UnityEngine.Experimental.UIElements.UxmlChildElementDescription = UnityEngine.Experimental.UIElements.UxmlChildElementDescription

---@class UnityEngine.Experimental.UIElements.UxmlTraits : System.Object
---@field public canHaveAnyAttribute System.Boolean @ setter getter
---@field public uxmlAttributesDescription System.Collections.Generic.IEnumerable @  getter
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.UxmlTraits = {}
---@type UnityEngine.Experimental.UIElements.UxmlTraits
CS.UnityEngine.Experimental.UIElements.UxmlTraits = UnityEngine.Experimental.UIElements.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEngine.Experimental.UIElements.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEngine.Experimental.UIElements.UxmlFactory : System.Object
---@field public uxmlName System.String @  getter
---@field public uxmlNamespace System.String @  getter
---@field public uxmlQualifiedName System.String @  getter
---@field public canHaveAnyAttribute System.Boolean @  getter
---@field public uxmlAttributesDescription System.Collections.Generic.IEnumerable @  getter
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
---@field public substituteForTypeName System.String @  getter
---@field public substituteForTypeNamespace System.String @  getter
---@field public substituteForTypeQualifiedName System.String @  getter
---@field public CreatesType System.Type @  getter
UnityEngine.Experimental.UIElements.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.UxmlFactory
CS.UnityEngine.Experimental.UIElements.UxmlFactory = UnityEngine.Experimental.UIElements.UxmlFactory

---@overload fun(bag:UnityEngine.Experimental.UIElements.IUxmlAttributes, cc:UnityEngine.Experimental.UIElements.CreationContext):System.Boolean
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlFactory:AcceptsAttributeBag(bag)end
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.UxmlFactory:Create(bag, cc)end
---@class UnityEngine.Experimental.UIElements.UxmlFactory : any
UnityEngine.Experimental.UIElements.UxmlFactory = {}
---@type UnityEngine.Experimental.UIElements.UxmlFactory
CS.UnityEngine.Experimental.UIElements.UxmlFactory = UnityEngine.Experimental.UIElements.UxmlFactory

---@class UnityEngine.Experimental.UIElements.UxmlRootElementFactory : UnityEngine.Experimental.UIElements.UxmlFactory
---@field public uxmlName System.String @  getter
---@field public uxmlQualifiedName System.String @  getter
---@field public substituteForTypeName System.String @  getter
---@field public substituteForTypeNamespace System.String @  getter
---@field public substituteForTypeQualifiedName System.String @  getter
UnityEngine.Experimental.UIElements.UxmlRootElementFactory = {}
---@type UnityEngine.Experimental.UIElements.UxmlRootElementFactory
CS.UnityEngine.Experimental.UIElements.UxmlRootElementFactory = UnityEngine.Experimental.UIElements.UxmlRootElementFactory

---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.UxmlRootElementFactory:Create(bag, cc)end
---@class UnityEngine.Experimental.UIElements.UxmlRootElementTraits : UnityEngine.Experimental.UIElements.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEngine.Experimental.UIElements.UxmlRootElementTraits = {}
---@type UnityEngine.Experimental.UIElements.UxmlRootElementTraits
CS.UnityEngine.Experimental.UIElements.UxmlRootElementTraits = UnityEngine.Experimental.UIElements.UxmlRootElementTraits

---@class UnityEngine.Experimental.UIElements.UxmlTypeRestriction : System.Object
UnityEngine.Experimental.UIElements.UxmlTypeRestriction = {}
---@type UnityEngine.Experimental.UIElements.UxmlTypeRestriction
CS.UnityEngine.Experimental.UIElements.UxmlTypeRestriction = UnityEngine.Experimental.UIElements.UxmlTypeRestriction

---@param other UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlTypeRestriction:Equals(other)end
---@class UnityEngine.Experimental.UIElements.UxmlValueMatches : UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@field public regex System.String
UnityEngine.Experimental.UIElements.UxmlValueMatches = {}
---@type UnityEngine.Experimental.UIElements.UxmlValueMatches
CS.UnityEngine.Experimental.UIElements.UxmlValueMatches = UnityEngine.Experimental.UIElements.UxmlValueMatches

---@param other UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlValueMatches:Equals(other)end
---@class UnityEngine.Experimental.UIElements.UxmlValueBounds : UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@field public min System.String
---@field public max System.String
---@field public excludeMin System.Boolean
---@field public excludeMax System.Boolean
UnityEngine.Experimental.UIElements.UxmlValueBounds = {}
---@type UnityEngine.Experimental.UIElements.UxmlValueBounds
CS.UnityEngine.Experimental.UIElements.UxmlValueBounds = UnityEngine.Experimental.UIElements.UxmlValueBounds

---@param other UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlValueBounds:Equals(other)end
---@class UnityEngine.Experimental.UIElements.UxmlEnumeration : UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@field public values System.Collections.Generic.List
UnityEngine.Experimental.UIElements.UxmlEnumeration = {}
---@type UnityEngine.Experimental.UIElements.UxmlEnumeration
CS.UnityEngine.Experimental.UIElements.UxmlEnumeration = UnityEngine.Experimental.UIElements.UxmlEnumeration

---@param other UnityEngine.Experimental.UIElements.UxmlTypeRestriction
---@return System.Boolean
function UnityEngine.Experimental.UIElements.UxmlEnumeration:Equals(other)end
---@class UnityEngine.Experimental.UIElements.VisualTreeAsset : UnityEngine.ScriptableObject
UnityEngine.Experimental.UIElements.VisualTreeAsset = {}
---@type UnityEngine.Experimental.UIElements.VisualTreeAsset
CS.UnityEngine.Experimental.UIElements.VisualTreeAsset = UnityEngine.Experimental.UIElements.VisualTreeAsset

---@overload fun(slotInsertionPoints:System.Collections.Generic.Dictionary, bindingPath:System.String):UnityEngine.Experimental.UIElements.VisualElement
---@overload fun(target:UnityEngine.Experimental.UIElements.VisualElement, slotInsertionPoints:System.Collections.Generic.Dictionary):System.Void
---@param slotInsertionPoints System.Collections.Generic.Dictionary
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEngine.Experimental.UIElements.VisualTreeAsset:CloneTree(slotInsertionPoints)end
---@class UnityEngine.Experimental.UIElements.CreationContext : System.ValueType
---@field public target UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public visualTreeAsset UnityEngine.Experimental.UIElements.VisualTreeAsset @ setter getter
---@field public slotInsertionPoints System.Collections.Generic.Dictionary @ setter getter
---@field public Default UnityEngine.Experimental.UIElements.CreationContext
UnityEngine.Experimental.UIElements.CreationContext = {}
---@type UnityEngine.Experimental.UIElements.CreationContext
CS.UnityEngine.Experimental.UIElements.CreationContext = UnityEngine.Experimental.UIElements.CreationContext

