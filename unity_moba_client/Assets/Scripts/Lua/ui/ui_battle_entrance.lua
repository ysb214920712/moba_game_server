---@class UIBattleEntrance : UIBase
UIBattleEntrance = class("UIBattleEntrance", UIBase)
local M = UIBattleEntrance

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_close_, function()
		self:close()
	end)

	ui_util.set_clickevent(self.gos.btn_lpl_, function()
		UITeamMatch:open()
	end)

	ui_util.set_clickevent(self.gos.btn_ldl_, function()
		UITeamMatch:open()
	end)
end

function M:init_listener()

end

function M:on_open()

end

function M:on_close()

end

return M
