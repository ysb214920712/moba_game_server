using System.Collections;
using System.Collections.Generic;
using UnityEngine;

enum CharacterState {
    walk = 1,
    free = 2,
    idle = 3,
    attack = 4,
    attack2 = 5,
    attack3 = 6,
    skill = 7,
    skill2 = 8,
    death = 9,
}

public class CharacterCtrl : MonoBehaviour
{
    // TEST
    public joystick stick;

    public bool is_ghost = false;

    public float speed = 8.0f;

    private  CharacterController controller;

    private Animation anim;

    private CharacterState state = CharacterState.idle;
    private Vector3 camera_offset;

    private void Start() {
        GameObject ring = Resources.Load<GameObject>("effect/other/guangquan_fanwei");
        this.controller = this.GetComponent<CharacterController>();
        this.anim = this.GetComponent<Animation>();
        if (!this.is_ghost)
        {
            GameObject r = GameObject.Instantiate(ring);
            r.transform.SetParent(this.transform, false);
            r.transform.localPosition = Vector3.zero;
            r.transform.localScale = new Vector3(2, 1, 2);
            this.camera_offset = Camera.main.transform.position - this.transform.position;
        }

        this.anim.Play("idle");
    }

    private void Update() {
        if (this.state != CharacterState.idle && this.state!= CharacterState.walk)
        {
            return;
        }

        if (this.stick.dir.x == 0 && this.stick.dir.y == 0)
        {
            if (this.state == CharacterState.walk)
            {
                this.anim.CrossFade("idle");
                this.state = CharacterState.idle;
            }
            return;
        }

        if (this.state == CharacterState.idle)
        {
            this.anim.CrossFade("walk");
            this.state = CharacterState.walk;
        }

        float r = Mathf.Atan2(this.stick.dir.y, this.stick.dir.x);

        float s = this.speed * Time.deltaTime;
        float sx = s * Mathf.Cos(r - Mathf.PI * 0.25f);
        float sz = s * Mathf.Sin(r - Mathf.PI * 0.25f);
        this.controller.Move(new Vector3(sx, 0, sz));

        float degree = r * 180 / Mathf.PI;
        degree = 360 - degree + 135;
        this.transform.localEulerAngles = new Vector3(0, degree, 0);

        if (!this.is_ghost)
        {
            Camera.main.transform.position = this.transform.position + this.camera_offset;
        }
    }
}
