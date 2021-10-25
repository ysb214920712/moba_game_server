--init logger
logger.init("logger", "netbuf_log", true)

--init proto_man
local proto_type = {
    PROTO_JSON = 0,
    PROTO_BUF = 1,
}
proto_man.init(proto_type.PROTO_BUF);
if proto_man.proto_type() == proto_type.PROTO_BUF then
    local cmd_name_map = require("cmd_name_map")
    if cmd_name_map then
        proto_man.register_protobuf_cmd_map(cmd_name_map)
    end
end

--start netbus
netbus.tcp_listen(6080);
netbus.ws_listen(8001);
netbus.udp_listen(8002);

print("start service success!!!!")