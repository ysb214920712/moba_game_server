---@class Setting
Setting = Setting or {}
local M = Setting

local _Sets = {
    enable_music = true,
    enable_sound = true,
    enable_shake = true,
    high_fps = true,
    damage_poped = true,
    locale = resmng.get_locale(),
}

function M:init()
    self.db_ = Database.new_setting_db("set/public")
    self.db_:load_to(_Sets,Database.merge_fully)

    LOG("[Setting.init] done")
end


function M:get_locale()
    return resmng.get_locale()
end

function M:set_locale(value)
    resmng.set_locale(value)
end

function M:is_sound_enable()
    return _Sets.enable_sound
end

function M:get_music_volume()
    return resmng.DEFAULT_BGM_VOLUME
end

function M:is_music_enable()
    return _Sets.enable_music
end

function M:is_shake_enable()
    return _Sets.enable_shake
end

function M:enable_shake(enable)
    _Sets.enable_shake = enable
    self.db_:save(_Sets)
    U.VibrateHelper.SetVibrateEnabled(enable)
    INFO('set shake enable: %s', enable)
end

function M:enable_sound(enable)
    INFO('set sound enable: %s', enable)

    _Sets.enable_sound = enable
    U.AudioMgr.Mute(not enable)

    if not Game:is_battle_paused() then -- battle resume will check audio
        U.AudioListener.pause = not enable
    end

    self.db_:save(_Sets)
end

function M:enable_music(enable)
    INFO('set music enable: %s', enable)

    _Sets.enable_music = enable
    BgmPlayer:set_enable(enable)
    self.db_:save(_Sets)
end

function M:is_high_fps_enable()
    return _Sets.high_fps
end

function M:enable_high_fps(enable)
    if enable then
        U.QualitySettings.vSyncCount = 0;
        U.Application.targetFrameRate = 60;
    else
        U.QualitySettings.vSyncCount = 2;
        if GlobalInfo.is_ios then
            U.Application.targetFrameRate = -1;
        end
    end
    _Sets.high_fps = enable

    self.db_:save(_Sets)
end

function M:is_damage_pop_enable(self)
    return _Sets.damage_poped
end

function M:enable_damage_pop(enable)
    _Sets.damage_poped = enable
    Messager.send(MID.UI_POP_DAMAGE_SET_CHANGED,enable)
    self.db_:save(_Sets)
end

return M