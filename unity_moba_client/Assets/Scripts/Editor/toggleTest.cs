using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class toggleTest : EditorWindow
{
    int activeID = 0;

    static List<KeyValuePair<int, string>> toggleList = new List<KeyValuePair<int, string>>();

    [MenuItem("tools/toggle_test", false, 0)]
    static void ShowWindow()
    {

    }

    private void OnGUI() {
        
    }
}
