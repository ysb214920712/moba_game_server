using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

public class CustomCryptograph
{
    public static string Decrypt(string s, string key)
    {
        byte[] orgStrb = Convert.FromBase64String(s);
        Decrypt(orgStrb, key);
        return Encoding.UTF8.GetString(orgStrb);
    }

    public static void Decrypt(byte[] orgStrb, string key)
    {
        byte[] pasKey = Encoding.UTF8.GetBytes(key);
        for (int i = 0; i < orgStrb.Length; i++)
        {
            orgStrb[i] ^= pasKey[i % pasKey.Length];
        }
    }

    public static void Encrypt(byte[] bs, string key)
    {
        byte[] pasKey = Encoding.UTF8.GetBytes(key);
        for (int i = 0; i < bs.Length; i++)
        {
            bs[i] ^= pasKey[i % pasKey.Length];
        }
    }

    public static string Encrypt(string s, string key)
    {
        byte[] bs = Encoding.UTF8.GetBytes(s);
        Encrypt(bs, key);
        return Convert.ToBase64String(bs);
    }

    public static string EncryptLua(byte[] bs, string key)
    {
        //byte[] bs = Encoding.UTF8.GetBytes(s);
        Encrypt(bs, key);
        return Convert.ToBase64String(bs);
    }

    public static string DecryptLua(string s, string key)
    {
        byte[] bs = Encoding.UTF8.GetBytes(s);
        Decrypt(bs, key);
        return bs.ToString();
    }

    public static string EncryptBase64Lua(string s,string key)
    {
        return Encrypt(s, key);
    }

    public static string DecryptBase64Lua(string s, string key)
    {
        return Decrypt(s, key);
    }
}
