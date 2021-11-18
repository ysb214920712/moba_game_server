---@class UIGlobalScreen : UIBase
UIGlobalScreen = class("UIGlobalScreen", UIBase)
local M = UIGlobalScreen

function M:on_create()
    self.gos.loading.transform:SetAsLastSibling()
    self.loading_count = 0
    self.gos.tip:SetActive(false)
end

function M:on_open()

end

function M:on_backkey()
    return
end

function M:show_loading(immediately)
    if immediately then
        self.gos.loading:SetActive(true)

    elseif not self.loading_delay_ then
        self.loading_delay_ = self:add_timer(1.5, function()
            self.gos.loading:SetActive(true)
            self.loading_delay_ = nil
        end)
    end

    self.loading_count = self.loading_count + 1
end

function M:hide_loading(force)
    if force then
        self.loading_count = 0
    end
    self.loading_count = math.max(self.loading_count - 1, 0)
    if self.loading_count > 0 then
        return
    end
    self.gos.loading:SetActive(false)
    if self.loading_delay_ then
        self:remove_timer(self.loading_delay_)
        self.loading_delay_ = nil
    end
end

function M:clear_loading()
    self.loading_count = 0
    self.gos.loading:SetActive(false)
end

function M:show_tipstr(str, delay)
    -- 如果正在显示 那就直接跳过
    if self.tip_str_seq_ then
        return
    end

    local time_delay = 0
    if delay then
        time_delay = delay
    end

    local export = self.gos
    export.tip:SetActive(true)
    export.tip_txt.text = str
    local sequence = self:add_tweener()
    sequence:InsertCallback(0.2, function()
        export.tip:SetActive(true)
    end)

    sequence:Insert(1.2 + time_delay, export.tip_canvas:DOFade(0, 0.5))
    sequence:InsertCallback(1.7 + time_delay, function()
        self.tip_str_seq_ = nil
        export.tip_canvas.alpha = 1
        export.tip:SetActive(false)
        self:remove_tweener(sequence)
    end)
    sequence:SetUpdate(true)

    self.tip_str_seq_ = sequence
end

return M