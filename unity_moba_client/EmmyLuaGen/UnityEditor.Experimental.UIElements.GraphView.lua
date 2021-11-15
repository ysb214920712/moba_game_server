---@class UnityEditor.Experimental.UIElements.GraphView.Capabilities : System.Enum
UnityEditor.Experimental.UIElements.GraphView.Capabilities = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Capabilities
CS.UnityEditor.Experimental.UIElements.GraphView.Capabilities = UnityEditor.Experimental.UIElements.GraphView.Capabilities

---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.Capabilities.Selectable = 1
---@return System.Int32 value:2
UnityEditor.Experimental.UIElements.GraphView.Capabilities.Collapsible = 2
---@return System.Int32 value:4
UnityEditor.Experimental.UIElements.GraphView.Capabilities.Resizable = 4

---@class UnityEditor.Experimental.UIElements.GraphView.Direction : System.Enum
UnityEditor.Experimental.UIElements.GraphView.Direction = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Direction
CS.UnityEditor.Experimental.UIElements.GraphView.Direction = UnityEditor.Experimental.UIElements.GraphView.Direction

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.GraphView.Direction.Input = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.Direction.Output = 1

---@class UnityEditor.Experimental.UIElements.GraphView.EdgeControl : UnityEngine.Experimental.UIElements.VisualElement
---@field public inputOrientation UnityEditor.Experimental.UIElements.GraphView.Orientation @ setter getter
---@field public outputOrientation UnityEditor.Experimental.UIElements.GraphView.Orientation @ setter getter
---@field public edgeColor UnityEngine.Color @ setter getter
---@field public inputColor UnityEngine.Color @ setter getter
---@field public outputColor UnityEngine.Color @ setter getter
---@field public fromCapColor UnityEngine.Color @ setter getter
---@field public toCapColor UnityEngine.Color @ setter getter
---@field public capRadius System.Single @ setter getter
---@field public edgeWidth System.Int32 @ setter getter
---@field public interceptWidth System.Single @ setter getter
---@field public from UnityEngine.Vector2 @ setter getter
---@field public to UnityEngine.Vector2 @ setter getter
---@field public controlPoints UnityEngine.Vector2[] @  getter
---@field public drawFromCap System.Boolean @ setter getter
---@field public drawToCap System.Boolean @ setter getter
---@field public k_MinEdgeWidth System.Single
UnityEditor.Experimental.UIElements.GraphView.EdgeControl = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeControl
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeControl = UnityEditor.Experimental.UIElements.GraphView.EdgeControl

---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.EdgeControl:ContainsPoint(localPoint)end
---@param rect UnityEngine.Rect
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.EdgeControl:Overlaps(rect)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeControl:UpdateLayout()end
---@class UnityEditor.Experimental.UIElements.GraphView.IconBadge : UnityEngine.Experimental.UIElements.VisualElement
---@field public badgeText System.String @ setter getter
---@field public distance UnityEngine.Experimental.UIElements.StyleSheets.StyleValue @ setter getter
UnityEditor.Experimental.UIElements.GraphView.IconBadge = {}
---@type UnityEditor.Experimental.UIElements.GraphView.IconBadge
CS.UnityEditor.Experimental.UIElements.GraphView.IconBadge = UnityEditor.Experimental.UIElements.GraphView.IconBadge

---@param message System.String
---@return UnityEditor.Experimental.UIElements.GraphView.IconBadge
function UnityEditor.Experimental.UIElements.GraphView.IconBadge.CreateError(message)end
---@param message System.String
---@return UnityEditor.Experimental.UIElements.GraphView.IconBadge
function UnityEditor.Experimental.UIElements.GraphView.IconBadge.CreateComment(message)end
---@param target UnityEngine.Experimental.UIElements.VisualElement
---@param align UnityEngine.SpriteAlignment
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.IconBadge:AttachTo(target, align)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.IconBadge:Detach()end
---@class UnityEditor.Experimental.UIElements.GraphView.PortSource : System.Object
UnityEditor.Experimental.UIElements.GraphView.PortSource = {}
---@type UnityEditor.Experimental.UIElements.GraphView.PortSource
CS.UnityEditor.Experimental.UIElements.GraphView.PortSource = UnityEditor.Experimental.UIElements.GraphView.PortSource

---@class UnityEditor.Experimental.UIElements.GraphView.TypeAdapter : System.Attribute
UnityEditor.Experimental.UIElements.GraphView.TypeAdapter = {}
---@type UnityEditor.Experimental.UIElements.GraphView.TypeAdapter
CS.UnityEditor.Experimental.UIElements.GraphView.TypeAdapter = UnityEditor.Experimental.UIElements.GraphView.TypeAdapter

---@class UnityEditor.Experimental.UIElements.GraphView.NodeAdapter : System.Object
UnityEditor.Experimental.UIElements.GraphView.NodeAdapter = {}
---@type UnityEditor.Experimental.UIElements.GraphView.NodeAdapter
CS.UnityEditor.Experimental.UIElements.GraphView.NodeAdapter = UnityEditor.Experimental.UIElements.GraphView.NodeAdapter

---@param a System.Object
---@param b System.Object
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.NodeAdapter:CanAdapt(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.NodeAdapter:Connect(a, b)end
---@param a System.Object
---@param b System.Object
---@return System.Reflection.MethodInfo
function UnityEditor.Experimental.UIElements.GraphView.NodeAdapter:GetAdapter(a, b)end
---@param from System.Type
---@param to System.Type
---@return System.Reflection.MethodInfo
function UnityEditor.Experimental.UIElements.GraphView.NodeAdapter:GetTypeAdapter(from, to)end
---@class UnityEditor.Experimental.UIElements.GraphView.Orientation : System.Enum
UnityEditor.Experimental.UIElements.GraphView.Orientation = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Orientation
CS.UnityEditor.Experimental.UIElements.GraphView.Orientation = UnityEditor.Experimental.UIElements.GraphView.Orientation

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.GraphView.Orientation.Horizontal = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.Orientation.Vertical = 1

---@class UnityEditor.Experimental.UIElements.GraphView.GridBackground : UnityEngine.Experimental.UIElements.VisualElement
UnityEditor.Experimental.UIElements.GraphView.GridBackground = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GridBackground
CS.UnityEditor.Experimental.UIElements.GraphView.GridBackground = UnityEditor.Experimental.UIElements.GraphView.GridBackground

---@class UnityEditor.Experimental.UIElements.GraphView.Edge : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public isGhostEdge System.Boolean @ setter getter
---@field public output UnityEditor.Experimental.UIElements.GraphView.Port @ setter getter
---@field public input UnityEditor.Experimental.UIElements.GraphView.Port @ setter getter
---@field public edgeControl UnityEditor.Experimental.UIElements.GraphView.EdgeControl @  getter
---@field public candidatePosition UnityEngine.Vector2 @ setter getter
---@field public edgeWidth System.Int32 @  getter
---@field public selectedColor UnityEngine.Color @  getter
---@field public defaultColor UnityEngine.Color @  getter
---@field public ghostColor UnityEngine.Color @  getter
UnityEditor.Experimental.UIElements.GraphView.Edge = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Edge
CS.UnityEditor.Experimental.UIElements.GraphView.Edge = UnityEditor.Experimental.UIElements.GraphView.Edge

---@param rectangle UnityEngine.Rect
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Edge:Overlaps(rectangle)end
---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Edge:ContainsPoint(localPoint)end
---@param isInput System.Boolean
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Edge:OnPortChanged(isInput)end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Edge:UpdateEdgeControl()end
---@class UnityEditor.Experimental.UIElements.GraphView.GraphElement : UnityEngine.Experimental.UIElements.VisualElement
---@field public elementTypeColor UnityEngine.Color @ setter getter
---@field public layer System.Int32 @ setter getter
---@field public title System.String @ setter getter
---@field public capabilities UnityEditor.Experimental.UIElements.GraphView.Capabilities @ setter getter
---@field public selected System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.GraphElement = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphElement
CS.UnityEditor.Experimental.UIElements.GraphView.GraphElement = UnityEditor.Experimental.UIElements.GraphView.GraphElement

---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:ResetLayer()end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsSelectable()end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsMovable()end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsResizable()end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsDroppable()end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsAscendable()end
---@return UnityEngine.Vector3
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:GetGlobalCenter()end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:UpdatePresenterPosition()end
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:GetPosition()end
---@param newPos UnityEngine.Rect
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:SetPosition(newPos)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:OnSelected()end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:OnUnselected()end
---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:HitTest(localPoint)end
---@param selectionContainer UnityEngine.Experimental.UIElements.VisualElement
---@param additive System.Boolean
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:Select(selectionContainer, additive)end
---@param selectionContainer UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:Unselect(selectionContainer)end
---@param selectionContainer UnityEngine.Experimental.UIElements.VisualElement
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.GraphElement:IsSelected(selectionContainer)end
---@class UnityEditor.Experimental.UIElements.GraphView.GraphElementScopeExtensions : System.Object
UnityEditor.Experimental.UIElements.GraphView.GraphElementScopeExtensions = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphElementScopeExtensions
CS.UnityEditor.Experimental.UIElements.GraphView.GraphElementScopeExtensions = UnityEditor.Experimental.UIElements.GraphView.GraphElementScopeExtensions

---@class UnityEditor.Experimental.UIElements.GraphView.Group : UnityEditor.Experimental.UIElements.GraphView.Scope
---@field public title System.String @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Group = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Group
CS.UnityEditor.Experimental.UIElements.GraphView.Group = UnityEditor.Experimental.UIElements.GraphView.Group

---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@param reasonWhyNotAccepted System.String
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Group:AcceptsElement(element, reasonWhyNotAccepted)end
---@class UnityEditor.Experimental.UIElements.GraphView.MiniMap : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public maxHeight System.Single @ setter getter
---@field public maxWidth System.Single @ setter getter
---@field public anchored System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.MiniMap = {}
---@type UnityEditor.Experimental.UIElements.GraphView.MiniMap
CS.UnityEditor.Experimental.UIElements.GraphView.MiniMap = UnityEditor.Experimental.UIElements.GraphView.MiniMap

---@param evt UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.MiniMap:BuildContextualMenu(evt)end
---@class UnityEditor.Experimental.UIElements.GraphView.Node : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public mainContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public titleContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public inputContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public outputContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public titleButtonContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public topContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public extensionContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public expanded System.Boolean @ setter getter
---@field public title System.String @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Node = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Node
CS.UnityEditor.Experimental.UIElements.GraphView.Node = UnityEditor.Experimental.UIElements.GraphView.Node

---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Node:RefreshExpandedState()end
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.Node:GetPosition()end
---@param newPos UnityEngine.Rect
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Node:SetPosition(newPos)end
---@param orientation UnityEditor.Experimental.UIElements.GraphView.Orientation
---@param direction UnityEditor.Experimental.UIElements.GraphView.Direction
---@param capacity UnityEditor.Experimental.UIElements.GraphView.Port.Capacity
---@param type System.Type
---@return UnityEditor.Experimental.UIElements.GraphView.Port
function UnityEditor.Experimental.UIElements.GraphView.Node:InstantiatePort(orientation, direction, capacity, type)end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Node:RefreshPorts()end
---@param evt UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Node:BuildContextualMenu(evt)end
---@class UnityEditor.Experimental.UIElements.GraphView.Pill : UnityEngine.Experimental.UIElements.VisualElement
---@field public highlighted System.Boolean @ setter getter
---@field public text System.String @ setter getter
---@field public icon UnityEngine.Texture @ setter getter
---@field public left UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public right UnityEngine.Experimental.UIElements.VisualElement @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Pill = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Pill
CS.UnityEditor.Experimental.UIElements.GraphView.Pill = UnityEditor.Experimental.UIElements.GraphView.Pill

---@class UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlFactory
CS.UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlFactory = UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlFactory

---@class UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
---@field public uxmlChildElementsDescription System.Collections.Generic.IEnumerable @  getter
UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits
CS.UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits = UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Pill.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.GraphView.Port : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public portName System.String @ setter getter
---@field public portCapLit System.Boolean @ setter getter
---@field public direction UnityEditor.Experimental.UIElements.GraphView.Direction @ setter getter
---@field public orientation UnityEditor.Experimental.UIElements.GraphView.Orientation @ setter getter
---@field public capacity UnityEditor.Experimental.UIElements.GraphView.Port.Capacity @ setter getter
---@field public visualClass System.String @ setter getter
---@field public portType System.Type @ setter getter
---@field public edgeConnector UnityEditor.Experimental.UIElements.GraphView.EdgeConnector @  getter
---@field public source System.Object @ setter getter
---@field public highlight System.Boolean @ setter getter
---@field public connections System.Collections.Generic.IEnumerable @  getter
---@field public connected System.Boolean @  getter
---@field public collapsed System.Boolean @  getter
---@field public portColor UnityEngine.Color @ setter getter
---@field public disabledPortColor UnityEngine.Color @  getter
---@field public node UnityEditor.Experimental.UIElements.GraphView.Node @  getter
UnityEditor.Experimental.UIElements.GraphView.Port = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Port
CS.UnityEditor.Experimental.UIElements.GraphView.Port = UnityEditor.Experimental.UIElements.GraphView.Port

---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Port:OnStartEdgeDragging()end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Port:OnStopEdgeDragging()end
---@overload fun(other:UnityEditor.Experimental.UIElements.GraphView.Port):any
---@param other UnityEditor.Experimental.UIElements.GraphView.Port
---@return UnityEditor.Experimental.UIElements.GraphView.Edge
function UnityEditor.Experimental.UIElements.GraphView.Port:ConnectTo(other)end
---@param edge UnityEditor.Experimental.UIElements.GraphView.Edge
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Port:Connect(edge)end
---@param edge UnityEditor.Experimental.UIElements.GraphView.Edge
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Port:Disconnect(edge)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Port:DisconnectAll()end
---@param orientation UnityEditor.Experimental.UIElements.GraphView.Orientation
---@param direction UnityEditor.Experimental.UIElements.GraphView.Direction
---@param capacity UnityEditor.Experimental.UIElements.GraphView.Port.Capacity
---@param type System.Type
---@return UnityEditor.Experimental.UIElements.GraphView.Port
function UnityEditor.Experimental.UIElements.GraphView.Port.Create(orientation, direction, capacity, type)end
---@return UnityEngine.Vector3
function UnityEditor.Experimental.UIElements.GraphView.Port:GetGlobalCenter()end
---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Port:ContainsPoint(localPoint)end
---@class UnityEditor.Experimental.UIElements.GraphView.Port.Capacity : System.Enum
UnityEditor.Experimental.UIElements.GraphView.Port.Capacity = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Port.Capacity
CS.UnityEditor.Experimental.UIElements.GraphView.Port.Capacity = UnityEditor.Experimental.UIElements.GraphView.Port.Capacity

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.GraphView.Port.Capacity.Single = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.Port.Capacity.Multi = 1

---@class UnityEditor.Experimental.UIElements.GraphView.Scope : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public autoUpdateGeometry System.Boolean @ setter getter
---@field public headerContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public containedElements System.Collections.Generic.IEnumerable @  getter
---@field public containedElementsRect UnityEngine.Rect @  getter
UnityEditor.Experimental.UIElements.GraphView.Scope = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Scope
CS.UnityEditor.Experimental.UIElements.GraphView.Scope = UnityEditor.Experimental.UIElements.GraphView.Scope

---@param localPoint UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Scope:HitTest(localPoint)end
---@param rectangle UnityEngine.Rect
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Scope:Overlaps(rectangle)end
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Scope:ContainsElement(element)end
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@param reasonWhyNotAccepted System.String
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.Scope:AcceptsElement(element, reasonWhyNotAccepted)end
---@param elements System.Collections.Generic.IEnumerable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:AddElements(elements)end
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:AddElement(element)end
---@param elements System.Collections.Generic.IEnumerable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:RemoveElementsWithoutNotification(elements)end
---@param elements System.Collections.Generic.IEnumerable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:RemoveElements(elements)end
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:RemoveElement(element)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:UpdateGeometryFromContent()end
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.Scope:GetPosition()end
---@param newPos UnityEngine.Rect
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:SetPosition(newPos)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Scope:UpdatePresenterPosition()end
---@class UnityEditor.Experimental.UIElements.GraphView.StackNode : UnityEditor.Experimental.UIElements.GraphView.Node
---@field public headerContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public dropPreviewTemplate System.Func @ setter getter
UnityEditor.Experimental.UIElements.GraphView.StackNode = {}
---@type UnityEditor.Experimental.UIElements.GraphView.StackNode
CS.UnityEditor.Experimental.UIElements.GraphView.StackNode = UnityEditor.Experimental.UIElements.GraphView.StackNode

---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.StackNode:AddElement(element)end
---@param index System.Int32
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.StackNode:InsertElement(index, element)end
---@param element UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.StackNode:RemoveElement(element)end
---@param worldPosition UnityEngine.Vector2
---@return System.Int32
function UnityEditor.Experimental.UIElements.GraphView.StackNode:GetInsertionIndex(worldPosition)end
---@param ge UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.StackNode:OnStartDragging(ge)end
---@param selection System.Collections.Generic.List
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:CanAcceptDrop(selection)end
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:DragExited()end
---@param evt UnityEngine.Experimental.UIElements.DragPerformEvent
---@param selection System.Collections.Generic.IEnumerable
---@param dropTarget UnityEditor.Experimental.UIElements.GraphView.IDropTarget
---@param dragSource UnityEditor.Experimental.UIElements.GraphView.ISelection
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:DragPerform(evt, selection, dropTarget, dragSource)end
---@param evt UnityEngine.Experimental.UIElements.DragUpdatedEvent
---@param selection System.Collections.Generic.IEnumerable
---@param dropTarget UnityEditor.Experimental.UIElements.GraphView.IDropTarget
---@param dragSource UnityEditor.Experimental.UIElements.GraphView.ISelection
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:DragUpdated(evt, selection, dropTarget, dragSource)end
---@param evt UnityEngine.Experimental.UIElements.DragEnterEvent
---@param selection System.Collections.Generic.IEnumerable
---@param enteredTarget UnityEditor.Experimental.UIElements.GraphView.IDropTarget
---@param dragSource UnityEditor.Experimental.UIElements.GraphView.ISelection
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:DragEnter(evt, selection, enteredTarget, dragSource)end
---@param evt UnityEngine.Experimental.UIElements.DragLeaveEvent
---@param selection System.Collections.Generic.IEnumerable
---@param leftTarget UnityEditor.Experimental.UIElements.GraphView.IDropTarget
---@param dragSource UnityEditor.Experimental.UIElements.GraphView.ISelection
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.StackNode:DragLeave(evt, selection, leftTarget, dragSource)end
---@class UnityEditor.Experimental.UIElements.GraphView.TokenNode : UnityEditor.Experimental.UIElements.GraphView.Node
---@field public icon UnityEngine.Texture @ setter getter
---@field public input UnityEditor.Experimental.UIElements.GraphView.Port @  getter
---@field public output UnityEditor.Experimental.UIElements.GraphView.Port @  getter
---@field public highlighted System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.TokenNode = {}
---@type UnityEditor.Experimental.UIElements.GraphView.TokenNode
CS.UnityEditor.Experimental.UIElements.GraphView.TokenNode = UnityEditor.Experimental.UIElements.GraphView.TokenNode

---@class UnityEditor.Experimental.UIElements.GraphView.Blackboard : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public addItemRequested System.Action @ setter getter
---@field public moveItemRequested System.Action @ setter getter
---@field public editTextRequested System.Action @ setter getter
---@field public title System.String @ setter getter
---@field public subTitle System.String @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public scrollable System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Blackboard = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Blackboard
CS.UnityEditor.Experimental.UIElements.GraphView.Blackboard = UnityEditor.Experimental.UIElements.GraphView.Blackboard

---@class UnityEditor.Experimental.UIElements.GraphView.BlackboardField : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public text System.String @ setter getter
---@field public typeText System.String @ setter getter
---@field public icon UnityEngine.Texture @ setter getter
---@field public highlighted System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.BlackboardField = {}
---@type UnityEditor.Experimental.UIElements.GraphView.BlackboardField
CS.UnityEditor.Experimental.UIElements.GraphView.BlackboardField = UnityEditor.Experimental.UIElements.GraphView.BlackboardField

---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.BlackboardField:OpenTextEditor()end
---@class UnityEditor.Experimental.UIElements.GraphView.BlackboardRow : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public expanded System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.BlackboardRow = {}
---@type UnityEditor.Experimental.UIElements.GraphView.BlackboardRow
CS.UnityEditor.Experimental.UIElements.GraphView.BlackboardRow = UnityEditor.Experimental.UIElements.GraphView.BlackboardRow

---@class UnityEditor.Experimental.UIElements.GraphView.BlackboardSection : UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public title System.String @ setter getter
---@field public headerVisible System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.BlackboardSection = {}
---@type UnityEditor.Experimental.UIElements.GraphView.BlackboardSection
CS.UnityEditor.Experimental.UIElements.GraphView.BlackboardSection = UnityEditor.Experimental.UIElements.GraphView.BlackboardSection

---@param selection System.Collections.Generic.List
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.BlackboardSection:CanAcceptDrop(selection)end
---@class UnityEditor.Experimental.UIElements.GraphView.ClickSelector : UnityEngine.Experimental.UIElements.MouseManipulator
UnityEditor.Experimental.UIElements.GraphView.ClickSelector = {}
---@type UnityEditor.Experimental.UIElements.GraphView.ClickSelector
CS.UnityEditor.Experimental.UIElements.GraphView.ClickSelector = UnityEditor.Experimental.UIElements.GraphView.ClickSelector

---@class UnityEditor.Experimental.UIElements.GraphView.ContentDragger : UnityEngine.Experimental.UIElements.MouseManipulator
---@field public panSpeed UnityEngine.Vector2 @ setter getter
---@field public clampToParentEdges System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.ContentDragger = {}
---@type UnityEditor.Experimental.UIElements.GraphView.ContentDragger
CS.UnityEditor.Experimental.UIElements.GraphView.ContentDragger = UnityEditor.Experimental.UIElements.GraphView.ContentDragger

---@class UnityEditor.Experimental.UIElements.GraphView.Dragger : UnityEngine.Experimental.UIElements.MouseManipulator
---@field public panSpeed UnityEngine.Vector2 @ setter getter
---@field public clampToParentEdges System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Dragger = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Dragger
CS.UnityEditor.Experimental.UIElements.GraphView.Dragger = UnityEditor.Experimental.UIElements.GraphView.Dragger

---@class UnityEditor.Experimental.UIElements.GraphView.EdgeConnector : UnityEngine.Experimental.UIElements.MouseManipulator
---@field public edgeDragHelper UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper @  getter
UnityEditor.Experimental.UIElements.GraphView.EdgeConnector = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeConnector
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeConnector = UnityEditor.Experimental.UIElements.GraphView.EdgeConnector

---@class UnityEditor.Experimental.UIElements.GraphView.EdgeConnector : UnityEditor.Experimental.UIElements.GraphView.EdgeConnector
---@field public edgeDragHelper UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper @  getter
UnityEditor.Experimental.UIElements.GraphView.EdgeConnector = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeConnector
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeConnector = UnityEditor.Experimental.UIElements.GraphView.EdgeConnector

---@class UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper : System.Object
---@field public edgeCandidate UnityEditor.Experimental.UIElements.GraphView.Edge @ setter getter
---@field public draggedPort UnityEditor.Experimental.UIElements.GraphView.Port @ setter getter
UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper = UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper

---@param evt UnityEngine.Experimental.UIElements.MouseDownEvent
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseDown(evt)end
---@param evt UnityEngine.Experimental.UIElements.MouseMoveEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseMove(evt)end
---@param evt UnityEngine.Experimental.UIElements.MouseUpEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseUp(evt)end
---@overload fun():System.Void
---@param didConnect System.Boolean
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:Reset(didConnect)end
---@class UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper : UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper
---@field public resetPositionOnPan System.Boolean @ setter getter
---@field public edgeCandidate UnityEditor.Experimental.UIElements.GraphView.Edge @ setter getter
---@field public draggedPort UnityEditor.Experimental.UIElements.GraphView.Port @ setter getter
UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper = UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper

---@overload fun():System.Void
---@param didConnect System.Boolean
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:Reset(didConnect)end
---@param evt UnityEngine.Experimental.UIElements.MouseDownEvent
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseDown(evt)end
---@param evt UnityEngine.Experimental.UIElements.MouseMoveEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseMove(evt)end
---@param evt UnityEngine.Experimental.UIElements.MouseUpEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.EdgeDragHelper:HandleMouseUp(evt)end
---@class UnityEditor.Experimental.UIElements.GraphView.EdgeManipulator : UnityEngine.Experimental.UIElements.MouseManipulator
UnityEditor.Experimental.UIElements.GraphView.EdgeManipulator = {}
---@type UnityEditor.Experimental.UIElements.GraphView.EdgeManipulator
CS.UnityEditor.Experimental.UIElements.GraphView.EdgeManipulator = UnityEditor.Experimental.UIElements.GraphView.EdgeManipulator

---@class UnityEditor.Experimental.UIElements.GraphView.FreehandSelector : UnityEngine.Experimental.UIElements.MouseManipulator
UnityEditor.Experimental.UIElements.GraphView.FreehandSelector = {}
---@type UnityEditor.Experimental.UIElements.GraphView.FreehandSelector
CS.UnityEditor.Experimental.UIElements.GraphView.FreehandSelector = UnityEditor.Experimental.UIElements.GraphView.FreehandSelector

---@class UnityEditor.Experimental.UIElements.GraphView.RectangleSelector : UnityEngine.Experimental.UIElements.MouseManipulator
UnityEditor.Experimental.UIElements.GraphView.RectangleSelector = {}
---@type UnityEditor.Experimental.UIElements.GraphView.RectangleSelector
CS.UnityEditor.Experimental.UIElements.GraphView.RectangleSelector = UnityEditor.Experimental.UIElements.GraphView.RectangleSelector

---@param position UnityEngine.Rect
---@param transform UnityEngine.Matrix4x4
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.RectangleSelector:ComputeAxisAlignedBound(position, transform)end
---@class UnityEditor.Experimental.UIElements.GraphView.Resizer : UnityEngine.Experimental.UIElements.VisualElement
---@field public activateButton UnityEngine.Experimental.UIElements.MouseButton @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Resizer = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Resizer
CS.UnityEditor.Experimental.UIElements.GraphView.Resizer = UnityEditor.Experimental.UIElements.GraphView.Resizer

---@class UnityEditor.Experimental.UIElements.GraphView.SelectionDragger : UnityEditor.Experimental.UIElements.GraphView.Dragger
UnityEditor.Experimental.UIElements.GraphView.SelectionDragger = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SelectionDragger
CS.UnityEditor.Experimental.UIElements.GraphView.SelectionDragger = UnityEditor.Experimental.UIElements.GraphView.SelectionDragger

---@class UnityEditor.Experimental.UIElements.GraphView.SelectionDropper : UnityEngine.Experimental.UIElements.Manipulator
---@field public panSpeed UnityEngine.Vector2 @ setter getter
---@field public activateButton UnityEngine.Experimental.UIElements.MouseButton @ setter getter
---@field public clampToParentEdges System.Boolean @ setter getter
UnityEditor.Experimental.UIElements.GraphView.SelectionDropper = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SelectionDropper
CS.UnityEditor.Experimental.UIElements.GraphView.SelectionDropper = UnityEditor.Experimental.UIElements.GraphView.SelectionDropper

---@class UnityEditor.Experimental.UIElements.GraphView.ShortcutHandler : UnityEngine.Experimental.UIElements.Manipulator
UnityEditor.Experimental.UIElements.GraphView.ShortcutHandler = {}
---@type UnityEditor.Experimental.UIElements.GraphView.ShortcutHandler
CS.UnityEditor.Experimental.UIElements.GraphView.ShortcutHandler = UnityEditor.Experimental.UIElements.GraphView.ShortcutHandler

---@class UnityEditor.Experimental.UIElements.GraphView.ContentZoomer : UnityEngine.Experimental.UIElements.Manipulator
---@field public referenceScale System.Single @ setter getter
---@field public minScale System.Single @ setter getter
---@field public maxScale System.Single @ setter getter
---@field public scaleStep System.Single @ setter getter
---@field public keepPixelCacheOnZoom System.Boolean @ setter getter
---@field public DefaultReferenceScale System.Single
---@field public DefaultMinScale System.Single
---@field public DefaultMaxScale System.Single
---@field public DefaultScaleStep System.Single
UnityEditor.Experimental.UIElements.GraphView.ContentZoomer = {}
---@type UnityEditor.Experimental.UIElements.GraphView.ContentZoomer
CS.UnityEditor.Experimental.UIElements.GraphView.ContentZoomer = UnityEditor.Experimental.UIElements.GraphView.ContentZoomer

---@class UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry : System.Object
---@field public name System.String @  getter
---@field public level System.Int32
---@field public content UnityEngine.GUIContent
---@field public userData System.Object
UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry
CS.UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry = UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry

---@param o UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry
---@return System.Int32
function UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry:CompareTo(o)end
---@class UnityEditor.Experimental.UIElements.GraphView.SearchTreeGroupEntry : UnityEditor.Experimental.UIElements.GraphView.SearchTreeEntry
UnityEditor.Experimental.UIElements.GraphView.SearchTreeGroupEntry = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SearchTreeGroupEntry
CS.UnityEditor.Experimental.UIElements.GraphView.SearchTreeGroupEntry = UnityEditor.Experimental.UIElements.GraphView.SearchTreeGroupEntry

---@class UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext : System.ValueType
---@field public screenMousePosition UnityEngine.Vector2 @ setter getter
---@field public requestedWidth System.Single @ setter getter
---@field public requestedHeight System.Single @ setter getter
UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext
CS.UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext = UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext

---@class UnityEditor.Experimental.UIElements.GraphView.SearchWindow : UnityEditor.EditorWindow
UnityEditor.Experimental.UIElements.GraphView.SearchWindow = {}
---@type UnityEditor.Experimental.UIElements.GraphView.SearchWindow
CS.UnityEditor.Experimental.UIElements.GraphView.SearchWindow = UnityEditor.Experimental.UIElements.GraphView.SearchWindow

---@param context UnityEditor.Experimental.UIElements.GraphView.SearchWindowContext
---@param provider any
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.SearchWindow.Open(context, provider)end
---@class UnityEditor.Experimental.UIElements.GraphView.RectUtils : System.Object
UnityEditor.Experimental.UIElements.GraphView.RectUtils = {}
---@type UnityEditor.Experimental.UIElements.GraphView.RectUtils
CS.UnityEditor.Experimental.UIElements.GraphView.RectUtils = UnityEditor.Experimental.UIElements.GraphView.RectUtils

---@param rect UnityEngine.Rect
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
---@return System.Boolean
function UnityEditor.Experimental.UIElements.GraphView.RectUtils.IntersectsSegment(rect, p1, p2)end
---@param a UnityEngine.Rect
---@param b UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.RectUtils.Encompass(a, b)end
---@param a UnityEngine.Rect
---@param left System.Single
---@param top System.Single
---@param right System.Single
---@param bottom System.Single
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.RectUtils.Inflate(a, left, top, right, bottom)end
---@class UnityEditor.Experimental.UIElements.GraphView.Attacher : System.Object
---@field public target UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public element UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public alignment UnityEngine.SpriteAlignment @ setter getter
---@field public offset UnityEngine.Vector2 @ setter getter
---@field public distance System.Single @ setter getter
UnityEditor.Experimental.UIElements.GraphView.Attacher = {}
---@type UnityEditor.Experimental.UIElements.GraphView.Attacher
CS.UnityEditor.Experimental.UIElements.GraphView.Attacher = UnityEditor.Experimental.UIElements.GraphView.Attacher

---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Attacher:Detach()end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.Attacher:Reattach()end
---@class UnityEditor.Experimental.UIElements.GraphView.GraphViewChange : System.ValueType
---@field public elementsToRemove System.Collections.Generic.List
---@field public edgesToCreate System.Collections.Generic.List
---@field public movedElements System.Collections.Generic.List
---@field public moveDelta UnityEngine.Vector2
UnityEditor.Experimental.UIElements.GraphView.GraphViewChange = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphViewChange
CS.UnityEditor.Experimental.UIElements.GraphView.GraphViewChange = UnityEditor.Experimental.UIElements.GraphView.GraphViewChange

---@class UnityEditor.Experimental.UIElements.GraphView.NodeCreationContext : System.ValueType
---@field public screenMousePosition UnityEngine.Vector2
---@field public target UnityEngine.Experimental.UIElements.VisualElement
---@field public index System.Int32
UnityEditor.Experimental.UIElements.GraphView.NodeCreationContext = {}
---@type UnityEditor.Experimental.UIElements.GraphView.NodeCreationContext
CS.UnityEditor.Experimental.UIElements.GraphView.NodeCreationContext = UnityEditor.Experimental.UIElements.GraphView.NodeCreationContext

---@class UnityEditor.Experimental.UIElements.GraphView.GraphView : UnityEngine.Experimental.UIElements.VisualElement
---@field public nodeCreationRequest System.Action @ setter getter
---@field public graphViewChanged UnityEditor.Experimental.UIElements.GraphView.GraphView.GraphViewChanged @ setter getter
---@field public groupTitleChanged System.Action @ setter getter
---@field public elementsAddedToGroup System.Action @ setter getter
---@field public elementsRemovedFromGroup System.Action @ setter getter
---@field public elementsInsertedToStackNode System.Action @ setter getter
---@field public elementsRemovedFromStackNode System.Action @ setter getter
---@field public elementResized UnityEditor.Experimental.UIElements.GraphView.GraphView.ElementResized @ setter getter
---@field public viewTransformChanged UnityEditor.Experimental.UIElements.GraphView.GraphView.ViewTransformChanged @ setter getter
---@field public contentViewContainer UnityEngine.Experimental.UIElements.VisualElement @ setter getter
---@field public viewport UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public viewTransform UnityEngine.Experimental.UIElements.ITransform @  getter
---@field public isReframable System.Boolean @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
---@field public graphElements UnityEngine.Experimental.UIElements.UQuery.QueryState @ setter getter
---@field public nodes UnityEngine.Experimental.UIElements.UQuery.QueryState @ setter getter
---@field public edges UnityEngine.Experimental.UIElements.UQuery.QueryState @ setter getter
---@field public minScale System.Single @  getter
---@field public maxScale System.Single @  getter
---@field public scaleStep System.Single @  getter
---@field public referenceScale System.Single @  getter
---@field public scale System.Single @  getter
---@field public zoomerMaxElementCountWithPixelCacheRegen System.Int32 @ setter getter
---@field public selection System.Collections.Generic.List @ setter getter
---@field public serializeGraphElements UnityEditor.Experimental.UIElements.GraphView.GraphView.SerializeGraphElementsDelegate @ setter getter
---@field public canPasteSerializedData UnityEditor.Experimental.UIElements.GraphView.GraphView.CanPasteSerializedDataDelegate @ setter getter
---@field public unserializeAndPaste UnityEditor.Experimental.UIElements.GraphView.GraphView.UnserializeAndPasteDelegate @ setter getter
---@field public deleteSelection UnityEditor.Experimental.UIElements.GraphView.GraphView.DeleteSelectionDelegate @ setter getter
---@field public ports UnityEngine.Experimental.UIElements.UQuery.QueryState
UnityEditor.Experimental.UIElements.GraphView.GraphView = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphView
CS.UnityEditor.Experimental.UIElements.GraphView.GraphView = UnityEditor.Experimental.UIElements.GraphView.GraphView

---@param newPosition UnityEngine.Vector3
---@param newScale UnityEngine.Vector3
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:UpdateViewTransform(newPosition, newScale)end
---@param index System.Int32
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:AddLayer(index)end
---@param guid System.String
---@return UnityEditor.Experimental.UIElements.GraphView.GraphElement
function UnityEditor.Experimental.UIElements.GraphView.GraphView:GetElementByGuid(guid)end
---@param guid System.String
---@return UnityEditor.Experimental.UIElements.GraphView.Node
function UnityEditor.Experimental.UIElements.GraphView.GraphView:GetNodeByGuid(guid)end
---@param guid System.String
---@return UnityEditor.Experimental.UIElements.GraphView.Port
function UnityEditor.Experimental.UIElements.GraphView.GraphView:GetPortByGuid(guid)end
---@param guid System.String
---@return UnityEditor.Experimental.UIElements.GraphView.Edge
function UnityEditor.Experimental.UIElements.GraphView.GraphView:GetEdgeByGuid(guid)end
---@overload fun(minScaleSetup:System.Single, maxScaleSetup:System.Single, scaleStepSetup:System.Single, referenceScaleSetup:System.Single):System.Void
---@param minScaleSetup System.Single
---@param maxScaleSetup System.Single
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:SetupZoom(minScaleSetup, maxScaleSetup)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:OnPersistentDataReady()end
---@param selectable UnityEditor.Experimental.UIElements.GraphView.ISelectable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:AddToSelection(selectable)end
---@param selectable UnityEditor.Experimental.UIElements.GraphView.ISelectable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:RemoveFromSelection(selectable)end
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:ClearSelection()end
---@param evt UnityEngine.Experimental.UIElements.ContextualMenuPopulateEvent
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:BuildContextualMenu(evt)end
---@param startPort UnityEditor.Experimental.UIElements.GraphView.Port
---@param nodeAdapter UnityEditor.Experimental.UIElements.GraphView.NodeAdapter
---@return System.Collections.Generic.List
function UnityEditor.Experimental.UIElements.GraphView.GraphView:GetCompatiblePorts(startPort, nodeAdapter)end
---@param graphElement UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:AddElement(graphElement)end
---@param graphElement UnityEditor.Experimental.UIElements.GraphView.GraphElement
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:RemoveElement(graphElement)end
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:DeleteSelection()end
---@param elementsToRemove System.Collections.Generic.IEnumerable
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView:DeleteElements(elementsToRemove)end
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:FrameAll()end
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:FrameSelection()end
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:FrameOrigin()end
---@overload fun(predicate:System.Func):UnityEngine.Experimental.UIElements.EventPropagation
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:FramePrev()end
---@overload fun(predicate:System.Func):UnityEngine.Experimental.UIElements.EventPropagation
---@return UnityEngine.Experimental.UIElements.EventPropagation
function UnityEditor.Experimental.UIElements.GraphView.GraphView:FrameNext()end
---@param container UnityEngine.Experimental.UIElements.VisualElement
---@return UnityEngine.Rect
function UnityEditor.Experimental.UIElements.GraphView.GraphView:CalculateRectToFitAll(container)end
---@param rectToFit UnityEngine.Rect
---@param clientRect UnityEngine.Rect
---@param border System.Int32
---@param frameTranslation UnityEngine.Vector3
---@param frameScaling UnityEngine.Vector3
---@return System.Void
function UnityEditor.Experimental.UIElements.GraphView.GraphView.CalculateFrameTransform(rectToFit, clientRect, border, frameTranslation, frameScaling)end
---@class UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType : System.Enum
UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType
CS.UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType = UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType.All = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType.Selection = 1
---@return System.Int32 value:2
UnityEditor.Experimental.UIElements.GraphView.GraphView.FrameType.Origin = 2

---@class UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser : System.Enum
UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser = {}
---@type UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser
CS.UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser = UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser.AskUser = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.GraphView.GraphView.AskUser.DontAskUser = 1

