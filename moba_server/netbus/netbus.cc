#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string>

using namespace std;

#include "uv.h"
#include "session.h"
#include "session_uv.h"

#include "netbus.h"

extern "C"
{
	static void on_close(uv_handle_t* handle)
	{
		printf("close client\n");
		uv_session* s = (uv_session*)handle->data;
		uv_session::destroy(s);
	}

	static void on_shutdown(uv_shutdown_t* req, int status)
	{
		uv_close((uv_handle_t*)req->handle, on_close);
	}

	static void uv_alloc_buf(uv_handle_t* handle, size_t suggested_size, uv_buf_t* buf)
	{
		uv_session* s = (uv_session * )handle->data;
		*buf = uv_buf_init(s->recv_buf + s->recved, RECV_LEN - s->recved);
	}

	static void after_read(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf)
	{
		uv_session* s = (uv_session*)stream->data;
		if (nread < 0)
		{
			//uv_shutdown_t* reg = &s->shutdown;
			//memset(reg, 0, sizeof(uv_shutdown_t));
			//uv_shutdown(reg, stream, on_shutdown);
			s->close();
			return;
		}

		buf->base[nread] = 0;
		printf("recv %d\n", nread);
		printf("%s\n", buf->base);


		//test
		s->send_data((unsigned char*)buf->base, nread);
		//test end
	}

	static void uv_connection(uv_stream_t* server, int status)
	{
		uv_session* s = uv_session::create();

		uv_tcp_t* client = &s->tcp_handle;
		memset(client, 0, sizeof(uv_tcp_t));
		uv_tcp_init(uv_default_loop(), client);
		client->data = (void*)s;
		uv_accept(server, (uv_stream_t*)client);
		struct sockaddr_in addr;
		int len = sizeof(addr);
		uv_tcp_getpeername(client, (sockaddr*)&addr, &len);
		uv_ip4_name(&addr, (char*)s->c_address, 64);
		s->c_port = ntohs(addr.sin_port);
		s->socket_type = (int)server->data;
		printf("new client comming %s:%d\n", s->c_address, s->c_port);

		uv_read_start((uv_stream_t*)client, uv_alloc_buf, after_read);
	}
}

static netbus g_netbus;
netbus* netbus::instance()
{
	return &g_netbus;
}

void netbus::start_tcp_server(int port)
{
	uv_tcp_t* listen = (uv_tcp_t*)malloc(sizeof(uv_tcp_t));
	memset(listen, 0, sizeof(uv_tcp_t));

	uv_tcp_init(uv_default_loop(), listen);

	struct sockaddr_in addr;
	uv_ip4_addr("0,0,0,0", port, &addr);
	int ret = uv_tcp_bind(listen, (const struct sockaddr*)&addr, 0);
	if (ret != 0)
	{
		printf("bind error\n");
		free(listen);
		return;
	}

	uv_listen((uv_stream_t*)listen, SOMAXCONN, uv_connection);
	listen->data = (void*)TCP_SOCKET;
}

void netbus::run()
{
	uv_run(uv_default_loop(), UV_RUN_DEFAULT);
}

void netbus::init()
{
	init_session_allocer();
}