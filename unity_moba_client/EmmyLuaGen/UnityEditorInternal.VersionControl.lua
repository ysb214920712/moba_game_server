---@class UnityEditorInternal.VersionControl.AssetModificationHook : System.Object
UnityEditorInternal.VersionControl.AssetModificationHook = {}
---@type UnityEditorInternal.VersionControl.AssetModificationHook
CS.UnityEditorInternal.VersionControl.AssetModificationHook = UnityEditorInternal.VersionControl.AssetModificationHook

---@param from System.String
---@param to System.String
---@return UnityEditor.AssetMoveResult
function UnityEditorInternal.VersionControl.AssetModificationHook.OnWillMoveAsset(from, to)end
---@param assetPath System.String
---@param option UnityEditor.RemoveAssetOptions
---@return UnityEditor.AssetDeleteResult
function UnityEditorInternal.VersionControl.AssetModificationHook.OnWillDeleteAsset(assetPath, option)end
---@param assetPath System.String
---@param message System.String
---@param statusOptions UnityEditor.StatusQueryOptions
---@return System.Boolean
function UnityEditorInternal.VersionControl.AssetModificationHook.IsOpenForEdit(assetPath, message, statusOptions)end
---@class UnityEditorInternal.VersionControl.ListControl : System.Object
---@field public listState UnityEditorInternal.VersionControl.ListControl.ListState @  getter
---@field public ExpandEvent UnityEditorInternal.VersionControl.ListControl.ExpandDelegate @ setter getter
---@field public DragEvent UnityEditorInternal.VersionControl.ListControl.DragDelegate @ setter getter
---@field public ActionEvent UnityEditorInternal.VersionControl.ListControl.ActionDelegate @ setter getter
---@field public Root UnityEditorInternal.VersionControl.ListItem @  getter
---@field public SelectedAssets UnityEditor.VersionControl.AssetList @  getter
---@field public SelectedChangeSets UnityEditor.VersionControl.ChangeSets @  getter
---@field public EmptyChangeSets UnityEditor.VersionControl.ChangeSets @  getter
---@field public ReadOnly System.Boolean @ setter getter
---@field public MenuFolder System.String @ setter getter
---@field public MenuDefault System.String @ setter getter
---@field public DragAcceptOnly System.Boolean @ setter getter
---@field public Size System.Int32 @  getter
UnityEditorInternal.VersionControl.ListControl = {}
---@type UnityEditorInternal.VersionControl.ListControl
CS.UnityEditorInternal.VersionControl.ListControl = UnityEditorInternal.VersionControl.ListControl

---@param id System.Int32
---@return UnityEditorInternal.VersionControl.ListControl
function UnityEditorInternal.VersionControl.ListControl.FromID(id)end
---@param identifier System.Int32
---@return UnityEditorInternal.VersionControl.ListItem
function UnityEditorInternal.VersionControl.ListControl:FindItemWithIdentifier(identifier)end
---@overload fun(parent:UnityEditorInternal.VersionControl.ListItem, name:System.String, change:UnityEditor.VersionControl.ChangeSet):UnityEditorInternal.VersionControl.ListItem
---@param parent UnityEditorInternal.VersionControl.ListItem
---@param name System.String
---@param asset UnityEditor.VersionControl.Asset
---@return UnityEditorInternal.VersionControl.ListItem
function UnityEditorInternal.VersionControl.ListControl:Add(parent, name, asset)end
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:Clear()end
---@overload fun(updateExpanded:System.Boolean):System.Void
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:Refresh()end
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:Sync()end
---@param area UnityEngine.Rect
---@param focus System.Boolean
---@return System.Boolean
function UnityEditorInternal.VersionControl.ListControl:OnGUI(area, focus)end
---@param item UnityEditorInternal.VersionControl.ListItem
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:SelectedSet(item)end
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:SelectedAll()end
---@param item UnityEditorInternal.VersionControl.ListItem
---@return System.Void
function UnityEditorInternal.VersionControl.ListControl:SelectedAdd(item)end
---@class UnityEditorInternal.VersionControl.ListControl.SelectDirection : System.Enum
UnityEditorInternal.VersionControl.ListControl.SelectDirection = {}
---@type UnityEditorInternal.VersionControl.ListControl.SelectDirection
CS.UnityEditorInternal.VersionControl.ListControl.SelectDirection = UnityEditorInternal.VersionControl.ListControl.SelectDirection

---@return System.Int32 value:0
UnityEditorInternal.VersionControl.ListControl.SelectDirection.Up = 0
---@return System.Int32 value:1
UnityEditorInternal.VersionControl.ListControl.SelectDirection.Down = 1
---@return System.Int32 value:2
UnityEditorInternal.VersionControl.ListControl.SelectDirection.Current = 2

---@class UnityEditorInternal.VersionControl.ListControl.ListState : System.Object
---@field public Scroll System.Single
---@field public Expanded System.Collections.Generic.List
UnityEditorInternal.VersionControl.ListControl.ListState = {}
---@type UnityEditorInternal.VersionControl.ListControl.ListState
CS.UnityEditorInternal.VersionControl.ListControl.ListState = UnityEditorInternal.VersionControl.ListControl.ListState

---@class UnityEditorInternal.VersionControl.ListItem : System.Object
---@field public Icon UnityEngine.Texture @ setter getter
---@field public Identifier System.Int32 @  getter
---@field public Name System.String @ setter getter
---@field public Indent System.Int32 @ setter getter
---@field public Item System.Object @ setter getter
---@field public Asset UnityEditor.VersionControl.Asset @ setter getter
---@field public Change UnityEditor.VersionControl.ChangeSet @ setter getter
---@field public Expanded System.Boolean @ setter getter
---@field public Exclusive System.Boolean @ setter getter
---@field public Dummy System.Boolean @ setter getter
---@field public Hidden System.Boolean @ setter getter
---@field public HasChildren System.Boolean @  getter
---@field public HasActions System.Boolean @  getter
---@field public Actions System.String[] @ setter getter
---@field public CanExpand System.Boolean @  getter
---@field public CanAccept System.Boolean @ setter getter
---@field public OpenCount System.Int32 @  getter
---@field public ChildCount System.Int32 @  getter
---@field public Parent UnityEditorInternal.VersionControl.ListItem @  getter
---@field public FirstChild UnityEditorInternal.VersionControl.ListItem @  getter
---@field public LastChild UnityEditorInternal.VersionControl.ListItem @  getter
---@field public Prev UnityEditorInternal.VersionControl.ListItem @  getter
---@field public Next UnityEditorInternal.VersionControl.ListItem @  getter
---@field public PrevOpen UnityEditorInternal.VersionControl.ListItem @  getter
---@field public NextOpen UnityEditorInternal.VersionControl.ListItem @  getter
---@field public PrevOpenSkip UnityEditorInternal.VersionControl.ListItem @  getter
---@field public NextOpenSkip UnityEditorInternal.VersionControl.ListItem @  getter
---@field public PrevOpenVisible UnityEditorInternal.VersionControl.ListItem @  getter
---@field public NextOpenVisible UnityEditorInternal.VersionControl.ListItem @  getter
UnityEditorInternal.VersionControl.ListItem = {}
---@type UnityEditorInternal.VersionControl.ListItem
CS.UnityEditorInternal.VersionControl.ListItem = UnityEditorInternal.VersionControl.ListItem

---@return System.Boolean
function UnityEditorInternal.VersionControl.ListItem:HasPath()end
---@param listItem UnityEditorInternal.VersionControl.ListItem
---@return System.Boolean
function UnityEditorInternal.VersionControl.ListItem:IsChildOf(listItem)end
---@return System.Void
function UnityEditorInternal.VersionControl.ListItem:Clear()end
---@param listItem UnityEditorInternal.VersionControl.ListItem
---@return System.Void
function UnityEditorInternal.VersionControl.ListItem:Add(listItem)end
---@param listItem UnityEditorInternal.VersionControl.ListItem
---@return System.Boolean
function UnityEditorInternal.VersionControl.ListItem:Remove(listItem)end
---@return System.Void
function UnityEditorInternal.VersionControl.ListItem:RemoveAll()end
---@param inIdentifier System.Int32
---@return UnityEditorInternal.VersionControl.ListItem
function UnityEditorInternal.VersionControl.ListItem:FindWithIdentifierRecurse(inIdentifier)end
---@class UnityEditorInternal.VersionControl.ChangeSetContextMenu : System.Object
UnityEditorInternal.VersionControl.ChangeSetContextMenu = {}
---@type UnityEditorInternal.VersionControl.ChangeSetContextMenu
CS.UnityEditorInternal.VersionControl.ChangeSetContextMenu = UnityEditorInternal.VersionControl.ChangeSetContextMenu

---@class UnityEditorInternal.VersionControl.PendingWindowContextMenu : System.Object
UnityEditorInternal.VersionControl.PendingWindowContextMenu = {}
---@type UnityEditorInternal.VersionControl.PendingWindowContextMenu
CS.UnityEditorInternal.VersionControl.PendingWindowContextMenu = UnityEditorInternal.VersionControl.PendingWindowContextMenu

---@class UnityEditorInternal.VersionControl.ProjectContextMenu : System.Object
UnityEditorInternal.VersionControl.ProjectContextMenu = {}
---@type UnityEditorInternal.VersionControl.ProjectContextMenu
CS.UnityEditorInternal.VersionControl.ProjectContextMenu = UnityEditorInternal.VersionControl.ProjectContextMenu

---@class UnityEditorInternal.VersionControl.Overlay : System.Object
UnityEditorInternal.VersionControl.Overlay = {}
---@type UnityEditorInternal.VersionControl.Overlay
CS.UnityEditorInternal.VersionControl.Overlay = UnityEditorInternal.VersionControl.Overlay

---@param itemRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditorInternal.VersionControl.Overlay.GetOverlayRect(itemRect)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, metaAsset:UnityEditor.VersionControl.Asset, itemRect:UnityEngine.Rect):System.Void
---@param asset UnityEditor.VersionControl.Asset
---@param itemRect UnityEngine.Rect
---@return System.Void
function UnityEditorInternal.VersionControl.Overlay.DrawOverlay(asset, itemRect)end
