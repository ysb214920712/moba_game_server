-- save all client list
local session_set = {}

function broadcast_except(msg, except)
    for i = 1, #session_set do
        if except ~= session_set[i] then
            Session.send_msg(session_set[i], msg)
            return
        end
    end
end

function on_recv_login_cmd(s)
    print("Session.length: " .. #session_set)
    for i = 1, #session_set do
        if s == session_set[i] then
            local msg = {1, 2, 0, {status = -1}}
            Session.send_msg(s, msg)
            return
        end
    end

    table.insert(session_set, s)
    local msg = {1, 2, 0, {status = 1}}
    Session.send_msg(s, msg)

    local s_ip, s_port = Session.get_address(s)
    msg = {1, 7, 0, {ip = s_ip, port = s_port}}
    broadcast_except(msg, s)
end

function on_recv_exit_cmd(s)
    for i = 1, #session_set do
        if s == session_set[i] then
            table.remove(session_set, i)
            local msg = {1, 4, 0, {status = 1}}
            Session.send_msg(s, msg)

            local s_ip, s_port = Session.get_address(s)
            msg = {1, 8, 0, {ip = s_ip, port = s_port}}
            broadcast_except(msg, s)
            return
        end
    end

    local msg = {1, 4, 0, {status = -1}}
    Session.send_msg(s, msg)
end

function on_recv_send_msg_cmd(s, str)
    for i = 1, #session_set do
        if s == session_set[i] then
            local msg = {1, 6, 0, {status = 1}}
            Session.send_msg(s, msg)

            local s_ip, s_port = Session.get_address(s)
            msg = {1, 9, 0, {ip = s_ip, port = s_port, content = tostring(str)}}
            broadcast_except(msg, s)
            return
        end
    end

    local msg = {1, 6, 0, {status = -1}}
    Session.send_msg(s, msg)
end

-- {stype, ctype, utag, body}
function on_trm_recv_cmd(s, msg)
    local ctype = msg[2]
    local body = msg[4]
    if ctype == 1 then
        on_recv_login_cmd(s)
    elseif ctype == 3 then
        on_recv_exit_cmd(s)
    elseif ctype == 5 then
        on_recv_send_msg_cmd(s, body.content)
    end
end

function on_trm_sesseion_disconnect(s, stype)
    local ip, port = Session.get_address(s)
    print("trm_sesseion_disconnect " .. ip .. ":" .. port)
    for i = 1, #session_set do
        if s == session_set[i] then
            table.remove(session_set, i)
            local s_ip, s_port = Session.get_address(s)
            local msg = {1, 8, 0, {ip = s_ip, port = s_port}}
            broadcast_except(msg, s)
            return
        end
    end
end

local trm_service = {
    on_session_recv_cmd = on_trm_recv_cmd,
    on_session_disconnect = on_trm_sesseion_disconnect,
}

local trm_server = {
    stype = 1,
    service = trm_service,
}

return trm_server