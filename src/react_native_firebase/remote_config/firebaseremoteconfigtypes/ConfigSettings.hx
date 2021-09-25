package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	An Interface representing settable config settings.
	
	#### Example
	
	The example below shows how to set a time limit to the length of time the request for remote config values
	
	```js
	await firebase.remoteConfig().setConfigSettings({
	    fetchTimeoutMillis: 6000,
	});
	```
**/
typedef ConfigSettings = {
	/**
		Indicates the default value in milliseconds to set for the minimum interval that needs to elapse
		before a fetch request can again be made to the Remote Config server. Defaults to 43200000 (Twelve hours).
	**/
	@:optional
	var minimumFetchIntervalMillis : Float;
	/**
		Indicates the default value in milliseconds to abandon a pending fetch request made to the Remote Config server. Defaults to 60000 (One minute).
	**/
	@:optional
	var fetchTimeMillis : Float;
};