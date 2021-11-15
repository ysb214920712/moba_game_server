using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameSound : MonoBehaviour
{
    public string soundDefine = string.Empty;
    public string soundDefine2 = string.Empty;
    public bool autoPlay = false;

    public static System.Action<string> Play = null;
    public static bool mute = false;

	// Use this for initialization
	void Start() {
        if(autoPlay) return;

        Button button = GetComponent<Button>();
        if (button != null) {
            button.onClick.AddListener(PlaySound);
            return;
        }

        Toggle toggle = GetComponent<Toggle>();
        if (toggle != null) {
            toggle.onValueChanged.AddListener(SwitchPlaySound);
            return;
        }
	}

    void OnEnable() {
        if( autoPlay )
        {
            PlaySound();
        }
    }

    void PlaySound() {
        if(!string.IsNullOrEmpty(soundDefine) && Play != null)
            Play(soundDefine);
    }

    void SwitchPlaySound(bool isOn) {
        if (isOn) {
            if (!string.IsNullOrEmpty(soundDefine) && Play != null)
                Play(soundDefine);
        } else {
            if (!string.IsNullOrEmpty(soundDefine2) && Play != null)
                Play(soundDefine2);
        }
    }
}
