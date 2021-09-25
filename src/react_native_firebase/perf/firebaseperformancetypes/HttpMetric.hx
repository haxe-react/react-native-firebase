package react_native_firebase.perf.firebaseperformancetypes;

/**
	Metric used to collect data for network requests/responses. A new instance must be used for every request/response.
**/
@:jsRequire("@react-native-firebase/perf", "FirebasePerformanceTypes.HttpMetric") extern class HttpMetric {
	function new();
	/**
		Returns the value of an attribute. Returns null if it does not exist.
		
		#### Example
		
		```js
		const attribute = metric.getAttribute('user_role');
		```
	**/
	function getAttribute(attribute:String):Null<String>;
	/**
		Returns an object of all the currently added attributes.
		
		#### Example
		
		```js
		const attributes = metric.getAttributes();
		
		attributes.forEach(($) => {
		   console.log($);
		});
		```
	**/
	function getAttributes():{ };
	/**
		Sets a String value for the specified attribute. Updates the value of the attribute if it already exists.
		The maximum number of attributes that can be added is 5.
		
		#### Example
		
		```js
		metric.putAttribute('user_role', 'admin');
		```
	**/
	function putAttribute(attribute:String, value:String):Void;
	/**
		Removes an already added attribute. Does nothing if attribute does not exist.
		
		#### Example
		
		```js
		metric.removeAttribute('user_role');
		```
	**/
	function removeAttribute(attribute:String):Void;
	/**
		Sets the httpResponse code of the request.
		
		#### Example
		
		```js
		const response = await fetch(url);
		metric.setHttpResponseCode(response.status);
		```
		> This is required for every request, if you do not provide this your metric will not be captured.
	**/
	function setHttpResponseCode(code:Null<Float>):Void;
	/**
		Sets the size of the request payload.
		
		#### Example
		
		```js
		const response = await fetch(url);
		metric.setRequestPayloadSize(response.headers.get('Content-Type'));
		```
	**/
	function setRequestPayloadSize(bytes:Null<Float>):Void;
	/**
		Sets the size of the response payload.
		
		#### Example
		
		```js
		const response = await fetch(url);
		metric.setResponsePayloadSize(response.headers.get('Content-Length'));
		```
	**/
	function setResponsePayloadSize(bytes:Null<Float>):Void;
	/**
		Content type of the response e.g. `text/html` or `application/json`.
		
		#### Example
		
		```js
		const response = await fetch(url);
		metric.setResponsePayloadSize(response.headers.get('Content-Type'));
		```
	**/
	function setResponseContentType(contentType:Null<String>):Void;
	/**
		Marks the start time of the request. Does nothing if already started.
		
		#### Example
		
		```js
		const metric = firebase.perf().newHttpMetric('https://api.com/login', 'POST');
		await metric.start();
		```
	**/
	function start():js.lib.Promise<Dynamic>;
	/**
		Marks the end time of the response and queues the network request metric on the device for transmission. Does nothing if already stopped.
		
		#### Example
		
		```js
		const metric = firebase.perf().newHttpMetric('https://api.com/login', 'POST');
		await metric.start();
		metric.putAttribute('user_role', 'admin');
		await metric.stop();
		```
	**/
	function stop():js.lib.Promise<Dynamic>;
	static var prototype : HttpMetric;
}