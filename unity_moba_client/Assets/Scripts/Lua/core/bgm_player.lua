---@class BgmPlayer
BgmPlayer = {}
local M = BgmPlayer

function M:init()
    local audio_source =  util.get_comp(GlobalInfo.control_object, U.AudioSource)
    audio_source.volume = 0
    audio_source.ignoreListenerPause = true
    
    self.audio_source_ = audio_source
    self.now_playing_ = ""

    self:set_volume(Setting:get_music_volume())
    self:set_enable(Setting:is_music_enable())

    LOG("[BgmPlayer.init] done")
end

function M:play(bgm, loop, time, ease)
    if bgm == nil  or bgm == self.now_playing_ then 
        return 
    end
    
    ease = ease or U.Ease.OutCubic
    time = time or 1
    if loop == nil then loop = true end

    local audio_source = self.audio_source_
    if self.now_playing_ ~= "" then
        U.DOTween.Kill(audio_source, false)
        audio_source:DOFade(0, time):SetEase(ease):SetUpdate(true):OnComplete(function()
            self:_load(bgm, audio_source, loop, time, ease)
        end)
    else
       
        self:_load(bgm, audio_source, loop, time, ease)
    end
    self.now_playing_ = bgm
end

function M:get_now_playing()
    return self.now_playing_
end

function M:_load(bgm, audio_source, loop, time, ease)
    if bgm ~= self.now_playing_ and self.now_playing_ ~= "" then return end

    U.XLoader.LoadAsync(bgm, typeof(U.AudioConfig), function(config)
        if self.now_playing_ == bgm then
            if config then
                audio_source.clip = config.clip
                audio_source.loop = loop
                audio_source:Play()
                U.DOTween.Kill(audio_source, false)
                audio_source:DOFade(self.volume_, time):SetEase(ease)
            else
                audio_source:Stop()
            end
        end
    end)
end

function M:set_volume(value)
    self.volume_ = value
    self.audio_source_.volume = value
end

function M:get_volume()
    return self.audio_source_.volume
end

function M:set_enable(enable)
    if not enable then
        self.now_playing_ = ""
    end
    self.enabled_ = enable
    self.audio_source_.mute = not enable
end

function M:is_enable()
    return self.enabled_
end

function M:pause()
    self.audio_source_:Pause()
end

function M:resume()
    self.audio_source_:UnPause()
end

return M