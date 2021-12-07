local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local redis_game = require("database/redis_game")
local mysql_game = require("database/mysql_game")
local mysql_center = require("database/mysql_auth_center")
local redis_center = require("database/redis_center")

local player = require("logic_server/player")
local robot_player = require("logic_server/robot_player")
local zone = require("logic_server/Zone")
local match_mgr = require("logic_server/match_mgr")
local State = require("logic_server/State")

-- uid --> player
local logic_server_players = {}
local online_player_num = 0
local zone_wait_list = {}
local zone_match_list = {} -- 当前房间列表
zone_match_list[zone.XGZD] = {}
zone_match_list[zone.JDDLD] = {}
local zone_robot_list = {} -- 存放机器人
zone_robot_list[zone.XGZD] = {}
zone_robot_list[zone.JDDLD] = {}

function do_new_robot_players(robots)
    if #robots <= 0 then
        return
    end

    local half_len = #robots
    half_len = math.floor(half_len * 0.5)
    for i = 1, half_len do
        local r_info = robots[i]
        local r_player = robot_player:new()
        r_player:init(r_info.uid)
        r_player.zid = zone.XGZD
        zone_robot_list[zone.XGZD][r_info.uid] = r_player
    end

    for i = half_len + 1, #robots do
        local r_info = robots[i]
        local r_player = robot_player:new()
        r_player:init(r_info.uid)
        r_player.zid = zone.JDDLD
        zone_robot_list[zone.JDDLD][r_info.uid] = r_player
    end
end

function do_load_robot_uinfo(now_index, robots)
    mysql_center.get_uinfo_by_uid(robots[now_index].uid, function(err, uinfo)
        if err then
            Logger.error(err) 
            return
        end

        if not uinfo then
            return
        end

        redis_center.set_uinfo_inredis(robots[now_index].uid, uinfo)
        now_index = now_index + 1
        if now_index > #robots then
            do_new_robot_players(robots)
            return
        end

        do_load_robot_uinfo(now_index, robots)
    end)
end

function do_load_robot_ugame_info()
    mysql_game.get_robots_ugame_info(function(err, ret)
        if err then
            Logger.error(err) 
            return
        end

        if not ret or #ret <= 0 then
            Logger.error("load_robot_ugame_info failed!!!!!") 
            return
        end

        for k, v in pairs(ret) do
            redis_game.set_ugame_info_inredis(v.uid, v)
        end

        do_load_robot_uinfo(1, ret)
    end)
end

function load_robots()
    if not mysql_game.is_connected()
    or not mysql_center.is_connected()
    or not redis_center.is_connected()
    or not redis_game.is_connected() then
        Scheduler.once(load_robots, 5000)
        return
    end

    do_load_robot_ugame_info()
end

Scheduler.once(load_robots, 5000)

function send_status(s, stype, ctype, uid, status)
    local msg = {stype, ctype, uid, {
        status = status,
    }}
    Session.send_msg(s, msg)
end

function search_inview_match_mgr(zid)
    local match_list = zone_match_list[zid]
    local match = nil
    for k, v in pairs(match_list) do
        if v.state == State.InView then
            return v
        end
    end

    match = match_mgr:new()
    match:init(zid)
    match_list[match.matchid] = match

    return match
end

function do_match_players(zid)
    local wait_list = zone_wait_list[zid]
    if not wait_list then
        return
    end

    for k, v in pairs(wait_list) do
        local match = search_inview_match_mgr(zid)
        if match then
            if not match:enter_player(v) then
                Logger.error("match system error : player.state :" .. v.state)
            else
                wait_list[k] = nil
            end
        end
    end
end

function scheduler_do_match()
    for k, zid in pairs(zone) do
        do_match_players(zid)
    end
end

Scheduler.schedule(scheduler_do_match, 2000, -1, 5000)

function search_idle_robot(zid)
    local robots = zone_robot_list[zid]
    for k, v in pairs(robots) do
        if v.matchid == -1 then
            return v
        end 
    end
    return nil
end

function do_exit_robot(match, robot)
    Scheduler.once(function()
        match:exit_player(robot) 
    end, 6000)
end

function scheduler_do_robot_to_match()
    for zid, match_list in pairs(zone_match_list) do
        for k, match in pairs(match_list) do
            if match.state == State.InView then
                local robot = search_idle_robot(zid)
                if robot then
                    match:enter_player(robot)

                    --test
                    -- do_exit_robot(match, robot)
                end
            end
        end
    end
end
Scheduler.schedule(scheduler_do_robot_to_match, 2000, -1, 5000)


function login_logic_server(s, req)
    local stype = req[1]
    local uid = req[3]
    local body = req[4]
    local p = logic_server_players[uid]
    if p then -- 玩家已存在 更新session
        p:set_session(s)
        p:set_udp_addr(body.udp_ip, body.udp_port)
        send_status(s, stype, Cmd.eLoginLogicRes, uid, Respones.OK)
        return
    end

    p = player:new()
    p:init(uid, s, function(status)
        if status == Respones.OK then
            logic_server_players[uid] = p
            online_player_num = online_player_num + 1
            print("uid: " .. uid .. " online  current online num:[" .. online_player_num .. "]")
        end
        send_status(s, stype, Cmd.eLoginLogicRes, uid, status)
    end)

    p:set_udp_addr(body.udp_ip, body.udp_port)
end

function on_player_disconnect(s, req)
    local uid = req[3]
    local p = logic_server_players[uid]
    if not p then
        return
    end

    p:set_session(nil)
    p:set_udp_addr(nil, 0)

    if p.zid ~= -1 then
        if zone_wait_list[p.zid][p.uid] then
            zone_wait_list[p.zid][p.uid] = nil
            p.zid = -1
        else

        end
    end

    if p then
        logic_server_players[uid] = nil
        online_player_num = online_player_num - 1
        print("uid: " .. uid .. " disconnect  current online num:[" .. online_player_num .. "]")
    end
end

function on_gateway_disconnect(s)
    for k, v in pairs(logic_server_players) do
        v:set_session(nil)
    end
end

function on_gateway_connect(s)
    for k, v in pairs(logic_server_players) do
        v:set_session(s)
    end
end

function enter_zone(s, req)
    local stype = req[1]
    local uid = req[3]

    local p = logic_server_players[uid]
    if not p or p.zid ~= -1 then
        send_status(s, stype, Cmd.eEnterZoneRes, uid, Respones.InvalidOpt)
        return
    end

    local zid = req[4].zid
    if zid ~= zone.XGZD and zid ~= zone.JDDLD then
        send_status(s, stype, Cmd.eEnterZoneRes, uid, Respones.InvalidParams)
        return
    end

    if not zone_wait_list[zid] then
        zone_wait_list[zid] = {}
    end

    zone_wait_list[zid][uid] = p
    p.zid = zid
    send_status(s, stype, Cmd.eEnterZoneRes, uid, Respones.OK)
end

function do_exit_match(s, req)
    local uid = req[3]
    local p = logic_server_players[uid]
    if not p then
        send_status(s, req[1], Cmd.eExitMatchRes, uid, Respones.InvalidOpt)
        return
    end

    if p.state ~= State.InView or p.zid == -1 or p.matchid == -1 or p.seatid == -1 then
        send_status(s, req[1], Cmd.eExitMatchRes, uid, Respones.InvalidOpt)
        return
    end

    local match = zone_match_list[p.zid][p.matchid]
    if not match or match.state ~= State.InView then
        send_status(s, req[1], Cmd.eExitMatchRes, uid, Respones.InvalidOpt)
        return
    end

    match:exit_player(p)
end

function do_udp_test(s, req)
    local stype = req[1]
    local ctype = req[2]
    local body = req[4]

    print(body.content)
    local msg = {
        stype, ctype, 0, {
            content = body.content,
        }
    }

    Session.send_msg(s, msg)
end

function on_next_frame_event(s, req)
    local stype = req[1]
    local ctype = req[2]
    local body = req[4]

    local match = zone_match_list[body.zid][body.matchid]
    if not match or match.state ~= State.Playing then
        return
    end

    match:on_next_frame_event(body)
end

local game_mgr = {
    login_logic_server = login_logic_server,
    on_player_disconnect = on_player_disconnect,
    on_gateway_disconnect = on_gateway_disconnect,
    on_gateway_connect = on_gateway_connect,

    enter_zone = enter_zone,
    do_exit_match = do_exit_match,
    do_udp_test = do_udp_test,
    on_next_frame_event = on_next_frame_event,
}

return game_mgr