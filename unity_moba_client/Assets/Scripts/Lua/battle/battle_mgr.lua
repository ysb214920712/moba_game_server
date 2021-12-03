---@class BattleMgr
BattleMgr = singleton("BattleMgr")
local M = BattleMgr

---@param adapter AdapterBase
---@param ui UIBase
---@param on_succ function
function M:enter_battle(ui, on_succ)
    UILoading:open(function()
        UIMgr:close_ui_when_switch_battle()
        coroutine.wrap(function()
            self:co_prepare_res()
            ui:open(function(window)
                self.battle_ui_ = window
                UILoading:close()
                unload_unused_memory_on_next_frame()
                -- battle:start()
            end)

            if on_succ then
                on_succ()
            end
        end)()
    end)
end

function M:exit_battle()
    TimeScaleMgr:add_time_scale(1)
    UILoading:open(function(ui)
        UIMgr:close_ui_when_switch_battle()
        self.battle_ui_ = nil
        coroutine.wrap(function()
            -- if self.battle then
            --     self.battle:destroy()
            -- end

            U.DOTween.Kill(U.Camera.main, true)
            Yield(U.XLoader.LoadScene("home_scene"))

            UIEntrance:open(function(ui)
                UILoading:close()
                unload_unused_memory_on_next_frame()
            end)
        end)()
    end)
end

function M:co_prepare_res()
    U.DOTween.Kill(U.Camera.main, true)
    Yield(U.XLoader.LoadSceneAsync("game_scene", function(done)
        if not done then
            ELOG("LoadSceneAsync %s %s", "game_scene"," failed!")
            return
        end
    end), function(progress)
        Messager.send(MID.REFRESH_LOADING_PROGRESS, progress) 
    end)
end

return M