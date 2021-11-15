---@class UnityEngine.Serialization.FormerlySerializedAsAttribute : System.Attribute
---@field public oldName System.String @  getter
UnityEngine.Serialization.FormerlySerializedAsAttribute = {}
---@type UnityEngine.Serialization.FormerlySerializedAsAttribute
CS.UnityEngine.Serialization.FormerlySerializedAsAttribute = UnityEngine.Serialization.FormerlySerializedAsAttribute

---@class UnityEngine.Serialization.UnitySurrogateSelector : System.Object
UnityEngine.Serialization.UnitySurrogateSelector = {}
---@type UnityEngine.Serialization.UnitySurrogateSelector
CS.UnityEngine.Serialization.UnitySurrogateSelector = UnityEngine.Serialization.UnitySurrogateSelector

---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Runtime.Serialization.ISerializationSurrogate
function UnityEngine.Serialization.UnitySurrogateSelector:GetSurrogate(type, context, selector)end
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Void
function UnityEngine.Serialization.UnitySurrogateSelector:ChainSelector(selector)end
---@return System.Runtime.Serialization.ISurrogateSelector
function UnityEngine.Serialization.UnitySurrogateSelector:GetNextSelector()end
