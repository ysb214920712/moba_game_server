/*
 * Tencent is pleased to support the open source community by making xLua available.
 * Copyright (C) 2016 THL A29 Limited, a Tencent company. All rights reserved.
 * Licensed under the MIT License (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
*/

using System.Collections.Generic;
using System;
using UnityEngine;
using XLua;
//using System.Reflection;
//using System.Linq;

//配置的详细介绍请看Doc下《XLua的配置.doc》
public static class XLuaGenConfig
{
    //lua中要使用到C#库的配置，比如C#标准库，或者Unity API，第三方库等。
    [LuaCallCSharp]
    public static List<Type> LuaCallCSharp = new List<Type>() {
        typeof(System.Object),
        typeof(UnityEngine.Application),
        typeof(UnityEngine.Object),
        typeof(Texture),
        typeof(Canvas),
        typeof(Plane),
        typeof(Screen),
        typeof(Vector2),
        typeof(Vector3),
        typeof(Vector4),
        typeof(Quaternion),
        typeof(Rect),
        typeof(Color),
        typeof(Color32),
        typeof(Ray),
        typeof(Bounds),
        typeof(Ray2D),
        typeof(Time),
        typeof(Material),
        typeof(GameObject),
        typeof(Component),
        typeof(Camera),
        typeof(Behaviour),
        typeof(Transform),
        typeof(RectTransform),
        typeof(Resources),
        typeof(TextAsset),
        typeof(Animation),
        typeof(Animator),
        typeof(RuntimeAnimatorController),
        typeof(AnimatorUpdateMode),
        typeof(AnimatorStateInfo),
        typeof(Sprite),
        typeof(SpriteRenderer),
        typeof(SpriteMask),
        typeof(Keyframe),
        typeof(AnimationCurve),
        typeof(AnimationClip),
        typeof(AnimationState),
        typeof(AnimationEvent),
        typeof(MonoBehaviour),
        typeof(Renderer),
        typeof(Shader),
        typeof(Collider),
        typeof(Rigidbody),
        typeof(ForceMode),
        typeof(BoxCollider),
        typeof(BoxCollider2D),
        typeof(PolygonCollider2D),
        typeof(CapsuleCollider),
        typeof(MeshCollider),
        typeof(FlareLayer),
        typeof(CanvasRenderer),
        typeof(MeshFilter),
        typeof(MeshRenderer),
        typeof(LineRenderer),
        typeof(AmbientSound),
        typeof(SkinnedMeshRenderer),
        typeof(RectTransformUtility),
        typeof(QualitySettings),
        typeof(RuntimePlatform),
        typeof(UnityEngine.Debug),
        typeof(AudioSource),
        typeof(AudioListener),
        typeof(CanvasGroup),
        typeof(SystemInfo),
        typeof(RenderTexture),
        typeof(Array),
        typeof(ParticleSystem),
        typeof(Light),
        typeof(LightProbes),
        typeof(Mathf),
        typeof(WaitForEndOfFrame),
        typeof(WaitForFixedUpdate),
        typeof(WaitForSeconds),
        typeof(WaitForSecondsRealtime),
        typeof(UnityEngine.UI.GraphicRaycaster),
        typeof(UnityEngine.UI.Selectable),
        typeof(UnityEngine.UI.Selectable.Transition),
        typeof(UnityEngine.UI.Button),
        typeof(UnityEngine.UI.Image),
        typeof(UnityEngine.UI.RawImage),
        typeof(UnityEngine.UI.Text),
        typeof(UnityEngine.UI.ScrollRect),
        typeof(UnityEngine.UI.LayoutRebuilder),
        typeof(UnityEngine.UI.Dropdown),
        typeof(UnityEngine.UI.LayoutGroup),
        typeof(UnityEngine.Events.UnityEventBase),
        typeof(WWWForm),
        typeof(UnityEngine.Networking.UnityWebRequest),
        typeof(ColorUtility),
        typeof(List<int>),
        typeof(List<string>),
        typeof(List<Vector3>),
        typeof(UnityEngine.GUIUtility),
        typeof(RaycastHit),
        typeof(Physics),
        typeof(MaterialPropertyBlock),

        // NavMesh
        typeof(UnityEngine.AI.NavMeshAgent),
        typeof(UnityEngine.AI.NavMeshPathStatus),
        typeof(UnityEngine.AI.ObstacleAvoidanceType),

        // Profiler
        typeof(UnityEngine.Profiling.Profiler),


        // Game Script
        typeof(UnityEngineObjectExtention),
        typeof(GHelper),
        typeof(PhoneHelper),
        typeof(PrefsHelper),
        typeof(XLuaHelper),
        typeof(UnityHelper),
        typeof(ParticleHelper),
        typeof(VibrateHelper),
        typeof(CustomCryptograph),
        typeof(NotificationHelper),
        typeof(XLoader),
        typeof(SRGameOptions),
        typeof(LuaTableDelegate),
        typeof(EventTriggerListener),
        typeof(DownloadHelper),
        typeof(ReferGameObjects),

        typeof(VibrateHelper),
        typeof(VibrateTypes),
        typeof(Defines),
        typeof(XOR),
        typeof(LuaJson),
        typeof(UILocalize),

    };

    // see:https://www.cnblogs.com/zhaoqingqing/p/6753701.html
    [LuaCallCSharp]
    public static List<Type> DoTweenLuaCallCsList = new List<Type>() {
        typeof(DG.Tweening.LoopType),
        typeof(DG.Tweening.Ease),
        typeof(DG.Tweening.Tween),
        typeof(DG.Tweening.Tweener),
        typeof(DG.Tweening.Sequence),
        typeof(DG.Tweening.DOTween),
        typeof(DG.Tweening.ShortcutExtensions),
        typeof(DG.Tweening.DOTweenModuleAudio),
        typeof(DG.Tweening.DOTweenModuleUI),
        typeof(DG.Tweening.Core.TweenerCore<float, float, DG.Tweening.Plugins.Options.FloatOptions>),
        typeof(DG.Tweening.Core.TweenerCore<UnityEngine.Vector3, UnityEngine.Vector3, DG.Tweening.Plugins.Options.VectorOptions>),
        typeof(DG.Tweening.Core.TweenerCore<UnityEngine.Color, UnityEngine.Color, DG.Tweening.Plugins.Options.ColorOptions>),
        typeof(DG.Tweening.Core.TweenerCore<UnityEngine.Vector2, UnityEngine.Vector2, DG.Tweening.Plugins.Options.VectorOptions>),
        typeof(DG.Tweening.Core.TweenerCore<UnityEngine.Vector3, UnityEngine.Vector3[], DG.Tweening.Plugins.Options.Vector3ArrayOptions>),
        typeof(DG.Tweening.Core.TweenerCore<UnityEngine.Quaternion,UnityEngine.Vector3,DG.Tweening.Plugins.Options.QuaternionOptions>),
        typeof(DG.Tweening.TweenSettingsExtensions),
        typeof(DG.Tweening.TweenExtensions),
    };

    // see:http://digitalnativestudios.com/textmeshpro/docs/ScriptReference/
    // see:https://docs.unity3d.com/Packages/com.unity.textmeshpro@1.1/api/TMPro.html#classes
    [LuaCallCSharp]
    public static List<Type> TMProLuaCallCsList = new List<Type>(){
        // typeof(TMPro.TextMeshPro),
        // typeof(TMPro.TextMeshProUGUI),
        typeof(TMPro.TMP_Text),
        typeof(TMPro.TMP_InputField),
        typeof(TMPro.TMP_Dropdown),
        typeof(TMPro.TextureMappingOptions),
        typeof(TMPro.TextAlignmentOptions),
    };


    //C#静态调用Lua的配置（包括事件的原型），仅可以配delegate，interface
    [CSharpCallLua]
    public static List<Type> CSharpCallLua = new List<Type>() {
                typeof(Func<bool>),
                typeof(Func<double, double, double>),
                typeof(Func<int, bool>),
                typeof(Func<int, int, bool>),
                typeof(Func<LuaTable>),
                typeof(Func<int[]>),
                typeof(Action),
                typeof(Action<bool>),
                typeof(Action<int>),
                typeof(Action<string>),
                typeof(Action<double>),
                typeof(Action<int,Vector3>),
                typeof(Action<int,string>),
                typeof(Action<float,uint>),
                typeof(Action<bool, Texture2D>),
                typeof(Action<int, int, bool>),
                typeof(Action<UnityEngine.Object[]>),
                typeof(UnityEngine.Events.UnityAction),
                typeof(UnityEngine.Events.UnityAction<UnityEngine.Vector2>),
                typeof(System.Collections.IEnumerator),
                typeof(System.Action<int, UnityEngine.Transform>),
            };

    //黑名单
    [BlackList]
    public static List<List<string>> BlackList = new List<List<string>>()  {
                new List<string>(){"System.Xml.XmlNodeList", "ItemOf"},
                new List<string>(){"UnityEngine.WWW", "movie"},
    #if UNITY_WEBGL
                new List<string>(){"UnityEngine.WWW", "threadPriority"},
    #endif
                new List<string>(){"UnityEngine.Texture2D", "alphaIsTransparency"},
                new List<string>(){"UnityEngine.Security", "GetChainOfTrustValue"},
                new List<string>(){"UnityEngine.CanvasRenderer", "onRequestRebuild"},
                new List<string>(){"UnityEngine.UI.Text", "OnRebuildRequested"},
                new List<string>(){"UnityEngine.Texture", "imageContentsHash"},
                new List<string>(){"UnityEngine.QualitySettings", "streamingMipmapsRenderersPerFrame"},
                new List<string>(){"UnityEngine.Light", "areaSize"},
                new List<string>(){"UnityEngine.Light", "lightmapBakeType"},
                new List<string>(){"UnityEngine.Light", "shadowRadius"},
                new List<string>(){"UnityEngine.Light", "shadowAngle"},
                new List<string>(){"UnityEngine.Light", "SetLightDirty"},

                new List<string>(){"UnityEngine.WWW", "MovieTexture"},
                new List<string>(){"UnityEngine.WWW", "GetMovieTexture"},
                new List<string>(){"UnityEngine.AnimatorOverrideController", "PerformOverrideClipListCleanup"},
    #if !UNITY_WEBPLAYER
                new List<string>(){"UnityEngine.Application", "ExternalEval"},
    #endif
                new List<string>(){"UnityEngine.GameObject", "networkView"}, //4.6.2 not support
                new List<string>(){"UnityEngine.Component", "networkView"},  //4.6.2 not support
                new List<string>(){"System.IO.FileInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.FileInfo", "SetAccessControl", "System.Security.AccessControl.FileSecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.DirectoryInfo", "SetAccessControl", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "CreateSubdirectory", "System.String", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "Create", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"UnityEngine.MonoBehaviour", "runInEditMode"},

                new List<string>(){"UnityEngine.MeshRenderer", "receiveGI"},
                new List<string>(){"UnityEngine.MeshRenderer", "scaleInLightmap"},
                new List<string>(){"UnityEngine.MeshRenderer", "stitchLightmapSeams"},
                new List<string>(){"UnityEngine.MeshRenderer", "subMeshStartIndex"},
            };
}
