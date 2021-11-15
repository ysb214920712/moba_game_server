---@class UnityEngine.Jobs.IJobParallelForTransformExtensions : System.Object
UnityEngine.Jobs.IJobParallelForTransformExtensions = {}
---@type UnityEngine.Jobs.IJobParallelForTransformExtensions
CS.UnityEngine.Jobs.IJobParallelForTransformExtensions = UnityEngine.Jobs.IJobParallelForTransformExtensions

---@class UnityEngine.Jobs.TransformAccess : System.ValueType
---@field public position UnityEngine.Vector3 @ setter getter
---@field public rotation UnityEngine.Quaternion @ setter getter
---@field public localPosition UnityEngine.Vector3 @ setter getter
---@field public localRotation UnityEngine.Quaternion @ setter getter
---@field public localScale UnityEngine.Vector3 @ setter getter
UnityEngine.Jobs.TransformAccess = {}
---@type UnityEngine.Jobs.TransformAccess
CS.UnityEngine.Jobs.TransformAccess = UnityEngine.Jobs.TransformAccess

---@class UnityEngine.Jobs.TransformAccessArray : System.ValueType
---@field public isCreated System.Boolean @  getter
---@field public Item UnityEngine.Transform @ setter getter
---@field public capacity System.Int32 @ setter getter
---@field public length System.Int32 @  getter
UnityEngine.Jobs.TransformAccessArray = {}
---@type UnityEngine.Jobs.TransformAccessArray
CS.UnityEngine.Jobs.TransformAccessArray = UnityEngine.Jobs.TransformAccessArray

---@param capacity System.Int32
---@param desiredJobCount System.Int32
---@param array UnityEngine.Jobs.TransformAccessArray
---@return System.Void
function UnityEngine.Jobs.TransformAccessArray.Allocate(capacity, desiredJobCount, array)end
---@return System.Void
function UnityEngine.Jobs.TransformAccessArray:Dispose()end
---@param transform UnityEngine.Transform
---@return System.Void
function UnityEngine.Jobs.TransformAccessArray:Add(transform)end
---@param index System.Int32
---@return System.Void
function UnityEngine.Jobs.TransformAccessArray:RemoveAtSwapBack(index)end
---@param transforms UnityEngine.Transform[]
---@return System.Void
function UnityEngine.Jobs.TransformAccessArray:SetTransforms(transforms)end
