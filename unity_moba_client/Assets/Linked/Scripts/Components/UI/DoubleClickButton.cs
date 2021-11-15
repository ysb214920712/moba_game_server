using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Sirenix.OdinInspector;

public class DoubleClickButton : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
    public Action<PointerEventData> onClick;
    public Action<PointerEventData> onDoubleClick;
    public Action<PointerEventData> onDown;
    public Action<PointerEventData> onUp;
    [LabelText("点击的间隔时间")]
    public float clickInterval = 0.5f;
    [LabelText("双击的间隔时间")]
    public float doubleClickInterval = 0.3f;
    private float lastDownTime = 0.0f;
    private bool lastUp = false;
    private PointerEventData curEventData;
    public void OnPointerDown(PointerEventData eventData)
    {
        if (lastDownTime == 0.0f) {
            curEventData = eventData;
            lastDownTime = Time.realtimeSinceStartup;

            if (onDown != null)
                onDown(eventData);
        }
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        if (!lastUp && lastDownTime != 0.0f) {
            if (onUp != null)
                onUp(eventData);
            lastUp = true;
            curEventData = eventData;
        } else if (Time.realtimeSinceStartup - lastDownTime < doubleClickInterval) {
            if (onDoubleClick != null)
                onDoubleClick(eventData);

            lastUp = false;
            lastDownTime = 0.0f;
        } else {
            lastUp = false;
            lastDownTime = 0.0f;
        }
    }

    void Update()
    {
        float interval = Time.realtimeSinceStartup - lastDownTime;
        if (lastUp)
        {
            if (interval >= doubleClickInterval && interval < clickInterval)
            {
                if (onClick != null)
                    onClick(curEventData);
                
                lastUp = false;
                lastDownTime = 0.0f;
            } else if (interval >= clickInterval)
            {
                lastUp = false;
                lastDownTime = 0.0f;
            }
        }
    }
}
