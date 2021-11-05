using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class audio_manager : UnitySingleton<audio_manager>
{
    private AudioSource music = null;
    int max_effects = 10;
    private Queue<AudioSource> effects = new Queue<AudioSource>();

    private AudioClip now_music_clip = null;
    private bool now_music_loop = true;

    override public void Awake() {
        base.Awake();

        this.music = this.gameObject.AddComponent<AudioSource>();

        for (int i = 0; i < max_effects; i++)
        {
            AudioSource source = this.gameObject.AddComponent<AudioSource>();
            this.effects.Enqueue(source);
        }
    }
    
    public void play_music(AudioClip clip, bool loop = true)
    {
        if (this.music == null || clip == null || (this.music.clip && this.music.clip.name == clip.name))
        {
            return;
        }

        this.music.clip = clip;
        this.music.loop = loop;
        this.now_music_clip = clip;
        this.now_music_loop = loop;

        this.music.volume = 1.0f;
        this.music.Play();
    }

    public void stop_music()
    {
        if (this.music == null || this.music.clip == null)
        {
            return;
        }

        this.music.Stop();
    }

    public AudioSettings play_effect(AudioClip clip)
    {
        AudioSource source = this.effects.Dequeue();

        source.clip = clip;
        source.volume = 1.0f;
        source.Play();

        this.effects.Enqueue(source);
        return null;
    }

    public void enable_music(bool enable)
    {
        if (this.music == null || this.music.enabled == enable)
        {
            return;
        }

        this.music.enabled = enable;
        if (enable)
        {
            this.music.clip = this.now_music_clip;
            this.music.loop = this.now_music_loop;
            this.music.Play();
        }
    }

    public void enable_effect(bool enable)
    {
        AudioSource[] effect_set = this.effects.ToArray();
        for (int i = 0; i < this.effects.Count; i++)
        {
            if (effect_set[i].enabled == enable)
            {
                continue;
            }
            
            effect_set[i].enabled = enable;
            if(enable)
            {
                effect_set[i].clip = null;
            }
        }
    }
}
