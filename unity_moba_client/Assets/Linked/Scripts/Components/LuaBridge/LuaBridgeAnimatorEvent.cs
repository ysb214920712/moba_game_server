using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

[XLua.LuaCallCSharp]
public class LuaBridgeAnimatorEvent : LuaBridgeBase
{
    void OnAnimatorStateEnter(AnimatorStateInfo stateInfo)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnAnimatorStateEnter, stateInfo);
    }

    void OnAnimatorStateExit(AnimatorStateInfo stateInfo)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnAnimatorStateExit, stateInfo);
    }

    void OnAnimationEvent(AnimationEvent evt)
    {
        CallLuaBindFunc(UnityBehaviourFunc.OnAnimationEvent, evt);
    }

    void OnPlayCameraShake(AnimationEvent evt)
    {
        bool isShakeDevice = evt.intParameter == 1;
        if (isShakeDevice) {
#if UNITY_IOS || UNITY_ANDROID
            VibrateHelper.VibrateByType(VibrateTypes.Skill);
#endif
        } else {
            float duration = evt.floatParameter;
            if (duration == 0.0f)
                duration = 0.2f;
            DOTween.Kill(Camera.main, true);
            Vector3 pos = Camera.main.transform.position;
            Camera.main.DOShakePosition(duration, 0.15f, 15, 50, true).OnComplete(()=>{
                Camera.main.transform.position = pos;
            });
        }
    }
}
