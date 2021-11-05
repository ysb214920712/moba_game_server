using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    void Start()
    {
        event_manager.Instance.init();

        user_login.Instance.init();
    }
}
