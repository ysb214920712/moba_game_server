---@class MID
MID = {}
local MID = MID

-----------------------------------Game-------------------------------------
MID.GAME_RESUME = 0
MID.ENTER_GAME_RUNNING = 1
MID.GUIDE_TRIGGER = 2
-----------------------------------Game-------------------------------------
-----------------------------------UIBase-----------------------------------
MID.UI_SHOW_BEGIN = 1000
MID.UI_OPEN = 1001
MID.UI_CLOSE = 1002
MID.SHOW_LOWER_UI = 1003
MID.HIDE_LOWER_UI = 1004
-----------------------------------UIBase-----------------------------------
-----------------------------------NetToUI----------------------------------
MID.REFRESH_USER_INFO = 600
MID.LOGIN_ACCOUNT_SUCCESS = 601
MID.ACCOUNT_BIND_RESULT = 602
MID.LOGIN_LOGIC_SUCCESS = 603

-----------------------------------NetToUI----------------------------------
-----------------------------------UI---------------------------------------
MID.REFRESH_RANK_LIST = 700
MID.REFRESH_SYS_MSG = 701
MID.ENTER_ZONE_SUCCESS = 702
MID.ENTER_MATCH_SUCCESS = 703
MID.USER_ARRIVED_SUCCESS = 704
MID.EXIT_MATCH_SUCCESS = 705
MID.USER_EXIT_SUCCESS = 706
MID.GAME_START_SUCCESS = 707
MID.REFRESH_LOADING_PROGRESS = 708
-----------------------------------UI---------------------------------------