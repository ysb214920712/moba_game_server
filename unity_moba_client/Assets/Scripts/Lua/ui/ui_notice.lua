---@class UINotice : UIBase
UINotice = class("UINotice", UIBase)
local M = UINotice

function M:on_create()
	self.gos.msg_list_:SetDelegate({
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
	self:add_server_listener("get_sys_msg", self.on_get_msg)
	self:add_listener(MID.REFRESH_SYS_MSG, self.refresh_ui)
end

function M.on_get_msg(name, udata)
	ui_util.clear_loading()
	Messager.send(MID.REFRESH_SYS_MSG, udata)
end

function M:on_open()
	ui_util.show_loading(true)
	U.system_service_proxy.Instance:get_sys_msg()
end

function M:refresh_ui(msg_data)
	local data = {}
	for k, v in pairs(msg_data) do
		table.insert(data, v)
	end
	self.timestamp_ = U.system_service_proxy.Instance.ver_num
	self.msg_count_ = #data
	self.msg_data_ = data
	self.gos.msg_list_:Fill(self.msg_count_, false)
end

function M:fill_item_info(item)
	local data = self.msg_data_[item.index + 1]
	local go = item.gameObject

	local txt_msg = util.get_comp(go.transform:Find("msg"), U.TMP_Text)
	local txt_time = util.get_comp(go.transform:Find("time"), U.TMP_Text)
	txt_msg.text = data
	txt_time.text = os.date("%Y-%m-%d", self.timestamp_)
end

function M:on_close()

end

return M
