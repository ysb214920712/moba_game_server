---@class Timer
Timer = class("Timer")
local M = Timer

local _TM_Pool = {}

function M:ctor()
	self.list_ = {}
	self.add_list_ = {}
	self.sn_map_ = {}
	self.now_ = 0
	self.looping_ = false
	self.next_sn_ = 1
end

---@param delay number 单位：秒
---@param func function 延时函数
---@param data object 回调参数
---@return number 计时器Id
function M:add(delay,cb,data)
	return self:add_cycle(delay,nil,cb,data)
end

---@param delay number 单位：秒
---@param cycle number 执行间隔
---@param func function 循环函数
---@param data object 回调参数
---@return number 计时器Id
function M:add_cycle(delay,cycle,cb,data)
	if(#_TM_Pool <= 0) then
		for i = 1,10 do
			table.insert(_TM_Pool,{})
		end
	end
	local new_tm = _TM_Pool[#_TM_Pool]
	_TM_Pool[#_TM_Pool] = nil

	new_tm.invoke_time = self.now_ + delay
	new_tm.exec = cb
	new_tm.cycle = cycle or 0
	new_tm.data = data

	new_tm.sn = self.next_sn_
	self.sn_map_[self.next_sn_] = new_tm
	self.next_sn_ = self.next_sn_ + 1

	if(self.looping_) then
		table.insert(self.add_list_,new_tm)
	else
		self:_binary_insert(new_tm)
	end
	return new_tm.sn
end

---@param sn number 计时器Id
function M:remove(sn)
	local tm = self.sn_map_[sn]
	if tm then
		tm.exec = nil
		self.sn_map_[sn] = nil
	end
end

function M:_binary_insert(tm)
	local list = self.list_
	local left = 1
	local right = #list
	if not tm.sn then
		return
	end

	while(left <= right) do
		local mid = left + math.floor((right - left )/2)
		if(list[mid].invoke_time > tm.invoke_time) then
			left = mid + 1
		else
			right = mid - 1
		end
	end
	table.insert(list,left,tm)
end

function M.call_error_handler(erro_msg)
    ELOG("[Timer.tick] error",debug.traceback(erro_msg, 2))
end

function M:tick(dt)
	self.now_ = self.now_ + dt
	self.looping_ = true

	while(#self.list_ > 0) do
		local tm = self.list_[#self.list_]
		if(tm.invoke_time <= self.now_) then

			local cycle = false
			if tm.exec then
				local ret = tm.exec(tm.sn, tm.data)
				if tm.cycle > 0 then
                    tm.invoke_time = self.now_ + tm.cycle
                    if ret ~= false then
                        cycle = true
                    end
				end
			end
			if cycle then
				table.remove(self.list_)
				table.insert(self.add_list_,tm)
			else
				table.remove(self.list_)
				table.insert(_TM_Pool,tm)
				self.sn_map_[tm.sn] = nil
			end
		else
			break
		end
	end
	self.looping_ = false

	for i = #self.add_list_,1,-1 do
		self:_binary_insert(self.add_list_[i])
		self.add_list_[i] = nil
	end
end

function M:clear()
	self.list_ = {}
	self.add_list_ = {}
	self.sn_map_ = {}
end

return M