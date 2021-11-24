local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local mysql_game = require("database/mysql_game")
local redis_game = require("database/redis_game")
local redis_center = require("database/redis_center")

local State = require("logic_server/State")

local player = {}

function player:new(instant)
    if not instant then
        instant = {}
    end

    setmetatable(instant, {__index = self})
    return instant
end

function player:init(uid, s, ret_handler)
    self.session = s
    self.uid = uid
    self.zid = -1 
    self.matchid = -1
    self.seatid = -1
    self.state = State.InView
    self.is_robot = false

    -- 数据库读取玩家信息
    mysql_game.get_ugame_info(uid, function(err, ugame_info)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(Respones.SystemErr)
            end
            return
        end

        self.ugame_info = ugame_info

        redis_center.get_uinfo_inredis(uid, function(err, uinfo)
            if err then
                Logger.error(err)
                if ret_handler then
                    ret_handler(Respones.SystemErr)
                end
                return
            end
            self.uinfo = uinfo
            if ret_handler then
                ret_handler(Respones.OK)
            end
        end)        
    end)
end

function player:set_session(s)
    self.session = s
end

function player:send_cmd(stype, ctype, body)
    if not self.session or self.is_robot then
        return
    end

    local msg = {stype, ctype, self.uid, body}
    Session.send_msg(self.session, msg)
end

function player:get_user_arrived()
    local body = {
        unick = self.uinfo.unick,
        uface = self.uinfo.uface,
        usex = self.uinfo.usex,
        seatid = self.seatid,
    }
    return body
end

return player