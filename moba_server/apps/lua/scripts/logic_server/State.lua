local State = {
    InView = 1,  -- 集结玩家
    Ready = 2,   -- 集结完毕
    Start = 3,   -- 玩家准备好了
    Playing = 4, -- 游戏中
    CheckOut = 5,-- 结算
}

return State