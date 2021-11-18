---@class SRDebugger
SRDebugger = singleton("SRDebugger")
local M = SRDebugger

function M:init()
    U.SRGameOptions.initAddFunctions(function()
        self:add_all_options()
    end)
    LOG("[SRDebugger.init] done")
end

--[[
    enum:
        U.SRGameOptionsEnum.String 字符串值设置
        U.SRGameOptionsEnum.Int Int值设置
        U.SRGameOptionsEnum.Float Float值设置
        U.SRGameOptionsEnum.Double Double值设置
        U.SRGameOptionsEnum.Bool 布尔值设置
        U.SRGameOptionsEnum.Function 纯函数响应按钮
    category:
        Option的标签分类的名字显示 可用作GM指令的分类显示
    name：
        Option的显示名
    value:
        Option对应的默认值
    callback：
        Option值修改完成或者点击之后的响应函数
    min_value/max_value/increment:
        Option数字类型修改的最小值/最大值/步长
]]
function M:add_option(enum, category, name, value, callback, min_value, max_value, increment)
    U.SRGameOptions.AddDebuggerOption(enum, category, name, value, callback, min_value, max_value, increment)
end

local function debugger_callback(option_name, result)
    print("debugger_callback", option_name, result)
end

function M:add_all_options()
    -- self:add_option(U.SRGameOptionsEnum.String, "GM命令", "TestString", "222", debugger_callback)
    -- self:add_option(U.SRGameOptionsEnum.Int, "GM命令", "TestInt", "2", debugger_callback, 2, 12, 5)
    -- self:add_option(U.SRGameOptionsEnum.Float, "GM命令", "TestFloat", "2", debugger_callback, 2, 12, 0.5)
    -- self:add_option(U.SRGameOptionsEnum.Double, "GM命令", "TestDouble", "2", debugger_callback, 2, 12, 1.5)
    -- self:add_option(U.SRGameOptionsEnum.Bool, "GM命令", "TestBool", "true", debugger_callback)
    -- self:add_option(U.SRGameOptionsEnum.Function, "GM命令", "TestFunction", nil, debugger_callback)
    
end

return M