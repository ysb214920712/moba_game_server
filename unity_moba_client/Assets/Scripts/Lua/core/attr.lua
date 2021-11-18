---@class Attr
Attr = class("Attr")
local M = Attr

local DATA_ONLY         = resmng.DATA_ONLY
local BASE_VAL_OFFSET   = resmng.BASE_VAL_OFFSET
local ADD_VAL_OFFSET    = resmng.ADD_VAL_OFFSET
local MUL_VAL_OFFSET    = resmng.MUL_VAL_OFFSET

function M:ctor()
    self._data_ = {}
    self:init_regist_func()
end


-----------------------------------------------------------------
-- 属性设置相关接口

-- 得到复杂属性最终值
-- 要加上协助属性
function M:get_val(index)
    return self:_get_val(index)
end

-- 得到基础值
function M:get_base_val(index)
    if index <= DATA_ONLY then
        ERROR("[ATTR] get_base_val fail, index <= DATA_ONLY, index: %d", index)
        return
    end
    return self._data_[index + BASE_VAL_OFFSET]
end

-- 得到加法端
function M:get_add_val(index)
    if index <= DATA_ONLY then
        ERROR("[ATTR] get_base_val fail, index <= DATA_ONLY, index: %d", index)
        return
    end
    if not self._data_[index + ADD_VAL_OFFSET] then
        ERROR("[ATTR] get_add_val, not set, index:%s", index)
        return
    end
    return self._data_[index + ADD_VAL_OFFSET]
end

-- 得到乘法端
function M:get_mul_val(index)
    if index <= DATA_ONLY then
        ERROR("[ATTR] get_base_val fail, index <= DATA_ONLY, index: %d", index)
        return
    end
    return self._data_[index + MUL_VAL_OFFSET]
end

-----------------------------------------------------------------
-- 设置基础值
function M:set_base_val(index, param)
    if index <= DATA_ONLY then
        ERROR("[ATTR] set_base_val fail, index <= DATA_ONLY, index: %d, param: %d", index, param)
    else
        self:set_val(index + BASE_VAL_OFFSET, param)
    end
end

-- 设置加法端
function M:set_add_val(index, param)
    if index <= DATA_ONLY then
        ERROR("[ATTR] set_add_val fail, index <= DATA_ONLY, index: %d, param: %d", index, param)
    else
        self:set_val(index + ADD_VAL_OFFSET, param)
    end
end

-- 设置乘法端
function M:set_mul_val(index, param)
    if index <= DATA_ONLY then
        ERROR("[ATTR] set_mul_val fail, index <= DATA_ONLY, index: %d, param: %d", index, param)
    else
        self:set_val(index + MUL_VAL_OFFSET, param)
    end
end

-- 增加简单属性值
function M:add_simple_val(index, param)
    self:set_val(index, self:_get_val(index) + param * 1.0)
end

-- 放大简单属性值
function M:mul_simple_val(index, param)
    self:set_val(index, self:_get_val(index) * (1+param*0.0001))
end

-- 增加基础属性值
function M:add_base_val(index, param)
    self:set_base_val(index, self:get_base_val(index) + param * 1.0)
end

-- 增加属性值
function M:add_add_val(index, param)
    self:set_add_val(index, self:get_add_val(index) + param * 1.0)
end

-- 增加乘法属性值
function M:add_mul_val(index, param)
    self:set_mul_val(index, self:get_mul_val(index) + param * 1.0)
end

-- 设置属性(包含简单、复杂属性)
function M:set_val(index, param)
    param = math.floor(param)

    local old_val = self._data_[index]
    self._data_[index] = self._data_[index] or 0

    if old_val == param then
        -- LOG("set_val, failed index=%s, param=%s, old_val=%s", index, param, old_val)
        return
    end

    local rawindex = index
    if index <= BASE_VAL_OFFSET then
        self._data_[index] = param
        if old_val then
            self:on_val_change(old_val, rawindex, index)
        end

    else
        self._data_[index] = param
        if index <= ADD_VAL_OFFSET then -- 基础段
            index = index - BASE_VAL_OFFSET
        elseif index <= MUL_VAL_OFFSET then --加法端
            index = index - ADD_VAL_OFFSET
        else --乘法端
            index = index - MUL_VAL_OFFSET
        end
        self:count_final_val(index)
    end
end

function M:_get_val(index)
    if not self._data_[index] then self._data_[index] = 0 end
    return self._data_[index]
end

-- 将复杂属性初始化
function M:reset_all_val(index)
    if index < resmng.DATA_ONLY or index >= BASE_VAL_OFFSET then
        ERROR("[ATTR] reset_all_val fail, index < resmng.DATA_ONLY or index >= BASE_VAL_OFFSET, index: %d, debug info: %s", index, debug.traceback())
        return
    end
    self._data_[index] = 0   -- 最终段
    self._data_[index + ADD_VAL_OFFSET] = 0  -- 加法段
    self._data_[index + MUL_VAL_OFFSET] = 0 -- 乘法段
    self._data_[index + BASE_VAL_OFFSET] = 0 -- 基础段
end

function M:copy_all_val(index, copy_self )
    if index < resmng.DATA_ONLY or index >= BASE_VAL_OFFSET then
        ERROR("[ATTR] copy_all_val fail, index < resmng.DATA_ONLY or index >= BASE_VAL_OFFSET, index: %d, debug infor: %s", index, debug.traceback())
        return
    end
    copy_self._data_[index] = self._data_[index]   -- 最终段
    copy_self._data_[index+ADD_VAL_OFFSET] = self._data_[index+ADD_VAL_OFFSET]     -- 加法段
    copy_self._data_[index+MUL_VAL_OFFSET] = self._data_[index+MUL_VAL_OFFSET]     -- 乘法段
    copy_self._data_[index+BASE_VAL_OFFSET] = self._data_[index+BASE_VAL_OFFSET]   -- 基础段

end

-- 计算出复杂属性最终值
-- 乘法段数值进行计算时需要按照1/10000的精度来进行计算
function M:count_final_val(index, _send, _log )
    if index < DATA_ONLY or index >= BASE_VAL_OFFSET then
        ERROR("[ATTR] count_final_val fail, index error,indx: %d, debug infor: %s", index, debug.traceback() )
        return
    end

    self._data_[index+ADD_VAL_OFFSET] = self._data_[index+ADD_VAL_OFFSET] or 0
    self._data_[index+MUL_VAL_OFFSET] = self._data_[index+MUL_VAL_OFFSET] or 0

    local base_val = self._data_[index+BASE_VAL_OFFSET]
    local add_val = self._data_[index+ADD_VAL_OFFSET]
    local mul_val = self._data_[index+MUL_VAL_OFFSET]

    local value = math.floor((base_val + add_val) * (1 + mul_val * 0.0001))
   -- LOG("[ATTR] count_final_val success, index: %d, base_val: %d, add_val: %s, mul_val: %d, final_val: %d"
     --       , index, base_val, add_val, mul_val, value)

    self:set_val(index, value)
end

-------------------------------------------------------------------------------
-- 属性修改后处理
-------------------------------------------------------------------------------

---当某个值发生变化后由回调更正其值时调用，用于直接修改其值，避免再次回调
function M:reset_val_after_val_change(index, val)
    self._data_[index] = val
end

function M:init_regist_func()
    self._regist_func_map_ = {}
end

function M:get_regist_func(index)
    return self._regist_func_map_[index]
end

function M:regist_attr_func(index, func )
    if not self._regist_func_map_[index] then
        self._regist_func_map_[index] = {}
    end
    table.insert(self._regist_func_map_[index], func)
end

--当某个值发生变化的时候调用
function M:on_val_change(old_val, rawindex, index)
    local funcs = self:get_regist_func(index)
    if not funcs then return end

    for _, func in pairs(funcs) do
        func(self, old_val, rawindex, index)
    end
end

function M:raw_data()
    return self._data_
end

--------------------------------------------------------------------------------
-- 作用/撤销函数表
--
--------------------------------------------------------------------------------

--
-- 作用接口

ATTR_ACTION_TYPE = {
    REMOVE = 0,  -- 撤销作用
    ADD    = 1,  -- 作用
}

function M:do_buff_effects(eff_tbl, act_type)
    for _, eff_elem in pairs(eff_tbl) do
        if not self:do_buff_effect(eff_elem, act_type) then
            return false
        end
    end
    return true
end

function M:do_buff_effect(eff_elem, act_type)
    local func = self.ATTR_EFFECT_BUFF_FUN[eff_elem[1]]
    if func then
        return func(self, eff_elem, act_type)
    else
        ERROR( "[ATTR] do_buff_effect function not exists. cmd = %s", eff_elem[1] or "unknown" )
        return false
    end
end

-- 设置属性数值加法段数据
function M:add_data(v, act_type)
    local index = v[2]
    local data  = 0

    if act_type == ATTR_ACTION_TYPE.ADD then
        data = v[3]
    elseif act_type == ATTR_ACTION_TYPE.REMOVE then
        data = -v[3]
    else
        ERROR("[ATTR] add_data fail, act_type param error, act_type: %d", act_type or -1)
        return false
    end
    if index <= resmng.DATA_ONLY then
        self:add_simple_val(index, data)
    else
        self:add_add_val(index, data)
    end
    return true
end

function M:mul_data(v, act_type)
    local index = v[2]
    local data = 0
    if act_type == ATTR_ACTION_TYPE.ADD then
        data = v[3]
    elseif act_type == ATTR_ACTION_TYPE.REMOVE then
        data = -v[3]
    else
        ERROR("[ATTR] mul_data fail, act_type param error, act_type: %d, _log: %s", act_type or -1)
        return false
    end
    if index <= resmng.DATA_ONLY then
        self:mul_simple_val(index, data)
    else
        self:add_mul_val(v[2], data)
    end
    return true
end

-- 设置属性,如果是复杂属性就设置基础段
-- 格式：v={ "SET", ATK_ATTR_TYPE, 1 }
function M:set_data(v, act_type)
    if act_type == ATTR_ACTION_TYPE.ADD then
        local index = v[2]
        if index <= resmng.DATA_ONLY then
            self:set_val(index, v[3])
        else
            self:set_base_val(index, v[3])
        end
    elseif act_type == ATTR_ACTION_TYPE.REMOVE then
        local index = v[2]
        if index <= resmng.DATA_ONLY then
            self:set_val(index, 0)
        else
            self:set_base_val(index, 0)
        end
    else
        ERROR("[BATTLE] set data param error.")
        return false
    end
    return true
end

-- BUFF 作用/撤销函数表
M.ATTR_EFFECT_BUFF_FUN = {
    ["ADD"] = M.add_data,
    ["MUL"] = M.mul_data,
    ["SET"] = M.set_data,
}

function M._translate_attr_mark(str, attr)
    local result = str
    for mark, _ in string.gmatch(str, "<[%u_]+>") do
        local index = resmng[string.sub(mark, 2, -2)]
        if index then
            local val = attr and attr:get_val(index) or 0
            result = string.gsub(result, mark, tostring(val))
        end
    end

    return result
end

function M.formula_value(str, attr, ...)
    if type(str) == "number" then
        return str
    end

    local formula = str
    if attr then
        formula = M._translate_attr_mark(str, attr)
    end
    formula = string.format(formula, ...)

    local buffer, msg = load(formula)
    if buffer then
        local ret, value = pcall(buffer)
        if ret then
            return math.floor(value)
        else
            return 0
        end
    else
        return 0, msg
    end
end

function M.compute_str_value(param, value, default)
    if not param then
        return default
    end

    if type(param) == "number" then
        return param
    end

    local str = string.format(param, value)
    local res, num = pcall(load(str))
    if res then
        return math.floor(num)
    else
        return default
    end
end

function M.trans_attr_effects(effects, attr, lv, star)
    local attr_effects = {}
    local func = M.formula_value
    for _, effect in ipairs(effects) do
        table.insert(attr_effects, {
            effect[1], effect[2],
            func(effect[3], attr, lv, star)
        })
    end
    return attr_effects
end

return M