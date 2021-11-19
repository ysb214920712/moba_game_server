local game_config = require("game_config")

local redis_conn = nil

function redis_coonect_to_center()
    local host = game_config.center_redis.host
    local port = game_config.center_redis.port
    local db_index = game_config.center_redis.db_index

    Redis.connect(host, port, function(err, conn)
        if err ~= nil then
            Logger.error(err)
            Scheduler.once(redis_coonect_to_center, 5000)
            return
        end

        redis_conn = conn
        print("connect to redis center db success")
        Redis.query(redis_conn, "select " .. db_index, function(err, ret)

        end)
    end)
end

redis_coonect_to_center()

function set_uinfo_inredis(uid, uinfo)
    if redis_conn == nil then
        Logger.error("redis center disconnected")
        return
    end
    local redis_cmd = "hmset moba_auth_center_user_uid_" .. uid ..
                      " unick " .. uinfo.unick ..
                      " usex " .. uinfo.usex ..
                      " uface " .. uinfo.uface ..
                      " uvip " .. uinfo.uvip ..
                      " is_guest " .. uinfo.is_guest

    print(redis_cmd)
    Redis.query(redis_conn, redis_cmd, function(err, ret)

    end)
end

function get_uinfo_inredis(uid, ret_handler)
    local redis_cmd = "hgetall moba_auth_center_user_uid_" .. uid
    Redis.query(redis_conn, redis_cmd, function(err, ret)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(err, nil)
            end
            return
        end

        local uinfo = {}
        uinfo.uid = uid
        uinfo.unick = ret[2]
        uinfo.usex = tonumber(ret[4])
        uinfo.uface = tonumber(ret[6])
        uinfo.uvip = tonumber(ret[8])
        uinfo.is_guest = tonumber(ret[10])

        ret_handler(nil, uinfo)
    end)
end

function edit_profile(uid, unick, uface, usex)
    get_uinfo_inredis(uid, function(err, uinfo)
        if err then
            Logger.error("get uinfo in redis error")
            return
        end

        uinfo.unick = unick
        uinfo.uface = uface
        uinfo.usex = usex

        set_uinfo_inredis(uid, uinfo)
    end)
end

local redis_center = {
    set_uinfo_inredis = set_uinfo_inredis,
    get_uinfo_inredis = get_uinfo_inredis,
    edit_profile = edit_profile,
}

return redis_center