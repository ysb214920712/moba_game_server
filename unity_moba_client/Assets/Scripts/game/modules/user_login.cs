using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;

public class user_login : Singleton<user_login>
{
    void on_guest_login_return(cmd_msg msg)
    {
        GuestLoginRes res = proto_man.protobuf_deserialize<GuestLoginRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Guest Login Status:" + res.status);
            return;
        }

        UserCenterInfo uinfo = res.uinfo;
    }

    void on_auth_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eGuestLoginRes:
                this.on_guest_login_return(msg);
                break;
            default:
                break;
        }
    }

    public void init()
    {
        network.Instance.add_service_listener((int)Stype.Auth, this.on_auth_server_return);
    }

    public void guest_login()
    {
        string g_key = utils.rand_str(32);
        Debug.Log(g_key);

        GuestLoginReq req = new GuestLoginReq();
        req.guest_key = g_key;

        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eGuestLoginReq, req);
    }

}
