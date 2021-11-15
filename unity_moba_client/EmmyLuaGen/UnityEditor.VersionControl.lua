---@class UnityEditor.VersionControl.Asset : System.Object
---@field public state UnityEditor.VersionControl.Asset.States @  getter
---@field public path System.String @  getter
---@field public isFolder System.Boolean @  getter
---@field public readOnly System.Boolean @  getter
---@field public isMeta System.Boolean @  getter
---@field public locked System.Boolean @  getter
---@field public name System.String @  getter
---@field public fullName System.String @  getter
---@field public isInCurrentProject System.Boolean @  getter
---@field public prettyPath System.String @  getter
UnityEditor.VersionControl.Asset = {}
---@type UnityEditor.VersionControl.Asset
CS.UnityEditor.VersionControl.Asset = UnityEditor.VersionControl.Asset

---@return System.Void
function UnityEditor.VersionControl.Asset:Dispose()end
---@param other UnityEditor.VersionControl.Asset
---@return System.Boolean
function UnityEditor.VersionControl.Asset:IsChildOf(other)end
---@param state UnityEditor.VersionControl.Asset.States
---@return System.Boolean
function UnityEditor.VersionControl.Asset:IsState(state)end
---@param states UnityEditor.VersionControl.Asset.States[]
---@return System.Boolean
function UnityEditor.VersionControl.Asset:IsOneOfStates(states)end
---@return System.Void
function UnityEditor.VersionControl.Asset:Edit()end
---@return UnityEngine.Object
function UnityEditor.VersionControl.Asset:Load()end
---@class UnityEditor.VersionControl.Asset.States : System.Enum
UnityEditor.VersionControl.Asset.States = {}
---@type UnityEditor.VersionControl.Asset.States
CS.UnityEditor.VersionControl.Asset.States = UnityEditor.VersionControl.Asset.States

---@return System.Int32 value:0
UnityEditor.VersionControl.Asset.States.None = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.Asset.States.Local = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.Asset.States.Synced = 2
---@return System.Int32 value:4
UnityEditor.VersionControl.Asset.States.OutOfSync = 4
---@return System.Int32 value:8
UnityEditor.VersionControl.Asset.States.Missing = 8
---@return System.Int32 value:16
UnityEditor.VersionControl.Asset.States.CheckedOutLocal = 16

---@class UnityEditor.VersionControl.ChangeSet : System.Object
---@field public description System.String @  getter
---@field public id System.String @  getter
---@field public defaultID System.String
UnityEditor.VersionControl.ChangeSet = {}
---@type UnityEditor.VersionControl.ChangeSet
CS.UnityEditor.VersionControl.ChangeSet = UnityEditor.VersionControl.ChangeSet

---@return System.Void
function UnityEditor.VersionControl.ChangeSet:Dispose()end
---@class UnityEditor.VersionControl.Message : System.Object
---@field public severity UnityEditor.VersionControl.Message.Severity @  getter
---@field public message System.String @  getter
UnityEditor.VersionControl.Message = {}
---@type UnityEditor.VersionControl.Message
CS.UnityEditor.VersionControl.Message = UnityEditor.VersionControl.Message

---@return System.Void
function UnityEditor.VersionControl.Message:Dispose()end
---@return System.Void
function UnityEditor.VersionControl.Message:Show()end
---@class UnityEditor.VersionControl.Message.Severity : System.Enum
UnityEditor.VersionControl.Message.Severity = {}
---@type UnityEditor.VersionControl.Message.Severity
CS.UnityEditor.VersionControl.Message.Severity = UnityEditor.VersionControl.Message.Severity

---@return System.Int32 value:0
UnityEditor.VersionControl.Message.Severity.Data = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.Message.Severity.Verbose = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.Message.Severity.Info = 2
---@return System.Int32 value:3
UnityEditor.VersionControl.Message.Severity.Warning = 3
---@return System.Int32 value:4
UnityEditor.VersionControl.Message.Severity.Error = 4

---@class UnityEditor.VersionControl.ConfigField : System.Object
---@field public name System.String @  getter
---@field public label System.String @  getter
---@field public description System.String @  getter
---@field public isRequired System.Boolean @  getter
---@field public isPassword System.Boolean @  getter
UnityEditor.VersionControl.ConfigField = {}
---@type UnityEditor.VersionControl.ConfigField
CS.UnityEditor.VersionControl.ConfigField = UnityEditor.VersionControl.ConfigField

---@return System.Void
function UnityEditor.VersionControl.ConfigField:Dispose()end
---@class UnityEditor.VersionControl.Plugin : System.Object
---@field public availablePlugins UnityEditor.VersionControl.Plugin[] @static  getter
---@field public name System.String @  getter
---@field public configFields UnityEditor.VersionControl.ConfigField[] @  getter
UnityEditor.VersionControl.Plugin = {}
---@type UnityEditor.VersionControl.Plugin
CS.UnityEditor.VersionControl.Plugin = UnityEditor.VersionControl.Plugin

---@return System.Void
function UnityEditor.VersionControl.Plugin:Dispose()end
---@class UnityEditor.VersionControl.Provider : System.Object
---@field public enabled System.Boolean @static  getter
---@field public isActive System.Boolean @static  getter
---@field public requiresNetwork System.Boolean @static  getter
---@field public hasChangelistSupport System.Boolean @static  getter
---@field public hasCheckoutSupport System.Boolean @static  getter
---@field public isVersioningFolders System.Boolean @static  getter
---@field public onlineState UnityEditor.VersionControl.OnlineState @static  getter
---@field public offlineReason System.String @static  getter
---@field public activeTask UnityEditor.VersionControl.Task @static  getter
UnityEditor.VersionControl.Provider = {}
---@type UnityEditor.VersionControl.Provider
CS.UnityEditor.VersionControl.Provider = UnityEditor.VersionControl.Provider

---@return UnityEditor.VersionControl.Plugin
function UnityEditor.VersionControl.Provider.GetActivePlugin()end
---@return UnityEditor.VersionControl.ConfigField[]
function UnityEditor.VersionControl.Provider.GetActiveConfigFields()end
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.ChangeSets()end
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Incoming()end
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.UpdateSettings()end
---@param unityPath System.String
---@return UnityEditor.VersionControl.Asset
function UnityEditor.VersionControl.Provider.GetAssetByPath(unityPath)end
---@param guid System.String
---@return UnityEditor.VersionControl.Asset
function UnityEditor.VersionControl.Provider.GetAssetByGUID(guid)end
---@param asset UnityEditor.VersionControl.Asset
---@return System.Boolean
function UnityEditor.VersionControl.Provider.IsOpenForEdit(asset)end
---@return System.Void
function UnityEditor.VersionControl.Provider.ClearCache()end
---@overload fun(asset:UnityEditor.VersionControl.Asset):UnityEditor.VersionControl.Task
---@overload fun(assets:System.String[]):UnityEditor.VersionControl.Task
---@overload fun(asset:System.String):UnityEditor.VersionControl.Task
---@overload fun(assets:UnityEditor.VersionControl.AssetList, recursively:System.Boolean):UnityEditor.VersionControl.Task
---@overload fun(asset:UnityEditor.VersionControl.Asset, recursively:System.Boolean):UnityEditor.VersionControl.Task
---@overload fun(assets:System.String[], recursively:System.Boolean):UnityEditor.VersionControl.Task
---@overload fun(asset:System.String, recursively:System.Boolean):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Status(assets)end
---@param from System.String
---@param to System.String
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Move(from, to)end
---@overload fun(asset:UnityEditor.VersionControl.Asset):System.Boolean
---@overload fun(assets:UnityEditor.VersionControl.AssetList, mode:UnityEditor.VersionControl.CheckoutMode):System.Boolean
---@overload fun(asset:UnityEditor.VersionControl.Asset, mode:UnityEditor.VersionControl.CheckoutMode):System.Boolean
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.CheckoutIsValid(assets)end
---@overload fun(assets:System.String[], mode:UnityEditor.VersionControl.CheckoutMode):UnityEditor.VersionControl.Task
---@overload fun(assets:UnityEngine.Object[], mode:UnityEditor.VersionControl.CheckoutMode):UnityEditor.VersionControl.Task
---@overload fun(asset:UnityEditor.VersionControl.Asset, mode:UnityEditor.VersionControl.CheckoutMode):UnityEditor.VersionControl.Task
---@overload fun(asset:System.String, mode:UnityEditor.VersionControl.CheckoutMode):UnityEditor.VersionControl.Task
---@overload fun(asset:UnityEngine.Object, mode:UnityEditor.VersionControl.CheckoutMode):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@param mode UnityEditor.VersionControl.CheckoutMode
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Checkout(assets, mode)end
---@overload fun(assets:UnityEditor.VersionControl.AssetList):UnityEditor.VersionControl.Task
---@overload fun(asset:UnityEditor.VersionControl.Asset):UnityEditor.VersionControl.Task
---@param assetProjectPath System.String
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Delete(assetProjectPath)end
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.AddIsValid(assets)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, recursive:System.Boolean):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@param recursive System.Boolean
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Add(assets, recursive)end
---@param changesets UnityEditor.VersionControl.ChangeSets
---@return System.Boolean
function UnityEditor.VersionControl.Provider.DeleteChangeSetsIsValid(changesets)end
---@param changesets UnityEditor.VersionControl.ChangeSets
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.DeleteChangeSets(changesets)end
---@param changeset UnityEditor.VersionControl.ChangeSet
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.SubmitIsValid(changeset, assets)end
---@param changeset UnityEditor.VersionControl.ChangeSet
---@param list UnityEditor.VersionControl.AssetList
---@param description System.String
---@param saveOnly System.Boolean
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Submit(changeset, list, description, saveOnly)end
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.DiffIsValid(assets)end
---@param assets UnityEditor.VersionControl.AssetList
---@param includingMetaFiles System.Boolean
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.DiffHead(assets, includingMetaFiles)end
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.ResolveIsValid(assets)end
---@param assets UnityEditor.VersionControl.AssetList
---@param resolveMethod UnityEditor.VersionControl.ResolveMethod
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Resolve(assets, resolveMethod)end
---@param assets UnityEditor.VersionControl.AssetList
---@param method UnityEditor.VersionControl.MergeMethod
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Merge(assets, method)end
---@overload fun(asset:UnityEditor.VersionControl.Asset):System.Boolean
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.LockIsValid(assets)end
---@overload fun(asset:UnityEditor.VersionControl.Asset):System.Boolean
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.UnlockIsValid(assets)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, locked:System.Boolean):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@param locked System.Boolean
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Lock(assets, locked)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, mode:UnityEditor.VersionControl.RevertMode):System.Boolean
---@param assets UnityEditor.VersionControl.AssetList
---@param mode UnityEditor.VersionControl.RevertMode
---@return System.Boolean
function UnityEditor.VersionControl.Provider.RevertIsValid(assets, mode)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, mode:UnityEditor.VersionControl.RevertMode):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@param mode UnityEditor.VersionControl.RevertMode
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.Revert(assets, mode)end
---@overload fun(asset:UnityEditor.VersionControl.Asset):System.Boolean
---@param assets UnityEditor.VersionControl.AssetList
---@return System.Boolean
function UnityEditor.VersionControl.Provider.GetLatestIsValid(assets)end
---@overload fun(asset:UnityEditor.VersionControl.Asset):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.GetLatest(assets)end
---@param changeset UnityEditor.VersionControl.ChangeSet
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.ChangeSetDescription(changeset)end
---@overload fun(changesetID:System.String):UnityEditor.VersionControl.Task
---@param changeset UnityEditor.VersionControl.ChangeSet
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.ChangeSetStatus(changeset)end
---@overload fun(changesetID:System.String):UnityEditor.VersionControl.Task
---@param changeset UnityEditor.VersionControl.ChangeSet
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.IncomingChangeSetAssets(changeset)end
---@overload fun(asset:UnityEditor.VersionControl.Asset, changeset:UnityEditor.VersionControl.ChangeSet):UnityEditor.VersionControl.Task
---@overload fun(assets:UnityEditor.VersionControl.AssetList, changesetID:System.String):UnityEditor.VersionControl.Task
---@overload fun(asset:UnityEditor.VersionControl.Asset, changesetID:System.String):UnityEditor.VersionControl.Task
---@param assets UnityEditor.VersionControl.AssetList
---@param changeset UnityEditor.VersionControl.ChangeSet
---@return UnityEditor.VersionControl.Task
function UnityEditor.VersionControl.Provider.ChangeSetMove(assets, changeset)end
---@return UnityEditor.VersionControl.AssetList
function UnityEditor.VersionControl.Provider.GetAssetListFromSelection()end
---@class UnityEditor.VersionControl.CompletionAction : System.Enum
UnityEditor.VersionControl.CompletionAction = {}
---@type UnityEditor.VersionControl.CompletionAction
CS.UnityEditor.VersionControl.CompletionAction = UnityEditor.VersionControl.CompletionAction

---@return System.Int32 value:1
UnityEditor.VersionControl.CompletionAction.UpdatePendingWindow = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.CompletionAction.OnChangeContentsPendingWindow = 2
---@return System.Int32 value:3
UnityEditor.VersionControl.CompletionAction.OnIncomingPendingWindow = 3
---@return System.Int32 value:4
UnityEditor.VersionControl.CompletionAction.OnChangeSetsPendingWindow = 4
---@return System.Int32 value:5
UnityEditor.VersionControl.CompletionAction.OnGotLatestPendingWindow = 5
---@return System.Int32 value:6
UnityEditor.VersionControl.CompletionAction.OnSubmittedChangeWindow = 6
---@return System.Int32 value:7
UnityEditor.VersionControl.CompletionAction.OnAddedChangeWindow = 7

---@class UnityEditor.VersionControl.SubmitResult : System.Enum
UnityEditor.VersionControl.SubmitResult = {}
---@type UnityEditor.VersionControl.SubmitResult
CS.UnityEditor.VersionControl.SubmitResult = UnityEditor.VersionControl.SubmitResult

---@return System.Int32 value:1
UnityEditor.VersionControl.SubmitResult.OK = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.SubmitResult.Error = 2

---@class UnityEditor.VersionControl.Task : System.Object
---@field public userIdentifier System.Int32 @ setter getter
---@field public text System.String @  getter
---@field public description System.String @  getter
---@field public success System.Boolean @  getter
---@field public secondsSpent System.Int32 @  getter
---@field public progressPct System.Int32 @  getter
---@field public progressMessage System.String @  getter
---@field public resultCode System.Int32 @  getter
---@field public messages UnityEditor.VersionControl.Message[] @  getter
---@field public assetList UnityEditor.VersionControl.AssetList @  getter
---@field public changeSets UnityEditor.VersionControl.ChangeSets @  getter
UnityEditor.VersionControl.Task = {}
---@type UnityEditor.VersionControl.Task
CS.UnityEditor.VersionControl.Task = UnityEditor.VersionControl.Task

---@return System.Void
function UnityEditor.VersionControl.Task:Wait()end
---@param action UnityEditor.VersionControl.CompletionAction
---@return System.Void
function UnityEditor.VersionControl.Task:SetCompletionAction(action)end
---@return System.Void
function UnityEditor.VersionControl.Task:Dispose()end
---@class UnityEditor.VersionControl.AssetList : System.Collections.Generic.List
UnityEditor.VersionControl.AssetList = {}
---@type UnityEditor.VersionControl.AssetList
CS.UnityEditor.VersionControl.AssetList = UnityEditor.VersionControl.AssetList

---@param includeFolder System.Boolean
---@param states UnityEditor.VersionControl.Asset.States[]
---@return UnityEditor.VersionControl.AssetList
function UnityEditor.VersionControl.AssetList:Filter(includeFolder, states)end
---@param includeFolder System.Boolean
---@param states UnityEditor.VersionControl.Asset.States[]
---@return System.Int32
function UnityEditor.VersionControl.AssetList:FilterCount(includeFolder, states)end
---@return UnityEditor.VersionControl.AssetList
function UnityEditor.VersionControl.AssetList:FilterChildren()end
---@class UnityEditor.VersionControl.ChangeSets : System.Collections.Generic.List
UnityEditor.VersionControl.ChangeSets = {}
---@type UnityEditor.VersionControl.ChangeSets
CS.UnityEditor.VersionControl.ChangeSets = UnityEditor.VersionControl.ChangeSets

---@class UnityEditor.VersionControl.CheckoutMode : System.Enum
UnityEditor.VersionControl.CheckoutMode = {}
---@type UnityEditor.VersionControl.CheckoutMode
CS.UnityEditor.VersionControl.CheckoutMode = UnityEditor.VersionControl.CheckoutMode

---@return System.Int32 value:1
UnityEditor.VersionControl.CheckoutMode.Asset = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.CheckoutMode.Meta = 2
---@return System.Int32 value:3
UnityEditor.VersionControl.CheckoutMode.Both = 3

---@class UnityEditor.VersionControl.ResolveMethod : System.Enum
UnityEditor.VersionControl.ResolveMethod = {}
---@type UnityEditor.VersionControl.ResolveMethod
CS.UnityEditor.VersionControl.ResolveMethod = UnityEditor.VersionControl.ResolveMethod

---@return System.Int32 value:1
UnityEditor.VersionControl.ResolveMethod.UseMine = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.ResolveMethod.UseTheirs = 2

---@class UnityEditor.VersionControl.MergeMethod : System.Enum
UnityEditor.VersionControl.MergeMethod = {}
---@type UnityEditor.VersionControl.MergeMethod
CS.UnityEditor.VersionControl.MergeMethod = UnityEditor.VersionControl.MergeMethod

---@return System.Int32 value:0
UnityEditor.VersionControl.MergeMethod.MergeNone = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.MergeMethod.MergeAll = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.MergeMethod.MergeNonConflicting = 2

---@class UnityEditor.VersionControl.OnlineState : System.Enum
UnityEditor.VersionControl.OnlineState = {}
---@type UnityEditor.VersionControl.OnlineState
CS.UnityEditor.VersionControl.OnlineState = UnityEditor.VersionControl.OnlineState

---@return System.Int32 value:0
UnityEditor.VersionControl.OnlineState.Updating = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.OnlineState.Online = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.OnlineState.Offline = 2

---@class UnityEditor.VersionControl.RevertMode : System.Enum
UnityEditor.VersionControl.RevertMode = {}
---@type UnityEditor.VersionControl.RevertMode
CS.UnityEditor.VersionControl.RevertMode = UnityEditor.VersionControl.RevertMode

---@return System.Int32 value:0
UnityEditor.VersionControl.RevertMode.Normal = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.RevertMode.Unchanged = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.RevertMode.KeepModifications = 2

---@class UnityEditor.VersionControl.FileMode : System.Enum
UnityEditor.VersionControl.FileMode = {}
---@type UnityEditor.VersionControl.FileMode
CS.UnityEditor.VersionControl.FileMode = UnityEditor.VersionControl.FileMode

---@return System.Int32 value:0
UnityEditor.VersionControl.FileMode.None = 0
---@return System.Int32 value:1
UnityEditor.VersionControl.FileMode.Binary = 1
---@return System.Int32 value:2
UnityEditor.VersionControl.FileMode.Text = 2

