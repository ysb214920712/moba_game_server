using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TowerConfig
{
    public int hp;
    public int attack_R;
    public int shoot_logic_fps;
}

public class BulletConfig
{
    public int attack;
    public int speed;
    public int max_distance;
}

public class HeroConfig
{
    public int DEF;
    public int ATK;
    public int MAX_HP;
    public int ADD_HP;
    public int EXP;
}

public class GameConfig
{
    public static TowerConfig main_tower_config = new TowerConfig() 
    {
        hp = 10,
        attack_R = 10,
        shoot_logic_fps = 3,
    };

    public static TowerConfig normal_tower_config = new TowerConfig()
    {
        hp = 10,
        attack_R = 10,
        shoot_logic_fps = 5,
    };

    public static BulletConfig main_bullet_config = new BulletConfig()
    {
        attack = 10,
        speed = 20,
        max_distance = 20,
    };

    public static BulletConfig normal_bullet_config = new BulletConfig()
    {
        attack = 10,
        speed = 20,
        max_distance = 20,
    };

    public static HeroConfig[] normal_hero_level_config = new HeroConfig[]
    {
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
        new HeroConfig(){DEF = 1, ATK = 1, MAX_HP = 1, ADD_HP = 1, EXP = 1,},
    };

    public static int normal_hero_exp_k = (1 << 15); //fixed 表示小数 16.16 1 << 16; 0.1 ---> 1 << 15
}
