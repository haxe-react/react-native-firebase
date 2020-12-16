package react.native.firebase;

/**
 * Usage: put some logs before potential crash to see some additional info;
 * Note: logs are preserved only in scope of crash
 */

@:jsRequire('@react-native-firebase/crashlytics', 'firebase.crashlytics()')
extern class Crashlytics {
	static function log(v:String):Void;
	static function crash():Void;
	static function recordError(e:js.lib.Error):Void;
	static function setAttribute(k:String,v:String):Void;
	static function setAttributes(k:haxe.DynamicAccess<String>):Void;
}