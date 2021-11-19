using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

[LuaCallCSharp]
public class Respones
{
    public static int OK = 1;
    public static int SystemErr = -100;
    public static int UserIsFreeze = -101;
    public static int UserIsNotGuest = -102;
    public static int InvalidParams = -103;
    public static int UnameIsExist = -104;
    public static int UnameOrUpwdError = -105;
    public static int InvalidOpt = -106;
}
