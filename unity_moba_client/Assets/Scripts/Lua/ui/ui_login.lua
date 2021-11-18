---@class UILogin : UIBase
UILogin = class("UILogin", UIBase)
local M = UILogin

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_guest_login_, function()
		U.user_login.Instance:guest_login()
	end)

	ui_util.set_clickevent(self.gos.btn_login_, function()
		self:on_login_btn_click()
	end)
end

function M:init_listener()
	self:add_server_listener("login_success", self.on_login_success)
	self:add_listener(MID.LOGIN_ACCOUNT_SUCCESS, self.close)
end

function M.on_login_success(str, udata)
	Messager.send(MID.LOGIN_ACCOUNT_SUCCESS)
end

function M:on_login_btn_click()
	if self.gos.uname_input_.text == "" or self.gos.pwd_input_.text == "" then
		return
	end

	U.user_login.Instance:uname_login(self.gos.uname_input_.text, self.gos.pwd_input_.text)
end

function M:on_open(cb)
	self.callback_ = cb
end

function M:on_close()
	if self.callback_ then
		self.callback_()
	end
end

return M
