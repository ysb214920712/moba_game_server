---@class UnityEditor.AI.NavMeshBuilder : System.Object
---@field public navMeshSettingsObject UnityEngine.Object @static  getter
---@field public isRunning System.Boolean @static  getter
UnityEditor.AI.NavMeshBuilder = {}
---@type UnityEditor.AI.NavMeshBuilder
CS.UnityEditor.AI.NavMeshBuilder = UnityEditor.AI.NavMeshBuilder

---@overload fun(root:UnityEngine.Transform, includedLayerMask:System.Int32, geometry:UnityEngine.AI.NavMeshCollectGeometry, defaultArea:System.Int32, markups:System.Collections.Generic.List, stageProxy:UnityEngine.SceneManagement.Scene, results:System.Collections.Generic.List):System.Void
---@param includedWorldBounds UnityEngine.Bounds
---@param includedLayerMask System.Int32
---@param geometry UnityEngine.AI.NavMeshCollectGeometry
---@param defaultArea System.Int32
---@param markups System.Collections.Generic.List
---@param stageProxy UnityEngine.SceneManagement.Scene
---@param results System.Collections.Generic.List
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.CollectSourcesInStage(includedWorldBounds, includedLayerMask, geometry, defaultArea, markups, stageProxy, results)end
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.BuildNavMesh()end
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.BuildNavMeshAsync()end
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.ClearAllNavMeshes()end
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.Cancel()end
---@param paths System.String[]
---@return System.Void
function UnityEditor.AI.NavMeshBuilder.BuildNavMeshForMultipleScenes(paths)end
---@class UnityEditor.AI.NavMeshVisualizationSettings : System.Object
---@field public showNavigation System.Int32 @static setter getter
UnityEditor.AI.NavMeshVisualizationSettings = {}
---@type UnityEditor.AI.NavMeshVisualizationSettings
CS.UnityEditor.AI.NavMeshVisualizationSettings = UnityEditor.AI.NavMeshVisualizationSettings

---@class UnityEditor.AI.NavMeshEditorHelpers : System.Object
UnityEditor.AI.NavMeshEditorHelpers = {}
---@type UnityEditor.AI.NavMeshEditorHelpers
CS.UnityEditor.AI.NavMeshEditorHelpers = UnityEditor.AI.NavMeshEditorHelpers

---@overload fun(navMeshData:UnityEngine.AI.NavMeshData, flags:UnityEngine.AI.NavMeshBuildDebugFlags):System.Void
---@param navMeshData UnityEngine.AI.NavMeshData
---@return System.Void
function UnityEditor.AI.NavMeshEditorHelpers.DrawBuildDebug(navMeshData)end
---@param agentTypeID System.Int32
---@return System.Void
function UnityEditor.AI.NavMeshEditorHelpers.OpenAgentSettings(agentTypeID)end
---@return System.Void
function UnityEditor.AI.NavMeshEditorHelpers.OpenAreaSettings()end
---@param rect UnityEngine.Rect
---@param agentRadius System.Single
---@param agentHeight System.Single
---@param agentClimb System.Single
---@param agentSlope System.Single
---@return System.Void
function UnityEditor.AI.NavMeshEditorHelpers.DrawAgentDiagram(rect, agentRadius, agentHeight, agentClimb, agentSlope)end
