---@class UIEntrance : UIBase
UIEntrance = class("UIEntrance", UIBase)
local M = UIEntrance

local PROGRESS_BAR_WIDTH = 144
local PROGRESS_BAR_HEIGHT = 20

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_uinfo_, function()
		UIUserInfo:open()
	end)
end

function M:init_listener()
	self:add_server_listener("sync_uinfo", self.sync_uinfo)
	self:add_server_listener("sync_ugame_info", self.sync_ugame_info)
	self:add_listener(MID.REFRESH_USER_INFO, self.refresh_uinfo)
	self:add_async_listener(MID.REFRESH_USER_INFO, self.check_login_bonues)
end

function M.sync_ugame_info(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.REFRESH_USER_INFO)
end

function M.sync_uinfo(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.REFRESH_USER_INFO)
end

function M:refresh_uinfo()
	self.gos.txt_name_.text = U.ugame.Instance.unick;
	ui_util.set_sprite(self.gos.img_head_, string.format(resmng.HEAD_FILE_PATH, U.ugame.Instance.uface))

	self.gos.txt_diamond_val_.text = U.ugame.Instance.ugame_info.uchip2
	self.gos.txt_coin_val_.text = U.ugame.Instance.ugame_info.uchip

	local ulevel, now_exp, next_exp = U.ulevel.Instance:get_level_info(U.ugame.Instance.ugame_info.uexp)
	self.gos.txt_lv_.text = "Lv." .. ulevel
	self.gos.txt_exp_.text = now_exp .. "/" .. next_exp
	local radio = math.min(now_exp/next_exp, 1)
	self.gos.rect_bar_.sizeDelta = U.Vector2(PROGRESS_BAR_WIDTH * radio, PROGRESS_BAR_HEIGHT)
end

function M:check_login_bonues()
	local bonues_data = U.ugame.Instance.ugame_info
	if bonues_data.bonues_status == 0 and not self.is_open_login_bonues_ then
		UILoginBonues:open()
		self.is_open_login_bonues_ = true
	end
end

function M:on_open()
	self.is_open_login_bonues_ = false
	self.sync_uinfo("sync_uinfo")
	self.sync_ugame_info("sync_ugame_info")
end

function M:on_close()

end

return M
