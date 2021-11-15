---@class GlobalInfo
GlobalInfo = {}
local M = GlobalInfo

M.control_object = U.GameObject.Find("Game")

M.ui_canvas_resolution_x = U.PhoneHelper.UIResolution.x
M.ui_canvas_resolution_y = U.PhoneHelper.UIResolution.y
M.ui_canvas = U.GameObject.Find("UI/Canvas")

M.is_ios = (U.Application.platform == U.RuntimePlatform.IPhonePlayer)
M.is_android = (U.Application.platform == U.RuntimePlatform.Android)

M.system_memory = U.SystemInfo.systemMemorySize
M.identifier = U.Application.identifier

M.locale = U.PhoneHelper.Country()
M.language = U.PhoneHelper.Language()
M.client_ver = 1--U.GHelper.GameVersion()
M.client_ver_code = 1--U.GHelper.GameVersionCode()
M.env = ""--U.GHelper.GameEnv()
M.channel = ""--U.GHelper.GameChannel()
M.app_name = U.Application.productName

M.ShaderPropertyId = {
    Color = U.Shader.PropertyToID("_Color"),
    EmissionColor = U.Shader.PropertyToID("_EmissionColor"),
    GroundHeight = U.Shader.PropertyToID("_groundHeight"),
    ShadowPower = U.Shader.PropertyToID("_shadowPower"),
    TintColor = U.Shader.PropertyToID("_TintColor"),
    SpecularColor = U.Shader.PropertyToID("_SpecColor"),
    RimMin = U.Shader.PropertyToID("_RimMin"),
    FillColor = U.Shader.PropertyToID("_FillColor"),
    FillPhase = U.Shader.PropertyToID("_FillPhase"),
}

M.AnimatorHashCode = {
    -- state
    born = U.Animator.StringToHash("born");
    mainskill = U.Animator.StringToHash("mainskill"), 
    idle = U.Animator.StringToHash("idle"),
    run = U.Animator.StringToHash("run"),
    hit = U.Animator.StringToHash("hit"),
    up = U.Animator.StringToHash("up"),
    down = U.Animator.StringToHash("down");
    rush = U.Animator.StringToHash("rush");

    -- tag
    shoot = U.Animator.StringToHash("shoot"),
    upper_shoot = U.Animator.StringToHash("upper_shoot"),
    attack = U.Animator.StringToHash("attack"),
    skill = U.Animator.StringToHash("skill"),
    sing_start = U.Animator.StringToHash("sing_start"),
    singing = U.Animator.StringToHash("singing"),
    sing_over = U.Animator.StringToHash("sing_over"),
}

M.server_list = {
    inner = "http://192.168.100.12:8000/",
    qa = "http://121.37.19.83:8000/",
    publish = "http://gate-tps02-tt.tapenjoy.com:8000/",
}

function M.ui_canvas_scale_x()
    return U.PhoneHelper.UICanvasSize.x / M.ui_canvas_resolution_x
end

function M.ui_canvas_scale_y()
    return U.PhoneHelper.UICanvasSize.y / M.ui_canvas_resolution_y
end

function M.is_review_env()
    return M.env == "review"
end

function M.get_device_info()
    M.device_idfa = U.PhoneHelper.IDFA("")
    M.device_muid = U.PhoneHelper.MUID()
    M.device_android_id = U.PhoneHelper.AndroidID()
    M.device_mac_address = U.PhoneHelper.MacAddress()
    M.device_udid = U.PhoneHelper.DeviceUDID()
    M.device_name = U.SystemInfo.deviceName
    M.device_model = U.SystemInfo.deviceModel
    -- not support,but required
    M.device_gaid = "gaid"
    M.device_oaid = "oaid"
end

function M.get_server_url()
    if _PUBQA then
        return M.server_list.qa
    elseif _PUBLISH then
        return M.server_list.publish 
    end

    return M.server_list.inner
end

return M