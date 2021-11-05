using System.Collections;
using System.Collections.Generic;

public class event_manager : Singleton<event_manager>
{
    public delegate void on_event_handler(string name, object udata);
    private Dictionary<string, on_event_handler> event_listeners = new Dictionary<string, on_event_handler>();

    public void init()
    {
        
    }

    public void add_event_listener(string name, on_event_handler handler)
    {
        if (this.event_listeners.ContainsKey(name))
        {
            this.event_listeners[name] += handler;
        }
        else
        {
            this.event_listeners.Add(name, handler);
        }
    }

    public void remove_event_listener(string name, on_event_handler handler)
    {
        if (!this.event_listeners.ContainsKey(name))
        {
            return;
        }

        this.event_listeners[name] -= handler;
        if (this.event_listeners[name] == null)
        {
            this.event_listeners.Remove(name);
        }
    }

    public void dispatch_event(string name, object udata)
    {
        if (!this.event_listeners.ContainsKey(name))
        {
            return;
        }

        if (this.event_listeners[name] != null)
        {
            this.event_listeners[name](name, udata);
        }
    }
}
