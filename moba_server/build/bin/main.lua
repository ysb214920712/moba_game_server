log_debug("HelloWorld by Lua log")

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

mysql_wrapper.connect("127.0.0.1", 3306, "class_sql", "root", "ysb214920712", function(err, context)
    -- print("mysql_wrapper.connect")
    log_debug("mysql_wrapper.connect")
    if err then
        log_debug("%s", err)
        return
    end

    mysql_wrapper.query(context, "select * from class_test", function(err, ret)
        if err then
            log_debug("%s", err)
            return
        end
        log_debug("success\n")
        PrintTable(ret)
    end)
    -- mysql_wrapper.close(context);
end)