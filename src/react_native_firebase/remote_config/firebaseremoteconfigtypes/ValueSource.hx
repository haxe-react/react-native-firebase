package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	A pseudo-enum for usage with ConfigValue.source to determine the value source.
	
	#### Example
	
	```js
	firebase.remoteConfig.ValueSource;
	```
**/
typedef ValueSource = {
	/**
		If the value was retrieved from the server.
		
		```js
		firebase.remoteConfig.ValueSource.REMOTE;
		```
	**/
	var REMOTE : String;
	/**
		If the value was set as a default value.
		
		```js
		firebase.remoteConfig.ValueSource.DEFAULT;
		```
	**/
	var DEFAULT : String;
	/**
		If no value was found and a static default value was returned instead.
		
		```js
		firebase.remoteConfig.ValueSource.STATIC;
		```
	**/
	var STATIC : String;
};