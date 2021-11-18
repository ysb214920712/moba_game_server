local Stype = require("Stype")
local Cmd = require("Cmd")
local guest = require("auth_server/guest")
local edit_profile = require("auth_server/edit_profile")
local account_upgrade = require("auth_server/account_upgrade")
local uname_login = require("auth_server/uname_login")
local login_out = require("auth_server/login_out")

local auth_service_hanlders = {}
auth_service_hanlders[Cmd.eGuestLoginReq] = guest.login
auth_service_hanlders[Cmd.eEditProfileReq] = edit_profile.do_edit_profile
auth_service_hanlders[Cmd.eAccountUpgradeReq] = account_upgrade.do_upgrade
auth_service_hanlders[Cmd.eUnameLoginReq] = uname_login.do_uname_login
auth_service_hanlders[Cmd.eLoginOutReq] = login_out.do_login_out


-- {stype, ctype, utag, body}
function on_auth_recv_cmd(s, msg)
	print(msg[1], msg[2], msg[3], msg[4])
	if auth_service_hanlders[msg[2]] then
		auth_service_hanlders[msg[2]](s, msg)
	end
end

function on_auth_session_disconnect(s, stype) 
end

local auth_service = {
	on_session_recv_cmd = on_auth_recv_cmd,
	on_session_disconnect = on_auth_session_disconnect,
}

return auth_service