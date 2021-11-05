using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class show_fps : MonoBehaviour
{
    private float time_delta = 0.5f;
    private float prev_time = 0.0f;
    private float fps = 0.0f;
    private float i_frames = 0;

    private GUIStyle style;

    void Awake() {
        Application.targetFrameRate = 60;
    }

    void Start()
    {
        this.prev_time = Time.realtimeSinceStartup;
        this.style = new GUIStyle();
        this.style.fontSize = 15;
        this.style.normal.textColor = new Color(255,255,255);
    }

    private void OnGUI() {
        GUI.Label(new Rect(0,0,200,200), "FPS:" + this.fps.ToString("f2"), this.style);
    }

    void Update()
    {
        this.i_frames ++ ;
        if (Time.realtimeSinceStartup >= this.prev_time + this.time_delta)
        {
            this.fps = this.i_frames / (Time.realtimeSinceStartup - this.prev_time);
            this.prev_time = Time.realtimeSinceStartup;
            this.i_frames = 0;
        }
    }
}
