---@class UnityEngine.UI.AnimationTriggers : System.Object
---@field public normalTrigger System.String @ setter getter
---@field public highlightedTrigger System.String @ setter getter
---@field public pressedTrigger System.String @ setter getter
---@field public disabledTrigger System.String @ setter getter
UnityEngine.UI.AnimationTriggers = {}
---@type UnityEngine.UI.AnimationTriggers
CS.UnityEngine.UI.AnimationTriggers = UnityEngine.UI.AnimationTriggers

---@class UnityEngine.UI.Button : UnityEngine.UI.Selectable
---@field public onClick UnityEngine.UI.Button.ButtonClickedEvent @ setter getter
UnityEngine.UI.Button = {}
---@type UnityEngine.UI.Button
CS.UnityEngine.UI.Button = UnityEngine.UI.Button

---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Button:OnPointerClick(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Button:OnSubmit(eventData)end
---@class UnityEngine.UI.Button.ButtonClickedEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.Button.ButtonClickedEvent = {}
---@type UnityEngine.UI.Button.ButtonClickedEvent
CS.UnityEngine.UI.Button.ButtonClickedEvent = UnityEngine.UI.Button.ButtonClickedEvent

---@class UnityEngine.UI.CanvasUpdate : System.Enum
UnityEngine.UI.CanvasUpdate = {}
---@type UnityEngine.UI.CanvasUpdate
CS.UnityEngine.UI.CanvasUpdate = UnityEngine.UI.CanvasUpdate

---@return System.Int32 value:0
UnityEngine.UI.CanvasUpdate.Prelayout = 0
---@return System.Int32 value:1
UnityEngine.UI.CanvasUpdate.Layout = 1
---@return System.Int32 value:2
UnityEngine.UI.CanvasUpdate.PostLayout = 2
---@return System.Int32 value:3
UnityEngine.UI.CanvasUpdate.PreRender = 3
---@return System.Int32 value:4
UnityEngine.UI.CanvasUpdate.LatePreRender = 4
---@return System.Int32 value:5
UnityEngine.UI.CanvasUpdate.MaxUpdateValue = 5

---@class UnityEngine.UI.CanvasUpdateRegistry : System.Object
---@field public instance UnityEngine.UI.CanvasUpdateRegistry @static  getter
UnityEngine.UI.CanvasUpdateRegistry = {}
---@type UnityEngine.UI.CanvasUpdateRegistry
CS.UnityEngine.UI.CanvasUpdateRegistry = UnityEngine.UI.CanvasUpdateRegistry

---@param element UnityEngine.UI.ICanvasElement
---@return System.Void
function UnityEngine.UI.CanvasUpdateRegistry.RegisterCanvasElementForLayoutRebuild(element)end
---@param element UnityEngine.UI.ICanvasElement
---@return System.Boolean
function UnityEngine.UI.CanvasUpdateRegistry.TryRegisterCanvasElementForLayoutRebuild(element)end
---@param element UnityEngine.UI.ICanvasElement
---@return System.Void
function UnityEngine.UI.CanvasUpdateRegistry.RegisterCanvasElementForGraphicRebuild(element)end
---@param element UnityEngine.UI.ICanvasElement
---@return System.Boolean
function UnityEngine.UI.CanvasUpdateRegistry.TryRegisterCanvasElementForGraphicRebuild(element)end
---@param element UnityEngine.UI.ICanvasElement
---@return System.Void
function UnityEngine.UI.CanvasUpdateRegistry.UnRegisterCanvasElementForRebuild(element)end
---@return System.Boolean
function UnityEngine.UI.CanvasUpdateRegistry.IsRebuildingLayout()end
---@return System.Boolean
function UnityEngine.UI.CanvasUpdateRegistry.IsRebuildingGraphics()end
---@class UnityEngine.UI.ColorBlock : System.ValueType
---@field public normalColor UnityEngine.Color @ setter getter
---@field public highlightedColor UnityEngine.Color @ setter getter
---@field public pressedColor UnityEngine.Color @ setter getter
---@field public disabledColor UnityEngine.Color @ setter getter
---@field public colorMultiplier System.Single @ setter getter
---@field public fadeDuration System.Single @ setter getter
---@field public defaultColorBlock UnityEngine.UI.ColorBlock @static  getter
UnityEngine.UI.ColorBlock = {}
---@type UnityEngine.UI.ColorBlock
CS.UnityEngine.UI.ColorBlock = UnityEngine.UI.ColorBlock

---@overload fun(other:UnityEngine.UI.ColorBlock):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.UI.ColorBlock:Equals(obj)end
---@param point1 UnityEngine.UI.ColorBlock
---@param point2 UnityEngine.UI.ColorBlock
---@return System.Boolean
function UnityEngine.UI.ColorBlock.op_Equality(point1, point2)end
---@param point1 UnityEngine.UI.ColorBlock
---@param point2 UnityEngine.UI.ColorBlock
---@return System.Boolean
function UnityEngine.UI.ColorBlock.op_Inequality(point1, point2)end
---@return System.Int32
function UnityEngine.UI.ColorBlock:GetHashCode()end
---@class UnityEngine.UI.DefaultControls : System.Object
UnityEngine.UI.DefaultControls = {}
---@type UnityEngine.UI.DefaultControls
CS.UnityEngine.UI.DefaultControls = UnityEngine.UI.DefaultControls

---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreatePanel(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateButton(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateText(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateImage(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateRawImage(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateSlider(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateScrollbar(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateToggle(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateInputField(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateDropdown(resources)end
---@param resources UnityEngine.UI.DefaultControls.Resources
---@return UnityEngine.GameObject
function UnityEngine.UI.DefaultControls.CreateScrollView(resources)end
---@class UnityEngine.UI.DefaultControls.Resources : System.ValueType
---@field public standard UnityEngine.Sprite
---@field public background UnityEngine.Sprite
---@field public inputField UnityEngine.Sprite
---@field public knob UnityEngine.Sprite
---@field public checkmark UnityEngine.Sprite
---@field public dropdown UnityEngine.Sprite
---@field public mask UnityEngine.Sprite
UnityEngine.UI.DefaultControls.Resources = {}
---@type UnityEngine.UI.DefaultControls.Resources
CS.UnityEngine.UI.DefaultControls.Resources = UnityEngine.UI.DefaultControls.Resources

---@class UnityEngine.UI.Dropdown : UnityEngine.UI.Selectable
---@field public template UnityEngine.RectTransform @ setter getter
---@field public captionText UnityEngine.UI.Text @ setter getter
---@field public captionImage UnityEngine.UI.Image @ setter getter
---@field public itemText UnityEngine.UI.Text @ setter getter
---@field public itemImage UnityEngine.UI.Image @ setter getter
---@field public options System.Collections.Generic.List @ setter getter
---@field public onValueChanged UnityEngine.UI.Dropdown.DropdownEvent @ setter getter
---@field public value System.Int32 @ setter getter
UnityEngine.UI.Dropdown = {}
---@type UnityEngine.UI.Dropdown
CS.UnityEngine.UI.Dropdown = UnityEngine.UI.Dropdown

---@return System.Void
function UnityEngine.UI.Dropdown:RefreshShownValue()end
---@overload fun(options:System.Collections.Generic.List):System.Void
---@overload fun(options:System.Collections.Generic.List):System.Void
---@param options System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.Dropdown:AddOptions(options)end
---@return System.Void
function UnityEngine.UI.Dropdown:ClearOptions()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Dropdown:OnPointerClick(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Dropdown:OnSubmit(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Dropdown:OnCancel(eventData)end
---@return System.Void
function UnityEngine.UI.Dropdown:Show()end
---@return System.Void
function UnityEngine.UI.Dropdown:Hide()end
---@class UnityEngine.UI.Dropdown.OptionData : System.Object
---@field public text System.String @ setter getter
---@field public image UnityEngine.Sprite @ setter getter
UnityEngine.UI.Dropdown.OptionData = {}
---@type UnityEngine.UI.Dropdown.OptionData
CS.UnityEngine.UI.Dropdown.OptionData = UnityEngine.UI.Dropdown.OptionData

---@class UnityEngine.UI.Dropdown.OptionDataList : System.Object
---@field public options System.Collections.Generic.List @ setter getter
UnityEngine.UI.Dropdown.OptionDataList = {}
---@type UnityEngine.UI.Dropdown.OptionDataList
CS.UnityEngine.UI.Dropdown.OptionDataList = UnityEngine.UI.Dropdown.OptionDataList

---@class UnityEngine.UI.Dropdown.DropdownEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.Dropdown.DropdownEvent = {}
---@type UnityEngine.UI.Dropdown.DropdownEvent
CS.UnityEngine.UI.Dropdown.DropdownEvent = UnityEngine.UI.Dropdown.DropdownEvent

---@class UnityEngine.UI.FontData : System.Object
---@field public defaultFontData UnityEngine.UI.FontData @static  getter
---@field public font UnityEngine.Font @ setter getter
---@field public fontSize System.Int32 @ setter getter
---@field public fontStyle UnityEngine.FontStyle @ setter getter
---@field public bestFit System.Boolean @ setter getter
---@field public minSize System.Int32 @ setter getter
---@field public maxSize System.Int32 @ setter getter
---@field public alignment UnityEngine.TextAnchor @ setter getter
---@field public alignByGeometry System.Boolean @ setter getter
---@field public richText System.Boolean @ setter getter
---@field public horizontalOverflow UnityEngine.HorizontalWrapMode @ setter getter
---@field public verticalOverflow UnityEngine.VerticalWrapMode @ setter getter
---@field public lineSpacing System.Single @ setter getter
UnityEngine.UI.FontData = {}
---@type UnityEngine.UI.FontData
CS.UnityEngine.UI.FontData = UnityEngine.UI.FontData

---@class UnityEngine.UI.FontUpdateTracker : System.Object
UnityEngine.UI.FontUpdateTracker = {}
---@type UnityEngine.UI.FontUpdateTracker
CS.UnityEngine.UI.FontUpdateTracker = UnityEngine.UI.FontUpdateTracker

---@param t UnityEngine.UI.Text
---@return System.Void
function UnityEngine.UI.FontUpdateTracker.TrackText(t)end
---@param t UnityEngine.UI.Text
---@return System.Void
function UnityEngine.UI.FontUpdateTracker.UntrackText(t)end
---@class UnityEngine.UI.Graphic : UnityEngine.EventSystems.UIBehaviour
---@field public defaultGraphicMaterial UnityEngine.Material @static  getter
---@field public color UnityEngine.Color @ setter getter
---@field public raycastTarget System.Boolean @ setter getter
---@field public depth System.Int32 @  getter
---@field public rectTransform UnityEngine.RectTransform @  getter
---@field public canvas UnityEngine.Canvas @  getter
---@field public canvasRenderer UnityEngine.CanvasRenderer @  getter
---@field public defaultMaterial UnityEngine.Material @  getter
---@field public material UnityEngine.Material @ setter getter
---@field public materialForRendering UnityEngine.Material @  getter
---@field public mainTexture UnityEngine.Texture @  getter
UnityEngine.UI.Graphic = {}
---@type UnityEngine.UI.Graphic
CS.UnityEngine.UI.Graphic = UnityEngine.UI.Graphic

---@return System.Void
function UnityEngine.UI.Graphic:SetAllDirty()end
---@return System.Void
function UnityEngine.UI.Graphic:SetLayoutDirty()end
---@return System.Void
function UnityEngine.UI.Graphic:SetVerticesDirty()end
---@return System.Void
function UnityEngine.UI.Graphic:SetMaterialDirty()end
---@return System.Void
function UnityEngine.UI.Graphic:OnCullingChanged()end
---@param update UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.Graphic:Rebuild(update)end
---@return System.Void
function UnityEngine.UI.Graphic:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.Graphic:GraphicUpdateComplete()end
---@return System.Void
function UnityEngine.UI.Graphic:OnRebuildRequested()end
---@return System.Void
function UnityEngine.UI.Graphic:SetNativeSize()end
---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return System.Boolean
function UnityEngine.UI.Graphic:Raycast(sp, eventCamera)end
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UI.Graphic:PixelAdjustPoint(point)end
---@return UnityEngine.Rect
function UnityEngine.UI.Graphic:GetPixelAdjustedRect()end
---@overload fun(targetColor:UnityEngine.Color, duration:System.Single, ignoreTimeScale:System.Boolean, useAlpha:System.Boolean, useRGB:System.Boolean):System.Void
---@param targetColor UnityEngine.Color
---@param duration System.Single
---@param ignoreTimeScale System.Boolean
---@param useAlpha System.Boolean
---@return System.Void
function UnityEngine.UI.Graphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)end
---@param alpha System.Single
---@param duration System.Single
---@param ignoreTimeScale System.Boolean
---@return System.Void
function UnityEngine.UI.Graphic:CrossFadeAlpha(alpha, duration, ignoreTimeScale)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:RegisterDirtyLayoutCallback(action)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:UnregisterDirtyLayoutCallback(action)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:RegisterDirtyVerticesCallback(action)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:UnregisterDirtyVerticesCallback(action)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:RegisterDirtyMaterialCallback(action)end
---@param action UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.UI.Graphic:UnregisterDirtyMaterialCallback(action)end
---@class UnityEngine.UI.GraphicRaycaster : UnityEngine.EventSystems.BaseRaycaster
---@field public sortOrderPriority System.Int32 @  getter
---@field public renderOrderPriority System.Int32 @  getter
---@field public ignoreReversedGraphics System.Boolean @ setter getter
---@field public blockingObjects UnityEngine.UI.GraphicRaycaster.BlockingObjects @ setter getter
---@field public eventCamera UnityEngine.Camera @  getter
UnityEngine.UI.GraphicRaycaster = {}
---@type UnityEngine.UI.GraphicRaycaster
CS.UnityEngine.UI.GraphicRaycaster = UnityEngine.UI.GraphicRaycaster

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.GraphicRaycaster:Raycast(eventData, resultAppendList)end
---@class UnityEngine.UI.GraphicRaycaster.BlockingObjects : System.Enum
UnityEngine.UI.GraphicRaycaster.BlockingObjects = {}
---@type UnityEngine.UI.GraphicRaycaster.BlockingObjects
CS.UnityEngine.UI.GraphicRaycaster.BlockingObjects = UnityEngine.UI.GraphicRaycaster.BlockingObjects

---@return System.Int32 value:0
UnityEngine.UI.GraphicRaycaster.BlockingObjects.None = 0
---@return System.Int32 value:1
UnityEngine.UI.GraphicRaycaster.BlockingObjects.TwoD = 1
---@return System.Int32 value:2
UnityEngine.UI.GraphicRaycaster.BlockingObjects.ThreeD = 2
---@return System.Int32 value:3
UnityEngine.UI.GraphicRaycaster.BlockingObjects.All = 3

---@class UnityEngine.UI.GraphicRebuildTracker : System.Object
UnityEngine.UI.GraphicRebuildTracker = {}
---@type UnityEngine.UI.GraphicRebuildTracker
CS.UnityEngine.UI.GraphicRebuildTracker = UnityEngine.UI.GraphicRebuildTracker

---@param g UnityEngine.UI.Graphic
---@return System.Void
function UnityEngine.UI.GraphicRebuildTracker.TrackGraphic(g)end
---@param g UnityEngine.UI.Graphic
---@return System.Void
function UnityEngine.UI.GraphicRebuildTracker.UnTrackGraphic(g)end
---@class UnityEngine.UI.GraphicRegistry : System.Object
---@field public instance UnityEngine.UI.GraphicRegistry @static  getter
UnityEngine.UI.GraphicRegistry = {}
---@type UnityEngine.UI.GraphicRegistry
CS.UnityEngine.UI.GraphicRegistry = UnityEngine.UI.GraphicRegistry

---@param c UnityEngine.Canvas
---@param graphic UnityEngine.UI.Graphic
---@return System.Void
function UnityEngine.UI.GraphicRegistry.RegisterGraphicForCanvas(c, graphic)end
---@param c UnityEngine.Canvas
---@param graphic UnityEngine.UI.Graphic
---@return System.Void
function UnityEngine.UI.GraphicRegistry.UnregisterGraphicForCanvas(c, graphic)end
---@param canvas UnityEngine.Canvas
---@return System.Collections.Generic.IList
function UnityEngine.UI.GraphicRegistry.GetGraphicsForCanvas(canvas)end
---@class UnityEngine.UI.Image : UnityEngine.UI.MaskableGraphic
---@field public sprite UnityEngine.Sprite @ setter getter
---@field public overrideSprite UnityEngine.Sprite @ setter getter
---@field public type UnityEngine.UI.Image.Type @ setter getter
---@field public preserveAspect System.Boolean @ setter getter
---@field public fillCenter System.Boolean @ setter getter
---@field public fillMethod UnityEngine.UI.Image.FillMethod @ setter getter
---@field public fillAmount System.Single @ setter getter
---@field public fillClockwise System.Boolean @ setter getter
---@field public fillOrigin System.Int32 @ setter getter
---@field public eventAlphaThreshold System.Single @ setter getter
---@field public alphaHitTestMinimumThreshold System.Single @ setter getter
---@field public useSpriteMesh System.Boolean @ setter getter
---@field public defaultETC1GraphicMaterial UnityEngine.Material @static  getter
---@field public mainTexture UnityEngine.Texture @  getter
---@field public hasBorder System.Boolean @  getter
---@field public pixelsPerUnit System.Single @  getter
---@field public material UnityEngine.Material @ setter getter
---@field public minWidth System.Single @  getter
---@field public preferredWidth System.Single @  getter
---@field public flexibleWidth System.Single @  getter
---@field public minHeight System.Single @  getter
---@field public preferredHeight System.Single @  getter
---@field public flexibleHeight System.Single @  getter
---@field public layoutPriority System.Int32 @  getter
UnityEngine.UI.Image = {}
---@type UnityEngine.UI.Image
CS.UnityEngine.UI.Image = UnityEngine.UI.Image

---@return System.Void
function UnityEngine.UI.Image:OnBeforeSerialize()end
---@return System.Void
function UnityEngine.UI.Image:OnAfterDeserialize()end
---@return System.Void
function UnityEngine.UI.Image:SetNativeSize()end
---@return System.Void
function UnityEngine.UI.Image:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.Image:CalculateLayoutInputVertical()end
---@param screenPoint UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return System.Boolean
function UnityEngine.UI.Image:IsRaycastLocationValid(screenPoint, eventCamera)end
---@class UnityEngine.UI.Image.Type : System.Enum
UnityEngine.UI.Image.Type = {}
---@type UnityEngine.UI.Image.Type
CS.UnityEngine.UI.Image.Type = UnityEngine.UI.Image.Type

---@return System.Int32 value:0
UnityEngine.UI.Image.Type.Simple = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.Type.Sliced = 1
---@return System.Int32 value:2
UnityEngine.UI.Image.Type.Tiled = 2
---@return System.Int32 value:3
UnityEngine.UI.Image.Type.Filled = 3

---@class UnityEngine.UI.Image.FillMethod : System.Enum
UnityEngine.UI.Image.FillMethod = {}
---@type UnityEngine.UI.Image.FillMethod
CS.UnityEngine.UI.Image.FillMethod = UnityEngine.UI.Image.FillMethod

---@return System.Int32 value:0
UnityEngine.UI.Image.FillMethod.Horizontal = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.FillMethod.Vertical = 1
---@return System.Int32 value:2
UnityEngine.UI.Image.FillMethod.Radial90 = 2
---@return System.Int32 value:3
UnityEngine.UI.Image.FillMethod.Radial180 = 3
---@return System.Int32 value:4
UnityEngine.UI.Image.FillMethod.Radial360 = 4

---@class UnityEngine.UI.Image.OriginHorizontal : System.Enum
UnityEngine.UI.Image.OriginHorizontal = {}
---@type UnityEngine.UI.Image.OriginHorizontal
CS.UnityEngine.UI.Image.OriginHorizontal = UnityEngine.UI.Image.OriginHorizontal

---@return System.Int32 value:0
UnityEngine.UI.Image.OriginHorizontal.Left = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.OriginHorizontal.Right = 1

---@class UnityEngine.UI.Image.OriginVertical : System.Enum
UnityEngine.UI.Image.OriginVertical = {}
---@type UnityEngine.UI.Image.OriginVertical
CS.UnityEngine.UI.Image.OriginVertical = UnityEngine.UI.Image.OriginVertical

---@return System.Int32 value:0
UnityEngine.UI.Image.OriginVertical.Bottom = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.OriginVertical.Top = 1

---@class UnityEngine.UI.Image.Origin90 : System.Enum
UnityEngine.UI.Image.Origin90 = {}
---@type UnityEngine.UI.Image.Origin90
CS.UnityEngine.UI.Image.Origin90 = UnityEngine.UI.Image.Origin90

---@return System.Int32 value:0
UnityEngine.UI.Image.Origin90.BottomLeft = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.Origin90.TopLeft = 1
---@return System.Int32 value:2
UnityEngine.UI.Image.Origin90.TopRight = 2
---@return System.Int32 value:3
UnityEngine.UI.Image.Origin90.BottomRight = 3

---@class UnityEngine.UI.Image.Origin180 : System.Enum
UnityEngine.UI.Image.Origin180 = {}
---@type UnityEngine.UI.Image.Origin180
CS.UnityEngine.UI.Image.Origin180 = UnityEngine.UI.Image.Origin180

---@return System.Int32 value:0
UnityEngine.UI.Image.Origin180.Bottom = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.Origin180.Left = 1
---@return System.Int32 value:2
UnityEngine.UI.Image.Origin180.Top = 2
---@return System.Int32 value:3
UnityEngine.UI.Image.Origin180.Right = 3

---@class UnityEngine.UI.Image.Origin360 : System.Enum
UnityEngine.UI.Image.Origin360 = {}
---@type UnityEngine.UI.Image.Origin360
CS.UnityEngine.UI.Image.Origin360 = UnityEngine.UI.Image.Origin360

---@return System.Int32 value:0
UnityEngine.UI.Image.Origin360.Bottom = 0
---@return System.Int32 value:1
UnityEngine.UI.Image.Origin360.Right = 1
---@return System.Int32 value:2
UnityEngine.UI.Image.Origin360.Top = 2
---@return System.Int32 value:3
UnityEngine.UI.Image.Origin360.Left = 3

---@class UnityEngine.UI.InputField : UnityEngine.UI.Selectable
---@field public shouldHideMobileInput System.Boolean @ setter getter
---@field public text System.String @ setter getter
---@field public isFocused System.Boolean @  getter
---@field public caretBlinkRate System.Single @ setter getter
---@field public caretWidth System.Int32 @ setter getter
---@field public textComponent UnityEngine.UI.Text @ setter getter
---@field public placeholder UnityEngine.UI.Graphic @ setter getter
---@field public caretColor UnityEngine.Color @ setter getter
---@field public customCaretColor System.Boolean @ setter getter
---@field public selectionColor UnityEngine.Color @ setter getter
---@field public onEndEdit UnityEngine.UI.InputField.SubmitEvent @ setter getter
---@field public onValueChange UnityEngine.UI.InputField.OnChangeEvent @ setter getter
---@field public onValueChanged UnityEngine.UI.InputField.OnChangeEvent @ setter getter
---@field public onValidateInput UnityEngine.UI.InputField.OnValidateInput @ setter getter
---@field public characterLimit System.Int32 @ setter getter
---@field public contentType UnityEngine.UI.InputField.ContentType @ setter getter
---@field public lineType UnityEngine.UI.InputField.LineType @ setter getter
---@field public inputType UnityEngine.UI.InputField.InputType @ setter getter
---@field public touchScreenKeyboard UnityEngine.TouchScreenKeyboard @  getter
---@field public keyboardType UnityEngine.TouchScreenKeyboardType @ setter getter
---@field public characterValidation UnityEngine.UI.InputField.CharacterValidation @ setter getter
---@field public readOnly System.Boolean @ setter getter
---@field public multiLine System.Boolean @  getter
---@field public asteriskChar System.Char @ setter getter
---@field public wasCanceled System.Boolean @  getter
---@field public caretSelectPosition System.Int32 @ setter getter
---@field public caretPosition System.Int32 @ setter getter
---@field public selectionAnchorPosition System.Int32 @ setter getter
---@field public selectionFocusPosition System.Int32 @ setter getter
---@field public minWidth System.Single @  getter
---@field public preferredWidth System.Single @  getter
---@field public flexibleWidth System.Single @  getter
---@field public minHeight System.Single @  getter
---@field public preferredHeight System.Single @  getter
---@field public flexibleHeight System.Single @  getter
---@field public layoutPriority System.Int32 @  getter
UnityEngine.UI.InputField = {}
---@type UnityEngine.UI.InputField
CS.UnityEngine.UI.InputField = UnityEngine.UI.InputField

---@param shift System.Boolean
---@return System.Void
function UnityEngine.UI.InputField:MoveTextEnd(shift)end
---@param shift System.Boolean
---@return System.Void
function UnityEngine.UI.InputField:MoveTextStart(shift)end
---@param screen UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UI.InputField:ScreenToLocal(screen)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.InputField:OnBeginDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.InputField:OnDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.InputField:OnEndDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.InputField:OnPointerDown(eventData)end
---@param e UnityEngine.Event
---@return System.Void
function UnityEngine.UI.InputField:ProcessEvent(e)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.InputField:OnUpdateSelected(eventData)end
---@return System.Void
function UnityEngine.UI.InputField:ForceLabelUpdate()end
---@param update UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.InputField:Rebuild(update)end
---@return System.Void
function UnityEngine.UI.InputField:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.InputField:GraphicUpdateComplete()end
---@return System.Void
function UnityEngine.UI.InputField:ActivateInputField()end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.InputField:OnSelect(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.InputField:OnPointerClick(eventData)end
---@return System.Void
function UnityEngine.UI.InputField:DeactivateInputField()end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.InputField:OnDeselect(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.InputField:OnSubmit(eventData)end
---@return System.Void
function UnityEngine.UI.InputField:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.InputField:CalculateLayoutInputVertical()end
---@class UnityEngine.UI.InputField.ContentType : System.Enum
UnityEngine.UI.InputField.ContentType = {}
---@type UnityEngine.UI.InputField.ContentType
CS.UnityEngine.UI.InputField.ContentType = UnityEngine.UI.InputField.ContentType

---@return System.Int32 value:0
UnityEngine.UI.InputField.ContentType.Standard = 0
---@return System.Int32 value:1
UnityEngine.UI.InputField.ContentType.Autocorrected = 1
---@return System.Int32 value:2
UnityEngine.UI.InputField.ContentType.IntegerNumber = 2
---@return System.Int32 value:3
UnityEngine.UI.InputField.ContentType.DecimalNumber = 3
---@return System.Int32 value:4
UnityEngine.UI.InputField.ContentType.Alphanumeric = 4
---@return System.Int32 value:5
UnityEngine.UI.InputField.ContentType.Name = 5
---@return System.Int32 value:6
UnityEngine.UI.InputField.ContentType.EmailAddress = 6
---@return System.Int32 value:7
UnityEngine.UI.InputField.ContentType.Password = 7
---@return System.Int32 value:8
UnityEngine.UI.InputField.ContentType.Pin = 8
---@return System.Int32 value:9
UnityEngine.UI.InputField.ContentType.Custom = 9

---@class UnityEngine.UI.InputField.InputType : System.Enum
UnityEngine.UI.InputField.InputType = {}
---@type UnityEngine.UI.InputField.InputType
CS.UnityEngine.UI.InputField.InputType = UnityEngine.UI.InputField.InputType

---@return System.Int32 value:0
UnityEngine.UI.InputField.InputType.Standard = 0
---@return System.Int32 value:1
UnityEngine.UI.InputField.InputType.AutoCorrect = 1
---@return System.Int32 value:2
UnityEngine.UI.InputField.InputType.Password = 2

---@class UnityEngine.UI.InputField.CharacterValidation : System.Enum
UnityEngine.UI.InputField.CharacterValidation = {}
---@type UnityEngine.UI.InputField.CharacterValidation
CS.UnityEngine.UI.InputField.CharacterValidation = UnityEngine.UI.InputField.CharacterValidation

---@return System.Int32 value:0
UnityEngine.UI.InputField.CharacterValidation.None = 0
---@return System.Int32 value:1
UnityEngine.UI.InputField.CharacterValidation.Integer = 1
---@return System.Int32 value:2
UnityEngine.UI.InputField.CharacterValidation.Decimal = 2
---@return System.Int32 value:3
UnityEngine.UI.InputField.CharacterValidation.Alphanumeric = 3
---@return System.Int32 value:4
UnityEngine.UI.InputField.CharacterValidation.Name = 4
---@return System.Int32 value:5
UnityEngine.UI.InputField.CharacterValidation.EmailAddress = 5

---@class UnityEngine.UI.InputField.LineType : System.Enum
UnityEngine.UI.InputField.LineType = {}
---@type UnityEngine.UI.InputField.LineType
CS.UnityEngine.UI.InputField.LineType = UnityEngine.UI.InputField.LineType

---@return System.Int32 value:0
UnityEngine.UI.InputField.LineType.SingleLine = 0
---@return System.Int32 value:1
UnityEngine.UI.InputField.LineType.MultiLineSubmit = 1
---@return System.Int32 value:2
UnityEngine.UI.InputField.LineType.MultiLineNewline = 2

---@class UnityEngine.UI.InputField.SubmitEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.InputField.SubmitEvent = {}
---@type UnityEngine.UI.InputField.SubmitEvent
CS.UnityEngine.UI.InputField.SubmitEvent = UnityEngine.UI.InputField.SubmitEvent

---@class UnityEngine.UI.InputField.OnChangeEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.InputField.OnChangeEvent = {}
---@type UnityEngine.UI.InputField.OnChangeEvent
CS.UnityEngine.UI.InputField.OnChangeEvent = UnityEngine.UI.InputField.OnChangeEvent

---@class UnityEngine.UI.Mask : UnityEngine.EventSystems.UIBehaviour
---@field public rectTransform UnityEngine.RectTransform @  getter
---@field public showMaskGraphic System.Boolean @ setter getter
---@field public graphic UnityEngine.UI.Graphic @  getter
UnityEngine.UI.Mask = {}
---@type UnityEngine.UI.Mask
CS.UnityEngine.UI.Mask = UnityEngine.UI.Mask

---@return System.Boolean
function UnityEngine.UI.Mask:MaskEnabled()end
---@return System.Void
function UnityEngine.UI.Mask:OnSiblingGraphicEnabledDisabled()end
---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return System.Boolean
function UnityEngine.UI.Mask:IsRaycastLocationValid(sp, eventCamera)end
---@param baseMaterial UnityEngine.Material
---@return UnityEngine.Material
function UnityEngine.UI.Mask:GetModifiedMaterial(baseMaterial)end
---@class UnityEngine.UI.MaskableGraphic : UnityEngine.UI.Graphic
---@field public onCullStateChanged UnityEngine.UI.MaskableGraphic.CullStateChangedEvent @ setter getter
---@field public maskable System.Boolean @ setter getter
UnityEngine.UI.MaskableGraphic = {}
---@type UnityEngine.UI.MaskableGraphic
CS.UnityEngine.UI.MaskableGraphic = UnityEngine.UI.MaskableGraphic

---@param baseMaterial UnityEngine.Material
---@return UnityEngine.Material
function UnityEngine.UI.MaskableGraphic:GetModifiedMaterial(baseMaterial)end
---@param clipRect UnityEngine.Rect
---@param validRect System.Boolean
---@return System.Void
function UnityEngine.UI.MaskableGraphic:Cull(clipRect, validRect)end
---@param clipRect UnityEngine.Rect
---@param validRect System.Boolean
---@return System.Void
function UnityEngine.UI.MaskableGraphic:SetClipRect(clipRect, validRect)end
---@return System.Void
function UnityEngine.UI.MaskableGraphic:ParentMaskStateChanged()end
---@return System.Void
function UnityEngine.UI.MaskableGraphic:RecalculateClipping()end
---@return System.Void
function UnityEngine.UI.MaskableGraphic:RecalculateMasking()end
---@class UnityEngine.UI.MaskableGraphic.CullStateChangedEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.MaskableGraphic.CullStateChangedEvent = {}
---@type UnityEngine.UI.MaskableGraphic.CullStateChangedEvent
CS.UnityEngine.UI.MaskableGraphic.CullStateChangedEvent = UnityEngine.UI.MaskableGraphic.CullStateChangedEvent

---@class UnityEngine.UI.MaskUtilities : System.Object
UnityEngine.UI.MaskUtilities = {}
---@type UnityEngine.UI.MaskUtilities
CS.UnityEngine.UI.MaskUtilities = UnityEngine.UI.MaskUtilities

---@param mask UnityEngine.Component
---@return System.Void
function UnityEngine.UI.MaskUtilities.Notify2DMaskStateChanged(mask)end
---@param mask UnityEngine.Component
---@return System.Void
function UnityEngine.UI.MaskUtilities.NotifyStencilStateChanged(mask)end
---@param start UnityEngine.Transform
---@return UnityEngine.Transform
function UnityEngine.UI.MaskUtilities.FindRootSortOverrideCanvas(start)end
---@param transform UnityEngine.Transform
---@param stopAfter UnityEngine.Transform
---@return System.Int32
function UnityEngine.UI.MaskUtilities.GetStencilDepth(transform, stopAfter)end
---@param father UnityEngine.Transform
---@param child UnityEngine.Transform
---@return System.Boolean
function UnityEngine.UI.MaskUtilities.IsDescendantOrSelf(father, child)end
---@param clippable UnityEngine.UI.IClippable
---@return UnityEngine.UI.RectMask2D
function UnityEngine.UI.MaskUtilities.GetRectMaskForClippable(clippable)end
---@param clipper UnityEngine.UI.RectMask2D
---@param masks System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.MaskUtilities.GetRectMasksForClip(clipper, masks)end
---@class UnityEngine.UI.Navigation : System.ValueType
---@field public mode UnityEngine.UI.Navigation.Mode @ setter getter
---@field public selectOnUp UnityEngine.UI.Selectable @ setter getter
---@field public selectOnDown UnityEngine.UI.Selectable @ setter getter
---@field public selectOnLeft UnityEngine.UI.Selectable @ setter getter
---@field public selectOnRight UnityEngine.UI.Selectable @ setter getter
---@field public defaultNavigation UnityEngine.UI.Navigation @static  getter
UnityEngine.UI.Navigation = {}
---@type UnityEngine.UI.Navigation
CS.UnityEngine.UI.Navigation = UnityEngine.UI.Navigation

---@param other UnityEngine.UI.Navigation
---@return System.Boolean
function UnityEngine.UI.Navigation:Equals(other)end
---@class UnityEngine.UI.Navigation.Mode : System.Enum
UnityEngine.UI.Navigation.Mode = {}
---@type UnityEngine.UI.Navigation.Mode
CS.UnityEngine.UI.Navigation.Mode = UnityEngine.UI.Navigation.Mode

---@return System.Int32 value:0
UnityEngine.UI.Navigation.Mode.None = 0
---@return System.Int32 value:1
UnityEngine.UI.Navigation.Mode.Horizontal = 1
---@return System.Int32 value:2
UnityEngine.UI.Navigation.Mode.Vertical = 2
---@return System.Int32 value:3
UnityEngine.UI.Navigation.Mode.Automatic = 3
---@return System.Int32 value:4
UnityEngine.UI.Navigation.Mode.Explicit = 4

---@class UnityEngine.UI.RawImage : UnityEngine.UI.MaskableGraphic
---@field public mainTexture UnityEngine.Texture @  getter
---@field public texture UnityEngine.Texture @ setter getter
---@field public uvRect UnityEngine.Rect @ setter getter
UnityEngine.UI.RawImage = {}
---@type UnityEngine.UI.RawImage
CS.UnityEngine.UI.RawImage = UnityEngine.UI.RawImage

---@return System.Void
function UnityEngine.UI.RawImage:SetNativeSize()end
---@class UnityEngine.UI.RectMask2D : UnityEngine.EventSystems.UIBehaviour
---@field public canvasRect UnityEngine.Rect @  getter
---@field public rectTransform UnityEngine.RectTransform @  getter
UnityEngine.UI.RectMask2D = {}
---@type UnityEngine.UI.RectMask2D
CS.UnityEngine.UI.RectMask2D = UnityEngine.UI.RectMask2D

---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return System.Boolean
function UnityEngine.UI.RectMask2D:IsRaycastLocationValid(sp, eventCamera)end
---@return System.Void
function UnityEngine.UI.RectMask2D:PerformClipping()end
---@param clippable UnityEngine.UI.IClippable
---@return System.Void
function UnityEngine.UI.RectMask2D:AddClippable(clippable)end
---@param clippable UnityEngine.UI.IClippable
---@return System.Void
function UnityEngine.UI.RectMask2D:RemoveClippable(clippable)end
---@class UnityEngine.UI.Scrollbar : UnityEngine.UI.Selectable
---@field public handleRect UnityEngine.RectTransform @ setter getter
---@field public direction UnityEngine.UI.Scrollbar.Direction @ setter getter
---@field public value System.Single @ setter getter
---@field public size System.Single @ setter getter
---@field public numberOfSteps System.Int32 @ setter getter
---@field public onValueChanged UnityEngine.UI.Scrollbar.ScrollEvent @ setter getter
UnityEngine.UI.Scrollbar = {}
---@type UnityEngine.UI.Scrollbar
CS.UnityEngine.UI.Scrollbar = UnityEngine.UI.Scrollbar

---@param executing UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.Scrollbar:Rebuild(executing)end
---@return System.Void
function UnityEngine.UI.Scrollbar:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.Scrollbar:GraphicUpdateComplete()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnBeginDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnPointerDown(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnPointerUp(eventData)end
---@param eventData UnityEngine.EventSystems.AxisEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnMove(eventData)end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Scrollbar:FindSelectableOnLeft()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Scrollbar:FindSelectableOnRight()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Scrollbar:FindSelectableOnUp()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Scrollbar:FindSelectableOnDown()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Scrollbar:OnInitializePotentialDrag(eventData)end
---@param direction UnityEngine.UI.Scrollbar.Direction
---@param includeRectLayouts System.Boolean
---@return System.Void
function UnityEngine.UI.Scrollbar:SetDirection(direction, includeRectLayouts)end
---@class UnityEngine.UI.Scrollbar.Direction : System.Enum
UnityEngine.UI.Scrollbar.Direction = {}
---@type UnityEngine.UI.Scrollbar.Direction
CS.UnityEngine.UI.Scrollbar.Direction = UnityEngine.UI.Scrollbar.Direction

---@return System.Int32 value:0
UnityEngine.UI.Scrollbar.Direction.LeftToRight = 0
---@return System.Int32 value:1
UnityEngine.UI.Scrollbar.Direction.RightToLeft = 1
---@return System.Int32 value:2
UnityEngine.UI.Scrollbar.Direction.BottomToTop = 2
---@return System.Int32 value:3
UnityEngine.UI.Scrollbar.Direction.TopToBottom = 3

---@class UnityEngine.UI.Scrollbar.ScrollEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.Scrollbar.ScrollEvent = {}
---@type UnityEngine.UI.Scrollbar.ScrollEvent
CS.UnityEngine.UI.Scrollbar.ScrollEvent = UnityEngine.UI.Scrollbar.ScrollEvent

---@class UnityEngine.UI.ScrollRect : UnityEngine.EventSystems.UIBehaviour
---@field public content UnityEngine.RectTransform @ setter getter
---@field public horizontal System.Boolean @ setter getter
---@field public vertical System.Boolean @ setter getter
---@field public movementType UnityEngine.UI.ScrollRect.MovementType @ setter getter
---@field public elasticity System.Single @ setter getter
---@field public inertia System.Boolean @ setter getter
---@field public decelerationRate System.Single @ setter getter
---@field public scrollSensitivity System.Single @ setter getter
---@field public viewport UnityEngine.RectTransform @ setter getter
---@field public horizontalScrollbar UnityEngine.UI.Scrollbar @ setter getter
---@field public verticalScrollbar UnityEngine.UI.Scrollbar @ setter getter
---@field public horizontalScrollbarVisibility UnityEngine.UI.ScrollRect.ScrollbarVisibility @ setter getter
---@field public verticalScrollbarVisibility UnityEngine.UI.ScrollRect.ScrollbarVisibility @ setter getter
---@field public horizontalScrollbarSpacing System.Single @ setter getter
---@field public verticalScrollbarSpacing System.Single @ setter getter
---@field public onValueChanged UnityEngine.UI.ScrollRect.ScrollRectEvent @ setter getter
---@field public velocity UnityEngine.Vector2 @ setter getter
---@field public normalizedPosition UnityEngine.Vector2 @ setter getter
---@field public horizontalNormalizedPosition System.Single @ setter getter
---@field public verticalNormalizedPosition System.Single @ setter getter
---@field public minWidth System.Single @  getter
---@field public preferredWidth System.Single @  getter
---@field public flexibleWidth System.Single @  getter
---@field public minHeight System.Single @  getter
---@field public preferredHeight System.Single @  getter
---@field public flexibleHeight System.Single @  getter
---@field public layoutPriority System.Int32 @  getter
UnityEngine.UI.ScrollRect = {}
---@type UnityEngine.UI.ScrollRect
CS.UnityEngine.UI.ScrollRect = UnityEngine.UI.ScrollRect

---@param executing UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.ScrollRect:Rebuild(executing)end
---@return System.Void
function UnityEngine.UI.ScrollRect:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.ScrollRect:GraphicUpdateComplete()end
---@return System.Boolean
function UnityEngine.UI.ScrollRect:IsActive()end
---@return System.Void
function UnityEngine.UI.ScrollRect:StopMovement()end
---@param data UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.ScrollRect:OnScroll(data)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.ScrollRect:OnInitializePotentialDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.ScrollRect:OnBeginDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.ScrollRect:OnEndDrag(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.ScrollRect:OnDrag(eventData)end
---@return System.Void
function UnityEngine.UI.ScrollRect:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.ScrollRect:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.ScrollRect:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.ScrollRect:SetLayoutVertical()end
---@class UnityEngine.UI.ScrollRect.MovementType : System.Enum
UnityEngine.UI.ScrollRect.MovementType = {}
---@type UnityEngine.UI.ScrollRect.MovementType
CS.UnityEngine.UI.ScrollRect.MovementType = UnityEngine.UI.ScrollRect.MovementType

---@return System.Int32 value:0
UnityEngine.UI.ScrollRect.MovementType.Unrestricted = 0
---@return System.Int32 value:1
UnityEngine.UI.ScrollRect.MovementType.Elastic = 1
---@return System.Int32 value:2
UnityEngine.UI.ScrollRect.MovementType.Clamped = 2

---@class UnityEngine.UI.ScrollRect.ScrollbarVisibility : System.Enum
UnityEngine.UI.ScrollRect.ScrollbarVisibility = {}
---@type UnityEngine.UI.ScrollRect.ScrollbarVisibility
CS.UnityEngine.UI.ScrollRect.ScrollbarVisibility = UnityEngine.UI.ScrollRect.ScrollbarVisibility

---@return System.Int32 value:0
UnityEngine.UI.ScrollRect.ScrollbarVisibility.Permanent = 0
---@return System.Int32 value:1
UnityEngine.UI.ScrollRect.ScrollbarVisibility.AutoHide = 1
---@return System.Int32 value:2
UnityEngine.UI.ScrollRect.ScrollbarVisibility.AutoHideAndExpandViewport = 2

---@class UnityEngine.UI.ScrollRect.ScrollRectEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.ScrollRect.ScrollRectEvent = {}
---@type UnityEngine.UI.ScrollRect.ScrollRectEvent
CS.UnityEngine.UI.ScrollRect.ScrollRectEvent = UnityEngine.UI.ScrollRect.ScrollRectEvent

---@class UnityEngine.UI.Selectable : UnityEngine.EventSystems.UIBehaviour
---@field public allSelectables System.Collections.Generic.List @static  getter
---@field public navigation UnityEngine.UI.Navigation @ setter getter
---@field public transition UnityEngine.UI.Selectable.Transition @ setter getter
---@field public colors UnityEngine.UI.ColorBlock @ setter getter
---@field public spriteState UnityEngine.UI.SpriteState @ setter getter
---@field public animationTriggers UnityEngine.UI.AnimationTriggers @ setter getter
---@field public targetGraphic UnityEngine.UI.Graphic @ setter getter
---@field public interactable System.Boolean @ setter getter
---@field public image UnityEngine.UI.Image @ setter getter
---@field public animator UnityEngine.Animator @  getter
UnityEngine.UI.Selectable = {}
---@type UnityEngine.UI.Selectable
CS.UnityEngine.UI.Selectable = UnityEngine.UI.Selectable

---@return System.Boolean
function UnityEngine.UI.Selectable:IsInteractable()end
---@param dir UnityEngine.Vector3
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Selectable:FindSelectable(dir)end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Selectable:FindSelectableOnLeft()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Selectable:FindSelectableOnRight()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Selectable:FindSelectableOnUp()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Selectable:FindSelectableOnDown()end
---@param eventData UnityEngine.EventSystems.AxisEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnMove(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnPointerDown(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnPointerUp(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnPointerEnter(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnPointerExit(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnSelect(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Selectable:OnDeselect(eventData)end
---@return System.Void
function UnityEngine.UI.Selectable:Select()end
---@class UnityEngine.UI.Selectable.Transition : System.Enum
UnityEngine.UI.Selectable.Transition = {}
---@type UnityEngine.UI.Selectable.Transition
CS.UnityEngine.UI.Selectable.Transition = UnityEngine.UI.Selectable.Transition

---@return System.Int32 value:0
UnityEngine.UI.Selectable.Transition.None = 0
---@return System.Int32 value:1
UnityEngine.UI.Selectable.Transition.ColorTint = 1
---@return System.Int32 value:2
UnityEngine.UI.Selectable.Transition.SpriteSwap = 2
---@return System.Int32 value:3
UnityEngine.UI.Selectable.Transition.Animation = 3

---@class UnityEngine.UI.Slider : UnityEngine.UI.Selectable
---@field public fillRect UnityEngine.RectTransform @ setter getter
---@field public handleRect UnityEngine.RectTransform @ setter getter
---@field public direction UnityEngine.UI.Slider.Direction @ setter getter
---@field public minValue System.Single @ setter getter
---@field public maxValue System.Single @ setter getter
---@field public wholeNumbers System.Boolean @ setter getter
---@field public value System.Single @ setter getter
---@field public normalizedValue System.Single @ setter getter
---@field public onValueChanged UnityEngine.UI.Slider.SliderEvent @ setter getter
UnityEngine.UI.Slider = {}
---@type UnityEngine.UI.Slider
CS.UnityEngine.UI.Slider = UnityEngine.UI.Slider

---@param executing UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.Slider:Rebuild(executing)end
---@return System.Void
function UnityEngine.UI.Slider:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.Slider:GraphicUpdateComplete()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Slider:OnPointerDown(eventData)end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Slider:OnDrag(eventData)end
---@param eventData UnityEngine.EventSystems.AxisEventData
---@return System.Void
function UnityEngine.UI.Slider:OnMove(eventData)end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Slider:FindSelectableOnLeft()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Slider:FindSelectableOnRight()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Slider:FindSelectableOnUp()end
---@return UnityEngine.UI.Selectable
function UnityEngine.UI.Slider:FindSelectableOnDown()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Slider:OnInitializePotentialDrag(eventData)end
---@param direction UnityEngine.UI.Slider.Direction
---@param includeRectLayouts System.Boolean
---@return System.Void
function UnityEngine.UI.Slider:SetDirection(direction, includeRectLayouts)end
---@class UnityEngine.UI.Slider.Direction : System.Enum
UnityEngine.UI.Slider.Direction = {}
---@type UnityEngine.UI.Slider.Direction
CS.UnityEngine.UI.Slider.Direction = UnityEngine.UI.Slider.Direction

---@return System.Int32 value:0
UnityEngine.UI.Slider.Direction.LeftToRight = 0
---@return System.Int32 value:1
UnityEngine.UI.Slider.Direction.RightToLeft = 1
---@return System.Int32 value:2
UnityEngine.UI.Slider.Direction.BottomToTop = 2
---@return System.Int32 value:3
UnityEngine.UI.Slider.Direction.TopToBottom = 3

---@class UnityEngine.UI.Slider.SliderEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.Slider.SliderEvent = {}
---@type UnityEngine.UI.Slider.SliderEvent
CS.UnityEngine.UI.Slider.SliderEvent = UnityEngine.UI.Slider.SliderEvent

---@class UnityEngine.UI.SpriteState : System.ValueType
---@field public highlightedSprite UnityEngine.Sprite @ setter getter
---@field public pressedSprite UnityEngine.Sprite @ setter getter
---@field public disabledSprite UnityEngine.Sprite @ setter getter
UnityEngine.UI.SpriteState = {}
---@type UnityEngine.UI.SpriteState
CS.UnityEngine.UI.SpriteState = UnityEngine.UI.SpriteState

---@param other UnityEngine.UI.SpriteState
---@return System.Boolean
function UnityEngine.UI.SpriteState:Equals(other)end
---@class UnityEngine.UI.StencilMaterial : System.Object
UnityEngine.UI.StencilMaterial = {}
---@type UnityEngine.UI.StencilMaterial
CS.UnityEngine.UI.StencilMaterial = UnityEngine.UI.StencilMaterial

---@overload fun(baseMat:UnityEngine.Material, stencilID:System.Int32, operation:UnityEngine.Rendering.StencilOp, compareFunction:UnityEngine.Rendering.CompareFunction, colorWriteMask:UnityEngine.Rendering.ColorWriteMask):UnityEngine.Material
---@overload fun(baseMat:UnityEngine.Material, stencilID:System.Int32, operation:UnityEngine.Rendering.StencilOp, compareFunction:UnityEngine.Rendering.CompareFunction, colorWriteMask:UnityEngine.Rendering.ColorWriteMask, readMask:System.Int32, writeMask:System.Int32):UnityEngine.Material
---@param baseMat UnityEngine.Material
---@param stencilID System.Int32
---@return UnityEngine.Material
function UnityEngine.UI.StencilMaterial.Add(baseMat, stencilID)end
---@param customMat UnityEngine.Material
---@return System.Void
function UnityEngine.UI.StencilMaterial.Remove(customMat)end
---@return System.Void
function UnityEngine.UI.StencilMaterial.ClearAll()end
---@class UnityEngine.UI.Text : UnityEngine.UI.MaskableGraphic
---@field public cachedTextGenerator UnityEngine.TextGenerator @  getter
---@field public cachedTextGeneratorForLayout UnityEngine.TextGenerator @  getter
---@field public mainTexture UnityEngine.Texture @  getter
---@field public font UnityEngine.Font @ setter getter
---@field public text System.String @ setter getter
---@field public supportRichText System.Boolean @ setter getter
---@field public resizeTextForBestFit System.Boolean @ setter getter
---@field public resizeTextMinSize System.Int32 @ setter getter
---@field public resizeTextMaxSize System.Int32 @ setter getter
---@field public alignment UnityEngine.TextAnchor @ setter getter
---@field public alignByGeometry System.Boolean @ setter getter
---@field public fontSize System.Int32 @ setter getter
---@field public horizontalOverflow UnityEngine.HorizontalWrapMode @ setter getter
---@field public verticalOverflow UnityEngine.VerticalWrapMode @ setter getter
---@field public lineSpacing System.Single @ setter getter
---@field public fontStyle UnityEngine.FontStyle @ setter getter
---@field public pixelsPerUnit System.Single @  getter
---@field public minWidth System.Single @  getter
---@field public preferredWidth System.Single @  getter
---@field public flexibleWidth System.Single @  getter
---@field public minHeight System.Single @  getter
---@field public preferredHeight System.Single @  getter
---@field public flexibleHeight System.Single @  getter
---@field public layoutPriority System.Int32 @  getter
UnityEngine.UI.Text = {}
---@type UnityEngine.UI.Text
CS.UnityEngine.UI.Text = UnityEngine.UI.Text

---@return System.Void
function UnityEngine.UI.Text:FontTextureChanged()end
---@param extents UnityEngine.Vector2
---@return UnityEngine.TextGenerationSettings
function UnityEngine.UI.Text:GetGenerationSettings(extents)end
---@param anchor UnityEngine.TextAnchor
---@return UnityEngine.Vector2
function UnityEngine.UI.Text.GetTextAnchorPivot(anchor)end
---@return System.Void
function UnityEngine.UI.Text:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.Text:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.Text:OnRebuildRequested()end
---@class UnityEngine.UI.Toggle : UnityEngine.UI.Selectable
---@field public group UnityEngine.UI.ToggleGroup @ setter getter
---@field public isOn System.Boolean @ setter getter
---@field public toggleTransition UnityEngine.UI.Toggle.ToggleTransition
---@field public graphic UnityEngine.UI.Graphic
---@field public onValueChanged UnityEngine.UI.Toggle.ToggleEvent
UnityEngine.UI.Toggle = {}
---@type UnityEngine.UI.Toggle
CS.UnityEngine.UI.Toggle = UnityEngine.UI.Toggle

---@param executing UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.Toggle:Rebuild(executing)end
---@return System.Void
function UnityEngine.UI.Toggle:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.Toggle:GraphicUpdateComplete()end
---@param eventData UnityEngine.EventSystems.PointerEventData
---@return System.Void
function UnityEngine.UI.Toggle:OnPointerClick(eventData)end
---@param eventData UnityEngine.EventSystems.BaseEventData
---@return System.Void
function UnityEngine.UI.Toggle:OnSubmit(eventData)end
---@class UnityEngine.UI.Toggle.ToggleTransition : System.Enum
UnityEngine.UI.Toggle.ToggleTransition = {}
---@type UnityEngine.UI.Toggle.ToggleTransition
CS.UnityEngine.UI.Toggle.ToggleTransition = UnityEngine.UI.Toggle.ToggleTransition

---@return System.Int32 value:0
UnityEngine.UI.Toggle.ToggleTransition.None = 0
---@return System.Int32 value:1
UnityEngine.UI.Toggle.ToggleTransition.Fade = 1

---@class UnityEngine.UI.Toggle.ToggleEvent : UnityEngine.Events.UnityEvent
UnityEngine.UI.Toggle.ToggleEvent = {}
---@type UnityEngine.UI.Toggle.ToggleEvent
CS.UnityEngine.UI.Toggle.ToggleEvent = UnityEngine.UI.Toggle.ToggleEvent

---@class UnityEngine.UI.ToggleGroup : UnityEngine.EventSystems.UIBehaviour
---@field public allowSwitchOff System.Boolean @ setter getter
UnityEngine.UI.ToggleGroup = {}
---@type UnityEngine.UI.ToggleGroup
CS.UnityEngine.UI.ToggleGroup = UnityEngine.UI.ToggleGroup

---@param toggle UnityEngine.UI.Toggle
---@return System.Void
function UnityEngine.UI.ToggleGroup:NotifyToggleOn(toggle)end
---@param toggle UnityEngine.UI.Toggle
---@return System.Void
function UnityEngine.UI.ToggleGroup:UnregisterToggle(toggle)end
---@param toggle UnityEngine.UI.Toggle
---@return System.Void
function UnityEngine.UI.ToggleGroup:RegisterToggle(toggle)end
---@return System.Boolean
function UnityEngine.UI.ToggleGroup:AnyTogglesOn()end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UI.ToggleGroup:ActiveToggles()end
---@return System.Void
function UnityEngine.UI.ToggleGroup:SetAllTogglesOff()end
---@class UnityEngine.UI.ClipperRegistry : System.Object
---@field public instance UnityEngine.UI.ClipperRegistry @static  getter
UnityEngine.UI.ClipperRegistry = {}
---@type UnityEngine.UI.ClipperRegistry
CS.UnityEngine.UI.ClipperRegistry = UnityEngine.UI.ClipperRegistry

---@return System.Void
function UnityEngine.UI.ClipperRegistry:Cull()end
---@param c UnityEngine.UI.IClipper
---@return System.Void
function UnityEngine.UI.ClipperRegistry.Register(c)end
---@param c UnityEngine.UI.IClipper
---@return System.Void
function UnityEngine.UI.ClipperRegistry.Unregister(c)end
---@class UnityEngine.UI.Clipping : System.Object
UnityEngine.UI.Clipping = {}
---@type UnityEngine.UI.Clipping
CS.UnityEngine.UI.Clipping = UnityEngine.UI.Clipping

---@param rectMaskParents System.Collections.Generic.List
---@param validRect System.Boolean
---@return UnityEngine.Rect
function UnityEngine.UI.Clipping.FindCullAndClipWorldRect(rectMaskParents, validRect)end
---@class UnityEngine.UI.AspectRatioFitter : UnityEngine.EventSystems.UIBehaviour
---@field public aspectMode UnityEngine.UI.AspectRatioFitter.AspectMode @ setter getter
---@field public aspectRatio System.Single @ setter getter
UnityEngine.UI.AspectRatioFitter = {}
---@type UnityEngine.UI.AspectRatioFitter
CS.UnityEngine.UI.AspectRatioFitter = UnityEngine.UI.AspectRatioFitter

---@return System.Void
function UnityEngine.UI.AspectRatioFitter:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.AspectRatioFitter:SetLayoutVertical()end
---@class UnityEngine.UI.AspectRatioFitter.AspectMode : System.Enum
UnityEngine.UI.AspectRatioFitter.AspectMode = {}
---@type UnityEngine.UI.AspectRatioFitter.AspectMode
CS.UnityEngine.UI.AspectRatioFitter.AspectMode = UnityEngine.UI.AspectRatioFitter.AspectMode

---@return System.Int32 value:0
UnityEngine.UI.AspectRatioFitter.AspectMode.None = 0
---@return System.Int32 value:1
UnityEngine.UI.AspectRatioFitter.AspectMode.WidthControlsHeight = 1
---@return System.Int32 value:2
UnityEngine.UI.AspectRatioFitter.AspectMode.HeightControlsWidth = 2
---@return System.Int32 value:3
UnityEngine.UI.AspectRatioFitter.AspectMode.FitInParent = 3
---@return System.Int32 value:4
UnityEngine.UI.AspectRatioFitter.AspectMode.EnvelopeParent = 4

---@class UnityEngine.UI.CanvasScaler : UnityEngine.EventSystems.UIBehaviour
---@field public uiScaleMode UnityEngine.UI.CanvasScaler.ScaleMode @ setter getter
---@field public referencePixelsPerUnit System.Single @ setter getter
---@field public scaleFactor System.Single @ setter getter
---@field public referenceResolution UnityEngine.Vector2 @ setter getter
---@field public screenMatchMode UnityEngine.UI.CanvasScaler.ScreenMatchMode @ setter getter
---@field public matchWidthOrHeight System.Single @ setter getter
---@field public physicalUnit UnityEngine.UI.CanvasScaler.Unit @ setter getter
---@field public fallbackScreenDPI System.Single @ setter getter
---@field public defaultSpriteDPI System.Single @ setter getter
---@field public dynamicPixelsPerUnit System.Single @ setter getter
UnityEngine.UI.CanvasScaler = {}
---@type UnityEngine.UI.CanvasScaler
CS.UnityEngine.UI.CanvasScaler = UnityEngine.UI.CanvasScaler

---@class UnityEngine.UI.CanvasScaler.ScaleMode : System.Enum
UnityEngine.UI.CanvasScaler.ScaleMode = {}
---@type UnityEngine.UI.CanvasScaler.ScaleMode
CS.UnityEngine.UI.CanvasScaler.ScaleMode = UnityEngine.UI.CanvasScaler.ScaleMode

---@return System.Int32 value:0
UnityEngine.UI.CanvasScaler.ScaleMode.ConstantPixelSize = 0
---@return System.Int32 value:1
UnityEngine.UI.CanvasScaler.ScaleMode.ScaleWithScreenSize = 1
---@return System.Int32 value:2
UnityEngine.UI.CanvasScaler.ScaleMode.ConstantPhysicalSize = 2

---@class UnityEngine.UI.CanvasScaler.ScreenMatchMode : System.Enum
UnityEngine.UI.CanvasScaler.ScreenMatchMode = {}
---@type UnityEngine.UI.CanvasScaler.ScreenMatchMode
CS.UnityEngine.UI.CanvasScaler.ScreenMatchMode = UnityEngine.UI.CanvasScaler.ScreenMatchMode

---@return System.Int32 value:0
UnityEngine.UI.CanvasScaler.ScreenMatchMode.MatchWidthOrHeight = 0
---@return System.Int32 value:1
UnityEngine.UI.CanvasScaler.ScreenMatchMode.Expand = 1
---@return System.Int32 value:2
UnityEngine.UI.CanvasScaler.ScreenMatchMode.Shrink = 2

---@class UnityEngine.UI.CanvasScaler.Unit : System.Enum
UnityEngine.UI.CanvasScaler.Unit = {}
---@type UnityEngine.UI.CanvasScaler.Unit
CS.UnityEngine.UI.CanvasScaler.Unit = UnityEngine.UI.CanvasScaler.Unit

---@return System.Int32 value:0
UnityEngine.UI.CanvasScaler.Unit.Centimeters = 0
---@return System.Int32 value:1
UnityEngine.UI.CanvasScaler.Unit.Millimeters = 1
---@return System.Int32 value:2
UnityEngine.UI.CanvasScaler.Unit.Inches = 2
---@return System.Int32 value:3
UnityEngine.UI.CanvasScaler.Unit.Points = 3
---@return System.Int32 value:4
UnityEngine.UI.CanvasScaler.Unit.Picas = 4

---@class UnityEngine.UI.ContentSizeFitter : UnityEngine.EventSystems.UIBehaviour
---@field public horizontalFit UnityEngine.UI.ContentSizeFitter.FitMode @ setter getter
---@field public verticalFit UnityEngine.UI.ContentSizeFitter.FitMode @ setter getter
UnityEngine.UI.ContentSizeFitter = {}
---@type UnityEngine.UI.ContentSizeFitter
CS.UnityEngine.UI.ContentSizeFitter = UnityEngine.UI.ContentSizeFitter

---@return System.Void
function UnityEngine.UI.ContentSizeFitter:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.ContentSizeFitter:SetLayoutVertical()end
---@class UnityEngine.UI.ContentSizeFitter.FitMode : System.Enum
UnityEngine.UI.ContentSizeFitter.FitMode = {}
---@type UnityEngine.UI.ContentSizeFitter.FitMode
CS.UnityEngine.UI.ContentSizeFitter.FitMode = UnityEngine.UI.ContentSizeFitter.FitMode

---@return System.Int32 value:0
UnityEngine.UI.ContentSizeFitter.FitMode.Unconstrained = 0
---@return System.Int32 value:1
UnityEngine.UI.ContentSizeFitter.FitMode.MinSize = 1
---@return System.Int32 value:2
UnityEngine.UI.ContentSizeFitter.FitMode.PreferredSize = 2

---@class UnityEngine.UI.GridLayoutGroup : UnityEngine.UI.LayoutGroup
---@field public startCorner UnityEngine.UI.GridLayoutGroup.Corner @ setter getter
---@field public startAxis UnityEngine.UI.GridLayoutGroup.Axis @ setter getter
---@field public cellSize UnityEngine.Vector2 @ setter getter
---@field public spacing UnityEngine.Vector2 @ setter getter
---@field public constraint UnityEngine.UI.GridLayoutGroup.Constraint @ setter getter
---@field public constraintCount System.Int32 @ setter getter
UnityEngine.UI.GridLayoutGroup = {}
---@type UnityEngine.UI.GridLayoutGroup
CS.UnityEngine.UI.GridLayoutGroup = UnityEngine.UI.GridLayoutGroup

---@return System.Void
function UnityEngine.UI.GridLayoutGroup:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.GridLayoutGroup:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.GridLayoutGroup:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.GridLayoutGroup:SetLayoutVertical()end
---@class UnityEngine.UI.GridLayoutGroup.Corner : System.Enum
UnityEngine.UI.GridLayoutGroup.Corner = {}
---@type UnityEngine.UI.GridLayoutGroup.Corner
CS.UnityEngine.UI.GridLayoutGroup.Corner = UnityEngine.UI.GridLayoutGroup.Corner

---@return System.Int32 value:0
UnityEngine.UI.GridLayoutGroup.Corner.UpperLeft = 0
---@return System.Int32 value:1
UnityEngine.UI.GridLayoutGroup.Corner.UpperRight = 1
---@return System.Int32 value:2
UnityEngine.UI.GridLayoutGroup.Corner.LowerLeft = 2
---@return System.Int32 value:3
UnityEngine.UI.GridLayoutGroup.Corner.LowerRight = 3

---@class UnityEngine.UI.GridLayoutGroup.Axis : System.Enum
UnityEngine.UI.GridLayoutGroup.Axis = {}
---@type UnityEngine.UI.GridLayoutGroup.Axis
CS.UnityEngine.UI.GridLayoutGroup.Axis = UnityEngine.UI.GridLayoutGroup.Axis

---@return System.Int32 value:0
UnityEngine.UI.GridLayoutGroup.Axis.Horizontal = 0
---@return System.Int32 value:1
UnityEngine.UI.GridLayoutGroup.Axis.Vertical = 1

---@class UnityEngine.UI.GridLayoutGroup.Constraint : System.Enum
UnityEngine.UI.GridLayoutGroup.Constraint = {}
---@type UnityEngine.UI.GridLayoutGroup.Constraint
CS.UnityEngine.UI.GridLayoutGroup.Constraint = UnityEngine.UI.GridLayoutGroup.Constraint

---@return System.Int32 value:0
UnityEngine.UI.GridLayoutGroup.Constraint.Flexible = 0
---@return System.Int32 value:1
UnityEngine.UI.GridLayoutGroup.Constraint.FixedColumnCount = 1
---@return System.Int32 value:2
UnityEngine.UI.GridLayoutGroup.Constraint.FixedRowCount = 2

---@class UnityEngine.UI.HorizontalLayoutGroup : UnityEngine.UI.HorizontalOrVerticalLayoutGroup
UnityEngine.UI.HorizontalLayoutGroup = {}
---@type UnityEngine.UI.HorizontalLayoutGroup
CS.UnityEngine.UI.HorizontalLayoutGroup = UnityEngine.UI.HorizontalLayoutGroup

---@return System.Void
function UnityEngine.UI.HorizontalLayoutGroup:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.HorizontalLayoutGroup:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.HorizontalLayoutGroup:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.HorizontalLayoutGroup:SetLayoutVertical()end
---@class UnityEngine.UI.HorizontalOrVerticalLayoutGroup : UnityEngine.UI.LayoutGroup
---@field public spacing System.Single @ setter getter
---@field public childForceExpandWidth System.Boolean @ setter getter
---@field public childForceExpandHeight System.Boolean @ setter getter
---@field public childControlWidth System.Boolean @ setter getter
---@field public childControlHeight System.Boolean @ setter getter
UnityEngine.UI.HorizontalOrVerticalLayoutGroup = {}
---@type UnityEngine.UI.HorizontalOrVerticalLayoutGroup
CS.UnityEngine.UI.HorizontalOrVerticalLayoutGroup = UnityEngine.UI.HorizontalOrVerticalLayoutGroup

---@class UnityEngine.UI.LayoutElement : UnityEngine.EventSystems.UIBehaviour
---@field public ignoreLayout System.Boolean @ setter getter
---@field public minWidth System.Single @ setter getter
---@field public minHeight System.Single @ setter getter
---@field public preferredWidth System.Single @ setter getter
---@field public preferredHeight System.Single @ setter getter
---@field public flexibleWidth System.Single @ setter getter
---@field public flexibleHeight System.Single @ setter getter
---@field public layoutPriority System.Int32 @ setter getter
UnityEngine.UI.LayoutElement = {}
---@type UnityEngine.UI.LayoutElement
CS.UnityEngine.UI.LayoutElement = UnityEngine.UI.LayoutElement

---@return System.Void
function UnityEngine.UI.LayoutElement:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.LayoutElement:CalculateLayoutInputVertical()end
---@class UnityEngine.UI.LayoutGroup : UnityEngine.EventSystems.UIBehaviour
---@field public padding UnityEngine.RectOffset @ setter getter
---@field public childAlignment UnityEngine.TextAnchor @ setter getter
---@field public minWidth System.Single @  getter
---@field public preferredWidth System.Single @  getter
---@field public flexibleWidth System.Single @  getter
---@field public minHeight System.Single @  getter
---@field public preferredHeight System.Single @  getter
---@field public flexibleHeight System.Single @  getter
---@field public layoutPriority System.Int32 @  getter
UnityEngine.UI.LayoutGroup = {}
---@type UnityEngine.UI.LayoutGroup
CS.UnityEngine.UI.LayoutGroup = UnityEngine.UI.LayoutGroup

---@return System.Void
function UnityEngine.UI.LayoutGroup:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.LayoutGroup:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.LayoutGroup:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.LayoutGroup:SetLayoutVertical()end
---@class UnityEngine.UI.LayoutRebuilder : System.Object
---@field public transform UnityEngine.Transform @  getter
UnityEngine.UI.LayoutRebuilder = {}
---@type UnityEngine.UI.LayoutRebuilder
CS.UnityEngine.UI.LayoutRebuilder = UnityEngine.UI.LayoutRebuilder

---@return System.Boolean
function UnityEngine.UI.LayoutRebuilder:IsDestroyed()end
---@param layoutRoot UnityEngine.RectTransform
---@return System.Void
function UnityEngine.UI.LayoutRebuilder.ForceRebuildLayoutImmediate(layoutRoot)end
---@param executing UnityEngine.UI.CanvasUpdate
---@return System.Void
function UnityEngine.UI.LayoutRebuilder:Rebuild(executing)end
---@param rect UnityEngine.RectTransform
---@return System.Void
function UnityEngine.UI.LayoutRebuilder.MarkLayoutForRebuild(rect)end
---@return System.Void
function UnityEngine.UI.LayoutRebuilder:LayoutComplete()end
---@return System.Void
function UnityEngine.UI.LayoutRebuilder:GraphicUpdateComplete()end
---@return System.Int32
function UnityEngine.UI.LayoutRebuilder:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function UnityEngine.UI.LayoutRebuilder:Equals(obj)end
---@return System.String
function UnityEngine.UI.LayoutRebuilder:ToString()end
---@class UnityEngine.UI.LayoutUtility : System.Object
UnityEngine.UI.LayoutUtility = {}
---@type UnityEngine.UI.LayoutUtility
CS.UnityEngine.UI.LayoutUtility = UnityEngine.UI.LayoutUtility

---@param rect UnityEngine.RectTransform
---@param axis System.Int32
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetMinSize(rect, axis)end
---@param rect UnityEngine.RectTransform
---@param axis System.Int32
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetPreferredSize(rect, axis)end
---@param rect UnityEngine.RectTransform
---@param axis System.Int32
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetFlexibleSize(rect, axis)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetMinWidth(rect)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetPreferredWidth(rect)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetFlexibleWidth(rect)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetMinHeight(rect)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetPreferredHeight(rect)end
---@param rect UnityEngine.RectTransform
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetFlexibleHeight(rect)end
---@overload fun(rect:UnityEngine.RectTransform, property:System.Func, defaultValue:System.Single, source:UnityEngine.UI.ILayoutElement):System.Single
---@param rect UnityEngine.RectTransform
---@param property System.Func
---@param defaultValue System.Single
---@return System.Single
function UnityEngine.UI.LayoutUtility.GetLayoutProperty(rect, property, defaultValue)end
---@class UnityEngine.UI.VerticalLayoutGroup : UnityEngine.UI.HorizontalOrVerticalLayoutGroup
UnityEngine.UI.VerticalLayoutGroup = {}
---@type UnityEngine.UI.VerticalLayoutGroup
CS.UnityEngine.UI.VerticalLayoutGroup = UnityEngine.UI.VerticalLayoutGroup

---@return System.Void
function UnityEngine.UI.VerticalLayoutGroup:CalculateLayoutInputHorizontal()end
---@return System.Void
function UnityEngine.UI.VerticalLayoutGroup:CalculateLayoutInputVertical()end
---@return System.Void
function UnityEngine.UI.VerticalLayoutGroup:SetLayoutHorizontal()end
---@return System.Void
function UnityEngine.UI.VerticalLayoutGroup:SetLayoutVertical()end
---@class UnityEngine.UI.VertexHelper : System.Object
---@field public currentVertCount System.Int32 @  getter
---@field public currentIndexCount System.Int32 @  getter
UnityEngine.UI.VertexHelper = {}
---@type UnityEngine.UI.VertexHelper
CS.UnityEngine.UI.VertexHelper = UnityEngine.UI.VertexHelper

---@return System.Void
function UnityEngine.UI.VertexHelper:Dispose()end
---@return System.Void
function UnityEngine.UI.VertexHelper:Clear()end
---@param vertex UnityEngine.UIVertex
---@param i System.Int32
---@return System.Void
function UnityEngine.UI.VertexHelper:PopulateUIVertex(vertex, i)end
---@param vertex UnityEngine.UIVertex
---@param i System.Int32
---@return System.Void
function UnityEngine.UI.VertexHelper:SetUIVertex(vertex, i)end
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.UI.VertexHelper:FillMesh(mesh)end
---@overload fun(position:UnityEngine.Vector3, color:UnityEngine.Color32, uv0:UnityEngine.Vector2):System.Void
---@overload fun(position:UnityEngine.Vector3, color:UnityEngine.Color32, uv0:UnityEngine.Vector2, uv1:UnityEngine.Vector2, normal:UnityEngine.Vector3, tangent:UnityEngine.Vector4):System.Void
---@param v UnityEngine.UIVertex
---@return System.Void
function UnityEngine.UI.VertexHelper:AddVert(v)end
---@param idx0 System.Int32
---@param idx1 System.Int32
---@param idx2 System.Int32
---@return System.Void
function UnityEngine.UI.VertexHelper:AddTriangle(idx0, idx1, idx2)end
---@param verts UnityEngine.UIVertex[]
---@return System.Void
function UnityEngine.UI.VertexHelper:AddUIVertexQuad(verts)end
---@param verts System.Collections.Generic.List
---@param indices System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.VertexHelper:AddUIVertexStream(verts, indices)end
---@param verts System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.VertexHelper:AddUIVertexTriangleStream(verts)end
---@param stream System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.VertexHelper:GetUIVertexStream(stream)end
---@class UnityEngine.UI.BaseVertexEffect : System.Object
UnityEngine.UI.BaseVertexEffect = {}
---@type UnityEngine.UI.BaseVertexEffect
CS.UnityEngine.UI.BaseVertexEffect = UnityEngine.UI.BaseVertexEffect

---@param vertices System.Collections.Generic.List
---@return System.Void
function UnityEngine.UI.BaseVertexEffect:ModifyVertices(vertices)end
---@class UnityEngine.UI.BaseMeshEffect : UnityEngine.EventSystems.UIBehaviour
UnityEngine.UI.BaseMeshEffect = {}
---@type UnityEngine.UI.BaseMeshEffect
CS.UnityEngine.UI.BaseMeshEffect = UnityEngine.UI.BaseMeshEffect

---@overload fun(vh:UnityEngine.UI.VertexHelper):System.Void
---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEngine.UI.BaseMeshEffect:ModifyMesh(mesh)end
---@class UnityEngine.UI.Outline : UnityEngine.UI.Shadow
UnityEngine.UI.Outline = {}
---@type UnityEngine.UI.Outline
CS.UnityEngine.UI.Outline = UnityEngine.UI.Outline

---@param vh UnityEngine.UI.VertexHelper
---@return System.Void
function UnityEngine.UI.Outline:ModifyMesh(vh)end
---@class UnityEngine.UI.PositionAsUV1 : UnityEngine.UI.BaseMeshEffect
UnityEngine.UI.PositionAsUV1 = {}
---@type UnityEngine.UI.PositionAsUV1
CS.UnityEngine.UI.PositionAsUV1 = UnityEngine.UI.PositionAsUV1

---@param vh UnityEngine.UI.VertexHelper
---@return System.Void
function UnityEngine.UI.PositionAsUV1:ModifyMesh(vh)end
---@class UnityEngine.UI.Shadow : UnityEngine.UI.BaseMeshEffect
---@field public effectColor UnityEngine.Color @ setter getter
---@field public effectDistance UnityEngine.Vector2 @ setter getter
---@field public useGraphicAlpha System.Boolean @ setter getter
UnityEngine.UI.Shadow = {}
---@type UnityEngine.UI.Shadow
CS.UnityEngine.UI.Shadow = UnityEngine.UI.Shadow

---@param vh UnityEngine.UI.VertexHelper
---@return System.Void
function UnityEngine.UI.Shadow:ModifyMesh(vh)end
