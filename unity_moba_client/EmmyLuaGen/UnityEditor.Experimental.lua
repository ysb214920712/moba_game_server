---@class UnityEditor.Experimental.RenderSettings : System.Object
---@field public useRadianceAmbientProbe System.Boolean @static setter getter
UnityEditor.Experimental.RenderSettings = {}
---@type UnityEditor.Experimental.RenderSettings
CS.UnityEditor.Experimental.RenderSettings = UnityEditor.Experimental.RenderSettings

---@class UnityEditor.Experimental.BuildOptionsExperimental : System.Object
---@field public DatalessPlayer UnityEditor.BuildOptions
UnityEditor.Experimental.BuildOptionsExperimental = {}
---@type UnityEditor.Experimental.BuildOptionsExperimental
CS.UnityEditor.Experimental.BuildOptionsExperimental = UnityEditor.Experimental.BuildOptionsExperimental

---@class UnityEditor.Experimental.BuildPipelineExperimental : System.Object
UnityEditor.Experimental.BuildPipelineExperimental = {}
---@type UnityEditor.Experimental.BuildPipelineExperimental
CS.UnityEditor.Experimental.BuildPipelineExperimental = UnityEditor.Experimental.BuildPipelineExperimental

---@param target UnityEditor.BuildTarget
---@return System.String
function UnityEditor.Experimental.BuildPipelineExperimental.GetSessionIdForBuildTarget(target)end
---@class UnityEditor.Experimental.EditorResources : System.Object
---@field public normalSkinIndex System.Int32 @static  getter
---@field public darkSkinIndex System.Int32 @static  getter
---@field public lightSkinSourcePath System.String @static  getter
---@field public darkSkinSourcePath System.String @static  getter
---@field public fontsPath System.String @static  getter
---@field public brushesPath System.String @static  getter
---@field public iconsPath System.String @static  getter
---@field public generatedIconsPath System.String @static  getter
---@field public folderIconName System.String @static  getter
---@field public emptyFolderIconName System.String @static  getter
---@field public editorDefaultResourcesPath System.String @static  getter
---@field public libraryBundlePath System.String @static  getter
---@field public dataPath System.String @static  getter
UnityEditor.Experimental.EditorResources = {}
---@type UnityEditor.Experimental.EditorResources
CS.UnityEditor.Experimental.EditorResources = UnityEditor.Experimental.EditorResources

---@overload fun(assetPath:System.String):any
---@overload fun(assetPath:System.String, type:System.Type):UnityEngine.Object
---@param assetPath System.String
---@param isRequired System.Boolean
---@return any
function UnityEditor.Experimental.EditorResources.Load(assetPath, isRequired)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.Experimental.EditorResources.GetAssetPath(obj)end
---@param path System.String
---@return System.String
function UnityEditor.Experimental.EditorResources.ExpandPath(path)end
---@param path System.String
---@return System.String
function UnityEditor.Experimental.EditorResources.GetFullPath(path)end
---@param path System.String
---@return System.Boolean
function UnityEditor.Experimental.EditorResources.Exists(path)end
---@class UnityEditor.Experimental.EditorUserBuildSettingsExperimental : System.Object
---@field public datalessPlayer System.Boolean @static setter getter
UnityEditor.Experimental.EditorUserBuildSettingsExperimental = {}
---@type UnityEditor.Experimental.EditorUserBuildSettingsExperimental
CS.UnityEditor.Experimental.EditorUserBuildSettingsExperimental = UnityEditor.Experimental.EditorUserBuildSettingsExperimental

---@class UnityEditor.Experimental.Lightmapping : System.Object
---@field public probesIgnoreDirectEnvironment System.Boolean @static setter getter
UnityEditor.Experimental.Lightmapping = {}
---@type UnityEditor.Experimental.Lightmapping
CS.UnityEditor.Experimental.Lightmapping = UnityEditor.Experimental.Lightmapping

---@param inputData UnityEngine.Vector4[]
---@param sampleCount System.Int32
---@return System.Void
function UnityEditor.Experimental.Lightmapping.SetCustomBakeInputs(inputData, sampleCount)end
---@param results UnityEngine.Vector4[]
---@return System.Boolean
function UnityEditor.Experimental.Lightmapping.GetCustomBakeResults(results)end
---@class UnityEditor.Experimental.UIElementsEditor : UnityEditor.Editor
UnityEditor.Experimental.UIElementsEditor = {}
---@type UnityEditor.Experimental.UIElementsEditor
CS.UnityEditor.Experimental.UIElementsEditor = UnityEditor.Experimental.UIElementsEditor

---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEditor.Experimental.UIElementsEditor:CreateInspectorGUI()end
---@class UnityEditor.Experimental.UIElementsPropertyDrawer : UnityEditor.PropertyDrawer
UnityEditor.Experimental.UIElementsPropertyDrawer = {}
---@type UnityEditor.Experimental.UIElementsPropertyDrawer
CS.UnityEditor.Experimental.UIElementsPropertyDrawer = UnityEditor.Experimental.UIElementsPropertyDrawer

---@param property UnityEditor.SerializedProperty
---@return UnityEngine.Experimental.UIElements.VisualElement
function UnityEditor.Experimental.UIElementsPropertyDrawer:CreatePropertyGUI(property)end
