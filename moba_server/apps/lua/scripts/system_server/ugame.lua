local mysql_game = require("database/mysql_game")
local redis_game = require("database/redis_game")
local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")

local login_bonues = require("system_server/login_bonues")

function get_ugame_info(s, req)
    local uid = req[3]

    mysql_game.get_ugame_info(uid, function(err, ugame_info)
        if err then
            Logger.error(err)
            local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                    status = Respones.SystemErr,
                }}
            Session.send_msg(s, msg)
            return
        end

        if ugame_info == nil then
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

        if ugame_info.ustatus ~= 0 then --账号异常
            local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                    status = Respones.UserIsFreeze,
                }}
            Session.send_msg(s, msg)
            return
        end

        redis_game.set_ugame_info_inredis(uid, ugame_info)

        login_bonues.check_login_bonues(uid, function(err, bonues_info)
            if err then
                Logger.error(err)
                local msg = {Stype.System, Cmd.eGetUgameInfoRes, uid, {
                        status = Respones.SystemErr,
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
                        uchip = ugame_info.uchip,
                        uexp = ugame_info.uexp,
                        uvip = ugame_info.uvip,
                        uchip2 = ugame_info.uchip2,
                        uchip3 = ugame_info.uchip3,
                        udata1 = ugame_info.udata1,
                        udata2 = ugame_info.udata2,
                        udata3 = ugame_info.udata3,

                        bonues_status = bonues_info.status,
                        bonues = bonues_info.bonues,
                        days = bonues_info.days,
                    }
                }
            }
    
            Session.send_msg(s, msg)
        end)
    end)
end

local ugame = {
    get_ugame_info = get_ugame_info,
}

return ugame