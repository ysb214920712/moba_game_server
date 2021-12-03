#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <iostream>
#include <string>
using namespace std;

#include "uv.h"
#include "session.h"
#include "session_uv.h"
#include "udp_session.h"

#include "netbus.h"
#include "ws_protocol.h"
#include "tp_protocol.h"
#include "proto_man.h"
#include "service_man.h"

extern "C" {
	static void
		on_recv_client_cmd(session* s, unsigned char* body, int len) {
		//printf("client command !!!!\n");

		struct raw_cmd raw;
		if (proto_man::decode_raw_cmd(body, len, &raw))
		{
			if (!service_man::on_recv_raw_cmd((session*)s, &raw))
			{
				s->close();
			}
		}

		// struct cmd_msg* msg = NULL;
		// if (proto_man::decode_cmd_msg(body, len, &msg))
		// {
		// 	if (!service_man::on_recv_cmd_msg((session*)s, msg))
		// 	{
		// 		s->close();
		// 	}
		// 	proto_man::cmd_msg_free(msg);
		// }
	}

	static void
		on_recv_ws_data(uv_session* s) {
		unsigned char* pkg_data = (unsigned char*)((s->long_pkg != NULL) ? s->long_pkg : s->recv_buf);

		while (s->recved > 0) {
			int pkg_size = 0;
			int head_size = 0;

			if (pkg_data[0] == 0x88) { // closeÐ­Òé
				s->close();
				break;
			}

			// pkg_size - head_size = body_size;
			if (!ws_protocol::read_ws_header(pkg_data, s->recved, &pkg_size, &head_size)) {
				break;
			}

			if (s->recved < pkg_size) {
				break;
			}



			unsigned char* raw_data = pkg_data + head_size;
			unsigned char* mask = raw_data - 4;
			ws_protocol::parser_ws_recv_data(raw_data, mask, pkg_size - head_size);
			// recv client command;
			on_recv_client_cmd((session*)s, raw_data, pkg_size - head_size);
			// end 

			if (s->recved > pkg_size) {
				memmove(pkg_data, pkg_data + pkg_size, s->recved - pkg_size);
			}
			s->recved -= pkg_size;

			if (s->recved == 0 && s->long_pkg != NULL) {
				free(s->long_pkg);
				s->long_pkg = NULL;
				s->long_pkg_size = 0;
			}
		}
	}

	static void
		on_recv_tcp_data(uv_session* s) {
		unsigned char* pkg_data = (unsigned char*)((s->long_pkg != NULL) ? s->long_pkg : s->recv_buf);

		while (s->recved > 0) {
			int pkg_size = 0;
			int head_size = 0;

			// pkg_size - head_size = body_size;
			if (!tp_protocol::read_header(pkg_data, s->recved, &pkg_size, &head_size)) {
				break;
			}

			if (pkg_size <= head_size)
			{
				s->close();
				break;
			}

			if (s->recved < pkg_size) {
				break;
			}

			unsigned char* raw_data = pkg_data + head_size;
			// recv client command;
			on_recv_client_cmd((session*)s, raw_data, pkg_size - head_size);
			// end 

			if (s->recved > pkg_size) {
				memmove(pkg_data, pkg_data + pkg_size, s->recved - pkg_size);
			}
			s->recved -= pkg_size;

			if (s->recved == 0 && s->long_pkg != NULL) {
				free(s->long_pkg);
				s->long_pkg = NULL;
				s->long_pkg_size = 0;
			}
		}
	}

	struct udp_recv_buf
	{
		char* recv_buf;
		size_t max_recv_len;
	};

	static void udp_uv_alloc_buf(uv_handle_t* handle, size_t suggested_size, uv_buf_t* buf)
	{
		suggested_size = (suggested_size < 8192) ? 8192 : suggested_size;
		struct udp_recv_buf* udp_buf = (struct udp_recv_buf*)handle->data;
		if (udp_buf->max_recv_len < suggested_size)
		{
			if (udp_buf->recv_buf)
			{
				free(udp_buf->recv_buf);
				udp_buf->recv_buf = NULL;
			}

			udp_buf->recv_buf = (char*)malloc(suggested_size);
			udp_buf->max_recv_len = suggested_size;
		}

		buf->base = udp_buf->recv_buf;
		buf->len = suggested_size;
	}

	static void
		uv_alloc_buf(uv_handle_t* handle,
			size_t suggested_size,
			uv_buf_t* buf) {

		uv_session* s = (uv_session*)handle->data;

		if (s->recved < RECV_LEN) {
			*buf = uv_buf_init(s->recv_buf + s->recved, RECV_LEN - s->recved);
		}
		else {
			if (s->long_pkg == NULL) { // alloc mem
				if (s->socket_type == WS_SOCKET && s->is_ws_shake) { // ws > RECV_LEN's package
					int pkg_size;
					int head_size;
					ws_protocol::read_ws_header((unsigned char*)s->recv_buf, s->recved, &pkg_size, &head_size);
					s->long_pkg_size = pkg_size;
					s->long_pkg = (char*)malloc(pkg_size);
					memcpy(s->long_pkg, s->recv_buf, s->recved);
				}
				else 
				{
					// tcp > RECV_LEN's package
					int pkg_size;
					int head_size;
					tp_protocol::read_header((unsigned char*)s->recv_buf, s->recved, &pkg_size, &head_size);
					s->long_pkg_size = pkg_size;
					s->long_pkg = (char*)malloc(pkg_size);
					memcpy(s->long_pkg, s->recv_buf, s->recved);
				}
			}
			*buf = uv_buf_init(s->long_pkg + s->recved, s->long_pkg_size - s->recved);
		}
	}

	static void
		on_close(uv_handle_t* handle) {
		uv_session* s = (uv_session*)handle->data;
		uv_session::destroy(s);
	}

	static void
		on_shutdown(uv_shutdown_t* req, int status) {
		uv_close((uv_handle_t*)req->handle, on_close);
	}

	static void after_uv_udp_recv(uv_udp_t* handler,
									ssize_t nread,
									const uv_buf_t* buf,
									const struct sockaddr* addr,
									unsigned flags) 
	{
		udp_session udp_s;
		udp_s.udp_handler = handler;
		udp_s.addr = addr;
		uv_ip4_name((struct sockaddr_in*)addr, udp_s.c_address, 32);
		udp_s.c_port = ntohs(((struct sockaddr_in*)addr)->sin_port);

		on_recv_client_cmd((session*)&udp_s, (unsigned char*)buf->base, nread);
	}

	static void
		after_read(uv_stream_t* stream,
			ssize_t nread,
			const uv_buf_t* buf) {
		uv_session* s = (uv_session*)stream->data;
		if (nread < 0) {
			// uv_shutdown_t* reg = &s->shutdown;
			// memset(reg, 0, sizeof(uv_shutdown_t));
			// uv_shutdown(reg, stream, on_shutdown);
			s->close();
			return;
		}
		// end

		s->recved += nread;

		if (s->socket_type == WS_SOCKET) { // websocket
			if (s->is_ws_shake == 0) { // shake handle
				if (ws_protocol::ws_shake_hand((session*)s, s->recv_buf, s->recved)) {
					s->is_ws_shake = 1;
					s->recved = 0;
				}
			}
			else { // websocket recv/send data
				on_recv_ws_data(s);
			}
		}
		else { // TCP sokcet
			on_recv_tcp_data(s);
		}
	}

	static void
		uv_connection(uv_stream_t* server, int status) {
		uv_session* s = uv_session::create();
		uv_tcp_t* client = &s->tcp_handler;
		memset(client, 0, sizeof(uv_tcp_t));
		uv_tcp_init(uv_default_loop(), client);
		client->data = (void*)s;
		uv_accept(server, (uv_stream_t*)client);
		struct sockaddr_in addr;
		int len = sizeof(addr);
		uv_tcp_getpeername(client, (sockaddr*)&addr, &len);
		uv_ip4_name(&addr, (char*)s->c_address, 64);
		s->c_port = ntohs(addr.sin_port);
		s->socket_type = (int)(server->data);
		//printf("new client comming %s:%d\n", s->c_address, s->c_port);

		uv_read_start((uv_stream_t*)client, uv_alloc_buf, after_read);

		service_man::on_session_connect((session*)s);
	}
}

static netbus g_netbus;
netbus* netbus::instance() {
	return &g_netbus;
}

void netbus::udp_listen(int port)
{
	uv_udp_t* server = (uv_udp_t*)malloc(sizeof(uv_udp_t));
	memset(server, 0, sizeof(uv_udp_t));

	uv_udp_init(uv_default_loop(), server);
	struct udp_recv_buf* udp_buf = (struct udp_recv_buf*)malloc(sizeof(struct udp_recv_buf));
	memset(udp_buf, 0, sizeof(struct udp_recv_buf));

	server->data = (struct udp_recv_buf*)udp_buf;
	struct sockaddr_in addr;
	uv_ip4_addr("0.0.0.0", port, &addr);
	uv_udp_bind(server, (const struct sockaddr*)&addr, 0);

	uv_udp_recv_start(server, udp_uv_alloc_buf, after_uv_udp_recv);
}

void netbus::tcp_listen(int port) {
	uv_tcp_t* listen = (uv_tcp_t*)malloc(sizeof(uv_tcp_t));
	memset(listen, 0, sizeof(uv_tcp_t));

	uv_tcp_init(uv_default_loop(), listen);

	struct sockaddr_in addr;
	uv_ip4_addr("0.0.0.0", port, &addr);

	int ret = uv_tcp_bind(listen, (const struct sockaddr*)&addr, 0);
	if (ret != 0) {
		//printf("bind error\n");
		free(listen);
		return;
	}

	uv_listen((uv_stream_t*)listen, SOMAXCONN, uv_connection);
	listen->data = (void*)TCP_SOCKET;
}

void netbus::ws_listen(int port) {
	uv_tcp_t* listen = (uv_tcp_t*)malloc(sizeof(uv_tcp_t));
	memset(listen, 0, sizeof(uv_tcp_t));

	uv_tcp_init(uv_default_loop(), listen);

	struct sockaddr_in addr;
	uv_ip4_addr("0.0.0.0", port, &addr);

	int ret = uv_tcp_bind(listen, (const struct sockaddr*)&addr, 0);
	if (ret != 0) {
		//printf("bind error\n");
		free(listen);
		return;
	}

	uv_listen((uv_stream_t*)listen, SOMAXCONN, uv_connection);
	listen->data = (void*)WS_SOCKET;
}

void netbus::run() {
	uv_run(uv_default_loop(), UV_RUN_DEFAULT);
}

void netbus::init() {
	service_man::init();
	init_session_allocer();
}

struct connect_cb {
	void(*on_connected)(int err, session* s, void* udata);
	void* udata;
};

static void after_connect(uv_connect_t* handle, int status)
{
	uv_session* s = (uv_session*)handle->handle->data;
	struct connect_cb* cb = (struct connect_cb*)handle->data;

	if (status)
	{
		if (cb->on_connected)
		{
			cb->on_connected(1, NULL, cb->udata);
		}
		s->close();
		free(cb);
		free(handle);
		return;
	}

	if (cb->on_connected)
	{
		cb->on_connected(0, (session*)s, cb->udata);
	}
	uv_read_start((uv_stream_t*)handle->handle, uv_alloc_buf, after_read);

	free(cb);
	free(handle);
}

void netbus::tcp_connect(const char* server_ip, int port,
						 void(*on_connected)(int err, session* s, void* udata),
						 void* udata)
{
	struct sockaddr_in bind_addr;
	int iret = uv_ip4_addr(server_ip, port, &bind_addr);
	if (iret)
	{
		return;
	}

	uv_session* s = uv_session::create();
	uv_tcp_t* client = &s->tcp_handler;
	memset(client, 0, sizeof(uv_tcp_t));
	uv_tcp_init(uv_default_loop(), client);
	client->data = (void*)s;
	s->as_client = 1;
	s->socket_type = TCP_SOCKET;
	strcpy(s->c_address, server_ip);
	s->c_port = port;

	uv_connect_t* connect_req = (uv_connect_t*)malloc(sizeof(uv_connect_t));
	struct connect_cb* cb = (struct connect_cb*)malloc(sizeof(struct connect_cb));
	cb->on_connected = on_connected;
	cb->udata = udata;
	connect_req->data = (void*)cb;
	iret = uv_tcp_connect(connect_req, client, (struct sockaddr*)&bind_addr, after_connect);
	if (iret)
	{
		return;
	}
}