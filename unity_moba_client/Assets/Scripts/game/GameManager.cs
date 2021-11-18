using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;
using DG.Tweening;
using XLua;

public class GameManager : MonoBehaviour
{
    public static LuaEnv currentLuaEnv { get; private set; }

    IEnumerator Start()
    {
        yield return GameInit();
    }

    void Update()
    {
        CallbackHelp.DoAction();
        if (currentLuaEnv != null)
        {
            currentLuaEnv.Tick();
        }
    }

    public IEnumerator GameInit()
    {
        Screen.sleepTimeout = SleepTimeout.NeverSleep;
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 60;
        QualitySettings.SetQualityLevel(2);

        GameObject.DontDestroyOnLoad(gameObject);
        GameObject.DontDestroyOnLoad(GameObject.Find("UI"));

        event_manager.Instance.init();
        auth_service_proxy.Instance.init();
        system_service_proxy.Instance.init();

        yield return UpdateGame();
    }

    void initLua()
    {
        currentLuaEnv = new LuaEnv();

        currentLuaEnv.AddLoader((ref string fn) =>
        {
            return LuaFilePicker.Load(fn);
        });

        currentLuaEnv.DoString("require '" + Defines.LuaEntryFileName + "'");

    }

    IEnumerator UpdateGame()
    {
        //TODO HotUpdate

        initLua();

        yield return null;
    }

    public static void Cleanup()
    {
        UILocalize.Clear();
        DOTween.KillAll(false);
        DownloadHelper.StopDownload();
        CoroutineHelper.Destroy();
        SRDebug.Instance.Clear();
        XLoader.Clear();
    }

    public static void DisposeLuaEnv()
    {
        currentLuaEnv.ReleaseAllDelegateBridge();
        currentLuaEnv.Dispose();
        currentLuaEnv = null;
    }

    void OnApplicationQuit()
    {
        
    }
}
