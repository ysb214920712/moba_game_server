using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;

public class DownloadFileHandler:DownloadHandlerScript
{
    private string _saveFilePath;//保存路径
    private string _fileName;//文件名
    private string _pathName;//路径+名
    private string _postfix = ".temp";//临时文件后缀名

    /// <summary>
    /// 文件总长度
    /// </summary>
    private ulong _sumLength;
    /// <summary>
    /// 文件总长度
    /// </summary>
    public ulong sumLength
    {
        get
        {
            return _sumLength;
        }
    }

    /// <summary>
    /// 已下载长度
    /// </summary>
    private ulong _nowLength;
    /// <summary>
    /// 已下载长度
    /// </summary>
    public ulong nowLength
    {
        get
        {
            return _nowLength;
        }
    }

    /// <summary>
    /// 下载进度
    /// </summary>
    public double downloadProgress
    {
        get
        {
            if (sumLength == 0)
                return 0f;
            else
                return (double)nowLength/sumLength;
        }
    }

    /// <summary>
    /// 下载完成
    /// </summary>
    new bool isDone = false;
    /// <summary>
    /// 下载完成
    /// </summary>
    public bool IsDone { get { return isDone; } }

    /// <summary>
    /// 每次下载的数据
    /// </summary>
    public byte[] DownloadDatas { get { return _datas.ToArray(); } }
    /// <summary>
    /// 每次下载的数据
    /// </summary>
    private List<byte> _datas = new List<byte>();

    public DownloadFileHandler(string saveFilePath, string fileName):base(new byte[1024 * 200])
    {
        _saveFilePath = saveFilePath;
        _fileName = fileName;

        _pathName = _saveFilePath + "/" + _fileName.Substring(0, _fileName.LastIndexOf('.')) + _postfix;
        _nowLength = (ulong)GetFileLength(_pathName);
    }

    // /// <summary>
    // /// 重写基类 获取到下载文件的长度
    // /// </summary>
    // /// <param name="contentLength"></param>
    // protected override void ReceiveContentLengthHeader(ulong contentLength)
    // {
    //     _sumLength = contentLength + nowLength;
    // }

    /// <summary>
    ///  重写基类 正在下载 
    /// </summary>
    /// <param name="data">下载的数据 （不止有现在下载的还有前面下载的数据）</param>
    /// <param name="dataLength">当前下载的数据长度</param>
    /// <returns></returns>
    protected override bool ReceiveData(byte[] data, int dataLength)
    {
        for (int i = 0; i < dataLength; i++)
        {
            _datas.Add(data[i]);
        }
        _nowLength += (ulong)dataLength;

        WriteFile(_pathName, data, dataLength);

        return true;
    }

    protected override void CompleteContent()
    {
        string filePathName = _saveFilePath + "/" + _fileName;
        if (File.Exists(filePathName))
            File.Delete(filePathName);
        File.Move(_pathName, filePathName);
    }

    private void WriteFile(string pathName, byte[] datas, int length)
    {
        FileStream fs;
        if (!File.Exists(pathName))
            fs = File.Create(pathName);
        else
            fs = File.OpenWrite(pathName);

        long len = fs.Length;
        fs.Seek(len, SeekOrigin.Current);
        fs.Write(datas, 0, length);
        fs.Flush();
        fs.Close();
    }

    public static long GetFileLength(string pathName)
    {
        if (!File.Exists(pathName))
            return 0;
        FileStream fs = File.OpenWrite(pathName);
        long len = fs.Length;
        fs.Close();
        return len;
    }
}

public class DownloadHelper
{
    private static Dictionary<string, UnityWebRequest> _requestMap = new Dictionary<string, UnityWebRequest>();

    private static Dictionary<string, Coroutine> _coroutineMap = new Dictionary<string, Coroutine>();

    /// <summary>
    /// 下载资源
    /// </summary>
    /// <param name="downPath">下载地址（包含文件名）</param>
    /// <param name="savePath">保存地址（不包含文件名）</param>
    /// <param name="callback">下载进度回调 返回 0-1之间的小数</param>
    public static Coroutine Download(string downPath, string savePath, System.Action<double> callback)
    {
        if (!Directory.Exists(savePath))
            Directory.CreateDirectory(savePath);

        if (!_requestMap.ContainsKey(downPath))
        {
            Coroutine cor = CoroutineHelper.Run(_DoDownload(downPath, savePath, callback));
            _coroutineMap.Add(downPath, cor);
            return cor;
        } else {
            return _coroutineMap[downPath];
        }
    }

    private static IEnumerator _DoDownload(string downPath, string savePath, System.Action<double> callback)
    {
        string[] temp = downPath.Split('/');
        string fileName = temp[temp.Length - 1];

        UnityWebRequest request = UnityWebRequest.Get(downPath);
        DownloadFileHandler downloadFile = new DownloadFileHandler(savePath, fileName);
        request.downloadHandler = downloadFile;
        ulong length = downloadFile.nowLength;

        request.SetRequestHeader("Range", "bytes=" + length + "-");
        request.SendWebRequest();

        _requestMap.Add(downPath, request);

        while (true)
        {
            yield return new WaitForEndOfFrame();
            if (callback != null)
            {
                if (downloadFile.downloadProgress < 1)
                    callback(downloadFile.downloadProgress);
            }
            if (downloadFile.IsDone)
            {
                callback(1);
                break;
            }
        }
    }

    public static void StopDownload()
    {
        foreach (Coroutine cor in _coroutineMap.Values)
        {
            CoroutineHelper.StopCoroutine(cor);
        }
        _coroutineMap.Clear();

        foreach(UnityWebRequest req in _requestMap.Values)
        {
            req.Abort();//中止下载
            req.Dispose();//释放
        }
        _requestMap.Clear();
    }
}