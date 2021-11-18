using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;
using XLua;

[LuaCallCSharp]
public class system_service_proxy : Singleton<system_service_proxy>
{
    void on_get_ugame_info_return(cmd_msg msg)
    {
        GetUgameInfoRes res = proto_man.protobuf_deserialize<GetUgameInfoRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Get Ugame Info Status:" + res.status);
            return;
        }

        UserGameInfo uinfo = res.uinfo;
        ugame.Instance.save_ugame_info(uinfo);

        event_manager.Instance.dispatch_event("get_ugame_info_success", null);
        event_manager.Instance.dispatch_event("sync_ugame_info", null);
    }

    void on_system_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eGetUgameInfoRes:
                this.on_get_ugame_info_return(msg);
                break;

            default:
                break;
        }
    }

    public void init()
    {
        network.Instance.add_service_listener((int)Stype.System, this.on_system_server_return);
    }

    public void load_user_ugame_info()
    {
        network.Instance.send_protobuf_cmd((int)Stype.System, (int)Cmd.eGetUgameInfoReq, null);
    }
}
