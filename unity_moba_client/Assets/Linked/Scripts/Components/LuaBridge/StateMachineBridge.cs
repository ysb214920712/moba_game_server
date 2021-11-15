using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateMachineBridge : StateMachineBehaviour
{
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.gameObject.SendMessage("OnAnimatorStateEnter", stateInfo, SendMessageOptions.DontRequireReceiver);
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.gameObject.SendMessage("OnAnimatorStateExit", stateInfo, SendMessageOptions.DontRequireReceiver);
    }

}
