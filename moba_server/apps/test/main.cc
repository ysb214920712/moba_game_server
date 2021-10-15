#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string>

using namespace std;

#include "../../netbus/netbus.h"

int main(int argc, char** argv)
{
	netbus::instance()->init();
	netbus::instance()->start_tcp_server(6080);
	netbus::instance()->run();
	system("pause");
	return 0;
}