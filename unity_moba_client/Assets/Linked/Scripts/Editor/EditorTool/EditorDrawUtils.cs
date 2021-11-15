using UnityEngine;
using System.Collections;
using UnityEditor;
public class EditorDrawUtils
{
    public static void BeginDraw(SerializedObject serializedObject, System.Action action)
    {
        serializedObject.Update();
        action();
        serializedObject.ApplyModifiedProperties();
    }

    public static SerializedProperty DrawProperty(SerializedObject serializedObject, string property)
    {
        SerializedProperty sp = serializedObject.FindProperty(property);
        EditorGUILayout.PropertyField(sp);
        return sp;
    }

    public static void BeginStyleBackground(Color background, System.Action action)
    {
        Color bc = GUI.backgroundColor;
        GUI.backgroundColor = background;
        action();
        GUI.backgroundColor = bc;
    }

    public static void BeginStyleColor(Color color, System.Action action)
    {
        Color bc = GUI.backgroundColor;
        GUI.color = color;
        action();
        GUI.color = bc;
    }

    public static bool FixGreenButton(string txt)
    {
        bool rst = false;
        BeginStyleBackground(Color.green, () =>
        {
            GUILayout.BeginHorizontal();
            EditorGUILayout.Space();
            rst = GUILayout.Button(txt, GUILayout.Height(30));
            EditorGUILayout.Space();
            GUILayout.EndHorizontal();
            EditorGUILayout.Space();
        });
        return rst;
    }

    public static bool FixRedButton(string txt)
    {
        bool rst = false;
        BeginStyleBackground(Color.red, () =>
        {
            GUILayout.BeginHorizontal();
            EditorGUILayout.Space();
            rst = GUILayout.Button(txt, GUILayout.Height(30));
            EditorGUILayout.Space();
            GUILayout.EndHorizontal();
            EditorGUILayout.Space();
        });
        return rst;
    }

    public static bool ColorButton(Color color, string txt, params GUILayoutOption[] args)
    {
        bool rst = false;
        BeginStyleBackground(color, () =>
        {
            rst = GUILayout.Button(txt, args);
        });
        return rst;
    }

    public static void DrawSeparator()
    {
        GUILayout.Space(12f);

        if (Event.current.type == EventType.Repaint)
        {
            Texture2D tex = blankTexture;
            Rect rect = GUILayoutUtility.GetLastRect();
            GUI.color = new Color(0f, 0f, 0f, 0.25f);
            GUI.DrawTexture(new Rect(0f, rect.yMin + 6f, Screen.width, 4f), tex);
            GUI.DrawTexture(new Rect(0f, rect.yMin + 6f, Screen.width, 1f), tex);
            GUI.DrawTexture(new Rect(0f, rect.yMin + 9f, Screen.width, 1f), tex);
            GUI.color = Color.white;
        }
    }
    public static Texture2D blankTexture
    {
        get
        {
            return EditorGUIUtility.whiteTexture;
        }
    }

    static Texture2D mBackdropTex;
    public static Texture2D backdropTexture
    {
        get
        {
            if (mBackdropTex == null) mBackdropTex = CreateCheckerTex(
                new Color(0.1f, 0.1f, 0.1f, 0.5f),
                new Color(0.2f, 0.2f, 0.2f, 0.5f));
            return mBackdropTex;
        }
    }

    static Texture2D CreateCheckerTex(Color c0, Color c1)
    {
        Texture2D tex = new Texture2D(16, 16);
        tex.name = "[Generated] Checker Texture";
        tex.hideFlags = HideFlags.DontSave;

        for (int y = 0; y < 8; ++y) for (int x = 0; x < 8; ++x) tex.SetPixel(x, y, c1);
        for (int y = 8; y < 16; ++y) for (int x = 0; x < 8; ++x) tex.SetPixel(x, y, c0);
        for (int y = 0; y < 8; ++y) for (int x = 8; x < 16; ++x) tex.SetPixel(x, y, c0);
        for (int y = 8; y < 16; ++y) for (int x = 8; x < 16; ++x) tex.SetPixel(x, y, c1);

        tex.Apply();
        tex.filterMode = FilterMode.Point;
        return tex;
    }

    public static void DrawTexture(Rect rect, Texture sp, float size, bool drawOutline)
    {
        if (Event.current.type == EventType.Repaint)
        {
            DrawTiledTexture(rect, backdropTexture);
            if (null != sp)
            {
                Rect uv = new Rect(0, 0, 1, 1);

                float width = rect.width;
                float height = rect.height;
                Rect final = uv;

                float scaleX = rect.width / final.width;
                float scaleY = rect.height / final.height;

                // Stretch the sprite so that it will appear proper
                float aspect = (scaleY / scaleX) / (height / width);
                Rect clipRect = rect;
                if (aspect != 1f)
                {
                    if (aspect < 1f)
                    {
                        // The sprite is taller than it is wider
                        float padding = size * (1f - aspect) * 0.5f;
                        clipRect.xMin += padding;
                        clipRect.xMax -= padding;
                    }
                    else
                    {
                        // The sprite is wider than it is taller
                        float padding = size * (1f - 1f / aspect) * 0.5f;
                        clipRect.yMin += padding;
                        clipRect.yMax -= padding;
                    }
                }

                GUI.DrawTextureWithTexCoords(clipRect, sp, final, true);
            
                GUI.backgroundColor = new Color(1f, 1f, 1f, 0.5f);
                GUI.contentColor = new Color(1f, 1f, 1f, 0.7f);
                GUIStyle style = new GUIStyle("AssetLabel");
                style.alignment = TextAnchor.MiddleCenter;
                if (drawOutline)
                {
                    DrawOutline(rect, new Color(0.4f, 1f, 0f, 1f));
                    GUI.Label(new Rect(rect.x - 35, rect.y + rect.height + 5, 150f, 32f), sp.name, style);
                }
                else
                    GUI.Label(new Rect(rect.x - 35, rect.y + rect.height + 5, 150f, 32f), sp.name, style);
                GUI.contentColor = Color.white;
                GUI.backgroundColor = Color.white;
            }
        }
    }

    public static void DrawOutline(Rect rect, Color color)
    {
        if (Event.current.type == EventType.Repaint)
        {
            Texture2D tex = blankTexture;
            GUI.color = color;
            GUI.DrawTexture(new Rect(rect.xMin, rect.yMin, 1f, rect.height), tex);
            GUI.DrawTexture(new Rect(rect.xMax, rect.yMin, 1f, rect.height), tex);
            GUI.DrawTexture(new Rect(rect.xMin, rect.yMin, rect.width, 1f), tex);
            GUI.DrawTexture(new Rect(rect.xMin, rect.yMax, rect.width, 1f), tex);
            GUI.color = Color.white;
        }
    }

    public static void DrawTiledTexture(Rect rect, Texture tex = null)
    {
        if (null == tex) tex = blankTexture;
        GUI.BeginGroup(rect);
        {
            int rwidth = Mathf.RoundToInt(rect.width);
            int rheight = Mathf.RoundToInt(rect.height);

            for (int y = 0; y < rheight; y += tex.height)
            {
                for (int x = 0; x < rwidth; x += tex.width)
                {
                    GUI.DrawTexture(new Rect(x, y, tex.width, tex.height), tex);
                }
            }
        }
        GUI.EndGroup();
    }
}
