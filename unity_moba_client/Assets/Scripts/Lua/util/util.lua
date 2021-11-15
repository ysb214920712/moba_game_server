---@class util
util = util or {}
local M = util

function M.format_number(val)
    if not val then
        return
    end
    local num = math.abs(val)
    if num < 100000 then
        return math.floor(val)
    end

    local idx = 0
    local pow = 3

    local floor = math.floor
    while floor(num/10^pow) ~= 0 do
        pow = pow + 3
        idx = idx + 1
    end
    idx = idx

    return string.format("%.02f%s", val/10^(pow-3), BigFloat._DigitalUnit[idx + 1])
end

function M.format_ex(fmt, ...)
    local origin_args = {...}
    local max_arg = #origin_args
    local args = {}

    local change = false
    for w in fmt:gmatch("$%d%%") do
        local idx = w:byte(2)-48
        if idx <= max_arg then
            table.insert(args, origin_args[idx])
            change = true
        end
    end

    if change then
        fmt = fmt:gsub("$%d", "")
    else
        args = origin_args
    end

    return string.format(fmt, table.unpack(args))
end

function M.foreach_cs_array(...)
    local list_count = select('#', ...) - 1
	local callback = select(list_count + 1, ...)
	for i = 1, list_count do
	    local list = select(i, ...)
		for i = 0, (list.Count or list.Length) - 1 do
			callback(list[i], i)
		end
    end
end

---@generic T
---@param list T[]
---@param idx number
---@return T
function M.get_cs_array(list, idx)
    local len = list.Count or list.Length
    if idx >=0 and idx < len then
        return list[idx]
    end
    ELOG("get_cs_array idx(%d) beyond [0, %d)", idx, len)
end

---@generic T1, T2
---@param obj T1
---@param name string
---@param cclass T2
---@return T2
function M.get_child_comp(obj,name,cclass)
    local trans = obj.transform:Find(name)
    if trans then
        return trans:GetComponent(typeof(cclass))
    end
end

---@generic T1, T2
---@param obj T1
---@param cclass T2
---@return boolean
function M.has_comp(obj,cclass)
    obj = obj.gameObject
    local c =  obj:GetComponent(typeof(cclass))
    return not (c == nil or c:IsNull())
end

---@generic T1, T2
---@param obj T1
---@param cclass T2
---@return T2
function M.get_comp(obj,cclass)
    obj = obj.gameObject
    local c =  obj:GetComponent(typeof(cclass))
    if c and not c:IsNull() then
        return c
    end
end

---@generic T
---@param obj UnityEngine.GameObject
---@param cclass T
---@return T
function M.get_comp_in_children(obj,cclass)
    return obj:GetComponentInChildren(typeof(cclass))
end

---@generic T1, T2
---@param obj T1
---@param cclass T2
---@return T2[]
function M.get_comps_in_children(obj, cclass, includeInActive)
    return obj:GetComponentsInChildren(typeof(cclass), includeInActive or false)
end

---@generic T
---@param obj UnityEngine.GameObject
---@param cclass T
---@return T
function M.get_comp_in_parent(obj, cclass)
    return obj:GetComponentInParent(typeof(cclass))
end

---@generic T1, T2
---@param obj T1
---@param cclass T2
---@return T2
function M.add_comp(obj,cclass)
    obj = obj.gameObject
    local c =  obj.gameObject:AddComponent(typeof(cclass))
    if c and not c:IsNull() then
        return c
    end
end

---@generic T1, T2
---@param obj T1
---@param cclass T2
---@return T2
function M.get_or_add_comp(obj,cclass)
    obj = obj.gameObject
    local c =  obj:GetComponent(typeof(cclass))
    if c and not c:IsNull() then
        return c
    end
    local c =  obj:AddComponent(typeof(cclass))
    if c and not c:IsNull() then
        return c
    end
end

---@generic T
---@param cclass T
---@return T
function M.find_object_of_type(cclass)
    return U.Object.FindObjectOfType(typeof(cclass))
end

function M.create_debug_sphere(pos,raidus,parent)
    local sphere = U.GameObject.CreatePrimitive(0)
    sphere.transform.position = pos
    if parent then
        sphere.transform:SetParent(parent)
    end
    sphere.transform.localScale = U.Vector3(raidus*2, 1, raidus*2)
    local mat = U.Material(U.Shader.Find("Legacy Shaders/Particles/Alpha Blended"))
    mat:SetColor(GlobalInfo.ShaderPropertyId.TintColor, U.Color(1,0,1,0.07))
    sphere:GetComponent(typeof(U.Renderer)).material = mat
    sphere:GetComponent(typeof(U.Collider)).enabled = false
    return sphere
end

function M.rand_float(min, max, precision)
    precision = precision or 100
    local rand = math.random(math.floor(min*precision), math.floor(max*precision))
    return rand / precision
end

function M.round(num)
    return math.floor(num + 0.5)
end

function M.print_func_ref_by_csharp()
    local registry = debug.getregistry()
    for k, v in pairs(registry) do
        if type(k) == "number" and type(v) == "function" and registry[v] == k then
            local info = debug.getinfo(v)
            print(string.format("%s:%d", info.short_src, info.linedefined))
        end
    end
end

function M.restart_game()
    coroutine.wrap(function()
        Yield(U.WaitForEndOfFrame())

        if _DEBUG then
            M.print_func_ref_by_csharp()
        end

        if LevelControl.battle then
            LevelControl.battle:destroy()
            U.EffectMgr.Instance:ClearCache()
        end

        U.DOTween.KillAll(false)
        UIMgr:clear_all_ui()

        -- Track:quit_game()
        Game:reset_timescale_before_restart()

        DownloadStrategyHelper:stop_download()

        U.GameReloader.RestartGame({"Game", "UI", "Pool Node Container", "COROUTINES"})
    end)()
end

function M.get_scheme_query_tb()
    if type(U.PhoneHelper.GetUriScheme) ~= "function" then
        return
    end
    local scheme_str = U.PhoneHelper.GetUriScheme()
    if str_util.empty_or_null(scheme_str) then
        return
    end

    local ret, data = pcall(Json.decode, scheme_str)
    if not ret or type(data) ~= "table" then
        return
    end

    if not data.queryString then
        return
    end

    local query_tb = Web:decode_from_url_param(data.queryString)
    INFO("scheme query_tb is : " .. DT(query_tb))
    return query_tb
end

function M.get_scheme_back_url()
    do return end
    local tb = M.get_scheme_query_tb()
    if not tb then
        return
    end
    return tb.backurl
end

function M.copy_to_clipboard(str)
    U.GUIUtility.systemCopyBuffer = str 
end

function M.paste_from_clipboard()
    return U.GUIUtility.systemCopyBuffer
end

function M.get_random_float_number(lower, greater, digit)
    local digit_num = digit or 2
    local temp_result = lower + math.random() * (greater - lower)
    local result
    if temp_result < 0 then
        result = -(math.abs(temp_result) - math.abs(temp_result) % 0.1 ^ digit_num)
    else
        result = temp_result - temp_result % 0.1 ^ digit_num
    end
    return result
end

---@param animator UnityEngine.Animator
function M.get_animation_time(animator, ani_name)
    local time
    local speed = animator:GetCurrentAnimatorStateInfo(0).speed
    local controller = animator.runtimeAnimatorController
    for i = 0, controller.animationClips.Length - 1, 1 do
        --INFO("%s %s %s", controller.animationClips[i].name, controller.animationClips[i].length, speed)
        if controller.animationClips[i].name == ani_name then
            time = controller.animationClips[i].length / (speed * speed)
            INFO("%s %s %s", controller.animationClips[i].length, speed, time)
        end
    end

    return time
end

function M.get_current_animation_time(animator, is_fade)
    local time
    animator:Update(0)
    local animator_state
    if is_fade then
        animator_state = animator:GetNextAnimatorStateInfo(0)
    else
        animator_state = animator:GetCurrentAnimatorStateInfo(0)
    end

    time = animator_state.length
    --INFO("get_current_animation_time %s is_fade %s", time, is_fade)
    return time
end

local Formula_Funcs = {
    ["ReachedChapter"] = function()
        return LevelMgr:get_main_level_reached_chapter()
    end,

    ["CurrentChapter"] = function()
        return LevelMgr:get_main_level_current_chapter()
    end
}

--根据公式算出指定值(非attr属性的简单计算)
---@param input_formula "return Chapter * 10"
------@param ... "公式里%s相对应的参数"
function M.calculate_value_by_formula(input_formula, ...)
    if type(input_formula) == "number" then
        return input_formula
    end
    
    local result = input_formula
    
    local args = {...}
    if #args == 0 then
        result =  result or "undefine"
    else
        result =  resmng.format_ex(result, table.unpack(args))
    end

    --替换掉公式里指定的字符串
    for replace_string, replace_func in pairs(Formula_Funcs) do
        local replace_result = replace_func()
        if replace_result then
            result = string.gsub(result, replace_string, replace_func())
        end
    end

    local buffer, msg = load(result)
    if buffer then
        local ret, value = pcall(buffer)
        if ret then
            return math.floor(value)
        else
            ELOG("[util.calculate_value_by_formula] formula pcall error! %s", result)
            return 0
        end
    else
        ELOG("[util.calculate_value_by_formula] formula load error! reason: %s", msg)
        return 0
    end
end

function M.transform_direction(direction, trans)
    local vec = trans.right * direction.x + trans.up * direction.y + trans.forward * direction.z
    return vec
end

------------------------------------------------------------------------------------------
-- use for merge local data to memery data

return M
