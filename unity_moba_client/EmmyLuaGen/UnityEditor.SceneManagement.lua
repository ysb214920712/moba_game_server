---@class UnityEditor.SceneManagement.EditorSceneManager : UnityEngine.SceneManagement.SceneManager
---@field public loadedSceneCount System.Int32 @static  getter
---@field public previewSceneCount System.Int32 @static  getter
---@field public preventCrossSceneReferences System.Boolean @static setter getter
---@field public playModeStartScene UnityEditor.SceneAsset @static setter getter
UnityEditor.SceneManagement.EditorSceneManager = {}
---@type UnityEditor.SceneManagement.EditorSceneManager
CS.UnityEditor.SceneManagement.EditorSceneManager = UnityEditor.SceneManagement.EditorSceneManager

---@overload fun(scenePath:System.String, mode:UnityEditor.SceneManagement.OpenSceneMode):UnityEngine.SceneManagement.Scene
---@param scenePath System.String
---@return UnityEngine.SceneManagement.Scene
function UnityEditor.SceneManagement.EditorSceneManager.OpenScene(scenePath)end
---@overload fun(setup:UnityEditor.SceneManagement.NewSceneSetup, mode:UnityEditor.SceneManagement.NewSceneMode):UnityEngine.SceneManagement.Scene
---@param setup UnityEditor.SceneManagement.NewSceneSetup
---@return UnityEngine.SceneManagement.Scene
function UnityEditor.SceneManagement.EditorSceneManager.NewScene(setup)end
---@return UnityEngine.SceneManagement.Scene
function UnityEditor.SceneManagement.EditorSceneManager.NewPreviewScene()end
---@param scene UnityEngine.SceneManagement.Scene
---@param removeScene System.Boolean
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.CloseScene(scene, removeScene)end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.ClosePreviewScene(scene)end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.IsPreviewScene(scene)end
---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.IsPreviewSceneObject(obj)end
---@param src UnityEngine.SceneManagement.Scene
---@param dst UnityEngine.SceneManagement.Scene
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.MoveSceneBefore(src, dst)end
---@param src UnityEngine.SceneManagement.Scene
---@param dst UnityEngine.SceneManagement.Scene
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.MoveSceneAfter(src, dst)end
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.SaveOpenScenes()end
---@param scenes UnityEngine.SceneManagement.Scene[]
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.SaveScenes(scenes)end
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo()end
---@param scenes UnityEngine.SceneManagement.Scene[]
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.SaveModifiedScenesIfUserWantsTo(scenes)end
---@param dialogContent System.String
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.EnsureUntitledSceneHasBeenSaved(dialogContent)end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(scene)end
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.MarkAllScenesDirty()end
---@return UnityEditor.SceneManagement.SceneSetup[]
function UnityEditor.SceneManagement.EditorSceneManager.GetSceneManagerSetup()end
---@param value UnityEditor.SceneManagement.SceneSetup[]
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.RestoreSceneManagerSetup(value)end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.DetectCrossSceneReferences(scene)end
---@overload fun(scene:UnityEngine.SceneManagement.Scene, dstScenePath:System.String):System.Boolean
---@overload fun(scene:UnityEngine.SceneManagement.Scene, dstScenePath:System.String, saveAsCopy:System.Boolean):System.Boolean
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.SceneManagement.EditorSceneManager.SaveScene(scene)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_activeSceneChangedInEditMode(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_activeSceneChangedInEditMode(value)end
---@param path System.String
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@return UnityEngine.SceneManagement.Scene
function UnityEditor.SceneManagement.EditorSceneManager.LoadSceneInPlayMode(path, parameters)end
---@param path System.String
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@return UnityEngine.AsyncOperation
function UnityEditor.SceneManagement.EditorSceneManager.LoadSceneAsyncInPlayMode(path, parameters)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.NewSceneCreatedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_newSceneCreated(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.NewSceneCreatedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_newSceneCreated(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneOpeningCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneOpening(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneOpeningCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneOpening(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneOpenedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneOpened(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneOpenedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneOpened(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneClosingCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneClosing(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneClosingCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneClosing(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneClosedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneClosed(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneClosedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneClosed(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneSavingCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneSaving(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneSavingCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneSaving(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneSavedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.add_sceneSaved(value)end
---@param value UnityEditor.SceneManagement.EditorSceneManager.SceneSavedCallback
---@return System.Void
function UnityEditor.SceneManagement.EditorSceneManager.remove_sceneSaved(value)end
---@class UnityEditor.SceneManagement.OpenSceneMode : System.Enum
UnityEditor.SceneManagement.OpenSceneMode = {}
---@type UnityEditor.SceneManagement.OpenSceneMode
CS.UnityEditor.SceneManagement.OpenSceneMode = UnityEditor.SceneManagement.OpenSceneMode

---@return System.Int32 value:0
UnityEditor.SceneManagement.OpenSceneMode.Single = 0
---@return System.Int32 value:1
UnityEditor.SceneManagement.OpenSceneMode.Additive = 1
---@return System.Int32 value:2
UnityEditor.SceneManagement.OpenSceneMode.AdditiveWithoutLoading = 2

---@class UnityEditor.SceneManagement.NewSceneMode : System.Enum
UnityEditor.SceneManagement.NewSceneMode = {}
---@type UnityEditor.SceneManagement.NewSceneMode
CS.UnityEditor.SceneManagement.NewSceneMode = UnityEditor.SceneManagement.NewSceneMode

---@return System.Int32 value:0
UnityEditor.SceneManagement.NewSceneMode.Single = 0
---@return System.Int32 value:1
UnityEditor.SceneManagement.NewSceneMode.Additive = 1

---@class UnityEditor.SceneManagement.NewSceneSetup : System.Enum
UnityEditor.SceneManagement.NewSceneSetup = {}
---@type UnityEditor.SceneManagement.NewSceneSetup
CS.UnityEditor.SceneManagement.NewSceneSetup = UnityEditor.SceneManagement.NewSceneSetup

---@return System.Int32 value:0
UnityEditor.SceneManagement.NewSceneSetup.EmptyScene = 0
---@return System.Int32 value:1
UnityEditor.SceneManagement.NewSceneSetup.DefaultGameObjects = 1

---@class UnityEditor.SceneManagement.PrefabOverride : System.Object
UnityEditor.SceneManagement.PrefabOverride = {}
---@type UnityEditor.SceneManagement.PrefabOverride
CS.UnityEditor.SceneManagement.PrefabOverride = UnityEditor.SceneManagement.PrefabOverride

---@overload fun(prefabAssetPath:System.String):System.Void
---@return System.Void
function UnityEditor.SceneManagement.PrefabOverride:Apply()end
---@return System.Void
function UnityEditor.SceneManagement.PrefabOverride:Revert()end
---@return UnityEngine.Object
function UnityEditor.SceneManagement.PrefabOverride:GetAssetObject()end
---@class UnityEditor.SceneManagement.ObjectOverride : UnityEditor.SceneManagement.PrefabOverride
---@field public instanceObject UnityEngine.Object @ setter getter
UnityEditor.SceneManagement.ObjectOverride = {}
---@type UnityEditor.SceneManagement.ObjectOverride
CS.UnityEditor.SceneManagement.ObjectOverride = UnityEditor.SceneManagement.ObjectOverride

---@param prefabAssetPath System.String
---@return System.Void
function UnityEditor.SceneManagement.ObjectOverride:Apply(prefabAssetPath)end
---@return System.Void
function UnityEditor.SceneManagement.ObjectOverride:Revert()end
---@return UnityEngine.Object
function UnityEditor.SceneManagement.ObjectOverride:GetAssetObject()end
---@class UnityEditor.SceneManagement.AddedComponent : UnityEditor.SceneManagement.PrefabOverride
---@field public instanceComponent UnityEngine.Component @ setter getter
UnityEditor.SceneManagement.AddedComponent = {}
---@type UnityEditor.SceneManagement.AddedComponent
CS.UnityEditor.SceneManagement.AddedComponent = UnityEditor.SceneManagement.AddedComponent

---@param prefabAssetPath System.String
---@return System.Void
function UnityEditor.SceneManagement.AddedComponent:Apply(prefabAssetPath)end
---@return System.Void
function UnityEditor.SceneManagement.AddedComponent:Revert()end
---@return UnityEngine.Object
function UnityEditor.SceneManagement.AddedComponent:GetAssetObject()end
---@class UnityEditor.SceneManagement.RemovedComponent : UnityEditor.SceneManagement.PrefabOverride
---@field public containingInstanceGameObject UnityEngine.GameObject @ setter getter
---@field public assetComponent UnityEngine.Component @ setter getter
UnityEditor.SceneManagement.RemovedComponent = {}
---@type UnityEditor.SceneManagement.RemovedComponent
CS.UnityEditor.SceneManagement.RemovedComponent = UnityEditor.SceneManagement.RemovedComponent

---@param prefabAssetPath System.String
---@return System.Void
function UnityEditor.SceneManagement.RemovedComponent:Apply(prefabAssetPath)end
---@return System.Void
function UnityEditor.SceneManagement.RemovedComponent:Revert()end
---@return UnityEngine.Object
function UnityEditor.SceneManagement.RemovedComponent:GetAssetObject()end
---@class UnityEditor.SceneManagement.AddedGameObject : UnityEditor.SceneManagement.PrefabOverride
---@field public instanceGameObject UnityEngine.GameObject @ setter getter
---@field public siblingIndex System.Int32 @ setter getter
UnityEditor.SceneManagement.AddedGameObject = {}
---@type UnityEditor.SceneManagement.AddedGameObject
CS.UnityEditor.SceneManagement.AddedGameObject = UnityEditor.SceneManagement.AddedGameObject

---@param prefabAssetPath System.String
---@return System.Void
function UnityEditor.SceneManagement.AddedGameObject:Apply(prefabAssetPath)end
---@return System.Void
function UnityEditor.SceneManagement.AddedGameObject:Revert()end
---@return UnityEngine.Object
function UnityEditor.SceneManagement.AddedGameObject:GetAssetObject()end
---@class UnityEditor.SceneManagement.SceneSetup : System.Object
---@field public path System.String @ setter getter
---@field public isLoaded System.Boolean @ setter getter
---@field public isActive System.Boolean @ setter getter
UnityEditor.SceneManagement.SceneSetup = {}
---@type UnityEditor.SceneManagement.SceneSetup
CS.UnityEditor.SceneManagement.SceneSetup = UnityEditor.SceneManagement.SceneSetup

---@class UnityEditor.SceneManagement.StageHandle : System.ValueType
UnityEditor.SceneManagement.StageHandle = {}
---@type UnityEditor.SceneManagement.StageHandle
CS.UnityEditor.SceneManagement.StageHandle = UnityEditor.SceneManagement.StageHandle

---@param gameObject UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.SceneManagement.StageHandle:Contains(gameObject)end
---@return any
function UnityEditor.SceneManagement.StageHandle:FindComponentOfType()end
---@return T[]
function UnityEditor.SceneManagement.StageHandle:FindComponentsOfType()end
---@return System.Boolean
function UnityEditor.SceneManagement.StageHandle:IsValid()end
---@param s1 UnityEditor.SceneManagement.StageHandle
---@param s2 UnityEditor.SceneManagement.StageHandle
---@return System.Boolean
function UnityEditor.SceneManagement.StageHandle.op_Equality(s1, s2)end
---@param s1 UnityEditor.SceneManagement.StageHandle
---@param s2 UnityEditor.SceneManagement.StageHandle
---@return System.Boolean
function UnityEditor.SceneManagement.StageHandle.op_Inequality(s1, s2)end
---@overload fun(other:UnityEditor.SceneManagement.StageHandle):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEditor.SceneManagement.StageHandle:Equals(other)end
---@return System.Int32
function UnityEditor.SceneManagement.StageHandle:GetHashCode()end
---@class UnityEditor.SceneManagement.StageUtility : System.Object
UnityEditor.SceneManagement.StageUtility = {}
---@type UnityEditor.SceneManagement.StageUtility
CS.UnityEditor.SceneManagement.StageUtility = UnityEditor.SceneManagement.StageUtility

---@param gameObject UnityEngine.GameObject
---@param camera UnityEngine.Camera
---@return System.Boolean
function UnityEditor.SceneManagement.StageUtility.IsGameObjectRenderedByCamera(gameObject, camera)end
---@return UnityEditor.SceneManagement.StageHandle
function UnityEditor.SceneManagement.StageUtility.GetCurrentStageHandle()end
---@return UnityEditor.SceneManagement.StageHandle
function UnityEditor.SceneManagement.StageUtility.GetMainStageHandle()end
---@overload fun(scene:UnityEngine.SceneManagement.Scene):UnityEditor.SceneManagement.StageHandle
---@param gameObject UnityEngine.GameObject
---@return UnityEditor.SceneManagement.StageHandle
function UnityEditor.SceneManagement.StageUtility.GetStageHandle(gameObject)end
---@return System.Void
function UnityEditor.SceneManagement.StageUtility.GoToMainStage()end
---@return System.Void
function UnityEditor.SceneManagement.StageUtility.GoBackToPreviousStage()end
---@param gameObject UnityEngine.GameObject
---@return System.Void
function UnityEditor.SceneManagement.StageUtility.PlaceGameObjectInCurrentStage(gameObject)end
