---@class Game : BehaviourBridge
Game = singleton("Game", BehaviourBridge)
local M = Game

M.RealTimer = Timer.new()
M.ScaleTimer = Timer.new()

local state_id = 0
local function get_state_id()
    state_id = state_id + 1
    return state_id
end

local _State = {
    BeginLoading = get_state_id(),
    CheckEngineUpdate = get_state_id(),
    LoginAccount = get_state_id(),
    LoadGame = get_state_id(),
    EndLoading = get_state_id(),
    CheckNewNotice = get_state_id(),
    CheckSignData = get_state_id(),
    CheckUnfinishBattle = get_state_id(),
    Running = get_state_id(),
}

function M:init(go)
    LOG("Game.init start")
    self.pause_count_ = 0
    self.load_over_ = false

    self:bind(go)

    UIMgr:init()
    UIModelPool:init()
    Setting:init()

    SRDebugger:init()
    TimeScaleMgr:init()

    self:_change_state(_State.BeginLoading)

    LOG("Game.init done")
end

function M:load_game_over()
    User:init()

    self.load_over_ = true
end

function M:bridge_type()
    return U.LuaBridgeType.Application
end

function M:bind_behaviour_funcs()
    local funcs = BehaviourBridge.bind_behaviour_funcs(self)
    local Func = U.UnityBehaviourFunc
    funcs[Func.Update] = self:wrap_func("update")
    funcs[Func.OnApplicationPause] = self:wrap_func("on_pause")
    funcs[Func.OnApplicationQuit] = self:wrap_func("on_quit")
    funcs[Func.OnApplicationFocus] = self:wrap_func("on_focus")

    return funcs
end

function M:start()
    LOG("game start")
end

function M:update(delta_time)
    self.RealTimer:tick(U.Time.unscaledDeltaTime)
    self.ScaleTimer:tick(delta_time)

    TimeScaleMgr:update(U.Time.unscaledDeltaTime)
    Messager.update(delta_time)
end

function M:on_pause(pause)
    LOG("game on_pause")

    if pause then

    else
        if self.load_over_ then
            Messager.send(MID.GAME_RESUME)
        end

        self.pause_for_ad_ = false
    end
end

function M:on_quit()
    LOG("game on_quit")
end

function M:on_focus()

end

function M:is_battle_paused()
    return self.pause_count_ > 0
end

function M:pause_battle()
    TimeScaleMgr:pause()
    -- U.AudioListener.pause = true

    self.pause_count_ = self.pause_count_ + 1
    INFO("[Game.pause] %s %s", self.pause_count_, debug.traceback())
end

function M:resume_battle()
    INFO("[Game.resume] %s %s", self.pause_count_, debug.traceback())
    self.pause_count_ = self.pause_count_ - 1

    if self.pause_count_ == 0 then
        TimeScaleMgr:resume()
        if Setting:is_sound_enable() then
            -- U.AudioListener.pause = false
        end
    elseif self.pause_count_ < 0 then
        self.pause_count_ = 0
        INFO("[Game] pause/resume mismatch.")
    end
end

function M:reset_timescale_before_restart()
    U.Time.timeScale = 1
    if Setting:is_sound_enable() then
        U.AudioListener.pause = false
    end
end

function M:_change_state(new_state)
    self.cur_state_ = new_state
    if new_state == _State.BeginLoading then
        self.next_state_ = _State.CheckEngineUpdate
        self:goto_next_state()
    elseif new_state == _State.CheckEngineUpdate then
        self.next_state_ = _State.LoginAccount
        self:goto_next_state()
    elseif new_state == _State.LoginAccount then
        self.next_state_ = _State.LoadGame
        self:goto_next_state()
    elseif new_state == _State.LoadGame then
        self:load_game_over()

        coroutine.wrap(function()
            Yield(U.XLoader.LoadScene("home_scene"))
            self.next_state_ = _State.EndLoading
            self:goto_next_state()
        end)()

    elseif new_state == _State.EndLoading then
        self.next_state_ = _State.Running
        self:goto_next_state()
    elseif new_state == _State.CheckNewNotice then
        self.next_state_ = _State.CheckUnfinishBattle
        self:goto_next_state()
    elseif new_state == _State.CheckUnfinishBattle then
        self.next_state_ = _State.CheckSignData
        self:goto_next_state()
    elseif new_state == _State.CheckSignData then
        self.next_state_ = _State.Running
        self:goto_next_state()
    elseif new_state == _State.Running then
        self.next_state_ = nil
        Messager.send(MID.ENTER_GAME_RUNNING)
    end
end

function M:goto_next_state()
    if self.next_state_ then
        local next_state = self.next_state_
        LOG("[Game.goto_next_state] %d", next_state)
        self:_change_state(self.next_state_)
        LOG("[Game.goto_next_state] %d done", next_state)
    end
end

function M:is_finish_loading()
    return self.cur_state_ > _State.EndLoading
end

function M:is_in_running_state()
    return self.cur_state_ == _State.Running
end

return M