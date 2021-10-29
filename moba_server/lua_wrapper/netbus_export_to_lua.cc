#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lua_wrapper.h"
#include "../netbus/netbus.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus
#include "tolua++.h"
#ifdef __cplusplus
}
#endif // __cplusplus

#include "tolua_fix.h"
#include "netbus_export_to_lua.h"

static int lua_udp_listen(lua_State* tolua_S)
{
	int argc = lua_gettop(tolua_S);
	if (argc != 1)
	{
		goto lua_failed;
	}
	int port = (int)lua_tointeger(tolua_S, 1);
	netbus::instance()->udp_listen(port);
lua_failed:
	return 0;
}

static int lua_tcp_listen(lua_State* tolua_S)
{
	int argc = lua_gettop(tolua_S);
	if (argc != 1)
	{
		goto lua_failed;
	}
	int port = (int)lua_tointeger(tolua_S, 1);
	netbus::instance()->tcp_listen(port);
lua_failed:
	return 0;
}

static int lua_ws_listen(lua_State* tolua_S)
{
	int argc = lua_gettop(tolua_S);
	if (argc != 1)
	{
		goto lua_failed;
	}
	int port = (int)lua_tointeger(tolua_S, 1);
	netbus::instance()->ws_listen(port);
lua_failed:
	return 0;
}

static void on_tcp_connected(int err, session* s, void* udata)
{
	if (err)
	{
		lua_pushinteger(lua_wrapper::lua_state(), err);
		lua_pushnil(lua_wrapper::lua_state());
	}
	else
	{
		lua_pushinteger(lua_wrapper::lua_state(), err);
		tolua_pushuserdata(lua_wrapper::lua_state(), s);
	}

	lua_wrapper::execute_script_handler((int)udata, 2);
	lua_wrapper::remove_script_handler((int)udata);
}

static int lua_tcp_connect(lua_State* tolua_S)
{
	const char* ip = luaL_checkstring(tolua_S, 1);
	if (ip == NULL)
	{
		goto lua_failed;
	}

	int port = luaL_checkinteger(tolua_S, 2);
	int handler = toluafix_ref_function(tolua_S, 3, 0);
	if (handler == 0)
	{
		goto lua_failed;
	}

	netbus::instance()->tcp_connect(ip, port, on_tcp_connected, (void*)handler);
lua_failed:
	return 0;
}

int register_netbus_export(lua_State* tolua_S)
{
	lua_getglobal(tolua_S, "_G");
	if (lua_istable(tolua_S, -1))
	{
		tolua_open(tolua_S);

		tolua_module(tolua_S, "Netbus", 0);
		tolua_beginmodule(tolua_S, "Netbus");
		tolua_function(tolua_S, "udp_listen", lua_udp_listen);
		tolua_function(tolua_S, "tcp_listen", lua_tcp_listen);
		tolua_function(tolua_S, "ws_listen", lua_ws_listen);
		tolua_function(tolua_S, "tcp_connect", lua_tcp_connect);

		tolua_endmodule(tolua_S);
	}
	lua_pop(tolua_S, 1);
	return 0;
}