using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;
using XLua;

[LuaCallCSharp]
public class ugame : Singleton<ugame>
{
    public string unick = null;
    public int uface = 0;
    public int usex = 0;
    public int uvip = 0;
    public bool is_guest = false;
    public string guest_key = null;
    public int zid = -1;

    public UserGameInfo ugame_info;

    public void save_ugame_info(UserGameInfo ugame_info)
    {
        this.ugame_info = ugame_info;
    }

    public void save_uinfo(UserCenterInfo uinfo, bool is_guest, string guest_key = null)
    {
        this.unick = uinfo.unick;
        this.uface = uinfo.uface;
        this.usex = uinfo.usex;
        this.uvip = uinfo.uvip;
        this.is_guest = is_guest;
        this.guest_key = guest_key;
    }

    public void save_edit_profile(string unick, int uface, int usex)
    {
        this.unick = unick;
        this.uface = uface;
        this.usex = usex;
    }

    public void user_login_out()
    {
        
    }
}
