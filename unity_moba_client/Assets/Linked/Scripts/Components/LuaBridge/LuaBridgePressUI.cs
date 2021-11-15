using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

[XLua.LuaCallCSharp]
public class LuaBridgePressUI : LuaBridgeBase,
                                IPointerDownHandler,IPointerUpHandler
{
    private bool bStart = false;
    private float flastTime = 0;

    void Update()
    {
        if (bStart && Time.time - flastTime > 0.5)
        {
            bStart = false;
        }
    }
    [XLua.BlackList]
    public void OnPointerDown(PointerEventData eventData)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnPointerDown, eventData);
    }
    [XLua.BlackList]
    public void OnPointerUp(PointerEventData eventData)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnPointerUp, eventData);
    }
    public void LongPress(bool bpress)
    {
        bStart = bpress;
        flastTime = Time.time;
    }
}
