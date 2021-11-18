local resmng = resmng

resmng.NIL = nil
resmng.TRUE = true
resmng.FALSE = false

resmng.DATA_ONLY               = 49
resmng.BASE_VAL_OFFSET         = 100
resmng.ADD_VAL_OFFSET          = 200
resmng.MUL_VAL_OFFSET          = 300

--操作符
resmng.Eq = 1      -- ==
resmng.Neq = 2     -- ~=
resmng.Gt = 3      -- >
resmng.Gte = 4     -- >=
resmng.Lt = 5      -- <
resmng.Lte = 6     -- <=
resmng.Multiple = 7-- 是某个数的倍数
resmng.NMultiple = 8-- 不是某个数的倍数

resmng.GUIDE_TRIGGER_OPEN_UI = 1
resmng.GUIDE_TRIGGER_CLOSE_UI = 2