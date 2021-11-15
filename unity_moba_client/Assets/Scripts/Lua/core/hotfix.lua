---@class Hotfix
Hotfix = {}
local M = Hotfix

local version_channel_parm = {
    --default ios
    ios = { 
        store_url = "https://www.baidu.com",
    },
    --default android
    aos = { 
        store_url = "https://www.baidu.com",
    },
    -- test
    editor = {
        store_url = "https://www.baidu.com",
    },
}

function M.check_local()
    local file_name = U.GHelper.Md5Sum("hotfix_" .. GlobalInfo.client_ver)

    local file = io.open(U.GHelper.GetPersistentDataPath() .. file_name,"rb")
    if not file then
        return
    end
    local code = file:read("a")
    file:close()

    if code == nil then
        return
    end

    local f, msg = load(code)
    if not f then
        ELOG("can't load local code with msg: %s", msg)
        return
    end
    local ret,msg = pcall(f)
    if not ret then
        ELOG("can't pcall local code with msg: %s", msg)
        return
    end

    LOG("[Hotfix.check_local] done")
end

function M.on_code_updated(server_side_code)
    local file_name = string.format("%s/%s", U.Application.persistentDataPath, U.GHelper.Md5Sum("hotfix_"..GlobalInfo.client_ver))

    if not server_side_code or server_side_code == "" then
        local ret = os.remove(file_name)
        if ret then
            INFO("Hotfix.on_code_updated delelte local %s", file_name)
        end
        return
    end
 
    local f,msg = load(server_side_code)
    
    if not f then
        ELOG("can't load hotfix code with msg: %s", msg)
        return
    end
    
    local ret,msg = pcall(f)
    if ret then
        -- success,save to local
        local file = io.open(file_name, "w+b")
        if file then
            local dumped = string.dump(f,true)
            file:write(dumped)
            file:flush()
            file:close()
        else
            ELOG("can't write file: %s", file_name)
        end
        INFO("hotfix executed and saved. ver:%s", GlobalInfo.client_ver)
    else
        ELOG("can't pcall hotfix code with msg: %s", msg)
        return
    end
end

--[[
    this function will record update info to U.PrefsHelper (if needed) , you can call 'Hotfix.check_engine_update' to check if need update client version
    it aways use for hotfix, repeat call this fun with same parm will not work
    exp:
    if M.mark_engine_update then
        M.mark_engine_update({ 
            aos = {force = false},
            ios = {force = false, url = "http://www.baidu.com",id = "1.0.1"},
            editor = {force = true,id = "1.0.3"}
        })
    end
    force: need force update engine  IMPORTENT :if set true, can't change the local record ever
    url: the appstore url to upversion
    id: change this will restore data, unually set it as aim engine version like '1.0.1'
]]

function M.mark_engine_update(tb)
    local channel_name = Web:get_runtime_channel_name()
    local plat_parm = tb[channel_name]
    if not plat_parm then
        return
    end

    plat_parm.url = plat_parm.url or version_channel_parm[channel_name].store_url

    -- get local saved data 
    local str = U.PrefsHelper.GetString("engine_update_mark")
    local saved_data 
    if str and str ~= "" then
        local ret
        ret, saved_data = pcall(Json.decode,str)
        if not ret or type(saved_data) ~= "table" then
            saved_data = nil
        end
    end

    local cover_local = true
    if saved_data then
        if(saved_data.base_version ~= GlobalInfo.client_ver) then -- engine has updated , local record lose effect
            cover_local = true
        elseif(saved_data.force ~= plat_parm.force or saved_data.url ~= plat_parm.url or saved_data.id ~= plat_parm.id) then -- parm has changed
            cover_local = true
        else    -- mainly to keep local 'has_poped' feild, to forbid reshow dialog
            cover_local = false
        end
    end

    if cover_local then
        U.PrefsHelper.SetString("engine_update_mark",Json.encode({
            base_version = GlobalInfo.client_ver,
            force = plat_parm.force,
            url = plat_parm.url,
            id = plat_parm.id,
            has_poped = false
        }))
        U.PrefsHelper.Save()
    end
end

function M.check_engine_update(is_mark_poped)
    local str = U.PrefsHelper.GetString("engine_update_mark")

    if not str or str == "" then
        return false
    end
    local ret, data = pcall(Json.decode,str)

    -- not effect structure
    if not ret or type(data) ~= "table" or not data.url then
        return false
    end

    -- update is not force, and tip dialog poped
    if not data.force and data.has_poped then
        return false
    end

    -- engine has updated 
    if data.base_version ~= GlobalInfo.client_ver then
        return false
    end

    if is_mark_poped then
        data.has_poped = true
        U.PrefsHelper.SetString("engine_update_mark",Json.encode(data))
        U.PrefsHelper.Save()
    end

    return data.url,data.force
end

return M