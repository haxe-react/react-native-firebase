package react_native_firebase.crashlytics.firebasecrashlyticstypes;

/**
	The Firebase Crashlytics service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Crashlytics service for the default app:
	
	```js
	const defaultAppCrashlytics = firebase.crashlytics();
	```
**/
@:jsRequire("@react-native-firebase/crashlytics", "FirebaseCrashlyticsTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Whether Crashlytics reporting is enabled.
		
		#### Example
		
		```js
		const isEnabled = firebase.crashlytics().isCrashlyticsCollectionEnabled;
		```
	**/
	var isCrashlyticsCollectionEnabled : Bool;
	/**
		Determines whether there are any unsent crash reports cached on the device. The callback only executes
		if automatic data collection is disabled.
		
		#### Example
		
		```js
		async checkReports() {
		// returns boolean value
		  const unsentReports = await firebase.crashlytics().checkForUnsentReports();
		}
		
		checkReports();
		```
	**/
	function checkForUnsentReports():js.lib.Promise<Bool>;
	/**
		Deletes any unsent reports on the device. This method only applies if automatic data collection is
		disabled.
		
		#### Example
		
		```js
		firebase.crashlytics().deleteUnsentReports();
		```
	**/
	function deleteUnsentReports():js.lib.Promise<ts.Undefined>;
	/**
		Returns a boolean value indicating whether the app crashed during the previous execution.
		
		#### Example
		
		```js
		async didCrashPreviously() {
		// returns boolean value
		const didCrash = await firebase.crashlytics().didCrashOnPreviousExecution();
		}
		
		didCrashPreviously();
		```
	**/
	function didCrashOnPreviousExecution():js.lib.Promise<Bool>;
	/**
		Cause your app to crash for testing purposes. This is a native crash and will not contain a javascript stack trace.
		Note that crashes are intercepted by debuggers on iOS so no report will be seen under those conditions. Additionally
		if it is a debug build you will need to ensure your firebase.json is configured to enable crashlytics even in debug mode.
		
		#### Example
		
		```js
		firebase.crashlytics().crash();
		```
	**/
	function crash():Void;
	/**
		Log a message that will appear in any subsequent Crash or Non-fatal error reports.
		
		#### Example
		
		```js
		firebase.crashlytics().log('Testing a crash');
		firebase.crashlytics().crash();
		```
	**/
	function log(message:String):Void;
	/**
		Record a JavaScript Error.
		
		The JavaScript stack trace is converted into a mock native iOS or Android exception before submission.
		The line numbers in the stack trace (if available) will be relative to the javascript bundle built by your packager,
		after whatever transpilation or minimization steps happen. You will need to maintain sourcemaps to decode them if desired.
		
		#### Example
		
		```js
		firebase.crashlytics().recordError(
		  new Error('An error was caught')
		);
		```
	**/
	function recordError(error:js.lib.Error, ?jsErrorName:String):Void;
	/**
		Enqueues any unsent reports on the device to upload to Crashlytics. This method only applies if
		automatic data collection is disabled.
		
		#### Example
		
		```js
		firebase.crashlytics().sendUnsentReports();
		```
	**/
	function sendUnsentReports():Void;
	/**
		Specify a user identifier which will be visible in the Firebase Crashlytics console.
		
		It is recommended for privacy purposes that this value be a value that's meaningless to a third-party
		observer; such as an arbitrary string that ties an end-user to a record in your system e.g. a database record id.
		
		#### Example
		
		```js
		// Custom user id
		await firebase.crashlytics().setUserId('123456789');
		// Firebase auth uid
		await firebase.crashlytics().setUserId(
		  firebase.auth().currentUser.uid
		);
		```
	**/
	function setUserId(userId:String):js.lib.Promise<Dynamic>;
	/**
		Sets a string value to be associated with the given attribute name which will be visible in the Firebase Crashlytics console.
		
		#### Example
		
		```js
		await firebase.crashlytics().setAttribute('role', 'admin');
		```
	**/
	function setAttribute(name:String, value:String):js.lib.Promise<Dynamic>;
	/**
		Like `setAttribute` but for multiple attributes.
		
		#### Example
		
		```js
		await firebase.crashlytics().setAttributes({
		   role: 'admin',
		   followers: '13',
		});
		```
	**/
	function setAttributes(attributes:{ }):js.lib.Promise<Dynamic>;
	/**
		Enable/disable Crashlytics reporting.
		
		Use this for opt-in first user data collection flows combined with `firebase.json` settings to disable auto collection.
		
		#### Example
		
		```js
		// Disable crash reporting
		await firebase.crashlytics().setCrashlyticsCollectionEnabled(false);
		```
	**/
	function setCrashlyticsCollectionEnabled(enabled:Bool):js.lib.Promise<Dynamic>;
	static var prototype : Module;
}