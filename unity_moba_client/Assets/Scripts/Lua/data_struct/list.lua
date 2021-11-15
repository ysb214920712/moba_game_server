---@class List
List = class("List")
local M = List

---@param t class
function M:ctor(t)
    self.item_type__ = t
    self.num__ = 0
end

---@param item obj
function M:add(item)
    table.insert(self, item)
    self.num__ = self.num__ + 1
end

---@param collection List
function M:add_range(collection)
    collection:foreach(function(item)
        self:add(item)
    end)
end

function M:clear()
    for i = self.num__, 1, -1 do
        table.remove(self)
    end
    self.num__ = 0
end

---@param item obj
function M:contains(item)
    for i = 1, self.num__ do
        if self[i] == item then
            return true
        end
    end
    return false
end

---@return number
function M:count()
    return self.num__
end

---@param predicate function
---@return obj
function M:find(predicate)
    if not predicate or type(predicate) ~= "function" then
        print("predicate is invalid")
        return
    end
    
    for i = 1, self.num__ do
        if predicate(self[i]) then
            return self[i]
        end
    end
    return nil
end

---@param action function
function M:foreach(action)
    if not action or type(action) ~= "function" then
        print("action is invalid")
        return
    end
    
    for i = 1, self.num__ do
        action(self[i])
    end
end

---@param item obj
---@return number
function M:index_of(item)
    for i = 1, self.num__ do
        if self[i] == item then
            return i
        end
    end
    return 0
end

---@param item obj
---@return number
function M:last_index_of(item)
    for i = self.num__, 1, -1 do
        if self[i] == item then
            return i
        end
    end
    return 0
end

---@param index number
---@param item obj
function M:insert(index, item)
    table.insert(self, index, item)
    self.num__ = self.num__ + 1
end

---@return class
function M:item_type()
    return self.item_type__
end

---@param item obj
function M:remove(item)
    local idx = self:last_index_of(item)
    if idx > 0 then
        table.remove(self, idx)
        self.num__ = self.num__ - 1
    end
end

---@param index number
function M:remove_at(index)
    if table.remove(self, index) then
        self.num__ = self.num__ - 1
    end
end

---@param comparator function
function M:sort(comparator)
    if not comparator and type(comparator) ~= "function" then
        print("comparator is invalid")
        return
    end
    if comparator == nil then
        table.sort(self)
    else
        table.sort(self, comparator)
    end
end

return M