package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	Set default config values by updating `defaultConfig` with an object & the properties you require as default.
	
	#### Example
	
	```js
	await firebase.remoteConfig().setDefaults({
	   experiment_enabled: false,
	});
	```
**/
typedef ConfigDefaults = { };