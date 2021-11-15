---@class UnityEngine.EventSystems.EventHandle : System.Enum
UnityEngine.EventSystems.EventHandle = {}
---@type UnityEngine.EventSystems.EventHandle
CS.UnityEngine.EventSystems.EventHandle = UnityEngine.EventSystems.EventHandle

---@return System.Int32 value:0
UnityEngine.EventSystems.EventHandle.Unused = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.EventHandle.Used = 1

---@class UnityEngine.EventSystems.EventSystem : UnityEngine.EventSystems.UIBehaviour
---@field public current UnityEngine.EventSystems.EventSystem @static setter getter
---@field public sendNavigationEvents System.Boolean @ setter getter
---@field public pixelDragThreshold System.Int32 @ setter getter
---@field public currentInputModule UnityEngine.EventSystems.BaseInputModule @  getter
---@field public firstSelectedGameObject UnityEngine.GameObject @ setter getter
---@field public currentSelectedGameObject UnityEngine.GameObject @  getter
---@field public lastSelectedGameObject UnityEngine.GameObject @  getter
---@field public isFocused System.Boolean @  getter
---@field public alreadySelecting System.Boolean @  getter
UnityEngine.EventSystems.EventSystem = {}
---@type UnityEngine.EventSystems.EventSystem
CS.UnityEngine.EventSystems.EventSystem = UnityEngine.EventSystems.EventSystem

---@return System.Void
function UnityEngine.EventSystems.EventSystem:UpdateModules()end
---@overload fun(selected:UnityEngine.GameObject, pointer:UnityEngine.EventSystems.BaseEventData):System.Void
---@param selected UnityEngine.GameObject
---@return System.Void
function UnityEngine.EventSystems.EventSystem:SetSelectedGameObject(selected)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@param raycastResults System.Collections.Generic.List
---@return System.Void
function UnityEngine.EventSystems.EventSystem:RaycastAll(eventData, raycastResults)end
---@overload fun(pointerId:System.Int32):System.Boolean
---@return System.Boolean
function UnityEngine.EventSystems.EventSystem:IsPointerOverGameObject()end
---@return System.String
function UnityEngine.EventSystems.EventSystem:ToString()end
---@class UnityEngine.EventSystems.EventTrigger : UnityEngine.MonoBehaviour
---@field public triggers System.Collections.Generic.List @ setter getter
---@field public delegates System.Collections.Generic.List
UnityEngine.EventSystems.EventTrigger = {}
---@type UnityEngine.EventSystems.EventTrigger
CS.UnityEngine.EventSystems.EventTrigger = UnityEngine.EventSystems.EventTrigger

---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnPointerEnter(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnPointerExit(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnDrop(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnPointerDown(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnPointerUp(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnPointerClick(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnSelect(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnDeselect(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnScroll(eventData)end
---@param eventData UnityEngine.EventSystems.AxisEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnMove(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnUpdateSelected(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnInitializePotentialDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnBeginDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnEndDrag(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnSubmit(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.EventSystems.EventTrigger:OnCancel(eventData)end
---@class UnityEngine.EventSystems.EventTrigger.TriggerEvent : UnityEngine.Events.UnityEvent
UnityEngine.EventSystems.EventTrigger.TriggerEvent = {}
---@type UnityEngine.EventSystems.EventTrigger.TriggerEvent
CS.UnityEngine.EventSystems.EventTrigger.TriggerEvent = UnityEngine.EventSystems.EventTrigger.TriggerEvent

---@class UnityEngine.EventSystems.EventTrigger.Entry : System.Object
---@field public eventID UnityEngine.EventSystems.EventTriggerType
---@field public callback UnityEngine.EventSystems.EventTrigger.TriggerEvent
UnityEngine.EventSystems.EventTrigger.Entry = {}
---@type UnityEngine.EventSystems.EventTrigger.Entry
CS.UnityEngine.EventSystems.EventTrigger.Entry = UnityEngine.EventSystems.EventTrigger.Entry

---@class UnityEngine.EventSystems.EventTriggerType : System.Enum
UnityEngine.EventSystems.EventTriggerType = {}
---@type UnityEngine.EventSystems.EventTriggerType
CS.UnityEngine.EventSystems.EventTriggerType = UnityEngine.EventSystems.EventTriggerType

---@return System.Int32 value:0
UnityEngine.EventSystems.EventTriggerType.PointerEnter = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.EventTriggerType.PointerExit = 1
---@return System.Int32 value:2
UnityEngine.EventSystems.EventTriggerType.PointerDown = 2
---@return System.Int32 value:3
UnityEngine.EventSystems.EventTriggerType.PointerUp = 3
---@return System.Int32 value:4
UnityEngine.EventSystems.EventTriggerType.PointerClick = 4
---@return System.Int32 value:5
UnityEngine.EventSystems.EventTriggerType.Drag = 5
---@return System.Int32 value:6
UnityEngine.EventSystems.EventTriggerType.Drop = 6
---@return System.Int32 value:7
UnityEngine.EventSystems.EventTriggerType.Scroll = 7
---@return System.Int32 value:8
UnityEngine.EventSystems.EventTriggerType.UpdateSelected = 8
---@return System.Int32 value:9
UnityEngine.EventSystems.EventTriggerType.Select = 9
---@return System.Int32 value:10
UnityEngine.EventSystems.EventTriggerType.Deselect = 10
---@return System.Int32 value:11
UnityEngine.EventSystems.EventTriggerType.Move = 11
---@return System.Int32 value:12
UnityEngine.EventSystems.EventTriggerType.InitializePotentialDrag = 12
---@return System.Int32 value:13
UnityEngine.EventSystems.EventTriggerType.BeginDrag = 13
---@return System.Int32 value:14
UnityEngine.EventSystems.EventTriggerType.EndDrag = 14
---@return System.Int32 value:15
UnityEngine.EventSystems.EventTriggerType.Submit = 15
---@return System.Int32 value:16
UnityEngine.EventSystems.EventTriggerType.Cancel = 16

---@class UnityEngine.EventSystems.ExecuteEvents : System.Object
---@field public pointerEnterHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public pointerExitHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public pointerDownHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public pointerUpHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public pointerClickHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public initializePotentialDrag UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public beginDragHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public dragHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public endDragHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public dropHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public scrollHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public updateSelectedHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public selectHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public deselectHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public moveHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public submitHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
---@field public cancelHandler UnityEngine.EventSystems.ExecuteEvents.EventFunction @static  getter
UnityEngine.EventSystems.ExecuteEvents = {}
---@type UnityEngine.EventSystems.ExecuteEvents
CS.UnityEngine.EventSystems.ExecuteEvents = UnityEngine.EventSystems.ExecuteEvents

---@param data UnityEngine.EventSystems.BaseEventData
---@return any
function UnityEngine.EventSystems.ExecuteEvents.ValidateEventData(data)end
---@param target UnityEngine.GameObject
---@param eventData UnityEngine.EventSystems.BaseEventData
---@param functor any
---@return System.Boolean
function UnityEngine.EventSystems.ExecuteEvents.Execute(target, eventData, functor)end
---@param root UnityEngine.GameObject
---@param eventData UnityEngine.EventSystems.BaseEventData
---@param callbackFunction any
---@return UnityEngine.GameObject
function UnityEngine.EventSystems.ExecuteEvents.ExecuteHierarchy(root, eventData, callbackFunction)end
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEngine.EventSystems.ExecuteEvents.CanHandleEvent(go)end
---@param root UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEngine.EventSystems.ExecuteEvents.GetEventHandler(root)end
---@class UnityEngine.EventSystems.MoveDirection : System.Enum
UnityEngine.EventSystems.MoveDirection = {}
---@type UnityEngine.EventSystems.MoveDirection
CS.UnityEngine.EventSystems.MoveDirection = UnityEngine.EventSystems.MoveDirection

---@return System.Int32 value:0
UnityEngine.EventSystems.MoveDirection.Left = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.MoveDirection.Up = 1
---@return System.Int32 value:2
UnityEngine.EventSystems.MoveDirection.Right = 2
---@return System.Int32 value:3
UnityEngine.EventSystems.MoveDirection.Down = 3
---@return System.Int32 value:4
UnityEngine.EventSystems.MoveDirection.None = 4

---@class UnityEngine.EventSystems.RaycastResult : System.ValueType
---@field public gameObject UnityEngine.GameObject @ setter getter
---@field public isValid System.Boolean @  getter
---@field public module UnityEngine.EventSystems.BaseRaycaster
---@field public distance System.Single
---@field public index System.Single
---@field public depth System.Int32
---@field public sortingLayer System.Int32
---@field public sortingOrder System.Int32
---@field public worldPosition UnityEngine.Vector3
---@field public worldNormal UnityEngine.Vector3
---@field public screenPosition UnityEngine.Vector2
UnityEngine.EventSystems.RaycastResult = {}
---@type UnityEngine.EventSystems.RaycastResult
CS.UnityEngine.EventSystems.RaycastResult = UnityEngine.EventSystems.RaycastResult

---@return System.Void
function UnityEngine.EventSystems.RaycastResult:Clear()end
---@return System.String
function UnityEngine.EventSystems.RaycastResult:ToString()end
---@class UnityEngine.EventSystems.UIBehaviour : UnityEngine.MonoBehaviour
UnityEngine.EventSystems.UIBehaviour = {}
---@type UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.EventSystems.UIBehaviour = UnityEngine.EventSystems.UIBehaviour

---@return System.Boolean
function UnityEngine.EventSystems.UIBehaviour:IsActive()end
---@return System.Boolean
function UnityEngine.EventSystems.UIBehaviour:IsDestroyed()end
---@class UnityEngine.EventSystems.AxisEventData : UnityEngine.EventSystems.BaseEventData
---@field public moveVector UnityEngine.Vector2 @ setter getter
---@field public moveDir UnityEngine.EventSystems.MoveDirection @ setter getter
UnityEngine.EventSystems.AxisEventData = {}
---@type UnityEngine.EventSystems.AxisEventData
CS.UnityEngine.EventSystems.AxisEventData = UnityEngine.EventSystems.AxisEventData

---@class UnityEngine.EventSystems.AbstractEventData : System.Object
---@field public used System.Boolean @  getter
UnityEngine.EventSystems.AbstractEventData = {}
---@type UnityEngine.EventSystems.AbstractEventData
CS.UnityEngine.EventSystems.AbstractEventData = UnityEngine.EventSystems.AbstractEventData

---@return System.Void
function UnityEngine.EventSystems.AbstractEventData:Reset()end
---@return System.Void
function UnityEngine.EventSystems.AbstractEventData:Use()end
---@class UnityEngine.EventSystems.BaseEventData : UnityEngine.EventSystems.AbstractEventData
---@field public currentInputModule UnityEngine.EventSystems.BaseInputModule @  getter
---@field public selectedObject UnityEngine.GameObject @ setter getter
UnityEngine.EventSystems.BaseEventData = {}
---@type UnityEngine.EventSystems.BaseEventData
CS.UnityEngine.EventSystems.BaseEventData = UnityEngine.EventSystems.BaseEventData

---@class UnityEngine.EventSystems.PointerEventData : UnityEngine.EventSystems.BaseEventData
---@field public pointerEnter UnityEngine.GameObject @ setter getter
---@field public lastPress UnityEngine.GameObject @ setter getter
---@field public rawPointerPress UnityEngine.GameObject @ setter getter
---@field public pointerDrag UnityEngine.GameObject @ setter getter
---@field public pointerCurrentRaycast UnityEngine.EventSystems.RaycastResult @ setter getter
---@field public pointerPressRaycast UnityEngine.EventSystems.RaycastResult @ setter getter
---@field public eligibleForClick System.Boolean @ setter getter
---@field public pointerId System.Int32 @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public delta UnityEngine.Vector2 @ setter getter
---@field public pressPosition UnityEngine.Vector2 @ setter getter
---@field public worldPosition UnityEngine.Vector3 @ setter getter
---@field public worldNormal UnityEngine.Vector3 @ setter getter
---@field public clickTime System.Single @ setter getter
---@field public clickCount System.Int32 @ setter getter
---@field public scrollDelta UnityEngine.Vector2 @ setter getter
---@field public useDragThreshold System.Boolean @ setter getter
---@field public dragging System.Boolean @ setter getter
---@field public button UnityEngine.EventSystems.PointerEventData.InputButton @ setter getter
---@field public enterEventCamera UnityEngine.Camera @  getter
---@field public pressEventCamera UnityEngine.Camera @  getter
---@field public pointerPress UnityEngine.GameObject @ setter getter
---@field public hovered System.Collections.Generic.List
UnityEngine.EventSystems.PointerEventData = {}
---@type UnityEngine.EventSystems.PointerEventData
CS.UnityEngine.EventSystems.PointerEventData = UnityEngine.EventSystems.PointerEventData

---@return System.Boolean
function UnityEngine.EventSystems.PointerEventData:IsPointerMoving()end
---@return System.Boolean
function UnityEngine.EventSystems.PointerEventData:IsScrolling()end
---@return System.String
function UnityEngine.EventSystems.PointerEventData:ToString()end
---@class UnityEngine.EventSystems.PointerEventData.InputButton : System.Enum
UnityEngine.EventSystems.PointerEventData.InputButton = {}
---@type UnityEngine.EventSystems.PointerEventData.InputButton
CS.UnityEngine.EventSystems.PointerEventData.InputButton = UnityEngine.EventSystems.PointerEventData.InputButton

---@return System.Int32 value:0
UnityEngine.EventSystems.PointerEventData.InputButton.Left = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.PointerEventData.InputButton.Right = 1
---@return System.Int32 value:2
UnityEngine.EventSystems.PointerEventData.InputButton.Middle = 2

---@class UnityEngine.EventSystems.PointerEventData.FramePressState : System.Enum
UnityEngine.EventSystems.PointerEventData.FramePressState = {}
---@type UnityEngine.EventSystems.PointerEventData.FramePressState
CS.UnityEngine.EventSystems.PointerEventData.FramePressState = UnityEngine.EventSystems.PointerEventData.FramePressState

---@return System.Int32 value:0
UnityEngine.EventSystems.PointerEventData.FramePressState.Pressed = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.PointerEventData.FramePressState.Released = 1
---@return System.Int32 value:2
UnityEngine.EventSystems.PointerEventData.FramePressState.PressedAndReleased = 2
---@return System.Int32 value:3
UnityEngine.EventSystems.PointerEventData.FramePressState.NotChanged = 3

---@class UnityEngine.EventSystems.BaseInput : UnityEngine.EventSystems.UIBehaviour
---@field public compositionString System.String @  getter
---@field public imeCompositionMode UnityEngine.IMECompositionMode @ setter getter
---@field public compositionCursorPos UnityEngine.Vector2 @ setter getter
---@field public mousePresent System.Boolean @  getter
---@field public mousePosition UnityEngine.Vector2 @  getter
---@field public mouseScrollDelta UnityEngine.Vector2 @  getter
---@field public touchSupported System.Boolean @  getter
---@field public touchCount System.Int32 @  getter
UnityEngine.EventSystems.BaseInput = {}
---@type UnityEngine.EventSystems.BaseInput
CS.UnityEngine.EventSystems.BaseInput = UnityEngine.EventSystems.BaseInput

---@param button System.Int32
---@return System.Boolean
function UnityEngine.EventSystems.BaseInput:GetMouseButtonDown(button)end
---@param button System.Int32
---@return System.Boolean
function UnityEngine.EventSystems.BaseInput:GetMouseButtonUp(button)end
---@param button System.Int32
---@return System.Boolean
function UnityEngine.EventSystems.BaseInput:GetMouseButton(button)end
---@param index System.Int32
---@return UnityEngine.Touch
function UnityEngine.EventSystems.BaseInput:GetTouch(index)end
---@param axisName System.String
---@return System.Single
function UnityEngine.EventSystems.BaseInput:GetAxisRaw(axisName)end
---@param buttonName System.String
---@return System.Boolean
function UnityEngine.EventSystems.BaseInput:GetButtonDown(buttonName)end
---@class UnityEngine.EventSystems.BaseInputModule : UnityEngine.EventSystems.UIBehaviour
---@field public input UnityEngine.EventSystems.BaseInput @  getter
---@field public inputOverride UnityEngine.EventSystems.BaseInput @ setter getter
UnityEngine.EventSystems.BaseInputModule = {}
---@type UnityEngine.EventSystems.BaseInputModule
CS.UnityEngine.EventSystems.BaseInputModule = UnityEngine.EventSystems.BaseInputModule

---@return System.Void
function UnityEngine.EventSystems.BaseInputModule:Process()end
---@param pointerId System.Int32
---@return System.Boolean
function UnityEngine.EventSystems.BaseInputModule:IsPointerOverGameObject(pointerId)end
---@return System.Boolean
function UnityEngine.EventSystems.BaseInputModule:ShouldActivateModule()end
---@return System.Void
function UnityEngine.EventSystems.BaseInputModule:DeactivateModule()end
---@return System.Void
function UnityEngine.EventSystems.BaseInputModule:ActivateModule()end
---@return System.Void
function UnityEngine.EventSystems.BaseInputModule:UpdateModule()end
---@return System.Boolean
function UnityEngine.EventSystems.BaseInputModule:IsModuleSupported()end
---@class UnityEngine.EventSystems.PointerInputModule : UnityEngine.EventSystems.BaseInputModule
---@field public kMouseLeftId System.Int32
---@field public kMouseRightId System.Int32
---@field public kMouseMiddleId System.Int32
---@field public kFakeTouchesId System.Int32
UnityEngine.EventSystems.PointerInputModule = {}
---@type UnityEngine.EventSystems.PointerInputModule
CS.UnityEngine.EventSystems.PointerInputModule = UnityEngine.EventSystems.PointerInputModule

---@param pointerId System.Int32
---@return System.Boolean
function UnityEngine.EventSystems.PointerInputModule:IsPointerOverGameObject(pointerId)end
---@return System.String
function UnityEngine.EventSystems.PointerInputModule:ToString()end
---@class UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData : System.Object
---@field public buttonState UnityEngine.EventSystems.PointerEventData.FramePressState
---@field public buttonData UnityEngine.EventSystems.PointerEventData
UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData = {}
---@type UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData
CS.UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData = UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData

---@return System.Boolean
function UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData:PressedThisFrame()end
---@return System.Boolean
function UnityEngine.EventSystems.PointerInputModule.MouseButtonEventData:ReleasedThisFrame()end
---@class UnityEngine.EventSystems.StandaloneInputModule : UnityEngine.EventSystems.PointerInputModule
---@field public inputMode UnityEngine.EventSystems.StandaloneInputModule.InputMode @  getter
---@field public allowActivationOnMobileDevice System.Boolean @ setter getter
---@field public forceModuleActive System.Boolean @ setter getter
---@field public inputActionsPerSecond System.Single @ setter getter
---@field public repeatDelay System.Single @ setter getter
---@field public horizontalAxis System.String @ setter getter
---@field public verticalAxis System.String @ setter getter
---@field public submitButton System.String @ setter getter
---@field public cancelButton System.String @ setter getter
UnityEngine.EventSystems.StandaloneInputModule = {}
---@type UnityEngine.EventSystems.StandaloneInputModule
CS.UnityEngine.EventSystems.StandaloneInputModule = UnityEngine.EventSystems.StandaloneInputModule

---@return System.Void
function UnityEngine.EventSystems.StandaloneInputModule:UpdateModule()end
---@return System.Boolean
function UnityEngine.EventSystems.StandaloneInputModule:IsModuleSupported()end
---@return System.Boolean
function UnityEngine.EventSystems.StandaloneInputModule:ShouldActivateModule()end
---@return System.Void
function UnityEngine.EventSystems.StandaloneInputModule:ActivateModule()end
---@return System.Void
function UnityEngine.EventSystems.StandaloneInputModule:DeactivateModule()end
---@return System.Void
function UnityEngine.EventSystems.StandaloneInputModule:Process()end
---@class UnityEngine.EventSystems.StandaloneInputModule.InputMode : System.Enum
UnityEngine.EventSystems.StandaloneInputModule.InputMode = {}
---@type UnityEngine.EventSystems.StandaloneInputModule.InputMode
CS.UnityEngine.EventSystems.StandaloneInputModule.InputMode = UnityEngine.EventSystems.StandaloneInputModule.InputMode

---@return System.Int32 value:0
UnityEngine.EventSystems.StandaloneInputModule.InputMode.Mouse = 0
---@return System.Int32 value:1
UnityEngine.EventSystems.StandaloneInputModule.InputMode.Buttons = 1

---@class UnityEngine.EventSystems.TouchInputModule : UnityEngine.EventSystems.PointerInputModule
---@field public allowActivationOnStandalone System.Boolean @ setter getter
---@field public forceModuleActive System.Boolean @ setter getter
UnityEngine.EventSystems.TouchInputModule = {}
---@type UnityEngine.EventSystems.TouchInputModule
CS.UnityEngine.EventSystems.TouchInputModule = UnityEngine.EventSystems.TouchInputModule

---@return System.Void
function UnityEngine.EventSystems.TouchInputModule:UpdateModule()end
---@return System.Boolean
function UnityEngine.EventSystems.TouchInputModule:IsModuleSupported()end
---@return System.Boolean
function UnityEngine.EventSystems.TouchInputModule:ShouldActivateModule()end
---@return System.Void
function UnityEngine.EventSystems.TouchInputModule:Process()end
---@return System.Void
function UnityEngine.EventSystems.TouchInputModule:DeactivateModule()end
---@return System.String
function UnityEngine.EventSystems.TouchInputModule:ToString()end
---@class UnityEngine.EventSystems.BaseRaycaster : UnityEngine.EventSystems.UIBehaviour
---@field public eventCamera UnityEngine.Camera @  getter
---@field public priority System.Int32 @  getter
---@field public sortOrderPriority System.Int32 @  getter
---@field public renderOrderPriority System.Int32 @  getter
UnityEngine.EventSystems.BaseRaycaster = {}
---@type UnityEngine.EventSystems.BaseRaycaster
CS.UnityEngine.EventSystems.BaseRaycaster = UnityEngine.EventSystems.BaseRaycaster

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList System.Collections.Generic.List
---@return System.Void
function UnityEngine.EventSystems.BaseRaycaster:Raycast(eventData, resultAppendList)end
---@return System.String
function UnityEngine.EventSystems.BaseRaycaster:ToString()end
---@class UnityEngine.EventSystems.Physics2DRaycaster : UnityEngine.EventSystems.PhysicsRaycaster
UnityEngine.EventSystems.Physics2DRaycaster = {}
---@type UnityEngine.EventSystems.Physics2DRaycaster
CS.UnityEngine.EventSystems.Physics2DRaycaster = UnityEngine.EventSystems.Physics2DRaycaster

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList System.Collections.Generic.List
---@return System.Void
function UnityEngine.EventSystems.Physics2DRaycaster:Raycast(eventData, resultAppendList)end
---@class UnityEngine.EventSystems.PhysicsRaycaster : UnityEngine.EventSystems.BaseRaycaster
---@field public eventCamera UnityEngine.Camera @  getter
---@field public depth System.Int32 @  getter
---@field public finalEventMask System.Int32 @  getter
---@field public eventMask UnityEngine.LayerMask @ setter getter
---@field public maxRayIntersections System.Int32 @ setter getter
UnityEngine.EventSystems.PhysicsRaycaster = {}
---@type UnityEngine.EventSystems.PhysicsRaycaster
CS.UnityEngine.EventSystems.PhysicsRaycaster = UnityEngine.EventSystems.PhysicsRaycaster

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList System.Collections.Generic.List
---@return System.Void
function UnityEngine.EventSystems.PhysicsRaycaster:Raycast(eventData, resultAppendList)end
