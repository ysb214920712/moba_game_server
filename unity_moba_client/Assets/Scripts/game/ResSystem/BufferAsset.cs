using UnityEngine;
using System.Collections;

public class BufferAsset : ScriptableObject {
	private byte[] _buffer;

	public byte[] bytes {
		get { return _buffer; }
	} 

	public void init(int length) {
		_buffer = new byte[length];
	}

	public void init( TextAsset text ) {
		if( text != null )
			_buffer = text.bytes;
	}

	public void init( byte[] bytes ) {
		_buffer = bytes;
	}
}
