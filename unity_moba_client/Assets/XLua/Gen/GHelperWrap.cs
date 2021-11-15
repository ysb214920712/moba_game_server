#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using XLua;
using System.Collections.Generic;


namespace XLua.CSObjectWrap
{
    using Utils = XLua.Utils;
    public class GHelperWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(GHelper);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 44, 4, 1);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "HashString", _m_HashString_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "Md5Sum", _m_Md5Sum_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "CrcHash", _m_CrcHash_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ComputeFileChecksum", _m_ComputeFileChecksum_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ByteArrayToHexString", _m_ByteArrayToHexString_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "HexStringToByteArray", _m_HexStringToByteArray_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "TimeStampToDateTime", _m_TimeStampToDateTime_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DateTimeToTimeStamp", _m_DateTimeToTimeStamp_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetTimeZone", _m_GetTimeZone_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "iclock", _m_iclock_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetNaturalDaysCount", _m_GetNaturalDaysCount_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetHoursCount", _m_GetHoursCount_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SyncTimeFromServer", _m_SyncTimeFromServer_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "NoCacheUrl", _m_NoCacheUrl_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "UnZipFile", _m_UnZipFile_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetStringLength", _m_GetStringLength_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetStringCut", _m_GetStringCut_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "EncodeNonAsciiCharacters", _m_EncodeNonAsciiCharacters_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "FilterEmojiString", _m_FilterEmojiString_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "StringHasEmoji", _m_StringHasEmoji_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "CreateDirectory", _m_CreateDirectory_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "CompressBytes", _m_CompressBytes_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "IsLowMemoryDevice", _m_IsLowMemoryDevice_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "EncodeXY", _m_EncodeXY_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ListFile", _m_ListFile_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetPersistentDataPath", _m_GetPersistentDataPath_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "EncryptText", _m_EncryptText_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DecryptText", _m_DecryptText_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "Get32BitCryptKey", _m_Get32BitCryptKey_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DecryptTextSafely", _m_DecryptTextSafely_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "XorEncrypt", _m_XorEncrypt_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "XorDecrypt", _m_XorDecrypt_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "FromBase64String", _m_FromBase64String_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ToBase64String", _m_ToBase64String_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "GetRTPixels", _m_GetRTPixels_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SaveRenderTexureToJPG", _m_SaveRenderTexureToJPG_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "SaveTexure2DToJPG", _m_SaveTexure2DToJPG_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DoScreenShot_ScreenCapture", _m_DoScreenShot_ScreenCapture_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ScreenShot_ScreenCapture", _m_ScreenShot_ScreenCapture_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DoScreenShot_ReadPixels", _m_DoScreenShot_ReadPixels_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ScreenShot_ReadPixels", _m_ScreenShot_ReadPixels_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "DoScreenShot_ReadPixelsWithCamera", _m_DoScreenShot_ReadPixelsWithCamera_xlua_st_);
            Utils.RegisterFunc(L, Utils.CLS_IDX, "ScreenShot_ReadPixelsWithCamera", _m_ScreenShot_ReadPixelsWithCamera_xlua_st_);
            
			
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "ServerTime", _g_get_ServerTime);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "ServerDateTime", _g_get_ServerDateTime);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "Device32BitCryptKey", _g_get_Device32BitCryptKey);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "serverTimeOffset", _g_get_serverTimeOffset);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "serverTimeOffset", _s_set_serverTimeOffset);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            return LuaAPI.luaL_error(L, "GHelper does not have a constructor!");
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_HashString_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _str = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.HashString( _str );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Md5Sum_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
			    int gen_param_count = LuaAPI.lua_gettop(L);
            
                if(gen_param_count == 1&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)) 
                {
                    string _input = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.Md5Sum( _input );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                if(gen_param_count == 1&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)) 
                {
                    byte[] _bytes = LuaAPI.lua_tobytes(L, 1);
                    
                        var gen_ret = GHelper.Md5Sum( _bytes );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
            return LuaAPI.luaL_error(L, "invalid arguments to GHelper.Md5Sum!");
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CrcHash_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
			    int gen_param_count = LuaAPI.lua_gettop(L);
            
                if(gen_param_count == 1&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)) 
                {
                    string _input = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.CrcHash( _input );
                        LuaAPI.xlua_pushuint(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                if(gen_param_count == 1&& (LuaAPI.lua_isnil(L, 1) || LuaAPI.lua_type(L, 1) == LuaTypes.LUA_TSTRING)) 
                {
                    byte[] _bytes = LuaAPI.lua_tobytes(L, 1);
                    
                        var gen_ret = GHelper.CrcHash( _bytes );
                        LuaAPI.xlua_pushuint(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
            return LuaAPI.luaL_error(L, "invalid arguments to GHelper.CrcHash!");
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ComputeFileChecksum_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _path = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.ComputeFileChecksum( _path );
                        LuaAPI.xlua_pushuint(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ByteArrayToHexString_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    byte[] _bytes = LuaAPI.lua_tobytes(L, 1);
                    int _offset = LuaAPI.xlua_tointeger(L, 2);
                    int _size = LuaAPI.xlua_tointeger(L, 3);
                    
                        var gen_ret = GHelper.ByteArrayToHexString( _bytes, _offset, _size );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_HexStringToByteArray_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _hex = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.HexStringToByteArray( _hex );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_TimeStampToDateTime_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    int _timeStamp = LuaAPI.xlua_tointeger(L, 1);
                    
                        var gen_ret = GHelper.TimeStampToDateTime( _timeStamp );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DateTimeToTimeStamp_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    System.DateTime _dateTime;translator.Get(L, 1, out _dateTime);
                    
                        var gen_ret = GHelper.DateTimeToTimeStamp( _dateTime );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetTimeZone_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = GHelper.GetTimeZone(  );
                        LuaAPI.lua_pushnumber(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_iclock_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = GHelper.iclock(  );
                        LuaAPI.xlua_pushuint(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetNaturalDaysCount_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    System.DateTime _dtStart;translator.Get(L, 1, out _dtStart);
                    System.DateTime _dtEnd;translator.Get(L, 2, out _dtEnd);
                    
                        var gen_ret = GHelper.GetNaturalDaysCount( _dtStart, _dtEnd );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetHoursCount_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    System.DateTime _dtStart;translator.Get(L, 1, out _dtStart);
                    System.DateTime _dtEnd;translator.Get(L, 2, out _dtEnd);
                    
                        var gen_ret = GHelper.GetHoursCount( _dtStart, _dtEnd );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SyncTimeFromServer_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    int _serverTime = LuaAPI.xlua_tointeger(L, 1);
                    
                    GHelper.SyncTimeFromServer( _serverTime );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_NoCacheUrl_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _url = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.NoCacheUrl( _url );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_UnZipFile_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    byte[] _bytes = LuaAPI.lua_tobytes(L, 1);
                    string _outPath = LuaAPI.lua_tostring(L, 2);
                    
                    GHelper.UnZipFile( _bytes, _outPath );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetStringLength_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _str = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.GetStringLength( _str );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetStringCut_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _str = LuaAPI.lua_tostring(L, 1);
                    int _length = LuaAPI.xlua_tointeger(L, 2);
                    
                        var gen_ret = GHelper.GetStringCut( _str, _length );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_EncodeNonAsciiCharacters_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _value = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.EncodeNonAsciiCharacters( _value );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_FilterEmojiString_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _value = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.FilterEmojiString( _value );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_StringHasEmoji_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _value = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.StringHasEmoji( _value );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CreateDirectory_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _path = LuaAPI.lua_tostring(L, 1);
                    
                    GHelper.CreateDirectory( _path );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_CompressBytes_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _entryName = LuaAPI.lua_tostring(L, 1);
                    byte[] _bytes = LuaAPI.lua_tobytes(L, 2);
                    byte[] _outBytes;
                    
                        var gen_ret = GHelper.CompressBytes( _entryName, _bytes, out _outBytes );
                        LuaAPI.xlua_pushinteger(L, gen_ret);
                    LuaAPI.lua_pushstring(L, _outBytes);
                        
                    
                    
                    
                    return 2;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_IsLowMemoryDevice_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = GHelper.IsLowMemoryDevice(  );
                        LuaAPI.lua_pushboolean(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_EncodeXY_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _j = LuaAPI.lua_tostring(L, 1);
                    string _s = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.EncodeXY( _j, _s );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ListFile_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    string _fullPath = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.ListFile( _fullPath );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetPersistentDataPath_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    
                        var gen_ret = GHelper.GetPersistentDataPath(  );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_EncryptText_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _data = LuaAPI.lua_tostring(L, 1);
                    string _cryptKey = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.EncryptText( _data, _cryptKey );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DecryptText_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _data = LuaAPI.lua_tostring(L, 1);
                    string _cryptKey = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.DecryptText( _data, _cryptKey );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_Get32BitCryptKey_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _key = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.Get32BitCryptKey( _key );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DecryptTextSafely_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _data = LuaAPI.lua_tostring(L, 1);
                    string _cryptKey = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.DecryptTextSafely( _data, _cryptKey );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_XorEncrypt_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _content = LuaAPI.lua_tostring(L, 1);
                    string _secretKey = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.XorEncrypt( _content, _secretKey );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_XorDecrypt_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _content = LuaAPI.lua_tostring(L, 1);
                    string _secretKey = LuaAPI.lua_tostring(L, 2);
                    
                        var gen_ret = GHelper.XorDecrypt( _content, _secretKey );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_FromBase64String_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    string _s = LuaAPI.lua_tostring(L, 1);
                    
                        var gen_ret = GHelper.FromBase64String( _s );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ToBase64String_xlua_st_(RealStatePtr L)
        {
		    try {
            
            
            
                
                {
                    byte[] _inArray = LuaAPI.lua_tobytes(L, 1);
                    
                        var gen_ret = GHelper.ToBase64String( _inArray );
                        LuaAPI.lua_pushstring(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetRTPixels_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    UnityEngine.RenderTexture _texure = (UnityEngine.RenderTexture)translator.GetObject(L, 1, typeof(UnityEngine.RenderTexture));
                    
                        var gen_ret = GHelper.GetRTPixels( _texure );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SaveRenderTexureToJPG_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    UnityEngine.RenderTexture _texture = (UnityEngine.RenderTexture)translator.GetObject(L, 1, typeof(UnityEngine.RenderTexture));
                    string _path = LuaAPI.lua_tostring(L, 2);
                    
                    GHelper.SaveRenderTexureToJPG( _texture, _path );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SaveTexure2DToJPG_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    UnityEngine.Texture2D _texture2D = (UnityEngine.Texture2D)translator.GetObject(L, 1, typeof(UnityEngine.Texture2D));
                    string _path = LuaAPI.lua_tostring(L, 2);
                    
                    GHelper.SaveTexure2DToJPG( _texture2D, _path );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DoScreenShot_ScreenCapture_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    string _fileName = LuaAPI.lua_tostring(L, 1);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 2);
                    
                        var gen_ret = GHelper.DoScreenShot_ScreenCapture( _fileName, _callback );
                        translator.PushAny(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ScreenShot_ScreenCapture_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    string _fileName = LuaAPI.lua_tostring(L, 1);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 2);
                    
                    GHelper.ScreenShot_ScreenCapture( _fileName, _callback );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DoScreenShot_ReadPixels_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    string _fileName = LuaAPI.lua_tostring(L, 1);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 2);
                    
                        var gen_ret = GHelper.DoScreenShot_ReadPixels( _fileName, _callback );
                        translator.PushAny(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ScreenShot_ReadPixels_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    string _fileName = LuaAPI.lua_tostring(L, 1);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 2);
                    
                    GHelper.ScreenShot_ReadPixels( _fileName, _callback );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_DoScreenShot_ReadPixelsWithCamera_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    UnityEngine.Camera _camera = (UnityEngine.Camera)translator.GetObject(L, 1, typeof(UnityEngine.Camera));
                    string _fileName = LuaAPI.lua_tostring(L, 2);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 3);
                    
                        var gen_ret = GHelper.DoScreenShot_ReadPixelsWithCamera( _camera, _fileName, _callback );
                        translator.PushAny(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_ScreenShot_ReadPixelsWithCamera_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    UnityEngine.Camera _camera = (UnityEngine.Camera)translator.GetObject(L, 1, typeof(UnityEngine.Camera));
                    string _fileName = LuaAPI.lua_tostring(L, 2);
                    System.Action<bool, UnityEngine.Texture2D> _callback = translator.GetDelegate<System.Action<bool, UnityEngine.Texture2D>>(L, 3);
                    
                    GHelper.ScreenShot_ReadPixelsWithCamera( _camera, _fileName, _callback );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_ServerTime(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, GHelper.ServerTime);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_ServerDateTime(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.Push(L, GHelper.ServerDateTime);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_Device32BitCryptKey(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushstring(L, GHelper.Device32BitCryptKey);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_serverTimeOffset(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, GHelper.serverTimeOffset);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_serverTimeOffset(RealStatePtr L)
        {
		    try {
                
			    GHelper.serverTimeOffset = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
