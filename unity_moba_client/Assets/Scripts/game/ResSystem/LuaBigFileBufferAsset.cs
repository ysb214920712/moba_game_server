using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class LuaBigFileBufferAsset : ScriptableObject
{
    // encrypt or desc if need
    private string _holder;

    [SerializeField]
    private List<FileSign> _fileSigns = new List<FileSign>();

    [SerializeField]
    private byte[] _bytes;

    public List<FileSign> FileSigns
    {
        get
        {
            return _fileSigns;
        }
    }

    public byte[] BigBytes
    {
        get
        {
            return _bytes;
        }
    }

    public string Holder
    {
        get
        {
            return _holder;
        }
    }

    #if UNITY_EDITOR
    private List<byte> _bytesList = new List<byte>();

    public void GenerateBytes(byte[] bytes, string fileName)
    {
        uint currentOffset = 0;
        if (_bytes != null)
        {
            currentOffset = (uint)_bytes.LongLength;
        }

        if (bytes != null && bytes.Length > 0 && !string.IsNullOrEmpty(fileName))
        {
            try
            {
                _bytes = null;
                FileSign sign = new FileSign();
                sign.FileName = fileName;
                sign.Offset = currentOffset;
                if (bytes.LongLength > (long)(int.MaxValue))
                {
                    Debug.LogError("file too long! consider use uint for sign length! file : " + fileName);
                    return;
                }

                sign.Length = bytes.Length;

                for (int i = 0; i < bytes.Length; i++)
                {
                    _bytesList.Add(bytes[i]);
                }
                _bytes = _bytesList.ToArray();
                _fileSigns.Add(sign);
    //            Debug.LogError("sign      " + _bytes.Length);
            }
            catch(System.Exception e)
            {
                Debug.LogException(e);
            }
        }
        else
        {
            if (_bytes != null)
                Debug.LogError("GenerateBytes Error!  bytes length : " + _bytes.Length);

            if (!string.IsNullOrEmpty(fileName))
                Debug.LogError("GenerateBytes Error!  fileName : " + fileName);
        }
    }

    public void SetHolder(string holder)
    {
        _holder = holder;
    }

    public void ClearTemp()
    {
        _bytesList.Clear();
        _bytesList = null;
    }

    public void CreateBytesFile()
    {
        FileStream fs = new FileStream("E:\\BytesFile.txt", FileMode.Create);
        fs.Write(_bytes, 0, _bytes.Length);
        fs.Flush();
        fs.Close();
    }

    #endif


    [System.Serializable]
    public class FileSign
    {
        public string FileName;
        public uint Offset;
        public int Length;
    }
}
