---@class UnityEditor.AssetModificationProcessor : System.Object
UnityEditor.AssetModificationProcessor = {}
---@type UnityEditor.AssetModificationProcessor
CS.UnityEditor.AssetModificationProcessor = UnityEditor.AssetModificationProcessor

---@class UnityEditor.InspectorMode : System.Enum
UnityEditor.InspectorMode = {}
---@type UnityEditor.InspectorMode
CS.UnityEditor.InspectorMode = UnityEditor.InspectorMode

---@return System.Int32 value:0
UnityEditor.InspectorMode.Normal = 0
---@return System.Int32 value:1
UnityEditor.InspectorMode.Debug = 1
---@return System.Int32 value:2
UnityEditor.InspectorMode.DebugInternal = 2

---@class UnityEditor.HierarchyType : System.Enum
UnityEditor.HierarchyType = {}
---@type UnityEditor.HierarchyType
CS.UnityEditor.HierarchyType = UnityEditor.HierarchyType

---@return System.Int32 value:1
UnityEditor.HierarchyType.Assets = 1

---@class UnityEditor.IconDrawStyle : System.Enum
UnityEditor.IconDrawStyle = {}
---@type UnityEditor.IconDrawStyle
CS.UnityEditor.IconDrawStyle = UnityEditor.IconDrawStyle

---@return System.Int32 value:0
UnityEditor.IconDrawStyle.NonTexture = 0
---@return System.Int32 value:1
UnityEditor.IconDrawStyle.Texture = 1

---@class UnityEditor.HierarchyProperty : System.Object
---@field public instanceID System.Int32 @  getter
---@field public pptrValue UnityEngine.Object @  getter
---@field public name System.String @  getter
---@field public hasChildren System.Boolean @  getter
---@field public depth System.Int32 @  getter
---@field public ancestors System.Int32[] @  getter
---@field public row System.Int32 @  getter
---@field public colorCode System.Int32 @  getter
---@field public guid System.String @  getter
---@field public alphaSorted System.Boolean @ setter getter
---@field public showSceneHeaders System.Boolean @ setter getter
---@field public isValid System.Boolean @  getter
---@field public isMainRepresentation System.Boolean @  getter
---@field public hasFullPreviewImage System.Boolean @  getter
---@field public iconDrawStyle UnityEditor.IconDrawStyle @  getter
---@field public isFolder System.Boolean @  getter
---@field public dynamicDependencies UnityEditor.GUID[] @  getter
---@field public icon UnityEngine.Texture2D @  getter
UnityEditor.HierarchyProperty = {}
---@type UnityEditor.HierarchyProperty
CS.UnityEditor.HierarchyProperty = UnityEditor.HierarchyProperty

---@param sceneHandles System.Int32[]
---@return System.Void
function UnityEditor.HierarchyProperty:SetCustomScenes(sceneHandles)end
---@return System.Void
function UnityEditor.HierarchyProperty:Reset()end
---@return UnityEngine.SceneManagement.Scene
function UnityEditor.HierarchyProperty:GetScene()end
---@param expanded System.Int32[]
---@return System.Boolean
function UnityEditor.HierarchyProperty:IsExpanded(expanded)end
---@param expanded System.Int32[]
---@return System.Boolean
function UnityEditor.HierarchyProperty:Next(expanded)end
---@param expanded System.Int32[]
---@param minDepth System.Int32
---@return System.Boolean
function UnityEditor.HierarchyProperty:NextWithDepthCheck(expanded, minDepth)end
---@param expanded System.Int32[]
---@return System.Boolean
function UnityEditor.HierarchyProperty:Previous(expanded)end
---@return System.Boolean
function UnityEditor.HierarchyProperty:Parent()end
---@param instanceID System.Int32
---@param expanded System.Int32[]
---@return System.Boolean
function UnityEditor.HierarchyProperty:Find(instanceID, expanded)end
---@param count System.Int32
---@param expanded System.Int32[]
---@return System.Boolean
function UnityEditor.HierarchyProperty:Skip(count, expanded)end
---@param expanded System.Int32[]
---@return System.Int32
function UnityEditor.HierarchyProperty:CountRemaining(expanded)end
---@param searchString System.String
---@param mode System.Int32
---@return System.Void
function UnityEditor.HierarchyProperty:SetSearchFilter(searchString, mode)end
---@param instanceIDs System.Int32[]
---@return System.Int32[]
function UnityEditor.HierarchyProperty:FindAllAncestors(instanceIDs)end
---@return System.Void
function UnityEditor.HierarchyProperty.ClearSceneObjectsFilter()end
---@param instanceID System.Int32
---@param otherVisibilityState System.Boolean
---@return System.Void
function UnityEditor.HierarchyProperty.FilterSingleSceneObject(instanceID, otherVisibilityState)end
---@class UnityEditor.LODUtility : System.Object
UnityEditor.LODUtility = {}
---@type UnityEditor.LODUtility
CS.UnityEditor.LODUtility = UnityEditor.LODUtility

---@param group UnityEngine.LODGroup
---@return System.Void
function UnityEditor.LODUtility.CalculateLODGroupBoundingBox(group)end
---@class UnityEditor.PlayerSettings : UnityEngine.Object
---@field public enable360StereoCapture System.Boolean @static setter getter
---@field public companyName System.String @static setter getter
---@field public productName System.String @static setter getter
---@field public showUnitySplashScreen System.Boolean @static setter getter
---@field public splashScreenStyle UnityEditor.SplashScreenStyle @static setter getter
---@field public cloudProjectId System.String @static  getter
---@field public productGUID System.Guid @static  getter
---@field public colorSpace UnityEngine.ColorSpace @static setter getter
---@field public defaultScreenWidth System.Int32 @static setter getter
---@field public defaultScreenHeight System.Int32 @static setter getter
---@field public defaultWebScreenWidth System.Int32 @static setter getter
---@field public defaultWebScreenHeight System.Int32 @static setter getter
---@field public displayResolutionDialog UnityEditor.ResolutionDialogSetting @static setter getter
---@field public defaultIsFullScreen System.Boolean @static setter getter
---@field public defaultIsNativeResolution System.Boolean @static setter getter
---@field public macRetinaSupport System.Boolean @static setter getter
---@field public runInBackground System.Boolean @static setter getter
---@field public captureSingleScreen System.Boolean @static setter getter
---@field public usePlayerLog System.Boolean @static setter getter
---@field public resizableWindow System.Boolean @static setter getter
---@field public bakeCollisionMeshes System.Boolean @static setter getter
---@field public useMacAppStoreValidation System.Boolean @static setter getter
---@field public macFullscreenMode UnityEditor.MacFullscreenMode @static setter getter
---@field public d3d9FullscreenMode UnityEditor.D3D9FullscreenMode @static setter getter
---@field public d3d11FullscreenMode UnityEditor.D3D11FullscreenMode @static setter getter
---@field public fullScreenMode UnityEngine.FullScreenMode @static setter getter
---@field public virtualRealitySupported System.Boolean @static setter getter
---@field public singlePassStereoRendering System.Boolean @static setter getter
---@field public stereoRenderingPath UnityEditor.StereoRenderingPath @static setter getter
---@field public protectGraphicsMemory System.Boolean @static setter getter
---@field public enableFrameTimingStats System.Boolean @static setter getter
---@field public useHDRDisplay System.Boolean @static setter getter
---@field public visibleInBackground System.Boolean @static setter getter
---@field public allowFullscreenSwitch System.Boolean @static setter getter
---@field public forceSingleInstance System.Boolean @static setter getter
---@field public openGLRequireES31 System.Boolean @static setter getter
---@field public openGLRequireES31AEP System.Boolean @static setter getter
---@field public resolutionDialogBanner UnityEngine.Texture2D @static setter getter
---@field public virtualRealitySplashScreen UnityEngine.Texture2D @static setter getter
---@field public iPhoneBundleIdentifier System.String @static setter getter
---@field public scriptingRuntimeVersion UnityEditor.ScriptingRuntimeVersion @static setter getter
---@field public allowUnsafeCode System.Boolean @static setter getter
---@field public keystorePass System.String @static setter getter
---@field public keyaliasPass System.String @static setter getter
---@field public xboxTitleId System.String @static setter getter
---@field public xboxImageXexFilePath System.String @static  getter
---@field public xboxSpaFilePath System.String @static  getter
---@field public xboxGenerateSpa System.Boolean @static  getter
---@field public xboxEnableGuest System.Boolean @static  getter
---@field public xboxDeployKinectResources System.Boolean @static  getter
---@field public xboxDeployKinectHeadOrientation System.Boolean @static setter getter
---@field public xboxDeployKinectHeadPosition System.Boolean @static setter getter
---@field public xboxSplashScreen UnityEngine.Texture2D @static  getter
---@field public xboxAdditionalTitleMemorySize System.Int32 @static setter getter
---@field public xboxEnableKinect System.Boolean @static  getter
---@field public xboxEnableKinectAutoTracking System.Boolean @static  getter
---@field public xboxEnableSpeech System.Boolean @static  getter
---@field public xboxSpeechDB System.UInt32 @static  getter
---@field public gpuSkinning System.Boolean @static setter getter
---@field public graphicsJobs System.Boolean @static setter getter
---@field public graphicsJobMode UnityEditor.GraphicsJobMode @static setter getter
---@field public xboxPIXTextureCapture System.Boolean @static  getter
---@field public xboxEnableAvatar System.Boolean @static  getter
---@field public xboxOneResolution System.Int32 @static  getter
---@field public enableInternalProfiler System.Boolean @static setter getter
---@field public actionOnDotNetUnhandledException UnityEditor.ActionOnDotNetUnhandledException @static setter getter
---@field public logObjCUncaughtExceptions System.Boolean @static setter getter
---@field public enableCrashReportAPI System.Boolean @static setter getter
---@field public applicationIdentifier System.String @static setter getter
---@field public bundleVersion System.String @static setter getter
---@field public statusBarHidden System.Boolean @static setter getter
---@field public strippingLevel UnityEditor.StrippingLevel @static setter getter
---@field public stripEngineCode System.Boolean @static setter getter
---@field public defaultInterfaceOrientation UnityEditor.UIOrientation @static setter getter
---@field public allowedAutorotateToPortrait System.Boolean @static setter getter
---@field public allowedAutorotateToPortraitUpsideDown System.Boolean @static setter getter
---@field public allowedAutorotateToLandscapeRight System.Boolean @static setter getter
---@field public allowedAutorotateToLandscapeLeft System.Boolean @static setter getter
---@field public useAnimatedAutorotation System.Boolean @static setter getter
---@field public use32BitDisplayBuffer System.Boolean @static setter getter
---@field public preserveFramebufferAlpha System.Boolean @static setter getter
---@field public apiCompatibilityLevel UnityEditor.ApiCompatibilityLevel @static setter getter
---@field public stripUnusedMeshComponents System.Boolean @static setter getter
---@field public advancedLicense System.Boolean @static  getter
---@field public aotOptions System.String @static setter getter
---@field public defaultCursor UnityEngine.Texture2D @static setter getter
---@field public cursorHotspot UnityEngine.Vector2 @static setter getter
---@field public accelerometerFrequency System.Int32 @static setter getter
---@field public MTRendering System.Boolean @static setter getter
---@field public useDirect3D11 System.Boolean @static setter getter
---@field public stereoscopic3D System.Boolean @static setter getter
---@field public muteOtherAudioSources System.Boolean @static setter getter
---@field public legacyClampBlendShapeWeights System.Boolean @static setter getter
---@field public enableMetalAPIValidation System.Boolean @static setter getter
---@field public alwaysDisplayWatermark System.Boolean @static setter getter
---@field public firstStreamedLevelWithResources System.Int32 @static setter getter
---@field public targetGlesGraphics UnityEditor.TargetGlesGraphics @static setter getter
---@field public targetIOSGraphics UnityEditor.TargetIOSGraphics @static setter getter
---@field public locationUsageDescription System.String @static setter getter
---@field public renderingPath UnityEngine.RenderingPath @static setter getter
---@field public mobileRenderingPath UnityEngine.RenderingPath @static setter getter
---@field public bundleIdentifier System.String @static setter getter
---@field public vulkanEnableSetSRGBWrite System.Boolean @static setter getter
---@field public vulkanUseSWCommandBuffers System.Boolean @static setter getter
UnityEditor.PlayerSettings = {}
---@type UnityEditor.PlayerSettings
CS.UnityEditor.PlayerSettings = UnityEditor.PlayerSettings

---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String[]
function UnityEditor.PlayerSettings.GetAvailableVirtualRealitySDKs(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditor.PlayerSettings.GetVirtualRealitySupported(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param value System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetVirtualRealitySupported(targetGroup, value)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String[]
function UnityEditor.PlayerSettings.GetVirtualRealitySDKs(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param sdks System.String[]
---@return System.Void
function UnityEditor.PlayerSettings.SetVirtualRealitySDKs(targetGroup, sdks)end
---@overload fun(name:System.String, value:System.Int32, target:UnityEditor.BuildTargetGroup):System.Void
---@overload fun(name:System.String, value:System.Int32, target:UnityEditor.BuildTarget):System.Void
---@param name System.String
---@param value System.Int32
---@return System.Void
function UnityEditor.PlayerSettings.SetPropertyInt(name, value)end
---@overload fun(name:System.String, target:UnityEditor.BuildTargetGroup):System.Int32
---@param name System.String
---@return System.Int32
function UnityEditor.PlayerSettings.GetPropertyInt(name)end
---@overload fun(name:System.String, value:System.Int32, target:UnityEditor.BuildTargetGroup):System.Boolean
---@param name System.String
---@param value System.Int32
---@return System.Boolean
function UnityEditor.PlayerSettings.GetPropertyOptionalInt(name, value)end
---@overload fun(name:System.String, value:System.Boolean, target:UnityEditor.BuildTargetGroup):System.Void
---@overload fun(name:System.String, value:System.Boolean, target:UnityEditor.BuildTarget):System.Void
---@param name System.String
---@param value System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetPropertyBool(name, value)end
---@overload fun(name:System.String, target:UnityEditor.BuildTargetGroup):System.Boolean
---@param name System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.GetPropertyBool(name)end
---@overload fun(name:System.String, value:System.Boolean, target:UnityEditor.BuildTargetGroup):System.Boolean
---@param name System.String
---@param value System.Boolean
---@return System.Boolean
function UnityEditor.PlayerSettings.GetPropertyOptionalBool(name, value)end
---@overload fun(name:System.String, value:System.String, target:UnityEditor.BuildTargetGroup):System.Void
---@overload fun(name:System.String, value:System.String, target:UnityEditor.BuildTarget):System.Void
---@param name System.String
---@param value System.String
---@return System.Void
function UnityEditor.PlayerSettings.SetPropertyString(name, value)end
---@overload fun(name:System.String, target:UnityEditor.BuildTargetGroup):System.String
---@param name System.String
---@return System.String
function UnityEditor.PlayerSettings.GetPropertyString(name)end
---@overload fun(name:System.String, value:System.String, target:UnityEditor.BuildTargetGroup):System.Boolean
---@param name System.String
---@param value System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.GetPropertyOptionalString(name, value)end
---@param aspectRatio UnityEditor.AspectRatio
---@return System.Boolean
function UnityEditor.PlayerSettings.HasAspectRatio(aspectRatio)end
---@param aspectRatio UnityEditor.AspectRatio
---@param enable System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetAspectRatio(aspectRatio, enable)end
---@return UnityEngine.Object[]
function UnityEditor.PlayerSettings.GetPreloadedAssets()end
---@param assets UnityEngine.Object[]
---@return System.Void
function UnityEditor.PlayerSettings.SetPreloadedAssets(assets)end
---@param platform UnityEditor.BuildTarget
---@return UnityEngine.Rendering.GraphicsDeviceType[]
function UnityEditor.PlayerSettings.GetGraphicsAPIs(platform)end
---@param platform UnityEditor.BuildTarget
---@param apis UnityEngine.Rendering.GraphicsDeviceType[]
---@return System.Void
function UnityEditor.PlayerSettings.SetGraphicsAPIs(platform, apis)end
---@param platform UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.PlayerSettings.GetUseDefaultGraphicsAPIs(platform)end
---@param platform UnityEditor.BuildTarget
---@param automatic System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetUseDefaultGraphicsAPIs(platform, automatic)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String
function UnityEditor.PlayerSettings.GetScriptingDefineSymbolsForGroup(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param defines System.String
---@return System.Void
function UnityEditor.PlayerSettings.SetScriptingDefineSymbolsForGroup(targetGroup, defines)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Int32
function UnityEditor.PlayerSettings.GetArchitecture(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param architecture System.Int32
---@return System.Void
function UnityEditor.PlayerSettings.SetArchitecture(targetGroup, architecture)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditor.ScriptingImplementation
function UnityEditor.PlayerSettings.GetScriptingBackend(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param identifier System.String
---@return System.Void
function UnityEditor.PlayerSettings.SetApplicationIdentifier(targetGroup, identifier)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.String
function UnityEditor.PlayerSettings.GetApplicationIdentifier(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param backend UnityEditor.ScriptingImplementation
---@return System.Void
function UnityEditor.PlayerSettings.SetScriptingBackend(targetGroup, backend)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditor.ScriptingImplementation
function UnityEditor.PlayerSettings.GetDefaultScriptingBackend(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param configuration UnityEditor.Il2CppCompilerConfiguration
---@return System.Void
function UnityEditor.PlayerSettings.SetIl2CppCompilerConfiguration(targetGroup, configuration)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditor.Il2CppCompilerConfiguration
function UnityEditor.PlayerSettings.GetIl2CppCompilerConfiguration(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditor.PlayerSettings.GetIncrementalIl2CppBuild(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetIncrementalIl2CppBuild(targetGroup, enabled)end
---@return System.String
function UnityEditor.PlayerSettings.GetAdditionalIl2CppArgs()end
---@param additionalArgs System.String
---@return System.Void
function UnityEditor.PlayerSettings.SetAdditionalIl2CppArgs(additionalArgs)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditor.PlayerSettings.GetPlatformVuforiaEnabled(targetGroup)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetPlatformVuforiaEnabled(targetGroup, enabled)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param level UnityEditor.ManagedStrippingLevel
---@return System.Void
function UnityEditor.PlayerSettings.SetManagedStrippingLevel(targetGroup, level)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return UnityEditor.ManagedStrippingLevel
function UnityEditor.PlayerSettings.GetManagedStrippingLevel(targetGroup)end
---@param buildTargetGroup UnityEditor.BuildTargetGroup
---@return UnityEditor.ApiCompatibilityLevel
function UnityEditor.PlayerSettings.GetApiCompatibilityLevel(buildTargetGroup)end
---@param buildTargetGroup UnityEditor.BuildTargetGroup
---@param value UnityEditor.ApiCompatibilityLevel
---@return System.Void
function UnityEditor.PlayerSettings.SetApiCompatibilityLevel(buildTargetGroup, value)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param enable System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetMobileMTRendering(targetGroup, enable)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@return System.Boolean
function UnityEditor.PlayerSettings.GetMobileMTRendering(targetGroup)end
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function UnityEditor.PlayerSettings.GetStackTraceLogType(logType)end
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
---@return System.Void
function UnityEditor.PlayerSettings.SetStackTraceLogType(logType, stackTraceType)end
---@return System.Boolean
function UnityEditor.PlayerSettings.GetWsaHolographicRemotingEnabled()end
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.SetWsaHolographicRemotingEnabled(enabled)end
---@param platform UnityEditor.BuildTargetGroup
---@param kind UnityEditor.PlatformIconKind
---@return UnityEditor.PlatformIcon[]
function UnityEditor.PlayerSettings.GetPlatformIcons(platform, kind)end
---@param platform UnityEditor.BuildTargetGroup
---@param kind UnityEditor.PlatformIconKind
---@param icons UnityEditor.PlatformIcon[]
---@return System.Void
function UnityEditor.PlayerSettings.SetPlatformIcons(platform, kind, icons)end
---@param platform UnityEditor.BuildTargetGroup
---@return UnityEditor.PlatformIconKind[]
function UnityEditor.PlayerSettings.GetSupportedIconKindsForPlatform(platform)end
---@overload fun(platform:UnityEditor.BuildTargetGroup, icons:UnityEngine.Texture2D[], kind:UnityEditor.IconKind):System.Void
---@param platform UnityEditor.BuildTargetGroup
---@param icons UnityEngine.Texture2D[]
---@return System.Void
function UnityEditor.PlayerSettings.SetIconsForTargetGroup(platform, icons)end
---@overload fun(platform:UnityEditor.BuildTargetGroup, kind:UnityEditor.IconKind):UnityEngine.Texture2D[]
---@param platform UnityEditor.BuildTargetGroup
---@return UnityEngine.Texture2D[]
function UnityEditor.PlayerSettings.GetIconsForTargetGroup(platform)end
---@overload fun(platform:UnityEditor.BuildTargetGroup, kind:UnityEditor.IconKind):System.Int32[]
---@param platform UnityEditor.BuildTargetGroup
---@return System.Int32[]
function UnityEditor.PlayerSettings.GetIconSizesForTargetGroup(platform)end
---@class UnityEditor.PlayerSettings.VRCardboard : System.Object
---@field public depthFormat System.Int32 @static setter getter
UnityEditor.PlayerSettings.VRCardboard = {}
---@type UnityEditor.PlayerSettings.VRCardboard
CS.UnityEditor.PlayerSettings.VRCardboard = UnityEditor.PlayerSettings.VRCardboard

---@class UnityEditor.PlayerSettings.VRDaydream : System.Object
---@field public daydreamIcon UnityEngine.Texture2D @static setter getter
---@field public daydreamIconBackground UnityEngine.Texture2D @static setter getter
---@field public depthFormat System.Int32 @static setter getter
---@field public minimumSupportedHeadTracking UnityEditor.XR.Daydream.SupportedHeadTracking @static setter getter
---@field public maximumSupportedHeadTracking UnityEditor.XR.Daydream.SupportedHeadTracking @static setter getter
---@field public enableVideoSurface System.Boolean @static setter getter
---@field public enableVideoSurfaceProtectedMemory System.Boolean @static setter getter
UnityEditor.PlayerSettings.VRDaydream = {}
---@type UnityEditor.PlayerSettings.VRDaydream
CS.UnityEditor.PlayerSettings.VRDaydream = UnityEditor.PlayerSettings.VRDaydream

---@class UnityEditor.PlayerSettings.Lumin : System.Object
---@field public IconModelFolderPath System.String @static setter getter
---@field public IconPortalFolderPath System.String @static setter getter
---@field public CertificatePath System.String @static setter getter
---@field public IsChannelApp System.Boolean @static setter getter
---@field public VersionCode System.Int32 @static setter getter
---@field public VersionName System.String @static setter getter
UnityEditor.PlayerSettings.Lumin = {}
---@type UnityEditor.PlayerSettings.Lumin
CS.UnityEditor.PlayerSettings.Lumin = UnityEditor.PlayerSettings.Lumin

---@class UnityEditor.PlayerSettings.WebGL : System.Object
---@field public memorySize System.Int32 @static setter getter
---@field public exceptionSupport UnityEditor.WebGLExceptionSupport @static setter getter
---@field public dataCaching System.Boolean @static setter getter
---@field public emscriptenArgs System.String @static setter getter
---@field public modulesDirectory System.String @static setter getter
---@field public template System.String @static setter getter
---@field public analyzeBuildSize System.Boolean @static setter getter
---@field public useEmbeddedResources System.Boolean @static setter getter
---@field public useWasm System.Boolean @static setter getter
---@field public threadsSupport System.Boolean @static setter getter
---@field public linkerTarget UnityEditor.WebGLLinkerTarget @static setter getter
---@field public compressionFormat UnityEditor.WebGLCompressionFormat @static setter getter
---@field public nameFilesAsHashes System.Boolean @static setter getter
---@field public debugSymbols System.Boolean @static setter getter
UnityEditor.PlayerSettings.WebGL = {}
---@type UnityEditor.PlayerSettings.WebGL
CS.UnityEditor.PlayerSettings.WebGL = UnityEditor.PlayerSettings.WebGL

---@class UnityEditor.PlayerSettings.VROculus : System.Object
---@field public sharedDepthBuffer System.Boolean @static setter getter
---@field public dashSupport System.Boolean @static setter getter
---@field public lowOverheadMode System.Boolean @static setter getter
---@field public protectedContext System.Boolean @static setter getter
---@field public v2Signing System.Boolean @static setter getter
UnityEditor.PlayerSettings.VROculus = {}
---@type UnityEditor.PlayerSettings.VROculus
CS.UnityEditor.PlayerSettings.VROculus = UnityEditor.PlayerSettings.VROculus

---@class UnityEditor.PlayerSettings.Android : System.Object
---@field public targetDevice UnityEditor.AndroidTargetDevice @static setter getter
---@field public disableDepthAndStencilBuffers System.Boolean @static setter getter
---@field public use24BitDepthBuffer System.Boolean @static setter getter
---@field public bundleVersionCode System.Int32 @static setter getter
---@field public minSdkVersion UnityEditor.AndroidSdkVersions @static setter getter
---@field public targetSdkVersion UnityEditor.AndroidSdkVersions @static setter getter
---@field public preferredInstallLocation UnityEditor.AndroidPreferredInstallLocation @static setter getter
---@field public forceInternetPermission System.Boolean @static setter getter
---@field public forceSDCardPermission System.Boolean @static setter getter
---@field public androidTVCompatibility System.Boolean @static setter getter
---@field public androidIsGame System.Boolean @static setter getter
---@field public ARCoreEnabled System.Boolean @static setter getter
---@field public targetArchitectures UnityEditor.AndroidArchitecture @static setter getter
---@field public buildApkPerCpuArchitecture System.Boolean @static setter getter
---@field public splashScreenScale UnityEditor.AndroidSplashScreenScale @static setter getter
---@field public keystoreName System.String @static setter getter
---@field public keystorePass System.String @static setter getter
---@field public keyaliasName System.String @static setter getter
---@field public keyaliasPass System.String @static setter getter
---@field public licenseVerification System.Boolean @static  getter
---@field public useAPKExpansionFiles System.Boolean @static setter getter
---@field public showActivityIndicatorOnLoading UnityEditor.AndroidShowActivityIndicatorOnLoading @static setter getter
---@field public blitType UnityEditor.AndroidBlitType @static setter getter
---@field public maxAspectRatio System.Single @static setter getter
---@field public startInFullscreen System.Boolean @static setter getter
---@field public renderOutsideSafeArea System.Boolean @static setter getter
UnityEditor.PlayerSettings.Android = {}
---@type UnityEditor.PlayerSettings.Android
CS.UnityEditor.PlayerSettings.Android = UnityEditor.PlayerSettings.Android

---@class UnityEditor.PlayerSettings.iOS : System.Object
---@field public exitOnSuspend System.Boolean @static setter getter
---@field public targetResolution UnityEditor.iOSTargetResolution @static setter getter
---@field public overrideIPodMusic System.Boolean @static setter getter
---@field public applicationDisplayName System.String @static setter getter
---@field public buildNumber System.String @static setter getter
---@field public disableDepthAndStencilBuffers System.Boolean @static setter getter
---@field public scriptCallOptimization UnityEditor.ScriptCallOptimizationLevel @static setter getter
---@field public sdkVersion UnityEditor.iOSSdkVersion @static setter getter
---@field public targetOSVersion UnityEditor.iOSTargetOSVersion @static setter getter
---@field public targetOSVersionString System.String @static setter getter
---@field public targetDevice UnityEditor.iOSTargetDevice @static setter getter
---@field public prerenderedIcon System.Boolean @static setter getter
---@field public requiresPersistentWiFi System.Boolean @static setter getter
---@field public requiresFullScreen System.Boolean @static setter getter
---@field public statusBarStyle UnityEditor.iOSStatusBarStyle @static setter getter
---@field public deferSystemGesturesMode UnityEngine.iOS.SystemGestureDeferMode @static setter getter
---@field public hideHomeButton System.Boolean @static setter getter
---@field public appInBackgroundBehavior UnityEditor.iOSAppInBackgroundBehavior @static setter getter
---@field public backgroundModes UnityEditor.iOSBackgroundMode @static setter getter
---@field public forceHardShadowsOnMetal System.Boolean @static setter getter
---@field public allowHTTPDownload System.Boolean @static setter getter
---@field public appleDeveloperTeamID System.String @static setter getter
---@field public iOSManualProvisioningProfileID System.String @static setter getter
---@field public tvOSManualProvisioningProfileID System.String @static setter getter
---@field public tvOSManualProvisioningProfileType UnityEditor.ProvisioningProfileType @static setter getter
---@field public iOSManualProvisioningProfileType UnityEditor.ProvisioningProfileType @static setter getter
---@field public appleEnableAutomaticSigning System.Boolean @static setter getter
---@field public cameraUsageDescription System.String @static setter getter
---@field public locationUsageDescription System.String @static setter getter
---@field public microphoneUsageDescription System.String @static setter getter
---@field public showActivityIndicatorOnLoading UnityEditor.iOSShowActivityIndicatorOnLoading @static setter getter
---@field public useOnDemandResources System.Boolean @static setter getter
UnityEditor.PlayerSettings.iOS = {}
---@type UnityEditor.PlayerSettings.iOS
CS.UnityEditor.PlayerSettings.iOS = UnityEditor.PlayerSettings.iOS

---@param image UnityEngine.Texture2D
---@param type UnityEditor.iOSLaunchScreenImageType
---@return System.Void
function UnityEditor.PlayerSettings.iOS.SetLaunchScreenImage(image, type)end
---@param type UnityEditor.iOSLaunchScreenType
---@return System.Void
function UnityEditor.PlayerSettings.iOS.SetiPhoneLaunchScreenType(type)end
---@param type UnityEditor.iOSLaunchScreenType
---@return System.Void
function UnityEditor.PlayerSettings.iOS.SetiPadLaunchScreenType(type)end
---@class UnityEditor.PlayerSettings.Facebook : System.Object
---@field public sdkVersion System.String @static setter getter
---@field public appId System.String @static setter getter
---@field public useCookies System.Boolean @static setter getter
---@field public useStatus System.Boolean @static setter getter
---@field public useFrictionlessRequests System.Boolean @static setter getter
UnityEditor.PlayerSettings.Facebook = {}
---@type UnityEditor.PlayerSettings.Facebook
CS.UnityEditor.PlayerSettings.Facebook = UnityEditor.PlayerSettings.Facebook

---@class UnityEditor.PlayerSettings.macOS : System.Object
---@field public buildNumber System.String @static setter getter
UnityEditor.PlayerSettings.macOS = {}
---@type UnityEditor.PlayerSettings.macOS
CS.UnityEditor.PlayerSettings.macOS = UnityEditor.PlayerSettings.macOS

---@class UnityEditor.PlayerSettings.PS4 : System.Object
---@field public npTrophyPackPath System.String @static setter getter
---@field public npAgeRating System.Int32 @static setter getter
---@field public npTitleSecret System.String @static setter getter
---@field public parentalLevel System.Int32 @static setter getter
---@field public applicationParameter1 System.Int32 @static setter getter
---@field public applicationParameter2 System.Int32 @static setter getter
---@field public applicationParameter3 System.Int32 @static setter getter
---@field public applicationParameter4 System.Int32 @static setter getter
---@field public passcode System.String @static setter getter
---@field public monoEnv System.String @static setter getter
---@field public playerPrefsSupport System.Boolean @static setter getter
---@field public restrictedAudioUsageRights System.Boolean @static setter getter
---@field public useResolutionFallback System.Boolean @static setter getter
---@field public contentID System.String @static setter getter
---@field public category UnityEditor.PlayerSettings.PS4.PS4AppCategory @static setter getter
---@field public appType System.Int32 @static setter getter
---@field public masterVersion System.String @static setter getter
---@field public appVersion System.String @static setter getter
---@field public remotePlayKeyAssignment UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment @static setter getter
---@field public remotePlayKeyMappingDir System.String @static setter getter
---@field public playTogetherPlayerCount System.Int32 @static setter getter
---@field public enterButtonAssignment UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment @static setter getter
---@field public paramSfxPath System.String @static setter getter
---@field public videoOutPixelFormat System.Int32 @static setter getter
---@field public videoOutInitialWidth System.Int32 @static setter getter
---@field public videoOutResolution System.Int32 @static setter getter
---@field public SdkOverride System.String @static setter getter
---@field public videoOutBaseModeInitialWidth System.Int32 @static setter getter
---@field public videoOutReprojectionRate System.Int32 @static setter getter
---@field public PronunciationXMLPath System.String @static setter getter
---@field public PronunciationSIGPath System.String @static setter getter
---@field public BackgroundImagePath System.String @static setter getter
---@field public StartupImagePath System.String @static setter getter
---@field public startupImagesFolder System.String @static setter getter
---@field public iconImagesFolder System.String @static setter getter
---@field public SaveDataImagePath System.String @static setter getter
---@field public BGMPath System.String @static setter getter
---@field public ShareFilePath System.String @static setter getter
---@field public ShareOverlayImagePath System.String @static setter getter
---@field public PrivacyGuardImagePath System.String @static setter getter
---@field public patchDayOne System.Boolean @static setter getter
---@field public PatchPkgPath System.String @static setter getter
---@field public PatchLatestPkgPath System.String @static setter getter
---@field public PatchChangeinfoPath System.String @static setter getter
---@field public NPtitleDatPath System.String @static setter getter
---@field public pnSessions System.Boolean @static setter getter
---@field public pnPresence System.Boolean @static setter getter
---@field public pnFriends System.Boolean @static setter getter
---@field public pnGameCustomData System.Boolean @static setter getter
---@field public downloadDataSize System.Int32 @static setter getter
---@field public garlicHeapSize System.Int32 @static setter getter
---@field public proGarlicHeapSize System.Int32 @static setter getter
---@field public reprojectionSupport System.Boolean @static setter getter
---@field public useAudio3dBackend System.Boolean @static setter getter
---@field public audio3dVirtualSpeakerCount System.Int32 @static setter getter
---@field public scriptOptimizationLevel System.Int32 @static setter getter
---@field public socialScreenEnabled System.Int32 @static setter getter
---@field public attribUserManagement System.Boolean @static setter getter
---@field public attribMoveSupport System.Boolean @static setter getter
---@field public attrib3DSupport System.Boolean @static setter getter
---@field public attribShareSupport System.Boolean @static setter getter
---@field public attribExclusiveVR System.Boolean @static setter getter
---@field public disableAutoHideSplash System.Boolean @static setter getter
---@field public attribCpuUsage System.Int32 @static setter getter
---@field public videoRecordingFeaturesUsed System.Boolean @static setter getter
---@field public contentSearchFeaturesUsed System.Boolean @static setter getter
---@field public attribEyeToEyeDistanceSettingVR UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings @static setter getter
---@field public includedModules System.String[] @static setter getter
---@field public enableApplicationExit System.Boolean @static setter getter
---@field public resetTempFolder System.Boolean @static setter getter
UnityEditor.PlayerSettings.PS4 = {}
---@type UnityEditor.PlayerSettings.PS4
CS.UnityEditor.PlayerSettings.PS4 = UnityEditor.PlayerSettings.PS4

---@class UnityEditor.PlayerSettings.PS4.PS4AppCategory : System.Enum
UnityEditor.PlayerSettings.PS4.PS4AppCategory = {}
---@type UnityEditor.PlayerSettings.PS4.PS4AppCategory
CS.UnityEditor.PlayerSettings.PS4.PS4AppCategory = UnityEditor.PlayerSettings.PS4.PS4AppCategory

---@return System.Int32 value:0
UnityEditor.PlayerSettings.PS4.PS4AppCategory.Application = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.PS4.PS4AppCategory.Patch = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.PS4.PS4AppCategory.Remaster = 2

---@class UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment : System.Enum
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment = {}
---@type UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment
CS.UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment = UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment

---@return System.Int32 value:0
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternA = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternB = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternC = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternD = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternE = 4
---@return System.Int32 value:5
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternF = 5
---@return System.Int32 value:6
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternG = 6
---@return System.Int32 value:7
UnityEditor.PlayerSettings.PS4.PS4RemotePlayKeyAssignment.PatternH = 7

---@class UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment : System.Enum
UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment = {}
---@type UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment
CS.UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment = UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment

---@return System.Int32 value:0
UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment.CircleButton = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment.CrossButton = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.PS4.PS4EnterButtonAssignment.SystemDefined = 2

---@class UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings : System.Enum
UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings = {}
---@type UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings
CS.UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings = UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings

---@return System.Int32 value:0
UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings.PerUser = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings.ForceDefault = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.PS4.PlayStationVREyeToEyeDistanceSettings.DynamicModeAtRuntime = 2

---@class UnityEditor.PlayerSettings.SplashScreenLogo : System.ValueType
---@field public logo UnityEngine.Sprite @ setter getter
---@field public unityLogo UnityEngine.Sprite @static  getter
---@field public duration System.Single @ setter getter
UnityEditor.PlayerSettings.SplashScreenLogo = {}
---@type UnityEditor.PlayerSettings.SplashScreenLogo
CS.UnityEditor.PlayerSettings.SplashScreenLogo = UnityEditor.PlayerSettings.SplashScreenLogo

---@overload fun(duration:System.Single):UnityEditor.PlayerSettings.SplashScreenLogo
---@overload fun(duration:System.Single, logo:UnityEngine.Sprite):UnityEditor.PlayerSettings.SplashScreenLogo
---@return UnityEditor.PlayerSettings.SplashScreenLogo
function UnityEditor.PlayerSettings.SplashScreenLogo.Create()end
---@overload fun(duration:System.Single):UnityEditor.PlayerSettings.SplashScreenLogo
---@return UnityEditor.PlayerSettings.SplashScreenLogo
function UnityEditor.PlayerSettings.SplashScreenLogo.CreateWithUnityLogo()end
---@class UnityEditor.PlayerSettings.SplashScreen : System.Object
---@field public animationMode UnityEditor.PlayerSettings.SplashScreen.AnimationMode @static setter getter
---@field public animationBackgroundZoom System.Single @static setter getter
---@field public animationLogoZoom System.Single @static setter getter
---@field public background UnityEngine.Sprite @static setter getter
---@field public backgroundPortrait UnityEngine.Sprite @static setter getter
---@field public backgroundColor UnityEngine.Color @static setter getter
---@field public drawMode UnityEditor.PlayerSettings.SplashScreen.DrawMode @static setter getter
---@field public logos UnityEditor.PlayerSettings.SplashScreenLogo[] @static setter getter
---@field public overlayOpacity System.Single @static setter getter
---@field public show System.Boolean @static setter getter
---@field public showUnityLogo System.Boolean @static setter getter
---@field public unityLogoStyle UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle @static setter getter
UnityEditor.PlayerSettings.SplashScreen = {}
---@type UnityEditor.PlayerSettings.SplashScreen
CS.UnityEditor.PlayerSettings.SplashScreen = UnityEditor.PlayerSettings.SplashScreen

---@class UnityEditor.PlayerSettings.SplashScreen.AnimationMode : System.Enum
UnityEditor.PlayerSettings.SplashScreen.AnimationMode = {}
---@type UnityEditor.PlayerSettings.SplashScreen.AnimationMode
CS.UnityEditor.PlayerSettings.SplashScreen.AnimationMode = UnityEditor.PlayerSettings.SplashScreen.AnimationMode

---@return System.Int32 value:0
UnityEditor.PlayerSettings.SplashScreen.AnimationMode.Static = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.SplashScreen.AnimationMode.Dolly = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.SplashScreen.AnimationMode.Custom = 2

---@class UnityEditor.PlayerSettings.SplashScreen.DrawMode : System.Enum
UnityEditor.PlayerSettings.SplashScreen.DrawMode = {}
---@type UnityEditor.PlayerSettings.SplashScreen.DrawMode
CS.UnityEditor.PlayerSettings.SplashScreen.DrawMode = UnityEditor.PlayerSettings.SplashScreen.DrawMode

---@return System.Int32 value:0
UnityEditor.PlayerSettings.SplashScreen.DrawMode.UnityLogoBelow = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.SplashScreen.DrawMode.AllSequential = 1

---@class UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle : System.Enum
UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle = {}
---@type UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle
CS.UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle = UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle

---@return System.Int32 value:0
UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle.DarkOnLight = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.SplashScreen.UnityLogoStyle.LightOnDark = 1

---@class UnityEditor.PlayerSettings.Switch : System.Object
---@field public socketMemoryPoolSize System.Int32 @static setter getter
---@field public socketAllocatorPoolSize System.Int32 @static setter getter
---@field public socketConcurrencyLimit System.Int32 @static setter getter
---@field public useSwitchCPUProfiler System.Boolean @static setter getter
---@field public systemResourceMemory System.Int32 @static setter getter
---@field public queueCommandMemory System.Int32 @static setter getter
---@field public defaultSwitchQueueCommandMemory System.Int32 @static  getter
---@field public minimumSwitchQueueCommandMemory System.Int32 @static  getter
---@field public queueControlMemory System.Int32 @static setter getter
---@field public defaultSwitchQueueControlMemory System.Int32 @static  getter
---@field public minimumSwitchQueueControlMemory System.Int32 @static  getter
---@field public queueComputeMemory System.Int32 @static setter getter
---@field public defaultSwitchQueueComputeMemory System.Int32 @static  getter
---@field public NVNShaderPoolsGranularity System.Int32 @static setter getter
---@field public NVNDefaultPoolsGranularity System.Int32 @static setter getter
---@field public NVNOtherPoolsGranularity System.Int32 @static setter getter
---@field public screenResolutionBehavior UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior @static setter getter
---@field public applicationID System.String @static setter getter
---@field public nsoDependencies System.String @static setter getter
---@field public titleNames System.String[] @static setter getter
---@field public publisherNames System.String[] @static setter getter
---@field public icons UnityEngine.Texture2D[] @static setter getter
---@field public smallIcons UnityEngine.Texture2D[] @static setter getter
---@field public manualHTMLPath System.String @static setter getter
---@field public accessibleURLPath System.String @static setter getter
---@field public legalInformationPath System.String @static setter getter
---@field public mainThreadStackSize System.Int32 @static setter getter
---@field public presenceGroupId System.String @static setter getter
---@field public logoHandling UnityEditor.PlayerSettings.Switch.LogoHandling @static setter getter
---@field public releaseVersion System.String @static setter getter
---@field public displayVersion System.String @static setter getter
---@field public startupUserAccount UnityEditor.PlayerSettings.Switch.StartupUserAccount @static setter getter
---@field public touchScreenUsage UnityEditor.PlayerSettings.Switch.TouchScreenUsage @static setter getter
---@field public supportedLanguages System.Int32 @static setter getter
---@field public logoType UnityEditor.PlayerSettings.Switch.LogoType @static setter getter
---@field public applicationErrorCodeCategory System.String @static setter getter
---@field public userAccountSaveDataSize System.Int32 @static setter getter
---@field public userAccountSaveDataJournalSize System.Int32 @static setter getter
---@field public applicationAttribute UnityEditor.PlayerSettings.Switch.ApplicationAttribute @static setter getter
---@field public cardSpecSize System.Int32 @static setter getter
---@field public cardSpecClock System.Int32 @static setter getter
---@field public ratingsMask System.Int32 @static setter getter
---@field public localCommunicationIds System.String[] @static setter getter
---@field public isUnderParentalControl System.Boolean @static setter getter
---@field public isScreenshotEnabled System.Boolean @static setter getter
---@field public isAllowsScreenshot System.Boolean @static setter getter
---@field public isVideoCapturingEnabled System.Boolean @static setter getter
---@field public isRuntimeAddOnContentInstallEnabled System.Boolean @static setter getter
---@field public isDataLossConfirmationEnabled System.Boolean @static setter getter
---@field public isUserAccountLockEnabled System.Boolean @static setter getter
---@field public isDataLossConfirmation System.Boolean @static setter getter
---@field public supportedNpadStyles UnityEditor.PlayerSettings.Switch.SupportedNpadStyle @static setter getter
---@field public ratingAgeArray System.Int32[] @static setter getter
---@field public nativeFsCacheSize System.Int32 @static setter getter
---@field public isHoldTypeHorizontal System.Boolean @static setter getter
---@field public supportedNpadCount System.Int32 @static setter getter
---@field public socketConfigEnabled System.Boolean @static setter getter
---@field public tcpInitialSendBufferSize System.Int32 @static setter getter
---@field public tcpInitialReceiveBufferSize System.Int32 @static setter getter
---@field public tcpAutoSendBufferSizeMax System.Int32 @static setter getter
---@field public tcpAutoReceiveBufferSizeMax System.Int32 @static setter getter
---@field public udpSendBufferSize System.Int32 @static setter getter
---@field public udpReceiveBufferSize System.Int32 @static setter getter
---@field public socketBufferEfficiency System.Int32 @static setter getter
---@field public socketInitializeEnabled System.Boolean @static setter getter
---@field public networkInterfaceManagerInitializeEnabled System.Boolean @static setter getter
---@field public playerConnectionEnabled System.Boolean @static setter getter
UnityEditor.PlayerSettings.Switch = {}
---@type UnityEditor.PlayerSettings.Switch
CS.UnityEditor.PlayerSettings.Switch = UnityEditor.PlayerSettings.Switch

---@param category UnityEditor.PlayerSettings.Switch.RatingCategories
---@return System.Int32
function UnityEditor.PlayerSettings.Switch.GetRatingAge(category)end
---@class UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior : System.Enum
UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior = {}
---@type UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior
CS.UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior = UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior.Manual = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior.OperationMode = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior.PerformanceMode = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.Switch.ScreenResolutionBehavior.Both = 3

---@class UnityEditor.PlayerSettings.Switch.Languages : System.Enum
UnityEditor.PlayerSettings.Switch.Languages = {}
---@type UnityEditor.PlayerSettings.Switch.Languages
CS.UnityEditor.PlayerSettings.Switch.Languages = UnityEditor.PlayerSettings.Switch.Languages

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.Languages.AmericanEnglish = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.Languages.BritishEnglish = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.Languages.Japanese = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.Switch.Languages.French = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.Switch.Languages.German = 4
---@return System.Int32 value:5
UnityEditor.PlayerSettings.Switch.Languages.LatinAmericanSpanish = 5
---@return System.Int32 value:6
UnityEditor.PlayerSettings.Switch.Languages.Spanish = 6
---@return System.Int32 value:7
UnityEditor.PlayerSettings.Switch.Languages.Italian = 7
---@return System.Int32 value:8
UnityEditor.PlayerSettings.Switch.Languages.Dutch = 8
---@return System.Int32 value:9
UnityEditor.PlayerSettings.Switch.Languages.CanadianFrench = 9
---@return System.Int32 value:10
UnityEditor.PlayerSettings.Switch.Languages.Portuguese = 10
---@return System.Int32 value:11
UnityEditor.PlayerSettings.Switch.Languages.Russian = 11
---@return System.Int32 value:12
UnityEditor.PlayerSettings.Switch.Languages.SimplifiedChinese = 12
---@return System.Int32 value:13
UnityEditor.PlayerSettings.Switch.Languages.TraditionalChinese = 13
---@return System.Int32 value:14
UnityEditor.PlayerSettings.Switch.Languages.Korean = 14

---@class UnityEditor.PlayerSettings.Switch.StartupUserAccount : System.Enum
UnityEditor.PlayerSettings.Switch.StartupUserAccount = {}
---@type UnityEditor.PlayerSettings.Switch.StartupUserAccount
CS.UnityEditor.PlayerSettings.Switch.StartupUserAccount = UnityEditor.PlayerSettings.Switch.StartupUserAccount

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.StartupUserAccount.None = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.StartupUserAccount.Required = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.StartupUserAccount.RequiredWithNetworkServiceAccountAvailable = 2

---@class UnityEditor.PlayerSettings.Switch.TouchScreenUsage : System.Enum
UnityEditor.PlayerSettings.Switch.TouchScreenUsage = {}
---@type UnityEditor.PlayerSettings.Switch.TouchScreenUsage
CS.UnityEditor.PlayerSettings.Switch.TouchScreenUsage = UnityEditor.PlayerSettings.Switch.TouchScreenUsage

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.TouchScreenUsage.Supported = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.TouchScreenUsage.Required = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.TouchScreenUsage.None = 2

---@class UnityEditor.PlayerSettings.Switch.LogoHandling : System.Enum
UnityEditor.PlayerSettings.Switch.LogoHandling = {}
---@type UnityEditor.PlayerSettings.Switch.LogoHandling
CS.UnityEditor.PlayerSettings.Switch.LogoHandling = UnityEditor.PlayerSettings.Switch.LogoHandling

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.LogoHandling.Auto = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.LogoHandling.Manual = 1

---@class UnityEditor.PlayerSettings.Switch.LogoType : System.Enum
UnityEditor.PlayerSettings.Switch.LogoType = {}
---@type UnityEditor.PlayerSettings.Switch.LogoType
CS.UnityEditor.PlayerSettings.Switch.LogoType = UnityEditor.PlayerSettings.Switch.LogoType

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.LogoType.LicensedByNintendo = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.LogoType.DistributedByNintendo = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.LogoType.Nintendo = 2

---@class UnityEditor.PlayerSettings.Switch.ApplicationAttribute : System.Enum
UnityEditor.PlayerSettings.Switch.ApplicationAttribute = {}
---@type UnityEditor.PlayerSettings.Switch.ApplicationAttribute
CS.UnityEditor.PlayerSettings.Switch.ApplicationAttribute = UnityEditor.PlayerSettings.Switch.ApplicationAttribute

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.ApplicationAttribute.None = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.ApplicationAttribute.Demo = 1

---@class UnityEditor.PlayerSettings.Switch.RatingCategories : System.Enum
UnityEditor.PlayerSettings.Switch.RatingCategories = {}
---@type UnityEditor.PlayerSettings.Switch.RatingCategories
CS.UnityEditor.PlayerSettings.Switch.RatingCategories = UnityEditor.PlayerSettings.Switch.RatingCategories

---@return System.Int32 value:0
UnityEditor.PlayerSettings.Switch.RatingCategories.CERO = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.Switch.RatingCategories.GRACGCRB = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.RatingCategories.GSRMR = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.Switch.RatingCategories.ESRB = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.Switch.RatingCategories.ClassInd = 4
---@return System.Int32 value:5
UnityEditor.PlayerSettings.Switch.RatingCategories.USK = 5
---@return System.Int32 value:6
UnityEditor.PlayerSettings.Switch.RatingCategories.PEGI = 6
---@return System.Int32 value:7
UnityEditor.PlayerSettings.Switch.RatingCategories.PEGIPortugal = 7
---@return System.Int32 value:8
UnityEditor.PlayerSettings.Switch.RatingCategories.PEGIBBFC = 8
---@return System.Int32 value:9
UnityEditor.PlayerSettings.Switch.RatingCategories.Russian = 9
---@return System.Int32 value:10
UnityEditor.PlayerSettings.Switch.RatingCategories.ACB = 10
---@return System.Int32 value:11
UnityEditor.PlayerSettings.Switch.RatingCategories.OFLC = 11

---@class UnityEditor.PlayerSettings.Switch.SupportedNpadStyle : System.Enum
UnityEditor.PlayerSettings.Switch.SupportedNpadStyle = {}
---@type UnityEditor.PlayerSettings.Switch.SupportedNpadStyle
CS.UnityEditor.PlayerSettings.Switch.SupportedNpadStyle = UnityEditor.PlayerSettings.Switch.SupportedNpadStyle

---@return System.Int32 value:2
UnityEditor.PlayerSettings.Switch.SupportedNpadStyle.FullKey = 2
---@return System.Int32 value:4
UnityEditor.PlayerSettings.Switch.SupportedNpadStyle.Handheld = 4

---@class UnityEditor.PlayerSettings.tvOS : System.Object
---@field public sdkVersion UnityEditor.tvOSSdkVersion @static setter getter
---@field public buildNumber System.String @static setter getter
---@field public targetOSVersion UnityEditor.tvOSTargetOSVersion @static setter getter
---@field public targetOSVersionString System.String @static setter getter
---@field public requireExtendedGameController System.Boolean @static setter getter
UnityEditor.PlayerSettings.tvOS = {}
---@type UnityEditor.PlayerSettings.tvOS
CS.UnityEditor.PlayerSettings.tvOS = UnityEditor.PlayerSettings.tvOS

---@class UnityEditor.PlayerSettings.WSAApplicationShowName : System.Enum
UnityEditor.PlayerSettings.WSAApplicationShowName = {}
---@type UnityEditor.PlayerSettings.WSAApplicationShowName
CS.UnityEditor.PlayerSettings.WSAApplicationShowName = UnityEditor.PlayerSettings.WSAApplicationShowName

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSAApplicationShowName.NotSet = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSAApplicationShowName.AllLogos = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSAApplicationShowName.NoLogos = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.WSAApplicationShowName.StandardLogoOnly = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.WSAApplicationShowName.WideLogoOnly = 4

---@class UnityEditor.PlayerSettings.WSADefaultTileSize : System.Enum
UnityEditor.PlayerSettings.WSADefaultTileSize = {}
---@type UnityEditor.PlayerSettings.WSADefaultTileSize
CS.UnityEditor.PlayerSettings.WSADefaultTileSize = UnityEditor.PlayerSettings.WSADefaultTileSize

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSADefaultTileSize.NotSet = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSADefaultTileSize.Medium = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSADefaultTileSize.Wide = 2

---@class UnityEditor.PlayerSettings.WSAApplicationForegroundText : System.Enum
UnityEditor.PlayerSettings.WSAApplicationForegroundText = {}
---@type UnityEditor.PlayerSettings.WSAApplicationForegroundText
CS.UnityEditor.PlayerSettings.WSAApplicationForegroundText = UnityEditor.PlayerSettings.WSAApplicationForegroundText

---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSAApplicationForegroundText.Light = 1

---@class UnityEditor.PlayerSettings.WSACompilationOverrides : System.Enum
UnityEditor.PlayerSettings.WSACompilationOverrides = {}
---@type UnityEditor.PlayerSettings.WSACompilationOverrides
CS.UnityEditor.PlayerSettings.WSACompilationOverrides = UnityEditor.PlayerSettings.WSACompilationOverrides

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSACompilationOverrides.None = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSACompilationOverrides.UseNetCore = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSACompilationOverrides.UseNetCorePartially = 2

---@class UnityEditor.PlayerSettings.WSACapability : System.Enum
UnityEditor.PlayerSettings.WSACapability = {}
---@type UnityEditor.PlayerSettings.WSACapability
CS.UnityEditor.PlayerSettings.WSACapability = UnityEditor.PlayerSettings.WSACapability

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSACapability.EnterpriseAuthentication = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSACapability.InternetClient = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSACapability.InternetClientServer = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.WSACapability.MusicLibrary = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.WSACapability.PicturesLibrary = 4
---@return System.Int32 value:5
UnityEditor.PlayerSettings.WSACapability.PrivateNetworkClientServer = 5
---@return System.Int32 value:6
UnityEditor.PlayerSettings.WSACapability.RemovableStorage = 6
---@return System.Int32 value:7
UnityEditor.PlayerSettings.WSACapability.SharedUserCertificates = 7
---@return System.Int32 value:8
UnityEditor.PlayerSettings.WSACapability.VideosLibrary = 8
---@return System.Int32 value:9
UnityEditor.PlayerSettings.WSACapability.WebCam = 9
---@return System.Int32 value:10
UnityEditor.PlayerSettings.WSACapability.Proximity = 10
---@return System.Int32 value:11
UnityEditor.PlayerSettings.WSACapability.Microphone = 11
---@return System.Int32 value:12
UnityEditor.PlayerSettings.WSACapability.Location = 12
---@return System.Int32 value:13
UnityEditor.PlayerSettings.WSACapability.HumanInterfaceDevice = 13
---@return System.Int32 value:14
UnityEditor.PlayerSettings.WSACapability.AllJoyn = 14
---@return System.Int32 value:15
UnityEditor.PlayerSettings.WSACapability.BlockedChatMessages = 15
---@return System.Int32 value:16
UnityEditor.PlayerSettings.WSACapability.Chat = 16
---@return System.Int32 value:17
UnityEditor.PlayerSettings.WSACapability.CodeGeneration = 17
---@return System.Int32 value:18
UnityEditor.PlayerSettings.WSACapability.Objects3D = 18
---@return System.Int32 value:19
UnityEditor.PlayerSettings.WSACapability.PhoneCall = 19
---@return System.Int32 value:20
UnityEditor.PlayerSettings.WSACapability.UserAccountInformation = 20
---@return System.Int32 value:21
UnityEditor.PlayerSettings.WSACapability.VoipCall = 21
---@return System.Int32 value:22
UnityEditor.PlayerSettings.WSACapability.Bluetooth = 22
---@return System.Int32 value:23
UnityEditor.PlayerSettings.WSACapability.SpatialPerception = 23
---@return System.Int32 value:24
UnityEditor.PlayerSettings.WSACapability.InputInjectionBrokered = 24
---@return System.Int32 value:25
UnityEditor.PlayerSettings.WSACapability.Appointments = 25
---@return System.Int32 value:26
UnityEditor.PlayerSettings.WSACapability.BackgroundMediaPlayback = 26
---@return System.Int32 value:27
UnityEditor.PlayerSettings.WSACapability.Contacts = 27
---@return System.Int32 value:28
UnityEditor.PlayerSettings.WSACapability.LowLevelDevices = 28
---@return System.Int32 value:29
UnityEditor.PlayerSettings.WSACapability.OfflineMapsManagement = 29
---@return System.Int32 value:30
UnityEditor.PlayerSettings.WSACapability.PhoneCallHistoryPublic = 30
---@return System.Int32 value:31
UnityEditor.PlayerSettings.WSACapability.PointOfService = 31
---@return System.Int32 value:32
UnityEditor.PlayerSettings.WSACapability.RecordedCallsFolder = 32
---@return System.Int32 value:33
UnityEditor.PlayerSettings.WSACapability.RemoteSystem = 33
---@return System.Int32 value:34
UnityEditor.PlayerSettings.WSACapability.SystemManagement = 34
---@return System.Int32 value:35
UnityEditor.PlayerSettings.WSACapability.UserDataTasks = 35
---@return System.Int32 value:36
UnityEditor.PlayerSettings.WSACapability.UserNotificationListener = 36

---@class UnityEditor.PlayerSettings.WSATargetFamily : System.Enum
UnityEditor.PlayerSettings.WSATargetFamily = {}
---@type UnityEditor.PlayerSettings.WSATargetFamily
CS.UnityEditor.PlayerSettings.WSATargetFamily = UnityEditor.PlayerSettings.WSATargetFamily

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSATargetFamily.Desktop = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSATargetFamily.Mobile = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSATargetFamily.Xbox = 2
---@return System.Int32 value:3
UnityEditor.PlayerSettings.WSATargetFamily.Holographic = 3
---@return System.Int32 value:4
UnityEditor.PlayerSettings.WSATargetFamily.Team = 4
---@return System.Int32 value:5
UnityEditor.PlayerSettings.WSATargetFamily.IoT = 5
---@return System.Int32 value:6
UnityEditor.PlayerSettings.WSATargetFamily.IoTHeadless = 6

---@class UnityEditor.PlayerSettings.WSAImageScale : System.Enum
UnityEditor.PlayerSettings.WSAImageScale = {}
---@type UnityEditor.PlayerSettings.WSAImageScale
CS.UnityEditor.PlayerSettings.WSAImageScale = UnityEditor.PlayerSettings.WSAImageScale


---@class UnityEditor.PlayerSettings.WSAImageType : System.Enum
UnityEditor.PlayerSettings.WSAImageType = {}
---@type UnityEditor.PlayerSettings.WSAImageType
CS.UnityEditor.PlayerSettings.WSAImageType = UnityEditor.PlayerSettings.WSAImageType

---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSAImageType.PackageLogo = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSAImageType.SplashScreenImage = 2

---@class UnityEditor.PlayerSettings.WSAInputSource : System.Enum
UnityEditor.PlayerSettings.WSAInputSource = {}
---@type UnityEditor.PlayerSettings.WSAInputSource
CS.UnityEditor.PlayerSettings.WSAInputSource = UnityEditor.PlayerSettings.WSAInputSource

---@return System.Int32 value:0
UnityEditor.PlayerSettings.WSAInputSource.CoreWindow = 0
---@return System.Int32 value:1
UnityEditor.PlayerSettings.WSAInputSource.IndependentInputSource = 1
---@return System.Int32 value:2
UnityEditor.PlayerSettings.WSAInputSource.SwapChainPanel = 2

---@class UnityEditor.PlayerSettings.WSASupportedFileType : System.ValueType
---@field public contentType System.String
---@field public fileType System.String
UnityEditor.PlayerSettings.WSASupportedFileType = {}
---@type UnityEditor.PlayerSettings.WSASupportedFileType
CS.UnityEditor.PlayerSettings.WSASupportedFileType = UnityEditor.PlayerSettings.WSASupportedFileType

---@class UnityEditor.PlayerSettings.WSAFileTypeAssociations : System.ValueType
---@field public name System.String
---@field public supportedFileTypes UnityEditor.PlayerSettings.WSASupportedFileType[]
UnityEditor.PlayerSettings.WSAFileTypeAssociations = {}
---@type UnityEditor.PlayerSettings.WSAFileTypeAssociations
CS.UnityEditor.PlayerSettings.WSAFileTypeAssociations = UnityEditor.PlayerSettings.WSAFileTypeAssociations

---@class UnityEditor.PlayerSettings.WSA : System.Object
---@field public transparentSwapchain System.Boolean @static setter getter
---@field public packageName System.String @static setter getter
---@field public packageLogo System.String @static setter getter
---@field public commandLineArgsFile System.String @static setter getter
---@field public certificatePath System.String @static  getter
---@field public certificateSubject System.String @static  getter
---@field public certificateIssuer System.String @static  getter
---@field public applicationDescription System.String @static setter getter
---@field public tileShortName System.String @static setter getter
---@field public tileShowName UnityEditor.PlayerSettings.WSAApplicationShowName @static setter getter
---@field public mediumTileShowName System.Boolean @static setter getter
---@field public largeTileShowName System.Boolean @static setter getter
---@field public wideTileShowName System.Boolean @static setter getter
---@field public defaultTileSize UnityEditor.PlayerSettings.WSADefaultTileSize @static setter getter
---@field public compilationOverrides UnityEditor.PlayerSettings.WSACompilationOverrides @static setter getter
---@field public tileForegroundText UnityEditor.PlayerSettings.WSAApplicationForegroundText @static setter getter
---@field public tileBackgroundColor UnityEngine.Color @static setter getter
---@field public enableIndependentInputSource System.Boolean @static setter getter
---@field public inputSource UnityEditor.PlayerSettings.WSAInputSource @static setter getter
---@field public supportStreamingInstall System.Boolean @static setter getter
---@field public lastRequiredScene System.Int32 @static setter getter
---@field public packageVersion System.Version @static setter getter
---@field public certificateNotAfter System.Nullable @static  getter
---@field public splashScreenBackgroundColor System.Nullable @static setter getter
---@field public storeTileLogo80 System.String @static setter getter
---@field public storeTileLogo System.String @static setter getter
---@field public storeTileLogo140 System.String @static setter getter
---@field public storeTileLogo180 System.String @static setter getter
---@field public storeTileWideLogo80 System.String @static setter getter
---@field public storeTileWideLogo System.String @static setter getter
---@field public storeTileWideLogo140 System.String @static setter getter
---@field public storeTileWideLogo180 System.String @static setter getter
---@field public storeTileSmallLogo80 System.String @static setter getter
---@field public storeTileSmallLogo System.String @static setter getter
---@field public storeTileSmallLogo140 System.String @static setter getter
---@field public storeTileSmallLogo180 System.String @static setter getter
---@field public storeSmallTile80 System.String @static setter getter
---@field public storeSmallTile System.String @static setter getter
---@field public storeSmallTile140 System.String @static setter getter
---@field public storeSmallTile180 System.String @static setter getter
---@field public storeLargeTile80 System.String @static setter getter
---@field public storeLargeTile System.String @static setter getter
---@field public storeLargeTile140 System.String @static setter getter
---@field public storeLargeTile180 System.String @static setter getter
---@field public storeSplashScreenImage System.String @static setter getter
---@field public storeSplashScreenImageScale140 System.String @static setter getter
---@field public storeSplashScreenImageScale180 System.String @static setter getter
---@field public phoneAppIcon System.String @static setter getter
---@field public phoneAppIcon140 System.String @static setter getter
---@field public phoneAppIcon240 System.String @static setter getter
---@field public phoneSmallTile System.String @static setter getter
---@field public phoneSmallTile140 System.String @static setter getter
---@field public phoneSmallTile240 System.String @static setter getter
---@field public phoneMediumTile System.String @static setter getter
---@field public phoneMediumTile140 System.String @static setter getter
---@field public phoneMediumTile240 System.String @static setter getter
---@field public phoneWideTile System.String @static setter getter
---@field public phoneWideTile140 System.String @static setter getter
---@field public phoneWideTile240 System.String @static setter getter
---@field public phoneSplashScreenImage System.String @static setter getter
---@field public phoneSplashScreenImageScale140 System.String @static setter getter
---@field public phoneSplashScreenImageScale240 System.String @static setter getter
---@field public packageLogo140 System.String @static setter getter
---@field public packageLogo180 System.String @static setter getter
---@field public packageLogo240 System.String @static setter getter
---@field public enableLowLatencyPresentationAPI System.Boolean @static setter getter
UnityEditor.PlayerSettings.WSA = {}
---@type UnityEditor.PlayerSettings.WSA
CS.UnityEditor.PlayerSettings.WSA = UnityEditor.PlayerSettings.WSA

---@param path System.String
---@param password System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.WSA.SetCertificate(path, password)end
---@param type UnityEditor.PlayerSettings.WSAImageType
---@param scale UnityEditor.PlayerSettings.WSAImageScale
---@return System.String
function UnityEditor.PlayerSettings.WSA.GetVisualAssetsImage(type, scale)end
---@param image System.String
---@param type UnityEditor.PlayerSettings.WSAImageType
---@param scale UnityEditor.PlayerSettings.WSAImageScale
---@return System.Void
function UnityEditor.PlayerSettings.WSA.SetVisualAssetsImage(image, type, scale)end
---@param capability UnityEditor.PlayerSettings.WSACapability
---@param value System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.WSA.SetCapability(capability, value)end
---@param capability UnityEditor.PlayerSettings.WSACapability
---@return System.Boolean
function UnityEditor.PlayerSettings.WSA.GetCapability(capability)end
---@param family UnityEditor.PlayerSettings.WSATargetFamily
---@param value System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.WSA.SetTargetDeviceFamily(family, value)end
---@param family UnityEditor.PlayerSettings.WSATargetFamily
---@return System.Boolean
function UnityEditor.PlayerSettings.WSA.GetTargetDeviceFamily(family)end
---@class UnityEditor.PlayerSettings.WSA.Declarations : System.Object
---@field public protocolName System.String @static setter getter
---@field public fileTypeAssociations UnityEditor.PlayerSettings.WSAFileTypeAssociations @static setter getter
UnityEditor.PlayerSettings.WSA.Declarations = {}
---@type UnityEditor.PlayerSettings.WSA.Declarations
CS.UnityEditor.PlayerSettings.WSA.Declarations = UnityEditor.PlayerSettings.WSA.Declarations

---@class UnityEditor.PlayerSettings.XboxOne : System.Object
---@field public XTitleMemory System.Int32 @static setter getter
---@field public defaultLoggingLevel UnityEditor.XboxOneLoggingLevel @static setter getter
---@field public ProductId System.String @static setter getter
---@field public UpdateKey System.String @static setter getter
---@field public SandboxId System.String @static setter getter
---@field public ContentId System.String @static setter getter
---@field public TitleId System.String @static setter getter
---@field public SCID System.String @static setter getter
---@field public EnableVariableGPU System.Boolean @static setter getter
---@field public PresentImmediateThreshold System.UInt32 @static setter getter
---@field public Enable7thCore System.Boolean @static setter getter
---@field public DisableKinectGpuReservation System.Boolean @static setter getter
---@field public EnablePIXSampling System.Boolean @static setter getter
---@field public GameOsOverridePath System.String @static setter getter
---@field public PackagingOverridePath System.String @static setter getter
---@field public PackagingEncryption UnityEditor.XboxOneEncryptionLevel @static setter getter
---@field public PackageUpdateGranularity UnityEditor.XboxOnePackageUpdateGranularity @static setter getter
---@field public OverrideIdentityName System.String @static setter getter
---@field public AppManifestOverridePath System.String @static setter getter
---@field public IsContentPackage System.Boolean @static setter getter
---@field public Version System.String @static setter getter
---@field public Description System.String @static setter getter
---@field public SocketNames System.String[] @static  getter
---@field public AllowedProductIds System.String[] @static  getter
---@field public PersistentLocalStorageSize System.UInt32 @static setter getter
---@field public monoLoggingLevel System.Int32 @static setter getter
---@field public scriptCompiler UnityEditor.ScriptCompiler @static setter getter
UnityEditor.PlayerSettings.XboxOne = {}
---@type UnityEditor.PlayerSettings.XboxOne
CS.UnityEditor.PlayerSettings.XboxOne = UnityEditor.PlayerSettings.XboxOne

---@param capability System.String
---@param value System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.SetCapability(capability, value)end
---@param capability System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.XboxOne.GetCapability(capability)end
---@param language System.String
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.SetSupportedLanguage(language, enabled)end
---@param language System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.XboxOne.GetSupportedLanguage(language)end
---@param name System.String
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.RemoveSocketDefinition(name)end
---@param name System.String
---@param port System.String
---@param protocol System.Int32
---@param usages System.Int32[]
---@param templateName System.String
---@param sessionRequirment System.Int32
---@param deviceUsages System.Int32[]
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.SetSocketDefinition(name, port, protocol, usages, templateName, sessionRequirment, deviceUsages)end
---@param name System.String
---@param port System.String
---@param protocol System.Int32
---@param usages System.Int32[]
---@param templateName System.String
---@param sessionRequirment System.Int32
---@param deviceUsages System.Int32[]
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.GetSocketDefinition(name, port, protocol, usages, templateName, sessionRequirment, deviceUsages)end
---@param id System.String
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.RemoveAllowedProductId(id)end
---@param id System.String
---@return System.Boolean
function UnityEditor.PlayerSettings.XboxOne.AddAllowedProductId(id)end
---@param idx System.Int32
---@param id System.String
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.UpdateAllowedProductId(idx, id)end
---@param name System.String
---@param value System.Int32
---@return System.Void
function UnityEditor.PlayerSettings.XboxOne.SetGameRating(name, value)end
---@param name System.String
---@return System.Int32
function UnityEditor.PlayerSettings.XboxOne.GetGameRating(name)end
---@class UnityEditor.WebGLExceptionSupport : System.Enum
UnityEditor.WebGLExceptionSupport = {}
---@type UnityEditor.WebGLExceptionSupport
CS.UnityEditor.WebGLExceptionSupport = UnityEditor.WebGLExceptionSupport

---@return System.Int32 value:0
UnityEditor.WebGLExceptionSupport.None = 0
---@return System.Int32 value:1
UnityEditor.WebGLExceptionSupport.ExplicitlyThrownExceptionsOnly = 1
---@return System.Int32 value:2
UnityEditor.WebGLExceptionSupport.FullWithoutStacktrace = 2
---@return System.Int32 value:3
UnityEditor.WebGLExceptionSupport.FullWithStacktrace = 3

---@class UnityEditor.WebGLCompressionFormat : System.Enum
UnityEditor.WebGLCompressionFormat = {}
---@type UnityEditor.WebGLCompressionFormat
CS.UnityEditor.WebGLCompressionFormat = UnityEditor.WebGLCompressionFormat

---@return System.Int32 value:0
UnityEditor.WebGLCompressionFormat.Brotli = 0
---@return System.Int32 value:1
UnityEditor.WebGLCompressionFormat.Gzip = 1
---@return System.Int32 value:2
UnityEditor.WebGLCompressionFormat.Disabled = 2

---@class UnityEditor.WebGLLinkerTarget : System.Enum
UnityEditor.WebGLLinkerTarget = {}
---@type UnityEditor.WebGLLinkerTarget
CS.UnityEditor.WebGLLinkerTarget = UnityEditor.WebGLLinkerTarget

---@return System.Int32 value:0
UnityEditor.WebGLLinkerTarget.Asm = 0
---@return System.Int32 value:1
UnityEditor.WebGLLinkerTarget.Wasm = 1
---@return System.Int32 value:2
UnityEditor.WebGLLinkerTarget.Both = 2

---@class UnityEditor.ShaderUtil : System.Object
---@field public hardwareSupportsRectRenderTexture System.Boolean @static  getter
UnityEditor.ShaderUtil = {}
---@type UnityEditor.ShaderUtil
CS.UnityEditor.ShaderUtil = UnityEditor.ShaderUtil

---@param s UnityEngine.Shader
---@return System.Void
function UnityEditor.ShaderUtil.ClearShaderErrors(s)end
---@param s UnityEngine.Shader
---@return System.Int32
function UnityEditor.ShaderUtil.GetPropertyCount(s)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return System.String
function UnityEditor.ShaderUtil.GetPropertyName(s, propertyIdx)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return UnityEditor.ShaderUtil.ShaderPropertyType
function UnityEditor.ShaderUtil.GetPropertyType(s, propertyIdx)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return System.String
function UnityEditor.ShaderUtil.GetPropertyDescription(s, propertyIdx)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@param defminmax System.Int32
---@return System.Single
function UnityEditor.ShaderUtil.GetRangeLimits(s, propertyIdx, defminmax)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return UnityEngine.Rendering.TextureDimension
function UnityEditor.ShaderUtil.GetTexDim(s, propertyIdx)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return System.Boolean
function UnityEditor.ShaderUtil.IsShaderPropertyHidden(s, propertyIdx)end
---@param s UnityEngine.Shader
---@param propertyIdx System.Int32
---@return System.Boolean
function UnityEditor.ShaderUtil.IsShaderPropertyNonModifiableTexureProperty(s, propertyIdx)end
---@param source System.String
---@return UnityEngine.Shader
function UnityEditor.ShaderUtil.CreateShaderAsset(source)end
---@param shader UnityEngine.Shader
---@param source System.String
---@return System.Void
function UnityEditor.ShaderUtil.UpdateShaderAsset(shader, source)end
---@param shader UnityEngine.Shader
---@return System.Void
function UnityEditor.ShaderUtil.RegisterShader(shader)end
---@return UnityEditor.ShaderInfo[]
function UnityEditor.ShaderUtil.GetAllShaderInfo()end
---@param shader UnityEngine.Shader
---@return UnityEditor.ShaderData
function UnityEditor.ShaderUtil.GetShaderData(shader)end
---@class UnityEditor.ShaderUtil.ShaderPropertyType : System.Enum
UnityEditor.ShaderUtil.ShaderPropertyType = {}
---@type UnityEditor.ShaderUtil.ShaderPropertyType
CS.UnityEditor.ShaderUtil.ShaderPropertyType = UnityEditor.ShaderUtil.ShaderPropertyType

---@return System.Int32 value:0
UnityEditor.ShaderUtil.ShaderPropertyType.Color = 0
---@return System.Int32 value:1
UnityEditor.ShaderUtil.ShaderPropertyType.Vector = 1
---@return System.Int32 value:2
UnityEditor.ShaderUtil.ShaderPropertyType.Float = 2
---@return System.Int32 value:3
UnityEditor.ShaderUtil.ShaderPropertyType.Range = 3
---@return System.Int32 value:4
UnityEditor.ShaderUtil.ShaderPropertyType.TexEnv = 4

---@class UnityEditor.ShaderUtil.ShaderPropertyTexDim : System.Enum
UnityEditor.ShaderUtil.ShaderPropertyTexDim = {}
---@type UnityEditor.ShaderUtil.ShaderPropertyTexDim
CS.UnityEditor.ShaderUtil.ShaderPropertyTexDim = UnityEditor.ShaderUtil.ShaderPropertyTexDim

---@return System.Int32 value:0
UnityEditor.ShaderUtil.ShaderPropertyTexDim.TexDimNone = 0
---@return System.Int32 value:2
UnityEditor.ShaderUtil.ShaderPropertyTexDim.TexDim2D = 2
---@return System.Int32 value:3
UnityEditor.ShaderUtil.ShaderPropertyTexDim.TexDim3D = 3
---@return System.Int32 value:4
UnityEditor.ShaderUtil.ShaderPropertyTexDim.TexDimCUBE = 4

---@class UnityEditor.UnityStats : System.Object
---@field public batches System.Int32 @static  getter
---@field public drawCalls System.Int32 @static  getter
---@field public dynamicBatchedDrawCalls System.Int32 @static  getter
---@field public staticBatchedDrawCalls System.Int32 @static  getter
---@field public instancedBatchedDrawCalls System.Int32 @static  getter
---@field public dynamicBatches System.Int32 @static  getter
---@field public staticBatches System.Int32 @static  getter
---@field public instancedBatches System.Int32 @static  getter
---@field public setPassCalls System.Int32 @static  getter
---@field public triangles System.Int32 @static  getter
---@field public vertices System.Int32 @static  getter
---@field public shadowCasters System.Int32 @static  getter
---@field public renderTextureChanges System.Int32 @static  getter
---@field public frameTime System.Single @static  getter
---@field public renderTime System.Single @static  getter
---@field public audioLevel System.Single @static  getter
---@field public audioClippingAmount System.Single @static  getter
---@field public audioDSPLoad System.Single @static  getter
---@field public audioStreamLoad System.Single @static  getter
---@field public renderTextureCount System.Int32 @static  getter
---@field public renderTextureBytes System.Int32 @static  getter
---@field public usedTextureMemorySize System.Int32 @static  getter
---@field public usedTextureCount System.Int32 @static  getter
---@field public screenRes System.String @static  getter
---@field public screenBytes System.Int32 @static  getter
---@field public vboTotal System.Int32 @static  getter
---@field public vboTotalBytes System.Int32 @static  getter
---@field public vboUploads System.Int32 @static  getter
---@field public vboUploadBytes System.Int32 @static  getter
---@field public ibUploads System.Int32 @static  getter
---@field public ibUploadBytes System.Int32 @static  getter
---@field public visibleSkinnedMeshes System.Int32 @static  getter
---@field public visibleAnimations System.Int32 @static  getter
UnityEditor.UnityStats = {}
---@type UnityEditor.UnityStats
CS.UnityEditor.UnityStats = UnityEditor.UnityStats

---@class UnityEditor.RemoveAssetOptions : System.Enum
UnityEditor.RemoveAssetOptions = {}
---@type UnityEditor.RemoveAssetOptions
CS.UnityEditor.RemoveAssetOptions = UnityEditor.RemoveAssetOptions

---@return System.Int32 value:0
UnityEditor.RemoveAssetOptions.MoveAssetToTrash = 0

---@class UnityEditor.ImportAssetOptions : System.Enum
UnityEditor.ImportAssetOptions = {}
---@type UnityEditor.ImportAssetOptions
CS.UnityEditor.ImportAssetOptions = UnityEditor.ImportAssetOptions

---@return System.Int32 value:0
UnityEditor.ImportAssetOptions.Default = 0
---@return System.Int32 value:1
UnityEditor.ImportAssetOptions.ForceUpdate = 1

---@class UnityEditor.StatusQueryOptions : System.Enum
UnityEditor.StatusQueryOptions = {}
---@type UnityEditor.StatusQueryOptions
CS.UnityEditor.StatusQueryOptions = UnityEditor.StatusQueryOptions

---@return System.Int32 value:0
UnityEditor.StatusQueryOptions.ForceUpdate = 0
---@return System.Int32 value:1
UnityEditor.StatusQueryOptions.UseCachedIfPossible = 1
---@return System.Int32 value:2
UnityEditor.StatusQueryOptions.UseCachedAsync = 2

---@class UnityEditor.AssetDatabase : System.Object
UnityEditor.AssetDatabase = {}
---@type UnityEditor.AssetDatabase
CS.UnityEditor.AssetDatabase = UnityEditor.AssetDatabase

---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.Contains(instanceID)end
---@param parentFolder System.String
---@param newFolderName System.String
---@return System.String
function UnityEditor.AssetDatabase.CreateFolder(parentFolder, newFolderName)end
---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.IsMainAsset(instanceID)end
---@return System.String
function UnityEditor.AssetDatabase.GetCurrentCacheServerIp()end
---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.IsSubAsset(instanceID)end
---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.IsForeignAsset(instanceID)end
---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.IsNativeAsset(instanceID)end
---@param path System.String
---@return System.String
function UnityEditor.AssetDatabase.GenerateUniqueAssetPath(path)end
---@return System.Void
function UnityEditor.AssetDatabase.StartAssetEditing()end
---@return System.Void
function UnityEditor.AssetDatabase.StopAssetEditing()end
---@return System.Void
function UnityEditor.AssetDatabase.ReleaseCachedFileHandles()end
---@param oldPath System.String
---@param newPath System.String
---@return System.String
function UnityEditor.AssetDatabase.ValidateMoveAsset(oldPath, newPath)end
---@param oldPath System.String
---@param newPath System.String
---@return System.String
function UnityEditor.AssetDatabase.MoveAsset(oldPath, newPath)end
---@param asset UnityEngine.Object
---@param newPath System.String
---@return System.String
function UnityEditor.AssetDatabase.ExtractAsset(asset, newPath)end
---@param pathName System.String
---@param newName System.String
---@return System.String
function UnityEditor.AssetDatabase.RenameAsset(pathName, newName)end
---@param path System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.MoveAssetToTrash(path)end
---@param path System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.DeleteAsset(path)end
---@overload fun(path:System.String, options:UnityEditor.ImportAssetOptions):System.Void
---@param path System.String
---@return System.Void
function UnityEditor.AssetDatabase.ImportAsset(path)end
---@param path System.String
---@param newPath System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.CopyAsset(path, newPath)end
---@param path System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.WriteImportSettingsIfDirty(path)end
---@param path System.String
---@return System.String[]
function UnityEditor.AssetDatabase.GetSubFolders(path)end
---@param path System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.IsValidFolder(path)end
---@param asset UnityEngine.Object
---@param path System.String
---@return System.Void
function UnityEditor.AssetDatabase.CreateAsset(asset, path)end
---@overload fun(objectToAdd:UnityEngine.Object, assetObject:UnityEngine.Object):System.Void
---@param objectToAdd UnityEngine.Object
---@param path System.String
---@return System.Void
function UnityEditor.AssetDatabase.AddObjectToAsset(objectToAdd, path)end
---@param mainObject UnityEngine.Object
---@param assetPath System.String
---@return System.Void
function UnityEditor.AssetDatabase.SetMainObject(mainObject, assetPath)end
---@overload fun(assetObject:UnityEngine.Object):System.String
---@param instanceID System.Int32
---@return System.String
function UnityEditor.AssetDatabase.GetAssetPath(instanceID)end
---@param assetObject UnityEngine.Object
---@return System.String
function UnityEditor.AssetDatabase.GetAssetOrScenePath(assetObject)end
---@param path System.String
---@return System.String
function UnityEditor.AssetDatabase.GetTextMetaFilePathFromAssetPath(path)end
---@param path System.String
---@return System.String
function UnityEditor.AssetDatabase.GetAssetPathFromTextMetaFilePath(path)end
---@overload fun(assetPath:System.String, type:System.Type):UnityEngine.Object
---@param assetPath System.String
---@return any
function UnityEditor.AssetDatabase.LoadAssetAtPath(assetPath)end
---@param assetPath System.String
---@return UnityEngine.Object
function UnityEditor.AssetDatabase.LoadMainAssetAtPath(assetPath)end
---@param assetPath System.String
---@return System.Type
function UnityEditor.AssetDatabase.GetMainAssetTypeAtPath(assetPath)end
---@param assetPath System.String
---@return System.Boolean
function UnityEditor.AssetDatabase.IsMainAssetAtPathLoaded(assetPath)end
---@param assetPath System.String
---@return UnityEngine.Object[]
function UnityEditor.AssetDatabase.LoadAllAssetRepresentationsAtPath(assetPath)end
---@param assetPath System.String
---@return UnityEngine.Object[]
function UnityEditor.AssetDatabase.LoadAllAssetsAtPath(assetPath)end
---@return System.String[]
function UnityEditor.AssetDatabase.GetAllAssetPaths()end
---@overload fun(options:UnityEditor.ImportAssetOptions):System.Void
---@return System.Void
function UnityEditor.AssetDatabase.RefreshDelayed()end
---@overload fun(options:UnityEditor.ImportAssetOptions):System.Void
---@return System.Void
function UnityEditor.AssetDatabase.Refresh()end
---@overload fun(instanceID:System.Int32, lineNumber:System.Int32):System.Boolean
---@overload fun(target:UnityEngine.Object):System.Boolean
---@overload fun(objects:UnityEngine.Object[]):System.Boolean
---@overload fun(target:UnityEngine.Object, lineNumber:System.Int32):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.OpenAsset(instanceID)end
---@param path System.String
---@return System.String
function UnityEditor.AssetDatabase.AssetPathToGUID(path)end
---@param guid System.String
---@return System.String
function UnityEditor.AssetDatabase.GUIDToAssetPath(guid)end
---@param path System.String
---@return UnityEngine.Hash128
function UnityEditor.AssetDatabase.GetAssetDependencyHash(path)end
---@return System.Void
function UnityEditor.AssetDatabase.SaveAssets()end
---@param path System.String
---@return UnityEngine.Texture
function UnityEditor.AssetDatabase.GetCachedIcon(path)end
---@param obj UnityEngine.Object
---@param labels System.String[]
---@return System.Void
function UnityEditor.AssetDatabase.SetLabels(obj, labels)end
---@param obj UnityEngine.Object
---@return System.String[]
function UnityEditor.AssetDatabase.GetLabels(obj)end
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.AssetDatabase.ClearLabels(obj)end
---@return System.String[]
function UnityEditor.AssetDatabase.GetAllAssetBundleNames()end
---@return System.String[]
function UnityEditor.AssetDatabase:GetAssetBundleNames()end
---@return System.String[]
function UnityEditor.AssetDatabase.GetUnusedAssetBundleNames()end
---@param assetBundleName System.String
---@param forceRemove System.Boolean
---@return System.Boolean
function UnityEditor.AssetDatabase.RemoveAssetBundleName(assetBundleName, forceRemove)end
---@return System.Void
function UnityEditor.AssetDatabase.RemoveUnusedAssetBundleNames()end
---@param assetBundleName System.String
---@return System.String[]
function UnityEditor.AssetDatabase.GetAssetPathsFromAssetBundle(assetBundleName)end
---@param assetBundleName System.String
---@param assetName System.String
---@return System.String[]
function UnityEditor.AssetDatabase.GetAssetPathsFromAssetBundleAndAssetName(assetBundleName, assetName)end
---@param assetPath System.String
---@return System.String
function UnityEditor.AssetDatabase.GetImplicitAssetBundleName(assetPath)end
---@param assetPath System.String
---@return System.String
function UnityEditor.AssetDatabase.GetImplicitAssetBundleVariantName(assetPath)end
---@param assetBundleName System.String
---@param recursive System.Boolean
---@return System.String[]
function UnityEditor.AssetDatabase.GetAssetBundleDependencies(assetBundleName, recursive)end
---@overload fun(pathNames:System.String[]):System.String[]
---@overload fun(pathName:System.String, recursive:System.Boolean):System.String[]
---@overload fun(pathNames:System.String[], recursive:System.Boolean):System.String[]
---@param pathName System.String
---@return System.String[]
function UnityEditor.AssetDatabase.GetDependencies(pathName)end
---@overload fun(assetPathNames:System.String[], fileName:System.String):System.Void
---@overload fun(assetPathName:System.String, fileName:System.String, flags:UnityEditor.ExportPackageOptions):System.Void
---@overload fun(assetPathNames:System.String[], fileName:System.String, flags:UnityEditor.ExportPackageOptions):System.Void
---@param assetPathName System.String
---@param fileName System.String
---@return System.Void
function UnityEditor.AssetDatabase.ExportPackage(assetPathName, fileName)end
---@overload fun(assetOrMetaFilePath:System.String):System.Boolean
---@overload fun(assetObject:UnityEngine.Object, message:System.String):System.Boolean
---@overload fun(assetOrMetaFilePath:System.String, message:System.String):System.Boolean
---@overload fun(assetObject:UnityEngine.Object, StatusQueryOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@overload fun(assetOrMetaFilePath:System.String, StatusQueryOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@overload fun(assetObject:UnityEngine.Object, message:System.String, statusOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@overload fun(assetOrMetaFilePath:System.String, message:System.String, statusOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@param assetObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.AssetDatabase.IsOpenForEdit(assetObject)end
---@overload fun(assetObject:UnityEngine.Object, message:System.String):System.Boolean
---@overload fun(assetObject:UnityEngine.Object, statusOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@overload fun(assetObject:UnityEngine.Object, message:System.String, statusOptions:UnityEditor.StatusQueryOptions):System.Boolean
---@param assetObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.AssetDatabase.IsMetaFileOpenForEdit(assetObject)end
---@overload fun(type:System.Type, path:System.String):UnityEngine.Object
---@param path System.String
---@return any
function UnityEditor.AssetDatabase.GetBuiltinExtraResource(path)end
---@overload fun(assetPaths:System.Collections.Generic.IEnumerable):System.Void
---@overload fun(assetPaths:System.Collections.Generic.IEnumerable):System.Void
---@return System.Void
function UnityEditor.AssetDatabase.ForceReserializeAssets()end
---@overload fun(instanceID:System.Int32, guid:System.String, localId:System.Int64):System.Boolean
---@overload fun(obj:UnityEngine.Object, guid:System.String, localId:System.Int32):System.Boolean
---@overload fun(obj:UnityEngine.Object, guid:System.String, localId:System.Int64):System.Boolean
---@param instanceID System.Int32
---@param guid System.String
---@param localId System.Int32
---@return System.Boolean
function UnityEditor.AssetDatabase.TryGetGUIDAndLocalFileIdentifier(instanceID, guid, localId)end
---@param objectToRemove UnityEngine.Object
---@return System.Void
function UnityEditor.AssetDatabase.RemoveObjectFromAsset(objectToRemove)end
---@param packagePath System.String
---@param interactive System.Boolean
---@return System.Void
function UnityEditor.AssetDatabase.ImportPackage(packagePath, interactive)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.add_importPackageStarted(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.remove_importPackageStarted(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.add_importPackageCompleted(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.remove_importPackageCompleted(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.add_importPackageCancelled(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageCallback
---@return System.Void
function UnityEditor.AssetDatabase.remove_importPackageCancelled(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageFailedCallback
---@return System.Void
function UnityEditor.AssetDatabase.add_importPackageFailed(value)end
---@param value UnityEditor.AssetDatabase.ImportPackageFailedCallback
---@return System.Void
function UnityEditor.AssetDatabase.remove_importPackageFailed(value)end
---@param path System.String
---@return System.String
function UnityEditor.AssetDatabase.GetTextMetaDataPathFromAssetPath(path)end
---@overload fun(filter:System.String, searchInFolders:System.String[]):System.String[]
---@param filter System.String
---@return System.String[]
function UnityEditor.AssetDatabase.FindAssets(filter)end
---@class UnityEditor.PhysicsVisualizationSettings : System.Object
---@field public devOptions System.Boolean @static setter getter
---@field public dirtyCount System.Int32 @static  getter
---@field public filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow @static setter getter
---@field public showCollisionGeometry System.Boolean @static setter getter
---@field public enableMouseSelect System.Boolean @static setter getter
---@field public useSceneCam System.Boolean @static setter getter
---@field public viewDistance System.Single @static setter getter
---@field public terrainTilesMax System.Int32 @static setter getter
---@field public forceOverdraw System.Boolean @static setter getter
---@field public staticColor UnityEngine.Color @static setter getter
---@field public rigidbodyColor UnityEngine.Color @static setter getter
---@field public kinematicColor UnityEngine.Color @static setter getter
---@field public triggerColor UnityEngine.Color @static setter getter
---@field public sleepingBodyColor UnityEngine.Color @static setter getter
---@field public baseAlpha System.Single @static setter getter
---@field public colorVariance System.Single @static setter getter
---@field public dotAlpha System.Single @static setter getter
---@field public forceDot System.Boolean @static setter getter
UnityEditor.PhysicsVisualizationSettings = {}
---@type UnityEditor.PhysicsVisualizationSettings
CS.UnityEditor.PhysicsVisualizationSettings = UnityEditor.PhysicsVisualizationSettings

---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.Reset()end
---@param filterWorkFlow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowStaticColliders(filterWorkFlow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowStaticColliders(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowTriggers(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowTriggers(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowRigidbodies(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowRigidbodies(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowKinematicBodies(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowKinematicBodies(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowSleepingBodies(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowSleepingBodies(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param layer System.Int32
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowCollisionLayer(filterWorkflow, layer)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param layer System.Int32
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowCollisionLayer(filterWorkflow, layer, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Int32
function UnityEditor.PhysicsVisualizationSettings.GetShowCollisionLayerMask(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param mask System.Int32
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowCollisionLayerMask(filterWorkflow, mask)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowBoxColliders(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowBoxColliders(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowSphereColliders(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowSphereColliders(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowCapsuleColliders(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowCapsuleColliders(filterWorkflow, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param colliderType UnityEditor.PhysicsVisualizationSettings.MeshColliderType
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowMeshColliders(filterWorkflow, colliderType)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param colliderType UnityEditor.PhysicsVisualizationSettings.MeshColliderType
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowMeshColliders(filterWorkflow, colliderType, show)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.GetShowTerrainColliders(filterWorkflow)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param show System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowTerrainColliders(filterWorkflow, show)end
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.InitDebugDraw()end
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.DeinitDebugDraw()end
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.ClearMouseHighlight()end
---@return System.Boolean
function UnityEditor.PhysicsVisualizationSettings.HasMouseHighlight()end
---@param screenPos UnityEngine.Vector2
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.UpdateMouseHighlight(screenPos)end
---@param cam UnityEngine.Camera
---@param layers System.Int32
---@param position UnityEngine.Vector2
---@param ignore UnityEngine.GameObject[]
---@param filter UnityEngine.GameObject[]
---@param materialIndex System.Int32
---@return UnityEngine.GameObject
function UnityEditor.PhysicsVisualizationSettings.PickClosestGameObject(cam, layers, position, ignore, filter, materialIndex)end
---@param filterWorkflow UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
---@param selected System.Boolean
---@return System.Void
function UnityEditor.PhysicsVisualizationSettings.SetShowForAllFilters(filterWorkflow, selected)end
---@class UnityEditor.PhysicsVisualizationSettings.FilterWorkflow : System.Enum
UnityEditor.PhysicsVisualizationSettings.FilterWorkflow = {}
---@type UnityEditor.PhysicsVisualizationSettings.FilterWorkflow
CS.UnityEditor.PhysicsVisualizationSettings.FilterWorkflow = UnityEditor.PhysicsVisualizationSettings.FilterWorkflow

---@return System.Int32 value:0
UnityEditor.PhysicsVisualizationSettings.FilterWorkflow.HideSelectedItems = 0
---@return System.Int32 value:1
UnityEditor.PhysicsVisualizationSettings.FilterWorkflow.ShowSelectedItems = 1

---@class UnityEditor.PhysicsVisualizationSettings.MeshColliderType : System.Enum
UnityEditor.PhysicsVisualizationSettings.MeshColliderType = {}
---@type UnityEditor.PhysicsVisualizationSettings.MeshColliderType
CS.UnityEditor.PhysicsVisualizationSettings.MeshColliderType = UnityEditor.PhysicsVisualizationSettings.MeshColliderType

---@return System.Int32 value:0
UnityEditor.PhysicsVisualizationSettings.MeshColliderType.Convex = 0
---@return System.Int32 value:1
UnityEditor.PhysicsVisualizationSettings.MeshColliderType.NonConvex = 1

---@class UnityEditor.FontTextureCase : System.Enum
UnityEditor.FontTextureCase = {}
---@type UnityEditor.FontTextureCase
CS.UnityEditor.FontTextureCase = UnityEditor.FontTextureCase

---@return System.Int32 value:0
UnityEditor.FontTextureCase.ASCII = 0
---@return System.Int32 value:1
UnityEditor.FontTextureCase.ASCIIUpperCase = 1
---@return System.Int32 value:2
UnityEditor.FontTextureCase.ASCIILowerCase = 2
---@return System.Int32 value:3
UnityEditor.FontTextureCase.CustomSet = 3

---@class UnityEditor.FontRenderingMode : System.Enum
UnityEditor.FontRenderingMode = {}
---@type UnityEditor.FontRenderingMode
CS.UnityEditor.FontRenderingMode = UnityEditor.FontRenderingMode

---@return System.Int32 value:0
UnityEditor.FontRenderingMode.Smooth = 0
---@return System.Int32 value:1
UnityEditor.FontRenderingMode.HintedSmooth = 1
---@return System.Int32 value:2
UnityEditor.FontRenderingMode.HintedRaster = 2
---@return System.Int32 value:3
UnityEditor.FontRenderingMode.OSDefault = 3

---@class UnityEditor.AscentCalculationMode : System.Enum
UnityEditor.AscentCalculationMode = {}
---@type UnityEditor.AscentCalculationMode
CS.UnityEditor.AscentCalculationMode = UnityEditor.AscentCalculationMode

---@return System.Int32 value:0
UnityEditor.AscentCalculationMode.Legacy2x = 0
---@return System.Int32 value:1
UnityEditor.AscentCalculationMode.FaceAscender = 1
---@return System.Int32 value:2
UnityEditor.AscentCalculationMode.FaceBoundingBox = 2

---@class UnityEditor.TrueTypeFontImporter : UnityEditor.AssetImporter
---@field public fontSize System.Int32 @ setter getter
---@field public includeFontData System.Boolean @ setter getter
---@field public ascentCalculationMode UnityEditor.AscentCalculationMode @ setter getter
---@field public customCharacters System.String @ setter getter
---@field public characterSpacing System.Int32 @ setter getter
---@field public characterPadding System.Int32 @ setter getter
---@field public fontRenderingMode UnityEditor.FontRenderingMode @ setter getter
---@field public shouldRoundAdvanceValue System.Boolean @ setter getter
---@field public fontTTFName System.String @  getter
---@field public fontTextureCase UnityEditor.FontTextureCase @ setter getter
---@field public fontReferences UnityEngine.Font[] @ setter getter
---@field public fontNames System.String[] @ setter getter
UnityEditor.TrueTypeFontImporter = {}
---@type UnityEditor.TrueTypeFontImporter
CS.UnityEditor.TrueTypeFontImporter = UnityEditor.TrueTypeFontImporter

---@param path System.String
---@return UnityEngine.Font
function UnityEditor.TrueTypeFontImporter:GenerateEditableFont(path)end
---@class UnityEditor.AudioImporterFormat : System.Enum
UnityEditor.AudioImporterFormat = {}
---@type UnityEditor.AudioImporterFormat
CS.UnityEditor.AudioImporterFormat = UnityEditor.AudioImporterFormat

---@return System.Int32 value:0
UnityEditor.AudioImporterFormat.Compressed = 0

---@class UnityEditor.AudioImporterLoadType : System.Enum
UnityEditor.AudioImporterLoadType = {}
---@type UnityEditor.AudioImporterLoadType
CS.UnityEditor.AudioImporterLoadType = UnityEditor.AudioImporterLoadType


---@class UnityEditor.AudioImporterChannels : System.Enum
UnityEditor.AudioImporterChannels = {}
---@type UnityEditor.AudioImporterChannels
CS.UnityEditor.AudioImporterChannels = UnityEditor.AudioImporterChannels

---@return System.Int32 value:0
UnityEditor.AudioImporterChannels.Automatic = 0
---@return System.Int32 value:1
UnityEditor.AudioImporterChannels.Mono = 1
---@return System.Int32 value:2
UnityEditor.AudioImporterChannels.Stereo = 2

---@class UnityEditor.AudioSampleRateSetting : System.Enum
UnityEditor.AudioSampleRateSetting = {}
---@type UnityEditor.AudioSampleRateSetting
CS.UnityEditor.AudioSampleRateSetting = UnityEditor.AudioSampleRateSetting

---@return System.Int32 value:0
UnityEditor.AudioSampleRateSetting.PreserveSampleRate = 0
---@return System.Int32 value:1
UnityEditor.AudioSampleRateSetting.OptimizeSampleRate = 1
---@return System.Int32 value:2
UnityEditor.AudioSampleRateSetting.OverrideSampleRate = 2

---@class UnityEditor.AudioImporterSampleSettings : System.ValueType
---@field public loadType UnityEngine.AudioClipLoadType
---@field public sampleRateSetting UnityEditor.AudioSampleRateSetting
---@field public sampleRateOverride System.UInt32
---@field public compressionFormat UnityEngine.AudioCompressionFormat
---@field public quality System.Single
---@field public conversionMode System.Int32
UnityEditor.AudioImporterSampleSettings = {}
---@type UnityEditor.AudioImporterSampleSettings
CS.UnityEditor.AudioImporterSampleSettings = UnityEditor.AudioImporterSampleSettings

---@class UnityEditor.AudioImporter : UnityEditor.AssetImporter
---@field public defaultSampleSettings UnityEditor.AudioImporterSampleSettings @ setter getter
---@field public forceToMono System.Boolean @ setter getter
---@field public ambisonic System.Boolean @ setter getter
---@field public loadInBackground System.Boolean @ setter getter
---@field public preloadAudioData System.Boolean @ setter getter
---@field public channels UnityEditor.AudioImporterChannels @ setter getter
---@field public compressionBitrate System.Int32 @ setter getter
---@field public loopable System.Boolean @ setter getter
---@field public hardware System.Boolean @ setter getter
---@field public threeD System.Boolean @ setter getter
UnityEditor.AudioImporter = {}
---@type UnityEditor.AudioImporter
CS.UnityEditor.AudioImporter = UnityEditor.AudioImporter

---@param platform System.String
---@return System.Boolean
function UnityEditor.AudioImporter:ContainsSampleSettingsOverride(platform)end
---@param platform System.String
---@return UnityEditor.AudioImporterSampleSettings
function UnityEditor.AudioImporter:GetOverrideSampleSettings(platform)end
---@param platform System.String
---@param settings UnityEditor.AudioImporterSampleSettings
---@return System.Boolean
function UnityEditor.AudioImporter:SetOverrideSampleSettings(platform, settings)end
---@param platform System.String
---@return System.Boolean
function UnityEditor.AudioImporter:ClearSampleSettingOverride(platform)end
---@class UnityEditor.MonoImporter : UnityEditor.AssetImporter
UnityEditor.MonoImporter = {}
---@type UnityEditor.MonoImporter
CS.UnityEditor.MonoImporter = UnityEditor.MonoImporter

---@param name System.String[]
---@param target UnityEngine.Object[]
---@return System.Void
function UnityEditor.MonoImporter:SetDefaultReferences(name, target)end
---@return UnityEditor.MonoScript[]
function UnityEditor.MonoImporter.GetAllRuntimeMonoScripts()end
---@param script UnityEditor.MonoScript
---@param order System.Int32
---@return System.Void
function UnityEditor.MonoImporter.SetExecutionOrder(script, order)end
---@param script UnityEditor.MonoScript
---@return System.Int32
function UnityEditor.MonoImporter.GetExecutionOrder(script)end
---@return UnityEditor.MonoScript
function UnityEditor.MonoImporter:GetScript()end
---@param name System.String
---@return UnityEngine.Object
function UnityEditor.MonoImporter:GetDefaultReference(name)end
---@class UnityEditor.MovieImporter : UnityEditor.AssetImporter
---@field public quality System.Single @ setter getter
---@field public linearTexture System.Boolean @ setter getter
---@field public duration System.Single @  getter
UnityEditor.MovieImporter = {}
---@type UnityEditor.MovieImporter
CS.UnityEditor.MovieImporter = UnityEditor.MovieImporter

---@class UnityEditor.PluginImporter : UnityEditor.AssetImporter
---@field public DefineConstraints System.String[] @ setter getter
---@field public isNativePlugin System.Boolean @  getter
UnityEditor.PluginImporter = {}
---@type UnityEditor.PluginImporter
CS.UnityEditor.PluginImporter = UnityEditor.PluginImporter

---@overload fun(platform:UnityEditor.BuildTarget):UnityEditor.PluginImporter[]
---@overload fun(buildTargetGroup:System.String, buildTarget:System.String):UnityEditor.PluginImporter[]
---@overload fun(buildTargetGroup:UnityEditor.BuildTargetGroup, buildTarget:UnityEditor.BuildTarget):UnityEditor.PluginImporter[]
---@param platformName System.String
---@return UnityEditor.PluginImporter[]
function UnityEditor.PluginImporter.GetImporters(platformName)end
---@return System.Void
function UnityEditor.PluginImporter:ClearSettings()end
---@param enable System.Boolean
---@return System.Void
function UnityEditor.PluginImporter:SetCompatibleWithAnyPlatform(enable)end
---@return System.Boolean
function UnityEditor.PluginImporter:GetCompatibleWithAnyPlatform()end
---@overload fun(platform:UnityEditor.BuildTarget, excludedFromAny:System.Boolean):System.Void
---@param platformName System.String
---@param excludedFromAny System.Boolean
---@return System.Void
function UnityEditor.PluginImporter:SetExcludeFromAnyPlatform(platformName, excludedFromAny)end
---@overload fun(platform:UnityEditor.BuildTarget):System.Boolean
---@param platformName System.String
---@return System.Boolean
function UnityEditor.PluginImporter:GetExcludeFromAnyPlatform(platformName)end
---@param includeInBuildDelegate UnityEditor.PluginImporter.IncludeInBuildDelegate
---@return System.Void
function UnityEditor.PluginImporter:SetIncludeInBuildDelegate(includeInBuildDelegate)end
---@param excludedFromAny System.Boolean
---@return System.Void
function UnityEditor.PluginImporter:SetExcludeEditorFromAnyPlatform(excludedFromAny)end
---@return System.Boolean
function UnityEditor.PluginImporter:GetExcludeEditorFromAnyPlatform()end
---@param enable System.Boolean
---@return System.Void
function UnityEditor.PluginImporter:SetCompatibleWithEditor(enable)end
---@overload fun(buildTargetGroup:System.String, buildTarget:System.String):System.Boolean
---@return System.Boolean
function UnityEditor.PluginImporter:GetCompatibleWithEditor()end
---@return System.Boolean
function UnityEditor.PluginImporter:GetIsOverridable()end
---@return System.Boolean
function UnityEditor.PluginImporter:ShouldIncludeInBuild()end
---@overload fun(platformName:System.String, enable:System.Boolean):System.Void
---@param platform UnityEditor.BuildTarget
---@param enable System.Boolean
---@return System.Void
function UnityEditor.PluginImporter:SetCompatibleWithPlatform(platform, enable)end
---@overload fun(platformName:System.String):System.Boolean
---@param platform UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.PluginImporter:GetCompatibleWithPlatform(platform)end
---@overload fun(platformName:System.String, key:System.String, value:System.String):System.Void
---@param platform UnityEditor.BuildTarget
---@param key System.String
---@param value System.String
---@return System.Void
function UnityEditor.PluginImporter:SetPlatformData(platform, key, value)end
---@overload fun(platformName:System.String, key:System.String):System.String
---@param platform UnityEditor.BuildTarget
---@param key System.String
---@return System.String
function UnityEditor.PluginImporter:GetPlatformData(platform, key)end
---@param key System.String
---@param value System.String
---@return System.Void
function UnityEditor.PluginImporter:SetEditorData(key, value)end
---@param key System.String
---@return System.String
function UnityEditor.PluginImporter:GetEditorData(key)end
---@return UnityEditor.PluginImporter[]
function UnityEditor.PluginImporter.GetAllImporters()end
---@class UnityEditor.VideoCodec : System.Enum
UnityEditor.VideoCodec = {}
---@type UnityEditor.VideoCodec
CS.UnityEditor.VideoCodec = UnityEditor.VideoCodec

---@return System.Int32 value:0
UnityEditor.VideoCodec.Auto = 0
---@return System.Int32 value:1
UnityEditor.VideoCodec.H264 = 1
---@return System.Int32 value:2
UnityEditor.VideoCodec.VP8 = 2

---@class UnityEditor.VideoBitrateMode : System.Enum
UnityEditor.VideoBitrateMode = {}
---@type UnityEditor.VideoBitrateMode
CS.UnityEditor.VideoBitrateMode = UnityEditor.VideoBitrateMode

---@return System.Int32 value:0
UnityEditor.VideoBitrateMode.Low = 0
---@return System.Int32 value:1
UnityEditor.VideoBitrateMode.Medium = 1
---@return System.Int32 value:2
UnityEditor.VideoBitrateMode.High = 2

---@class UnityEditor.VideoDeinterlaceMode : System.Enum
UnityEditor.VideoDeinterlaceMode = {}
---@type UnityEditor.VideoDeinterlaceMode
CS.UnityEditor.VideoDeinterlaceMode = UnityEditor.VideoDeinterlaceMode

---@return System.Int32 value:0
UnityEditor.VideoDeinterlaceMode.Off = 0
---@return System.Int32 value:1
UnityEditor.VideoDeinterlaceMode.Even = 1
---@return System.Int32 value:2
UnityEditor.VideoDeinterlaceMode.Odd = 2

---@class UnityEditor.VideoResizeMode : System.Enum
UnityEditor.VideoResizeMode = {}
---@type UnityEditor.VideoResizeMode
CS.UnityEditor.VideoResizeMode = UnityEditor.VideoResizeMode

---@return System.Int32 value:0
UnityEditor.VideoResizeMode.OriginalSize = 0
---@return System.Int32 value:1
UnityEditor.VideoResizeMode.ThreeQuarterRes = 1
---@return System.Int32 value:2
UnityEditor.VideoResizeMode.HalfRes = 2
---@return System.Int32 value:3
UnityEditor.VideoResizeMode.QuarterRes = 3
---@return System.Int32 value:4
UnityEditor.VideoResizeMode.Square1024 = 4
---@return System.Int32 value:5
UnityEditor.VideoResizeMode.Square512 = 5
---@return System.Int32 value:6
UnityEditor.VideoResizeMode.Square256 = 6
---@return System.Int32 value:7
UnityEditor.VideoResizeMode.CustomSize = 7

---@class UnityEditor.VideoSpatialQuality : System.Enum
UnityEditor.VideoSpatialQuality = {}
---@type UnityEditor.VideoSpatialQuality
CS.UnityEditor.VideoSpatialQuality = UnityEditor.VideoSpatialQuality

---@return System.Int32 value:0
UnityEditor.VideoSpatialQuality.LowSpatialQuality = 0
---@return System.Int32 value:1
UnityEditor.VideoSpatialQuality.MediumSpatialQuality = 1
---@return System.Int32 value:2
UnityEditor.VideoSpatialQuality.HighSpatialQuality = 2

---@class UnityEditor.VideoEncodeAspectRatio : System.Enum
UnityEditor.VideoEncodeAspectRatio = {}
---@type UnityEditor.VideoEncodeAspectRatio
CS.UnityEditor.VideoEncodeAspectRatio = UnityEditor.VideoEncodeAspectRatio

---@return System.Int32 value:0
UnityEditor.VideoEncodeAspectRatio.NoScaling = 0

---@class UnityEditor.VideoImporterTargetSettings : System.Object
---@field public enableTranscoding System.Boolean
---@field public codec UnityEditor.VideoCodec
---@field public resizeMode UnityEditor.VideoResizeMode
---@field public aspectRatio UnityEditor.VideoEncodeAspectRatio
---@field public customWidth System.Int32
---@field public customHeight System.Int32
---@field public bitrateMode UnityEditor.VideoBitrateMode
---@field public spatialQuality UnityEditor.VideoSpatialQuality
UnityEditor.VideoImporterTargetSettings = {}
---@type UnityEditor.VideoImporterTargetSettings
CS.UnityEditor.VideoImporterTargetSettings = UnityEditor.VideoImporterTargetSettings

---@class UnityEditor.VideoClipImporter : UnityEditor.AssetImporter
---@field public quality System.Single @ setter getter
---@field public linearColor System.Boolean @ setter getter
---@field public useLegacyImporter System.Boolean @ setter getter
---@field public sourceFileSize System.UInt64 @  getter
---@field public outputFileSize System.UInt64 @  getter
---@field public frameCount System.Int32 @  getter
---@field public frameRate System.Double @  getter
---@field public keepAlpha System.Boolean @ setter getter
---@field public sourceHasAlpha System.Boolean @  getter
---@field public deinterlaceMode UnityEditor.VideoDeinterlaceMode @ setter getter
---@field public flipVertical System.Boolean @ setter getter
---@field public flipHorizontal System.Boolean @ setter getter
---@field public importAudio System.Boolean @ setter getter
---@field public defaultTargetSettings UnityEditor.VideoImporterTargetSettings @ setter getter
---@field public isPlayingPreview System.Boolean @  getter
---@field public sourceAudioTrackCount System.UInt16 @  getter
---@field public pixelAspectRatioNumerator System.Int32 @  getter
---@field public pixelAspectRatioDenominator System.Int32 @  getter
---@field public transcodeSkipped System.Boolean @  getter
UnityEditor.VideoClipImporter = {}
---@type UnityEditor.VideoClipImporter
CS.UnityEditor.VideoClipImporter = UnityEditor.VideoClipImporter

---@param platform System.String
---@return UnityEditor.VideoImporterTargetSettings
function UnityEditor.VideoClipImporter:GetTargetSettings(platform)end
---@param platform System.String
---@param settings UnityEditor.VideoImporterTargetSettings
---@return System.Void
function UnityEditor.VideoClipImporter:SetTargetSettings(platform, settings)end
---@param platform System.String
---@return System.Void
function UnityEditor.VideoClipImporter:ClearTargetSettings(platform)end
---@return System.Void
function UnityEditor.VideoClipImporter:PlayPreview()end
---@return System.Void
function UnityEditor.VideoClipImporter:StopPreview()end
---@return UnityEngine.Texture
function UnityEditor.VideoClipImporter:GetPreviewTexture()end
---@param mode UnityEditor.VideoResizeMode
---@return System.String
function UnityEditor.VideoClipImporter:GetResizeModeName(mode)end
---@param mode UnityEditor.VideoResizeMode
---@return System.Int32
function UnityEditor.VideoClipImporter:GetResizeWidth(mode)end
---@param mode UnityEditor.VideoResizeMode
---@return System.Int32
function UnityEditor.VideoClipImporter:GetResizeHeight(mode)end
---@param audioTrackIdx System.UInt16
---@return System.UInt16
function UnityEditor.VideoClipImporter:GetSourceAudioChannelCount(audioTrackIdx)end
---@param audioTrackIdx System.UInt16
---@return System.UInt32
function UnityEditor.VideoClipImporter:GetSourceAudioSampleRate(audioTrackIdx)end
---@param rhs UnityEditor.VideoClipImporter
---@return System.Boolean
function UnityEditor.VideoClipImporter:Equals(rhs)end
---@class UnityEditor.ClipAnimationMaskType : System.Enum
UnityEditor.ClipAnimationMaskType = {}
---@type UnityEditor.ClipAnimationMaskType
CS.UnityEditor.ClipAnimationMaskType = UnityEditor.ClipAnimationMaskType

---@return System.Int32 value:0
UnityEditor.ClipAnimationMaskType.CreateFromThisModel = 0
---@return System.Int32 value:1
UnityEditor.ClipAnimationMaskType.CopyFromOther = 1

---@class UnityEditor.ClipAnimationInfoCurve : System.ValueType
---@field public name System.String
---@field public curve UnityEngine.AnimationCurve
UnityEditor.ClipAnimationInfoCurve = {}
---@type UnityEditor.ClipAnimationInfoCurve
CS.UnityEditor.ClipAnimationInfoCurve = UnityEditor.ClipAnimationInfoCurve

---@class UnityEditor.ModelImporterClipAnimation : System.Object
---@field public takeName System.String @ setter getter
---@field public name System.String @ setter getter
---@field public firstFrame System.Single @ setter getter
---@field public lastFrame System.Single @ setter getter
---@field public wrapMode UnityEngine.WrapMode @ setter getter
---@field public loop System.Boolean @ setter getter
---@field public rotationOffset System.Single @ setter getter
---@field public heightOffset System.Single @ setter getter
---@field public cycleOffset System.Single @ setter getter
---@field public loopTime System.Boolean @ setter getter
---@field public loopPose System.Boolean @ setter getter
---@field public lockRootRotation System.Boolean @ setter getter
---@field public lockRootHeightY System.Boolean @ setter getter
---@field public lockRootPositionXZ System.Boolean @ setter getter
---@field public keepOriginalOrientation System.Boolean @ setter getter
---@field public keepOriginalPositionY System.Boolean @ setter getter
---@field public keepOriginalPositionXZ System.Boolean @ setter getter
---@field public heightFromFeet System.Boolean @ setter getter
---@field public mirror System.Boolean @ setter getter
---@field public maskType UnityEditor.ClipAnimationMaskType @ setter getter
---@field public maskSource UnityEngine.AvatarMask @ setter getter
---@field public events UnityEngine.AnimationEvent[] @ setter getter
---@field public curves UnityEditor.ClipAnimationInfoCurve[] @ setter getter
---@field public maskNeedsUpdating System.Boolean @  getter
---@field public additiveReferencePoseFrame System.Single @ setter getter
---@field public hasAdditiveReferencePose System.Boolean @ setter getter
UnityEditor.ModelImporterClipAnimation = {}
---@type UnityEditor.ModelImporterClipAnimation
CS.UnityEditor.ModelImporterClipAnimation = UnityEditor.ModelImporterClipAnimation

---@param mask UnityEngine.AvatarMask
---@return System.Void
function UnityEditor.ModelImporterClipAnimation:ConfigureMaskFromClip(mask)end
---@param mask UnityEngine.AvatarMask
---@return System.Void
function UnityEditor.ModelImporterClipAnimation:ConfigureClipFromMask(mask)end
---@param o System.Object
---@return System.Boolean
function UnityEditor.ModelImporterClipAnimation:Equals(o)end
---@return System.Int32
function UnityEditor.ModelImporterClipAnimation:GetHashCode()end
---@class UnityEditor.ModelImporterGenerateMaterials : System.Enum
UnityEditor.ModelImporterGenerateMaterials = {}
---@type UnityEditor.ModelImporterGenerateMaterials
CS.UnityEditor.ModelImporterGenerateMaterials = UnityEditor.ModelImporterGenerateMaterials

---@return System.Int32 value:0
UnityEditor.ModelImporterGenerateMaterials.None = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterGenerateMaterials.PerTexture = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterGenerateMaterials.PerSourceMaterial = 2

---@class UnityEditor.ModelImporterMaterialName : System.Enum
UnityEditor.ModelImporterMaterialName = {}
---@type UnityEditor.ModelImporterMaterialName
CS.UnityEditor.ModelImporterMaterialName = UnityEditor.ModelImporterMaterialName

---@return System.Int32 value:0
UnityEditor.ModelImporterMaterialName.BasedOnTextureName = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterMaterialName.BasedOnMaterialName = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterMaterialName.BasedOnModelNameAndMaterialName = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterMaterialName.BasedOnTextureName_Or_ModelNameAndMaterialName = 3

---@class UnityEditor.ModelImporterMaterialSearch : System.Enum
UnityEditor.ModelImporterMaterialSearch = {}
---@type UnityEditor.ModelImporterMaterialSearch
CS.UnityEditor.ModelImporterMaterialSearch = UnityEditor.ModelImporterMaterialSearch

---@return System.Int32 value:0
UnityEditor.ModelImporterMaterialSearch.Local = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterMaterialSearch.RecursiveUp = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterMaterialSearch.Everywhere = 2

---@class UnityEditor.ModelImporterMaterialLocation : System.Enum
UnityEditor.ModelImporterMaterialLocation = {}
---@type UnityEditor.ModelImporterMaterialLocation
CS.UnityEditor.ModelImporterMaterialLocation = UnityEditor.ModelImporterMaterialLocation

---@return System.Int32 value:0
UnityEditor.ModelImporterMaterialLocation.External = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterMaterialLocation.InPrefab = 1

---@class UnityEditor.ModelImporterTangentSpaceMode : System.Enum
UnityEditor.ModelImporterTangentSpaceMode = {}
---@type UnityEditor.ModelImporterTangentSpaceMode
CS.UnityEditor.ModelImporterTangentSpaceMode = UnityEditor.ModelImporterTangentSpaceMode

---@return System.Int32 value:0
UnityEditor.ModelImporterTangentSpaceMode.Import = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterTangentSpaceMode.Calculate = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterTangentSpaceMode.None = 2

---@class UnityEditor.ModelImporterNormals : System.Enum
UnityEditor.ModelImporterNormals = {}
---@type UnityEditor.ModelImporterNormals
CS.UnityEditor.ModelImporterNormals = UnityEditor.ModelImporterNormals

---@return System.Int32 value:0
UnityEditor.ModelImporterNormals.Import = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterNormals.Calculate = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterNormals.None = 2

---@class UnityEditor.ModelImporterNormalCalculationMode : System.Enum
UnityEditor.ModelImporterNormalCalculationMode = {}
---@type UnityEditor.ModelImporterNormalCalculationMode
CS.UnityEditor.ModelImporterNormalCalculationMode = UnityEditor.ModelImporterNormalCalculationMode

---@return System.Int32 value:0
UnityEditor.ModelImporterNormalCalculationMode.Unweighted_Legacy = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterNormalCalculationMode.Unweighted = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterNormalCalculationMode.AreaWeighted = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterNormalCalculationMode.AngleWeighted = 3
---@return System.Int32 value:4
UnityEditor.ModelImporterNormalCalculationMode.AreaAndAngleWeighted = 4

---@class UnityEditor.ModelImporterNormalSmoothingSource : System.Enum
UnityEditor.ModelImporterNormalSmoothingSource = {}
---@type UnityEditor.ModelImporterNormalSmoothingSource
CS.UnityEditor.ModelImporterNormalSmoothingSource = UnityEditor.ModelImporterNormalSmoothingSource

---@return System.Int32 value:0
UnityEditor.ModelImporterNormalSmoothingSource.PreferSmoothingGroups = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterNormalSmoothingSource.FromSmoothingGroups = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterNormalSmoothingSource.FromAngle = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterNormalSmoothingSource.None = 3

---@class UnityEditor.ModelImporterTangents : System.Enum
UnityEditor.ModelImporterTangents = {}
---@type UnityEditor.ModelImporterTangents
CS.UnityEditor.ModelImporterTangents = UnityEditor.ModelImporterTangents

---@return System.Int32 value:0
UnityEditor.ModelImporterTangents.Import = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterTangents.CalculateLegacy = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterTangents.None = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterTangents.CalculateMikk = 3
---@return System.Int32 value:4
UnityEditor.ModelImporterTangents.CalculateLegacyWithSplitTangents = 4

---@class UnityEditor.ModelImporterMeshCompression : System.Enum
UnityEditor.ModelImporterMeshCompression = {}
---@type UnityEditor.ModelImporterMeshCompression
CS.UnityEditor.ModelImporterMeshCompression = UnityEditor.ModelImporterMeshCompression

---@return System.Int32 value:0
UnityEditor.ModelImporterMeshCompression.Off = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterMeshCompression.Low = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterMeshCompression.Medium = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterMeshCompression.High = 3

---@class UnityEditor.ModelImporterIndexFormat : System.Enum
UnityEditor.ModelImporterIndexFormat = {}
---@type UnityEditor.ModelImporterIndexFormat
CS.UnityEditor.ModelImporterIndexFormat = UnityEditor.ModelImporterIndexFormat

---@return System.Int32 value:0
UnityEditor.ModelImporterIndexFormat.Auto = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterIndexFormat.UInt16 = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterIndexFormat.UInt32 = 2

---@class UnityEditor.ModelImporterAnimationCompression : System.Enum
UnityEditor.ModelImporterAnimationCompression = {}
---@type UnityEditor.ModelImporterAnimationCompression
CS.UnityEditor.ModelImporterAnimationCompression = UnityEditor.ModelImporterAnimationCompression

---@return System.Int32 value:0
UnityEditor.ModelImporterAnimationCompression.Off = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterAnimationCompression.KeyframeReduction = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterAnimationCompression.KeyframeReductionAndCompression = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterAnimationCompression.Optimal = 3

---@class UnityEditor.ModelImporterGenerateAnimations : System.Enum
UnityEditor.ModelImporterGenerateAnimations = {}
---@type UnityEditor.ModelImporterGenerateAnimations
CS.UnityEditor.ModelImporterGenerateAnimations = UnityEditor.ModelImporterGenerateAnimations

---@return System.Int32 value:0
UnityEditor.ModelImporterGenerateAnimations.None = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterGenerateAnimations.InOriginalRoots = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterGenerateAnimations.InNodes = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterGenerateAnimations.InRoot = 3
---@return System.Int32 value:4
UnityEditor.ModelImporterGenerateAnimations.GenerateAnimations = 4

---@class UnityEditor.ModelImporterAnimationType : System.Enum
UnityEditor.ModelImporterAnimationType = {}
---@type UnityEditor.ModelImporterAnimationType
CS.UnityEditor.ModelImporterAnimationType = UnityEditor.ModelImporterAnimationType

---@return System.Int32 value:0
UnityEditor.ModelImporterAnimationType.None = 0
---@return System.Int32 value:1
UnityEditor.ModelImporterAnimationType.Legacy = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterAnimationType.Generic = 2
---@return System.Int32 value:3
UnityEditor.ModelImporterAnimationType.Human = 3

---@class UnityEditor.ModelImporterHumanoidOversampling : System.Enum
UnityEditor.ModelImporterHumanoidOversampling = {}
---@type UnityEditor.ModelImporterHumanoidOversampling
CS.UnityEditor.ModelImporterHumanoidOversampling = UnityEditor.ModelImporterHumanoidOversampling

---@return System.Int32 value:1
UnityEditor.ModelImporterHumanoidOversampling.X1 = 1
---@return System.Int32 value:2
UnityEditor.ModelImporterHumanoidOversampling.X2 = 2

---@class UnityEditor.HumanTemplate : UnityEngine.Object
UnityEditor.HumanTemplate = {}
---@type UnityEditor.HumanTemplate
CS.UnityEditor.HumanTemplate = UnityEditor.HumanTemplate

---@param name System.String
---@param templateName System.String
---@return System.Void
function UnityEditor.HumanTemplate:Insert(name, templateName)end
---@param name System.String
---@return System.String
function UnityEditor.HumanTemplate:Find(name)end
---@return System.Void
function UnityEditor.HumanTemplate:ClearTemplate()end
---@class UnityEditor.TakeInfo : System.ValueType
---@field public name System.String
---@field public defaultClipName System.String
---@field public startTime System.Single
---@field public stopTime System.Single
---@field public bakeStartTime System.Single
---@field public bakeStopTime System.Single
---@field public sampleRate System.Single
UnityEditor.TakeInfo = {}
---@type UnityEditor.TakeInfo
CS.UnityEditor.TakeInfo = UnityEditor.TakeInfo

---@class UnityEditor.ModelImporter : UnityEditor.AssetImporter
---@field public generateMaterials UnityEditor.ModelImporterGenerateMaterials @ setter getter
---@field public importMaterials System.Boolean @ setter getter
---@field public materialName UnityEditor.ModelImporterMaterialName @ setter getter
---@field public materialSearch UnityEditor.ModelImporterMaterialSearch @ setter getter
---@field public materialLocation UnityEditor.ModelImporterMaterialLocation @ setter getter
---@field public globalScale System.Single @ setter getter
---@field public isUseFileUnitsSupported System.Boolean @  getter
---@field public importVisibility System.Boolean @ setter getter
---@field public useFileUnits System.Boolean @ setter getter
---@field public useFileScale System.Boolean @ setter getter
---@field public isFileScaleUsed System.Boolean @  getter
---@field public importBlendShapes System.Boolean @ setter getter
---@field public importCameras System.Boolean @ setter getter
---@field public importLights System.Boolean @ setter getter
---@field public addCollider System.Boolean @ setter getter
---@field public normalSmoothingAngle System.Single @ setter getter
---@field public splitTangentsAcrossSeams System.Boolean @ setter getter
---@field public swapUVChannels System.Boolean @ setter getter
---@field public weldVertices System.Boolean @ setter getter
---@field public keepQuads System.Boolean @ setter getter
---@field public indexFormat UnityEditor.ModelImporterIndexFormat @ setter getter
---@field public preserveHierarchy System.Boolean @ setter getter
---@field public generateSecondaryUV System.Boolean @ setter getter
---@field public secondaryUVAngleDistortion System.Single @ setter getter
---@field public secondaryUVAreaDistortion System.Single @ setter getter
---@field public secondaryUVHardAngle System.Single @ setter getter
---@field public secondaryUVPackMargin System.Single @ setter getter
---@field public generateAnimations UnityEditor.ModelImporterGenerateAnimations @ setter getter
---@field public importedTakeInfos UnityEditor.TakeInfo[] @  getter
---@field public transformPaths System.String[] @  getter
---@field public referencedClips System.String[] @  getter
---@field public isReadable System.Boolean @ setter getter
---@field public optimizeMesh System.Boolean @ setter getter
---@field public normalImportMode UnityEditor.ModelImporterTangentSpaceMode @ setter getter
---@field public tangentImportMode UnityEditor.ModelImporterTangentSpaceMode @ setter getter
---@field public importNormals UnityEditor.ModelImporterNormals @ setter getter
---@field public normalSmoothingSource UnityEditor.ModelImporterNormalSmoothingSource @ setter getter
---@field public importBlendShapeNormals UnityEditor.ModelImporterNormals @ setter getter
---@field public normalCalculationMode UnityEditor.ModelImporterNormalCalculationMode @ setter getter
---@field public importTangents UnityEditor.ModelImporterTangents @ setter getter
---@field public bakeIK System.Boolean @ setter getter
---@field public isBakeIKSupported System.Boolean @  getter
---@field public resampleRotations System.Boolean @ setter getter
---@field public resampleCurves System.Boolean @ setter getter
---@field public isTangentImportSupported System.Boolean @  getter
---@field public meshCompression UnityEditor.ModelImporterMeshCompression @ setter getter
---@field public importAnimation System.Boolean @ setter getter
---@field public optimizeGameObjects System.Boolean @ setter getter
---@field public extraExposedTransformPaths System.String[] @ setter getter
---@field public extraUserProperties System.String[] @ setter getter
---@field public animationCompression UnityEditor.ModelImporterAnimationCompression @ setter getter
---@field public importAnimatedCustomProperties System.Boolean @ setter getter
---@field public importConstraints System.Boolean @ setter getter
---@field public animationRotationError System.Single @ setter getter
---@field public animationPositionError System.Single @ setter getter
---@field public animationScaleError System.Single @ setter getter
---@field public animationWrapMode UnityEngine.WrapMode @ setter getter
---@field public animationType UnityEditor.ModelImporterAnimationType @ setter getter
---@field public humanoidOversampling UnityEditor.ModelImporterHumanoidOversampling @ setter getter
---@field public motionNodeName System.String @ setter getter
---@field public sourceAvatar UnityEngine.Avatar @ setter getter
---@field public humanDescription UnityEngine.HumanDescription @ setter getter
---@field public splitAnimations System.Boolean @ setter getter
---@field public clipAnimations UnityEditor.ModelImporterClipAnimation[] @ setter getter
---@field public defaultClipAnimations UnityEditor.ModelImporterClipAnimation[] @  getter
---@field public useSRGBMaterialColor System.Boolean @ setter getter
UnityEditor.ModelImporter = {}
---@type UnityEditor.ModelImporter
CS.UnityEditor.ModelImporter = UnityEditor.ModelImporter

---@param clip UnityEditor.ModelImporterClipAnimation
---@return System.Void
function UnityEditor.ModelImporter:CreateDefaultMaskForClip(clip)end
---@param folderPath System.String
---@return System.Boolean
function UnityEditor.ModelImporter:ExtractTextures(folderPath)end
---@param nameOption UnityEditor.ModelImporterMaterialName
---@param searchOption UnityEditor.ModelImporterMaterialSearch
---@return System.Boolean
function UnityEditor.ModelImporter:SearchAndRemapMaterials(nameOption, searchOption)end
---@class UnityEditor.EditorJsonUtility : System.Object
UnityEditor.EditorJsonUtility = {}
---@type UnityEditor.EditorJsonUtility
CS.UnityEditor.EditorJsonUtility = UnityEditor.EditorJsonUtility

---@overload fun(obj:System.Object, prettyPrint:System.Boolean):System.String
---@param obj System.Object
---@return System.String
function UnityEditor.EditorJsonUtility.ToJson(obj)end
---@param json System.String
---@param objectToOverwrite System.Object
---@return System.Void
function UnityEditor.EditorJsonUtility.FromJsonOverwrite(json, objectToOverwrite)end
---@class UnityEditor.L10n : System.Object
UnityEditor.L10n = {}
---@type UnityEditor.L10n
CS.UnityEditor.L10n = UnityEditor.L10n

---@overload fun(str_list:System.String[]):System.String[]
---@param str System.String
---@return System.String
function UnityEditor.L10n.Tr(str)end
---@param path System.String
---@return System.String
function UnityEditor.L10n.TrPath(path)end
---@class UnityEditor.SketchUpImportCamera : System.ValueType
---@field public position UnityEngine.Vector3
---@field public lookAt UnityEngine.Vector3
---@field public up UnityEngine.Vector3
---@field public fieldOfView System.Single
---@field public aspectRatio System.Single
---@field public orthoSize System.Single
---@field public isPerspective System.Boolean
UnityEditor.SketchUpImportCamera = {}
---@type UnityEditor.SketchUpImportCamera
CS.UnityEditor.SketchUpImportCamera = UnityEditor.SketchUpImportCamera

---@class UnityEditor.SketchUpImportScene : System.ValueType
---@field public camera UnityEditor.SketchUpImportCamera
---@field public name System.String
UnityEditor.SketchUpImportScene = {}
---@type UnityEditor.SketchUpImportScene
CS.UnityEditor.SketchUpImportScene = UnityEditor.SketchUpImportScene

---@class UnityEditor.SketchUpImporter : UnityEditor.ModelImporter
---@field public latitude System.Double @  getter
---@field public longitude System.Double @  getter
---@field public northCorrection System.Double @  getter
UnityEditor.SketchUpImporter = {}
---@type UnityEditor.SketchUpImporter
CS.UnityEditor.SketchUpImporter = UnityEditor.SketchUpImporter

---@return UnityEditor.SketchUpImportScene[]
function UnityEditor.SketchUpImporter:GetScenes()end
---@return UnityEditor.SketchUpImportCamera
function UnityEditor.SketchUpImporter:GetDefaultCamera()end
---@class UnityEditor.TerrainLayerUtility : System.Object
UnityEditor.TerrainLayerUtility = {}
---@type UnityEditor.TerrainLayerUtility
CS.UnityEditor.TerrainLayerUtility = UnityEditor.TerrainLayerUtility

---@param terrain UnityEngine.Terrain
---@param activeTerrainLayer System.Int32
---@return System.Int32
function UnityEditor.TerrainLayerUtility.ShowTerrainLayersSelectionHelper(terrain, activeTerrainLayer)end
---@param texture UnityEngine.Texture2D
---@return System.Void
function UnityEditor.TerrainLayerUtility.ValidateDiffuseTextureUI(texture)end
---@param texture UnityEngine.Texture2D
---@return System.Boolean
function UnityEditor.TerrainLayerUtility.CheckNormalMapTextureType(texture)end
---@param texture UnityEngine.Texture2D
---@param normalMapTextureType System.Boolean
---@return System.Void
function UnityEditor.TerrainLayerUtility.ValidateNormalMapTextureUI(texture, normalMapTextureType)end
---@param texture UnityEngine.Texture2D
---@return System.Void
function UnityEditor.TerrainLayerUtility.ValidateMaskMapTextureUI(texture)end
---@overload fun(tileSize:UnityEditor.SerializedProperty, tileOffset:UnityEditor.SerializedProperty):System.Void
---@param terrainLayer UnityEngine.TerrainLayer
---@return System.Void
function UnityEditor.TerrainLayerUtility.TilingSettingsUI(terrainLayer)end
---@class UnityEditor.GridBrush : UnityEngine.GridBrushBase
---@field public size UnityEngine.Vector3Int @ setter getter
---@field public pivot UnityEngine.Vector3Int @ setter getter
---@field public cells UnityEditor.GridBrush.BrushCell[] @  getter
---@field public cellCount System.Int32 @  getter
UnityEditor.GridBrush = {}
---@type UnityEditor.GridBrush
CS.UnityEditor.GridBrush = UnityEditor.GridBrush

---@overload fun(size:UnityEngine.Vector3Int, pivot:UnityEngine.Vector3Int):System.Void
---@param size UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:Init(size)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:Paint(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:Erase(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridBrush:BoxFill(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridBrush:BoxErase(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:FloodFill(gridLayout, brushTarget, position)end
---@param direction UnityEngine.GridBrushBase.RotationDirection
---@param layout UnityEngine.GridLayout.CellLayout
---@return System.Void
function UnityEditor.GridBrush:Rotate(direction, layout)end
---@param flip UnityEngine.GridBrushBase.FlipAxis
---@param layout UnityEngine.GridLayout.CellLayout
---@return System.Void
function UnityEditor.GridBrush:Flip(flip, layout)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@param pickStart UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:Pick(gridLayout, brushTarget, position, pickStart)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridBrush:MoveStart(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridBrush:MoveEnd(gridLayout, brushTarget, position)end
---@return System.Void
function UnityEditor.GridBrush:Reset()end
---@param size UnityEngine.Vector3Int
---@param pivot UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrush:UpdateSizeAndPivot(size, pivot)end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@return System.Void
function UnityEditor.GridBrush:SetTile(position, tile)end
---@param position UnityEngine.Vector3Int
---@param matrix UnityEngine.Matrix4x4
---@return System.Void
function UnityEditor.GridBrush:SetMatrix(position, matrix)end
---@param position UnityEngine.Vector3Int
---@param color UnityEngine.Color
---@return System.Void
function UnityEditor.GridBrush:SetColor(position, color)end
---@overload fun(x:System.Int32, y:System.Int32, z:System.Int32, sizex:System.Int32, sizey:System.Int32, sizez:System.Int32):System.Int32
---@overload fun(brushPosition:UnityEngine.Vector3Int):System.Int32
---@param x System.Int32
---@param y System.Int32
---@param z System.Int32
---@return System.Int32
function UnityEditor.GridBrush:GetCellIndex(x, y, z)end
---@param x System.Int32
---@param y System.Int32
---@param z System.Int32
---@return System.Int32
function UnityEditor.GridBrush:GetCellIndexWrapAround(x, y, z)end
---@return System.Int32
function UnityEditor.GridBrush:GetHashCode()end
---@class UnityEditor.GridBrush.BrushCell : System.Object
---@field public tile UnityEngine.Tilemaps.TileBase @ setter getter
---@field public matrix UnityEngine.Matrix4x4 @ setter getter
---@field public color UnityEngine.Color @ setter getter
UnityEditor.GridBrush.BrushCell = {}
---@type UnityEditor.GridBrush.BrushCell
CS.UnityEditor.GridBrush.BrushCell = UnityEditor.GridBrush.BrushCell

---@return System.Int32
function UnityEditor.GridBrush.BrushCell:GetHashCode()end
---@class UnityEditor.GridBrushEditor : UnityEditor.GridBrushEditorBase
---@field public brush UnityEditor.GridBrush @  getter
---@field public validTargets UnityEngine.GameObject[] @  getter
UnityEditor.GridBrushEditor = {}
---@type UnityEditor.GridBrushEditor
CS.UnityEditor.GridBrushEditor = UnityEditor.GridBrushEditor

---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@param tool UnityEngine.GridBrushBase.Tool
---@param executing System.Boolean
---@return System.Void
function UnityEditor.GridBrushEditor:OnPaintSceneGUI(gridLayout, brushTarget, position, tool, executing)end
---@return System.Void
function UnityEditor.GridBrushEditor:OnSelectionInspectorGUI()end
---@return System.Void
function UnityEditor.GridBrushEditor:OnMouseLeave()end
---@param tool UnityEngine.GridBrushBase.Tool
---@return System.Void
function UnityEditor.GridBrushEditor:OnToolDeactivated(tool)end
---@param brushTarget UnityEngine.GameObject
---@param tool UnityEngine.GridBrushBase.Tool
---@return System.Void
function UnityEditor.GridBrushEditor:RegisterUndo(brushTarget, tool)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrushEditor:PaintPreview(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridBrushEditor:BoxFillPreview(gridLayout, brushTarget, position)end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
---@return System.Void
function UnityEditor.GridBrushEditor:FloodFillPreview(gridLayout, brushTarget, position)end
---@return System.Void
function UnityEditor.GridBrushEditor:ClearPreview()end
---@class UnityEditor.GridBrushEditorBase : UnityEditor.Editor
---@field public validTargets UnityEngine.GameObject[] @  getter
UnityEditor.GridBrushEditorBase = {}
---@type UnityEditor.GridBrushEditorBase
CS.UnityEditor.GridBrushEditorBase = UnityEditor.GridBrushEditorBase

---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@param tool UnityEngine.GridBrushBase.Tool
---@param executing System.Boolean
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnPaintSceneGUI(gridLayout, brushTarget, position, tool, executing)end
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnPaintInspectorGUI()end
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnSelectionInspectorGUI()end
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnMouseLeave()end
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnMouseEnter()end
---@param tool UnityEngine.GridBrushBase.Tool
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnToolActivated(tool)end
---@param tool UnityEngine.GridBrushBase.Tool
---@return System.Void
function UnityEditor.GridBrushEditorBase:OnToolDeactivated(tool)end
---@param brushTarget UnityEngine.GameObject
---@param tool UnityEngine.GridBrushBase.Tool
---@return System.Void
function UnityEditor.GridBrushEditorBase:RegisterUndo(brushTarget, tool)end
---@class UnityEditor.GridPaintSortingAttribute : System.Attribute
UnityEditor.GridPaintSortingAttribute = {}
---@type UnityEditor.GridPaintSortingAttribute
CS.UnityEditor.GridPaintSortingAttribute = UnityEditor.GridPaintSortingAttribute

---@class UnityEditor.GridPalette : UnityEngine.ScriptableObject
---@field public cellSizing UnityEditor.GridPalette.CellSizing
UnityEditor.GridPalette = {}
---@type UnityEditor.GridPalette
CS.UnityEditor.GridPalette = UnityEditor.GridPalette

---@class UnityEditor.GridPalette.CellSizing : System.Enum
UnityEditor.GridPalette.CellSizing = {}
---@type UnityEditor.GridPalette.CellSizing
CS.UnityEditor.GridPalette.CellSizing = UnityEditor.GridPalette.CellSizing

---@return System.Int32 value:0
UnityEditor.GridPalette.CellSizing.Automatic = 0

---@class UnityEditor.GridSelection : UnityEngine.ScriptableObject
---@field public active System.Boolean @static  getter
---@field public position UnityEngine.BoundsInt @static setter getter
---@field public target UnityEngine.GameObject @static  getter
---@field public grid UnityEngine.Grid @static  getter
UnityEditor.GridSelection = {}
---@type UnityEditor.GridSelection
CS.UnityEditor.GridSelection = UnityEditor.GridSelection

---@param value System.Action
---@return System.Void
function UnityEditor.GridSelection.add_gridSelectionChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.GridSelection.remove_gridSelectionChanged(value)end
---@param target UnityEngine.Object
---@param bounds UnityEngine.BoundsInt
---@return System.Void
function UnityEditor.GridSelection.Select(target, bounds)end
---@return System.Void
function UnityEditor.GridSelection.Clear()end
---@class UnityEditor.EditorAnalytics : System.Object
---@field public enabled System.Boolean @static  getter
UnityEditor.EditorAnalytics = {}
---@type UnityEditor.EditorAnalytics
CS.UnityEditor.EditorAnalytics = UnityEditor.EditorAnalytics

---@overload fun(eventName:System.String, maxEventPerHour:System.Int32, maxItems:System.Int32, vendorKey:System.String, ver:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@param eventName System.String
---@param maxEventPerHour System.Int32
---@param maxItems System.Int32
---@param vendorKey System.String
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEditor.EditorAnalytics.RegisterEventWithLimit(eventName, maxEventPerHour, maxItems, vendorKey)end
---@overload fun(eventName:System.String, parameters:System.Object, ver:System.Int32):UnityEngine.Analytics.AnalyticsResult
---@param eventName System.String
---@param parameters System.Object
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEditor.EditorAnalytics.SendEventWithLimit(eventName, parameters)end
---@class UnityEditor.EditorAnalyticsSessionInfo : System.Object
---@field public id System.Int64 @static  getter
---@field public sessionCount System.Int64 @static  getter
---@field public elapsedTime System.Int64 @static  getter
---@field public focusedElapsedTime System.Int64 @static  getter
---@field public playbackElapsedTime System.Int64 @static  getter
---@field public activeElapsedTime System.Int64 @static  getter
---@field public userId System.String @static  getter
UnityEditor.EditorAnalyticsSessionInfo = {}
---@type UnityEditor.EditorAnalyticsSessionInfo
CS.UnityEditor.EditorAnalyticsSessionInfo = UnityEditor.EditorAnalyticsSessionInfo

---@class UnityEditor.ActiveEditorTracker : System.Object
---@field public activeEditors UnityEditor.Editor[] @  getter
---@field public isDirty System.Boolean @  getter
---@field public isLocked System.Boolean @ setter getter
---@field public inspectorMode UnityEditor.InspectorMode @ setter getter
---@field public hasComponentsWhichCannotBeMultiEdited System.Boolean @  getter
---@field public sharedTracker UnityEditor.ActiveEditorTracker @static  getter
UnityEditor.ActiveEditorTracker = {}
---@type UnityEditor.ActiveEditorTracker
CS.UnityEditor.ActiveEditorTracker = UnityEditor.ActiveEditorTracker

---@param o System.Object
---@return System.Boolean
function UnityEditor.ActiveEditorTracker:Equals(o)end
---@return System.Int32
function UnityEditor.ActiveEditorTracker:GetHashCode()end
---@return System.Void
function UnityEditor.ActiveEditorTracker:Destroy()end
---@param index System.Int32
---@return System.Int32
function UnityEditor.ActiveEditorTracker:GetVisible(index)end
---@param index System.Int32
---@param visible System.Int32
---@return System.Void
function UnityEditor.ActiveEditorTracker:SetVisible(index, visible)end
---@return System.Void
function UnityEditor.ActiveEditorTracker:ClearDirty()end
---@return System.Void
function UnityEditor.ActiveEditorTracker:RebuildIfNecessary()end
---@return System.Void
function UnityEditor.ActiveEditorTracker:ForceRebuild()end
---@return System.Void
function UnityEditor.ActiveEditorTracker:VerifyModifiedMonoBehaviours()end
---@param obj UnityEngine.Object
---@return UnityEditor.Editor
function UnityEditor.ActiveEditorTracker.MakeCustomEditor(obj)end
---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEditor.ActiveEditorTracker.HasCustomEditor(obj)end
---@class UnityEditor.ArrayUtility : System.Object
UnityEditor.ArrayUtility = {}
---@type UnityEditor.ArrayUtility
CS.UnityEditor.ArrayUtility = UnityEditor.ArrayUtility

---@param array T[]
---@param item any
---@return System.Void
function UnityEditor.ArrayUtility.Add(array, item)end
---@param lhs T[]
---@param rhs T[]
---@return System.Boolean
function UnityEditor.ArrayUtility.ArrayEquals(lhs, rhs)end
---@param lhs T[]
---@param rhs T[]
---@return System.Boolean
function UnityEditor.ArrayUtility.ArrayReferenceEquals(lhs, rhs)end
---@param array T[]
---@param items T[]
---@return System.Void
function UnityEditor.ArrayUtility.AddRange(array, items)end
---@param array T[]
---@param index System.Int32
---@param item any
---@return System.Void
function UnityEditor.ArrayUtility.Insert(array, index, item)end
---@param array T[]
---@param item any
---@return System.Void
function UnityEditor.ArrayUtility.Remove(array, item)end
---@param array T[]
---@param match any
---@return any
function UnityEditor.ArrayUtility.FindAll(array, match)end
---@param array T[]
---@param match any
---@return any
function UnityEditor.ArrayUtility.Find(array, match)end
---@param array T[]
---@param match any
---@return System.Int32
function UnityEditor.ArrayUtility.FindIndex(array, match)end
---@param array T[]
---@param value any
---@return System.Int32
function UnityEditor.ArrayUtility.IndexOf(array, value)end
---@param array T[]
---@param value any
---@return System.Int32
function UnityEditor.ArrayUtility.LastIndexOf(array, value)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function UnityEditor.ArrayUtility.RemoveAt(array, index)end
---@param array T[]
---@param item any
---@return System.Boolean
function UnityEditor.ArrayUtility.Contains(array, item)end
---@param array T[]
---@return System.Void
function UnityEditor.ArrayUtility.Clear(array)end
---@class UnityEditor.AssemblyReloadEvents : System.Object
UnityEditor.AssemblyReloadEvents = {}
---@type UnityEditor.AssemblyReloadEvents
CS.UnityEditor.AssemblyReloadEvents = UnityEditor.AssemblyReloadEvents

---@param value UnityEditor.AssemblyReloadEvents.AssemblyReloadCallback
---@return System.Void
function UnityEditor.AssemblyReloadEvents.add_beforeAssemblyReload(value)end
---@param value UnityEditor.AssemblyReloadEvents.AssemblyReloadCallback
---@return System.Void
function UnityEditor.AssemblyReloadEvents.remove_beforeAssemblyReload(value)end
---@param value UnityEditor.AssemblyReloadEvents.AssemblyReloadCallback
---@return System.Void
function UnityEditor.AssemblyReloadEvents.add_afterAssemblyReload(value)end
---@param value UnityEditor.AssemblyReloadEvents.AssemblyReloadCallback
---@return System.Void
function UnityEditor.AssemblyReloadEvents.remove_afterAssemblyReload(value)end
---@class UnityEditor.AssetDeleteResult : System.Enum
UnityEditor.AssetDeleteResult = {}
---@type UnityEditor.AssetDeleteResult
CS.UnityEditor.AssetDeleteResult = UnityEditor.AssetDeleteResult

---@return System.Int32 value:0
UnityEditor.AssetDeleteResult.DidNotDelete = 0
---@return System.Int32 value:1
UnityEditor.AssetDeleteResult.FailedDelete = 1
---@return System.Int32 value:2
UnityEditor.AssetDeleteResult.DidDelete = 2

---@class UnityEditor.AssetMoveResult : System.Enum
UnityEditor.AssetMoveResult = {}
---@type UnityEditor.AssetMoveResult
CS.UnityEditor.AssetMoveResult = UnityEditor.AssetMoveResult

---@return System.Int32 value:0
UnityEditor.AssetMoveResult.DidNotMove = 0
---@return System.Int32 value:1
UnityEditor.AssetMoveResult.FailedMove = 1
---@return System.Int32 value:2
UnityEditor.AssetMoveResult.DidMove = 2

---@class UnityEditor.AssetPostprocessor : System.Object
---@field public assetPath System.String @ setter getter
---@field public context UnityEditor.Experimental.AssetImporters.AssetImportContext @ setter getter
---@field public assetImporter UnityEditor.AssetImporter @  getter
---@field public preview UnityEngine.Texture2D @ setter getter
UnityEditor.AssetPostprocessor = {}
---@type UnityEditor.AssetPostprocessor
CS.UnityEditor.AssetPostprocessor = UnityEditor.AssetPostprocessor

---@overload fun(warning:System.String, context:UnityEngine.Object):System.Void
---@param warning System.String
---@return System.Void
function UnityEditor.AssetPostprocessor:LogWarning(warning)end
---@overload fun(warning:System.String, context:UnityEngine.Object):System.Void
---@param warning System.String
---@return System.Void
function UnityEditor.AssetPostprocessor:LogError(warning)end
---@return System.UInt32
function UnityEditor.AssetPostprocessor:GetVersion()end
---@return System.Int32
function UnityEditor.AssetPostprocessor:GetPostprocessOrder()end
---@class UnityEditor.BuildOptions : System.Enum
UnityEditor.BuildOptions = {}
---@type UnityEditor.BuildOptions
CS.UnityEditor.BuildOptions = UnityEditor.BuildOptions

---@return System.Int32 value:0
UnityEditor.BuildOptions.Il2CPP = 0
---@return System.Int32 value:1
UnityEditor.BuildOptions.Development = 1
---@return System.Int32 value:4
UnityEditor.BuildOptions.AutoRunPlayer = 4
---@return System.Int32 value:8
UnityEditor.BuildOptions.ShowBuiltPlayer = 8
---@return System.Int32 value:16
UnityEditor.BuildOptions.BuildAdditionalStreamedScenes = 16

---@class UnityEditor.BuildAssetBundleOptions : System.Enum
UnityEditor.BuildAssetBundleOptions = {}
---@type UnityEditor.BuildAssetBundleOptions
CS.UnityEditor.BuildAssetBundleOptions = UnityEditor.BuildAssetBundleOptions

---@return System.Int32 value:0
UnityEditor.BuildAssetBundleOptions.None = 0
---@return System.Int32 value:1
UnityEditor.BuildAssetBundleOptions.UncompressedAssetBundle = 1
---@return System.Int32 value:2
UnityEditor.BuildAssetBundleOptions.CollectDependencies = 2
---@return System.Int32 value:4
UnityEditor.BuildAssetBundleOptions.CompleteAssets = 4
---@return System.Int32 value:8
UnityEditor.BuildAssetBundleOptions.DisableWriteTypeTree = 8

---@class UnityEditor.AssetBundleBuild : System.ValueType
---@field public assetBundleName System.String
---@field public assetBundleVariant System.String
---@field public assetNames System.String[]
---@field public addressableNames System.String[]
UnityEditor.AssetBundleBuild = {}
---@type UnityEditor.AssetBundleBuild
CS.UnityEditor.AssetBundleBuild = UnityEditor.AssetBundleBuild

---@class UnityEditor.BuildPlayerOptions : System.ValueType
---@field public scenes System.String[] @ setter getter
---@field public locationPathName System.String @ setter getter
---@field public assetBundleManifestPath System.String @ setter getter
---@field public targetGroup UnityEditor.BuildTargetGroup @ setter getter
---@field public target UnityEditor.BuildTarget @ setter getter
---@field public options UnityEditor.BuildOptions @ setter getter
UnityEditor.BuildPlayerOptions = {}
---@type UnityEditor.BuildPlayerOptions
CS.UnityEditor.BuildPlayerOptions = UnityEditor.BuildPlayerOptions

---@class UnityEditor.BuildPipeline : System.Object
---@field public isBuildingPlayer System.Boolean @static  getter
UnityEditor.BuildPipeline = {}
---@type UnityEditor.BuildPipeline
CS.UnityEditor.BuildPipeline = UnityEditor.BuildPipeline

---@param platform UnityEditor.BuildTarget
---@return UnityEditor.BuildTargetGroup
function UnityEditor.BuildPipeline.GetBuildTargetGroup(platform)end
---@return System.Void
function UnityEditor.BuildPipeline.PushAssetDependencies()end
---@return System.Void
function UnityEditor.BuildPipeline.PopAssetDependencies()end
---@overload fun(levels:UnityEditor.EditorBuildSettingsScene[], locationPathName:System.String, target:UnityEditor.BuildTarget, options:UnityEditor.BuildOptions):UnityEditor.Build.Reporting.BuildReport
---@overload fun(levels:System.String[], locationPathName:System.String, target:UnityEditor.BuildTarget, options:UnityEditor.BuildOptions):UnityEditor.Build.Reporting.BuildReport
---@param buildPlayerOptions UnityEditor.BuildPlayerOptions
---@return UnityEditor.Build.Reporting.BuildReport
function UnityEditor.BuildPipeline.BuildPlayer(buildPlayerOptions)end
---@overload fun(levels:System.String[], locationPath:System.String, target:UnityEditor.BuildTarget, crc:System.UInt32):System.String
---@overload fun(levels:System.String[], locationPath:System.String, target:UnityEditor.BuildTarget, options:UnityEditor.BuildOptions):System.String
---@overload fun(levels:System.String[], locationPath:System.String, target:UnityEditor.BuildTarget, crc:System.UInt32, options:UnityEditor.BuildOptions):System.String
---@param levels System.String[]
---@param locationPath System.String
---@param target UnityEditor.BuildTarget
---@return System.String
function UnityEditor.BuildPipeline.BuildStreamedSceneAssetBundle(levels, locationPath, target)end
---@overload fun(mainAsset:UnityEngine.Object, assets:UnityEngine.Object[], pathName:System.String, crc:System.UInt32, assetBundleOptions:UnityEditor.BuildAssetBundleOptions, targetPlatform:UnityEditor.BuildTarget):System.Boolean
---@param mainAsset UnityEngine.Object
---@param assets UnityEngine.Object[]
---@param pathName System.String
---@param assetBundleOptions UnityEditor.BuildAssetBundleOptions
---@param targetPlatform UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.BuildPipeline.BuildAssetBundle(mainAsset, assets, pathName, assetBundleOptions, targetPlatform)end
---@overload fun(assets:UnityEngine.Object[], assetNames:System.String[], pathName:System.String, crc:System.UInt32, assetBundleOptions:UnityEditor.BuildAssetBundleOptions, targetPlatform:UnityEditor.BuildTarget):System.Boolean
---@param assets UnityEngine.Object[]
---@param assetNames System.String[]
---@param pathName System.String
---@param assetBundleOptions UnityEditor.BuildAssetBundleOptions
---@param targetPlatform UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.BuildPipeline.BuildAssetBundleExplicitAssetNames(assets, assetNames, pathName, assetBundleOptions, targetPlatform)end
---@overload fun(outputPath:System.String, builds:UnityEditor.AssetBundleBuild[], assetBundleOptions:UnityEditor.BuildAssetBundleOptions, targetPlatform:UnityEditor.BuildTarget):UnityEngine.AssetBundleManifest
---@param outputPath System.String
---@param assetBundleOptions UnityEditor.BuildAssetBundleOptions
---@param targetPlatform UnityEditor.BuildTarget
---@return UnityEngine.AssetBundleManifest
function UnityEditor.BuildPipeline.BuildAssetBundles(outputPath, assetBundleOptions, targetPlatform)end
---@param targetPath System.String
---@param crc System.UInt32
---@return System.Boolean
function UnityEditor.BuildPipeline.GetCRCForAssetBundle(targetPath, crc)end
---@param targetPath System.String
---@param hash UnityEngine.Hash128
---@return System.Boolean
function UnityEditor.BuildPipeline.GetHashForAssetBundle(targetPath, hash)end
---@param buildTargetGroup UnityEditor.BuildTargetGroup
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.BuildPipeline.IsBuildTargetSupported(buildTargetGroup, target)end
---@class UnityEditor.BuildPlayerWindow : UnityEditor.EditorWindow
UnityEditor.BuildPlayerWindow = {}
---@type UnityEditor.BuildPlayerWindow
CS.UnityEditor.BuildPlayerWindow = UnityEditor.BuildPlayerWindow

---@return System.Void
function UnityEditor.BuildPlayerWindow.ShowBuildPlayerWindow()end
---@param moduleName System.String
---@return System.String
function UnityEditor.BuildPlayerWindow.GetPlaybackEngineDownloadURL(moduleName)end
---@param func System.Func
---@return System.Void
function UnityEditor.BuildPlayerWindow.RegisterGetBuildPlayerOptionsHandler(func)end
---@param func System.Action
---@return System.Void
function UnityEditor.BuildPlayerWindow.RegisterBuildPlayerHandler(func)end
---@class UnityEditor.BuildPlayerWindow.BuildMethodException : System.Exception
UnityEditor.BuildPlayerWindow.BuildMethodException = {}
---@type UnityEditor.BuildPlayerWindow.BuildMethodException
CS.UnityEditor.BuildPlayerWindow.BuildMethodException = UnityEditor.BuildPlayerWindow.BuildMethodException

---@class UnityEditor.BuildPlayerWindow.DefaultBuildMethods : System.Object
UnityEditor.BuildPlayerWindow.DefaultBuildMethods = {}
---@type UnityEditor.BuildPlayerWindow.DefaultBuildMethods
CS.UnityEditor.BuildPlayerWindow.DefaultBuildMethods = UnityEditor.BuildPlayerWindow.DefaultBuildMethods

---@param options UnityEditor.BuildPlayerOptions
---@return System.Void
function UnityEditor.BuildPlayerWindow.DefaultBuildMethods.BuildPlayer(options)end
---@param defaultBuildPlayerOptions UnityEditor.BuildPlayerOptions
---@return UnityEditor.BuildPlayerOptions
function UnityEditor.BuildPlayerWindow.DefaultBuildMethods.GetBuildPlayerOptions(defaultBuildPlayerOptions)end
---@class UnityEditor.BuildTarget : System.Enum
UnityEditor.BuildTarget = {}
---@type UnityEditor.BuildTarget
CS.UnityEditor.BuildTarget = UnityEditor.BuildTarget

---@return System.Int32 value:2
UnityEditor.BuildTarget.StandaloneOSX = 2
---@return System.Int32 value:3
UnityEditor.BuildTarget.StandaloneOSXUniversal = 3
---@return System.Int32 value:4
UnityEditor.BuildTarget.StandaloneOSXIntel = 4
---@return System.Int32 value:5
UnityEditor.BuildTarget.StandaloneWindows = 5
---@return System.Int32 value:6
UnityEditor.BuildTarget.WebPlayer = 6
---@return System.Int32 value:7
UnityEditor.BuildTarget.WebPlayerStreamed = 7
---@return System.Int32 value:9
UnityEditor.BuildTarget.iOS = 9
---@return System.Int32 value:10
UnityEditor.BuildTarget.PS3 = 10
---@return System.Int32 value:11
UnityEditor.BuildTarget.XBOX360 = 11
---@return System.Int32 value:13
UnityEditor.BuildTarget.Android = 13
---@return System.Int32 value:17
UnityEditor.BuildTarget.StandaloneLinux = 17
---@return System.Int32 value:19
UnityEditor.BuildTarget.StandaloneWindows64 = 19
---@return System.Int32 value:20
UnityEditor.BuildTarget.WebGL = 20
---@return System.Int32 value:21
UnityEditor.BuildTarget.WSAPlayer = 21
---@return System.Int32 value:24
UnityEditor.BuildTarget.StandaloneLinux64 = 24
---@return System.Int32 value:25
UnityEditor.BuildTarget.StandaloneLinuxUniversal = 25
---@return System.Int32 value:26
UnityEditor.BuildTarget.WP8Player = 26
---@return System.Int32 value:27
UnityEditor.BuildTarget.StandaloneOSXIntel64 = 27
---@return System.Int32 value:28
UnityEditor.BuildTarget.BlackBerry = 28
---@return System.Int32 value:29
UnityEditor.BuildTarget.Tizen = 29
---@return System.Int32 value:30
UnityEditor.BuildTarget.PSP2 = 30
---@return System.Int32 value:31
UnityEditor.BuildTarget.PS4 = 31
---@return System.Int32 value:32
UnityEditor.BuildTarget.PSM = 32
---@return System.Int32 value:33
UnityEditor.BuildTarget.XboxOne = 33

---@class UnityEditor.BuildTargetGroup : System.Enum
UnityEditor.BuildTargetGroup = {}
---@type UnityEditor.BuildTargetGroup
CS.UnityEditor.BuildTargetGroup = UnityEditor.BuildTargetGroup

---@return System.Int32 value:0
UnityEditor.BuildTargetGroup.Unknown = 0
---@return System.Int32 value:1
UnityEditor.BuildTargetGroup.Standalone = 1
---@return System.Int32 value:2
UnityEditor.BuildTargetGroup.WebPlayer = 2
---@return System.Int32 value:4
UnityEditor.BuildTargetGroup.iPhone = 4
---@return System.Int32 value:5
UnityEditor.BuildTargetGroup.PS3 = 5
---@return System.Int32 value:6
UnityEditor.BuildTargetGroup.XBOX360 = 6
---@return System.Int32 value:7
UnityEditor.BuildTargetGroup.Android = 7
---@return System.Int32 value:13
UnityEditor.BuildTargetGroup.WebGL = 13
---@return System.Int32 value:14
UnityEditor.BuildTargetGroup.Metro = 14
---@return System.Int32 value:15
UnityEditor.BuildTargetGroup.WP8 = 15
---@return System.Int32 value:16
UnityEditor.BuildTargetGroup.BlackBerry = 16
---@return System.Int32 value:17
UnityEditor.BuildTargetGroup.Tizen = 17
---@return System.Int32 value:18
UnityEditor.BuildTargetGroup.PSP2 = 18
---@return System.Int32 value:19
UnityEditor.BuildTargetGroup.PS4 = 19
---@return System.Int32 value:20
UnityEditor.BuildTargetGroup.PSM = 20
---@return System.Int32 value:21
UnityEditor.BuildTargetGroup.XboxOne = 21
---@return System.Int32 value:22
UnityEditor.BuildTargetGroup.SamsungTV = 22
---@return System.Int32 value:23
UnityEditor.BuildTargetGroup.N3DS = 23
---@return System.Int32 value:24
UnityEditor.BuildTargetGroup.WiiU = 24

---@class UnityEditor.CallbackOrderAttribute : System.Attribute
UnityEditor.CallbackOrderAttribute = {}
---@type UnityEditor.CallbackOrderAttribute
CS.UnityEditor.CallbackOrderAttribute = UnityEditor.CallbackOrderAttribute

---@class UnityEditor.PostProcessAttribute : UnityEditor.CallbackOrderAttribute
UnityEditor.PostProcessAttribute = {}
---@type UnityEditor.PostProcessAttribute
CS.UnityEditor.PostProcessAttribute = UnityEditor.PostProcessAttribute

---@class UnityEditor.DefaultAsset : UnityEngine.Object
UnityEditor.DefaultAsset = {}
---@type UnityEditor.DefaultAsset
CS.UnityEditor.DefaultAsset = UnityEditor.DefaultAsset

---@class UnityEditor.DragAndDropVisualMode : System.Enum
UnityEditor.DragAndDropVisualMode = {}
---@type UnityEditor.DragAndDropVisualMode
CS.UnityEditor.DragAndDropVisualMode = UnityEditor.DragAndDropVisualMode

---@return System.Int32 value:0
UnityEditor.DragAndDropVisualMode.None = 0
---@return System.Int32 value:1
UnityEditor.DragAndDropVisualMode.Copy = 1
---@return System.Int32 value:2
UnityEditor.DragAndDropVisualMode.Link = 2
---@return System.Int32 value:4
UnityEditor.DragAndDropVisualMode.Generic = 4

---@class UnityEditor.DragAndDrop : System.Object
---@field public objectReferences UnityEngine.Object[] @static setter getter
---@field public paths System.String[] @static setter getter
---@field public activeControlID System.Int32 @static setter getter
---@field public visualMode UnityEditor.DragAndDropVisualMode @static setter getter
UnityEditor.DragAndDrop = {}
---@type UnityEditor.DragAndDrop
CS.UnityEditor.DragAndDrop = UnityEditor.DragAndDrop

---@return System.Void
function UnityEditor.DragAndDrop.PrepareStartDrag()end
---@param title System.String
---@return System.Void
function UnityEditor.DragAndDrop.StartDrag(title)end
---@param type System.String
---@return System.Object
function UnityEditor.DragAndDrop.GetGenericData(type)end
---@param type System.String
---@param data System.Object
---@return System.Void
function UnityEditor.DragAndDrop.SetGenericData(type, data)end
---@return System.Void
function UnityEditor.DragAndDrop.AcceptDrag()end
---@class UnityEditor.GizmoType : System.Enum
UnityEditor.GizmoType = {}
---@type UnityEditor.GizmoType
CS.UnityEditor.GizmoType = UnityEditor.GizmoType

---@return System.Int32 value:1
UnityEditor.GizmoType.Pickable = 1
---@return System.Int32 value:2
UnityEditor.GizmoType.NotInSelectionHierarchy = 2
---@return System.Int32 value:4
UnityEditor.GizmoType.Selected = 4

---@class UnityEditor.DrawGizmo : System.Attribute
---@field public drawnType System.Type
---@field public drawOptions UnityEditor.GizmoType
UnityEditor.DrawGizmo = {}
---@type UnityEditor.DrawGizmo
CS.UnityEditor.DrawGizmo = UnityEditor.DrawGizmo

---@class UnityEditor.EditorApplication : System.Object
---@field public isPlaying System.Boolean @static setter getter
---@field public isPlayingOrWillChangePlaymode System.Boolean @static  getter
---@field public isPaused System.Boolean @static setter getter
---@field public isCompiling System.Boolean @static  getter
---@field public isUpdating System.Boolean @static  getter
---@field public isRemoteConnected System.Boolean @static  getter
---@field public scriptingRuntimeVersion UnityEditor.ScriptingRuntimeVersion @static  getter
---@field public applicationContentsPath System.String @static  getter
---@field public applicationPath System.String @static  getter
---@field public isTemporaryProject System.Boolean @static  getter
---@field public timeSinceStartup System.Double @static  getter
---@field public isSceneDirty System.Boolean @static  getter
---@field public currentScene System.String @static setter getter
---@field public projectWindowItemOnGUI UnityEditor.EditorApplication.ProjectWindowItemCallback
---@field public hierarchyWindowItemOnGUI UnityEditor.EditorApplication.HierarchyWindowItemCallback
---@field public update UnityEditor.EditorApplication.CallbackFunction
---@field public delayCall UnityEditor.EditorApplication.CallbackFunction
---@field public hierarchyWindowChanged UnityEditor.EditorApplication.CallbackFunction
---@field public projectWindowChanged UnityEditor.EditorApplication.CallbackFunction
---@field public searchChanged UnityEditor.EditorApplication.CallbackFunction
---@field public modifierKeysChanged UnityEditor.EditorApplication.CallbackFunction
---@field public playmodeStateChanged UnityEditor.EditorApplication.CallbackFunction
---@field public contextualPropertyMenu UnityEditor.EditorApplication.SerializedPropertyCallbackFunction
UnityEditor.EditorApplication = {}
---@type UnityEditor.EditorApplication
CS.UnityEditor.EditorApplication = UnityEditor.EditorApplication

---@param path System.String
---@return System.Void
function UnityEditor.EditorApplication.LoadLevelInPlayMode(path)end
---@param path System.String
---@return System.Void
function UnityEditor.EditorApplication.LoadLevelAdditiveInPlayMode(path)end
---@param path System.String
---@return UnityEngine.AsyncOperation
function UnityEditor.EditorApplication.LoadLevelAsyncInPlayMode(path)end
---@param path System.String
---@return UnityEngine.AsyncOperation
function UnityEditor.EditorApplication.LoadLevelAdditiveAsyncInPlayMode(path)end
---@param projectPath System.String
---@param args System.String[]
---@return System.Void
function UnityEditor.EditorApplication.OpenProject(projectPath, args)end
---@return System.Void
function UnityEditor.EditorApplication.SaveAssets()end
---@return System.Void
function UnityEditor.EditorApplication.Step()end
---@return System.Void
function UnityEditor.EditorApplication.LockReloadAssemblies()end
---@return System.Void
function UnityEditor.EditorApplication.UnlockReloadAssemblies()end
---@param menuItemPath System.String
---@return System.Boolean
function UnityEditor.EditorApplication.ExecuteMenuItem(menuItemPath)end
---@param path System.String
---@return System.Void
function UnityEditor.EditorApplication.SetTemporaryProjectKeepPath(path)end
---@param returnValue System.Int32
---@return System.Void
function UnityEditor.EditorApplication.Exit(returnValue)end
---@return System.Void
function UnityEditor.EditorApplication.QueuePlayerLoopUpdate()end
---@return System.Void
function UnityEditor.EditorApplication.Beep()end
---@return System.Void
function UnityEditor.EditorApplication.RepaintProjectWindow()end
---@return System.Void
function UnityEditor.EditorApplication.RepaintAnimationWindow()end
---@return System.Void
function UnityEditor.EditorApplication.RepaintHierarchyWindow()end
---@return System.Void
function UnityEditor.EditorApplication.DirtyHierarchyWindowSorting()end
---@param value System.Func
---@return System.Void
function UnityEditor.EditorApplication.add_wantsToQuit(value)end
---@param value System.Func
---@return System.Void
function UnityEditor.EditorApplication.remove_wantsToQuit(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.add_quitting(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.remove_quitting(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.add_hierarchyChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.remove_hierarchyChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.add_projectChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.remove_projectChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.add_pauseStateChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.remove_pauseStateChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.add_playModeStateChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorApplication.remove_playModeStateChanged(value)end
---@return System.Void
function UnityEditor.EditorApplication.NewScene()end
---@return System.Void
function UnityEditor.EditorApplication.NewEmptyScene()end
---@param path System.String
---@return System.Boolean
function UnityEditor.EditorApplication.OpenScene(path)end
---@param path System.String
---@return System.Void
function UnityEditor.EditorApplication.OpenSceneAdditive(path)end
---@overload fun(path:System.String):System.Boolean
---@overload fun(path:System.String, saveAsCopy:System.Boolean):System.Boolean
---@return System.Boolean
function UnityEditor.EditorApplication.SaveScene()end
---@return System.Boolean
function UnityEditor.EditorApplication.SaveCurrentSceneIfUserWantsTo()end
---@return System.Void
function UnityEditor.EditorApplication.MarkSceneDirty()end
---@class UnityEditor.PlayModeStateChange : System.Enum
UnityEditor.PlayModeStateChange = {}
---@type UnityEditor.PlayModeStateChange
CS.UnityEditor.PlayModeStateChange = UnityEditor.PlayModeStateChange

---@return System.Int32 value:0
UnityEditor.PlayModeStateChange.EnteredEditMode = 0
---@return System.Int32 value:1
UnityEditor.PlayModeStateChange.ExitingEditMode = 1
---@return System.Int32 value:2
UnityEditor.PlayModeStateChange.EnteredPlayMode = 2
---@return System.Int32 value:3
UnityEditor.PlayModeStateChange.ExitingPlayMode = 3

---@class UnityEditor.PauseState : System.Enum
UnityEditor.PauseState = {}
---@type UnityEditor.PauseState
CS.UnityEditor.PauseState = UnityEditor.PauseState

---@return System.Int32 value:0
UnityEditor.PauseState.Paused = 0
---@return System.Int32 value:1
UnityEditor.PauseState.Unpaused = 1

---@class UnityEditor.InitializeOnLoadAttribute : System.Attribute
UnityEditor.InitializeOnLoadAttribute = {}
---@type UnityEditor.InitializeOnLoadAttribute
CS.UnityEditor.InitializeOnLoadAttribute = UnityEditor.InitializeOnLoadAttribute

---@class UnityEditor.InitializeOnLoadMethodAttribute : System.Attribute
UnityEditor.InitializeOnLoadMethodAttribute = {}
---@type UnityEditor.InitializeOnLoadMethodAttribute
CS.UnityEditor.InitializeOnLoadMethodAttribute = UnityEditor.InitializeOnLoadMethodAttribute

---@class UnityEditor.EditorBuildSettingsScene : System.Object
---@field public enabled System.Boolean @ setter getter
---@field public path System.String @ setter getter
---@field public guid UnityEditor.GUID @ setter getter
UnityEditor.EditorBuildSettingsScene = {}
---@type UnityEditor.EditorBuildSettingsScene
CS.UnityEditor.EditorBuildSettingsScene = UnityEditor.EditorBuildSettingsScene

---@param scenes UnityEditor.EditorBuildSettingsScene[]
---@return System.String[]
function UnityEditor.EditorBuildSettingsScene.GetActiveSceneList(scenes)end
---@param obj System.Object
---@return System.Int32
function UnityEditor.EditorBuildSettingsScene:CompareTo(obj)end
---@class UnityEditor.EditorBuildSettings : UnityEngine.Object
---@field public scenes UnityEditor.EditorBuildSettingsScene[] @static setter getter
UnityEditor.EditorBuildSettings = {}
---@type UnityEditor.EditorBuildSettings
CS.UnityEditor.EditorBuildSettings = UnityEditor.EditorBuildSettings

---@param value System.Action
---@return System.Void
function UnityEditor.EditorBuildSettings.add_sceneListChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.EditorBuildSettings.remove_sceneListChanged(value)end
---@param name System.String
---@return System.Boolean
function UnityEditor.EditorBuildSettings.RemoveConfigObject(name)end
---@return System.String[]
function UnityEditor.EditorBuildSettings.GetConfigObjectNames()end
---@param name System.String
---@param obj UnityEngine.Object
---@param overwrite System.Boolean
---@return System.Void
function UnityEditor.EditorBuildSettings.AddConfigObject(name, obj, overwrite)end
---@param name System.String
---@param result any
---@return System.Boolean
function UnityEditor.EditorBuildSettings.TryGetConfigObject(name, result)end
---@class UnityEditor.EditorGUI : System.Object
---@field public showMixedValue System.Boolean @static setter getter
---@field public actionKey System.Boolean @static  getter
---@field public indentLevel System.Int32 @static setter getter
UnityEditor.EditorGUI = {}
---@type UnityEditor.EditorGUI
CS.UnityEditor.EditorGUI = UnityEditor.EditorGUI

---@param name System.String
---@return System.Void
function UnityEditor.EditorGUI.FocusTextInControl(name)end
---@param disabled System.Boolean
---@return System.Void
function UnityEditor.EditorGUI.BeginDisabledGroup(disabled)end
---@return System.Void
function UnityEditor.EditorGUI.EndDisabledGroup()end
---@return System.Void
function UnityEditor.EditorGUI.BeginChangeCheck()end
---@return System.Boolean
function UnityEditor.EditorGUI.EndChangeCheck()end
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Void
function UnityEditor.EditorGUI.DropShadowLabel(position, text)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, value:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param value System.Boolean
---@return System.Boolean
function UnityEditor.EditorGUI.Toggle(position, value)end
---@overload fun(id:System.Int32, position:UnityEngine.Rect, label:UnityEngine.GUIContent, password:System.String, style:UnityEngine.GUIStyle):System.String
---@param id System.Int32
---@param position UnityEngine.Rect
---@param password System.String
---@param style UnityEngine.GUIStyle
---@return System.String
function UnityEditor.EditorGUI.DoPasswordField(id, position, password, style)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Single, leftValue:System.Single, rightValue:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Single, leftValue:System.Single, rightValue:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single, label:System.String):System.Void
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single, label:UnityEngine.GUIContent):System.Void
---@param position UnityEngine.Rect
---@param value System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@return System.Single
function UnityEditor.EditorGUI.Slider(position, value, leftValue, rightValue)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int32, leftValue:System.Int32, rightValue:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int32, leftValue:System.Int32, rightValue:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32, label:System.String):System.Void
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32, label:UnityEngine.GUIContent):System.Void
---@param position UnityEngine.Rect
---@param value System.Int32
---@param leftValue System.Int32
---@param rightValue System.Int32
---@return System.Int32
function UnityEditor.EditorGUI.IntSlider(position, value, leftValue, rightValue)end
---@overload fun(label:UnityEngine.GUIContent, position:UnityEngine.Rect, minValue:System.Single, maxValue:System.Single, minLimit:System.Single, maxLimit:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, minValue:System.Single, maxValue:System.Single, minLimit:System.Single, maxLimit:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, minValue:System.Single, maxValue:System.Single, minLimit:System.Single, maxLimit:System.Single):System.Void
---@param position UnityEngine.Rect
---@param minValue System.Single
---@param maxValue System.Single
---@param minLimit System.Single
---@param maxLimit System.Single
---@return System.Void
function UnityEditor.EditorGUI.MinMaxSlider(position, minValue, maxValue, minLimit, maxLimit)end
---@overload fun(position:UnityEngine.Rect, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, enumValue:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum, includeObsolete:System.Boolean):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum, includeObsolete:System.Boolean):System.Enum
---@param position UnityEngine.Rect
---@param enumValue System.Enum
---@return System.Enum
function UnityEditor.EditorGUI.EnumFlagsField(position, enumValue)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, objType:System.Type):System.Void
---@overload fun(position:UnityEngine.Rect, obj:UnityEngine.Object, objType:System.Type):UnityEngine.Object
---@overload fun(position:UnityEngine.Rect, obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean):UnityEngine.Object
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, objType:System.Type, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, obj:UnityEngine.Object, objType:System.Type):UnityEngine.Object
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, obj:UnityEngine.Object, objType:System.Type):UnityEngine.Object
---@overload fun(position:UnityEngine.Rect, label:System.String, obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean):UnityEngine.Object
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean):UnityEngine.Object
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@return System.Void
function UnityEditor.EditorGUI.ObjectField(position, property)end
---@param source UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.EditorGUI.IndentedRect(source)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Vector2):UnityEngine.Vector2
---@param position UnityEngine.Rect
---@param label System.String
---@param value UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEditor.EditorGUI.Vector2Field(position, label, value)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Vector3):UnityEngine.Vector3
---@param position UnityEngine.Rect
---@param label System.String
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.EditorGUI.Vector3Field(position, label, value)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Vector4):UnityEngine.Vector4
---@param position UnityEngine.Rect
---@param label System.String
---@param value UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEditor.EditorGUI.Vector4Field(position, label, value)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Vector2Int):UnityEngine.Vector2Int
---@param position UnityEngine.Rect
---@param label System.String
---@param value UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEditor.EditorGUI.Vector2IntField(position, label, value)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Vector3Int):UnityEngine.Vector3Int
---@param position UnityEngine.Rect
---@param label System.String
---@param value UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEditor.EditorGUI.Vector3IntField(position, label, value)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.Rect):UnityEngine.Rect
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Rect):UnityEngine.Rect
---@param position UnityEngine.Rect
---@param value UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.EditorGUI.RectField(position, value)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.RectInt):UnityEngine.RectInt
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.RectInt):UnityEngine.RectInt
---@param position UnityEngine.Rect
---@param value UnityEngine.RectInt
---@return UnityEngine.RectInt
function UnityEditor.EditorGUI.RectIntField(position, value)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.Bounds):UnityEngine.Bounds
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Bounds):UnityEngine.Bounds
---@param position UnityEngine.Rect
---@param value UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEditor.EditorGUI.BoundsField(position, value)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.BoundsInt):UnityEngine.BoundsInt
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.BoundsInt):UnityEngine.BoundsInt
---@param position UnityEngine.Rect
---@param value UnityEngine.BoundsInt
---@return UnityEngine.BoundsInt
function UnityEditor.EditorGUI.BoundsIntField(position, value)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, subLabels:UnityEngine.GUIContent[], values:System.Single[]):System.Void
---@param position UnityEngine.Rect
---@param subLabels UnityEngine.GUIContent[]
---@param values System.Single[]
---@return System.Void
function UnityEditor.EditorGUI.MultiFloatField(position, subLabels, values)end
---@param position UnityEngine.Rect
---@param subLabels UnityEngine.GUIContent[]
---@param values System.Int32[]
---@return System.Void
function UnityEditor.EditorGUI.MultiIntField(position, subLabels, values)end
---@overload fun(position:UnityEngine.Rect, subLabels:UnityEngine.GUIContent[], valuesIterator:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@param position UnityEngine.Rect
---@param subLabels UnityEngine.GUIContent[]
---@param valuesIterator UnityEditor.SerializedProperty
---@return System.Void
function UnityEditor.EditorGUI.MultiPropertyField(position, subLabels, valuesIterator)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.Color):UnityEngine.Color
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Color):UnityEngine.Color
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Color, showEyedropper:System.Boolean, showAlpha:System.Boolean, hdr:System.Boolean):UnityEngine.Color
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.Color, showEyedropper:System.Boolean, showAlpha:System.Boolean, hdr:System.Boolean, hdrConfig:UnityEditor.ColorPickerHDRConfig):UnityEngine.Color
---@param position UnityEngine.Rect
---@param value UnityEngine.Color
---@return UnityEngine.Color
function UnityEditor.EditorGUI.ColorField(position, value)end
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.AnimationCurve):UnityEngine.AnimationCurve
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.AnimationCurve):UnityEngine.AnimationCurve
---@overload fun(position:UnityEngine.Rect, value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect):UnityEngine.AnimationCurve
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, color:UnityEngine.Color, ranges:UnityEngine.Rect):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect):UnityEngine.AnimationCurve
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect):UnityEngine.AnimationCurve
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, color:UnityEngine.Color, ranges:UnityEngine.Rect, label:UnityEngine.GUIContent):System.Void
---@param position UnityEngine.Rect
---@param value UnityEngine.AnimationCurve
---@return UnityEngine.AnimationCurve
function UnityEditor.EditorGUI.CurveField(position, value)end
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, editor:UnityEditor.Editor):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, targetObj:UnityEngine.Object, expandable:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, targetObjs:UnityEngine.Object[], expandable:System.Boolean):System.Boolean
---@param position UnityEngine.Rect
---@param targetObjs UnityEngine.Object[]
---@return System.Void
function UnityEditor.EditorGUI.InspectorTitlebar(position, targetObjs)end
---@param position UnityEngine.Rect
---@param value System.Single
---@param text System.String
---@return System.Void
function UnityEditor.EditorGUI.ProgressBar(position, value, text)end
---@param position UnityEngine.Rect
---@param message System.String
---@param type UnityEditor.MessageType
---@return System.Void
function UnityEditor.EditorGUI.HelpBox(position, message, type)end
---@overload fun(totalPosition:UnityEngine.Rect, id:System.Int32, label:UnityEngine.GUIContent):UnityEngine.Rect
---@overload fun(totalPosition:UnityEngine.Rect, label:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(totalPosition:UnityEngine.Rect, id:System.Int32, label:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@param totalPosition UnityEngine.Rect
---@param label UnityEngine.GUIContent
---@return UnityEngine.Rect
function UnityEditor.EditorGUI.PrefixLabel(totalPosition, label)end
---@param totalPosition UnityEngine.Rect
---@param label UnityEngine.GUIContent
---@param property UnityEditor.SerializedProperty
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUI.BeginProperty(totalPosition, label, property)end
---@return System.Void
function UnityEditor.EditorGUI.EndProperty()end
---@overload fun(property:UnityEditor.SerializedProperty, includeChildren:System.Boolean):System.Single
---@overload fun(type:UnityEditor.SerializedPropertyType, label:UnityEngine.GUIContent):System.Single
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Single
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, includeChildren:System.Boolean):System.Single
---@param property UnityEditor.SerializedProperty
---@return System.Single
function UnityEditor.EditorGUI.GetPropertyHeight(property)end
---@param property UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.EditorGUI.CanCacheInspectorGUI(property)end
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, focusType:UnityEngine.FocusType, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param focusType UnityEngine.FocusType
---@return System.Boolean
function UnityEditor.EditorGUI.DropdownButton(position, content, focusType)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single, mipLevel:System.Single):System.Void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@return System.Void
function UnityEditor.EditorGUI.DrawTextureAlpha(position, image)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single, mipLevel:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single, mipLevel:System.Single, colorWriteMask:UnityEngine.Rendering.ColorWriteMask):System.Void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@return System.Void
function UnityEditor.EditorGUI.DrawTextureTransparent(position, image)end
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, mat:UnityEngine.Material):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, mat:UnityEngine.Material, scaleMode:UnityEngine.ScaleMode):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, mat:UnityEngine.Material, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, mat:UnityEngine.Material, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single, mipLevel:System.Single):System.Void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, mat:UnityEngine.Material, scaleMode:UnityEngine.ScaleMode, imageAspect:System.Single, mipLevel:System.Single, colorWriteMask:UnityEngine.Rendering.ColorWriteMask):System.Void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@return System.Void
function UnityEditor.EditorGUI.DrawPreviewTexture(position, image)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, label2:System.String):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, label2:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, label2:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, label2:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@param label System.String
---@return System.Void
function UnityEditor.EditorGUI.LabelField(position, label)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Boolean, labelStyle:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Boolean, labelStyle:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param label System.String
---@param value System.Boolean
---@return System.Boolean
function UnityEditor.EditorGUI.ToggleLeft(position, label, value)end
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, text:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, text:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, text:System.String, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEditor.EditorGUI.TextField(position, text)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty):System.Void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, text:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, text:System.String):System.String
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, controlId:System.Int32, text:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, controlId:System.Int32, text:System.String, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEditor.EditorGUI.DelayedTextField(position, text)end
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function UnityEditor.EditorGUI.TextArea(position, text)end
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Rect
---@param text System.String
---@return System.Void
function UnityEditor.EditorGUI.SelectableLabel(position, text)end
---@overload fun(position:UnityEngine.Rect, password:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, password:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, password:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, password:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, password:System.String, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param password System.String
---@return System.String
function UnityEditor.EditorGUI.PasswordField(position, password)end
---@overload fun(position:UnityEngine.Rect, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@return System.Single
function UnityEditor.EditorGUI.FloatField(position, value)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty):System.Void
---@overload fun(position:UnityEngine.Rect, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Single, style:UnityEngine.GUIStyle):System.Single
---@param position UnityEngine.Rect
---@param value System.Single
---@return System.Single
function UnityEditor.EditorGUI.DelayedFloatField(position, value)end
---@overload fun(position:UnityEngine.Rect, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Double):System.Double
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Double):System.Double
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@param position UnityEngine.Rect
---@param value System.Double
---@return System.Double
function UnityEditor.EditorGUI.DoubleField(position, value)end
---@overload fun(position:UnityEngine.Rect, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Double):System.Double
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Double):System.Double
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Double, style:UnityEngine.GUIStyle):System.Double
---@param position UnityEngine.Rect
---@param value System.Double
---@return System.Double
function UnityEditor.EditorGUI.DelayedDoubleField(position, value)end
---@overload fun(position:UnityEngine.Rect, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param value System.Int32
---@return System.Int32
function UnityEditor.EditorGUI.IntField(position, value)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty):System.Void
---@overload fun(position:UnityEngine.Rect, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param value System.Int32
---@return System.Int32
function UnityEditor.EditorGUI.DelayedIntField(position, value)end
---@overload fun(position:UnityEngine.Rect, value:System.Int64, style:UnityEngine.GUIStyle):System.Int64
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int64):System.Int64
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int64):System.Int64
---@overload fun(position:UnityEngine.Rect, label:System.String, value:System.Int64, style:UnityEngine.GUIStyle):System.Int64
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, value:System.Int64, style:UnityEngine.GUIStyle):System.Int64
---@param position UnityEngine.Rect
---@param value System.Int64
---@return System.Int64
function UnityEditor.EditorGUI.LongField(position, value)end
---@overload fun(position:UnityEngine.Rect, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[]):System.Int32
---@overload fun(position:UnityEngine.Rect, selectedIndex:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, selectedIndex:System.Int32, displayedOptions:System.String[]):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[]):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, selectedIndex:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param selectedIndex System.Int32
---@param displayedOptions System.String[]
---@return System.Int32
function UnityEditor.EditorGUI.Popup(position, selectedIndex, displayedOptions)end
---@overload fun(position:UnityEngine.Rect, selected:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, selected:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, selected:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum, checkEnabled:System.Func, includeObsolete:System.Boolean):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum, checkEnabled:System.Func):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum, checkEnabled:System.Func):System.Enum
---@param position UnityEngine.Rect
---@param selected System.Enum
---@return System.Enum
function UnityEditor.EditorGUI.EnumPopup(position, selected)end
---@overload fun(position:UnityEngine.Rect, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[]):System.Int32
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[]):System.Void
---@overload fun(position:UnityEngine.Rect, selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[]):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[]):System.Int32
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[], style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param selectedValue System.Int32
---@param displayedOptions System.String[]
---@param optionValues System.Int32[]
---@return System.Int32
function UnityEditor.EditorGUI.IntPopup(position, selectedValue, displayedOptions, optionValues)end
---@overload fun(position:UnityEngine.Rect, tag:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, tag:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, tag:System.String):System.String
---@overload fun(position:UnityEngine.Rect, label:System.String, tag:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, tag:System.String, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param tag System.String
---@return System.String
function UnityEditor.EditorGUI.TagField(position, tag)end
---@overload fun(position:UnityEngine.Rect, layer:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, layer:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, layer:System.Int32):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, layer:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, layer:System.Int32, style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param layer System.Int32
---@return System.Int32
function UnityEditor.EditorGUI.LayerField(position, layer)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, mask:System.Int32, displayedOptions:System.String[]):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, mask:System.Int32, displayedOptions:System.String[]):System.Int32
---@overload fun(position:UnityEngine.Rect, mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@overload fun(position:UnityEngine.Rect, label:System.String, mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle):System.Int32
---@param position UnityEngine.Rect
---@param mask System.Int32
---@param displayedOptions System.String[]
---@return System.Int32
function UnityEditor.EditorGUI.MaskField(position, mask, displayedOptions)end
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:UnityEngine.GUIContent):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:System.String, toggleOnLabelClick:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:UnityEngine.GUIContent, toggleOnLabelClick:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:System.String, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:System.String, toggleOnLabelClick:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(position:UnityEngine.Rect, foldout:System.Boolean, content:UnityEngine.GUIContent, toggleOnLabelClick:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@param position UnityEngine.Rect
---@param foldout System.Boolean
---@param content System.String
---@return System.Boolean
function UnityEditor.EditorGUI.Foldout(position, foldout, content)end
---@overload fun(totalPosition:UnityEngine.Rect, labelPosition:UnityEngine.Rect, label:UnityEngine.GUIContent, id:System.Int32):System.Void
---@overload fun(totalPosition:UnityEngine.Rect, labelPosition:UnityEngine.Rect, label:UnityEngine.GUIContent, id:System.Int32, style:UnityEngine.GUIStyle):System.Void
---@param totalPosition UnityEngine.Rect
---@param labelPosition UnityEngine.Rect
---@param label UnityEngine.GUIContent
---@return System.Void
function UnityEditor.EditorGUI.HandlePrefixLabel(totalPosition, labelPosition, label)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, includeChildren:System.Boolean):System.Boolean
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent):System.Boolean
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, includeChildren:System.Boolean):System.Boolean
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.EditorGUI.PropertyField(position, property)end
---@overload fun(position:UnityEngine.Rect, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, enumValue:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, enumValue:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@param position UnityEngine.Rect
---@param enumValue System.Enum
---@return System.Enum
function UnityEditor.EditorGUI.EnumMaskField(position, enumValue)end
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum):System.Enum
---@overload fun(position:UnityEngine.Rect, label:System.String, selected:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, selected:System.Enum, style:UnityEngine.GUIStyle):System.Enum
---@param position UnityEngine.Rect
---@param label System.String
---@param selected System.Enum
---@return System.Enum
function UnityEditor.EditorGUI.EnumMaskPopup(position, label, selected)end
---@overload fun(position:UnityEngine.Rect, label:System.String, gradient:UnityEngine.Gradient):UnityEngine.Gradient
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, gradient:UnityEngine.Gradient):UnityEngine.Gradient
---@overload fun(position:UnityEngine.Rect, label:UnityEngine.GUIContent, gradient:UnityEngine.Gradient, hdr:System.Boolean):UnityEngine.Gradient
---@param position UnityEngine.Rect
---@param gradient UnityEngine.Gradient
---@return UnityEngine.Gradient
function UnityEditor.EditorGUI.GradientField(position, gradient)end
---@param rect UnityEngine.Rect
---@param color UnityEngine.Color
---@return System.Void
function UnityEditor.EditorGUI.DrawRect(rect, color)end
---@class UnityEditor.EditorGUI.DisabledGroupScope : UnityEngine.GUI.Scope
UnityEditor.EditorGUI.DisabledGroupScope = {}
---@type UnityEditor.EditorGUI.DisabledGroupScope
CS.UnityEditor.EditorGUI.DisabledGroupScope = UnityEditor.EditorGUI.DisabledGroupScope

---@class UnityEditor.EditorGUI.DisabledScope : System.ValueType
UnityEditor.EditorGUI.DisabledScope = {}
---@type UnityEditor.EditorGUI.DisabledScope
CS.UnityEditor.EditorGUI.DisabledScope = UnityEditor.EditorGUI.DisabledScope

---@return System.Void
function UnityEditor.EditorGUI.DisabledScope:Dispose()end
---@class UnityEditor.EditorGUI.ChangeCheckScope : UnityEngine.GUI.Scope
---@field public changed System.Boolean @  getter
UnityEditor.EditorGUI.ChangeCheckScope = {}
---@type UnityEditor.EditorGUI.ChangeCheckScope
CS.UnityEditor.EditorGUI.ChangeCheckScope = UnityEditor.EditorGUI.ChangeCheckScope

---@class UnityEditor.EditorGUI.IndentLevelScope : UnityEngine.GUI.Scope
UnityEditor.EditorGUI.IndentLevelScope = {}
---@type UnityEditor.EditorGUI.IndentLevelScope
CS.UnityEditor.EditorGUI.IndentLevelScope = UnityEditor.EditorGUI.IndentLevelScope

---@class UnityEditor.EditorGUI.PropertyScope : UnityEngine.GUI.Scope
---@field public content UnityEngine.GUIContent @ setter getter
UnityEditor.EditorGUI.PropertyScope = {}
---@type UnityEditor.EditorGUI.PropertyScope
CS.UnityEditor.EditorGUI.PropertyScope = UnityEditor.EditorGUI.PropertyScope

---@class UnityEditor.EditorGUILayout : System.Object
UnityEditor.EditorGUILayout = {}
---@type UnityEditor.EditorGUILayout
CS.UnityEditor.EditorGUILayout = UnityEditor.EditorGUILayout

---@overload fun(foldout:System.Boolean, content:UnityEngine.GUIContent):System.Boolean
---@overload fun(foldout:System.Boolean, content:System.String, toggleOnLabelClick:System.Boolean):System.Boolean
---@overload fun(foldout:System.Boolean, content:UnityEngine.GUIContent, toggleOnLabelClick:System.Boolean):System.Boolean
---@overload fun(foldout:System.Boolean, content:System.String, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(foldout:System.Boolean, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(foldout:System.Boolean, content:System.String, toggleOnLabelClick:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@overload fun(foldout:System.Boolean, content:UnityEngine.GUIContent, toggleOnLabelClick:System.Boolean, style:UnityEngine.GUIStyle):System.Boolean
---@param foldout System.Boolean
---@param content System.String
---@return System.Boolean
function UnityEditor.EditorGUILayout.Foldout(foldout, content)end
---@overload fun(label:UnityEngine.GUIContent):System.Void
---@overload fun(label:System.String, followingStyle:UnityEngine.GUIStyle):System.Void
---@overload fun(label:UnityEngine.GUIContent, followingStyle:UnityEngine.GUIStyle):System.Void
---@overload fun(label:System.String, followingStyle:UnityEngine.GUIStyle, labelStyle:UnityEngine.GUIStyle):System.Void
---@overload fun(label:UnityEngine.GUIContent, followingStyle:UnityEngine.GUIStyle, labelStyle:UnityEngine.GUIStyle):System.Void
---@param label System.String
---@return System.Void
function UnityEditor.EditorGUILayout.PrefixLabel(label)end
---@overload fun(label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, label2:System.String, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:UnityEngine.GUIContent, label2:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, label2:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:UnityEngine.GUIContent, label2:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param label System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEditor.EditorGUILayout.LabelField(label, options)end
---@overload fun(label:System.String, value:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(label:UnityEngine.GUIContent, value:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(value:System.Boolean, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(label:System.String, value:System.Boolean, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(label:UnityEngine.GUIContent, value:System.Boolean, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param value System.Boolean
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEditor.EditorGUILayout.Toggle(value, options)end
---@overload fun(label:UnityEngine.GUIContent, value:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(label:System.String, value:System.Boolean, labelStyle:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(label:UnityEngine.GUIContent, value:System.Boolean, labelStyle:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param label System.String
---@param value System.Boolean
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEditor.EditorGUILayout.ToggleLeft(label, value, options)end
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEditor.EditorGUILayout.TextField(text, options)end
---@overload fun(property:UnityEditor.SerializedProperty, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, text:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEditor.EditorGUILayout.DelayedTextField(text, options)end
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEditor.EditorGUILayout.TextArea(text, options)end
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEditor.EditorGUILayout.SelectableLabel(text, options)end
---@overload fun(password:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, password:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, password:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, password:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, password:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param password System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEditor.EditorGUILayout.PasswordField(password, options)end
---@overload fun(value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:System.String, value:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:UnityEngine.GUIContent, value:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:System.String, value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:UnityEngine.GUIContent, value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEditor.EditorGUILayout.FloatField(value, options)end
---@overload fun(property:UnityEditor.SerializedProperty, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:System.String, value:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:UnityEngine.GUIContent, value:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:UnityEngine.GUIContent, value:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Single
---@param value System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEditor.EditorGUILayout.DelayedFloatField(value, options)end
---@overload fun(value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:System.String, value:System.Double, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:UnityEngine.GUIContent, value:System.Double, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:System.String, value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:UnityEngine.GUIContent, value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@param value System.Double
---@param options UnityEngine.GUILayoutOption[]
---@return System.Double
function UnityEditor.EditorGUILayout.DoubleField(value, options)end
---@overload fun(value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:System.String, value:System.Double, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:UnityEngine.GUIContent, value:System.Double, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:System.String, value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@overload fun(label:UnityEngine.GUIContent, value:System.Double, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Double
---@param value System.Double
---@param options UnityEngine.GUILayoutOption[]
---@return System.Double
function UnityEditor.EditorGUILayout.DelayedDoubleField(value, options)end
---@overload fun(value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, value:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, value:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param value System.Int32
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.IntField(value, options)end
---@overload fun(property:UnityEditor.SerializedProperty, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, value:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, value:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, value:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param value System.Int32
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.DelayedIntField(value, options)end
---@overload fun(value:System.Int64, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int64
---@overload fun(label:System.String, value:System.Int64, options:UnityEngine.GUILayoutOption[]):System.Int64
---@overload fun(label:UnityEngine.GUIContent, value:System.Int64, options:UnityEngine.GUILayoutOption[]):System.Int64
---@overload fun(label:System.String, value:System.Int64, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int64
---@overload fun(label:UnityEngine.GUIContent, value:System.Int64, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int64
---@param value System.Int64
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int64
function UnityEditor.EditorGUILayout.LongField(value, options)end
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, value:System.Single, leftValue:System.Single, rightValue:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(label:UnityEngine.GUIContent, value:System.Single, leftValue:System.Single, rightValue:System.Single, options:UnityEngine.GUILayoutOption[]):System.Single
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single, label:System.String, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Single, rightValue:System.Single, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@param value System.Single
---@param leftValue System.Single
---@param rightValue System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEditor.EditorGUILayout.Slider(value, leftValue, rightValue, options)end
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, value:System.Int32, leftValue:System.Int32, rightValue:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, value:System.Int32, leftValue:System.Int32, rightValue:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32, label:System.String, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(property:UnityEditor.SerializedProperty, leftValue:System.Int32, rightValue:System.Int32, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@param value System.Int32
---@param leftValue System.Int32
---@param rightValue System.Int32
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.IntSlider(value, leftValue, rightValue, options)end
---@overload fun(label:System.String, minValue:System.Single, maxValue:System.Single, minLimit:System.Single, maxLimit:System.Single, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:UnityEngine.GUIContent, minValue:System.Single, maxValue:System.Single, minLimit:System.Single, maxLimit:System.Single, options:UnityEngine.GUILayoutOption[]):System.Void
---@param minValue System.Single
---@param maxValue System.Single
---@param minLimit System.Single
---@param maxLimit System.Single
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEditor.EditorGUILayout.MinMaxSlider(minValue, maxValue, minLimit, maxLimit, options)end
---@overload fun(selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selectedIndex:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, selectedIndex:System.Int32, displayedOptions:System.String[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, selectedIndex:System.Int32, displayedOptions:System.String[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, selectedIndex:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, selectedIndex:System.Int32, displayedOptions:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param selectedIndex System.Int32
---@param displayedOptions System.String[]
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.Popup(selectedIndex, displayedOptions, options)end
---@overload fun(selected:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, selected:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, selected:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, checkEnabled:System.Func, includeObsolete:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, checkEnabled:System.Func, includeObsolete:System.Boolean, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@param selected System.Enum
---@param options UnityEngine.GUILayoutOption[]
---@return System.Enum
function UnityEditor.EditorGUILayout.EnumPopup(selected, options)end
---@overload fun(selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(property:UnityEditor.SerializedProperty, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(property:UnityEditor.SerializedProperty, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, selectedValue:System.Int32, displayedOptions:System.String[], optionValues:System.Int32[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, selectedValue:System.Int32, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(property:UnityEditor.SerializedProperty, displayedOptions:UnityEngine.GUIContent[], optionValues:System.Int32[], label:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Void
---@param selectedValue System.Int32
---@param displayedOptions System.String[]
---@param optionValues System.Int32[]
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.IntPopup(selectedValue, displayedOptions, optionValues, options)end
---@overload fun(tag:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, tag:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, tag:System.String, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:System.String, tag:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(label:UnityEngine.GUIContent, tag:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param tag System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function UnityEditor.EditorGUILayout.TagField(tag, options)end
---@overload fun(layer:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, layer:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, layer:System.Int32, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, layer:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, layer:System.Int32, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param layer System.Int32
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.LayerField(layer, options)end
---@overload fun(label:UnityEngine.GUIContent, mask:System.Int32, displayedOptions:System.String[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, mask:System.Int32, displayedOptions:System.String[], options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:UnityEngine.GUIContent, mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@overload fun(label:System.String, mask:System.Int32, displayedOptions:System.String[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Int32
---@param mask System.Int32
---@param displayedOptions System.String[]
---@param options UnityEngine.GUILayoutOption[]
---@return System.Int32
function UnityEditor.EditorGUILayout.MaskField(mask, displayedOptions, options)end
---@overload fun(enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, enumValue:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, includeObsolete:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, includeObsolete:System.Boolean, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@param enumValue System.Enum
---@param options UnityEngine.GUILayoutOption[]
---@return System.Enum
function UnityEditor.EditorGUILayout.EnumFlagsField(enumValue, options)end
---@overload fun(obj:UnityEngine.Object, objType:System.Type, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(property:UnityEditor.SerializedProperty, objType:System.Type, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@overload fun(label:System.String, obj:UnityEngine.Object, objType:System.Type, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@overload fun(label:UnityEngine.GUIContent, obj:UnityEngine.Object, objType:System.Type, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@overload fun(property:UnityEditor.SerializedProperty, objType:System.Type, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@overload fun(label:UnityEngine.GUIContent, obj:UnityEngine.Object, objType:System.Type, allowSceneObjects:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Object
---@param property UnityEditor.SerializedProperty
---@param options UnityEngine.GUILayoutOption[]
---@return System.Void
function UnityEditor.EditorGUILayout.ObjectField(property, options)end
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Vector2, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@param label System.String
---@param value UnityEngine.Vector2
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2
function UnityEditor.EditorGUILayout.Vector2Field(label, value, options)end
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Vector3, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector3
---@param label System.String
---@param value UnityEngine.Vector3
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector3
function UnityEditor.EditorGUILayout.Vector3Field(label, value, options)end
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Vector4, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector4
---@param label System.String
---@param value UnityEngine.Vector4
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector4
function UnityEditor.EditorGUILayout.Vector4Field(label, value, options)end
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Vector2Int, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2Int
---@param label System.String
---@param value UnityEngine.Vector2Int
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2Int
function UnityEditor.EditorGUILayout.Vector2IntField(label, value, options)end
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Vector3Int, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector3Int
---@param label System.String
---@param value UnityEngine.Vector3Int
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector3Int
function UnityEditor.EditorGUILayout.Vector3IntField(label, value, options)end
---@overload fun(label:System.String, value:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param value UnityEngine.Rect
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEditor.EditorGUILayout.RectField(value, options)end
---@overload fun(label:System.String, value:UnityEngine.RectInt, options:UnityEngine.GUILayoutOption[]):UnityEngine.RectInt
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.RectInt, options:UnityEngine.GUILayoutOption[]):UnityEngine.RectInt
---@param value UnityEngine.RectInt
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.RectInt
function UnityEditor.EditorGUILayout.RectIntField(value, options)end
---@overload fun(label:System.String, value:UnityEngine.Bounds, options:UnityEngine.GUILayoutOption[]):UnityEngine.Bounds
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Bounds, options:UnityEngine.GUILayoutOption[]):UnityEngine.Bounds
---@param value UnityEngine.Bounds
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Bounds
function UnityEditor.EditorGUILayout.BoundsField(value, options)end
---@overload fun(label:System.String, value:UnityEngine.BoundsInt, options:UnityEngine.GUILayoutOption[]):UnityEngine.BoundsInt
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.BoundsInt, options:UnityEngine.GUILayoutOption[]):UnityEngine.BoundsInt
---@param value UnityEngine.BoundsInt
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.BoundsInt
function UnityEditor.EditorGUILayout.BoundsIntField(value, options)end
---@overload fun(label:System.String, value:UnityEngine.Color, options:UnityEngine.GUILayoutOption[]):UnityEngine.Color
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Color, options:UnityEngine.GUILayoutOption[]):UnityEngine.Color
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Color, showEyedropper:System.Boolean, showAlpha:System.Boolean, hdr:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Color
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Color, showEyedropper:System.Boolean, showAlpha:System.Boolean, hdr:System.Boolean, hdrConfig:UnityEditor.ColorPickerHDRConfig, options:UnityEngine.GUILayoutOption[]):UnityEngine.Color
---@param value UnityEngine.Color
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Color
function UnityEditor.EditorGUILayout.ColorField(value, options)end
---@overload fun(label:System.String, value:UnityEngine.AnimationCurve, options:UnityEngine.GUILayoutOption[]):UnityEngine.AnimationCurve
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.AnimationCurve, options:UnityEngine.GUILayoutOption[]):UnityEngine.AnimationCurve
---@overload fun(value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):UnityEngine.AnimationCurve
---@overload fun(property:UnityEditor.SerializedProperty, color:UnityEngine.Color, ranges:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):System.Void
---@overload fun(label:System.String, value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):UnityEngine.AnimationCurve
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.AnimationCurve, color:UnityEngine.Color, ranges:UnityEngine.Rect, options:UnityEngine.GUILayoutOption[]):UnityEngine.AnimationCurve
---@overload fun(property:UnityEditor.SerializedProperty, color:UnityEngine.Color, ranges:UnityEngine.Rect, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Void
---@param value UnityEngine.AnimationCurve
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.AnimationCurve
function UnityEditor.EditorGUILayout.CurveField(value, options)end
---@overload fun(foldout:System.Boolean, targetObj:UnityEngine.Object):System.Boolean
---@overload fun(foldout:System.Boolean, targetObjs:UnityEngine.Object[]):System.Boolean
---@overload fun(foldout:System.Boolean, editor:UnityEditor.Editor):System.Boolean
---@overload fun(foldout:System.Boolean, targetObj:UnityEngine.Object, expandable:System.Boolean):System.Boolean
---@overload fun(foldout:System.Boolean, targetObjs:UnityEngine.Object[], expandable:System.Boolean):System.Boolean
---@param targetObjs UnityEngine.Object[]
---@return System.Void
function UnityEditor.EditorGUILayout.InspectorTitlebar(targetObjs)end
---@overload fun(content:UnityEngine.GUIContent):System.Void
---@overload fun(message:System.String, type:UnityEditor.MessageType):System.Void
---@overload fun(message:System.String, type:UnityEditor.MessageType, wide:System.Boolean):System.Void
---@param content UnityEngine.GUIContent
---@param wide System.Boolean
---@return System.Void
function UnityEditor.EditorGUILayout.HelpBox(content, wide)end
---@return System.Void
function UnityEditor.EditorGUILayout.Space()end
---@return System.Void
function UnityEditor.EditorGUILayout.Separator()end
---@overload fun(label:UnityEngine.GUIContent, toggle:System.Boolean):System.Boolean
---@param label System.String
---@param toggle System.Boolean
---@return System.Boolean
function UnityEditor.EditorGUILayout.BeginToggleGroup(label, toggle)end
---@return System.Void
function UnityEditor.EditorGUILayout.EndToggleGroup()end
---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEditor.EditorGUILayout.BeginHorizontal(options)end
---@return System.Void
function UnityEditor.EditorGUILayout.EndHorizontal()end
---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEditor.EditorGUILayout.BeginVertical(options)end
---@return System.Void
function UnityEditor.EditorGUILayout.EndVertical()end
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:System.Boolean, alwaysShowVertical:System.Boolean, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, background:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@param scrollPosition UnityEngine.Vector2
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2
function UnityEditor.EditorGUILayout.BeginScrollView(scrollPosition, options)end
---@return System.Void
function UnityEditor.EditorGUILayout.EndScrollView()end
---@overload fun(property:UnityEditor.SerializedProperty, includeChildren:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@overload fun(property:UnityEditor.SerializedProperty, label:UnityEngine.GUIContent, includeChildren:System.Boolean, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param property UnityEditor.SerializedProperty
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEditor.EditorGUILayout.PropertyField(property, options)end
---@overload fun(hasLabel:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(hasLabel:System.Boolean, height:System.Single, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(hasLabel:System.Boolean, height:System.Single, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEditor.EditorGUILayout.GetControlRect(options)end
---@param value System.Single
---@return System.Boolean
function UnityEditor.EditorGUILayout.BeginFadeGroup(value)end
---@return System.Void
function UnityEditor.EditorGUILayout.EndFadeGroup()end
---@overload fun(content:UnityEngine.GUIContent, focusType:UnityEngine.FocusType, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Boolean
---@param content UnityEngine.GUIContent
---@param focusType UnityEngine.FocusType
---@param options UnityEngine.GUILayoutOption[]
---@return System.Boolean
function UnityEditor.EditorGUILayout.DropdownButton(content, focusType, options)end
---@overload fun(enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, enumValue:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, enumValue:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@param enumValue System.Enum
---@param options UnityEngine.GUILayoutOption[]
---@return System.Enum
function UnityEditor.EditorGUILayout.EnumMaskField(enumValue, options)end
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:System.String, selected:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@overload fun(label:UnityEngine.GUIContent, selected:System.Enum, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.Enum
---@param label System.String
---@param selected System.Enum
---@param options UnityEngine.GUILayoutOption[]
---@return System.Enum
function UnityEditor.EditorGUILayout.EnumMaskPopup(label, selected, options)end
---@overload fun(label:System.String, value:UnityEngine.Gradient, options:UnityEngine.GUILayoutOption[]):UnityEngine.Gradient
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Gradient, options:UnityEngine.GUILayoutOption[]):UnityEngine.Gradient
---@overload fun(label:UnityEngine.GUIContent, value:UnityEngine.Gradient, hdr:System.Boolean, options:UnityEngine.GUILayoutOption[]):UnityEngine.Gradient
---@param value UnityEngine.Gradient
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Gradient
function UnityEditor.EditorGUILayout.GradientField(value, options)end
---@param knobSize UnityEngine.Vector2
---@param value System.Single
---@param minValue System.Single
---@param maxValue System.Single
---@param unit System.String
---@param backgroundColor UnityEngine.Color
---@param activeColor UnityEngine.Color
---@param showValue System.Boolean
---@param options UnityEngine.GUILayoutOption[]
---@return System.Single
function UnityEditor.EditorGUILayout.Knob(knobSize, value, minValue, maxValue, unit, backgroundColor, activeColor, showValue, options)end
---@class UnityEditor.EditorGUILayout.ToggleGroupScope : UnityEngine.GUI.Scope
---@field public enabled System.Boolean @ setter getter
UnityEditor.EditorGUILayout.ToggleGroupScope = {}
---@type UnityEditor.EditorGUILayout.ToggleGroupScope
CS.UnityEditor.EditorGUILayout.ToggleGroupScope = UnityEditor.EditorGUILayout.ToggleGroupScope

---@class UnityEditor.EditorGUILayout.HorizontalScope : UnityEngine.GUI.Scope
---@field public rect UnityEngine.Rect @ setter getter
UnityEditor.EditorGUILayout.HorizontalScope = {}
---@type UnityEditor.EditorGUILayout.HorizontalScope
CS.UnityEditor.EditorGUILayout.HorizontalScope = UnityEditor.EditorGUILayout.HorizontalScope

---@class UnityEditor.EditorGUILayout.VerticalScope : UnityEngine.GUI.Scope
---@field public rect UnityEngine.Rect @ setter getter
UnityEditor.EditorGUILayout.VerticalScope = {}
---@type UnityEditor.EditorGUILayout.VerticalScope
CS.UnityEditor.EditorGUILayout.VerticalScope = UnityEditor.EditorGUILayout.VerticalScope

---@class UnityEditor.EditorGUILayout.ScrollViewScope : UnityEngine.GUI.Scope
---@field public scrollPosition UnityEngine.Vector2 @ setter getter
---@field public handleScrollWheel System.Boolean @ setter getter
UnityEditor.EditorGUILayout.ScrollViewScope = {}
---@type UnityEditor.EditorGUILayout.ScrollViewScope
CS.UnityEditor.EditorGUILayout.ScrollViewScope = UnityEditor.EditorGUILayout.ScrollViewScope

---@class UnityEditor.EditorGUILayout.FadeGroupScope : UnityEngine.GUI.Scope
---@field public visible System.Boolean @ setter getter
UnityEditor.EditorGUILayout.FadeGroupScope = {}
---@type UnityEditor.EditorGUILayout.FadeGroupScope
CS.UnityEditor.EditorGUILayout.FadeGroupScope = UnityEditor.EditorGUILayout.FadeGroupScope

---@class UnityEditor.MouseCursor : System.Enum
UnityEditor.MouseCursor = {}
---@type UnityEditor.MouseCursor
CS.UnityEditor.MouseCursor = UnityEditor.MouseCursor

---@return System.Int32 value:0
UnityEditor.MouseCursor.Arrow = 0
---@return System.Int32 value:1
UnityEditor.MouseCursor.Text = 1
---@return System.Int32 value:2
UnityEditor.MouseCursor.ResizeVertical = 2
---@return System.Int32 value:3
UnityEditor.MouseCursor.ResizeHorizontal = 3
---@return System.Int32 value:4
UnityEditor.MouseCursor.Link = 4
---@return System.Int32 value:5
UnityEditor.MouseCursor.SlideArrow = 5
---@return System.Int32 value:6
UnityEditor.MouseCursor.ResizeUpRight = 6
---@return System.Int32 value:7
UnityEditor.MouseCursor.ResizeUpLeft = 7
---@return System.Int32 value:8
UnityEditor.MouseCursor.MoveArrow = 8
---@return System.Int32 value:9
UnityEditor.MouseCursor.RotateArrow = 9
---@return System.Int32 value:10
UnityEditor.MouseCursor.ScaleArrow = 10
---@return System.Int32 value:11
UnityEditor.MouseCursor.ArrowPlus = 11
---@return System.Int32 value:12
UnityEditor.MouseCursor.ArrowMinus = 12
---@return System.Int32 value:13
UnityEditor.MouseCursor.Pan = 13
---@return System.Int32 value:14
UnityEditor.MouseCursor.Orbit = 14
---@return System.Int32 value:15
UnityEditor.MouseCursor.Zoom = 15
---@return System.Int32 value:16
UnityEditor.MouseCursor.FPS = 16
---@return System.Int32 value:17
UnityEditor.MouseCursor.CustomCursor = 17
---@return System.Int32 value:18
UnityEditor.MouseCursor.SplitResizeUpDown = 18
---@return System.Int32 value:19
UnityEditor.MouseCursor.SplitResizeLeftRight = 19

---@class UnityEditor.MessageType : System.Enum
UnityEditor.MessageType = {}
---@type UnityEditor.MessageType
CS.UnityEditor.MessageType = UnityEditor.MessageType

---@return System.Int32 value:0
UnityEditor.MessageType.None = 0
---@return System.Int32 value:1
UnityEditor.MessageType.Info = 1
---@return System.Int32 value:2
UnityEditor.MessageType.Warning = 2
---@return System.Int32 value:3
UnityEditor.MessageType.Error = 3

---@class UnityEditor.EditorSkin : System.Enum
UnityEditor.EditorSkin = {}
---@type UnityEditor.EditorSkin
CS.UnityEditor.EditorSkin = UnityEditor.EditorSkin

---@return System.Int32 value:0
UnityEditor.EditorSkin.Game = 0
---@return System.Int32 value:1
UnityEditor.EditorSkin.Inspector = 1
---@return System.Int32 value:2
UnityEditor.EditorSkin.Scene = 2

---@class UnityEditor.EditorGUIUtility : UnityEngine.GUIUtility
---@field public whiteTexture UnityEngine.Texture2D @static  getter
---@field public systemCopyBuffer System.String @static setter getter
---@field public pixelsPerPoint System.Single @static  getter
---@field public singleLineHeight System.Single @static  getter
---@field public standardVerticalSpacing System.Single @static  getter
---@field public isProSkin System.Boolean @static  getter
---@field public editingTextField System.Boolean @static setter getter
---@field public textFieldHasSelection System.Boolean @static  getter
---@field public hierarchyMode System.Boolean @static setter getter
---@field public wideMode System.Boolean @static setter getter
---@field public currentViewWidth System.Single @static  getter
---@field public labelWidth System.Single @static setter getter
---@field public fieldWidth System.Single @static setter getter
---@field public native UnityEngine.FocusType
UnityEditor.EditorGUIUtility = {}
---@type UnityEditor.EditorGUIUtility
CS.UnityEditor.EditorGUIUtility = UnityEditor.EditorGUIUtility

---@return System.String
function UnityEditor.EditorGUIUtility.SerializeMainMenuToString()end
---@param onoff System.Boolean
---@return System.Void
function UnityEditor.EditorGUIUtility.SetMenuLocalizationTestMode(onoff)end
---@param size UnityEngine.Vector2
---@return System.Void
function UnityEditor.EditorGUIUtility.SetIconSize(size)end
---@param wantz System.Int32
---@return System.Void
function UnityEditor.EditorGUIUtility.SetWantsMouseJumping(wantz)end
---@param displayIndex System.Int32
---@return System.Boolean
function UnityEditor.EditorGUIUtility.IsDisplayReferencedByCameras(displayIndex)end
---@param evt UnityEngine.Event
---@return System.Void
function UnityEditor.EditorGUIUtility.QueueGameViewInputEvent(evt)end
---@overload fun(cameraRect:UnityEngine.Rect, statsRect:UnityEngine.Rect, gizmos:System.Boolean, gui:System.Boolean):System.Void
---@overload fun(target:UnityEngine.RenderTexture, targetDisplay:System.Int32, screenRect:UnityEngine.Rect, mousePosition:UnityEngine.Vector2, gizmos:System.Boolean):System.Void
---@param cameraRect UnityEngine.Rect
---@param gizmos System.Boolean
---@param gui System.Boolean
---@return System.Void
function UnityEditor.EditorGUIUtility.RenderGameViewCameras(cameraRect, gizmos, gui)end
---@overload fun(position:UnityEngine.Vector2):UnityEngine.Vector2
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.EditorGUIUtility.PointsToPixels(rect)end
---@overload fun(position:UnityEngine.Vector2):UnityEngine.Vector2
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.EditorGUIUtility.PixelsToPoints(rect)end
---@param rect UnityEngine.Rect
---@param style UnityEngine.GUIStyle
---@param horizontalSpacing System.Single
---@param verticalSpacing System.Single
---@param items System.Collections.Generic.List
---@return System.Collections.Generic.List
function UnityEditor.EditorGUIUtility.GetFlowLayoutedRects(rect, style, horizontalSpacing, verticalSpacing, items)end
---@param name System.String
---@return UnityEngine.Texture2D
function UnityEditor.EditorGUIUtility.FindTexture(name)end
---@overload fun(text:System.String, tooltip:System.String):UnityEngine.GUIContent
---@overload fun(text:System.String):UnityEngine.GUIContent
---@overload fun(text:System.String):UnityEngine.GUIContent
---@overload fun(text:System.String, tooltip:System.String, iconName:System.String):UnityEngine.GUIContent
---@overload fun(key:System.String, text:System.String, tooltip:System.String, icon:UnityEngine.Texture):UnityEngine.GUIContent
---@param text System.String
---@param icon UnityEngine.Texture
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.TrTextContent(text, icon)end
---@overload fun(text:System.String, iconName:System.String):UnityEngine.GUIContent
---@overload fun(text:System.String, messageType:UnityEditor.MessageType):UnityEngine.GUIContent
---@overload fun(text:System.String, tooltip:System.String, iconName:System.String):UnityEngine.GUIContent
---@overload fun(text:System.String, tooltip:System.String, icon:UnityEngine.Texture):UnityEngine.GUIContent
---@overload fun(text:System.String, tooltip:System.String, messageType:UnityEditor.MessageType):UnityEngine.GUIContent
---@param text System.String
---@param icon UnityEngine.Texture
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.TrTextContentWithIcon(text, icon)end
---@overload fun(iconName:System.String):UnityEngine.GUIContent
---@overload fun(icon:UnityEngine.Texture):UnityEngine.GUIContent
---@overload fun(icon:UnityEngine.Texture):UnityEngine.GUIContent
---@param iconName System.String
---@param tooltip System.String
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.TrIconContent(iconName, tooltip)end
---@overload fun(texts:System.String[]):UnityEngine.GUIContent[]
---@overload fun(texts:System.String[], tooltips:System.String[]):UnityEngine.GUIContent[]
---@param t System.String
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.TrTempContent(t)end
---@overload fun(name:System.String, text:System.String):UnityEngine.GUIContent
---@param name System.String
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.IconContent(name)end
---@param obj UnityEngine.Object
---@param type System.Type
---@return UnityEngine.GUIContent
function UnityEditor.EditorGUIUtility.ObjectContent(obj, type)end
---@param objType System.Type
---@return System.Boolean
function UnityEditor.EditorGUIUtility.HasObjectThumbnail(objType)end
---@return UnityEngine.Vector2
function UnityEditor.EditorGUIUtility.GetIconSize()end
---@param skin UnityEditor.EditorSkin
---@return UnityEngine.GUISkin
function UnityEditor.EditorGUIUtility.GetBuiltinSkin(skin)end
---@param path System.String
---@return UnityEngine.Object
function UnityEditor.EditorGUIUtility.LoadRequired(path)end
---@param path System.String
---@return UnityEngine.Object
function UnityEditor.EditorGUIUtility.Load(path)end
---@overload fun(obj:UnityEngine.Object):System.Void
---@param targetInstanceID System.Int32
---@return System.Void
function UnityEditor.EditorGUIUtility.PingObject(targetInstanceID)end
---@overload fun(_labelWidth:System.Single):System.Void
---@overload fun(_labelWidth:System.Single, _fieldWidth:System.Single):System.Void
---@return System.Void
function UnityEditor.EditorGUIUtility.LookLikeControls()end
---@return System.Void
function UnityEditor.EditorGUIUtility.LookLikeInspector()end
---@param commandName System.String
---@return UnityEngine.Event
function UnityEditor.EditorGUIUtility.CommandEvent(commandName)end
---@param position UnityEngine.Rect
---@param color UnityEngine.Color
---@return System.Void
function UnityEditor.EditorGUIUtility.DrawColorSwatch(position, color)end
---@overload fun(position:UnityEngine.Rect, curve:UnityEngine.AnimationCurve, property:UnityEditor.SerializedProperty, color:UnityEngine.Color, bgColor:UnityEngine.Color, curveRanges:UnityEngine.Rect):System.Void
---@overload fun(position:UnityEngine.Rect, curve:UnityEngine.AnimationCurve, property:UnityEditor.SerializedProperty, color:UnityEngine.Color, bgColor:UnityEngine.Color, topFillColor:UnityEngine.Color, bottomFillColor:UnityEngine.Color):System.Void
---@overload fun(position:UnityEngine.Rect, curve:UnityEngine.AnimationCurve, property:UnityEditor.SerializedProperty, color:UnityEngine.Color, bgColor:UnityEngine.Color, topFillColor:UnityEngine.Color, bottomFillColor:UnityEngine.Color, curveRanges:UnityEngine.Rect):System.Void
---@param position UnityEngine.Rect
---@param curve UnityEngine.AnimationCurve
---@param property UnityEditor.SerializedProperty
---@param color UnityEngine.Color
---@param bgColor UnityEngine.Color
---@return System.Void
function UnityEditor.EditorGUIUtility.DrawCurveSwatch(position, curve, property, color, bgColor)end
---@overload fun(position:UnityEngine.Rect, curve:UnityEngine.AnimationCurve, curve2:UnityEngine.AnimationCurve, color:UnityEngine.Color, bgColor:UnityEngine.Color, curveRanges:UnityEngine.Rect):System.Void
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param property2 UnityEditor.SerializedProperty
---@param color UnityEngine.Color
---@param bgColor UnityEngine.Color
---@param curveRanges UnityEngine.Rect
---@return System.Void
function UnityEditor.EditorGUIUtility.DrawRegionSwatch(position, property, property2, color, bgColor, curveRanges)end
---@param rgbColor UnityEngine.Color
---@param H System.Single
---@param S System.Single
---@param V System.Single
---@return System.Void
function UnityEditor.EditorGUIUtility.RGBToHSV(rgbColor, H, S, V)end
---@overload fun(H:System.Single, S:System.Single, V:System.Single, hdr:System.Boolean):UnityEngine.Color
---@param H System.Single
---@param S System.Single
---@param V System.Single
---@return UnityEngine.Color
function UnityEditor.EditorGUIUtility.HSVToRGB(H, S, V)end
---@overload fun(position:UnityEngine.Rect, mouse:UnityEditor.MouseCursor, controlID:System.Int32):System.Void
---@param position UnityEngine.Rect
---@param mouse UnityEditor.MouseCursor
---@return System.Void
function UnityEditor.EditorGUIUtility.AddCursorRect(position, mouse)end
---@param obj UnityEngine.Object
---@param allowSceneObjects System.Boolean
---@param searchFilter System.String
---@param controlID System.Int32
---@return System.Void
function UnityEditor.EditorGUIUtility.ShowObjectPicker(obj, allowSceneObjects, searchFilter, controlID)end
---@return UnityEngine.Object
function UnityEditor.EditorGUIUtility.GetObjectPickerObject()end
---@return System.Int32
function UnityEditor.EditorGUIUtility.GetObjectPickerControlID()end
---@class UnityEditor.EditorGUIUtility.IconSizeScope : UnityEngine.GUI.Scope
UnityEditor.EditorGUIUtility.IconSizeScope = {}
---@type UnityEditor.EditorGUIUtility.IconSizeScope
CS.UnityEditor.EditorGUIUtility.IconSizeScope = UnityEditor.EditorGUIUtility.IconSizeScope

---@class UnityEditor.SessionState : System.Object
UnityEditor.SessionState = {}
---@type UnityEditor.SessionState
CS.UnityEditor.SessionState = UnityEditor.SessionState

---@param key System.String
---@param value System.Boolean
---@return System.Void
function UnityEditor.SessionState.SetBool(key, value)end
---@param key System.String
---@param defaultValue System.Boolean
---@return System.Boolean
function UnityEditor.SessionState.GetBool(key, defaultValue)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseBool(key)end
---@param key System.String
---@param value System.Single
---@return System.Void
function UnityEditor.SessionState.SetFloat(key, value)end
---@param key System.String
---@param defaultValue System.Single
---@return System.Single
function UnityEditor.SessionState.GetFloat(key, defaultValue)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseFloat(key)end
---@param key System.String
---@param value System.Int32
---@return System.Void
function UnityEditor.SessionState.SetInt(key, value)end
---@param key System.String
---@param defaultValue System.Int32
---@return System.Int32
function UnityEditor.SessionState.GetInt(key, defaultValue)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseInt(key)end
---@param key System.String
---@param value System.String
---@return System.Void
function UnityEditor.SessionState.SetString(key, value)end
---@param key System.String
---@param defaultValue System.String
---@return System.String
function UnityEditor.SessionState.GetString(key, defaultValue)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseString(key)end
---@param key System.String
---@param value UnityEngine.Vector3
---@return System.Void
function UnityEditor.SessionState.SetVector3(key, value)end
---@param key System.String
---@param defaultValue UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.SessionState.GetVector3(key, defaultValue)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseVector3(key)end
---@param key System.String
---@return System.Void
function UnityEditor.SessionState.EraseIntArray(key)end
---@param key System.String
---@param value System.Int32[]
---@return System.Void
function UnityEditor.SessionState.SetIntArray(key, value)end
---@param key System.String
---@param defaultValue System.Int32[]
---@return System.Int32[]
function UnityEditor.SessionState.GetIntArray(key, defaultValue)end
---@class UnityEditor.EditorPrefs : System.Object
UnityEditor.EditorPrefs = {}
---@type UnityEditor.EditorPrefs
CS.UnityEditor.EditorPrefs = UnityEditor.EditorPrefs

---@param key System.String
---@param value System.Int32
---@return System.Void
function UnityEditor.EditorPrefs.SetInt(key, value)end
---@overload fun(key:System.String, defaultValue:System.Int32):System.Int32
---@param key System.String
---@return System.Int32
function UnityEditor.EditorPrefs.GetInt(key)end
---@param key System.String
---@param value System.Single
---@return System.Void
function UnityEditor.EditorPrefs.SetFloat(key, value)end
---@overload fun(key:System.String, defaultValue:System.Single):System.Single
---@param key System.String
---@return System.Single
function UnityEditor.EditorPrefs.GetFloat(key)end
---@param key System.String
---@param value System.String
---@return System.Void
function UnityEditor.EditorPrefs.SetString(key, value)end
---@overload fun(key:System.String, defaultValue:System.String):System.String
---@param key System.String
---@return System.String
function UnityEditor.EditorPrefs.GetString(key)end
---@param key System.String
---@param value System.Boolean
---@return System.Void
function UnityEditor.EditorPrefs.SetBool(key, value)end
---@overload fun(key:System.String, defaultValue:System.Boolean):System.Boolean
---@param key System.String
---@return System.Boolean
function UnityEditor.EditorPrefs.GetBool(key)end
---@param key System.String
---@return System.Boolean
function UnityEditor.EditorPrefs.HasKey(key)end
---@param key System.String
---@return System.Void
function UnityEditor.EditorPrefs.DeleteKey(key)end
---@return System.Void
function UnityEditor.EditorPrefs.DeleteAll()end
---@class UnityEditor.SerializationMode : System.Enum
UnityEditor.SerializationMode = {}
---@type UnityEditor.SerializationMode
CS.UnityEditor.SerializationMode = UnityEditor.SerializationMode

---@return System.Int32 value:0
UnityEditor.SerializationMode.Mixed = 0
---@return System.Int32 value:1
UnityEditor.SerializationMode.ForceBinary = 1
---@return System.Int32 value:2
UnityEditor.SerializationMode.ForceText = 2

---@class UnityEditor.EditorBehaviorMode : System.Enum
UnityEditor.EditorBehaviorMode = {}
---@type UnityEditor.EditorBehaviorMode
CS.UnityEditor.EditorBehaviorMode = UnityEditor.EditorBehaviorMode

---@return System.Int32 value:0
UnityEditor.EditorBehaviorMode.Mode3D = 0
---@return System.Int32 value:1
UnityEditor.EditorBehaviorMode.Mode2D = 1

---@class UnityEditor.SpritePackerMode : System.Enum
UnityEditor.SpritePackerMode = {}
---@type UnityEditor.SpritePackerMode
CS.UnityEditor.SpritePackerMode = UnityEditor.SpritePackerMode

---@return System.Int32 value:0
UnityEditor.SpritePackerMode.Disabled = 0
---@return System.Int32 value:1
UnityEditor.SpritePackerMode.BuildTimeOnly = 1
---@return System.Int32 value:2
UnityEditor.SpritePackerMode.AlwaysOn = 2
---@return System.Int32 value:3
UnityEditor.SpritePackerMode.BuildTimeOnlyAtlas = 3
---@return System.Int32 value:4
UnityEditor.SpritePackerMode.AlwaysOnAtlas = 4

---@class UnityEditor.LineEndingsMode : System.Enum
UnityEditor.LineEndingsMode = {}
---@type UnityEditor.LineEndingsMode
CS.UnityEditor.LineEndingsMode = UnityEditor.LineEndingsMode

---@return System.Int32 value:0
UnityEditor.LineEndingsMode.OSNative = 0
---@return System.Int32 value:1
UnityEditor.LineEndingsMode.Unix = 1
---@return System.Int32 value:2
UnityEditor.LineEndingsMode.Windows = 2

---@class UnityEditor.ExternalVersionControl : System.ValueType
---@field public Disabled System.String
---@field public AutoDetect System.String
---@field public Generic System.String
---@field public AssetServer System.String
UnityEditor.ExternalVersionControl = {}
---@type UnityEditor.ExternalVersionControl
CS.UnityEditor.ExternalVersionControl = UnityEditor.ExternalVersionControl

---@overload fun(d:System.String):UnityEditor.ExternalVersionControl
---@param d UnityEditor.ExternalVersionControl
---@return System.String
function UnityEditor.ExternalVersionControl.op_Implicit(d)end
---@return System.String
function UnityEditor.ExternalVersionControl:ToString()end
---@class UnityEditor.EditorSettings : UnityEngine.Object
---@field public unityRemoteDevice System.String @static setter getter
---@field public unityRemoteCompression System.String @static setter getter
---@field public unityRemoteResolution System.String @static setter getter
---@field public unityRemoteJoystickSource System.String @static setter getter
---@field public externalVersionControl System.String @static setter getter
---@field public serializationMode UnityEditor.SerializationMode @static setter getter
---@field public lineEndingsForNewScripts UnityEditor.LineEndingsMode @static setter getter
---@field public webSecurityEmulationEnabled System.Boolean @static setter getter
---@field public webSecurityEmulationHostUrl System.String @static setter getter
---@field public defaultBehaviorMode UnityEditor.EditorBehaviorMode @static setter getter
---@field public prefabRegularEnvironment UnityEditor.SceneAsset @static setter getter
---@field public prefabUIEnvironment UnityEditor.SceneAsset @static setter getter
---@field public spritePackerMode UnityEditor.SpritePackerMode @static setter getter
---@field public spritePackerPaddingPower System.Int32 @static setter getter
---@field public etcTextureCompressorBehavior System.Int32 @static setter getter
---@field public etcTextureFastCompressor System.Int32 @static setter getter
---@field public etcTextureNormalCompressor System.Int32 @static setter getter
---@field public etcTextureBestCompressor System.Int32 @static setter getter
---@field public enableTextureStreamingInPlayMode System.Boolean @static setter getter
---@field public projectGenerationUserExtensions System.String[] @static setter getter
---@field public projectGenerationBuiltinExtensions System.String[] @static  getter
---@field public projectGenerationRootNamespace System.String @static setter getter
UnityEditor.EditorSettings = {}
---@type UnityEditor.EditorSettings
CS.UnityEditor.EditorSettings = UnityEditor.EditorSettings

---@class UnityEditor.PS4BuildSubtarget : System.Enum
UnityEditor.PS4BuildSubtarget = {}
---@type UnityEditor.PS4BuildSubtarget
CS.UnityEditor.PS4BuildSubtarget = UnityEditor.PS4BuildSubtarget

---@return System.Int32 value:0
UnityEditor.PS4BuildSubtarget.PCHosted = 0
---@return System.Int32 value:1
UnityEditor.PS4BuildSubtarget.Package = 1
---@return System.Int32 value:2
UnityEditor.PS4BuildSubtarget.Iso = 2

---@class UnityEditor.PS4HardwareTarget : System.Enum
UnityEditor.PS4HardwareTarget = {}
---@type UnityEditor.PS4HardwareTarget
CS.UnityEditor.PS4HardwareTarget = UnityEditor.PS4HardwareTarget

---@return System.Int32 value:0
UnityEditor.PS4HardwareTarget.BaseOnly = 0
---@return System.Int32 value:1
UnityEditor.PS4HardwareTarget.NeoAndBase = 1

---@class UnityEditor.XboxBuildSubtarget : System.Enum
UnityEditor.XboxBuildSubtarget = {}
---@type UnityEditor.XboxBuildSubtarget
CS.UnityEditor.XboxBuildSubtarget = UnityEditor.XboxBuildSubtarget

---@return System.Int32 value:0
UnityEditor.XboxBuildSubtarget.Development = 0
---@return System.Int32 value:1
UnityEditor.XboxBuildSubtarget.Master = 1
---@return System.Int32 value:2
UnityEditor.XboxBuildSubtarget.Debug = 2

---@class UnityEditor.XboxOneDeployMethod : System.Enum
UnityEditor.XboxOneDeployMethod = {}
---@type UnityEditor.XboxOneDeployMethod
CS.UnityEditor.XboxOneDeployMethod = UnityEditor.XboxOneDeployMethod

---@return System.Int32 value:0
UnityEditor.XboxOneDeployMethod.Push = 0
---@return System.Int32 value:1
UnityEditor.XboxOneDeployMethod.Pull = 1
---@return System.Int32 value:2
UnityEditor.XboxOneDeployMethod.RunFromPC = 2
---@return System.Int32 value:3
UnityEditor.XboxOneDeployMethod.Package = 3
---@return System.Int32 value:4
UnityEditor.XboxOneDeployMethod.PackageStreaming = 4

---@class UnityEditor.XboxOneDeployDrive : System.Enum
UnityEditor.XboxOneDeployDrive = {}
---@type UnityEditor.XboxOneDeployDrive
CS.UnityEditor.XboxOneDeployDrive = UnityEditor.XboxOneDeployDrive

---@return System.Int32 value:0
UnityEditor.XboxOneDeployDrive.Default = 0
---@return System.Int32 value:1
UnityEditor.XboxOneDeployDrive.Retail = 1
---@return System.Int32 value:2
UnityEditor.XboxOneDeployDrive.Development = 2
---@return System.Int32 value:3
UnityEditor.XboxOneDeployDrive.Ext1 = 3
---@return System.Int32 value:4
UnityEditor.XboxOneDeployDrive.Ext2 = 4
---@return System.Int32 value:5
UnityEditor.XboxOneDeployDrive.Ext3 = 5
---@return System.Int32 value:6
UnityEditor.XboxOneDeployDrive.Ext4 = 6
---@return System.Int32 value:7
UnityEditor.XboxOneDeployDrive.Ext5 = 7
---@return System.Int32 value:8
UnityEditor.XboxOneDeployDrive.Ext6 = 8
---@return System.Int32 value:9
UnityEditor.XboxOneDeployDrive.Ext7 = 9

---@class UnityEditor.AndroidBuildSubtarget : System.Enum
UnityEditor.AndroidBuildSubtarget = {}
---@type UnityEditor.AndroidBuildSubtarget
CS.UnityEditor.AndroidBuildSubtarget = UnityEditor.AndroidBuildSubtarget


---@class UnityEditor.MobileTextureSubtarget : System.Enum
UnityEditor.MobileTextureSubtarget = {}
---@type UnityEditor.MobileTextureSubtarget
CS.UnityEditor.MobileTextureSubtarget = UnityEditor.MobileTextureSubtarget

---@return System.Int32 value:0
UnityEditor.MobileTextureSubtarget.Generic = 0
---@return System.Int32 value:1
UnityEditor.MobileTextureSubtarget.DXT = 1
---@return System.Int32 value:2
UnityEditor.MobileTextureSubtarget.PVRTC = 2
---@return System.Int32 value:3
UnityEditor.MobileTextureSubtarget.ATC = 3
---@return System.Int32 value:4
UnityEditor.MobileTextureSubtarget.ETC = 4
---@return System.Int32 value:5
UnityEditor.MobileTextureSubtarget.ETC2 = 5
---@return System.Int32 value:6
UnityEditor.MobileTextureSubtarget.ASTC = 6

---@class UnityEditor.AndroidETC2Fallback : System.Enum
UnityEditor.AndroidETC2Fallback = {}
---@type UnityEditor.AndroidETC2Fallback
CS.UnityEditor.AndroidETC2Fallback = UnityEditor.AndroidETC2Fallback

---@return System.Int32 value:0
UnityEditor.AndroidETC2Fallback.Quality32Bit = 0
---@return System.Int32 value:1
UnityEditor.AndroidETC2Fallback.Quality16Bit = 1
---@return System.Int32 value:2
UnityEditor.AndroidETC2Fallback.Quality32BitDownscaled = 2

---@class UnityEditor.WSASubtarget : System.Enum
UnityEditor.WSASubtarget = {}
---@type UnityEditor.WSASubtarget
CS.UnityEditor.WSASubtarget = UnityEditor.WSASubtarget

---@return System.Int32 value:0
UnityEditor.WSASubtarget.AnyDevice = 0
---@return System.Int32 value:1
UnityEditor.WSASubtarget.PC = 1
---@return System.Int32 value:2
UnityEditor.WSASubtarget.Mobile = 2
---@return System.Int32 value:3
UnityEditor.WSASubtarget.HoloLens = 3

---@class UnityEditor.WSASDK : System.Enum
UnityEditor.WSASDK = {}
---@type UnityEditor.WSASDK
CS.UnityEditor.WSASDK = UnityEditor.WSASDK

---@return System.Int32 value:0
UnityEditor.WSASDK.SDK80 = 0
---@return System.Int32 value:1
UnityEditor.WSASDK.SDK81 = 1
---@return System.Int32 value:2
UnityEditor.WSASDK.PhoneSDK81 = 2
---@return System.Int32 value:3
UnityEditor.WSASDK.UniversalSDK81 = 3
---@return System.Int32 value:4
UnityEditor.WSASDK.UWP = 4

---@class UnityEditor.WSAUWPBuildType : System.Enum
UnityEditor.WSAUWPBuildType = {}
---@type UnityEditor.WSAUWPBuildType
CS.UnityEditor.WSAUWPBuildType = UnityEditor.WSAUWPBuildType

---@return System.Int32 value:0
UnityEditor.WSAUWPBuildType.XAML = 0
---@return System.Int32 value:1
UnityEditor.WSAUWPBuildType.D3D = 1

---@class UnityEditor.WSABuildAndRunDeployTarget : System.Enum
UnityEditor.WSABuildAndRunDeployTarget = {}
---@type UnityEditor.WSABuildAndRunDeployTarget
CS.UnityEditor.WSABuildAndRunDeployTarget = UnityEditor.WSABuildAndRunDeployTarget

---@return System.Int32 value:0
UnityEditor.WSABuildAndRunDeployTarget.LocalMachine = 0
---@return System.Int32 value:1
UnityEditor.WSABuildAndRunDeployTarget.WindowsPhone = 1

---@class UnityEditor.WSABuildType : System.Enum
UnityEditor.WSABuildType = {}
---@type UnityEditor.WSABuildType
CS.UnityEditor.WSABuildType = UnityEditor.WSABuildType

---@return System.Int32 value:0
UnityEditor.WSABuildType.Debug = 0
---@return System.Int32 value:1
UnityEditor.WSABuildType.Release = 1
---@return System.Int32 value:2
UnityEditor.WSABuildType.Master = 2

---@class UnityEditor.iOSBuildType : System.Enum
UnityEditor.iOSBuildType = {}
---@type UnityEditor.iOSBuildType
CS.UnityEditor.iOSBuildType = UnityEditor.iOSBuildType

---@return System.Int32 value:0
UnityEditor.iOSBuildType.Debug = 0
---@return System.Int32 value:1
UnityEditor.iOSBuildType.Release = 1

---@class UnityEditor.AndroidBuildSystem : System.Enum
UnityEditor.AndroidBuildSystem = {}
---@type UnityEditor.AndroidBuildSystem
CS.UnityEditor.AndroidBuildSystem = UnityEditor.AndroidBuildSystem

---@return System.Int32 value:0
UnityEditor.AndroidBuildSystem.Internal = 0
---@return System.Int32 value:1
UnityEditor.AndroidBuildSystem.Gradle = 1
---@return System.Int32 value:2
UnityEditor.AndroidBuildSystem.ADT = 2
---@return System.Int32 value:3
UnityEditor.AndroidBuildSystem.VisualStudio = 3

---@class UnityEditor.AndroidBuildType : System.Enum
UnityEditor.AndroidBuildType = {}
---@type UnityEditor.AndroidBuildType
CS.UnityEditor.AndroidBuildType = UnityEditor.AndroidBuildType

---@return System.Int32 value:0
UnityEditor.AndroidBuildType.Debug = 0
---@return System.Int32 value:1
UnityEditor.AndroidBuildType.Development = 1
---@return System.Int32 value:2
UnityEditor.AndroidBuildType.Release = 2

---@class UnityEditor.AndroidMinification : System.Enum
UnityEditor.AndroidMinification = {}
---@type UnityEditor.AndroidMinification
CS.UnityEditor.AndroidMinification = UnityEditor.AndroidMinification

---@return System.Int32 value:0
UnityEditor.AndroidMinification.None = 0
---@return System.Int32 value:1
UnityEditor.AndroidMinification.Proguard = 1
---@return System.Int32 value:2
UnityEditor.AndroidMinification.Gradle = 2

---@class UnityEditor.EditorUserBuildSettings : UnityEngine.Object
---@field public selectedBuildTargetGroup UnityEditor.BuildTargetGroup @static setter getter
---@field public selectedStandaloneTarget UnityEditor.BuildTarget @static setter getter
---@field public ps4BuildSubtarget UnityEditor.PS4BuildSubtarget @static setter getter
---@field public ps4HardwareTarget UnityEditor.PS4HardwareTarget @static setter getter
---@field public explicitNullChecks System.Boolean @static setter getter
---@field public explicitDivideByZeroChecks System.Boolean @static setter getter
---@field public explicitArrayBoundsChecks System.Boolean @static setter getter
---@field public needSubmissionMaterials System.Boolean @static setter getter
---@field public compressWithPsArc System.Boolean @static setter getter
---@field public forceInstallation System.Boolean @static setter getter
---@field public movePackageToDiscOuterEdge System.Boolean @static setter getter
---@field public compressFilesInPackage System.Boolean @static setter getter
---@field public enableHeadlessMode System.Boolean @static setter getter
---@field public buildScriptsOnly System.Boolean @static setter getter
---@field public xboxBuildSubtarget UnityEditor.XboxBuildSubtarget @static setter getter
---@field public streamingInstallLaunchRange System.Int32 @static setter getter
---@field public xboxOneDeployMethod UnityEditor.XboxOneDeployMethod @static setter getter
---@field public xboxOneDeployDrive UnityEditor.XboxOneDeployDrive @static setter getter
---@field public xboxOneUsername System.String @static setter getter
---@field public xboxOneNetworkSharePath System.String @static setter getter
---@field public xboxOneAdditionalDebugPorts System.String @static setter getter
---@field public xboxOneRebootIfDeployFailsAndRetry System.Boolean @static setter getter
---@field public androidBuildSubtarget UnityEditor.MobileTextureSubtarget @static setter getter
---@field public androidETC2Fallback UnityEditor.AndroidETC2Fallback @static setter getter
---@field public androidBuildSystem UnityEditor.AndroidBuildSystem @static setter getter
---@field public androidBuildType UnityEditor.AndroidBuildType @static setter getter
---@field public androidDebugMinification UnityEditor.AndroidMinification @static setter getter
---@field public androidReleaseMinification UnityEditor.AndroidMinification @static setter getter
---@field public androidUseLegacySdkTools System.Boolean @static setter getter
---@field public wsaSubtarget UnityEditor.WSASubtarget @static setter getter
---@field public wsaSDK UnityEditor.WSASDK @static setter getter
---@field public wsaUWPBuildType UnityEditor.WSAUWPBuildType @static setter getter
---@field public wsaUWPSDK System.String @static setter getter
---@field public wsaMinUWPSDK System.String @static setter getter
---@field public wsaArchitecture System.String @static setter getter
---@field public wsaUWPVisualStudioVersion System.String @static setter getter
---@field public wsaBuildAndRunDeployTarget UnityEditor.WSABuildAndRunDeployTarget @static setter getter
---@field public wsaGenerateReferenceProjects System.Boolean @static setter getter
---@field public activeBuildTarget UnityEditor.BuildTarget @static  getter
---@field public activeScriptCompilationDefines System.String[] @static  getter
---@field public development System.Boolean @static setter getter
---@field public webGLUsePreBuiltUnityEngine System.Boolean @static setter getter
---@field public connectProfiler System.Boolean @static setter getter
---@field public wsaHolographicRemoting System.Boolean @static setter getter
---@field public allowDebugging System.Boolean @static setter getter
---@field public exportAsGoogleAndroidProject System.Boolean @static setter getter
---@field public buildAppBundle System.Boolean @static setter getter
---@field public symlinkLibraries System.Boolean @static setter getter
---@field public iOSBuildConfigType UnityEditor.iOSBuildType @static setter getter
---@field public switchCreateSolutionFile System.Boolean @static setter getter
---@field public switchCreateRomFile System.Boolean @static setter getter
---@field public switchNVNGraphicsDebugger System.Boolean @static setter getter
---@field public switchNVNShaderDebugging System.Boolean @static setter getter
---@field public switchNVNDrawValidation System.Boolean @static setter getter
---@field public switchEnableHeapInspector System.Boolean @static setter getter
---@field public switchEnableDebugPad System.Boolean @static setter getter
---@field public switchRedirectWritesToHostMount System.Boolean @static setter getter
---@field public installInBuildFolder System.Boolean @static setter getter
---@field public forceOptimizeScriptCompilation System.Boolean @static  getter
---@field public activeBuildTargetChanged System.Action
UnityEditor.EditorUserBuildSettings = {}
---@type UnityEditor.EditorUserBuildSettings
CS.UnityEditor.EditorUserBuildSettings = UnityEditor.EditorUserBuildSettings

---@param config UnityEditor.WSABuildType
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.EditorUserBuildSettings.SetWSADotNetNative(config, enabled)end
---@param config UnityEditor.WSABuildType
---@return System.Boolean
function UnityEditor.EditorUserBuildSettings.GetWSADotNetNative(config)end
---@overload fun(targetGroup:UnityEditor.BuildTargetGroup, target:UnityEditor.BuildTarget):System.Boolean
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.EditorUserBuildSettings.SwitchActiveBuildTarget(target)end
---@param targetGroup UnityEditor.BuildTargetGroup
---@param target UnityEditor.BuildTarget
---@return System.Boolean
function UnityEditor.EditorUserBuildSettings.SwitchActiveBuildTargetAsync(targetGroup, target)end
---@param target UnityEditor.BuildTarget
---@return System.String
function UnityEditor.EditorUserBuildSettings.GetBuildLocation(target)end
---@param target UnityEditor.BuildTarget
---@param location System.String
---@return System.Void
function UnityEditor.EditorUserBuildSettings.SetBuildLocation(target, location)end
---@overload fun(buildTargetGroup:System.String, buildTarget:System.String, name:System.String, value:System.String):System.Void
---@param platformName System.String
---@param name System.String
---@param value System.String
---@return System.Void
function UnityEditor.EditorUserBuildSettings.SetPlatformSettings(platformName, name, value)end
---@overload fun(buildTargetGroup:System.String, platformName:System.String, name:System.String):System.String
---@param platformName System.String
---@param name System.String
---@return System.String
function UnityEditor.EditorUserBuildSettings.GetPlatformSettings(platformName, name)end
---@class UnityEditor.SemanticMergeMode : System.Enum
UnityEditor.SemanticMergeMode = {}
---@type UnityEditor.SemanticMergeMode
CS.UnityEditor.SemanticMergeMode = UnityEditor.SemanticMergeMode

---@return System.Int32 value:0
UnityEditor.SemanticMergeMode.Off = 0
---@return System.Int32 value:1
UnityEditor.SemanticMergeMode.Premerge = 1
---@return System.Int32 value:2
UnityEditor.SemanticMergeMode.Ask = 2

---@class UnityEditor.EditorUserSettings : UnityEngine.Object
---@field public AutomaticAdd System.Boolean @static setter getter
---@field public WorkOffline System.Boolean @static setter getter
---@field public showFailedCheckout System.Boolean @static setter getter
---@field public overwriteFailedCheckoutAssets System.Boolean @static setter getter
---@field public allowAsyncStatusUpdate System.Boolean @static setter getter
---@field public semanticMergeMode UnityEditor.SemanticMergeMode @static setter getter
UnityEditor.EditorUserSettings = {}
---@type UnityEditor.EditorUserSettings
CS.UnityEditor.EditorUserSettings = UnityEditor.EditorUserSettings

---@param name System.String
---@return System.String
function UnityEditor.EditorUserSettings.GetConfigValue(name)end
---@param name System.String
---@param value System.String
---@return System.Void
function UnityEditor.EditorUserSettings.SetConfigValue(name, value)end
---@class UnityEditor.EditorUtility : System.Object
---@field public audioMasterMute System.Boolean @static setter getter
---@field public scriptCompilationFailed System.Boolean @static  getter
UnityEditor.EditorUtility = {}
---@type UnityEditor.EditorUtility
CS.UnityEditor.EditorUtility = UnityEditor.EditorUtility

---@param title System.String
---@param directory System.String
---@param extension System.String
---@return System.String
function UnityEditor.EditorUtility.OpenFilePanel(title, directory, extension)end
---@param title System.String
---@param directory System.String
---@param filters System.String[]
---@return System.String
function UnityEditor.EditorUtility.OpenFilePanelWithFilters(title, directory, filters)end
---@param path System.String
---@return System.Void
function UnityEditor.EditorUtility.RevealInFinder(path)end
---@overload fun(title:System.String, message:System.String, ok:System.String, cancel:System.String):System.Boolean
---@param title System.String
---@param message System.String
---@param ok System.String
---@return System.Boolean
function UnityEditor.EditorUtility.DisplayDialog(title, message, ok)end
---@param title System.String
---@param message System.String
---@param ok System.String
---@param cancel System.String
---@param alt System.String
---@return System.Int32
function UnityEditor.EditorUtility.DisplayDialogComplex(title, message, ok, cancel, alt)end
---@param title System.String
---@param folder System.String
---@param defaultName System.String
---@return System.String
function UnityEditor.EditorUtility.OpenFolderPanel(title, folder, defaultName)end
---@param title System.String
---@param folder System.String
---@param defaultName System.String
---@return System.String
function UnityEditor.EditorUtility.SaveFolderPanel(title, folder, defaultName)end
---@param target UnityEngine.Object
---@param title System.String
---@param warning System.String
---@param okButton System.String
---@return System.Boolean
function UnityEditor.EditorUtility.WarnPrefab(target, title, warning, okButton)end
---@param target UnityEngine.Object
---@return System.Boolean
function UnityEditor.EditorUtility.IsPersistent(target)end
---@param title System.String
---@param directory System.String
---@param defaultName System.String
---@param extension System.String
---@return System.String
function UnityEditor.EditorUtility.SaveFilePanel(title, directory, defaultName, extension)end
---@param a System.String
---@param b System.String
---@return System.Int32
function UnityEditor.EditorUtility.NaturalCompare(a, b)end
---@param instanceID System.Int32
---@return UnityEngine.Object
function UnityEditor.EditorUtility.InstanceIDToObject(instanceID)end
---@overload fun(texture:UnityEngine.Texture2D, format:UnityEngine.TextureFormat, quality:UnityEditor.TextureCompressionQuality):System.Void
---@param texture UnityEngine.Texture2D
---@param format UnityEngine.TextureFormat
---@param quality System.Int32
---@return System.Void
function UnityEditor.EditorUtility.CompressTexture(texture, format, quality)end
---@overload fun(texture:UnityEngine.Cubemap, format:UnityEngine.TextureFormat, quality:UnityEditor.TextureCompressionQuality):System.Void
---@param texture UnityEngine.Cubemap
---@param format UnityEngine.TextureFormat
---@param quality System.Int32
---@return System.Void
function UnityEditor.EditorUtility.CompressCubemapTexture(texture, format, quality)end
---@param target UnityEngine.Object
---@return System.Void
function UnityEditor.EditorUtility.SetDirty(target)end
---@param leftTitle System.String
---@param leftFile System.String
---@param rightTitle System.String
---@param rightFile System.String
---@param ancestorTitle System.String
---@param ancestorFile System.String
---@return System.String
function UnityEditor.EditorUtility.InvokeDiffTool(leftTitle, leftFile, rightTitle, rightFile, ancestorTitle, ancestorFile)end
---@param source UnityEngine.Object
---@param dest UnityEngine.Object
---@return System.Void
function UnityEditor.EditorUtility.CopySerialized(source, dest)end
---@param source System.Object
---@param dest System.Object
---@return System.Void
function UnityEditor.EditorUtility.CopySerializedManagedFieldsOnly(source, dest)end
---@param roots UnityEngine.Object[]
---@return UnityEngine.Object[]
function UnityEditor.EditorUtility.CollectDependencies(roots)end
---@param roots UnityEngine.Object[]
---@return UnityEngine.Object[]
function UnityEditor.EditorUtility.CollectDeepHierarchy(roots)end
---@return System.Void
function UnityEditor.EditorUtility.UnloadUnusedAssets()end
---@return System.Void
function UnityEditor.EditorUtility.UnloadUnusedAssetsIgnoreManagedReferences()end
---@overload fun(bytes:System.Int32):System.String
---@param bytes System.Int64
---@return System.String
function UnityEditor.EditorUtility.FormatBytes(bytes)end
---@param title System.String
---@param info System.String
---@param progress System.Single
---@return System.Void
function UnityEditor.EditorUtility.DisplayProgressBar(title, info, progress)end
---@param title System.String
---@param info System.String
---@param progress System.Single
---@return System.Boolean
function UnityEditor.EditorUtility.DisplayCancelableProgressBar(title, info, progress)end
---@return System.Void
function UnityEditor.EditorUtility.ClearProgressBar()end
---@param target UnityEngine.Object
---@return System.Int32
function UnityEditor.EditorUtility.GetObjectEnabled(target)end
---@param target UnityEngine.Object
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.EditorUtility.SetObjectEnabled(target, enabled)end
---@param renderer UnityEngine.Renderer
---@param renderState UnityEditor.EditorSelectedRenderState
---@return System.Void
function UnityEditor.EditorUtility.SetSelectedRenderState(renderer, renderState)end
---@param obj UnityEngine.Object
---@param path System.String
---@return System.Boolean
function UnityEditor.EditorUtility.ExtractOggFile(obj, path)end
---@param fileName System.String
---@return System.Void
function UnityEditor.EditorUtility.OpenWithDefaultApp(fileName)end
---@param camera UnityEngine.Camera
---@param animate System.Boolean
---@return System.Void
function UnityEditor.EditorUtility.SetCameraAnimateMaterials(camera, animate)end
---@param camera UnityEngine.Camera
---@param time System.Single
---@return System.Void
function UnityEditor.EditorUtility.SetCameraAnimateMaterialsTime(camera, time)end
---@param time System.Single
---@return System.Void
function UnityEditor.EditorUtility.UpdateGlobalShaderProperties(time)end
---@param path System.String
---@param type System.Type
---@return UnityEngine.Object
function UnityEditor.EditorUtility.FindAsset(path, type)end
---@return System.Void
function UnityEditor.EditorUtility.FocusProjectWindow()end
---@param path System.String
---@return System.Boolean
function UnityEditor.EditorUtility.LoadWindowLayout(path)end
---@overload fun(title:System.String, defaultName:System.String, extension:System.String, message:System.String, path:System.String):System.String
---@param title System.String
---@param defaultName System.String
---@param extension System.String
---@param message System.String
---@return System.String
function UnityEditor.EditorUtility.SaveFilePanelInProject(title, defaultName, extension, message)end
---@param source UnityEngine.Object
---@param dest UnityEngine.Object
---@return System.Void
function UnityEditor.EditorUtility.CopySerializedIfDifferent(source, dest)end
---@param asset UnityEngine.Object
---@return System.String
function UnityEditor.EditorUtility.GetAssetPath(asset)end
---@overload fun(includeMonoReferencesAsRoots:System.Boolean):System.Void
---@return System.Void
function UnityEditor.EditorUtility.UnloadUnusedAssetsImmediate()end
---@param selection UnityEngine.Object[]
---@param pathName System.String
---@return System.Boolean
function UnityEditor.EditorUtility.BuildResourceFile(selection, pathName)end
---@param position UnityEngine.Rect
---@param menuItemPath System.String
---@param command UnityEditor.MenuCommand
---@return System.Void
function UnityEditor.EditorUtility.DisplayPopupMenu(position, menuItemPath, command)end
---@overload fun(position:UnityEngine.Rect, options:UnityEngine.GUIContent[], selected:System.Int32, callback:UnityEditor.EditorUtility.SelectMenuItemFunction, userData:System.Object, showHotkey:System.Boolean):System.Void
---@overload fun(position:UnityEngine.Rect, options:UnityEngine.GUIContent[], checkEnabled:System.Func, selected:System.Int32, callback:UnityEditor.EditorUtility.SelectMenuItemFunction, userData:System.Object):System.Void
---@overload fun(position:UnityEngine.Rect, options:UnityEngine.GUIContent[], checkEnabled:System.Func, selected:System.Int32, callback:UnityEditor.EditorUtility.SelectMenuItemFunction, userData:System.Object):System.Void
---@param position UnityEngine.Rect
---@param options UnityEngine.GUIContent[]
---@param selected System.Int32
---@param callback UnityEditor.EditorUtility.SelectMenuItemFunction
---@param userData System.Object
---@return System.Void
function UnityEditor.EditorUtility.DisplayCustomMenu(position, options, selected, callback, userData)end
---@param renderer UnityEngine.Renderer
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.EditorUtility.SetSelectedWireframeHidden(renderer, enabled)end
---@param name System.String
---@param flags UnityEngine.HideFlags
---@param components System.Type[]
---@return UnityEngine.GameObject
function UnityEditor.EditorUtility.CreateGameObjectWithHideFlags(name, flags, components)end
---@param sources System.String[]
---@param references System.String[]
---@param defines System.String[]
---@param outputFile System.String
---@return System.String[]
function UnityEditor.EditorUtility.CompileCSharp(sources, references, defines, outputFile)end
---@param target UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.EditorUtility.InstantiatePrefab(target)end
---@overload fun(go:UnityEngine.GameObject, targetPrefab:UnityEngine.Object, options:UnityEditor.ReplacePrefabOptions):UnityEngine.GameObject
---@param go UnityEngine.GameObject
---@param targetPrefab UnityEngine.Object
---@return UnityEngine.GameObject
function UnityEditor.EditorUtility.ReplacePrefab(go, targetPrefab)end
---@param path System.String
---@return UnityEngine.Object
function UnityEditor.EditorUtility.CreateEmptyPrefab(path)end
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.EditorUtility.ReconnectToLastPrefab(go)end
---@param target UnityEngine.Object
---@return UnityEditor.PrefabType
function UnityEditor.EditorUtility.GetPrefabType(target)end
---@param source UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.EditorUtility.GetPrefabParent(source)end
---@param source UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.EditorUtility.FindPrefabRoot(source)end
---@param source UnityEngine.Object
---@return System.Boolean
function UnityEditor.EditorUtility.ResetToPrefabState(source)end
---@class UnityEditor.EditorSelectedRenderState : System.Enum
UnityEditor.EditorSelectedRenderState = {}
---@type UnityEditor.EditorSelectedRenderState
CS.UnityEditor.EditorSelectedRenderState = UnityEditor.EditorSelectedRenderState

---@return System.Int32 value:0
UnityEditor.EditorSelectedRenderState.Hidden = 0
---@return System.Int32 value:1
UnityEditor.EditorSelectedRenderState.Wireframe = 1
---@return System.Int32 value:2
UnityEditor.EditorSelectedRenderState.Highlight = 2

---@class UnityEditor.InteractionMode : System.Enum
UnityEditor.InteractionMode = {}
---@type UnityEditor.InteractionMode
CS.UnityEditor.InteractionMode = UnityEditor.InteractionMode

---@return System.Int32 value:0
UnityEditor.InteractionMode.AutomatedAction = 0
---@return System.Int32 value:1
UnityEditor.InteractionMode.UserAction = 1

---@class UnityEditor.TextureCompressionQuality : System.Enum
UnityEditor.TextureCompressionQuality = {}
---@type UnityEditor.TextureCompressionQuality
CS.UnityEditor.TextureCompressionQuality = UnityEditor.TextureCompressionQuality

---@return System.Int32 value:0
UnityEditor.TextureCompressionQuality.Fast = 0

---@class UnityEditor.SceneAsset : UnityEngine.Object
UnityEditor.SceneAsset = {}
---@type UnityEditor.SceneAsset
CS.UnityEditor.SceneAsset = UnityEditor.SceneAsset

---@class UnityEditor.EditorWindow : UnityEngine.ScriptableObject
---@field public wantsMouseMove System.Boolean @ setter getter
---@field public wantsMouseEnterLeaveWindow System.Boolean @ setter getter
---@field public autoRepaintOnSceneChange System.Boolean @ setter getter
---@field public maximized System.Boolean @ setter getter
---@field public focusedWindow UnityEditor.EditorWindow @static  getter
---@field public mouseOverWindow UnityEditor.EditorWindow @static  getter
---@field public minSize UnityEngine.Vector2 @ setter getter
---@field public maxSize UnityEngine.Vector2 @ setter getter
---@field public title System.String @ setter getter
---@field public titleContent UnityEngine.GUIContent @ setter getter
---@field public depthBufferBits System.Int32 @ setter getter
---@field public antiAlias System.Int32 @ setter getter
---@field public position UnityEngine.Rect @ setter getter
UnityEditor.EditorWindow = {}
---@type UnityEditor.EditorWindow
CS.UnityEditor.EditorWindow = UnityEditor.EditorWindow

---@return System.Void
function UnityEditor.EditorWindow:BeginWindows()end
---@return System.Void
function UnityEditor.EditorWindow:EndWindows()end
---@param notification UnityEngine.GUIContent
---@return System.Void
function UnityEditor.EditorWindow:ShowNotification(notification)end
---@return System.Void
function UnityEditor.EditorWindow:RemoveNotification()end
---@return System.Void
function UnityEditor.EditorWindow:ShowTab()end
---@return System.Void
function UnityEditor.EditorWindow:Focus()end
---@return System.Void
function UnityEditor.EditorWindow:ShowUtility()end
---@return System.Void
function UnityEditor.EditorWindow:ShowPopup()end
---@param buttonRect UnityEngine.Rect
---@param windowSize UnityEngine.Vector2
---@return System.Void
function UnityEditor.EditorWindow:ShowAsDropDown(buttonRect, windowSize)end
---@overload fun(immediateDisplay:System.Boolean):System.Void
---@return System.Void
function UnityEditor.EditorWindow:Show()end
---@return System.Void
function UnityEditor.EditorWindow:ShowAuxWindow()end
---@overload fun(utility:System.Boolean):any
---@overload fun(t:System.Type):UnityEditor.EditorWindow
---@overload fun(title:System.String):any
---@overload fun(desiredDockNextTo:System.Type[]):any
---@overload fun(t:System.Type, utility:System.Boolean):UnityEditor.EditorWindow
---@overload fun(utility:System.Boolean, title:System.String):any
---@overload fun(title:System.String, focus:System.Boolean):any
---@overload fun(utility:System.Boolean, title:System.String, focus:System.Boolean):any
---@overload fun(title:System.String, desiredDockNextTo:System.Type[]):any
---@overload fun(t:System.Type, utility:System.Boolean, title:System.String):UnityEditor.EditorWindow
---@overload fun(title:System.String, focus:System.Boolean, desiredDockNextTo:System.Type[]):any
---@overload fun(t:System.Type, utility:System.Boolean, title:System.String, focus:System.Boolean):UnityEditor.EditorWindow
---@return any
function UnityEditor.EditorWindow.GetWindow()end
---@overload fun(rect:UnityEngine.Rect, utility:System.Boolean):any
---@overload fun(t:System.Type, rect:UnityEngine.Rect):UnityEditor.EditorWindow
---@overload fun(t:System.Type, rect:UnityEngine.Rect, utility:System.Boolean):UnityEditor.EditorWindow
---@overload fun(rect:UnityEngine.Rect, utility:System.Boolean, title:System.String):any
---@overload fun(rect:UnityEngine.Rect, utility:System.Boolean, title:System.String, focus:System.Boolean):any
---@overload fun(t:System.Type, rect:UnityEngine.Rect, utility:System.Boolean, title:System.String):UnityEditor.EditorWindow
---@param rect UnityEngine.Rect
---@return any
function UnityEditor.EditorWindow.GetWindowWithRect(rect)end
---@overload fun(t:System.Type):System.Void
---@return System.Void
function UnityEditor.EditorWindow.FocusWindowIfItsOpen()end
---@return System.Void
function UnityEditor.EditorWindow:Close()end
---@return System.Void
function UnityEditor.EditorWindow:Repaint()end
---@param e UnityEngine.Event
---@return System.Boolean
function UnityEditor.EditorWindow:SendEvent(e)end
---@class UnityEditor.ExportPackageOptions : System.Enum
UnityEditor.ExportPackageOptions = {}
---@type UnityEditor.ExportPackageOptions
CS.UnityEditor.ExportPackageOptions = UnityEditor.ExportPackageOptions

---@return System.Int32 value:0
UnityEditor.ExportPackageOptions.Default = 0
---@return System.Int32 value:1
UnityEditor.ExportPackageOptions.Interactive = 1
---@return System.Int32 value:2
UnityEditor.ExportPackageOptions.Recurse = 2
---@return System.Int32 value:4
UnityEditor.ExportPackageOptions.IncludeDependencies = 4

---@class UnityEditor.FileUtil : System.Object
UnityEditor.FileUtil = {}
---@type UnityEditor.FileUtil
CS.UnityEditor.FileUtil = UnityEditor.FileUtil

---@param path System.String
---@return System.Boolean
function UnityEditor.FileUtil.DeleteFileOrDirectory(path)end
---@param source System.String
---@param dest System.String
---@return System.Void
function UnityEditor.FileUtil.CopyFileOrDirectory(source, dest)end
---@param source System.String
---@param dest System.String
---@return System.Void
function UnityEditor.FileUtil.CopyFileOrDirectoryFollowSymlinks(source, dest)end
---@param source System.String
---@param dest System.String
---@return System.Void
function UnityEditor.FileUtil.MoveFileOrDirectory(source, dest)end
---@return System.String
function UnityEditor.FileUtil.GetUniqueTempPathInProject()end
---@param path System.String
---@return System.String
function UnityEditor.FileUtil.GetProjectRelativePath(path)end
---@param src System.String
---@param dst System.String
---@return System.Void
function UnityEditor.FileUtil.ReplaceFile(src, dst)end
---@param src System.String
---@param dst System.String
---@return System.Void
function UnityEditor.FileUtil.ReplaceDirectory(src, dst)end
---@class UnityEditor.GameObjectUtility : System.Object
UnityEditor.GameObjectUtility = {}
---@type UnityEditor.GameObjectUtility
CS.UnityEditor.GameObjectUtility = UnityEditor.GameObjectUtility

---@param go UnityEngine.GameObject
---@return UnityEditor.StaticEditorFlags
function UnityEditor.GameObjectUtility.GetStaticEditorFlags(go)end
---@param go UnityEngine.GameObject
---@param flags UnityEditor.StaticEditorFlags
---@return System.Void
function UnityEditor.GameObjectUtility.SetStaticEditorFlags(go, flags)end
---@param go UnityEngine.GameObject
---@param flags UnityEditor.StaticEditorFlags
---@return System.Boolean
function UnityEditor.GameObjectUtility.AreStaticEditorFlagsSet(go, flags)end
---@param go UnityEngine.GameObject
---@return System.Int32
function UnityEditor.GameObjectUtility.GetNavMeshArea(go)end
---@param go UnityEngine.GameObject
---@param areaIndex System.Int32
---@return System.Void
function UnityEditor.GameObjectUtility.SetNavMeshArea(go, areaIndex)end
---@param name System.String
---@return System.Int32
function UnityEditor.GameObjectUtility.GetNavMeshAreaFromName(name)end
---@return System.String[]
function UnityEditor.GameObjectUtility.GetNavMeshAreaNames()end
---@param parent UnityEngine.Transform
---@param name System.String
---@return System.String
function UnityEditor.GameObjectUtility.GetUniqueNameForSibling(parent, name)end
---@param self UnityEngine.GameObject
---@return System.Void
function UnityEditor.GameObjectUtility.EnsureUniqueNameForSibling(self)end
---@param child UnityEngine.GameObject
---@param parent UnityEngine.GameObject
---@return System.Void
function UnityEditor.GameObjectUtility.SetParentAndAlign(child, parent)end
---@param go UnityEngine.GameObject
---@return System.Int32
function UnityEditor.GameObjectUtility.GetNavMeshLayer(go)end
---@param go UnityEngine.GameObject
---@param areaIndex System.Int32
---@return System.Void
function UnityEditor.GameObjectUtility.SetNavMeshLayer(go, areaIndex)end
---@param name System.String
---@return System.Int32
function UnityEditor.GameObjectUtility.GetNavMeshLayerFromName(name)end
---@return System.String[]
function UnityEditor.GameObjectUtility.GetNavMeshLayerNames()end
---@class UnityEditor.GUID : System.ValueType
UnityEditor.GUID = {}
---@type UnityEditor.GUID
CS.UnityEditor.GUID = UnityEditor.GUID

---@param x UnityEditor.GUID
---@param y UnityEditor.GUID
---@return System.Boolean
function UnityEditor.GUID.op_Equality(x, y)end
---@param x UnityEditor.GUID
---@param y UnityEditor.GUID
---@return System.Boolean
function UnityEditor.GUID.op_Inequality(x, y)end
---@param x UnityEditor.GUID
---@param y UnityEditor.GUID
---@return System.Boolean
function UnityEditor.GUID.op_LessThan(x, y)end
---@param x UnityEditor.GUID
---@param y UnityEditor.GUID
---@return System.Boolean
function UnityEditor.GUID.op_GreaterThan(x, y)end
---@overload fun(obj:UnityEditor.GUID):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEditor.GUID:Equals(obj)end
---@return System.Int32
function UnityEditor.GUID:GetHashCode()end
---@overload fun(rhs:UnityEditor.GUID):System.Int32
---@param obj System.Object
---@return System.Int32
function UnityEditor.GUID:CompareTo(obj)end
---@return System.Boolean
function UnityEditor.GUID:Empty()end
---@param hex System.String
---@return System.Boolean
function UnityEditor.GUID:ParseExact(hex)end
---@param hex System.String
---@param result UnityEditor.GUID
---@return System.Boolean
function UnityEditor.GUID.TryParse(hex, result)end
---@return UnityEditor.GUID
function UnityEditor.GUID.Generate()end
---@return System.String
function UnityEditor.GUID:ToString()end
---@class UnityEditor.Handles : System.Object
---@field public lighting System.Boolean @static setter getter
---@field public color UnityEngine.Color @static setter getter
---@field public zTest UnityEngine.Rendering.CompareFunction @static setter getter
---@field public matrix UnityEngine.Matrix4x4 @static setter getter
---@field public inverseMatrix UnityEngine.Matrix4x4 @static  getter
---@field public xAxisColor UnityEngine.Color @static  getter
---@field public yAxisColor UnityEngine.Color @static  getter
---@field public zAxisColor UnityEngine.Color @static  getter
---@field public centerColor UnityEngine.Color @static  getter
---@field public selectedColor UnityEngine.Color @static  getter
---@field public preselectionColor UnityEngine.Color @static  getter
---@field public secondaryColor UnityEngine.Color @static  getter
---@field public currentCamera UnityEngine.Camera @ setter getter
UnityEditor.Handles = {}
---@type UnityEditor.Handles
CS.UnityEditor.Handles = UnityEditor.Handles

---@param points UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.Handles.DrawPolyLine(points)end
---@param p1 UnityEngine.Vector3
---@param p2 UnityEngine.Vector3
---@return System.Void
function UnityEditor.Handles.DrawLine(p1, p2)end
---@overload fun(points:UnityEngine.Vector3[], segmentIndices:System.Int32[]):System.Void
---@param lineSegments UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.Handles.DrawLines(lineSegments)end
---@param p1 UnityEngine.Vector3
---@param p2 UnityEngine.Vector3
---@param screenSpaceSize System.Single
---@return System.Void
function UnityEditor.Handles.DrawDottedLine(p1, p2, screenSpaceSize)end
---@overload fun(points:UnityEngine.Vector3[], segmentIndices:System.Int32[], screenSpaceSize:System.Single):System.Void
---@param lineSegments UnityEngine.Vector3[]
---@param screenSpaceSize System.Single
---@return System.Void
function UnityEditor.Handles.DrawDottedLines(lineSegments, screenSpaceSize)end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@return System.Void
function UnityEditor.Handles.DrawWireCube(center, size)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.Handles.DrawGizmos(camera)end
---@overload fun(id:System.Int32, rotation:UnityEngine.Quaternion, position:UnityEngine.Vector3, axis:UnityEngine.Vector3, size:System.Single, cutoffPlane:System.Boolean, snap:System.Single):UnityEngine.Quaternion
---@param rotation UnityEngine.Quaternion
---@param position UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@param size System.Single
---@param cutoffPlane System.Boolean
---@param snap System.Single
---@return UnityEngine.Quaternion
function UnityEditor.Handles.Disc(rotation, position, axis, size, cutoffPlane, snap)end
---@overload fun(id:System.Int32, rotation:UnityEngine.Quaternion, position:UnityEngine.Vector3, size:System.Single):UnityEngine.Quaternion
---@param rotation UnityEngine.Quaternion
---@param position UnityEngine.Vector3
---@param size System.Single
---@return UnityEngine.Quaternion
function UnityEditor.Handles.FreeRotateHandle(rotation, position, size)end
---@overload fun(position:UnityEngine.Vector3, direction:UnityEngine.Vector3, size:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:System.Single):UnityEngine.Vector3
---@overload fun(position:UnityEngine.Vector3, direction:UnityEngine.Vector3, size:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:System.Single):UnityEngine.Vector3
---@overload fun(controlID:System.Int32, position:UnityEngine.Vector3, direction:UnityEngine.Vector3, size:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:System.Single):UnityEngine.Vector3
---@overload fun(controlID:System.Int32, position:UnityEngine.Vector3, offset:UnityEngine.Vector3, direction:UnityEngine.Vector3, size:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:System.Single):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.Handles.Slider(position, direction)end
---@overload fun(position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, size:System.Single, snap:UnityEngine.Vector3, capFunc:UnityEditor.Handles.DrawCapFunction):UnityEngine.Vector3
---@overload fun(controlID:System.Int32, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, size:System.Single, snap:UnityEngine.Vector3, capFunction:UnityEditor.Handles.CapFunction):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param snap UnityEngine.Vector3
---@param capFunction UnityEditor.Handles.CapFunction
---@return UnityEngine.Vector3
function UnityEditor.Handles.FreeMoveHandle(position, rotation, size, snap, capFunction)end
---@overload fun(value:System.Single, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, size:System.Single, capFunc:UnityEditor.Handles.DrawCapFunction, snap:System.Single):System.Single
---@overload fun(controlID:System.Int32, value:System.Single, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, size:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:System.Single):System.Single
---@param value System.Single
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param capFunction UnityEditor.Handles.CapFunction
---@param snap System.Single
---@return System.Single
function UnityEditor.Handles.ScaleValueHandle(value, position, rotation, size, capFunction, snap)end
---@overload fun(position:UnityEngine.Vector3, direction:UnityEngine.Quaternion, size:System.Single, pickSize:System.Single, capFunc:UnityEditor.Handles.DrawCapFunction):System.Boolean
---@param position UnityEngine.Vector3
---@param direction UnityEngine.Quaternion
---@param size System.Single
---@param pickSize System.Single
---@param capFunction UnityEditor.Handles.CapFunction
---@return System.Boolean
function UnityEditor.Handles.Button(position, direction, size, pickSize, capFunction)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.CubeHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.SphereHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.ConeHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.CylinderHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.RectangleHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.DotHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.CircleHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.ArrowHandleCap(controlID, position, rotation, size, eventType)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param eventType UnityEngine.EventType
---@return System.Void
function UnityEditor.Handles.DrawSelectionFrame(controlID, position, rotation, size, eventType)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEditor.Handles.PositionHandle(position, rotation)end
---@param rotation UnityEngine.Quaternion
---@param position UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEditor.Handles.RotationHandle(rotation, position)end
---@param scale UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return UnityEngine.Vector3
function UnityEditor.Handles.ScaleHandle(scale, position, rotation, size)end
---@overload fun(rotation:UnityEngine.Quaternion, position:UnityEngine.Vector3, radius:System.Single, handlesOnly:System.Boolean):System.Single
---@param rotation UnityEngine.Quaternion
---@param position UnityEngine.Vector3
---@param radius System.Single
---@return System.Single
function UnityEditor.Handles.RadiusHandle(rotation, position, radius)end
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:System.Single):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:System.Single, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:System.Single, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, offset:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, offset:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, offset:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, capFunction:UnityEditor.Handles.CapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@overload fun(id:System.Int32, handlePos:UnityEngine.Vector3, offset:UnityEngine.Vector3, handleDir:UnityEngine.Vector3, slideDir1:UnityEngine.Vector3, slideDir2:UnityEngine.Vector3, handleSize:System.Single, drawFunc:UnityEditor.Handles.DrawCapFunction, snap:UnityEngine.Vector2, drawHelper:System.Boolean):UnityEngine.Vector3
---@param handlePos UnityEngine.Vector3
---@param handleDir UnityEngine.Vector3
---@param slideDir1 UnityEngine.Vector3
---@param slideDir2 UnityEngine.Vector3
---@param handleSize System.Single
---@param capFunction UnityEditor.Handles.CapFunction
---@param snap System.Single
---@return UnityEngine.Vector3
function UnityEditor.Handles.Slider2D(handlePos, handleDir, slideDir1, slideDir2, handleSize, capFunction, snap)end
---@param scale System.Single
---@param position UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@param snap System.Single
---@return System.Single
function UnityEditor.Handles.ScaleSlider(scale, position, direction, rotation, size, snap)end
---@param val System.Single
---@param snap System.Single
---@return System.Single
function UnityEditor.Handles.SnapValue(val, snap)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.CubeCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.SphereCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.ConeCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.CylinderCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.RectangleCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.SelectionFrame(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DotCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.CircleCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.ArrowCap(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawCylinder(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawSphere(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawRectangle(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawCube(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawArrow(controlID, position, rotation, size)end
---@param controlID System.Int32
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Void
function UnityEditor.Handles.DrawCone(controlID, position, rotation, size)end
---@overload fun(width:System.Single, points:UnityEngine.Vector3[]):System.Void
---@overload fun(width:System.Single, actualNumberOfPoints:System.Int32, points:UnityEngine.Vector3[]):System.Void
---@overload fun(lineTex:UnityEngine.Texture2D, points:UnityEngine.Vector3[]):System.Void
---@overload fun(lineTex:UnityEngine.Texture2D, width:System.Single, points:UnityEngine.Vector3[]):System.Void
---@param points UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.Handles.DrawAAPolyLine(points)end
---@param points UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.Handles.DrawAAConvexPolygon(points)end
---@param startPosition UnityEngine.Vector3
---@param endPosition UnityEngine.Vector3
---@param startTangent UnityEngine.Vector3
---@param endTangent UnityEngine.Vector3
---@param color UnityEngine.Color
---@param texture UnityEngine.Texture2D
---@param width System.Single
---@return System.Void
function UnityEditor.Handles.DrawBezier(startPosition, endPosition, startTangent, endTangent, color, texture, width)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param radius System.Single
---@return System.Void
function UnityEditor.Handles.DrawWireDisc(center, normal, radius)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param from UnityEngine.Vector3
---@param angle System.Single
---@param radius System.Single
---@return System.Void
function UnityEditor.Handles.DrawWireArc(center, normal, from, angle, radius)end
---@overload fun(verts:UnityEngine.Vector3[], faceColor:UnityEngine.Color, outlineColor:UnityEngine.Color):System.Void
---@param rectangle UnityEngine.Rect
---@param faceColor UnityEngine.Color
---@param outlineColor UnityEngine.Color
---@return System.Void
function UnityEditor.Handles.DrawSolidRectangleWithOutline(rectangle, faceColor, outlineColor)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param radius System.Single
---@return System.Void
function UnityEditor.Handles.DrawSolidDisc(center, normal, radius)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param from UnityEngine.Vector3
---@param angle System.Single
---@param radius System.Single
---@return System.Void
function UnityEditor.Handles.DrawSolidArc(center, normal, from, angle, radius)end
---@overload fun(position:UnityEngine.Vector3, image:UnityEngine.Texture):System.Void
---@overload fun(position:UnityEngine.Vector3, content:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Vector3, text:System.String, style:UnityEngine.GUIStyle):System.Void
---@overload fun(position:UnityEngine.Vector3, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):System.Void
---@param position UnityEngine.Vector3
---@param text System.String
---@return System.Void
function UnityEditor.Handles.Label(position, text)end
---@return UnityEngine.Vector2
function UnityEditor.Handles.GetMainGameViewSize()end
---@param position UnityEngine.Rect
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.Handles.ClearCamera(position, camera)end
---@overload fun(position:UnityEngine.Rect, camera:UnityEngine.Camera, drawMode:UnityEditor.DrawCameraMode):System.Void
---@param position UnityEngine.Rect
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.Handles.DrawCamera(position, camera)end
---@overload fun(position:UnityEngine.Rect, camera:UnityEngine.Camera):System.Void
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.Handles.SetCamera(camera)end
---@overload fun(position:UnityEngine.Rect):System.Void
---@return System.Void
function UnityEditor.Handles.BeginGUI()end
---@return System.Void
function UnityEditor.Handles.EndGUI()end
---@param startPosition UnityEngine.Vector3
---@param endPosition UnityEngine.Vector3
---@param startTangent UnityEngine.Vector3
---@param endTangent UnityEngine.Vector3
---@param division System.Int32
---@return UnityEngine.Vector3[]
function UnityEditor.Handles.MakeBezierPoints(startPosition, endPosition, startTangent, endTangent, division)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEditor.Handles.DoPositionHandle(position, rotation)end
---@param rotation UnityEngine.Quaternion
---@param position UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEditor.Handles.DoRotationHandle(rotation, position)end
---@param scale UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return UnityEngine.Vector3
function UnityEditor.Handles.DoScaleHandle(scale, position, rotation, size)end
---@class UnityEditor.Handles.DrawingScope : System.ValueType
---@field public originalColor UnityEngine.Color @  getter
---@field public originalMatrix UnityEngine.Matrix4x4 @  getter
UnityEditor.Handles.DrawingScope = {}
---@type UnityEditor.Handles.DrawingScope
CS.UnityEditor.Handles.DrawingScope = UnityEditor.Handles.DrawingScope

---@return System.Void
function UnityEditor.Handles.DrawingScope:Dispose()end
---@class UnityEditor.HandleUtility : System.Object
---@field public acceleration System.Single @static  getter
---@field public niceMouseDelta System.Single @static  getter
---@field public niceMouseDeltaZoom System.Single @static  getter
---@field public nearestControl System.Int32 @static setter getter
---@field public handleMaterial UnityEngine.Material @static  getter
UnityEditor.HandleUtility = {}
---@type UnityEditor.HandleUtility
CS.UnityEditor.HandleUtility = UnityEditor.HandleUtility

---@param point UnityEngine.Vector3
---@param startPosition UnityEngine.Vector3
---@param endPosition UnityEngine.Vector3
---@param startTangent UnityEngine.Vector3
---@param endTangent UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.DistancePointBezier(point, startPosition, endPosition, startTangent, endTangent)end
---@param src UnityEngine.Vector2
---@param dest UnityEngine.Vector2
---@param srcPosition UnityEngine.Vector3
---@param constraintDir UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.CalcLineTranslation(src, dest, srcPosition, constraintDir)end
---@param point UnityEngine.Vector3
---@param linePoint UnityEngine.Vector3
---@param lineDirection UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.PointOnLineParameter(point, linePoint, lineDirection)end
---@param point UnityEngine.Vector3
---@param lineStart UnityEngine.Vector3
---@param lineEnd UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.HandleUtility.ProjectPointLine(point, lineStart, lineEnd)end
---@param point UnityEngine.Vector3
---@param lineStart UnityEngine.Vector3
---@param lineEnd UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.DistancePointLine(point, lineStart, lineEnd)end
---@param p1 UnityEngine.Vector3
---@param p2 UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.DistanceToLine(p1, p2)end
---@param position UnityEngine.Vector3
---@param radius System.Single
---@return System.Single
function UnityEditor.HandleUtility.DistanceToCircle(position, radius)end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param size System.Single
---@return System.Single
function UnityEditor.HandleUtility.DistanceToRectangle(position, rotation, size)end
---@param p UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return System.Single
function UnityEditor.HandleUtility.DistancePointToLine(p, a, b)end
---@param p UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return System.Single
function UnityEditor.HandleUtility.DistancePointToLineSegment(p, a, b)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param radius System.Single
---@return System.Single
function UnityEditor.HandleUtility.DistanceToDisc(center, normal, radius)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param radius System.Single
---@return UnityEngine.Vector3
function UnityEditor.HandleUtility.ClosestPointToDisc(center, normal, radius)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param from UnityEngine.Vector3
---@param angle System.Single
---@param radius System.Single
---@return System.Single
function UnityEditor.HandleUtility.DistanceToArc(center, normal, from, angle, radius)end
---@param center UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param from UnityEngine.Vector3
---@param angle System.Single
---@param radius System.Single
---@return UnityEngine.Vector3
function UnityEditor.HandleUtility.ClosestPointToArc(center, normal, from, angle, radius)end
---@param points UnityEngine.Vector3[]
---@return System.Single
function UnityEditor.HandleUtility.DistanceToPolyLine(points)end
---@param vertices UnityEngine.Vector3[]
---@return UnityEngine.Vector3
function UnityEditor.HandleUtility.ClosestPointToPolyLine(vertices)end
---@param controlId System.Int32
---@param distance System.Single
---@return System.Void
function UnityEditor.HandleUtility.AddControl(controlId, distance)end
---@param controlId System.Int32
---@return System.Void
function UnityEditor.HandleUtility.AddDefaultControl(controlId)end
---@param position UnityEngine.Vector3
---@return System.Single
function UnityEditor.HandleUtility.GetHandleSize(position)end
---@param world UnityEngine.Vector3
---@return UnityEngine.Vector2
function UnityEditor.HandleUtility.WorldToGUIPoint(world)end
---@param world UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.HandleUtility.WorldToGUIPointWithDepth(world)end
---@param guiPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEditor.HandleUtility.GUIPointToScreenPixelCoordinate(guiPoint)end
---@param position UnityEngine.Vector2
---@return UnityEngine.Ray
function UnityEditor.HandleUtility.GUIPointToWorldRay(position)end
---@param position UnityEngine.Vector3
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return UnityEngine.Rect
function UnityEditor.HandleUtility.WorldPointToSizedRect(position, content, style)end
---@overload fun(rect:UnityEngine.Rect, selectPrefabRootsOnly:System.Boolean):UnityEngine.GameObject[]
---@param rect UnityEngine.Rect
---@return UnityEngine.GameObject[]
function UnityEditor.HandleUtility.PickRectObjects(rect)end
---@overload fun(position:UnityEngine.Vector2, selectPrefabRoot:System.Boolean):UnityEngine.GameObject
---@overload fun(position:UnityEngine.Vector2, ignore:UnityEngine.GameObject[], materialIndex:System.Int32):UnityEngine.GameObject
---@overload fun(position:UnityEngine.Vector2, selectPrefabRoot:System.Boolean, ignore:UnityEngine.GameObject[]):UnityEngine.GameObject
---@param position UnityEngine.Vector2
---@param materialIndex System.Int32
---@return UnityEngine.GameObject
function UnityEditor.HandleUtility.PickGameObject(position, materialIndex)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.HandleUtility.PushCamera(camera)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.HandleUtility.PopCamera(camera)end
---@param ray UnityEngine.Ray
---@return System.Object
function UnityEditor.HandleUtility.RaySnap(ray)end
---@return System.Void
function UnityEditor.HandleUtility.Repaint()end
---@class UnityEditor.Help : System.Object
UnityEditor.Help = {}
---@type UnityEditor.Help
CS.UnityEditor.Help = UnityEditor.Help

---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEditor.Help.HasHelpForObject(obj)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.Help.GetHelpURLForObject(obj)end
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Help.ShowHelpForObject(obj)end
---@param page System.String
---@return System.Void
function UnityEditor.Help.ShowHelpPage(page)end
---@param url System.String
---@return System.Void
function UnityEditor.Help.BrowseURL(url)end
---@class UnityEditor.MaterialProperty : System.Object
---@field public targets UnityEngine.Object[] @  getter
---@field public type UnityEditor.MaterialProperty.PropType @  getter
---@field public name System.String @  getter
---@field public displayName System.String @  getter
---@field public flags UnityEditor.MaterialProperty.PropFlags @  getter
---@field public textureDimension UnityEngine.Rendering.TextureDimension @  getter
---@field public rangeLimits UnityEngine.Vector2 @  getter
---@field public hasMixedValue System.Boolean @  getter
---@field public applyPropertyCallback UnityEditor.MaterialProperty.ApplyPropertyCallback @ setter getter
---@field public colorValue UnityEngine.Color @ setter getter
---@field public vectorValue UnityEngine.Vector4 @ setter getter
---@field public floatValue System.Single @ setter getter
---@field public textureValue UnityEngine.Texture @ setter getter
---@field public textureScaleAndOffset UnityEngine.Vector4 @ setter getter
UnityEditor.MaterialProperty = {}
---@type UnityEditor.MaterialProperty
CS.UnityEditor.MaterialProperty = UnityEditor.MaterialProperty

---@param block UnityEngine.MaterialPropertyBlock
---@return System.Void
function UnityEditor.MaterialProperty:ReadFromMaterialPropertyBlock(block)end
---@param materialblock UnityEngine.MaterialPropertyBlock
---@param changedPropertyMask System.Int32
---@return System.Void
function UnityEditor.MaterialProperty:WriteToMaterialPropertyBlock(materialblock, changedPropertyMask)end
---@class UnityEditor.MaterialProperty.PropType : System.Enum
UnityEditor.MaterialProperty.PropType = {}
---@type UnityEditor.MaterialProperty.PropType
CS.UnityEditor.MaterialProperty.PropType = UnityEditor.MaterialProperty.PropType

---@return System.Int32 value:0
UnityEditor.MaterialProperty.PropType.Color = 0
---@return System.Int32 value:1
UnityEditor.MaterialProperty.PropType.Vector = 1
---@return System.Int32 value:2
UnityEditor.MaterialProperty.PropType.Float = 2
---@return System.Int32 value:3
UnityEditor.MaterialProperty.PropType.Range = 3
---@return System.Int32 value:4
UnityEditor.MaterialProperty.PropType.Texture = 4

---@class UnityEditor.MaterialProperty.TexDim : System.Enum
UnityEditor.MaterialProperty.TexDim = {}
---@type UnityEditor.MaterialProperty.TexDim
CS.UnityEditor.MaterialProperty.TexDim = UnityEditor.MaterialProperty.TexDim

---@return System.Int32 value:0
UnityEditor.MaterialProperty.TexDim.None = 0
---@return System.Int32 value:2
UnityEditor.MaterialProperty.TexDim.Tex2D = 2
---@return System.Int32 value:3
UnityEditor.MaterialProperty.TexDim.Tex3D = 3
---@return System.Int32 value:4
UnityEditor.MaterialProperty.TexDim.Cube = 4

---@class UnityEditor.MaterialProperty.PropFlags : System.Enum
UnityEditor.MaterialProperty.PropFlags = {}
---@type UnityEditor.MaterialProperty.PropFlags
CS.UnityEditor.MaterialProperty.PropFlags = UnityEditor.MaterialProperty.PropFlags

---@return System.Int32 value:0
UnityEditor.MaterialProperty.PropFlags.None = 0
---@return System.Int32 value:1
UnityEditor.MaterialProperty.PropFlags.HideInInspector = 1
---@return System.Int32 value:2
UnityEditor.MaterialProperty.PropFlags.PerRendererData = 2
---@return System.Int32 value:4
UnityEditor.MaterialProperty.PropFlags.NoScaleOffset = 4

---@class UnityEditor.Menu : System.Object
UnityEditor.Menu = {}
---@type UnityEditor.Menu
CS.UnityEditor.Menu = UnityEditor.Menu

---@param menuPath System.String
---@param isChecked System.Boolean
---@return System.Void
function UnityEditor.Menu.SetChecked(menuPath, isChecked)end
---@param menuPath System.String
---@return System.Boolean
function UnityEditor.Menu.GetChecked(menuPath)end
---@class UnityEditor.MenuCommand : System.Object
---@field public context UnityEngine.Object
---@field public userData System.Int32
UnityEditor.MenuCommand = {}
---@type UnityEditor.MenuCommand
CS.UnityEditor.MenuCommand = UnityEditor.MenuCommand

---@class UnityEditor.MenuItem : System.Attribute
---@field public menuItem System.String
---@field public validate System.Boolean
---@field public priority System.Int32
UnityEditor.MenuItem = {}
---@type UnityEditor.MenuItem
CS.UnityEditor.MenuItem = UnityEditor.MenuItem

---@class UnityEditor.MeshUtility : System.Object
UnityEditor.MeshUtility = {}
---@type UnityEditor.MeshUtility
CS.UnityEditor.MeshUtility = UnityEditor.MeshUtility

---@param mesh UnityEngine.Mesh
---@return System.Void
function UnityEditor.MeshUtility.Optimize(mesh)end
---@param mesh UnityEngine.Mesh
---@param compression UnityEditor.ModelImporterMeshCompression
---@return System.Void
function UnityEditor.MeshUtility.SetMeshCompression(mesh, compression)end
---@param mesh UnityEngine.Mesh
---@return UnityEditor.ModelImporterMeshCompression
function UnityEditor.MeshUtility.GetMeshCompression(mesh)end
---@param src UnityEngine.Mesh
---@param triUV UnityEngine.Vector2[]
---@return System.Void
function UnityEditor.MeshUtility.SetPerTriangleUV2(src, triUV)end
---@class UnityEditor.MonoScript : UnityEngine.TextAsset
UnityEditor.MonoScript = {}
---@type UnityEditor.MonoScript
CS.UnityEditor.MonoScript = UnityEditor.MonoScript

---@return System.Type
function UnityEditor.MonoScript:GetClass()end
---@param behaviour UnityEngine.MonoBehaviour
---@return UnityEditor.MonoScript
function UnityEditor.MonoScript.FromMonoBehaviour(behaviour)end
---@param scriptableObject UnityEngine.ScriptableObject
---@return UnityEditor.MonoScript
function UnityEditor.MonoScript.FromScriptableObject(scriptableObject)end
---@class UnityEditor.ObjectFactory : System.Object
UnityEditor.ObjectFactory = {}
---@type UnityEditor.ObjectFactory
CS.UnityEditor.ObjectFactory = UnityEditor.ObjectFactory

---@param value System.Action
---@return System.Void
function UnityEditor.ObjectFactory.add_componentWasAdded(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.ObjectFactory.remove_componentWasAdded(value)end
---@overload fun(type:System.Type):UnityEngine.Object
---@return any
function UnityEditor.ObjectFactory.CreateInstance()end
---@overload fun(gameObject:UnityEngine.GameObject, type:System.Type):UnityEngine.Component
---@param gameObject UnityEngine.GameObject
---@return any
function UnityEditor.ObjectFactory.AddComponent(gameObject)end
---@param name System.String
---@param types System.Type[]
---@return UnityEngine.GameObject
function UnityEditor.ObjectFactory.CreateGameObject(name, types)end
---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function UnityEditor.ObjectFactory.CreatePrimitive(type)end
---@class UnityEditor.ObjectNames : System.Object
UnityEditor.ObjectNames = {}
---@type UnityEditor.ObjectNames
CS.UnityEditor.ObjectNames = UnityEditor.ObjectNames

---@param name System.String
---@return System.String
function UnityEditor.ObjectNames.NicifyVariableName(name)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.ObjectNames.GetClassName(obj)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.ObjectNames.GetDragAndDropTitle(obj)end
---@param obj UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.ObjectNames.SetNameSmart(obj, name)end
---@param existingNames System.String[]
---@param name System.String
---@return System.String
function UnityEditor.ObjectNames.GetUniqueName(existingNames, name)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.ObjectNames.GetInspectorTitle(obj)end
---@param name System.String
---@return System.String
function UnityEditor.ObjectNames.MangleVariableName(name)end
---@param obj UnityEngine.Object
---@return System.String
function UnityEditor.ObjectNames.GetPropertyEditorTitle(obj)end
---@class UnityEditor.PackageInfo : System.ValueType
---@field public packagePath System.String
---@field public jsonInfo System.String
---@field public iconURL System.String
UnityEditor.PackageInfo = {}
---@type UnityEditor.PackageInfo
CS.UnityEditor.PackageInfo = UnityEditor.PackageInfo

---@class UnityEditor.ResolutionDialogSetting : System.Enum
UnityEditor.ResolutionDialogSetting = {}
---@type UnityEditor.ResolutionDialogSetting
CS.UnityEditor.ResolutionDialogSetting = UnityEditor.ResolutionDialogSetting

---@return System.Int32 value:0
UnityEditor.ResolutionDialogSetting.Disabled = 0
---@return System.Int32 value:1
UnityEditor.ResolutionDialogSetting.Enabled = 1
---@return System.Int32 value:2
UnityEditor.ResolutionDialogSetting.HiddenByDefault = 2

---@class UnityEditor.ScriptingImplementation : System.Enum
UnityEditor.ScriptingImplementation = {}
---@type UnityEditor.ScriptingImplementation
CS.UnityEditor.ScriptingImplementation = UnityEditor.ScriptingImplementation

---@return System.Int32 value:0
UnityEditor.ScriptingImplementation.Mono2x = 0
---@return System.Int32 value:1
UnityEditor.ScriptingImplementation.IL2CPP = 1
---@return System.Int32 value:2
UnityEditor.ScriptingImplementation.WinRTDotNET = 2

---@class UnityEditor.Il2CppCompilerConfiguration : System.Enum
UnityEditor.Il2CppCompilerConfiguration = {}
---@type UnityEditor.Il2CppCompilerConfiguration
CS.UnityEditor.Il2CppCompilerConfiguration = UnityEditor.Il2CppCompilerConfiguration

---@return System.Int32 value:0
UnityEditor.Il2CppCompilerConfiguration.Debug = 0
---@return System.Int32 value:1
UnityEditor.Il2CppCompilerConfiguration.Release = 1
---@return System.Int32 value:2
UnityEditor.Il2CppCompilerConfiguration.Master = 2

---@class UnityEditor.AspectRatio : System.Enum
UnityEditor.AspectRatio = {}
---@type UnityEditor.AspectRatio
CS.UnityEditor.AspectRatio = UnityEditor.AspectRatio

---@return System.Int32 value:0
UnityEditor.AspectRatio.AspectOthers = 0
---@return System.Int32 value:1
UnityEditor.AspectRatio.Aspect4by3 = 1
---@return System.Int32 value:2
UnityEditor.AspectRatio.Aspect5by4 = 2
---@return System.Int32 value:3
UnityEditor.AspectRatio.Aspect16by10 = 3
---@return System.Int32 value:4
UnityEditor.AspectRatio.Aspect16by9 = 4

---@class UnityEditor.MacFullscreenMode : System.Enum
UnityEditor.MacFullscreenMode = {}
---@type UnityEditor.MacFullscreenMode
CS.UnityEditor.MacFullscreenMode = UnityEditor.MacFullscreenMode

---@return System.Int32 value:0
UnityEditor.MacFullscreenMode.CaptureDisplay = 0
---@return System.Int32 value:1
UnityEditor.MacFullscreenMode.FullscreenWindow = 1
---@return System.Int32 value:2
UnityEditor.MacFullscreenMode.FullscreenWindowWithDockAndMenuBar = 2

---@class UnityEditor.D3D9FullscreenMode : System.Enum
UnityEditor.D3D9FullscreenMode = {}
---@type UnityEditor.D3D9FullscreenMode
CS.UnityEditor.D3D9FullscreenMode = UnityEditor.D3D9FullscreenMode

---@return System.Int32 value:0
UnityEditor.D3D9FullscreenMode.ExclusiveMode = 0
---@return System.Int32 value:1
UnityEditor.D3D9FullscreenMode.FullscreenWindow = 1

---@class UnityEditor.D3D11FullscreenMode : System.Enum
UnityEditor.D3D11FullscreenMode = {}
---@type UnityEditor.D3D11FullscreenMode
CS.UnityEditor.D3D11FullscreenMode = UnityEditor.D3D11FullscreenMode

---@return System.Int32 value:0
UnityEditor.D3D11FullscreenMode.ExclusiveMode = 0
---@return System.Int32 value:1
UnityEditor.D3D11FullscreenMode.FullscreenWindow = 1

---@class UnityEditor.StereoRenderingPath : System.Enum
UnityEditor.StereoRenderingPath = {}
---@type UnityEditor.StereoRenderingPath
CS.UnityEditor.StereoRenderingPath = UnityEditor.StereoRenderingPath

---@return System.Int32 value:0
UnityEditor.StereoRenderingPath.MultiPass = 0
---@return System.Int32 value:1
UnityEditor.StereoRenderingPath.SinglePass = 1
---@return System.Int32 value:2
UnityEditor.StereoRenderingPath.Instancing = 2

---@class UnityEditor.StrippingLevel : System.Enum
UnityEditor.StrippingLevel = {}
---@type UnityEditor.StrippingLevel
CS.UnityEditor.StrippingLevel = UnityEditor.StrippingLevel

---@return System.Int32 value:0
UnityEditor.StrippingLevel.Disabled = 0
---@return System.Int32 value:1
UnityEditor.StrippingLevel.StripAssemblies = 1
---@return System.Int32 value:2
UnityEditor.StrippingLevel.StripByteCode = 2
---@return System.Int32 value:3
UnityEditor.StrippingLevel.UseMicroMSCorlib = 3

---@class UnityEditor.ScriptCallOptimizationLevel : System.Enum
UnityEditor.ScriptCallOptimizationLevel = {}
---@type UnityEditor.ScriptCallOptimizationLevel
CS.UnityEditor.ScriptCallOptimizationLevel = UnityEditor.ScriptCallOptimizationLevel

---@return System.Int32 value:0
UnityEditor.ScriptCallOptimizationLevel.SlowAndSafe = 0
---@return System.Int32 value:1
UnityEditor.ScriptCallOptimizationLevel.FastButNoExceptions = 1

---@class UnityEditor.UIOrientation : System.Enum
UnityEditor.UIOrientation = {}
---@type UnityEditor.UIOrientation
CS.UnityEditor.UIOrientation = UnityEditor.UIOrientation

---@return System.Int32 value:0
UnityEditor.UIOrientation.Portrait = 0
---@return System.Int32 value:1
UnityEditor.UIOrientation.PortraitUpsideDown = 1
---@return System.Int32 value:2
UnityEditor.UIOrientation.LandscapeRight = 2
---@return System.Int32 value:3
UnityEditor.UIOrientation.LandscapeLeft = 3
---@return System.Int32 value:4
UnityEditor.UIOrientation.AutoRotation = 4

---@class UnityEditor.ScriptingRuntimeVersion : System.Enum
UnityEditor.ScriptingRuntimeVersion = {}
---@type UnityEditor.ScriptingRuntimeVersion
CS.UnityEditor.ScriptingRuntimeVersion = UnityEditor.ScriptingRuntimeVersion

---@return System.Int32 value:0
UnityEditor.ScriptingRuntimeVersion.Legacy = 0
---@return System.Int32 value:1
UnityEditor.ScriptingRuntimeVersion.Latest = 1

---@class UnityEditor.ApiCompatibilityLevel : System.Enum
UnityEditor.ApiCompatibilityLevel = {}
---@type UnityEditor.ApiCompatibilityLevel
CS.UnityEditor.ApiCompatibilityLevel = UnityEditor.ApiCompatibilityLevel

---@return System.Int32 value:1
UnityEditor.ApiCompatibilityLevel.NET_2_0 = 1
---@return System.Int32 value:2
UnityEditor.ApiCompatibilityLevel.NET_2_0_Subset = 2
---@return System.Int32 value:3
UnityEditor.ApiCompatibilityLevel.NET_4_6 = 3
---@return System.Int32 value:4
UnityEditor.ApiCompatibilityLevel.NET_Web = 4
---@return System.Int32 value:5
UnityEditor.ApiCompatibilityLevel.NET_Micro = 5

---@class UnityEditor.ManagedStrippingLevel : System.Enum
UnityEditor.ManagedStrippingLevel = {}
---@type UnityEditor.ManagedStrippingLevel
CS.UnityEditor.ManagedStrippingLevel = UnityEditor.ManagedStrippingLevel

---@return System.Int32 value:0
UnityEditor.ManagedStrippingLevel.Disabled = 0
---@return System.Int32 value:1
UnityEditor.ManagedStrippingLevel.Low = 1
---@return System.Int32 value:2
UnityEditor.ManagedStrippingLevel.Medium = 2
---@return System.Int32 value:3
UnityEditor.ManagedStrippingLevel.High = 3

---@class UnityEditor.ActionOnDotNetUnhandledException : System.Enum
UnityEditor.ActionOnDotNetUnhandledException = {}
---@type UnityEditor.ActionOnDotNetUnhandledException
CS.UnityEditor.ActionOnDotNetUnhandledException = UnityEditor.ActionOnDotNetUnhandledException

---@return System.Int32 value:0
UnityEditor.ActionOnDotNetUnhandledException.SilentExit = 0
---@return System.Int32 value:1
UnityEditor.ActionOnDotNetUnhandledException.Crash = 1

---@class UnityEditor.SplashScreenStyle : System.Enum
UnityEditor.SplashScreenStyle = {}
---@type UnityEditor.SplashScreenStyle
CS.UnityEditor.SplashScreenStyle = UnityEditor.SplashScreenStyle

---@return System.Int32 value:0
UnityEditor.SplashScreenStyle.Light = 0
---@return System.Int32 value:1
UnityEditor.SplashScreenStyle.Dark = 1

---@class UnityEditor.GraphicsJobMode : System.Enum
UnityEditor.GraphicsJobMode = {}
---@type UnityEditor.GraphicsJobMode
CS.UnityEditor.GraphicsJobMode = UnityEditor.GraphicsJobMode

---@return System.Int32 value:0
UnityEditor.GraphicsJobMode.Native = 0
---@return System.Int32 value:1
UnityEditor.GraphicsJobMode.Legacy = 1

---@class UnityEditor.IconKind : System.Enum
UnityEditor.IconKind = {}
---@type UnityEditor.IconKind
CS.UnityEditor.IconKind = UnityEditor.IconKind

---@return System.Int32 value:0
UnityEditor.IconKind.Application = 0
---@return System.Int32 value:1
UnityEditor.IconKind.Settings = 1
---@return System.Int32 value:2
UnityEditor.IconKind.Notification = 2
---@return System.Int32 value:3
UnityEditor.IconKind.Spotlight = 3
---@return System.Int32 value:4
UnityEditor.IconKind.Store = 4

---@class UnityEditor.AndroidTargetDevice : System.Enum
UnityEditor.AndroidTargetDevice = {}
---@type UnityEditor.AndroidTargetDevice
CS.UnityEditor.AndroidTargetDevice = UnityEditor.AndroidTargetDevice

---@return System.Int32 value:0
UnityEditor.AndroidTargetDevice.FAT = 0

---@class UnityEditor.TargetGlesGraphics : System.Enum
UnityEditor.TargetGlesGraphics = {}
---@type UnityEditor.TargetGlesGraphics
CS.UnityEditor.TargetGlesGraphics = UnityEditor.TargetGlesGraphics

---@return System.Int32 value:0
UnityEditor.TargetGlesGraphics.OpenGLES_1_x = 0
---@return System.Int32 value:1
UnityEditor.TargetGlesGraphics.OpenGLES_2_0 = 1
---@return System.Int32 value:2
UnityEditor.TargetGlesGraphics.OpenGLES_3_0 = 2

---@class UnityEditor.TargetIOSGraphics : System.Enum
UnityEditor.TargetIOSGraphics = {}
---@type UnityEditor.TargetIOSGraphics
CS.UnityEditor.TargetIOSGraphics = UnityEditor.TargetIOSGraphics

---@return System.Int32 value:2
UnityEditor.TargetIOSGraphics.OpenGLES_2_0 = 2
---@return System.Int32 value:3
UnityEditor.TargetIOSGraphics.OpenGLES_3_0 = 3

---@class UnityEditor.iOSTargetResolution : System.Enum
UnityEditor.iOSTargetResolution = {}
---@type UnityEditor.iOSTargetResolution
CS.UnityEditor.iOSTargetResolution = UnityEditor.iOSTargetResolution

---@return System.Int32 value:0
UnityEditor.iOSTargetResolution.Native = 0
---@return System.Int32 value:3
UnityEditor.iOSTargetResolution.ResolutionAutoPerformance = 3
---@return System.Int32 value:4
UnityEditor.iOSTargetResolution.ResolutionAutoQuality = 4
---@return System.Int32 value:5
UnityEditor.iOSTargetResolution.Resolution320p = 5

---@class UnityEditor.iOSTargetOSVersion : System.Enum
UnityEditor.iOSTargetOSVersion = {}
---@type UnityEditor.iOSTargetOSVersion
CS.UnityEditor.iOSTargetOSVersion = UnityEditor.iOSTargetOSVersion

---@return System.Int32 value:10
UnityEditor.iOSTargetOSVersion.iOS_4_0 = 10

---@class UnityEditor.iOSSystemGestureDeferMode : System.Enum
UnityEditor.iOSSystemGestureDeferMode = {}
---@type UnityEditor.iOSSystemGestureDeferMode
CS.UnityEditor.iOSSystemGestureDeferMode = UnityEditor.iOSSystemGestureDeferMode

---@return System.Int32 value:0
UnityEditor.iOSSystemGestureDeferMode.None = 0
---@return System.Int32 value:1
UnityEditor.iOSSystemGestureDeferMode.TopEdge = 1
---@return System.Int32 value:2
UnityEditor.iOSSystemGestureDeferMode.LeftEdge = 2
---@return System.Int32 value:4
UnityEditor.iOSSystemGestureDeferMode.BottomEdge = 4

---@class UnityEditor.AndroidArchitecture : System.Enum
UnityEditor.AndroidArchitecture = {}
---@type UnityEditor.AndroidArchitecture
CS.UnityEditor.AndroidArchitecture = UnityEditor.AndroidArchitecture

---@return System.Int32 value:0
UnityEditor.AndroidArchitecture.None = 0
---@return System.Int32 value:1
UnityEditor.AndroidArchitecture.ARMv7 = 1
---@return System.Int32 value:2
UnityEditor.AndroidArchitecture.ARM64 = 2
---@return System.Int32 value:4
UnityEditor.AndroidArchitecture.X86 = 4

---@class UnityEditor.AndroidSdkVersions : System.Enum
UnityEditor.AndroidSdkVersions = {}
---@type UnityEditor.AndroidSdkVersions
CS.UnityEditor.AndroidSdkVersions = UnityEditor.AndroidSdkVersions

---@return System.Int32 value:0
UnityEditor.AndroidSdkVersions.AndroidApiLevelAuto = 0

---@class UnityEditor.AndroidPreferredInstallLocation : System.Enum
UnityEditor.AndroidPreferredInstallLocation = {}
---@type UnityEditor.AndroidPreferredInstallLocation
CS.UnityEditor.AndroidPreferredInstallLocation = UnityEditor.AndroidPreferredInstallLocation

---@return System.Int32 value:0
UnityEditor.AndroidPreferredInstallLocation.Auto = 0
---@return System.Int32 value:1
UnityEditor.AndroidPreferredInstallLocation.PreferExternal = 1
---@return System.Int32 value:2
UnityEditor.AndroidPreferredInstallLocation.ForceInternal = 2

---@class UnityEditor.AndroidShowActivityIndicatorOnLoading : System.Enum
UnityEditor.AndroidShowActivityIndicatorOnLoading = {}
---@type UnityEditor.AndroidShowActivityIndicatorOnLoading
CS.UnityEditor.AndroidShowActivityIndicatorOnLoading = UnityEditor.AndroidShowActivityIndicatorOnLoading

---@return System.Int32 value:0
UnityEditor.AndroidShowActivityIndicatorOnLoading.Large = 0
---@return System.Int32 value:1
UnityEditor.AndroidShowActivityIndicatorOnLoading.InversedLarge = 1
---@return System.Int32 value:2
UnityEditor.AndroidShowActivityIndicatorOnLoading.Small = 2
---@return System.Int32 value:3
UnityEditor.AndroidShowActivityIndicatorOnLoading.InversedSmall = 3

---@class UnityEditor.AndroidGamepadSupportLevel : System.Enum
UnityEditor.AndroidGamepadSupportLevel = {}
---@type UnityEditor.AndroidGamepadSupportLevel
CS.UnityEditor.AndroidGamepadSupportLevel = UnityEditor.AndroidGamepadSupportLevel

---@return System.Int32 value:0
UnityEditor.AndroidGamepadSupportLevel.SupportsDPad = 0
---@return System.Int32 value:1
UnityEditor.AndroidGamepadSupportLevel.SupportsGamepad = 1
---@return System.Int32 value:2
UnityEditor.AndroidGamepadSupportLevel.RequiresGamepad = 2

---@class UnityEditor.AndroidSplashScreenScale : System.Enum
UnityEditor.AndroidSplashScreenScale = {}
---@type UnityEditor.AndroidSplashScreenScale
CS.UnityEditor.AndroidSplashScreenScale = UnityEditor.AndroidSplashScreenScale

---@return System.Int32 value:0
UnityEditor.AndroidSplashScreenScale.Center = 0
---@return System.Int32 value:1
UnityEditor.AndroidSplashScreenScale.ScaleToFit = 1
---@return System.Int32 value:2
UnityEditor.AndroidSplashScreenScale.ScaleToFill = 2

---@class UnityEditor.AndroidBlitType : System.Enum
UnityEditor.AndroidBlitType = {}
---@type UnityEditor.AndroidBlitType
CS.UnityEditor.AndroidBlitType = UnityEditor.AndroidBlitType

---@return System.Int32 value:0
UnityEditor.AndroidBlitType.Always = 0
---@return System.Int32 value:1
UnityEditor.AndroidBlitType.Never = 1
---@return System.Int32 value:2
UnityEditor.AndroidBlitType.Auto = 2

---@class UnityEditor.iOSSdkVersion : System.Enum
UnityEditor.iOSSdkVersion = {}
---@type UnityEditor.iOSSdkVersion
CS.UnityEditor.iOSSdkVersion = UnityEditor.iOSSdkVersion


---@class UnityEditor.iOSTargetDevice : System.Enum
UnityEditor.iOSTargetDevice = {}
---@type UnityEditor.iOSTargetDevice
CS.UnityEditor.iOSTargetDevice = UnityEditor.iOSTargetDevice

---@return System.Int32 value:0
UnityEditor.iOSTargetDevice.iPhoneOnly = 0
---@return System.Int32 value:1
UnityEditor.iOSTargetDevice.iPadOnly = 1
---@return System.Int32 value:2
UnityEditor.iOSTargetDevice.iPhoneAndiPad = 2

---@class UnityEditor.iOSShowActivityIndicatorOnLoading : System.Enum
UnityEditor.iOSShowActivityIndicatorOnLoading = {}
---@type UnityEditor.iOSShowActivityIndicatorOnLoading
CS.UnityEditor.iOSShowActivityIndicatorOnLoading = UnityEditor.iOSShowActivityIndicatorOnLoading

---@return System.Int32 value:0
UnityEditor.iOSShowActivityIndicatorOnLoading.WhiteLarge = 0
---@return System.Int32 value:1
UnityEditor.iOSShowActivityIndicatorOnLoading.White = 1
---@return System.Int32 value:2
UnityEditor.iOSShowActivityIndicatorOnLoading.Gray = 2

---@class UnityEditor.iOSStatusBarStyle : System.Enum
UnityEditor.iOSStatusBarStyle = {}
---@type UnityEditor.iOSStatusBarStyle
CS.UnityEditor.iOSStatusBarStyle = UnityEditor.iOSStatusBarStyle

---@return System.Int32 value:0
UnityEditor.iOSStatusBarStyle.Default = 0
---@return System.Int32 value:1
UnityEditor.iOSStatusBarStyle.LightContent = 1

---@class UnityEditor.iOSAppInBackgroundBehavior : System.Enum
UnityEditor.iOSAppInBackgroundBehavior = {}
---@type UnityEditor.iOSAppInBackgroundBehavior
CS.UnityEditor.iOSAppInBackgroundBehavior = UnityEditor.iOSAppInBackgroundBehavior

---@return System.Int32 value:0
UnityEditor.iOSAppInBackgroundBehavior.Suspend = 0
---@return System.Int32 value:1
UnityEditor.iOSAppInBackgroundBehavior.Exit = 1

---@class UnityEditor.iOSBackgroundMode : System.Enum
UnityEditor.iOSBackgroundMode = {}
---@type UnityEditor.iOSBackgroundMode
CS.UnityEditor.iOSBackgroundMode = UnityEditor.iOSBackgroundMode

---@return System.Int32 value:0
UnityEditor.iOSBackgroundMode.None = 0
---@return System.Int32 value:1
UnityEditor.iOSBackgroundMode.Audio = 1
---@return System.Int32 value:2
UnityEditor.iOSBackgroundMode.Location = 2
---@return System.Int32 value:4
UnityEditor.iOSBackgroundMode.VOIP = 4
---@return System.Int32 value:8
UnityEditor.iOSBackgroundMode.NewsstandContent = 8

---@class UnityEditor.iOSLaunchScreenImageType : System.Enum
UnityEditor.iOSLaunchScreenImageType = {}
---@type UnityEditor.iOSLaunchScreenImageType
CS.UnityEditor.iOSLaunchScreenImageType = UnityEditor.iOSLaunchScreenImageType

---@return System.Int32 value:0
UnityEditor.iOSLaunchScreenImageType.iPhonePortraitImage = 0
---@return System.Int32 value:1
UnityEditor.iOSLaunchScreenImageType.iPhoneLandscapeImage = 1
---@return System.Int32 value:2
UnityEditor.iOSLaunchScreenImageType.iPadImage = 2

---@class UnityEditor.iOSLaunchScreenType : System.Enum
UnityEditor.iOSLaunchScreenType = {}
---@type UnityEditor.iOSLaunchScreenType
CS.UnityEditor.iOSLaunchScreenType = UnityEditor.iOSLaunchScreenType

---@return System.Int32 value:0
UnityEditor.iOSLaunchScreenType.Default = 0
---@return System.Int32 value:1
UnityEditor.iOSLaunchScreenType.ImageAndBackgroundRelative = 1
---@return System.Int32 value:2
UnityEditor.iOSLaunchScreenType.CustomXib = 2
---@return System.Int32 value:3
UnityEditor.iOSLaunchScreenType.None = 3
---@return System.Int32 value:4
UnityEditor.iOSLaunchScreenType.ImageAndBackgroundConstant = 4

---@class UnityEditor.ProvisioningProfileType : System.Enum
UnityEditor.ProvisioningProfileType = {}
---@type UnityEditor.ProvisioningProfileType
CS.UnityEditor.ProvisioningProfileType = UnityEditor.ProvisioningProfileType

---@return System.Int32 value:0
UnityEditor.ProvisioningProfileType.Automatic = 0
---@return System.Int32 value:1
UnityEditor.ProvisioningProfileType.Development = 1
---@return System.Int32 value:2
UnityEditor.ProvisioningProfileType.Distribution = 2

---@class UnityEditor.iOSDeviceRequirement : System.Object
---@field public values System.Collections.Generic.IDictionary @  getter
UnityEditor.iOSDeviceRequirement = {}
---@type UnityEditor.iOSDeviceRequirement
CS.UnityEditor.iOSDeviceRequirement = UnityEditor.iOSDeviceRequirement

---@class UnityEditor.tvOSSdkVersion : System.Enum
UnityEditor.tvOSSdkVersion = {}
---@type UnityEditor.tvOSSdkVersion
CS.UnityEditor.tvOSSdkVersion = UnityEditor.tvOSSdkVersion

---@return System.Int32 value:0
UnityEditor.tvOSSdkVersion.Device = 0
---@return System.Int32 value:1
UnityEditor.tvOSSdkVersion.Simulator = 1

---@class UnityEditor.tvOSTargetOSVersion : System.Enum
UnityEditor.tvOSTargetOSVersion = {}
---@type UnityEditor.tvOSTargetOSVersion
CS.UnityEditor.tvOSTargetOSVersion = UnityEditor.tvOSTargetOSVersion

---@return System.Int32 value:0
UnityEditor.tvOSTargetOSVersion.Unknown = 0

---@class UnityEditor.XboxOneEncryptionLevel : System.Enum
UnityEditor.XboxOneEncryptionLevel = {}
---@type UnityEditor.XboxOneEncryptionLevel
CS.UnityEditor.XboxOneEncryptionLevel = UnityEditor.XboxOneEncryptionLevel

---@return System.Int32 value:0
UnityEditor.XboxOneEncryptionLevel.None = 0
---@return System.Int32 value:1
UnityEditor.XboxOneEncryptionLevel.DevkitCompatible = 1
---@return System.Int32 value:2
UnityEditor.XboxOneEncryptionLevel.FullEncryption = 2

---@class UnityEditor.XboxOnePackageUpdateGranularity : System.Enum
UnityEditor.XboxOnePackageUpdateGranularity = {}
---@type UnityEditor.XboxOnePackageUpdateGranularity
CS.UnityEditor.XboxOnePackageUpdateGranularity = UnityEditor.XboxOnePackageUpdateGranularity

---@return System.Int32 value:1
UnityEditor.XboxOnePackageUpdateGranularity.Chunk = 1

---@class UnityEditor.XboxOneLoggingLevel : System.Enum
UnityEditor.XboxOneLoggingLevel = {}
---@type UnityEditor.XboxOneLoggingLevel
CS.UnityEditor.XboxOneLoggingLevel = UnityEditor.XboxOneLoggingLevel

---@return System.Int32 value:1
UnityEditor.XboxOneLoggingLevel.ErrorsOnly = 1
---@return System.Int32 value:2
UnityEditor.XboxOneLoggingLevel.WarningsAndErrors = 2

---@class UnityEditor.ScriptCompiler : System.Enum
UnityEditor.ScriptCompiler = {}
---@type UnityEditor.ScriptCompiler
CS.UnityEditor.ScriptCompiler = UnityEditor.ScriptCompiler

---@return System.Int32 value:0
UnityEditor.ScriptCompiler.Mono = 0
---@return System.Int32 value:1
UnityEditor.ScriptCompiler.Roslyn = 1

---@class UnityEditor.SaveAssetsProcessor : UnityEditor.AssetModificationProcessor
UnityEditor.SaveAssetsProcessor = {}
---@type UnityEditor.SaveAssetsProcessor
CS.UnityEditor.SaveAssetsProcessor = UnityEditor.SaveAssetsProcessor

---@class UnityEditor.ScriptableSingleton : UnityEngine.ScriptableObject
---@field public instance any @static  getter
UnityEditor.ScriptableSingleton = {}
---@type UnityEditor.ScriptableSingleton
CS.UnityEditor.ScriptableSingleton = UnityEditor.ScriptableSingleton

---@class UnityEditor.ScriptableWizard : UnityEditor.EditorWindow
---@field public helpString System.String @ setter getter
---@field public errorString System.String @ setter getter
---@field public createButtonName System.String @ setter getter
---@field public otherButtonName System.String @ setter getter
---@field public isValid System.Boolean @ setter getter
UnityEditor.ScriptableWizard = {}
---@type UnityEditor.ScriptableWizard
CS.UnityEditor.ScriptableWizard = UnityEditor.ScriptableWizard

---@overload fun(title:System.String, createButtonName:System.String):any
---@overload fun(title:System.String, klass:System.Type):UnityEditor.ScriptableWizard
---@overload fun(title:System.String, createButtonName:System.String, otherButtonName:System.String):any
---@overload fun(title:System.String, klass:System.Type, createButtonName:System.String):UnityEditor.ScriptableWizard
---@overload fun(title:System.String, klass:System.Type, createButtonName:System.String, otherButtonName:System.String):UnityEditor.ScriptableWizard
---@param title System.String
---@return any
function UnityEditor.ScriptableWizard.DisplayWizard(title)end
---@class UnityEditor.SelectionMode : System.Enum
UnityEditor.SelectionMode = {}
---@type UnityEditor.SelectionMode
CS.UnityEditor.SelectionMode = UnityEditor.SelectionMode

---@return System.Int32 value:0
UnityEditor.SelectionMode.Unfiltered = 0
---@return System.Int32 value:1
UnityEditor.SelectionMode.TopLevel = 1
---@return System.Int32 value:2
UnityEditor.SelectionMode.Deep = 2
---@return System.Int32 value:4
UnityEditor.SelectionMode.ExcludePrefab = 4

---@class UnityEditor.Selection : System.Object
---@field public transforms UnityEngine.Transform[] @static  getter
---@field public activeTransform UnityEngine.Transform @static setter getter
---@field public gameObjects UnityEngine.GameObject[] @static  getter
---@field public activeGameObject UnityEngine.GameObject @static setter getter
---@field public activeObject UnityEngine.Object @static setter getter
---@field public activeContext UnityEngine.Object @static  getter
---@field public activeInstanceID System.Int32 @static setter getter
---@field public objects UnityEngine.Object[] @static setter getter
---@field public instanceIDs System.Int32[] @static setter getter
---@field public assetGUIDs System.String[] @static  getter
---@field public selectionChanged System.Action
UnityEditor.Selection = {}
---@type UnityEditor.Selection
CS.UnityEditor.Selection = UnityEditor.Selection

---@overload fun(obj:UnityEngine.Object):System.Boolean
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.Selection.Contains(instanceID)end
---@param obj UnityEngine.Object
---@param context UnityEngine.Object
---@return System.Void
function UnityEditor.Selection.SetActiveObjectWithContext(obj, context)end
---@param mode UnityEditor.SelectionMode
---@return UnityEngine.Transform[]
function UnityEditor.Selection.GetTransforms(mode)end
---@overload fun(type:System.Type, mode:UnityEditor.SelectionMode):UnityEngine.Object[]
---@param mode UnityEditor.SelectionMode
---@return T[]
function UnityEditor.Selection.GetFiltered(mode)end
---@class UnityEditor.SerializedObject : System.Object
---@field public targetObject UnityEngine.Object @  getter
---@field public targetObjects UnityEngine.Object[] @  getter
---@field public context UnityEngine.Object @  getter
---@field public hasModifiedProperties System.Boolean @  getter
---@field public isEditingMultipleObjects System.Boolean @  getter
---@field public maxArraySizeForMultiEditing System.Int32 @ setter getter
UnityEditor.SerializedObject = {}
---@type UnityEditor.SerializedObject
CS.UnityEditor.SerializedObject = UnityEditor.SerializedObject

---@return System.Void
function UnityEditor.SerializedObject:Dispose()end
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedObject:GetIterator()end
---@param propertyPath System.String
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedObject:FindProperty(propertyPath)end
---@return System.Boolean
function UnityEditor.SerializedObject:ApplyModifiedProperties()end
---@return System.Void
function UnityEditor.SerializedObject:SetIsDifferentCacheDirty()end
---@return System.Void
function UnityEditor.SerializedObject:Update()end
---@return System.Void
function UnityEditor.SerializedObject:UpdateIfDirtyOrScript()end
---@return System.Boolean
function UnityEditor.SerializedObject:UpdateIfRequiredOrScript()end
---@return System.Boolean
function UnityEditor.SerializedObject:ApplyModifiedPropertiesWithoutUndo()end
---@param prop UnityEditor.SerializedProperty
---@return System.Void
function UnityEditor.SerializedObject:CopyFromSerializedProperty(prop)end
---@param prop UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.SerializedObject:CopyFromSerializedPropertyIfDifferent(prop)end
---@class UnityEditor.SerializedPropertyType : System.Enum
UnityEditor.SerializedPropertyType = {}
---@type UnityEditor.SerializedPropertyType
CS.UnityEditor.SerializedPropertyType = UnityEditor.SerializedPropertyType

---@return System.Int32 value:0
UnityEditor.SerializedPropertyType.Integer = 0
---@return System.Int32 value:1
UnityEditor.SerializedPropertyType.Boolean = 1
---@return System.Int32 value:2
UnityEditor.SerializedPropertyType.Float = 2
---@return System.Int32 value:3
UnityEditor.SerializedPropertyType.String = 3
---@return System.Int32 value:4
UnityEditor.SerializedPropertyType.Color = 4
---@return System.Int32 value:5
UnityEditor.SerializedPropertyType.ObjectReference = 5
---@return System.Int32 value:6
UnityEditor.SerializedPropertyType.LayerMask = 6
---@return System.Int32 value:7
UnityEditor.SerializedPropertyType.Enum = 7
---@return System.Int32 value:8
UnityEditor.SerializedPropertyType.Vector2 = 8
---@return System.Int32 value:9
UnityEditor.SerializedPropertyType.Vector3 = 9
---@return System.Int32 value:10
UnityEditor.SerializedPropertyType.Vector4 = 10
---@return System.Int32 value:11
UnityEditor.SerializedPropertyType.Rect = 11
---@return System.Int32 value:12
UnityEditor.SerializedPropertyType.ArraySize = 12
---@return System.Int32 value:13
UnityEditor.SerializedPropertyType.Character = 13
---@return System.Int32 value:14
UnityEditor.SerializedPropertyType.AnimationCurve = 14
---@return System.Int32 value:15
UnityEditor.SerializedPropertyType.Bounds = 15
---@return System.Int32 value:16
UnityEditor.SerializedPropertyType.Gradient = 16
---@return System.Int32 value:17
UnityEditor.SerializedPropertyType.Quaternion = 17
---@return System.Int32 value:18
UnityEditor.SerializedPropertyType.ExposedReference = 18
---@return System.Int32 value:19
UnityEditor.SerializedPropertyType.FixedBufferSize = 19
---@return System.Int32 value:20
UnityEditor.SerializedPropertyType.Vector2Int = 20
---@return System.Int32 value:21
UnityEditor.SerializedPropertyType.Vector3Int = 21
---@return System.Int32 value:22
UnityEditor.SerializedPropertyType.RectInt = 22
---@return System.Int32 value:23
UnityEditor.SerializedPropertyType.BoundsInt = 23

---@class UnityEditor.SerializedProperty : System.Object
---@field public serializedObject UnityEditor.SerializedObject @  getter
---@field public exposedReferenceValue UnityEngine.Object @ setter getter
---@field public hasMultipleDifferentValues System.Boolean @  getter
---@field public displayName System.String @  getter
---@field public name System.String @  getter
---@field public type System.String @  getter
---@field public arrayElementType System.String @  getter
---@field public tooltip System.String @  getter
---@field public depth System.Int32 @  getter
---@field public propertyPath System.String @  getter
---@field public editable System.Boolean @  getter
---@field public isAnimated System.Boolean @  getter
---@field public isExpanded System.Boolean @ setter getter
---@field public hasChildren System.Boolean @  getter
---@field public hasVisibleChildren System.Boolean @  getter
---@field public isInstantiatedPrefab System.Boolean @  getter
---@field public prefabOverride System.Boolean @ setter getter
---@field public isDefaultOverride System.Boolean @  getter
---@field public propertyType UnityEditor.SerializedPropertyType @  getter
---@field public intValue System.Int32 @ setter getter
---@field public longValue System.Int64 @ setter getter
---@field public boolValue System.Boolean @ setter getter
---@field public floatValue System.Single @ setter getter
---@field public doubleValue System.Double @ setter getter
---@field public stringValue System.String @ setter getter
---@field public colorValue UnityEngine.Color @ setter getter
---@field public animationCurveValue UnityEngine.AnimationCurve @ setter getter
---@field public objectReferenceValue UnityEngine.Object @ setter getter
---@field public objectReferenceInstanceIDValue System.Int32 @ setter getter
---@field public enumValueIndex System.Int32 @ setter getter
---@field public enumNames System.String[] @  getter
---@field public enumDisplayNames System.String[] @  getter
---@field public vector2Value UnityEngine.Vector2 @ setter getter
---@field public vector3Value UnityEngine.Vector3 @ setter getter
---@field public vector4Value UnityEngine.Vector4 @ setter getter
---@field public vector2IntValue UnityEngine.Vector2Int @ setter getter
---@field public vector3IntValue UnityEngine.Vector3Int @ setter getter
---@field public quaternionValue UnityEngine.Quaternion @ setter getter
---@field public rectValue UnityEngine.Rect @ setter getter
---@field public rectIntValue UnityEngine.RectInt @ setter getter
---@field public boundsValue UnityEngine.Bounds @ setter getter
---@field public boundsIntValue UnityEngine.BoundsInt @ setter getter
---@field public isArray System.Boolean @  getter
---@field public arraySize System.Int32 @ setter getter
---@field public isFixedBuffer System.Boolean @  getter
---@field public fixedBufferSize System.Int32 @  getter
UnityEditor.SerializedProperty = {}
---@type UnityEditor.SerializedProperty
CS.UnityEditor.SerializedProperty = UnityEditor.SerializedProperty

---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedProperty:Copy()end
---@param relativePropertyPath System.String
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedProperty:FindPropertyRelative(relativePropertyPath)end
---@return System.Collections.IEnumerator
function UnityEditor.SerializedProperty:GetEnumerator()end
---@param index System.Int32
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedProperty:GetArrayElementAtIndex(index)end
---@param enterChildren System.Boolean
---@return System.Boolean
function UnityEditor.SerializedProperty:NextVisible(enterChildren)end
---@return System.Void
function UnityEditor.SerializedProperty:ClearArray()end
---@return System.Void
function UnityEditor.SerializedProperty:Dispose()end
---@param x UnityEditor.SerializedProperty
---@param y UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.SerializedProperty.EqualContents(x, y)end
---@param x UnityEditor.SerializedProperty
---@param y UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.SerializedProperty.DataEquals(x, y)end
---@param enterChildren System.Boolean
---@return System.Boolean
function UnityEditor.SerializedProperty:Next(enterChildren)end
---@return System.Void
function UnityEditor.SerializedProperty:Reset()end
---@return System.Int32
function UnityEditor.SerializedProperty:CountRemaining()end
---@return System.Int32
function UnityEditor.SerializedProperty:CountInProperty()end
---@return System.Boolean
function UnityEditor.SerializedProperty:DuplicateCommand()end
---@return System.Boolean
function UnityEditor.SerializedProperty:DeleteCommand()end
---@overload fun(includeInvisible:System.Boolean):UnityEditor.SerializedProperty
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedProperty:GetEndProperty()end
---@param index System.Int32
---@return System.Void
function UnityEditor.SerializedProperty:InsertArrayElementAtIndex(index)end
---@param index System.Int32
---@return System.Void
function UnityEditor.SerializedProperty:DeleteArrayElementAtIndex(index)end
---@param srcIndex System.Int32
---@param dstIndex System.Int32
---@return System.Boolean
function UnityEditor.SerializedProperty:MoveArrayElement(srcIndex, dstIndex)end
---@param index System.Int32
---@return UnityEditor.SerializedProperty
function UnityEditor.SerializedProperty:GetFixedBufferElementAtIndex(index)end
---@class UnityEditor.ShaderInfo : System.ValueType
---@field public name System.String @  getter
---@field public supported System.Boolean @  getter
---@field public hasErrors System.Boolean @  getter
UnityEditor.ShaderInfo = {}
---@type UnityEditor.ShaderInfo
CS.UnityEditor.ShaderInfo = UnityEditor.ShaderInfo

---@class UnityEditor.ShaderData : System.Object
---@field public ActiveSubshaderIndex System.Int32 @  getter
---@field public SubshaderCount System.Int32 @  getter
---@field public SourceShader UnityEngine.Shader @ setter getter
---@field public ActiveSubshader UnityEditor.ShaderData.Subshader @  getter
UnityEditor.ShaderData = {}
---@type UnityEditor.ShaderData
CS.UnityEditor.ShaderData = UnityEditor.ShaderData

---@param index System.Int32
---@return UnityEditor.ShaderData.Subshader
function UnityEditor.ShaderData:GetSubshader(index)end
---@class UnityEditor.ShaderData.Subshader : System.Object
---@field public PassCount System.Int32 @  getter
UnityEditor.ShaderData.Subshader = {}
---@type UnityEditor.ShaderData.Subshader
CS.UnityEditor.ShaderData.Subshader = UnityEditor.ShaderData.Subshader

---@param passIndex System.Int32
---@return UnityEditor.ShaderData.Pass
function UnityEditor.ShaderData.Subshader:GetPass(passIndex)end
---@class UnityEditor.ShaderData.Pass : System.Object
---@field public SourceCode System.String @  getter
---@field public Name System.String @  getter
UnityEditor.ShaderData.Pass = {}
---@type UnityEditor.ShaderData.Pass
CS.UnityEditor.ShaderData.Pass = UnityEditor.ShaderData.Pass

---@class UnityEditor.StaticEditorFlags : System.Enum
UnityEditor.StaticEditorFlags = {}
---@type UnityEditor.StaticEditorFlags
CS.UnityEditor.StaticEditorFlags = UnityEditor.StaticEditorFlags

---@return System.Int32 value:1
UnityEditor.StaticEditorFlags.LightmapStatic = 1
---@return System.Int32 value:2
UnityEditor.StaticEditorFlags.OccluderStatic = 2
---@return System.Int32 value:4
UnityEditor.StaticEditorFlags.BatchingStatic = 4

---@class UnityEditor.StaticOcclusionCulling : System.Object
---@field public isRunning System.Boolean @static  getter
---@field public smallestOccluder System.Single @static setter getter
---@field public smallestHole System.Single @static setter getter
---@field public backfaceThreshold System.Single @static setter getter
---@field public doesSceneHaveManualPortals System.Boolean @static  getter
---@field public umbraDataSize System.Int32 @static  getter
UnityEditor.StaticOcclusionCulling = {}
---@type UnityEditor.StaticOcclusionCulling
CS.UnityEditor.StaticOcclusionCulling = UnityEditor.StaticOcclusionCulling

---@return System.Boolean
function UnityEditor.StaticOcclusionCulling.Compute()end
---@return System.Boolean
function UnityEditor.StaticOcclusionCulling.GenerateInBackground()end
---@return System.Void
function UnityEditor.StaticOcclusionCulling.Cancel()end
---@return System.Void
function UnityEditor.StaticOcclusionCulling.Clear()end
---@return System.Void
function UnityEditor.StaticOcclusionCulling.SetDefaultOcclusionBakeSettings()end
---@class UnityEditor.StaticOcclusionCullingVisualization : System.Object
---@field public showOcclusionCulling System.Boolean @static setter getter
---@field public showPreVisualization System.Boolean @static setter getter
---@field public showViewVolumes System.Boolean @static setter getter
---@field public showDynamicObjectBounds System.Boolean @static setter getter
---@field public showPortals System.Boolean @static setter getter
---@field public showVisibilityLines System.Boolean @static setter getter
---@field public showGeometryCulling System.Boolean @static setter getter
---@field public isPreviewOcclusionCullingCameraInPVS System.Boolean @static  getter
---@field public previewOcclusionCamera UnityEngine.Camera @static  getter
---@field public previewOcclucionCamera UnityEngine.Camera @static  getter
UnityEditor.StaticOcclusionCullingVisualization = {}
---@type UnityEditor.StaticOcclusionCullingVisualization
CS.UnityEditor.StaticOcclusionCullingVisualization = UnityEditor.StaticOcclusionCullingVisualization

---@class UnityEditor.Undo : System.Object
---@field public undoRedoPerformed UnityEditor.Undo.UndoRedoCallback
---@field public willFlushUndoRecord UnityEditor.Undo.WillFlushUndoRecord
---@field public postprocessModifications UnityEditor.Undo.PostprocessModifications
UnityEditor.Undo = {}
---@type UnityEditor.Undo
CS.UnityEditor.Undo = UnityEditor.Undo

---@overload fun(objectsToUndo:UnityEngine.Object[], name:System.String):System.Void
---@param objectToUndo UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RegisterCompleteObjectUndo(objectToUndo, name)end
---@param transform UnityEngine.Transform
---@param newParent UnityEngine.Transform
---@param name System.String
---@return System.Void
function UnityEditor.Undo.SetTransformParent(transform, newParent, name)end
---@param go UnityEngine.GameObject
---@param scene UnityEngine.SceneManagement.Scene
---@param name System.String
---@return System.Void
function UnityEditor.Undo.MoveGameObjectToScene(go, scene, name)end
---@param objectToUndo UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RegisterCreatedObjectUndo(objectToUndo, name)end
---@param objectToUndo UnityEngine.Object
---@return System.Void
function UnityEditor.Undo.DestroyObjectImmediate(objectToUndo)end
---@overload fun(gameObject:UnityEngine.GameObject, type:System.Type):UnityEngine.Component
---@param gameObject UnityEngine.GameObject
---@return any
function UnityEditor.Undo.AddComponent(gameObject)end
---@overload fun(objectToUndo:UnityEngine.Object, name:System.String):System.Void
---@param objectToUndo UnityEngine.Object
---@return System.Void
function UnityEditor.Undo.RegisterFullObjectHierarchyUndo(objectToUndo)end
---@param objectToUndo UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RecordObject(objectToUndo, name)end
---@param objectsToUndo UnityEngine.Object[]
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RecordObjects(objectsToUndo, name)end
---@param identifier UnityEngine.Object
---@return System.Void
function UnityEditor.Undo.ClearUndo(identifier)end
---@return System.Void
function UnityEditor.Undo.PerformUndo()end
---@return System.Void
function UnityEditor.Undo.PerformRedo()end
---@return System.Void
function UnityEditor.Undo.IncrementCurrentGroup()end
---@return System.Int32
function UnityEditor.Undo.GetCurrentGroup()end
---@return System.String
function UnityEditor.Undo.GetCurrentGroupName()end
---@param name System.String
---@return System.Void
function UnityEditor.Undo.SetCurrentGroupName(name)end
---@return System.Void
function UnityEditor.Undo.RevertAllInCurrentGroup()end
---@param group System.Int32
---@return System.Void
function UnityEditor.Undo.RevertAllDownToGroup(group)end
---@param groupIndex System.Int32
---@return System.Void
function UnityEditor.Undo.CollapseUndoOperations(groupIndex)end
---@return System.Void
function UnityEditor.Undo.ClearAll()end
---@overload fun(objectsToUndo:UnityEngine.Object[], name:System.String):System.Void
---@param objectToUndo UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RegisterUndo(objectToUndo, name)end
---@return System.Void
function UnityEditor.Undo.FlushUndoRecordObjects()end
---@overload fun(objectsToUndo:UnityEngine.Object[], name:System.String):System.Void
---@param objectToUndo UnityEngine.Object
---@param name System.String
---@return System.Void
function UnityEditor.Undo.SetSnapshotTarget(objectToUndo, name)end
---@return System.Void
function UnityEditor.Undo.ClearSnapshotTarget()end
---@return System.Void
function UnityEditor.Undo.CreateSnapshot()end
---@return System.Void
function UnityEditor.Undo.RestoreSnapshot()end
---@return System.Void
function UnityEditor.Undo.RegisterSnapshot()end
---@param name System.String
---@return System.Void
function UnityEditor.Undo.RegisterSceneUndo(name)end
---@class UnityEditor.Unsupported : System.Object
---@field public useScriptableRenderPipeline System.Boolean @static setter getter
UnityEditor.Unsupported = {}
---@type UnityEditor.Unsupported
CS.UnityEditor.Unsupported = UnityEditor.Unsupported

---@param filePath System.String
---@param x System.Int32
---@param y System.Int32
---@param width System.Int32
---@param height System.Int32
---@return System.Void
function UnityEditor.Unsupported.CaptureScreenshotImmediate(filePath, x, y, width, height)end
---@param menuPath System.String
---@return System.String[]
function UnityEditor.Unsupported.GetSubmenusCommands(menuPath)end
---@param fullName System.String
---@return System.Type
function UnityEditor.Unsupported.GetTypeFromFullName(fullName)end
---@param menuPath System.String
---@return System.String[]
function UnityEditor.Unsupported.GetSubmenus(menuPath)end
---@param menuPath System.String
---@return System.String[]
function UnityEditor.Unsupported.GetSubmenusIncludingSeparators(menuPath)end
---@param c UnityEngine.Object
---@param contextUserData System.Int32
---@return System.Void
function UnityEditor.Unsupported.PrepareObjectContextMenu(c, contextUserData)end
---@return System.Boolean
function UnityEditor.Unsupported.IsDeveloperBuild()end
---@return System.Boolean
function UnityEditor.Unsupported.IsDeveloperMode()end
---@return System.Boolean
function UnityEditor.Unsupported.IsSourceBuild()end
---@return System.Boolean
function UnityEditor.Unsupported.IsBleedingEdgeBuild()end
---@param target UnityEngine.ScriptableObject
---@return System.Boolean
function UnityEditor.Unsupported.IsDestroyScriptableObject(target)end
---@return System.Boolean
function UnityEditor.Unsupported.IsNativeCodeBuiltInReleaseMode()end
---@return System.String
function UnityEditor.Unsupported.GetBaseUnityDeveloperFolder()end
---@return System.Void
function UnityEditor.Unsupported.StopPlayingImmediately()end
---@return System.Void
function UnityEditor.Unsupported.SceneTrackerFlushDirty()end
---@param allow System.Boolean
---@return System.Void
function UnityEditor.Unsupported.SetAllowCursorHide(allow)end
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Boolean
function UnityEditor.Unsupported.SetOverrideLightingSettings(scene)end
---@return System.Void
function UnityEditor.Unsupported.RestoreOverrideLightingSettings()end
---@param fog System.Boolean
---@return System.Void
function UnityEditor.Unsupported.SetRenderSettingsUseFogNoDirty(fog)end
---@param distance System.Single
---@return System.Void
function UnityEditor.Unsupported.SetQualitySettingsShadowDistanceTemporarily(distance)end
---@return System.Void
function UnityEditor.Unsupported.DeleteGameObjectSelection()end
---@return System.Void
function UnityEditor.Unsupported.CopyGameObjectsToPasteboard()end
---@return System.Void
function UnityEditor.Unsupported.PasteGameObjectsFromPasteboard()end
---@param className System.String
---@return UnityEngine.Object
function UnityEditor.Unsupported.GetSerializedAssetInterfaceSingleton(className)end
---@return System.Void
function UnityEditor.Unsupported.DuplicateGameObjectsUsingPasteboard()end
---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditor.Unsupported.CopyComponentToPasteboard(component)end
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.Unsupported.PasteComponentFromPasteboard(go)end
---@param component UnityEngine.Component
---@return System.Boolean
function UnityEditor.Unsupported.PasteComponentValuesFromPasteboard(component)end
---@return System.Boolean
function UnityEditor.Unsupported.HasStateMachineTransitionDataInPasteboard()end
---@param transition UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@param missingParameters System.Collections.Generic.List
---@return System.Boolean
function UnityEditor.Unsupported.AreAllParametersInDestination(transition, controller, missingParameters)end
---@param transition UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@param mismatchedParameters System.Collections.Generic.List
---@return System.Boolean
function UnityEditor.Unsupported.DestinationHasCompatibleParameterTypes(transition, controller, mismatchedParameters)end
---@param transition UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@return System.Boolean
function UnityEditor.Unsupported.CanPasteParametersToTransition(transition, controller)end
---@param transition UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@return System.Void
function UnityEditor.Unsupported.CopyStateMachineTransitionParametersToPasteboard(transition, controller)end
---@param transition UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@param conditions System.Boolean
---@param parameters System.Boolean
---@return System.Void
function UnityEditor.Unsupported.PasteToStateMachineTransitionParametersFromPasteboard(transition, controller, conditions, parameters)end
---@param stateMachineObject UnityEngine.Object
---@param controller UnityEditor.Animations.AnimatorController
---@param layerIndex System.Int32
---@return System.Void
function UnityEditor.Unsupported.CopyStateMachineDataToPasteboard(stateMachineObject, controller, layerIndex)end
---@param sm UnityEditor.Animations.AnimatorStateMachine
---@param controller UnityEditor.Animations.AnimatorController
---@param layerIndex System.Int32
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEditor.Unsupported.PasteToStateMachineFromPasteboard(sm, controller, layerIndex, position)end
---@return System.Boolean
function UnityEditor.Unsupported.HasStateMachineDataInPasteboard()end
---@param obj UnityEngine.Object
---@return System.Void
function UnityEditor.Unsupported.SmartReset(obj)end
---@param path System.String
---@return System.String
function UnityEditor.Unsupported.ResolveSymlinks(path)end
---@param value System.Boolean
---@return System.Void
function UnityEditor.Unsupported.SetApplicationSettingCompressAssetsOnImport(value)end
---@return System.Boolean
function UnityEditor.Unsupported.GetApplicationSettingCompressAssetsOnImport()end
---@param instanceID System.Int32
---@return System.Int32
function UnityEditor.Unsupported.GetLocalIdentifierInFile(instanceID)end
---@param path System.String
---@return System.Boolean
function UnityEditor.Unsupported.IsHiddenFile(path)end
---@return System.Void
function UnityEditor.Unsupported.ClearSkinCache()end
---@class UnityEditor.UnwrapParam : System.ValueType
---@field public angleError System.Single
---@field public areaError System.Single
---@field public hardAngle System.Single
---@field public packMargin System.Single
UnityEditor.UnwrapParam = {}
---@type UnityEditor.UnwrapParam
CS.UnityEditor.UnwrapParam = UnityEditor.UnwrapParam

---@param param UnityEditor.UnwrapParam
---@return System.Void
function UnityEditor.UnwrapParam.SetDefaults(param)end
---@class UnityEditor.Unwrapping : System.Object
UnityEditor.Unwrapping = {}
---@type UnityEditor.Unwrapping
CS.UnityEditor.Unwrapping = UnityEditor.Unwrapping

---@overload fun(src:UnityEngine.Mesh, settings:UnityEditor.UnwrapParam):UnityEngine.Vector2[]
---@param src UnityEngine.Mesh
---@return UnityEngine.Vector2[]
function UnityEditor.Unwrapping.GeneratePerTriangleUV(src)end
---@overload fun(src:UnityEngine.Mesh, settings:UnityEditor.UnwrapParam):System.Void
---@param src UnityEngine.Mesh
---@return System.Void
function UnityEditor.Unwrapping.GenerateSecondaryUVSet(src)end
---@class UnityEditor.VertexChannelCompressionFlags : System.Enum
UnityEditor.VertexChannelCompressionFlags = {}
---@type UnityEditor.VertexChannelCompressionFlags
CS.UnityEditor.VertexChannelCompressionFlags = UnityEditor.VertexChannelCompressionFlags

---@return System.Int32 value:0
UnityEditor.VertexChannelCompressionFlags.None = 0
---@return System.Int32 value:1
UnityEditor.VertexChannelCompressionFlags.Position = 1
---@return System.Int32 value:2
UnityEditor.VertexChannelCompressionFlags.Normal = 2
---@return System.Int32 value:4
UnityEditor.VertexChannelCompressionFlags.Tangent = 4
---@return System.Int32 value:8
UnityEditor.VertexChannelCompressionFlags.kUV0 = 8
---@return System.Int32 value:16
UnityEditor.VertexChannelCompressionFlags.kUV1 = 16

---@class UnityEditor.TextureImporter : UnityEditor.AssetImporter
---@field public textureFormat UnityEditor.TextureImporterFormat @ setter getter
---@field public maxTextureSize System.Int32 @ setter getter
---@field public compressionQuality System.Int32 @ setter getter
---@field public crunchedCompression System.Boolean @ setter getter
---@field public allowAlphaSplitting System.Boolean @ setter getter
---@field public androidETC2FallbackOverride UnityEditor.AndroidETC2FallbackOverride @ setter getter
---@field public textureCompression UnityEditor.TextureImporterCompression @ setter getter
---@field public alphaSource UnityEditor.TextureImporterAlphaSource @ setter getter
---@field public grayscaleToAlpha System.Boolean @ setter getter
---@field public generateCubemap UnityEditor.TextureImporterGenerateCubemap @ setter getter
---@field public npotScale UnityEditor.TextureImporterNPOTScale @ setter getter
---@field public isReadable System.Boolean @ setter getter
---@field public streamingMipmaps System.Boolean @ setter getter
---@field public streamingMipmapsPriority System.Int32 @ setter getter
---@field public mipmapEnabled System.Boolean @ setter getter
---@field public borderMipmap System.Boolean @ setter getter
---@field public sRGBTexture System.Boolean @ setter getter
---@field public mipMapsPreserveCoverage System.Boolean @ setter getter
---@field public alphaTestReferenceValue System.Single @ setter getter
---@field public mipmapFilter UnityEditor.TextureImporterMipFilter @ setter getter
---@field public fadeout System.Boolean @ setter getter
---@field public mipmapFadeDistanceStart System.Int32 @ setter getter
---@field public mipmapFadeDistanceEnd System.Int32 @ setter getter
---@field public generateMipsInLinearSpace System.Boolean @ setter getter
---@field public correctGamma System.Boolean @ setter getter
---@field public linearTexture System.Boolean @ setter getter
---@field public normalmap System.Boolean @ setter getter
---@field public lightmap System.Boolean @ setter getter
---@field public convertToNormalmap System.Boolean @ setter getter
---@field public normalmapFilter UnityEditor.TextureImporterNormalFilter @ setter getter
---@field public heightmapScale System.Single @ setter getter
---@field public anisoLevel System.Int32 @ setter getter
---@field public filterMode UnityEngine.FilterMode @ setter getter
---@field public wrapMode UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeU UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeV UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeW UnityEngine.TextureWrapMode @ setter getter
---@field public mipMapBias System.Single @ setter getter
---@field public alphaIsTransparency System.Boolean @ setter getter
---@field public qualifiesForSpritePacking System.Boolean @  getter
---@field public spriteImportMode UnityEditor.SpriteImportMode @ setter getter
---@field public spritesheet UnityEditor.SpriteMetaData[] @ setter getter
---@field public spritePackingTag System.String @ setter getter
---@field public spritePixelsPerUnit System.Single @ setter getter
---@field public spritePixelsToUnits System.Single @ setter getter
---@field public spritePivot UnityEngine.Vector2 @ setter getter
---@field public spriteBorder UnityEngine.Vector4 @ setter getter
---@field public textureType UnityEditor.TextureImporterType @ setter getter
---@field public textureShape UnityEditor.TextureImporterShape @ setter getter
UnityEditor.TextureImporter = {}
---@type UnityEditor.TextureImporter
CS.UnityEditor.TextureImporter = UnityEditor.TextureImporter

---@return System.Boolean
function UnityEditor.TextureImporter:GetAllowsAlphaSplitting()end
---@param flag System.Boolean
---@return System.Void
function UnityEditor.TextureImporter:SetAllowsAlphaSplitting(flag)end
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat):System.Boolean
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat, compressionQuality:System.Int32):System.Boolean
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat, compressionQuality:System.Int32, etc1AlphaSplitEnabled:System.Boolean):System.Boolean
---@param platform System.String
---@return UnityEditor.TextureImporterPlatformSettings
function UnityEditor.TextureImporter:GetPlatformTextureSettings(platform)end
---@return UnityEditor.TextureImporterPlatformSettings
function UnityEditor.TextureImporter:GetDefaultPlatformTextureSettings()end
---@param platform System.String
---@return UnityEditor.TextureImporterFormat
function UnityEditor.TextureImporter:GetAutomaticFormat(platform)end
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat):System.Void
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat, allowsAlphaSplit:System.Boolean):System.Void
---@overload fun(platform:System.String, maxTextureSize:System.Int32, textureFormat:UnityEditor.TextureImporterFormat, compressionQuality:System.Int32, allowsAlphaSplit:System.Boolean):System.Void
---@param platformSettings UnityEditor.TextureImporterPlatformSettings
---@return System.Void
function UnityEditor.TextureImporter:SetPlatformTextureSettings(platformSettings)end
---@param platform System.String
---@return System.Void
function UnityEditor.TextureImporter:ClearPlatformTextureSettings(platform)end
---@return System.Boolean
function UnityEditor.TextureImporter:DoesSourceTextureHaveAlpha()end
---@return System.Boolean
function UnityEditor.TextureImporter:DoesSourceTextureHaveColor()end
---@param dest UnityEditor.TextureImporterSettings
---@return System.Void
function UnityEditor.TextureImporter:ReadTextureSettings(dest)end
---@param src UnityEditor.TextureImporterSettings
---@return System.Void
function UnityEditor.TextureImporter:SetTextureSettings(src)end
---@param target UnityEditor.BuildTarget
---@param desiredFormat UnityEngine.TextureFormat
---@param colorSpace UnityEngine.ColorSpace
---@param compressionQuality System.Int32
---@return System.Void
function UnityEditor.TextureImporter:ReadTextureImportInstructions(target, desiredFormat, colorSpace, compressionQuality)end
---@class UnityEditor.AnimationClipSettings : System.Object
---@field public additiveReferencePoseClip UnityEngine.AnimationClip
---@field public additiveReferencePoseTime System.Single
---@field public startTime System.Single
---@field public stopTime System.Single
---@field public orientationOffsetY System.Single
---@field public level System.Single
---@field public cycleOffset System.Single
---@field public hasAdditiveReferencePose System.Boolean
---@field public loopTime System.Boolean
---@field public loopBlend System.Boolean
---@field public loopBlendOrientation System.Boolean
---@field public loopBlendPositionY System.Boolean
---@field public loopBlendPositionXZ System.Boolean
---@field public keepOriginalOrientation System.Boolean
---@field public keepOriginalPositionY System.Boolean
---@field public keepOriginalPositionXZ System.Boolean
---@field public heightFromFeet System.Boolean
---@field public mirror System.Boolean
UnityEditor.AnimationClipSettings = {}
---@type UnityEditor.AnimationClipSettings
CS.UnityEditor.AnimationClipSettings = UnityEditor.AnimationClipSettings

---@class UnityEditor.AnimationMode : System.Object
---@field public animatedPropertyColor UnityEngine.Color @static  getter
---@field public recordedPropertyColor UnityEngine.Color @static  getter
---@field public candidatePropertyColor UnityEngine.Color @static  getter
UnityEditor.AnimationMode = {}
---@type UnityEditor.AnimationMode
CS.UnityEditor.AnimationMode = UnityEditor.AnimationMode

---@param target UnityEngine.Object
---@param propertyPath System.String
---@return System.Boolean
function UnityEditor.AnimationMode.IsPropertyAnimated(target, propertyPath)end
---@return System.Void
function UnityEditor.AnimationMode.StopAnimationMode()end
---@return System.Boolean
function UnityEditor.AnimationMode.InAnimationMode()end
---@return System.Void
function UnityEditor.AnimationMode.StartAnimationMode()end
---@return System.Void
function UnityEditor.AnimationMode.BeginSampling()end
---@return System.Void
function UnityEditor.AnimationMode.EndSampling()end
---@param gameObject UnityEngine.GameObject
---@param clip UnityEngine.AnimationClip
---@param time System.Single
---@return System.Void
function UnityEditor.AnimationMode.SampleAnimationClip(gameObject, clip, time)end
---@param binding UnityEditor.EditorCurveBinding
---@param modification UnityEditor.PropertyModification
---@param keepPrefabOverride System.Boolean
---@return System.Void
function UnityEditor.AnimationMode.AddPropertyModification(binding, modification, keepPrefabOverride)end
---@param gameObject UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@return System.Void
function UnityEditor.AnimationMode.AddEditorCurveBinding(gameObject, binding)end
---@class UnityEditor.ObjectReferenceKeyframe : System.ValueType
---@field public time System.Single
---@field public value UnityEngine.Object
UnityEditor.ObjectReferenceKeyframe = {}
---@type UnityEditor.ObjectReferenceKeyframe
CS.UnityEditor.ObjectReferenceKeyframe = UnityEditor.ObjectReferenceKeyframe

---@class UnityEditor.AnimationClipCurveData : System.Object
---@field public path System.String
---@field public type System.Type
---@field public propertyName System.String
---@field public curve UnityEngine.AnimationCurve
UnityEditor.AnimationClipCurveData = {}
---@type UnityEditor.AnimationClipCurveData
CS.UnityEditor.AnimationClipCurveData = UnityEditor.AnimationClipCurveData

---@class UnityEditor.AnimationUtility : System.Object
---@field public onCurveWasModified UnityEditor.AnimationUtility.OnCurveWasModified
UnityEditor.AnimationUtility = {}
---@type UnityEditor.AnimationUtility
CS.UnityEditor.AnimationUtility = UnityEditor.AnimationUtility

---@overload fun(gameObject:UnityEngine.GameObject):UnityEngine.AnimationClip[]
---@param component UnityEngine.Animation
---@return UnityEngine.AnimationClip[]
function UnityEditor.AnimationUtility.GetAnimationClips(component)end
---@param animation UnityEngine.Animation
---@param clips UnityEngine.AnimationClip[]
---@return System.Void
function UnityEditor.AnimationUtility.SetAnimationClips(animation, clips)end
---@param targetObject UnityEngine.GameObject
---@param root UnityEngine.GameObject
---@return UnityEditor.EditorCurveBinding[]
function UnityEditor.AnimationUtility.GetAnimatableBindings(targetObject, root)end
---@param root UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@return System.Type
function UnityEditor.AnimationUtility.GetEditorCurveValueType(root, binding)end
---@overload fun(root:UnityEngine.GameObject, relativePath:System.String, type:System.Type, propertyName:System.String, data:System.Single):System.Boolean
---@param root UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@param data System.Single
---@return System.Boolean
function UnityEditor.AnimationUtility.GetFloatValue(root, binding, data)end
---@param root UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@param data UnityEngine.Object
---@return System.Boolean
function UnityEditor.AnimationUtility.GetObjectReferenceValue(root, binding, data)end
---@param root UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@return UnityEngine.Object
function UnityEditor.AnimationUtility.GetAnimatedObject(root, binding)end
---@param modification UnityEditor.PropertyModification
---@param gameObject UnityEngine.GameObject
---@param binding UnityEditor.EditorCurveBinding
---@return System.Type
function UnityEditor.AnimationUtility.PropertyModificationToEditorCurveBinding(modification, gameObject, binding)end
---@param clip UnityEngine.AnimationClip
---@return UnityEditor.EditorCurveBinding[]
function UnityEditor.AnimationUtility.GetCurveBindings(clip)end
---@param clip UnityEngine.AnimationClip
---@return UnityEditor.EditorCurveBinding[]
function UnityEditor.AnimationUtility.GetObjectReferenceCurveBindings(clip)end
---@param clip UnityEngine.AnimationClip
---@param binding UnityEditor.EditorCurveBinding
---@return UnityEditor.ObjectReferenceKeyframe[]
function UnityEditor.AnimationUtility.GetObjectReferenceCurve(clip, binding)end
---@param clip UnityEngine.AnimationClip
---@param binding UnityEditor.EditorCurveBinding
---@param keyframes UnityEditor.ObjectReferenceKeyframe[]
---@return System.Void
function UnityEditor.AnimationUtility.SetObjectReferenceCurve(clip, binding, keyframes)end
---@overload fun(clip:UnityEngine.AnimationClip, relativePath:System.String, type:System.Type, propertyName:System.String):UnityEngine.AnimationCurve
---@param clip UnityEngine.AnimationClip
---@param binding UnityEditor.EditorCurveBinding
---@return UnityEngine.AnimationCurve
function UnityEditor.AnimationUtility.GetEditorCurve(clip, binding)end
---@overload fun(clip:UnityEngine.AnimationClip, relativePath:System.String, type:System.Type, propertyName:System.String, curve:UnityEngine.AnimationCurve):System.Void
---@param clip UnityEngine.AnimationClip
---@param binding UnityEditor.EditorCurveBinding
---@param curve UnityEngine.AnimationCurve
---@return System.Void
function UnityEditor.AnimationUtility.SetEditorCurve(clip, binding, curve)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@return UnityEditor.AnimationUtility.TangentMode
function UnityEditor.AnimationUtility.GetKeyLeftTangentMode(curve, index)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@return UnityEditor.AnimationUtility.TangentMode
function UnityEditor.AnimationUtility.GetKeyRightTangentMode(curve, index)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@return System.Boolean
function UnityEditor.AnimationUtility.GetKeyBroken(curve, index)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@param tangentMode UnityEditor.AnimationUtility.TangentMode
---@return System.Void
function UnityEditor.AnimationUtility.SetKeyLeftTangentMode(curve, index, tangentMode)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@param tangentMode UnityEditor.AnimationUtility.TangentMode
---@return System.Void
function UnityEditor.AnimationUtility.SetKeyRightTangentMode(curve, index, tangentMode)end
---@param curve UnityEngine.AnimationCurve
---@param index System.Int32
---@param broken System.Boolean
---@return System.Void
function UnityEditor.AnimationUtility.SetKeyBroken(curve, index, broken)end
---@overload fun(clip:UnityEngine.AnimationClip, includeCurveData:System.Boolean):UnityEditor.AnimationClipCurveData[]
---@param clip UnityEngine.AnimationClip
---@return UnityEditor.AnimationClipCurveData[]
function UnityEditor.AnimationUtility.GetAllCurves(clip)end
---@param clip UnityEngine.AnimationClip
---@return UnityEngine.AnimationEvent[]
function UnityEditor.AnimationUtility.GetAnimationEvents(clip)end
---@param clip UnityEngine.AnimationClip
---@param events UnityEngine.AnimationEvent[]
---@return System.Void
function UnityEditor.AnimationUtility.SetAnimationEvents(clip, events)end
---@param targetTransform UnityEngine.Transform
---@param root UnityEngine.Transform
---@return System.String
function UnityEditor.AnimationUtility.CalculateTransformPath(targetTransform, root)end
---@param clip UnityEngine.AnimationClip
---@return UnityEditor.AnimationClipSettings
function UnityEditor.AnimationUtility.GetAnimationClipSettings(clip)end
---@param clip UnityEngine.AnimationClip
---@param srcClipInfo UnityEditor.AnimationClipSettings
---@return System.Void
function UnityEditor.AnimationUtility.SetAnimationClipSettings(clip, srcClipInfo)end
---@param clip UnityEngine.AnimationClip
---@param referenceClip UnityEngine.AnimationClip
---@param time System.Single
---@return System.Void
function UnityEditor.AnimationUtility.SetAdditiveReferencePose(clip, referenceClip, time)end
---@param curve UnityEngine.AnimationCurve
---@return System.Void
function UnityEditor.AnimationUtility.ConstrainToPolynomialCurve(curve)end
---@param clip UnityEngine.AnimationClip
---@return System.Boolean
function UnityEditor.AnimationUtility.GetGenerateMotionCurves(clip)end
---@param clip UnityEngine.AnimationClip
---@param value System.Boolean
---@return System.Void
function UnityEditor.AnimationUtility.SetGenerateMotionCurves(clip, value)end
---@return System.Boolean
function UnityEditor.AnimationUtility.InAnimationMode()end
---@param objects UnityEngine.Object[]
---@return System.Void
function UnityEditor.AnimationUtility.StartAnimationMode(objects)end
---@return System.Void
function UnityEditor.AnimationUtility.StopAnimationMode()end
---@param clip UnityEngine.AnimationClip
---@param type UnityEditor.ModelImporterAnimationType
---@return System.Void
function UnityEditor.AnimationUtility.SetAnimationType(clip, type)end
---@class UnityEditor.AnimationUtility.CurveModifiedType : System.Enum
UnityEditor.AnimationUtility.CurveModifiedType = {}
---@type UnityEditor.AnimationUtility.CurveModifiedType
CS.UnityEditor.AnimationUtility.CurveModifiedType = UnityEditor.AnimationUtility.CurveModifiedType

---@return System.Int32 value:0
UnityEditor.AnimationUtility.CurveModifiedType.CurveDeleted = 0
---@return System.Int32 value:1
UnityEditor.AnimationUtility.CurveModifiedType.CurveModified = 1
---@return System.Int32 value:2
UnityEditor.AnimationUtility.CurveModifiedType.ClipModified = 2

---@class UnityEditor.AnimationUtility.TangentMode : System.Enum
UnityEditor.AnimationUtility.TangentMode = {}
---@type UnityEditor.AnimationUtility.TangentMode
CS.UnityEditor.AnimationUtility.TangentMode = UnityEditor.AnimationUtility.TangentMode

---@return System.Int32 value:0
UnityEditor.AnimationUtility.TangentMode.Free = 0
---@return System.Int32 value:1
UnityEditor.AnimationUtility.TangentMode.Auto = 1
---@return System.Int32 value:2
UnityEditor.AnimationUtility.TangentMode.Linear = 2
---@return System.Int32 value:3
UnityEditor.AnimationUtility.TangentMode.Constant = 3
---@return System.Int32 value:4
UnityEditor.AnimationUtility.TangentMode.ClampedAuto = 4

---@class UnityEditor.EditorCurveBinding : System.ValueType
---@field public isPPtrCurve System.Boolean @  getter
---@field public isDiscreteCurve System.Boolean @  getter
---@field public type System.Type @ setter getter
---@field public path System.String
---@field public propertyName System.String
UnityEditor.EditorCurveBinding = {}
---@type UnityEditor.EditorCurveBinding
CS.UnityEditor.EditorCurveBinding = UnityEditor.EditorCurveBinding

---@param lhs UnityEditor.EditorCurveBinding
---@param rhs UnityEditor.EditorCurveBinding
---@return System.Boolean
function UnityEditor.EditorCurveBinding.op_Equality(lhs, rhs)end
---@param lhs UnityEditor.EditorCurveBinding
---@param rhs UnityEditor.EditorCurveBinding
---@return System.Boolean
function UnityEditor.EditorCurveBinding.op_Inequality(lhs, rhs)end
---@return System.Int32
function UnityEditor.EditorCurveBinding:GetHashCode()end
---@overload fun(other:UnityEditor.EditorCurveBinding):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEditor.EditorCurveBinding:Equals(other)end
---@param inPath System.String
---@param inType System.Type
---@param inPropertyName System.String
---@return UnityEditor.EditorCurveBinding
function UnityEditor.EditorCurveBinding.FloatCurve(inPath, inType, inPropertyName)end
---@param inPath System.String
---@param inType System.Type
---@param inPropertyName System.String
---@return UnityEditor.EditorCurveBinding
function UnityEditor.EditorCurveBinding.PPtrCurve(inPath, inType, inPropertyName)end
---@param inPath System.String
---@param inType System.Type
---@param inPropertyName System.String
---@return UnityEditor.EditorCurveBinding
function UnityEditor.EditorCurveBinding.DiscreteCurve(inPath, inType, inPropertyName)end
---@class UnityEditor.DrawCameraMode : System.Enum
UnityEditor.DrawCameraMode = {}
---@type UnityEditor.DrawCameraMode
CS.UnityEditor.DrawCameraMode = UnityEditor.DrawCameraMode

---@return System.Int32 value:0
UnityEditor.DrawCameraMode.Textured = 0
---@return System.Int32 value:1
UnityEditor.DrawCameraMode.Wireframe = 1
---@return System.Int32 value:2
UnityEditor.DrawCameraMode.TexturedWire = 2
---@return System.Int32 value:3
UnityEditor.DrawCameraMode.ShadowCascades = 3
---@return System.Int32 value:4
UnityEditor.DrawCameraMode.RenderPaths = 4
---@return System.Int32 value:5
UnityEditor.DrawCameraMode.AlphaChannel = 5
---@return System.Int32 value:6
UnityEditor.DrawCameraMode.Overdraw = 6
---@return System.Int32 value:7
UnityEditor.DrawCameraMode.Mipmaps = 7
---@return System.Int32 value:8
UnityEditor.DrawCameraMode.DeferredDiffuse = 8
---@return System.Int32 value:9
UnityEditor.DrawCameraMode.DeferredSpecular = 9
---@return System.Int32 value:10
UnityEditor.DrawCameraMode.DeferredSmoothness = 10
---@return System.Int32 value:11
UnityEditor.DrawCameraMode.DeferredNormal = 11
---@return System.Int32 value:12
UnityEditor.DrawCameraMode.RealtimeCharting = 12
---@return System.Int32 value:13
UnityEditor.DrawCameraMode.Systems = 13
---@return System.Int32 value:14
UnityEditor.DrawCameraMode.RealtimeAlbedo = 14
---@return System.Int32 value:15
UnityEditor.DrawCameraMode.RealtimeEmissive = 15
---@return System.Int32 value:16
UnityEditor.DrawCameraMode.RealtimeIndirect = 16
---@return System.Int32 value:17
UnityEditor.DrawCameraMode.RealtimeDirectionality = 17
---@return System.Int32 value:18
UnityEditor.DrawCameraMode.BakedLightmap = 18
---@return System.Int32 value:19
UnityEditor.DrawCameraMode.Clustering = 19
---@return System.Int32 value:20
UnityEditor.DrawCameraMode.LitClustering = 20
---@return System.Int32 value:21
UnityEditor.DrawCameraMode.ValidateAlbedo = 21
---@return System.Int32 value:22
UnityEditor.DrawCameraMode.ValidateMetalSpecular = 22
---@return System.Int32 value:23
UnityEditor.DrawCameraMode.ShadowMasks = 23
---@return System.Int32 value:24
UnityEditor.DrawCameraMode.LightOverlap = 24
---@return System.Int32 value:25
UnityEditor.DrawCameraMode.BakedAlbedo = 25
---@return System.Int32 value:26
UnityEditor.DrawCameraMode.BakedEmissive = 26
---@return System.Int32 value:27
UnityEditor.DrawCameraMode.BakedDirectionality = 27
---@return System.Int32 value:28
UnityEditor.DrawCameraMode.BakedTexelValidity = 28
---@return System.Int32 value:29
UnityEditor.DrawCameraMode.BakedIndices = 29
---@return System.Int32 value:30
UnityEditor.DrawCameraMode.BakedCharting = 30
---@return System.Int32 value:31
UnityEditor.DrawCameraMode.SpriteMask = 31
---@return System.Int32 value:32
UnityEditor.DrawCameraMode.BakedUVOverlap = 32
---@return System.Int32 value:33
UnityEditor.DrawCameraMode.TextureStreaming = 33
---@return System.Int32 value:34
UnityEditor.DrawCameraMode.BakedLightmapCulling = 34

---@class UnityEditor.ForceReserializeAssetsOptions : System.Enum
UnityEditor.ForceReserializeAssetsOptions = {}
---@type UnityEditor.ForceReserializeAssetsOptions
CS.UnityEditor.ForceReserializeAssetsOptions = UnityEditor.ForceReserializeAssetsOptions

---@return System.Int32 value:1
UnityEditor.ForceReserializeAssetsOptions.ReserializeAssets = 1
---@return System.Int32 value:2
UnityEditor.ForceReserializeAssetsOptions.ReserializeMetadata = 2

---@class UnityEditor.AssetStatus : System.Enum
UnityEditor.AssetStatus = {}
---@type UnityEditor.AssetStatus
CS.UnityEditor.AssetStatus = UnityEditor.AssetStatus

---@return System.Int32 value:0
UnityEditor.AssetStatus.ClientOnly = 0
---@return System.Int32 value:1
UnityEditor.AssetStatus.ServerOnly = 1
---@return System.Int32 value:2
UnityEditor.AssetStatus.Unchanged = 2
---@return System.Int32 value:3
UnityEditor.AssetStatus.Conflict = 3
---@return System.Int32 value:4
UnityEditor.AssetStatus.Same = 4
---@return System.Int32 value:5
UnityEditor.AssetStatus.NewVersionAvailable = 5
---@return System.Int32 value:6
UnityEditor.AssetStatus.NewLocalVersion = 6
---@return System.Int32 value:7
UnityEditor.AssetStatus.RestoredFromTrash = 7
---@return System.Int32 value:8
UnityEditor.AssetStatus.Ignored = 8
---@return System.Int32 value:9
UnityEditor.AssetStatus.BadState = 9

---@class UnityEditor.AssetsItem : System.Object
---@field public guid System.String
---@field public pathName System.String
---@field public message System.String
---@field public exportedAssetPath System.String
---@field public guidFolder System.String
---@field public enabled System.Int32
---@field public assetIsDir System.Int32
---@field public changeFlags System.Int32
---@field public previewPath System.String
---@field public exists System.Int32
UnityEditor.AssetsItem = {}
---@type UnityEditor.AssetsItem
CS.UnityEditor.AssetsItem = UnityEditor.AssetsItem

---@class UnityEditor.AssetPreview : System.Object
UnityEditor.AssetPreview = {}
---@type UnityEditor.AssetPreview
CS.UnityEditor.AssetPreview = UnityEditor.AssetPreview

---@param asset UnityEngine.Object
---@return UnityEngine.Texture2D
function UnityEditor.AssetPreview.GetAssetPreview(asset)end
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.AssetPreview.IsLoadingAssetPreview(instanceID)end
---@return System.Boolean
function UnityEditor.AssetPreview.IsLoadingAssetPreviews()end
---@param size System.Int32
---@return System.Void
function UnityEditor.AssetPreview.SetPreviewTextureCacheSize(size)end
---@param obj UnityEngine.Object
---@return UnityEngine.Texture2D
function UnityEditor.AssetPreview.GetMiniThumbnail(obj)end
---@param type System.Type
---@return UnityEngine.Texture2D
function UnityEditor.AssetPreview.GetMiniTypeThumbnail(type)end
---@class UnityEditor.AssetImporter : UnityEngine.Object
---@field public assetPath System.String @  getter
---@field public importSettingsMissing System.Boolean @  getter
---@field public assetTimeStamp System.UInt64 @  getter
---@field public userData System.String @ setter getter
---@field public assetBundleName System.String @ setter getter
---@field public assetBundleVariant System.String @ setter getter
UnityEditor.AssetImporter = {}
---@type UnityEditor.AssetImporter
CS.UnityEditor.AssetImporter = UnityEditor.AssetImporter

---@param assetBundleName System.String
---@param assetBundleVariant System.String
---@return System.Void
function UnityEditor.AssetImporter:SetAssetBundleNameAndVariant(assetBundleName, assetBundleVariant)end
---@param path System.String
---@return UnityEditor.AssetImporter
function UnityEditor.AssetImporter.GetAtPath(path)end
---@return System.Void
function UnityEditor.AssetImporter:SaveAndReimport()end
---@param identifier UnityEditor.AssetImporter.SourceAssetIdentifier
---@param externalObject UnityEngine.Object
---@return System.Void
function UnityEditor.AssetImporter:AddRemap(identifier, externalObject)end
---@param identifier UnityEditor.AssetImporter.SourceAssetIdentifier
---@return System.Boolean
function UnityEditor.AssetImporter:RemoveRemap(identifier)end
---@return System.Collections.Generic.Dictionary
function UnityEditor.AssetImporter:GetExternalObjectMap()end
---@param type System.Type
---@return System.Boolean
function UnityEditor.AssetImporter:SupportsRemappedAssetType(type)end
---@class UnityEditor.AssetImporter.SourceAssetIdentifier : System.ValueType
---@field public type System.Type
---@field public name System.String
UnityEditor.AssetImporter.SourceAssetIdentifier = {}
---@type UnityEditor.AssetImporter.SourceAssetIdentifier
CS.UnityEditor.AssetImporter.SourceAssetIdentifier = UnityEditor.AssetImporter.SourceAssetIdentifier

---@class UnityEditor.MaterialEditorExtensions : System.Object
UnityEditor.MaterialEditorExtensions = {}
---@type UnityEditor.MaterialEditorExtensions
CS.UnityEditor.MaterialEditorExtensions = UnityEditor.MaterialEditorExtensions

---@class UnityEditor.DDSImporter : UnityEditor.AssetImporter
---@field public isReadable System.Boolean @ setter getter
UnityEditor.DDSImporter = {}
---@type UnityEditor.DDSImporter
CS.UnityEditor.DDSImporter = UnityEditor.DDSImporter

---@class UnityEditor.IHVImageFormatImporter : UnityEditor.AssetImporter
---@field public isReadable System.Boolean @ setter getter
---@field public filterMode UnityEngine.FilterMode @ setter getter
---@field public wrapMode UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeU UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeV UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeW UnityEngine.TextureWrapMode @ setter getter
---@field public streamingMipmaps System.Boolean @ setter getter
---@field public streamingMipmapsPriority System.Int32 @ setter getter
UnityEditor.IHVImageFormatImporter = {}
---@type UnityEditor.IHVImageFormatImporter
CS.UnityEditor.IHVImageFormatImporter = UnityEditor.IHVImageFormatImporter

---@class UnityEditor.ShaderImporter : UnityEditor.AssetImporter
UnityEditor.ShaderImporter = {}
---@type UnityEditor.ShaderImporter
CS.UnityEditor.ShaderImporter = UnityEditor.ShaderImporter

---@return UnityEngine.Shader
function UnityEditor.ShaderImporter:GetShader()end
---@param name System.String[]
---@param textures UnityEngine.Texture[]
---@return System.Void
function UnityEditor.ShaderImporter:SetDefaultTextures(name, textures)end
---@param name System.String
---@return UnityEngine.Texture
function UnityEditor.ShaderImporter:GetDefaultTexture(name)end
---@param name System.String[]
---@param textures UnityEngine.Texture[]
---@return System.Void
function UnityEditor.ShaderImporter:SetNonModifiableTextures(name, textures)end
---@param name System.String
---@return UnityEngine.Texture
function UnityEditor.ShaderImporter:GetNonModifiableTexture(name)end
---@class UnityEditor.SpeedTreeImporter : UnityEditor.AssetImporter
---@field public hasImported System.Boolean @  getter
---@field public materialFolderPath System.String @  getter
---@field public materialLocation UnityEditor.SpeedTreeImporter.MaterialLocation @ setter getter
---@field public isV8 System.Boolean @  getter
---@field public scaleFactor System.Single @ setter getter
---@field public mainColor UnityEngine.Color @ setter getter
---@field public specColor UnityEngine.Color @ setter getter
---@field public shininess System.Single @ setter getter
---@field public hueVariation UnityEngine.Color @ setter getter
---@field public alphaTestRef System.Single @ setter getter
---@field public hasBillboard System.Boolean @  getter
---@field public enableSmoothLODTransition System.Boolean @ setter getter
---@field public animateCrossFading System.Boolean @ setter getter
---@field public billboardTransitionCrossFadeWidth System.Single @ setter getter
---@field public fadeOutWidth System.Single @ setter getter
---@field public LODHeights System.Single[] @ setter getter
---@field public castShadows System.Boolean[] @ setter getter
---@field public receiveShadows System.Boolean[] @ setter getter
---@field public useLightProbes System.Boolean[] @ setter getter
---@field public reflectionProbeUsages UnityEngine.Rendering.ReflectionProbeUsage[] @ setter getter
---@field public enableBump System.Boolean[] @ setter getter
---@field public enableHue System.Boolean[] @ setter getter
---@field public enableSubsurface System.Boolean[] @ setter getter
---@field public bestWindQuality System.Int32 @  getter
---@field public windQualities System.Int32[] @ setter getter
---@field public windQualityNames System.String[]
UnityEditor.SpeedTreeImporter = {}
---@type UnityEditor.SpeedTreeImporter
CS.UnityEditor.SpeedTreeImporter = UnityEditor.SpeedTreeImporter

---@return System.Void
function UnityEditor.SpeedTreeImporter:GenerateMaterials()end
---@param materialFolderPath System.String
---@return System.Boolean
function UnityEditor.SpeedTreeImporter:SearchAndRemapMaterials(materialFolderPath)end
---@class UnityEditor.SpeedTreeImporter.MaterialLocation : System.Enum
UnityEditor.SpeedTreeImporter.MaterialLocation = {}
---@type UnityEditor.SpeedTreeImporter.MaterialLocation
CS.UnityEditor.SpeedTreeImporter.MaterialLocation = UnityEditor.SpeedTreeImporter.MaterialLocation

---@return System.Int32 value:0
UnityEditor.SpeedTreeImporter.MaterialLocation.External = 0
---@return System.Int32 value:1
UnityEditor.SpeedTreeImporter.MaterialLocation.InPrefab = 1

---@class UnityEditor.TextureImporterFormat : System.Enum
UnityEditor.TextureImporterFormat = {}
---@type UnityEditor.TextureImporterFormat
CS.UnityEditor.TextureImporterFormat = UnityEditor.TextureImporterFormat

---@return System.Int32 value:1
UnityEditor.TextureImporterFormat.Alpha8 = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterFormat.ARGB16 = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterFormat.RGB24 = 3
---@return System.Int32 value:4
UnityEditor.TextureImporterFormat.RGBA32 = 4
---@return System.Int32 value:5
UnityEditor.TextureImporterFormat.ARGB32 = 5
---@return System.Int32 value:7
UnityEditor.TextureImporterFormat.RGB16 = 7
---@return System.Int32 value:9
UnityEditor.TextureImporterFormat.R16 = 9
---@return System.Int32 value:10
UnityEditor.TextureImporterFormat.DXT1 = 10
---@return System.Int32 value:12
UnityEditor.TextureImporterFormat.DXT5 = 12
---@return System.Int32 value:13
UnityEditor.TextureImporterFormat.RGBA16 = 13
---@return System.Int32 value:15
UnityEditor.TextureImporterFormat.RHalf = 15
---@return System.Int32 value:16
UnityEditor.TextureImporterFormat.RGHalf = 16
---@return System.Int32 value:17
UnityEditor.TextureImporterFormat.RGBAHalf = 17
---@return System.Int32 value:18
UnityEditor.TextureImporterFormat.RFloat = 18
---@return System.Int32 value:19
UnityEditor.TextureImporterFormat.RGFloat = 19
---@return System.Int32 value:20
UnityEditor.TextureImporterFormat.RGBAFloat = 20
---@return System.Int32 value:22
UnityEditor.TextureImporterFormat.RGB9E5 = 22
---@return System.Int32 value:24
UnityEditor.TextureImporterFormat.BC6H = 24
---@return System.Int32 value:25
UnityEditor.TextureImporterFormat.BC7 = 25
---@return System.Int32 value:26
UnityEditor.TextureImporterFormat.BC4 = 26
---@return System.Int32 value:27
UnityEditor.TextureImporterFormat.BC5 = 27
---@return System.Int32 value:28
UnityEditor.TextureImporterFormat.DXT1Crunched = 28
---@return System.Int32 value:29
UnityEditor.TextureImporterFormat.DXT5Crunched = 29
---@return System.Int32 value:30
UnityEditor.TextureImporterFormat.PVRTC_RGB2 = 30
---@return System.Int32 value:31
UnityEditor.TextureImporterFormat.PVRTC_RGBA2 = 31
---@return System.Int32 value:32
UnityEditor.TextureImporterFormat.PVRTC_RGB4 = 32
---@return System.Int32 value:33
UnityEditor.TextureImporterFormat.PVRTC_RGBA4 = 33
---@return System.Int32 value:34
UnityEditor.TextureImporterFormat.ETC_RGB4 = 34
---@return System.Int32 value:35
UnityEditor.TextureImporterFormat.ATC_RGB4 = 35
---@return System.Int32 value:36
UnityEditor.TextureImporterFormat.ATC_RGBA8 = 36
---@return System.Int32 value:41
UnityEditor.TextureImporterFormat.EAC_R = 41
---@return System.Int32 value:42
UnityEditor.TextureImporterFormat.EAC_R_SIGNED = 42
---@return System.Int32 value:43
UnityEditor.TextureImporterFormat.EAC_RG = 43
---@return System.Int32 value:44
UnityEditor.TextureImporterFormat.EAC_RG_SIGNED = 44
---@return System.Int32 value:45
UnityEditor.TextureImporterFormat.ETC2_RGB4 = 45
---@return System.Int32 value:46
UnityEditor.TextureImporterFormat.ETC2_RGB4_PUNCHTHROUGH_ALPHA = 46
---@return System.Int32 value:47
UnityEditor.TextureImporterFormat.ETC2_RGBA8 = 47
---@return System.Int32 value:48
UnityEditor.TextureImporterFormat.ASTC_RGB_4x4 = 48
---@return System.Int32 value:49
UnityEditor.TextureImporterFormat.ASTC_RGB_5x5 = 49
---@return System.Int32 value:50
UnityEditor.TextureImporterFormat.ASTC_RGB_6x6 = 50
---@return System.Int32 value:51
UnityEditor.TextureImporterFormat.ASTC_RGB_8x8 = 51
---@return System.Int32 value:52
UnityEditor.TextureImporterFormat.ASTC_RGB_10x10 = 52
---@return System.Int32 value:53
UnityEditor.TextureImporterFormat.ASTC_RGB_12x12 = 53
---@return System.Int32 value:54
UnityEditor.TextureImporterFormat.ASTC_RGBA_4x4 = 54
---@return System.Int32 value:55
UnityEditor.TextureImporterFormat.ASTC_RGBA_5x5 = 55
---@return System.Int32 value:56
UnityEditor.TextureImporterFormat.ASTC_RGBA_6x6 = 56
---@return System.Int32 value:57
UnityEditor.TextureImporterFormat.ASTC_RGBA_8x8 = 57
---@return System.Int32 value:58
UnityEditor.TextureImporterFormat.ASTC_RGBA_10x10 = 58
---@return System.Int32 value:59
UnityEditor.TextureImporterFormat.ASTC_RGBA_12x12 = 59
---@return System.Int32 value:60
UnityEditor.TextureImporterFormat.ETC_RGB4_3DS = 60
---@return System.Int32 value:61
UnityEditor.TextureImporterFormat.ETC_RGBA8_3DS = 61

---@class UnityEditor.TextureImporterMipFilter : System.Enum
UnityEditor.TextureImporterMipFilter = {}
---@type UnityEditor.TextureImporterMipFilter
CS.UnityEditor.TextureImporterMipFilter = UnityEditor.TextureImporterMipFilter

---@return System.Int32 value:0
UnityEditor.TextureImporterMipFilter.BoxFilter = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterMipFilter.KaiserFilter = 1

---@class UnityEditor.TextureImporterGenerateCubemap : System.Enum
UnityEditor.TextureImporterGenerateCubemap = {}
---@type UnityEditor.TextureImporterGenerateCubemap
CS.UnityEditor.TextureImporterGenerateCubemap = UnityEditor.TextureImporterGenerateCubemap

---@return System.Int32 value:0
UnityEditor.TextureImporterGenerateCubemap.None = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterGenerateCubemap.Spheremap = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterGenerateCubemap.Cylindrical = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterGenerateCubemap.SimpleSpheremap = 3
---@return System.Int32 value:4
UnityEditor.TextureImporterGenerateCubemap.NiceSpheremap = 4
---@return System.Int32 value:5
UnityEditor.TextureImporterGenerateCubemap.FullCubemap = 5
---@return System.Int32 value:6
UnityEditor.TextureImporterGenerateCubemap.AutoCubemap = 6

---@class UnityEditor.TextureImporterNPOTScale : System.Enum
UnityEditor.TextureImporterNPOTScale = {}
---@type UnityEditor.TextureImporterNPOTScale
CS.UnityEditor.TextureImporterNPOTScale = UnityEditor.TextureImporterNPOTScale

---@return System.Int32 value:0
UnityEditor.TextureImporterNPOTScale.None = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterNPOTScale.ToNearest = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterNPOTScale.ToLarger = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterNPOTScale.ToSmaller = 3

---@class UnityEditor.TextureImporterNormalFilter : System.Enum
UnityEditor.TextureImporterNormalFilter = {}
---@type UnityEditor.TextureImporterNormalFilter
CS.UnityEditor.TextureImporterNormalFilter = UnityEditor.TextureImporterNormalFilter

---@return System.Int32 value:0
UnityEditor.TextureImporterNormalFilter.Standard = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterNormalFilter.Sobel = 1

---@class UnityEditor.TextureImporterAlphaSource : System.Enum
UnityEditor.TextureImporterAlphaSource = {}
---@type UnityEditor.TextureImporterAlphaSource
CS.UnityEditor.TextureImporterAlphaSource = UnityEditor.TextureImporterAlphaSource

---@return System.Int32 value:0
UnityEditor.TextureImporterAlphaSource.None = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterAlphaSource.FromInput = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterAlphaSource.FromGrayScale = 2

---@class UnityEditor.TextureImporterSingleChannelComponent : System.Enum
UnityEditor.TextureImporterSingleChannelComponent = {}
---@type UnityEditor.TextureImporterSingleChannelComponent
CS.UnityEditor.TextureImporterSingleChannelComponent = UnityEditor.TextureImporterSingleChannelComponent

---@return System.Int32 value:0
UnityEditor.TextureImporterSingleChannelComponent.Alpha = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterSingleChannelComponent.Red = 1

---@class UnityEditor.TextureImporterType : System.Enum
UnityEditor.TextureImporterType = {}
---@type UnityEditor.TextureImporterType
CS.UnityEditor.TextureImporterType = UnityEditor.TextureImporterType

---@return System.Int32 value:0
UnityEditor.TextureImporterType.Default = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterType.NormalMap = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterType.GUI = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterType.Reflection = 3
---@return System.Int32 value:4
UnityEditor.TextureImporterType.Cookie = 4
---@return System.Int32 value:5
UnityEditor.TextureImporterType.Advanced = 5
---@return System.Int32 value:6
UnityEditor.TextureImporterType.Lightmap = 6
---@return System.Int32 value:7
UnityEditor.TextureImporterType.Cursor = 7
---@return System.Int32 value:8
UnityEditor.TextureImporterType.Sprite = 8
---@return System.Int32 value:9
UnityEditor.TextureImporterType.HDRI = 9
---@return System.Int32 value:10
UnityEditor.TextureImporterType.SingleChannel = 10

---@class UnityEditor.TextureImporterCompression : System.Enum
UnityEditor.TextureImporterCompression = {}
---@type UnityEditor.TextureImporterCompression
CS.UnityEditor.TextureImporterCompression = UnityEditor.TextureImporterCompression

---@return System.Int32 value:0
UnityEditor.TextureImporterCompression.Uncompressed = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterCompression.Compressed = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterCompression.CompressedHQ = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterCompression.CompressedLQ = 3

---@class UnityEditor.TextureResizeAlgorithm : System.Enum
UnityEditor.TextureResizeAlgorithm = {}
---@type UnityEditor.TextureResizeAlgorithm
CS.UnityEditor.TextureResizeAlgorithm = UnityEditor.TextureResizeAlgorithm

---@return System.Int32 value:0
UnityEditor.TextureResizeAlgorithm.Mitchell = 0
---@return System.Int32 value:1
UnityEditor.TextureResizeAlgorithm.Bilinear = 1

---@class UnityEditor.TextureImporterShape : System.Enum
UnityEditor.TextureImporterShape = {}
---@type UnityEditor.TextureImporterShape
CS.UnityEditor.TextureImporterShape = UnityEditor.TextureImporterShape

---@return System.Int32 value:1
UnityEditor.TextureImporterShape.Texture2D = 1

---@class UnityEditor.SpriteImportMode : System.Enum
UnityEditor.SpriteImportMode = {}
---@type UnityEditor.SpriteImportMode
CS.UnityEditor.SpriteImportMode = UnityEditor.SpriteImportMode

---@return System.Int32 value:0
UnityEditor.SpriteImportMode.None = 0
---@return System.Int32 value:1
UnityEditor.SpriteImportMode.Single = 1
---@return System.Int32 value:2
UnityEditor.SpriteImportMode.Multiple = 2
---@return System.Int32 value:3
UnityEditor.SpriteImportMode.Polygon = 3

---@class UnityEditor.AndroidETC2FallbackOverride : System.Enum
UnityEditor.AndroidETC2FallbackOverride = {}
---@type UnityEditor.AndroidETC2FallbackOverride
CS.UnityEditor.AndroidETC2FallbackOverride = UnityEditor.AndroidETC2FallbackOverride

---@return System.Int32 value:0
UnityEditor.AndroidETC2FallbackOverride.UseBuildSettings = 0
---@return System.Int32 value:1
UnityEditor.AndroidETC2FallbackOverride.Quality32Bit = 1
---@return System.Int32 value:2
UnityEditor.AndroidETC2FallbackOverride.Quality16Bit = 2
---@return System.Int32 value:3
UnityEditor.AndroidETC2FallbackOverride.Quality32BitDownscaled = 3

---@class UnityEditor.SpriteMetaData : System.ValueType
---@field public name System.String
---@field public rect UnityEngine.Rect
---@field public alignment System.Int32
---@field public pivot UnityEngine.Vector2
---@field public border UnityEngine.Vector4
UnityEditor.SpriteMetaData = {}
---@type UnityEditor.SpriteMetaData
CS.UnityEditor.SpriteMetaData = UnityEditor.SpriteMetaData

---@class UnityEditor.TextureImporterSettings : System.Object
---@field public textureType UnityEditor.TextureImporterType @ setter getter
---@field public textureShape UnityEditor.TextureImporterShape @ setter getter
---@field public mipmapFilter UnityEditor.TextureImporterMipFilter @ setter getter
---@field public mipmapEnabled System.Boolean @ setter getter
---@field public generateMipsInLinearSpace System.Boolean @ setter getter
---@field public sRGBTexture System.Boolean @ setter getter
---@field public fadeOut System.Boolean @ setter getter
---@field public borderMipmap System.Boolean @ setter getter
---@field public mipMapsPreserveCoverage System.Boolean @ setter getter
---@field public alphaTestReferenceValue System.Single @ setter getter
---@field public mipmapFadeDistanceStart System.Int32 @ setter getter
---@field public mipmapFadeDistanceEnd System.Int32 @ setter getter
---@field public convertToNormalMap System.Boolean @ setter getter
---@field public heightmapScale System.Single @ setter getter
---@field public normalMapFilter UnityEditor.TextureImporterNormalFilter @ setter getter
---@field public alphaSource UnityEditor.TextureImporterAlphaSource @ setter getter
---@field public singleChannelComponent UnityEditor.TextureImporterSingleChannelComponent @ setter getter
---@field public readable System.Boolean @ setter getter
---@field public streamingMipmaps System.Boolean @ setter getter
---@field public streamingMipmapsPriority System.Int32 @ setter getter
---@field public npotScale UnityEditor.TextureImporterNPOTScale @ setter getter
---@field public generateCubemap UnityEditor.TextureImporterGenerateCubemap @ setter getter
---@field public cubemapConvolution UnityEditor.TextureImporterCubemapConvolution @ setter getter
---@field public seamlessCubemap System.Boolean @ setter getter
---@field public filterMode UnityEngine.FilterMode @ setter getter
---@field public aniso System.Int32 @ setter getter
---@field public mipmapBias System.Single @ setter getter
---@field public wrapMode UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeU UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeV UnityEngine.TextureWrapMode @ setter getter
---@field public wrapModeW UnityEngine.TextureWrapMode @ setter getter
---@field public alphaIsTransparency System.Boolean @ setter getter
---@field public spriteMode System.Int32 @ setter getter
---@field public spritePixelsPerUnit System.Single @ setter getter
---@field public spritePixelsToUnits System.Single @ setter getter
---@field public spriteTessellationDetail System.Single @ setter getter
---@field public spriteExtrude System.UInt32 @ setter getter
---@field public spriteMeshType UnityEngine.SpriteMeshType @ setter getter
---@field public spriteAlignment System.Int32 @ setter getter
---@field public spritePivot UnityEngine.Vector2 @ setter getter
---@field public spriteBorder UnityEngine.Vector4 @ setter getter
---@field public spriteGenerateFallbackPhysicsShape System.Boolean @ setter getter
---@field public linearTexture System.Boolean @ setter getter
---@field public normalMap System.Boolean @ setter getter
---@field public textureFormat UnityEditor.TextureImporterFormat @ setter getter
---@field public maxTextureSize System.Int32 @ setter getter
---@field public lightmap System.Boolean @ setter getter
---@field public rgbm UnityEditor.TextureImporterRGBMMode @ setter getter
---@field public grayscaleToAlpha System.Boolean @ setter getter
---@field public cubemapConvolutionSteps System.Int32 @ setter getter
---@field public cubemapConvolutionExponent System.Single @ setter getter
---@field public compressionQuality System.Int32 @ setter getter
UnityEditor.TextureImporterSettings = {}
---@type UnityEditor.TextureImporterSettings
CS.UnityEditor.TextureImporterSettings = UnityEditor.TextureImporterSettings

---@param a UnityEditor.TextureImporterSettings
---@param b UnityEditor.TextureImporterSettings
---@return System.Boolean
function UnityEditor.TextureImporterSettings.Equal(a, b)end
---@param target UnityEditor.TextureImporterSettings
---@return System.Void
function UnityEditor.TextureImporterSettings:CopyTo(target)end
---@overload fun(type:UnityEditor.TextureImporterType, applyAll:System.Boolean):System.Void
---@param type UnityEditor.TextureImporterType
---@return System.Void
function UnityEditor.TextureImporterSettings:ApplyTextureType(type)end
---@class UnityEditor.TextureImporterPlatformSettings : System.Object
---@field public name System.String @ setter getter
---@field public overridden System.Boolean @ setter getter
---@field public maxTextureSize System.Int32 @ setter getter
---@field public resizeAlgorithm UnityEditor.TextureResizeAlgorithm @ setter getter
---@field public format UnityEditor.TextureImporterFormat @ setter getter
---@field public textureCompression UnityEditor.TextureImporterCompression @ setter getter
---@field public compressionQuality System.Int32 @ setter getter
---@field public crunchedCompression System.Boolean @ setter getter
---@field public allowsAlphaSplitting System.Boolean @ setter getter
---@field public androidETC2FallbackOverride UnityEditor.AndroidETC2FallbackOverride @ setter getter
UnityEditor.TextureImporterPlatformSettings = {}
---@type UnityEditor.TextureImporterPlatformSettings
CS.UnityEditor.TextureImporterPlatformSettings = UnityEditor.TextureImporterPlatformSettings

---@param target UnityEditor.TextureImporterPlatformSettings
---@return System.Void
function UnityEditor.TextureImporterPlatformSettings:CopyTo(target)end
---@class UnityEditor.AssetStoreAsset : System.Object
---@field public Preview UnityEngine.Object @  getter
---@field public HasLivePreview System.Boolean @  getter
---@field public id System.Int32
---@field public name System.String
---@field public displayName System.String
---@field public staticPreviewURL System.String
---@field public dynamicPreviewURL System.String
---@field public className System.String
---@field public price System.String
---@field public packageID System.Int32
---@field public previewImage UnityEngine.Texture2D
UnityEditor.AssetStoreAsset = {}
---@type UnityEditor.AssetStoreAsset
CS.UnityEditor.AssetStoreAsset = UnityEditor.AssetStoreAsset

---@return System.Void
function UnityEditor.AssetStoreAsset:Dispose()end
---@class UnityEditor.AudioCurveRendering : System.Object
---@field public kAudioOrange UnityEngine.Color
UnityEditor.AudioCurveRendering = {}
---@type UnityEditor.AudioCurveRendering
CS.UnityEditor.AudioCurveRendering = UnityEditor.AudioCurveRendering

---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.AudioCurveRendering.BeginCurveFrame(r)end
---@return System.Void
function UnityEditor.AudioCurveRendering.EndCurveFrame()end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.AudioCurveRendering.DrawCurveFrame(r)end
---@param r UnityEngine.Rect
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawCurveBackground(r)end
---@overload fun(r:UnityEngine.Rect, eval:UnityEditor.AudioCurveRendering.AudioCurveEvaluator, curveColor:UnityEngine.Color):System.Void
---@param r UnityEngine.Rect
---@param eval UnityEditor.AudioCurveRendering.AudioCurveAndColorEvaluator
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawFilledCurve(r, eval)end
---@param r UnityEngine.Rect
---@param eval UnityEditor.AudioCurveRendering.AudioMinMaxCurveAndColorEvaluator
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawMinMaxFilledCurve(r, eval)end
---@param r UnityEngine.Rect
---@param eval UnityEditor.AudioCurveRendering.AudioCurveAndColorEvaluator
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawSymmetricFilledCurve(r, eval)end
---@param r UnityEngine.Rect
---@param eval UnityEditor.AudioCurveRendering.AudioCurveEvaluator
---@param curveColor UnityEngine.Color
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawCurve(r, eval, curveColor)end
---@param r UnityEngine.Rect
---@param c1 UnityEngine.Color
---@param c2 UnityEngine.Color
---@param blend System.Single
---@param horizontal System.Boolean
---@return System.Void
function UnityEditor.AudioCurveRendering.DrawGradientRect(r, c1, c2, blend, horizontal)end
---@class UnityEditor.IAudioEffectPlugin : System.Object
UnityEditor.IAudioEffectPlugin = {}
---@type UnityEditor.IAudioEffectPlugin
CS.UnityEditor.IAudioEffectPlugin = UnityEditor.IAudioEffectPlugin

---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEditor.IAudioEffectPlugin:SetFloatParameter(name, value)end
---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEditor.IAudioEffectPlugin:GetFloatParameter(name, value)end
---@param name System.String
---@param minRange System.Single
---@param maxRange System.Single
---@param defaultValue System.Single
---@return System.Boolean
function UnityEditor.IAudioEffectPlugin:GetFloatParameterInfo(name, minRange, maxRange, defaultValue)end
---@param name System.String
---@param data System.Single[]
---@param numsamples System.Int32
---@return System.Boolean
function UnityEditor.IAudioEffectPlugin:GetFloatBuffer(name, data, numsamples)end
---@return System.Int32
function UnityEditor.IAudioEffectPlugin:GetSampleRate()end
---@return System.Boolean
function UnityEditor.IAudioEffectPlugin:IsPluginEditableAndEnabled()end
---@class UnityEditor.IAudioEffectPluginGUI : System.Object
---@field public Name System.String @  getter
---@field public Description System.String @  getter
---@field public Vendor System.String @  getter
UnityEditor.IAudioEffectPluginGUI = {}
---@type UnityEditor.IAudioEffectPluginGUI
CS.UnityEditor.IAudioEffectPluginGUI = UnityEditor.IAudioEffectPluginGUI

---@param plugin UnityEditor.IAudioEffectPlugin
---@return System.Boolean
function UnityEditor.IAudioEffectPluginGUI:OnGUI(plugin)end
---@class UnityEditor.GameViewSizeGroupType : System.Enum
UnityEditor.GameViewSizeGroupType = {}
---@type UnityEditor.GameViewSizeGroupType
CS.UnityEditor.GameViewSizeGroupType = UnityEditor.GameViewSizeGroupType

---@return System.Int32 value:0
UnityEditor.GameViewSizeGroupType.Standalone = 0
---@return System.Int32 value:1
UnityEditor.GameViewSizeGroupType.WebPlayer = 1
---@return System.Int32 value:2
UnityEditor.GameViewSizeGroupType.iOS = 2
---@return System.Int32 value:3
UnityEditor.GameViewSizeGroupType.Android = 3
---@return System.Int32 value:4
UnityEditor.GameViewSizeGroupType.PS3 = 4
---@return System.Int32 value:5
UnityEditor.GameViewSizeGroupType.WiiU = 5
---@return System.Int32 value:6
UnityEditor.GameViewSizeGroupType.Tizen = 6
---@return System.Int32 value:7
UnityEditor.GameViewSizeGroupType.WP8 = 7
---@return System.Int32 value:8
UnityEditor.GameViewSizeGroupType.N3DS = 8
---@return System.Int32 value:9
UnityEditor.GameViewSizeGroupType.HMD = 9

---@class UnityEditor.LightingDataAsset : UnityEngine.Object
UnityEditor.LightingDataAsset = {}
---@type UnityEditor.LightingDataAsset
CS.UnityEditor.LightingDataAsset = UnityEditor.LightingDataAsset

---@class UnityEditor.LightmapEditorSettings : System.Object
---@field public lightmapper UnityEditor.LightmapEditorSettings.Lightmapper @static setter getter
---@field public lightmapsMode UnityEngine.LightmapsMode @static setter getter
---@field public mixedBakeMode UnityEngine.MixedLightingMode @static setter getter
---@field public sampling UnityEditor.LightmapEditorSettings.Sampling @static setter getter
---@field public directSampleCount System.Int32 @static setter getter
---@field public indirectSampleCount System.Int32 @static setter getter
---@field public bounces System.Int32 @static setter getter
---@field public prioritizeView System.Boolean @static setter getter
---@field public filteringMode UnityEditor.LightmapEditorSettings.FilterMode @static setter getter
---@field public filterTypeDirect UnityEditor.LightmapEditorSettings.FilterType @static setter getter
---@field public filterTypeIndirect UnityEditor.LightmapEditorSettings.FilterType @static setter getter
---@field public filterTypeAO UnityEditor.LightmapEditorSettings.FilterType @static setter getter
---@field public filteringGaussRadiusDirect System.Int32 @static setter getter
---@field public filteringGaussRadiusIndirect System.Int32 @static setter getter
---@field public filteringGaussRadiusAO System.Int32 @static setter getter
---@field public filteringAtrousPositionSigmaDirect System.Single @static setter getter
---@field public filteringAtrousPositionSigmaIndirect System.Single @static setter getter
---@field public filteringAtrousPositionSigmaAO System.Single @static setter getter
---@field public maxAtlasSize System.Int32 @static setter getter
---@field public realtimeResolution System.Single @static setter getter
---@field public bakeResolution System.Single @static setter getter
---@field public textureCompression System.Boolean @static setter getter
---@field public reflectionCubemapCompression UnityEngine.Rendering.ReflectionCubemapCompression @static setter getter
---@field public enableAmbientOcclusion System.Boolean @static setter getter
---@field public aoMaxDistance System.Single @static setter getter
---@field public aoExponentIndirect System.Single @static setter getter
---@field public aoExponentDirect System.Single @static setter getter
---@field public padding System.Int32 @static setter getter
---@field public aoContrast System.Single @static setter getter
---@field public aoAmount System.Single @static setter getter
---@field public lockAtlas System.Boolean @static setter getter
---@field public skyLightColor UnityEngine.Color @static setter getter
---@field public skyLightIntensity System.Single @static setter getter
---@field public quality UnityEditor.LightmapBakeQuality @static setter getter
---@field public bounceBoost System.Single @static setter getter
---@field public finalGatherRays System.Int32 @static setter getter
---@field public finalGatherContrastThreshold System.Single @static setter getter
---@field public finalGatherGradientThreshold System.Single @static setter getter
---@field public finalGatherInterpolationPoints System.Int32 @static setter getter
---@field public lastUsedResolution System.Single @static setter getter
---@field public bounceIntensity System.Single @static setter getter
---@field public resolution System.Single @static setter getter
---@field public giBakeBackend UnityEditor.LightmapEditorSettings.GIBakeBackend @static setter getter
---@field public giPathTracerSampling UnityEditor.LightmapEditorSettings.PathTracerSampling @static setter getter
---@field public giPathTracerFilter UnityEditor.LightmapEditorSettings.PathTracerFilter @static setter getter
---@field public maxAtlasWidth System.Int32 @static setter getter
---@field public maxAtlasHeight System.Int32 @static setter getter
UnityEditor.LightmapEditorSettings = {}
---@type UnityEditor.LightmapEditorSettings
CS.UnityEditor.LightmapEditorSettings = UnityEditor.LightmapEditorSettings

---@class UnityEditor.LightmapEditorSettings.Lightmapper : System.Enum
UnityEditor.LightmapEditorSettings.Lightmapper = {}
---@type UnityEditor.LightmapEditorSettings.Lightmapper
CS.UnityEditor.LightmapEditorSettings.Lightmapper = UnityEditor.LightmapEditorSettings.Lightmapper

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.Lightmapper.Radiosity = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.Lightmapper.PathTracer = 1
---@return System.Int32 value:2
UnityEditor.LightmapEditorSettings.Lightmapper.ProgressiveGPU = 2

---@class UnityEditor.LightmapEditorSettings.Sampling : System.Enum
UnityEditor.LightmapEditorSettings.Sampling = {}
---@type UnityEditor.LightmapEditorSettings.Sampling
CS.UnityEditor.LightmapEditorSettings.Sampling = UnityEditor.LightmapEditorSettings.Sampling

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.Sampling.Auto = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.Sampling.Fixed = 1

---@class UnityEditor.LightmapEditorSettings.FilterMode : System.Enum
UnityEditor.LightmapEditorSettings.FilterMode = {}
---@type UnityEditor.LightmapEditorSettings.FilterMode
CS.UnityEditor.LightmapEditorSettings.FilterMode = UnityEditor.LightmapEditorSettings.FilterMode

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.FilterMode.None = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.FilterMode.Auto = 1
---@return System.Int32 value:2
UnityEditor.LightmapEditorSettings.FilterMode.Advanced = 2

---@class UnityEditor.LightmapEditorSettings.FilterType : System.Enum
UnityEditor.LightmapEditorSettings.FilterType = {}
---@type UnityEditor.LightmapEditorSettings.FilterType
CS.UnityEditor.LightmapEditorSettings.FilterType = UnityEditor.LightmapEditorSettings.FilterType

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.FilterType.Gaussian = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.FilterType.ATrous = 1
---@return System.Int32 value:2
UnityEditor.LightmapEditorSettings.FilterType.None = 2

---@class UnityEditor.LightmapEditorSettings.GIBakeBackend : System.Enum
UnityEditor.LightmapEditorSettings.GIBakeBackend = {}
---@type UnityEditor.LightmapEditorSettings.GIBakeBackend
CS.UnityEditor.LightmapEditorSettings.GIBakeBackend = UnityEditor.LightmapEditorSettings.GIBakeBackend

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.GIBakeBackend.Radiosity = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.GIBakeBackend.PathTracer = 1

---@class UnityEditor.LightmapEditorSettings.PathTracerSampling : System.Enum
UnityEditor.LightmapEditorSettings.PathTracerSampling = {}
---@type UnityEditor.LightmapEditorSettings.PathTracerSampling
CS.UnityEditor.LightmapEditorSettings.PathTracerSampling = UnityEditor.LightmapEditorSettings.PathTracerSampling

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.PathTracerSampling.Auto = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.PathTracerSampling.Fixed = 1

---@class UnityEditor.LightmapEditorSettings.PathTracerFilter : System.Enum
UnityEditor.LightmapEditorSettings.PathTracerFilter = {}
---@type UnityEditor.LightmapEditorSettings.PathTracerFilter
CS.UnityEditor.LightmapEditorSettings.PathTracerFilter = UnityEditor.LightmapEditorSettings.PathTracerFilter

---@return System.Int32 value:0
UnityEditor.LightmapEditorSettings.PathTracerFilter.Gaussian = 0
---@return System.Int32 value:1
UnityEditor.LightmapEditorSettings.PathTracerFilter.ATrous = 1

---@class UnityEditor.LightmapBakeQuality : System.Enum
UnityEditor.LightmapBakeQuality = {}
---@type UnityEditor.LightmapBakeQuality
CS.UnityEditor.LightmapBakeQuality = UnityEditor.LightmapBakeQuality

---@return System.Int32 value:0
UnityEditor.LightmapBakeQuality.High = 0
---@return System.Int32 value:1
UnityEditor.LightmapBakeQuality.Low = 1

---@class UnityEditor.LightmapParameters : UnityEngine.Object
---@field public resolution System.Single @ setter getter
---@field public clusterResolution System.Single @ setter getter
---@field public irradianceBudget System.Int32 @ setter getter
---@field public irradianceQuality System.Int32 @ setter getter
---@field public backFaceTolerance System.Single @ setter getter
---@field public modellingTolerance System.Single @ setter getter
---@field public stitchEdges System.Boolean @ setter getter
---@field public systemTag System.Int32 @ setter getter
---@field public isTransparent System.Boolean @ setter getter
---@field public AOQuality System.Int32 @ setter getter
---@field public AOAntiAliasingSamples System.Int32 @ setter getter
---@field public blurRadius System.Int32 @ setter getter
---@field public directLightQuality System.Int32 @ setter getter
---@field public antiAliasingSamples System.Int32 @ setter getter
---@field public bakedLightmapTag System.Int32 @ setter getter
---@field public edgeStitching System.Single @ setter getter
UnityEditor.LightmapParameters = {}
---@type UnityEditor.LightmapParameters
CS.UnityEditor.LightmapParameters = UnityEditor.LightmapParameters

---@class UnityEditor.Lightmapping : System.Object
---@field public giWorkflowMode UnityEditor.Lightmapping.GIWorkflowMode @static setter getter
---@field public realtimeGI System.Boolean @static setter getter
---@field public bakedGI System.Boolean @static setter getter
---@field public indirectOutputScale System.Single @static setter getter
---@field public bounceBoost System.Single @static setter getter
---@field public isRunning System.Boolean @static  getter
---@field public buildProgress System.Single @static  getter
---@field public lightingDataAsset UnityEditor.LightingDataAsset @static setter getter
---@field public lightmapSnapshot UnityEditor.LightmapSnapshot @static setter getter
---@field public completed UnityEditor.Lightmapping.OnCompletedFunction
UnityEditor.Lightmapping = {}
---@type UnityEditor.Lightmapping
CS.UnityEditor.Lightmapping = UnityEditor.Lightmapping

---@return System.Void
function UnityEditor.Lightmapping.ClearDiskCache()end
---@return System.Boolean
function UnityEditor.Lightmapping.BakeAsync()end
---@return System.Boolean
function UnityEditor.Lightmapping.Bake()end
---@return System.Void
function UnityEditor.Lightmapping.Cancel()end
---@return System.Void
function UnityEditor.Lightmapping.ForceStop()end
---@param value UnityEditor.Lightmapping.OnStartedFunction
---@return System.Void
function UnityEditor.Lightmapping.add_started(value)end
---@param value UnityEditor.Lightmapping.OnStartedFunction
---@return System.Void
function UnityEditor.Lightmapping.remove_started(value)end
---@return System.Void
function UnityEditor.Lightmapping.Clear()end
---@return System.Void
function UnityEditor.Lightmapping.ClearLightingDataAsset()end
---@param positions UnityEngine.Vector3[]
---@param outIndices System.Int32[]
---@param outPositions UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.Lightmapping.Tetrahedralize(positions, outIndices, outPositions)end
---@param probe UnityEngine.ReflectionProbe
---@param path System.String
---@return System.Boolean
function UnityEditor.Lightmapping.BakeReflectionProbe(probe, path)end
---@param terrain UnityEngine.Terrain
---@param numChunksX System.Int32
---@param numChunksY System.Int32
---@return System.Void
function UnityEditor.Lightmapping.GetTerrainGIChunks(terrain, numChunksX, numChunksY)end
---@param paths System.String[]
---@return System.Void
function UnityEditor.Lightmapping.BakeMultipleScenes(paths)end
---@return System.Boolean
function UnityEditor.Lightmapping.BakeSelectedAsync()end
---@return System.Boolean
function UnityEditor.Lightmapping.BakeSelected()end
---@return System.Boolean
function UnityEditor.Lightmapping.BakeLightProbesOnlyAsync()end
---@return System.Boolean
function UnityEditor.Lightmapping.BakeLightProbesOnly()end
---@class UnityEditor.Lightmapping.GIWorkflowMode : System.Enum
UnityEditor.Lightmapping.GIWorkflowMode = {}
---@type UnityEditor.Lightmapping.GIWorkflowMode
CS.UnityEditor.Lightmapping.GIWorkflowMode = UnityEditor.Lightmapping.GIWorkflowMode

---@return System.Int32 value:0
UnityEditor.Lightmapping.GIWorkflowMode.Iterative = 0
---@return System.Int32 value:1
UnityEditor.Lightmapping.GIWorkflowMode.OnDemand = 1
---@return System.Int32 value:2
UnityEditor.Lightmapping.GIWorkflowMode.Legacy = 2

---@class UnityEditor.LightmapSnapshot : UnityEngine.Object
UnityEditor.LightmapSnapshot = {}
---@type UnityEditor.LightmapSnapshot
CS.UnityEditor.LightmapSnapshot = UnityEditor.LightmapSnapshot

---@class UnityEditor.EditorMaterialUtility : System.Object
UnityEditor.EditorMaterialUtility = {}
---@type UnityEditor.EditorMaterialUtility
CS.UnityEditor.EditorMaterialUtility = UnityEditor.EditorMaterialUtility

---@param material UnityEngine.Material
---@param overrideSetTextures System.Boolean
---@return System.Void
function UnityEditor.EditorMaterialUtility.ResetDefaultTextures(material, overrideSetTextures)end
---@param material UnityEngine.Material
---@return System.Boolean
function UnityEditor.EditorMaterialUtility.IsBackgroundMaterial(material)end
---@param shader UnityEngine.Shader
---@param name System.String[]
---@param textures UnityEngine.Texture[]
---@return System.Void
function UnityEditor.EditorMaterialUtility.SetShaderDefaults(shader, name, textures)end
---@param shader UnityEngine.Shader
---@param name System.String[]
---@param textures UnityEngine.Texture[]
---@return System.Void
function UnityEditor.EditorMaterialUtility.SetShaderNonModifiableDefaults(shader, name, textures)end
---@class UnityEditor.ColorPickerHDRConfig : System.Object
---@field public minBrightness System.Single
---@field public maxBrightness System.Single
---@field public minExposureValue System.Single
---@field public maxExposureValue System.Single
UnityEditor.ColorPickerHDRConfig = {}
---@type UnityEditor.ColorPickerHDRConfig
CS.UnityEditor.ColorPickerHDRConfig = UnityEditor.ColorPickerHDRConfig

---@class UnityEditor.EditorStyles : System.Object
---@field public label UnityEngine.GUIStyle @static  getter
---@field public miniLabel UnityEngine.GUIStyle @static  getter
---@field public largeLabel UnityEngine.GUIStyle @static  getter
---@field public boldLabel UnityEngine.GUIStyle @static  getter
---@field public miniBoldLabel UnityEngine.GUIStyle @static  getter
---@field public centeredGreyMiniLabel UnityEngine.GUIStyle @static  getter
---@field public wordWrappedMiniLabel UnityEngine.GUIStyle @static  getter
---@field public wordWrappedLabel UnityEngine.GUIStyle @static  getter
---@field public whiteLabel UnityEngine.GUIStyle @static  getter
---@field public whiteMiniLabel UnityEngine.GUIStyle @static  getter
---@field public whiteLargeLabel UnityEngine.GUIStyle @static  getter
---@field public whiteBoldLabel UnityEngine.GUIStyle @static  getter
---@field public radioButton UnityEngine.GUIStyle @static  getter
---@field public miniButton UnityEngine.GUIStyle @static  getter
---@field public miniButtonLeft UnityEngine.GUIStyle @static  getter
---@field public miniButtonMid UnityEngine.GUIStyle @static  getter
---@field public miniButtonRight UnityEngine.GUIStyle @static  getter
---@field public miniPullDown UnityEngine.GUIStyle @static  getter
---@field public textField UnityEngine.GUIStyle @static  getter
---@field public textArea UnityEngine.GUIStyle @static  getter
---@field public miniTextField UnityEngine.GUIStyle @static  getter
---@field public numberField UnityEngine.GUIStyle @static  getter
---@field public popup UnityEngine.GUIStyle @static  getter
---@field public structHeadingLabel UnityEngine.GUIStyle @static  getter
---@field public objectField UnityEngine.GUIStyle @static  getter
---@field public objectFieldThumb UnityEngine.GUIStyle @static  getter
---@field public objectFieldMiniThumb UnityEngine.GUIStyle @static  getter
---@field public colorField UnityEngine.GUIStyle @static  getter
---@field public layerMaskField UnityEngine.GUIStyle @static  getter
---@field public toggle UnityEngine.GUIStyle @static  getter
---@field public foldout UnityEngine.GUIStyle @static  getter
---@field public foldoutPreDrop UnityEngine.GUIStyle @static  getter
---@field public toggleGroup UnityEngine.GUIStyle @static  getter
---@field public standardFont UnityEngine.Font @static  getter
---@field public boldFont UnityEngine.Font @static  getter
---@field public miniFont UnityEngine.Font @static  getter
---@field public miniBoldFont UnityEngine.Font @static  getter
---@field public toolbar UnityEngine.GUIStyle @static  getter
---@field public toolbarButton UnityEngine.GUIStyle @static  getter
---@field public toolbarPopup UnityEngine.GUIStyle @static  getter
---@field public toolbarDropDown UnityEngine.GUIStyle @static  getter
---@field public toolbarTextField UnityEngine.GUIStyle @static  getter
---@field public inspectorDefaultMargins UnityEngine.GUIStyle @static  getter
---@field public inspectorFullWidthMargins UnityEngine.GUIStyle @static  getter
---@field public helpBox UnityEngine.GUIStyle @static  getter
UnityEditor.EditorStyles = {}
---@type UnityEditor.EditorStyles
CS.UnityEditor.EditorStyles = UnityEditor.EditorStyles

---@class UnityEditor.GenericMenu : System.Object
---@field public allowDuplicateNames System.Boolean @ setter getter
UnityEditor.GenericMenu = {}
---@type UnityEditor.GenericMenu
CS.UnityEditor.GenericMenu = UnityEditor.GenericMenu

---@overload fun(content:UnityEngine.GUIContent, on:System.Boolean, func:UnityEditor.GenericMenu.MenuFunction2, userData:System.Object):System.Void
---@param content UnityEngine.GUIContent
---@param on System.Boolean
---@param func UnityEditor.GenericMenu.MenuFunction
---@return System.Void
function UnityEditor.GenericMenu:AddItem(content, on, func)end
---@overload fun(content:UnityEngine.GUIContent, on:System.Boolean):System.Void
---@param content UnityEngine.GUIContent
---@return System.Void
function UnityEditor.GenericMenu:AddDisabledItem(content)end
---@param path System.String
---@return System.Void
function UnityEditor.GenericMenu:AddSeparator(path)end
---@return System.Int32
function UnityEditor.GenericMenu:GetItemCount()end
---@return System.Void
function UnityEditor.GenericMenu:ShowAsContext()end
---@param position UnityEngine.Rect
---@return System.Void
function UnityEditor.GenericMenu:DropDown(position)end
---@class UnityEditor.PopupWindowContent : System.Object
---@field public editorWindow UnityEditor.EditorWindow @ setter getter
UnityEditor.PopupWindowContent = {}
---@type UnityEditor.PopupWindowContent
CS.UnityEditor.PopupWindowContent = UnityEditor.PopupWindowContent

---@param rect UnityEngine.Rect
---@return System.Void
function UnityEditor.PopupWindowContent:OnGUI(rect)end
---@return UnityEngine.Vector2
function UnityEditor.PopupWindowContent:GetWindowSize()end
---@return System.Void
function UnityEditor.PopupWindowContent:OnOpen()end
---@return System.Void
function UnityEditor.PopupWindowContent:OnClose()end
---@class UnityEditor.PopupWindow : UnityEditor.EditorWindow
UnityEditor.PopupWindow = {}
---@type UnityEditor.PopupWindow
CS.UnityEditor.PopupWindow = UnityEditor.PopupWindow

---@param activatorRect UnityEngine.Rect
---@param windowContent UnityEditor.PopupWindowContent
---@return System.Void
function UnityEditor.PopupWindow.Show(activatorRect, windowContent)end
---@class UnityEditor.ViewTool : System.Enum
UnityEditor.ViewTool = {}
---@type UnityEditor.ViewTool
CS.UnityEditor.ViewTool = UnityEditor.ViewTool

---@return System.Int32 value:0
UnityEditor.ViewTool.Orbit = 0
---@return System.Int32 value:1
UnityEditor.ViewTool.Pan = 1
---@return System.Int32 value:2
UnityEditor.ViewTool.Zoom = 2
---@return System.Int32 value:3
UnityEditor.ViewTool.FPS = 3

---@class UnityEditor.PivotMode : System.Enum
UnityEditor.PivotMode = {}
---@type UnityEditor.PivotMode
CS.UnityEditor.PivotMode = UnityEditor.PivotMode

---@return System.Int32 value:0
UnityEditor.PivotMode.Center = 0
---@return System.Int32 value:1
UnityEditor.PivotMode.Pivot = 1

---@class UnityEditor.PivotRotation : System.Enum
UnityEditor.PivotRotation = {}
---@type UnityEditor.PivotRotation
CS.UnityEditor.PivotRotation = UnityEditor.PivotRotation

---@return System.Int32 value:0
UnityEditor.PivotRotation.Local = 0
---@return System.Int32 value:1
UnityEditor.PivotRotation.Global = 1

---@class UnityEditor.Tool : System.Enum
UnityEditor.Tool = {}
---@type UnityEditor.Tool
CS.UnityEditor.Tool = UnityEditor.Tool

---@return System.Int32 value:0
UnityEditor.Tool.View = 0
---@return System.Int32 value:1
UnityEditor.Tool.Move = 1
---@return System.Int32 value:2
UnityEditor.Tool.Rotate = 2
---@return System.Int32 value:3
UnityEditor.Tool.Scale = 3
---@return System.Int32 value:4
UnityEditor.Tool.Rect = 4
---@return System.Int32 value:5
UnityEditor.Tool.Transform = 5

---@class UnityEditor.Tools : UnityEngine.ScriptableObject
---@field public current UnityEditor.Tool @static setter getter
---@field public viewTool UnityEditor.ViewTool @static setter getter
---@field public handlePosition UnityEngine.Vector3 @static  getter
---@field public handleRect UnityEngine.Rect @static  getter
---@field public handleRectRotation UnityEngine.Quaternion @static  getter
---@field public pivotMode UnityEditor.PivotMode @static setter getter
---@field public rectBlueprintMode System.Boolean @static setter getter
---@field public handleRotation UnityEngine.Quaternion @static setter getter
---@field public pivotRotation UnityEditor.PivotRotation @static setter getter
---@field public hidden System.Boolean @static setter getter
---@field public visibleLayers System.Int32 @static setter getter
---@field public lockedLayers System.Int32 @static setter getter
UnityEditor.Tools = {}
---@type UnityEditor.Tools
CS.UnityEditor.Tools = UnityEditor.Tools

---@class UnityEditor.TextureImporterCubemapConvolution : System.Enum
UnityEditor.TextureImporterCubemapConvolution = {}
---@type UnityEditor.TextureImporterCubemapConvolution
CS.UnityEditor.TextureImporterCubemapConvolution = UnityEditor.TextureImporterCubemapConvolution

---@return System.Int32 value:0
UnityEditor.TextureImporterCubemapConvolution.None = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterCubemapConvolution.Specular = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterCubemapConvolution.Diffuse = 2

---@class UnityEditor.TextureImporterRGBMMode : System.Enum
UnityEditor.TextureImporterRGBMMode = {}
---@type UnityEditor.TextureImporterRGBMMode
CS.UnityEditor.TextureImporterRGBMMode = UnityEditor.TextureImporterRGBMMode

---@return System.Int32 value:0
UnityEditor.TextureImporterRGBMMode.Auto = 0
---@return System.Int32 value:1
UnityEditor.TextureImporterRGBMMode.On = 1
---@return System.Int32 value:2
UnityEditor.TextureImporterRGBMMode.Off = 2
---@return System.Int32 value:3
UnityEditor.TextureImporterRGBMMode.Encoded = 3

---@class UnityEditor.CameraEditor : UnityEditor.Editor
UnityEditor.CameraEditor = {}
---@type UnityEditor.CameraEditor
CS.UnityEditor.CameraEditor = UnityEditor.CameraEditor

---@return System.Void
function UnityEditor.CameraEditor:OnEnable()end
---@return System.Void
function UnityEditor.CameraEditor:OnDestroy()end
---@return System.Void
function UnityEditor.CameraEditor:OnInspectorGUI()end
---@param target UnityEngine.Object
---@param sceneView UnityEditor.SceneView
---@return System.Void
function UnityEditor.CameraEditor:OnOverlayGUI(target, sceneView)end
---@return System.Void
function UnityEditor.CameraEditor:OnSceneGUI()end
---@class UnityEditor.CameraEditor.Settings : System.Object
---@field public clearFlags UnityEditor.SerializedProperty @ setter getter
---@field public backgroundColor UnityEditor.SerializedProperty @ setter getter
---@field public normalizedViewPortRect UnityEditor.SerializedProperty @ setter getter
---@field public sensorSize UnityEditor.SerializedProperty @ setter getter
---@field public lensShift UnityEditor.SerializedProperty @ setter getter
---@field public focalLength UnityEditor.SerializedProperty @ setter getter
---@field public gateFit UnityEditor.SerializedProperty @ setter getter
---@field public fieldOfView UnityEditor.SerializedProperty @ setter getter
---@field public orthographic UnityEditor.SerializedProperty @ setter getter
---@field public orthographicSize UnityEditor.SerializedProperty @ setter getter
---@field public depth UnityEditor.SerializedProperty @ setter getter
---@field public cullingMask UnityEditor.SerializedProperty @ setter getter
---@field public renderingPath UnityEditor.SerializedProperty @ setter getter
---@field public occlusionCulling UnityEditor.SerializedProperty @ setter getter
---@field public targetTexture UnityEditor.SerializedProperty @ setter getter
---@field public HDR UnityEditor.SerializedProperty @ setter getter
---@field public allowMSAA UnityEditor.SerializedProperty @ setter getter
---@field public allowDynamicResolution UnityEditor.SerializedProperty @ setter getter
---@field public stereoConvergence UnityEditor.SerializedProperty @ setter getter
---@field public stereoSeparation UnityEditor.SerializedProperty @ setter getter
---@field public nearClippingPlane UnityEditor.SerializedProperty @ setter getter
---@field public farClippingPlane UnityEditor.SerializedProperty @ setter getter
---@field public targetDisplay UnityEditor.SerializedProperty @ setter getter
---@field public targetEye UnityEditor.SerializedProperty @ setter getter
UnityEditor.CameraEditor.Settings = {}
---@type UnityEditor.CameraEditor.Settings
CS.UnityEditor.CameraEditor.Settings = UnityEditor.CameraEditor.Settings

---@return System.Void
function UnityEditor.CameraEditor.Settings:OnEnable()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:Update()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:ApplyModifiedProperties()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawClearFlags()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawBackgroundColor()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawCullingMask()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawProjection()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawClippingPlanes()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawNormalizedViewPort()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawDepth()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawRenderingPath()end
---@param deferred System.Boolean
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawTargetTexture(deferred)end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawOcclusionCulling()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawHDR()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawMSAA()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawDynamicResolution()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawVR()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawMultiDisplay()end
---@return System.Void
function UnityEditor.CameraEditor.Settings:DrawTargetEye()end
---@class UnityEditor.CameraEditorUtils : System.Object
---@field public GameViewAspectRatio System.Single @static  getter
UnityEditor.CameraEditorUtils = {}
---@type UnityEditor.CameraEditorUtils
CS.UnityEditor.CameraEditorUtils = UnityEditor.CameraEditorUtils

---@param c UnityEngine.Camera
---@param cameraEditorTargetIndex System.Int32
---@return System.Void
function UnityEditor.CameraEditorUtils.HandleFrustum(c, cameraEditorTargetIndex)end
---@param camera UnityEngine.Camera
---@return System.Void
function UnityEditor.CameraEditorUtils.DrawFrustumGizmo(camera)end
---@param camera UnityEngine.Camera
---@param near UnityEngine.Vector3[]
---@param far UnityEngine.Vector3[]
---@param frustumAspect System.Single
---@return System.Boolean
function UnityEditor.CameraEditorUtils.TryGetSensorGateFrustum(camera, near, far, frustumAspect)end
---@param camera UnityEngine.Camera
---@param near UnityEngine.Vector3[]
---@param far UnityEngine.Vector3[]
---@param frustumAspect System.Single
---@return System.Boolean
function UnityEditor.CameraEditorUtils.TryGetFrustum(camera, near, far, frustumAspect)end
---@param normalizedViewPortRect UnityEngine.Rect
---@return System.Boolean
function UnityEditor.CameraEditorUtils.IsViewportRectValidToRender(normalizedViewPortRect)end
---@param camera UnityEngine.Camera
---@return System.Single
function UnityEditor.CameraEditorUtils.GetFrustumAspectRatio(camera)end
---@param clipToWorld UnityEngine.Matrix4x4
---@param viewPositionWS UnityEngine.Vector3
---@param positionCS UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.CameraEditorUtils.PerspectiveClipToWorld(clipToWorld, viewPositionWS, positionCS)end
---@param clipToWorld UnityEngine.Matrix4x4
---@param viewPosition UnityEngine.Vector3
---@param distance System.Single
---@param points UnityEngine.Vector3[]
---@return System.Void
function UnityEditor.CameraEditorUtils.GetFrustumPlaneAt(clipToWorld, viewPosition, distance, points)end
---@class UnityEditor.CustomEditor : System.Attribute
---@field public isFallback System.Boolean @ setter getter
UnityEditor.CustomEditor = {}
---@type UnityEditor.CustomEditor
CS.UnityEditor.CustomEditor = UnityEditor.CustomEditor

---@class UnityEditor.CustomPreviewAttribute : System.Attribute
UnityEditor.CustomPreviewAttribute = {}
---@type UnityEditor.CustomPreviewAttribute
CS.UnityEditor.CustomPreviewAttribute = UnityEditor.CustomPreviewAttribute

---@class UnityEditor.ObjectPreview : System.Object
---@field public target UnityEngine.Object @  getter
UnityEditor.ObjectPreview = {}
---@type UnityEditor.ObjectPreview
CS.UnityEditor.ObjectPreview = UnityEditor.ObjectPreview

---@param targets UnityEngine.Object[]
---@return System.Void
function UnityEditor.ObjectPreview:Initialize(targets)end
---@return System.Boolean
function UnityEditor.ObjectPreview:MoveNextTarget()end
---@return System.Void
function UnityEditor.ObjectPreview:ResetTarget()end
---@return System.Boolean
function UnityEditor.ObjectPreview:HasPreviewGUI()end
---@return UnityEngine.GUIContent
function UnityEditor.ObjectPreview:GetPreviewTitle()end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.ObjectPreview:OnPreviewGUI(r, background)end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.ObjectPreview:OnInteractivePreviewGUI(r, background)end
---@return System.Void
function UnityEditor.ObjectPreview:OnPreviewSettings()end
---@return System.String
function UnityEditor.ObjectPreview:GetInfoString()end
---@param previewArea UnityEngine.Rect
---@return System.Void
function UnityEditor.ObjectPreview:DrawPreview(previewArea)end
---@return System.Void
function UnityEditor.ObjectPreview:ReloadPreviewInstances()end
---@class UnityEditor.CustomEditorForRenderPipelineAttribute : UnityEditor.CustomEditor
UnityEditor.CustomEditorForRenderPipelineAttribute = {}
---@type UnityEditor.CustomEditorForRenderPipelineAttribute
CS.UnityEditor.CustomEditorForRenderPipelineAttribute = UnityEditor.CustomEditorForRenderPipelineAttribute

---@class UnityEditor.CanEditMultipleObjects : System.Attribute
UnityEditor.CanEditMultipleObjects = {}
---@type UnityEditor.CanEditMultipleObjects
CS.UnityEditor.CanEditMultipleObjects = UnityEditor.CanEditMultipleObjects

---@class UnityEditor.Editor : UnityEngine.ScriptableObject
---@field public target UnityEngine.Object @ setter getter
---@field public targets UnityEngine.Object[] @  getter
---@field public serializedObject UnityEditor.SerializedObject @  getter
UnityEditor.Editor = {}
---@type UnityEditor.Editor
CS.UnityEditor.Editor = UnityEditor.Editor

---@overload fun(targetObjects:UnityEngine.Object[], context:UnityEngine.Object, editorType:System.Type):UnityEditor.Editor
---@param targetObjects UnityEngine.Object[]
---@param context UnityEngine.Object
---@return UnityEditor.Editor
function UnityEditor.Editor.CreateEditorWithContext(targetObjects, context)end
---@overload fun(targetObjects:UnityEngine.Object[], context:UnityEngine.Object, editorType:System.Type, previousEditor:UnityEditor.Editor):System.Void
---@param targetObject UnityEngine.Object
---@param context UnityEngine.Object
---@param editorType System.Type
---@param previousEditor UnityEditor.Editor
---@return System.Void
function UnityEditor.Editor.CreateCachedEditorWithContext(targetObject, context, editorType, previousEditor)end
---@overload fun(targetObjects:UnityEngine.Object[], editorType:System.Type, previousEditor:UnityEditor.Editor):System.Void
---@param targetObject UnityEngine.Object
---@param editorType System.Type
---@param previousEditor UnityEditor.Editor
---@return System.Void
function UnityEditor.Editor.CreateCachedEditor(targetObject, editorType, previousEditor)end
---@overload fun(targetObjects:UnityEngine.Object[]):UnityEditor.Editor
---@overload fun(targetObject:UnityEngine.Object, editorType:System.Type):UnityEditor.Editor
---@overload fun(targetObjects:UnityEngine.Object[], editorType:System.Type):UnityEditor.Editor
---@param targetObject UnityEngine.Object
---@return UnityEditor.Editor
function UnityEditor.Editor.CreateEditor(targetObject)end
---@return System.Boolean
function UnityEditor.Editor:DrawDefaultInspector()end
---@return System.Void
function UnityEditor.Editor:Repaint()end
---@return System.Void
function UnityEditor.Editor:OnInspectorGUI()end
---@return System.Boolean
function UnityEditor.Editor:RequiresConstantRepaint()end
---@param value System.Action
---@return System.Void
function UnityEditor.Editor.add_finishedDefaultHeaderGUI(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.Editor.remove_finishedDefaultHeaderGUI(value)end
---@return System.Void
function UnityEditor.Editor:DrawHeader()end
---@return System.Boolean
function UnityEditor.Editor:HasPreviewGUI()end
---@return UnityEngine.GUIContent
function UnityEditor.Editor:GetPreviewTitle()end
---@param assetPath System.String
---@param subAssets UnityEngine.Object[]
---@param width System.Int32
---@param height System.Int32
---@return UnityEngine.Texture2D
function UnityEditor.Editor:RenderStaticPreview(assetPath, subAssets, width, height)end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.Editor:OnPreviewGUI(r, background)end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.Editor:OnInteractivePreviewGUI(r, background)end
---@return System.Void
function UnityEditor.Editor:OnPreviewSettings()end
---@return System.String
function UnityEditor.Editor:GetInfoString()end
---@param previewArea UnityEngine.Rect
---@return System.Void
function UnityEditor.Editor:DrawPreview(previewArea)end
---@return System.Void
function UnityEditor.Editor:ReloadPreviewInstances()end
---@return System.Boolean
function UnityEditor.Editor:UseDefaultMargins()end
---@param targets UnityEngine.Object[]
---@return System.Void
function UnityEditor.Editor:Initialize(targets)end
---@return System.Boolean
function UnityEditor.Editor:MoveNextTarget()end
---@return System.Void
function UnityEditor.Editor:ResetTarget()end
---@class UnityEditor.LightEditor : UnityEditor.Editor
UnityEditor.LightEditor = {}
---@type UnityEditor.LightEditor
CS.UnityEditor.LightEditor = UnityEditor.LightEditor

---@return System.Void
function UnityEditor.LightEditor:OnInspectorGUI()end
---@class UnityEditor.LightEditor.Settings : System.Object
---@field public lightType UnityEditor.SerializedProperty @ setter getter
---@field public range UnityEditor.SerializedProperty @ setter getter
---@field public spotAngle UnityEditor.SerializedProperty @ setter getter
---@field public cookieSize UnityEditor.SerializedProperty @ setter getter
---@field public color UnityEditor.SerializedProperty @ setter getter
---@field public intensity UnityEditor.SerializedProperty @ setter getter
---@field public bounceIntensity UnityEditor.SerializedProperty @ setter getter
---@field public colorTemperature UnityEditor.SerializedProperty @ setter getter
---@field public useColorTemperature UnityEditor.SerializedProperty @ setter getter
---@field public cookieProp UnityEditor.SerializedProperty @ setter getter
---@field public shadowsType UnityEditor.SerializedProperty @ setter getter
---@field public shadowsStrength UnityEditor.SerializedProperty @ setter getter
---@field public shadowsResolution UnityEditor.SerializedProperty @ setter getter
---@field public shadowsBias UnityEditor.SerializedProperty @ setter getter
---@field public shadowsNormalBias UnityEditor.SerializedProperty @ setter getter
---@field public shadowsNearPlane UnityEditor.SerializedProperty @ setter getter
---@field public halo UnityEditor.SerializedProperty @ setter getter
---@field public flare UnityEditor.SerializedProperty @ setter getter
---@field public renderMode UnityEditor.SerializedProperty @ setter getter
---@field public cullingMask UnityEditor.SerializedProperty @ setter getter
---@field public lightmapping UnityEditor.SerializedProperty @ setter getter
---@field public areaSizeX UnityEditor.SerializedProperty @ setter getter
---@field public areaSizeY UnityEditor.SerializedProperty @ setter getter
---@field public bakedShadowRadiusProp UnityEditor.SerializedProperty @ setter getter
---@field public bakedShadowAngleProp UnityEditor.SerializedProperty @ setter getter
---@field public isRealtime System.Boolean @  getter
---@field public isMixed System.Boolean @  getter
---@field public isCompletelyBaked System.Boolean @  getter
---@field public isBakedOrMixed System.Boolean @  getter
---@field public isAreaLightType System.Boolean @  getter
---@field public light UnityEngine.Light @  getter
---@field public cookie UnityEngine.Texture @  getter
UnityEditor.LightEditor.Settings = {}
---@type UnityEditor.LightEditor.Settings
CS.UnityEditor.LightEditor.Settings = UnityEditor.LightEditor.Settings

---@return System.Void
function UnityEditor.LightEditor.Settings:OnEnable()end
---@return System.Void
function UnityEditor.LightEditor.Settings:OnDestroy()end
---@return System.Void
function UnityEditor.LightEditor.Settings:Update()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawLightType()end
---@param showAreaOptions System.Boolean
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawRange(showAreaOptions)end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawSpotAngle()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawArea()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawColor()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawLightmapping()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawIntensity()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawBounceIntensity()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawCookie()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawCookieSize()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawHalo()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawFlare()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawRenderMode()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawCullingMask()end
---@return System.Void
function UnityEditor.LightEditor.Settings:ApplyModifiedProperties()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawShadowsType()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawBakedShadowRadius()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawBakedShadowAngle()end
---@return System.Void
function UnityEditor.LightEditor.Settings:DrawRuntimeShadow()end
---@class UnityEditor.MaterialEditor : UnityEditor.Editor
---@field public isVisible System.Boolean @  getter
---@field public kMiniTextureFieldLabelIndentLevel System.Int32
UnityEditor.MaterialEditor = {}
---@type UnityEditor.MaterialEditor
CS.UnityEditor.MaterialEditor = UnityEditor.MaterialEditor

---@overload fun(newShader:UnityEngine.Shader, registerUndo:System.Boolean):System.Void
---@param shader UnityEngine.Shader
---@return System.Void
function UnityEditor.MaterialEditor:SetShader(shader)end
---@return System.Void
function UnityEditor.MaterialEditor:Awake()end
---@return System.Void
function UnityEditor.MaterialEditor:OnInspectorGUI()end
---@return System.Void
function UnityEditor.MaterialEditor:PropertiesChanged()end
---@param propertyName System.String
---@param hasMixedValue System.Boolean
---@return System.Single
function UnityEditor.MaterialEditor:GetFloat(propertyName, hasMixedValue)end
---@param propertyName System.String
---@param value System.Single
---@return System.Void
function UnityEditor.MaterialEditor:SetFloat(propertyName, value)end
---@param propertyName System.String
---@param hasMixedValue System.Boolean
---@return UnityEngine.Color
function UnityEditor.MaterialEditor:GetColor(propertyName, hasMixedValue)end
---@param propertyName System.String
---@param value UnityEngine.Color
---@return System.Void
function UnityEditor.MaterialEditor:SetColor(propertyName, value)end
---@param propertyName System.String
---@param hasMixedValue System.Boolean
---@return UnityEngine.Vector4
function UnityEditor.MaterialEditor:GetVector(propertyName, hasMixedValue)end
---@param propertyName System.String
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEditor.MaterialEditor:SetVector(propertyName, value)end
---@param propertyName System.String
---@param hasMixedValue System.Boolean
---@return UnityEngine.Texture
function UnityEditor.MaterialEditor:GetTexture(propertyName, hasMixedValue)end
---@param propertyName System.String
---@param value UnityEngine.Texture
---@return System.Void
function UnityEditor.MaterialEditor:SetTexture(propertyName, value)end
---@param propertyName System.String
---@param hasMixedValueX System.Boolean
---@param hasMixedValueY System.Boolean
---@return UnityEngine.Vector2
function UnityEditor.MaterialEditor:GetTextureScale(propertyName, hasMixedValueX, hasMixedValueY)end
---@param propertyName System.String
---@param hasMixedValueX System.Boolean
---@param hasMixedValueY System.Boolean
---@return UnityEngine.Vector2
function UnityEditor.MaterialEditor:GetTextureOffset(propertyName, hasMixedValueX, hasMixedValueY)end
---@param propertyName System.String
---@param value UnityEngine.Vector2
---@param coord System.Int32
---@return System.Void
function UnityEditor.MaterialEditor:SetTextureScale(propertyName, value, coord)end
---@param propertyName System.String
---@param value UnityEngine.Vector2
---@param coord System.Int32
---@return System.Void
function UnityEditor.MaterialEditor:SetTextureOffset(propertyName, value, coord)end
---@overload fun(propertyName:System.String, label:System.String, v2:System.Single, v3:System.Single):System.Single
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):System.Single
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return System.Single
function UnityEditor.MaterialEditor:RangeProperty(prop, label)end
---@overload fun(propertyName:System.String, label:System.String):System.Single
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):System.Single
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return System.Single
function UnityEditor.MaterialEditor:FloatProperty(prop, label)end
---@overload fun(propertyName:System.String, label:System.String):UnityEngine.Color
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):UnityEngine.Color
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return UnityEngine.Color
function UnityEditor.MaterialEditor:ColorProperty(prop, label)end
---@overload fun(propertyName:System.String, label:System.String):UnityEngine.Vector4
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):UnityEngine.Vector4
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return UnityEngine.Vector4
function UnityEditor.MaterialEditor:VectorProperty(prop, label)end
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.MaterialProperty):System.Single
---@overload fun(position:UnityEngine.Rect, property:UnityEditor.MaterialProperty, partOfTexturePropertyControl:System.Boolean):System.Single
---@param property UnityEditor.MaterialProperty
---@return System.Void
function UnityEditor.MaterialEditor:TextureScaleOffsetProperty(property)end
---@overload fun(prop:UnityEditor.MaterialProperty, label:System.String, scaleOffset:System.Boolean):UnityEngine.Texture
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):UnityEngine.Texture
---@overload fun(propertyName:System.String, label:System.String, texDim:UnityEditor.ShaderUtil.ShaderPropertyTexDim):UnityEngine.Texture
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String, scaleOffset:System.Boolean):UnityEngine.Texture
---@overload fun(propertyName:System.String, label:System.String, texDim:UnityEditor.ShaderUtil.ShaderPropertyTexDim, scaleOffset:System.Boolean):UnityEngine.Texture
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String, tooltip:System.String, scaleOffset:System.Boolean):UnityEngine.Texture
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return UnityEngine.Texture
function UnityEditor.MaterialEditor:TextureProperty(prop, label)end
---@param messageContent UnityEngine.GUIContent
---@param buttonContent UnityEngine.GUIContent
---@return System.Boolean
function UnityEditor.MaterialEditor:HelpBoxWithButton(messageContent, buttonContent)end
---@param prop UnityEditor.MaterialProperty
---@return System.Void
function UnityEditor.MaterialEditor:TextureCompatibilityWarning(prop)end
---@param position UnityEngine.Rect
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@param tooltip System.String
---@return UnityEngine.Texture
function UnityEditor.MaterialEditor:TexturePropertyMiniThumbnail(position, prop, label, tooltip)end
---@param position UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor:GetTexturePropertyCustomArea(position)end
---@overload fun(position:UnityEngine.Rect, scaleOffset:UnityEngine.Vector4, partOfTexturePropertyControl:System.Boolean):UnityEngine.Vector4
---@param position UnityEngine.Rect
---@param scaleOffset UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEditor.MaterialEditor.TextureScaleOffsetProperty(position, scaleOffset)end
---@overload fun(prop:UnityEditor.MaterialProperty, label:System.String):System.Single
---@param prop UnityEditor.MaterialProperty
---@return System.Single
function UnityEditor.MaterialEditor:GetPropertyHeight(prop)end
---@param prop UnityEditor.MaterialProperty
---@return System.Single
function UnityEditor.MaterialEditor.GetDefaultPropertyHeight(prop)end
---@overload fun(totalPosition:UnityEngine.Rect, prop:UnityEditor.MaterialProperty):System.Void
---@param prop UnityEditor.MaterialProperty
---@return System.Void
function UnityEditor.MaterialEditor:BeginAnimatedCheck(prop)end
---@return System.Void
function UnityEditor.MaterialEditor:EndAnimatedCheck()end
---@overload fun(prop:UnityEditor.MaterialProperty, label:System.String):System.Void
---@overload fun(prop:UnityEditor.MaterialProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(prop:UnityEditor.MaterialProperty, label:System.String, labelIndent:System.Int32):System.Void
---@overload fun(prop:UnityEditor.MaterialProperty, label:UnityEngine.GUIContent, labelIndent:System.Int32):System.Void
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):System.Void
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:UnityEngine.GUIContent):System.Void
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String, labelIndent:System.Int32):System.Void
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:UnityEngine.GUIContent, labelIndent:System.Int32):System.Void
---@param shader UnityEngine.Shader
---@param propertyIndex System.Int32
---@return System.Void
function UnityEditor.MaterialEditor:ShaderProperty(shader, propertyIndex)end
---@overload fun(labelIndent:System.Int32):System.Void
---@overload fun(position:UnityEngine.Rect, labelIndent:System.Int32):System.Void
---@return System.Void
function UnityEditor.MaterialEditor:LightmapEmissionProperty()end
---@return System.Boolean
function UnityEditor.MaterialEditor:EmissionEnabledProperty()end
---@overload fun(col:UnityEngine.Color, flags:UnityEngine.MaterialGlobalIlluminationFlags):UnityEngine.MaterialGlobalIlluminationFlags
---@param mat UnityEngine.Material
---@return System.Void
function UnityEditor.MaterialEditor.FixupEmissiveFlag(mat)end
---@param indent System.Int32
---@param enabled System.Boolean
---@return System.Void
function UnityEditor.MaterialEditor:LightmapEmissionFlagsProperty(indent, enabled)end
---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String):System.Void
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@return System.Void
function UnityEditor.MaterialEditor:DefaultShaderProperty(prop, label)end
---@param mats UnityEngine.Object[]
---@return UnityEditor.MaterialProperty[]
function UnityEditor.MaterialEditor.GetMaterialProperties(mats)end
---@overload fun(mats:UnityEngine.Object[], name:System.String):UnityEditor.MaterialProperty
---@param mats UnityEngine.Object[]
---@param propertyIndex System.Int32
---@return UnityEditor.MaterialProperty
function UnityEditor.MaterialEditor.GetMaterialProperty(mats, propertyIndex)end
---@param properties UnityEditor.MaterialProperty[]
---@param isMaterialEditable System.Boolean
---@return UnityEngine.Renderer
function UnityEditor.MaterialEditor.PrepareMaterialPropertiesForAnimationMode(properties, isMaterialEditable)end
---@return System.Void
function UnityEditor.MaterialEditor:SetDefaultGUIWidths()end
---@return System.Boolean
function UnityEditor.MaterialEditor:PropertiesGUI()end
---@param props UnityEditor.MaterialProperty[]
---@return System.Void
function UnityEditor.MaterialEditor:PropertiesDefaultGUI(props)end
---@overload fun(targets:UnityEngine.Object[]):System.Void
---@param material UnityEngine.Material
---@return System.Void
function UnityEditor.MaterialEditor.ApplyMaterialPropertyDrawers(material)end
---@param label System.String
---@return System.Void
function UnityEditor.MaterialEditor:RegisterPropertyChangeUndo(label)end
---@return System.Void
function UnityEditor.MaterialEditor:OnPreviewSettings()end
---@return System.Void
function UnityEditor.MaterialEditor:DefaultPreviewSettingsGUI()end
---@param assetPath System.String
---@param subAssets UnityEngine.Object[]
---@param width System.Int32
---@param height System.Int32
---@return UnityEngine.Texture2D
function UnityEditor.MaterialEditor:RenderStaticPreview(assetPath, subAssets, width, height)end
---@return System.Boolean
function UnityEditor.MaterialEditor:HasPreviewGUI()end
---@return System.Boolean
function UnityEditor.MaterialEditor:RequiresConstantRepaint()end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.MaterialEditor:OnInteractivePreviewGUI(r, background)end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.MaterialEditor:OnPreviewGUI(r, background)end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.MaterialEditor:DefaultPreviewGUI(r, background)end
---@return System.Void
function UnityEditor.MaterialEditor:OnEnable()end
---@return System.Void
function UnityEditor.MaterialEditor:UndoRedoPerformed()end
---@return System.Void
function UnityEditor.MaterialEditor:OnDisable()end
---@overload fun(r:UnityEngine.Rect):System.Void
---@return System.Void
function UnityEditor.MaterialEditor:RenderQueueField()end
---@overload fun(r:UnityEngine.Rect):System.Void
---@return System.Boolean
function UnityEditor.MaterialEditor:EnableInstancingField()end
---@return System.Boolean
function UnityEditor.MaterialEditor:IsInstancingEnabled()end
---@return System.Boolean
function UnityEditor.MaterialEditor:DoubleSidedGIField()end
---@overload fun(label:UnityEngine.GUIContent, textureProp:UnityEditor.MaterialProperty, extraProperty1:UnityEditor.MaterialProperty):UnityEngine.Rect
---@overload fun(label:UnityEngine.GUIContent, textureProp:UnityEditor.MaterialProperty, extraProperty1:UnityEditor.MaterialProperty, extraProperty2:UnityEditor.MaterialProperty):UnityEngine.Rect
---@param label UnityEngine.GUIContent
---@param textureProp UnityEditor.MaterialProperty
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor:TexturePropertySingleLine(label, textureProp)end
---@overload fun(label:UnityEngine.GUIContent, textureProp:UnityEditor.MaterialProperty, colorProperty:UnityEditor.MaterialProperty, hdrConfig:UnityEditor.ColorPickerHDRConfig, showAlpha:System.Boolean):UnityEngine.Rect
---@param label UnityEngine.GUIContent
---@param textureProp UnityEditor.MaterialProperty
---@param colorProperty UnityEditor.MaterialProperty
---@param showAlpha System.Boolean
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor:TexturePropertyWithHDRColor(label, textureProp, colorProperty, showAlpha)end
---@param label UnityEngine.GUIContent
---@param textureProp UnityEditor.MaterialProperty
---@param extraProperty1 UnityEditor.MaterialProperty
---@param label2 UnityEngine.GUIContent
---@param extraProperty2 UnityEditor.MaterialProperty
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor:TexturePropertyTwoLines(label, textureProp, extraProperty1, label2, extraProperty2)end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor.GetRightAlignedFieldRect(r)end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor.GetLeftAlignedFieldRect(r)end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor.GetFlexibleRectBetweenLabelAndField(r)end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor.GetFlexibleRectBetweenFieldAndRightEdge(r)end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEditor.MaterialEditor.GetRectAfterLabelWidth(r)end
---@class UnityEditor.MaterialPropertyDrawer : System.Object
UnityEditor.MaterialPropertyDrawer = {}
---@type UnityEditor.MaterialPropertyDrawer
CS.UnityEditor.MaterialPropertyDrawer = UnityEditor.MaterialPropertyDrawer

---@overload fun(position:UnityEngine.Rect, prop:UnityEditor.MaterialProperty, label:System.String, editor:UnityEditor.MaterialEditor):System.Void
---@param position UnityEngine.Rect
---@param prop UnityEditor.MaterialProperty
---@param label UnityEngine.GUIContent
---@param editor UnityEditor.MaterialEditor
---@return System.Void
function UnityEditor.MaterialPropertyDrawer:OnGUI(position, prop, label, editor)end
---@param prop UnityEditor.MaterialProperty
---@param label System.String
---@param editor UnityEditor.MaterialEditor
---@return System.Single
function UnityEditor.MaterialPropertyDrawer:GetPropertyHeight(prop, label, editor)end
---@param prop UnityEditor.MaterialProperty
---@return System.Void
function UnityEditor.MaterialPropertyDrawer:Apply(prop)end
---@class UnityEditor.PreviewRenderUtility : System.Object
---@field public camera UnityEngine.Camera @  getter
---@field public cameraFieldOfView System.Single @ setter getter
---@field public ambientColor UnityEngine.Color @ setter getter
---@field public lights UnityEngine.Light[] @  getter
---@field public m_Camera UnityEngine.Camera
---@field public m_CameraFieldOfView System.Single
---@field public m_Light UnityEngine.Light[]
UnityEditor.PreviewRenderUtility = {}
---@type UnityEditor.PreviewRenderUtility
CS.UnityEditor.PreviewRenderUtility = UnityEditor.PreviewRenderUtility

---@return System.Void
function UnityEditor.PreviewRenderUtility:Cleanup()end
---@param r UnityEngine.Rect
---@param previewBackground UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.PreviewRenderUtility:BeginPreview(r, previewBackground)end
---@param r UnityEngine.Rect
---@return System.Void
function UnityEditor.PreviewRenderUtility:BeginStaticPreview(r)end
---@param width System.Single
---@param height System.Single
---@return System.Single
function UnityEditor.PreviewRenderUtility:GetScaleFactor(width, height)end
---@param r UnityEngine.Rect
---@return System.Void
function UnityEditor.PreviewRenderUtility:BeginStaticPreviewHDR(r)end
---@param r UnityEngine.Rect
---@param previewBackground UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.PreviewRenderUtility:BeginPreviewHDR(r, previewBackground)end
---@return UnityEngine.Texture
function UnityEditor.PreviewRenderUtility:EndPreview()end
---@param r UnityEngine.Rect
---@return System.Void
function UnityEditor.PreviewRenderUtility:EndAndDrawPreview(r)end
---@return UnityEngine.Texture2D
function UnityEditor.PreviewRenderUtility:EndStaticPreview()end
---@overload fun(go:UnityEngine.GameObject, instantiateAtZero:System.Boolean):System.Void
---@param go UnityEngine.GameObject
---@return System.Void
function UnityEditor.PreviewRenderUtility:AddSingleGO(go)end
---@param prefab UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PreviewRenderUtility:InstantiatePrefabInScene(prefab)end
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, mat:UnityEngine.Material, subMeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock):System.Void
---@overload fun(mesh:UnityEngine.Mesh, m:UnityEngine.Matrix4x4, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock, probeAnchor:UnityEngine.Transform, useLightProbe:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock, probeAnchor:UnityEngine.Transform):System.Void
---@overload fun(mesh:UnityEngine.Mesh, pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock, probeAnchor:UnityEngine.Transform, useLightProbe:System.Boolean):System.Void
---@overload fun(mesh:UnityEngine.Mesh, pos:UnityEngine.Vector3, scale:UnityEngine.Vector3, rot:UnityEngine.Quaternion, mat:UnityEngine.Material, subMeshIndex:System.Int32, customProperties:UnityEngine.MaterialPropertyBlock, probeAnchor:UnityEngine.Transform, useLightProbe:System.Boolean):System.Void
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@param mat UnityEngine.Material
---@param subMeshIndex System.Int32
---@return System.Void
function UnityEditor.PreviewRenderUtility:DrawMesh(mesh, matrix, mat, subMeshIndex)end
---@overload fun(allowScriptableRenderPipeline:System.Boolean):System.Void
---@overload fun():System.Void
---@param allowScriptableRenderPipeline System.Boolean
---@param updatefov System.Boolean
---@return System.Void
function UnityEditor.PreviewRenderUtility:Render(allowScriptableRenderPipeline, updatefov)end
---@class UnityEditor.ShaderGUI : System.Object
UnityEditor.ShaderGUI = {}
---@type UnityEditor.ShaderGUI
CS.UnityEditor.ShaderGUI = UnityEditor.ShaderGUI

---@param materialEditor UnityEditor.MaterialEditor
---@param properties UnityEditor.MaterialProperty[]
---@return System.Void
function UnityEditor.ShaderGUI:OnGUI(materialEditor, properties)end
---@param materialEditor UnityEditor.MaterialEditor
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.ShaderGUI:OnMaterialPreviewGUI(materialEditor, r, background)end
---@param materialEditor UnityEditor.MaterialEditor
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
---@return System.Void
function UnityEditor.ShaderGUI:OnMaterialInteractivePreviewGUI(materialEditor, r, background)end
---@param materialEditor UnityEditor.MaterialEditor
---@return System.Void
function UnityEditor.ShaderGUI:OnMaterialPreviewSettingsGUI(materialEditor)end
---@param material UnityEngine.Material
---@return System.Void
function UnityEditor.ShaderGUI:OnClosed(material)end
---@param material UnityEngine.Material
---@param oldShader UnityEngine.Shader
---@param newShader UnityEngine.Shader
---@return System.Void
function UnityEditor.ShaderGUI:AssignNewShaderToMaterial(material, oldShader, newShader)end
---@class UnityEditor.ShaderIncludePathAttribute : System.Attribute
UnityEditor.ShaderIncludePathAttribute = {}
---@type UnityEditor.ShaderIncludePathAttribute
CS.UnityEditor.ShaderIncludePathAttribute = UnityEditor.ShaderIncludePathAttribute

---@class UnityEditor.TransformUtils : System.Object
UnityEditor.TransformUtils = {}
---@type UnityEditor.TransformUtils
CS.UnityEditor.TransformUtils = UnityEditor.TransformUtils

---@param t UnityEngine.Transform
---@return UnityEngine.Vector3
function UnityEditor.TransformUtils.GetInspectorRotation(t)end
---@param t UnityEngine.Transform
---@param r UnityEngine.Vector3
---@return System.Void
function UnityEditor.TransformUtils.SetInspectorRotation(t, r)end
---@class UnityEditor.BodyPart : System.Enum
UnityEditor.BodyPart = {}
---@type UnityEditor.BodyPart
CS.UnityEditor.BodyPart = UnityEditor.BodyPart

---@return System.Int32 value:0
UnityEditor.BodyPart.Avatar = 0
---@return System.Int32 value:1
UnityEditor.BodyPart.Body = 1
---@return System.Int32 value:2
UnityEditor.BodyPart.Head = 2
---@return System.Int32 value:3
UnityEditor.BodyPart.LeftArm = 3
---@return System.Int32 value:4
UnityEditor.BodyPart.LeftFingers = 4
---@return System.Int32 value:5
UnityEditor.BodyPart.RightArm = 5
---@return System.Int32 value:6
UnityEditor.BodyPart.RightFingers = 6
---@return System.Int32 value:7
UnityEditor.BodyPart.LeftLeg = 7
---@return System.Int32 value:8
UnityEditor.BodyPart.RightLeg = 8
---@return System.Int32 value:9
UnityEditor.BodyPart.Last = 9

---@class UnityEditor.BoneState : System.Enum
UnityEditor.BoneState = {}
---@type UnityEditor.BoneState
CS.UnityEditor.BoneState = UnityEditor.BoneState

---@return System.Int32 value:0
UnityEditor.BoneState.None = 0
---@return System.Int32 value:1
UnityEditor.BoneState.NotFound = 1
---@return System.Int32 value:2
UnityEditor.BoneState.Duplicate = 2
---@return System.Int32 value:3
UnityEditor.BoneState.InvalidHierarchy = 3
---@return System.Int32 value:4
UnityEditor.BoneState.BoneLenghtIsZero = 4
---@return System.Int32 value:5
UnityEditor.BoneState.Valid = 5

---@class UnityEditor.PlatformIcon : System.Object
---@field public layerCount System.Int32 @ setter getter
---@field public maxLayerCount System.Int32 @ setter getter
---@field public minLayerCount System.Int32 @ setter getter
---@field public width System.Int32 @ setter getter
---@field public height System.Int32 @ setter getter
---@field public kind UnityEditor.PlatformIconKind @ setter getter
UnityEditor.PlatformIcon = {}
---@type UnityEditor.PlatformIcon
CS.UnityEditor.PlatformIcon = UnityEditor.PlatformIcon

---@overload fun():UnityEngine.Texture2D
---@param layer System.Int32
---@return UnityEngine.Texture2D
function UnityEditor.PlatformIcon:GetTexture(layer)end
---@return UnityEngine.Texture2D[]
function UnityEditor.PlatformIcon:GetTextures()end
---@overload fun(texture:UnityEngine.Texture2D):System.Void
---@param texture UnityEngine.Texture2D
---@param layer System.Int32
---@return System.Void
function UnityEditor.PlatformIcon:SetTexture(texture, layer)end
---@param textures UnityEngine.Texture2D[]
---@return System.Void
function UnityEditor.PlatformIcon:SetTextures(textures)end
---@return System.String
function UnityEditor.PlatformIcon:ToString()end
---@class UnityEditor.PlatformIconKind : System.Object
UnityEditor.PlatformIconKind = {}
---@type UnityEditor.PlatformIconKind
CS.UnityEditor.PlatformIconKind = UnityEditor.PlatformIconKind

---@param obj System.Object
---@return System.Boolean
function UnityEditor.PlatformIconKind:Equals(obj)end
---@return System.Int32
function UnityEditor.PlatformIconKind:GetHashCode()end
---@return System.String
function UnityEditor.PlatformIconKind:ToString()end
---@class UnityEditor.PrefabUtility : System.Object
---@field public prefabInstanceUpdated UnityEditor.PrefabUtility.PrefabInstanceUpdated
UnityEditor.PrefabUtility = {}
---@type UnityEditor.PrefabUtility
CS.UnityEditor.PrefabUtility = UnityEditor.PrefabUtility

---@param targetObject UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.GetPrefabObject(targetObject)end
---@param instanceComponentOrGameObject UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.GetPrefabInstanceHandle(instanceComponentOrGameObject)end
---@param targetPrefab UnityEngine.Object
---@return UnityEditor.PropertyModification[]
function UnityEditor.PrefabUtility.GetPropertyModifications(targetPrefab)end
---@param targetPrefab UnityEngine.Object
---@param modifications UnityEditor.PropertyModification[]
---@return System.Void
function UnityEditor.PrefabUtility.SetPropertyModifications(targetPrefab, modifications)end
---@param instanceRoot UnityEngine.GameObject
---@param includeDefaultOverrides System.Boolean
---@return System.Boolean
function UnityEditor.PrefabUtility.HasPrefabInstanceAnyOverrides(instanceRoot, includeDefaultOverrides)end
---@param targetObject UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.InstantiateAttachedAsset(targetObject)end
---@param targetObject UnityEngine.Object
---@return System.Void
function UnityEditor.PrefabUtility.RecordPrefabInstancePropertyModifications(targetObject)end
---@param targetObject UnityEngine.Object
---@return System.Void
function UnityEditor.PrefabUtility.MergeAllPrefabInstances(targetObject)end
---@param targetObject UnityEngine.Object
---@return System.Void
function UnityEditor.PrefabUtility.DisconnectPrefabInstance(targetObject)end
---@param instanceRoot UnityEngine.GameObject
---@param unpackMode UnityEditor.PrefabUnpackMode
---@return UnityEngine.GameObject[]
function UnityEditor.PrefabUtility.UnpackPrefabInstanceAndReturnNewOutermostRoots(instanceRoot, unpackMode)end
---@param prefabPath System.String
---@param scene UnityEngine.SceneManagement.Scene
---@return System.Void
function UnityEditor.PrefabUtility.LoadPrefabContentsIntoPreviewScene(prefabPath, scene)end
---@param go UnityEngine.GameObject
---@param sourcePrefab UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.ConnectGameObjectToPrefab(go, sourcePrefab)end
---@param target UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.FindRootGameObjectWithSameParentPrefab(target)end
---@param target UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.FindValidUploadPrefabInstanceRoot(target)end
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.PrefabUtility.ReconnectToLastPrefab(go)end
---@param obj UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.ResetToPrefabState(obj)end
---@param component UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsAddedComponentOverride(component)end
---@overload fun(instanceRoot:UnityEngine.GameObject, action:UnityEditor.InteractionMode):System.Void
---@param go UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.PrefabUtility.RevertPrefabInstance(go)end
---@param source UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.FindPrefabRoot(source)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfAnyPrefab(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfPrefabAsset(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfPrefabInstance(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfNonAssetPrefabInstance(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfRegularPrefab(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfModelPrefab(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfVariantPrefab(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfImmutablePrefab(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsDisconnectedFromPrefabAsset(componentOrGameObject)end
---@param instanceComponentOrGameObject UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPrefabAssetMissing(instanceComponentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.GetOutermostPrefabInstanceRoot(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.GetNearestPrefabInstanceRoot(componentOrGameObject)end
---@param modification UnityEditor.PropertyModification
---@return System.Boolean
function UnityEditor.PrefabUtility.IsDefaultOverride(modification)end
---@param instanceRoot UnityEngine.GameObject
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyPrefabInstance(instanceRoot, action)end
---@param instanceProperty UnityEditor.SerializedProperty
---@param assetPath System.String
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyPropertyOverride(instanceProperty, assetPath, action)end
---@param instanceProperty UnityEditor.SerializedProperty
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.RevertPropertyOverride(instanceProperty, action)end
---@param instanceComponentOrGameObject UnityEngine.Object
---@param assetPath System.String
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyObjectOverride(instanceComponentOrGameObject, assetPath, action)end
---@param instanceComponentOrGameObject UnityEngine.Object
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.RevertObjectOverride(instanceComponentOrGameObject, action)end
---@param component UnityEngine.Component
---@param assetPath System.String
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyAddedComponent(component, assetPath, action)end
---@param component UnityEngine.Component
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.RevertAddedComponent(component, action)end
---@param instanceGameObject UnityEngine.GameObject
---@param assetComponent UnityEngine.Component
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyRemovedComponent(instanceGameObject, assetComponent, action)end
---@param instanceGameObject UnityEngine.GameObject
---@param assetComponent UnityEngine.Component
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.RevertRemovedComponent(instanceGameObject, assetComponent, action)end
---@param gameObject UnityEngine.GameObject
---@param assetPath System.String
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.ApplyAddedGameObject(gameObject, assetPath, action)end
---@param gameObject UnityEngine.GameObject
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.RevertAddedGameObject(gameObject, action)end
---@overload fun(prefabInstance:UnityEngine.GameObject):System.Collections.Generic.List
---@param prefabInstance UnityEngine.GameObject
---@param includeDefaultOverrides System.Boolean
---@return System.Collections.Generic.List
function UnityEditor.PrefabUtility.GetObjectOverrides(prefabInstance, includeDefaultOverrides)end
---@param prefabInstance UnityEngine.GameObject
---@return System.Collections.Generic.List
function UnityEditor.PrefabUtility.GetAddedComponents(prefabInstance)end
---@param prefabInstance UnityEngine.GameObject
---@return System.Collections.Generic.List
function UnityEditor.PrefabUtility.GetRemovedComponents(prefabInstance)end
---@param prefabInstance UnityEngine.GameObject
---@return System.Collections.Generic.List
function UnityEditor.PrefabUtility.GetAddedGameObjects(prefabInstance)end
---@param gameObject UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.PrefabUtility.IsAnyPrefabInstanceRoot(gameObject)end
---@param gameObject UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.PrefabUtility.IsOutermostPrefabInstanceRoot(gameObject)end
---@param instanceComponentOrGameObject UnityEngine.Object
---@return System.String
function UnityEditor.PrefabUtility.GetPrefabAssetPathOfNearestInstanceRoot(instanceComponentOrGameObject)end
---@param gameObject UnityEngine.GameObject
---@return UnityEngine.Texture2D
function UnityEditor.PrefabUtility.GetIconForGameObject(gameObject)end
---@param obj UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.GetPrefabParent(obj)end
---@param path System.String
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.CreateEmptyPrefab(path)end
---@overload fun(asset:UnityEngine.GameObject, savedSuccessfully:System.Boolean):UnityEngine.GameObject
---@param asset UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.SavePrefabAsset(asset)end
---@overload fun(instanceRoot:UnityEngine.GameObject, assetPath:System.String, success:System.Boolean):UnityEngine.GameObject
---@param instanceRoot UnityEngine.GameObject
---@param assetPath System.String
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.SaveAsPrefabAsset(instanceRoot, assetPath)end
---@overload fun(instanceRoot:UnityEngine.GameObject, assetPath:System.String, action:UnityEditor.InteractionMode, success:System.Boolean):UnityEngine.GameObject
---@param instanceRoot UnityEngine.GameObject
---@param assetPath System.String
---@param action UnityEditor.InteractionMode
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.SaveAsPrefabAssetAndConnect(instanceRoot, assetPath, action)end
---@overload fun(path:System.String, go:UnityEngine.GameObject, options:UnityEditor.ReplacePrefabOptions):UnityEngine.GameObject
---@param path System.String
---@param go UnityEngine.GameObject
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.CreatePrefab(path, go)end
---@overload fun(assetComponentOrGameObject:UnityEngine.Object, destinationScene:UnityEngine.SceneManagement.Scene):UnityEngine.Object
---@overload fun(assetComponentOrGameObject:UnityEngine.Object, parent:UnityEngine.Transform):UnityEngine.Object
---@param assetComponentOrGameObject UnityEngine.Object
---@return UnityEngine.Object
function UnityEditor.PrefabUtility.InstantiatePrefab(assetComponentOrGameObject)end
---@overload fun(go:UnityEngine.GameObject, targetPrefab:UnityEngine.Object, replaceOptions:UnityEditor.ReplacePrefabOptions):UnityEngine.GameObject
---@param go UnityEngine.GameObject
---@param targetPrefab UnityEngine.Object
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.ReplacePrefab(go, targetPrefab)end
---@param componentOrGameObject any
---@return any
function UnityEditor.PrefabUtility.GetCorrespondingObjectFromSource(componentOrGameObject)end
---@param componentOrGameObject any
---@return any
function UnityEditor.PrefabUtility.GetCorrespondingObjectFromOriginalSource(componentOrGameObject)end
---@param componentOrGameObject any
---@param assetPath System.String
---@return any
function UnityEditor.PrefabUtility.GetCorrespondingObjectFromSourceAtPath(componentOrGameObject, assetPath)end
---@param target UnityEngine.Object
---@return UnityEditor.PrefabType
function UnityEditor.PrefabUtility.GetPrefabType(target)end
---@param gameObject UnityEngine.GameObject
---@return System.Boolean
function UnityEditor.PrefabUtility.IsAddedGameObjectOverride(gameObject)end
---@param instanceRoot UnityEngine.GameObject
---@param unpackMode UnityEditor.PrefabUnpackMode
---@param action UnityEditor.InteractionMode
---@return System.Void
function UnityEditor.PrefabUtility.UnpackPrefabInstance(instanceRoot, unpackMode, action)end
---@param gameObjectOrComponent UnityEngine.Object
---@return System.Boolean
function UnityEditor.PrefabUtility.IsPartOfPrefabThatCanBeAppliedTo(gameObjectOrComponent)end
---@param componentOrGameObject UnityEngine.Object
---@return UnityEditor.PrefabInstanceStatus
function UnityEditor.PrefabUtility.GetPrefabInstanceStatus(componentOrGameObject)end
---@param componentOrGameObject UnityEngine.Object
---@return UnityEditor.PrefabAssetType
function UnityEditor.PrefabUtility.GetPrefabAssetType(componentOrGameObject)end
---@param assetPath System.String
---@return UnityEngine.GameObject
function UnityEditor.PrefabUtility.LoadPrefabContents(assetPath)end
---@param contentsRoot UnityEngine.GameObject
---@return System.Void
function UnityEditor.PrefabUtility.UnloadPrefabContents(contentsRoot)end
---@class UnityEditor.PrefabAssetType : System.Enum
UnityEditor.PrefabAssetType = {}
---@type UnityEditor.PrefabAssetType
CS.UnityEditor.PrefabAssetType = UnityEditor.PrefabAssetType

---@return System.Int32 value:0
UnityEditor.PrefabAssetType.NotAPrefab = 0
---@return System.Int32 value:1
UnityEditor.PrefabAssetType.Regular = 1
---@return System.Int32 value:2
UnityEditor.PrefabAssetType.Model = 2
---@return System.Int32 value:3
UnityEditor.PrefabAssetType.Variant = 3
---@return System.Int32 value:4
UnityEditor.PrefabAssetType.MissingAsset = 4

---@class UnityEditor.PrefabInstanceStatus : System.Enum
UnityEditor.PrefabInstanceStatus = {}
---@type UnityEditor.PrefabInstanceStatus
CS.UnityEditor.PrefabInstanceStatus = UnityEditor.PrefabInstanceStatus

---@return System.Int32 value:0
UnityEditor.PrefabInstanceStatus.NotAPrefab = 0
---@return System.Int32 value:1
UnityEditor.PrefabInstanceStatus.Connected = 1
---@return System.Int32 value:2
UnityEditor.PrefabInstanceStatus.Disconnected = 2
---@return System.Int32 value:3
UnityEditor.PrefabInstanceStatus.MissingAsset = 3

---@class UnityEditor.PrefabUnpackMode : System.Enum
UnityEditor.PrefabUnpackMode = {}
---@type UnityEditor.PrefabUnpackMode
CS.UnityEditor.PrefabUnpackMode = UnityEditor.PrefabUnpackMode

---@return System.Int32 value:0
UnityEditor.PrefabUnpackMode.OutermostRoot = 0
---@return System.Int32 value:1
UnityEditor.PrefabUnpackMode.Completely = 1

---@class UnityEditor.PrefabType : System.Enum
UnityEditor.PrefabType = {}
---@type UnityEditor.PrefabType
CS.UnityEditor.PrefabType = UnityEditor.PrefabType

---@return System.Int32 value:0
UnityEditor.PrefabType.None = 0
---@return System.Int32 value:1
UnityEditor.PrefabType.Prefab = 1
---@return System.Int32 value:2
UnityEditor.PrefabType.ModelPrefab = 2
---@return System.Int32 value:3
UnityEditor.PrefabType.PrefabInstance = 3
---@return System.Int32 value:4
UnityEditor.PrefabType.ModelPrefabInstance = 4
---@return System.Int32 value:5
UnityEditor.PrefabType.MissingPrefabInstance = 5
---@return System.Int32 value:6
UnityEditor.PrefabType.DisconnectedPrefabInstance = 6
---@return System.Int32 value:7
UnityEditor.PrefabType.DisconnectedModelPrefabInstance = 7

---@class UnityEditor.ReplacePrefabOptions : System.Enum
UnityEditor.ReplacePrefabOptions = {}
---@type UnityEditor.ReplacePrefabOptions
CS.UnityEditor.ReplacePrefabOptions = UnityEditor.ReplacePrefabOptions

---@return System.Int32 value:0
UnityEditor.ReplacePrefabOptions.Default = 0
---@return System.Int32 value:1
UnityEditor.ReplacePrefabOptions.ConnectToPrefab = 1
---@return System.Int32 value:2
UnityEditor.ReplacePrefabOptions.ReplaceNameBased = 2

---@class UnityEditor.PropertyModification : System.Object
---@field public target UnityEngine.Object
---@field public propertyPath System.String
---@field public value System.String
---@field public objectReference UnityEngine.Object
UnityEditor.PropertyModification = {}
---@type UnityEditor.PropertyModification
CS.UnityEditor.PropertyModification = UnityEditor.PropertyModification

---@class UnityEditor.PreferenceItem : System.Attribute
---@field public name System.String
UnityEditor.PreferenceItem = {}
---@type UnityEditor.PreferenceItem
CS.UnityEditor.PreferenceItem = UnityEditor.PreferenceItem

---@class UnityEditor.SaveType : System.Enum
UnityEditor.SaveType = {}
---@type UnityEditor.SaveType
CS.UnityEditor.SaveType = UnityEditor.SaveType

---@return System.Int32 value:0
UnityEditor.SaveType.Binary = 0
---@return System.Int32 value:1
UnityEditor.SaveType.Text = 1

---@class UnityEditor.ProjectWindowUtil : System.Object
UnityEditor.ProjectWindowUtil = {}
---@type UnityEditor.ProjectWindowUtil
CS.UnityEditor.ProjectWindowUtil = UnityEditor.ProjectWindowUtil

---@return System.Void
function UnityEditor.ProjectWindowUtil.CreateNewGUISkin()end
---@param asset UnityEngine.Object
---@param pathName System.String
---@return System.Void
function UnityEditor.ProjectWindowUtil.CreateAsset(asset, pathName)end
---@return System.Void
function UnityEditor.ProjectWindowUtil.CreateFolder()end
---@return System.Void
function UnityEditor.ProjectWindowUtil.CreateScene()end
---@overload fun(filename:System.String, content:System.String):System.Void
---@param filename System.String
---@param content System.String
---@param icon UnityEngine.Texture2D
---@return System.Void
function UnityEditor.ProjectWindowUtil.CreateAssetWithContent(filename, content, icon)end
---@param o UnityEngine.Object
---@return System.Void
function UnityEditor.ProjectWindowUtil.ShowCreatedAsset(o)end
---@param instanceID System.Int32
---@param endAction UnityEditor.ProjectWindowCallback.EndNameEditAction
---@param pathName System.String
---@param icon UnityEngine.Texture2D
---@param resourceFile System.String
---@return System.Void
function UnityEditor.ProjectWindowUtil.StartNameEditingIfProjectWindowExists(instanceID, endAction, pathName, icon, resourceFile)end
---@param instanceID System.Int32
---@return System.Int32[]
function UnityEditor.ProjectWindowUtil.GetAncestors(instanceID)end
---@param instanceID System.Int32
---@return System.Boolean
function UnityEditor.ProjectWindowUtil.IsFolder(instanceID)end
---@param path System.String
---@return System.String
function UnityEditor.ProjectWindowUtil.GetContainingFolder(path)end
---@param folders System.String[]
---@return System.String[]
function UnityEditor.ProjectWindowUtil.GetBaseFolders(folders)end
---@class UnityEditor.SearchableEditorWindow : UnityEditor.EditorWindow
UnityEditor.SearchableEditorWindow = {}
---@type UnityEditor.SearchableEditorWindow
CS.UnityEditor.SearchableEditorWindow = UnityEditor.SearchableEditorWindow

---@return System.Void
function UnityEditor.SearchableEditorWindow:OnEnable()end
---@return System.Void
function UnityEditor.SearchableEditorWindow:OnDisable()end
---@class UnityEditor.SearchableEditorWindow.SearchMode : System.Enum
UnityEditor.SearchableEditorWindow.SearchMode = {}
---@type UnityEditor.SearchableEditorWindow.SearchMode
CS.UnityEditor.SearchableEditorWindow.SearchMode = UnityEditor.SearchableEditorWindow.SearchMode

---@return System.Int32 value:0
UnityEditor.SearchableEditorWindow.SearchMode.All = 0
---@return System.Int32 value:1
UnityEditor.SearchableEditorWindow.SearchMode.Name = 1
---@return System.Int32 value:2
UnityEditor.SearchableEditorWindow.SearchMode.Type = 2
---@return System.Int32 value:3
UnityEditor.SearchableEditorWindow.SearchMode.Label = 3
---@return System.Int32 value:4
UnityEditor.SearchableEditorWindow.SearchMode.AssetBundleName = 4

---@class UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow : System.Enum
UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow = {}
---@type UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow
CS.UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow = UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow

---@return System.Int32 value:0
UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow.All = 0
---@return System.Int32 value:1
UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow.Name = 1
---@return System.Int32 value:2
UnityEditor.SearchableEditorWindow.SearchModeHierarchyWindow.Type = 2

---@class UnityEditor.DefaultLightingExplorerExtension : System.Object
UnityEditor.DefaultLightingExplorerExtension = {}
---@type UnityEditor.DefaultLightingExplorerExtension
CS.UnityEditor.DefaultLightingExplorerExtension = UnityEditor.DefaultLightingExplorerExtension

---@return UnityEditor.LightingExplorerTab[]
function UnityEditor.DefaultLightingExplorerExtension:GetContentTabs()end
---@return System.Void
function UnityEditor.DefaultLightingExplorerExtension:OnEnable()end
---@return System.Void
function UnityEditor.DefaultLightingExplorerExtension:OnDisable()end
---@class UnityEditor.LightingExplorerTab : System.Object
UnityEditor.LightingExplorerTab = {}
---@type UnityEditor.LightingExplorerTab
CS.UnityEditor.LightingExplorerTab = UnityEditor.LightingExplorerTab

---@class UnityEditor.LightingExplorerTableColumn : System.Object
UnityEditor.LightingExplorerTableColumn = {}
---@type UnityEditor.LightingExplorerTableColumn
CS.UnityEditor.LightingExplorerTableColumn = UnityEditor.LightingExplorerTableColumn

---@class UnityEditor.LightingExplorerTableColumn.DataType : System.Enum
UnityEditor.LightingExplorerTableColumn.DataType = {}
---@type UnityEditor.LightingExplorerTableColumn.DataType
CS.UnityEditor.LightingExplorerTableColumn.DataType = UnityEditor.LightingExplorerTableColumn.DataType

---@return System.Int32 value:0
UnityEditor.LightingExplorerTableColumn.DataType.Name = 0
---@return System.Int32 value:1
UnityEditor.LightingExplorerTableColumn.DataType.Checkbox = 1
---@return System.Int32 value:2
UnityEditor.LightingExplorerTableColumn.DataType.Enum = 2
---@return System.Int32 value:3
UnityEditor.LightingExplorerTableColumn.DataType.Int = 3
---@return System.Int32 value:4
UnityEditor.LightingExplorerTableColumn.DataType.Float = 4
---@return System.Int32 value:5
UnityEditor.LightingExplorerTableColumn.DataType.Color = 5

---@class UnityEditor.LightingExplorerExtensionAttribute : System.Attribute
UnityEditor.LightingExplorerExtensionAttribute = {}
---@type UnityEditor.LightingExplorerExtensionAttribute
CS.UnityEditor.LightingExplorerExtensionAttribute = UnityEditor.LightingExplorerExtensionAttribute

---@class UnityEditor.PhysicsDebugWindow : UnityEditor.EditorWindow
UnityEditor.PhysicsDebugWindow = {}
---@type UnityEditor.PhysicsDebugWindow
CS.UnityEditor.PhysicsDebugWindow = UnityEditor.PhysicsDebugWindow

---@return UnityEditor.PhysicsDebugWindow
function UnityEditor.PhysicsDebugWindow.ShowWindow()end
---@class UnityEditor.SceneModeUtility : System.Object
UnityEditor.SceneModeUtility = {}
---@type UnityEditor.SceneModeUtility
CS.UnityEditor.SceneModeUtility = UnityEditor.SceneModeUtility

---@param gameObjects UnityEngine.GameObject[]
---@param types System.Type[]
---@return T[]
function UnityEditor.SceneModeUtility.GetSelectedObjectsOfType(gameObjects, types)end
---@param type System.Type
---@return System.Void
function UnityEditor.SceneModeUtility.SearchForType(type)end
---@param types System.Type[]
---@return System.Type
function UnityEditor.SceneModeUtility.SearchBar(types)end
---@param label System.String
---@param property UnityEditor.SerializedProperty
---@param flag System.Int32
---@return System.Boolean
function UnityEditor.SceneModeUtility.StaticFlagField(label, property, flag)end
---@param targetObjects UnityEngine.Object[]
---@param changedFlags System.Int32
---@param flagValue System.Boolean
---@return System.Boolean
function UnityEditor.SceneModeUtility.SetStaticFlags(targetObjects, changedFlags, flagValue)end
---@param gameObjects UnityEngine.Object[]
---@param includeChildren System.Boolean
---@return UnityEngine.GameObject[]
function UnityEditor.SceneModeUtility.GetObjects(gameObjects, includeChildren)end
---@class UnityEditor.SceneView : UnityEditor.SearchableEditorWindow
---@field public lastActiveSceneView UnityEditor.SceneView @static  getter
---@field public currentDrawingSceneView UnityEditor.SceneView @static  getter
---@field public in2DMode System.Boolean @ setter getter
---@field public isRotationLocked System.Boolean @ setter getter
---@field public renderMode UnityEditor.DrawCameraMode @ setter getter
---@field public cameraMode UnityEditor.SceneView.CameraMode @ setter getter
---@field public sceneViewState UnityEditor.SceneView.SceneViewState @ setter getter
---@field public lastSceneViewRotation UnityEngine.Quaternion @ setter getter
---@field public cameraDistance System.Single @  getter
---@field public sceneViews System.Collections.ArrayList @static  getter
---@field public camera UnityEngine.Camera @  getter
---@field public pivot UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public size System.Single @ setter getter
---@field public orthographic System.Boolean @ setter getter
---@field public m_SceneLighting System.Boolean
---@field public m_AudioPlay System.Boolean
---@field public onSceneGUIDelegate UnityEditor.SceneView.OnSceneFunc
---@field public m_RenderMode UnityEditor.DrawCameraMode
---@field public m_ValidateTrueMetals System.Boolean
UnityEditor.SceneView = {}
---@type UnityEditor.SceneView
CS.UnityEditor.SceneView = UnityEditor.SceneView

---@param value System.Func
---@return System.Void
function UnityEditor.SceneView:add_onValidateCameraMode(value)end
---@param value System.Func
---@return System.Void
function UnityEditor.SceneView:remove_onValidateCameraMode(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.SceneView:add_onCameraModeChanged(value)end
---@param value System.Action
---@return System.Void
function UnityEditor.SceneView:remove_onCameraModeChanged(value)end
---@param shader UnityEngine.Shader
---@param replaceString System.String
---@return System.Void
function UnityEditor.SceneView:SetSceneViewShaderReplace(shader, replaceString)end
---@return System.Boolean
function UnityEditor.SceneView.FrameLastActiveSceneView()end
---@return System.Boolean
function UnityEditor.SceneView.FrameLastActiveSceneViewWithLock()end
---@return UnityEngine.Camera[]
function UnityEditor.SceneView.GetAllSceneCameras()end
---@return System.Void
function UnityEditor.SceneView.RepaintAll()end
---@return System.Void
function UnityEditor.SceneView:OnEnable()end
---@return System.Void
function UnityEditor.SceneView:OnDisable()end
---@return System.Void
function UnityEditor.SceneView:OnDestroy()end
---@return System.Void
function UnityEditor.SceneView:OnSelectionChange()end
---@param menu UnityEditor.GenericMenu
---@return System.Void
function UnityEditor.SceneView:AddItemsToMenu(menu)end
---@param enable System.Boolean
---@return System.Void
function UnityEditor.SceneView:SetSceneViewFiltering(enable)end
---@param mode UnityEditor.SceneView.CameraMode
---@return System.Boolean
function UnityEditor.SceneView:IsCameraDrawModeEnabled(mode)end
---@return System.Void
function UnityEditor.SceneView:FixNegativeSize()end
---@overload fun(pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion):System.Void
---@overload fun(pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, newSize:System.Single):System.Void
---@overload fun(pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, newSize:System.Single, ortho:System.Boolean):System.Void
---@overload fun(pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, newSize:System.Single, ortho:System.Boolean, instant:System.Boolean):System.Void
---@param pos UnityEngine.Vector3
---@return System.Void
function UnityEditor.SceneView:LookAt(pos)end
---@overload fun(pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion, newSize:System.Single):System.Void
---@param pos UnityEngine.Vector3
---@param rot UnityEngine.Quaternion
---@return System.Void
function UnityEditor.SceneView:LookAtDirect(pos, rot)end
---@param t UnityEngine.Transform
---@return System.Void
function UnityEditor.SceneView:AlignViewToObject(t)end
---@return System.Void
function UnityEditor.SceneView:AlignWithView()end
---@overload fun(target:UnityEngine.Transform):System.Void
---@return System.Void
function UnityEditor.SceneView:MoveToView()end
---@overload fun(lockView:System.Boolean):System.Boolean
---@overload fun(lockView:System.Boolean, instant:System.Boolean):System.Boolean
---@return System.Boolean
function UnityEditor.SceneView:FrameSelected()end
---@overload fun(bounds:UnityEngine.Bounds):System.Boolean
---@param bounds UnityEngine.Bounds
---@param instant System.Boolean
---@return System.Boolean
function UnityEditor.SceneView:Frame(bounds, instant)end
---@return System.Void
function UnityEditor.SceneView.ShowCompileErrorNotification()end
---@param name System.String
---@param section System.String
---@return UnityEditor.SceneView.CameraMode
function UnityEditor.SceneView.AddCameraMode(name, section)end
---@return System.Void
function UnityEditor.SceneView.ClearUserDefinedCameraModes()end
---@param cameraMode UnityEditor.DrawCameraMode
---@return UnityEditor.SceneView.CameraMode
function UnityEditor.SceneView.GetBuiltinCameraMode(cameraMode)end
---@class UnityEditor.SceneView.CameraMode : System.ValueType
---@field public drawMode UnityEditor.DrawCameraMode
---@field public name System.String
---@field public section System.String
UnityEditor.SceneView.CameraMode = {}
---@type UnityEditor.SceneView.CameraMode
CS.UnityEditor.SceneView.CameraMode = UnityEditor.SceneView.CameraMode

---@param a UnityEditor.SceneView.CameraMode
---@param z UnityEditor.SceneView.CameraMode
---@return System.Boolean
function UnityEditor.SceneView.CameraMode.op_Equality(a, z)end
---@param a UnityEditor.SceneView.CameraMode
---@param z UnityEditor.SceneView.CameraMode
---@return System.Boolean
function UnityEditor.SceneView.CameraMode.op_Inequality(a, z)end
---@param otherObject System.Object
---@return System.Boolean
function UnityEditor.SceneView.CameraMode:Equals(otherObject)end
---@return System.Int32
function UnityEditor.SceneView.CameraMode:GetHashCode()end
---@return System.String
function UnityEditor.SceneView.CameraMode:ToString()end
---@class UnityEditor.SceneView.SceneViewState : System.Object
---@field public showFog System.Boolean
---@field public showMaterialUpdate System.Boolean
---@field public showSkybox System.Boolean
---@field public showFlares System.Boolean
---@field public showImageEffects System.Boolean
---@field public showParticleSystems System.Boolean
UnityEditor.SceneView.SceneViewState = {}
---@type UnityEditor.SceneView.SceneViewState
CS.UnityEditor.SceneView.SceneViewState = UnityEditor.SceneView.SceneViewState

---@return System.Boolean
function UnityEditor.SceneView.SceneViewState:IsAllOn()end
---@param value System.Boolean
---@return System.Void
function UnityEditor.SceneView.SceneViewState:Toggle(value)end
---@class UnityEditor.CustomPropertyDrawer : System.Attribute
UnityEditor.CustomPropertyDrawer = {}
---@type UnityEditor.CustomPropertyDrawer
CS.UnityEditor.CustomPropertyDrawer = UnityEditor.CustomPropertyDrawer

---@class UnityEditor.DecoratorDrawer : UnityEditor.GUIDrawer
---@field public attribute UnityEngine.PropertyAttribute @  getter
UnityEditor.DecoratorDrawer = {}
---@type UnityEditor.DecoratorDrawer
CS.UnityEditor.DecoratorDrawer = UnityEditor.DecoratorDrawer

---@param position UnityEngine.Rect
---@return System.Void
function UnityEditor.DecoratorDrawer:OnGUI(position)end
---@return System.Single
function UnityEditor.DecoratorDrawer:GetHeight()end
---@return System.Boolean
function UnityEditor.DecoratorDrawer:CanCacheInspectorGUI()end
---@class UnityEditor.GUIDrawer : System.Object
UnityEditor.GUIDrawer = {}
---@type UnityEditor.GUIDrawer
CS.UnityEditor.GUIDrawer = UnityEditor.GUIDrawer

---@class UnityEditor.PropertyDrawer : UnityEditor.GUIDrawer
---@field public attribute UnityEngine.PropertyAttribute @  getter
---@field public fieldInfo System.Reflection.FieldInfo @  getter
UnityEditor.PropertyDrawer = {}
---@type UnityEditor.PropertyDrawer
CS.UnityEditor.PropertyDrawer = UnityEditor.PropertyDrawer

---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Void
function UnityEditor.PropertyDrawer:OnGUI(position, property, label)end
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return System.Single
function UnityEditor.PropertyDrawer:GetPropertyHeight(property, label)end
---@param property UnityEditor.SerializedProperty
---@return System.Boolean
function UnityEditor.PropertyDrawer:CanCacheInspectorGUI(property)end
---@class UnityEditor.SettingsScope : System.Enum
UnityEditor.SettingsScope = {}
---@type UnityEditor.SettingsScope
CS.UnityEditor.SettingsScope = UnityEditor.SettingsScope

---@return System.Int32 value:0
UnityEditor.SettingsScope.User = 0
---@return System.Int32 value:1
UnityEditor.SettingsScope.Project = 1

---@class UnityEditor.SettingsScopes : System.Enum
UnityEditor.SettingsScopes = {}
---@type UnityEditor.SettingsScopes
CS.UnityEditor.SettingsScopes = UnityEditor.SettingsScopes

---@return System.Int32 value:0
UnityEditor.SettingsScopes.User = 0
---@return System.Int32 value:1
UnityEditor.SettingsScopes.Project = 1

---@class UnityEditor.SettingsProvider : System.Object
---@field public label System.String @ setter getter
---@field public settingsPath System.String @  getter
---@field public scope UnityEditor.SettingsScope @ setter getter
---@field public scopes UnityEditor.SettingsScopes @ setter getter
---@field public keywords System.Collections.Generic.IEnumerable @ setter getter
---@field public guiHandler System.Action @ setter getter
---@field public titleBarGuiHandler System.Action @ setter getter
---@field public footerBarGuiHandler System.Action @ setter getter
---@field public activateHandler System.Action @ setter getter
---@field public deactivateHandler System.Action @ setter getter
---@field public hasSearchInterestHandler System.Func @ setter getter
UnityEditor.SettingsProvider = {}
---@type UnityEditor.SettingsProvider
CS.UnityEditor.SettingsProvider = UnityEditor.SettingsProvider

---@param searchContext System.String
---@param rootElement UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEditor.SettingsProvider:OnActivate(searchContext, rootElement)end
---@return System.Void
function UnityEditor.SettingsProvider:OnDeactivate()end
---@param searchContext System.String
---@return System.Boolean
function UnityEditor.SettingsProvider:HasSearchInterest(searchContext)end
---@param searchContext System.String
---@return System.Void
function UnityEditor.SettingsProvider:OnGUI(searchContext)end
---@return System.Void
function UnityEditor.SettingsProvider:OnTitleBarGUI()end
---@return System.Void
function UnityEditor.SettingsProvider:OnFooterBarGUI()end
---@return System.Void
function UnityEditor.SettingsProvider:Repaint()end
---@return System.Void
function UnityEditor.SettingsProvider:PopulateSearchKeywordsFromGUIContentProperties()end
---@return System.Collections.Generic.IEnumerable
function UnityEditor.SettingsProvider.GetSearchKeywordsFromGUIContentProperties()end
---@param serializedObject UnityEditor.SerializedObject
---@return System.Collections.Generic.IEnumerable
function UnityEditor.SettingsProvider.GetSearchKeywordsFromSerializedObject(serializedObject)end
---@param path System.String
---@return System.Collections.Generic.IEnumerable
function UnityEditor.SettingsProvider.GetSearchKeywordsFromPath(path)end
---@class UnityEditor.SettingsProviderAttribute : System.Attribute
UnityEditor.SettingsProviderAttribute = {}
---@type UnityEditor.SettingsProviderAttribute
CS.UnityEditor.SettingsProviderAttribute = UnityEditor.SettingsProviderAttribute

---@class UnityEditor.SettingsProviderGroupAttribute : System.Attribute
UnityEditor.SettingsProviderGroupAttribute = {}
---@type UnityEditor.SettingsProviderGroupAttribute
CS.UnityEditor.SettingsProviderGroupAttribute = UnityEditor.SettingsProviderGroupAttribute

---@class UnityEditor.SettingsService : System.Object
UnityEditor.SettingsService = {}
---@type UnityEditor.SettingsService
CS.UnityEditor.SettingsService = UnityEditor.SettingsService

---@overload fun():UnityEditor.EditorWindow
---@param settingsPath System.String
---@return UnityEditor.EditorWindow
function UnityEditor.SettingsService.OpenProjectSettings(settingsPath)end
---@overload fun():UnityEditor.EditorWindow
---@param settingsPath System.String
---@return UnityEditor.EditorWindow
function UnityEditor.SettingsService.OpenUserPreferences(settingsPath)end
---@return System.Void
function UnityEditor.SettingsService.NotifySettingsProviderChanged()end
---@class UnityEditor.AssetSettingsProvider : UnityEditor.SettingsProvider
---@field public settingsEditor UnityEditor.Editor @ setter getter
UnityEditor.AssetSettingsProvider = {}
---@type UnityEditor.AssetSettingsProvider
CS.UnityEditor.AssetSettingsProvider = UnityEditor.AssetSettingsProvider

---@overload fun(settingsWindowPath:System.String, assetPath:System.String):UnityEditor.AssetSettingsProvider
---@param settingsWindowPath System.String
---@param assetPath System.String
---@param keywords System.Collections.Generic.IEnumerable
---@return UnityEditor.AssetSettingsProvider
function UnityEditor.AssetSettingsProvider.CreateProviderFromAssetPath(settingsWindowPath, assetPath, keywords)end
---@overload fun(settingsWindowPath:System.String, settingsObj:UnityEngine.Object):UnityEditor.AssetSettingsProvider
---@param settingsWindowPath System.String
---@param settingsObj UnityEngine.Object
---@param keywords System.Collections.Generic.IEnumerable
---@return UnityEditor.AssetSettingsProvider
function UnityEditor.AssetSettingsProvider.CreateProviderFromObject(settingsWindowPath, settingsObj, keywords)end
---@overload fun(settingsWindowPath:System.String, resourcePath:System.String):UnityEditor.AssetSettingsProvider
---@param settingsWindowPath System.String
---@param resourcePath System.String
---@param keywords System.Collections.Generic.IEnumerable
---@return UnityEditor.AssetSettingsProvider
function UnityEditor.AssetSettingsProvider.CreateProviderFromResourcePath(settingsWindowPath, resourcePath, keywords)end
---@param searchContext System.String
---@param rootElement UnityEngine.Experimental.UIElements.VisualElement
---@return System.Void
function UnityEditor.AssetSettingsProvider:OnActivate(searchContext, rootElement)end
---@return System.Void
function UnityEditor.AssetSettingsProvider:OnDeactivate()end
---@param searchContext System.String
---@return System.Void
function UnityEditor.AssetSettingsProvider:OnGUI(searchContext)end
---@return System.Void
function UnityEditor.AssetSettingsProvider:OnTitleBarGUI()end
---@return System.Void
function UnityEditor.AssetSettingsProvider:OnFooterBarGUI()end
---@class UnityEditor.SpriteRect : System.Object
---@field public name System.String @ setter getter
---@field public pivot UnityEngine.Vector2 @ setter getter
---@field public alignment UnityEngine.SpriteAlignment @ setter getter
---@field public border UnityEngine.Vector4 @ setter getter
---@field public rect UnityEngine.Rect @ setter getter
---@field public spriteID UnityEditor.GUID @ setter getter
UnityEditor.SpriteRect = {}
---@type UnityEditor.SpriteRect
CS.UnityEditor.SpriteRect = UnityEditor.SpriteRect

---@param sp UnityEditor.SerializedProperty
---@return UnityEditor.GUID
function UnityEditor.SpriteRect.GetSpriteIDFromSerializedProperty(sp)end
---@class UnityEditor.Highlighter : System.Object
---@field public activeText System.String @static setter getter
---@field public activeRect UnityEngine.Rect @static setter getter
---@field public activeVisible System.Boolean @static setter getter
---@field public active System.Boolean @static setter getter
UnityEditor.Highlighter = {}
---@type UnityEditor.Highlighter
CS.UnityEditor.Highlighter = UnityEditor.Highlighter

---@return System.Void
function UnityEditor.Highlighter.Stop()end
---@overload fun(windowTitle:System.String, text:System.String, mode:UnityEditor.HighlightSearchMode):System.Boolean
---@param windowTitle System.String
---@param text System.String
---@return System.Boolean
function UnityEditor.Highlighter.Highlight(windowTitle, text)end
---@param position UnityEngine.Rect
---@param identifier System.String
---@return System.Void
function UnityEditor.Highlighter.HighlightIdentifier(position, identifier)end
---@class UnityEditor.HighlightSearchMode : System.Enum
UnityEditor.HighlightSearchMode = {}
---@type UnityEditor.HighlightSearchMode
CS.UnityEditor.HighlightSearchMode = UnityEditor.HighlightSearchMode

---@return System.Int32 value:0
UnityEditor.HighlightSearchMode.None = 0
---@return System.Int32 value:1
UnityEditor.HighlightSearchMode.Auto = 1
---@return System.Int32 value:2
UnityEditor.HighlightSearchMode.Identifier = 2
---@return System.Int32 value:3
UnityEditor.HighlightSearchMode.PrefixLabel = 3
---@return System.Int32 value:4
UnityEditor.HighlightSearchMode.Content = 4

---@class UnityEditor.UndoPropertyModification : System.ValueType
---@field public keepPrefabOverride System.Boolean @ setter getter
---@field public previousValue UnityEditor.PropertyModification
---@field public currentValue UnityEditor.PropertyModification
UnityEditor.UndoPropertyModification = {}
---@type UnityEditor.UndoPropertyModification
CS.UnityEditor.UndoPropertyModification = UnityEditor.UndoPropertyModification

---@class UnityEditor.UndoSnapshot : System.Object
UnityEditor.UndoSnapshot = {}
---@type UnityEditor.UndoSnapshot
CS.UnityEditor.UndoSnapshot = UnityEditor.UndoSnapshot

---@return System.Void
function UnityEditor.UndoSnapshot:Restore()end
---@return System.Void
function UnityEditor.UndoSnapshot:Dispose()end
---@class UnityEditor.CloudProjectSettings : System.Object
---@field public userId System.String @static  getter
---@field public userName System.String @static  getter
---@field public accessToken System.String @static  getter
---@field public projectId System.String @static  getter
---@field public projectName System.String @static  getter
---@field public organizationId System.String @static  getter
---@field public organizationName System.String @static  getter
UnityEditor.CloudProjectSettings = {}
---@type UnityEditor.CloudProjectSettings
CS.UnityEditor.CloudProjectSettings = UnityEditor.CloudProjectSettings

---@param refresh System.Action
---@return System.Void
function UnityEditor.CloudProjectSettings.RefreshAccessToken(refresh)end
---@class UnityEditor.ExpressionEvaluator : System.Object
UnityEditor.ExpressionEvaluator = {}
---@type UnityEditor.ExpressionEvaluator
CS.UnityEditor.ExpressionEvaluator = UnityEditor.ExpressionEvaluator

---@param expression System.String
---@param value any
---@return System.Boolean
function UnityEditor.ExpressionEvaluator.Evaluate(expression, value)end
---@class UnityEditor.MathUtils : System.Object
UnityEditor.MathUtils = {}
---@type UnityEditor.MathUtils
CS.UnityEditor.MathUtils = UnityEditor.MathUtils

---@param q UnityEngine.Quaternion
---@return System.Single
function UnityEditor.MathUtils.GetQuatLength(q)end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.GetQuatConjugate(q)end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEditor.MathUtils.OrthogonalizeMatrix(m)end
---@param q UnityEngine.Quaternion
---@return System.Void
function UnityEditor.MathUtils.QuaternionNormalize(q)end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.QuaternionFromMatrix(m)end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.GetQuatLog(q)end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.GetQuatExp(q)end
---@param t System.Single
---@param q0 UnityEngine.Quaternion
---@param q1 UnityEngine.Quaternion
---@param a0 UnityEngine.Quaternion
---@param a1 UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.GetQuatSquad(t, q0, q1, a0, a1)end
---@param q0 UnityEngine.Quaternion
---@param q1 UnityEngine.Quaternion
---@param q2 UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.GetSquadIntermediate(q0, q1, q2)end
---@param t System.Single
---@param k1 System.Single
---@param k2 System.Single
---@return System.Single
function UnityEditor.MathUtils.Ease(t, k1, k2)end
---@param p UnityEngine.Quaternion
---@param q UnityEngine.Quaternion
---@param t System.Single
---@return UnityEngine.Quaternion
function UnityEditor.MathUtils.Slerp(p, q, t)end
---@param ray UnityEngine.Ray
---@param v0 UnityEngine.Vector3
---@param v1 UnityEngine.Vector3
---@param v2 UnityEngine.Vector3
---@param bidirectional System.Boolean
---@return System.Object
function UnityEditor.MathUtils.IntersectRayTriangle(ray, v0, v1, v2, bidirectional)end
---@param p1 UnityEngine.Vector3
---@param q1 UnityEngine.Vector3
---@param ray UnityEngine.Ray
---@param squaredDist System.Single
---@param s System.Single
---@param closestRay UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEditor.MathUtils.ClosestPtSegmentRay(p1, q1, ray, squaredDist, s, closestRay)end
---@param ray UnityEngine.Ray
---@param sphereOrigin UnityEngine.Vector3
---@param sphereRadius System.Single
---@param t System.Single
---@param q UnityEngine.Vector3
---@return System.Boolean
function UnityEditor.MathUtils.IntersectRaySphere(ray, sphereOrigin, sphereRadius, t, q)end
---@param ray UnityEngine.Ray
---@param sphereOrigin UnityEngine.Vector3
---@param sphereRadius System.Single
---@param t System.Single
---@param q UnityEngine.Vector3
---@return System.Boolean
function UnityEditor.MathUtils.ClosestPtRaySphere(ray, sphereOrigin, sphereRadius, t, q)end
