#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string>

using namespace std;

#include "../../netbus/proto_man.h"
#include "../../netbus/netbus.h"
#include "proto/pf_cmd_map.h"
#include "../../utils/logger.h"
#include "../../utils/time_list.h"
#include "../../utils/timestamp.h"
#include "../../database/mysql_wrapper.h"

static void on_logger_timer(void* udata)
{
	log_debug("on_logger_timer");
}

int main(int argc, char** argv)
{
	proto_man::init(PROTO_BUF);
	init_pf_cmd_map();
	logger::init("logger", "netbuf_log", true);

	//schedule(on_logger_timer, NULL, 3000, -1);

	netbus::instance()->init();
	netbus::instance()->start_tcp_server(6080);
	netbus::instance()->start_ws_server(8001);
	netbus::instance()->start_udp_server(8002);
	netbus::instance()->run();
	system("pause");
	return 0;
}