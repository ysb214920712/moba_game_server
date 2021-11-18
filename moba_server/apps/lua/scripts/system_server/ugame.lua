local mysql_game = require("database/mysql_game")
-- local redis_center = require("database/redis_center")
local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")

function get_ugame_info(s, req)
    local uid = req[3]

    mysql_game.get_ugame_info(uid, function(err, uinfo)
        if err then
            Logger.error(err)
            local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                    status = Respones.SystemErr,
                }}
            Session.send_msg(s, msg)
            return
        end

        if uinfo == nil then
            mysql_game.insert_ugame_info(uid, function(err, ret)
                if err then
                    Logger.error(err)
                    local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                        status = Respones.SystemErr,
                    }}
                    Session.send_msg(s, msg)
                    return 
                end

                get_ugame_info(s, req)
            end)
            return
        end

        if uinfo.ustatus ~= 0 then --账号异常
            local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                    status = Respones.UserIsFreeze,
                }}
            Session.send_msg(s, msg)
            return
        end

        local msg = {
            Stype.System,
            Cmd.eGetUgameInfoRes,
            uid,
            {
                status = Respones.OK,
                uinfo = {
                    uchip = uinfo.uchip,
                    uexp = uinfo.uexp,
                    uvip = uinfo.uvip,
                    uchip2 = uinfo.uchip2,
                    uchip3 = uinfo.uchip3,
                    udata1 = uinfo.udata1,
                    udata2 = uinfo.udata2,
                    udata3 = uinfo.udata3,
                }
            }
        }

        Session.send_msg(s, msg)
    end)
end

local ugame = {
    get_ugame_info = get_ugame_info,
}

return ugame