using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;

#if UNITY_IOS
	using UnityEngine.iOS;
#endif

public enum VibrateTypes {
    Selection, Success, Warning, Failure, Skill, LightImpact, MediumImpact, HeavyImpact, RigidImpact, SoftImpact
}

public static class VibrateHelper
{
#if UNITY_IOS
    private static bool isIOSHapticSupported = iOSHapticsSupported();

	[DllImport("__Internal")]
	private static extern void _vibrate();
    [DllImport("__Internal")]
    private static extern void _continuousVibrate(float seconds, float amplitude);
    [DllImport("__Internal")]
    private static extern void _selectionVibrate();
    [DllImport("__Internal")]
    private static extern void _successVibrate();
    [DllImport("__Internal")]
    private static extern void _warningVibrate();
    [DllImport("__Internal")]
    private static extern void _failureVibrate();
    [DllImport("__Internal")]
    private static extern void _skillVibrate();
    [DllImport("__Internal")]
    private static extern void _lightImpactVibrate();
    [DllImport("__Internal")]
    private static extern void _mediumImpactVibrate();
    [DllImport("__Internal")]
    private static extern void _heavyImpactVibrate();
    [DllImport("__Internal")]
    private static extern void _rigidImpactVibrate();
    [DllImport("__Internal")]
    private static extern void _softImpactVibrate();
    [DllImport("__Internal")]
    private static extern void _cancelVibrate();
    [DllImport("__Internal")]
    private static extern void _playHapticPattern(string path);
    [DllImport("__Internal")]
    private static extern void _audioPlaySystemSound(int id);
#elif UNITY_ANDROID
#if !UNITY_EDITOR
    private static bool isAndroidVibrateSupported = VibrateAndroid.AndroidHasVibrator();
#else
    private static bool isAndroidVibrateSupported = false;
#endif
#endif
    private static bool _vibrate_on = true;

    /// <summary>
    /// 瞬间的振动
    /// </summary>
    public static void Vibrate() {
        if (!_vibrate_on) return;

#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer) {
            if (isIOSHapticSupported)
                _vibrate();
            else
                _audioPlaySystemSound(1519);
        } 
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            if (isAndroidVibrateSupported)
                VibrateAndroid.Vibrate();
            else
                Handheld.Vibrate();
        }
#endif
    }

    /// <summary>
    /// 连续的振动
    /// </summary>
    /// <param name="seconds">振动时长</param>
    /// <param name="amplitude">振动强度 0-1 </param>
    public static void ContinuousVibrate(float seconds, float amplitude) {
        if (!_vibrate_on) return;

#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer) {
            if (isIOSHapticSupported)
                _continuousVibrate(seconds, amplitude);
            else
                Handheld.Vibrate();
        } 
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            if (isAndroidVibrateSupported)
                VibrateAndroid.ContinuousVibrate(seconds, amplitude);
            else
                Handheld.Vibrate();
        }
#endif
    }

    //不同模式的振动
    public static void VibrateByType(VibrateTypes vibrateType) {
        if (!_vibrate_on) return;

#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer) {
            if (isIOSHapticSupported) {
                switch (vibrateType)
                {
                    case VibrateTypes.Selection:
                        _selectionVibrate();
                        break;
                    case VibrateTypes.Success:
                        _successVibrate();
                        break;
                    case VibrateTypes.Warning:
                        _warningVibrate();
                        break;
                    case VibrateTypes.Failure:
                        _failureVibrate();
                        break;
                    case VibrateTypes.Skill:
                        _skillVibrate();
                        break;
                    case VibrateTypes.LightImpact:
                        _lightImpactVibrate();
                        break;
                    case VibrateTypes.MediumImpact:
                        _mediumImpactVibrate();
                        break;
                    case VibrateTypes.HeavyImpact:
                        _heavyImpactVibrate();
                        break;
                    case VibrateTypes.RigidImpact:
                        _rigidImpactVibrate();
                        break;
                    case VibrateTypes.SoftImpact:
                        _softImpactVibrate();
                        break;
                    default:
                        Handheld.Vibrate();
                        break;
                }
            }
            else {
                switch (vibrateType)
                {
                    case VibrateTypes.Selection:
                    case VibrateTypes.Success:
                    case VibrateTypes.LightImpact:
                        _audioPlaySystemSound(1519);
                        break;
                    case VibrateTypes.Warning:
                    case VibrateTypes.Failure:
                    case VibrateTypes.Skill:
                    case VibrateTypes.MediumImpact:
                    case VibrateTypes.HeavyImpact:
                        _audioPlaySystemSound(1520);
                        break;
                    case VibrateTypes.RigidImpact:
                        _audioPlaySystemSound(0);
                        break;
                    case VibrateTypes.SoftImpact:
                        _audioPlaySystemSound(1521);
                        break;
                    default:
                        Handheld.Vibrate();
                        break;
                }
            }
        } 
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            if (isAndroidVibrateSupported)
            {
                switch (vibrateType)
                {
                    case VibrateTypes.Selection:
                        VibrateAndroid.SelectionVibrate();
                        break;
                    case VibrateTypes.Success:
                        VibrateAndroid.SuccessVibrate();
                        break;
                    case VibrateTypes.Warning:
                        VibrateAndroid.WarningsVibrate();
                        break;
                    case VibrateTypes.Failure:
                        VibrateAndroid.FailureVibrate();
                        break;
                    case VibrateTypes.Skill:
                        VibrateAndroid.SkillVibrate();
                        break;
                    case VibrateTypes.LightImpact:
                        VibrateAndroid.LightImpactVibrate();
                        break;
                    case VibrateTypes.MediumImpact:
                        VibrateAndroid.MediuImpactVibrate();
                        break;
                    case VibrateTypes.HeavyImpact:
                        VibrateAndroid.HeavyImpactVibrate();
                        break;
                    case VibrateTypes.RigidImpact:
                        VibrateAndroid.RigidImpactVibrate();
                        break;
                    case VibrateTypes.SoftImpact:
                        VibrateAndroid.SoftImpactVibrate();
                        break;
                    default:
                        Handheld.Vibrate();
                        break;
                }
            }
            else
                Handheld.Vibrate();
        }
#endif
    }

    public static void PlayIOSHapticPattern(string path) {
#if UNITY_IOS
        _playHapticPattern(path);
#endif
    }

    //是否支持振动
    public static bool IsSupportedVibrate() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer)
            return isIOSHapticSupported;
        else
            return false;
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            return isAndroidVibrateSupported;
        } else {
            return false;
        }
#else
        return false;
#endif
    }

    //停止振动
    public static void CancelVibrate() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer) {
            _cancelVibrate();
        }
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            VibrateAndroid.AndroidCancelVibrations();
        }
#endif
    }

    public static void SetVibrateEnabled(bool enable) {
        _vibrate_on = enable;
    }

#if UNITY_IOS
    private static bool iOSHapticsSupported() {
        DeviceGeneration generation = Device.generation;
        if ((generation == DeviceGeneration.iPhone3G)
        || (generation == DeviceGeneration.iPhone3GS)
        || (generation == DeviceGeneration.iPodTouch1Gen)
        || (generation == DeviceGeneration.iPodTouch2Gen)
        || (generation == DeviceGeneration.iPodTouch3Gen)
        || (generation == DeviceGeneration.iPodTouch4Gen)
        || (generation == DeviceGeneration.iPhone4)
        || (generation == DeviceGeneration.iPhone4S)
        || (generation == DeviceGeneration.iPhone5)
        || (generation == DeviceGeneration.iPhone5C)
        || (generation == DeviceGeneration.iPhone5S)
        || (generation == DeviceGeneration.iPhone6)
        || (generation == DeviceGeneration.iPhone6Plus)
        || (generation == DeviceGeneration.iPhone6S)
        || (generation == DeviceGeneration.iPhone6SPlus)
        || (generation == DeviceGeneration.iPhoneSE1Gen)
        || (generation == DeviceGeneration.iPad1Gen)
        || (generation == DeviceGeneration.iPad2Gen)
        || (generation == DeviceGeneration.iPad3Gen)
        || (generation == DeviceGeneration.iPad4Gen)
        || (generation == DeviceGeneration.iPad5Gen)
        || (generation == DeviceGeneration.iPadAir1)
        || (generation == DeviceGeneration.iPadAir2)
        || (generation == DeviceGeneration.iPadMini1Gen)
        || (generation == DeviceGeneration.iPadMini2Gen)
        || (generation == DeviceGeneration.iPadMini3Gen)
        || (generation == DeviceGeneration.iPadMini4Gen)
        || (generation == DeviceGeneration.iPadPro10Inch1Gen)
        || (generation == DeviceGeneration.iPadPro10Inch2Gen)
        || (generation == DeviceGeneration.iPadPro11Inch)
        || (generation == DeviceGeneration.iPadPro1Gen)
        || (generation == DeviceGeneration.iPadPro2Gen)
        || (generation == DeviceGeneration.iPadPro3Gen)
        || (generation == DeviceGeneration.iPadUnknown)
        || (generation == DeviceGeneration.iPodTouch1Gen)
        || (generation == DeviceGeneration.iPodTouch2Gen)
        || (generation == DeviceGeneration.iPodTouch3Gen)
        || (generation == DeviceGeneration.iPodTouch4Gen)
        || (generation == DeviceGeneration.iPodTouch5Gen)
        || (generation == DeviceGeneration.iPodTouch6Gen)
        || (generation == DeviceGeneration.iPhone6SPlus))
        {
            return false;
        }
        else
        {
            return true;
        }
    }
#endif

    public static void SetVibrateParams(long lightDuration, long mediumDuration, long heavyDuration, long rigidDuration, long softDuration, int lightAmplitude, int mediumAmplitude, int heavyAmplitude, int rigidAmplitude, int softAmplitude) {
#if UNITY_ANDROID
        VibrateAndroid.SetVibrateParams(lightDuration, mediumDuration, heavyDuration, rigidDuration, softDuration, lightAmplitude, mediumAmplitude, heavyAmplitude, rigidAmplitude, softAmplitude);
#endif
    }
}