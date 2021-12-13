using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using SWS;
public class monster_move : MonoBehaviour {
    private float speed = 5.0f;
    private float walk_time = 0.0f;
    private float passed_time = 0.0f;
    private bool is_walking = false;

	// Use this for initialization
	void Start () {

	}

    public void walk_to_dst(Vector3 dst) {
        Vector3 src = this.transform.position;
        Vector3 dir = dst - src;
        float len = dir.magnitude;
        if (len <= 0) {
            return;
        }

        this.is_walking = true;
        this.walk_time = len / this.speed;
        this.passed_time = 0;

        // 调整角色的位置，对着下一个点
        this.transform.LookAt(dst);
    }

	// Update is called once per frame
	void Update () {
        if (!this.is_walking) {
            return;
        }

        float dt = Time.deltaTime;
        this.passed_time += dt;
        if (this.passed_time > this.walk_time) { 
            dt -= (this.passed_time - this.walk_time);
        }

        float s = this.speed * dt;
        this.transform.Translate(this.transform.forward * s, Space.World);

        if (this.passed_time >= this.walk_time) {
            this.is_walking = false;
        }
	}
}
