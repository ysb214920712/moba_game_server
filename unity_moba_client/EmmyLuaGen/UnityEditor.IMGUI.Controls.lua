---@class UnityEditor.IMGUI.Controls.ArcHandle : System.Object
---@field public angle System.Single @ setter getter
---@field public radius System.Single @ setter getter
---@field public angleHandleColor UnityEngine.Color @ setter getter
---@field public radiusHandleColor UnityEngine.Color @ setter getter
---@field public fillColor UnityEngine.Color @ setter getter
---@field public wireframeColor UnityEngine.Color @ setter getter
---@field public angleHandleDrawFunction UnityEditor.Handles.CapFunction @ setter getter
---@field public angleHandleSizeFunction UnityEditor.Handles.SizeFunction @ setter getter
---@field public radiusHandleDrawFunction UnityEditor.Handles.CapFunction @ setter getter
---@field public radiusHandleSizeFunction UnityEditor.Handles.SizeFunction @ setter getter
UnityEditor.IMGUI.Controls.ArcHandle = {}
---@type UnityEditor.IMGUI.Controls.ArcHandle
CS.UnityEditor.IMGUI.Controls.ArcHandle = UnityEditor.IMGUI.Controls.ArcHandle

---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.IMGUI.Controls.ArcHandle.DefaultAngleHandleDrawFunction(controlID, position, rotation, size, eventType)end
---@param position UnityEngine.Vector3
---@return System.Single
function UnityEditor.IMGUI.Controls.ArcHandle.DefaultAngleHandleSizeFunction(position)end
---@param position UnityEngine.Vector3
---@return System.Single
function UnityEditor.IMGUI.Controls.ArcHandle.DefaultRadiusHandleSizeFunction(position)end
---@param color UnityEngine.Color
---@param fillColorAlpha System.Single
---@return System.Void
function UnityEditor.IMGUI.Controls.ArcHandle:SetColorWithoutRadiusHandle(color, fillColorAlpha)end
---@param color UnityEngine.Color
---@param fillColorAlpha System.Single
---@return System.Void
function UnityEditor.IMGUI.Controls.ArcHandle:SetColorWithRadiusHandle(color, fillColorAlpha)end
---@return System.Void
function UnityEditor.IMGUI.Controls.ArcHandle:DrawHandle()end
---@class UnityEditor.IMGUI.Controls.JointAngularLimitHandle : System.Object
---@field public xMin System.Single @ setter getter
---@field public xMax System.Single @ setter getter
---@field public yMin System.Single @ setter getter
---@field public yMax System.Single @ setter getter
---@field public zMin System.Single @ setter getter
---@field public zMax System.Single @ setter getter
---@field public xRange UnityEngine.Vector2 @ setter getter
---@field public yRange UnityEngine.Vector2 @ setter getter
---@field public zRange UnityEngine.Vector2 @ setter getter
---@field public xMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public yMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public zMotion UnityEngine.ConfigurableJointMotion @ setter getter
---@field public xHandleColor UnityEngine.Color @ setter getter
---@field public yHandleColor UnityEngine.Color @ setter getter
---@field public zHandleColor UnityEngine.Color @ setter getter
---@field public radius System.Single @ setter getter
---@field public fillAlpha System.Single @ setter getter
---@field public wireframeAlpha System.Single @ setter getter
---@field public angleHandleDrawFunction UnityEditor.Handles.CapFunction @ setter getter
---@field public angleHandleSizeFunction UnityEditor.Handles.SizeFunction @ setter getter
UnityEditor.IMGUI.Controls.JointAngularLimitHandle = {}
---@type UnityEditor.IMGUI.Controls.JointAngularLimitHandle
CS.UnityEditor.IMGUI.Controls.JointAngularLimitHandle = UnityEditor.IMGUI.Controls.JointAngularLimitHandle

---@return System.Void
function UnityEditor.IMGUI.Controls.JointAngularLimitHandle:DrawHandle()end
---@class UnityEditor.IMGUI.Controls.BoxBoundsHandle : UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle
---@field public size UnityEngine.Vector3 @ setter getter
UnityEditor.IMGUI.Controls.BoxBoundsHandle = {}
---@type UnityEditor.IMGUI.Controls.BoxBoundsHandle
CS.UnityEditor.IMGUI.Controls.BoxBoundsHandle = UnityEditor.IMGUI.Controls.BoxBoundsHandle

---@class UnityEditor.IMGUI.Controls.CapsuleBoundsHandle : UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle
---@field public heightAxis UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis @ setter getter
---@field public height System.Single @ setter getter
---@field public radius System.Single @ setter getter
UnityEditor.IMGUI.Controls.CapsuleBoundsHandle = {}
---@type UnityEditor.IMGUI.Controls.CapsuleBoundsHandle
CS.UnityEditor.IMGUI.Controls.CapsuleBoundsHandle = UnityEditor.IMGUI.Controls.CapsuleBoundsHandle

---@class UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis : System.Enum
UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis = {}
---@type UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis
CS.UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis = UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis

---@return System.Int32 value:0
UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis.X = 0
---@return System.Int32 value:1
UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis.Y = 1
---@return System.Int32 value:2
UnityEditor.IMGUI.Controls.CapsuleBoundsHandle.HeightAxis.Z = 2

---@class UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle : System.Object
---@field public center UnityEngine.Vector3 @ setter getter
---@field public axes UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes @ setter getter
---@field public handleColor UnityEngine.Color @ setter getter
---@field public wireframeColor UnityEngine.Color @ setter getter
---@field public midpointHandleDrawFunction UnityEditor.Handles.CapFunction @ setter getter
---@field public midpointHandleSizeFunction UnityEditor.Handles.SizeFunction @ setter getter
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle = {}
---@type UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle
CS.UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle = UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle

---@param position UnityEngine.Vector3
---@return System.Single
function UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.DefaultMidpointHandleSizeFunction(position)end
---@param color UnityEngine.Color
---@return System.Void
function UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle:SetColor(color)end
---@return System.Void
function UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle:DrawHandle()end
---@class UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes : System.Enum
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes = {}
---@type UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes
CS.UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes = UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes

---@return System.Int32 value:0
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes.None = 0
---@return System.Int32 value:1
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes.X = 1
---@return System.Int32 value:2
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes.Y = 2
---@return System.Int32 value:4
UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle.Axes.Z = 4

---@class UnityEditor.IMGUI.Controls.SphereBoundsHandle : UnityEditor.IMGUI.Controls.PrimitiveBoundsHandle
---@field public radius System.Single @ setter getter
UnityEditor.IMGUI.Controls.SphereBoundsHandle = {}
---@type UnityEditor.IMGUI.Controls.SphereBoundsHandle
CS.UnityEditor.IMGUI.Controls.SphereBoundsHandle = UnityEditor.IMGUI.Controls.SphereBoundsHandle

---@class UnityEditor.IMGUI.Controls.SearchField : System.Object
---@field public searchFieldControlID System.Int32 @ setter getter
---@field public autoSetFocusOnFindCommand System.Boolean @ setter getter
UnityEditor.IMGUI.Controls.SearchField = {}
---@type UnityEditor.IMGUI.Controls.SearchField
CS.UnityEditor.IMGUI.Controls.SearchField = UnityEditor.IMGUI.Controls.SearchField

---@param value UnityEditor.IMGUI.Controls.SearchField.SearchFieldCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.SearchField:add_downOrUpArrowKeyPressed(value)end
---@param value UnityEditor.IMGUI.Controls.SearchField.SearchFieldCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.SearchField:remove_downOrUpArrowKeyPressed(value)end
---@return System.Void
function UnityEditor.IMGUI.Controls.SearchField:SetFocus()end
---@return System.Boolean
function UnityEditor.IMGUI.Controls.SearchField:HasFocus()end
---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(rect:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle, cancelButtonStyle:UnityEngine.GUIStyle, emptyCancelButtonStyle:UnityEngine.GUIStyle):System.String
---@param rect UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEditor.IMGUI.Controls.SearchField:OnGUI(rect, text)end
---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@param rect UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEditor.IMGUI.Controls.SearchField:OnToolbarGUI(rect, text)end
---@class UnityEditor.IMGUI.Controls.MultiColumnHeader : System.Object
---@field public sortedColumnIndex System.Int32 @ setter getter
---@field public state UnityEditor.IMGUI.Controls.MultiColumnHeaderState @ setter getter
---@field public height System.Single @ setter getter
---@field public canSort System.Boolean @ setter getter
UnityEditor.IMGUI.Controls.MultiColumnHeader = {}
---@type UnityEditor.IMGUI.Controls.MultiColumnHeader
CS.UnityEditor.IMGUI.Controls.MultiColumnHeader = UnityEditor.IMGUI.Controls.MultiColumnHeader

---@param value UnityEditor.IMGUI.Controls.MultiColumnHeader.HeaderCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:add_sortingChanged(value)end
---@param value UnityEditor.IMGUI.Controls.MultiColumnHeader.HeaderCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:remove_sortingChanged(value)end
---@param value UnityEditor.IMGUI.Controls.MultiColumnHeader.HeaderCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:add_visibleColumnsChanged(value)end
---@param value UnityEditor.IMGUI.Controls.MultiColumnHeader.HeaderCallback
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:remove_visibleColumnsChanged(value)end
---@param columnIndices System.Int32[]
---@param sortAscending System.Boolean[]
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:SetSortingColumns(columnIndices, sortAscending)end
---@param columnIndex System.Int32
---@param sortAscending System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:SetSorting(columnIndex, sortAscending)end
---@param columnIndex System.Int32
---@param sortAscending System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:SetSortDirection(columnIndex, sortAscending)end
---@param columnIndex System.Int32
---@return System.Boolean
function UnityEditor.IMGUI.Controls.MultiColumnHeader:IsSortedAscending(columnIndex)end
---@param columnIndex System.Int32
---@return UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column
function UnityEditor.IMGUI.Controls.MultiColumnHeader:GetColumn(columnIndex)end
---@param columnIndex System.Int32
---@return System.Boolean
function UnityEditor.IMGUI.Controls.MultiColumnHeader:IsColumnVisible(columnIndex)end
---@param columnIndex System.Int32
---@return System.Int32
function UnityEditor.IMGUI.Controls.MultiColumnHeader:GetVisibleColumnIndex(columnIndex)end
---@param visibleColumnIndex System.Int32
---@param rowRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.IMGUI.Controls.MultiColumnHeader:GetCellRect(visibleColumnIndex, rowRect)end
---@param visibleColumnIndex System.Int32
---@return UnityEngine.Rect
function UnityEditor.IMGUI.Controls.MultiColumnHeader:GetColumnRect(visibleColumnIndex)end
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:ResizeToFit()end
---@param rect UnityEngine.Rect
---@param xScroll System.Single
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:OnGUI(rect, xScroll)end
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeader:Repaint()end
---@class UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultGUI : System.Object
---@field public defaultHeight System.Single @static  getter
---@field public minimumHeight System.Single @static  getter
---@field public columnContentMargin System.Single @static  getter
UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultGUI = {}
---@type UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultGUI
CS.UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultGUI = UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultGUI

---@class UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultStyles : System.Object
---@field public columnHeader UnityEngine.GUIStyle
---@field public columnHeaderRightAligned UnityEngine.GUIStyle
---@field public columnHeaderCenterAligned UnityEngine.GUIStyle
---@field public background UnityEngine.GUIStyle
UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultStyles = {}
---@type UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultStyles
CS.UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultStyles = UnityEditor.IMGUI.Controls.MultiColumnHeader.DefaultStyles

---@class UnityEditor.IMGUI.Controls.MultiColumnHeaderState : System.Object
---@field public sortedColumnIndex System.Int32 @ setter getter
---@field public maximumNumberOfSortedColumns System.Int32 @ setter getter
---@field public sortedColumns System.Int32[] @ setter getter
---@field public columns UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column[] @  getter
---@field public visibleColumns System.Int32[] @ setter getter
---@field public widthOfAllVisibleColumns System.Single @  getter
UnityEditor.IMGUI.Controls.MultiColumnHeaderState = {}
---@type UnityEditor.IMGUI.Controls.MultiColumnHeaderState
CS.UnityEditor.IMGUI.Controls.MultiColumnHeaderState = UnityEditor.IMGUI.Controls.MultiColumnHeaderState

---@param source UnityEditor.IMGUI.Controls.MultiColumnHeaderState
---@param destination UnityEditor.IMGUI.Controls.MultiColumnHeaderState
---@return System.Boolean
function UnityEditor.IMGUI.Controls.MultiColumnHeaderState.CanOverwriteSerializedFields(source, destination)end
---@param source UnityEditor.IMGUI.Controls.MultiColumnHeaderState
---@param destination UnityEditor.IMGUI.Controls.MultiColumnHeaderState
---@return System.Void
function UnityEditor.IMGUI.Controls.MultiColumnHeaderState.OverwriteSerializedFields(source, destination)end
---@class UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column : System.Object
---@field public width System.Single
---@field public sortedAscending System.Boolean
---@field public headerContent UnityEngine.GUIContent
---@field public contextMenuText System.String
---@field public headerTextAlignment UnityEngine.TextAlignment
---@field public sortingArrowAlignment UnityEngine.TextAlignment
---@field public minWidth System.Single
---@field public maxWidth System.Single
---@field public autoResize System.Boolean
---@field public allowToggleVisibility System.Boolean
---@field public canSort System.Boolean
UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column = {}
---@type UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column
CS.UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column = UnityEditor.IMGUI.Controls.MultiColumnHeaderState.Column

---@class UnityEditor.IMGUI.Controls.TreeViewState : System.Object
---@field public selectedIDs System.Collections.Generic.List @ setter getter
---@field public lastClickedID System.Int32 @ setter getter
---@field public expandedIDs System.Collections.Generic.List @ setter getter
---@field public searchString System.String @ setter getter
---@field public scrollPos UnityEngine.Vector2
UnityEditor.IMGUI.Controls.TreeViewState = {}
---@type UnityEditor.IMGUI.Controls.TreeViewState
CS.UnityEditor.IMGUI.Controls.TreeViewState = UnityEditor.IMGUI.Controls.TreeViewState

---@class UnityEditor.IMGUI.Controls.TreeViewItem : System.Object
---@field public id System.Int32 @ setter getter
---@field public displayName System.String @ setter getter
---@field public depth System.Int32 @ setter getter
---@field public hasChildren System.Boolean @  getter
---@field public children System.Collections.Generic.List @ setter getter
---@field public parent UnityEditor.IMGUI.Controls.TreeViewItem @ setter getter
---@field public icon UnityEngine.Texture2D @ setter getter
UnityEditor.IMGUI.Controls.TreeViewItem = {}
---@type UnityEditor.IMGUI.Controls.TreeViewItem
CS.UnityEditor.IMGUI.Controls.TreeViewItem = UnityEditor.IMGUI.Controls.TreeViewItem

---@param child UnityEditor.IMGUI.Controls.TreeViewItem
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeViewItem:AddChild(child)end
---@param other UnityEditor.IMGUI.Controls.TreeViewItem
---@return System.Int32
function UnityEditor.IMGUI.Controls.TreeViewItem:CompareTo(other)end
---@return System.String
function UnityEditor.IMGUI.Controls.TreeViewItem:ToString()end
---@class UnityEditor.IMGUI.Controls.TreeView : System.Object
---@field public state UnityEditor.IMGUI.Controls.TreeViewState @  getter
---@field public multiColumnHeader UnityEditor.IMGUI.Controls.MultiColumnHeader @ setter getter
---@field public totalHeight System.Single @  getter
---@field public treeViewControlID System.Int32 @ setter getter
---@field public hasSearch System.Boolean @  getter
---@field public searchString System.String @ setter getter
UnityEditor.IMGUI.Controls.TreeView = {}
---@type UnityEditor.IMGUI.Controls.TreeView
CS.UnityEditor.IMGUI.Controls.TreeView = UnityEditor.IMGUI.Controls.TreeView

---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:Reload()end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:Repaint()end
---@return System.Collections.Generic.IList
function UnityEditor.IMGUI.Controls.TreeView:GetRows()end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:ExpandAll()end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:CollapseAll()end
---@param id System.Int32
---@param expanded System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:SetExpandedRecursive(id, expanded)end
---@overload fun(ids:System.Collections.Generic.IList):System.Void
---@param id System.Int32
---@param expanded System.Boolean
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:SetExpanded(id, expanded)end
---@return System.Collections.Generic.IList
function UnityEditor.IMGUI.Controls.TreeView:GetExpanded()end
---@param id System.Int32
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:IsExpanded(id)end
---@return System.Collections.Generic.IList
function UnityEditor.IMGUI.Controls.TreeView:GetSelection()end
---@overload fun(selectedIDs:System.Collections.Generic.IList, options:UnityEditor.IMGUI.Controls.TreeViewSelectionOptions):System.Void
---@param selectedIDs System.Collections.Generic.IList
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:SetSelection(selectedIDs)end
---@param id System.Int32
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:IsSelected(id)end
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:HasSelection()end
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:HasFocus()end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:SetFocus()end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:SetFocusAndEnsureSelectedItem()end
---@overload fun(item:UnityEditor.IMGUI.Controls.TreeViewItem, delay:System.Single):System.Boolean
---@param item UnityEditor.IMGUI.Controls.TreeViewItem
---@return System.Boolean
function UnityEditor.IMGUI.Controls.TreeView:BeginRename(item)end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:EndRename()end
---@param id System.Int32
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:FrameItem(id)end
---@param rect UnityEngine.Rect
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:OnGUI(rect)end
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView:SelectAllRows()end
---@class UnityEditor.IMGUI.Controls.TreeView.DefaultGUI : System.Object
UnityEditor.IMGUI.Controls.TreeView.DefaultGUI = {}
---@type UnityEditor.IMGUI.Controls.TreeView.DefaultGUI
CS.UnityEditor.IMGUI.Controls.TreeView.DefaultGUI = UnityEditor.IMGUI.Controls.TreeView.DefaultGUI

---@param rect UnityEngine.Rect
---@param label System.String
---@param selected System.Boolean
---@param focused System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView.DefaultGUI.FoldoutLabel(rect, label, selected, focused)end
---@param rect UnityEngine.Rect
---@param label System.String
---@param selected System.Boolean
---@param focused System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView.DefaultGUI.Label(rect, label, selected, focused)end
---@param rect UnityEngine.Rect
---@param label System.String
---@param selected System.Boolean
---@param focused System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView.DefaultGUI.LabelRightAligned(rect, label, selected, focused)end
---@param rect UnityEngine.Rect
---@param label System.String
---@param selected System.Boolean
---@param focused System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView.DefaultGUI.BoldLabel(rect, label, selected, focused)end
---@param rect UnityEngine.Rect
---@param label System.String
---@param selected System.Boolean
---@param focused System.Boolean
---@return System.Void
function UnityEditor.IMGUI.Controls.TreeView.DefaultGUI.BoldLabelRightAligned(rect, label, selected, focused)end
---@class UnityEditor.IMGUI.Controls.TreeView.DefaultStyles : System.Object
---@field public foldoutLabel UnityEngine.GUIStyle
---@field public label UnityEngine.GUIStyle
---@field public labelRightAligned UnityEngine.GUIStyle
---@field public boldLabel UnityEngine.GUIStyle
---@field public boldLabelRightAligned UnityEngine.GUIStyle
---@field public backgroundEven UnityEngine.GUIStyle
---@field public backgroundOdd UnityEngine.GUIStyle
UnityEditor.IMGUI.Controls.TreeView.DefaultStyles = {}
---@type UnityEditor.IMGUI.Controls.TreeView.DefaultStyles
CS.UnityEditor.IMGUI.Controls.TreeView.DefaultStyles = UnityEditor.IMGUI.Controls.TreeView.DefaultStyles

---@class UnityEditor.IMGUI.Controls.TreeViewSelectionOptions : System.Enum
UnityEditor.IMGUI.Controls.TreeViewSelectionOptions = {}
---@type UnityEditor.IMGUI.Controls.TreeViewSelectionOptions
CS.UnityEditor.IMGUI.Controls.TreeViewSelectionOptions = UnityEditor.IMGUI.Controls.TreeViewSelectionOptions

---@return System.Int32 value:0
UnityEditor.IMGUI.Controls.TreeViewSelectionOptions.None = 0
---@return System.Int32 value:1
UnityEditor.IMGUI.Controls.TreeViewSelectionOptions.FireSelectionChanged = 1
---@return System.Int32 value:2
UnityEditor.IMGUI.Controls.TreeViewSelectionOptions.RevealAndFrame = 2

