---@class UIGuestBind : UIBase
UIGuestBind = class("UIGuestBind", UIBase)
local M = UIGuestBind

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_close_, function()
		self:close()
	end)

	ui_util.set_clickevent(self.gos.btn_commit_, function()
		self:on_commit_btn_click()
	end)
end

function M:init_listener()
	self:add_server_listener("upgrade_account_return", self.on_upgrade_account)
	self:add_listener(MID.ACCOUNT_BIND_RESULT, self.close)
end

function M.on_upgrade_account(name, udata)
	if udata == 1 then
		ui_util.clear_loading()
		ui_util.show_tipstr("账号绑定成功")
		Messager.send(MID.ACCOUNT_BIND_RESULT)
	else
		ui_util.clear_loading()
		ui_util.show_tipstr("账号绑定失败")
	end
end

function M:on_open()

end

function M:on_close()

end

function M:on_commit_btn_click()
	if not U.ugame.Instance.is_guest then
		return
	end

	if self.gos.uname_input_.text == ""
	or self.gos.upwd_input_.text == ""
	or self.gos.upwd_input_.text ~= self.gos.upwd_again_input_.text then
		return
	end

	local md5_pwd = U.GHelper.Md5Sum(self.gos.upwd_input_.text)
	U.user_login.Instance:do_account_upgrade(self.gos.uname_input_.text, md5_pwd)
	ui_util.show_loading(true)
end

return M
