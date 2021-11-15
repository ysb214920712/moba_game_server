using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimatorEventBridge : MonoBehaviour
{
    public GameObject receiver;
    void OnAnimatorStateEnter(AnimatorStateInfo stateInfo)
    {
        if (receiver != null)
            receiver.SendMessage("OnAnimatorStateEnter", stateInfo);
    }

    void OnAnimatorStateExit(AnimatorStateInfo stateInfo)
    {
        if (receiver != null)
            receiver.SendMessage("OnAnimatorStateExit", stateInfo);
    }

    void OnAnimationEvent(AnimationEvent evt)
    {
        if (receiver != null)
            receiver.SendMessage("OnAnimationEvent", evt);
    }

    void OnAnimationEffect(AnimationEvent evt)
    {
        if (receiver != null)
            receiver.SendMessage("OnAnimationEffect", evt);
    }

    void OnAnimationSound(AnimationEvent evt)
    {
        if (receiver != null)
            receiver.SendMessage("OnAnimationSound", evt);
    }

    void OnPlayCameraShake(AnimationEvent evt)
    {
        if (receiver != null)
            receiver.SendMessage("OnPlayCameraShake", evt);
    }
}
