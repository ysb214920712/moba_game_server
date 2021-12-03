---@class UILoading : UIBase
UILoading = class("UILoading", UIBase)
local M = UILoading

local PROGRESS_WIDTH = 592
local PROGRESS_HEIGHT = 30

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()

end

function M:init_listener()
	self:add_listener(MID.REFRESH_LOADING_PROGRESS, self.refresh_progress)
end

function M:refresh_progress(progress)
	self.gos.rect_bar_.sizeDelta = U.Vector2(PROGRESS_WIDTH * progress, PROGRESS_HEIGHT)
	self.gos.txt_radio_.text = (progress / 0.9) * 100 .. "%"
end

function M:on_open()
	self.gos.rect_bar_.sizeDelta = U.Vector2(0, PROGRESS_HEIGHT)
	self.gos.txt_radio_.text = "0%"
end

function M:on_close()

end

return M
