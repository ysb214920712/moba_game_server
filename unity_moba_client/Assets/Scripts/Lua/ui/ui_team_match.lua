---@class UITeamMatch : UIBase
UITeamMatch = class("UITeamMatch", UIBase)
local M = UITeamMatch

function M:on_create()
	self.gos.player_list_:SetDelegate({
		OnItemEnter = function(item)
            self:fill_item_info(item)
        end
	})

	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_match_, function()
		ui_util.show_loading(true)
		U.logic_service_proxy.Instance:enter_zone(self.zid_)
	end)

	ui_util.set_clickevent(self.gos.btn_quit_, function()
		if self.is_enter_match_ then
			ui_util.show_loading(true)
			U.logic_service_proxy.Instance:exit_match()
		else
			self:on_exit_match_success(true)
		end
	end)
end

function M:init_listener()
	self:add_server_listener("enter_zone", self.on_enter_zone)
	self:add_listener(MID.ENTER_ZONE_SUCCESS, self.on_enter_zone_success)

	self:add_server_listener("enter_match", self.on_enter_match)
	self:add_listener(MID.ENTER_MATCH_SUCCESS, self.on_enter_match_success)

	self:add_server_listener("user_arrived", self.on_user_arrived)
	self:add_listener(MID.USER_ARRIVED_SUCCESS, self.on_user_arrived_success)
	
	self:add_server_listener("exit_match", self.on_exit_match)
	self:add_listener(MID.EXIT_MATCH_SUCCESS, self.on_exit_match_success)

	self:add_server_listener("user_exit", self.on_user_exit)
	self:add_listener(MID.USER_EXIT_SUCCESS, self.on_user_exit_success)

	self:add_server_listener("game_start", self.on_game_start)
	self:add_listener(MID.GAME_START_SUCCESS, self.on_game_start_success)
end

function M.on_game_start(name, udata)
	Messager.send(MID.GAME_START_SUCCESS, udata)
end

function M:on_game_start_success(udata)
	for i = 0, udata.Count - 1 do
		print(udata[i].heroid)
	end

	BattleMgr:enter_battle(UIBattle, function()
		
	end)
end

function M.on_user_exit(name, udata)
	Messager.send(MID.USER_EXIT_SUCCESS, udata)
end

function M:on_user_exit_success(udata)
	self:remove_player_list(udata)
end

function M:remove_player_list(seatid)
	for k, v in pairs(self.player_list_) do
		if v.seatid and v.seatid == seatid then
			table.remove(self.player_list_, k)
			self.player_count_ = self.player_count_ - 1
		end
	end
	self.gos.player_list_:Fill(self.player_count_, false)
end

function M.on_exit_match(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.EXIT_MATCH_SUCCESS, udata)
end

function M:on_exit_match_success(success)
	if success then
		self.is_enter_match_ = false
		U.ugame.Instance.zid = -1
		self:close()
	else
		ui_util.show_tipstr("离开房间失败,游戏即将开始")
	end
end

function M.on_user_arrived(name, udata)
	Messager.send(MID.USER_ARRIVED_SUCCESS, udata)
end

function M:on_user_arrived_success(udata)
	local player = {}
	player.is_mine = false
	player.seatid = udata.seatid
	player.head = udata.uface
	player.name = udata.unick
	player.lv = 1
	player.grade = 10
	self:update_player_list(player)
end

function M.on_enter_match(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.ENTER_MATCH_SUCCESS, udata)
end

function M:on_enter_match_success(success)
	if success then
		self.is_enter_match_ = true
		local player = {}
		player.is_mine = true
		player.head = U.ugame.Instance.uface
		player.name = U.ugame.Instance.unick
		player.lv = 1
		player.grade = 10
		self:update_player_list(player)
	end
end

function M.on_enter_zone(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.ENTER_ZONE_SUCCESS, udata)
end

function M:on_enter_zone_success()
	self.gos.btn_match_.interactable = false
end

function M:on_open(zid)
	self.player_list_ = {}
	self.player_count_ = 0
	self.zid_ = zid
	self.gos.btn_match_.interactable = true
	self.is_enter_match_ = false
	self.gos.player_list_:Fill(self.player_count_, false)
end

function M:update_player_list(player)
	for k, v in pairs(self.player_list_) do
		if v == player then
			return
		end
	end

	table.insert(self.player_list_, player)
	self.player_count_ = self.player_count_ + 1
	self.gos.player_list_:Fill(self.player_count_, false)
end

function M:fill_item_info(item)
	local data = self.player_list_[item.index + 1]
	local go = item.gameObject

	local txt_name = util.get_comp(go.transform:Find("unick"), U.TMP_Text)
	local txt_lv = util.get_comp(go.transform:Find("ulevel"), U.TMP_Text)
	local txt_grade = util.get_comp(go.transform:Find("ugrade"), U.TMP_Text)
	local img_grade = util.get_comp(go.transform:Find("grade"), U.Image)
	local img_head = util.get_comp(go.transform:Find("head_bg/head"), U.Image)

	txt_name.text = data.name
	txt_lv.text = "Lv." .. data.lv
	ui_util.set_sprite(img_head, string.format(resmng.HEAD_FILE_PATH, data.head))
	--todo txt_grade img_grade
end

function M:on_close()
	self.player_list_ = {}
	self.player_count_ = 0
end

function M:on_layer_mask_click_handler()

end

return M
