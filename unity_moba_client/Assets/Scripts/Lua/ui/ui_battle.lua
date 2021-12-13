---@class UIBattle : UIBase
UIBattle = class("UIBattle", UIBase)
local M = UIBattle

function M:on_create()
	self:init_btn_clickevent()
	self:init_listener()
end

function M:init_btn_clickevent()

end

--------------------------------------------Listener----------------------------------
function M:init_listener()
	self:add_server_listener("hp_ui_sync", self.on_hp_changed)
	self:add_listener(MID.REFRESH_BATTLE_HP_UI, self.on_refresh_hp)
	self:add_server_listener("exp_ui_sync", self.on_exp_changed)
	self:add_listener(MID.REFRESH_BATTLE_EXP_UI, self.on_refresh_exp)
end

function M.on_hp_changed(name, udata)
	Messager.send(MID.REFRESH_BATTLE_HP_UI, udata)
end

function M:on_refresh_hp(udata)
	local hp = udata.hp;
	local max_hp = udata.max_hp;
	self.gos.img_hp_.fillAmount = hp / max_hp;
	self.gos.txt_hp_.text = hp .. "/" .. max_hp;
end

function M.on_exp_changed(name, udata)
	Messager.send(MID.REFRESH_BATTLE_EXP_UI, udata)
end

function M:on_refresh_exp(udata)
	local exp = udata.exp;
	local total = udata.total;
	self.gos.img_exp_.fillAmount = exp / total;
	self.gos.txt_exp_.text = exp .. "/" .. total;
end
--------------------------------------------Listener----------------------------------

function M:on_open()
	self:init_ui()
	self:init_zygote()
end

function M:init_ui()

end

function M:init_zygote()
	U.GameZygote.Instance:SetJoystick(self.gos.joystick_)
	U.GameZygote.Instance:Init();
end

function M:on_close()

end

return M
