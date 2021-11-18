using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using XLua;

[LuaCallCSharp]
public class GameReloader : MonoBehaviour
{
    static GameObject goReloader;
    
    public static void RestartGame(List<string> destoryList)
    {
        GameManager.Cleanup();

        GameObject game = GameObject.Find("game");
        if(game)
        {
            GameObject[] gos = game.scene.GetRootGameObjects();
            foreach(var go in gos)
            {
                if(destoryList.Exists(name => name == go.name))
                {
                    GameObject.Destroy(go);
                }
            }
        }

        if(goReloader == null)
        {
            goReloader = new GameObject("GameReloader", typeof(GameReloader));
            DontDestroyOnLoad(goReloader);
        }
    }

    IEnumerator Start() 
    {
        yield return SceneManager.LoadSceneAsync("reloader");
        yield return Resources.UnloadUnusedAssets();

        GameManager.DisposeLuaEnv();
        yield return SceneManager.LoadSceneAsync("login", LoadSceneMode.Single);
        
        GameObject.Destroy(goReloader);
        goReloader = null;
    }
}