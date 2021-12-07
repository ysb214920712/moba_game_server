using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormalTower : Tower
{
    private int now_fps;

    private void Start() {
        this.now_fps = this.config.shoot_logic_fps;
    }
    public override void init(int side, int type)
    {
        base.init(side, type);
    }

    void shoot_at(Vector3 pos)
    {
        NormalBullet bullet = (NormalBullet)GameZygote.Instance.alloc_bullet(this.side, (int)BulletType.Normal);
        bullet.transform.position = this.transform.Find("point").transform.position;
        bullet.shoot_to(pos);
    }

    void do_shoot()
    {
        List<Hero> heroes = GameZygote.Instance.GetHeroes();
        float min_len = this.config.attack_R + 1;
        Hero target = null;
        for (int i = 0; i < heroes.Count; i++)
        {   
            Hero h = heroes[i];
            if (h.side == this.side)
            {
                continue;
            }

            Vector3 dir = h.transform.position - this.transform.position;
            float len = dir.magnitude;

            if (len > this.config.attack_R)
            {
                continue;
            }

            if (len < min_len)
            {
                min_len = len;
                target = h;
            }
        }

        if (target)
        {
            CharacterController ctrl = target.GetComponent<CharacterController>();
            Vector3 pos = target.transform.position;
            pos.y += (ctrl.height * 0.6f);
            this.shoot_at(pos);
        }
    }
    
    public override void on_logic_update(int dt_ms)
    {
        // base.on_logic_update(dt_ms);
        this.now_fps++;
        if (this.now_fps >= this.config.shoot_logic_fps)
        {
            this.now_fps = 0;
            this.do_shoot();
        }
    }
}
