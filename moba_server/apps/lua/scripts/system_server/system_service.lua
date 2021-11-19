local Stype = require("Stype")
local Cmd = require("Cmd")
local ugame = require("system_server/ugame")
local login_bonues = require("system_server/login_bonues")

local system_service_hanlders = {}
system_service_hanlders[Cmd.eGetUgameInfoReq] = ugame.get_ugame_info
system_service_hanlders[Cmd.eRecvLoginBonuesReq] = login_bonues.recv_login_bonues


-- {stype, ctype, utag, body}
function on_system_recv_cmd(s, msg)
	print("System " .. msg[1], msg[2], msg[3], msg[4])
	if system_service_hanlders[msg[2]] then
		system_service_hanlders[msg[2]](s, msg)
	end
end

function on_system_session_disconnect(s, stype) 
end

local system_service = {
	on_session_recv_cmd = on_system_recv_cmd,
	on_session_disconnect = on_system_session_disconnect,
}

return system_service