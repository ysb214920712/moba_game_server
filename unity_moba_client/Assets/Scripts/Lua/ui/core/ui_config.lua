---@class UIConfig
UIConfig = {singleton("UIConfig")}
local M = UIConfig

---@class UIConfig.LayerType
M.LayerType = {
    Scene = 1,          -- 场景
    Screen = 2,		    -- 全屏UI
    Top = 3,         --顶部按钮部分
    Pop = 4,		    -- 弹出窗口UI
	Prompts = 5,	    -- 提示/警告
    Guide = 6,	        -- 引导层
    SysAlert = 7,      -- 系统通知
    Global = 8,         -- 用于显示提示消息/toptip等，不要把普通ui放到该层
}

---@class UIConfig.Layers
M.Layers = {
    "scene",
    "screen",
    "top",
    "pop",
	"prompts",
    "guide",
    "sysalert",
    "global",
}

---@class UIConfig.CacheMode
M.CacheMode = {
    None = 0,
    CachePrefab = 1,
    CacheObject = 1 << 2,
}

---@class UIConfig.UIType
M.UIType = {
    Single = 1,
    Element = 2,
    Multiple = 3,
}

---@class UIConfig.CacheModeByUseFrequency
M.CacheModeByUseFrequency = {
    Common = M.CacheMode.None,
    High = M.CacheMode.CachePrefab,
    ---缓存Obj时便不缓存Prefab,此2个缓存方式不做或运算
    VeryHigh = M.CacheMode.CacheObject,
}

---@field lua_file string 窗口对应的lua文件路径
---@field res string 窗口对应的预设路径
---@field cache_mode UIConfig.CacheModeByUseFrequency 窗口缓存等级
---@field layer UIConfig.LayerType 窗口层级
---@field full_mask boolean 是否完全遮住下面层级的界面(全屏界面请设为true),用于减少ui的drawcall
---@field pause boolean 是否需要暂停战斗
---@field ui_type UIConfig.UIType  窗口类型
---@field elements UIBase[] 窗口的子元素名
---@field mask boolean 是否需要同层遮罩
---@field lua_object UIBase 对应的窗口类(无需设置)
---@class UIConfig.Setting

---@param setting UIConfig.Setting
function M.add_setting(setting)
    setting.lua_object = nil
    setting.ui_type = setting.ui_type or M.UIType.Single
    setting.full_mask = setting.full_mask or false
    setting.lua_object = do_load(setting.lua_file)
    setting.lua_object:init_setting(setting)
end

function M.need_cache_prefab(setting)
    return setting.cache_mode & M.CacheMode.CachePrefab > 0
end

function M.need_cache_obj(setting)
    return setting.cache_mode & M.CacheMode.CacheObject > 0
end

function M:set_global_font(font, rtl)
    self.global_font_ = font
    self.rtl_ = rtl or false
end

function M:set_rtl(rtl)
    self.rtl_ = rtl or false
end

function M:get_global_font()
    return self.global_font_, self.rtl_
end

M.add_setting({
    lua_file = "ui/ui_global_screen",
    res = "ui/global_screen",
    cache_mode = M.CacheModeByUseFrequency.VeryHigh,
    layer = M.LayerType.Global,
})

M.add_setting({
    lua_file = "ui/ui_login",
    res = "ui/login",
    cache_mode = M.CacheModeByUseFrequency.Common,
    layer = M.LayerType.Screen,
})

M.add_setting({
    lua_file = "ui/ui_entrance",
    res = "ui/entrance",
    cache_mode = M.CacheModeByUseFrequency.Common,
    layer = M.LayerType.Screen,
})

M.add_setting({
    lua_file = "ui/ui_user_info",
    res = "ui/user_info",
    cache_mode = M.CacheModeByUseFrequency.Common,
    layer = M.LayerType.Pop,
    -- mask = true,
})

M.add_setting({
    lua_file = "ui/ui_guest_bind",
    res = "ui/guest_bind",
    cache_mode = M.CacheModeByUseFrequency.Common,
    layer = M.LayerType.Pop,
    mask = true,
})

return M