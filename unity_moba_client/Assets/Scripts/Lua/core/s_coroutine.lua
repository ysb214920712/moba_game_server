local Yieldk = CS.XLuaHelper.Yieldk

-- coroutine wrap
local resume = coroutine.resume
coroutine.resume=function(co,...)
	local ret={resume(co,...)}
	if not ret[1] then U.Debug.LogError(debug.traceback(co,ret[2])) end
	return table.unpack(ret)
end

local s_coroutine = s_coroutine or {}

s_coroutine.create = function(x)
	local co = coroutine.create(x)
	coroutine.resume(co)
	return co
end

s_coroutine.yield = function(x)
	local co, is_main = coroutine.running()
	if is_main then error('Can not yield in main thread') end

	if type(x) == 'thread' and coroutine.status(x) ~= 'dead' then
		repeat
			Yieldk(nil, function() coroutine.resume(co) end)
			coroutine.yield()
		until coroutine.status(x) == 'dead'
	else
		Yieldk(x, function() coroutine.resume(co) end)
		coroutine.yield()
	end
end

Yield = s_coroutine.yield
