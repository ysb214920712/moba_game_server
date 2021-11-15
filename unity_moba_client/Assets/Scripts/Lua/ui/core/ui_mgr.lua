---@class UIMgr
UIMgr = singleton()
local M = UIMgr

local _MaskLayers = {
    [UIConfig.LayerType.Pop] = true,
    [UIConfig.LayerType.Prompts] = true,
    [UIConfig.LayerType.SysAlert] = true,
}

function M:init()
    self.cache_prefabs__ = {}
    self.cache_prefab_max_count__ = 10
    ---@type UIBase[][]
    self.layer_stack__ = {}
    ---@type UIConfig.Setting[]
    self.loading_stack__ = {}
    ---@type UIBase[]
    self.cached_stack__ = {}
    local ui_canvas = GlobalInfo.ui_canvas
    self.ui_camera__ = util.get_comp(U.GameObject.Find("UI/UICamera"), U.Camera)
    --UI层级深度
    self.layer_depth__ = 0
    self.mask_color_ = U.Color(0,0,0,0.7)

    for k,name in ipairs(UIConfig.Layers) do
        local layer = U.GameObject(name)
        local transform = util.add_comp(layer, U.RectTransform)
        transform:SetParent(ui_canvas.transform, false)

        --transform.localPosition = U.Vector3.zero
        transform.localPosition = U.Vector3(0, 0, self.layer_depth__)
        self.layer_depth__ = self.layer_depth__ - 300

        transform.localScale = U.Vector3.one
        transform.anchorMin = U.Vector2.zero
        transform.anchorMax = U.Vector2.one
        transform.offsetMax = U.Vector2.zero
        transform.offsetMin = U.Vector2.zero

        layer.layer = ui_canvas.layer

        local layer_canvas = util.add_comp(layer,U.Canvas)
        util.add_comp(layer,U.GraphicRaycaster)
        layer_canvas.overrideSorting = true
        layer_canvas.sortingLayerName = name
        layer_canvas.sortingOrder = 0

        self.layer_stack__[k] = {}
    end

    for v, _ in pairs(_MaskLayers) do
        local layer = ui_canvas.transform:Find(UIConfig.Layers[v])
        local img = util.add_comp(layer, U.Image)
        local btn = util.add_comp(layer, U.Button)
        img.color = self.mask_color_
        img.enabled = false
        btn.enabled = false

        ui_util.set_clickevent(btn,function()
            local layer_stack = self.layer_stack__[v]
            for i= #layer_stack, 1, -1 do
                local ui = layer_stack[i]
                if ui:get_layer() == v and ui:is_active() then
                    ui:on_layer_mask_click_handler()
                    break
                end
            end
        end)
    end

    local pool = U.GameObject("UI Pool")
    pool.transform:SetParent(U.GameObject.Find("UI").transform, false)
    pool:SetActive(false)
    self.ui_pool__ = pool.transform

    LOG("[UIMgr.init] done")
end

function M:on_backkey()
    for i = #self.layer_stack__,1,-1 do
        for j = #self.layer_stack__[i],1,-1 do
            local ui = self.layer_stack__[i][j]
            if ui:on_backkey() then
                -- ELOG("on back key dealed:",ui:get_name())
                return true
            end
        end
    end
    return false
end

function M:get_layer_ui_num(layer)
    return #self.layer_stack__[layer]
end

function M:get_layer_sorting_order(layer)
    return #self.layer_stack__[layer] * 10
end

function M:camera()
    return self.ui_camera__
end

---@param window UIBase 窗口
---@param on_complete function 打开后的回调函数
function M:co_open_ui(window,on_complete,...)
    local rt = false
    self:open_ui(window,function(ui)
        rt = true
        if(on_complete) then
            on_complete(ui)
        end
    end, ...)
    while not rt do
        Yield(U.WaitForEndOfFrame())
    end
end

---@param window UIBase 窗口
---@param on_complete function 打开后的回调函数
function M:open_ui(window, on_complete, ...)
    local ui_name = window:get_name()
    local set = window:setting()
    if not set then
        ELOG("[UIMgr.open_ui] %s missing ui setting", ui_name)
        return
    end

	local layer = U.GameObject.Find(string.format("UI/Canvas/%s", UIConfig.Layers[set.layer]))

    ---@type UIBase
    local find_ui
    local data = {...}
    local layer_stack = self.layer_stack__[set.layer]
    local layer_stack_count = #layer_stack

    -- find ui in layer stack
    if set.ui_type ~= UIConfig.UIType.Multiple then
        for pos, ui in ipairs(layer_stack) do
            if ui:get_name() == ui_name then
                find_ui = ui

                if ui:is_active() then
                    if on_complete then
                        on_complete(ui)
                    end
                    return
                else
                    ui.transform:SetSiblingIndex(layer_stack_count)
                    ui.data__ = data

                    table.remove(layer_stack, pos)
                    table.insert(layer_stack, ui)

                    self:check_full_mask_for_open(ui)
                    if on_complete then
                        on_complete(ui)
                    end
                    break
                end
            end
        end
    end

    -- find ui in cache stack
    if not find_ui then
        for pos, ui in ipairs(self.cached_stack__) do
            if ui:get_name() == ui_name then
                ui.transform:SetParent(layer.transform, false)
                ui.data__ = data

                table.remove(self.cached_stack__, pos)
                table.insert(layer_stack, ui)

                find_ui = ui
                break
            end
        end
    end

    if find_ui then
        if find_ui:be_prepared() then
            find_ui:update_sorting_order()
            find_ui.open_callback__ = on_complete
            table.insert(set.lua_object.Instances, find_ui)
            find_ui:show()

            self:show_layer_mask(set.layer, true)
            self:lock_lower_ui(set.layer)
            self:update_ui_depth()
        end
    else
        local idx, prefab = nil
        if UIConfig.need_cache_prefab(set) then
            for k, v in ipairs(self.cache_prefabs__) do
                if v[1] == ui_name then
                    idx = k
                    prefab = v[2]
                    break
                end
            end
        end
        if prefab then
            self:show_layer_mask(set.layer, true)
            self:lock_current_ui(set.layer)

            table.insert(self.cache_prefabs__, table.remove(self.cache_prefabs__, idx))
            self:_load_ui_resource_done(prefab, set, data, layer, on_complete)
        else
            -- find ui in loading stack
            if set.ui_type ~= UIConfig.UIType.Multiple then
                for _, v in ipairs(self.loading_stack__) do
                    if v.lua_object:get_name() == ui_name then
                        ELOG("Blocked multiple of the same name ui: %s", ui_name)
                        return
                    end
                end
            end
            table.insert(self.loading_stack__, set)

            U.XLoader.LoadAsync(set.res, typeof(U.GameObject), function(obj)
                for pos, v in ipairs(self.loading_stack__) do
                    if v.lua_object:get_name() == ui_name then
                        table.remove(self.loading_stack__, pos)
                        break
                    end
                end

                if obj then
                    if #self.cache_prefabs__ >= self.cache_prefab_max_count__ then
                        table.remove(self.cache_prefabs__, 1)
                    end
                    if UIConfig.need_cache_prefab(set) then
                        table.insert(self.cache_prefabs__, {ui_name, obj})
                    end
                    self:_load_ui_resource_done(obj, set, data, layer, on_complete)
                else
                    ELOG("[UIMgr.open] %s resource load failed. %s", ui_name, set.res)

                    local layer_stack = self.layer_stack__[set.layer]
                    if #layer_stack == 0 then
                        self:show_layer_mask(set.layer, false)
                    end
                    self:unlock_current_ui(set.layer)
                end
            end)

            self:show_layer_mask(set.layer, true)
            self:lock_current_ui(set.layer)
        end
    end
end

---@param obj UnityEngine.GameObject
---@param set UIConfig.Setting
---@param data table
---@param layer UnityEngine.GameObject
---@param on_complete function 打开后的回调函数
function M:_load_ui_resource_done(obj, set, data, layer, on_complete)
    local go = U.GameObject.Instantiate(obj, layer.transform, false)
    go.name = set.lua_object:get_name()
    if not util.has_comp(go, U.Selectable)  then
        util.add_comp(go, U.Selectable).transition = U.Selectable.Transition.None
    end

    local canvas = util.get_comp(go, U.Canvas)
    if not canvas then
        canvas = util.add_comp(go, U.Canvas)
        canvas.overrideSorting = true
        canvas.sortingLayerName = UIConfig.Layers[set.layer]
    end

    local ray_caster = util.get_or_add_comp(go, U.GraphicRaycaster)
    local canvas_group = util.get_or_add_comp(go, U.CanvasGroup)
    util.get_or_add_comp(go, U.EventTrigger)

    ---@type UIBase
    local ui = set.lua_object.new(go)
    ui:init_open_params(data)
    ui.open_callback__ = on_complete
    ui.ray_caster__ = ray_caster
    ui.canvas_group__ = canvas_group
    ui.canvas__ = canvas
    table.insert(set.lua_object.Instances, ui)

    table.insert(self.layer_stack__[set.layer], ui)

    ui:update_sorting_order()

    self:show_layer_mask(set.layer, true)
    self:lock_lower_ui(set.layer)
    self:update_ui_depth()
end

---@param window UIBase
function M:close_ui(window)
    if window then
        local length = #window.Instances
        if length > 0 then
            window.Instances[length]:close_self()
        end
    end
end

---@param ui UIBase
function M:do_close_ui(ui)
    local layer = ui:get_layer()
    local layer_stack = self.layer_stack__[layer]
    for pos, u in ipairs(layer_stack) do
        if u == ui then
            table.remove(layer_stack, pos)
            break
        end
    end

    if UIConfig.need_cache_obj(ui.setting__) then
        self:_move_ui_to_pool(ui)
    else
        U.GameObject.Destroy(ui.gameObject)
    end

    if ui:is_full_mask() then
        self:show_lower_ui(ui:get_layer(), true)
    end

    if #layer_stack == 0 then
        self:show_layer_mask(layer, false)
    end
    self:unlock_current_ui(layer)
    self:update_ui_depth()
end

function M:_move_ui_to_pool(ui)
    table.insert(self.cached_stack__, ui)

    ui.transform:SetParent(self.ui_pool__, false)
end

function M:get_ui(ui_name)
    ---@type UIBase
    local ui = _G[ui_name].Instances[1]
    if ui and ui:alive() then
        return ui
    end
     return nil
end

function M:show_layer_mask(layer, show)
    if _MaskLayers[layer] then
        local go = U.GameObject.Find(string.format("UI/Canvas/%s", UIConfig.Layers[layer]))
        if go then
            util.get_comp(go, U.Image).enabled = show
            util.get_comp(go, U.Button).enabled = show
        end
    end
end

function M:lock_lower_ui(layer)
    local layer_stack = self.layer_stack__[layer]
    self:lock_ui(layer_stack, #layer_stack-1)
end

function M:lock_current_ui(layer)
    local layer_stack = self.layer_stack__[layer]
    self:lock_ui(layer_stack, #layer_stack)
end

function M:unlock_current_ui(layer)
    local layer_stack = self.layer_stack__[layer]
    self:unlock_ui(layer_stack, #layer_stack)
end

---@param layer_stack UIBase[]
function M:lock_ui(layer_stack, pos)
    local ui = layer_stack[pos]
    if ui then
        ui.canvas_group__.blocksRaycasts = false
    end
end

---@param layer_stack UIBase[]
function M:unlock_ui(layer_stack, pos)
    local ui = layer_stack[pos]
    if ui then
        ui.canvas_group__.blocksRaycasts = true
    end
end

---@param ui UIBase
function M:check_full_mask_for_open(ui)
    local has_full_mask = false
    for i = ui:get_layer() + 1, table_util.size(UIConfig.LayerType), 1 do
        local stack = self.layer_stack__[i]
        if stack then
            for k, v in ipairs(stack) do
                if v:is_full_mask() then
                    has_full_mask = true
                    break
                end
            end
            if has_full_mask then
                break
            end
        end
    end

    ui.gameObject:SetActive(not has_full_mask)
end

function M:hide_lower_ui(layer, exclude_self)
    for i = layer, 1, -1 do
        local stack = self.layer_stack__[i]
        if stack then
            local offset = 0
            if i == layer and exclude_self then
                offset = -1
            end
            for j = #stack + offset, 1, -1 do
                local ui = stack[j]
                ui.gameObject:SetActive(false)
                Messager.send(MID.HIDE_LOWER_UI, ui:get_name())
                if ui:is_full_mask() then
                    return
                end
            end
        end
    end
end

function M:show_lower_ui(layer, need_call_show)
    for i = layer, 1, -1 do
        local stack = self.layer_stack__[i]
        if stack then
            for j = #stack, 1, -1 do
                local ui = stack[j]
                if not ui:is_active() then
                    ui.gameObject:SetActive(true)
                    if need_call_show then
                        ui:play_show_ani()
                    end
                    Messager.send(MID.SHOW_LOWER_UI, ui:get_name())
                end
                if ui:is_full_mask() then
                    return
                end
            end
        end
    end
end

function M:has_pop_ui()
    if #self.layer_stack__[UIConfig.LayerType.Pop] > 0 then
        return true
    end

    if #self.layer_stack__[UIConfig.LayerType.Prompts] > 0 then
        return true
    end

    if #self.layer_stack__[UIConfig.LayerType.SysAlert] > 0 then
        return true
    end
    return false
end

function M:update_ui_depth()
    local layer_depth = 0
    for k, layerstack in ipairs(self.layer_stack__) do
        local layer = GlobalInfo.ui_canvas.transform:Find(UIConfig.Layers[k])
        layer.transform.localPosition = U.Vector3(0, 0, layer_depth)
        local ui_depth = 0
        for pos, ui in ipairs(layerstack) do
            ui.transform.localPosition = U.Vector3(ui.transform.localPosition.x, ui.transform.localPosition.y, ui_depth)
            ui_depth = ui_depth - ui:get_occupy_depth()
        end
        layer_depth = layer_depth - 300 + ui_depth
    end
end

function M:close_ui_when_switch_battle()
    for i = UIConfig.LayerType.Scene, UIConfig.LayerType.Prompts, 1 do
        for _, ui in pairs(self.layer_stack__[i]) do
            ui:close_self()
        end
    end
end

function M:clear_all_ui()
    for _, stack in pairs(self.layer_stack__) do
        for _, ui in pairs(stack) do
            ui:close_self()
        end
    end
    for _, ui in pairs(self.cached_stack__) do
        U.GameObject.Destroy(ui.gameObject)
    end
    self.layer_stack__ = {}
    self.cached_stack__ = {}
end

---@param ui UIBase
function M:close_uis_above_this(ui)
    local layer = ui:get_layer()
    for i = UIConfig.LayerType.Prompts, layer, -1 do
        if i ~= UIConfig.LayerType.Top then
            for j = #self.layer_stack__[i], 1, -1 do
                local other = self.layer_stack__[i][j]
                if i ~= layer or other ~= ui then
                    other:close_self()
                else
                    return
                end
            end
        end
    end
end

function M:refresh_ui_pool_locale_font()
    local tmp_array = util.get_comps_in_children(self.ui_pool__.gameObject, U.TMP_Text, true)
    local font_obj, rtl = UIConfig:get_global_font()
    ---@param obj TMPro.TMP_Text
    util.foreach_cs_array(tmp_array, function(obj)
        if obj then
            obj.font = font_obj
            obj.isRightToLeftText = rtl
        end
    end)
end

return M