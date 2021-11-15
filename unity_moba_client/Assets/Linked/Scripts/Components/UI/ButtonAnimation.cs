using System;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;
using Sirenix.OdinInspector;

public class ButtonAnimation : MonoBehaviour
{
    public enum AnimationType
    {
        None,
        Scale,
    }

    [LabelText("动画类型")]
    public AnimationType aniType = AnimationType.Scale;
    private Button _button;
    private Sequence _buttonDownSequence;
    private Sequence _buttonUpSequence;
    private Vector3 _originalScale = Vector3.zero;

    private bool isScaleAnim
    {
        get
        {
            return aniType == AnimationType.Scale;
        }
    }
    [ShowIf("isScaleAnim"), LabelText("缩小比例")]
    public float lessenScale = 0.9f;
    [ShowIf("isScaleAnim"), LabelText("变大比例")]
    public float largenScale = 1.1f;
    void Awake()
    {
        Vector3 scale = transform.localScale;
        _originalScale = new Vector3(scale.x, scale.y, scale.z);
        EventTriggerListener listener = EventTriggerListener.Get(gameObject);
        listener.onDown += onButtonDown;
        listener.onUp += onButtonUp;
        // listener.onEnter += onButtonEnter;
        // listener.onExit += onButtonExit;
    }
    
    private void OnEnable()
    {
        //重置按钮scale
        transform.localScale = new Vector3(_originalScale.x, _originalScale.y, _originalScale.z);
    }
    
    void Start()
    {
        _button = gameObject.GetComponent<Button>();
    }
    
    void onButtonDown(BaseEventData eventData, GameObject go)
    {
        //Debug.Log("Button_down");
        if (!_button.interactable)
            return;
        
        if (aniType != AnimationType.Scale )
            return;
        
        _buttonDownSequence = DOTween.Sequence();
        Vector3 finalScale = new Vector3(_originalScale.x * lessenScale, _originalScale.y * lessenScale,
            _originalScale.z * lessenScale);
        _buttonDownSequence.Append(transform.DOScale(finalScale, 0.083f));
        _buttonDownSequence.SetUpdate(true);
    }

    void onButtonUp(BaseEventData eventData, GameObject go)
    {
        //Debug.Log("Button_up");
        if (!_button.interactable)
            return;

        if (aniType != AnimationType.Scale )
            return;
        
        _buttonUpSequence = DOTween.Sequence();
        Vector3 finalLargenScale = new Vector3(_originalScale.x * largenScale, _originalScale.y * largenScale,
            _originalScale.z * largenScale);
        _buttonUpSequence.Append(transform.DOScale(finalLargenScale, 0.1f));
        _buttonUpSequence.Append(transform.DOScale(_originalScale, 0.1f));
        _buttonUpSequence.SetUpdate(true);
    }
    
    private void OnDisable()
    {
        _buttonUpSequence.Kill();
        _buttonDownSequence.Kill();
        //Debug.Log("sequence kill");
    }
}