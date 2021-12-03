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

    void on_enter_zone_return(cmd_msg msg)
    {
        EnterZoneRes res = proto_man.protobuf_deserialize<EnterZoneRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Enter Zone Status:" + res.status);
        }

        event_manager.Instance.dispatch_event("enter_zone", res.status == Respones.OK);
    }

    void on_enter_match_return(cmd_msg msg)
    {
        EnterMatch res = proto_man.protobuf_deserialize<EnterMatch>(msg.body);
        if (res == null)
        {
            return;
        }
        Debug.Log("EnterMatch: zid" + res.zid + "  roomid" + res.matchid);
        event_manager.Instance.dispatch_event("enter_match", res);
    }

    void on_user_arrived_return(cmd_msg msg)
    {
        UserArrived res = proto_man.protobuf_deserialize<UserArrived>(msg.body);
        if (res == null)
        {
            return;
        }
        Debug.Log("UserArrived unick:" + res.unick);
        event_manager.Instance.dispatch_event("user_arrived", res);
    }

    void on_exit_match_return(cmd_msg msg)
    {
        ExitMatchRes res = proto_man.protobuf_deserialize<ExitMatchRes>(msg.body);
        if (res.status != Respones.OK)
        {
            Debug.Log("Exit Match Status:" + res.status);
        }

        event_manager.Instance.dispatch_event("exit_match", res != null && res.status == Respones.OK);
    }

    void on_user_exit_match_return(cmd_msg msg)
    {
        UserExitMatch res = proto_man.protobuf_deserialize<UserExitMatch>(msg.body);
        if (res == null)
        {
            return;
        }
        event_manager.Instance.dispatch_event("user_exit", res.seatid);
    }

    void on_game_start_return(cmd_msg msg)
    {
        GameStart res = proto_man.protobuf_deserialize<GameStart>(msg.body);
        if (res == null)
        {
            return;
        }
        event_manager.Instance.dispatch_event("game_start", res.heroes);
    }

    void on_udp_test(cmd_msg msg)
    {
        UdpTest res = proto_man.protobuf_deserialize<UdpTest>(msg.body);
        if (res == null)
        {
            return;
        }

        Debug.Log("udp_test" + res.content);
    }

    void on_logic_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eLoginLogicRes:
                this.on_login_logic_server_return(msg);
                break;

            case (int)Cmd.eEnterZoneRes:
                this.on_enter_zone_return(msg);
                break;

            case (int)Cmd.eEnterMatch:
                this.on_enter_match_return(msg);
                break;

            case (int)Cmd.eUserArrived:
                this.on_user_arrived_return(msg);
                break;      
                
            case (int)Cmd.eExitMatchRes:
                this.on_exit_match_return(msg);
                break;            

            case (int)Cmd.eUserExitMatch:
                this.on_user_exit_match_return(msg);
                break; 

            case (int)Cmd.eGameStart:
                this.on_game_start_return(msg);
                break; 

            case (int)Cmd.eUdpTest:
                this.on_udp_test(msg);
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

    public void enter_zone(int zid)
    {
        if (zid < Zone.XGZD || zid > Zone.JDDLD)
        {
            return;
        }

        EnterZoneReq req = new EnterZoneReq();
        req.zid = zid;
        network.Instance.send_protobuf_cmd((int)Stype.Logic, (int)Cmd.eEnterZoneReq, req);
    }

    public void exit_match()
    {
        network.Instance.send_protobuf_cmd((int)Stype.Logic, (int)Cmd.eExitMatchReq, null);
    }

    public void send_udp_test(string content)
    {
        UdpTest req = new UdpTest();
        req.content = content;
        Debug.Log("send_udp_test" + content);

        network.Instance.udp_send_protobuf_cmd((int)Stype.Logic, (int)Cmd.eUdpTest, req);
    }
}
