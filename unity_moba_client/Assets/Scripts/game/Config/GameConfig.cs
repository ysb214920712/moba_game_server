using System.Collections;
using System.Collections.Generic;
using XLua;

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

[LuaCallCSharp]
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
        new HeroConfig(){DEF = 5, ATK = 1, MAX_HP = 100, ADD_HP = 0, EXP = 0,},
        new HeroConfig(){DEF = 10, ATK = 1, MAX_HP = 200, ADD_HP = 100, EXP = 100,},
        new HeroConfig(){DEF = 15, ATK = 1, MAX_HP = 300, ADD_HP = 100, EXP = 200,},
        new HeroConfig(){DEF = 20, ATK = 1, MAX_HP = 400, ADD_HP = 100, EXP = 300,},
        new HeroConfig(){DEF = 25, ATK = 1, MAX_HP = 500, ADD_HP = 100, EXP = 400,},
        new HeroConfig(){DEF = 30, ATK = 1, MAX_HP = 600, ADD_HP = 100, EXP = 500,},
        new HeroConfig(){DEF = 35, ATK = 1, MAX_HP = 700, ADD_HP = 100, EXP = 600,},
        new HeroConfig(){DEF = 40, ATK = 1, MAX_HP = 800, ADD_HP = 100, EXP = 700,},
        new HeroConfig(){DEF = 45, ATK = 1, MAX_HP = 900, ADD_HP = 100, EXP = 800,},
        new HeroConfig(){DEF = 50, ATK = 1, MAX_HP = 1000, ADD_HP = 100, EXP = 900,},
    };

    public static int add_exp_per_logic = 1;
    public static int gen_monster_frame = 15 * 33;

    public static int exp_to_level(HeroConfig[] configs, int exp)
    {
        int level = 0;
        while (level + 1 < configs.Length && exp >= configs[level + 1].EXP)
        {
            exp -= configs[level + 1].EXP;
            level++;
        }

        return level;
    }

    public static void upgrade_level_info(HeroConfig[] configs, int exp, ref int now, ref int total)
    {
        int level = 0;
        while (level + 1 < configs.Length && exp >= configs[level + 1].EXP)
        {
            exp -= configs[level + 1].EXP;
            level++;
        }

        if (level + 1 > configs.Length)
        {
            now = total = configs[level].EXP;
        }
        else
        {
            now = exp;
            total = configs[level + 1].EXP;
        }
    }
}
