---@class HashMapNode
local HashMapNode = class("HashMapNode")

---@param key obj
---@param value obj
function HashMapNode:ctor(key, value)
    self.key = key
    self.value = value
    self.next = nil
end

---@class HashMap
HashMap = class("HashMap")
local M = HashMap

---@param hash function
function M:ctor(hash)
    if hash == nil then
        hash = function(x)
            return x
        end
    end

    self.hash__ = hash
    ---@type table<string, HashMapNode>
    self.map__ = {}
    self.num__ = 0
end

---@param key obj
---@param value obj
function M:put(key, value)
    local h = self.hash__(key)
    local node = self.map__[h]
    local found = false
    while node ~= nil do
        if node.key == key then
            found = true
            node.value = value
            break
        end
        node = node.next
    end
    
    if found == false then
        local old = self.map__[h]
        self.map__[h] = HashMapNode.new(key, value)
        self.map__[h].next = old
        self.num__ = self.num__ + 1
    end
end

---@param key obj
function M:get(key)
    local h = self.hash__(key)
    local node = self.map__[h]
    while node ~= nil do
        if node.key == key then
            return node.value
        end
        node = node.next
    end
    return nil
end

---@param key obj
function M:contains_key(key)
    local h = self.hash__(key)
    local node = self.map__[h]
    while node ~= nil do
        if node.key == key then
            return true
        end
        node = node.next
    end
    return false
end

---@return number
function M:size()
    return self.num__
end

---@return boolean
function M:is_empty()
    return self.num__ == 0
end

---@param key obj
---@return obj
function M:remove(key)
    local h = self.hash__(key)
    local node = self.map__[h]
    local prev_node = nil
    while node ~= nil do
        if node.key == key then
            local value = x.value
            if prev_node == nil then
                self.map__[h] = node.next
            else
                prev_node.next = node.next
            end
            self.num__ = self.num__ - 1
            return value
        end
        prev_node = node
        node = node.next
    end
    return nil
end

return M