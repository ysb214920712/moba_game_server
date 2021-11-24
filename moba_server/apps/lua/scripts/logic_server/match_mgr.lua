local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local mysql_game = require("database/mysql_game")
local redis_game = require("database/redis_game")
local player = require("logic_server/player")
local zone = require("logic_server/Zone")
local State = require("logic_server/State")

local match_mgr = {}
local sg_matchid = 1
local PLAYER_NUM = 3 -- 3v3

function match_mgr:new(instant)
    if not instant then
        instant = {}
    end

    setmetatable(instant, {__index = self})
    return instant
end

function match_mgr:init(zid)
    self.zid = zid
    self.matchid = sg_matchid
    sg_matchid = sg_matchid + 1
    self.state = State.InView

    -- 旁观玩家列表
    self.inview_players = {} --观战列表

    self.lhs_players = {}    --红方
    self.rhs_players = {}    --蓝方
end

function match_mgr:broadcast_cmd_inview_players(stype, ctype, body, not_to_player)
    for k, v in pairs(self.inview_players) do
        if v ~= not_to_player then
            v:send_cmd(stype, ctype, body)
        end
    end
end

function match_mgr:exit_player(p)
    local body = {
        seatid = p.seatid
    }
    self:broadcast_cmd_inview_players(Stype.Logic, Cmd.eUserExitMatch, body, p)

    self.inview_players[p.seatid] = nil
    p.zid = -1
    p.matchid = -1
    p.seatid = -1
    local body = {status = Respones.OK}
    p:send_cmd(Stype.Logic, Cmd.eExitMatchRes, body)
end

function match_mgr:enter_player(p)
    if self.state ~= State.InView or p.state ~= State.InView then
        return false
    end

    p.matchid = self.matchid
    -- 加入集结列表
    for i = 1, PLAYER_NUM * 2 do
        if not self.inview_players[i] then
            self.inview_players[i] = p
            p.seatid = i
            break
        end
    end

    --通知客户端进入了房间
    local body = {
        zid = self.zid,
        matchid = self.matchid,
    }

    p:send_cmd(Stype.Logic, Cmd.eEnterMatch, body)

    --通知其他客户端
    body = p:get_user_arrived()
    self:broadcast_cmd_inview_players(Stype.Logic, Cmd.eUserArrived, body, p)

    --通知客户端其他玩家的信息
    for k, v in pairs(self.inview_players) do
        if v ~= p then
            body = v:get_user_arrived()
            p:send_cmd(Stype.Logic, Cmd.eUserArrived, body)
        end
    end

    if #self.inview_players >= PLAYER_NUM * 2 then
        self.state = State.Ready
        for k, v in pairs(self.inview_players) do
            v.state = State.Ready
        end
    end

    return true
end

return match_mgr