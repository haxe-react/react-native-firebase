package react_native_firebase.app.utils;

typedef PlayServicesAvailability = {
	/**
		Returns a numeric status code. Please refer to Android documentation
		for further information:
		https://developers.google.com/android/reference/com/google/android/gms/common/ConnectionResult
		
		```js
		firebase.utils().playServicesAvailability.status;
		```
	**/
	var status : PlayServicesAvailabilityStatusCodes;
	/**
		Returns a boolean indicating whether Play Store is available on the device
		
		```js
		firebase.utils().playServicesAvailability.isAvailable;
		```
	**/
	var isAvailable : Bool;
	/**
		If Play Services is not available on the device, hasResolution indicates
		whether it is possible to do something about it (e.g. install Play Services).
		
		```js
		firebase.utils().playServicesAvailability.hasResolution;
		```
	**/
	var hasResolution : Null<Bool>;
	/**
		If an error was received, this indicates whether the error is resolvable
		
		```js
		firebase.utils().playServicesAvailability.isUserResolvableError;
		```
	**/
	var isUserResolvableError : Null<Bool>;
	/**
		A human readable error string
		
		```js
		firebase.utils().playServicesAvailability.error;
		```
	**/
	var error : Null<String>;
};