---@class UIUserInfo : UIBase
UIUserInfo = class("UIUserInfo", UIBase)
local M = UIUserInfo

function M:on_create()
	self.usex_ = 0
	self.uface_ = 0

	self.gos.head_list_:SetDelegate({
		OnItemEnter = function(item)
            self:fill_items(item)
        end,
	})

	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_close_, function()
		self:close()
	end)

	ui_util.set_clickevent(self.gos.btn_rename_, function()
		self:on_editprofile_commit()
	end)

	ui_util.set_clickevent(self.gos.btn_head_, function()
		self:shwo_head_list()
	end)

	ui_util.set_clickevent(self.gos.btn_man_, function()
		self:change_sex(0)
	end)

	ui_util.set_clickevent(self.gos.btn_woman_, function()
		self:change_sex(1)
	end)

	ui_util.set_clickevent(self.gos.btn_bind_, function()
		UIGuestBind:open()
	end)

	ui_util.set_clickevent(self.gos.btn_out_, function()
		self:on_btn_out_click()
	end)
end

function M:on_btn_out_click()
	ui_util.show_loading(true)
	U.user_login.Instance:user_login_out()
end

function M:on_editprofile_commit()
	if self.gos.input_.text == "" then
		self:close()
		return
	end

	ui_util.show_loading(true)
	U.user_login.Instance:edit_profile(self.gos.input_.text, self.uface_, self.usex_)
	self:close()
end

function M:change_sex(sex)
	self.usex_ = sex
	
	if self.usex_ == 0 then
		self.gos.btn_man_.transform:Find("on").gameObject:SetActive(true)
		self.gos.btn_woman_.transform:Find("on").gameObject:SetActive(false)
	elseif self.usex_ == 1 then
		self.gos.btn_man_.transform:Find("on").gameObject:SetActive(false)
		self.gos.btn_woman_.transform:Find("on").gameObject:SetActive(true)
	end
end

function M:init_listener()
	self:add_listener(MID.ACCOUNT_BIND_RESULT, self.refresh_ui)
	self:add_server_listener("login_out", self.on_login_out)
end

function M.on_login_out(name, udata)
	ui_util.clear_loading()
	util.restart_game()
end

function M:on_open()
	self.uinfo_ = U.ugame.Instance
	self.uface_ = self.uinfo_.uface
	self.usex_ = self.uinfo_.usex
	self:refresh_ui()
end

function M:refresh_ui()
	self.gos.btn_bind_.gameObject:SetActive(self.uinfo_.is_guest)
	self.gos.input_.text = self.uinfo_.unick
	ui_util.set_sprite(self.gos.img_head_, string.format(resmng.HEAD_FILE_PATH, self.uface_))
	self:change_sex(self.usex_)
end

function M:on_close()

end

function M:shwo_head_list()
	self.gos.head_select_:SetActive(true)
	local head_list = {}
	for i = 0, 13, 1 do
		table.insert(head_list, {
			id = i,
			path = string.format(resmng.HEAD_FILE_PATH, i),
		})
	end

	self.list_count_ = #head_list
	self.path_list_ = head_list
	self.gos.head_list_:Fill(self.list_count_, false)
end

function M:fill_items(item)
	local data = self.path_list_[item.index + 1]
	local go = item.gameObject
	local img_head = util.get_comp(go.transform:Find("head"), U.Image)
	local btn = util.get_comp(go.transform, U.Button)
	local select = go.transform:Find("select").gameObject

	ui_util.set_sprite(img_head, data.path)
	select:SetActive(data.id == self.uface_)
	ui_util.set_clickevent(btn, function()
		self.uface_ = data.id
		ui_util.set_sprite(self.gos.img_head_, data.path)
		self.gos.head_select_:SetActive(false)
	end)
end

return M
