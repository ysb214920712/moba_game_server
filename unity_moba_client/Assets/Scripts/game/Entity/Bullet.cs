using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum BulletType {
    Main = 0,
    Normal = 1,
}

public class Bullet : MonoBehaviour
{
    protected int type;
    protected int side;

    protected BulletConfig config;

    int active_time;
    float passed_time;
    bool is_running = false;

    int logic_passed_time = 0;
    Vector3 logic_pos;

    private void Update() {
        if (!this.is_running)
        {
            return;
        }

        float total = (float)this.active_time / 1000.0f;
        float dt = Time.deltaTime;
        this.passed_time += dt;
        if (passed_time > total)
        {
            dt -= (this.passed_time - total);
        }

        Vector3 offset = this.transform.forward * this.config.speed * dt;
        this.transform.position += offset;

        if (this.passed_time >= total)
        {
            this.is_running = false;
        }
    }

    public void shoot_to(Vector3 world_target)
    {
        this.transform.LookAt(world_target); // Z轴指向目标
        Vector3 dir = world_target - this.transform.position;
        float len = dir.magnitude;

        this.active_time = (int)((len * 1000) / this.config.speed);
        this.passed_time = 0;
        this.logic_passed_time = 0;
        this.is_running = true;

        this.logic_pos = this.transform.position;
    }

    public virtual void init(int side, int type)
    {
        this.side = side;
        this.type = type;
        switch (type)
        {
            case (int)TowerType.Main:
                this.config = GameConfig.main_bullet_config;
            break;

            case (int)TowerType.Normal:
                this.config = GameConfig.normal_bullet_config;
            break;
        }
    }

    bool hit_test(Vector3 start_pos, float distance)
    {
        RaycastHit[] hits = Physics.RaycastAll(start_pos, this.transform.forward, distance);
        if (hits != null && hits.Length > 0)
        {
            for (int i = 0; i < hits.Length; i++)
            {
                RaycastHit hit = hits[i];
                if (hit.collider.gameObject.layer == (int)ObjectType.Hero)
                {
                    Hero h = hit.collider.GetComponent<Hero>();
                    if (h.side == this.side)
                    {
                        continue;
                    }

                    h.on_attacked(this.config.attack);
                }
            }
        }
        return false;
    }

    public virtual void on_logic_update(int dt_ms)
    {
        this.logic_passed_time += dt_ms;
        if (this.logic_passed_time > this.active_time)
        {
            dt_ms -= (this.logic_passed_time - this.active_time);
        }

        float dt = (float)dt_ms / 1000;
        Vector3 offset = this.transform.forward * this.config.speed * dt;

        if (this.hit_test(this.logic_pos, offset.magnitude))
        {
            return;
        }

        this.logic_pos += offset;

        if (this.logic_passed_time >= this.active_time)
        {
            GameZygote.Instance.Remove_Bullet(this);
        }
    }
}
