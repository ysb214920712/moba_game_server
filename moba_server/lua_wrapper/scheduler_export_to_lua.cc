#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lua_wrapper.h"
#include "../utils/time_list.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus
#include "tolua++.h"
#ifdef __cplusplus
}
#endif // __cplusplus

#include "tolua_fix.h"
#include "scheduler_export_to_lua.h"

#define my_malloc malloc
#define my_free free

struct timer_repeat {
	int handler;
	int repeat_count;
};

static void on_lua_repeat_timer(void* udata)
{
	struct timer_repeat* tr = (struct timer_repeat*)udata;
	lua_wrapper::execute_script_handler(tr->handler, 0);
	if (tr->repeat_count == -1)
	{
		return;
	}

	tr->repeat_count--;
	if (tr->repeat_count <= 0)
	{
		lua_wrapper::remove_script_handler(tr->handler);
		my_free(tr);
	}
}

static int lua_schedule_repeat(lua_State* tolua_S)
{
	int handler = toluafix_ref_function(tolua_S, 1, 0);
	if (handler == 0)
	{
		goto lua_failed;
	}

	int after_msec = lua_tointeger(tolua_S, 2, 0);
	if (after_msec <= 0)
	{
		goto lua_failed;
	}

	int repeat_count = lua_tointeger(tolua_S, 3, 0);
	if (repeat_count == 0)
	{
		goto lua_failed;
	}
	if (repeat_count < 0)
	{
		repeat_count = -1;
	}

	int repeat_msec = lua_tointeger(tolua_S, 4, 0);
	if (repeat_msec <= 0)
	{
		repeat_msec = after_msec;
	}

	struct timer_repeat* tr = (struct timer_repeat*)my_malloc(sizeof(struct timer_repeat));
	tr->handler = handler;
	tr->repeat_count = repeat_count;

	struct timer* t = schedule_repeat(on_lua_repeat_timer, tr, after_msec, repeat_count, repeat_msec);
	tolua_pushuserdata(tolua_S, t);
	return 1;
lua_failed:
	if (handler != 0)
	{
		lua_wrapper::remove_script_handler(handler);
	}
	lua_pushnil(tolua_S);
	return 1;
}

static int lua_schedule_once(lua_State* tolua_S)
{
	int handler = toluafix_ref_function(tolua_S, 1, 0);
	if (handler == 0)
	{
		goto lua_failed;
	}

	int after_msec = lua_tointeger(tolua_S, 2, 0);
	if (after_msec <= 0)
	{
		goto lua_failed;
	}

	struct timer_repeat* tr = (struct timer_repeat*)my_malloc(sizeof(struct timer_repeat));
	tr->handler = handler;
	tr->repeat_count = 1;

	struct timer* t = schedule_once(on_lua_repeat_timer, tr, after_msec);
	tolua_pushuserdata(tolua_S, t);
	return 1;
lua_failed:
	if (handler != 0)
	{
		lua_wrapper::remove_script_handler(handler);
	}
	lua_pushnil(tolua_S);
	return 1;
}

static int lua_schedule_cancel(lua_State* tolua_S)
{
	if (!lua_isuserdata(tolua_S, 1))
	{
		goto lua_failed;
	}

	struct timer* t = (struct timer*)lua_touserdata(tolua_S, 1);
	struct timer_repeat* tr = (struct timer_repeat* )get_timer_udata(t);
	lua_wrapper::remove_script_handler(tr->handler);
	my_free(tr);
	cancel_timer(t);

lua_failed:
	return 0;
}

int register_scheduler_export(lua_State* tolua_S)
{
	lua_getglobal(tolua_S, "_G");
	if (lua_istable(tolua_S, -1))
	{
		tolua_open(tolua_S);

		tolua_module(tolua_S, "scheduler", 0);
		tolua_beginmodule(tolua_S, "scheduler");
		tolua_function(tolua_S, "schedule", lua_schedule_repeat);
		tolua_function(tolua_S, "once", lua_schedule_once);
		tolua_function(tolua_S, "cancel", lua_schedule_cancel);

		tolua_endmodule(tolua_S);
	}
	lua_pop(tolua_S, 1);
	return 0;
}