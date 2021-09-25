package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	Firebase Remote RemoteConfig statics.
	
	```js
	firebase.config;
	```
**/
typedef Statics = {
	/**
		A pseudo-enum for usage with ConfigValue.source to determine the value source.
		
		#### Example
		
		```js
		firebase.remoteConfig.ValueSource;
		```
	**/
	var ValueSource : ValueSource;
	/**
		A pseudo-enum for usage with `firebase.remoteConfig().lastFetchStatus` to determine the last fetch status.
		
		#### Example
		
		```js
		firebase.remoteConfig.LastFetchStatus;
		```
	**/
	var LastFetchStatus : LastFetchStatus;
};