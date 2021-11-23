local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")
local redis_game = require("database/redis_game")
local mysql_game = require("database/mysql_game")
local player = require("logic_server/player")

function send_status(s, stype, ctype, uid, status)
    local msg = {stype, ctype, uid, {
        status = status,
    }}
    Session.send_msg(s, msg)
end

-- uid --> player
local logic_server_players = {}
local online_player_num = 0

function login_logic_server(s, req)
    local uid = req[3]
    local p = logic_server_players[uid]
    if p then -- 玩家已存在 更新session
        p:set_session(s)
        send_status(s, Stype.Logic, Cmd.eLoginLogicRes, uid, Respones.OK)
        return
    end

    p = player:new()
    p:init(uid, s, function(status)
        if status == Respones.OK then
            logic_server_players[uid] = p
            online_player_num = online_player_num + 1
            print("uid: " .. uid .. " online  current online num:[" .. online_player_num .. "]")
        end
        send_status(s, Stype.Logic, Cmd.eLoginLogicRes, uid, status)
    end)
end

function on_player_disconnect(s, req)
    local uid = req[3]

    if logic_server_players[uid] then
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

local game_mgr = {
    login_logic_server = login_logic_server,
    on_player_disconnect = on_player_disconnect,
    on_gateway_disconnect = on_gateway_disconnect,
    on_gateway_connect = on_gateway_connect,
}

return game_mgr