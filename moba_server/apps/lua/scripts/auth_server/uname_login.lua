local mysql_center = require("database/mysql_auth_center")
local redis_center = require("database/redis_center")
local Respones = require("Respones")
local Stype = require("Stype")
local Cmd = require("Cmd")

function do_uname_login(s, req)
    local utag = req[3]
    local uname_login_req = req[4]

    if string.len(uname_login_req.uname) <= 0 
    or string.len(uname_login_req.upwd) ~= 32 then
        local msg = {Stype.Auth, Cmd.eUnameLoginRes, utag, {
            status = Respones.InvalidParams,
        }}
        Session.send_msg(s, msg)
        return
    end

    mysql_center.get_uinfo_by_uname_upwd(uname_login_req.uname, uname_login_req.upwd, function(err, uinfo)
        if err then
            Logger.error(err)
            local msg = {Stype.Auth, Cmd.eUnameLoginRes, utag, {
                    status = Respones.SystemErr,
                }}
            Session.send_msg(s, msg)
            return 
        end

        if uinfo == nil then
            local msg = {Stype.Auth, Cmd.eUnameLoginRes, utag, {
                status = Respones.UnameOrUpwdError,
            }}
            Session.send_msg(s, msg)
            return
        end

        if uinfo.status ~= 0 then --账号异常
            local msg = {Stype.Auth, Cmd.eUnameLoginRes, utag, {
                    status = Respones.UserIsFreeze,
                }}
            Session.send_msg(s, msg)
            return
        end

        print(uinfo.uid, uinfo.unick)

        redis_center.set_uinfo_inredis(uinfo.uid, uinfo)

        local msg = {
            Stype.Auth,
            Cmd.eUnameLoginRes,
            utag,
            {
                status = Respones.OK,
                uinfo = {
                    unick = uinfo.unick,
                    uface = uinfo.uface,
                    usex = uinfo.usex,
                    uvip = uinfo.uvip,
                    uid = uinfo.uid,
                }
            }
        }

        Session.send_msg(s, msg)
    end)
end

local uname_login = {
    do_uname_login = do_uname_login,
}

return uname_login