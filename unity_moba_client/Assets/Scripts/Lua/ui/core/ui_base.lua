---@class UIBase : BehaviourBridge
UIBase = class("UIBase", BehaviourBridge)
local M = UIBase

---@param set UIConfig.Setting
function M:init_setting(set)
    self.setting__ = set

    ---@type UIBase[]
    ---当前打开的界面实例集合, 可直接用于判断UI类是否处于开启状态
    self.Instances = {}
end

function M:init_open_params(data)
    self.data__ = data
    self.init_completed__ = false
    self.animating__ = false
    self.is_showing__ = false
    ---@type function
    self.open_callback__ = nil
    ---@type UnityEngine.UI.GraphicRaycaster
    self.ray_caster__ = nil
    ---@type UnityEngine.CanvasGroup
    self.canvas_group__ = nil
    ---@type UnityEngine.Canvas
    self.canvas__ = nil

    ---@type table<string, UnityEngine.Object>
    ---ui界面导出ReferGameObjects组件中的相关对象集合
    self.gos = nil

    self.effects__ = {}
    ---@type number[]
    self.timers__ = {}
    ---@type table<DG.Tweening.Sequence, boolean>
    self.tweens__ = {}
    ---@type table<string, function>
    self.rpc_listeners__ = {}

    ---@type table<string, UIBase>
    self.elements__ = {}
    ---@type table<name, UnityEngine.GameObject>
    self.element_resources__= {}
end

function M:on_resource()
    local elements = self.setting__.elements
    if elements then
        local list = {}
        for _, element in ipairs(elements) do
            local set = element:setting()
            if set.ui_type == UIConfig.UIType.Element then
                Yield(U.XLoader.LoadAsync(set.res, typeof(U.GameObject), function(obj)
                    self.element_resources__[element:get_name()] = obj
                end))
            end
        end
    end
end

function M:on_resource_complete()
    self.messager__ = Messager.new(self)
    self.gos = self:export()
    self:on_create()
    self.init_completed__ = true

    self:save_wnd_props()
    self:show()
end

function M:setting()
    return self.setting__
end

function M:get_layer()
    return self.setting__.layer
end

function M:get_name()
    return self.clsname
end

---@return UIBase
function M:class()
    return self.setting__.lua_object
end

function M:on_set_locale_font()
    local tmp_array = util.get_comps_in_children(self.gameObject, U.TMP_Text, true)
    local font_obj, rtl = UIConfig:get_global_font()
    ---@param obj TMPro.TMP_Text
    util.foreach_cs_array(tmp_array, function(obj)
        if obj then
            obj.font = font_obj
            obj.isRightToLeftText = rtl
        end
    end)
end

---窗口创建时调用
function M:on_create()
    --- on ui created
end

---窗口打开时调用
function M:on_open(...)
    --- on ui showed
end

---窗口关闭时调用
function M:on_close()
    --- on ui closed
end

---窗口销毁时调用
function M:on_destroy()
    BehaviourBridge.on_destroy(self)
    if self.messager__ then
        self.messager__:dispose()
    end
    self.rpc_listeners__ = nil
end

---窗口打开动画完成后调用引导相关触发
function M:on_guide()
    --- on invoke guide event
    Messager.send(MID.GUIDE_TRIGGER, resmng.GUIDE_TRIGGER_OPEN_UI, self:get_name())
end

---窗口打开动画完成后调用
function M:on_show()
    --- on ui opening animation done
end

function M:on_backkey()
    if not self.animating__ then
        self:close()
    end
    return true
end

function M:is_showing()
    return self.is_showing__
end

function M:is_full_mask()
    return self.setting__.full_mask
end

function M:is_active()
    return self.gameObject and self.gameObject.activeSelf
end

function M:animating()
    return self.animating__
end

function M:be_prepared()
    return self.init_completed__
end

function M:start()
    local co = coroutine.create(
        function()
            self:on_resource()
            self:on_resource_complete()
        end
    )
    coroutine.resume(co)
end

---@param mid MID
---@param cb function
function M:add_listener(mid, cb)
    if self.is_showing__ then
        ELOG("use listener in on_create!")
        return
    end

    self.messager__:add(mid, cb)
end

---@param mid MID
---@param cb function
function M:add_async_listener(mid, cb)
    if self.is_showing__ then
        ELOG(" use listener in on create!")
        return
    end
    self.messager__:add_async(mid, cb)
end

---@param protocol string
---@param func function
function M:add_rpc(protocol, func)
    if self.is_showing__ then
        ELOG(" use add_rpc in on create!")
        return
    end
    self.rpc_listeners__[protocol] = func
end

---@param delay number 单位：秒
---@param func function 延时函数
function M:add_timer(delay, func)
    return self:add_cycle_timer(delay, nil, func)
end

---@param delay number 单位：秒
---@param cycle number 循环次数
---@param func function 循环函数
function M:add_cycle_timer(delay, cycle, func)
    local tid = Game.RealTimer:add_cycle(delay, cycle, func)
    table.insert(self.timers__, tid)
    return tid
end

---@param tid number 计时器Id
function M:remove_timer(tid)
    Game.RealTimer:remove(tid)
end

---@param t DG.Tweening.Sequence DOTween对象，可为空
---@return DG.Tweening.Sequence DOTween对象
function M:add_tweener(t)
    if t then
        self.tweens__[t] = true
        return t
    else
        local tw = U.DOTween.Sequence()
        self.tweens__[tw] = true
        return tw
    end
end

---@param tw DG.Tweening.Sequence
---@param complete boolean 停止tween时是否调用完成函数
function M:remove_tweener(tw, complete)
    if self.tweens__[tw] then
        tw:Kill(complete or false)
        self.tweens__[tw] = nil
    end
end

function M:has_tweener(tw)
    return self.tweens__[tw] == true
end

---@param res string 资源路径
---@param go UnityEngine.GameObject 为空则为自身go
---@param time number 为空则默认为0
---@param callback function 加载完成后的回调
---@param complete_cb function 播放完成的回调
function M:play_effect(res, go, time, callback, complete_cb, sorting_order)
    if not res or res == "" then return end
    go = go or self.gameObject
    time = time or 0

    ---@param effect Effect
    U.EffectMgr.Generate(go, res, time, function(effect)
        if effect then
            if self:is_showing() then
                self.effects__[effect.gid] = effect
                if complete_cb then
                    effect.eventCallBack = function(eff, event_type)
                        if event_type == U.Effect.EffectEventType.FINISHED then
                            complete_cb(eff)
                        end
                    end
                end
            else
                U.EffectMgr.Destroy(effect.gid)
            end
            effect:SetSortOrder(UIConfig.Layers[self.setting__.layer], sorting_order or self.canvas__.sortingOrder)
            if callback then
                callback(effect)
            end
        end
    end)
end

---@param res string 资源路径
---@param go UnityEngine.GameObject 为空则为自身go
---@param time number 为空则默认为0
---@param callback function 加载完成后的回调
---@param complete_cb function 播放完成的回调
function M:play_effect_config(effect_config, go, callback, complete_cb, sorting_order)
    if not effect_config or effect_config == "" then return end
    go = go or self.gameObject

    ---@param effect Effect
    U.EffectMgr.Generate(go, effect_config, function(effect)
        if effect then
            if self:is_showing() then
                self.effects__[effect.gid] = effect
                if complete_cb then
                    effect.eventCallBack = function(_, event_type)
                        if event_type == U.Effect.EffectEventType.FINISHED then
                            complete_cb()
                        end
                    end
                end
            else
                U.EffectMgr.Destroy(effect.gid)
            end
            effect:SetSortOrder(UIConfig.Layers[self.setting__.layer], sorting_order or self.canvas__.sortingOrder)
            if callback then
                callback(effect)
            end
        end
    end)
end

function M:remove_effect(gid)
    if gid then
        self.effects__[gid] = nil
        U.EffectMgr.Destroy(gid)
    end
end

function M:remove_all_effects()
    for gid, effect in pairs(self.effects__) do
        U.EffectMgr.Destroy(gid)
    end
    self.effects__ = {}
end

function M:update_sorting_order()
    local layer = self:get_layer()
    local sorting_layer = UIConfig.Layers[layer]
    local sorting_order = UIMgr:get_layer_sorting_order(layer)

    self.canvas__.sortingOrder = sorting_order

    local ls = util.get_comps_in_children(self.gameObject, U.Effect)
    ---@param effect Effect
    util.foreach_cs_array(ls, function(effect)
        effect:SetSortOrder(sorting_layer, sorting_order)
    end)
end

function M:get_sorting_order()
    return self.canvas__.sortingOrder
end

---界面占用的ui深度，用作含动画界面的深度处理
function M:get_occupy_depth()
    return 0
end

---保存rts属性
function M:save_wnd_props()
    local old_scale = self.transform.localScale
    old_scale = math.max(old_scale.x, math.max(old_scale.y, old_scale.z))
    self.old_uniform_scale_ = self.old_uniform_scale_ or old_scale
end

---若窗口不为其他窗口元素且为提示弹窗，则添加DOTween动画弹出
function M:need_opening_dotween_animation()
    return self.setting__.ui_type == UIConfig.UIType.Single and
        (self.setting__.layer == UIConfig.LayerType.Prompts or self.setting__.layer == UIConfig.LayerType.Pop or self.setting__.layer == UIConfig.LayerType.SysAlert)
end

function M:show()
    self:show_ui_mask(true)
    if self.setting__.pause then
        Game:pause_battle()
    end

    Messager.send(MID.UI_SHOW_BEGIN, self:get_name())

    self.is_showing__ = true
    self.messager__:set_active(true)
    for protocol, func in pairs(self.rpc_listeners__) do
        Rpc.register(protocol, self, func)
    end

    self:on_open(table.unpack(self.data__))

    if self.open_callback__ then
        self.open_callback__(self)
    end
    if self:is_full_mask() then
        UIMgr:hide_lower_ui(self:get_layer(), true)
    end
    UIMgr:check_full_mask_for_open(self)

    self:play_show_ani()
end

function M:play_show_ani()
    if self.animating__ then
        return
    end
    
    local ani_time = 0
    local ani = util.get_comp(self, U.Animator)
    ---@type UnityEngine.AnimatorStateInfo
    local ani_state
    if ani then
        ani.updateMode = U.AnimatorUpdateMode.UnscaledTime
        ani:Play("show", 0, 0.0)
        ani_state = ani:GetCurrentAnimatorStateInfo(0)
        if ani_state then
            ani_time = ani_state.length
        end
    elseif self:need_opening_dotween_animation() then
        if self.popupanim_tw__ then
            self:remove_tweener(self.popupanim_tw__, false)
            self.popupanim_tw__ = nil
        end

        self.popupanim_tw__ = self:add_tweener()
        self.popupanim_tw__:Append(self.transform:DOScale(0.9 * self.old_uniform_scale_, 0.0))
        self.popupanim_tw__:Append(self.transform:DOScale(1.05 * self.old_uniform_scale_, 0.15):SetEase(U.Ease.OutSine))
        self.popupanim_tw__:Append(self.transform:DOScale(0.97 * self.old_uniform_scale_, 0.1):SetEase(U.Ease.OutSine))
        self.popupanim_tw__:Append(self.transform:DOScale(self.old_uniform_scale_, 0.15):SetEase(U.Ease.OutSine))
        self.popupanim_tw__:OnComplete(function()
            self.tweens__[self.popupanim_tw__] = nil
            self.popupanim_tw__ = nil
        end)
        self.popupanim_tw__:SetUpdate(true)

        ani_time = self.popupanim_tw__:Duration(true)
    end

    LOG("UI(%s) opening ani time(%.2f)", self:get_name(), ani_time)

    if ani_time > 0 then
        self.animating__ = true
        self.canvas_group__.blocksRaycasts = false

        self:update_sorting_order()

        local animator_end = function()
            self.canvas_group__.blocksRaycasts = true
            self.animating__ = false

            self:on_show()
            self:on_guide()

            Messager.send(MID.UI_OPEN, self:get_name())
        end

        local co, main_co = coroutine.running()
        if main_co then
            if ani_state then
                Game.RealTimer:add_cycle(0, 0.05, function()
                    ani_state = ani:GetCurrentAnimatorStateInfo(0)
                    if ani_state.normalizedTime < 0.99 then
                        return true
                    else
                        animator_end()
                        return false
                    end
                end)
            else
                Game.RealTimer:add(ani_time, animator_end)
            end
        else
            if ani_state then
                while ani_state.normalizedTime < 0.99 do
                    Yield()
                    ani_state = ani:GetCurrentAnimatorStateInfo(0)
                end
            else
                Yield(U.WaitForSecondsRealtime(ani_time))
            end
            animator_end()
        end
    else
        self:on_show()
        self:on_guide()

        Messager.send(MID.UI_OPEN, self:get_name())
    end
end

function M:close_self()
    if not self.init_completed__ then
        ELOG("!! UI(%s) close before init completed.", self:get_name())
        return
    end

    if self.setting__.pause then
        Game:resume_battle()
    end
    for i = #self.timers__,1,-1 do
        Game.RealTimer:remove(self.timers__[i])
        self.timers__[i] = nil
    end

    for tween, _ in pairs(self.tweens__) do
        tween:Kill(false)
    end
    self.tweens__ = {}

    self.messager__:set_active(false)
    for protocol, _ in pairs(self.rpc_listeners__) do
        Rpc.unregister(protocol, self)
    end
    self.is_showing__ = false
    self:remove_all_effects()
    self:show_ui_mask(false)

    UIMgr:do_close_ui(self)
    self:on_close()

    local instances = self.setting__.lua_object.Instances
    for k, v in ipairs(instances) do
        if v == self then
            table.remove(instances, k)
        end
    end

    U.AudioMgr.Play(resmng.SOUND_WINDOW_CLOSE)
    Messager.send(MID.UI_CLOSE, self:get_name())
    Messager.send(MID.GUIDE_TRIGGER, resmng.GUIDE_TRIGGER_CLOSE_UI, self:get_name())
end

---打开窗体直接对UI类（不需要具体实例）调用open接口
---@param on_complete function 打开后的回调函数
function M:open(on_complete, ...)
    UIMgr:open_ui(self, on_complete, ...)
end

---关闭窗体直接对UI类（不需要具体实例）调用close接口
function M:close()
    UIMgr:close_ui(self)
end

function M:is_opened()
    return not table_util.empty(self.setting__.lua_object.Instances)
end

function M:reopen()
    self:on_close()
    self:on_set_locale_font()
    self:on_open(table.unpack(self.data__))
    local ls = util.get_comps_in_children(self.gameObject, U.UILocalize)
    util.foreach_cs_array(ls, function(localize)
        localize:Refresh();
    end)
    local ls = util.get_comps_in_children(self.gameObject, U.LayoutGroup)
    util.foreach_cs_array(ls, function(layout)
        U.LayoutRebuilder.ForceRebuildLayoutImmediate(layout.transform)
    end)
end

function M:show_ui_mask(visible)
    if visible then
        local layer_ui_num = UIMgr:get_layer_ui_num(self.setting__.layer)
        if self.setting__.mask and layer_ui_num > 1 then
            local mask_img = util.add_comp(self.transform, U.Image)
            mask_img.color = UIMgr.mask_color_
            mask_img.raycastTarget = false
        end
    else
        if self.setting__.mask then
            local mask_img = util.get_comp(self.transform, U.Image)
            if mask_img then
                U.GameObject.Destroy(mask_img)
            end
        end
    end
end

function M:on_layer_mask_click_handler()
    if not self.animating__ then
        self:close()
    end
end

function M:get_element(name)
    return self.elements__[name]
end

---@param element UIBase 子元素对象
---@param container UnityEngine.GameObject 容器对象
---@param on_complete function 完成后的回调
function M:add_element(element, container, on_complete, ...)
    container = container or self.gameObject
    local name = element:get_name()
    local obj = self.element_resources__[name]
    if not obj then
        ELOG("add_element %s not loaded, add to %s setting.elements", name, self:get_name())
        return
    end
    local set = element:setting()

    local go = U.GameObject.Instantiate(obj, container.transform, false)
    go.name = name
    -- if not util.has_comp(go,U.Selectable)  then
    --     util.add_comp(go,U.Selectable).transition = U.Selectable.Transition.None
    -- end

    -- local canvas = util.get_comp(go,U.Canvas)
    -- if not canvas then
    --     canvas = util.add_comp(go,U.Canvas)
    --     canvas.overrideSorting = true
    --     canvas.sortingLayerName = UIConfig.Layers[set.layer]
    --     canvas.sortingOrder = (#UIMgr.layer_stack__[set.layer]+1) * 10
    -- end

    -- local ray_caster = util.get_or_add_comp(go, U.GraphicRaycaster)
    local canvas_group = util.get_or_add_comp(go,U.CanvasGroup)

    ---@type UIBase
    local ui = set.lua_object.new(go)
    ui:init_open_params({...})
    ui.open_callback__ = on_complete
    ui.ray_caster__ = self.ray_caster__
    ui.canvas_group__ = canvas_group
    ui.canvas__ = self.canvas__

    self.elements__[name] = ui

    return ui
end

function M:notch_fit(bg_obj)
    local has_notch_fit = util.has_comp(self.gameObject, U.NotchFit)
    if not has_notch_fit then
        util.add_comp(self.gameObject, U.NotchFit)
        if bg_obj then
            local trans = util.get_comp(bg_obj, U.RectTransform)
            if trans.anchorMin.y == 0 and trans.anchorMax.y == 1 then
                trans.offsetMax = U.Vector2(trans.offsetMax.x, trans.offsetMax.y + U.PhoneHelper.GetNotchHeight())
            else
                trans.localPosition = U.Vector3(trans.localPosition.x, trans.localPosition.y + U.PhoneHelper.GetNotchHeight() * (trans.anchorMin.y + trans.anchorMax.y) * 0.5, trans.localPosition.z)
            end
        end
    end
end

--设置界面某个物体的特定layer(用于特效穿插处理)
---@param obj GameObject or Transform
---@param layer_offset number
function M:update_special_icon_layer(obj, layer_offset)
    local canvas = util.get_comp(obj, U.Canvas)
    if not canvas then
        canvas = util.add_comp(obj, U.Canvas)
        canvas.overrideSorting = true
        canvas.sortingLayerName = UIConfig.Layers[self:setting().layer]
    end

    local layer = self:get_layer()
    local sorting_order = UIMgr:get_layer_sorting_order(layer) + layer_offset
    canvas.sortingOrder = sorting_order
end

return M