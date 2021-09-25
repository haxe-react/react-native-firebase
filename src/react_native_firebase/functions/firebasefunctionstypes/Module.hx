package react_native_firebase.functions.firebasefunctionstypes;

/**
	The Firebase Cloud Functions service is available for the default app, a given app or a specified region.
	
	> The default functions region for all apps is `us-central1`.
	
	#### Example 1
	
	Get the functions instance for the **default app**:
	
	```js
	const functionsForDefaultApp = firebase.functions();
	```
	
	#### Example 2
	
	Get the functions instance for a **secondary app**:
	
	```js
	const otherApp = firebase.app('otherApp');
	const functionsForOtherApp = firebase.functions(otherApp);
	```
	
	#### Example 3
	
	Get the functions instance for a **specific functions region**:
	
	```js
	const defaultApp = firebase.app();
	const functionsForRegion = defaultApp.functions('europe-west1');
	
	const otherApp = firebase.app('otherApp');
	const functionsForOtherAppRegion = otherApp.functions('europe-west1');
	```
**/
@:jsRequire("@react-native-firebase/functions", "FirebaseFunctionsTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Gets an `HttpsCallable` instance that refers to the function with the given
		name.
		
		#### Example
		
		```js
		const instance = firebase.functions().httpsCallable('order');
		
		try {
		  const response = await instance({
		    id: '12345',
		  });
		} catch (e) {
		  console.error(e);
		}
		```
	**/
	function httpsCallable(name:String, ?options:HttpsCallableOptions):HttpsCallable;
	/**
		Changes this instance to point to a Cloud Functions emulator running locally.
		
		See https://firebase.google.com/docs/functions/local-emulator
		
		#### Example
		
		```js
		if (__DEV__) {
		   firebase.functions().useFunctionsEmulator('http://localhost:5001');
		}
		```
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address.
	**/
	function useFunctionsEmulator(origin:String):Void;
	static var prototype : Module;
}