using System;
using System.Collections;
using System.Collections.Generic;

public static class CallbackHelp {
    static List<Action> actionQueuesUpdateFunc = new List<Action>();
    static List<Action> actionCopiedQueueUpdateFunc = new List<Action>();
    private volatile static bool noActionQueueToExecuteUpdateFunc = true;

    public static void CallOnMainThread(Action function)
    {
        lock (actionQueuesUpdateFunc)
        {
            actionQueuesUpdateFunc.Add(function);
            noActionQueueToExecuteUpdateFunc = false;
        }
    }

    public static void DoAction() {
        if( noActionQueueToExecuteUpdateFunc )
            return;

        actionCopiedQueueUpdateFunc.Clear();
        lock (actionQueuesUpdateFunc)
        {
            actionCopiedQueueUpdateFunc.AddRange(actionQueuesUpdateFunc);
            actionQueuesUpdateFunc.Clear();
            noActionQueueToExecuteUpdateFunc = true;
        }

        for (int i = 0; i < actionCopiedQueueUpdateFunc.Count; i++)
        {
            actionCopiedQueueUpdateFunc[i].Invoke();
        }
    }
}
