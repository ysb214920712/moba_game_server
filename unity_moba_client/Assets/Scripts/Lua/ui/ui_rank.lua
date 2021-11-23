---@class UIRank : UIBase
UIRank = class("UIRank", UIBase)
local M = UIRank

function M:on_create()
    self.gos.rank_list_:SetDelegate({
        OnItemEnter = function(item)
            self:fill_item_info(item)
        end
    })

	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()
	ui_util.set_clickevent(self.gos.btn_close_, function()
		self:close()
	end)
end

function M:init_listener()
	self:add_server_listener("get_rank_list", self.on_get_rank_list)
	self:add_listener(MID.REFRESH_RANK_LIST, self.refresh_ui)
end

function M.on_get_rank_list(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.REFRESH_RANK_LIST, udata)
end

function M:on_open()
	ui_util.show_loading(true)
	U.system_service_proxy.Instance:get_world_uchip_rank_info()
end

function M:on_close()

end

function M:refresh_ui(rank_data)
	local data = {}
	for k, v in pairs(rank_data) do
		table.insert(data, v)
	end
    self.rank_data_ = data
	self.rank_count_ = #data
	self.gos.rank_list_:Fill(self.rank_count_, false)
end

function M:fill_item_info(item)
	local data = self.rank_data_[item.index + 1]
	local rank = item.index + 1
	local go = item.gameObject

	local txt_rank = util.get_comp(go.transform:Find("rank"), U.TMP_Text)
	local img_head = util.get_comp(go.transform:Find("head_bg/head"), U.Image)
	local txt_unick = util.get_comp(go.transform:Find("unick"), U.TMP_Text)
	local txt_uchip = util.get_comp(go.transform:Find("uchip"), U.TMP_Text)

	txt_rank.text = rank
	txt_unick.text = data.unick
	txt_uchip.text = data.uchip
	ui_util.set_sprite(img_head, string.format(resmng.HEAD_FILE_PATH, data.uface))
end

return M