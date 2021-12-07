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
local LOGIC_FRAME_TIME = 66

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
    self.frameid = 0

    -- 旁观玩家列表
    self.inview_players = {} --观战列表

    self.lhs_players = {}    --红方
    self.rhs_players = {}    --蓝方

    self.match_frames = {} 
    self.next_frame_opt = {}
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
    p.side = -1
    
    local body = {status = Respones.OK}
    p:send_cmd(Stype.Logic, Cmd.eExitMatchRes, body)
end

function match_mgr:game_start()
    local players_match_info = {}
    for k, v in pairs(self.inview_players) do
        local info = {
            heroid = v.heroid,
            seatid = v.seatid,
            side = v.side,
        }
        table.insert(players_match_info, info)
    end

    local body = {
        players_match_info = players_match_info,
    }
    self:broadcast_cmd_inview_players(Stype.Logic, Cmd.eGameStart, body)

    self.state = State.Playing
    self:update_players_state(State.Playing)

    self.frameid = 1
    self.match_frames = {} 
    self.next_frame_opt = {frameid = self.frameid, opts = {}}

    self.frame_timer = Scheduler.schedule(function()
        self:on_logic_frame()
    end, 5000, -1, LOGIC_FRAME_TIME)
end

function match_mgr:on_next_frame_event(next_frame_opts)
    local seatid = next_frame_opts.seatid
    local p = self.inview_players[seatid]
    if not p then
        return
    end

    if p.sync_frameid < next_frame_opts.frameid - 1 then
        p.sync_frameid = next_frame_opts.frameid - 1
    end

    if next_frame_opts.frameid ~= self.frameid then
        return
    end

    for i = 1, #next_frame_opts.opts do
        table.insert(self.next_frame_opt.opts, next_frame_opts.opts[i])
    end
end

function match_mgr:send_unsync_frames(p)
    local opt_frames = {}
    for i = p.sync_frameid + 1, #self.match_frames do
        table.insert(opt_frames, self.match_frames[i])
    end

    local body = {frameid = self.frameid, unsync_frames = opt_frames}
    p:udp_send_cmd(Stype.Logic, Cmd.eLogicFrame, body)
end

function match_mgr:on_logic_frame()
    table.insert(self.match_frames, self.next_frame_opt)
    for k, p in pairs(self.inview_players) do
        if p then
            self:send_unsync_frames(p)
        end
    end

    self.frameid = self.frameid + 1
    self.next_frame_opt = {frameid = self.frameid, opts = {}}
end

function match_mgr:update_players_state(state)
    for k, v in pairs(self.inview_players) do
        v.state = state
    end
end

function match_mgr:enter_player(p)
    if self.state ~= State.InView or p.state ~= State.InView then
        return false
    end

    p.matchid = self.matchid
    p.sync_frameid = 0
    -- 加入集结列表
    for i = 1, PLAYER_NUM * 2 do
        if not self.inview_players[i] then
            self.inview_players[i] = p
            p.seatid = i
            p.side = 1
            if i > PLAYER_NUM then
                p.side = 0
            end
            break
        end
    end

    --通知客户端进入了房间
    local body = {
        zid = self.zid,
        matchid = self.matchid,
        seatid = p.seatid,
        side = p.side,
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
        self:update_players_state(State.Ready)
        -- for k, v in pairs(self.inview_players) do
        --     v.state = State.Ready
        -- end

        --TODO 选英雄流程
        --暂时处理为服务器随机生成英雄ID
        for k, v in pairs(self.inview_players) do
            v.heroid = math.floor(math.random() * 5 + 1)
        end

        self:game_start()
    end

    return true
end

return match_mgr