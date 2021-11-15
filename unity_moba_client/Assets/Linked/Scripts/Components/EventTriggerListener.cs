using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;

public class EventTriggerListener : EventTrigger
{
    public delegate void VoidDelegate(BaseEventData eventData, GameObject go);
    public VoidDelegate onBeginDrag;
    public VoidDelegate onCancel;
    public VoidDelegate onDeselect;
    public VoidDelegate onDrag;
    public VoidDelegate onDrop;
    public VoidDelegate onEndDrag;
    public VoidDelegate onInitPotDrag;
    public VoidDelegate onMove;
    public VoidDelegate onClick;
    public VoidDelegate onDown;
    public VoidDelegate onEnter;
    public VoidDelegate onExit;
    public VoidDelegate onUp;
    public VoidDelegate onScroll;
    public VoidDelegate onSelect;
    public VoidDelegate onSubmit;
    public VoidDelegate onUpdateSelect;

    static public EventTriggerListener Get(GameObject go)
    {
        EventTriggerListener listener = go.GetComponent<EventTriggerListener>();
        if (listener == null) listener = go.AddComponent<EventTriggerListener>();
        return listener;
    }

    public override void OnBeginDrag(PointerEventData eventData)
    {
        onBeginDrag?.Invoke(eventData, gameObject);
    }

    public override void OnCancel(BaseEventData eventData)
    {
        onCancel?.Invoke(eventData, gameObject);
    }

    public override void OnDeselect(BaseEventData eventData)
    {
        onDeselect?.Invoke(eventData, gameObject);
    }

    public override void OnDrag(PointerEventData eventData)
    {
        onDrag?.Invoke(eventData, gameObject);
    }

    public override void OnDrop(PointerEventData eventData)
    {
        onDrop?.Invoke(eventData, gameObject);
    }

    public override void OnEndDrag(PointerEventData eventData)
    {
        onEndDrag?.Invoke(eventData, gameObject);
    }

    public override void OnInitializePotentialDrag(PointerEventData eventData)
    {
        onInitPotDrag?.Invoke(eventData, gameObject);
    }

    public override void OnMove(AxisEventData eventData)
    {
        onMove?.Invoke(eventData, gameObject);
    }

    public override void OnPointerClick(PointerEventData eventData)
    {
        onClick?.Invoke(eventData, gameObject);
    }

    public override void OnPointerDown(PointerEventData eventData)
    {
        onDown?.Invoke(eventData, gameObject);
    }

    public override void OnPointerEnter(PointerEventData eventData)
    {
        onEnter?.Invoke(eventData, gameObject);
    }

    public override void OnPointerExit(PointerEventData eventData)
    {
        onExit?.Invoke(eventData, gameObject);
    }

    public override void OnPointerUp(PointerEventData eventData)
    {
        onUp?.Invoke(eventData, gameObject);
    }

    public override void OnScroll(PointerEventData eventData)
    {
        onScroll?.Invoke(eventData, gameObject);
    }

    public override void OnSelect(BaseEventData eventData)
    {
        onSelect?.Invoke(eventData, gameObject);
    }

    public override void OnSubmit(BaseEventData eventData)
    {
        onSubmit?.Invoke(eventData, gameObject);
    }

    public override void OnUpdateSelected(BaseEventData eventData)
    {
        onUpdateSelect?.Invoke(eventData, gameObject);
    }
}