using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;
using XLua;

[LuaCallCSharp]
public class logic_service_proxy : Singleton<logic_service_proxy>
{
    void on_login_logic_server_return(cmd_msg msg)
    {
        LoginLogicRes res = proto_man.protobuf_deserialize<LoginLogicRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Login Logic Server Status:" + res.status);
            return;
        }

        event_manager.Instance.dispatch_event("login_logic_server", null);
    }

    void on_logic_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eLoginLogicRes:
                this.on_login_logic_server_return(msg);
                break;
            default:
                break;
        }
    }

    public void init()
    {
        network.Instance.add_service_listener((int)Stype.Logic, this.on_logic_server_return);
    }

    public void login_logic_server()
    {
        network.Instance.send_protobuf_cmd((int)Stype.Logic, (int)Cmd.eLoginLogicReq, null);
    }
}
