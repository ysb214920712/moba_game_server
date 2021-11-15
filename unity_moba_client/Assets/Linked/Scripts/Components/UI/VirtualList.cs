using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using XLua;
using System;
using TMPro;

[RequireComponent(typeof(ScrollRect))]
[LuaCallCSharp]
public class VirtualList : MonoBehaviour
{
    public enum VirtualListLayoutType
    {
        Horizontal = 0,         //水平列表
        Vertical = 1,           //垂直列表
    };

    //滑动列表Item
    [LuaCallCSharp]
    public class ListItem
    {
        public GameObject gameObject;
        public string tag;
        public string prefabName;
        public int index;
        public float startPos;
        public float endPos;
        public float size;

        public ListItem()
        {
            gameObject = null;
            prefabName = string.Empty;
            tag = string.Empty;
        }

        public LuaTable Export(LuaTable tb)
        {
            var comp = gameObject.GetComponent<ReferGameObjects>();
            if (comp)
            {
                comp.ExportToLuaTable(tb);
            }
            return tb;
        }
    }
    [Serializable]
    public class PrefabInfo
    {
        [NonSerialized]
        public float defaultSize;
        public GameObject model;
        public PrefabInfo(float sz, GameObject go)
        {
            defaultSize = sz;
            model = go;
        }
    }

    public List<PrefabInfo> modelList;
    public VirtualListLayoutType layoutType = VirtualListLayoutType.Horizontal;           // 布局类型
    private RectTransform _listContainer = null;                                      // 列表容器
    public float padingHead = 0;                                                    // 顶部偏移
    public float padingTail = 0; 						                            // 尾部偏移
    public float spacing = 0;                                                       // 间距
    public int cellCount = 1;                                                       //单行的item数
    public float cellSpacing = 0f;

    public bool useMask = true;

    public string emptyString = "List is empty!";
    public RectTransform emptyTipTextPrefeb = null;
    private RectTransform emptyTipTextObject = null;

    private bool _isVertical = false;
    private Transform _recycledItemViewContainer;
    private Dictionary<string, PrefabInfo> _prefabMap = new Dictionary<string, PrefabInfo>();
    private Dictionary<string, List<GameObject>> _recycledObjectPoolMap = new Dictionary<string, List<GameObject>>();
    private string _defaultPrefabName = null;
    private List<ListItem> _itemList = new List<ListItem>();     //滑动条目列表
    private float _totalSize = 0;
    private float _viewSize = 0;

    private LuaTableDelegate _delegate = new LuaTableDelegate();

    private int _activeItemStartIndex = -1;
    private int _activeItemEndIndex = -1;
    private bool _hasCalListRange = false;

    private int _listLen = 0;

    /********************************/
    void Awake()
    {
        GameObject go;

        GameObject viewport = new GameObject("Viewport", typeof(RectTransform));
        RectTransform viewportTrans = viewport.GetComponent<RectTransform>();
        viewportTrans.SetParent(transform, false);
        viewportTrans.anchorMin = Vector2.zero;
        viewportTrans.anchorMax = Vector2.one;
        viewportTrans.offsetMax = Vector2.zero;
        viewportTrans.offsetMin = Vector2.zero;

        Image image = viewport.AddComponent<Image>();
        image.color = new Color(1,1,1,0);

        go = new GameObject("Recycled Items", typeof(RectTransform));
        go.transform.SetParent(transform, false);
        _recycledItemViewContainer = go.GetComponent<RectTransform>();
        _recycledItemViewContainer.gameObject.SetActive(false);

        _isVertical = layoutType == VirtualListLayoutType.Vertical;
        Rect rect = viewportTrans.rect;
        _viewSize = _isVertical ? rect.height : rect.width;

        var containner = new GameObject("List Containner", typeof(RectTransform));
        containner.transform.SetParent(viewportTrans, false);
        if (useMask && viewport.GetComponent<RectMask2D>() == null)
        {
            viewport.AddComponent<RectMask2D>();
        }

        _listContainer = containner.GetComponent<RectTransform>();

        // set the containers anchor and pivot
        if (_isVertical)
        {
            _listContainer.anchorMin = new Vector2(0, 1);
            _listContainer.anchorMax = Vector2.one;
            _listContainer.pivot = new Vector2(0.5f, 1f);
            _listContainer.offsetMax = new Vector2(-0.5f * rect.width, 0);
            _listContainer.offsetMin = new Vector2(0.5f * rect.width, 0);
        }
        else
        {
            _listContainer.anchorMin = Vector2.zero;
            _listContainer.anchorMax = new Vector2(0, 1f);
            _listContainer.pivot = new Vector2(0, 0.5f);
            _listContainer.offsetMax = new Vector2(0, -0.5f * rect.height);
            _listContainer.offsetMin = new Vector2(0, 0.5f * rect.height);
        }
        _listContainer.localPosition = Vector3.zero;
        _listContainer.localRotation = Quaternion.identity;
        _listContainer.localScale = Vector3.one;

        ScrollRect scrollRect = GetComponent<ScrollRect>();
        scrollRect.vertical = _isVertical;
        scrollRect.horizontal = !_isVertical;
        scrollRect.content = _listContainer;
        scrollRect.viewport = viewportTrans;
        scrollRect.onValueChanged.AddListener(_OnValueChanged);

        if (modelList != null)
        {
            foreach (var m in modelList)
            {
                string name = m.model.name;
                go = m.model;
                RectTransform trans = go.GetComponent<RectTransform>();

                float rect_width = trans.rect.width;
                float rect_height = trans.rect.height;
                if (_isVertical)
                {
                    trans.anchorMin = new Vector2(0.5f, 1);
                    trans.anchorMax = new Vector2(0.5f, 1);
                    trans.pivot = new Vector2(0.5f, 0.5f);
                    trans.offsetMin = new Vector2(-0.5f * rect_width, -rect_height);
                    trans.offsetMax = new Vector2(0.5f * rect_width, 0);
                }
                else
                {
                    trans.anchorMin = new Vector2(0, 0.5f);
                    trans.anchorMax = new Vector2(0, 0.5f);
                    trans.pivot = new Vector2(0.5f, 0.5f);
                    trans.offsetMin = new Vector2(0, -0.5f * rect_height);
                    trans.offsetMax = new Vector2(rect_width, 0.5f * rect_height);
                }

                _prefabMap.Add(name, new PrefabInfo(_isVertical ? trans.rect.height : trans.rect.width, go));
                _defaultPrefabName = name;
                _RecycleItemGameObject(name, go);
            }
        }
    }

    public void ForceRefreshListPosRange()
    {
        _hasCalListRange = false;
        CalListPosRange();
        if (_delegate.HasFunc("OnListPosChanged"))
            _delegate.Action("OnListPosChanged", _activeItemStartIndex, _activeItemEndIndex);
    }

    private void CalListPosRange()
    {
        if (!_delegate.HasFunc("OnListPosRange"))
            return;

        Camera uiCamera = GameObject.Find("UI/UICamera").GetComponent<Camera>();
        RectTransform canvasTrans = GameObject.Find("UI/Canvas").transform as RectTransform;
        RectTransform viewportTrans = transform.Find("Viewport").GetComponent<RectTransform>();
        Vector3 viewScreenPos = uiCamera.WorldToViewportPoint(viewportTrans.position);
        viewScreenPos.x *= canvasTrans.sizeDelta.x;
        viewScreenPos.y *= canvasTrans.sizeDelta.y;

        Vector3 topPos, bottomPos;
        float itemSize = 0;
        foreach(var pairs in _prefabMap) {
            itemSize = pairs.Value.defaultSize;
            break;
        }
        _viewSize = _isVertical ? viewportTrans.rect.height : viewportTrans.rect.width;
        if (_isVertical)
        {
            topPos = viewScreenPos + new Vector3(0, _viewSize *0.5f - itemSize * 0.5f, 0);
            bottomPos = viewScreenPos + new Vector3(0, -_viewSize *0.5f + itemSize * 0.5f, 0);
        }
        else 
        {
            topPos = viewScreenPos + new Vector3(-_viewSize *0.5f + itemSize * 0.5f, 0, 0);
            bottomPos = viewScreenPos + new Vector3(_viewSize *0.5f - itemSize * 0.5f, 0, 0);
        }

        _delegate.Action("OnListPosRange", topPos, bottomPos);
        _hasCalListRange = true;
    }

    public void SetDelegate(LuaTable luaTab)
    {
        _delegate.Bind(luaTab);
    }

    private void _RecalPos(int startIndex = 0)
    {
        if (cellCount > 1)
        {
            startIndex = Mathf.FloorToInt(startIndex / (float)cellCount) * cellCount;
        }

        float nextPos;
        if (startIndex > 0)
        {
            nextPos = _itemList[startIndex - 1].endPos + (_isVertical ? -spacing : spacing);
        }
        else
        {
            nextPos = _isVertical ? -padingHead : padingHead;
        }

        var listLength = _itemList.Count;
        for (int i = startIndex; i < listLength; i++)
        {
            ListItem item = _itemList[i];
            item.index = i;
            item.startPos = nextPos;
            item.endPos = _isVertical ? nextPos - item.size : nextPos + item.size;
            if (item.gameObject != null)
            {
                _ResetItemPos(item);
            }
            bool nextRow = cellCount == 1 || (i + 1) % cellCount == 0;
            if (i == listLength - 1 && (i + 1) % cellCount != 0)
                nextRow = true;

            if (nextRow)
            {
                nextPos += _isVertical ? -item.size - spacing : spacing + item.size;
            }
        }

        if (listLength > 0)
        {
            nextPos -= (_isVertical ? -spacing : spacing);
        }

        nextPos = nextPos + (_isVertical ? -padingTail : padingTail);
        _totalSize = Mathf.Abs(nextPos);
        _SetContainerSize(_totalSize);
    }

    public void ResetPosForChanged()
    {
        Fill(_listLen, true);
    }

    public void Fill(int listLength, bool keepPosition)
    {
        _listLen = listLength;
        if (!_hasCalListRange)
            CalListPosRange();
        
        var scrollRect = GetComponent<ScrollRect>();
        if (scrollRect)
        {
            scrollRect.StopMovement();
        }
        int lastSize = _itemList.Count;
        for (int i = lastSize - 1; i >= 0; i--)
        {
            var item = _itemList[i];
            if (item.gameObject)
            {
                _RecycleItemGameObject(item);
            }
            if (i >= listLength)
                _itemList.RemoveAt(i);
        }

        int nowSize = _itemList.Count;
        for (int i = 0; i < listLength; i++)
        {
            ListItem item;
            if (i < nowSize)
            {
                item = _itemList[i];
            }
            else
            {
                item = new ListItem();
                _itemList.Add(item);
            }
            item.index = i;
            item.prefabName = _GetItemPrefabName(item);
            item.tag = _GetItemTag(item);
            float size = _GetItemSize(item);
            item.size = size;
        }

        _RecalPos();

        //Debug.Log("############ containerLastPos " + containerLastPos);
        float lastPosition = 0;
        if (keepPosition)
        {
            lastPosition = _GetContainerPos();
            lastPosition = _isVertical ? Mathf.Max(0, Mathf.Min(lastPosition, _totalSize - _viewSize)) : Mathf.Min(0, Mathf.Max(lastPosition, -_totalSize + _viewSize));
        }

        _activeItemStartIndex = -1;
        _activeItemEndIndex = -1;

        _ShowContentAt(lastPosition);

        if (emptyTipTextPrefeb)
        {
            if (listLength == 0)
            {
                if (emptyTipTextObject == null)
                {
                    emptyTipTextObject = GameObject.Instantiate(emptyTipTextPrefeb);
                    emptyTipTextObject.transform.SetParent(transform, false);
                    emptyTipTextObject.Find("Text").GetComponent<TMP_Text>().text = emptyString;

                }
                emptyTipTextObject.gameObject.SetActive(true);
            }
            else if (emptyTipTextObject != null)
            {
                emptyTipTextObject.gameObject.SetActive(false);
            }
        }
    }

    public void Remove(int index)
    {
        if (index >= _itemList.Count || index < 0) return;
        var item = _itemList[index];
        _RecycleItemGameObject(item);
        _itemList.RemoveAt(index);
        _RecalPos(index);
        _ShowContentAt(_GetContainerPos(), true);
    }

    public void Insert(int index)
    {
        if (index > _itemList.Count || index < 0) return;

        ListItem item = new ListItem();
        item.index = index;
        item.prefabName = _GetItemPrefabName(item);
        item.tag = _GetItemTag(item);
        float size = _GetItemSize(item);
        item.size = size;
        _itemList.Insert(index, item);
        _RecalPos(index);
        _ShowContentAt(_GetContainerPos(), true);
    }

    public void SetEmptyTipStrKey(string key, string path)
    {
        emptyString = key;
        if (emptyTipTextObject)
        {
            emptyTipTextObject.Find(path).GetComponent<TMP_Text>().text = emptyString;
        }
    }

    public void Clear(bool destroyPool)
    {
        for (int i = _itemList.Count - 1; i >= 0; --i)
        {
            ListItem item = _itemList[i];
            if (item.gameObject != null)
            {
                _RecycleItemGameObject(item);
            }
        }

        _itemList.Clear();
        _totalSize = 0;
        _SetContainerSize(0);
    }

    public void ClearPool()
    {
        foreach (var pool in _recycledObjectPoolMap)
        {
            foreach (var item in pool.Value)
            {
                GameObject.Destroy(item);
            }
            pool.Value.Clear();
        }
        _recycledObjectPoolMap.Clear();
    }

    private void OnDestroy()
    {
        ClearPool();
    }

    public void UpdateActiveItem()
    {
        if (!_delegate.HasFunc("OnItemEnter"))
        {
            return;
        }

        for (int i = _activeItemStartIndex; i <= _activeItemEndIndex; ++i)
        {
            if(i >= 0 && i < _itemList.Count){
                _delegate.Action("OnItemEnter", _itemList[i]);
            }   
        }
    }

    public void UpdateItemContent(int index)
    {
        if (index >= 0 && index < _itemList.Count && _itemList[index].gameObject)
        {
            if (_delegate.HasFunc("OnItemEnter"))
            {
                _delegate.Action("OnItemEnter", _itemList[index]);
            }
        }
    }

    public ListItem GetItemByIndex(int index)
    {
        return _itemList[index];
    }

    public ListItem GetItemByTag(string tag)
    {
        for (int i = 0; i < _itemList.Count; ++i)
        {
            if (_itemList[i] != null && _itemList[i].tag == tag)
            {
                return _itemList[i];
            }
        }
        return null;
    }

    public void MoveToPos(float dest)
    {
        //Canvas.ForceUpdateCanvases();
        _ShowContentAt(dest);
    }

    public void MoveToItem(int index)
    {
        //Canvas.ForceUpdateCanvases();
        float dest = _GetItemViewPosition(index);
        dest = dest + (_isVertical ? -padingHead : padingHead);
        _ShowContentAt(dest);
    }

    private void _OnItemEnter(ListItem item)
    {
        if (item.gameObject != null) return;

        item.gameObject = _CreatePrefab(item.prefabName);

        _ResetItemPos(item);

        if (_delegate.HasFunc("OnItemEnter"))
        {
            _delegate.Action("OnItemEnter", item);
        }
    }

    private void _ResetItemPos(ListItem item)
    {
        if (item.gameObject == null) return;
        Rect rect = item.gameObject.GetComponent<RectTransform>().rect;
        float s = _isVertical ? rect.width : rect.height;
        float x = ((cellCount - 1) / 2f - item.index % cellCount) * (s + cellSpacing);

        Vector3 position = _isVertical ? new Vector2(-x, item.startPos - item.size * 0.5f) : new Vector2(item.startPos + item.size * 0.5f, x);
        RectTransform rt = item.gameObject.GetComponent<RectTransform>();
        rt.anchoredPosition = position;
        // rt.localScale = Vector3.one;
    }

    private void _ShowContentAt(float pos, bool force = false)
    {
        _listContainer.anchoredPosition = _isVertical ? new Vector2(0, pos) : new Vector2(pos, 0);
        var startIndex = _GetItemIndexAtPosition(-pos, 0, _itemList.Count - 1);
        var endIndex = _GetItemIndexAtPosition(-pos + (_isVertical ? -_viewSize : _viewSize), 0, _itemList.Count - 1);
        var tmpStartIndex = _activeItemStartIndex;
        var tmpEndIndex = _activeItemEndIndex;

        if (cellCount > 1)
        {
            startIndex = Mathf.FloorToInt(startIndex / cellCount) * cellCount;
            endIndex = Mathf.Min(_itemList.Count - 1, Mathf.FloorToInt(endIndex  / cellCount) * cellCount + (cellCount -1));
        }

        _activeItemStartIndex = startIndex;
        _activeItemEndIndex = endIndex;

        if (!force && tmpStartIndex == startIndex && tmpEndIndex == endIndex)
        {
            if (_delegate.HasFunc("OnListPosChanged"))
            {
                _delegate.Action("OnListPosChanged", startIndex, endIndex);
            }
            return;
        }

        for (int i = tmpEndIndex; i >= tmpStartIndex; --i)
        {
            if (i >= startIndex && i <= endIndex)
            {
                continue;
            }
            if(i>= 0 && i < _itemList.Count){
                _OnItemLeave(_itemList[i]);
            }
        }

        for (int i = startIndex; i <= endIndex; ++i)
        {
            if(i>= 0 && i < _itemList.Count){
                _OnItemEnter(_itemList[i]);
            }
        }

        if (_delegate.HasFunc("OnListPosChanged"))
        {
            _delegate.Action("OnListPosChanged", startIndex, endIndex);
        }
    }

    private void _OnItemLeave(ListItem item)
    {
        if (item.gameObject == null) return;
        _RecycleItemGameObject(item);

        if (_delegate.HasFunc("OnItemLeave"))
        {
            _delegate.Action("OnItemLeave", item);
        }
        item.gameObject = null;
    }

    private int _GetItemIndexAtPosition(float position, int startIndex, int endIndex)
    {
        if (startIndex >= endIndex) return startIndex;

        var middleIndex = (startIndex + endIndex) / 2;
        if (_isVertical)
        {
            if ((_itemList[middleIndex].endPos) >= position)
            {
                return _GetItemIndexAtPosition(position, middleIndex + 1, endIndex);
            }
            else
            {
                return _GetItemIndexAtPosition(position, startIndex, middleIndex);
            }
        }
        else
        {
            if ((_itemList[middleIndex].endPos) >= position)
            {
                return _GetItemIndexAtPosition(position, startIndex, middleIndex);
            }
            else
            {
                return _GetItemIndexAtPosition(position, middleIndex + 1, endIndex);
            }
        }
    }

    private float _GetItemViewPosition(int index)
    {
        if (_itemList.Count <= 0)
            return 0;

        index = Mathf.Clamp(index, 0, _itemList.Count - 1);
        float dest;
        if (_isVertical)
        {
            float max = _totalSize - _viewSize;
            dest = Mathf.Clamp(-_itemList[index].startPos, 0, max);
        }
        else
        {
            dest = -_itemList[index].startPos;
            float min = -_totalSize + _viewSize;
            if (min > 0) min = 0;
            dest = Mathf.Clamp(dest, min, 0);
        }
        return dest;
    }

    private void _OnValueChanged(Vector2 vec2)
    {
        _ShowContentAt(_GetContainerPos());
    }

    private GameObject _CreatePrefab(string prefabName)
    {
        if (!_recycledObjectPoolMap.ContainsKey(prefabName))
        {
            _recycledObjectPoolMap.Add(prefabName, new List<GameObject>());
        }

        int poolSize = _recycledObjectPoolMap[prefabName].Count;
        GameObject item;
        if (poolSize <= 0)
        {
            item = GameObject.Instantiate(_prefabMap[prefabName].model);
        }
        else
        {
            item = _recycledObjectPoolMap[prefabName][poolSize - 1];
            item.SetActive(true);
            _recycledObjectPoolMap[prefabName].RemoveAt(poolSize - 1);
        }
        item.transform.SetParent(_listContainer,false);
        return item;
    }

    private void _RecycleItemGameObject(ListItem item)
    {
        if (item.gameObject == null)
        {
            return;
        }
        _RecycleItemGameObject(item.prefabName, item.gameObject);
        item.gameObject = null;
    }
    private void _RecycleItemGameObject(string name, GameObject go)
    {
        if (!_recycledObjectPoolMap.ContainsKey(name))
        {
            _recycledObjectPoolMap.Add(name, new List<GameObject>());
        }

        go.transform.SetParent(_recycledItemViewContainer,false);

        _recycledObjectPoolMap[name].Add(go);
    }

    private float _GetItemSize(ListItem item)
    {
        if (_delegate.HasFunc("OnGetItemSize"))
        {
            return _delegate.CallLua<float>("OnGetItemSize");
        }
        return _prefabMap[item.prefabName].defaultSize;
    }

    private string _GetItemTag(ListItem item)
    {
        if (_delegate.HasFunc("OnGetItemTag"))
        {
            return _delegate.CallLua<string>("OnGetItemTag");
        }
        return string.Empty;
    }

    private string _GetItemPrefabName(ListItem item)
    {
        if (_delegate.HasFunc("OnGetItemName"))
        {
            return _delegate.CallLua<ListItem, string>("OnGetItemName", item);
        }
        return _defaultPrefabName;
    }

    private void _SetContainerSize(float size)
    {
        _listContainer.sizeDelta = _isVertical ? new Vector2(0, size) : new Vector2(size, 0);
    }

    private float _GetContainerSize()
    {
        return _isVertical ? _listContainer.rect.height : _listContainer.rect.width;
    }

    private float _GetContainerPos()
    {
        return _isVertical ? _listContainer.anchoredPosition.y : _listContainer.anchoredPosition.x;
    }
}
