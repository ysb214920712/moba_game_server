---@class UIBattle : UIBase
UIBattle = class("UIBattle", UIBase)
local M = UIBattle

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()

end

function M:init_listener()

end

function M:on_open()
	self:init_ui()
	self:init_zygote()
end

function M:init_ui()

end

function M:init_zygote()
	U.GameZygote.Instance:SetJoystick(self.gos.joystick_)
	U.GameZygote.Instance:Init();
end

function M:on_close()

end

return M
