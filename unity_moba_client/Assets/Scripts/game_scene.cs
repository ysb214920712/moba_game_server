using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;

public class game_scene : MonoBehaviour
{
    void on_auth_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int) Cmd.eLoginRes:
                LoginRes res = proto_man.protobuf_deserialize<LoginRes>(msg.body);
                Debug.Log(res.status);
                break;
        }
    }
    void Start()
    {
        network.instance.add_service_listener((int)Stype.Auth, this.on_auth_server_return);

        this.Invoke("test", 3.0f);
    }

    void test()
    {
        network.instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eLoginReq, null);
    }
    
}
