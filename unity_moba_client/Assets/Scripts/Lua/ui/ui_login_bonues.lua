---@class UILoginBonues : UIBase
UILoginBonues = class("UILoginBonues", UIBase)
local M = UILoginBonues

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_close_, function()
		self:close()
	end)

	ui_util.set_clickevent(self.gos.btn_get_, function()
		self:get_bonues()
	end)
end

function M:init_listener()

end

function M:on_open()
	self.bonues_data_ = U.ugame.Instance.ugame_info
	self:refresh_ui()
end

function M:on_close()

end

function M:refresh_ui()
	local day = self.bonues_data_.days
	local status = self.bonues_data_.bonues_status
	self.gos.txt_title_.text = "连续登陆" .. day .. "天"
	for i = 1, 5, 1 do
		local day_go = self.gos.days_list_.transform:Find("day"..i)
		local pass_go = day_go.transform:Find("pass").gameObject
		local today_go = day_go.transform:Find("today").gameObject
		today_go:SetActive(day == i)
		pass_go:SetActive(day > i or (day == i and status == 1))
	end
	self.gos.btn_get_.interactable = status == 0
	self.gos.txt_get_.text = status == 0 and "领取" or "已领取"
end

function M:get_bonues()
	ui_util.show_loading(true)
	U.system_service_proxy.Instance:recv_login_bonues()
	self:close()
end

return M
