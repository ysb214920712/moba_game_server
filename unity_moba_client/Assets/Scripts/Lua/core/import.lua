---@class U
local U = {}
local CS = CS

---@generic T
---@param class T
---@return T
local function trave_enum_to_luatable(class)
    return U.XLuaHelper.TraveEnumToLuaTable(typeof(class), {})
end

---------- Custom
U.GHelper = CS.GHelper
U.GameReloader = CS.GameReloader
U.XLuaHelper = CS.XLuaHelper
U.XLoader = CS.XLoader
U.LuaBridgeBase = CS.LuaBridgeBase
U.LuaBridgeApplication = CS.LuaBridgeApplication
U.LuaBridgeDragableUI =  CS.LuaBridgeDragableUI
U.LuaBridgeDragable3D =  CS.LuaBridgeDragable3D
U.LuaBridgePressUI = CS.LuaBridgePressUI
U.LuaBridgeAnimatorEvent = CS.LuaBridgeAnimatorEvent
U.LuaBridgeType = trave_enum_to_luatable(CS.LuaBridgeType)
U.UnityBehaviourFunc = trave_enum_to_luatable(CS.UnityBehaviourFunc)
U.ReferGameObjects = CS.ReferGameObjects
U.SRGameOptions = CS.SRGameOptions
U.SRGameOptionsEnum = U.SRGameOptions.SRGameOptionsEnum

U.BattleCamera = CS.BattleCamera
U.EventTriggerListener = CS.EventTriggerListener

U.PhoneHelper = CS.PhoneHelper
U.PrefsHelper = CS.PrefsHelper
U.DownloadHelper = CS.DownloadHelper
U.UnityHelper = CS.UnityHelper

U.ZXingQRCodeTool = CS.ZXingQRCodeTool

U.UILocalize = CS.UILocalize
U.Defines = CS.Defines
U.LuaJson = CS.LuaJson

U.CustomCryptograph = CS.CustomCryptograph
---------- UnityEngine
local UnityEngine = CS.UnityEngine
U.Application = UnityEngine.Application
U.Debug = UnityEngine.Debug
U.Object = UnityEngine.Object
U.GameObject = UnityEngine.GameObject
U.Transform = UnityEngine.Transform
U.SpriteRenderer = UnityEngine.SpriteRenderer
U.Sprite = UnityEngine.Sprite
U.SpriteAtlas = UnityEngine.U2D.SpriteAtlas
U.Texture = UnityEngine.Texture
U.Resources = UnityEngine.Resources
U.Time = UnityEngine.Time
U.Camera = UnityEngine.Camera
U.RectTransform = UnityEngine.RectTransform
U.Vector3 = UnityEngine.Vector3
U.Vector2 = UnityEngine.Vector2
U.Rect = UnityEngine.Rect
U.Canvas = UnityEngine.Canvas
U.CanvasGroup = UnityEngine.CanvasGroup
U.Color = UnityEngine.Color
U.ColorUtility = UnityEngine.ColorUtility
U.Animator = UnityEngine.Animator
U.AnimatorUpdateMode = UnityEngine.AnimatorUpdateMode
U.Animation = UnityEngine.Animation
U.AnimationEvent = UnityEngine.AnimationEvent
U.WaitForSecondsRealtime = UnityEngine.WaitForSecondsRealtime
U.WaitForEndOfFrame =  UnityEngine.WaitForEndOfFrame
U.WaitForFixedUpdate = UnityEngine.WaitForFixedUpdate
U.WaitForSeconds = UnityEngine.WaitForSeconds
U.Screen = UnityEngine.Screen
U.AudioSource = UnityEngine.AudioSource
U.Renderer = UnityEngine.Renderer
U.MeshRenderer = UnityEngine.MeshRenderer
U.SkinnedMeshRenderer = UnityEngine.SkinnedMeshRenderer
U.Shader = UnityEngine.Shader
U.Quaternion = UnityEngine.Quaternion
U.Collider = UnityEngine.Collider
U.CapsuleCollider = UnityEngine.CapsuleCollider
U.Material = UnityEngine.Material
U.Plane = UnityEngine.Plane
U.Rigidbody = UnityEngine.Rigidbody
U.ForceMode = UnityEngine.ForceMode
U.MaterialPropertyBlock = UnityEngine.MaterialPropertyBlock
U.ParticleSystem = UnityEngine.ParticleSystem
U.EventTrigger = UnityEngine.EventSystems.EventTrigger

U.RectTransformUtility = UnityEngine.RectTransformUtility
U.AudioListener = UnityEngine.AudioListener
U.QualitySettings = UnityEngine.QualitySettings
U.RuntimePlatform = UnityEngine.RuntimePlatform
U.WWWForm = UnityEngine.WWWForm
U.UnityWebRequest = UnityEngine.Networking.UnityWebRequest
U.UnityWebRequestResult = UnityEngine.Networking.UnityWebRequest.Result

U.NetworkReachability = UnityEngine.NetworkReachability
U.SystemInfo = UnityEngine.SystemInfo

U.NavMeshAgent = UnityEngine.AI.NavMeshAgent
U.NavMeshPathStatus = UnityEngine.AI.NavMeshPathStatus
U.ObstacleAvoidanceType = UnityEngine.AI.ObstacleAvoidanceType
U.GUIUtility = UnityEngine.GUIUtility
U.RaycastHit = UnityEngine.RaycastHit
U.Physics = UnityEngine.Physics
U.Ray = UnityEngine.Ray
U.Profiler = UnityEngine.Profiling.Profiler
U.SystemLanguage = UnityEngine.SystemLanguage
U.Random = UnityEngine.Random
U.LineRenderer = CS.UnityEngine.LineRenderer


---------- UnityEngine.UI
local UI = UnityEngine.UI
U.GraphicRaycaster = UI.GraphicRaycaster
U.Button = UI.Button
U.Toggle = UI.Toggle
U.ToggleGroup = UI.ToggleGroup
U.Image = UI.Image
U.RawImage = UI.RawImage
U.Selectable = UI.Selectable
U.Text = UI.Text
U.ScrollRect = UI.ScrollRect
U.LayoutRebuilder = UI.LayoutRebuilder
U.InputField = UI.InputField
U.Dropdown = UI.Dropdown
U.LayoutGroup = UI.LayoutGroup

---------- TMPro.TextMeshPro
-- U.TextMeshPro = CS.TMPro.TextMeshPro
-- U.TextMeshProUGUI = CS.TMPro.TextMeshProUGUI
U.TMP_Text = CS.TMPro.TMP_Text
U.TMP_InputField = CS.TMPro.TMP_InputField
U.TMP_Dropdown = CS.TMPro.TMP_Dropdown
U.TMP_FontAsset = CS.TMPro.TMP_FontAsset
U.TMP_Alignment = trave_enum_to_luatable(CS.TMPro.TextAlignmentOptions)

---------- DOTween
local tw =  CS.DG.Tweening
U.DOTween = tw.DOTween
U.Ease = tw.Ease
U.LoopType = tw.LoopType
U.RotateMode = tw.RotateMode

U.TriggerSender = CS.TriggerSender
U.MaterialSwitch = CS.MaterialSwitch
U.MaterialConfig = CS.MaterialConfig

---------- MyFrame
U.user_login = CS.user_login
U.event_mgr = CS.event_manager
U.ugame = CS.ugame

_G.Json = U.LuaJson
_G.U = U
