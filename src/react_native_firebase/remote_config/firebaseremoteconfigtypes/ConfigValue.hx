package react_native_firebase.remote_config.firebaseremoteconfigtypes;

/**
	An Interface representing a RemoteConfig value.
**/
typedef ConfigValue = {
	/**
		Where the value was retrieved from.
		
		- `remote`:  If the value was retrieved from the server.
		- `default`: If the value was set as a default value.
		- `static`: If no value was found and a static default value was returned instead.
		
		See the `ValueSource` statics definition.
		
		#### Example
		
		```js
		const configValue = firebase.remoteConfig().getValue('beta_enabled');
		console.log('Value source: ', configValue.getSource());
		```
	**/
	function getSource():String;
	/**
		The returned value.
		
		#### Example
		
		```js
		const configValue = firebase.remoteConfig().getValue('dev_mode');
		console.log('Boolean: ', configValue.asBoolean());
		```
	**/
	function asBoolean():Bool;
	/**
		The returned value.
		
		#### Example
		
		```js
		const configValue = firebase.remoteConfig().getValue('user_count');
		console.log('Count: ', configValue.asNumber());
		```
	**/
	function asNumber():Float;
	/**
		The returned value.
		
		#### Example
		
		```js
		const configValue = firebase.remoteConfig().getValue('username');
		console.log('Name: ', configValue.asString());
		```
	**/
	function asString():String;
};