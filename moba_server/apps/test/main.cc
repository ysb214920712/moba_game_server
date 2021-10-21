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
#include "../../database/redis_wrapper.h"
#include "../../lua_wrapper/lua_wrapper.h"

static void on_logger_timer(void* udata)
{
	log_debug("on_logger_timer");
}

static void on_redis_query(const char* err, redisReply* result, void* udata)
{
	if (err)
	{
		printf("%s\n", err);
		return;
	}
	printf("success\n");
}

static void on_redis_open_cb(const char* err, void* context, void* udata)
{
	if (err != NULL)
	{
		printf("%s\n", err);
		return;
	}
	printf("connect success\n");

	redis_wrapper::query(context, "select 0", on_redis_query);
	//redis_wrapper::close_redis(context);
}

static void test_redis()
{
	redis_wrapper::connect("127.0.0.1", 6379, on_redis_open_cb);
}

int main(int argc, char** argv)
{
	//test_redis();

	proto_man::init(PROTO_BUF);
	init_pf_cmd_map();
	logger::init("logger", "netbuf_log", true);

	//schedule(on_logger_timer, NULL, 3000, -1);

	netbus::instance()->init();
	netbus::instance()->start_tcp_server(6080);
	netbus::instance()->start_ws_server(8001);
	netbus::instance()->start_udp_server(8002);

	lua_wrapper::init();
	lua_wrapper::exe_lua_file("./main.lua");

	netbus::instance()->run();
	lua_wrapper::exit();
	system("pause");
	return 0;
}