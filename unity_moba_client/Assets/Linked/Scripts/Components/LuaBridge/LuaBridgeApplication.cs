using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[XLua.LuaCallCSharp]
public class LuaBridgeApplication : LuaBridgeBase
{
    void Update() {
        //Debug.Log("=== update");
        CallLuaBindFunc(UnityBehaviourFunc.Update, Time.deltaTime); 
    }

    void OnApplicationFocus(bool hasFocus) {
        CallLuaBindFunc(UnityBehaviourFunc.OnApplicationFocus, hasFocus);
    } 

    void OnApplicationPause(bool pauseStatus) {
        CallLuaBindFunc(UnityBehaviourFunc.OnApplicationPause, pauseStatus);
    } 

    void OnApplicationQuit() {
        CallLuaBindFunc(UnityBehaviourFunc.OnApplicationQuit);
    }
}
