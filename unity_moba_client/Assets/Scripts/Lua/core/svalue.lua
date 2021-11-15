---@class SValue
SValue = {
    Int = 0,
    Float = 1,
}
mkcall(SValue)
local M = SValue

local XOR_RANDOM_UPPER = 100000
local ADD_RANDOM_UPPER = 10000
local FLOAT_PRECISION = 0.001
local FLOAT_PRECISION_COMPRESS = 1000

local random = math.random

local XORPOOL = {}
local ADDPOOL = {}

for i = 1, 100 do
    local xor = random(XOR_RANDOM_UPPER)
    local add = random(-ADD_RANDOM_UPPER, ADD_RANDOM_UPPER)
    table.insert(XORPOOL, xor)
    table.insert(ADDPOOL, add)
end

local mt = {
    __index = M,
    ---@param self SValue
    __call = function(self, value)
        if value then
            self:set(value)
        else
            return self:get()
        end
    end,
}

function M.new(value, vtype)
    value = value or 0
    vtype = vtype or M.Int

    local svalue = {_type_ = vtype}
    setmetatable(svalue, mt)
    
    svalue:set(value)
    return svalue
end

function M:set(value)
    local xor = random(XOR_RANDOM_UPPER)
    local add = random(-ADD_RANDOM_UPPER, ADD_RANDOM_UPPER)
    table.insert(XORPOOL, xor)
    table.insert(ADDPOOL, add)
    self._xor_ = table.remove(XORPOOL, 1)
    self._add_ = table.remove(ADDPOOL, 1)
    if self._type_ == self.Int then
        self._encoded_ = (value ~ self._xor_) + self._add_
    elseif self._type_ == self.Float then
        self._encoded_ = (math.floor(value*FLOAT_PRECISION_COMPRESS) ~ self._xor_) + self._add_
    else
        error(string.format("M can't support type(%d)", self._type_))
    end
end

function M:get()
    local value = (self._encoded_ - self._add_)  ~ self._xor_
    if self._type_ == self.Float then
        value = value * FLOAT_PRECISION
    end
    return value
end

return M