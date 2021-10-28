using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using gprotocol;

public class talkroom : MonoBehaviour
{
    public static talkroom _instance;
    public static talkroom instance {
        get 
        {
            return _instance;
        }
    }
    public InputField input;
    public ScrollRect scroll;
    public GameObject status_item;
    public GameObject talk_item;
    public GameObject self_talk_item;

    private bool is_scroll_changed = false;
    private string send_msg = null;

    private void Awake() {
        _instance = this;
    }

    void on_login_return(byte[] body)
    {
        LoginRes res = proto_man.protobuf_deserialize<LoginRes>(body);
        if (res.status == 1)
        {
            this.add_status_option("你已经成功进入聊天室！");
        }
        else if(res.status == -1)
        {
            this.add_status_option("你已经在聊天室！");
        }
    }

    void on_exit_return(byte[] body)
    {
        ExitRes res = proto_man.protobuf_deserialize<ExitRes>(body);
        if (res.status == 1)
        {
            this.add_status_option("你离开聊天室！");
        }
        else if(res.status == -1)
        {
            this.add_status_option("你不在聊天室！");
        }
    }

    void on_send_msg_return(byte[] body)
    {
        SendMsgRes res = proto_man.protobuf_deserialize<SendMsgRes>(body);
        if (res.status == 1)
        {
            this.add_self_talk_option(this.send_msg);
            this.input.text = "";
        }
        else if(res.status == -1)
        {
            this.add_status_option("你不在聊天室！无法发送消息！");
        }
    }

    void on_other_user_enter(byte[] body)
    {
        OnUserLogin res = proto_man.protobuf_deserialize<OnUserLogin>(body);
        this.add_status_option(res.ip + ":" + res.port + " 进入聊天室！");
    }

    void on_other_user_exit(byte[] body)
    {
        OnUserExit res = proto_man.protobuf_deserialize<OnUserExit>(body);
        this.add_status_option(res.ip + ":" + res.port + " 离开聊天室！");
    }

    void on_other_user_send_msg(byte[] body)
    {
        OnSendMsg res = proto_man.protobuf_deserialize<OnSendMsg>(body);
        this.add_talk_option(res.ip, res.port, res.content);
    }

    void on_trm_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int) Cmd.eLoginRes:
                this.on_login_return(msg.body);
                break;
            case (int) Cmd.eExitRes:
                this.on_exit_return(msg.body);
                break;
            case (int) Cmd.eSendMsgRes:
                this.on_send_msg_return(msg.body);
                break;
            case (int) Cmd.eOnUserLogin:
                this.on_other_user_enter(msg.body);
                break;
            case (int) Cmd.eOnUserExit:
                this.on_other_user_exit(msg.body);
                break;
            case (int) Cmd.eOnSendMsg:
                this.on_other_user_send_msg(msg.body);
                break;
        }
    }

    void Start()
    {
        network.instance.add_service_listener(1, this.on_trm_server_return);
    }

    // Update is called once per frame
    void Update()
    {
        if (this.is_scroll_changed)
        {
            this.scroll.verticalNormalizedPosition = 0;
            this.is_scroll_changed = false;
            // Debug.Log(this.scroll.verticalNormalizedPosition);
        }
    }

    void add_status_option(string status_info)
    {
        var opt = GameObject.Instantiate(this.status_item);
        opt.transform.SetParent(this.scroll.content, false);

        opt.transform.Find("src").GetComponent<Text>().text = status_info;

        this.is_scroll_changed = true;
    }

    void add_talk_option(string ip, int port, string body)
    {
        var opt = GameObject.Instantiate(this.talk_item);
        opt.transform.SetParent(this.scroll.content, false);

        opt.transform.Find("src").GetComponent<Text>().text = body;
        opt.transform.Find("ip_port").GetComponent<Text>().text = ip + ":" + port;

        this.is_scroll_changed = true;
    }

    void add_self_talk_option(string body)
    {
        var opt = GameObject.Instantiate(this.self_talk_item);
        opt.transform.SetParent(this.scroll.content, false);

        opt.transform.Find("src").GetComponent<Text>().text = body;
        opt.transform.Find("ip_port").GetComponent<Text>().text = "self";

        this.is_scroll_changed = true;
    }

    public void on_enter_talkroom()
    {
        network.instance.send_protobuf_cmd(1, (int)Cmd.eLoginReq, null);
        Debug.Log("on_enter_talkroom");
    }

    public void on_exit_talkroom()
    {
        network.instance.send_protobuf_cmd(1, (int)Cmd.eExitReq, null);
    }

    public void on_send_msg()
    {
        if (this.input.text == "")
        {
            return;
        }
        SendMsgReq req = new SendMsgReq();
        req.content = string.Copy(this.input.text);
        this.send_msg = this.input.text;
        network.instance.send_protobuf_cmd(1, (int)Cmd.eSendMsgReq, req);
    }
}
