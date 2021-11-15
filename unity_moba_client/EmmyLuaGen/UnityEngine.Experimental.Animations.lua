---@class UnityEngine.Experimental.Animations.AnimationHumanStream : System.ValueType
---@field public isValid System.Boolean @  getter
---@field public humanScale System.Single @  getter
---@field public leftFootHeight System.Single @  getter
---@field public rightFootHeight System.Single @  getter
---@field public bodyLocalPosition UnityEngine.Vector3 @ setter getter
---@field public bodyLocalRotation UnityEngine.Quaternion @ setter getter
---@field public bodyPosition UnityEngine.Vector3 @ setter getter
---@field public bodyRotation UnityEngine.Quaternion @ setter getter
---@field public leftFootVelocity UnityEngine.Vector3 @  getter
---@field public rightFootVelocity UnityEngine.Vector3 @  getter
UnityEngine.Experimental.Animations.AnimationHumanStream = {}
---@type UnityEngine.Experimental.Animations.AnimationHumanStream
CS.UnityEngine.Experimental.Animations.AnimationHumanStream = UnityEngine.Experimental.Animations.AnimationHumanStream

---@param muscle UnityEngine.Experimental.Animations.MuscleHandle
---@return System.Single
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetMuscle(muscle)end
---@param muscle UnityEngine.Experimental.Animations.MuscleHandle
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetMuscle(muscle, value)end
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:ResetToStancePose()end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalPositionFromPose(index)end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalRotationFromPose(index)end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalLocalPosition(index)end
---@param index UnityEngine.AvatarIKGoal
---@param pos UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalLocalPosition(index, pos)end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalLocalRotation(index)end
---@param index UnityEngine.AvatarIKGoal
---@param rot UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalLocalRotation(index, rot)end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalPosition(index)end
---@param index UnityEngine.AvatarIKGoal
---@param pos UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalPosition(index, pos)end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalRotation(index)end
---@param index UnityEngine.AvatarIKGoal
---@param rot UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalRotation(index, rot)end
---@param index UnityEngine.AvatarIKGoal
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalWeightPosition(index, value)end
---@param index UnityEngine.AvatarIKGoal
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetGoalWeightRotation(index, value)end
---@param index UnityEngine.AvatarIKGoal
---@return System.Single
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalWeightPosition(index)end
---@param index UnityEngine.AvatarIKGoal
---@return System.Single
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetGoalWeightRotation(index)end
---@param index UnityEngine.AvatarIKHint
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetHintPosition(index)end
---@param index UnityEngine.AvatarIKHint
---@param pos UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetHintPosition(index, pos)end
---@param index UnityEngine.AvatarIKHint
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetHintWeightPosition(index, value)end
---@param index UnityEngine.AvatarIKHint
---@return System.Single
function UnityEngine.Experimental.Animations.AnimationHumanStream:GetHintWeightPosition(index)end
---@param lookAtPosition UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetLookAtPosition(lookAtPosition)end
---@param weight System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetLookAtClampWeight(weight)end
---@param weight System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetLookAtBodyWeight(weight)end
---@param weight System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetLookAtHeadWeight(weight)end
---@param weight System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SetLookAtEyesWeight(weight)end
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationHumanStream:SolveIK()end
---@class UnityEngine.Experimental.Animations.AnimationScriptPlayable : System.ValueType
---@field public Null UnityEngine.Experimental.Animations.AnimationScriptPlayable @static  getter
UnityEngine.Experimental.Animations.AnimationScriptPlayable = {}
---@type UnityEngine.Experimental.Animations.AnimationScriptPlayable
CS.UnityEngine.Experimental.Animations.AnimationScriptPlayable = UnityEngine.Experimental.Animations.AnimationScriptPlayable

---@overload fun(graph:UnityEngine.Playables.PlayableGraph, jobData:any):UnityEngine.Experimental.Animations.AnimationScriptPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param jobData any
---@param inputCount System.Int32
---@return UnityEngine.Experimental.Animations.AnimationScriptPlayable
function UnityEngine.Experimental.Animations.AnimationScriptPlayable.Create(graph, jobData, inputCount)end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:GetHandle()end
---@return any
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:GetJobData()end
---@param jobData any
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:SetJobData(jobData)end
---@param playable UnityEngine.Experimental.Animations.AnimationScriptPlayable
---@return UnityEngine.Playables.Playable
function UnityEngine.Experimental.Animations.AnimationScriptPlayable.op_Implicit(playable)end
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Animations.AnimationScriptPlayable
function UnityEngine.Experimental.Animations.AnimationScriptPlayable.op_Explicit(playable)end
---@param other UnityEngine.Experimental.Animations.AnimationScriptPlayable
---@return System.Boolean
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:Equals(other)end
---@param value System.Boolean
---@return System.Void
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:SetProcessInputs(value)end
---@return System.Boolean
function UnityEngine.Experimental.Animations.AnimationScriptPlayable:GetProcessInputs()end
---@class UnityEngine.Experimental.Animations.AnimationStream : System.ValueType
---@field public isValid System.Boolean @  getter
---@field public deltaTime System.Single @  getter
---@field public velocity UnityEngine.Vector3 @ setter getter
---@field public angularVelocity UnityEngine.Vector3 @ setter getter
---@field public rootMotionPosition UnityEngine.Vector3 @  getter
---@field public rootMotionRotation UnityEngine.Quaternion @  getter
---@field public isHumanStream System.Boolean @  getter
---@field public inputStreamCount System.Int32 @  getter
UnityEngine.Experimental.Animations.AnimationStream = {}
---@type UnityEngine.Experimental.Animations.AnimationStream
CS.UnityEngine.Experimental.Animations.AnimationStream = UnityEngine.Experimental.Animations.AnimationStream

---@return UnityEngine.Experimental.Animations.AnimationHumanStream
function UnityEngine.Experimental.Animations.AnimationStream:AsHuman()end
---@param index System.Int32
---@return UnityEngine.Experimental.Animations.AnimationStream
function UnityEngine.Experimental.Animations.AnimationStream:GetInputStream(index)end
---@class UnityEngine.Experimental.Animations.TransformStreamHandle : System.ValueType
UnityEngine.Experimental.Animations.TransformStreamHandle = {}
---@type UnityEngine.Experimental.Animations.TransformStreamHandle
CS.UnityEngine.Experimental.Animations.TransformStreamHandle = UnityEngine.Experimental.Animations.TransformStreamHandle

---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.TransformStreamHandle:IsValid(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:Resolve(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.TransformStreamHandle:IsResolved(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformStreamHandle:GetPosition(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:SetPosition(stream, position)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.TransformStreamHandle:GetRotation(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:SetRotation(stream, rotation)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformStreamHandle:GetLocalPosition(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:SetLocalPosition(stream, position)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.TransformStreamHandle:GetLocalRotation(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:SetLocalRotation(stream, rotation)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformStreamHandle:GetLocalScale(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param scale UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformStreamHandle:SetLocalScale(stream, scale)end
---@class UnityEngine.Experimental.Animations.PropertyStreamHandle : System.ValueType
UnityEngine.Experimental.Animations.PropertyStreamHandle = {}
---@type UnityEngine.Experimental.Animations.PropertyStreamHandle
CS.UnityEngine.Experimental.Animations.PropertyStreamHandle = UnityEngine.Experimental.Animations.PropertyStreamHandle

---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertyStreamHandle:IsValid(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Void
function UnityEngine.Experimental.Animations.PropertyStreamHandle:Resolve(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertyStreamHandle:IsResolved(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Single
function UnityEngine.Experimental.Animations.PropertyStreamHandle:GetFloat(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.PropertyStreamHandle:SetFloat(stream, value)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Int32
function UnityEngine.Experimental.Animations.PropertyStreamHandle:GetInt(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Int32
---@return System.Void
function UnityEngine.Experimental.Animations.PropertyStreamHandle:SetInt(stream, value)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertyStreamHandle:GetBool(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Boolean
---@return System.Void
function UnityEngine.Experimental.Animations.PropertyStreamHandle:SetBool(stream, value)end
---@class UnityEngine.Experimental.Animations.TransformSceneHandle : System.ValueType
UnityEngine.Experimental.Animations.TransformSceneHandle = {}
---@type UnityEngine.Experimental.Animations.TransformSceneHandle
CS.UnityEngine.Experimental.Animations.TransformSceneHandle = UnityEngine.Experimental.Animations.TransformSceneHandle

---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.TransformSceneHandle:IsValid(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformSceneHandle:GetPosition(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformSceneHandle:SetPosition(stream, position)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformSceneHandle:GetLocalPosition(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformSceneHandle:SetLocalPosition(stream, position)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.TransformSceneHandle:GetRotation(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.TransformSceneHandle:SetRotation(stream, rotation)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Experimental.Animations.TransformSceneHandle:GetLocalRotation(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
---@return System.Void
function UnityEngine.Experimental.Animations.TransformSceneHandle:SetLocalRotation(stream, rotation)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Animations.TransformSceneHandle:GetLocalScale(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param scale UnityEngine.Vector3
---@return System.Void
function UnityEngine.Experimental.Animations.TransformSceneHandle:SetLocalScale(stream, scale)end
---@class UnityEngine.Experimental.Animations.PropertySceneHandle : System.ValueType
UnityEngine.Experimental.Animations.PropertySceneHandle = {}
---@type UnityEngine.Experimental.Animations.PropertySceneHandle
CS.UnityEngine.Experimental.Animations.PropertySceneHandle = UnityEngine.Experimental.Animations.PropertySceneHandle

---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertySceneHandle:IsValid(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Void
function UnityEngine.Experimental.Animations.PropertySceneHandle:Resolve(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertySceneHandle:IsResolved(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Single
function UnityEngine.Experimental.Animations.PropertySceneHandle:GetFloat(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Single
---@return System.Void
function UnityEngine.Experimental.Animations.PropertySceneHandle:SetFloat(stream, value)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Int32
function UnityEngine.Experimental.Animations.PropertySceneHandle:GetInt(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Int32
---@return System.Void
function UnityEngine.Experimental.Animations.PropertySceneHandle:SetInt(stream, value)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@return System.Boolean
function UnityEngine.Experimental.Animations.PropertySceneHandle:GetBool(stream)end
---@param stream UnityEngine.Experimental.Animations.AnimationStream
---@param value System.Boolean
---@return System.Void
function UnityEngine.Experimental.Animations.PropertySceneHandle:SetBool(stream, value)end
---@class UnityEngine.Experimental.Animations.AnimatorJobExtensions : System.Object
UnityEngine.Experimental.Animations.AnimatorJobExtensions = {}
---@type UnityEngine.Experimental.Animations.AnimatorJobExtensions
CS.UnityEngine.Experimental.Animations.AnimatorJobExtensions = UnityEngine.Experimental.Animations.AnimatorJobExtensions

---@class UnityEngine.Experimental.Animations.MuscleHandle : System.ValueType
---@field public humanPartDof UnityEngine.HumanPartDof @ setter getter
---@field public dof System.Int32 @ setter getter
---@field public name System.String @  getter
---@field public muscleHandleCount System.Int32 @static  getter
UnityEngine.Experimental.Animations.MuscleHandle = {}
---@type UnityEngine.Experimental.Animations.MuscleHandle
CS.UnityEngine.Experimental.Animations.MuscleHandle = UnityEngine.Experimental.Animations.MuscleHandle

---@param muscleHandles UnityEngine.Experimental.Animations.MuscleHandle[]
---@return System.Void
function UnityEngine.Experimental.Animations.MuscleHandle.GetMuscleHandles(muscleHandles)end
