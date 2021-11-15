using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UILocalize : MonoBehaviour
{
    public string key;
    public bool is_sprite = false;
    public static System.Func<string, string> textLocalizeFunc_ = null; 
    public static System.Action<string, object> spriteLocalizeFunc_ = null;

    void OnEnable()
    {
        if(is_sprite == false)
        {
            Text textCom = GetComponent<Text>();

            if( textCom != null )
            {
                if( textLocalizeFunc_ != null && !string.IsNullOrEmpty(key) )
                    textCom.text = textLocalizeFunc_(key);
            } else {
                TMP_Text tmpTextCom = GetComponent<TMP_Text>();
                if (tmpTextCom != null && textLocalizeFunc_ != null && !string.IsNullOrEmpty(key))
                    tmpTextCom.text = textLocalizeFunc_(key);
            }
        }
        else
        {
            Image imageCom = GetComponent<Image>();

            if( imageCom != null )
            {
                key = imageCom.sprite.name;
                if (spriteLocalizeFunc_ != null)
                    spriteLocalizeFunc_(key, imageCom);
            }
        }
    }

    public void Refresh()
    {
        OnEnable();
    }

    public static void Clear()
    {
        textLocalizeFunc_ = null;
        spriteLocalizeFunc_ = null;
    }
}
