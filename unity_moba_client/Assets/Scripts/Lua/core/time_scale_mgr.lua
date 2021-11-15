---@class TimeScaleNode
local TimeScaleNode = class("TimeScaleNode")

function TimeScaleNode:ctor(real_time, scale, callback)
    self.real_time = real_time
    self.scale = scale
    self.callback = callback
end

---@class TimeScaleMgr
TimeScaleMgr = singleton("TimeScaleMgr")
local M = TimeScaleMgr

function M:init()
    ---@type TimeScaleNode[]
    self.scale_node_list_ = {}

    self.now_ = 0
    self.last_scale_before_pause_ = 1

    LOG("[TimeScaleMgr.init] done")
end

function M:add_time_scale(start_scale, end_scale, last_time, start_callback, end_callback)
    if start_scale then
        local start_node = TimeScaleNode.new(self.now_, start_scale, start_callback)
        table.insert(self.scale_node_list_, start_node)
    end

    if end_scale then
        local end_node = TimeScaleNode.new(self.now_ + last_time, end_scale, end_callback)
        table.insert(self.scale_node_list_, end_node)
    end

    ---@param node_a TimeScaleNode
    ---@param node_b TimeScaleNode
    table.sort(self.scale_node_list_, function(node_a, node_b)
        if node_a.real_time ~= node_b.real_time then
            return node_a.real_time < node_b.real_time
        elseif node_a.scale ~= node_b.scale then
            return node_a.scale < node_b.scale
        else
            return false
        end
    end)
end

function M:set_time_scale(scale)
    if Game:is_battle_paused() then
        return
    end

    U.Time.timeScale = scale
end

function M:update(dt)
    if Game:is_battle_paused() or not self.now_ then
        return
    end
    
    self.now_ = self.now_ + dt
    local first_node = self.scale_node_list_[1]
    while first_node and first_node.real_time <= self.now_ do
        U.Time.timeScale = first_node.scale
        if first_node.callback then
            first_node.callback()
        end

        table.remove(self.scale_node_list_, 1)
        first_node = self.scale_node_list_[1]
    end
end

function M:pause()
    if U.Time.timeScale ~= 0 then
        self.last_scale_before_pause_ = U.Time.timeScale
        U.Time.timeScale = 0
    end
end

function M:resume()
    U.Time.timeScale = self.last_scale_before_pause_
end

return M