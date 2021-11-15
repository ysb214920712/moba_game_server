---@class StackNode
local StackNode = class("StackNode")

---@param value obj
function StackNode:ctor(value)
    self.value = value
    ---@type StackNode
    self.next = nil
end

---@class Stack
Stack = class("Stack")
local M = Stack

function M:ctor()
    ---@type StackNode
    self.first__ = nil
    self.num__ = 0
end

---@param value obj
function M:push(value)
    local old_first = self.first__
    self.first__ = StackNode.new(value)
    self.first__.next = old_first
    self.num__ = self.num__ + 1
end

---@return obj
function M:pop()
    local old_first = self.first__
    if old_first == nil then
        return nil
    end
    local value = old_first.value
    self.first__ = old_first.next
    self.num__ = self.num__ - 1
    return value
end

---@return number
function M:size()
    return self.num__
end

---@return boolean
function M:is_empty()
    return self.num__ == 0
end

---@return obj[]
function M:enumerate()
    local node = self.first__
    local index = 0
    local temp = {}
    while node ~= nil do
        temp[index] = node.value
        index = index + 1
        node = node.next
    end
    return temp
end

---@class StackArray
StackArray = class("StackArray")
local MA = StackArray

function MA:ctor()
    ---@type obj[]
    self.arr__ = {}
    self.num__ = 0
    self.len__ = 1
end

---@param value obj
function MA:push(value)
    self.arr__[self.num__] = value
    self.num__ = self.num__ + 1
    if self.num__ == self.len__ then
        self:resize(self.len__ * 2)
    end
end

---@param new_size number
function MA:resize(new_size)
    local temp = {}
    for i = 0, new_size - 1 do
        temp[i] = self.arr__[i]
    end
    self.arr__ = temp
    self.len__ = new_size
end

---@return obj
function MA:pop()
    if self.num__ == 0 then
        return nil
    end

    local value = self.arr__[self.num__ - 1]
    self.num__ = self.num__ - 1

    if self.num__ == math.floor(self.len__ / 4) then
        self:resize(math.floor(self.len__ / 2))
    end
    return value
end

---@return number
function MA:size()
    return self.num__
end

---@return boolean
function MA:is_empty()
    return self.num__ == 0
end

---@return obj[]
function MA:enumerate()
    local temp = {}
    for i = 0, self.num__ - 1 do
        temp[i] = self.arr__[i]
    end
    return temp
end

return M