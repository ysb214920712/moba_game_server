---@class TreeEditor.TreeData : UnityEngine.ScriptableObject
---@field public materialHash System.String
---@field public root TreeEditor.TreeGroupRoot
---@field public branchGroups TreeEditor.TreeGroupBranch[]
---@field public leafGroups TreeEditor.TreeGroupLeaf[]
---@field public nodes TreeEditor.TreeNode[]
---@field public mesh UnityEngine.Mesh
---@field public optimizedSolidMaterial UnityEngine.Material
---@field public optimizedCutoutMaterial UnityEngine.Material
---@field public isInPreviewMode System.Boolean
TreeEditor.TreeData = {}
---@type TreeEditor.TreeData
CS.TreeEditor.TreeData = TreeEditor.TreeData

---@param id System.Int32
---@return TreeEditor.TreeGroup
function TreeEditor.TreeData:GetGroup(id)end
---@param id System.Int32
---@return TreeEditor.TreeNode
function TreeEditor.TreeData:GetNode(id)end
---@return System.Void
function TreeEditor.TreeData:ValidateReferences()end
---@return System.Void
function TreeEditor.TreeData:ClearReferences()end
---@param parent TreeEditor.TreeGroup
---@param type System.Type
---@return TreeEditor.TreeGroup
function TreeEditor.TreeData:AddGroup(parent, type)end
---@param g TreeEditor.TreeGroup
---@return TreeEditor.TreeGroup
function TreeEditor.TreeData:DuplicateGroup(g)end
---@param g TreeEditor.TreeGroup
---@return System.Void
function TreeEditor.TreeData:DeleteGroup(g)end
---@param g TreeEditor.TreeGroup
---@param parent TreeEditor.TreeGroup
---@return System.Void
function TreeEditor.TreeData:SetGroupParent(g, parent)end
---@param g TreeEditor.TreeGroup
---@return System.Void
function TreeEditor.TreeData:LockGroup(g)end
---@param g TreeEditor.TreeGroup
---@return System.Void
function TreeEditor.TreeData:UnlockGroup(g)end
---@param ancestor TreeEditor.TreeGroup
---@param g TreeEditor.TreeGroup
---@return System.Boolean
function TreeEditor.TreeData:IsAncestor(ancestor, g)end
---@overload fun(g:TreeEditor.TreeGroup, parent:TreeEditor.TreeNode, validate:System.Boolean):TreeEditor.TreeNode
---@param g TreeEditor.TreeGroup
---@param parent TreeEditor.TreeNode
---@return TreeEditor.TreeNode
function TreeEditor.TreeData:AddNode(g, parent)end
---@param n TreeEditor.TreeNode
---@param parent TreeEditor.TreeNode
---@return System.Void
function TreeEditor.TreeData:SetNodeParent(n, parent)end
---@overload fun(n:TreeEditor.TreeNode, validate:System.Boolean):System.Void
---@param n TreeEditor.TreeNode
---@return System.Void
function TreeEditor.TreeData:DeleteNode(n)end
---@param n TreeEditor.TreeNode
---@return TreeEditor.TreeNode
function TreeEditor.TreeData:DuplicateNode(n)end
---@return System.Void
function TreeEditor.TreeData:Initialize()end
---@param id System.Int32
---@return System.Void
function TreeEditor.TreeData:UpdateSeed(id)end
---@param id System.Int32
---@return System.Void
function TreeEditor.TreeData:UpdateFrequency(id)end
---@param id System.Int32
---@return System.Void
function TreeEditor.TreeData:UpdateDistribution(id)end
---@param h System.Single
---@param adaptiveQuality System.Single
---@return System.Int32
function TreeEditor.TreeData.GetAdaptiveHeightSegments(h, adaptiveQuality)end
---@param r System.Single
---@param adaptiveQuality System.Single
---@return System.Int32
function TreeEditor.TreeData.GetAdaptiveRadialSegments(r, adaptiveQuality)end
---@param group TreeEditor.TreeGroup
---@param node TreeEditor.TreeNode
---@param adaptiveQuality System.Single
---@return System.Collections.Generic.List
function TreeEditor.TreeData.GetAdaptiveSamples(group, node, adaptiveQuality)end
---@param worldToLocalMatrix UnityEngine.Matrix4x4
---@param outMaterials UnityEngine.Material[]
---@return System.Void
function TreeEditor.TreeData:PreviewMesh(worldToLocalMatrix, outMaterials)end
---@overload fun(matrix:UnityEngine.Matrix4x4, materials:System.Collections.Generic.List, verts:System.Collections.Generic.List, tris:System.Collections.Generic.List, aoSpheres:System.Collections.Generic.List, buildFlags:System.Int32, adaptiveQuality:System.Single, aoDensity:System.Single):System.Void
---@param worldToLocalMatrix UnityEngine.Matrix4x4
---@param outMaterials UnityEngine.Material[]
---@return System.Void
function TreeEditor.TreeData:UpdateMesh(worldToLocalMatrix, outMaterials)end
---@param materials System.Collections.Generic.List
---@param vertices System.Collections.Generic.List
---@param triangles System.Collections.Generic.List
---@return System.Boolean
function TreeEditor.TreeData:OptimizeMaterial(materials, vertices, triangles)end
---@return System.Boolean
function TreeEditor.TreeData:CheckExternalChanges()end
---@class TreeEditor.TreeEditorHelper : System.Object
TreeEditor.TreeEditorHelper = {}
---@type TreeEditor.TreeEditorHelper
CS.TreeEditor.TreeEditorHelper = TreeEditor.TreeEditorHelper

---@param treeData TreeEditor.TreeData
---@return System.Void
function TreeEditor.TreeEditorHelper:OnEnable(treeData)end
---@return System.Boolean
function TreeEditor.TreeEditorHelper:AreShadersCorrect()end
---@param shader UnityEngine.Shader
---@return System.String
function TreeEditor.TreeEditorHelper.GetOptimizedShaderName(shader)end
---@param shader UnityEngine.Shader
---@return System.Boolean
function TreeEditor.TreeEditorHelper.IsTreeLeafShader(shader)end
---@param shader UnityEngine.Shader
---@return System.Boolean
function TreeEditor.TreeEditorHelper.IsTreeBarkShader(shader)end
---@return System.Boolean
function TreeEditor.TreeEditorHelper:GUITooManyShaders()end
---@param uniqueID System.String
---@param value UnityEngine.Material
---@param nodeType TreeEditor.TreeEditorHelper.NodeType
---@return System.Boolean
function TreeEditor.TreeEditorHelper:GUIWrongShader(uniqueID, value, nodeType)end
---@return System.Void
function TreeEditor.TreeEditorHelper:RefreshAllTreeShaders()end
---@param group TreeEditor.TreeGroup
---@return System.Boolean
function TreeEditor.TreeEditorHelper:NodeHasWrongMaterial(group)end
---@param id System.String
---@return UnityEngine.GUIContent
function TreeEditor.TreeEditorHelper.GetGUIContent(id)end
---@param uiString System.String
---@return System.String
function TreeEditor.TreeEditorHelper.ExtractLabel(uiString)end
---@param uiString System.String
---@return System.String
function TreeEditor.TreeEditorHelper.ExtractTooltip(uiString)end
---@class TreeEditor.TreeEditorHelper.NodeType : System.Enum
TreeEditor.TreeEditorHelper.NodeType = {}
---@type TreeEditor.TreeEditorHelper.NodeType
CS.TreeEditor.TreeEditorHelper.NodeType = TreeEditor.TreeEditorHelper.NodeType

---@return System.Int32 value:0
TreeEditor.TreeEditorHelper.NodeType.BarkNode = 0
---@return System.Int32 value:1
TreeEditor.TreeEditorHelper.NodeType.LeafNode = 1

---@class TreeEditor.SmoothRandom : System.Object
TreeEditor.SmoothRandom = {}
---@type TreeEditor.SmoothRandom
CS.TreeEditor.SmoothRandom = TreeEditor.SmoothRandom

---@param speed System.Single
---@return UnityEngine.Vector3
function TreeEditor.SmoothRandom.GetVector3(speed)end
---@param speed System.Single
---@return System.Single
function TreeEditor.SmoothRandom.Get(speed)end
---@class TreeEditor.Perlin : System.Object
TreeEditor.Perlin = {}
---@type TreeEditor.Perlin
CS.TreeEditor.Perlin = TreeEditor.Perlin

---@overload fun(x:System.Single, y:System.Single):System.Single
---@overload fun(x:System.Single, y:System.Single, z:System.Single):System.Single
---@param arg System.Single
---@return System.Single
function TreeEditor.Perlin:Noise(arg)end
---@param seed System.Int32
---@return System.Void
function TreeEditor.Perlin:SetSeed(seed)end
---@class TreeEditor.FractalNoise : System.Object
TreeEditor.FractalNoise = {}
---@type TreeEditor.FractalNoise
CS.TreeEditor.FractalNoise = TreeEditor.FractalNoise

---@param x System.Single
---@param y System.Single
---@param offset System.Single
---@return System.Single
function TreeEditor.FractalNoise:HybridMultifractal(x, y, offset)end
---@param x System.Single
---@param y System.Single
---@param offset System.Single
---@param gain System.Single
---@return System.Single
function TreeEditor.FractalNoise:RidgedMultifractal(x, y, offset, gain)end
---@param x System.Single
---@param y System.Single
---@return System.Single
function TreeEditor.FractalNoise:BrownianMotion(x, y)end
---@class TreeEditor.RingLoop : System.Object
---@field public radius System.Single
---@field public baseOffset System.Single
TreeEditor.RingLoop = {}
---@type TreeEditor.RingLoop
CS.TreeEditor.RingLoop = TreeEditor.RingLoop

---@param seed System.Int32
---@return System.Void
function TreeEditor.RingLoop.SetNoiseSeed(seed)end
---@return TreeEditor.RingLoop
function TreeEditor.RingLoop:Clone()end
---@param r System.Single
---@param m UnityEngine.Matrix4x4
---@param bOffset System.Single
---@param segs System.Int32
---@return System.Void
function TreeEditor.RingLoop:Reset(r, m, bOffset, segs)end
---@param angleDeg System.Single
---@return System.Void
function TreeEditor.RingLoop:SetSurfaceAngle(angleDeg)end
---@param primaryFactor System.Single
---@param secondaryFactor System.Single
---@param edgeFactor System.Single
---@param phase System.Single
---@return System.Void
function TreeEditor.RingLoop:SetAnimationProperties(primaryFactor, secondaryFactor, edgeFactor, phase)end
---@param top System.Single
---@param bottom System.Single
---@return System.Void
function TreeEditor.RingLoop:SetSpread(top, bottom)end
---@param scale System.Single
---@param scaleU System.Single
---@param scaleV System.Single
---@return System.Void
function TreeEditor.RingLoop:SetNoise(scale, scaleU, scaleV)end
---@param radius System.Single
---@param noise System.Single
---@return System.Void
function TreeEditor.RingLoop:SetFlares(radius, noise)end
---@param verts System.Collections.Generic.List
---@return System.Void
function TreeEditor.RingLoop:BuildVertices(verts)end
---@param sphereFactor System.Single
---@param noise System.Single
---@param mappingMode System.Int32
---@param mappingScale System.Single
---@param verts System.Collections.Generic.List
---@param tris System.Collections.Generic.List
---@param materialIndex System.Int32
---@return System.Void
function TreeEditor.RingLoop:Cap(sphereFactor, noise, mappingMode, mappingScale, verts, tris, materialIndex)end
---@param other TreeEditor.RingLoop
---@param tris System.Collections.Generic.List
---@param materialIndex System.Int32
---@param flipTris System.Boolean
---@param lowres System.Boolean
---@return System.Void
function TreeEditor.RingLoop:Connect(other, tris, materialIndex, flipTris, lowres)end
---@class TreeEditor.SplineNode : System.Object
---@field public point UnityEngine.Vector3
---@field public rot UnityEngine.Quaternion
---@field public normal UnityEngine.Vector3
---@field public tangent UnityEngine.Vector3
---@field public time System.Single
TreeEditor.SplineNode = {}
---@type TreeEditor.SplineNode
CS.TreeEditor.SplineNode = TreeEditor.SplineNode

---@class TreeEditor.TextureAtlas : System.Object
---@field public atlasWidth System.Int32
---@field public atlasHeight System.Int32
---@field public atlasPadding System.Int32
---@field public nodes System.Collections.Generic.List
TreeEditor.TextureAtlas = {}
---@type TreeEditor.TextureAtlas
CS.TreeEditor.TextureAtlas = TreeEditor.TextureAtlas

---@return System.Int32
function TreeEditor.TextureAtlas:GetHashCode()end
---@param name System.String
---@param diffuse UnityEngine.Texture2D
---@param diffuseColor UnityEngine.Color
---@param normal UnityEngine.Texture2D
---@param gloss UnityEngine.Texture2D
---@param transtex UnityEngine.Texture2D
---@param shadowOffsetTex UnityEngine.Texture2D
---@param shininess System.Single
---@param scale UnityEngine.Vector2
---@param tileV System.Boolean
---@param uvTiling UnityEngine.Vector2
---@return System.Void
function TreeEditor.TextureAtlas:AddTexture(name, diffuse, diffuseColor, normal, gloss, transtex, shadowOffsetTex, shininess, scale, tileV, uvTiling)end
---@param name System.String
---@return UnityEngine.Vector2
function TreeEditor.TextureAtlas:GetTexTiling(name)end
---@param name System.String
---@return UnityEngine.Rect
function TreeEditor.TextureAtlas:GetUVRect(name)end
---@param targetWidth System.Int32
---@param targetHeight System.Int32
---@param padding System.Int32
---@param correctPow2 System.Boolean
---@return System.Void
function TreeEditor.TextureAtlas:Pack(targetWidth, targetHeight, padding, correctPow2)end
---@class TreeEditor.TextureAtlas.TextureNode : System.Object
---@field public name System.String
---@field public diffuseTexture UnityEngine.Texture2D
---@field public diffuseColor UnityEngine.Color
---@field public normalTexture UnityEngine.Texture2D
---@field public glossTexture UnityEngine.Texture2D
---@field public translucencyTexture UnityEngine.Texture2D
---@field public shadowOffsetTexture UnityEngine.Texture2D
---@field public shininess System.Single
---@field public scale UnityEngine.Vector2
---@field public tileV System.Boolean
---@field public uvTiling UnityEngine.Vector2
---@field public sourceRect UnityEngine.Rect
---@field public packedRect UnityEngine.Rect
---@field public uvRect UnityEngine.Rect
TreeEditor.TextureAtlas.TextureNode = {}
---@type TreeEditor.TextureAtlas.TextureNode
CS.TreeEditor.TextureAtlas.TextureNode = TreeEditor.TextureAtlas.TextureNode

---@param a TreeEditor.TextureAtlas.TextureNode
---@param b TreeEditor.TextureAtlas.TextureNode
---@return System.Boolean
function TreeEditor.TextureAtlas.TextureNode.Overlap(a, b)end
---@param b TreeEditor.TextureAtlas.TextureNode
---@return System.Int32
function TreeEditor.TextureAtlas.TextureNode:CompareTo(b)end
---@class TreeEditor.TreeAOSphere : System.Object
---@field public flag System.Boolean
---@field public area System.Single
---@field public radius System.Single
---@field public density System.Single
---@field public position UnityEngine.Vector3
TreeEditor.TreeAOSphere = {}
---@type TreeEditor.TreeAOSphere
CS.TreeEditor.TreeAOSphere = TreeEditor.TreeAOSphere

---@param pos UnityEngine.Vector3
---@param nor UnityEngine.Vector3
---@return System.Single
function TreeEditor.TreeAOSphere:PointOcclusion(pos, nor)end
---@class TreeEditor.TreeAttribute : System.Attribute
---@field public uiLabel System.String
---@field public uiGadget System.String
---@field public uiCurve System.String
---@field public uiRequirement System.String
---@field public uiOptions UnityEngine.GUIContent[]
---@field public uiCurveMin System.Single
---@field public uiCurveMax System.Single
---@field public uiMin System.Single
---@field public uiMax System.Single
TreeEditor.TreeAttribute = {}
---@type TreeEditor.TreeAttribute
CS.TreeEditor.TreeAttribute = TreeEditor.TreeAttribute

---@return System.String
function TreeEditor.TreeAttribute:ToString()end
---@class TreeEditor.TreeGroup : System.Object
---@field public uniqueID System.Int32 @ setter getter
---@field public seed System.Int32
---@field public distributionFrequency System.Int32
---@field public distributionMode TreeEditor.TreeGroup.DistributionMode
---@field public distributionCurve UnityEngine.AnimationCurve
---@field public distributionNodes System.Int32
---@field public distributionTwirl System.Single
---@field public distributionPitch System.Single
---@field public distributionPitchCurve UnityEngine.AnimationCurve
---@field public distributionScale System.Single
---@field public distributionScaleCurve UnityEngine.AnimationCurve
---@field public showAnimationProps System.Boolean
---@field public animationPrimary System.Single
---@field public animationSecondary System.Single
---@field public animationEdge System.Single
---@field public visible System.Boolean
---@field public lockFlags System.Int32
---@field public nodeIDs System.Int32[]
---@field public parentGroupID System.Int32
---@field public childGroupIDs System.Int32[]
TreeEditor.TreeGroup = {}
---@type TreeEditor.TreeGroup
CS.TreeEditor.TreeGroup = TreeEditor.TreeGroup

---@param node TreeEditor.TreeNode
---@param t System.Single
---@param includeModifications System.Boolean
---@return System.Single
function TreeEditor.TreeGroup:GetRadiusAtTime(node, t, includeModifications)end
---@return System.Boolean
function TreeEditor.TreeGroup:CanHaveSubGroups()end
---@return System.Void
function TreeEditor.TreeGroup:Lock()end
---@return System.Void
function TreeEditor.TreeGroup:Unlock()end
---@return System.Boolean
function TreeEditor.TreeGroup:CheckExternalChanges()end
---@param owner TreeEditor.TreeData
---@return System.Void
function TreeEditor.TreeGroup:UpdateFrequency(owner)end
---@return System.Void
function TreeEditor.TreeGroup:UpdateSeed()end
---@param node TreeEditor.TreeNode
---@param offset System.Single
---@return UnityEngine.Vector2
function TreeEditor.TreeGroup:ComputeWindFactor(node, offset)end
---@return System.Single
function TreeEditor.TreeGroup:GetRootSpread()end
---@return UnityEngine.Matrix4x4
function TreeEditor.TreeGroup:GetRootMatrix()end
---@param completeUpdate System.Boolean
---@param updateSubGroups System.Boolean
---@return System.Void
function TreeEditor.TreeGroup:UpdateDistribution(completeUpdate, updateSubGroups)end
---@return System.Void
function TreeEditor.TreeGroup:UpdateParameters()end
---@param aoSpheres System.Collections.Generic.List
---@return System.Void
function TreeEditor.TreeGroup:BuildAOSpheres(aoSpheres)end
---@param materials System.Collections.Generic.List
---@param verts System.Collections.Generic.List
---@param tris System.Collections.Generic.List
---@param aoSpheres System.Collections.Generic.List
---@param buildFlags System.Int32
---@param adaptiveQuality System.Single
---@param aoDensity System.Single
---@return System.Void
function TreeEditor.TreeGroup:UpdateMesh(materials, verts, tris, aoSpheres, buildFlags, adaptiveQuality, aoDensity)end
---@return System.Void
function TreeEditor.TreeGroup:UpdateMatrix()end
---@class TreeEditor.TreeGroup.LockFlag : System.Enum
TreeEditor.TreeGroup.LockFlag = {}
---@type TreeEditor.TreeGroup.LockFlag
CS.TreeEditor.TreeGroup.LockFlag = TreeEditor.TreeGroup.LockFlag

---@return System.Int32 value:1
TreeEditor.TreeGroup.LockFlag.LockPosition = 1
---@return System.Int32 value:2
TreeEditor.TreeGroup.LockFlag.LockAlignment = 2

---@class TreeEditor.TreeGroup.BuildFlag : System.Enum
TreeEditor.TreeGroup.BuildFlag = {}
---@type TreeEditor.TreeGroup.BuildFlag
CS.TreeEditor.TreeGroup.BuildFlag = TreeEditor.TreeGroup.BuildFlag

---@return System.Int32 value:1
TreeEditor.TreeGroup.BuildFlag.BuildAmbientOcclusion = 1

---@class TreeEditor.TreeGroup.DistributionMode : System.Enum
TreeEditor.TreeGroup.DistributionMode = {}
---@type TreeEditor.TreeGroup.DistributionMode
CS.TreeEditor.TreeGroup.DistributionMode = TreeEditor.TreeGroup.DistributionMode

---@return System.Int32 value:0
TreeEditor.TreeGroup.DistributionMode.Random = 0
---@return System.Int32 value:1
TreeEditor.TreeGroup.DistributionMode.Alternate = 1
---@return System.Int32 value:2
TreeEditor.TreeGroup.DistributionMode.Opposite = 2
---@return System.Int32 value:3
TreeEditor.TreeGroup.DistributionMode.Whorled = 3

---@class TreeEditor.TreeGroupBranch : TreeEditor.TreeGroup
---@field public lodQualityMultiplier System.Single
---@field public geometryMode TreeEditor.TreeGroupBranch.GeometryMode
---@field public materialBranch UnityEngine.Material
---@field public materialBreak UnityEngine.Material
---@field public materialFrond UnityEngine.Material
---@field public height UnityEngine.Vector2
---@field public radius System.Single
---@field public radiusCurve UnityEngine.AnimationCurve
---@field public radiusMode System.Boolean
---@field public capSmoothing System.Single
---@field public crinklyness System.Single
---@field public crinkCurve UnityEngine.AnimationCurve
---@field public seekBlend System.Single
---@field public seekCurve UnityEngine.AnimationCurve
---@field public noise System.Single
---@field public noiseCurve UnityEngine.AnimationCurve
---@field public noiseScaleU System.Single
---@field public noiseScaleV System.Single
---@field public flareSize System.Single
---@field public flareHeight System.Single
---@field public flareNoise System.Single
---@field public weldHeight System.Single
---@field public weldSpreadTop System.Single
---@field public weldSpreadBottom System.Single
---@field public breakingChance System.Single
---@field public breakingSpot UnityEngine.Vector2
---@field public frondCount System.Int32
---@field public frondWidth System.Single
---@field public frondCurve UnityEngine.AnimationCurve
---@field public frondRange UnityEngine.Vector2
---@field public frondRotation System.Single
---@field public frondCrease System.Single
TreeEditor.TreeGroupBranch = {}
---@type TreeEditor.TreeGroupBranch
CS.TreeEditor.TreeGroupBranch = TreeEditor.TreeGroupBranch

---@param node TreeEditor.TreeNode
---@param time System.Single
---@param includeModifications System.Boolean
---@return System.Single
function TreeEditor.TreeGroupBranch:GetRadiusAtTime(node, time, includeModifications)end
---@return System.Void
function TreeEditor.TreeGroupBranch:UpdateParameters()end
---@return System.Void
function TreeEditor.TreeGroupBranch:UpdateSplines()end
---@return System.Void
function TreeEditor.TreeGroupBranch:UpdateMatrix()end
---@param aoSpheres System.Collections.Generic.List
---@return System.Void
function TreeEditor.TreeGroupBranch:BuildAOSpheres(aoSpheres)end
---@param materials System.Collections.Generic.List
---@param verts System.Collections.Generic.List
---@param tris System.Collections.Generic.List
---@param aoSpheres System.Collections.Generic.List
---@param buildFlags System.Int32
---@param adaptiveQuality System.Single
---@param aoDensity System.Single
---@return System.Void
function TreeEditor.TreeGroupBranch:UpdateMesh(materials, verts, tris, aoSpheres, buildFlags, adaptiveQuality, aoDensity)end
---@param node TreeEditor.TreeNode
---@return System.Void
function TreeEditor.TreeGroupBranch:UpdateSpline(node)end
---@class TreeEditor.TreeGroupBranch.GeometryMode : System.Enum
TreeEditor.TreeGroupBranch.GeometryMode = {}
---@type TreeEditor.TreeGroupBranch.GeometryMode
CS.TreeEditor.TreeGroupBranch.GeometryMode = TreeEditor.TreeGroupBranch.GeometryMode

---@return System.Int32 value:0
TreeEditor.TreeGroupBranch.GeometryMode.Branch = 0
---@return System.Int32 value:1
TreeEditor.TreeGroupBranch.GeometryMode.BranchFrond = 1
---@return System.Int32 value:2
TreeEditor.TreeGroupBranch.GeometryMode.Frond = 2

---@class TreeEditor.TreeGroupLeaf : TreeEditor.TreeGroup
---@field public geometryMode System.Int32
---@field public materialLeaf UnityEngine.Material
---@field public instanceMesh UnityEngine.GameObject
---@field public size UnityEngine.Vector2
---@field public perpendicularAlign System.Single
---@field public horizontalAlign System.Single
TreeEditor.TreeGroupLeaf = {}
---@type TreeEditor.TreeGroupLeaf
CS.TreeEditor.TreeGroupLeaf = TreeEditor.TreeGroupLeaf

---@return System.Boolean
function TreeEditor.TreeGroupLeaf:CanHaveSubGroups()end
---@return System.Void
function TreeEditor.TreeGroupLeaf:UpdateParameters()end
---@return System.Void
function TreeEditor.TreeGroupLeaf:UpdateMatrix()end
---@param aoSpheres System.Collections.Generic.List
---@return System.Void
function TreeEditor.TreeGroupLeaf:BuildAOSpheres(aoSpheres)end
---@param materials System.Collections.Generic.List
---@param verts System.Collections.Generic.List
---@param tris System.Collections.Generic.List
---@param aoSpheres System.Collections.Generic.List
---@param buildFlags System.Int32
---@param adaptiveQuality System.Single
---@param aoDensity System.Single
---@return System.Void
function TreeEditor.TreeGroupLeaf:UpdateMesh(materials, verts, tris, aoSpheres, buildFlags, adaptiveQuality, aoDensity)end
---@class TreeEditor.TreeGroupLeaf.GeometryMode : System.Enum
TreeEditor.TreeGroupLeaf.GeometryMode = {}
---@type TreeEditor.TreeGroupLeaf.GeometryMode
CS.TreeEditor.TreeGroupLeaf.GeometryMode = TreeEditor.TreeGroupLeaf.GeometryMode

---@return System.Int32 value:0
TreeEditor.TreeGroupLeaf.GeometryMode.PLANE = 0
---@return System.Int32 value:1
TreeEditor.TreeGroupLeaf.GeometryMode.CROSS = 1
---@return System.Int32 value:2
TreeEditor.TreeGroupLeaf.GeometryMode.TRI_CROSS = 2
---@return System.Int32 value:3
TreeEditor.TreeGroupLeaf.GeometryMode.BILLBOARD = 3
---@return System.Int32 value:4
TreeEditor.TreeGroupLeaf.GeometryMode.MESH = 4

---@class TreeEditor.TreeGroupRoot : TreeEditor.TreeGroup
---@field public adaptiveLODQuality System.Single
---@field public shadowTextureQuality System.Int32
---@field public enableWelding System.Boolean
---@field public enableAmbientOcclusion System.Boolean
---@field public enableMaterialOptimize System.Boolean
---@field public aoDensity System.Single
---@field public rootSpread System.Single
---@field public groundOffset System.Single
---@field public rootMatrix UnityEngine.Matrix4x4
TreeEditor.TreeGroupRoot = {}
---@type TreeEditor.TreeGroupRoot
CS.TreeEditor.TreeGroupRoot = TreeEditor.TreeGroupRoot

---@param m UnityEngine.Matrix4x4
---@return System.Void
function TreeEditor.TreeGroupRoot:SetRootMatrix(m)end
---@return System.Boolean
function TreeEditor.TreeGroupRoot:CanHaveSubGroups()end
---@return System.Void
function TreeEditor.TreeGroupRoot:UpdateParameters()end
---@class TreeEditor.TreeMaterial : System.Object
---@field public material UnityEngine.Material
---@field public tileV System.Boolean
TreeEditor.TreeMaterial = {}
---@type TreeEditor.TreeMaterial
CS.TreeEditor.TreeMaterial = TreeEditor.TreeMaterial

---@class TreeEditor.TreeNode : System.Object
---@field public uniqueID System.Int32 @ setter getter
---@field public spline TreeEditor.TreeSpline
---@field public seed System.Int32
---@field public animSeed System.Single
---@field public visible System.Boolean
---@field public triStart System.Int32
---@field public triEnd System.Int32
---@field public vertStart System.Int32
---@field public vertEnd System.Int32
---@field public capRange System.Single
---@field public breakOffset System.Single
---@field public size System.Single
---@field public scale System.Single
---@field public offset System.Single
---@field public baseAngle System.Single
---@field public angle System.Single
---@field public pitch System.Single
---@field public rotation UnityEngine.Quaternion
---@field public matrix UnityEngine.Matrix4x4
---@field public parentID System.Int32
---@field public groupID System.Int32
TreeEditor.TreeNode = {}
---@type TreeEditor.TreeNode
CS.TreeEditor.TreeNode = TreeEditor.TreeNode

---@return System.Single
function TreeEditor.TreeNode:GetScale()end
---@param time System.Single
---@return System.Single
function TreeEditor.TreeNode:GetSurfaceAngleAtTime(time)end
---@param time System.Single
---@return System.Single
function TreeEditor.TreeNode:GetRadiusAtTime(time)end
---@param time System.Single
---@param pos UnityEngine.Vector3
---@param rot UnityEngine.Quaternion
---@param rad System.Single
---@return System.Void
function TreeEditor.TreeNode:GetPropertiesAtTime(time, pos, rot, rad)end
---@param time System.Single
---@return UnityEngine.Matrix4x4
function TreeEditor.TreeNode:GetLocalMatrixAtTime(time)end
---@class TreeEditor.TreeSpline : System.Object
---@field public nodes TreeEditor.SplineNode[]
---@field public tension System.Single
TreeEditor.TreeSpline = {}
---@type TreeEditor.TreeSpline
CS.TreeEditor.TreeSpline = TreeEditor.TreeSpline

---@return System.Void
function TreeEditor.TreeSpline:Reset()end
---@return System.Int32
function TreeEditor.TreeSpline:GetNodeCount()end
---@param c System.Int32
---@return System.Void
function TreeEditor.TreeSpline:SetNodeCount(c)end
---@param c System.Int32
---@return System.Void
function TreeEditor.TreeSpline:RemoveNode(c)end
---@return TreeEditor.SplineNode[]
function TreeEditor.TreeSpline:GetNodes()end
---@param pos UnityEngine.Vector3
---@param timeInSeconds System.Single
---@return System.Void
function TreeEditor.TreeSpline:AddPoint(pos, timeInSeconds)end
---@return System.Single
function TreeEditor.TreeSpline:GetApproximateLength()end
---@return System.Void
function TreeEditor.TreeSpline:UpdateTime()end
---@return System.Void
function TreeEditor.TreeSpline:UpdateRotations()end
---@param timeParam System.Single
---@return UnityEngine.Quaternion
function TreeEditor.TreeSpline:GetRotationAtTime(timeParam)end
---@param timeParam System.Single
---@return UnityEngine.Vector3
function TreeEditor.TreeSpline:GetPositionAtTime(timeParam)end
---@class TreeEditor.TreeTriangle : System.Object
---@field public tileV System.Boolean
---@field public isBillboard System.Boolean
---@field public isCutout System.Boolean
---@field public materialIndex System.Int32
---@field public v System.Int32[]
TreeEditor.TreeTriangle = {}
---@type TreeEditor.TreeTriangle
CS.TreeEditor.TreeTriangle = TreeEditor.TreeTriangle

---@return System.Void
function TreeEditor.TreeTriangle:flip()end
---@class TreeEditor.TreeVertex : System.Object
---@field public pos UnityEngine.Vector3
---@field public nor UnityEngine.Vector3
---@field public tangent UnityEngine.Vector4
---@field public uv0 UnityEngine.Vector2
---@field public uv1 UnityEngine.Vector2
---@field public color UnityEngine.Color
---@field public flag System.Boolean
TreeEditor.TreeVertex = {}
---@type TreeEditor.TreeVertex
CS.TreeEditor.TreeVertex = TreeEditor.TreeVertex

---@param primaryFactor System.Single
---@param secondaryFactor System.Single
---@param edgeFactor System.Single
---@param phase System.Single
---@return System.Void
function TreeEditor.TreeVertex:SetAnimationProperties(primaryFactor, secondaryFactor, edgeFactor, phase)end
---@param ao System.Single
---@return System.Void
function TreeEditor.TreeVertex:SetAmbientOcclusion(ao)end
---@param tv TreeEditor.TreeVertex[]
---@param factor UnityEngine.Vector2
---@return System.Void
function TreeEditor.TreeVertex:Lerp4(tv, factor)end
