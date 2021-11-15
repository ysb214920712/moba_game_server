using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text;

public sealed class PrefsHelper {
	class PrefsData {
    	public Dictionary<string, int> IntPrefs { get; set; }
    	public Dictionary<string, string> StrPrefs { get; set; }

	        public PrefsData() {
            IntPrefs = new Dictionary<string, int>();
            StrPrefs = new Dictionary<string, string>();
        }
	}

	static PrefsData data_ = null;

	static PrefsHelper() {
		data_ = new PrefsData();
	}

	public static int GetInt( string key, int defaultValue = 0 ) {
		int value;
		if( data_.IntPrefs.TryGetValue(key, out value) )
			return value;
		return defaultValue;
	}

	public static void SetInt( string key, int value ) {
		data_.IntPrefs[key] = value;
	}

	public static string GetString( string key, string defaultValue = "" ) {
		string value;
		if( data_.StrPrefs.TryGetValue(key, out value) )
			return value;
		return defaultValue;
	}

	public static void SetString( string key, string value ) {
		data_.StrPrefs[key] = value;
	}

	public static void Load() {
		string path = System.IO.Path.Combine(Application.persistentDataPath,"preferences");
        Debug.LogFormat("Load gamePrefs path:{0}", path);
		if( System.IO.File.Exists(path) )
		{
			System.IO.StreamReader sr = new System.IO.StreamReader(path);
			string content = sr.ReadToEnd();
			sr.Close();

            PrefsData data = LitJson.JsonMapper.ToObject<PrefsData>(content);
            if( data != null )
                data_ = data;
		}
	}

	public static void Save() {
		string path = System.IO.Path.Combine(Application.persistentDataPath,"preferences");
        Debug.LogFormat("Save gamePrefs path:{0}", path);
		System.IO.FileStream fs = new System.IO.FileStream(path, System.IO.FileMode.Create, System.IO.FileAccess.Write);
		if( fs != null )
		{
            StringBuilder sb = new StringBuilder();
			System.IO.StringWriter writer = new System.IO.StringWriter(sb);
			LitJson.JsonMapper.ToJson(data_,
                                    new LitJson.JsonWriter(writer){
                                    PrettyPrint=true 
                                });
			byte[] buff = Encoding.UTF8.GetBytes(sb.ToString());
			fs.Write(buff, 0, buff.Length);
			fs.Close();
		}
        else
        {
            Debug.LogErrorFormat("gamePrefs preferences file create error");
        }
	}
}
