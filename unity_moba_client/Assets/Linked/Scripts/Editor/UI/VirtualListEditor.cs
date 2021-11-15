using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(VirtualList))]
public class VirtualListEditor : Editor
{
    private VirtualList list;
    private float padingHead = 0;
    private float padingTail = 0;
    private float spacing = 0;
    public int cellCount = 1;
    public float cellSpacing = 0;
    void OnEnable()
    {
        list = target as VirtualList;
        padingHead = list.padingHead;
        padingTail = list.padingTail;
        spacing = list.spacing;
        cellCount = list.cellCount;
        cellSpacing = list.cellSpacing;
    }

    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        if (GUI.changed) {
            if (padingHead != list.padingHead ||
                padingTail != list.padingTail ||
                spacing != list.spacing ||
                cellCount != list.cellCount ||
                cellSpacing != list.cellSpacing)
            {
                list.ResetPosForChanged();

                padingHead = list.padingHead;
                padingTail = list.padingTail;
                spacing = list.spacing;
                cellCount = list.cellCount;
                cellSpacing = list.cellSpacing;
            }
        }
    }
}
