local game_config = require("game_config")

-- stype --> session的一个映射
local server_session_man = {}
-- 当前正在做连接的服务器
local do_connecting = {}

function connect_to_server(stype, ip, port)
	Netbus.tcp_connect(ip, port, function(err, session)
		do_connecting[stype] = false
		if err ~= 0 then 
			Logger.error("connect error to server ["..game_config.servers[stype].desic.."]"..ip..":"..port)
			return
		end 
		server_session_man[stype] = session
		print("connect success to server ["..game_config.servers[stype].desic.."]"..ip..":"..port)
	end)
end

function check_server_connect()
	for k, v in pairs(game_config.servers) do 
		if server_session_man[v.stype] == nil and 
		    do_connecting[v.stype] == false then 
		    do_connecting[v.stype] = true
		    print("connecting to server ["..v.desic.."]"..v.ip..":"..v.port)
		    connect_to_server(v.stype, v.ip, v.port)
		end
	end	
end

function gw_service_init()
	for k, v in pairs(game_config.servers) do 
		server_session_man[v.stype] = nil
		do_connecting[v.stype] = false
	end

	-- 启动一个定时器
	Scheduler.schedule(check_server_connect, 1000, -1, 5000)
	-- end 
end

-- 临时的ukey 来找client session
local g_ukey = 1
local client_sessions_ukey = {}
-- uid来找client session
local client_sessions_uid = {}

function send_to_client(server_session, raw_cmd)
    local stype, ctype, utag = RawCmd.read_header(raw_cmd)
    local client_session = nil

    --TODO
    if client_sessions_uid[utag] ~= nil then
        client_session = client_sessions_uid[utag]
    elseif client_sessions_ukey[utag] ~= nil then
        client_session = client_sessions_ukey[utag]
    end

    RawCmd.set_utag(raw_cmd, 0)
    if client_session then
        Session.send_raw_cmd(client_session, raw_cmd)
    end
end

-- s 来自于客户端
function send_to_server(client_session, raw_cmd)

	local stype, ctype, utag = RawCmd.read_header(raw_cmd)
	print(stype, ctype, utag)

	local server_session = server_session_man[stype]
	if server_session == nil then --可以回一个命令给客户端，系统错误
		return
	end

	local uid = Session.get_uid(client_session)

	if uid == 0 then -- 登陆以前
		utag = Session.get_utag(client_session)
		if utag == 0 then 
			utag = g_ukey
			g_ukey = g_ukey + 1
			client_sessions_ukey[utag] = client_session
			Session.set_utag(client_session, utag)
		end
	else -- 登陆以后
		utag = uid
		client_sessions_uid[utag] = client_session
	end

	-- 打上utag然后转发给我们的服务器
    RawCmd.set_utag(raw_cmd, utag)
	Session.send_raw_cmd(server_session, raw_cmd)
end

-- {stype, ctype, utag, body}
function on_gw_recv_raw_cmd(s, raw_cmd)
	if Session.asclient(s) == 0 then --转发给服务器
		send_to_server(s, raw_cmd)
	else
		send_to_client(s, raw_cmd)
	end
end

function on_gw_session_disconnect(s, stype) 
	-- 连接到服务器的session断线了
	if Session.asclient(s) == 1 then 
		for k, v in pairs(server_session_man) do 
			if v == s then 
				print("gateway disconnect ["..game_config.servers[k].desic.."]")
				server_session_man[k] = nil
				return
			end
		end
		return
	end

	-- 连接到网关的客户端断线了
	-- 把客户端从临时映射表里面删除
	local utag = Session.get_utag(s)
	if client_sessions_ukey[utag] ~= nil then 
		client_sessions_ukey[utag] = nil
		Session.set_utag(s, 0)
		table.remove(client_sessions_ukey, utag)
	end
	-- end

	-- 把客户端从uid映射表里移除
	local uid = Session.get_uid(s)
	if client_sessions_uid[uid] ~= nil then 
		client_sessions_uid[uid] = nil
		table.remove(client_sessions_uid, uid)
	end
    -- end

    -- 客户端掉线， 广播通知所有与网关连接的服务器
    if uid ~= 0 then

    end
end

gw_service_init()

local gw_service = {
	on_session_recv_raw_cmd = on_gw_recv_raw_cmd,
	on_session_disconnect = on_gw_session_disconnect,
}

return gw_service