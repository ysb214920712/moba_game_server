using UnityEngine;

public static class ParticleHelper
{
    //曲线只简单获取关键点的大小，不进一步去获取准确的最大值
    public static float GetMaxValue(this AnimationCurve curve)
    {
        float maxVal = curve[0].value;
        for (int i = 1; i < curve.length; i++)
            maxVal = Mathf.Max(maxVal, curve[i].value);

        return maxVal;
    }

    //曲线只简单获取关键点的大小，不进一步去获取准确的最小值
    public static float GetMinValue(this AnimationCurve curve)
    {
        float minVal = curve[0].value;
        for (int i = 1; i < curve.length; i++)
            minVal = Mathf.Min(minVal, curve[i].value);

        return minVal;
    }
    public static float GetMaxValue(this ParticleSystem.MinMaxCurve minMaxCurve)
    {
        switch (minMaxCurve.mode)
        {
            case ParticleSystemCurveMode.Constant:
                return minMaxCurve.constant;
            case ParticleSystemCurveMode.Curve:
                return minMaxCurve.curve.GetMaxValue();
            case ParticleSystemCurveMode.TwoConstants:
                return minMaxCurve.constantMax;
            case ParticleSystemCurveMode.TwoCurves:
                var ret1 = minMaxCurve.curveMin.GetMaxValue();
                var ret2 = minMaxCurve.curveMax.GetMaxValue();
                return ret1 > ret2 ? ret1 : ret2;
        }
        return -1f;
    }
    public static float GetMinValue(this ParticleSystem.MinMaxCurve minMaxCurve)
    {
        switch (minMaxCurve.mode)
        {
            case ParticleSystemCurveMode.Constant:
                return minMaxCurve.constant;
            case ParticleSystemCurveMode.Curve:
                return minMaxCurve.curve.GetMinValue();
            case ParticleSystemCurveMode.TwoConstants:
                return minMaxCurve.constantMin;
            case ParticleSystemCurveMode.TwoCurves:
                var ret1 = minMaxCurve.curveMin.GetMinValue();
                var ret2 = minMaxCurve.curveMax.GetMinValue();
                return ret1 > ret2 ? ret2 : ret1;
        }
        return -1f;
    }

    public static float GetDuration(this ParticleSystem particle, bool allowLoop = false)
    {
        if (!particle.emission.enabled)
            return particle.main.duration;

        if (particle.main.loop && !allowLoop)
            return -1f;

        if (particle.emission.rateOverTime.GetMinValue() <= 0.0f)
            return particle.main.startDelay.GetMaxValue() + particle.main.startLifetime.GetMaxValue();
        else
            return particle.main.startDelay.GetMaxValue() + Mathf.Max(particle.main.duration, particle.main.startLifetime.GetMaxValue());
    }

    public static float GetParticleDuration(GameObject gameObject, bool includeChildren = true, bool includeInActive = false, bool allowLoop = false)
    {
        if (includeChildren)
        {
            var particles = gameObject.GetComponentsInChildren<ParticleSystem>(includeInActive);
            var duration = -1f;
            for (var i = 0; i < particles.Length; i++)
            {
                var ps = particles[i];
                var time = ps.GetDuration(allowLoop);
                if (time > duration)
                    duration = time;
            }
            return duration;
        }
        else
        {
            var ps = gameObject.GetComponent<ParticleSystem>();
            if (ps != null)
                return ps.GetDuration(allowLoop);
            else
                return -1f;
        }
    }
}