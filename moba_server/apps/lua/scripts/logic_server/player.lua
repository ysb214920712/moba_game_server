local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local mysql_game = require("database/mysql_game")
local redis_game = require("database/redis_game")

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

    -- 数据库读取玩家信息
    mysql_game.get_ugame_info(uid, function(err, ugame_info)
        if err then
            Logger.error(err)
            ret_handler(Respones.SystemErr)
            return
        end

        self.ugame_info = ugame_info
        ret_handler(Respones.OK)
    end)
end

function player:set_session(s)
    self.session = s
end

return player