---@class UnityEngine.SceneManagement.Scene : System.ValueType
---@field public handle System.Int32 @  getter
---@field public path System.String @  getter
---@field public name System.String @ setter getter
---@field public isLoaded System.Boolean @  getter
---@field public buildIndex System.Int32 @  getter
---@field public isDirty System.Boolean @  getter
---@field public rootCount System.Int32 @  getter
UnityEngine.SceneManagement.Scene = {}
---@type UnityEngine.SceneManagement.Scene
CS.UnityEngine.SceneManagement.Scene = UnityEngine.SceneManagement.Scene

---@return System.Boolean
function UnityEngine.SceneManagement.Scene:IsValid()end
---@overload fun(rootGameObjects:System.Collections.Generic.List):System.Void
---@return UnityEngine.GameObject[]
function UnityEngine.SceneManagement.Scene:GetRootGameObjects()end
---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEngine.SceneManagement.Scene.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEngine.SceneManagement.Scene.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEngine.SceneManagement.Scene:GetHashCode()end
---@param other System.Object
---@return System.Boolean
function UnityEngine.SceneManagement.Scene:Equals(other)end
---@class UnityEngine.SceneManagement.SceneManager : System.Object
---@field public sceneCount System.Int32 @static  getter
---@field public sceneCountInBuildSettings System.Int32 @static  getter
UnityEngine.SceneManagement.SceneManager = {}
---@type UnityEngine.SceneManagement.SceneManager
CS.UnityEngine.SceneManagement.SceneManager = UnityEngine.SceneManagement.SceneManager

---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetActiveScene()end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEngine.SceneManagement.SceneManager.SetActiveScene(scene)end
---@param scenePath System.String
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByPath(scenePath)end
---@param name System.String
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByName(name)end
---@param buildIndex System.Int32
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByBuildIndex(buildIndex)end
---@param index System.Int32
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneAt(index)end
---@overload fun(sceneName:System.String, parameters:UnityEngine.SceneManagement.CreateSceneParameters):UnityEngine.SceneManagement.Scene
---@param sceneName System.String
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.CreateScene(sceneName)end
---@param sourceScene UnityEngine.SceneManagement.Scene
---@param destinationScene UnityEngine.SceneManagement.Scene
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.MergeScenes(sourceScene, destinationScene)end
---@param go UnityEngine.GameObject
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.MoveGameObjectToScene(go, scene)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.add_sceneLoaded(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.remove_sceneLoaded(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.add_sceneUnloaded(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.remove_sceneUnloaded(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.add_activeSceneChanged(value)end
---@param value UnityEngine.Events.UnityAction
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.remove_activeSceneChanged(value)end
---@return UnityEngine.SceneManagement.Scene[]
function UnityEngine.SceneManagement.SceneManager.GetAllScenes()end
---@overload fun(sceneName:System.String):System.Void
---@overload fun(sceneBuildIndex:System.Int32, mode:UnityEngine.SceneManagement.LoadSceneMode):System.Void
---@overload fun(sceneBuildIndex:System.Int32, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.SceneManagement.Scene
---@overload fun(sceneName:System.String, mode:UnityEngine.SceneManagement.LoadSceneMode):System.Void
---@overload fun(sceneName:System.String, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.SceneManagement.Scene
---@param sceneBuildIndex System.Int32
---@return System.Void
function UnityEngine.SceneManagement.SceneManager.LoadScene(sceneBuildIndex)end
---@overload fun(sceneName:System.String):UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex:System.Int32, mode:UnityEngine.SceneManagement.LoadSceneMode):UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex:System.Int32, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, mode:UnityEngine.SceneManagement.LoadSceneMode):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.AsyncOperation
---@param sceneBuildIndex System.Int32
---@return UnityEngine.AsyncOperation
function UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneBuildIndex)end
---@overload fun(scene:UnityEngine.SceneManagement.Scene):System.Boolean
---@overload fun(sceneName:System.String):System.Boolean
---@param sceneBuildIndex System.Int32
---@return System.Boolean
function UnityEngine.SceneManagement.SceneManager.UnloadScene(sceneBuildIndex)end
---@overload fun(sceneName:System.String):UnityEngine.AsyncOperation
---@overload fun(scene:UnityEngine.SceneManagement.Scene):UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex:System.Int32, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@overload fun(scene:UnityEngine.SceneManagement.Scene, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@param sceneBuildIndex System.Int32
---@return UnityEngine.AsyncOperation
function UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(sceneBuildIndex)end
---@class UnityEngine.SceneManagement.LoadSceneMode : System.Enum
UnityEngine.SceneManagement.LoadSceneMode = {}
---@type UnityEngine.SceneManagement.LoadSceneMode
CS.UnityEngine.SceneManagement.LoadSceneMode = UnityEngine.SceneManagement.LoadSceneMode

---@return System.Int32 value:0
UnityEngine.SceneManagement.LoadSceneMode.Single = 0
---@return System.Int32 value:1
UnityEngine.SceneManagement.LoadSceneMode.Additive = 1

---@class UnityEngine.SceneManagement.LocalPhysicsMode : System.Enum
UnityEngine.SceneManagement.LocalPhysicsMode = {}
---@type UnityEngine.SceneManagement.LocalPhysicsMode
CS.UnityEngine.SceneManagement.LocalPhysicsMode = UnityEngine.SceneManagement.LocalPhysicsMode

---@return System.Int32 value:0
UnityEngine.SceneManagement.LocalPhysicsMode.None = 0
---@return System.Int32 value:1
UnityEngine.SceneManagement.LocalPhysicsMode.Physics2D = 1
---@return System.Int32 value:2
UnityEngine.SceneManagement.LocalPhysicsMode.Physics3D = 2

---@class UnityEngine.SceneManagement.LoadSceneParameters : System.ValueType
---@field public loadSceneMode UnityEngine.SceneManagement.LoadSceneMode @ setter getter
---@field public localPhysicsMode UnityEngine.SceneManagement.LocalPhysicsMode @ setter getter
UnityEngine.SceneManagement.LoadSceneParameters = {}
---@type UnityEngine.SceneManagement.LoadSceneParameters
CS.UnityEngine.SceneManagement.LoadSceneParameters = UnityEngine.SceneManagement.LoadSceneParameters

---@class UnityEngine.SceneManagement.CreateSceneParameters : System.ValueType
---@field public localPhysicsMode UnityEngine.SceneManagement.LocalPhysicsMode @ setter getter
UnityEngine.SceneManagement.CreateSceneParameters = {}
---@type UnityEngine.SceneManagement.CreateSceneParameters
CS.UnityEngine.SceneManagement.CreateSceneParameters = UnityEngine.SceneManagement.CreateSceneParameters

---@class UnityEngine.SceneManagement.UnloadSceneOptions : System.Enum
UnityEngine.SceneManagement.UnloadSceneOptions = {}
---@type UnityEngine.SceneManagement.UnloadSceneOptions
CS.UnityEngine.SceneManagement.UnloadSceneOptions = UnityEngine.SceneManagement.UnloadSceneOptions

---@return System.Int32 value:0
UnityEngine.SceneManagement.UnloadSceneOptions.None = 0
---@return System.Int32 value:1
UnityEngine.SceneManagement.UnloadSceneOptions.UnloadAllEmbeddedSceneObjects = 1

---@class UnityEngine.SceneManagement.SceneUtility : System.Object
UnityEngine.SceneManagement.SceneUtility = {}
---@type UnityEngine.SceneManagement.SceneUtility
CS.UnityEngine.SceneManagement.SceneUtility = UnityEngine.SceneManagement.SceneUtility

---@param buildIndex System.Int32
---@return System.String
function UnityEngine.SceneManagement.SceneUtility.GetScenePathByBuildIndex(buildIndex)end
---@param scenePath System.String
---@return System.Int32
function UnityEngine.SceneManagement.SceneUtility.GetBuildIndexByScenePath(scenePath)end
