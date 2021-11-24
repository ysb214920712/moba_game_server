local game_config = require("game_config")

local redis_conn = nil

local function is_connected()
    if not redis_conn then
        return false
    end

    return true
end

function redis_coonect_to_rank()
    local host = game_config.rank_redis.host
    local port = game_config.rank_redis.port
    local db_index = game_config.rank_redis.db_index

    Redis.connect(host, port, function(err, conn)
        if err ~= nil then
            Logger.error(err)
            Scheduler.once(redis_coonect_to_rank, 5000)
            return
        end

        redis_conn = conn
        print("connect to redis rank db success")
        Redis.query(redis_conn, "select " .. db_index, function(err, ret)

        end)
    end)
end

redis_coonect_to_rank()

-- redis 有序集合， key WORLD_CHIP_RANK
local WORLD_CHIP_RANK = "WORLD_CHIP_RANK"
function flush_world_rank_with_uchip_inredis(uid, uchip)
    if redis_conn == nil then
        Logger.error("redis rank disconnected")
        return
    end

    local redis_cmd = "zadd WORLD_CHIP_RANK " .. uchip .. " " .. uid
    Redis.query(redis_conn, redis_cmd, function(err ,ret)
        if err then
            Logger.error(err)
            return 
        end
    end)
end

function get_world_rank_with_uchip_inredis(n, ret_handler)
    if redis_conn == nil then
        Logger.error("redis rank disconnected")
        return
    end

    -- zrange 从小到大
    -- zrevrange 从大到小
    local redis_cmd = "zrevrange WORLD_CHIP_RANK 0 " .. n
    Redis.query(redis_conn, redis_cmd, function(err ,ret)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(err, nil)
            end
            return 
        end

        if ret == nil or #ret <= 0 then
            ret_handler(nil, nil)
        end

        local rank_info = {}
        for k, v in pairs(ret) do
            rank_info[k] = tonumber(v)
        end

        if ret_handler then
            ret_handler(nil, rank_info)
        end
    end)
end


local redis_rank = {
    flush_world_rank_with_uchip_inredis = flush_world_rank_with_uchip_inredis,
    get_world_rank_with_uchip_inredis = get_world_rank_with_uchip_inredis,
    is_connected = is_connected,
}

return redis_rank