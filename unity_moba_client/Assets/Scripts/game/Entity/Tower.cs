using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum TowerType {
    Main = 1,
    Normal = 2,
}

public class Tower : MonoBehaviour
{
    protected int type;
    protected int side;

    protected TowerConfig config;
    public virtual void init(int side, int type)
    {
        this.side = side;
        this.type = type;
        switch (type)
        {
            case (int)TowerType.Main:
                this.config = GameConfig.main_tower_config;
            break;

            case (int)TowerType.Normal:
                this.config = GameConfig.normal_tower_config;
            break;
        }
    }

    public virtual void on_logic_update(int dt_ms)
    {

    }
}
