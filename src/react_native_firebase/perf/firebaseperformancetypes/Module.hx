package react_native_firebase.perf.firebaseperformancetypes;

/**
	The Firebase Performance Monitoring service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Performance Monitoring service for the default app:
	
	```js
	const defaultAppPerf = firebase.perf();
	```
**/
@:jsRequire("@react-native-firebase/perf", "FirebasePerformanceTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Determines whether performance monitoring is enabled or disabled.
		
		#### Example
		
		```js
		const isEnabled = firebase.perf().isPerformanceCollectionEnabled;
		console.log('Performance collection enabled: ', isEnabled);
		```
	**/
	var isPerformanceCollectionEnabled : Bool;
	/**
		Enables or disables performance monitoring.
		
		#### Example
		
		```js
		// Disable performance monitoring collection
		await firebase.perf().setPerformanceCollectionEnabled(false);
		```
	**/
	function setPerformanceCollectionEnabled(enabled:Bool):js.lib.Promise<Dynamic>;
	/**
		Creates a Trace instance with the given identifier.
		
		#### Example
		
		```js
		const trace = firebase.perf().newTrace('user_profile');
		await trace.start();
		```
	**/
	function newTrace(identifier:String):Trace;
	/**
		Creates a Trace instance with the given identifier and immediately starts it.
		
		#### Example
		
		```js
		const trace = await firebase.perf().startTrace('user_profile');
		```
	**/
	function startTrace(identifier:String):js.lib.Promise<Trace>;
	/**
		Creates a HttpMetric instance for collecting network performance data for a single request/response
		
		#### Example
		
		```js
		const metric = firebase.perf().newHttpMetric('https://api.com/user/1', 'GET');
		await metric.start();
		```
	**/
	function newHttpMetric(url:String, httpMethod:HttpMethod):HttpMetric;
	static var prototype : Module;
}