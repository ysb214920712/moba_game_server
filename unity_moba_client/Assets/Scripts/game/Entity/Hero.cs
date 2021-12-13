using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using gprotocol;
using XLua;

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

[LuaCallCSharp]
public class ui_hp_info {
    public int hp;
    public int max_hp;
}

[LuaCallCSharp]
public class ui_exp_info {
    public int exp;
    public int total;
}

public class Hero : MonoBehaviour
{
    // TEST
    // public joystick stick;

    public bool is_ghost = false;

    public float speed = 8.0f;

    private  CharacterController controller;

    private Animation anim;

    private CharacterState anim_state = CharacterState.idle;
    private Vector3 camera_offset;

    private int stick_x = 0;
    private int stick_y = 0;
    private CharacterState logic_state = CharacterState.idle;
    private Vector3 logic_position = Vector3.zero;

    public int seatid = -1;
    public int side = -1;

    private int max_hp;
    private int hp;
    private int level;
    private int exp;

    public void init_herp_params()
    {
        this.level = 0;
        this.max_hp = GameConfig.normal_hero_level_config[this.level].MAX_HP;
        this.hp = GameConfig.normal_hero_level_config[this.level].MAX_HP;
        this.exp = 0;

        this.sync_exp_ui();
        this.sync_hp_ui();
    }

    public void add_exp(int exp)
    {
        this.exp += exp;
        int level = GameConfig.exp_to_level(GameConfig.normal_hero_level_config, this.exp);
        if (level != this.level)
        {
            this.level = level;
            this.max_hp = GameConfig.normal_hero_level_config[this.level].MAX_HP;
            this.hp += GameConfig.normal_hero_level_config[this.level].ADD_HP;

            int max_hp = GameConfig.normal_hero_level_config[this.level].MAX_HP;
            this.hp = (this.hp > max_hp) ? max_hp : this.hp;

            this.sync_hp_ui();
        }

        this.sync_exp_ui();
    }

    void sync_hp_ui()
    {
        if (!this.is_ghost)
        {
            ui_hp_info info = new ui_hp_info();
            info.hp = this.hp;
            info.max_hp = this.max_hp;

            event_manager.Instance.dispatch_event("hp_ui_sync", info);
        }
    }

    void sync_exp_ui()
    {
        if (!this.is_ghost)
        {
            ui_exp_info info = new ui_exp_info();
            int now = 0, total = 0;
            GameConfig.upgrade_level_info(GameConfig.normal_hero_level_config, this.exp, ref now, ref total);
            info.exp = now;
            info.total = total;

            event_manager.Instance.dispatch_event("exp_ui_sync", info);
        }
    }

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
            if (this.side == 1)
            {
                Camera.main.transform.localPosition = new Vector3(262f, 82f, 112f);
                Camera.main.transform.localEulerAngles = new Vector3(50f, 225f, 0f);
            }
            else
            {
                Camera.main.transform.localPosition = new Vector3(32f, 82, 85);
                Camera.main.transform.localEulerAngles = new Vector3(50, 45, 0);
            }
            this.camera_offset = Camera.main.transform.position - this.transform.position;
        }

        this.init_herp_params();
        this.anim.Play("idle");
    }

    public void on_attacked(int attack_value)
    {
        Debug.Log("Hero " + this.gameObject.name + "was attacked" + attack_value);
        int def = GameConfig.normal_hero_level_config[this.level].DEF;
        attack_value -= def;
        if (attack_value <= 0)
        {
            return;
        }

        this.hp -= attack_value;
        //TODO death
        this.hp = (this.hp < 0) ? 0 : this.hp;
        this.sync_hp_ui();
    }

    public void logic_init(Vector3 logic_pos)
    {
        this.stick_x = 0;
        this.stick_y = 0;
        this.logic_position = logic_pos;
        this.logic_state = CharacterState.idle;
    }

    void do_joystick_event(float dt)
    {
        if (this.stick_x == 0 && this.stick_y == 0)
        {
            this.logic_state = CharacterState.idle;
            return;
        }

        this.logic_state = CharacterState.walk;

        float dir_x = (float)this.stick_x / (float)(1 << 16);
        float dir_y = (float)this.stick_y / (float)(1 << 16);

        float r = Mathf.Atan2(dir_y, dir_x);

        float s = this.speed * Time.deltaTime;
        float offset = (this.side == 0) ? (-Mathf.PI * 0.25f) : (Mathf.PI * 0.75f);
        float sx = s * Mathf.Cos(r + offset);
        float sz = s * Mathf.Sin(r + offset);
        this.controller.Move(new Vector3(sx, 0, sz));

        float degree = r * 180 / Mathf.PI;
        offset = (this.side == 0) ? 45 : -135;
        degree = 360 - degree + 90 + offset;
        this.transform.localEulerAngles = new Vector3(0, degree, 0);
    }

    void on_joystick_anim_update(float dt)
    {
        if (this.logic_state != CharacterState.idle && this.logic_state!= CharacterState.walk)
        {
            return;
        }

        if (this.stick_x == 0 && this.stick_y == 0)
        {
            if (this.anim_state == CharacterState.walk)
            {
                this.anim.CrossFade("idle");
                this.anim_state = CharacterState.idle;
            }
            return;
        }

        if (this.anim_state == CharacterState.idle)
        {
            this.anim.CrossFade("walk");
            this.anim_state = CharacterState.walk;
        }

        this.do_joystick_event(dt);

        if (!this.is_ghost)
        {
            Camera.main.transform.position = this.transform.position + this.camera_offset;
        }
    }

    private void Update() {
        this.on_joystick_anim_update(Time.deltaTime);
    }

    void handle_joystick_event(OptionEvent opt)
    {
        this.stick_x = opt.x;
        this.stick_y = opt.y;
        if (this.stick_x == 0 && this.stick_y == 0)
        {
            this.logic_state = CharacterState.idle;
        }
        else
        {
            this.logic_state = CharacterState.walk;
        }
    }

    public void on_handler_frame_event(OptionEvent opt)
    {
        switch(opt.opt_type)
        {
            case (int)OptType.JoyStick:
                this.handle_joystick_event(opt);
                break;
        }
    }

    void jump_joystick_event(OptionEvent opt)
    {
        this.sync_last_joystick_event(opt);
    }

    public void on_jump_to_next_frame(OptionEvent opt)
    {
        switch(opt.opt_type)
        {
            case (int)OptType.JoyStick:
                this.jump_joystick_event(opt);
                break;
        }
    }

    void sync_last_joystick_event(OptionEvent opt)
    {
        // logic position -----> dt 
        this.stick_x = opt.x;
        this.stick_y = opt.y;
        this.transform.position = this.logic_position;
        this.do_joystick_event((float)GameZygote.LOGIC_FRAME_TIME / 1000.0f);
        this.logic_position = this.transform.position;
    }

    public void on_sync_last_logic_frame(OptionEvent opt)
    {
        switch(opt.opt_type)
        {
            case (int)OptType.JoyStick:
                this.sync_last_joystick_event(opt);
                break;
        }
    }
}
