package react_native_firebase.installations.firebaseinstallationstypes;

/**
	The Firebase Installations service is available for the default app or a given app.
	
	#### Example 1
	
	Get the installations instance for the **default app**:
	
	```js
	const installationsForDefaultApp = firebase.installations();
	```
	
	#### Example 2
	
	Get the installations instance for a **secondary app**:
	˚
	```js
	const otherApp = firebase.app('otherApp');
	const installationsForOtherApp = firebase.installations(otherApp);
	```
**/
@:jsRequire("@react-native-firebase/installations", "FirebaseInstallationsTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Creates a Firebase Installation if there isn't one for the app and
		returns the Installation ID. The installation ID is a globally unique,
		stable, URL-safe base64 string identifier that uniquely identifies the app instance.
		NOTE: If the application already has an existing FirebaseInstanceID then the InstanceID identifier will be used.
	**/
	function getId():js.lib.Promise<String>;
	/**
		Retrieves (locally or from the server depending on forceRefresh value) a valid installation auth token.
		An existing token may be invalidated or expire, so it is recommended to fetch the installation auth token
		before any request to external servers (it will be refreshed automatically for firebase API calls).
		This method should be used with forceRefresh == YES when e.g. a request with the previously fetched
		installation auth token failed with “Not Authorized” error.
	**/
	function getToken(?forceRefresh:Bool):js.lib.Promise<String>;
	/**
		Deletes the Firebase Installation and all associated data from the Firebase backend.
		This call may cause Firebase Cloud Messaging, Firebase Remote Config, Firebase Predictions,
		or Firebase In-App Messaging to not function properly. Fetching a new installations ID should
		reset all of the dependent services to a stable state again. A network connection is required
		for the method to succeed. If it fails, the existing installation data remains untouched.
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}