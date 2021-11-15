using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

public class XOR
{
    /// <summary>
    /// 异或解密
    /// </summary>
    /// <param name="content">待解密的明文</param>
    /// <param name="secretKey">key</param>
    /// <returns>加密后的字符串</returns>
    public static string decrypt(string content, string secretKey)
    {
        byte[] data = Convert.FromBase64String(content);
        byte[] key = Encoding.UTF8.GetBytes(secretKey);
        for (int i = 0; i < data.Length; i++)
        {
            data[i] ^= key[i % key.Length];
        }

        return Encoding.UTF8.GetString(data);
    }

    /// <summary>
    /// 异或加密
    /// </summary>
    /// <param name="content">待加密的明文</param>
    /// <param name="secretKey">key</param>
    /// <returns>加密后的字符串</returns>
    public static string encrypt(string content, string secretKey)
    {
        byte[] key = Encoding.UTF8.GetBytes(secretKey);
        byte[] data = Encoding.UTF8.GetBytes(content);
        for (int i = 0; i < data.Length; i++)
        {
            data[i] ^= key[i % key.Length];
        }
        string en_str = System.Convert.ToBase64String(data);
        return en_str;
    }
}
