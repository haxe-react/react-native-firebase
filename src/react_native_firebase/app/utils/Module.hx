package react_native_firebase.app.utils;

/**
	The React Native Firebase Utils service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Utils service for the default app:
	
	```js
	const defaultAppUtils = firebase.utils();
	```
**/
@:jsRequire("@react-native-firebase/app", "Utils.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns true if this app is running inside a Firebase Test Lab environment.
		
		#### Example
		
		```js
		const isRunningInTestLab = await firebase.utils().isRunningInTestLab;
		```
	**/
	var isRunningInTestLab : Bool;
	/**
		Returns PlayServicesAvailability properties
		
		#### Example
		
		```js
		const PlayServicesAvailability = await firebase.utils().playServicesAvailability;
		```
	**/
	var playServicesAvailability : PlayServicesAvailability;
	/**
		Returns PlayServicesAvailability properties
		
		#### Example
		
		```js
		const PlayServicesAvailability = await firebase.utils().getPlayServicesStatus();
		```
	**/
	function getPlayServicesStatus():js.lib.Promise<PlayServicesAvailability>;
	/**
		A prompt appears on the device to ask the user to update play services
		
		#### Example
		
		```js
		await firebase.utils().promptForPlayServices();
		```
	**/
	function promptForPlayServices():js.lib.Promise<ts.Undefined>;
	/**
		Attempts to make Google Play services available on this device
		
		#### Example
		
		```js
		await firebase.utils().makePlayServicesAvailable();
		```
	**/
	function makePlayServicesAvailable():js.lib.Promise<ts.Undefined>;
	/**
		Resolves an error by starting any intents requiring user interaction.
		
		#### Example
		
		```js
		await firebase.utils().resolutionForPlayServices();
		```
	**/
	function resolutionForPlayServices():js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}