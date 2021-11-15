---@class Messager
Messager = class("Messager")
local M = Messager

local _Messagers = {}
local _id = 0
local _Instance = nil
local _DelayMsgrs = {}

function M:ctor(owner)
    _id = _id + 1

    self.id_ = _id
    self.owner_ = owner
    self.listeners_ = {}
    self.wait_cbs_ = {}
    self.active_ = true
end

---@return Messager
function M:get_instance()
    if not _Instance then
        _Instance = self.new()
    end
    return _Instance
end

function M:dispose()
    for msg_name, _ in pairs(self.listeners_) do
        self._remove_messager(msg_name, self)
    end
    self.listeners_ = {}
end

function M:add(msg_name, callback)
    if msg_name and callback then
        local listener = self.listeners_[msg_name] or {}
        table.insert(listener, {callback, false})
        self.listeners_[msg_name] = listener

        self._add_messager(msg_name, self)
    else
        error("[Messager.add_listener param error!")
    end
end

function M:add_async(msg_name, callback)
    if msg_name and callback then
        local listener = self.listeners_[msg_name] or {}
        table.insert(listener, {callback, true})
        self.listeners_[msg_name] = listener

        self._add_messager(msg_name, self)
    else
        error("[Messager.add_async_listener param error!")
    end
end

function M:remove(msg_name, callback)
    if callback then
        local listener = self.listeners_[msg_name] or {}
        for k, v in table_util.pairs_descend(listener) do
            if v[1] == callback then
                table.remove(listener, k)
            end
        end
    else
        if self.listeners_[msg_name] then
            self.listeners_[msg_name] = nil
            self._remove_messager(msg_name, self)
        end
    end
end

function M:set_active(active)
    self.active_ = active
end

function M:is_active()
    return self.active_
end

local function message_call_error_handler(msg)
    ELOG("[Messager.send] error: %s\n %s", msg, debug.traceback())
end

function M:receive(msg_name, ...)
    if not self.active_ then
        return
    end
    
    local listener = self.listeners_[msg_name]
    
    if listener then
        local async_num = 0
        for idx = #listener, 1, -1 do
            if listener[idx][2] == false then
                xpcall(listener[idx][1], message_call_error_handler, self.owner_, ...)
            else
                self.wait_cbs_[listener[idx][1]] = table.pack(...)
                async_num = async_num + 1
            end
        end
        if async_num > 0 then
            _DelayMsgrs[self] = true
        end
    end
end

function M:delay_trigger()
    if not self.active_ then
        self.wait_cbs_ = {}
        return
    end

    for cb, args in pairs(self.wait_cbs_) do
        xpcall(cb, message_call_error_handler, self.owner_, table.unpack(args))
    end
    self.wait_cbs_ = {}
end

----------------------------------------------------------------------------------------------------------
-- Messager method

function M._add_messager(msg_name, msgr)
	local msgs = _Messagers[msg_name]
	if not msgs then
        msgs= {}
        _Messagers[msg_name] = msgs
    end
    msgs[msgr.id_] = msgr
end

function M._remove_messager(msg_name, msgr)
	local msgs = _Messagers[msg_name]
    if msgs then
        msgs[msgr.id_] = nil
	end
end

function M.send(msg_name, ...)
	if _Messagers[msg_name] then
        local msgrs = _Messagers[msg_name]
        for id, msgr in pairs(msgrs) do
            msgr:receive(msg_name, ...)
        end
	end
end

function M.update(dt)
    for msgr, _ in pairs(_DelayMsgrs) do
        msgr:delay_trigger()
    end
    _DelayMsgrs = {}
end

return M