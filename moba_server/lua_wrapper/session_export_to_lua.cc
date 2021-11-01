#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "../netbus/service.h"
#include "../netbus/session.h"
#include "../netbus/proto_man.h"
#include "../netbus/service_man.h"
#include "../utils/logger.h"

#include "lua_wrapper.h"

#include "google/protobuf/message.h"
using namespace google::protobuf;

#ifdef __cplusplus
extern "C" {
#endif
#include "tolua++.h"
#ifdef __cplusplus
}
#endif

#include "session_export_to_lua.h"
// session.close(session)
static int
lua_session_close(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	s->close();

lua_failed:
	return 0;
}

static google::protobuf::Message*
lua_table_to_protobuf(lua_State* L, int stack_index, const char* msg_name) {
	if (!lua_istable(L, stack_index)) {
		return NULL;
	}

	Message* message = proto_man::create_message(msg_name);
	if (!message) {
		log_error("cant find message  %s from compiled poll \n", msg_name);
		return NULL;
	}

	const Reflection* reflection = message->GetReflection();
	const Descriptor* descriptor = message->GetDescriptor();

	// 遍历table的所有key， 并且与 protobuf结构相比较。如果require的字段没有赋值， 报错！ 如果找不到字段，报错！
	for (int32_t index = 0; index < descriptor->field_count(); ++index) {
		const FieldDescriptor* fd = descriptor->field(index);
		const string& name = fd->name();

		bool isRequired = fd->is_required();
		bool bReapeted = fd->is_repeated();
		lua_pushstring(L, name.c_str());
		lua_rawget(L, stack_index);

		bool isNil = lua_isnil(L, -1);

		if (bReapeted) {
			if (isNil) {
				lua_pop(L, 1);
				continue;
			}
			else {
				bool isTable = lua_istable(L, -1);
				if (!isTable) {
					log_error("cant find required repeated field %s\n", name.c_str());
					proto_man::release_message(message);
					return NULL;
				}
			}

			lua_pushnil(L);
			for (; lua_next(L, -2) != 0;) {
				switch (fd->cpp_type()) {

				case FieldDescriptor::CPPTYPE_DOUBLE:
				{
					double value = luaL_checknumber(L, -1);
					reflection->AddDouble(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_FLOAT:
				{
					float value = luaL_checknumber(L, -1);
					reflection->AddFloat(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_INT64:
				{
					int64_t value = luaL_checknumber(L, -1);
					reflection->AddInt64(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_UINT64:
				{
					uint64_t value = luaL_checknumber(L, -1);
					reflection->AddUInt64(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_ENUM: // 与int32一样处理
				{
					int32_t value = luaL_checknumber(L, -1);
					const EnumDescriptor* enumDescriptor = fd->enum_type();
					const EnumValueDescriptor* valueDescriptor = enumDescriptor->FindValueByNumber(value);
					reflection->AddEnum(message, fd, valueDescriptor);
				}
				break;
				case FieldDescriptor::CPPTYPE_INT32:
				{
					int32_t value = luaL_checknumber(L, -1);
					reflection->AddInt32(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_UINT32:
				{
					uint32_t value = luaL_checknumber(L, -1);
					reflection->AddUInt32(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_STRING:
				{
					size_t size = 0;
					const char* value = luaL_checklstring(L, -1, &size);
					reflection->AddString(message, fd, std::string(value, size));
				}
				break;
				case FieldDescriptor::CPPTYPE_BOOL:
				{
					bool value = lua_toboolean(L, -1);
					reflection->AddBool(message, fd, value);
				}
				break;
				case FieldDescriptor::CPPTYPE_MESSAGE:
				{
					Message* value = lua_table_to_protobuf(L, lua_gettop(L), fd->message_type()->name().c_str());
					if (!value) {
						log_error("convert to message %s failed whith value %s\n", fd->message_type()->name().c_str(), name.c_str());
						proto_man::release_message(value);
						return NULL;
					}
					Message* msg = reflection->AddMessage(message, fd);
					msg->CopyFrom(*value);
					proto_man::release_message(value);
				}
				break;
				default:
					break;
				}

				// remove value， keep the key
				lua_pop(L, 1);
			}
		}
		else {

			if (isRequired) {
				if (isNil) {
					log_error("cant find required field %s\n", name.c_str());
					proto_man::release_message(message);
					return NULL;
				}
			}
			else {
				if (isNil) {
					lua_pop(L, 1);
					continue;
				}
			}

			switch (fd->cpp_type()) {
			case FieldDescriptor::CPPTYPE_DOUBLE:
			{
				double value = luaL_checknumber(L, -1);
				reflection->SetDouble(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_FLOAT:
			{
				float value = luaL_checknumber(L, -1);
				reflection->SetFloat(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_INT64:
			{
				int64_t value = luaL_checknumber(L, -1);
				reflection->SetInt64(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_UINT64:
			{
				uint64_t value = luaL_checknumber(L, -1);
				reflection->SetUInt64(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_ENUM: // 与int32一样处理
			{
				int32_t value = luaL_checknumber(L, -1);
				const EnumDescriptor* enumDescriptor = fd->enum_type();
				const EnumValueDescriptor* valueDescriptor = enumDescriptor->FindValueByNumber(value);
				reflection->SetEnum(message, fd, valueDescriptor);
			}
			break;
			case FieldDescriptor::CPPTYPE_INT32:
			{
				int32_t value = luaL_checknumber(L, -1);
				reflection->SetInt32(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_UINT32:
			{
				uint32_t value = luaL_checknumber(L, -1);
				reflection->SetUInt32(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_STRING:
			{
				size_t size = 0;
				const char* value = luaL_checklstring(L, -1, &size);
				reflection->SetString(message, fd, std::string(value, size));
			}
			break;
			case FieldDescriptor::CPPTYPE_BOOL:
			{
				bool value = lua_toboolean(L, -1);
				reflection->SetBool(message, fd, value);
			}
			break;
			case FieldDescriptor::CPPTYPE_MESSAGE:
			{
				Message* value = lua_table_to_protobuf(L, lua_gettop(L), fd->message_type()->name().c_str());
				if (!value) {
					log_error("convert to message %s failed whith value %s \n", fd->message_type()->name().c_str(), name.c_str());
					proto_man::release_message(message);
					return NULL;
				}
				Message* msg = reflection->MutableMessage(message, fd);
				msg->CopyFrom(*value);
				proto_man::release_message(value);
			}
			break;
			default:
				break;
			}
		}

		// pop value
		lua_pop(L, 1);
	}

	return message;
}

// {1: stype, 2: ctype, 3: utag, 4 body}
static int
lua_send_msg(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	// stack: 1 s, 2, table,
	if (!lua_istable(tolua_S, 2)) {
		goto lua_failed;
	}

	struct cmd_msg msg;

	int n = luaL_len(tolua_S, 2);
	if (n != 4) {
		goto lua_failed;
	}

	lua_pushnumber(tolua_S, 1);
	lua_gettable(tolua_S, 2);
	msg.stype = luaL_checkinteger(tolua_S, -1);

	lua_pushnumber(tolua_S, 2);
	lua_gettable(tolua_S, 2);
	msg.ctype = luaL_checkinteger(tolua_S, -1);

	lua_pushnumber(tolua_S, 3);
	lua_gettable(tolua_S, 2);
	msg.utag = luaL_checkinteger(tolua_S, -1);

	lua_pushnumber(tolua_S, 4);
	lua_gettable(tolua_S, 2);

	if (proto_man::proto_type() == PROTO_JSON) {
		msg.body = (char*)lua_tostring(tolua_S, -1);
		s->send_msg(&msg);
	}
	else {
		if (!lua_istable(tolua_S, -1)) {
			msg.body = NULL;
			s->send_msg(&msg);
		}
		else { // protobuf message table
			const char* msg_name = proto_man::protobuf_cmd_name(msg.ctype);
			msg.body = lua_table_to_protobuf(tolua_S, lua_gettop(tolua_S), msg_name);
			s->send_msg(&msg);
			proto_man::release_message((google::protobuf::Message*)(msg.body));
		}
	}
lua_failed:
	return 0;
}

static int
lua_send_raw_cmd(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	struct raw_cmd* cmd = (struct raw_cmd*) tolua_touserdata(tolua_S, 2, NULL);
	if (cmd == NULL)
	{
		goto lua_failed;
	}

	s->send_raw_cmd(cmd);
lua_failed:
	return 0;
}

static int
lua_get_addr(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	int client_port;
	const char* ip = s->get_address(&client_port);

	lua_pushstring(tolua_S, ip);
	lua_pushinteger(tolua_S, client_port);

	return 2;
lua_failed:
	return 0;
}

static int
lua_set_utag(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	unsigned int utag = lua_tointeger(tolua_S, 2);
	s->utag = utag;

lua_failed:
	return 0;
}

static int
lua_get_utag(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	lua_pushinteger(tolua_S, s->utag);
	return 1;
lua_failed:
	return 0;
}

static int
lua_set_uid(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	unsigned int uid = lua_tointeger(tolua_S, 2);
	s->uid = uid;

lua_failed:
	return 0;
}

static int
lua_get_uid(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	lua_pushinteger(tolua_S, s->uid);
	return 1;
lua_failed:
	return 0;
}

static int
lua_as_client(lua_State* tolua_S) {
	session* s = (session*)tolua_touserdata(tolua_S, 1, NULL);
	if (s == NULL) {
		goto lua_failed;
	}

	lua_pushinteger(tolua_S, s->as_client);
	return 1;
lua_failed:
	return 0;
}

int
register_session_export(lua_State* tolua_S) {
	lua_getglobal(tolua_S, "_G");
	if (lua_istable(tolua_S, -1)) {
		tolua_open(tolua_S);
		tolua_module(tolua_S, "Session", 0);
		tolua_beginmodule(tolua_S, "Session");

		tolua_function(tolua_S, "close", lua_session_close);
		tolua_function(tolua_S, "send_msg", lua_send_msg);
		tolua_function(tolua_S, "send_raw_cmd", lua_send_raw_cmd);
		tolua_function(tolua_S, "get_address", lua_get_addr);
		tolua_function(tolua_S, "set_utag", lua_set_utag);
		tolua_function(tolua_S, "get_utag", lua_get_utag);
		tolua_function(tolua_S, "set_uid", lua_set_uid);
		tolua_function(tolua_S, "get_uid", lua_get_uid);
		tolua_function(tolua_S, "asclient", lua_as_client);

		tolua_endmodule(tolua_S);
	}
	lua_pop(tolua_S, 1);

	return 0;
}