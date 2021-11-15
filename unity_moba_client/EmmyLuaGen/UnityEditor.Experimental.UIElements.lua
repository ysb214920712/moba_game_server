---@class UnityEditor.Experimental.UIElements.UIElementsEntryPoint : System.Object
UnityEditor.Experimental.UIElements.UIElementsEntryPoint = {}
---@type UnityEditor.Experimental.UIElements.UIElementsEntryPoint
CS.UnityEditor.Experimental.UIElements.UIElementsEntryPoint = UnityEditor.Experimental.UIElements.UIElementsEntryPoint

---@class UnityEditor.Experimental.UIElements.InspectorElement : UnityEngine.Experimental.UIElements.BindableElement
---@field public mode UnityEditor.Experimental.UIElements.InspectorElement.Mode @ setter getter
UnityEditor.Experimental.UIElements.InspectorElement = {}
---@type UnityEditor.Experimental.UIElements.InspectorElement
CS.UnityEditor.Experimental.UIElements.InspectorElement = UnityEditor.Experimental.UIElements.InspectorElement

---@class UnityEditor.Experimental.UIElements.InspectorElement.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.InspectorElement.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.InspectorElement.UxmlFactory
CS.UnityEditor.Experimental.UIElements.InspectorElement.UxmlFactory = UnityEditor.Experimental.UIElements.InspectorElement.UxmlFactory

---@class UnityEditor.Experimental.UIElements.InspectorElement.Mode : System.Enum
UnityEditor.Experimental.UIElements.InspectorElement.Mode = {}
---@type UnityEditor.Experimental.UIElements.InspectorElement.Mode
CS.UnityEditor.Experimental.UIElements.InspectorElement.Mode = UnityEditor.Experimental.UIElements.InspectorElement.Mode

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.InspectorElement.Mode.Normal = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.InspectorElement.Mode.Default = 1
---@return System.Int32 value:2
UnityEditor.Experimental.UIElements.InspectorElement.Mode.Custom = 2
---@return System.Int32 value:3
UnityEditor.Experimental.UIElements.InspectorElement.Mode.IMGUI = 3

---@class UnityEditor.Experimental.UIElements.FieldMouseDragger : System.Object
---@field public dragging System.Boolean
---@field public startValue any
UnityEditor.Experimental.UIElements.FieldMouseDragger = {}
---@type UnityEditor.Experimental.UIElements.FieldMouseDragger
CS.UnityEditor.Experimental.UIElements.FieldMouseDragger = UnityEditor.Experimental.UIElements.FieldMouseDragger

---@overload fun(dragElement:UnityEngine.Experimental.UIElements.VisualElement, hotZone:UnityEngine.Rect):System.Void
---@param dragElement UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEditor.Experimental.UIElements.FieldMouseDragger:SetDragZone(dragElement)end
---@class UnityEditor.Experimental.UIElements.UIElementsEditorUtility : System.Object
UnityEditor.Experimental.UIElements.UIElementsEditorUtility = {}
---@type UnityEditor.Experimental.UIElements.UIElementsEditorUtility
CS.UnityEditor.Experimental.UIElements.UIElementsEditorUtility = UnityEditor.Experimental.UIElements.UIElementsEditorUtility

---@param mouseCursor UnityEditor.MouseCursor
---@return UnityEngine.Experimental.UIElements.CursorStyle
function UnityEditor.Experimental.UIElements.UIElementsEditorUtility.CreateDefaultCursorStyle(mouseCursor)end
---@class UnityEditor.Experimental.UIElements.UxmlNamespacePrefixAttribute : System.Attribute
---@field public ns System.String @  getter
---@field public prefix System.String @  getter
UnityEditor.Experimental.UIElements.UxmlNamespacePrefixAttribute = {}
---@type UnityEditor.Experimental.UIElements.UxmlNamespacePrefixAttribute
CS.UnityEditor.Experimental.UIElements.UxmlNamespacePrefixAttribute = UnityEditor.Experimental.UIElements.UxmlNamespacePrefixAttribute

---@class UnityEditor.Experimental.UIElements.BaseCompositeField : any
---@field public focusIndex System.Int32 @ setter getter
---@field public contentContainer UnityEngine.Experimental.UIElements.VisualElement @  getter
UnityEditor.Experimental.UIElements.BaseCompositeField = {}
---@type UnityEditor.Experimental.UIElements.BaseCompositeField
CS.UnityEditor.Experimental.UIElements.BaseCompositeField = UnityEditor.Experimental.UIElements.BaseCompositeField

---@param newValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.BaseCompositeField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.BaseCompositeField : any
UnityEditor.Experimental.UIElements.BaseCompositeField = {}
---@type UnityEditor.Experimental.UIElements.BaseCompositeField
CS.UnityEditor.Experimental.UIElements.BaseCompositeField = UnityEditor.Experimental.UIElements.BaseCompositeField

---@class UnityEditor.Experimental.UIElements.BasePopupField : any
---@field public text System.String @  getter
UnityEditor.Experimental.UIElements.BasePopupField = {}
---@type UnityEditor.Experimental.UIElements.BasePopupField
CS.UnityEditor.Experimental.UIElements.BasePopupField = UnityEditor.Experimental.UIElements.BasePopupField

---@param newValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.BasePopupField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.BindingExtensions : System.Object
UnityEditor.Experimental.UIElements.BindingExtensions = {}
---@type UnityEditor.Experimental.UIElements.BindingExtensions
CS.UnityEditor.Experimental.UIElements.BindingExtensions = UnityEditor.Experimental.UIElements.BindingExtensions

---@class UnityEditor.Experimental.UIElements.BoundsField : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.BoundsField = {}
---@type UnityEditor.Experimental.UIElements.BoundsField
CS.UnityEditor.Experimental.UIElements.BoundsField = UnityEditor.Experimental.UIElements.BoundsField

---@param newValue UnityEngine.Bounds
---@return System.Void
function UnityEditor.Experimental.UIElements.BoundsField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.BoundsField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.BoundsField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.BoundsField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.BoundsField.UxmlFactory = UnityEditor.Experimental.UIElements.BoundsField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits = UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.BoundsField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.BoundsIntField : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.BoundsIntField = {}
---@type UnityEditor.Experimental.UIElements.BoundsIntField
CS.UnityEditor.Experimental.UIElements.BoundsIntField = UnityEditor.Experimental.UIElements.BoundsIntField

---@param newValue UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.Experimental.UIElements.BoundsIntField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.BoundsIntField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.BoundsIntField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.BoundsIntField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.BoundsIntField.UxmlFactory = UnityEditor.Experimental.UIElements.BoundsIntField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits = UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.BoundsIntField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.ColorField : UnityEngine.Experimental.UIElements.BaseField
---@field public showEyeDropper System.Boolean @ setter getter
---@field public showAlpha System.Boolean @ setter getter
---@field public hdr System.Boolean @ setter getter
---@field public focusIndex System.Int32 @ setter getter
UnityEditor.Experimental.UIElements.ColorField = {}
---@type UnityEditor.Experimental.UIElements.ColorField
CS.UnityEditor.Experimental.UIElements.ColorField = UnityEditor.Experimental.UIElements.ColorField

---@param newValue UnityEngine.Color
---@return System.Void
function UnityEditor.Experimental.UIElements.ColorField:SetValueAndNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.ColorField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ColorField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ColorField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ColorField.UxmlFactory = UnityEditor.Experimental.UIElements.ColorField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ColorField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.ColorField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ColorField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ColorField.UxmlTraits = UnityEditor.Experimental.UIElements.ColorField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.ColorField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.RectField : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.RectField = {}
---@type UnityEditor.Experimental.UIElements.RectField
CS.UnityEditor.Experimental.UIElements.RectField = UnityEditor.Experimental.UIElements.RectField

---@class UnityEditor.Experimental.UIElements.RectField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.RectField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.RectField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.RectField.UxmlFactory = UnityEditor.Experimental.UIElements.RectField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.RectField.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.RectField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.RectField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.RectField.UxmlTraits = UnityEditor.Experimental.UIElements.RectField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.RectField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.RectIntField : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.RectIntField = {}
---@type UnityEditor.Experimental.UIElements.RectIntField
CS.UnityEditor.Experimental.UIElements.RectIntField = UnityEditor.Experimental.UIElements.RectIntField

---@class UnityEditor.Experimental.UIElements.RectIntField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.RectIntField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.RectIntField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.RectIntField.UxmlFactory = UnityEditor.Experimental.UIElements.RectIntField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits = UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.RectIntField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.Vector2Field : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector2Field = {}
---@type UnityEditor.Experimental.UIElements.Vector2Field
CS.UnityEditor.Experimental.UIElements.Vector2Field = UnityEditor.Experimental.UIElements.Vector2Field

---@class UnityEditor.Experimental.UIElements.Vector2Field.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Vector2Field.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Vector2Field.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Vector2Field.UxmlFactory = UnityEditor.Experimental.UIElements.Vector2Field.UxmlFactory

---@class UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits
CS.UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits = UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.Vector2Field.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.Vector3Field : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector3Field = {}
---@type UnityEditor.Experimental.UIElements.Vector3Field
CS.UnityEditor.Experimental.UIElements.Vector3Field = UnityEditor.Experimental.UIElements.Vector3Field

---@class UnityEditor.Experimental.UIElements.Vector3Field.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Vector3Field.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Vector3Field.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Vector3Field.UxmlFactory = UnityEditor.Experimental.UIElements.Vector3Field.UxmlFactory

---@class UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits
CS.UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits = UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.Vector3Field.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.Vector4Field : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector4Field = {}
---@type UnityEditor.Experimental.UIElements.Vector4Field
CS.UnityEditor.Experimental.UIElements.Vector4Field = UnityEditor.Experimental.UIElements.Vector4Field

---@class UnityEditor.Experimental.UIElements.Vector4Field.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Vector4Field.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Vector4Field.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Vector4Field.UxmlFactory = UnityEditor.Experimental.UIElements.Vector4Field.UxmlFactory

---@class UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits
CS.UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits = UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.Vector4Field.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.Vector2IntField : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector2IntField = {}
---@type UnityEditor.Experimental.UIElements.Vector2IntField
CS.UnityEditor.Experimental.UIElements.Vector2IntField = UnityEditor.Experimental.UIElements.Vector2IntField

---@class UnityEditor.Experimental.UIElements.Vector2IntField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Vector2IntField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Vector2IntField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Vector2IntField.UxmlFactory = UnityEditor.Experimental.UIElements.Vector2IntField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits = UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.Vector2IntField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.Vector3IntField : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector3IntField = {}
---@type UnityEditor.Experimental.UIElements.Vector3IntField
CS.UnityEditor.Experimental.UIElements.Vector3IntField = UnityEditor.Experimental.UIElements.Vector3IntField

---@class UnityEditor.Experimental.UIElements.Vector3IntField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Vector3IntField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Vector3IntField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Vector3IntField.UxmlFactory = UnityEditor.Experimental.UIElements.Vector3IntField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits : UnityEditor.Experimental.UIElements.BaseCompositeField
UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits = UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.Vector3IntField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.CurveField : UnityEngine.Experimental.UIElements.BaseField
---@field public ranges UnityEngine.Rect @ setter getter
---@field public renderMode UnityEditor.Experimental.UIElements.CurveField.RenderMode @ setter getter
---@field public value UnityEngine.AnimationCurve @ setter getter
UnityEditor.Experimental.UIElements.CurveField = {}
---@type UnityEditor.Experimental.UIElements.CurveField
CS.UnityEditor.Experimental.UIElements.CurveField = UnityEditor.Experimental.UIElements.CurveField

---@param newValue UnityEngine.AnimationCurve
---@return System.Void
function UnityEditor.Experimental.UIElements.CurveField:SetValueAndNotify(newValue)end
---@param newValue UnityEngine.AnimationCurve
---@return System.Void
function UnityEditor.Experimental.UIElements.CurveField:SetValueWithoutNotify(newValue)end
---@return System.Void
function UnityEditor.Experimental.UIElements.CurveField:OnPersistentDataReady()end
---@class UnityEditor.Experimental.UIElements.CurveField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.CurveField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.CurveField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.CurveField.UxmlFactory = UnityEditor.Experimental.UIElements.CurveField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.CurveField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.CurveField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.CurveField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.CurveField.UxmlTraits = UnityEditor.Experimental.UIElements.CurveField.UxmlTraits

---@class UnityEditor.Experimental.UIElements.CurveField.RenderMode : System.Enum
UnityEditor.Experimental.UIElements.CurveField.RenderMode = {}
---@type UnityEditor.Experimental.UIElements.CurveField.RenderMode
CS.UnityEditor.Experimental.UIElements.CurveField.RenderMode = UnityEditor.Experimental.UIElements.CurveField.RenderMode

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.CurveField.RenderMode.Default = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.CurveField.RenderMode.Mesh = 1

---@class UnityEditor.Experimental.UIElements.DoubleField : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.DoubleField = {}
---@type UnityEditor.Experimental.UIElements.DoubleField
CS.UnityEditor.Experimental.UIElements.DoubleField = UnityEditor.Experimental.UIElements.DoubleField

---@param delta UnityEngine.Vector3
---@param speed UnityEditor.Experimental.UIElements.DeltaSpeed
---@param startValue System.Double
---@return System.Void
function UnityEditor.Experimental.UIElements.DoubleField:ApplyInputDeviceDelta(delta, speed, startValue)end
---@class UnityEditor.Experimental.UIElements.DoubleField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.DoubleField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.DoubleField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.DoubleField.UxmlFactory = UnityEditor.Experimental.UIElements.DoubleField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits = UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.DoubleField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.EnumField : UnityEngine.Experimental.UIElements.BaseField
---@field public text System.String @  getter
UnityEditor.Experimental.UIElements.EnumField = {}
---@type UnityEditor.Experimental.UIElements.EnumField
CS.UnityEditor.Experimental.UIElements.EnumField = UnityEditor.Experimental.UIElements.EnumField

---@param defaultValue System.Enum
---@return System.Void
function UnityEditor.Experimental.UIElements.EnumField:Init(defaultValue)end
---@param newValue System.Enum
---@return System.Void
function UnityEditor.Experimental.UIElements.EnumField:SetValueAndNotify(newValue)end
---@param newValue System.Enum
---@return System.Void
function UnityEditor.Experimental.UIElements.EnumField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.EnumField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.EnumField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.EnumField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.EnumField.UxmlFactory = UnityEditor.Experimental.UIElements.EnumField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.EnumField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.EnumField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.EnumField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.EnumField.UxmlTraits = UnityEditor.Experimental.UIElements.EnumField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.EnumField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.FloatField : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.FloatField = {}
---@type UnityEditor.Experimental.UIElements.FloatField
CS.UnityEditor.Experimental.UIElements.FloatField = UnityEditor.Experimental.UIElements.FloatField

---@param delta UnityEngine.Vector3
---@param speed UnityEditor.Experimental.UIElements.DeltaSpeed
---@param startValue System.Single
---@return System.Void
function UnityEditor.Experimental.UIElements.FloatField:ApplyInputDeviceDelta(delta, speed, startValue)end
---@class UnityEditor.Experimental.UIElements.FloatField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.FloatField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.FloatField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.FloatField.UxmlFactory = UnityEditor.Experimental.UIElements.FloatField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.FloatField.UxmlTraits : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.FloatField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.FloatField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.FloatField.UxmlTraits = UnityEditor.Experimental.UIElements.FloatField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.FloatField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.GradientField : UnityEngine.Experimental.UIElements.BaseField
---@field public value UnityEngine.Gradient @ setter getter
UnityEditor.Experimental.UIElements.GradientField = {}
---@type UnityEditor.Experimental.UIElements.GradientField
CS.UnityEditor.Experimental.UIElements.GradientField = UnityEditor.Experimental.UIElements.GradientField

---@return System.Void
function UnityEditor.Experimental.UIElements.GradientField:OnPersistentDataReady()end
---@param newValue UnityEngine.Gradient
---@return System.Void
function UnityEditor.Experimental.UIElements.GradientField:SetValueWithoutNotify(newValue)end
---@param newValue UnityEngine.Gradient
---@return System.Void
function UnityEditor.Experimental.UIElements.GradientField:SetValueAndNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.GradientField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.GradientField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.GradientField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.GradientField.UxmlFactory = UnityEditor.Experimental.UIElements.GradientField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.GradientField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.GradientField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.GradientField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.GradientField.UxmlTraits = UnityEditor.Experimental.UIElements.GradientField.UxmlTraits

---@class UnityEditor.Experimental.UIElements.IntegerField : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.IntegerField = {}
---@type UnityEditor.Experimental.UIElements.IntegerField
CS.UnityEditor.Experimental.UIElements.IntegerField = UnityEditor.Experimental.UIElements.IntegerField

---@param delta UnityEngine.Vector3
---@param speed UnityEditor.Experimental.UIElements.DeltaSpeed
---@param startValue System.Int32
---@return System.Void
function UnityEditor.Experimental.UIElements.IntegerField:ApplyInputDeviceDelta(delta, speed, startValue)end
---@class UnityEditor.Experimental.UIElements.IntegerField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.IntegerField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.IntegerField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.IntegerField.UxmlFactory = UnityEditor.Experimental.UIElements.IntegerField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits = UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.IntegerField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.LayerField : UnityEditor.Experimental.UIElements.PopupField
---@field public value System.Int32 @ setter getter
---@field public formatSelectedValueCallback System.Func @ setter getter
---@field public formatListItemCallback System.Func @ setter getter
UnityEditor.Experimental.UIElements.LayerField = {}
---@type UnityEditor.Experimental.UIElements.LayerField
CS.UnityEditor.Experimental.UIElements.LayerField = UnityEditor.Experimental.UIElements.LayerField

---@param newValue System.Int32
---@return System.Void
function UnityEditor.Experimental.UIElements.LayerField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.LayerField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.LayerField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.LayerField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.LayerField.UxmlFactory = UnityEditor.Experimental.UIElements.LayerField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.LayerField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.LayerField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.LayerField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.LayerField.UxmlTraits = UnityEditor.Experimental.UIElements.LayerField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.LayerField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.LayerMaskField : UnityEditor.Experimental.UIElements.MaskField
---@field public formatSelectedValueCallback System.Func @ setter getter
---@field public formatListItemCallback System.Func @ setter getter
UnityEditor.Experimental.UIElements.LayerMaskField = {}
---@type UnityEditor.Experimental.UIElements.LayerMaskField
CS.UnityEditor.Experimental.UIElements.LayerMaskField = UnityEditor.Experimental.UIElements.LayerMaskField

---@class UnityEditor.Experimental.UIElements.LayerMaskField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.LayerMaskField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.LayerMaskField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.LayerMaskField.UxmlFactory = UnityEditor.Experimental.UIElements.LayerMaskField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.LayerMaskField.UxmlTraits : UnityEditor.Experimental.UIElements.MaskField.UxmlTraits
UnityEditor.Experimental.UIElements.LayerMaskField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.LayerMaskField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.LayerMaskField.UxmlTraits = UnityEditor.Experimental.UIElements.LayerMaskField.UxmlTraits

---@class UnityEditor.Experimental.UIElements.LongField : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.LongField = {}
---@type UnityEditor.Experimental.UIElements.LongField
CS.UnityEditor.Experimental.UIElements.LongField = UnityEditor.Experimental.UIElements.LongField

---@param delta UnityEngine.Vector3
---@param speed UnityEditor.Experimental.UIElements.DeltaSpeed
---@param startValue System.Int64
---@return System.Void
function UnityEditor.Experimental.UIElements.LongField:ApplyInputDeviceDelta(delta, speed, startValue)end
---@class UnityEditor.Experimental.UIElements.LongField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.LongField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.LongField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.LongField.UxmlFactory = UnityEditor.Experimental.UIElements.LongField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.LongField.UxmlTraits : UnityEditor.Experimental.UIElements.TextValueField
UnityEditor.Experimental.UIElements.LongField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.LongField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.LongField.UxmlTraits = UnityEditor.Experimental.UIElements.LongField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.LongField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.MaskField : UnityEditor.Experimental.UIElements.BasePopupField
---@field public formatSelectedValueCallback System.Func @ setter getter
---@field public formatListItemCallback System.Func @ setter getter
UnityEditor.Experimental.UIElements.MaskField = {}
---@type UnityEditor.Experimental.UIElements.MaskField
CS.UnityEditor.Experimental.UIElements.MaskField = UnityEditor.Experimental.UIElements.MaskField

---@param newValue System.Int32
---@return System.Void
function UnityEditor.Experimental.UIElements.MaskField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.MaskField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.MaskField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.MaskField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.MaskField.UxmlFactory = UnityEditor.Experimental.UIElements.MaskField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.MaskField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.MaskField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.MaskField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.MaskField.UxmlTraits = UnityEditor.Experimental.UIElements.MaskField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.MaskField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.ObjectField : UnityEngine.Experimental.UIElements.BaseField
---@field public objectType System.Type @ setter getter
---@field public allowSceneObjects System.Boolean @ setter getter
---@field public focusIndex System.Int32 @ setter getter
UnityEditor.Experimental.UIElements.ObjectField = {}
---@type UnityEditor.Experimental.UIElements.ObjectField
CS.UnityEditor.Experimental.UIElements.ObjectField = UnityEditor.Experimental.UIElements.ObjectField

---@param newValue UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.UIElements.ObjectField:SetValueWithoutNotify(newValue)end
---@param newValue UnityEngine.Object
---@return System.Void
function UnityEditor.Experimental.UIElements.ObjectField:SetValueAndNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.ObjectField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ObjectField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ObjectField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ObjectField.UxmlFactory = UnityEditor.Experimental.UIElements.ObjectField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits = UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.ObjectField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.PopupField : any
---@field public formatSelectedValueCallback any @ setter getter
---@field public formatListItemCallback any @ setter getter
---@field public value any @ setter getter
---@field public index System.Int32 @ setter getter
UnityEditor.Experimental.UIElements.PopupField = {}
---@type UnityEditor.Experimental.UIElements.PopupField
CS.UnityEditor.Experimental.UIElements.PopupField = UnityEditor.Experimental.UIElements.PopupField

---@param newValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.PopupField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.PropertyField : UnityEngine.Experimental.UIElements.VisualElement
---@field public binding UnityEngine.Experimental.UIElements.IBinding @ setter getter
---@field public bindingPath System.String @ setter getter
---@field public label System.String @ setter getter
UnityEditor.Experimental.UIElements.PropertyField = {}
---@type UnityEditor.Experimental.UIElements.PropertyField
CS.UnityEditor.Experimental.UIElements.PropertyField = UnityEditor.Experimental.UIElements.PropertyField

---@class UnityEditor.Experimental.UIElements.PropertyField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.PropertyField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.PropertyField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.PropertyField.UxmlFactory = UnityEditor.Experimental.UIElements.PropertyField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits : UnityEngine.Experimental.UIElements.VisualElement.UxmlTraits
UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits = UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.PropertyField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.TagField : UnityEditor.Experimental.UIElements.PopupField
---@field public value System.String @ setter getter
---@field public formatSelectedValueCallback System.Func @ setter getter
---@field public formatListItemCallback System.Func @ setter getter
UnityEditor.Experimental.UIElements.TagField = {}
---@type UnityEditor.Experimental.UIElements.TagField
CS.UnityEditor.Experimental.UIElements.TagField = UnityEditor.Experimental.UIElements.TagField

---@param newValue System.String
---@return System.Void
function UnityEditor.Experimental.UIElements.TagField:SetValueWithoutNotify(newValue)end
---@class UnityEditor.Experimental.UIElements.TagField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.TagField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.TagField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.TagField.UxmlFactory = UnityEditor.Experimental.UIElements.TagField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.TagField.UxmlTraits : UnityEngine.Experimental.UIElements.BaseField
UnityEditor.Experimental.UIElements.TagField.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.TagField.UxmlTraits
CS.UnityEditor.Experimental.UIElements.TagField.UxmlTraits = UnityEditor.Experimental.UIElements.TagField.UxmlTraits

---@param ve UnityEngine.Experimental.UIElements.VisualElement
---@param bag UnityEngine.Experimental.UIElements.IUxmlAttributes
---@param cc UnityEngine.Experimental.UIElements.CreationContext
---@return System.Void
function UnityEditor.Experimental.UIElements.TagField.UxmlTraits:Init(ve, bag, cc)end
---@class UnityEditor.Experimental.UIElements.DeltaSpeed : System.Enum
UnityEditor.Experimental.UIElements.DeltaSpeed = {}
---@type UnityEditor.Experimental.UIElements.DeltaSpeed
CS.UnityEditor.Experimental.UIElements.DeltaSpeed = UnityEditor.Experimental.UIElements.DeltaSpeed

---@return System.Int32 value:0
UnityEditor.Experimental.UIElements.DeltaSpeed.Fast = 0
---@return System.Int32 value:1
UnityEditor.Experimental.UIElements.DeltaSpeed.Normal = 1
---@return System.Int32 value:2
UnityEditor.Experimental.UIElements.DeltaSpeed.Slow = 2

---@class UnityEditor.Experimental.UIElements.TextValueField : any
---@field public value any @ setter getter
---@field public formatString System.String @ setter getter
UnityEditor.Experimental.UIElements.TextValueField = {}
---@type UnityEditor.Experimental.UIElements.TextValueField
CS.UnityEditor.Experimental.UIElements.TextValueField = UnityEditor.Experimental.UIElements.TextValueField

---@param newValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.TextValueField:SetValueWithoutNotify(newValue)end
---@param newValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.TextValueField:SetValueAndNotify(newValue)end
---@param delta UnityEngine.Vector3
---@param speed UnityEditor.Experimental.UIElements.DeltaSpeed
---@param startValue any
---@return System.Void
function UnityEditor.Experimental.UIElements.TextValueField:ApplyInputDeviceDelta(delta, speed, startValue)end
---@class UnityEditor.Experimental.UIElements.TextValueField : any
UnityEditor.Experimental.UIElements.TextValueField = {}
---@type UnityEditor.Experimental.UIElements.TextValueField
CS.UnityEditor.Experimental.UIElements.TextValueField = UnityEditor.Experimental.UIElements.TextValueField

---@class UnityEditor.Experimental.UIElements.ToolbarMenuElementExtensions : System.Object
UnityEditor.Experimental.UIElements.ToolbarMenuElementExtensions = {}
---@type UnityEditor.Experimental.UIElements.ToolbarMenuElementExtensions
CS.UnityEditor.Experimental.UIElements.ToolbarMenuElementExtensions = UnityEditor.Experimental.UIElements.ToolbarMenuElementExtensions

---@class UnityEditor.Experimental.UIElements.Toolbar : UnityEngine.Experimental.UIElements.VisualElement
UnityEditor.Experimental.UIElements.Toolbar = {}
---@type UnityEditor.Experimental.UIElements.Toolbar
CS.UnityEditor.Experimental.UIElements.Toolbar = UnityEditor.Experimental.UIElements.Toolbar

---@class UnityEditor.Experimental.UIElements.Toolbar.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.Toolbar.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.Toolbar.UxmlFactory
CS.UnityEditor.Experimental.UIElements.Toolbar.UxmlFactory = UnityEditor.Experimental.UIElements.Toolbar.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarButton : UnityEngine.Experimental.UIElements.Button
UnityEditor.Experimental.UIElements.ToolbarButton = {}
---@type UnityEditor.Experimental.UIElements.ToolbarButton
CS.UnityEditor.Experimental.UIElements.ToolbarButton = UnityEditor.Experimental.UIElements.ToolbarButton

---@class UnityEditor.Experimental.UIElements.ToolbarButton.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarButton.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarButton.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarButton.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarButton.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarButton.UxmlTraits : UnityEngine.Experimental.UIElements.Button.UxmlTraits
UnityEditor.Experimental.UIElements.ToolbarButton.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ToolbarButton.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ToolbarButton.UxmlTraits = UnityEditor.Experimental.UIElements.ToolbarButton.UxmlTraits

---@class UnityEditor.Experimental.UIElements.ToolbarMenuBase : UnityEngine.Experimental.UIElements.TextElement
---@field public menu UnityEngine.Experimental.UIElements.DropdownMenu @  getter
UnityEditor.Experimental.UIElements.ToolbarMenuBase = {}
---@type UnityEditor.Experimental.UIElements.ToolbarMenuBase
CS.UnityEditor.Experimental.UIElements.ToolbarMenuBase = UnityEditor.Experimental.UIElements.ToolbarMenuBase

---@class UnityEditor.Experimental.UIElements.ToolbarMenu : UnityEditor.Experimental.UIElements.ToolbarMenuBase
UnityEditor.Experimental.UIElements.ToolbarMenu = {}
---@type UnityEditor.Experimental.UIElements.ToolbarMenu
CS.UnityEditor.Experimental.UIElements.ToolbarMenu = UnityEditor.Experimental.UIElements.ToolbarMenu

---@class UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlTraits = UnityEditor.Experimental.UIElements.ToolbarMenu.UxmlTraits

---@class UnityEditor.Experimental.UIElements.ToolbarPopup : UnityEditor.Experimental.UIElements.ToolbarMenuBase
UnityEditor.Experimental.UIElements.ToolbarPopup = {}
---@type UnityEditor.Experimental.UIElements.ToolbarPopup
CS.UnityEditor.Experimental.UIElements.ToolbarPopup = UnityEditor.Experimental.UIElements.ToolbarPopup

---@class UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlTraits : UnityEngine.Experimental.UIElements.TextElement.UxmlTraits
UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlTraits = UnityEditor.Experimental.UIElements.ToolbarPopup.UxmlTraits

---@class UnityEditor.Experimental.UIElements.ToolbarPopupSearchField : UnityEditor.Experimental.UIElements.ToolbarSearchField
---@field public menu UnityEngine.Experimental.UIElements.DropdownMenu @  getter
UnityEditor.Experimental.UIElements.ToolbarPopupSearchField = {}
---@type UnityEditor.Experimental.UIElements.ToolbarPopupSearchField
CS.UnityEditor.Experimental.UIElements.ToolbarPopupSearchField = UnityEditor.Experimental.UIElements.ToolbarPopupSearchField

---@class UnityEditor.Experimental.UIElements.ToolbarPopupSearchField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarPopupSearchField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarPopupSearchField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarPopupSearchField.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarPopupSearchField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarSearchField : UnityEngine.Experimental.UIElements.VisualElement
---@field public value System.String @ setter getter
UnityEditor.Experimental.UIElements.ToolbarSearchField = {}
---@type UnityEditor.Experimental.UIElements.ToolbarSearchField
CS.UnityEditor.Experimental.UIElements.ToolbarSearchField = UnityEditor.Experimental.UIElements.ToolbarSearchField

---@param newValue System.String
---@return System.Void
function UnityEditor.Experimental.UIElements.ToolbarSearchField:SetValueWithoutNotify(newValue)end
---@param newValue System.String
---@return System.Void
function UnityEditor.Experimental.UIElements.ToolbarSearchField:SetValueAndNotify(newValue)end
---@param callback UnityEngine.Experimental.UIElements.EventCallback
---@return System.Void
function UnityEditor.Experimental.UIElements.ToolbarSearchField:OnValueChanged(callback)end
---@param callback UnityEngine.Experimental.UIElements.EventCallback
---@return System.Void
function UnityEditor.Experimental.UIElements.ToolbarSearchField:RemoveOnValueChanged(callback)end
---@class UnityEditor.Experimental.UIElements.ToolbarSearchField.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarSearchField.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarSearchField.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarSearchField.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarSearchField.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarSpacer : UnityEngine.Experimental.UIElements.VisualElement
UnityEditor.Experimental.UIElements.ToolbarSpacer = {}
---@type UnityEditor.Experimental.UIElements.ToolbarSpacer
CS.UnityEditor.Experimental.UIElements.ToolbarSpacer = UnityEditor.Experimental.UIElements.ToolbarSpacer

---@class UnityEditor.Experimental.UIElements.ToolbarSpacer.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarSpacer.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarSpacer.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarSpacer.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarSpacer.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarFlexSpacer : UnityEditor.Experimental.UIElements.ToolbarSpacer
UnityEditor.Experimental.UIElements.ToolbarFlexSpacer = {}
---@type UnityEditor.Experimental.UIElements.ToolbarFlexSpacer
CS.UnityEditor.Experimental.UIElements.ToolbarFlexSpacer = UnityEditor.Experimental.UIElements.ToolbarFlexSpacer

---@class UnityEditor.Experimental.UIElements.ToolbarFlexSpacer.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarFlexSpacer.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarFlexSpacer.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarFlexSpacer.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarFlexSpacer.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarToggle : UnityEngine.Experimental.UIElements.Toggle
UnityEditor.Experimental.UIElements.ToolbarToggle = {}
---@type UnityEditor.Experimental.UIElements.ToolbarToggle
CS.UnityEditor.Experimental.UIElements.ToolbarToggle = UnityEditor.Experimental.UIElements.ToolbarToggle

---@class UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlFactory : UnityEngine.Experimental.UIElements.UxmlFactory
UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlFactory = {}
---@type UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlFactory
CS.UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlFactory = UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlFactory

---@class UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlTraits : UnityEngine.Experimental.UIElements.Toggle.UxmlTraits
UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlTraits = {}
---@type UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlTraits
CS.UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlTraits = UnityEditor.Experimental.UIElements.ToolbarToggle.UxmlTraits

