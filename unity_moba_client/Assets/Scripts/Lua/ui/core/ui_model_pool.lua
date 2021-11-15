---@class UIModel : BehaviourBridge
local UIModel = class("UIModel", BehaviourBridge)

function UIModel:ctor(go, res_path, ui)
    BehaviourBridge.ctor(self, go)

    self.res_path_ = res_path
    ---@type UIBase
    self.owner_ui = ui
    self.ani_event_delegate_ = nil
    self.effect_list_ = {}
    self.audio_list_ = {}
end

function UIModel:set_ani_event_delegate(func)
    self.ani_event_delegate_ = func
end

function UIModel:bridge_type()
    return U.LuaBridgeType.AnimatorEvent
end

function UIModel:bind_behaviour_funcs()
    local Func = U.UnityBehaviourFunc

    return {
        [Func.OnAnimationEvent] = self:wrap_func("on_animation_event"),
        [Func.OnAnimatorStateEnter] = self:wrap_func("on_animator_state_enter"),
        [Func.OnAnimatorStateExit] = self:wrap_func("on_animator_state_exit"),
        [Func.OnAnimationEffect] = self:wrap_func("on_animation_effect"),
        [Func.OnAnimationSound] = self:wrap_func("on_animation_sound"),
    }
end

function UIModel:on_animation_event(ani_evt)
    if self.ani_event_delegate_ then
        self.ani_event_delegate_("on_animation_event", ani_evt)
    end
end

function UIModel:on_animator_state_enter(state_info)
    if self.ani_event_delegate_ then
        self.ani_event_delegate_("on_animator_state_enter", state_info)
    end
end

function UIModel:on_animator_state_exit(state_info)
    if self.ani_event_delegate_ then
        self.ani_event_delegate_("on_animator_state_exit", state_info)
    end
end

---@param effect Effect
function UIModel:on_animation_effect(effect)
    if not effect then
        return
    end

    table.insert(self.effect_list_, effect.gid);

    if self.owner_ui then
        self.owner_ui:update_sorting_order()
    end
end

---@param audioProp AudioMgr.AudioProp
function UIModel:on_animation_sound(audioProp)
    table.insert(self.audio_list_, audioProp.id)
end


function UIModel:destroy()
    for _, gid in pairs(self.effect_list_) do
        U.EffectMgr.Destroy(gid)
    end

    for _, id in pairs(self.audio_list_) do
        U.AudioMgr.Stop(id)
    end

    U.GameObject.Destroy(self.lua_bridge__)
    self.lua_bridge__ = nil

    UIModelPool:_put(self.res_path_, self.gameObject)

    self.effect_list_ = {}
    self.audio_list_ = {}
    self.owner_ui = nil
    self.res_path_ = nil
    self.ani_event_delegate_ = nil
end

-------------------------------------------------------------------------------

---@class UIModelInfo
local UIModelInfo = class("UIModelInfo")

function UIModelInfo:ctor(char_id)
    self.character_id = char_id
    self.weapon_id = nil
    ---@type UIModel
    self.character_model = nil
    ---@type UIModel
    self.weapon_model = nil

    self.gos = {}
    self.enabled__ = false
    self.relax_ani = ""

    self.relax_ani_timer = nil
end

function UIModelInfo:destroy()
    self:remove_relax_ani_timer()
    self.character_model:destroy()
    self.character_model = nil

    if self.weapon_model then
        self.weapon_model:destroy()
    end
end

function UIModelInfo:set_enabled(enabled)
    self.enabled__ = enabled
end

function UIModelInfo:get_enabled()
    return self.enabled__
end

function UIModelInfo:switch_weapon(weapon_id, weapon_cb, ui, relax_ani)
    if self.weapon_model then
        self.weapon_model:destroy()
        self.weapon_model = nil
    end

    if relax_ani then
        self.relax_ani = relax_ani
    end

    self.weapon_id = weapon_id
    if weapon_id and weapon_id ~= 0 then
        local prop_weapon = ItemMgr:get(weapon_id):prop()

        UIModelPool:_get(prop_weapon.Model, function(weapon)
            self.weapon_model = UIModel.new(weapon, prop_weapon.Model, ui)
            local weapon_export = {}
            util.get_comp(weapon.gameObject, U.ReferGameObjects):ExportToLuaTable(weapon_export)
            if prop_weapon.ShowWeaponNode then
                local node = self.gos[prop_weapon.ShowWeaponNode]
                if node then
                    weapon.transform:SetParent(node, false)
                else
                    ELOG("show weapon miss show node %s %s", self.character_id, self.weapon_id)
                end
            else
                weapon.transform:SetParent(self.gos.weapon_r, false)
            end

            weapon_export.light.gameObject:SetActive(false)
            weapon.transform.localRotation = U.Quaternion.Euler(0, 0, 0)
            weapon.transform.localScale = U.Vector3(0.8, 0.8, 0.8)

            if self.enabled__ and relax_ani then
                self.gos.animator:Play(relax_ani, 0, 0)
            end

            if weapon_cb then
                weapon_cb()
            end
            local com = util.get_comp(self.gos.model, U.ChangeSpineSkinSlot)
            if com and prop_weapon.WeaponSpine then
                com:ChangeSkin(prop_weapon.WeaponSpine)
            end
            weapon.transform.gameObject:SetActive(false)
        end)
    elseif weapon_cb then
        if weapon_id == 0 then
            ELOG("UIModelPool SwitchWeapon Missing WeaponID")
        end
        weapon_cb()
    end
end

function UIModelInfo:add_relax_ani_timer(first)
    self:remove_relax_ani_timer()

    local max_delay = 20
    if first then
        max_delay = 7
    end
    self.relax_ani_timer = Game.RealTimer:add(math.random(5, max_delay), function()
        if self.enabled__ then
            self.gos.animator:Play(self.relax_ani, 0, 0)
        end
        self:add_relax_ani_timer()
    end)
end

function UIModelInfo:remove_relax_ani_timer()
    if self.relax_ani_timer then
        Game.RealTimer:remove(self.relax_ani_timer)
        self.relax_ani_timer = nil
    end
end

-------------------------------------------------------------------------------

---@class UIModelWaitInfo
local UIModelWaitInfo = class("UIModelWaitInfo")

function UIModelWaitInfo:ctor()
    self.is_loading = false
    self.callbacks = {}
    self.wait_gos = {}
end

-------------------------------------------------------------------------------

---@class UIModelPool
UIModelPool = singleton("UIModelPool")
local M = UIModelPool

function M:init()
    ---@type table<string, ObjectPool>
    self.objectpools = {}
    ---@type table<string, UIModelWaitInfo>
    self.wait_map = {}
end


function M:_get(path_id, callback)
    local pool = self.objectpools[path_id]
    if pool then
        local obj = pool:get()
        obj.transform:SetParent(nil,false)
        callback(obj)
    else
        local wait_info = self.wait_map[path_id]
        if not wait_info then
            wait_info = UIModelWaitInfo.new()
            self.wait_map[path_id] = wait_info
        end
        table.insert(wait_info.callbacks, callback)

        if not wait_info.is_loading then
            wait_info.is_loading = true
            U.XLoader.LoadAsync(path_id, typeof(U.GameObject), function(obj)
                if obj then
                    pool = ObjectPool.create_from_prefeb(1, obj, ObjectPool.GlobalContainer)
                    self.objectpools[path_id] = pool
                    self.wait_map[path_id] = nil

                    for _, put_go in pairs(wait_info.wait_gos) do
                        pool:put(put_go)
                    end

                    for _, cb in pairs(wait_info.callbacks) do
                        local obj = pool:get()
                        obj.transform:SetParent(nil,false)
                        cb(obj)
                    end
                end
            end)
        end
    end
end

function M:_put(path_id, go)
    local pool = self.objectpools[path_id]
    if pool then
        self:clear_shadow(go)
        pool:put(go)
        return
    end

    local wait_info = self.wait_map[path_id]
    if not wait_info then
        wait_info = UIModelWaitInfo.new()
        self.wait_map[path_id] = wait_info
    end
    table.insert(wait_info.wait_gos, go)

    if not wait_info.is_loading then
        wait_info.is_loading = true
        U.XLoader.LoadAsync(path_id, typeof(U.GameObject), function(obj)
            if obj then
                pool = ObjectPool.create_from_prefeb(1, obj, ObjectPool.GlobalContainer)
                self.objectpools[path_id] = pool
                self.wait_map[path_id] = nil

                for _, put_go in pairs(wait_info.wait_gos) do
                    pool:put(put_go)
                end

                for _, cb in pairs(wait_info.callbacks) do
                    local obj = pool:get()
                    obj.transform:SetParent(nil,false)
                    cb(obj)
                end
            end
        end)
    end
end

function M:get_model(char_id, ui, callback, weapon_id, born_ani, relax_ani, skin_id, need_shadow)
    local prop_character = resmng.get_conf("propCharacter", char_id)
    local mode_path, model_weapon_id
    if skin_id then
        ---@type ItemHeroSkin
        local item_skin = ItemMgr:create(skin_id, nil, false)
        mode_path = item_skin:get_model()
        model_weapon_id = item_skin:get_show_weapon()
    else
        mode_path = prop_character.Model
        model_weapon_id = prop_character.Weapon
    end

    self:_get(mode_path, function(hero)
        local model_info = UIModelInfo.new(char_id)
        model_info.character_model = UIModel.new(hero, mode_path, ui)
        model_info.enabled__ = true
        model_info.relax_ani = relax_ani or "ak.show_stand01"

        util.get_comp(hero, U.ReferGameObjects):ExportToLuaTable(model_info.gos)
        -- model_info.gos.navigation.enabled = false
        model_info.gos.animator.updateMode = U.AnimatorUpdateMode.UnscaledTime
        model_info.gos.animator:SetLayerWeight(1, 0)

        -- born_ani = born_ani or "ak.show_born"
        -- model_info.gos.animator:Play(born_ani, 0, 0)
        -- model_info:add_relax_ani_timer(true)

        local layer = ui:get_layer()
        model_info.gos.renderer.sortingLayerName = UIConfig.Layers[layer]
        model_info.gos.renderer.sortingOrder = UIMgr:get_layer_sorting_order(layer) + 10

        if need_shadow then
            self:create_model_shadow(hero)
        end

        model_info:switch_weapon(weapon_id or model_weapon_id, function()
            if callback then
                callback(model_info)
                callback = nil
            end
        end, ui)

        if callback and model_info.weapon_model then
            callback(model_info)
            callback = nil
        end
    end)
end

---@param model_info UIModelInfo
function M:put_model(model_info)
    model_info:destroy()
end

function M:clear()
    self.wait_map = {}
    for k, v in pairs(self.objectpools) do
        v:clear()
    end
    self.objectpools = {}
end

---@param obj U.GameObject
function M:create_model_shadow(obj)
    local shadow = obj.transform:Find("shadow")
    if not shadow then
        shadow = U.GameObject("shadow")
        shadow:SetActive(false)
        shadow.transform:SetParent(obj.transform)
        shadow.transform.localPosition = U.Vector3(0, 0,-1)
        shadow.transform.localRotation = U.Quaternion.Euler(80, 0, 0)
        shadow.transform.localScale = U.Vector3.one
        local shadow_img = util.get_or_add_comp(shadow, U.Image)
        ui_util.set_sprite(shadow_img, "ui/hero/hero_shadow", function()
            if not shadow:IsNull() then
                shadow:SetActive(true)
            end
        end)
        local shadow_rect = util.get_comp(shadow.transform, U.RectTransform)
        shadow_rect.sizeDelta = U.Vector2(2, 3)
    end
    shadow.gameObject:SetActive(true)
    return shadow.gameObject
end

function M:clear_shadow(obj)
    local shadow = obj.transform:Find("shadow")
    if shadow then
        shadow.gameObject:SetActive(false)
    end
end

return M