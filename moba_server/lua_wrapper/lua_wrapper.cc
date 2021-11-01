#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <string>

#include "../utils/logger.h"

#include "tolua_fix.h"
#include "lua_wrapper.h"
#include "mysql_export_to_lua.h"
#include "redis_export_to_lua.h"
#include "service_export_to_lua.h"
#include "session_export_to_lua.h"
#include "scheduler_export_to_lua.h"
#include "netbus_export_to_lua.h"
#include "proto_man_export_to_lua.h"

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

static int
lua_log_debug(lua_State* luastate) {
	int nargs = lua_gettop(luastate);
	std::string t;
	for (int i = 1; i <= nargs; i++)
	{
		if (lua_istable(luastate, i))
			t += "table";
		else if (lua_isnone(luastate, i))
			t += "none";
		else if (lua_isnil(luastate, i))
			t += "nil";
		else if (lua_isboolean(luastate, i))
		{
			if (lua_toboolean(luastate, i) != 0)
				t += "true";
			else
				t += "false";
		}
		else if (lua_isfunction(luastate, i))
			t += "function";
		else if (lua_islightuserdata(luastate, i))
			t += "lightuserdata";
		else if (lua_isthread(luastate, i))
			t += "thread";
		else
		{
			const char* str = lua_tostring(luastate, i);
			if (str)
				t += lua_tostring(luastate, i);
			else
				t += lua_typename(luastate, lua_type(luastate, i));
		}
		if (i != nargs)
			t += "\t";
	}
	do_log_message(print_debug, t.c_str());
	return 0;
}

static int
lua_log_warning(lua_State* luastate) {
	int nargs = lua_gettop(luastate);
	std::string t;
	for (int i = 1; i <= nargs; i++)
	{
		if (lua_istable(luastate, i))
			t += "table";
		else if (lua_isnone(luastate, i))
			t += "none";
		else if (lua_isnil(luastate, i))
			t += "nil";
		else if (lua_isboolean(luastate, i))
		{
			if (lua_toboolean(luastate, i) != 0)
				t += "true";
			else
				t += "false";
		}
		else if (lua_isfunction(luastate, i))
			t += "function";
		else if (lua_islightuserdata(luastate, i))
			t += "lightuserdata";
		else if (lua_isthread(luastate, i))
			t += "thread";
		else
		{
			const char* str = lua_tostring(luastate, i);
			if (str)
				t += lua_tostring(luastate, i);
			else
				t += lua_typename(luastate, lua_type(luastate, i));
		}
		if (i != nargs)
			t += "\t";
	}
	do_log_message(print_warning, t.c_str());
	return 0;
}

static int
lua_log_error(lua_State* luastate) {
	int nargs = lua_gettop(luastate);
	std::string t;
	for (int i = 1; i <= nargs; i++)
	{
		if (lua_istable(luastate, i))
			t += "table";
		else if (lua_isnone(luastate, i))
			t += "none";
		else if (lua_isnil(luastate, i))
			t += "nil";
		else if (lua_isboolean(luastate, i))
		{
			if (lua_toboolean(luastate, i) != 0)
				t += "true";
			else
				t += "false";
		}
		else if (lua_isfunction(luastate, i))
			t += "function";
		else if (lua_islightuserdata(luastate, i))
			t += "lightuserdata";
		else if (lua_isthread(luastate, i))
			t += "thread";
		else
		{
			const char* str = lua_tostring(luastate, i);
			if (str)
				t += lua_tostring(luastate, i);
			else
				t += lua_typename(luastate, lua_type(luastate, i));
		}
		if (i != nargs)
			t += "\t";
	}
	do_log_message(print_error, t.c_str());
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

static int lua_logger_init(lua_State* tolua_S)
{
	const char* path = lua_tostring(tolua_S, 1);
	if (path == NULL)
	{
		goto lua_failed;
	}

	const char* prefix = lua_tostring(tolua_S, 2);
	if (prefix == NULL)
	{
		goto lua_failed;
	}

	bool std_out = lua_toboolean(tolua_S, 3);
	logger::init(path, prefix, std_out);

lua_failed:
	return 0;
}

static int register_logger_export(lua_State* tolua_S)
{
	lua_wrapper::reg_func2lua("print", lua_log_debug);
	lua_getglobal(tolua_S, "_G");
	if (lua_istable(tolua_S, -1))
	{
		tolua_open(tolua_S);

		tolua_module(tolua_S, "Logger", 0);
		tolua_beginmodule(tolua_S, "Logger");
		tolua_function(tolua_S, "debug", lua_log_debug);
		tolua_function(tolua_S, "warning", lua_log_warning);
		tolua_function(tolua_S, "error", lua_log_error);
		tolua_function(tolua_S, "init", lua_logger_init);

		tolua_endmodule(tolua_S);
	}
	lua_pop(tolua_S, 1);
	return 0;
}

static int lua_add_search_path(lua_State* L)
{
	const char* path = luaL_checkstring(L, 1);
	if (path)
	{
		std::string str_path = path;
		lua_wrapper::add_search_path(str_path);
	}

	return 0;
}

void lua_wrapper::init()
{
	g_lua_State = luaL_newstate();
	lua_atpanic(g_lua_State, lua_panic); // default abort

	luaL_openlibs(g_lua_State);
	toluafix_open(g_lua_State);
	lua_wrapper::reg_func2lua("lua_add_search_path", lua_add_search_path);

	register_logger_export(g_lua_State);
	register_mysql_export(g_lua_State);
	register_redis_export(g_lua_State);
	register_service_export(g_lua_State);
	register_session_export(g_lua_State);
	register_scheduler_export(g_lua_State);
	register_netbus_export(g_lua_State);
	register_proto_man_export(g_lua_State);
	register_raw_cmd_export(g_lua_State);
}

void lua_wrapper::exit()
{
	printf(" lua_wrapper::exit");
	if (g_lua_State != NULL)
	{
		lua_close(g_lua_State);
		g_lua_State = NULL;
	}
}

bool lua_wrapper::do_file(std::string& lua_file)
{
	if (luaL_dofile(g_lua_State, lua_file.c_str()))
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

void
lua_wrapper::add_search_path(std::string& path) {
	char strPath[1024] = { 0 };
	sprintf(strPath, "local path = string.match([[%s]],[[(.*)/[^/]*$]])\n package.path = package.path .. [[;]] .. path .. [[/?.lua;]] .. path .. [[/?/init.lua]]\n", path.c_str());
	luaL_dostring(g_lua_State, strPath);
}