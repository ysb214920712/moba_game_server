#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <iostream>
#include <string>
using namespace std;

#include "session.h"
#include "proto_man.h"
#include "service.h"

service::service()
{
	this->using_raw_cmd = false;
}

// return false close socket
// return true success
bool service::on_session_recv_cmd(session* s, struct cmd_msg* msg)
{
	return false;
}

void service::on_session_disconnect(session* s, int stype)
{

}

bool service::on_session_recv_raw_cmd(session* s, struct raw_cmd* raw)
{
	return false;
}