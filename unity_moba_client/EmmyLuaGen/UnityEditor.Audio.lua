---@class UnityEditor.Audio.AudioMixerEffectPlugin : UnityEditor.IAudioEffectPlugin
UnityEditor.Audio.AudioMixerEffectPlugin = {}
---@type UnityEditor.Audio.AudioMixerEffectPlugin
CS.UnityEditor.Audio.AudioMixerEffectPlugin = UnityEditor.Audio.AudioMixerEffectPlugin

---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEditor.Audio.AudioMixerEffectPlugin:SetFloatParameter(name, value)end
---@param name System.String
---@param value System.Single
---@return System.Boolean
function UnityEditor.Audio.AudioMixerEffectPlugin:GetFloatParameter(name, value)end
---@param name System.String
---@param minRange System.Single
---@param maxRange System.Single
---@param defaultValue System.Single
---@return System.Boolean
function UnityEditor.Audio.AudioMixerEffectPlugin:GetFloatParameterInfo(name, minRange, maxRange, defaultValue)end
---@param name System.String
---@param data System.Single[]
---@param numsamples System.Int32
---@return System.Boolean
function UnityEditor.Audio.AudioMixerEffectPlugin:GetFloatBuffer(name, data, numsamples)end
---@return System.Int32
function UnityEditor.Audio.AudioMixerEffectPlugin:GetSampleRate()end
---@return System.Boolean
function UnityEditor.Audio.AudioMixerEffectPlugin:IsPluginEditableAndEnabled()end
