using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class login_scene : UnitySingleton<login_scene>
{
    public void on_guest_login_click()
    {
        user_login.Instance.guest_login();
    }
}
