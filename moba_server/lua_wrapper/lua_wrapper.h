#ifndef __LUA_WRAPPER_H__
#define __LUA_WRAPPER_H__

#include "lua.hpp"
#include <string>

class lua_wrapper {
public:
	static void init();
	static void exit();

	static bool do_file(std::string& lua_file);
	static lua_State* lua_state();

public:
	static void reg_func2lua(const char* name, int (*c_func)(lua_State* L));
	static void add_search_path(std::string& path);

public:
	static int execute_script_handler(int nHandler, int numArgs);
	static void remove_script_handler(int nHandler);
};

#endif // !__LUA_WRAPPER_H__
