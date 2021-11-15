using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class AmbientSound : MonoBehaviour
{
    public AudioClip[] sounds;
    public float interval = 5.0f;

    float lastPlay_ = .0f;
    AudioSource audioSource_;
    int prevIndex_ = -1;

    // Start is called before the first frame update
    void Start()
    {
        audioSource_ = GetComponent<AudioSource>();
        if( audioSource_ == null )
            audioSource_ = gameObject.AddComponent<AudioSource>();

        audioSource_.playOnAwake = false;
        audioSource_.loop = false;
    }

    AudioClip randomClip() {
        int index = Random.Range(0, sounds.Length);
        if( index == prevIndex_ )
            index = Random.Range(0, sounds.Length);

        prevIndex_ = index;

        return sounds[index];
    }

    // Update is called once per frame
    void Update()
    {
        lastPlay_ += Time.deltaTime;

        if(lastPlay_ > interval)
        {
            AudioClip clip = randomClip();
            audioSource_.PlayOneShot(clip);
            lastPlay_ = -clip.length;
        }
    }
}
