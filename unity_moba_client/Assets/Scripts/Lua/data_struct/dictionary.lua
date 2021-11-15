---注意，新增子元素必须用add，不能直接赋值，修改元素可以用[]索引去修改， 同理，删除必须用remove而不是直接赋空
---@class Dictionary
Dictionary = class("Dictionary")
local M = Dictionary

---@param tk class
---@param tv class
function M:ctor(tk, tv)
    self.key_type__ = tk
    self.value_type__ = tv
    self.key_list__ = {}
    self.num__ = 0
end

---@generic T1, T2
---@param key T1
---@param value T2
function M:add(key, value)
    if self[key] == nil then
        self[key] = value
        table.insert(self.key_list__, key)
        self.num__ = self.num__ + 1
    else
        self[key] = value
    end
end

function M:clear()
    for i = self.num__, 1, -1 do
        self[self.key_list__[i]] = nil
        table.remove(self.key_list__)
    end
    self.num__ = 0
end

---@generic T
---@param key T
---@return boolean
function M:contains_key(key)
    for i = 1, self.num__ do
        if self.key_list__[i] == key then
            return true
        end
    end
    return false
end

---@generic T
---@param value T
---@return boolean
function M:contains_value(value)
    for i = 1, self.num__ do
        if self[self.key_list__[i]] == value then
            return true
        end
    end
    return false
end

---@return number
function M:count()
    return self.num__
end

---@param action function
function M:foreach(action)
    if not action or type(action) ~= "function" then
        print("action is invalid")
        return
    end
    
    for i = 1, self.num__ do
        action(self.key_list__[i], self[self.key_list__[i]])
    end
end

---@generic T
---@param value T
function M:remove(key)
    for i = 1, self.num__ do
        if self.key_list__[i] == key then
            table.remove(self.key_list__, i)
            self.num__ = self.num__ - 1
            break
        end
    end
    self[key] = nil
end

---@param idx number
---@return obj
function M:get_key(idx)
    return self.key_list__[idx]
end

---@param idx number
---@return obj
function M:get_value(idx)
    local key = self.key_list__[idx]
    if not key then
        return nil
    end
    return self[key]
end

---@return List
function M:get_keys()
    local list = List.new("object")
    for _, key in ipairs(self.key_list__) do
        list:add(key)
    end
    return list
end

---@return List
function M:get_values()
    local list = List.new("object")
    for _, key in ipairs(self.key_list__) do
        list:add(self[key])
    end
    return list
end

function M:key_type()
    return self.key_type__
end

function M:value_type()
    return self.value_type__
end

return M