using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using ICSharpCode.SharpZipLib.Zip;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Text;

public static class ResHelper
{
    static System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
    static Crc32 crc32 = new Crc32();

    public static int HashString(string str)
    {
        const uint InitialFNV = 2166136261U;
        const uint FNVMultiple = 16777619;

        uint hash = InitialFNV;
        for (int i = 0; i < str.Length; i++)
        {
            hash = hash ^ str[i];
            hash = hash * FNVMultiple;
        }

        return (int)(hash & 0x7FFFFFFF);
    }


    public static string Md5Sum(string input)
    {
        return Md5Sum(System.Text.Encoding.UTF8.GetBytes(input));
    }

    public static string Md5Sum(byte[] bytes)
    {
        byte[] hash = md5.ComputeHash(bytes);
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        for (int i = 0; i < hash.Length; i++)
        {
            sb.Append(hash[i].ToString("x2"));
        }
        return sb.ToString();
    }

    public static uint CrcHash(string input)
    {
        return CrcHash(System.Text.Encoding.ASCII.GetBytes(input));
    }

    public static uint CrcHash(byte[] bytes)
    {
        return Crc32.Compute(bytes);
    }

    public static uint ComputeFileChecksum(string path)
    {
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
        crc32.ComputeHash(fs);
        fs.Close();
        return crc32.GetHashResult();
    }



    private static void UnZipFile(Stream stream, string outPath)
    {
        if (!Directory.Exists(outPath))
        {
            Directory.CreateDirectory(outPath);
        }

        using (var zipStream = new ZipInputStream(stream))
        {
            ZipEntry theEntry;
            while ((theEntry = zipStream.GetNextEntry()) != null)
            {
                string dirName = Path.GetDirectoryName(theEntry.Name);
                string fileName = Path.GetFileName(theEntry.Name);

                if (!string.IsNullOrEmpty(dirName))
                {
                    Directory.CreateDirectory(outPath + dirName);
                }

                if (!string.IsNullOrEmpty(fileName))
                {
                    using (var streamWriter = File.Create(outPath + theEntry.Name))
                    {
                        int size = 2048;
                        var data = new byte[size];
                        while (true)
                        {
                            size = zipStream.Read(data, 0, data.Length);
                            if (size > 0)
                            {
                                streamWriter.Write(data, 0, size);
                            }
                            else
                            {
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    public static int CompressBytes(String entryName, byte[] bytes, out byte[] outBytes)
    {
        using (MemoryStream zipStream = new MemoryStream())
        {
            using (ZipOutputStream outStream = new ZipOutputStream(zipStream))
            {
                ZipEntry entry = new ZipEntry(entryName);
                entry.DateTime = new DateTime(0);

                outStream.PutNextEntry(entry);
                outStream.Write(bytes, 0, bytes.Length);
                outStream.Finish();

                zipStream.Seek(0, SeekOrigin.Begin);

                int compressLength = (int)zipStream.Length;
                outBytes = new byte[compressLength];

                int readLength = zipStream.Read(outBytes, 0, compressLength);

                outStream.Close();
                zipStream.Close();

                return readLength;
            }
        }
    }
}
