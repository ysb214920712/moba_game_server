#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lua_wrapper.h"
#include "../utils/timestamp.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus
#include "tolua++.h"
#ifdef __cplusplus
}
#endif // __cplusplus

#include "tolua_fix.h"
#include "utils_export_to_lua.h"

#include "../utils/small_alloc.h"
#define my_malloc small_alloc
#define my_free small_free

static int lua_timestamp(lua_State* tolua_S)
{
	unsigned long ts = timestamp();
	lua_pushinteger(tolua_S, ts);

	return 1;
}

static int lua_timestamp_today(lua_State* tolua_S)
{
	unsigned long ts = timestamp_today();
	lua_pushinteger(tolua_S, ts);

	return 1;
}

static int lua_timestamp_yesterday(lua_State* tolua_S)
{
	unsigned long ts = timestamp_yesterday();
	lua_pushinteger(tolua_S, ts);

	return 1;
}


int register_utils_export(lua_State* tolua_S)
{
	lua_getglobal(tolua_S, "_G");
	if (lua_istable(tolua_S, -1))
	{
		tolua_open(tolua_S);

		tolua_module(tolua_S, "Utils", 0);
		tolua_beginmodule(tolua_S, "Utils");
		tolua_function(tolua_S, "timestamp", lua_timestamp);
		tolua_function(tolua_S, "timestamp_today", lua_timestamp_today);
		tolua_function(tolua_S, "timestamp_yesterday", lua_timestamp_yesterday);

		tolua_endmodule(tolua_S);
	}
	lua_pop(tolua_S, 1);
	return 0;
}