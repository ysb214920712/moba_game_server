---@class Random
Random = class("Random")
local M = Random

function M:ctor(seed, cid)
	self.seed_ = seed or math.random(os.time())
	self.count_ = 0
	self.cid_ = cid
end

function M:set_rand_seed(seed)
	self.seed_ = seed
end

function M:get_rand_seed()
	return self.seed_
end

function M:update_rand_seed()
	self.seed_ = (self.seed_ * 29 + 37) % 2147483647
	return self.seed_
end

function M:random(low, up)
	if not low then
		return self:update_rand_seed() * (1.0 / 2147483648)
	end

	if up and up > low then
		return low + self:update_rand_seed() % (up - low)
	end

	return 1 + self:update_rand_seed() % low
end

function M:get_rand_number(min, max)
	self.count_ = self.count_ + 1
	local val = self:random(min, max)
	LOG("[%d] rand number [%d/%s]", self.cid_, self.count_, val)
	return val
end

function M:get_float_rand_number(min, max)
	self.count_ = self.count_ + 1
	local val = min + (max - min) * (self:random(0, 1000) * 0.001)
	LOG("[%d] rand float [%d/%s]", self.cid_, self.count_, val)
	return val
end

return M