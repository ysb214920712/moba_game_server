---@class UnityEngine.XR.WSA.Input.GestureSettings : System.Enum
UnityEngine.XR.WSA.Input.GestureSettings = {}
---@type UnityEngine.XR.WSA.Input.GestureSettings
CS.UnityEngine.XR.WSA.Input.GestureSettings = UnityEngine.XR.WSA.Input.GestureSettings

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.GestureSettings.None = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.GestureSettings.Tap = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Input.GestureSettings.DoubleTap = 2
---@return System.Int32 value:4
UnityEngine.XR.WSA.Input.GestureSettings.Hold = 4
---@return System.Int32 value:8
UnityEngine.XR.WSA.Input.GestureSettings.ManipulationTranslate = 8

---@class UnityEngine.XR.WSA.Input.HoldCompletedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.HoldCompletedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.HoldCompletedEventArgs
CS.UnityEngine.XR.WSA.Input.HoldCompletedEventArgs = UnityEngine.XR.WSA.Input.HoldCompletedEventArgs

---@class UnityEngine.XR.WSA.Input.HoldCanceledEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.HoldCanceledEventArgs = {}
---@type UnityEngine.XR.WSA.Input.HoldCanceledEventArgs
CS.UnityEngine.XR.WSA.Input.HoldCanceledEventArgs = UnityEngine.XR.WSA.Input.HoldCanceledEventArgs

---@class UnityEngine.XR.WSA.Input.HoldStartedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.HoldStartedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.HoldStartedEventArgs
CS.UnityEngine.XR.WSA.Input.HoldStartedEventArgs = UnityEngine.XR.WSA.Input.HoldStartedEventArgs

---@class UnityEngine.XR.WSA.Input.TappedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public tapCount System.Int32 @  getter
UnityEngine.XR.WSA.Input.TappedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.TappedEventArgs
CS.UnityEngine.XR.WSA.Input.TappedEventArgs = UnityEngine.XR.WSA.Input.TappedEventArgs

---@class UnityEngine.XR.WSA.Input.ManipulationCanceledEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.ManipulationCanceledEventArgs = {}
---@type UnityEngine.XR.WSA.Input.ManipulationCanceledEventArgs
CS.UnityEngine.XR.WSA.Input.ManipulationCanceledEventArgs = UnityEngine.XR.WSA.Input.ManipulationCanceledEventArgs

---@class UnityEngine.XR.WSA.Input.ManipulationCompletedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public cumulativeDelta UnityEngine.Vector3 @  getter
UnityEngine.XR.WSA.Input.ManipulationCompletedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.ManipulationCompletedEventArgs
CS.UnityEngine.XR.WSA.Input.ManipulationCompletedEventArgs = UnityEngine.XR.WSA.Input.ManipulationCompletedEventArgs

---@class UnityEngine.XR.WSA.Input.ManipulationStartedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.ManipulationStartedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.ManipulationStartedEventArgs
CS.UnityEngine.XR.WSA.Input.ManipulationStartedEventArgs = UnityEngine.XR.WSA.Input.ManipulationStartedEventArgs

---@class UnityEngine.XR.WSA.Input.ManipulationUpdatedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public cumulativeDelta UnityEngine.Vector3 @  getter
UnityEngine.XR.WSA.Input.ManipulationUpdatedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.ManipulationUpdatedEventArgs
CS.UnityEngine.XR.WSA.Input.ManipulationUpdatedEventArgs = UnityEngine.XR.WSA.Input.ManipulationUpdatedEventArgs

---@class UnityEngine.XR.WSA.Input.NavigationCanceledEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.NavigationCanceledEventArgs = {}
---@type UnityEngine.XR.WSA.Input.NavigationCanceledEventArgs
CS.UnityEngine.XR.WSA.Input.NavigationCanceledEventArgs = UnityEngine.XR.WSA.Input.NavigationCanceledEventArgs

---@class UnityEngine.XR.WSA.Input.NavigationCompletedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public normalizedOffset UnityEngine.Vector3 @  getter
UnityEngine.XR.WSA.Input.NavigationCompletedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.NavigationCompletedEventArgs
CS.UnityEngine.XR.WSA.Input.NavigationCompletedEventArgs = UnityEngine.XR.WSA.Input.NavigationCompletedEventArgs

---@class UnityEngine.XR.WSA.Input.NavigationStartedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.NavigationStartedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.NavigationStartedEventArgs
CS.UnityEngine.XR.WSA.Input.NavigationStartedEventArgs = UnityEngine.XR.WSA.Input.NavigationStartedEventArgs

---@class UnityEngine.XR.WSA.Input.NavigationUpdatedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public normalizedOffset UnityEngine.Vector3 @  getter
UnityEngine.XR.WSA.Input.NavigationUpdatedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.NavigationUpdatedEventArgs
CS.UnityEngine.XR.WSA.Input.NavigationUpdatedEventArgs = UnityEngine.XR.WSA.Input.NavigationUpdatedEventArgs

---@class UnityEngine.XR.WSA.Input.RecognitionEndedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.RecognitionEndedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.RecognitionEndedEventArgs
CS.UnityEngine.XR.WSA.Input.RecognitionEndedEventArgs = UnityEngine.XR.WSA.Input.RecognitionEndedEventArgs

---@class UnityEngine.XR.WSA.Input.RecognitionStartedEventArgs : System.ValueType
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public headPose UnityEngine.Pose @  getter
UnityEngine.XR.WSA.Input.RecognitionStartedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.RecognitionStartedEventArgs
CS.UnityEngine.XR.WSA.Input.RecognitionStartedEventArgs = UnityEngine.XR.WSA.Input.RecognitionStartedEventArgs

---@class UnityEngine.XR.WSA.Input.GestureErrorEventArgs : System.ValueType
---@field public error System.String @ setter getter
---@field public hresult System.Int32 @ setter getter
UnityEngine.XR.WSA.Input.GestureErrorEventArgs = {}
---@type UnityEngine.XR.WSA.Input.GestureErrorEventArgs
CS.UnityEngine.XR.WSA.Input.GestureErrorEventArgs = UnityEngine.XR.WSA.Input.GestureErrorEventArgs

---@class UnityEngine.XR.WSA.Input.GestureRecognizer : System.Object
UnityEngine.XR.WSA.Input.GestureRecognizer = {}
---@type UnityEngine.XR.WSA.Input.GestureRecognizer
CS.UnityEngine.XR.WSA.Input.GestureRecognizer = UnityEngine.XR.WSA.Input.GestureRecognizer

---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_Tapped(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_Tapped(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationCanceled(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationCompleted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_RecognitionEnded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_RecognitionEnded(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_RecognitionStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_RecognitionStarted(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_GestureError(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_GestureError(value)end
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:Dispose()end
---@param newMaskValue UnityEngine.XR.WSA.Input.GestureSettings
---@return UnityEngine.XR.WSA.Input.GestureSettings
function UnityEngine.XR.WSA.Input.GestureRecognizer:SetRecognizableGestures(newMaskValue)end
---@return UnityEngine.XR.WSA.Input.GestureSettings
function UnityEngine.XR.WSA.Input.GestureRecognizer:GetRecognizableGestures()end
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:StartCapturingGestures()end
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:StopCapturingGestures()end
---@return System.Boolean
function UnityEngine.XR.WSA.Input.GestureRecognizer:IsCapturingGestures()end
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:CancelGestures()end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_HoldStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.HoldStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_HoldStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.TappedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_TappedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.TappedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_TappedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationUpdatedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_ManipulationUpdatedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.ManipulationUpdatedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_ManipulationUpdatedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationCanceledEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationCanceledEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationCompletedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationCompletedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationUpdatedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_NavigationUpdatedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.NavigationUpdatedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_NavigationUpdatedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.RecognitionEndedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_RecognitionEndedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.RecognitionEndedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_RecognitionEndedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.RecognitionStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_RecognitionStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.RecognitionStartedEventDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_RecognitionStartedEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.GestureErrorDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:add_GestureErrorEvent(value)end
---@param value UnityEngine.XR.WSA.Input.GestureRecognizer.GestureErrorDelegate
---@return System.Void
function UnityEngine.XR.WSA.Input.GestureRecognizer:remove_GestureErrorEvent(value)end
---@class UnityEngine.XR.WSA.Input.InteractionSourceKind : System.Enum
UnityEngine.XR.WSA.Input.InteractionSourceKind = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceKind
CS.UnityEngine.XR.WSA.Input.InteractionSourceKind = UnityEngine.XR.WSA.Input.InteractionSourceKind

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.InteractionSourceKind.Other = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.InteractionSourceKind.Hand = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Input.InteractionSourceKind.Voice = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.Input.InteractionSourceKind.Controller = 3

---@class UnityEngine.XR.WSA.Input.InteractionSource : System.ValueType
---@field public id System.UInt32 @  getter
---@field public kind UnityEngine.XR.WSA.Input.InteractionSourceKind @  getter
---@field public handedness UnityEngine.XR.WSA.Input.InteractionSourceHandedness @  getter
---@field public supportsGrasp System.Boolean @  getter
---@field public supportsMenu System.Boolean @  getter
---@field public supportsPointing System.Boolean @  getter
---@field public supportsThumbstick System.Boolean @  getter
---@field public supportsTouchpad System.Boolean @  getter
---@field public vendorId System.UInt16 @  getter
---@field public productId System.UInt16 @  getter
---@field public productVersion System.UInt16 @  getter
UnityEngine.XR.WSA.Input.InteractionSource = {}
---@type UnityEngine.XR.WSA.Input.InteractionSource
CS.UnityEngine.XR.WSA.Input.InteractionSource = UnityEngine.XR.WSA.Input.InteractionSource

---@overload fun(other:UnityEngine.XR.WSA.Input.InteractionSource):System.Boolean
---@param obj System.Object
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSource:Equals(obj)end
---@return System.Int32
function UnityEngine.XR.WSA.Input.InteractionSource:GetHashCode()end
---@class UnityEngine.XR.WSA.Input.InteractionSourceHandedness : System.Enum
UnityEngine.XR.WSA.Input.InteractionSourceHandedness = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceHandedness
CS.UnityEngine.XR.WSA.Input.InteractionSourceHandedness = UnityEngine.XR.WSA.Input.InteractionSourceHandedness

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.InteractionSourceHandedness.Unknown = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.InteractionSourceHandedness.Left = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Input.InteractionSourceHandedness.Right = 2

---@class UnityEngine.XR.WSA.Input.InteractionSourcePressType : System.Enum
UnityEngine.XR.WSA.Input.InteractionSourcePressType = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourcePressType
CS.UnityEngine.XR.WSA.Input.InteractionSourcePressType = UnityEngine.XR.WSA.Input.InteractionSourcePressType

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.InteractionSourcePressType.None = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.InteractionSourcePressType.Select = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Input.InteractionSourcePressType.Menu = 2
---@return System.Int32 value:3
UnityEngine.XR.WSA.Input.InteractionSourcePressType.Grasp = 3
---@return System.Int32 value:4
UnityEngine.XR.WSA.Input.InteractionSourcePressType.Touchpad = 4
---@return System.Int32 value:5
UnityEngine.XR.WSA.Input.InteractionSourcePressType.Thumbstick = 5

---@class UnityEngine.XR.WSA.Input.InteractionSourceNode : System.Enum
UnityEngine.XR.WSA.Input.InteractionSourceNode = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceNode
CS.UnityEngine.XR.WSA.Input.InteractionSourceNode = UnityEngine.XR.WSA.Input.InteractionSourceNode

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.InteractionSourceNode.Grip = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.InteractionSourceNode.Pointer = 1

---@class UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy : System.Enum
UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy
CS.UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy = UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy

---@return System.Int32 value:0
UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy.None = 0
---@return System.Int32 value:1
UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy.Approximate = 1
---@return System.Int32 value:2
UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy.High = 2

---@class UnityEngine.XR.WSA.Input.InteractionSourcePose : System.ValueType
---@field public positionAccuracy UnityEngine.XR.WSA.Input.InteractionSourcePositionAccuracy @  getter
UnityEngine.XR.WSA.Input.InteractionSourcePose = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourcePose
CS.UnityEngine.XR.WSA.Input.InteractionSourcePose = UnityEngine.XR.WSA.Input.InteractionSourcePose

---@overload fun(position:UnityEngine.Vector3, node:UnityEngine.XR.WSA.Input.InteractionSourceNode):System.Boolean
---@param position UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetPosition(position)end
---@overload fun(rotation:UnityEngine.Quaternion):System.Boolean
---@param rotation UnityEngine.Quaternion
---@param node UnityEngine.XR.WSA.Input.InteractionSourceNode
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetRotation(rotation, node)end
---@overload fun(forward:UnityEngine.Vector3):System.Boolean
---@param forward UnityEngine.Vector3
---@param node UnityEngine.XR.WSA.Input.InteractionSourceNode
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetForward(forward, node)end
---@overload fun(right:UnityEngine.Vector3):System.Boolean
---@param right UnityEngine.Vector3
---@param node UnityEngine.XR.WSA.Input.InteractionSourceNode
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetRight(right, node)end
---@overload fun(up:UnityEngine.Vector3):System.Boolean
---@param up UnityEngine.Vector3
---@param node UnityEngine.XR.WSA.Input.InteractionSourceNode
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetUp(up, node)end
---@param velocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetVelocity(velocity)end
---@param angularVelocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourcePose:TryGetAngularVelocity(angularVelocity)end
---@class UnityEngine.XR.WSA.Input.InteractionSourceProperties : System.ValueType
---@field public sourceLossRisk System.Double @  getter
---@field public sourceLossMitigationDirection UnityEngine.Vector3 @  getter
---@field public location UnityEngine.XR.WSA.Input.InteractionSourceLocation @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
UnityEngine.XR.WSA.Input.InteractionSourceProperties = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceProperties
CS.UnityEngine.XR.WSA.Input.InteractionSourceProperties = UnityEngine.XR.WSA.Input.InteractionSourceProperties

---@class UnityEngine.XR.WSA.Input.InteractionSourceState : System.ValueType
---@field public anyPressed System.Boolean @  getter
---@field public headPose UnityEngine.Pose @  getter
---@field public properties UnityEngine.XR.WSA.Input.InteractionSourceProperties @  getter
---@field public source UnityEngine.XR.WSA.Input.InteractionSource @  getter
---@field public sourcePose UnityEngine.XR.WSA.Input.InteractionSourcePose @  getter
---@field public selectPressedAmount System.Single @  getter
---@field public selectPressed System.Boolean @  getter
---@field public menuPressed System.Boolean @  getter
---@field public grasped System.Boolean @  getter
---@field public touchpadTouched System.Boolean @  getter
---@field public touchpadPressed System.Boolean @  getter
---@field public touchpadPosition UnityEngine.Vector2 @  getter
---@field public thumbstickPosition UnityEngine.Vector2 @  getter
---@field public thumbstickPressed System.Boolean @  getter
---@field public pressed System.Boolean @  getter
---@field public headRay UnityEngine.Ray @  getter
UnityEngine.XR.WSA.Input.InteractionSourceState = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceState
CS.UnityEngine.XR.WSA.Input.InteractionSourceState = UnityEngine.XR.WSA.Input.InteractionSourceState

---@class UnityEngine.XR.WSA.Input.InteractionSourceDetectedEventArgs : System.ValueType
---@field public state UnityEngine.XR.WSA.Input.InteractionSourceState @ setter getter
UnityEngine.XR.WSA.Input.InteractionSourceDetectedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceDetectedEventArgs
CS.UnityEngine.XR.WSA.Input.InteractionSourceDetectedEventArgs = UnityEngine.XR.WSA.Input.InteractionSourceDetectedEventArgs

---@class UnityEngine.XR.WSA.Input.InteractionSourceLostEventArgs : System.ValueType
---@field public state UnityEngine.XR.WSA.Input.InteractionSourceState @ setter getter
UnityEngine.XR.WSA.Input.InteractionSourceLostEventArgs = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceLostEventArgs
CS.UnityEngine.XR.WSA.Input.InteractionSourceLostEventArgs = UnityEngine.XR.WSA.Input.InteractionSourceLostEventArgs

---@class UnityEngine.XR.WSA.Input.InteractionSourcePressedEventArgs : System.ValueType
---@field public state UnityEngine.XR.WSA.Input.InteractionSourceState @ setter getter
---@field public pressType UnityEngine.XR.WSA.Input.InteractionSourcePressType @ setter getter
UnityEngine.XR.WSA.Input.InteractionSourcePressedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourcePressedEventArgs
CS.UnityEngine.XR.WSA.Input.InteractionSourcePressedEventArgs = UnityEngine.XR.WSA.Input.InteractionSourcePressedEventArgs

---@class UnityEngine.XR.WSA.Input.InteractionSourceReleasedEventArgs : System.ValueType
---@field public state UnityEngine.XR.WSA.Input.InteractionSourceState @ setter getter
---@field public pressType UnityEngine.XR.WSA.Input.InteractionSourcePressType @ setter getter
UnityEngine.XR.WSA.Input.InteractionSourceReleasedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceReleasedEventArgs
CS.UnityEngine.XR.WSA.Input.InteractionSourceReleasedEventArgs = UnityEngine.XR.WSA.Input.InteractionSourceReleasedEventArgs

---@class UnityEngine.XR.WSA.Input.InteractionSourceUpdatedEventArgs : System.ValueType
---@field public state UnityEngine.XR.WSA.Input.InteractionSourceState @ setter getter
UnityEngine.XR.WSA.Input.InteractionSourceUpdatedEventArgs = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceUpdatedEventArgs
CS.UnityEngine.XR.WSA.Input.InteractionSourceUpdatedEventArgs = UnityEngine.XR.WSA.Input.InteractionSourceUpdatedEventArgs

---@class UnityEngine.XR.WSA.Input.InteractionManager : System.Object
---@field public numSourceStates System.Int32 @static  getter
UnityEngine.XR.WSA.Input.InteractionManager = {}
---@type UnityEngine.XR.WSA.Input.InteractionManager
CS.UnityEngine.XR.WSA.Input.InteractionManager = UnityEngine.XR.WSA.Input.InteractionManager

---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceDetected(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceDetected(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceLost(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceLost(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourcePressed(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourcePressed(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceReleased(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceReleased(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceUpdated(value)end
---@param value System.Action
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceUpdated(value)end
---@overload fun(sourceStates:UnityEngine.XR.WSA.Input.InteractionSourceState[]):System.Int32
---@return UnityEngine.XR.WSA.Input.InteractionSourceState[]
function UnityEngine.XR.WSA.Input.InteractionManager.GetCurrentReading()end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_SourceDetected(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_SourceDetected(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_SourceLost(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_SourceLost(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_SourcePressed(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_SourcePressed(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_SourceReleased(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_SourceReleased(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_SourceUpdated(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_SourceUpdated(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceDetectedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceDetectedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceLostLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceLostLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourcePressedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourcePressedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceReleasedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceReleasedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.add_InteractionSourceUpdatedLegacy(value)end
---@param value UnityEngine.XR.WSA.Input.InteractionManager.SourceEventHandler
---@return System.Void
function UnityEngine.XR.WSA.Input.InteractionManager.remove_InteractionSourceUpdatedLegacy(value)end
---@class UnityEngine.XR.WSA.Input.InteractionSourceLocation : System.ValueType
UnityEngine.XR.WSA.Input.InteractionSourceLocation = {}
---@type UnityEngine.XR.WSA.Input.InteractionSourceLocation
CS.UnityEngine.XR.WSA.Input.InteractionSourceLocation = UnityEngine.XR.WSA.Input.InteractionSourceLocation

---@param velocity UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourceLocation:TryGetVelocity(velocity)end
---@param position UnityEngine.Vector3
---@return System.Boolean
function UnityEngine.XR.WSA.Input.InteractionSourceLocation:TryGetPosition(position)end
