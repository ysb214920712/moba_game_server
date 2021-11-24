local game_config = require("game_config")
local moba_game_config = require("moba_game_config")

local mysql_conn = nil

local function is_connected()
    if not mysql_conn then
        return false
    end

    return true
end

function mysql_connect_to_moba_game()
    local conf = game_config.game_mysql
    Mysql.connect(conf.host, conf.port, conf.db_name, conf.uname, conf.upwd, function(err, conn)
        if err then
            Logger.error(err)
            Scheduler.once(mysql_connect_to_moba_game, 5000)
            return
        end

        Logger.debug("connect to moba game db success")
        mysql_conn = conn
    end)
end

mysql_connect_to_moba_game()

function get_robots_ugame_info(ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "select uchip, uchip2, uchip3, uvip, uvip_endtime, udata1, udata2, udata3, uexp, ustatus, uid from ugame where is_robot = 1"
    Mysql.query(mysql_conn, sql, function(err, ret)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(err, nil)
            end
            return
        end

        if ret == nil or #ret <= 0 then
            if ret_handler then
                ret_handler(nil, nil)
            end
            return
        end

        local robots = {}
        for k, v in pairs(ret) do
            local result = v
            local robot = {}
            robot.uchip = tonumber(result[1])
            robot.uchip2 = tonumber(result[2])
            robot.uchip3 = tonumber(result[3])
            robot.uvip = tonumber(result[4])
            robot.uvip_endtime = tonumber(result[5])
            robot.udata1 = tonumber(result[6])
            robot.udata2 = tonumber(result[7])
            robot.udata3 = tonumber(result[8])
            robot.uexp = tonumber(result[9])
            robot.ustatus = tonumber(result[10])
            robot.uid = tonumber(result[11])

            table.insert(robots, robot)
        end

        if ret_handler then
            ret_handler(nil, robots)
        end
    end)
end

function get_ugame_info(uid, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "select uchip, uchip2, uchip3, uvip, uvip_endtime, udata1, udata2, udata3, uexp, ustatus from ugame where uid = %d limit 1"
    local sql_cmd = string.format(sql, uid)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(err, nil)
            end
            return
        end

        if ret == nil or #ret <= 0 then
            if ret_handler then
                ret_handler(nil, nil)
            end
            return
        end

        local result = ret[1]
        local uinfo = {}
        uinfo.uchip = tonumber(result[1])
		uinfo.uchip2 = tonumber(result[2])
		uinfo.uchip3 = tonumber(result[3])
		uinfo.uvip = tonumber(result[4])
		uinfo.uvip_endtime = tonumber(result[5])
		uinfo.udata1 = tonumber(result[6])
		uinfo.udata2 = tonumber(result[7])
		uinfo.udata3 = tonumber(result[8])
		uinfo.uexp = tonumber(result[9])
		uinfo.ustatus = tonumber(result[10])

        if ret_handler then
            ret_handler(nil, uinfo)
        end
    end)
end

function insert_ugame_info(uid, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "insert into ugame(`uid`, `uchip`, `uvip`, `uexp`)values(%d, %d, %d, %d)"
	local sql_cmd = string.format(sql, uid, moba_game_config.ugame.uchip, moba_game_config.ugame.uvip, moba_game_config.ugame.uexp)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        else
            ret_handler(nil, nil) 
        end
    end)
end

function get_bonues_info(uid, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "select bonues, status, bonues_time, days from login_bonues where uid = %d limit 1"
    local sql_cmd = string.format(sql, uid)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            if ret_handler then
                ret_handler(err, nil)
            end
            return
        end

        if ret == nil or #ret <= 0 then
            if ret_handler then
                ret_handler(nil, nil)
            end
            return
        end

        local result = ret[1]
        local bonues_info = {}
        bonues_info.bonues = tonumber(result[1])
		bonues_info.status = tonumber(result[2])
		bonues_info.bonues_time = tonumber(result[3])
		bonues_info.days = tonumber(result[4])

        if ret_handler then
            ret_handler(nil, bonues_info)
        end
    end)
end

function insert_bonues_info(uid, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "insert into login_bonues(`uid`, `bonues_time`, `status`)values(%d, %d, 1)"
	local sql_cmd = string.format(sql, uid, Utils.timestamp())

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        else
            ret_handler(nil, nil) 
        end
    end)
end

function update_login_bonues(uid, bonues_info, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "update login_bonues set status = 0, bonues = %d, bonues_time = %d, days = %d where uid = %d"
    local sql_cmd = string.format(sql, bonues_info.bonues, bonues_info.bonues_time, bonues_info.days, uid)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        else
            ret_handler(nil, nil) 
        end
    end)
end

function update_login_bonues_status(uid, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "update login_bonues set status = 1 where uid = %d"
    local sql_cmd = string.format(sql, uid)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        else
            ret_handler(nil, nil) 
        end
    end)
end

function add_chip(uid, chip, ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "update ugame set uchip = uchip + %d where uid = %d"
    local sql_cmd = string.format(sql, chip, uid)

    Mysql.query(mysql_conn, sql_cmd, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        else
            ret_handler(nil, nil) 
        end
    end)
end

function get_sys_msg(ret_handler)
    if mysql_conn == nil then
        if ret_handler then
            ret_handler("mysql is not connected", nil)
        end
        return
    end

    local sql = "select msg from sys_msg"

    Mysql.query(mysql_conn, sql, function(err, ret)
        if err then
            Logger.error(err)
            ret_handler(err, nil)
            return
        elseif ret == nil or #ret <= 0 then
            ret_handler(nil, nil) 
            return
        end

        local result = {}
        for k, v in pairs(ret) do
            result[k] = v[1]
        end
        ret_handler(nil, result)
    end)
end

local mysql_game = {
    get_ugame_info = get_ugame_info,
    insert_ugame_info = insert_ugame_info,
    get_bonues_info = get_bonues_info,
    insert_bonues_info = insert_bonues_info,
    update_login_bonues = update_login_bonues,
    update_login_bonues_status = update_login_bonues_status,
    add_chip = add_chip,
    get_sys_msg = get_sys_msg,
    is_connected = is_connected,
    get_robots_ugame_info = get_robots_ugame_info,
}

return mysql_game