package react_native_firebase.perf.firebaseperformancetypes;

/**
	Trace allows you to time the beginning to end of a certain action in your app with additional metric values and attributes.
**/
@:jsRequire("@react-native-firebase/perf", "FirebasePerformanceTypes.Trace") extern class Trace {
	function new();
	/**
		Returns the value of an attribute. Returns null if it does not exist.
		
		#### Example
		
		```js
		const attribute = trace.getAttribute('userId');
		```
	**/
	function getAttribute(attribute:String):Null<String>;
	/**
		Sets a String value for the specified attribute. Updates the value of the attribute if it already exists.
		The maximum number of attributes that can be added is 5.
		
		#### Example
		
		```js
		trace.putAttribute('userId', '123456789');
		```
	**/
	function putAttribute(attribute:String, value:String):Void;
	/**
		Gets the value of the metric with the given name in the current trace. If the metric
		doesn't exist, it will not be created and a 0 is returned.
		
		#### Example
		
		```js
		const metric = trace.getMetric('hits');
		```
	**/
	function getMetric(metricName:String):Float;
	/**
		Returns an object of all the currently added metrics and their number values.
		
		#### Example
		
		```js
		const metrics = trace.getMetrics();
		
		metrics.forEach(($) => {
		   console.log($);
		});
		```
	**/
	function getMetrics():Dynamic<Float>;
	/**
		Sets the value of the named metric with the provided number.
		
		If a metric with the given name exists it will be overwritten.
		If a metric with the given name doesn't exist, a new one will be created.
		
		#### Example
		
		```js
		trace.putMetric('hits', 1);
		```
	**/
	function putMetric(metricName:String, value:Float):Void;
	/**
		Increments the named metric by the `incrementBy` value.
		
		If a metric with the given name doesn't exist, a new one will be created starting with the value of `incrementBy`.
		
		```js
		trace.incrementMetric('hits', 1);
		```
	**/
	function incrementMetric(metricName:String, incrementBy:Float):Void;
	/**
		Removes a metric by name if it exists.
		
		#### Example
		
		```js
		trace.removeMetric('hits');
		```
	**/
	function removeMetric(metricName:String):Void;
	/**
		Marks the start time of the trace. Does nothing if already started.
		
		#### Example
		
		```js
		const trace = firebase.perf().newTrace('example');
		await trace.start();
		```
	**/
	function start():js.lib.Promise<Dynamic>;
	/**
		Marks the end time of the trace and queues the metric on the device for transmission. Does nothing if already stopped.
		
		* #### Example
		
		```js
		const trace = firebase.perf().newTrace('example');
		await trace.start();
		trace.putMetric('hits', 1);
		await trace.stop();
		```
	**/
	function stop():js.lib.Promise<Dynamic>;
	static var prototype : Trace;
}