using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

[LuaCallCSharp]
public class ulevel : Singleton<ulevel>
{
    private int[] level_exp;

    public void init()
    {
        // TODO 读取配置文件
        this.level_exp = new int[]{
            0,
            1000,
            2000,
            3000,
            4000,
            5000,
            6000,
            7000,
            8000,
            9000,
            10000,
            20000,
        };


    }

    public int get_level_info(int uexp, out int now, out int next_level)
    {
        now = 0;
        next_level = 0;

        int level = 0;
        int last_exp = uexp;

        while(level + 1 <= this.level_exp.Length - 1 
             && last_exp >= this.level_exp[level + 1])
        {
            last_exp -= this.level_exp[level + 1];
            level ++;
        }

        now = last_exp;
        if (level == this.level_exp.Length - 1)
        {
            
            next_level = now;
        }
        else
        {
            next_level = this.level_exp[level + 1];
        }

        return level;
    }
}
