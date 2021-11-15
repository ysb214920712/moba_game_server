using System.Collections;
using System.Collections.Generic;

namespace SRF.UI
{
    using Internal;
    using UnityEngine;
    using UnityEngine.Events;

    [AddComponentMenu(ComponentMenuPaths.Gesture)]
    public class Gesture : MonoBehaviour
    {
        public UnityEvent onGestureDone;
        public int numOfCircleToShow = 1;
        // Start is called before the first frame update
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            if(isGestureDone() ){
                onGestureDone.Invoke();
            }
        }

        List<Vector2> gestureDetector = new List<Vector2>();
        Vector2 gestureSum = Vector2.zero;
        float gestureLength = 0;
        int gestureCount = 0;
        bool isGestureDone()
        {
            if (Application.platform == RuntimePlatform.Android ||
                Application.platform == RuntimePlatform.IPhonePlayer)
            {
                if (Input.touches.Length != 1)
                {
                    gestureDetector.Clear();
                    gestureCount = 0;
                }
                else
                {
                    if (Input.touches[0].phase == TouchPhase.Canceled || Input.touches[0].phase == TouchPhase.Ended)
                        gestureDetector.Clear();
                    else if (Input.touches[0].phase == TouchPhase.Moved)
                    {
                        Vector2 p = Input.touches[0].position;
                        if (gestureDetector.Count == 0 || (p - gestureDetector[gestureDetector.Count - 1]).magnitude > 10)
                            gestureDetector.Add(p);
                    }
                }
            }
            else
            {
                if (Input.GetMouseButtonUp(0))
                {
                    gestureDetector.Clear();
                    gestureCount = 0;
                }
                else
                {
                    if (Input.GetMouseButton(0))
                    {
                        Vector2 p = new Vector2(Input.mousePosition.x, Input.mousePosition.y);
                        if (gestureDetector.Count == 0 || (p - gestureDetector[gestureDetector.Count - 1]).magnitude > 10)
                            gestureDetector.Add(p);
                    }
                }
            }

            if (gestureDetector.Count < 10)
                return false;

            gestureSum = Vector2.zero;
            gestureLength = 0;
            Vector2 prevDelta = Vector2.zero;
            for (int i = 0; i < gestureDetector.Count - 2; i++)
            {

                Vector2 delta = gestureDetector[i + 1] - gestureDetector[i];
                float deltaLength = delta.magnitude;
                gestureSum += delta;
                gestureLength += deltaLength;

                float dot = Vector2.Dot(delta, prevDelta);
                if (dot < 0f)
                {
                    gestureDetector.Clear();
                    gestureCount = 0;
                    return false;
                }

                prevDelta = delta;
            }

            int gestureBase = (Screen.width + Screen.height) / 4;

            if (gestureLength > gestureBase && gestureSum.magnitude < gestureBase / 2)
            {
                gestureDetector.Clear();
                gestureCount++;
                if (gestureCount >= numOfCircleToShow)
                    return true;
            }

            return false;
        }
    }
}