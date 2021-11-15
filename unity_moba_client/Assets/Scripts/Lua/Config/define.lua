local resmng = resmng

resmng.NIL = nil
resmng.TRUE = true
resmng.FALSE = false

resmng.DATA_ONLY               = 49
resmng.BASE_VAL_OFFSET         = 100
resmng.ADD_VAL_OFFSET          = 200
resmng.MUL_VAL_OFFSET          = 300

resmng.LV = 1
resmng.MAX_LV = 2
resmng.HP = 3                       --血量
resmng.SHIELD = 4                   --护盾
resmng.ENG = 5                      --能量
resmng.MAX_ENG = 6                  --最大能量
resmng.EXP = 7                      --掉落经验
resmng.GOLD = 8                     --掉落金币
resmng.DODGE = 9                    --闪避
resmng.SPEED_ADJ = 10               --做统一加减速效果
resmng.DMG_ATK_ADJ = 11             --伤害加深
resmng.DMG_REV_ADJ = 12             --受伤加深
resmng.HEAL_ADJ = 13                --恢复效果增加
resmng.ATK_ELITE_ADJ = 14           --攻击精英的伤害加深
resmng.ATK_BOSS_ADJ = 15            --攻击BOSS的伤害加深
resmng.REV_ELITE_ADJ = 16           --受到精英的伤害加深
resmng.REV_BOSS_ADJ = 17            --受到BOSS的伤害加深
resmng.ENG_ADJ = 18                 --能量积攒速度加快
resmng.EXP_ADJ = 19                 --经验获取增加
resmng.GOLD_ADJ = 20                --金币获取加成
resmng.LOOT_ADJ = 21                --掉宝率(装备掉落)加成
resmng.SUIT_LOOT_ADJ = 22           --套装掉落加成
resmng.BULLET_CHAIN = 23            --子弹连锁敌方个数
resmng.EXTRA_BULLET_NUM = 24        --额外发射的子弹数量
resmng.DROP_BUFF_LAST_ADJ = 25      --掉落宝箱的BUFF持续时间增加
resmng.BULLET_SIZE_ADJ = 26         --子弹的尺寸增加
resmng.KEEP_SHOOT = 27              --保持射击动作，在范围外也不收枪
resmng.BEATBACK_ADJ = 28            --击退距离的加成
resmng.DAMAGE_DROP_GOLD = 29        --造成伤害时的金币掉落数量
resmng.DAMAGE_DROP_GOLD_RATE = 30   --造成伤害时的金币掉落概率
resmng.BULLET_CHAIN_ADJ = 31        --子弹折射额外造成的伤害加成
resmng.BULLET_DIVIDE_ADJ = 32       --子弹散射额外造成的伤害加成
resmng.ITEM_HERO_LV = 33            --所用英雄的等级

resmng.MAX_HP = 50                  --最大生命
resmng.MAX_SHIELD = 51              --最大护盾
resmng.ATK = 52                     --攻击
resmng.DEF = 53                     --防御
resmng.CHC = 54                     --暴击率
resmng.CHD = 55                     --暴击伤害
resmng.AF = 56                      --武器攻击速度
resmng.STA = 57                     --后坐力
resmng.SHIELD_DMG = 58              --护盾伤害
resmng.BS = 59                      --子弹速度
resmng.SHIELD_RECOVER = 60          --护盾恢复速度
resmng.SPEED = 61                   --角色移动速度


resmng.HERO_MAX_LV_IN_BATTLE = 12

--操作符
resmng.Eq = 1      -- ==
resmng.Neq = 2     -- ~=
resmng.Gt = 3      -- >
resmng.Gte = 4     -- >=
resmng.Lt = 5      -- <
resmng.Lte = 6     -- <=
resmng.Multiple = 7-- 是某个数的倍数
resmng.NMultiple = 8-- 不是某个数的倍数

resmng.TYPE_ATTR_EFFECT_HERO = 1
resmng.TYPE_ATTR_EFFECT_HERO_GLOBAL = 2
resmng.TYPE_ATTR_EFFECT_EQUIP = 3

resmng.HEART_BEAT_INTEVAL = 60
resmng.RANK_TYPE_TEST = 1

-- operate 时间类型
resmng.OPT_TIME_TYPE_ABS = 1

resmng.ITEM_TYPE_CURRENCY = 1
resmng.ITEM_TYPE_COMMON = 2
resmng.ITEM_TYPE_EQUIP = 3
resmng.ITEM_TYPE_WEAPON = 4
resmng.ITEM_TYPE_HERO = 5
resmng.ITEM_TYPE_HERO_SKIN = 6
resmng.ITEM_TYPE_HERO_PORTRAIT = 7
resmng.ITEM_TYPE_HERO_PIECES = 8
resmng.ITEM_TYPE_GENIUS = 9
resmng.ITEM_TYPE_PLAYER_EXP = 10
resmng.ITEM_TYPE_EQUIP_EXP = 11



resmng.GUIDE_TRIGGER_OPEN_UI = 1
resmng.GUIDE_TRIGGER_CLOSE_UI = 2

resmng.TYPE_ENTITY_NONE = 0
resmng.TYPE_ENTITY_HERO = 1
resmng.TYPE_ENTITY_ENEMY = 2
resmng.TYPE_ENTITY_TRAP = 3
resmng.TYPE_ENTITY_SCENE_ITEM = 4

resmng.FACTION_TYPE_NONE = 0
resmng.FACTION_TYPE_FRIEND = 1
resmng.FACTION_TYPE_ENEMY = 2
resmng.FACTION_TYPE_NEUTRAL = 3

resmng.TYPE_HERO_NORMAL = 1
resmng.TYPE_HERO_CLONE = 2

resmng.TYPE_ENEMY_NORMAL = 1
resmng.TYPE_ENEMY_ELITE = 2
resmng.TYPE_ENEMY_BOSS = 3

resmng.STYPE_ENEMY_NORMAL = 1
resmng.STYPE_ENEMY_BOUNCY_BALL = 2
resmng.STYPE_ENEMY_FLYER = 3
resmng.STYPE_ENEMY_BOSS = 4
resmng.STYPE_ENEMY_BOSS_COMBINE = 5
resmng.STYPE_ENEMY_BOSS_UNIT = 6
resmng.STYPE_ENEMY_FLY_AIMER = 7
resmng.STYPE_ENEMY_JUMP_BALL = 8

resmng.STYPE_TRAP_NORMAL = 1
resmng.STYPE_TRAP_WALL = 2

resmng.DTYPE_TRAP_DESTROYABLE = 1--可摧毁
resmng.DTYPE_TRAP_INVINCIBLE = 2--无敌

resmng.WTYPE_TRAP_WALL_NONE = 0 -- 不阻挡               
resmng.WTYPE_TRAP_WALL_NORMAL = 1-- 全部阻挡
resmng.WTYPE_TRAP_WALL_BULLET = 2-- 只挡子弹
resmng.WTYPE_TRAP_WALL_MOVE = 3-- 只挡移动

resmng.STYPE_SCENE_ITEM_NORMAL = 1
resmng.STYPE_SCENE_ITEM_FLY = 2

resmng.SPAWN_MAX_POT = 6

resmng.TYPE_SPAWN_SINGLE = 1
resmng.TYPE_SPAWN_MULTI = 2
resmng.TYPE_SPAWN_WAVE = 3

resmng.TYPE_DROP_GOLD = 1
resmng.TYPE_DROP_BUFF = 2
resmng.TYPE_DROP_ITEM = 3

resmng.MAP_MODE_NONE = 0
resmng.MAP_MODE_TRANS = 1
resmng.MAP_MODE_BOSS = 2

resmng.MAX_REVIVAL_TIMES = 1  --最大的复活次数

-- 胜利条件
resmng.LR_WIN_ALL_DEAD = 1     -- 消灭所有敌人
resmng.LR_WIN_BOSS_DEAD = 2    -- 击杀Boss
resmng.LR_WIN_TIMEOUT = 3      -- 时间到
resmng.LR_WIN_FORCE_BOSS_DEAD = 4    --强制击杀Boss

-- 失败条件
resmng.LR_LOSE_HERO_DEAD = 1       -- 主角死亡
resmng.LR_LOSE_HOSTAGE_DEAD = 2    -- 人质死亡
resmng.LR_LOSE_TIMEOUT = 3         -- 时间到

resmng.BT_SELF = 1
resmng.BT_NORMAL = 2
resmng.BT_FRIEND = 3
resmng.BT_UNIT = 4
resmng.BT_UNIT_FIRST = 5
resmng.BT_HIT = 6

-- BUFF的组内堆叠类型，针对同一Group
resmng.BUFF_GROUP_NONE = 0
resmng.BUFF_GROUP_COEXIST = 1
resmng.BUFF_GROUP_REPLACE = 2
resmng.BUFF_GROUP_MUTEX = 3

-- 相同BUFF的合并类型，针对同一SN
resmng.BUFF_COMBINE_TIME = 1
resmng.BUFF_COMBINE_EFFECT = 2
resmng.BUFF_COMBINE_TIME_LIMIT = 3

--特效跟随类型
resmng.SFX_NO_FOLLOW = 0      -- 不跟随
resmng.SFX_FOLLOW = 1      -- 跟随位置和旋转
resmng.SFX_FOLLOW_INIT = 2      -- 创建时用Link位置和旋转，不跟随
resmng.SFX_FOLLOW_INIT_XZ = 3    -- 创建时用Link坐标XZ，Y使用gameObject坐标，不跟随
resmng.SFX_FOLLOW_LINK_TARGET = 4 --跟随并连接到目标点
resmng.SFX_PLACE_TO_GROUND = 5      --放置到地板上

--安卓震动参数
resmng.VIBRATE_LIGHT_DURATION = 10      --milliseconds
resmng.VIBRATE_MEDIUM_DURATION = 40      --milliseconds
resmng.VIBRATE_HEAVY_DURATION = 80      --milliseconds
resmng.VIBRATE_RIGID_DURATION = 20      --milliseconds
resmng.VIBRATE_SOFT_DURATION = 80      --milliseconds
resmng.VIBRATE_LIGHT_AMPLITUDE = 10     --强度 0-255
resmng.VIBRATE_MEDIUM_AMPLITUDE = 120     --强度 0-255
resmng.VIBRATE_HEAVY_AMPLITUDE = 255     --强度 0-255
resmng.VIBRATE_RIGID_AMPLITUDE = 255     --强度 0-255
resmng.VIBRATE_SOFT_AMPLITUDE = 40     --强度 0-255

resmng.QUALITY_WHITE = 1
resmng.QUALITY_GREEN = 2
resmng.QUALITY_BLUE = 3
resmng.QUALITY_PURPLE = 4
resmng.QUALITY_ORANGE = 5