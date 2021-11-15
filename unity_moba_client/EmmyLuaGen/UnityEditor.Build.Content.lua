---@class UnityEditor.Build.Content.SerializedLocation : System.ValueType
---@field public fileName System.String @  getter
---@field public offset System.UInt64 @  getter
---@field public size System.UInt64 @  getter
UnityEditor.Build.Content.SerializedLocation = {}
---@type UnityEditor.Build.Content.SerializedLocation
CS.UnityEditor.Build.Content.SerializedLocation = UnityEditor.Build.Content.SerializedLocation

---@class UnityEditor.Build.Content.ObjectSerializedInfo : System.ValueType
---@field public serializedObject UnityEditor.Build.Content.ObjectIdentifier @  getter
---@field public header UnityEditor.Build.Content.SerializedLocation @  getter
---@field public rawData UnityEditor.Build.Content.SerializedLocation @  getter
UnityEditor.Build.Content.ObjectSerializedInfo = {}
---@type UnityEditor.Build.Content.ObjectSerializedInfo
CS.UnityEditor.Build.Content.ObjectSerializedInfo = UnityEditor.Build.Content.ObjectSerializedInfo

---@class UnityEditor.Build.Content.WriteResult : System.ValueType
---@field public serializedObjects System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public resourceFiles System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public includedTypes System.Collections.ObjectModel.ReadOnlyCollection @  getter
UnityEditor.Build.Content.WriteResult = {}
---@type UnityEditor.Build.Content.WriteResult
CS.UnityEditor.Build.Content.WriteResult = UnityEditor.Build.Content.WriteResult

---@class UnityEditor.Build.Content.BuildReferenceMap : System.Object
UnityEditor.Build.Content.BuildReferenceMap = {}
---@type UnityEditor.Build.Content.BuildReferenceMap
CS.UnityEditor.Build.Content.BuildReferenceMap = UnityEditor.Build.Content.BuildReferenceMap

---@return System.Void
function UnityEditor.Build.Content.BuildReferenceMap:Dispose()end
---@return UnityEngine.Hash128
function UnityEditor.Build.Content.BuildReferenceMap:GetHash128()end
---@overload fun(internalFileName:System.String, serializationIndex:System.Int64, objectID:UnityEditor.Build.Content.ObjectIdentifier):System.Void
---@param internalFileName System.String
---@param serializationIndex System.Int64
---@param objectID UnityEditor.Build.Content.ObjectIdentifier
---@param overwrite System.Boolean
---@return System.Void
function UnityEditor.Build.Content.BuildReferenceMap:AddMapping(internalFileName, serializationIndex, objectID, overwrite)end
---@overload fun(internalFileName:System.String, objectIDs:UnityEditor.Build.Content.SerializationInfo[]):System.Void
---@param internalFileName System.String
---@param objectIDs UnityEditor.Build.Content.SerializationInfo[]
---@param overwrite System.Boolean
---@return System.Void
function UnityEditor.Build.Content.BuildReferenceMap:AddMappings(internalFileName, objectIDs, overwrite)end
---@param obj System.Object
---@return System.Boolean
function UnityEditor.Build.Content.BuildReferenceMap:Equals(obj)end
---@return System.Int32
function UnityEditor.Build.Content.BuildReferenceMap:GetHashCode()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function UnityEditor.Build.Content.BuildReferenceMap:GetObjectData(info, context)end
---@class UnityEditor.Build.Content.ContentBuildFlags : System.Enum
UnityEditor.Build.Content.ContentBuildFlags = {}
---@type UnityEditor.Build.Content.ContentBuildFlags
CS.UnityEditor.Build.Content.ContentBuildFlags = UnityEditor.Build.Content.ContentBuildFlags

---@return System.Int32 value:0
UnityEditor.Build.Content.ContentBuildFlags.None = 0
---@return System.Int32 value:1
UnityEditor.Build.Content.ContentBuildFlags.DisableWriteTypeTree = 1

---@class UnityEditor.Build.Content.BuildSettings : System.ValueType
---@field public typeDB UnityEditor.Build.Player.TypeDB @ setter getter
---@field public target UnityEditor.BuildTarget @ setter getter
---@field public group UnityEditor.BuildTargetGroup @ setter getter
---@field public buildFlags UnityEditor.Build.Content.ContentBuildFlags @ setter getter
UnityEditor.Build.Content.BuildSettings = {}
---@type UnityEditor.Build.Content.BuildSettings
CS.UnityEditor.Build.Content.BuildSettings = UnityEditor.Build.Content.BuildSettings

---@class UnityEditor.Build.Content.BuildUsageCache : System.Object
UnityEditor.Build.Content.BuildUsageCache = {}
---@type UnityEditor.Build.Content.BuildUsageCache
CS.UnityEditor.Build.Content.BuildUsageCache = UnityEditor.Build.Content.BuildUsageCache

---@return System.Void
function UnityEditor.Build.Content.BuildUsageCache:Dispose()end
---@class UnityEditor.Build.Content.BuildUsageTagGlobal : System.ValueType
UnityEditor.Build.Content.BuildUsageTagGlobal = {}
---@type UnityEditor.Build.Content.BuildUsageTagGlobal
CS.UnityEditor.Build.Content.BuildUsageTagGlobal = UnityEditor.Build.Content.BuildUsageTagGlobal

---@param x UnityEditor.Build.Content.BuildUsageTagGlobal
---@param y UnityEditor.Build.Content.BuildUsageTagGlobal
---@return UnityEditor.Build.Content.BuildUsageTagGlobal
function UnityEditor.Build.Content.BuildUsageTagGlobal.op_BitwiseOr(x, y)end
---@class UnityEditor.Build.Content.BuildUsageTagSet : System.Object
UnityEditor.Build.Content.BuildUsageTagSet = {}
---@type UnityEditor.Build.Content.BuildUsageTagSet
CS.UnityEditor.Build.Content.BuildUsageTagSet = UnityEditor.Build.Content.BuildUsageTagSet

---@return System.Void
function UnityEditor.Build.Content.BuildUsageTagSet:Dispose()end
---@return UnityEngine.Hash128
function UnityEditor.Build.Content.BuildUsageTagSet:GetHash128()end
---@return UnityEditor.Build.Content.ObjectIdentifier[]
function UnityEditor.Build.Content.BuildUsageTagSet:GetObjectIdentifiers()end
---@param other UnityEditor.Build.Content.BuildUsageTagSet
---@return System.Void
function UnityEditor.Build.Content.BuildUsageTagSet:UnionWith(other)end
---@param obj System.Object
---@return System.Boolean
function UnityEditor.Build.Content.BuildUsageTagSet:Equals(obj)end
---@return System.Int32
function UnityEditor.Build.Content.BuildUsageTagSet:GetHashCode()end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function UnityEditor.Build.Content.BuildUsageTagSet:GetObjectData(info, context)end
---@class UnityEditor.Build.Content.ContentBuildInterface : System.Object
UnityEditor.Build.Content.ContentBuildInterface = {}
---@type UnityEditor.Build.Content.ContentBuildInterface
CS.UnityEditor.Build.Content.ContentBuildInterface = UnityEditor.Build.Content.ContentBuildInterface

---@return UnityEditor.AssetBundleBuild[]
function UnityEditor.Build.Content.ContentBuildInterface.GenerateAssetBundleBuilds()end
---@overload fun(scenePath:System.String, settings:UnityEditor.Build.Content.BuildSettings, usageSet:UnityEditor.Build.Content.BuildUsageTagSet, usageCache:UnityEditor.Build.Content.BuildUsageCache, outputFolder:System.String):UnityEditor.Build.Content.SceneDependencyInfo
---@param scenePath System.String
---@param settings UnityEditor.Build.Content.BuildSettings
---@param usageSet UnityEditor.Build.Content.BuildUsageTagSet
---@param outputFolder System.String
---@return UnityEditor.Build.Content.SceneDependencyInfo
function UnityEditor.Build.Content.ContentBuildInterface.PrepareScene(scenePath, settings, usageSet, outputFolder)end
---@param asset UnityEditor.GUID
---@param target UnityEditor.BuildTarget
---@return UnityEditor.Build.Content.ObjectIdentifier[]
function UnityEditor.Build.Content.ContentBuildInterface.GetPlayerObjectIdentifiersInAsset(asset, target)end
---@param objectID UnityEditor.Build.Content.ObjectIdentifier
---@param target UnityEditor.BuildTarget
---@param typeDB UnityEditor.Build.Player.TypeDB
---@return UnityEditor.Build.Content.ObjectIdentifier[]
function UnityEditor.Build.Content.ContentBuildInterface.GetPlayerDependenciesForObject(objectID, target, typeDB)end
---@param objectIDs UnityEditor.Build.Content.ObjectIdentifier[]
---@param target UnityEditor.BuildTarget
---@param typeDB UnityEditor.Build.Player.TypeDB
---@return UnityEditor.Build.Content.ObjectIdentifier[]
function UnityEditor.Build.Content.ContentBuildInterface.GetPlayerDependenciesForObjects(objectIDs, target, typeDB)end
---@overload fun(objectIDs:UnityEditor.Build.Content.ObjectIdentifier[], dependentObjectIDs:UnityEditor.Build.Content.ObjectIdentifier[], globalUsage:UnityEditor.Build.Content.BuildUsageTagGlobal, usageSet:UnityEditor.Build.Content.BuildUsageTagSet, usageCache:UnityEditor.Build.Content.BuildUsageCache):System.Void
---@param objectIDs UnityEditor.Build.Content.ObjectIdentifier[]
---@param dependentObjectIDs UnityEditor.Build.Content.ObjectIdentifier[]
---@param globalUsage UnityEditor.Build.Content.BuildUsageTagGlobal
---@param usageSet UnityEditor.Build.Content.BuildUsageTagSet
---@return System.Void
function UnityEditor.Build.Content.ContentBuildInterface.CalculateBuildUsageTags(objectIDs, dependentObjectIDs, globalUsage, usageSet)end
---@param objectID UnityEditor.Build.Content.ObjectIdentifier
---@return System.Type
function UnityEditor.Build.Content.ContentBuildInterface.GetTypeForObject(objectID)end
---@param objectIDs UnityEditor.Build.Content.ObjectIdentifier[]
---@return System.Type[]
function UnityEditor.Build.Content.ContentBuildInterface.GetTypeForObjects(objectIDs)end
---@overload fun(outputFolder:System.String, writeCommand:UnityEditor.Build.Content.WriteCommand, settings:UnityEditor.Build.Content.BuildSettings, globalUsage:UnityEditor.Build.Content.BuildUsageTagGlobal, usageSet:UnityEditor.Build.Content.BuildUsageTagSet, referenceMap:UnityEditor.Build.Content.BuildReferenceMap, bundleInfo:UnityEditor.Build.Content.AssetBundleInfo):UnityEditor.Build.Content.WriteResult
---@param outputFolder System.String
---@param writeCommand UnityEditor.Build.Content.WriteCommand
---@param settings UnityEditor.Build.Content.BuildSettings
---@param globalUsage UnityEditor.Build.Content.BuildUsageTagGlobal
---@param usageSet UnityEditor.Build.Content.BuildUsageTagSet
---@param referenceMap UnityEditor.Build.Content.BuildReferenceMap
---@return UnityEditor.Build.Content.WriteResult
function UnityEditor.Build.Content.ContentBuildInterface.WriteSerializedFile(outputFolder, writeCommand, settings, globalUsage, usageSet, referenceMap)end
---@overload fun(outputFolder:System.String, scenePath:System.String, processedScene:System.String, writeCommand:UnityEditor.Build.Content.WriteCommand, settings:UnityEditor.Build.Content.BuildSettings, globalUsage:UnityEditor.Build.Content.BuildUsageTagGlobal, usageSet:UnityEditor.Build.Content.BuildUsageTagSet, referenceMap:UnityEditor.Build.Content.BuildReferenceMap, preloadInfo:UnityEditor.Build.Content.PreloadInfo):UnityEditor.Build.Content.WriteResult
---@overload fun(outputFolder:System.String, scenePath:System.String, processedScene:System.String, writeCommand:UnityEditor.Build.Content.WriteCommand, settings:UnityEditor.Build.Content.BuildSettings, globalUsage:UnityEditor.Build.Content.BuildUsageTagGlobal, usageSet:UnityEditor.Build.Content.BuildUsageTagSet, referenceMap:UnityEditor.Build.Content.BuildReferenceMap, preloadInfo:UnityEditor.Build.Content.PreloadInfo, sceneBundleInfo:UnityEditor.Build.Content.SceneBundleInfo):UnityEditor.Build.Content.WriteResult
---@param outputFolder System.String
---@param scenePath System.String
---@param processedScene System.String
---@param writeCommand UnityEditor.Build.Content.WriteCommand
---@param settings UnityEditor.Build.Content.BuildSettings
---@param globalUsage UnityEditor.Build.Content.BuildUsageTagGlobal
---@param usageSet UnityEditor.Build.Content.BuildUsageTagSet
---@param referenceMap UnityEditor.Build.Content.BuildReferenceMap
---@return UnityEditor.Build.Content.WriteResult
function UnityEditor.Build.Content.ContentBuildInterface.WriteSceneSerializedFile(outputFolder, scenePath, processedScene, writeCommand, settings, globalUsage, usageSet, referenceMap)end
---@param resourceFiles UnityEditor.Build.Content.ResourceFile[]
---@param outputBundlePath System.String
---@param compression UnityEngine.BuildCompression
---@return System.UInt32
function UnityEditor.Build.Content.ContentBuildInterface.ArchiveAndCompress(resourceFiles, outputBundlePath, compression)end
---@class UnityEditor.Build.Content.CompressionType : System.Enum
UnityEditor.Build.Content.CompressionType = {}
---@type UnityEditor.Build.Content.CompressionType
CS.UnityEditor.Build.Content.CompressionType = UnityEditor.Build.Content.CompressionType

---@return System.Int32 value:0
UnityEditor.Build.Content.CompressionType.None = 0
---@return System.Int32 value:1
UnityEditor.Build.Content.CompressionType.Lzma = 1
---@return System.Int32 value:2
UnityEditor.Build.Content.CompressionType.Lz4 = 2
---@return System.Int32 value:3
UnityEditor.Build.Content.CompressionType.Lz4HC = 3

---@class UnityEditor.Build.Content.CompressionLevel : System.Enum
UnityEditor.Build.Content.CompressionLevel = {}
---@type UnityEditor.Build.Content.CompressionLevel
CS.UnityEditor.Build.Content.CompressionLevel = UnityEditor.Build.Content.CompressionLevel

---@return System.Int32 value:0
UnityEditor.Build.Content.CompressionLevel.None = 0
---@return System.Int32 value:1
UnityEditor.Build.Content.CompressionLevel.Fastest = 1
---@return System.Int32 value:2
UnityEditor.Build.Content.CompressionLevel.Fast = 2
---@return System.Int32 value:3
UnityEditor.Build.Content.CompressionLevel.Normal = 3
---@return System.Int32 value:4
UnityEditor.Build.Content.CompressionLevel.High = 4
---@return System.Int32 value:5
UnityEditor.Build.Content.CompressionLevel.Maximum = 5

---@class UnityEditor.Build.Content.BuildCompression : System.ValueType
---@field public DefaultUncompressed UnityEditor.Build.Content.BuildCompression
---@field public DefaultLZ4 UnityEditor.Build.Content.BuildCompression
---@field public DefaultLZMA UnityEditor.Build.Content.BuildCompression
UnityEditor.Build.Content.BuildCompression = {}
---@type UnityEditor.Build.Content.BuildCompression
CS.UnityEditor.Build.Content.BuildCompression = UnityEditor.Build.Content.BuildCompression

---@class UnityEditor.Build.Content.FileType : System.Enum
UnityEditor.Build.Content.FileType = {}
---@type UnityEditor.Build.Content.FileType
CS.UnityEditor.Build.Content.FileType = UnityEditor.Build.Content.FileType

---@return System.Int32 value:0
UnityEditor.Build.Content.FileType.NonAssetType = 0
---@return System.Int32 value:1
UnityEditor.Build.Content.FileType.DeprecatedCachedAssetType = 1
---@return System.Int32 value:2
UnityEditor.Build.Content.FileType.SerializedAssetType = 2
---@return System.Int32 value:3
UnityEditor.Build.Content.FileType.MetaAssetType = 3

---@class UnityEditor.Build.Content.ObjectIdentifier : System.ValueType
---@field public guid UnityEditor.GUID @  getter
---@field public localIdentifierInFile System.Int64 @  getter
---@field public fileType UnityEditor.Build.Content.FileType @  getter
---@field public filePath System.String @  getter
UnityEditor.Build.Content.ObjectIdentifier = {}
---@type UnityEditor.Build.Content.ObjectIdentifier
CS.UnityEditor.Build.Content.ObjectIdentifier = UnityEditor.Build.Content.ObjectIdentifier

---@return System.String
function UnityEditor.Build.Content.ObjectIdentifier:ToString()end
---@param a UnityEditor.Build.Content.ObjectIdentifier
---@param b UnityEditor.Build.Content.ObjectIdentifier
---@return System.Boolean
function UnityEditor.Build.Content.ObjectIdentifier.op_Equality(a, b)end
---@param a UnityEditor.Build.Content.ObjectIdentifier
---@param b UnityEditor.Build.Content.ObjectIdentifier
---@return System.Boolean
function UnityEditor.Build.Content.ObjectIdentifier.op_Inequality(a, b)end
---@param a UnityEditor.Build.Content.ObjectIdentifier
---@param b UnityEditor.Build.Content.ObjectIdentifier
---@return System.Boolean
function UnityEditor.Build.Content.ObjectIdentifier.op_LessThan(a, b)end
---@param a UnityEditor.Build.Content.ObjectIdentifier
---@param b UnityEditor.Build.Content.ObjectIdentifier
---@return System.Boolean
function UnityEditor.Build.Content.ObjectIdentifier.op_GreaterThan(a, b)end
---@overload fun(other:UnityEditor.Build.Content.ObjectIdentifier):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEditor.Build.Content.ObjectIdentifier:Equals(obj)end
---@return System.Int32
function UnityEditor.Build.Content.ObjectIdentifier:GetHashCode()end
---@class UnityEditor.Build.Content.ResourceFile : System.ValueType
---@field public fileName System.String @  getter
---@field public fileAlias System.String @  getter
---@field public serializedFile System.Boolean @  getter
UnityEditor.Build.Content.ResourceFile = {}
---@type UnityEditor.Build.Content.ResourceFile
CS.UnityEditor.Build.Content.ResourceFile = UnityEditor.Build.Content.ResourceFile

---@class UnityEditor.Build.Content.SceneDependencyInfo : System.ValueType
---@field public scene System.String @  getter
---@field public processedScene System.String @  getter
---@field public referencedObjects System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public globalUsage UnityEditor.Build.Content.BuildUsageTagGlobal @  getter
UnityEditor.Build.Content.SceneDependencyInfo = {}
---@type UnityEditor.Build.Content.SceneDependencyInfo
CS.UnityEditor.Build.Content.SceneDependencyInfo = UnityEditor.Build.Content.SceneDependencyInfo

---@class UnityEditor.Build.Content.PreloadInfo : System.Object
---@field public preloadObjects System.Collections.Generic.List @ setter getter
UnityEditor.Build.Content.PreloadInfo = {}
---@type UnityEditor.Build.Content.PreloadInfo
CS.UnityEditor.Build.Content.PreloadInfo = UnityEditor.Build.Content.PreloadInfo

---@class UnityEditor.Build.Content.AssetLoadInfo : System.Object
---@field public asset UnityEditor.GUID @ setter getter
---@field public address System.String @ setter getter
---@field public includedObjects System.Collections.Generic.List @ setter getter
---@field public referencedObjects System.Collections.Generic.List @ setter getter
UnityEditor.Build.Content.AssetLoadInfo = {}
---@type UnityEditor.Build.Content.AssetLoadInfo
CS.UnityEditor.Build.Content.AssetLoadInfo = UnityEditor.Build.Content.AssetLoadInfo

---@class UnityEditor.Build.Content.AssetBundleInfo : System.Object
---@field public bundleName System.String @ setter getter
---@field public bundleAssets System.Collections.Generic.List @ setter getter
UnityEditor.Build.Content.AssetBundleInfo = {}
---@type UnityEditor.Build.Content.AssetBundleInfo
CS.UnityEditor.Build.Content.AssetBundleInfo = UnityEditor.Build.Content.AssetBundleInfo

---@class UnityEditor.Build.Content.SceneLoadInfo : System.Object
---@field public asset UnityEditor.GUID @ setter getter
---@field public address System.String @ setter getter
---@field public internalName System.String @ setter getter
UnityEditor.Build.Content.SceneLoadInfo = {}
---@type UnityEditor.Build.Content.SceneLoadInfo
CS.UnityEditor.Build.Content.SceneLoadInfo = UnityEditor.Build.Content.SceneLoadInfo

---@class UnityEditor.Build.Content.SceneBundleInfo : System.Object
---@field public bundleName System.String @ setter getter
---@field public bundleScenes System.Collections.Generic.List @ setter getter
UnityEditor.Build.Content.SceneBundleInfo = {}
---@type UnityEditor.Build.Content.SceneBundleInfo
CS.UnityEditor.Build.Content.SceneBundleInfo = UnityEditor.Build.Content.SceneBundleInfo

---@class UnityEditor.Build.Content.SerializationInfo : System.Object
---@field public serializationObject UnityEditor.Build.Content.ObjectIdentifier @ setter getter
---@field public serializationIndex System.Int64 @ setter getter
UnityEditor.Build.Content.SerializationInfo = {}
---@type UnityEditor.Build.Content.SerializationInfo
CS.UnityEditor.Build.Content.SerializationInfo = UnityEditor.Build.Content.SerializationInfo

---@class UnityEditor.Build.Content.WriteCommand : System.Object
---@field public fileName System.String @ setter getter
---@field public internalName System.String @ setter getter
---@field public serializeObjects System.Collections.Generic.List @ setter getter
UnityEditor.Build.Content.WriteCommand = {}
---@type UnityEditor.Build.Content.WriteCommand
CS.UnityEditor.Build.Content.WriteCommand = UnityEditor.Build.Content.WriteCommand

