using System;
using System.Collections.Generic;

namespace XLua
{
    public partial class LuaEnv : IDisposable
    {
        public void ReleaseAllDelegateBridge()
        {
    #if THREAD_SAFE || HOTFIX_ENABLE
            lock (luaEnvLock)
            {
    #endif
                if (disposed) return;
                Tick();
                var delegates = translator.GetAllDelegateBridges();
                delegates.Clear();
    #if THREAD_SAFE || HOTFIX_ENABLE
            }
    #endif
        }
    }


    public partial class ObjectTranslator
    {
        public Dictionary<int, WeakReference> GetAllDelegateBridges()
        {
            return delegate_bridges;
        }
    }
}