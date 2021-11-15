using UnityEngine;
using System.Collections;

#if UNITY_IOS
using Unity.Notifications.iOS;
#elif UNITY_ANDROID
using Unity.Notifications.Android;
#endif


public static class NotificationHelper
{
    public static IEnumerator CheckNotificationAuthorization(System.Action<bool> callback)
    {
#if UNITY_IOS
        using (var req = new AuthorizationRequest(AuthorizationOption.Alert | AuthorizationOption.Badge, true)) {
            while (!req.IsFinished) {
                yield return null;
            };

            if(callback != null)
                callback(req.Granted);

            Debug.LogFormat("RequestAuthorization finished:{0} granted:{1} error:{2} deviceToken:{3}", req.IsFinished,
                req.Granted, req.Error, req.DeviceToken);
        }
#else
        yield return null;
#endif
    }

    public static void ScheduleRepeatNotification(string identifier, int hour, int minute, string content)
    {
#if UNITY_IOS
        var trigger = new iOSNotificationCalendarTrigger();
        if(hour >= 0) trigger.Hour = hour;
        trigger.Minute = minute;
        trigger.Repeats = true;

        var notification = new iOSNotification(identifier) {
            Body = content,
            ShowInForeground = false,
            CategoryIdentifier = "category_normal",
            Trigger = trigger
        };

        iOSNotificationCenter.ScheduleNotification(notification);
#endif
    }

    public static void ScheduleNotification(string identifier, int year, int month, int day, int hour, int minute, string content)
    {
#if UNITY_IOS
        var trigger = new iOSNotificationCalendarTrigger();
        trigger.Year = year;
        trigger.Month = month;
        trigger.Day = day;
        trigger.Hour = hour;
        trigger.Minute = minute;
        trigger.Repeats = false;

        var notification = new iOSNotification(identifier) {
            Body = content,
            ShowInForeground = false,
            CategoryIdentifier = "category_normal",
            Trigger = trigger
        };

        iOSNotificationCenter.ScheduleNotification(notification);
#endif
    }

    public static void RemoveScheduledNotification(string identifier)
    {
#if UNITY_IOS
        iOSNotificationCenter.RemoveScheduledNotification(identifier);
#endif
    }

    public static void RemoveDeliveredNotification(string identifier)
    {
#if UNITY_IOS
        iOSNotificationCenter.RemoveDeliveredNotification(identifier);
#endif
    }

    public static void RegisterNotificationChannel()
    {
#if UNITY_ANDROID
        var c = new AndroidNotificationChannel()
        {
            Id = "minigame_tower_normal_channel",
            Name = "Default Channel",
            Importance = Importance.High,
            Description = "Generic notifications",
        };
        AndroidNotificationCenter.RegisterNotificationChannel(c);
#endif
    }

    public static int SendRepeatNotification(int hour, int minute, string content)
    {
        int identifier = 0;
#if UNITY_ANDROID
        System.DateTime now = System.DateTime.Now;
        System.DateTime dest;
        System.TimeSpan span;
        if( hour>=0 )
        {
            dest = new System.DateTime(now.Year, now.Month, now.Day, hour, minute, 0);
            span = new System.TimeSpan(1, 0, 0, 0);
        }
        else
        {
            dest = new System.DateTime(now.Year, now.Month, now.Day, now.Hour, minute, 0);
            span = new System.TimeSpan(1, 0, 0);
        }

        var notification = new AndroidNotification("", content, dest, span);
        identifier = AndroidNotificationCenter.SendNotification(notification, "minigame_tower_normal_channel");

#endif

        return identifier;
    }
    public static int SendNotification(int year, int month, int day, int hour, int minute, string content)
    {
        int identifier = 0;
#if UNITY_ANDROID
        var notification = new AndroidNotification();
        notification.Text = content;
        notification.FireTime = new System.DateTime(year, month, day, hour, minute, 0);

        identifier = AndroidNotificationCenter.SendNotification(notification, "minigame_tower_normal_channel");
#endif

        return identifier;
    }

    public static void CancelNotification(int identifier)
    {
#if UNITY_ANDROID
        AndroidNotificationCenter.CancelScheduledNotification(identifier);
#endif
    }
}
