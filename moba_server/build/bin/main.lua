logger.debug("HelloWorld by Lua log")
logger.warning("Warning")
logger.error("Error")

key = ""
function PrintTable(table, level)
    level = level or 1
    local indent = ""
    for i = 1, level do
        indent = indent .. "    "
    end    

    if key ~= "" then
        print(indent .. key .. " " .. "=" .. " " .. "{")
    else
        print(indent .. "{")
    end

    key = ""
    for k, v in pairs(table) do
        if type(v) == "table" then
            key = k
            PrintTable(v, level + 1)
        else
            local content = string.format("%s%s = %s", indent .. "  ", tostring(k), tostring(v))
            print(content)
        end
    end
    print(indent .. "}")
end

-- mysql_wrapper.connect("127.0.0.1", 3306, "class_sql", "root", "ysb214920712", function(err, context)
--     -- print("mysql_wrapper.connect")
--     logger.debug("mysql_wrapper.connect")
--     if err then
--         logger.debug("%s", err)
--         return
--     end

--     mysql_wrapper.query(context, "select * from class_test", function(err, ret)
--         if err then
--             logger.debug("%s", err)
--             return
--         end
--         logger.debug("success\n")
--         PrintTable(ret)
--     end)
--     -- mysql_wrapper.close(context);
-- end)

-- redis_wrapper.connect("127.0.0.1", 6379, function(err, result)
--      if (err) then
--         logger.error(err)
--         return
--      end

--      logger.debug("redis connect success")

--     --  redis_wrapper.close_redis(result)
--     -- redis_wrapper.query(result, "hmset 001001 name \"ysb\" age \"24\"", function(err, result)
--     --     if err then
--     --         logger.error(err)
--     --         return    
--     --     end
--     --     print(result)
--     -- end)
--     redis_wrapper.query(result, "hgetall 001001", function(err, result)
--         if err then
--             logger.error(err)
--             return
--         end
--         PrintTable(result)
--     end)
-- end)

local my_service = {
    -- msg {1: stype, 2: ctype, 3: utag, 4: body_table_or_string
    on_session_recv_cmd = function(session, msg)

    end,
    on_session_disconnect = function(session)

    end,
}

local ret = service.register(100, my_service)
print(ret)

local timer = scheduler.schedule(function()
    print("scheduler.schedule called")
end, 5000, -1, 1000)

scheduler.once(function()
    print("schedule once")
    scheduler.cancel(timer)
end, 8000)