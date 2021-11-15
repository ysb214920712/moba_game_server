---@class HashSetNode
local HashSetNode = class("HashSetNode")

---@param key obj
function HashSetNode:ctor(key)
    self.key = key
    self.next = nil
end

---@class HashSet
HashSet = class("HashSet")
local M = HashSet

---@param hash function
function M:ctor(hash)
    if not hash then
        hash = function(x)
            return x
        end
    end

    self.hash__ = hash
    ---@type table<string, HashSetNode>
    self.set__ = {}
    self.num__ = 0
end

---@param key obj
function M:add(key)
    local h = self.hash__(key)
    local node = self.set__[h]
    local found = false
    while node ~= nil do
        if node.key == key then
            found = true
            break
        end
        node = node.next
    end
    if found == false then
        local old = self.set__[h]
        self.set__[h] = HashSetNode.new(key)
        self.set__[h].next = old
        self.num__ = self.num__ + 1
    end
end

---@param key obj
function M:contains(key)
    local h = self.hash__(key)
    local node = self.set__[h]
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
function M:remove(key)
    local h = self.hash__(key)
    local node = self.set__[h]
    local prev_node = nil
    while node ~= nil do
        if node.key == key then
            if prev_node == nil then
                self.set__[h] = node.next
            else
                prev_node.next = node.next
            end
            self.num__ = self.num__ - 1
            return
        end
        prev_node = node
        node = node.next
    end
end

function M:clear()
    self.set__ = {}
    self.num__ = 0
end

---@param action function
function M:foreach(action)
    if not action or type(action) ~= "function" then
        print("action is invalid")
        return
    end
    
    for k, v in pairs(self.set__) do
        local node = v
        while node ~= nil do
            action(node.key)
            node = node.next
        end
    end
end

return M