using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using gprotocol;

public enum OptType {
    JoyStick = 1,
    Attack1 = 2,
    Attack2 = 3,
    Attack3 = 4,
    Skill1 = 5,
    Skill2 = 6,
    Skill3 = 7,
}

public enum SideType {
    SideA = 0,
    SideB = 1,
}

public enum ObjectType {
    Bullet = 13,
    Hero = 14,
    Tower = 15,
}

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
    public GameObject map_entryB;

    private int sync_frameid = 0;
    private FrameOpts last_frame_opt = null;

    private List<Hero> heroes = new List<Hero>();
    private List<Tower> A_towers = new List<Tower>();
    private List<Tower> B_towers = new List<Tower>();

    public GameObject normal_bullet_prefab;
    public GameObject main_bullet_prefab;

    public const int LOGIC_FRAME_TIME = 66;

    // [main, left, right, front]
    public GameObject[] A_tower_objects;
    public GameObject[] B_tower_objects;

    private List<Bullet> tower_bullets = new List<Bullet>();

    private void Start() {
        // this.Init();
        event_manager.Instance.add_event_listener("on_logic_update", this.on_logic_update);
    }

    public Bullet alloc_bullet(int side, int type)
    {
        GameObject obj = null;
        Bullet bullet = null;
        switch (type) 
        {
            case (int)BulletType.Normal:
                obj = GameObject.Instantiate(this.normal_bullet_prefab);
                obj.transform.SetParent(this.transform, false);
                bullet = obj.AddComponent<NormalBullet>();
                bullet.init(side, type);
            break;

            case (int)BulletType.Main:
                // obj = GameObject.Instantiate(this.main_bullet_prefab);
                // bullet = obj.AddComponent<MainBullet>();
                // bullet.init(side, type);
            break;
        }

        if (bullet)
        {
            this.tower_bullets.Add(bullet);
        }
        return bullet;
    }

    public void Remove_Bullet(Bullet bullet)
    {
        if (bullet)
        {
            this.tower_bullets.Remove(bullet);
        }
        GameObject.Destroy(bullet.gameObject);
    }

    public List<Hero> GetHeroes()
    {
        return this.heroes;
    }

    public void Init()
    {
       this.place_heroes();
       this.place_towers();
    }

    void place_towers()
    {
        for (int i = 0; i < 4; i++)
        {
            this.init_tower((int)SideType.SideA, i, i == 0 ? (int)TowerType.Main : (int)TowerType.Normal);
            this.init_tower((int)SideType.SideB, i, i == 0 ? (int)TowerType.Main : (int)TowerType.Normal);
        }
    }

    void init_tower(int side, int index, int type)
    {
        Tower tower;
        GameObject[] obj_towers = side == (int)SideType.SideA ? this.A_tower_objects : this.B_tower_objects;
        List<Tower> towers = side == (int)SideType.SideA ? this.A_towers : this.B_towers;
        if (type == (int)TowerType.Main)
        {
            tower = obj_towers[index].AddComponent<MainTower>();
        }
        else
        {
            tower = obj_towers[index].AddComponent<NormalTower>();
        }
        tower.init(side, type);
        towers.Add(tower);
        obj_towers[index].name = (side == (int)SideType.SideA ? "A_" : "B_") + (type == (int)TowerType.Main ? "Main_Tower" : (index == 1 ? "Left_Tower" : (index == 2 ? "Right_Tower" : "Front_Tower")));
    }

    void place_heroes()
    {
        for (int i = 0; i < ugame.Instance.players_match_info.Count; i ++)
        {
            Hero h = this.place_hero_at(ugame.Instance.players_match_info[i], i % 3);
            this.heroes.Add(h);
        }
    }

    Hero get_hero(int seatid)
    {
        for (int i = 0; i < this.heroes.Count; i ++)
        {
            if (this.heroes[i].seatid == seatid)
            {
                return this.heroes[i];
            }
        }
        return null;
    }

    Hero place_hero_at(PlayerMatchInfo matchInfo, int index)
    {
        int side = matchInfo.side;
        UserInfo uinfo = ugame.Instance.get_user_info(matchInfo.seatid);
        GameObject hero_go = GameObject.Instantiate(this.characters[uinfo.usex]);
        hero_go.name = uinfo.unick;
        hero_go.transform.SetParent(this.transform, false);

        Vector3 center_pos;
        if (side == 0)
        {
            center_pos = this.map_entryA.transform.position;
        }
        else
        {
            center_pos = this.map_entryB.transform.position;
        }

        if (index == 0)
        {
            center_pos.z -= 3.0f;
        }
        else if (index == 1)
        {
            center_pos.z += 3.0f;
        }else
        {
            center_pos.x += 3.0f;
        }

        hero_go.transform.position = center_pos;
        Hero ctrl = hero_go.AddComponent<Hero>();
        ctrl.is_ghost = (matchInfo.seatid == ugame.Instance.self_seatid) ? false : true;
        ctrl.logic_init(hero_go.transform.position);
        ctrl.seatid = matchInfo.seatid;
        ctrl.side = side;

        return ctrl;
    }

    void on_frame_handle_tower_logic()
    {
        for (int i = 0; i < this.A_towers.Count; i++)
        {
            this.A_towers[i].on_logic_update(LOGIC_FRAME_TIME);
        }

        for (int i = 0; i < this.B_towers.Count; i++)
        {
            this.B_towers[i].on_logic_update(LOGIC_FRAME_TIME);
        }
    }

    void on_frame_handle_tower_bullet_logic()
    {
        for (int i = 0; i < this.tower_bullets.Count; i++)
        {
            this.tower_bullets[i].on_logic_update(LOGIC_FRAME_TIME);
        }
    }

    void capture_player_opts()
    {
        NextFrameOpts next_frame = new NextFrameOpts();
        next_frame.frameid = this.sync_frameid + 1;
        next_frame.zid = ugame.Instance.zid;
        next_frame.matchid = ugame.Instance.matchid;
        next_frame.seatid = ugame.Instance.self_seatid;

        //摇杆
        OptionEvent opt_stick = new OptionEvent();
        opt_stick.seatid = ugame.Instance.self_seatid;
        opt_stick.opt_type = (int)OptType.JoyStick;
        opt_stick.x = (int)(this.stick.dir.x * (1 << 16));
        opt_stick.y = (int)(this.stick.dir.y * (1 << 16));
        next_frame.opts.Add(opt_stick);
        //攻击

        //发送到服务器
        logic_service_proxy.Instance.send_next_frame_opts(next_frame);
    }

    void on_sync_last_logic_frame(FrameOpts frame_opt)
    {
        //同步所有玩家的输入
        for (int i = 0; i < frame_opt.opts.Count; i ++)
        {
            int seatid = frame_opt.opts[i].seatid;
            Hero h = this.get_hero(seatid);
            if (!h)
            {
                Debug.LogError("Cannot find hero" + seatid);
                continue;
            }
            h.on_sync_last_logic_frame(frame_opt.opts[i]);
        }

        //怪物AI
    }

    void on_jump_to_next_frame(FrameOpts frame_opt)
    {
        for (int i = 0; i < frame_opt.opts.Count; i ++)
        {
            int seatid = frame_opt.opts[i].seatid;
            Hero h = this.get_hero(seatid);
            if (!h)
            {
                Debug.LogError("Cannot find hero" + seatid);
                continue;
            }
            h.on_jump_to_next_frame(frame_opt.opts[i]);
        }

        // 子弹AI
        this.on_frame_handle_tower_bullet_logic();

        // 防御塔AI
        this.on_frame_handle_tower_logic();

        // 怪物AI
    }

    void on_logic_update(string name, object udata)
    {
        LogicFrame frame = (LogicFrame)udata;
        if (frame.frameid < this.sync_frameid)
        {
            return;
        }

        // Debug.Log(frame.unsync_frames.Count);
        // for (int i = 0; i < frame.unsync_frames.Count; i++) {
        //     for (int j = 0; j < frame.unsync_frames[i].opts.Count; j++) {
        //         Debug.Log(frame.unsync_frames[i].opts[j].x + ":" + frame.unsync_frames[i].opts[j].y);
        //     }
        // }

        // 同步上一帧逻辑操作
        if (this.last_frame_opt != null)
        {
            this.on_sync_last_logic_frame(this.last_frame_opt);
        }

        // 从 sync_frame + 1 开始 同步----> frame.frameid - 1
        for (int i = 0; i < frame.unsync_frames.Count; i++) 
        {
            if (this.sync_frameid >= frame.unsync_frames[i].frameid)
            {
                continue;
            }
            else if(frame.unsync_frames[i].frameid >= frame.frameid)
            {
                break;
            }

            this.on_jump_to_next_frame(frame.unsync_frames[i]);            
        }

        // 获取最后一帧操作
        this.sync_frameid = frame.frameid;
        if (frame.unsync_frames.Count > 0)
        {
            this.last_frame_opt = frame.unsync_frames[frame.unsync_frames.Count - 1];
            this.on_handler_frame_event(this.last_frame_opt);
        }
        else
        {
            this.last_frame_opt = null;
        }
        // 采集下一帧事件， 发送到服务器
        
        this.capture_player_opts();
    }

    void on_handler_frame_event(FrameOpts frame_opt)
    {
        // 带入所有玩家操作处理
        for (int i = 0; i < frame_opt.opts.Count; i ++)
        {
            int seatid = frame_opt.opts[i].seatid;
            Hero h = this.get_hero(seatid);
            if (!h)
            {
                Debug.LogError("Cannot find hero" + seatid);
                continue;
            }
            h.on_handler_frame_event(frame_opt.opts[i]);
        }

        // 子弹AI
        this.on_frame_handle_tower_bullet_logic();

        // 防御塔AI
        this.on_frame_handle_tower_logic();
        // 怪物AI

    }

    private void Update() {
        
    }

    private void OnDestroy() {
        event_manager.Instance.remove_event_listener("on_logic_update", this.on_logic_update);
    }
}
