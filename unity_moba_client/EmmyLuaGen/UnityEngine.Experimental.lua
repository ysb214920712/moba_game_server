---@class UnityEngine.Experimental.IntegratedSubsystemDescriptor : System.Object
---@field public id System.String @  getter
UnityEngine.Experimental.IntegratedSubsystemDescriptor = {}
---@type UnityEngine.Experimental.IntegratedSubsystemDescriptor
CS.UnityEngine.Experimental.IntegratedSubsystemDescriptor = UnityEngine.Experimental.IntegratedSubsystemDescriptor

---@class UnityEngine.Experimental.SubsystemDescriptor : System.Object
---@field public id System.String @ setter getter
---@field public subsystemImplementationType System.Type @ setter getter
UnityEngine.Experimental.SubsystemDescriptor = {}
---@type UnityEngine.Experimental.SubsystemDescriptor
CS.UnityEngine.Experimental.SubsystemDescriptor = UnityEngine.Experimental.SubsystemDescriptor

---@class UnityEngine.Experimental.IntegratedSubsystemDescriptor : UnityEngine.Experimental.IntegratedSubsystemDescriptor
UnityEngine.Experimental.IntegratedSubsystemDescriptor = {}
---@type UnityEngine.Experimental.IntegratedSubsystemDescriptor
CS.UnityEngine.Experimental.IntegratedSubsystemDescriptor = UnityEngine.Experimental.IntegratedSubsystemDescriptor

---@return any
function UnityEngine.Experimental.IntegratedSubsystemDescriptor:Create()end
---@class UnityEngine.Experimental.SubsystemDescriptor : UnityEngine.Experimental.SubsystemDescriptor
UnityEngine.Experimental.SubsystemDescriptor = {}
---@type UnityEngine.Experimental.SubsystemDescriptor
CS.UnityEngine.Experimental.SubsystemDescriptor = UnityEngine.Experimental.SubsystemDescriptor

---@return any
function UnityEngine.Experimental.SubsystemDescriptor:Create()end
---@class UnityEngine.Experimental.SubsystemManager : System.Object
UnityEngine.Experimental.SubsystemManager = {}
---@type UnityEngine.Experimental.SubsystemManager
CS.UnityEngine.Experimental.SubsystemManager = UnityEngine.Experimental.SubsystemManager

---@param descriptors any
---@return System.Void
function UnityEngine.Experimental.SubsystemManager.GetSubsystemDescriptors(descriptors)end
---@param instances any
---@return System.Void
function UnityEngine.Experimental.SubsystemManager.GetInstances(instances)end
---@class UnityEngine.Experimental.IntegratedSubsystem : System.Object
UnityEngine.Experimental.IntegratedSubsystem = {}
---@type UnityEngine.Experimental.IntegratedSubsystem
CS.UnityEngine.Experimental.IntegratedSubsystem = UnityEngine.Experimental.IntegratedSubsystem

---@return System.Void
function UnityEngine.Experimental.IntegratedSubsystem:Start()end
---@return System.Void
function UnityEngine.Experimental.IntegratedSubsystem:Stop()end
---@return System.Void
function UnityEngine.Experimental.IntegratedSubsystem:Destroy()end
---@class UnityEngine.Experimental.IntegratedSubsystem : UnityEngine.Experimental.IntegratedSubsystem
---@field public SubsystemDescriptor any @  getter
UnityEngine.Experimental.IntegratedSubsystem = {}
---@type UnityEngine.Experimental.IntegratedSubsystem
CS.UnityEngine.Experimental.IntegratedSubsystem = UnityEngine.Experimental.IntegratedSubsystem

---@class UnityEngine.Experimental.Subsystem : System.Object
UnityEngine.Experimental.Subsystem = {}
---@type UnityEngine.Experimental.Subsystem
CS.UnityEngine.Experimental.Subsystem = UnityEngine.Experimental.Subsystem

---@return System.Void
function UnityEngine.Experimental.Subsystem:Start()end
---@return System.Void
function UnityEngine.Experimental.Subsystem:Stop()end
---@return System.Void
function UnityEngine.Experimental.Subsystem:Destroy()end
---@class UnityEngine.Experimental.Subsystem : UnityEngine.Experimental.Subsystem
---@field public SubsystemDescriptor any @  getter
UnityEngine.Experimental.Subsystem = {}
---@type UnityEngine.Experimental.Subsystem
CS.UnityEngine.Experimental.Subsystem = UnityEngine.Experimental.Subsystem

