---@class MaxHeap
MaxHeap = class("MaxHeap")
local M = MaxHeap

---@param comparator function
function M:ctor(comparator)
    if comparator == nil then
        comparator = function(a, b)
            return a - b
        end
    end

    ---@type obj[]
    self.arr__ = {}
    self.len__ = 1
    self.num__ = 0
    self.comparator__ = comparator
end

---@param value obj
function M:enqueue(value)
    if self.num__ + 1 == self.len__ then
        self:resize(self.len__ * 2)
    end
    self.num__ = self.num__ + 1
    self.arr__[self.num__] = value
    self:swim(self.num__)
end

---@return obj
function M:del_max()
    if self.num__ == 0 then
        return nil
    end

    local value = self.arr__[1]
    self:exchange(self.arr__, 1, self.num__)
    self.num__ = self.num__ - 1
    self:sink(1)
    if self.num__ + 1 == math.floor(self.len__ / 4) then
        self:resize(math.floor(self.len__ / 2))
    end

    return value
end

---@param new_size number
function M:resize(new_size)
    local temp = {}
    for i = 0, new_size - 1 do
        temp[i] = self.arr__[i]
    end
    self.arr__ = temp
    self.len__ = new_size
end

---@param k number
function M:swim(k)
    while k > 1 do
        local parent = math.floor(k / 2)
        if self:greater(self.s[k], self.s[parent]) then
            self:exchange(self.s, k, parent)
            k = parent
        else
            break
        end
    end
end

---@param k number
function M:sink(k)
    while k * 2 <= self.num__ do
        local child = k * 2
        if child < self.num__ and self:greater(self.arr__[child + 1], self.arr__[child]) then
            child = child + 1
        end
        if self:greater(self.arr__[child], self.arr__[k]) then
            self:exchange(self.arr__, child, k)
            k = child
        else
            break
        end
    end
end

---@return number
function M:size()
    return self.num__
end

---@return boolean
function M:is_empty()
    return self.num__ == 0
end

---@return boolean
function M:greater(a, b)
    return self.comparator__(a, b) > 0
end

---@param s obj[]
---@param i number
---@param j number
function M:exchange(s, i, j)
    local temp = s[i]
    s[i] = s[j]
    s[j] = temp
end

return M