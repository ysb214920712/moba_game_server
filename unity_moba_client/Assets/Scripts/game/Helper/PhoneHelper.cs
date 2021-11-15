using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Runtime.InteropServices;
#if UNITY_ANDROID
using Unity.Notifications.Android;
using UnityEngine.Android;
#endif

public static class PhoneHelper
{
    private static string udid = string.Empty;
    private static AndroidJavaObject gameActivity = null;
    public static Vector2 UIResolution = new Vector2(750, 1334);
    public static RectTransform UICanvasTrans;
    public static Vector2 UICanvasSize
    {
        get {
            if (UICanvasTrans == null)
                return UIResolution;
            else
                return UICanvasTrans.sizeDelta;
        }
    }

    public static AndroidJavaObject getGameActivity()
    {
#if UNITY_ANDROID
        if( gameActivity == null )
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            gameActivity = jc.GetStatic<AndroidJavaObject>("currentActivity");
        }
#endif
        return gameActivity;
    }

    public static bool HasReadWritePermission()
    {
#if UNITY_ANDROID
        if ( !Permission.HasUserAuthorizedPermission(Permission.ExternalStorageWrite) )
        {
            return false;
        }
        return true;
#else
        return true;
#endif
    }

    public static void RequestReadWritePermission()
    {
#if UNITY_ANDROID
        if ( !Permission.HasUserAuthorizedPermission(Permission.ExternalStorageWrite) )
        {
            Permission.RequestUserPermission(Permission.ExternalStorageWrite);
        }
#endif
    }

    public static bool ShouldShowRequestReadWritePermissionRationale()
    {
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            return jc.CallStatic<bool>("shouldShowRequestPermissionRationale", Permission.ExternalStorageWrite);
        } else {
            return false;
        }
#else
        return false;
#endif
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern void _openSelfSettings();
#endif
    public static void OpenSelfSettings()
    {
#if UNITY_IOS
		if( Application.platform == RuntimePlatform.IPhonePlayer )
            _openSelfSettings();
#endif
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            jc.CallStatic("openSelfSettings");
        }
#endif
    }

    public static string DeviceUDID()
    {
        if (string.IsNullOrEmpty(udid))
            udid = DeviceUDID("");
        return udid;
    }

    public static string IDFA(string channel)
    {
#if UNITY_IOS
		if( Application.platform == RuntimePlatform.IPhonePlayer )
			return "todo ios";
#endif
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            return "todo android";
        }
#endif
        return "editor";
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern string _deviceUDID();
#endif
    public static string DeviceUDID(string channel)
    {
#if UNITY_IOS
		if( Application.platform == RuntimePlatform.IPhonePlayer )
			return _deviceUDID();
#endif
#if UNITY_ANDROID
        Debug.Log("Use DeviceUDID");
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            return jc.CallStatic<string>("getDeviceId", channel);
        }
#endif
        return SystemInfo.deviceUniqueIdentifier;
    }

    public static string MacAddress()
    {
#if UNITY_IOS
        return "todo ios";
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string macAddress = jc.CallStatic<string>("getMacAddress");
            return macAddress;
        }
        return "editor";
#else
        return "editor";
#endif
    }
    public static string AndroidID()
    {
#if UNITY_IOS
        return "todo ios";
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string androidID = jc.CallStatic<string>("getAndroidId");
            return androidID;
        }
        return "editor";
#else
        return "editor";
#endif
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern string _getCountry();
#endif
    public static string Country()
    {
#if UNITY_IOS
        if( Application.platform == RuntimePlatform.IPhonePlayer )
			return _getCountry();
#endif
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string country = jc.CallStatic<string>("getCountry");
            return country;
        }
#endif
        // return "editor";
        return "CN";
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern string _getLanguage();
#endif
    public static string Language()
    {
#if UNITY_IOS
       if( Application.platform == RuntimePlatform.IPhonePlayer )
			return _getLanguage();
        else
            return "editor";
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string language = jc.CallStatic<string>("getLanguage");
            return language;
        }
        return "editor";
#else
        return "editor";
#endif
    }

    public static string MUID()
    {
#if UNITY_IOS
        return "todo ios";
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string imei = jc.CallStatic<string>("getImei");
            return imei;
        }
        return "editor";
#else
        return "editor";
#endif
    }

    public static bool IsPlayWithWifi()
    {
        return Application.internetReachability == NetworkReachability.ReachableViaLocalAreaNetwork;
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern void _copyToSystem(string text);
#endif
    [System.Obsolete("Use GUIUtility.systemCopyBuffer instead.")]
    public static void CopyToSystem(string text)
    {
#if UNITY_IOS
		if( Application.platform == RuntimePlatform.IPhonePlayer )
			_copyToSystem(text);
#endif
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            jc.CallStatic("copyTextToClipboard", text);
        }
#endif
    }

#if UNITY_IOS
    [DllImport("__Internal")]
    private static extern void _nslog(string text);
#endif
    public static void NSLog(string text)
    {
#if UNITY_IOS
        if( Application.platform == RuntimePlatform.IPhonePlayer )
            _nslog(text);
#endif
    }

#if UNITY_IOS
    [DllImport("__Internal")]
    private static extern void _goComment();
#endif
    public static void GoComment()
    {
#if UNITY_IOS
		if( Application.platform == RuntimePlatform.IPhonePlayer )
            _goComment();
#endif
    }

    public static bool IsExistObb()
    {
        bool ret = false;
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            // AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            // if (jc != null)
            //     ret = jc.CallStatic<bool>("isExistObb");
            if (Resources.Load<TextLocalizationObject>("localization") != null)
                ret = true;
        }
#endif
        return ret;
    }

    public static void StartDownloadObb()
    {
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            if (jc != null)
                jc.CallStatic("startDownloadObb");
        }
#endif
    }

    public static void ContinueDownloadObb()
    {
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            if (jc != null)
                jc.CallStatic("onObbContinueDownload");
        }
#endif
    }

    public static void ResumeDownloadObbOnCell()
    {
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            if (jc != null)
                jc.CallStatic("onObbResumeDownloadOnCell");
        }
#endif
    }

    public static void RestartApplication()
    {
#if UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            if (jc != null)
                jc.CallStatic("restartApplication");
        }
#endif
    }

    public static void ForceQuit()
    {
#if !UNITY_EDITOR
        if( Application.platform == RuntimePlatform.Android )
        {
            PrefsHelper.Save();

            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            jc.CallStatic("forceQuit");

            return;
        }

        Application.Quit();
#else
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }

    
#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern bool _hasNotch();
#endif
    public static bool HasNotch() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer)
            return _hasNotch();
        else
            return false;
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            bool result = jc.CallStatic<bool>("hasNotch");
            return result;
        }
        else
            return false;
#else
        return false;
#endif
    }

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern int _getNotchHeight();
#endif
    public static int GetNotchHeight() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer)
            return (int)(_getNotchHeight() * UIResolution.y / Screen.height);
        else
            return 0;
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            int result = jc.CallStatic<int>("getNotchHeight");
            return (int)(result * UIResolution.y / Screen.height);
        }
        else
            return 0;
#else
        return 0;
#endif
    }

    public static void TestException()
    {
#if OVERSEAS
        //CrashlyticsInit.TestException();
#endif
    }

    #if UNITY_IOS
	[DllImport("__Internal")]
	private static extern void _makeCrash();
#endif
    public static void MakeCrash() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer)
            _makeCrash();
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android)
        {
            AndroidJavaObject application = getGameActivity().Call<AndroidJavaObject>("getApplication");
            application.Call("makeCrash");
        }
#endif
        GLog.Log("........PhoneHelper.MakeCrash......");
    }

#if UNITY_IOS
    [DllImport("__Internal")]
    private static extern string _getUriScheme();
#endif
    public static string GetUriScheme() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer) {
            return _getUriScheme();
        } else {
            return string.Empty;
        }
#elif UNITY_ANDROID
        if (Application.platform == RuntimePlatform.Android) {
            AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
            string result = jc.CallStatic<string>("getUriScheme");
            return result;
        } else {
            return string.Empty;
        }
#else
        return string.Empty;
#endif
    }

#if UNITY_IOS
	[DllImport( "__Internal" )]
	private static extern void _shareImageWithSystem( string path );
#endif
    public static void ShareImageWithSystem(string path, string title)
	{
#if UNITY_IOS
		_shareImageWithSystem(path);
#elif UNITY_ANDROID
		AndroidJavaClass jc = new AndroidJavaClass("com.minitap.ane.NAPI");
        jc.CallStatic("shareImageWithSystem", path, title);
#endif
	}

#if UNITY_IOS
	[DllImport("__Internal")]
	private static extern bool _needRequestTrackinggAuthorization();
#endif
    public static bool NeedRequestTrackinggAuthorization() {
#if UNITY_IOS
        if (Application.platform == RuntimePlatform.IPhonePlayer)
            return _needRequestTrackinggAuthorization();
        else
            return false;
#else
        return false;
#endif
    }
}
