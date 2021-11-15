using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using TMPro;
using System.Collections.Generic;

public class ButtonSpriteSwap : MonoBehaviour
{
    public float pressYOffset;

    public Color pressColor = Color.white;

    private TMP_Text text;

    private Color normalColor;

    public Button button;

    private bool isPressDown;

    List<Transform> trans = new List<Transform>();
    List<Vector3> norPos = new List<Vector3>();
    void Awake()
    {
        EventTriggerListener listener = EventTriggerListener.Get(gameObject);
        listener.onDown += onButtonDown;
        listener.onUp += onButtonUp;
        listener.onEnter += onButtonEnter;
        listener.onExit += onButtonExit;

        trans.Clear();
        norPos.Clear();
        foreach (Transform tra in this.transform)
        {
            trans.Add(tra);
            norPos.Add(tra.localPosition);
        }

        text = gameObject.GetComponentInChildren<TMP_Text>();
        button = gameObject.GetComponent<Button>();
    }

    void OnEnable()
    {
        isPressDown = false;
        for(int i = 0; i <trans.Count; i ++)
        {
            trans[i].localPosition = norPos[i];
        }
    }

    void onButtonDown(BaseEventData eventData, GameObject go)
    {
        if (!button.interactable)
            return;

        isPressDown = true;

        if (text == null)
            return;
        
        normalColor = text.color;

        for(int i = 0; i <trans.Count; i ++)
            trans[i].localPosition = new Vector3(norPos[i].x,norPos[i].y + pressYOffset ,norPos[i].z);

        text.color = pressColor;
    }

    void onButtonUp(BaseEventData eventData, GameObject go)
    {
        isPressDown = false;

        if (!button.interactable)
            return;

        if (text == null)
            return;

        for(int i = 0; i <trans.Count; i ++)
        {
            trans[i].localPosition = norPos[i];
        }
        text.color = normalColor;
    }

    void onButtonEnter(BaseEventData eventData, GameObject go)
    {
        if (!button.interactable || !isPressDown || text == null)
            return;

        for(int i = 0; i <trans.Count; i ++)
            trans[i].localPosition = new Vector3(norPos[i].x,norPos[i].y + pressYOffset ,norPos[i].z);

        text.color = pressColor;
    } 

    void onButtonExit(BaseEventData eventData, GameObject go)
    {
        if (!button.interactable || !isPressDown || text == null)
            return;

        for(int i = 0; i <trans.Count; i ++)
            trans[i].localPosition = norPos[i];

        text.color = normalColor;
    }
}