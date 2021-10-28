--init logger
Logger.init("logger", "netbuf_log", true)

--init ProtoMan
local proto_type = {
    PROTO_JSON = 0,
    PROTO_BUF = 1,
}
ProtoMan.init(proto_type.PROTO_BUF);
if ProtoMan.proto_type() == proto_type.PROTO_BUF then
    local cmd_name_map = require("cmd_name_map")
    if cmd_name_map then
        print("cmd_name_map")
        ProtoMan.register_protobuf_cmd_map(cmd_name_map)
    end
end

--start Netbus
Netbus.tcp_listen(6080);
Netbus.ws_listen(8001);
Netbus.udp_listen(8002);

print("start service success!!!!")

local trm_server = require("trm_server")
local ret = Service.register(trm_server.stype, trm_server.service)
if ret then
    print("register trm service success")
else
    print("register trm service failed")
end
