package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.FirebaseApp;

/**
 * Usage: put some logs before potential crash to see some additional info;
 * Note: logs are preserved only in scope of crash
 */

@:jsRequire('@react-native-firebase/crashlytics', 'default')
extern class Crashlytics {
	@:selfCall
	static function inst(?app:FirebaseApp):Crashlytics;
	
	function log(v:String):Void;
	function crash():Void;
	function recordError(e:js.lib.Error):Void;
	function setAttribute(k:String,v:String):Void;
	function setAttributes(k:Dynamic<String>):Void;
}