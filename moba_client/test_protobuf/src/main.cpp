#include <string.h>
#include <stdlib.h>
#include <string.h>

#include <iostream>
#include <string>
using namespace std;

#include "../proto/game.pb.h"

#if 0
int main(int argc, char** argv) {
	
	// 定义一个你要传送数据的对象;
	// 初始化好了这个对象的数据成员;
	Person p;
	p.set_name("blake");
	p.set_email("blake@bycwedu.com");
	p.set_age(34);

	printf("%s %s %d\n", p.name().c_str(), p.email().c_str(), p.age());

	// 将这个数据对象序列化;
	string out;
	p.SerializeToString(&out);
	
	// 传输，解码

	// 使用string对象里面存放的数据，来解码成我们的数据对象;
	Person blake;
	blake.ParseFromString(out);

	cout << blake.name() << blake.age() << blake.email() << endl;
	system("pause");
	return 0;
}
#elif 0
// 传递一个消息类型的字符串，那么这个工厂就能帮助我们构造出对应的类的实例;
// "Person"字符串--> Person的实例--> 返回的是一个基类Message类的指针;
// 基类指针，指向子类实例;
// create_message --> delete 来删除这个msg对象实例;
google::protobuf::Message* create_message(const char* type_name) {
	google::protobuf::Message* message = NULL;

	// 根据名字，找到message的秒速对象;
	const google::protobuf::Descriptor* descriptor =
		google::protobuf::DescriptorPool::generated_pool()->FindMessageTypeByName(type_name);
	if (descriptor) {
		// 根据描述对象到对象工厂里面，生成对应的模板对象;
		// 根据模板复制出来一个;
		const google::protobuf::Message* prototype =
			google::protobuf::MessageFactory::generated_factory()->GetPrototype(descriptor);
		if (prototype) {
			message = prototype->New();
		}
	}
	return message;
}

int main(int argc, char** argv) {
	// 基类的message--> Person类的实例;
	google::protobuf::Message* msg = create_message("Person"); 

	/*Person* blake = (Person*)msg;
	blake->set_name("blake");
	printf("%s\n", blake->name().c_str());*/

	/* 每一个Message对象有包含了两个对象; 
	   google::protobuf::Descriptor   --> 获取Message的描述信息-->包含每一个filed的描述; 
	   google::protobuf::Reflection   --> 使用它 + filed描述，能get/set 每个 filed的值;
	*/

	const google::protobuf::Descriptor* des = msg->GetDescriptor();
	const google::protobuf::Reflection* ref = msg->GetReflection();

	// 设置;
	// name:
	const google::protobuf::FieldDescriptor* fd_des = des->FindFieldByName("name");
	ref->SetString(msg, fd_des, "blake");

	// age
	// fd_des = des->FindFieldByName("age");
	fd_des = des->FindFieldByNumber(2);
	ref->SetInt32(msg, fd_des, 34);
	// end 

	// email
	fd_des = des->FindFieldByName("email");
	ref->SetString(msg, fd_des, "blake@bycwedu.com");
	// end

	// array
	fd_des = des->FindFieldByName("int_set");
	ref->AddInt32(msg, fd_des, 1);
	ref->AddInt32(msg, fd_des, 2);
	ref->AddInt32(msg, fd_des, 3);
	ref->AddInt32(msg, fd_des, 4);
	// end

	// 遍历我们的Descriptor里面的每一个filed;
	for (int i = 0; i < des->field_count(); i++) {
		// 获取每一个field的描述对象;
		const google::protobuf::FieldDescriptor* fd = des->field(i);
		// (1)获取我们的名字; fd->name()
		printf("%s\n", fd->name().c_str());

		if (fd->is_repeated()) { // 当前我们的字段是一个数组;	FieldSize数组的长度;
			for (int walk = 0; walk < ref->FieldSize(*msg, fd); walk++) {
				switch (fd->cpp_type()) {
				case google::protobuf::FieldDescriptor::CppType::CPPTYPE_INT32:
					printf("%d\n", ref->GetRepeatedInt32(*msg, fd, walk));
					break;
				case google::protobuf::FieldDescriptor::CppType::CPPTYPE_STRING:
					printf("%s\n", ref->GetRepeatedString(*msg, fd, walk).c_str());
					break;
				// ...
				}
			}
			continue;
		}

		switch (fd->cpp_type()) {
		case google::protobuf::FieldDescriptor::CppType::CPPTYPE_INT32:
			printf("%d\n", ref->GetInt32(*msg, fd));
			break;
		case google::protobuf::FieldDescriptor::CppType::CPPTYPE_STRING:
			printf("%s\n", ref->GetString(*msg, fd).c_str());
			break;
		// ...
		}
		// 表示filed是一个数组,  fd->is_optional, fd->is_repeated
	}

	// 删除掉这个msg;
	delete msg;
	
	system("pause");
	return 0;
}
#else
#ifdef WIN32
#include <WinSock2.h>
#include <Windows.h>
#pragma comment (lib, "WSOCK32.LIB")
#endif

#include "tp_protocol.h"
int main(int argc, char** argv) {
	int ret;

#ifdef WIN32
	DWORD wVersionRequested;
	WSADATA wsaData;
	wVersionRequested = MAKEWORD(2, 2);
	ret = WSAStartup(wVersionRequested, &wsaData);
	if (ret != 0) {
		printf("WSAStart up failed\n");
		system("pause");
		return -1;
	}
#endif

	int s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (s == INVALID_SOCKET) {
		return 0;
	}

	struct sockaddr_in sockaddr;
	sockaddr.sin_addr.S_un.S_addr = inet_addr("127.0.0.1");
	sockaddr.sin_family = AF_INET;
	sockaddr.sin_port = htons(6080); 
	ret = connect((SOCKET)s, (const struct sockaddr*)&sockaddr, sizeof(sockaddr));
	if (ret != 0) {
		return 0;
	}

	LoginReq req;
	req.set_age(10);
	req.set_name("blake");
	req.set_email("blake@cuby.com");

	int len = req.ByteSize();
	char* data = (char*)malloc(8 + len);
	memset(data, 0, 8 + len);
	req.SerializePartialToArray(data + 8, len);

	int pkg_len;
	unsigned char* pkg_data = tp_protocol::package((unsigned char*)data, 8 + len, &pkg_len);
	send(s, (const char*)pkg_data, pkg_len, 0);

	free(data);
	tp_protocol::release_package(pkg_data);

	unsigned char recv_buf[256];
	int recv_len = recv(s, (char*)recv_buf, 256, 0);

	int pkg_size, header_size;

	tp_protocol::read_header(recv_buf, recv_len, &pkg_size, &header_size);
	if (s != INVALID_SOCKET) {
		closesocket(s);
		s = INVALID_SOCKET;
	}

	req.ParseFromArray(recv_buf + header_size + 8, pkg_size - header_size - 8);
	printf("%s: %d\n", req.name().c_str(), req.age());

#ifdef WIN32
	WSACleanup();
#endif

	system("pause");
	return 0;
}

#endif
