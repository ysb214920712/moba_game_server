---@class QueueNode
local QueueNode = class("QueueNode")

---@param value obj
function QueueNode:ctor(value)
    self.value = value
    ---@type QueueNode
    self.next = nil
end

---@class Queue
Queue = class("Queue")
local M = Queue

function M:ctor()
    ---@type QueueNode
    self.first__ = nil
    ---@type QueueNode
    self.last__ = nil
    self.num__ = 0
end

---@param value obj
function M:enqueue(value)
    local old_last = self.last__
    self.last__ = QueueNode.new(value)
    if old_last ~= nil then
        old_last.next = self.last__
    end
    if self.first__ == nil then
        self.first__ = self.last__
    end
    self.num__ = self.num__ + 1
end

---@return obj
function M:dequeue()
    local old_first = self.first__
    if old_first == nil then
        return nil
    end
    self.first__ = old_first.next
    local value = old_first.value
    if self.first__ == nil then
        self.last__ = nil
    end
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
    local index = 0
    local temp = {}
    local node = self.first__
    while node ~= nil do
        local value = node.value
        temp[index] = value
        index = index + 1
        node = node.next
    end
    return temp
end

QueueArray = class("QueueArray")
local MA = QueueArray

function MA:ctor()
    self.head__ = 0
    self.tail__ = 0
    self.array__ = {}
    self.len__ = 0
end

---@param value obj
function MA:enqueue(value)
    self.array__[self.tail__] = value
    self.tail__ = self.tail__ + 1
    if self.tail__ - self.head__ == self.len__ then
        self:resize(self.len__ * 2)
    end
end

---@return number
function MA:size()
    return self.tail__ - self.head__
end

---@return boolean
function MA:is_empty()
    return self.tail__ == self.head__
end

---@return obj
function MA:dequeue()
    if self.tail__ == self.head__ then
        return nil
    end

    local value = self.array__[self.head__]
    self.head__ = self.head__ + 1
    if self.tail__ - self.head__ == math.floor(self.len__ / 4) then
        self:resize(math.floor(self.len__ / 2))
    end

    return value
end

---@param new_size number
function MA:resize(new_size)
    local temp = {}
    for i = 0, new_size - 1 do
        if i < self.tail__ - self.head__ then
            temp[i] = nil
        else
            temp[i] = self.array__[i + self.head__]
        end
    end

    self.array__ = temp
    self.len__ = new_size
    self.tail__ = self.tail__ - self.head__
    self.head__ = 0
end

---@return obj[]
function MA:enumerate()
    local temp = {}
    for i = self.head__, self.tail__ - 1 do
        temp[i - self.head__] = self.array__[i]
    end
    return temp
end

return M