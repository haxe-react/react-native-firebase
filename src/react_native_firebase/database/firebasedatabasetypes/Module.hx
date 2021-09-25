package react_native_firebase.database.firebasedatabasetypes;

/**
	The Firebase Database service is available for the default app or a given app.
	
	#### Example 1
	
	Get the database instance for the **default app**:
	
	```js
	const databaseForDefaultApp = firebase.database();
	```
	
	#### Example 2
	
	Get the database instance for a **secondary app**:
	
	```js
	const otherApp = firebase.app('otherApp');
	const databaseForOtherApp = firebase.database(otherApp);
	```
**/
@:jsRequire("@react-native-firebase/database", "FirebaseDatabaseTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns the current Firebase Database server time as a JavaScript Date object.
	**/
	function getServerTime():js.lib.Date;
	/**
		Returns a `Reference` representing the location in the Database corresponding to the provided path.
		If no path is provided, the Reference will point to the root of the Database.
		
		#### Example
		
		```js
		// Get a reference to the root of the Database
		const rootRef = firebase.database().ref();
		
		// Get a reference to the /users/ada node
		const adaRef = firebase.database().ref("users/ada");
		```
	**/
	function ref(?path:String):Reference;
	/**
		Returns a `Reference` representing the location in the Database corresponding to the provided Firebase URL.
		
		An exception is thrown if the URL is not a valid Firebase Database URL or it has a different domain than the current Database instance.
		
		Note that all query parameters (orderBy, limitToLast, etc.) are ignored and are not applied to the returned Reference.
		
		#### Example
		
		```js
		// Get a reference to the root of the Database
		const rootRef = firebase.database().ref("https://<DATABASE_NAME>.firebaseio.com");
		```
	**/
	function refFromURL(url:String):Reference;
	/**
		Reconnects to the server and synchronizes the offline Database state with the server state.
		
		This method should be used after disabling the active connection with `goOffline()`. Once
		reconnected, the client will transmit the proper data and fire the appropriate events so that
		your client "catches up" automatically.
		
		#### Example
		
		```js
		await firebase.database().goOnline();
		```
	**/
	function goOnline():js.lib.Promise<ts.Undefined>;
	/**
		Disconnects from the server (all Database operations will be completed offline).
		
		The client automatically maintains a persistent connection to the Database server, which
		will remain active indefinitely and reconnect when disconnected. However, the `goOffline()` and
		`goOnline()` methods may be used to control the client connection in cases where a persistent
		connection is undesirable.
		
		While offline, the client will no longer receive data updates from the Database. However,
		all Database operations performed locally will continue to immediately fire events, allowing
		your application to continue behaving normally. Additionally, each operation performed locally
		will automatically be queued and retried upon reconnection to the Database server.
		
		To reconnect to the Database and begin receiving remote events, see `goOnline()`.
		
		#### Example
		
		```js
		await firebase.database().goOnline();
		```
	**/
	function goOffline():js.lib.Promise<ts.Undefined>;
	/**
		Sets whether persistence is enabled for all database calls for the current app
		instance.
		
		> Ensure this is called before any database calls are performed, otherwise
		persistence will only come into effect when the app is next started.
		
		#### Example
		
		```js
		firebase.database().setPersistenceEnabled(true);
		
		async function bootstrap() {
		   // Bootstrapping application
		   const snapshot = await firebase.database().ref('settings').once('value');
		}
		```
	**/
	function setPersistenceEnabled(enabled:Bool):js.lib.Promise<ts.Undefined>;
	/**
		Sets the native logging level for the database module. By default,
		only warnings and errors are logged natively. Setting this to true will log all
		database events.
		
		> Ensure logging is disabled for production apps, as excessive logging can cause performance issues.
		
		#### Example
		
		```js
		// Set debug logging if developing
		if (__DEV__) {
		   firebase.database().setLoggingEnabled(true);
		}
		```
	**/
	function setLoggingEnabled(enabled:Bool):js.lib.Promise<ts.Undefined>;
	/**
		By default Firebase Database will use up to 10MB of disk space to cache data. If the cache grows beyond this size,
		Firebase Database will start removing data that hasn't been recently used. If you find that your application
		caches too little or too much data, call this method to change the cache size. This method must be called before
		creating your first Database reference and only needs to be called once per application.
		
		Note that the specified cache size is only an approximation and the size on disk may temporarily exceed it at times.
		Cache sizes smaller than 1 MB or greater than 100 MB are not supported.
		
		#### Example
		
		```js
		firebase.database().setPersistenceEnabled(true);
		firebase.database().setPersistenceCacheSizeBytes(2000000); // 2MB
		
		async function bootstrap() {
		   // Bootstrapping application
		   const snapshot = await firebase.database().ref('settings').once('value');
		}
		```
	**/
	function setPersistenceCacheSizeBytes(bytes:Float):js.lib.Promise<ts.Undefined>;
	/**
		Modify this Database instance to communicate with the Firebase Database emulator.
		This must be called synchronously immediately following the first call to firebase.database().
		Do not use with production credentials as emulator traffic is not encrypted.
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address.
	**/
	function useEmulator(host:String, port:Float):Void;
	static var prototype : Module;
}