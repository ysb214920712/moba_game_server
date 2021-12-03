using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

[LuaCallCSharp]
public class GameZygote : UnitySingleton<GameZygote>
{
    //Test
    public joystick stick;
    public void SetJoystick(joystick stick)
    {
        this.stick = stick;
    }

    public GameObject[] characters = null;

    public GameObject map_entryA;

    private void Start() {
        // this.Init();
    }

    public void Init()
    {
        GameObject hero = GameObject.Instantiate(this.characters[ugame.Instance.usex]);
        hero.transform.SetParent(this.transform, false);
        hero.transform.position = this.map_entryA.transform.position;
        CharacterCtrl ctrl = hero.AddComponent<CharacterCtrl>();
        ctrl.is_ghost = false;
        ctrl.stick = this.stick;
    }
}
