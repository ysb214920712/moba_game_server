---@class Unity.PackageManager.Locator : System.Object
---@field public Completed System.Boolean @static setter getter
---@field public installLocation System.String @static setter getter
---@field public moduleLocation System.String @static setter getter
Unity.PackageManager.Locator = {}
---@type Unity.PackageManager.Locator
CS.Unity.PackageManager.Locator = Unity.PackageManager.Locator

---@overload fun(scanPaths:System.String[], unityVersion:System.String):System.Void
---@overload fun(editorInstallPath:System.String, unityVersion:System.String, scanInProgressCallback:System.Func, scanDoneCallback:System.Action):System.Void
---@param editorInstallPath System.String
---@param unityVersion System.String
---@return System.Void
function Unity.PackageManager.Locator.Scan(editorInstallPath, unityVersion)end
---@return System.Collections.Generic.IEnumerable
function Unity.PackageManager.Locator.QueryAll()end
---@return System.Collections.Generic.IEnumerable
function Unity.PackageManager.Locator.QueryAllModules()end
---@param unityVersion System.String
---@return Unity.DataContract.PackageInfo
function Unity.PackageManager.Locator.GetPackageManager(unityVersion)end
---@param paths System.String[]
---@return System.String
function Unity.PackageManager.Locator.CombinePaths(paths)end
---@class Unity.PackageManager.EditorModule : System.Object
---@field public moduleInfo Unity.DataContract.PackageInfo @ setter getter
---@field public editorInstallPath System.String @ setter getter
---@field public unityVersion System.String @ setter getter
---@field public updateMode Unity.DataContract.UpdateMode @ setter getter
---@field public playbackEngines System.Collections.Generic.IEnumerable @  getter
---@field public unityExtensions System.Collections.Generic.IEnumerable @  getter
Unity.PackageManager.EditorModule = {}
---@type Unity.PackageManager.EditorModule
CS.Unity.PackageManager.EditorModule = Unity.PackageManager.EditorModule

---@return System.Void
function Unity.PackageManager.EditorModule:Initialize()end
---@param wait System.Boolean
---@return System.Void
function Unity.PackageManager.EditorModule:Shutdown(wait)end
---@return System.Void
function Unity.PackageManager.EditorModule:CheckForUpdates()end
---@param package Unity.DataContract.PackageInfo
---@return System.Void
function Unity.PackageManager.EditorModule:LoadPackage(package)end
---@param package Unity.DataContract.PackageInfo
---@return System.Void
function Unity.PackageManager.EditorModule:SelectPackage(package)end
---@return System.Void
function Unity.PackageManager.EditorModule:Dispose()end
---@class Unity.PackageManager.PackageInfoExtensions : System.Object
Unity.PackageManager.PackageInfoExtensions = {}
---@type Unity.PackageManager.PackageInfoExtensions
CS.Unity.PackageManager.PackageInfoExtensions = Unity.PackageManager.PackageInfoExtensions

---@class Unity.PackageManager.PackageManager : System.Object
---@field public Instance Unity.PackageManager.PackageManager @static setter getter
Unity.PackageManager.PackageManager = {}
---@type Unity.PackageManager.PackageManager
CS.Unity.PackageManager.PackageManager = Unity.PackageManager.PackageManager

---@param value System.Action
---@return System.Void
function Unity.PackageManager.PackageManager:add_OnTask(value)end
---@param value System.Action
---@return System.Void
function Unity.PackageManager.PackageManager:remove_OnTask(value)end
---@overload fun(module:Unity.PackageManager.Ivy.IvyModule):System.Void
---@param packageInfo Unity.DataContract.PackageInfo
---@return System.Void
function Unity.PackageManager.PackageManager.Initialize(packageInfo)end
---@return System.Void
function Unity.PackageManager.PackageManager.Start()end
---@param wait System.Boolean
---@return System.Void
function Unity.PackageManager.PackageManager.Stop(wait)end
---@return System.Void
function Unity.PackageManager.PackageManager:Dispose()end
---@class Unity.PackageManager.Settings : System.Object
---@field public downloadLocation System.String @static setter getter
---@field public editorInstallPath System.String @static setter getter
---@field public unityVersion Unity.DataContract.PackageVersion @static setter getter
---@field public teamcity System.Boolean @static  getter
---@field public inTestMode System.Boolean @static  getter
---@field public installLocation System.String @static setter getter
---@field public repoType System.String @static setter getter
---@field public RepoUrl System.Uri @static  getter
---@field public baseRepoUrl System.String @static setter getter
---@field public updateMode Unity.DataContract.UpdateMode @static setter getter
---@field public unityVersionPath System.String @static  getter
Unity.PackageManager.Settings = {}
---@type Unity.PackageManager.Settings
CS.Unity.PackageManager.Settings = Unity.PackageManager.Settings

---@param repoType System.String
---@param repoUrl System.String
---@return System.String
function Unity.PackageManager.Settings.SelectRepo(repoType, repoUrl)end
---@return System.Void
function Unity.PackageManager.Settings.CacheAllSettings()end
---@return System.Void
function Unity.PackageManager.Settings.ResetAllSettings()end
---@class Unity.PackageManager.Task : System.Object
---@field public JobId System.Guid @ setter getter
---@field public Name System.String @ setter getter
---@field public CancelRequested System.Boolean @  getter
---@field public Result System.Object @ setter getter
---@field public IsRunning System.Boolean @ setter getter
---@field public IsCompleted System.Boolean @ setter getter
---@field public IsSuccessful System.Boolean @ setter getter
---@field public Progress System.Single @ setter getter
---@field public ProgressMessage System.String @ setter getter
---@field public Restarted System.Boolean @ setter getter
---@field public Shared System.Boolean @ setter getter
---@field public AsyncWaitHandle System.Threading.WaitHandle @ setter getter
---@field public EstimatedDuration System.Int64 @ setter getter
Unity.PackageManager.Task = {}
---@type Unity.PackageManager.Task
CS.Unity.PackageManager.Task = Unity.PackageManager.Task

---@param value Unity.PackageManager.TaskStartedHandler
---@return System.Void
function Unity.PackageManager.Task:add_OnStart(value)end
---@param value Unity.PackageManager.TaskStartedHandler
---@return System.Void
function Unity.PackageManager.Task:remove_OnStart(value)end
---@param value Unity.PackageManager.TaskProgressHandler
---@return System.Void
function Unity.PackageManager.Task:add_OnProgress(value)end
---@param value Unity.PackageManager.TaskProgressHandler
---@return System.Void
function Unity.PackageManager.Task:remove_OnProgress(value)end
---@param value Unity.PackageManager.TaskFinishedHandler
---@return System.Void
function Unity.PackageManager.Task:add_OnFinish(value)end
---@param value Unity.PackageManager.TaskFinishedHandler
---@return System.Void
function Unity.PackageManager.Task:remove_OnFinish(value)end
---@return System.Void
function Unity.PackageManager.Task:Run()end
---@overload fun(wait:System.Boolean):System.Void
---@return System.Void
function Unity.PackageManager.Task:Stop()end
---@param milliseconds System.Int32
---@return System.Boolean
function Unity.PackageManager.Task:Wait(milliseconds)end
---@return System.Void
function Unity.PackageManager.Task:Cancel()end
---@return System.Void
function Unity.PackageManager.Task:Dispose()end
---@return System.Void
function Unity.PackageManager.Task:CleanupArtifacts()end
---@class Unity.PackageManager.Utils : System.Object
Unity.PackageManager.Utils = {}
---@type Unity.PackageManager.Utils
CS.Unity.PackageManager.Utils = Unity.PackageManager.Utils

---@overload fun(source:System.IO.Stream, destination:System.IO.Stream, chunkSize:System.Int32, totalSize:System.Int64, progress:System.Func, progressUpdateRate:System.Int32):System.Boolean
---@param source System.IO.Stream
---@param destination System.IO.Stream
---@param chunkSize System.Int32
---@return System.Boolean
function Unity.PackageManager.Utils.Copy(source, destination, chunkSize)end
---@class Unity.PackageManager.WebRequestExtensions : System.Object
Unity.PackageManager.WebRequestExtensions = {}
---@type Unity.PackageManager.WebRequestExtensions
CS.Unity.PackageManager.WebRequestExtensions = Unity.PackageManager.WebRequestExtensions

---@class Unity.PackageManager.Verifier : Unity.PackageManager.Task
Unity.PackageManager.Verifier = {}
---@type Unity.PackageManager.Verifier
CS.Unity.PackageManager.Verifier = Unity.PackageManager.Verifier

---@return System.Boolean
function Unity.PackageManager.Verifier:Verify()end
---@class Unity.PackageManager.IvyVerifier : Unity.PackageManager.Verifier
Unity.PackageManager.IvyVerifier = {}
---@type Unity.PackageManager.IvyVerifier
CS.Unity.PackageManager.IvyVerifier = Unity.PackageManager.IvyVerifier

---@return System.Boolean
function Unity.PackageManager.IvyVerifier:Verify()end
---@class Unity.PackageManager.BinaryVerifier : Unity.PackageManager.Verifier
Unity.PackageManager.BinaryVerifier = {}
---@type Unity.PackageManager.BinaryVerifier
CS.Unity.PackageManager.BinaryVerifier = Unity.PackageManager.BinaryVerifier

---@return System.Boolean
function Unity.PackageManager.BinaryVerifier:Verify()end
---@class Unity.PackageManager.ZipVerifier : Unity.PackageManager.Verifier
Unity.PackageManager.ZipVerifier = {}
---@type Unity.PackageManager.ZipVerifier
CS.Unity.PackageManager.ZipVerifier = Unity.PackageManager.ZipVerifier

---@return System.Boolean
function Unity.PackageManager.ZipVerifier:Verify()end
