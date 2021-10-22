#ifndef __SCHEDULER_EXPORT_TO_LUA_H__
#define __SCHEDULER_EXPORT_TO_LUA_H__

struct lua_State;
int register_scheduler_export(lua_State* L);

#endif // !__SCHEDULER_EXPORT_TO_LUA_H__