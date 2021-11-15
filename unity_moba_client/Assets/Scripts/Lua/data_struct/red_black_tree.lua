---@class RedBlackTreeNode
local RedBlackTreeNode = class("RedBlackTreeNode")

---@param key obj
---@param value obj
function RedBlackTreeNode:ctor(key, value)
    self.key = key
    self.value = value
    ---@type RedBlackTreeNode
    self.left = nil
    ---@type RedBlackTreeNode
    self.right = nil
    self.count = 0
    self.red = true
end

---@class RedBlackTree
RedBlackTree = class("RedBlackTree")
local M = RedBlackTree

---@param comparator function
function M:ctor(comparator)
    if comparator == nil then
        comparator = function(a, b)
            return a - b
        end
    end

    ---@type RedBlackTreeNode
    self.root__ = nil
    self.num__ = 0
    self.comparator__ = comparator
end

---@param key obj
---@param value obj
function M:put(key, value)
    self.root__ = self:_put(self.root__, key, value)
end

---@param node RedBlackTreeNode
---@param key obj
---@param value obj
---@return RedBlackTreeNode
function M:_put(node, key, value)
    if node == nil then
        node = RedBlackTreeNode.new(key, value)
    end

    local comp = self.comparator__(key, node.key)
    if comp < 0 then
        node.left = self:_put(node.left, key, value)
    elseif comp > 0 then
        node.right = self:_put(node.right, key, value)
    else
        node.value = value
    end

    if not self:is_red(node.left) and self:is_red(node.right) then
        node = self:rotate_left(node)
    elseif self:is_red(node.left) and self:is_red(node.left.left) then
        node = self:rotate_right(node)
    elseif self:is_red(node.left) and self:is_red(node.right) then
        self:flip_color(node)
    end

    node.count = self:count(node.left) + self:count(node.right) + 1
    return node
end

---@param node RedBlackTreeNode
---@return boolean
function M:is_red(node)
    if node == nil then
        return false
    end
    return node.red
end

---@param node RedBlackTreeNode
function M:flip_color(node)
    node.left.red = false
    node.right.red = false
    node.red = true
end

---@param node RedBlackTreeNode
---@return RedBlackTreeNode
function M:rotate_left(node)
    local temp = node.right
    node.right = temp.left
    temp.left = node
    node.red = temp.red
    temp.red = false

    node = temp
    node.count = self:count(node.left) + self:count(node.right) + 1

    return node
end

---@param node RedBlackTreeNode
---@return RedBlackTreeNode
function M:rotate_right(node)
    local temp = node.left
    node.left = temp.right
    temp.right = node
    node.red = temp.red
    temp.red = false

    node = temp
    node.count = self:count(node.left) + self:count(node.right) + 1

    return node
end

---@param node RedBlackTreeNode
---@return number
function M:count(node)
    if node == nil then
        return 0
    end
    return node.count
end

---@param key obj
---@return obj
function M:get(key)
    local node = self:_get(self.root__, key)
    if node == nil then
        return nil
    end
    return node.value
end

---@param key obj
---@return boolean
function M:contains_key(key)
    local node = self:_get(self.root__, key)
    return node ~= nil
end

---@param node RedBlackTreeNode
---@param key obj
---@return RedBlackTreeNode
function M:_get(node, key)
    if node == nil then
        return nil
    end

    local comp = self.comparator__(key, node.key)
    if comp < 0 then
        return self:_get(node.left, key)
    elseif comp > 0 then
        return self:_get(node.right, key)
    else
        return node
    end
end

---@return number
function M:size()
    return self:count(self.root__)
end

---@return boolean
function M:is_empty()
    return self:size() == 0
end

---@param key obj
function M:remove(key)
    self.root__ = self:_remove(self.root__, key)
end

---@param node RedBlackTreeNode
---@return RedBlackTreeNode
function M:_min(node)
    if node.left == nil then
        return node
    end

    return self:_min(node.left)
end

---@param node RedBlackTreeNode
---@return RedBlackTreeNode
function M:_max(node)
    if node.right == nil then
        return node
    end

    return self:_max(node.right)
end

---@param node RedBlackTreeNode
---@return RedBlackTreeNode
function M:_del_min(node)
    if node.left == nil then
        return node.right
    end
    node.left = self:_del_min(node.left)
    return node
end

---@param node RedBlackTreeNode
---@param key obj
---@return RedBlackTreeNode
function M:_remove(node, key)
    if node == nil then
        return nil
    end

    local comp = self.comparator__(key, node.key)
    if comp < 0 then
        node.left = self:_remove(node.left, key)
    elseif comp > 0 then
        node.right = self:_remove(node.right, key)
    else
        if node.left == nil then
            node = node.right
        elseif node.right == nil then
            node = node.left
        else
            local m = self:_min(node.right)
            m.left = node.left
            m.right = self:_del_min(node.right)
            node = m
        end
    end

    if node ~= nil then
        if not self:is_red(node.left) and self:is_red(node.right) then
            node = self:rotate_left(node)
        elseif self:is_red(node.left) and self:is_red(node.left.left) then
            node = self:rotate_right(node)
        elseif self:is_red(node.left) and self:is_red(node.right) then
            self:flip_color(node)
        end

        node.count = self:count(node.left) + self:count(node.right) + 1
    end

    return node
end

---@return obj
function M:min_key()
    if self.root__ == nil then
        return nil
    end

    local node = self:_min(self.root__)
    if node ~= nil then
        return node.key
    end
    return nil
end

---@return obj
function M:max_key()
    if self.root__ == nil then
        return nil
    end

    local node = self:_max(self.root__)
    if node ~= nil then
        return node.key
    end
    return nil
end

return M