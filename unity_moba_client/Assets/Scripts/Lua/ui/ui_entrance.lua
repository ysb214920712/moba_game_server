---@class UIEntrance : UIBase
UIEntrance = class("UIEntrance", UIBase)
local M = UIEntrance

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
	
	self.gos.txt_lv_.text = "Lv." .. U.ugame.Instance.ugame_info.uvip
	self.gos.txt_exp_.text = U.ugame.Instance.ugame_info.uexp
	self.gos.txt_diamond_val_.text = U.ugame.Instance.ugame_info.uchip2
	self.gos.txt_coin_val_.text = U.ugame.Instance.ugame_info.uchip
end

function M:on_open()
	self.sync_uinfo("sync_uinfo")
	self.sync_ugame_info("sync_ugame_info")
end

function M:on_close()

end

return M
