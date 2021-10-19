#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tp_protocol.h"

bool 
tp_protocol::read_header(unsigned char* data, int data_len,
                 int* pkg_size, int* out_header_size) {
	if (data_len < 2) {
		return false;
	}

	*pkg_size = (data[0] | (data[1] << 8));
	*out_header_size = 2;
	return true;
}

unsigned char* 
tp_protocol::package(const unsigned char* raw_data, int len, int* pkg_len) {
	int head_size = 2;
	
	unsigned char* data_buf = (unsigned char*)malloc(head_size + len);
	
	data_buf[0] = (head_size + len) & 0x000000ff;
	data_buf[1] = ((head_size + len) & 0x0000ff00) >> 8;

	memcpy(data_buf + head_size, raw_data, len);
	*pkg_len = (head_size + len);

	return data_buf;
}

void 
tp_protocol::release_package(unsigned char* tp_pkg) {
	free(tp_pkg);
}