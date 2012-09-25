package hxods;

class Encoder {

	public static function encode( file : String, data : String ) {
		return haxe.io.Bytes.ofString(data);
	}

	public static function decode( data : haxe.io.Bytes ) : String {
		return data.toString();
	}


}
