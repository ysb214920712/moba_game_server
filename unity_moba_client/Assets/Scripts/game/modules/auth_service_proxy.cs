using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;
using XLua;

[LuaCallCSharp]
public class auth_service_proxy : Singleton<auth_service_proxy>
{
    private string g_key;
    private bool is_save_g_key = false;

    private EditProfileReq temp_req = null;

    void on_edit_profile_return(cmd_msg msg)
    {
        EditProfileRes res = proto_man.protobuf_deserialize<EditProfileRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Edit Profile Status:" + res.status);
            return;
        }

        Debug.Log("on_edit_profile_return");

        ugame.Instance.save_edit_profile(this.temp_req.unick, this.temp_req.uface, this.temp_req.usex);
        this.temp_req = null;

        event_manager.Instance.dispatch_event("sync_uinfo", null);
    }

    void on_guest_account_upgrade_return(cmd_msg msg)
    {
        AccountUpgradeRes res = proto_man.protobuf_deserialize<AccountUpgradeRes>(msg.body);
        if (res.status == Respones.OK)
        {
            ugame.Instance.is_guest = false;
        }

        event_manager.Instance.dispatch_event("upgrade_account_return", (int)res.status);

        PlayerPrefs.SetString("MobaGuestKey", "");
    }

    void on_uname_login_return(cmd_msg msg)
    {
        UnameLoginRes res = proto_man.protobuf_deserialize<UnameLoginRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Uname Login Status:" + res.status);
            return;
        }

        UserCenterInfo uinfo = res.uinfo;
        ugame.Instance.save_uinfo(uinfo, false);

        event_manager.Instance.dispatch_event("login_success", null);
        event_manager.Instance.dispatch_event("sync_uinfo", null);
    }

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
        ugame.Instance.save_uinfo(uinfo, true, this.g_key);

        if (this.is_save_g_key)
        {
            this.is_save_g_key = false;
            PlayerPrefs.SetString("MobaGuestKey", this.g_key);
        }
        event_manager.Instance.dispatch_event("login_success", null);
        event_manager.Instance.dispatch_event("sync_uinfo", null);
    }

    void on_user_login_out_return(cmd_msg msg)
    {
        LoginOutRes res = proto_man.protobuf_deserialize<LoginOutRes>(msg.body);
        if (res == null)
        {
            return;
        }

        if (res.status != Respones.OK)
        {
            Debug.Log("Login Out Status:" + res.status);
            return;
        }

        ugame.Instance.user_login_out();
        
        event_manager.Instance.dispatch_event("login_out", null);
    }


    void on_auth_server_return(cmd_msg msg)
    {
        switch (msg.ctype)
        {
            case (int)Cmd.eGuestLoginRes:
                this.on_guest_login_return(msg);
                break;

            case (int)Cmd.eEditProfileRes:
                this.on_edit_profile_return(msg);
                break;
                
            case (int)Cmd.eAccountUpgradeRes:
                this.on_guest_account_upgrade_return(msg);
                break;

            case (int)Cmd.eUnameLoginRes:
                this.on_uname_login_return(msg);
                break;
            
            case (int)Cmd.eLoginOutRes:
                this.on_user_login_out_return(msg);
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
        this.g_key = PlayerPrefs.GetString("MobaGuestKey");
        this.is_save_g_key = false;
        if (this.g_key == null || this.g_key == "")
        {
            this.g_key = utils.rand_str(32);
            this.is_save_g_key = true;
            Debug.Log("random key" + g_key);
        }
        else
        {
            Debug.Log("Load g_key in local storage" + this.g_key);
        }

        GuestLoginReq req = new GuestLoginReq();
        req.guest_key = this.g_key;

        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eGuestLoginReq, req);
    }

    public void uname_login(string uname, string upwd)
    {
        string upwd_md5 = GHelper.Md5Sum(upwd);

        Debug.Log(uname + " " + upwd + " " + upwd_md5);

        UnameLoginReq req = new UnameLoginReq();
        req.uname = uname;
        req.upwd = upwd_md5;

        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eUnameLoginReq, req);
    }

    public void do_account_upgrade(string uname, string upwd_md5)
    {
        AccountUpgradeReq req = new AccountUpgradeReq();
        req.uname = uname;
        req.upwd_md5 = upwd_md5;

        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eAccountUpgradeReq, req);
    }

    public void edit_profile(string unick, int uface, int usex)
    {
        if (unick.Length <= 0)
        {
            return;
        }

        if (uface < 0 || uface > 13)
        {
            return;
        }

        if (usex != 0 && usex != 1)
        {
            return;
        }

        EditProfileReq req = new EditProfileReq();
        req.unick = unick;
        req.uface = uface;
        req.usex = usex;

        this.temp_req = req;

        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eEditProfileReq, req);
    }

    public void user_login_out()
    {
        network.Instance.send_protobuf_cmd((int)Stype.Auth, (int)Cmd.eLoginOutReq, null);
    }

}
