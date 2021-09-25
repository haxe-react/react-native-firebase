package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	A pseudo-enum for usage with ConfigSettingsRead.lastFetchStatus to determine the last fetch status.
	
	#### Example
	
	```js
	firebase.remoteConfig.LastFetchStatus;
	```
**/
typedef LastFetchStatus = {
	/**
		A value indicating that the last fetch was successful.
		
		```js
		firebase.remoteConfig.LastFetchStatus.SUCCESS;
		```
	**/
	var SUCCESS : String;
	/**
		A value indicating that the last fetch failed.
		
		```js
		firebase.remoteConfig.LastFetchStatus.FAILURE;
		```
	**/
	var FAILURE : String;
	/**
		A value indicating that the last fetch was throttled.
		
		This usually occurs when calling fetch often with a low expiration duration.
		
		```js
		firebase.remoteConfig.LastFetchStatus.THROTTLED;
		```
	**/
	var THROTTLED : String;
	/**
		A value indicating that no fetches have occurred yet.
		
		This usually means you've not called fetch yet.
		
		```js
		firebase.remoteConfig.LastFetchStatus.NO_FETCH_YET;
		```
	**/
	var NO_FETCH_YET : String;
};