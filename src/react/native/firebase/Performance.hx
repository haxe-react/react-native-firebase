package react.native.firebase;

@:jsRequire('@react-native-firebase/perf', 'firebase.perf()')
extern class Performance {
	static function startTrace(id:String):Promise<Trace>;
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
