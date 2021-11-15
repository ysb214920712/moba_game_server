---@class UnityEditor.Presets.PresetSelectorReceiver : UnityEngine.ScriptableObject
UnityEditor.Presets.PresetSelectorReceiver = {}
---@type UnityEditor.Presets.PresetSelectorReceiver
CS.UnityEditor.Presets.PresetSelectorReceiver = UnityEditor.Presets.PresetSelectorReceiver

---@param selection UnityEditor.Presets.Preset
---@return System.Void
function UnityEditor.Presets.PresetSelectorReceiver:OnSelectionChanged(selection)end
---@param selection UnityEditor.Presets.Preset
---@return System.Void
function UnityEditor.Presets.PresetSelectorReceiver:OnSelectionClosed(selection)end
---@class UnityEditor.Presets.DefaultPresetSelectorReceiver : UnityEditor.Presets.PresetSelectorReceiver
UnityEditor.Presets.DefaultPresetSelectorReceiver = {}
---@type UnityEditor.Presets.DefaultPresetSelectorReceiver
CS.UnityEditor.Presets.DefaultPresetSelectorReceiver = UnityEditor.Presets.DefaultPresetSelectorReceiver

---@param selection UnityEditor.Presets.Preset
---@return System.Void
function UnityEditor.Presets.DefaultPresetSelectorReceiver:OnSelectionChanged(selection)end
---@param selection UnityEditor.Presets.Preset
---@return System.Void
function UnityEditor.Presets.DefaultPresetSelectorReceiver:OnSelectionClosed(selection)end
---@class UnityEditor.Presets.PresetSelector : UnityEditor.EditorWindow
UnityEditor.Presets.PresetSelector = {}
---@type UnityEditor.Presets.PresetSelector
CS.UnityEditor.Presets.PresetSelector = UnityEditor.Presets.PresetSelector

---@param rectangle UnityEngine.Rect
---@param targets UnityEngine.Object[]
---@return System.Boolean
function UnityEditor.Presets.PresetSelector.DrawPresetButton(rectangle, targets)end
---@overload fun(target:UnityEngine.Object, currentSelection:UnityEditor.Presets.Preset, createNewAllowed:System.Boolean, eventReceiver:UnityEditor.Presets.PresetSelectorReceiver):System.Void
---@param targets UnityEngine.Object[]
---@param currentSelection UnityEditor.Presets.Preset
---@param createNewAllowed System.Boolean
---@return System.Void
function UnityEditor.Presets.PresetSelector.ShowSelector(targets, currentSelection, createNewAllowed)end
---@class UnityEditor.Presets.Preset : UnityEngine.Object
---@field public PropertyModifications UnityEditor.PropertyModification[] @  getter
UnityEditor.Presets.Preset = {}
---@type UnityEditor.Presets.Preset
CS.UnityEditor.Presets.Preset = UnityEditor.Presets.Preset

---@overload fun(target:UnityEngine.Object, selectedPropertyPaths:System.String[]):System.Boolean
---@param target UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset:ApplyTo(target)end
---@param target UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset:DataEquals(target)end
---@param source UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset:UpdateProperties(source)end
---@return System.String
function UnityEditor.Presets.Preset:GetTargetFullTypeName()end
---@return System.String
function UnityEditor.Presets.Preset:GetTargetTypeName()end
---@return System.Boolean
function UnityEditor.Presets.Preset:IsValid()end
---@param target UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset:CanBeAppliedTo(target)end
---@param target UnityEngine.Object
---@return UnityEditor.Presets.Preset
function UnityEditor.Presets.Preset.GetDefaultForObject(target)end
---@param preset UnityEditor.Presets.Preset
---@return UnityEditor.Presets.Preset
function UnityEditor.Presets.Preset.GetDefaultForPreset(preset)end
---@param preset UnityEditor.Presets.Preset
---@return System.Boolean
function UnityEditor.Presets.Preset.SetAsDefault(preset)end
---@param preset UnityEditor.Presets.Preset
---@return System.Void
function UnityEditor.Presets.Preset.RemoveFromDefault(preset)end
---@param preset UnityEditor.Presets.Preset
---@return System.Boolean
function UnityEditor.Presets.Preset.IsPresetExcludedFromDefaultPresets(preset)end
---@param target UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset.IsObjectExcludedFromDefaultPresets(target)end
---@param reference UnityEngine.Object
---@return System.Boolean
function UnityEditor.Presets.Preset.IsObjectExcludedFromPresets(reference)end
