using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using DG.Tweening.Core;
using DG.Tweening.Plugins.Options;

public class LoadingRotate : MonoBehaviour
{
    private TweenerCore<Quaternion, Vector3, QuaternionOptions> tweener;
    private static Vector3 LOADING_ROTATE = new Vector3(0, 0, 360);
    public float duration = 2.0f;

    void OnEnable()
    {
        if (tweener != null) {
            tweener.Kill(false);
            tweener = null;
        }

        tweener = transform.DOLocalRotate(LOADING_ROTATE, duration, RotateMode.LocalAxisAdd).SetEase(Ease.Linear);
        tweener.SetUpdate(true).SetLoops(-1, LoopType.Restart);
    }

    void OnDisable()
    {
        if (tweener != null) {
            tweener.Kill(false);
            tweener = null;
        }
    }

    void OnDestroy()
    {
        if (tweener != null) {
            tweener.Kill(false);
            tweener = null;
        }
    }
}
