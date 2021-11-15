---@class time_util
time_util = time_util or {}
local M = time_util

function M.get_next_month_zero_time()
    local date = os.date("*t", Net:server_time())
    if date.month == 12 then
        date.month = 1
        date.year = date.year + 1
    else
        date.month = date.month + 1
    end
    return os.time({year = date.year, month = date.month, day = 1, hour = 0, min = 0, sec = 0})
end

function M.get_next_next_month_zero_time()
    local date = os.date("*t", Net:server_time())
    if date.month == 12 then
        date.month = 2
        date.year = date.year + 1
    elseif date.month == 11 then
        date.month = 1
        date.year = date.year + 1
    else
        date.month = date.month + 2
    end
    return os.time({year = date.year, month = date.month, day = 1, hour = 0, min = 0, sec = 0})
end

-- 获得当天0点时间
function M.get_today_zero_time()
    local date = os.date("*t", Net:server_time())
    return os.time({year = date.year, month = date.month, day = date.day, hour = 0, min = 0, sec = 0})
end

function M.get_next_day_zero_time()
    local date = os.date("*t", Net:server_time())
    return os.time({year = date.year, month = date.month, day = date.day + 1, hour = 0, min = 0, sec = 0})
end

--获得第二天指定小时的时间
function M.get_next_day_specific_time(specific_hour)
    specific_hour = specific_hour or 0
    local date = os.date("*t", Net:server_time())
    local target_time = os.time({year = date.year, month = date.month, day = date.day, hour = specific_hour, min = 0, sec = 0})
    if target_time < Net:server_time() then
        target_time = os.time({year = date.year, month = date.month, day = date.day + 1, hour = specific_hour, min = 0, sec = 0})
    end
    return target_time
end

-- 计算指定天的0点时间
function M.get_zero_time(ts)
    local date = os.date("*t", ts)
    return os.time({year = date.year, month = date.month, day = date.day, hour = 0, min = 0, sec = 0})
end

function M.get_common_week_day(ts)
    local date = os.date("*t", ts)
    if date.wday == 1 then
        return 7
    end
    return date.wday - 1
end

--得到当天的xx:xx:xx
function M.get_today_custom_time(hour, minute, second)
    local date = os.date("*t", Net:server_time())
    return os.time({year = date.year, month = date.month, day = date.day, hour = hour, min = minute, sec = second})
end

--获得本周星期一0点时间
function M.get_week_zero_time()
    return M.get_week_zero_custom_time(Net:server_time())
end

--获得下周星期一0点时间
function M.get_next_week_zero_time()
    return M.get_week_zero_custom_time(Net:server_time()+ 7 * 24 *  60 * 60 )
end

function M.get_week_zero_custom_time(ts)
    local date = os.date("*t", ts)
    local offsetDay = date.wday == 1 and 7 or date.wday - 1
    return os.time({year = date.year, month = date.month, day = date.day - offsetDay + 1, hour = 0, min = 0, sec = 0})
end

--获取附近几周的任意时间
--nextWeek，往后推移周数，0表示本周
--wday，1表示周日
--方法逻辑上判定周日为一个星期的最后一天
function M.get_appoint_day_time(nextWeek, wday, hour, min, sec)
    return M.get_appoint_day_time_with_ts(Net:server_time(), nextWeek, wday, hour, min, sec)
end

function M.get_appoint_day_time_with_ts(ts, nextWeek, wday, hour, min, sec)
    local date = os.date("*t", ts)
    -- 周日特殊处理
    if date.wday == 1 then
        nextWeek = nextWeek - 1
    end
    local offsetDay = wday - date.wday + nextWeek*7
    return os.time({year = date.year, month = date.month, day = date.day + offsetDay, hour = hour, min = min, sec = sec})
end

function M.check_same_week(time1, time2)
    if not time1 or not time2 then
        return false
    end
    local weekZeroTime1 = M.get_week_zero_custom_time(time1)
    local weekZeroTime2 = M.get_week_zero_custom_time(time2)
    return weekZeroTime1 == weekZeroTime2
end

-- 将表转换为时间
function M.tbl_to_time(time_tbl)
    local d_time = {}
    d_time.year  = time_tbl[1] or 1970
    d_time.month = time_tbl[2] or 1
    d_time.day   = time_tbl[3] or 1
    d_time.hour  = time_tbl[4] or 0
    d_time.min   = time_tbl[5] or 0
    d_time.sec   = time_tbl[6] or 0
    return os.time(d_time)
end

-- 计算是否是同天(按照指定的时间区间)
-- _delta_tm 指与0点的间隔
function M.is_same_day2(_time1, _time2, _delta_tm)
    if math.abs(_time1 - _time2) > 24 * 3600 then
        return false
    end

    if _time1 > _time2 then
        local tm = _time1
        _time1   = _time2
        _time2   = tm
    end

    local reset_tm = M.get_zero_time( _time2 ) + _delta_tm
    if (_time1 < reset_tm and _time2 > reset_tm) then
        return false
    end
    return true
end

function M.is_same_day(_time1, _time2)
    if not _time1 or not _time2 or _time1 == 0 or _time2 == 0 then
        return false
    end

    local date1 = os.date("*t", _time1)
    local date2 = os.date("*t", _time2)
    if date1.day == date2.day and date1.month == date2.month and date1.year == date2.year then
        return true
    else
        return false
    end
end

function M.is_same_week(_time1, _time2)
    if not _time1 or not _time2 then
        return false
    end

    local time1 = M.get_week_zero_custom_time(_time1)
    local time2 = M.get_week_zero_custom_time(_time2)
    return time1 == time2
end

-- 计算两个时间之间相差自然天
-- 算法通过计算两个时间的自然天的零点，然后做减法计算
function M.day_diff(_time_1, _time_2)
    if _time_1 == 0 or _time_2 == 0 then
        return 0
    end
    local m_time_1 = os.date("*t", _time_1)
    local m_time_2 = os.date("*t", _time_2)
    local z_time_1 = os.time({year=m_time_1.year, month=m_time_1.month,
                                day=m_time_1.day, hour=0, min=0, sec=0})
    local z_time_2 = os.time({year=m_time_2.year, month=m_time_2.month,
                                day=m_time_2.day, hour=0, min=0, sec=0})
    local day_sec = 24 * 60 * 60

    local diff_day = math.floor((z_time_1 - z_time_2)/day_sec)
    return diff_day
end

-- 计算两个时间之间相差自然天
-- 算法通过计算两个时间的自然天的凌晨5，然后做减法计算
function M.day_diff_ex(_time_1, _time_2)
    local m_time_1 = os.date("*t", _time_1)
    local m_time_2 = os.date("*t", _time_2)

    local z_time_1 = os.time({year=m_time_1.year, month=m_time_1.month,
                                day=m_time_1.day, hour=5, min=0, sec=0})
    local z_time_2 = os.time({year=m_time_2.year, month=m_time_2.month,
                                day=m_time_2.day, hour=5, min=0, sec=0})
    local day_sec = 24 * 60 * 60

    local diff_day = math.floor((z_time_1 - z_time_2)/day_sec)
    return diff_day
end

-- 获取当日消耗的时间秒数
function M.get_today_seconds()
    local diff_seconds = os.date("*t", Net:server_time()) - M.get_today_zero_time()
    if diff_seconds < 0 then
        diff_seconds = 0
    end
    return diff_seconds
end

function M.format_time(time)
    local hour = math.floor(time/3600)
    local min = math.floor((time - hour*3600)/60)
    local sec = math.fmod(time, 60)
    return string.format("%d:%02d:%02d", hour, min, sec)
end

function M.format_time_by_seconds(seconds)
    local hour = math.floor(seconds/3600)
    local min = math.floor((seconds - hour*3600)/60)
    local sec = math.fmod(seconds, 60)
    if hour == 0 then
        return string.format("%02d:%02d", min, sec)
    end
    return string.format("%d:%02d:%02d", hour, min, sec)
end

function M.format_time_by_ddhhmmss(seconds)
    local day = math.floor(seconds / 86400)
    local hour = math.floor((seconds % 86400) / 3600)
    local min = math.floor((seconds - (day * 86400) - (hour * 3600))/60)
    local sec = math.fmod(seconds, 60)
    if day == 0 then
        return string.format("%d:%02d:%02d", hour, min, sec)
    end

    return string.format("%d:%02d:%02d:%02d", day, hour, min, sec)
end

function M.can_daily_reset(t1, t2)
    local date = os.date
    local year1 = date("%Y", t1)
    local year2 = date("%Y", t2)

    if year2 > year1 then
        return true
    elseif year2 < year1 then
        return false
    else
        local day1 = date("%j", t1)
        local day2 = date("%j", t2)

        return day2 > day1
    end

    return false
end

function M.get_several_days_later(day)
    return Net:server_time() + (86400 * day)
end

function M:transform_time(t)
    return os.time({year = t[1], month = t[2], day = t[3], hour = t[4], min = t[5] or 0, sec = t[6] or 0})
end

function M:in_date(start_time, end_time)
    local t = Net:server_time()
    return  t >= self:transform_time(start_time) and t <= self:transform_time(end_time)
end

function M.get_current_month()
    local date = os.date("*t", Net:server_time())
    return date.month
end

return M