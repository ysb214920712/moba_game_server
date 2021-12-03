local action_list = {}

function add_require(fn, g_name, g_table)
    table.insert(action_list, {type = "require", file = fn, g_name = g_name, g_table = g_table or _G})
end

function do_load(mod)
    package.loaded[mod] = nil
    local ret, msg = pcall(require, mod)
    if not ret then
        error(string.format("critial error! %s requires failed:%s", mod, msg))
    end
    return msg
end

if _UNITY_EDITOR then
    local ret, msg = pcall(require, "emmy_debug")
    if not ret then
        print("load emmy_debug failed, please fix emmy_debug dll path")
    end
end

require("core/import")
require("core/s_coroutine")
require("resmng")

--core
add_require("core/global_func")
add_require("core/global_info")
add_require("core/behaviour_bridge")
add_require("core/rc4")
add_require("core/xor_crypt")
add_require("core/database")
add_require("core/timer")
add_require("core/object_pool")
add_require("core/big_float")
add_require("core/hotfix")
add_require("core/attr")
add_require("core/time_scale_mgr")
add_require("core/svalue")
add_require("core/setting")
add_require("core/msg_pack")
add_require("core/random")

---data_struct
add_require("data_struct/dictionary")
add_require("data_struct/hash_map")
add_require("data_struct/hash_set")
add_require("data_struct/list")
add_require("data_struct/max_heap")
add_require("data_struct/min_heap")
add_require("data_struct/queue")
add_require("data_struct/red_black_tree")
add_require("data_struct/stack")

---util
add_require("util/util")
add_require("util/str_util")
add_require("util/table_util")
add_require("util/ui_util")
add_require("util/time_util")
add_require("util/id_util")
add_require("util/sr_debugger")

---data
add_require("data/user")

--event
add_require("event/mid")
add_require("event/messager")

--- battle
add_require("battle/battle_mgr")

-- web

--- net

---handler

--- ui
add_require("ui/core/ui_base")
add_require("ui/core/ui_config")
add_require("ui/core/ui_mgr")
add_require("ui/core/ui_model_pool")

--- game
add_require("game")

function run_all_action(action_complete, on_progress)
    local total = #action_list
    for idx, action in ipairs(action_list) do
        if action.type == "require" then
            local rt = do_load(action.file)
            if rt and action.g_name then
                action.g_table[action.g_name] = rt
            end
        end

        if math.fmod(idx, 10) == 0 then
            if on_progress then
                on_progress(0.1+idx/total*0.8, "")
            end
            Yield()
        end
    end

    if on_progress then
        on_progress(0.95, "")
    end
    Yield()

    action_complete()
end

function reload()
    local total = #action_list
    for idx, action in ipairs(action_list) do
        if action.type == "require" then
            local rt = do_load(action.file)
            if rt and action.g_name then
                action.g_table[action.g_name] = rt
            end
        end
    end

    INFO("===reload done===")
end

function main()
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 500)

    math.randomseed(os.time())

    coroutine.wrap(run_all_action)(
        function()
            check_permission(coroutine.wrap(function()
                resmng.postprocess_config()
                Game:init(GlobalInfo.control_object)

                unload_unused_memory_on_next_frame()
                lock_g_variable()

                INFO("main done. %s", GlobalInfo.app_name)
            end))
        end,
        function(val)
            -- U.XLuaHelper.UpdateBootingProgress(val, "")
        end
    )
end

function load_locale_font(font_name, rtl)
    return U.XLoader.LoadAsync(font_name, typeof(U.TMP_FontAsset), function(obj)
        if obj then
            UIConfig:set_global_font(obj, rtl)
        end
    end)
end

function check_permission(cb)
    cb()
end

main()
