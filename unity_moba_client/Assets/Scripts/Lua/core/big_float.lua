---@class BigFloat
BigFloat = {}
local M = BigFloat
M.__index = M

M._DigitalUnit = {"", "K", "M", "B", "T"} 

for i = 65, 90 do
    for j = 65, 90 do
        table.insert(M._DigitalUnit, string.char(i, j))
    end
end

for i = 65, 90 do
    for j = 65, 90 do
        for k = 65, 90 do
            table.insert(M._DigitalUnit, string.char(i, j, k))
        end
    end
end

function M.new(num,unit)
    local t = {num,unit}
    setmetatable(t,M)
    t.dirty_ = true
    return t
end

function M:zero()
    self[1] = 0
    self.dirty_ = true
end

function M:less_zero()
    return self[1] <= 0
end

function M:more_zero()
    return self[1] > 0
end

function M:clone()
    return M.new(self[1],self[2])
end

function M:_algin()
    local base = self[1]
    local pow = self[2]

    while base >= 1000 do
        base = base / 1000
        pow = pow + 1
    end

    while base < 1 and pow > 1 do
        base = base * 1000
        pow = pow - 1
    end

    self[1] = base
    self[2] = pow

    self.dirty_ = false
    return h
end

function M:add_by(bf)
    if bf[2] ~= self[2] then
        self[1] = self[1] + 1000 ^ (bf[2] - self[2] ) * bf[1]
    else
        self[1] = self[1] + bf[1]
    end
    self.dirty_ = true
    return self
end

function M:sub_by(bf)
    if bf[2] ~= self[2] then
        self[1] = self[1] - 1000 ^ (bf[2] - self[2] ) * bf[1]
    else
        self[1] = self[1] - bf[1]
    end
    self.dirty_ = true
    return self
end

function M:div_by(num)
    self[1] = self[1] / num
    self.dirty_ = true
    return self
end

function M:mul_by(num)
    self[1] = self[1] * num
    self.dirty_ = true
    return self
end

function M:percent(bf)
    if bf[2] ~= self[2] then
        return self[1] / 1000 ^ (bf[2] - self[2] ) * bf[1]
    else
        return self[1] / bf[1]
    end
end

function M.__tostring(bf)
    if bf.dirty_ then
        bf:_algin()
    end
    return string.format("%.3g%s",bf[1], M._DigitalUnit[bf[2]])
end

function M.__unm(bf)
    return M.new(- bf[1],bf[2])
end

function M.__add(bf1, bf2)
    return M.new(bf1[1],bf1[2]):add_by(bf2)
end

function M.__sub(bf1, bf2)
    return M.new(bf1[1],bf1[2]):sub_by(bf2)
end

function M.__mul(bf, num)
    return M.new(bf[1],bf[2]):mul_by(num)
end

function M.__div(bf, num)
    return M.new(bf[1],bf[2]):div_by(num)
end

function M.__le(bf1,bf2)
    if bf1.dirty_ then
        bf1:_algin()
    end
    if bf2.dirty_ then
        bf2:_algin()
    end
    if bf1[2] < bf2[2] then
        return true
    elseif bf1[2] == bf2[2] and bf1[1] <= bf2[1] then
        return true
    end
    return false
end

function M.__lt(bf1,bf2)
    if bf1.dirty_ then
        bf1:_algin()
    end
    if bf2.dirty_ then
        bf2:_algin()
    end
    if bf1[2] < bf2[2] then
        return true
    elseif bf1[2] == bf2[2] and bf1[1] < bf2[1] then
        return true
    end
    return false
end

function M.__eq(bf1,bf2)
    if bf1.dirty_ then
        bf1:_algin()
    end
    if bf2.dirty_ then
        bf2:_algin()
    end
    
    return bf1[2] == bf2[2] and bf1[1] == bf2[1]
end

-- test:
-- local m = M.new(1000,1)
-- local m2 = M.new(0.3,2)
-- print((m + m2)/3)

return M