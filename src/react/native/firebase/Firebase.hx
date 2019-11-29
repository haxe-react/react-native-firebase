package react.native.firebase;
import js.Promise;

@:jsRequire('@react-native-firebase/app', 'default')
extern class Firebase {
	static function initializeApp(options:FirebaseAppOptions, ?config:FirebaseAppConfig):Dynamic;
}

typedef FirebaseAppOptions = Dynamic;
typedef FirebaseAppConfig = Dynamic;

/**
 * Usage: put some logs before potential crash to see some additional info; 
 * Note: logs are preserved only in scope of crash
 */

@:jsRequire('@react-native-firebase/crashlytics', 'firebase.crashlytics()')
extern class Crashlytics {
	static function log(v:String):Void;
	static function crash():Void;
}

@:jsRequire('@react-native-firebase/perf', 'firebase.perf()')
extern class Performance {
	static function startTrace(id:String):js.Promise<Trace>;
}
extern class Trace {
	function start():Promise<Dynamic>;
	function stop():Promise<Dynamic>;
	function putAttribute(attribute:String, value:String):Void;
	function putMetric(metricName:String, value:Float):Void;
	function getAttribute(attribute:String):String;
	function getMetric(metricName:String):Float;
	function getMetrics():Map<String,Float>;
}

@:jsRequire('@react-native-firebase/storage', 'firebase.storage()')
extern class Storage {

}