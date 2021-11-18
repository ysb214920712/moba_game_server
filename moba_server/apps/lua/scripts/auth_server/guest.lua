local mysql_center = require("database/mysql_auth_center")
local redis_center = require("database/redis_center")
local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")

function login(s, req)
    local g_key = req[4].guest_key
    local utag = req[3]

    if type(g_key) ~= "string" or string.len(g_key) ~= 32 then
        local msg = {Stype.Auth, Cmd.eGuestLoginRes, utag, {
            status = Respones.InvalidParams,
        }}
        Session.send_msg(s, msg)
        return
    end

    mysql_center.get_guest_uinfo(g_key, function(err, uinfo)
        if err then
            local msg = {Stype.Auth, Cmd.eGuestLoginRes, utag, {
                    status = Respones.SystemErr,
                }}
            Session.send_msg(s, msg)
            return 
        end

        if uinfo == nil then
            mysql_center.insert_guest_user(g_key, function(err, ret)
                if err then
                    local msg = {Stype.Auth, Cmd.eGuestLoginRes, utag, {
                        status = Respones.SystemErr,
                    }}
                    Session.send_msg(s, msg)
                    return 
                end

                login(s, req)
            end)
            return
        end

        if uinfo.status ~= 0 then --账号异常
            local msg = {Stype.Auth, Cmd.eGuestLoginRes, utag, {
                    status = Respones.UserIsFreeze,
                }}
            Session.send_msg(s, msg)
            return
        end

        if uinfo.is_guest ~= 1 then --不是游客账号
            local msg = {Stype.Auth, Cmd.eGuestLoginRes, utag, {
                    status = Respones.UserIsNotGuest,
                }}
            Session.send_msg(s, msg)
            return
        end

        print(uinfo.uid, uinfo.unick)

        redis_center.set_uinfo_inredis(uinfo.uid, uinfo)

        local msg = {
            Stype.Auth,
            Cmd.eGuestLoginRes,
            utag,
            {
                status = Respones.OK,
                uinfo = {
                    unick = uinfo.unick,
                    uface = uinfo.uface,
                    usex = uinfo.usex,
                    uvip = uinfo.uvip,
                    uid = uinfo.uid,
                }
            }
        }

        Session.send_msg(s, msg)
    end)
end

local guest = {
    login = login,
}

return guest