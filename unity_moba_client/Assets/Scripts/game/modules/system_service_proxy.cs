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

    void on_recv_login_bonues_return(cmd_msg msg)
    {
        RecvLoginBonuesRes res = proto_man.protobuf_deserialize<RecvLoginBonuesRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Recv Login Bonues Status:" + res.status);
            return;
        }

        ugame.Instance.ugame_info.uchip += ugame.Instance.ugame_info.bonues;
        ugame.Instance.ugame_info.bonues_status = 1;

        event_manager.Instance.dispatch_event("sync_ugame_info", null);
    }

    void on_get_world_uchip_rank_info_return(cmd_msg msg)
    {
        GetWorldRankUchipRes res = proto_man.protobuf_deserialize<GetWorldRankUchipRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Get World Rank Uchip Status:" + res.status);
            return;
        }

        event_manager.Instance.dispatch_event("get_rank_list", res.rank_info);
    }

    void on_system_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eGetUgameInfoRes:
                this.on_get_ugame_info_return(msg);
                break;

            case (int)Cmd.eRecvLoginBonuesRes:
                this.on_recv_login_bonues_return(msg);
                break;

            case (int)Cmd.eGetWorldRankUchipRes:
                this.on_get_world_uchip_rank_info_return(msg);
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

    public void recv_login_bonues()
    {
        network.Instance.send_protobuf_cmd((int)Stype.System, (int)Cmd.eRecvLoginBonuesReq, null);
    }

    public void get_world_uchip_rank_info()
    {
        network.Instance.send_protobuf_cmd((int)Stype.System, (int)Cmd.eGetWorldRankUchipReq, null);
    }
}
