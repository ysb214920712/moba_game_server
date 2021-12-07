using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormalBullet : Bullet
{
    

    private void Start() {
        
    }

    public override void init(int side, int type)
    {
        base.init(side, type);
    }
    
    public override void on_logic_update(int dt_ms)
    {
        base.on_logic_update(dt_ms);
    }
}
