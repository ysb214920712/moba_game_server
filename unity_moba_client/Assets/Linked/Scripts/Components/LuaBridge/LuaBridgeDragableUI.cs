using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

[XLua.LuaCallCSharp]
public class LuaBridgeDragableUI : LuaBridgeBase,
                                IBeginDragHandler, IDragHandler, IEndDragHandler
{
    [XLua.BlackList]
    public void OnBeginDrag(PointerEventData eventData)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnBeginDrag, eventData);
    }

    [XLua.BlackList]
    public void OnDrag(PointerEventData eventData)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnDrag, eventData);
    }

    [XLua.BlackList]
    public void OnEndDrag(PointerEventData eventData)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnEndDrag, eventData);
    }
}
