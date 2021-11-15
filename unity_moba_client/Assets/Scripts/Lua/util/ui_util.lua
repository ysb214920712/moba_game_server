---@class ui_util
ui_util = ui_util or {}
local M = ui_util

local _WorldToScreenPoint = U.Camera.main.WorldToScreenPoint
local _ScreenPointToWorldPointInRectangle = U.RectTransformUtility.ScreenPointToWorldPointInRectangle
local _ScreenPointToLocalPointInRectangle = U.RectTransformUtility.ScreenPointToLocalPointInRectangle

---@param ref_image UnityEngine.UI.Image
---@param sprite_name string
---@param callback XLua.LuaFunction
---@return UnityEngine.Coroutine
function M.set_sprite(ref_image,sprite_name,callback)
    if not sprite_name or sprite_name == "" then
        ELOG("[ui_util.set_sprite] sprite name can not be nil or empty!!")
        return
    end
    local hide_for_loading
    if ref_image.sprite == nil and ref_image.enabled then
        ref_image.enabled = false
        hide_for_loading = true
    end
    return U.XLoader.LoadAsync(string.format("image/%s.png", sprite_name), typeof(U.Sprite),
        ---@param sprite UnityEngine.Sprite
        function(sprite)
            if sprite and not ref_image:IsNull() then
                if hide_for_loading then
                    ref_image.enabled = true
                end
				ref_image.sprite = sprite
                if callback then
                    callback(ref_image)
                end
			end
		end
	)
end

---@param ref_image UnityEngine.UI.RawImage
---@param url string
---@param uv number[]
---@param callback XLua.LuaFunction
---@return UnityEngine.Coroutine
function M.set_raw_image(ref_image, url, uv, callback)
    if not url or url == "" then
        ELOG("[ui_util.set_raw_image] url can not be nil or empty!!")
        return
    end
    return U.XLoader.LoadAsync(url, typeof(U.Texture),
        function(texture)
            if texture and not ref_image:IsNull() then
                ref_image.texture = texture
                if uv then
                    ref_image.uvRect = U.Rect(uv[1], uv[2], uv[3], uv[4])
                end
                if callback then
                    callback(ref_image)
                end
            end
		end
	)
end

---设置文本内容
---@param go UnityEngine.GameObject
---@param text string
function M.set_text(go, text)
    util.get_comp(go, U.Text).text = text
end

---@param go UnityEngine.GameObject
---@param text string
function M.set_tmp_text(go, text)
    util.get_comp(go, U.TMP_Text).text = text
end

function M.background_bestfit(go)
    local img = util.get_comp(go,U.Image)
    if not img then
        ELOG("param error")
        return
    end
    util.get_or_add_comp(go,U.BGBestfit)
end

function M.set_clickevent(comp, ...)
    local on_click = comp.onClick
    on_click:RemoveAllListeners()
    local args = {...}
    for _, v in ipairs(args) do
        on_click:AddListener(v)
    end
end

function M.add_clickevent(comp, ...)
    local on_click = comp.onClick
    local args = {...}
    for _, v in ipairs(args) do
        on_click:AddListener(v)
    end
end

function M.set_button_clickevent(go, ...)
    M.set_clickevent(util.get_comp(go, U.Button), ...)
end

function M.add_button_clickevent(go, ...)
    M.add_clickevent(util.get_comp(go, U.Button), ...)
end

function M.set_button_interactable(go, interactable)
    util.get_comp(go, U.Button).interactable = interactable
end

function M.add_toggle_clickevent(go, ...)
    local on_toggle = util.get_comp(go, U.Toggle).onValueChanged
    local args = {...}
    for _, v in ipairs(args) do
        on_toggle:AddListener(v)
    end
end

function M.add_dropdown_clickevent(go, ...)
    local on_drop_down = util.get_comp(go, U.Dropdown).onValueChanged
    local args = {...}
    for _, v in ipairs(args) do
        on_drop_down:AddListener(v)
    end
end

function M.add_scrollrect_clickevent(go, ...)
    local scroll_rect = util.get_comp(go, U.ScrollRect).onValueChanged
    local args = {...}
    for _, v in ipairs(args) do
        scroll_rect:AddListener(v)
    end
end

--[[
    使用方式：ui_util.get_event_trigger(obj).onClick = fun
    每种事件类型仅有一个响应函数，不支持同一个obj对同一事件类型响应多种触发函数
    详细支持的响应类型参考 EventTriggerListener.cs
]]
function M.get_event_trigger(obj)
    return U.EventTriggerListener.Get(obj.gameObject)
end

---@param world_pos UnityEngine.Vector3 世界坐标
---@return UnityEngine.Vector3 对应的屏幕坐标，已根据多分辨率进行缩放
function M.world_to_screen_pos(world_pos, camera)
    local pos = _WorldToScreenPoint(camera or UIMgr:camera(), world_pos)
    return U.Vector3(pos.x / GlobalInfo.ui_canvas_scale_x(), pos.y / GlobalInfo.ui_canvas_scale_y(), 0)
end

---@param screen_pos UnityEngine.Vector3 屏幕坐标，需去除多分辨率的缩放影响
---@return UnityEngine.Vector3 在对应transfrom下的世界坐标
function M.screen_pos_to_ui_world_pos(screen_pos, transform)
    local rt, ui_world_pos = _ScreenPointToWorldPointInRectangle(transform, U.Vector2(screen_pos.x * GlobalInfo.ui_canvas_scale_x(), screen_pos.y * GlobalInfo.ui_canvas_scale_y()), UIMgr:camera())
    return ui_world_pos
end

---@param screen_pos UnityEngine.Vector3 屏幕坐标，需去除多分辨率的缩放影响
---@return UnityEngine.Vector3 在对应transfrom下的本地坐标
function M.screen_pos_to_ui_local_pos(screen_pos, transform)
    local rt, ui_local_pos = _ScreenPointToLocalPointInRectangle(transform, U.Vector2(screen_pos.x * GlobalInfo.ui_canvas_scale_x(), screen_pos.y * GlobalInfo.ui_canvas_scale_y()), UIMgr:camera())
    return U.Vector3(ui_local_pos.x, ui_local_pos.y, 0)
end

---@param world_pos UnityEngine.Vector3 世界坐标
---@return UnityEngine.Vector3 在对应transfrom下的世界坐标
function M.world_to_ui_world_pos(world_pos, transform, camera)
    local screen_pos = _WorldToScreenPoint(camera or UIMgr:camera(), world_pos)
    local rt, ui_world_pos = _ScreenPointToWorldPointInRectangle(transform, U.Vector2(screen_pos.x, screen_pos.y), UIMgr:camera())
    return ui_world_pos
end

---@param world_pos UnityEngine.Vector3 世界坐标
---@return UnityEngine.Vector3 在对应transfrom下的本地坐标
function M.world_to_ui_local_pos(world_pos, transform, camera)
    local screen_pos = _WorldToScreenPoint(camera or UIMgr:camera(), world_pos)
    local rt, ui_local_pos = _ScreenPointToLocalPointInRectangle(transform, U.Vector2(screen_pos.x, screen_pos.y), UIMgr:camera())
    return U.Vector3(ui_local_pos.x, ui_local_pos.y, 0)
end

---@return UIGlobalScreen
function M.global_screen()
    return UIMgr:get_ui("UIGlobalScreen")
end

function M.show_tipstr(text)
    local screen = M.global_screen()
    if screen then
        screen:show_tipstr(text)
    end
    INFO("show_tipstr: %s", text)
end

function M.get_quality_html_color(quality)
    return resmng.QUALITY_HTML_COLOR[quality]
end

function ui_util.get_hero_quality_frame(quality)
    return resmng.HERO_QUALITY_FRAME[quality]
end

function M.get_genuis_quality_frame(quality)
    return resmng.GENUIS_QUALITY_FRAME[quality]
end

function M.get_color_str(quality, str)
    return string.format("<color=%s>%s</color>",resmng.QUALITY_HTML_COLOR[quality],str)
end

function M.show_loading(immediately)
    local gs = M.global_screen()
    if gs then
        gs:show_loading(immediately)
    end
end

function M.hide_loading()
    local gs = M.global_screen()
    if gs then
        gs:hide_loading()
    end
end

function M.clear_loading()
    local gs = M.global_screen()
    if gs then
        gs:clear_loading()
    end
end

function M.get_ui_position(target, oneself)
    local v1 = target:TransformPoint(oneself.localPosition)
    local v2 = oneself:InverseTransformPoint(v1)
    return v2
end

function M.show_combat_change(val)
    M.global_screen():show_combat_change(val)
end

---@param parent UnityEngine.Transform
---@param path string
---@param callback XLua.LuaFunction
---@return UnityEngine.Coroutine
function M.set_ui_prefab(parent, path, callback)
    if not path or path == "" then
        ELOG("[ui_util.set_ui_prefab] path can not be nil or empty!!")
        return
    end
    return U.XLoader.LoadAsync(path, typeof(U.Object),
        function(obj)
            if obj and not parent.gameObject:IsNull() then
                local go = U.GameObject.Instantiate(obj, parent, false)
                if callback then
                    callback(go)
                end
            end
		end
	)
end

---@param ui UIBase
function M.refresh_all_layout(ui)
    local ls = util.get_comps_in_children(ui.gameObject, U.LayoutGroup)
    util.foreach_cs_array(ls, function(layout)
        U.LayoutRebuilder.ForceRebuildLayoutImmediate(layout.transform)
    end)
end

return M