---@class UnityEngine.Experimental.GlobalIllumination.LightType : System.Enum
UnityEngine.Experimental.GlobalIllumination.LightType = {}
---@type UnityEngine.Experimental.GlobalIllumination.LightType
CS.UnityEngine.Experimental.GlobalIllumination.LightType = UnityEngine.Experimental.GlobalIllumination.LightType

---@return System.Int32 value:0
UnityEngine.Experimental.GlobalIllumination.LightType.Directional = 0
---@return System.Int32 value:1
UnityEngine.Experimental.GlobalIllumination.LightType.Point = 1
---@return System.Int32 value:2
UnityEngine.Experimental.GlobalIllumination.LightType.Spot = 2
---@return System.Int32 value:3
UnityEngine.Experimental.GlobalIllumination.LightType.Rectangle = 3
---@return System.Int32 value:4
UnityEngine.Experimental.GlobalIllumination.LightType.Disc = 4

---@class UnityEngine.Experimental.GlobalIllumination.LightMode : System.Enum
UnityEngine.Experimental.GlobalIllumination.LightMode = {}
---@type UnityEngine.Experimental.GlobalIllumination.LightMode
CS.UnityEngine.Experimental.GlobalIllumination.LightMode = UnityEngine.Experimental.GlobalIllumination.LightMode

---@return System.Int32 value:0
UnityEngine.Experimental.GlobalIllumination.LightMode.Realtime = 0
---@return System.Int32 value:1
UnityEngine.Experimental.GlobalIllumination.LightMode.Mixed = 1
---@return System.Int32 value:2
UnityEngine.Experimental.GlobalIllumination.LightMode.Baked = 2
---@return System.Int32 value:3
UnityEngine.Experimental.GlobalIllumination.LightMode.Unknown = 3

---@class UnityEngine.Experimental.GlobalIllumination.FalloffType : System.Enum
UnityEngine.Experimental.GlobalIllumination.FalloffType = {}
---@type UnityEngine.Experimental.GlobalIllumination.FalloffType
CS.UnityEngine.Experimental.GlobalIllumination.FalloffType = UnityEngine.Experimental.GlobalIllumination.FalloffType

---@return System.Int32 value:0
UnityEngine.Experimental.GlobalIllumination.FalloffType.InverseSquared = 0
---@return System.Int32 value:1
UnityEngine.Experimental.GlobalIllumination.FalloffType.InverseSquaredNoRangeAttenuation = 1
---@return System.Int32 value:2
UnityEngine.Experimental.GlobalIllumination.FalloffType.Linear = 2
---@return System.Int32 value:3
UnityEngine.Experimental.GlobalIllumination.FalloffType.Legacy = 3
---@return System.Int32 value:4
UnityEngine.Experimental.GlobalIllumination.FalloffType.Undefined = 4

---@class UnityEngine.Experimental.GlobalIllumination.LinearColor : System.ValueType
---@field public red System.Single @ setter getter
---@field public green System.Single @ setter getter
---@field public blue System.Single @ setter getter
---@field public intensity System.Single @ setter getter
UnityEngine.Experimental.GlobalIllumination.LinearColor = {}
---@type UnityEngine.Experimental.GlobalIllumination.LinearColor
CS.UnityEngine.Experimental.GlobalIllumination.LinearColor = UnityEngine.Experimental.GlobalIllumination.LinearColor

---@param color UnityEngine.Color
---@param intensity System.Single
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LinearColor.Convert(color, intensity)end
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LinearColor.Black()end
---@class UnityEngine.Experimental.GlobalIllumination.DirectionalLight : System.ValueType
---@field public instanceID System.Int32
---@field public shadow System.Boolean
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public direction UnityEngine.Vector3
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public penumbraWidthRadian System.Single
UnityEngine.Experimental.GlobalIllumination.DirectionalLight = {}
---@type UnityEngine.Experimental.GlobalIllumination.DirectionalLight
CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight = UnityEngine.Experimental.GlobalIllumination.DirectionalLight

---@class UnityEngine.Experimental.GlobalIllumination.PointLight : System.ValueType
---@field public instanceID System.Int32
---@field public shadow System.Boolean
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public position UnityEngine.Vector3
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public range System.Single
---@field public sphereRadius System.Single
---@field public falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.PointLight = {}
---@type UnityEngine.Experimental.GlobalIllumination.PointLight
CS.UnityEngine.Experimental.GlobalIllumination.PointLight = UnityEngine.Experimental.GlobalIllumination.PointLight

---@class UnityEngine.Experimental.GlobalIllumination.SpotLight : System.ValueType
---@field public instanceID System.Int32
---@field public shadow System.Boolean
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public position UnityEngine.Vector3
---@field public orientation UnityEngine.Quaternion
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public range System.Single
---@field public sphereRadius System.Single
---@field public coneAngle System.Single
---@field public innerConeAngle System.Single
---@field public falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.SpotLight = {}
---@type UnityEngine.Experimental.GlobalIllumination.SpotLight
CS.UnityEngine.Experimental.GlobalIllumination.SpotLight = UnityEngine.Experimental.GlobalIllumination.SpotLight

---@class UnityEngine.Experimental.GlobalIllumination.RectangleLight : System.ValueType
---@field public instanceID System.Int32
---@field public shadow System.Boolean
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public position UnityEngine.Vector3
---@field public orientation UnityEngine.Quaternion
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public range System.Single
---@field public width System.Single
---@field public height System.Single
UnityEngine.Experimental.GlobalIllumination.RectangleLight = {}
---@type UnityEngine.Experimental.GlobalIllumination.RectangleLight
CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight = UnityEngine.Experimental.GlobalIllumination.RectangleLight

---@class UnityEngine.Experimental.GlobalIllumination.DiscLight : System.ValueType
---@field public instanceID System.Int32
---@field public shadow System.Boolean
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public position UnityEngine.Vector3
---@field public orientation UnityEngine.Quaternion
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public range System.Single
---@field public radius System.Single
UnityEngine.Experimental.GlobalIllumination.DiscLight = {}
---@type UnityEngine.Experimental.GlobalIllumination.DiscLight
CS.UnityEngine.Experimental.GlobalIllumination.DiscLight = UnityEngine.Experimental.GlobalIllumination.DiscLight

---@class UnityEngine.Experimental.GlobalIllumination.LightDataGI : System.ValueType
---@field public instanceID System.Int32
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public orientation UnityEngine.Quaternion
---@field public position UnityEngine.Vector3
---@field public range System.Single
---@field public coneAngle System.Single
---@field public innerConeAngle System.Single
---@field public shape0 System.Single
---@field public shape1 System.Single
---@field public type UnityEngine.Experimental.GlobalIllumination.LightType
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public shadow System.Byte
---@field public falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.LightDataGI = {}
---@type UnityEngine.Experimental.GlobalIllumination.LightDataGI
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI = UnityEngine.Experimental.GlobalIllumination.LightDataGI

---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.PointLight):System.Void
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLight):System.Void
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.RectangleLight):System.Void
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.DiscLight):System.Void
---@param light UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@return System.Void
function UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)end
---@param lightInstanceID System.Int32
---@return System.Void
function UnityEngine.Experimental.GlobalIllumination.LightDataGI:InitNoBake(lightInstanceID)end
---@class UnityEngine.Experimental.GlobalIllumination.LightmapperUtils : System.Object
UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = {}
---@type UnityEngine.Experimental.GlobalIllumination.LightmapperUtils
CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = UnityEngine.Experimental.GlobalIllumination.LightmapperUtils

---@overload fun(l:UnityEngine.Light, dir:UnityEngine.Experimental.GlobalIllumination.DirectionalLight):System.Void
---@overload fun(l:UnityEngine.Light, point:UnityEngine.Experimental.GlobalIllumination.PointLight):System.Void
---@overload fun(l:UnityEngine.Light, spot:UnityEngine.Experimental.GlobalIllumination.SpotLight):System.Void
---@overload fun(l:UnityEngine.Light, rect:UnityEngine.Experimental.GlobalIllumination.RectangleLight):System.Void
---@overload fun(l:UnityEngine.Light, disc:UnityEngine.Experimental.GlobalIllumination.DiscLight):System.Void
---@param baketype UnityEngine.LightmapBakeType
---@return UnityEngine.Experimental.GlobalIllumination.LightMode
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(baketype)end
---@param l UnityEngine.Light
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractIndirect(l)end
---@param l UnityEngine.Light
---@return System.Single
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractInnerCone(l)end
---@class UnityEngine.Experimental.GlobalIllumination.Lightmapping : System.Object
UnityEngine.Experimental.GlobalIllumination.Lightmapping = {}
---@type UnityEngine.Experimental.GlobalIllumination.Lightmapping
CS.UnityEngine.Experimental.GlobalIllumination.Lightmapping = UnityEngine.Experimental.GlobalIllumination.Lightmapping

---@param del UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
---@return System.Void
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.SetDelegate(del)end
---@return UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.GetDelegate()end
---@return System.Void
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.ResetDelegate()end
