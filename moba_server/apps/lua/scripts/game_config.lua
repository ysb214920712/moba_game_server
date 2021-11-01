local Stype = require("Stype")

local remote_servers = {}

-- register server 
remote_servers[Stype.Auth] = {
    stype = Stype.Auth,
    ip = "127.0.0.1",
    port = 8000,
    desic = "Auth server",
}

-- remote_servers[Stype.System] = {
--     stype = Stype.System,
--     ip = "127.0.0.1",
--     port = 8001,
--     desic = "System server",

-- }

local game_config = {
    gateway_tcp_ip = "127.0.0.1",
    gateway_tcp_port = 6080,

    gateway_ws_ip = "127.0.0.1",
    gateway_ws_port = 6081,

    servers = remote_servers,
}

return game_config