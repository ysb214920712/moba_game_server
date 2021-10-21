#ifndef __LUA_WRAPPER_H__
#define __LUA_WRAPPER_H__

#include "lua.hpp"

class lua_wrapper {
public:
	static void init();
	static void exit();

	static bool exe_lua_file(const char* lua_file);
	static lua_State* lua_state();

public:
	static void reg_func2lua(const char* name, int (*c_func)(lua_State* L));

public:
	static int execute_script_handler(int nHandler, int numArgs);
	static void remove_script_handler(int nHandler);
};

#endif // !__LUA_WRAPPER_H__
