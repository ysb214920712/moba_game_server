---@class UnityEngine.Rendering.AsyncGPUReadbackRequest : System.ValueType
---@field public done System.Boolean @  getter
---@field public hasError System.Boolean @  getter
---@field public layerCount System.Int32 @  getter
---@field public layerDataSize System.Int32 @  getter
---@field public width System.Int32 @  getter
---@field public height System.Int32 @  getter
---@field public depth System.Int32 @  getter
UnityEngine.Rendering.AsyncGPUReadbackRequest = {}
---@type UnityEngine.Rendering.AsyncGPUReadbackRequest
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest = UnityEngine.Rendering.AsyncGPUReadbackRequest

---@return System.Void
function UnityEngine.Rendering.AsyncGPUReadbackRequest:Update()end
---@return System.Void
function UnityEngine.Rendering.AsyncGPUReadbackRequest:WaitForCompletion()end
---@overload fun():any
---@param layer System.Int32
---@return any
function UnityEngine.Rendering.AsyncGPUReadbackRequest:GetData(layer)end
---@class UnityEngine.Rendering.AsyncGPUReadback : System.Object
UnityEngine.Rendering.AsyncGPUReadback = {}
---@type UnityEngine.Rendering.AsyncGPUReadback
CS.UnityEngine.Rendering.AsyncGPUReadback = UnityEngine.Rendering.AsyncGPUReadback

---@overload fun(src:UnityEngine.ComputeBuffer):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.ComputeBuffer, size:System.Int32, offset:System.Int32):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.ComputeBuffer, size:System.Int32, offset:System.Int32):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, dstFormat:UnityEngine.TextureFormat):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, dstFormat:UnityEngine.TextureFormat):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32, dstFormat:UnityEngine.TextureFormat):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32, dstFormat:UnityEngine.TextureFormat):UnityEngine.Rendering.AsyncGPUReadbackRequest
---@param src UnityEngine.ComputeBuffer
---@param callback System.Action
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest
function UnityEngine.Rendering.AsyncGPUReadback.Request(src, callback)end
---@class UnityEngine.Rendering.SynchronisationStage : System.Enum
UnityEngine.Rendering.SynchronisationStage = {}
---@type UnityEngine.Rendering.SynchronisationStage
CS.UnityEngine.Rendering.SynchronisationStage = UnityEngine.Rendering.SynchronisationStage

---@return System.Int32 value:0
UnityEngine.Rendering.SynchronisationStage.VertexProcessing = 0
---@return System.Int32 value:1
UnityEngine.Rendering.SynchronisationStage.PixelProcessing = 1

---@class UnityEngine.Rendering.GPUFence : System.ValueType
---@field public passed System.Boolean @  getter
UnityEngine.Rendering.GPUFence = {}
---@type UnityEngine.Rendering.GPUFence
CS.UnityEngine.Rendering.GPUFence = UnityEngine.Rendering.GPUFence

---@class UnityEngine.Rendering.ShaderHardwareTier : System.Enum
UnityEngine.Rendering.ShaderHardwareTier = {}
---@type UnityEngine.Rendering.ShaderHardwareTier
CS.UnityEngine.Rendering.ShaderHardwareTier = UnityEngine.Rendering.ShaderHardwareTier

---@return System.Int32 value:0
UnityEngine.Rendering.ShaderHardwareTier.Tier1 = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ShaderHardwareTier.Tier2 = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ShaderHardwareTier.Tier3 = 2

---@class UnityEngine.Rendering.IndexFormat : System.Enum
UnityEngine.Rendering.IndexFormat = {}
---@type UnityEngine.Rendering.IndexFormat
CS.UnityEngine.Rendering.IndexFormat = UnityEngine.Rendering.IndexFormat

---@return System.Int32 value:0
UnityEngine.Rendering.IndexFormat.UInt16 = 0
---@return System.Int32 value:1
UnityEngine.Rendering.IndexFormat.UInt32 = 1

---@class UnityEngine.Rendering.VertexAttribute : System.Enum
UnityEngine.Rendering.VertexAttribute = {}
---@type UnityEngine.Rendering.VertexAttribute
CS.UnityEngine.Rendering.VertexAttribute = UnityEngine.Rendering.VertexAttribute

---@return System.Int32 value:0
UnityEngine.Rendering.VertexAttribute.Position = 0
---@return System.Int32 value:1
UnityEngine.Rendering.VertexAttribute.Normal = 1
---@return System.Int32 value:2
UnityEngine.Rendering.VertexAttribute.Tangent = 2
---@return System.Int32 value:3
UnityEngine.Rendering.VertexAttribute.Color = 3
---@return System.Int32 value:4
UnityEngine.Rendering.VertexAttribute.TexCoord0 = 4
---@return System.Int32 value:5
UnityEngine.Rendering.VertexAttribute.TexCoord1 = 5
---@return System.Int32 value:6
UnityEngine.Rendering.VertexAttribute.TexCoord2 = 6
---@return System.Int32 value:7
UnityEngine.Rendering.VertexAttribute.TexCoord3 = 7
---@return System.Int32 value:8
UnityEngine.Rendering.VertexAttribute.TexCoord4 = 8
---@return System.Int32 value:9
UnityEngine.Rendering.VertexAttribute.TexCoord5 = 9
---@return System.Int32 value:10
UnityEngine.Rendering.VertexAttribute.TexCoord6 = 10
---@return System.Int32 value:11
UnityEngine.Rendering.VertexAttribute.TexCoord7 = 11
---@return System.Int32 value:12
UnityEngine.Rendering.VertexAttribute.BlendWeight = 12
---@return System.Int32 value:13
UnityEngine.Rendering.VertexAttribute.BlendIndices = 13

---@class UnityEngine.Rendering.OpaqueSortMode : System.Enum
UnityEngine.Rendering.OpaqueSortMode = {}
---@type UnityEngine.Rendering.OpaqueSortMode
CS.UnityEngine.Rendering.OpaqueSortMode = UnityEngine.Rendering.OpaqueSortMode

---@return System.Int32 value:0
UnityEngine.Rendering.OpaqueSortMode.Default = 0
---@return System.Int32 value:1
UnityEngine.Rendering.OpaqueSortMode.FrontToBack = 1
---@return System.Int32 value:2
UnityEngine.Rendering.OpaqueSortMode.NoDistanceSort = 2

---@class UnityEngine.Rendering.RenderQueue : System.Enum
UnityEngine.Rendering.RenderQueue = {}
---@type UnityEngine.Rendering.RenderQueue
CS.UnityEngine.Rendering.RenderQueue = UnityEngine.Rendering.RenderQueue


---@class UnityEngine.Rendering.RenderBufferLoadAction : System.Enum
UnityEngine.Rendering.RenderBufferLoadAction = {}
---@type UnityEngine.Rendering.RenderBufferLoadAction
CS.UnityEngine.Rendering.RenderBufferLoadAction = UnityEngine.Rendering.RenderBufferLoadAction

---@return System.Int32 value:0
UnityEngine.Rendering.RenderBufferLoadAction.Load = 0
---@return System.Int32 value:1
UnityEngine.Rendering.RenderBufferLoadAction.Clear = 1
---@return System.Int32 value:2
UnityEngine.Rendering.RenderBufferLoadAction.DontCare = 2

---@class UnityEngine.Rendering.RenderBufferStoreAction : System.Enum
UnityEngine.Rendering.RenderBufferStoreAction = {}
---@type UnityEngine.Rendering.RenderBufferStoreAction
CS.UnityEngine.Rendering.RenderBufferStoreAction = UnityEngine.Rendering.RenderBufferStoreAction

---@return System.Int32 value:0
UnityEngine.Rendering.RenderBufferStoreAction.Store = 0
---@return System.Int32 value:1
UnityEngine.Rendering.RenderBufferStoreAction.Resolve = 1
---@return System.Int32 value:2
UnityEngine.Rendering.RenderBufferStoreAction.StoreAndResolve = 2
---@return System.Int32 value:3
UnityEngine.Rendering.RenderBufferStoreAction.DontCare = 3

---@class UnityEngine.Rendering.BlendMode : System.Enum
UnityEngine.Rendering.BlendMode = {}
---@type UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.BlendMode = UnityEngine.Rendering.BlendMode

---@return System.Int32 value:0
UnityEngine.Rendering.BlendMode.Zero = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BlendMode.One = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BlendMode.DstColor = 2
---@return System.Int32 value:3
UnityEngine.Rendering.BlendMode.SrcColor = 3
---@return System.Int32 value:4
UnityEngine.Rendering.BlendMode.OneMinusDstColor = 4
---@return System.Int32 value:5
UnityEngine.Rendering.BlendMode.SrcAlpha = 5
---@return System.Int32 value:6
UnityEngine.Rendering.BlendMode.OneMinusSrcColor = 6
---@return System.Int32 value:7
UnityEngine.Rendering.BlendMode.DstAlpha = 7
---@return System.Int32 value:8
UnityEngine.Rendering.BlendMode.OneMinusDstAlpha = 8
---@return System.Int32 value:9
UnityEngine.Rendering.BlendMode.SrcAlphaSaturate = 9
---@return System.Int32 value:10
UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha = 10

---@class UnityEngine.Rendering.BlendOp : System.Enum
UnityEngine.Rendering.BlendOp = {}
---@type UnityEngine.Rendering.BlendOp
CS.UnityEngine.Rendering.BlendOp = UnityEngine.Rendering.BlendOp

---@return System.Int32 value:0
UnityEngine.Rendering.BlendOp.Add = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BlendOp.Subtract = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BlendOp.ReverseSubtract = 2
---@return System.Int32 value:3
UnityEngine.Rendering.BlendOp.Min = 3
---@return System.Int32 value:4
UnityEngine.Rendering.BlendOp.Max = 4
---@return System.Int32 value:5
UnityEngine.Rendering.BlendOp.LogicalClear = 5
---@return System.Int32 value:6
UnityEngine.Rendering.BlendOp.LogicalSet = 6
---@return System.Int32 value:7
UnityEngine.Rendering.BlendOp.LogicalCopy = 7
---@return System.Int32 value:8
UnityEngine.Rendering.BlendOp.LogicalCopyInverted = 8
---@return System.Int32 value:9
UnityEngine.Rendering.BlendOp.LogicalNoop = 9
---@return System.Int32 value:10
UnityEngine.Rendering.BlendOp.LogicalInvert = 10
---@return System.Int32 value:11
UnityEngine.Rendering.BlendOp.LogicalAnd = 11
---@return System.Int32 value:12
UnityEngine.Rendering.BlendOp.LogicalNand = 12
---@return System.Int32 value:13
UnityEngine.Rendering.BlendOp.LogicalOr = 13
---@return System.Int32 value:14
UnityEngine.Rendering.BlendOp.LogicalNor = 14
---@return System.Int32 value:15
UnityEngine.Rendering.BlendOp.LogicalXor = 15
---@return System.Int32 value:16
UnityEngine.Rendering.BlendOp.LogicalEquivalence = 16
---@return System.Int32 value:17
UnityEngine.Rendering.BlendOp.LogicalAndReverse = 17
---@return System.Int32 value:18
UnityEngine.Rendering.BlendOp.LogicalAndInverted = 18
---@return System.Int32 value:19
UnityEngine.Rendering.BlendOp.LogicalOrReverse = 19
---@return System.Int32 value:20
UnityEngine.Rendering.BlendOp.LogicalOrInverted = 20
---@return System.Int32 value:21
UnityEngine.Rendering.BlendOp.Multiply = 21
---@return System.Int32 value:22
UnityEngine.Rendering.BlendOp.Screen = 22
---@return System.Int32 value:23
UnityEngine.Rendering.BlendOp.Overlay = 23
---@return System.Int32 value:24
UnityEngine.Rendering.BlendOp.Darken = 24
---@return System.Int32 value:25
UnityEngine.Rendering.BlendOp.Lighten = 25
---@return System.Int32 value:26
UnityEngine.Rendering.BlendOp.ColorDodge = 26
---@return System.Int32 value:27
UnityEngine.Rendering.BlendOp.ColorBurn = 27
---@return System.Int32 value:28
UnityEngine.Rendering.BlendOp.HardLight = 28
---@return System.Int32 value:29
UnityEngine.Rendering.BlendOp.SoftLight = 29
---@return System.Int32 value:30
UnityEngine.Rendering.BlendOp.Difference = 30
---@return System.Int32 value:31
UnityEngine.Rendering.BlendOp.Exclusion = 31
---@return System.Int32 value:32
UnityEngine.Rendering.BlendOp.HSLHue = 32
---@return System.Int32 value:33
UnityEngine.Rendering.BlendOp.HSLSaturation = 33
---@return System.Int32 value:34
UnityEngine.Rendering.BlendOp.HSLColor = 34
---@return System.Int32 value:35
UnityEngine.Rendering.BlendOp.HSLLuminosity = 35

---@class UnityEngine.Rendering.CompareFunction : System.Enum
UnityEngine.Rendering.CompareFunction = {}
---@type UnityEngine.Rendering.CompareFunction
CS.UnityEngine.Rendering.CompareFunction = UnityEngine.Rendering.CompareFunction

---@return System.Int32 value:0
UnityEngine.Rendering.CompareFunction.Disabled = 0
---@return System.Int32 value:1
UnityEngine.Rendering.CompareFunction.Never = 1
---@return System.Int32 value:2
UnityEngine.Rendering.CompareFunction.Less = 2
---@return System.Int32 value:3
UnityEngine.Rendering.CompareFunction.Equal = 3
---@return System.Int32 value:4
UnityEngine.Rendering.CompareFunction.LessEqual = 4
---@return System.Int32 value:5
UnityEngine.Rendering.CompareFunction.Greater = 5
---@return System.Int32 value:6
UnityEngine.Rendering.CompareFunction.NotEqual = 6
---@return System.Int32 value:7
UnityEngine.Rendering.CompareFunction.GreaterEqual = 7
---@return System.Int32 value:8
UnityEngine.Rendering.CompareFunction.Always = 8

---@class UnityEngine.Rendering.CullMode : System.Enum
UnityEngine.Rendering.CullMode = {}
---@type UnityEngine.Rendering.CullMode
CS.UnityEngine.Rendering.CullMode = UnityEngine.Rendering.CullMode

---@return System.Int32 value:0
UnityEngine.Rendering.CullMode.Off = 0
---@return System.Int32 value:1
UnityEngine.Rendering.CullMode.Front = 1
---@return System.Int32 value:2
UnityEngine.Rendering.CullMode.Back = 2

---@class UnityEngine.Rendering.ColorWriteMask : System.Enum
UnityEngine.Rendering.ColorWriteMask = {}
---@type UnityEngine.Rendering.ColorWriteMask
CS.UnityEngine.Rendering.ColorWriteMask = UnityEngine.Rendering.ColorWriteMask

---@return System.Int32 value:1
UnityEngine.Rendering.ColorWriteMask.Alpha = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ColorWriteMask.Blue = 2
---@return System.Int32 value:4
UnityEngine.Rendering.ColorWriteMask.Green = 4

---@class UnityEngine.Rendering.StencilOp : System.Enum
UnityEngine.Rendering.StencilOp = {}
---@type UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilOp = UnityEngine.Rendering.StencilOp

---@return System.Int32 value:0
UnityEngine.Rendering.StencilOp.Keep = 0
---@return System.Int32 value:1
UnityEngine.Rendering.StencilOp.Zero = 1
---@return System.Int32 value:2
UnityEngine.Rendering.StencilOp.Replace = 2
---@return System.Int32 value:3
UnityEngine.Rendering.StencilOp.IncrementSaturate = 3
---@return System.Int32 value:4
UnityEngine.Rendering.StencilOp.DecrementSaturate = 4
---@return System.Int32 value:5
UnityEngine.Rendering.StencilOp.Invert = 5
---@return System.Int32 value:6
UnityEngine.Rendering.StencilOp.IncrementWrap = 6
---@return System.Int32 value:7
UnityEngine.Rendering.StencilOp.DecrementWrap = 7

---@class UnityEngine.Rendering.AmbientMode : System.Enum
UnityEngine.Rendering.AmbientMode = {}
---@type UnityEngine.Rendering.AmbientMode
CS.UnityEngine.Rendering.AmbientMode = UnityEngine.Rendering.AmbientMode

---@return System.Int32 value:0
UnityEngine.Rendering.AmbientMode.Skybox = 0
---@return System.Int32 value:1
UnityEngine.Rendering.AmbientMode.Trilight = 1
---@return System.Int32 value:3
UnityEngine.Rendering.AmbientMode.Flat = 3

---@class UnityEngine.Rendering.DefaultReflectionMode : System.Enum
UnityEngine.Rendering.DefaultReflectionMode = {}
---@type UnityEngine.Rendering.DefaultReflectionMode
CS.UnityEngine.Rendering.DefaultReflectionMode = UnityEngine.Rendering.DefaultReflectionMode

---@return System.Int32 value:0
UnityEngine.Rendering.DefaultReflectionMode.Skybox = 0
---@return System.Int32 value:1
UnityEngine.Rendering.DefaultReflectionMode.Custom = 1

---@class UnityEngine.Rendering.ReflectionCubemapCompression : System.Enum
UnityEngine.Rendering.ReflectionCubemapCompression = {}
---@type UnityEngine.Rendering.ReflectionCubemapCompression
CS.UnityEngine.Rendering.ReflectionCubemapCompression = UnityEngine.Rendering.ReflectionCubemapCompression

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionCubemapCompression.Uncompressed = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionCubemapCompression.Compressed = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ReflectionCubemapCompression.Auto = 2

---@class UnityEngine.Rendering.CameraEvent : System.Enum
UnityEngine.Rendering.CameraEvent = {}
---@type UnityEngine.Rendering.CameraEvent
CS.UnityEngine.Rendering.CameraEvent = UnityEngine.Rendering.CameraEvent

---@return System.Int32 value:0
UnityEngine.Rendering.CameraEvent.BeforeDepthTexture = 0
---@return System.Int32 value:1
UnityEngine.Rendering.CameraEvent.AfterDepthTexture = 1
---@return System.Int32 value:2
UnityEngine.Rendering.CameraEvent.BeforeDepthNormalsTexture = 2
---@return System.Int32 value:3
UnityEngine.Rendering.CameraEvent.AfterDepthNormalsTexture = 3
---@return System.Int32 value:4
UnityEngine.Rendering.CameraEvent.BeforeGBuffer = 4
---@return System.Int32 value:5
UnityEngine.Rendering.CameraEvent.AfterGBuffer = 5
---@return System.Int32 value:6
UnityEngine.Rendering.CameraEvent.BeforeLighting = 6
---@return System.Int32 value:7
UnityEngine.Rendering.CameraEvent.AfterLighting = 7
---@return System.Int32 value:8
UnityEngine.Rendering.CameraEvent.BeforeFinalPass = 8
---@return System.Int32 value:9
UnityEngine.Rendering.CameraEvent.AfterFinalPass = 9
---@return System.Int32 value:10
UnityEngine.Rendering.CameraEvent.BeforeForwardOpaque = 10
---@return System.Int32 value:11
UnityEngine.Rendering.CameraEvent.AfterForwardOpaque = 11
---@return System.Int32 value:12
UnityEngine.Rendering.CameraEvent.BeforeImageEffectsOpaque = 12
---@return System.Int32 value:13
UnityEngine.Rendering.CameraEvent.AfterImageEffectsOpaque = 13
---@return System.Int32 value:14
UnityEngine.Rendering.CameraEvent.BeforeSkybox = 14
---@return System.Int32 value:15
UnityEngine.Rendering.CameraEvent.AfterSkybox = 15
---@return System.Int32 value:16
UnityEngine.Rendering.CameraEvent.BeforeForwardAlpha = 16
---@return System.Int32 value:17
UnityEngine.Rendering.CameraEvent.AfterForwardAlpha = 17
---@return System.Int32 value:18
UnityEngine.Rendering.CameraEvent.BeforeImageEffects = 18
---@return System.Int32 value:19
UnityEngine.Rendering.CameraEvent.AfterImageEffects = 19
---@return System.Int32 value:20
UnityEngine.Rendering.CameraEvent.AfterEverything = 20
---@return System.Int32 value:21
UnityEngine.Rendering.CameraEvent.BeforeReflections = 21
---@return System.Int32 value:22
UnityEngine.Rendering.CameraEvent.AfterReflections = 22
---@return System.Int32 value:23
UnityEngine.Rendering.CameraEvent.BeforeHaloAndLensFlares = 23
---@return System.Int32 value:24
UnityEngine.Rendering.CameraEvent.AfterHaloAndLensFlares = 24

---@class UnityEngine.Rendering.LightEvent : System.Enum
UnityEngine.Rendering.LightEvent = {}
---@type UnityEngine.Rendering.LightEvent
CS.UnityEngine.Rendering.LightEvent = UnityEngine.Rendering.LightEvent

---@return System.Int32 value:0
UnityEngine.Rendering.LightEvent.BeforeShadowMap = 0
---@return System.Int32 value:1
UnityEngine.Rendering.LightEvent.AfterShadowMap = 1
---@return System.Int32 value:2
UnityEngine.Rendering.LightEvent.BeforeScreenspaceMask = 2
---@return System.Int32 value:3
UnityEngine.Rendering.LightEvent.AfterScreenspaceMask = 3
---@return System.Int32 value:4
UnityEngine.Rendering.LightEvent.BeforeShadowMapPass = 4
---@return System.Int32 value:5
UnityEngine.Rendering.LightEvent.AfterShadowMapPass = 5

---@class UnityEngine.Rendering.ShadowMapPass : System.Enum
UnityEngine.Rendering.ShadowMapPass = {}
---@type UnityEngine.Rendering.ShadowMapPass
CS.UnityEngine.Rendering.ShadowMapPass = UnityEngine.Rendering.ShadowMapPass

---@return System.Int32 value:1
UnityEngine.Rendering.ShadowMapPass.PointlightPositiveX = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ShadowMapPass.PointlightNegativeX = 2
---@return System.Int32 value:4
UnityEngine.Rendering.ShadowMapPass.PointlightPositiveY = 4
---@return System.Int32 value:8
UnityEngine.Rendering.ShadowMapPass.PointlightNegativeY = 8

---@class UnityEngine.Rendering.BuiltinRenderTextureType : System.Enum
UnityEngine.Rendering.BuiltinRenderTextureType = {}
---@type UnityEngine.Rendering.BuiltinRenderTextureType
CS.UnityEngine.Rendering.BuiltinRenderTextureType = UnityEngine.Rendering.BuiltinRenderTextureType

---@return System.Int32 value:0
UnityEngine.Rendering.BuiltinRenderTextureType.None = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BuiltinRenderTextureType.CurrentActive = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BuiltinRenderTextureType.CameraTarget = 2
---@return System.Int32 value:3
UnityEngine.Rendering.BuiltinRenderTextureType.Depth = 3
---@return System.Int32 value:4
UnityEngine.Rendering.BuiltinRenderTextureType.DepthNormals = 4
---@return System.Int32 value:5
UnityEngine.Rendering.BuiltinRenderTextureType.ResolvedDepth = 5
---@return System.Int32 value:7
UnityEngine.Rendering.BuiltinRenderTextureType.PrepassNormalsSpec = 7
---@return System.Int32 value:8
UnityEngine.Rendering.BuiltinRenderTextureType.PrepassLight = 8
---@return System.Int32 value:9
UnityEngine.Rendering.BuiltinRenderTextureType.PrepassLightSpec = 9
---@return System.Int32 value:10
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer0 = 10
---@return System.Int32 value:11
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer1 = 11
---@return System.Int32 value:12
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer2 = 12
---@return System.Int32 value:13
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer3 = 13
---@return System.Int32 value:14
UnityEngine.Rendering.BuiltinRenderTextureType.Reflections = 14
---@return System.Int32 value:15
UnityEngine.Rendering.BuiltinRenderTextureType.MotionVectors = 15
---@return System.Int32 value:16
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer4 = 16
---@return System.Int32 value:17
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer5 = 17
---@return System.Int32 value:18
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer6 = 18
---@return System.Int32 value:19
UnityEngine.Rendering.BuiltinRenderTextureType.GBuffer7 = 19

---@class UnityEngine.Rendering.PassType : System.Enum
UnityEngine.Rendering.PassType = {}
---@type UnityEngine.Rendering.PassType
CS.UnityEngine.Rendering.PassType = UnityEngine.Rendering.PassType

---@return System.Int32 value:0
UnityEngine.Rendering.PassType.Normal = 0
---@return System.Int32 value:1
UnityEngine.Rendering.PassType.Vertex = 1
---@return System.Int32 value:2
UnityEngine.Rendering.PassType.VertexLM = 2
---@return System.Int32 value:3
UnityEngine.Rendering.PassType.VertexLMRGBM = 3
---@return System.Int32 value:4
UnityEngine.Rendering.PassType.ForwardBase = 4
---@return System.Int32 value:5
UnityEngine.Rendering.PassType.ForwardAdd = 5
---@return System.Int32 value:6
UnityEngine.Rendering.PassType.LightPrePassBase = 6
---@return System.Int32 value:7
UnityEngine.Rendering.PassType.LightPrePassFinal = 7
---@return System.Int32 value:8
UnityEngine.Rendering.PassType.ShadowCaster = 8
---@return System.Int32 value:10
UnityEngine.Rendering.PassType.Deferred = 10
---@return System.Int32 value:11
UnityEngine.Rendering.PassType.Meta = 11
---@return System.Int32 value:12
UnityEngine.Rendering.PassType.MotionVectors = 12
---@return System.Int32 value:13
UnityEngine.Rendering.PassType.ScriptableRenderPipeline = 13

---@class UnityEngine.Rendering.ShadowCastingMode : System.Enum
UnityEngine.Rendering.ShadowCastingMode = {}
---@type UnityEngine.Rendering.ShadowCastingMode
CS.UnityEngine.Rendering.ShadowCastingMode = UnityEngine.Rendering.ShadowCastingMode

---@return System.Int32 value:0
UnityEngine.Rendering.ShadowCastingMode.Off = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ShadowCastingMode.On = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ShadowCastingMode.TwoSided = 2
---@return System.Int32 value:3
UnityEngine.Rendering.ShadowCastingMode.ShadowsOnly = 3

---@class UnityEngine.Rendering.LightShadowResolution : System.Enum
UnityEngine.Rendering.LightShadowResolution = {}
---@type UnityEngine.Rendering.LightShadowResolution
CS.UnityEngine.Rendering.LightShadowResolution = UnityEngine.Rendering.LightShadowResolution

---@return System.Int32 value:0
UnityEngine.Rendering.LightShadowResolution.Low = 0
---@return System.Int32 value:1
UnityEngine.Rendering.LightShadowResolution.Medium = 1
---@return System.Int32 value:2
UnityEngine.Rendering.LightShadowResolution.High = 2
---@return System.Int32 value:3
UnityEngine.Rendering.LightShadowResolution.VeryHigh = 3

---@class UnityEngine.Rendering.GraphicsDeviceType : System.Enum
UnityEngine.Rendering.GraphicsDeviceType = {}
---@type UnityEngine.Rendering.GraphicsDeviceType
CS.UnityEngine.Rendering.GraphicsDeviceType = UnityEngine.Rendering.GraphicsDeviceType

---@return System.Int32 value:0
UnityEngine.Rendering.GraphicsDeviceType.OpenGL2 = 0
---@return System.Int32 value:1
UnityEngine.Rendering.GraphicsDeviceType.Direct3D9 = 1
---@return System.Int32 value:2
UnityEngine.Rendering.GraphicsDeviceType.Direct3D11 = 2
---@return System.Int32 value:3
UnityEngine.Rendering.GraphicsDeviceType.PlayStation3 = 3
---@return System.Int32 value:4
UnityEngine.Rendering.GraphicsDeviceType.Null = 4
---@return System.Int32 value:6
UnityEngine.Rendering.GraphicsDeviceType.Xbox360 = 6
---@return System.Int32 value:8
UnityEngine.Rendering.GraphicsDeviceType.OpenGLES2 = 8
---@return System.Int32 value:11
UnityEngine.Rendering.GraphicsDeviceType.OpenGLES3 = 11
---@return System.Int32 value:12
UnityEngine.Rendering.GraphicsDeviceType.PlayStationVita = 12
---@return System.Int32 value:13
UnityEngine.Rendering.GraphicsDeviceType.PlayStation4 = 13
---@return System.Int32 value:14
UnityEngine.Rendering.GraphicsDeviceType.XboxOne = 14
---@return System.Int32 value:15
UnityEngine.Rendering.GraphicsDeviceType.PlayStationMobile = 15
---@return System.Int32 value:16
UnityEngine.Rendering.GraphicsDeviceType.Metal = 16
---@return System.Int32 value:17
UnityEngine.Rendering.GraphicsDeviceType.OpenGLCore = 17
---@return System.Int32 value:18
UnityEngine.Rendering.GraphicsDeviceType.Direct3D12 = 18

---@class UnityEngine.Rendering.GraphicsTier : System.Enum
UnityEngine.Rendering.GraphicsTier = {}
---@type UnityEngine.Rendering.GraphicsTier
CS.UnityEngine.Rendering.GraphicsTier = UnityEngine.Rendering.GraphicsTier

---@return System.Int32 value:0
UnityEngine.Rendering.GraphicsTier.Tier1 = 0
---@return System.Int32 value:1
UnityEngine.Rendering.GraphicsTier.Tier2 = 1
---@return System.Int32 value:2
UnityEngine.Rendering.GraphicsTier.Tier3 = 2

---@class UnityEngine.Rendering.RenderTargetIdentifier : System.ValueType
UnityEngine.Rendering.RenderTargetIdentifier = {}
---@type UnityEngine.Rendering.RenderTargetIdentifier
CS.UnityEngine.Rendering.RenderTargetIdentifier = UnityEngine.Rendering.RenderTargetIdentifier

---@overload fun(type:UnityEngine.Rendering.BuiltinRenderTextureType):UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(name:System.String):UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(tex:UnityEngine.Texture):UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(buf:UnityEngine.RenderBuffer):UnityEngine.Rendering.RenderTargetIdentifier
---@param nameID System.Int32
---@return UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(nameID)end
---@return System.String
function UnityEngine.Rendering.RenderTargetIdentifier:ToString()end
---@return System.Int32
function UnityEngine.Rendering.RenderTargetIdentifier:GetHashCode()end
---@overload fun(obj:System.Object):System.Boolean
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Boolean
function UnityEngine.Rendering.RenderTargetIdentifier:Equals(rhs)end
---@param lhs UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Boolean
function UnityEngine.Rendering.RenderTargetIdentifier.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Boolean
function UnityEngine.Rendering.RenderTargetIdentifier.op_Inequality(lhs, rhs)end
---@class UnityEngine.Rendering.RenderTargetBinding : System.ValueType
---@field public colorRenderTargets UnityEngine.Rendering.RenderTargetIdentifier[] @ setter getter
---@field public depthRenderTarget UnityEngine.Rendering.RenderTargetIdentifier @ setter getter
---@field public colorLoadActions UnityEngine.Rendering.RenderBufferLoadAction[] @ setter getter
---@field public colorStoreActions UnityEngine.Rendering.RenderBufferStoreAction[] @ setter getter
---@field public depthLoadAction UnityEngine.Rendering.RenderBufferLoadAction @ setter getter
---@field public depthStoreAction UnityEngine.Rendering.RenderBufferStoreAction @ setter getter
UnityEngine.Rendering.RenderTargetBinding = {}
---@type UnityEngine.Rendering.RenderTargetBinding
CS.UnityEngine.Rendering.RenderTargetBinding = UnityEngine.Rendering.RenderTargetBinding

---@class UnityEngine.Rendering.ReflectionProbeUsage : System.Enum
UnityEngine.Rendering.ReflectionProbeUsage = {}
---@type UnityEngine.Rendering.ReflectionProbeUsage
CS.UnityEngine.Rendering.ReflectionProbeUsage = UnityEngine.Rendering.ReflectionProbeUsage

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionProbeUsage.Off = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeUsage.BlendProbes = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ReflectionProbeUsage.BlendProbesAndSkybox = 2
---@return System.Int32 value:3
UnityEngine.Rendering.ReflectionProbeUsage.Simple = 3

---@class UnityEngine.Rendering.ReflectionProbeType : System.Enum
UnityEngine.Rendering.ReflectionProbeType = {}
---@type UnityEngine.Rendering.ReflectionProbeType
CS.UnityEngine.Rendering.ReflectionProbeType = UnityEngine.Rendering.ReflectionProbeType

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionProbeType.Cube = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeType.Card = 1

---@class UnityEngine.Rendering.ReflectionProbeClearFlags : System.Enum
UnityEngine.Rendering.ReflectionProbeClearFlags = {}
---@type UnityEngine.Rendering.ReflectionProbeClearFlags
CS.UnityEngine.Rendering.ReflectionProbeClearFlags = UnityEngine.Rendering.ReflectionProbeClearFlags

---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeClearFlags.Skybox = 1

---@class UnityEngine.Rendering.ReflectionProbeMode : System.Enum
UnityEngine.Rendering.ReflectionProbeMode = {}
---@type UnityEngine.Rendering.ReflectionProbeMode
CS.UnityEngine.Rendering.ReflectionProbeMode = UnityEngine.Rendering.ReflectionProbeMode

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionProbeMode.Baked = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeMode.Realtime = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ReflectionProbeMode.Custom = 2

---@class UnityEngine.Rendering.ReflectionProbeBlendInfo : System.ValueType
---@field public probe UnityEngine.ReflectionProbe
---@field public weight System.Single
UnityEngine.Rendering.ReflectionProbeBlendInfo = {}
---@type UnityEngine.Rendering.ReflectionProbeBlendInfo
CS.UnityEngine.Rendering.ReflectionProbeBlendInfo = UnityEngine.Rendering.ReflectionProbeBlendInfo

---@class UnityEngine.Rendering.ReflectionProbeRefreshMode : System.Enum
UnityEngine.Rendering.ReflectionProbeRefreshMode = {}
---@type UnityEngine.Rendering.ReflectionProbeRefreshMode
CS.UnityEngine.Rendering.ReflectionProbeRefreshMode = UnityEngine.Rendering.ReflectionProbeRefreshMode

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionProbeRefreshMode.OnAwake = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeRefreshMode.EveryFrame = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ReflectionProbeRefreshMode.ViaScripting = 2

---@class UnityEngine.Rendering.ReflectionProbeTimeSlicingMode : System.Enum
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode = {}
---@type UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
CS.UnityEngine.Rendering.ReflectionProbeTimeSlicingMode = UnityEngine.Rendering.ReflectionProbeTimeSlicingMode

---@return System.Int32 value:0
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode.AllFacesAtOnce = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode.IndividualFaces = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode.NoTimeSlicing = 2

---@class UnityEngine.Rendering.ShadowSamplingMode : System.Enum
UnityEngine.Rendering.ShadowSamplingMode = {}
---@type UnityEngine.Rendering.ShadowSamplingMode
CS.UnityEngine.Rendering.ShadowSamplingMode = UnityEngine.Rendering.ShadowSamplingMode

---@return System.Int32 value:0
UnityEngine.Rendering.ShadowSamplingMode.CompareDepths = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ShadowSamplingMode.RawDepth = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ShadowSamplingMode.None = 2

---@class UnityEngine.Rendering.LightProbeUsage : System.Enum
UnityEngine.Rendering.LightProbeUsage = {}
---@type UnityEngine.Rendering.LightProbeUsage
CS.UnityEngine.Rendering.LightProbeUsage = UnityEngine.Rendering.LightProbeUsage

---@return System.Int32 value:0
UnityEngine.Rendering.LightProbeUsage.Off = 0
---@return System.Int32 value:1
UnityEngine.Rendering.LightProbeUsage.BlendProbes = 1
---@return System.Int32 value:2
UnityEngine.Rendering.LightProbeUsage.UseProxyVolume = 2

---@class UnityEngine.Rendering.BuiltinShaderType : System.Enum
UnityEngine.Rendering.BuiltinShaderType = {}
---@type UnityEngine.Rendering.BuiltinShaderType
CS.UnityEngine.Rendering.BuiltinShaderType = UnityEngine.Rendering.BuiltinShaderType

---@return System.Int32 value:0
UnityEngine.Rendering.BuiltinShaderType.DeferredShading = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BuiltinShaderType.DeferredReflections = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BuiltinShaderType.LegacyDeferredLighting = 2
---@return System.Int32 value:3
UnityEngine.Rendering.BuiltinShaderType.ScreenSpaceShadows = 3
---@return System.Int32 value:4
UnityEngine.Rendering.BuiltinShaderType.DepthNormals = 4
---@return System.Int32 value:5
UnityEngine.Rendering.BuiltinShaderType.MotionVectors = 5
---@return System.Int32 value:6
UnityEngine.Rendering.BuiltinShaderType.LightHalo = 6
---@return System.Int32 value:7
UnityEngine.Rendering.BuiltinShaderType.LensFlare = 7

---@class UnityEngine.Rendering.BuiltinShaderMode : System.Enum
UnityEngine.Rendering.BuiltinShaderMode = {}
---@type UnityEngine.Rendering.BuiltinShaderMode
CS.UnityEngine.Rendering.BuiltinShaderMode = UnityEngine.Rendering.BuiltinShaderMode

---@return System.Int32 value:0
UnityEngine.Rendering.BuiltinShaderMode.Disabled = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BuiltinShaderMode.UseBuiltin = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BuiltinShaderMode.UseCustom = 2

---@class UnityEngine.Rendering.BuiltinShaderDefine : System.Enum
UnityEngine.Rendering.BuiltinShaderDefine = {}
---@type UnityEngine.Rendering.BuiltinShaderDefine
CS.UnityEngine.Rendering.BuiltinShaderDefine = UnityEngine.Rendering.BuiltinShaderDefine

---@return System.Int32 value:0
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_NO_DXT5nm = 0
---@return System.Int32 value:1
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_NO_RGBM = 1
---@return System.Int32 value:2
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_USE_NATIVE_HDR = 2
---@return System.Int32 value:3
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_ENABLE_REFLECTION_BUFFERS = 3
---@return System.Int32 value:4
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_FRAMEBUFFER_FETCH_AVAILABLE = 4
---@return System.Int32 value:5
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_ENABLE_NATIVE_SHADOW_LOOKUPS = 5
---@return System.Int32 value:6
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_METAL_SHADOWS_USE_POINT_FILTERING = 6
---@return System.Int32 value:7
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_NO_CUBEMAP_ARRAY = 7
---@return System.Int32 value:8
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_NO_SCREENSPACE_SHADOWS = 8
---@return System.Int32 value:9
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_USE_DITHER_MASK_FOR_ALPHABLENDED_SHADOWS = 9
---@return System.Int32 value:10
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_PBS_USE_BRDF1 = 10
---@return System.Int32 value:11
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_PBS_USE_BRDF2 = 11
---@return System.Int32 value:12
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_PBS_USE_BRDF3 = 12
---@return System.Int32 value:13
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_NO_FULL_STANDARD_SHADER = 13
---@return System.Int32 value:14
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_SPECCUBE_BOX_PROJECTION = 14
---@return System.Int32 value:15
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_SPECCUBE_BLENDING = 15
---@return System.Int32 value:16
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_ENABLE_DETAIL_NORMALMAP = 16
---@return System.Int32 value:17
UnityEngine.Rendering.BuiltinShaderDefine.SHADER_API_MOBILE = 17
---@return System.Int32 value:18
UnityEngine.Rendering.BuiltinShaderDefine.SHADER_API_DESKTOP = 18
---@return System.Int32 value:19
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_HARDWARE_TIER1 = 19
---@return System.Int32 value:20
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_HARDWARE_TIER2 = 20
---@return System.Int32 value:21
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_HARDWARE_TIER3 = 21
---@return System.Int32 value:22
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_COLORSPACE_GAMMA = 22
---@return System.Int32 value:23
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_LIGHT_PROBE_PROXY_VOLUME = 23
---@return System.Int32 value:24
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS = 24
---@return System.Int32 value:25
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_LIGHTMAP_DLDR_ENCODING = 25
---@return System.Int32 value:26
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_LIGHTMAP_RGBM_ENCODING = 26
---@return System.Int32 value:27
UnityEngine.Rendering.BuiltinShaderDefine.UNITY_LIGHTMAP_FULL_HDR = 27

---@class UnityEngine.Rendering.TextureDimension : System.Enum
UnityEngine.Rendering.TextureDimension = {}
---@type UnityEngine.Rendering.TextureDimension
CS.UnityEngine.Rendering.TextureDimension = UnityEngine.Rendering.TextureDimension

---@return System.Int32 value:0
UnityEngine.Rendering.TextureDimension.None = 0
---@return System.Int32 value:1
UnityEngine.Rendering.TextureDimension.Any = 1
---@return System.Int32 value:2
UnityEngine.Rendering.TextureDimension.Tex2D = 2
---@return System.Int32 value:3
UnityEngine.Rendering.TextureDimension.Tex3D = 3
---@return System.Int32 value:4
UnityEngine.Rendering.TextureDimension.Cube = 4
---@return System.Int32 value:5
UnityEngine.Rendering.TextureDimension.Tex2DArray = 5
---@return System.Int32 value:6
UnityEngine.Rendering.TextureDimension.CubeArray = 6

---@class UnityEngine.Rendering.CopyTextureSupport : System.Enum
UnityEngine.Rendering.CopyTextureSupport = {}
---@type UnityEngine.Rendering.CopyTextureSupport
CS.UnityEngine.Rendering.CopyTextureSupport = UnityEngine.Rendering.CopyTextureSupport

---@return System.Int32 value:0
UnityEngine.Rendering.CopyTextureSupport.None = 0
---@return System.Int32 value:1
UnityEngine.Rendering.CopyTextureSupport.Basic = 1
---@return System.Int32 value:2
UnityEngine.Rendering.CopyTextureSupport.Copy3D = 2
---@return System.Int32 value:4
UnityEngine.Rendering.CopyTextureSupport.DifferentTypes = 4

---@class UnityEngine.Rendering.CameraHDRMode : System.Enum
UnityEngine.Rendering.CameraHDRMode = {}
---@type UnityEngine.Rendering.CameraHDRMode
CS.UnityEngine.Rendering.CameraHDRMode = UnityEngine.Rendering.CameraHDRMode

---@return System.Int32 value:1
UnityEngine.Rendering.CameraHDRMode.FP16 = 1

---@class UnityEngine.Rendering.RealtimeGICPUUsage : System.Enum
UnityEngine.Rendering.RealtimeGICPUUsage = {}
---@type UnityEngine.Rendering.RealtimeGICPUUsage
CS.UnityEngine.Rendering.RealtimeGICPUUsage = UnityEngine.Rendering.RealtimeGICPUUsage


---@class UnityEngine.Rendering.ComputeQueueType : System.Enum
UnityEngine.Rendering.ComputeQueueType = {}
---@type UnityEngine.Rendering.ComputeQueueType
CS.UnityEngine.Rendering.ComputeQueueType = UnityEngine.Rendering.ComputeQueueType

---@return System.Int32 value:0
UnityEngine.Rendering.ComputeQueueType.Default = 0
---@return System.Int32 value:1
UnityEngine.Rendering.ComputeQueueType.Background = 1
---@return System.Int32 value:2
UnityEngine.Rendering.ComputeQueueType.Urgent = 2

---@class UnityEngine.Rendering.GraphicsSettings : UnityEngine.Object
---@field public transparencySortMode UnityEngine.TransparencySortMode @static setter getter
---@field public transparencySortAxis UnityEngine.Vector3 @static setter getter
---@field public lightsUseLinearIntensity System.Boolean @static setter getter
---@field public lightsUseColorTemperature System.Boolean @static setter getter
---@field public useScriptableRenderPipelineBatching System.Boolean @static setter getter
---@field public logWhenShaderIsCompiled System.Boolean @static setter getter
---@field public renderPipelineAsset UnityEngine.Experimental.Rendering.RenderPipelineAsset @static setter getter
UnityEngine.Rendering.GraphicsSettings = {}
---@type UnityEngine.Rendering.GraphicsSettings
CS.UnityEngine.Rendering.GraphicsSettings = UnityEngine.Rendering.GraphicsSettings

---@overload fun(tier:UnityEngine.Rendering.GraphicsTier, defineHash:UnityEngine.Rendering.BuiltinShaderDefine):System.Boolean
---@param defineHash UnityEngine.Rendering.BuiltinShaderDefine
---@return System.Boolean
function UnityEngine.Rendering.GraphicsSettings.HasShaderDefine(defineHash)end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param mode UnityEngine.Rendering.BuiltinShaderMode
---@return System.Void
function UnityEngine.Rendering.GraphicsSettings.SetShaderMode(type, mode)end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Rendering.BuiltinShaderMode
function UnityEngine.Rendering.GraphicsSettings.GetShaderMode(type)end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param shader UnityEngine.Shader
---@return System.Void
function UnityEngine.Rendering.GraphicsSettings.SetCustomShader(type, shader)end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Shader
function UnityEngine.Rendering.GraphicsSettings.GetCustomShader(type)end
---@class UnityEngine.Rendering.PlatformKeywordSet : System.ValueType
UnityEngine.Rendering.PlatformKeywordSet = {}
---@type UnityEngine.Rendering.PlatformKeywordSet
CS.UnityEngine.Rendering.PlatformKeywordSet = UnityEngine.Rendering.PlatformKeywordSet

---@param define UnityEngine.Rendering.BuiltinShaderDefine
---@return System.Boolean
function UnityEngine.Rendering.PlatformKeywordSet:IsEnabled(define)end
---@param define UnityEngine.Rendering.BuiltinShaderDefine
---@return System.Void
function UnityEngine.Rendering.PlatformKeywordSet:Enable(define)end
---@param define UnityEngine.Rendering.BuiltinShaderDefine
---@return System.Void
function UnityEngine.Rendering.PlatformKeywordSet:Disable(define)end
---@class UnityEngine.Rendering.CommandBuffer : System.Object
---@field public name System.String @ setter getter
---@field public sizeInBytes System.Int32 @  getter
UnityEngine.Rendering.CommandBuffer = {}
---@type UnityEngine.Rendering.CommandBuffer
CS.UnityEngine.Rendering.CommandBuffer = UnityEngine.Rendering.CommandBuffer

---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:System.Int32, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:System.Int32):System.Void
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:ConvertTexture(src, dst)end
---@overload fun(src:UnityEngine.Texture, callback:System.Action):System.Void
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, callback:System.Action):System.Void
---@overload fun(src:UnityEngine.ComputeBuffer, size:System.Int32, offset:System.Int32, callback:System.Action):System.Void
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32, callback:System.Action):System.Void
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, dstFormat:UnityEngine.TextureFormat, callback:System.Action):System.Void
---@overload fun(src:UnityEngine.Texture, mipIndex:System.Int32, x:System.Int32, width:System.Int32, y:System.Int32, height:System.Int32, z:System.Int32, depth:System.Int32, dstFormat:UnityEngine.TextureFormat, callback:System.Action):System.Void
---@param src UnityEngine.ComputeBuffer
---@param callback System.Action
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, callback)end
---@param invertCulling System.Boolean
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetInvertCulling(invertCulling)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, val:System.Single):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param val System.Single
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeFloatParam(computeShader, nameID, val)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, val:System.Int32):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param val System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeIntParam(computeShader, nameID, val)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, val:UnityEngine.Vector4):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param val UnityEngine.Vector4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeVectorParam(computeShader, nameID, val)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, values:UnityEngine.Vector4[]):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param values UnityEngine.Vector4[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeVectorArrayParam(computeShader, nameID, values)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, val:UnityEngine.Matrix4x4):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param val UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeMatrixParam(computeShader, nameID, val)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param values UnityEngine.Matrix4x4[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeMatrixArrayParam(computeShader, nameID, values)end
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:System.Int32, name:System.String, buffer:UnityEngine.ComputeBuffer):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex System.Int32
---@param nameID System.Int32
---@param buffer UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, nameID, buffer)end
---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes System.UInt32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes)end
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:Clear()end
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:ClearRandomWriteTargets()end
---@param pixelRect UnityEngine.Rect
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetViewport(pixelRect)end
---@param scissor UnityEngine.Rect
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:EnableScissorRect(scissor)end
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DisableScissorRect()end
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32):System.Void
---@overload fun(nameID:System.Int32, desc:UnityEngine.RenderTextureDescriptor):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode):System.Void
---@overload fun(nameID:System.Int32, desc:UnityEngine.RenderTextureDescriptor, filter:UnityEngine.FilterMode):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, enableRandomWrite:System.Boolean):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, enableRandomWrite:System.Boolean, memorylessMode:UnityEngine.RenderTextureMemoryless):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, enableRandomWrite:System.Boolean, memorylessMode:UnityEngine.RenderTextureMemoryless, useDynamicScale:System.Boolean):System.Void
---@param nameID System.Int32
---@param width System.Int32
---@param height System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height)end
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, enableRandomWrite:System.Boolean):System.Void
---@overload fun(nameID:System.Int32, width:System.Int32, height:System.Int32, slices:System.Int32, depthBuffer:System.Int32, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:System.Int32, enableRandomWrite:System.Boolean, useDynamicScale:System.Boolean):System.Void
---@param nameID System.Int32
---@param width System.Int32
---@param height System.Int32
---@param slices System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices)end
---@param nameID System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:ReleaseTemporaryRT(nameID)end
---@overload fun(clearDepth:System.Boolean, clearColor:System.Boolean, backgroundColor:UnityEngine.Color, depth:System.Single):System.Void
---@param clearDepth System.Boolean
---@param clearColor System.Boolean
---@param backgroundColor UnityEngine.Color
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:ClearRenderTarget(clearDepth, clearColor, backgroundColor)end
---@overload fun(name:System.String, value:System.Single):System.Void
---@param nameID System.Int32
---@param value System.Single
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalFloat(nameID, value)end
---@overload fun(name:System.String, value:System.Int32):System.Void
---@param nameID System.Int32
---@param value System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalInt(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Vector4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Vector4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalVector(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Color):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Color
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalColor(nameID, value)end
---@overload fun(name:System.String, value:UnityEngine.Matrix4x4):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalMatrix(nameID, value)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:EnableShaderKeyword(keyword)end
---@param keyword System.String
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DisableShaderKeyword(keyword)end
---@param view UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetViewMatrix(view)end
---@param proj UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetProjectionMatrix(proj)end
---@param view UnityEngine.Matrix4x4
---@param proj UnityEngine.Matrix4x4
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetViewProjectionMatrices(view, proj)end
---@param bias System.Single
---@param slopeBias System.Single
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalDepthBias(bias, slopeBias)end
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:System.Single[]):System.Void
---@param nameID System.Int32
---@param values System.Single[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:UnityEngine.Vector4[]):System.Void
---@param nameID System.Int32
---@param values UnityEngine.Vector4[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(nameID, values)end
---@overload fun(nameID:System.Int32, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:System.Collections.Generic.List):System.Void
---@overload fun(propertyName:System.String, values:UnityEngine.Matrix4x4[]):System.Void
---@param nameID System.Int32
---@param values UnityEngine.Matrix4x4[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(nameID, values)end
---@overload fun(name:System.String, value:UnityEngine.ComputeBuffer):System.Void
---@param nameID System.Int32
---@param value UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(nameID, value)end
---@param name System.String
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:BeginSample(name)end
---@param name System.String
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:EndSample(name)end
---@overload fun(binding:UnityEngine.Rendering.RenderTargetBinding):System.Void
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32):System.Void
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier):System.Void
---@overload fun(colors:UnityEngine.Rendering.RenderTargetIdentifier[], depth:UnityEngine.Rendering.RenderTargetIdentifier):System.Void
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32, cubemapFace:UnityEngine.CubemapFace):System.Void
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32):System.Void
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32, cubemapFace:UnityEngine.CubemapFace, depthSlice:System.Int32):System.Void
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, loadAction:UnityEngine.Rendering.RenderBufferLoadAction, storeAction:UnityEngine.Rendering.RenderBufferStoreAction):System.Void
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32, cubemapFace:UnityEngine.CubemapFace):System.Void
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32, cubemapFace:UnityEngine.CubemapFace, depthSlice:System.Int32):System.Void
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction:UnityEngine.Rendering.RenderBufferStoreAction, depthLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction:UnityEngine.Rendering.RenderBufferStoreAction):System.Void
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction:UnityEngine.Rendering.RenderBufferStoreAction, depth:UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction:UnityEngine.Rendering.RenderBufferStoreAction):System.Void
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt)end
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:Dispose()end
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:Release()end
---@overload fun(stage:UnityEngine.Rendering.SynchronisationStage):UnityEngine.Rendering.GPUFence
---@return UnityEngine.Rendering.GPUFence
function UnityEngine.Rendering.CommandBuffer:CreateGPUFence()end
---@overload fun(fence:UnityEngine.Rendering.GPUFence, stage:UnityEngine.Rendering.SynchronisationStage):System.Void
---@param fence UnityEngine.Rendering.GPUFence
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:WaitOnGPUFence(fence)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, values:System.Single[]):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param values System.Single[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeFloatParams(computeShader, nameID, values)end
---@overload fun(computeShader:UnityEngine.ComputeShader, name:System.String, values:System.Int32[]):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param nameID System.Int32
---@param values System.Int32[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeIntParams(computeShader, nameID, values)end
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:System.Int32, nameID:System.Int32, rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32):System.Void
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:System.Int32, name:System.String, rt:UnityEngine.Rendering.RenderTargetIdentifier):System.Void
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:System.Int32, name:System.String, rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:System.Int32):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex System.Int32
---@param nameID System.Int32
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, nameID, rt)end
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:System.Int32, indirectBuffer:UnityEngine.ComputeBuffer, argsOffset:System.UInt32):System.Void
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex System.Int32
---@param threadGroupsX System.Int32
---@param threadGroupsY System.Int32
---@param threadGroupsZ System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DispatchCompute(computeShader, kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ)end
---@param rt UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:GenerateMips(rt)end
---@overload fun(rt:UnityEngine.RenderTexture):System.Void
---@param rt UnityEngine.RenderTexture
---@param target UnityEngine.RenderTexture
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:ResolveAntiAliasedSurface(rt, target)end
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, submeshIndex:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, submeshIndex:System.Int32, shaderPass:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, submeshIndex:System.Int32, shaderPass:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material)end
---@overload fun(renderer:UnityEngine.Renderer, material:UnityEngine.Material, submeshIndex:System.Int32):System.Void
---@overload fun(renderer:UnityEngine.Renderer, material:UnityEngine.Material, submeshIndex:System.Int32, shaderPass:System.Int32):System.Void
---@param renderer UnityEngine.Renderer
---@param material UnityEngine.Material
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawRenderer(renderer, material)end
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:System.Int32, topology:UnityEngine.MeshTopology, vertexCount:System.Int32, instanceCount:System.Int32):System.Void
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:System.Int32, topology:UnityEngine.MeshTopology, vertexCount:System.Int32, instanceCount:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass System.Int32
---@param topology UnityEngine.MeshTopology
---@param vertexCount System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawProcedural(matrix, material, shaderPass, topology, vertexCount)end
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:System.Int32, topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32):System.Void
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:System.Int32, topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass System.Int32
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, shaderPass:System.Int32, matrices:UnityEngine.Matrix4x4[], count:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, shaderPass:System.Int32, matrices:UnityEngine.Matrix4x4[], count:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@param mesh UnityEngine.Mesh
---@param submeshIndex System.Int32
---@param material UnityEngine.Material
---@param shaderPass System.Int32
---@param matrices UnityEngine.Matrix4x4[]
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices)end
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, shaderPass:System.Int32, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32):System.Void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:System.Int32, material:UnityEngine.Material, shaderPass:System.Int32, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:System.Int32, properties:UnityEngine.MaterialPropertyBlock):System.Void
---@param mesh UnityEngine.Mesh
---@param submeshIndex System.Int32
---@param material UnityEngine.Material
---@param shaderPass System.Int32
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs)end
---@overload fun(index:System.Int32, buffer:UnityEngine.ComputeBuffer):System.Void
---@overload fun(index:System.Int32, buffer:UnityEngine.ComputeBuffer, preserveCounterValue:System.Boolean):System.Void
---@param index System.Int32
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, rt)end
---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:System.Int32, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:System.Int32):System.Void
---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:System.Int32, srcMip:System.Int32, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:System.Int32, dstMip:System.Int32):System.Void
---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:System.Int32, srcMip:System.Int32, srcX:System.Int32, srcY:System.Int32, srcWidth:System.Int32, srcHeight:System.Int32, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:System.Int32, dstMip:System.Int32, dstX:System.Int32, dstY:System.Int32):System.Void
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:CopyTexture(src, dst)end
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material):System.Void
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material, pass:System.Int32):System.Void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2):System.Void
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2):System.Void
---@param source UnityEngine.Texture
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:Blit(source, dest)end
---@overload fun(name:System.String, value:UnityEngine.Rendering.RenderTargetIdentifier):System.Void
---@param nameID System.Int32
---@param value UnityEngine.Rendering.RenderTargetIdentifier
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(nameID, value)end
---@param shadowmap UnityEngine.Rendering.RenderTargetIdentifier
---@param mode UnityEngine.Rendering.ShadowSamplingMode
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:SetShadowSamplingMode(shadowmap, mode)end
---@param callback System.IntPtr
---@param eventID System.Int32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginEvent(callback, eventID)end
---@param callback System.IntPtr
---@param eventID System.Int32
---@param data System.IntPtr
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginEventAndData(callback, eventID, data)end
---@param callback System.IntPtr
---@param command System.UInt32
---@param source UnityEngine.Rendering.RenderTargetIdentifier
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
---@param commandParam System.UInt32
---@param commandFlags System.UInt32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomBlit(callback, command, source, dest, commandParam, commandFlags)end
---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData System.UInt32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdate(callback, targetTexture, userData)end
---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData System.UInt32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdateV1(callback, targetTexture, userData)end
---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData System.UInt32
---@return System.Void
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdateV2(callback, targetTexture, userData)end
---@class UnityEngine.Rendering.ShaderKeywordType : System.Enum
UnityEngine.Rendering.ShaderKeywordType = {}
---@type UnityEngine.Rendering.ShaderKeywordType
CS.UnityEngine.Rendering.ShaderKeywordType = UnityEngine.Rendering.ShaderKeywordType

---@return System.Int32 value:0
UnityEngine.Rendering.ShaderKeywordType.None = 0
---@return System.Int32 value:2
UnityEngine.Rendering.ShaderKeywordType.BuiltinDefault = 2

---@class UnityEngine.Rendering.ShaderKeyword : System.Object
UnityEngine.Rendering.ShaderKeyword = {}
---@type UnityEngine.Rendering.ShaderKeyword
CS.UnityEngine.Rendering.ShaderKeyword = UnityEngine.Rendering.ShaderKeyword

---@return System.Boolean
function UnityEngine.Rendering.ShaderKeyword:IsValid()end
---@return UnityEngine.Rendering.ShaderKeywordType
function UnityEngine.Rendering.ShaderKeyword:GetKeywordType()end
---@return System.String
function UnityEngine.Rendering.ShaderKeyword:GetKeywordName()end
---@return System.String
function UnityEngine.Rendering.ShaderKeyword:GetName()end
---@class UnityEngine.Rendering.ShaderKeywordSet : System.ValueType
UnityEngine.Rendering.ShaderKeywordSet = {}
---@type UnityEngine.Rendering.ShaderKeywordSet
CS.UnityEngine.Rendering.ShaderKeywordSet = UnityEngine.Rendering.ShaderKeywordSet

---@param keyword UnityEngine.Rendering.ShaderKeyword
---@return System.Boolean
function UnityEngine.Rendering.ShaderKeywordSet:IsEnabled(keyword)end
---@param keyword UnityEngine.Rendering.ShaderKeyword
---@return System.Void
function UnityEngine.Rendering.ShaderKeywordSet:Enable(keyword)end
---@param keyword UnityEngine.Rendering.ShaderKeyword
---@return System.Void
function UnityEngine.Rendering.ShaderKeywordSet:Disable(keyword)end
---@return UnityEngine.Rendering.ShaderKeyword[]
function UnityEngine.Rendering.ShaderKeywordSet:GetShaderKeywords()end
---@class UnityEngine.Rendering.SphericalHarmonicsL2 : System.ValueType
---@field public Item System.Single @ setter getter
UnityEngine.Rendering.SphericalHarmonicsL2 = {}
---@type UnityEngine.Rendering.SphericalHarmonicsL2
CS.UnityEngine.Rendering.SphericalHarmonicsL2 = UnityEngine.Rendering.SphericalHarmonicsL2

---@return System.Void
function UnityEngine.Rendering.SphericalHarmonicsL2:Clear()end
---@param color UnityEngine.Color
---@return System.Void
function UnityEngine.Rendering.SphericalHarmonicsL2:AddAmbientLight(color)end
---@param direction UnityEngine.Vector3
---@param color UnityEngine.Color
---@param intensity System.Single
---@return System.Void
function UnityEngine.Rendering.SphericalHarmonicsL2:AddDirectionalLight(direction, color, intensity)end
---@param directions UnityEngine.Vector3[]
---@param results UnityEngine.Color[]
---@return System.Void
function UnityEngine.Rendering.SphericalHarmonicsL2:Evaluate(directions, results)end
---@return System.Int32
function UnityEngine.Rendering.SphericalHarmonicsL2:GetHashCode()end
---@overload fun(other:UnityEngine.Rendering.SphericalHarmonicsL2):System.Boolean
---@param other System.Object
---@return System.Boolean
function UnityEngine.Rendering.SphericalHarmonicsL2:Equals(other)end
---@overload fun(lhs:System.Single, rhs:UnityEngine.Rendering.SphericalHarmonicsL2):UnityEngine.Rendering.SphericalHarmonicsL2
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs System.Single
---@return UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2.op_Multiply(lhs, rhs)end
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2.op_Addition(lhs, rhs)end
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return System.Boolean
function UnityEngine.Rendering.SphericalHarmonicsL2.op_Equality(lhs, rhs)end
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return System.Boolean
function UnityEngine.Rendering.SphericalHarmonicsL2.op_Inequality(lhs, rhs)end
---@class UnityEngine.Rendering.SplashScreen : System.Object
---@field public isFinished System.Boolean @static  getter
UnityEngine.Rendering.SplashScreen = {}
---@type UnityEngine.Rendering.SplashScreen
CS.UnityEngine.Rendering.SplashScreen = UnityEngine.Rendering.SplashScreen

---@return System.Void
function UnityEngine.Rendering.SplashScreen.Begin()end
---@return System.Void
function UnityEngine.Rendering.SplashScreen.Draw()end
---@class UnityEngine.Rendering.SortingGroup : UnityEngine.Behaviour
---@field public sortingLayerName System.String @ setter getter
---@field public sortingLayerID System.Int32 @ setter getter
---@field public sortingOrder System.Int32 @ setter getter
UnityEngine.Rendering.SortingGroup = {}
---@type UnityEngine.Rendering.SortingGroup
CS.UnityEngine.Rendering.SortingGroup = UnityEngine.Rendering.SortingGroup

---@class UnityEngine.Rendering.UVChannelFlags : System.Enum
UnityEngine.Rendering.UVChannelFlags = {}
---@type UnityEngine.Rendering.UVChannelFlags
CS.UnityEngine.Rendering.UVChannelFlags = UnityEngine.Rendering.UVChannelFlags

---@return System.Int32 value:1
UnityEngine.Rendering.UVChannelFlags.UV0 = 1
---@return System.Int32 value:2
UnityEngine.Rendering.UVChannelFlags.UV1 = 2

