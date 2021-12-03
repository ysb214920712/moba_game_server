using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class joystick : MonoBehaviour
{
    public Transform stick;
    public float MaxR;
    private Vector2 touch_dir = Vector2.zero;
    public Vector2 dir{
        get{
            return this.touch_dir;
        }
    }
    
    private void Start() {
        this.stick.localPosition = Vector2.zero;
        this.touch_dir = Vector2.zero;
    }

    public void on_stick_drag()
    {
        Vector2 pos = Vector2.zero;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(this.transform as RectTransform, Input.mousePosition, GameManager.UICanvas.worldCamera, out pos);
        
        float len = pos.magnitude;
        if (len <= 0)
        {
            this.touch_dir = Vector2.zero;
            return;
        }

        this.touch_dir.x = pos.x / len;
        this.touch_dir.y = pos.y / len;

        if (len >= this.MaxR)
        {
            pos.x = pos.x * this.MaxR / len;
            pos.y = pos.y * this.MaxR / len;
        }
        this.stick.localPosition = pos;
    }

    public void on_stick_end_drag()
    {
        this.stick.localPosition = Vector2.zero;
        this.touch_dir = Vector2.zero;
    }
}
