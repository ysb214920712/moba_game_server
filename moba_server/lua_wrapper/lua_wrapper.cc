#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "../utils/logger.h"

#include "tolua_fix.h"
#include "lua_wrapper.h"
#include "mysql_export_to_lua.h"
#include "redis_export_to_lua.h"

lua_State* g_lua_State = NULL;

static void print_error(const char* file_name, int line_num, const char* msg)
{
	logger::log(file_name, line_num, ERROR, msg);
}

static void print_warning(const char* file_name, int line_num, const char* msg)
{
	logger::log(file_name, line_num, WARNING, msg);
}

static void print_debug(const char* file_name, int line_num, const char* msg)
{
	logger::log(file_name, line_num, DEBUG, msg);
}

static void do_log_message(void(*log)(const char* file_name, int line_num, const char* msg), const char* msg)
{
	lua_Debug info;
	int depth = 0;
	while (lua_getstack(g_lua_State, depth, &info))
	{
		lua_getinfo(g_lua_State, "S", &info);
		lua_getinfo(g_lua_State, "n", &info);
		lua_getinfo(g_lua_State, "l", &info);

		if (info.source[0] == '@')
		{
			log(&info.source[1], info.currentline, msg);
			return;
		}

		++depth;
	}
	if (depth == 0)
	{
		log("trunk", 0, msg);
	}
}

static int lua_log_debug(lua_State* L)
{
	const char* msg = luaL_checkstring(L, -1);
	if (msg)
	{
		// file_name, line_num
		do_log_message(print_debug, msg);

	}
	return 0;
}

static int lua_log_warning(lua_State* L)
{
	const char* msg = luaL_checkstring(L, -1);
	if (msg)
	{
		// file_name, line_num
		do_log_message(print_warning, msg);

	}
	return 0;
}

static int lua_log_error(lua_State* L)
{
	const char* msg = luaL_checkstring(L, -1);
	if (msg)
	{
		// file_name, line_num
		do_log_message(print_error, msg);

	}
	return 0;
}

static int lua_panic(lua_State* L)
{
	const char* msg = luaL_checkstring(L, -1);
	if (msg)
	{
		// file_name, line_num
		do_log_message(print_error, msg);

	}
	return 0;
}

lua_State* lua_wrapper::lua_state()
{
	return g_lua_State;
}

void lua_wrapper::init()
{
	g_lua_State = luaL_newstate();
	lua_atpanic(g_lua_State, lua_panic); // default abort

	luaL_openlibs(g_lua_State);
	toluafix_open(g_lua_State);

	register_mysql_export(g_lua_State);
	register_redis_export(g_lua_State);

	// export logger function
	lua_wrapper::reg_func2lua("log_error", lua_log_error);
	lua_wrapper::reg_func2lua("log_debug", lua_log_debug);
	lua_wrapper::reg_func2lua("log_warning", lua_log_warning);
	// end
}

void lua_wrapper::exit()
{
	if (g_lua_State != NULL)
	{
		lua_close(g_lua_State);
		g_lua_State = NULL;
	}
}

bool lua_wrapper::exe_lua_file(const char* lua_file)
{
	if (luaL_dofile(g_lua_State, lua_file))
	{
		lua_log_error(g_lua_State);
		return false;
	}
	return true;
}

void lua_wrapper::reg_func2lua(const char* name, int (*c_func)(lua_State* L))
{
	lua_pushcfunction(g_lua_State, c_func);
	lua_setglobal(g_lua_State, name);
}

static bool pushFunctionByHandler(int nHandler)
{
	toluafix_get_function_by_refid(g_lua_State, nHandler);
	if (!lua_isfunction(g_lua_State, -1))
	{
		log_error("[LUA ERROR] function refid '%d' does not refrence a Lua Function", nHandler);
		lua_pop(g_lua_State, 1);
		return false;
	}
	return true;
}

static int executeFunction(int numArgs)
{
	int functionIndex = -(numArgs + 1);
	if (!lua_isfunction(g_lua_State, functionIndex))
	{
		log_error("[LUA ERROR] value at stack [%d] is not function", functionIndex);
		lua_pop(g_lua_State, numArgs + 1);
		return 0;
	}

	int traceback = 0;
	lua_getglobal(g_lua_State, "__G__TRACKBACK__");
	if (!lua_isfunction(g_lua_State, -1))
	{
		lua_pop(g_lua_State, 1);
	}
	else
	{
		lua_insert(g_lua_State, functionIndex - 1);
		traceback = functionIndex - 1;
	}

	int error = 0;
	error = lua_pcall(g_lua_State, numArgs, 1, traceback);
	if (error)
	{
		if (traceback == 0)
		{
			log_error("[LUA ERROR] %s", lua_tostring(g_lua_State, -1));
			lua_pop(g_lua_State, 1);
		}
		else
		{
			lua_pop(g_lua_State, 2);
		}
		return 0;
	}

	int ret = 0;
	if (lua_isnumber(g_lua_State, -1))
	{
		ret = (int)lua_tointeger(g_lua_State, -1);
	}
	else if (lua_isboolean(g_lua_State, -1))
	{
		ret = (int)lua_toboolean(g_lua_State, -1);
	}
	lua_pop(g_lua_State, 1);

	if (traceback)
	{
		lua_pop(g_lua_State, 1);
	}
	return ret;
}

int lua_wrapper::execute_script_handler(int nHandler, int numArgs) 
{
	int ret = 0;
	if (pushFunctionByHandler(nHandler))
	{
		if (numArgs > 0)
		{
			lua_insert(g_lua_State, -(numArgs + 1));
		}
		ret = executeFunction(numArgs);
	}
	lua_settop(g_lua_State, 0);
	return ret;
}

void lua_wrapper::remove_script_handler(int nHandler) 
{
	toluafix_remove_function_by_refid(g_lua_State, nHandler);
}