package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	The Firebase Remote RemoteConfig service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Remote RemoteConfig service for the default app:
	
	```js
	const defaultAppRemoteConfig = firebase.remoteConfig();
	```
**/
@:jsRequire("@react-native-firebase/remote-config", "FirebaseRemoteConfigTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		The number of milliseconds since the last Remote RemoteConfig fetch was performed.
	**/
	var fetchTimeMillis : Float;
	/**
		The status of the latest Remote RemoteConfig fetch action.
		
		See the `LastFetchStatus` statics definition.
	**/
	var lastFetchStatus : String;
	/**
		Provides an object which provides the properties `minimumFetchIntervalMillis` & `fetchTimeMillis` if they have been set
		using setConfigSettings({ fetchTimeMillis: number, minimumFetchIntervalMillis: number }). A description of the properties
		can be found above
	**/
	var settings : {
		var fetchTimeMillis : Float;
		var minimumFetchIntervalMillis : Float;
	};
	/**
		Set the Remote RemoteConfig settings, currently able to set `fetchTimeMillis` & `minimumFetchIntervalMillis`
		
		#### Example
		
		```js
		await firebase.remoteConfig().setConfigSettings({
		   minimumFetchIntervalMillis: 30000,
		});
		```
	**/
	function setConfigSettings(configSettings:ConfigSettings):js.lib.Promise<ts.Undefined>;
	/**
		Sets default values for the app to use when accessing values.
		Any data fetched and activated will override any default values. Any values in the defaults but not on Firebase will be untouched.
		
		#### Example
		
		```js
		await firebase.remoteConfig().setDefaults({
		   experiment_enabled: false,
		});
		```
	**/
	function setDefaults(defaults:ConfigDefaults):js.lib.Promise<Dynamic>;
	/**
		Sets the default values from a resource file.
		On iOS this is a plist file and on Android this is an XML defaultsMap file.
		
		```js
		// put in either your iOS or Android directory without the file extension included (.plist or .xml)
		  await firebase.remoteConfig().setDefaultsFromResource('config_resource');
		
		// resource values will now be loaded in with your other config values
		const config = firebase.remoteConfig().getAll();
		```
	**/
	function setDefaultsFromResource(resourceName:String):js.lib.Promise<Dynamic>;
	/**
		Moves fetched data to the apps active config.
		Resolves with a boolean value true if new local values were activated
		
		#### Example
		
		```js
		// Fetch values
		await firebase.remoteConfig().fetch();
		const activated = await firebase.remoteConfig().activate();
		
		if (activated) {
		  console.log('Fetched values successfully activated.');
		} else {
		   console.log('Fetched values were already activated.');
		}
		```
	**/
	function activate():js.lib.Promise<Bool>;
	/**
		Ensures the last activated config are available to the getters.
		
		#### Example
		
		```js
		await firebase.remoteConfig().ensureInitialized();
		// get remote config values
		```
	**/
	function ensureInitialized():js.lib.Promise<ts.Undefined>;
	/**
		Fetches the remote config data from Firebase, as defined in the dashboard. If duration is defined (seconds), data will be locally cached for this duration.
		
		#### Example
		
		```js
		// Fetch and cache for 5 minutes
		await firebase.remoteConfig().fetch(300);
		```
	**/
	function fetch(?expirationDurationSeconds:Float):js.lib.Promise<ts.Undefined>;
	/**
		Fetches the remote config data from Firebase, as defined in the dashboard.
		Once fetching is complete this method immediately calls activate and returns a boolean value true if new values were activated
		
		#### Example
		
		```js
		// Fetch, cache for 5 minutes and activate
		const fetchedRemotely = await firebase.remoteConfig().fetchAndActivate();
		
		if (fetchedRemotely) {
		   console.log('New configs were retrieved from the backend and activated.');
		} else {
		   console.log('No new configs were fetched from the backend, and the local configs were already activated');
		}
		```
	**/
	function fetchAndActivate():js.lib.Promise<Bool>;
	/**
		Returns all available config values.
		
		#### Example
		
		```js
		const values = firebase.remoteConfig().getAll();
		
		Object.entries(values).forEach(($) => {
		   const [key, entry] = $;
		   console.log('Key: ', key);
		   console.log('Source: ', entry.getSource());
		   console.log('Value: ', entry.asString());
		});
		```
	**/
	function getAll():ConfigValues;
	/**
		Gets a ConfigValue by key.
		
		#### Example
		
		```js
		const configValue = firebase.remoteConfig().getValue('experiment');
		console.log('Source: ', configValue.getSource());
		console.log('Value: ', configValue.asString());
		```
	**/
	function getValue(key:String):ConfigValue;
	/**
		Gets a config property using the key and converts to a boolean value
		
		#### Example
		
		```js
		// true or false depending on truthy or falsy nature of value
		const configValue = firebase.remoteConfig().getBoolean('experiment');
		```
	**/
	function getBoolean(key:String):Bool;
	/**
		Gets a config property using the key and converts to a string value
		
		#### Example
		
		```js
		// string value of 'experiment' property
		const configValue = firebase.remoteConfig().getString('experiment');
		```
	**/
	function getString(key:String):String;
	/**
		Gets a config property using the key and converts to a number value. It
		will be 0 if the value is not a number.
		
		#### Example
		
		```js
		// number value of 'experiment' property
		const configValue = firebase.remoteConfig().getNumber('experiment');
		```
	**/
	function getNumber(key:String):Float;
	/**
		Deletes all activated, fetched and defaults configs and resets all Firebase Remote Config settings.
	**/
	function reset():js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}