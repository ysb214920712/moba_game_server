local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local mysql_game = require("database/mysql_game")
local redis_game = require("database/redis_game")
local redis_center = require("database/redis_center")

local State = require("logic_server/State")
local player = require("logic_server/player")
local robot_player = player:new()

function robot_player:new()
    local instant = {}

    setmetatable(instant, {__index = self})
    return instant
end

function robot_player:init(uid, s, ret_handler)
    player.init(self, uid, s, ret_handler)
    self.is_robot = true
end

return robot_player