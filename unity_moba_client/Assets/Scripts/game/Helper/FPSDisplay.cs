using UnityEngine;
using System.Collections;
using System.IO;

public class FPSDisplay : MonoBehaviour {
	// Attach this to any object to make a frames/second indicator.
	//
	// It calculates frames/second over each updateInterval,
	// so the display does not keep changing wildly.
	//
	// It is also fairly accurate at very low FPS counts (<10).
	// We do this not by simply counting frames per interval, but
	// by accumulating FPS for each frame. This way we end up with
	// corstartRect overall FPS even if the interval renders something like
	// 5.5 frames.
	
	public Rect startRect = new Rect( 10, 10, 75, 50 ); // The rect the window is initially displayed at.
	public bool updateColor = true; // Do you want the color to change if the FPS gets low
	public bool allowDrag = true; // Do you want to allow the dragging of the FPS window
	public  float frequency = 0.5F; // The update frequency of the fps
	public int nbDecimal = 0; // How many decimal do you want to display
	
	private float accum   = 0f; // FPS accumulated over the interval
	private int   frames  = 0; // Frames drawn over the interval
	private Color color = Color.white; // The color of the GUI, depending of the FPS ( R < 10, Y < 30, G >= 30 )
	private string sFPS = ""; // The fps formatted into a string.
	private GUIStyle style; // The style the text will be displayed at, based en defaultSkin.label.

    private StreamWriter _fileWriter;
    private float _lastRealTime;
    private float _lastFlushRealTime;
    private System.Text.StringBuilder _sb = new System.Text.StringBuilder();

    #if RECORD_FPS
    private int _frameCounter = 0;
    private string _lastSceneName = "IM NOTHING";
    private float _lastSceneStartTime = 0f;
    #endif

    private static FPSDisplay _instance = null;

    public static FPSDisplay Instance 
    {
        get
        {
            return _instance;
        }
    }
	
	void Start()
	{
        // #if UNITY_EDITOR
        startRect = new Rect(0, 0, 65, 30);
		StartCoroutine( FPS() );
        // #endif

        #if RECORD_FPS
        OpenFpsFile();
        #endif

        _instance = this;
	}
	
	void Update()
	{
        // #if UNITY_EDITOR
        float accum_temp = 0;
        if (Time.timeScale == 0 || Time.deltaTime == 0)
            accum_temp = 30f;
        else
            accum_temp = Time.timeScale/ Time.deltaTime;

        accum += accum_temp;
		++frames;
        // #endif

        #if RECORD_FPS
        ++_frameCounter;

        if (Time.realtimeSinceStartup - _lastRealTime >= 1f)
        {
            WriteToFile(accum_temp, _frameCounter);
            _lastRealTime = Time.realtimeSinceStartup;
        }

        if (Time.realtimeSinceStartup - _lastFlushRealTime >= 10f && _fileWriter != null)
        {
            _lastFlushRealTime = Time.realtimeSinceStartup;
            _fileWriter.Flush();
        }
        #endif
	}
	
	IEnumerator FPS()
	{
		// Infinite loop executed every "frenquency" secondes.
		while( true )
		{
			// Update the FPS
			float fps = accum/frames;
			sFPS = fps.ToString( "f" + Mathf.Clamp( nbDecimal, 0, 10 ) );
			
			//Update the color
			color = (fps > 24) ? Color.green : ((fps > 15) ? Color.yellow : Color.red);
            color.a = 0.6f;
			
			accum = 0.0F;
			frames = 0;

			
			yield return new WaitForSeconds( frequency );
		}
	}
	
    // #if UNITY_EDITOR

	void OnGUI()
	{
		// Copy the default label skin, change the color and the alignement
		if( style == null ){
			style = new GUIStyle( GUI.skin.label );
			style.normal.textColor = Color.white;
			style.alignment = TextAnchor.MiddleCenter;
		}
		
		GUI.color = updateColor ? color : Color.white;
		startRect = GUI.Window(0, startRect, DoMyWindow, "");
	}
	
	void DoMyWindow(int windowID)
	{
		GUI.Label( new Rect(0, 0, startRect.width, startRect.height), sFPS + " FPS", style );
		if( allowDrag ) GUI.DragWindow(new Rect(0, 0, Screen.width, Screen.height));
	}

    // #endif

    private string GenerateFpsFilePath()
    {
        #if UNITY_EDITOR
        string rootPath = Application.streamingAssetsPath;
        #else
        string rootPath = Application.persistentDataPath;
        #endif

        string fileName = "FPS_" + System.DateTime.Now.Month + "_" + System.DateTime.Now.Day + "_" + System.DateTime.Now.Hour + "_" + System.DateTime.Now.Minute + ".txt"; 
        fileName = Path.Combine(rootPath, fileName);
        return fileName;
    }

    private void OpenFpsFile()
    {
        _fileWriter = File.CreateText(GenerateFpsFilePath());
    }

    private void SaveToStringBuilder(float fps, int frameCount)
    {
        string writeText = string.Format("{0:0.0}", fps);
        _sb.AppendLine(writeText);
    }

    private void WriteToFile(float fps, int frameCount)
    {
        string writeText = string.Format("{0:0.0}", fps);
        _fileWriter.WriteLine(writeText);
    }

    public void SwitchWithScene(string sceneNamme)
    {
        #if RECORD_FPS
        _fileWriter.WriteLine(string.Format("-------------------------------------{0}-------------------------------------", _lastSceneName));
        // do write
        float durationTime = Time.realtimeSinceStartup - _lastSceneStartTime;
        float avg = 0;
        if (_frameCounter > 0)
        {
            avg = _frameCounter / durationTime;
        }
        _fileWriter.WriteLine(string.Format("-----total duration-----time:{0:0.000}----frames:{1}----AVG FPS:{2:0.00}----------", durationTime, _frameCounter, avg));


        _frameCounter = 0;
        _lastSceneStartTime = Time.realtimeSinceStartup;
        _lastSceneName = sceneNamme;

        _fileWriter.Flush();
        #endif
    }

    public void EndRecord()
    {
        #if RECORD_FPS
        _fileWriter.Close();
        #endif
    }

    void OnApplicationQuit()
    {
        SwitchWithScene("ApplicationQuit");
        EndRecord();
    }
}
