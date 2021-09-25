package react_native_firebase.storage.firebasestoragetypes;

/**
	The Cloud Storage service is available for the default app, a given app or a specific storage bucket.
	
	#### Example 1
	
	Get the storage instance for the **default app**:
	
	```js
	const storageForDefaultApp = firebase.storage();
	```
	
	#### Example 2
	
	Get the storage instance for a **secondary app**:
	
	```js
	const otherApp = firebase.app('otherApp');
	const storageForOtherApp = firebase.storage(otherApp);
	```
	
	#### Example 3
	
	Get the storage instance for a **specific storage bucket**:
	
	```js
	const defaultApp = firebase.app();
	const storageForBucket = defaultApp.storage('gs://another-bucket-url');
	
	const otherApp = firebase.app('otherApp');
	const storageForOtherAppBucket = otherApp.storage('gs://another-bucket-url');
	```
**/
@:jsRequire("@react-native-firebase/storage", "FirebaseStorageTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns the current maximum time in milliseconds to retry an upload if a failure occurs.
		
		#### Example
		
		```js
		const uploadRetryTime = firebase.storage().maxUploadRetryTime;
		```
	**/
	var maxUploadRetryTime : Float;
	/**
		Sets the maximum time in milliseconds to retry an upload if a failure occurs.
		
		#### Example
		
		```js
		await firebase.storage().setMaxUploadRetryTime(25000);
		```
	**/
	function setMaxUploadRetryTime(time:Float):js.lib.Promise<ts.Undefined>;
	/**
		Returns the current maximum time in milliseconds to retry a download if a failure occurs.
		
		#### Example
		
		```js
		const downloadRetryTime = firebase.storage().maxUploadRetryTime;
		```
	**/
	var maxDownloadRetryTime : Float;
	/**
		Sets the maximum time in milliseconds to retry a download if a failure occurs.
		
		#### Example
		
		```js
		await firebase.storage().setMaxDownloadRetryTime(25000);
		```
	**/
	function setMaxDownloadRetryTime(time:Float):js.lib.Promise<ts.Undefined>;
	/**
		Returns the current maximum time in milliseconds to retry operations other than upload and download if a failure occurs.
		
		#### Example
		
		```js
		const maxOperationRetryTime = firebase.storage().maxOperationRetryTime;
		```
	**/
	var maxOperationRetryTime : Float;
	/**
		Sets the maximum time in milliseconds to retry operations other than upload and download if a failure occurs.
		
		#### Example
		
		```js
		await firebase.storage().setMaxOperationRetryTime(5000);
		```
	**/
	function setMaxOperationRetryTime(time:Float):js.lib.Promise<ts.Undefined>;
	/**
		Returns a new {@link storage.Reference} instance.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('cats.gif');
		```
	**/
	function ref(?path:String):Reference;
	/**
		Returns a new {@link storage.Reference} instance from a storage bucket URL.
		
		#### Example
		
		```js
		const gsUrl = 'gs://react-native-firebase-testing/cats.gif';
		const httpUrl = 'https://firebasestorage.googleapis.com/v0/b/react-native-firebase-testing.appspot.com/o/cats.gif';
		
		const refFromGsUrl = firebase.storage().refFromURL(gsUrl);
		// or
		const refFromHttpUrl = firebase.storage().refFromURL(httpUrl);
		```
	**/
	function refFromURL(url:String):Reference;
	/**
		Modify this Storage instance to communicate with the Firebase Storage emulator.
		This must be called synchronously immediately following the first call to firebase.storage().
		Do not use with production credentials as emulator traffic is not encrypted.
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address.
	**/
	function useEmulator(host:String, port:Float):Void;
	static var prototype : Module;
}