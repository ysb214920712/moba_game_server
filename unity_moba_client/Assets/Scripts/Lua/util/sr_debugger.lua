---@class SRDebugger
SRDebugger = singleton("SRDebugger")
local M = SRDebugger

function M:init()
    if _ENABLE_GM then
        U.SRGameOptions.initAddFunctions(function()
            self:add_all_options()
        end)
        self.show_combat_log_= true
        self.hide_combat_slider_= false

        self.item_id_ = 1
        self.item_num_ = 1
        self.skill_id_ = 1
        self.hide_combat_ui_ = false
        self.hide_combat_ui_hps_ = false
        self.hide_combat_ui_dmgs_ = false
        self.hide_combat_ui_crts_ = false
        self.hide_combat_ui_heals_ = false

        LOG("[SRDebugger.init] done")
    end
end

--[[
    enum:
        U.SRGameOptionsEnum.String 字符串值设置
        U.SRGameOptionsEnum.Int Int值设置
        U.SRGameOptionsEnum.Float Float值设置
        U.SRGameOptionsEnum.Double Double值设置
        U.SRGameOptionsEnum.Bool 布尔值设置
        U.SRGameOptionsEnum.Function 纯函数响应按钮
    category:
        Option的标签分类的名字显示 可用作GM指令的分类显示
    name：
        Option的显示名
    value:
        Option对应的默认值
    callback：
        Option值修改完成或者点击之后的响应函数
    min_value/max_value/increment:
        Option数字类型修改的最小值/最大值/步长
]]
function M:add_option(enum, category, name, value, callback, min_value, max_value, increment)
    if _ENABLE_GM then
        U.SRGameOptions.AddDebuggerOption(enum, category, name, value, callback, min_value, max_value, increment)
    end
end

local function debugger_callback(option_name, result)
    print("debugger_callback", option_name, result)
end

function M:add_all_options()
    -- self:add_option(U.SRGameOptionsEnum.String, "GM命令", "TestString", "222", debugger_callback)
    -- self:add_option(U.SRGameOptionsEnum.Int, "GM命令", "TestInt", "2", debugger_callback, 2, 12, 5)
    -- self:add_option(U.SRGameOptionsEnum.Float, "GM命令", "TestFloat", "2", debugger_callback, 2, 12, 0.5)
    -- self:add_option(U.SRGameOptionsEnum.Double, "GM命令", "TestDouble", "2", debugger_callback, 2, 12, 1.5)
    -- self:add_option(U.SRGameOptionsEnum.Bool, "GM命令", "TestBool", "true", debugger_callback)
    -- self:add_option(U.SRGameOptionsEnum.Function, "GM命令", "TestFunction", nil, debugger_callback)
    self:add_option(U.SRGameOptionsEnum.Function, "UI窗体", "确认弹窗", nil, function()
        UIDialogBox:open()
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "GM命令", "重启", nil, function()
        util.restart_game()
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "GM命令", "跳过指引", nil, function()
        GuideMgr:debug_complete_all()
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "GM命令", "当前指引id", GuideMgr.data_ and GuideMgr.data_.current or -1, function()
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "GM命令", "开启所有功能", nil, function()
        SysOpenMgr:open_all_sys_for_gm()
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "角色无敌", "开启无敌", nil, function(option_name, result)
        local hero = LevelControl.battle:get_hero()
        if hero then
            hero:use_skill(resmng.SKILL_GM_WUDI)
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "角色无敌", "关闭无敌", nil, function(option_name, result)
        local hero = LevelControl.battle:get_hero()
        if hero then
            hero:use_skill(resmng.SKILL_GM_UNWUDI)
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "道具", "ItemID", self.item_id_, function(option_name, result)
        self.item_id_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏战斗UI", nil, function()
        self.hide_combat_ui_= true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示战斗UI", nil, function()
        self.hide_combat_ui_= false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏血条数字", nil, function()
        self.hide_combat_ui_hps_= true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示血条数字", nil, function()
        self.hide_combat_ui_hps_= false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏伤害数字", nil, function()
        self.hide_combat_ui_dmgs_= true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示伤害数字", nil, function()
        self.hide_combat_ui_dmgs_= false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏暴击数字", nil, function()
        self.hide_combat_ui_crts_= true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示暴击数字", nil, function()
        self.hide_combat_ui_crts_= false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏回血数字", nil, function()
        self.hide_combat_ui_heals_= true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示回血数字", nil, function()
        self.hide_combat_ui_heals_= false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "隐藏摇杆", nil, function()
        resmng.HIDE_COMBAT_JOYSTICK = true
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "隐藏战斗UI", "显示摇杆", nil, function()
        resmng.HIDE_COMBAT_JOYSTICK = false
        local ui_combat = UICombat.Instances[1]
        if ui_combat then
            ui_combat:init_ui()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "技能ID", "SkilllID", self.skill_id_, function(option_name, result)
        self.skill_id_ = result
    end)
    self:add_option(U.SRGameOptionsEnum.Function, "技能", "使用技能", nil, function(option_name, result)
        local hero = LevelControl.battle:get_hero()
        if hero then
            hero:use_skill(self.skill_id_)
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "道具", "Item数量", self.item_num_, function(option_name, result)
        self.item_num_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "道具", "添加Item", nil, function(option_name, result)
        ItemMgr:add(self.item_id_, self.item_num_, resmng.ITEM_WAY_GM)
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "道具", "解锁所有英雄", nil, function(option_name, result)
        for k, v in pairs(resmng.propItemHero) do
            ItemMgr:add(k, {level = 1, num = 1}, resmng.ITEM_WAY_GM)
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "道具", "一刀999", nil, function(option_name, result)
        for k, v in pairs(resmng.propItemEquip) do
            ItemMgr:add(k, {level=1, star=0, num = 1}, resmng.ITEM_WAY_GM)
        end
        for k, v in pairs(resmng.propItemWeapon) do
            if not v.WeaponTrial then
                ItemMgr:add(k, {level=1, star=0, num = 1}, resmng.ITEM_WAY_GM)
            end
        end
    end)

    for k, v in pairs(resmng.propItemWeapon) do
        if not v.WeaponTrial then
            local wid = k
            self:add_option(U.SRGameOptionsEnum.Function, "武器", resmng.language(v.Name), nil, function(option_name, result)
                local weapon = EquipMgr:add_equip(wid)
                EquipMgr:install_equipment(weapon:sid(), resmng.EQUIP_LOCATION_TYPE_WEAPON)
            end)
        end
    end

    self:add_option(U.SRGameOptionsEnum.Int, "主线关卡", "解锁主线关卡", self.chapter_id_ or 1, function(option_name, result)
        LevelMgr:set_main_level_reached_chapter(result, true)
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "关卡", "指定关卡配置", self.level_id_ or 1, function(option_name, result)
        self.level_id_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "关卡", "Map", self.map_id_ or 1, function(option_name, result)
        self.map_id_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "关卡", "Room", self.room_id_ or 1, function(option_name, result)
        self.room_id_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Int, "关卡", "Spawn", self.spawn_id_ or 1, function(option_name, result)
        self.spawn_id_ = result
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "关卡", "测试", nil, function()
        local level_id = self.level_id_ or 0
        local chapter = 1
        local map_id = self.map_id_ or 1
        local room_id = self.room_id_ or 1
        local spawn_ids = {{self.spawn_id_}}

        if level_id > 0 then
            local prop = resmng.get_conf("propLevel", level_id)
            chapter = prop.Chapter
            map_id = prop.Map
            room_id = prop.Room
            spawn_ids = LevelData.gen_level_configs(chapter)[prop.Level].spawn_ids
            if prop.RandomSpawns then
                spawn_ids[1] = spawn_ids[1] or {}
                for _, v in pairs(prop.RandomSpawns) do
                    if math.random(10000) <= v[1] then
                        table.insert(spawn_ids[1], v[2])
                    end
                end
            end
        end

        self.level_config_ = {
            map = map_id,
            room_id = room_id,
            level_id = level_id,
            spawn_ids = spawn_ids,
        }

        LevelControl:create_normal_battle(chapter)
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "多语言", "CN", nil, function(option_name, result)
        resmng.set_locale("CN")
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "多语言", "EN", nil, function(option_name, result)
        resmng.set_locale("EN")
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "Server", "清档", nil, function(option_name, result)
        if Net:is_login() then
            DataSync:stop_auto_sync()
            Rpc.reinit_player()
        end
    end)

    SRDebugger:add_option(U.SRGameOptionsEnum.Int, "测试", "振动测试", 1, function(option_name, result)
        if result == 1 then
            U.VibrateHelper.ContinuousVibrate(2, 1)
        elseif result == 2 then
            U.VibrateHelper.Vibrate()
        elseif result == 3 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.Selection)
        elseif result == 4 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.Success)
        elseif result == 5 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.Warning)
        elseif result == 6 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.Failure)
        elseif result == 7 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.Skill)
        elseif result == 8 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.LightImpact)
        elseif result == 9 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.MediumImpact)
        elseif result == 10 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.HeavyImpact)
        elseif result == 11 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.RigidImpact)
        elseif result == 12 then
            U.VibrateHelper.VibrateByType(U.VibrateTypes.SoftImpact)
        end
    end, 1, 12, 1)
    self:add_option(U.SRGameOptionsEnum.Function, "测试", "激励视频", nil, function(option_name, result)
        local ad = Ads:get_ad()
        if ad then
            ad.onAdShow = function()
                Game:pause_battle()
                BgmPlayer:pause()
            end
            ad.onAdFailedToShow = function()
                Ads:reload_ad(ad, true)
            end
            ad.onAdClose = function(reward)
                ad.onAdShow = nil
                ad.onAdFailedToShow = nil
                ad.onAdClose = nil

                Game:resume_battle()
                BgmPlayer:resume()
            end

            ad:Show()
        end
    end)

    self:add_option(U.SRGameOptionsEnum.Function, "测试", "获取屏幕实际分辨率", nil, function(option_name, result)
        LOG("the canvas size is : %s x %s, screen size is : %s x %s", U.PhoneHelper.UICanvasSize.x, U.PhoneHelper.UICanvasSize.y, U.Screen.width, U.Screen.height)
    end)
end

function M:clean_level_info()
    self.level_id_ = nil
    self.map_id_ = nil
    self.room_id_ = nil
    self.spawn_id_ = nil
end

return M