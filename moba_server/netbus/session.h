#ifndef __SESSION_H__
#define __SESSION_H__

class session {
public:
	unsigned int as_client;
	unsigned int utag;
	unsigned int uid;

	session()
	{
		this->as_client = 0;
		this->utag = 0;
		this->uid = 0;
	}

public:
	virtual void close() = 0;
	virtual void send_data(unsigned char* body, int len) = 0;
	virtual const char* get_address(int* client_port) = 0;
	virtual void send_msg(struct cmd_msg* msg) = 0;
	virtual void send_raw_cmd(struct raw_cmd* raw) = 0;
};

#endif // !__SESSION_H__
