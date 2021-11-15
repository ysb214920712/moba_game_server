using UnityEngine;
using System.Collections;

public class CoroutineHelper
{
    private class CoreCoroutines : MonoBehaviour
    {
    }
    private static CoreCoroutines _this = null;

    public static void Destroy()
	{
		if(_this)
		{
			StopAll();
			_this = null;
		}
	}

    public static Coroutine Run(IEnumerator func)
    {
        if (_this == null)
        {
            GameObject target = new GameObject("COROUTINES");
            target.hideFlags = HideFlags.HideAndDontSave;
            UnityEngine.Object.DontDestroyOnLoad(target);
            _this = target.AddComponent<CoreCoroutines>();
        }
        return _this.StartCoroutine(func);
    }

    public static void StopAll()
    {
        if (_this != null)
            _this.StopAllCoroutines();
    }

    public static void StopCoroutine(Coroutine c)
    {
        if (_this != null)
            _this.StopCoroutine(c);
    }
}
