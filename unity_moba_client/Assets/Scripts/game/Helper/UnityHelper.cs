using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class UnityHelper
{
    public static RaycastHit[] RaycastNonAlloc(Vector3 origin, Vector3 direction, float maxDistance, int mask, int num)
    {
        RaycastHit[] hits = new RaycastHit[num];
        Physics.RaycastNonAlloc(origin, direction, hits, maxDistance, mask);
        return hits;
    }

    public static void SetLayer(GameObject gameObject, int layer)
    {
        foreach(Transform tran in gameObject.GetComponentsInChildren<Transform>())
        {
            tran.gameObject.layer = layer;
        }
    }
}