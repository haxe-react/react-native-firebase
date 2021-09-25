package react_native_firebase.app_distribution.firebaseappdistributiontypes;

/**
	The Firebase AppDistribution service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the AppDistribution service for the default app:
	
	```js
	const defaultAppAppDistribution = firebase.appDistribution();
	```
**/
@:jsRequire("@react-native-firebase/app-distribution", "FirebaseAppDistributionTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns true if the App Distribution tester is signed in.
		If not an iOS device, it always rejects, as neither false nor true seem like a sensible default.
	**/
	function isTesterSignedIn():js.lib.Promise<Bool>;
	/**
		Sign-in the App Distribution tester
		If not an iOS device, it always rejects, as no defaults seem sensible.
	**/
	function signInTester():js.lib.Promise<ts.Undefined>;
	/**
		Check to see whether a new distribution is available
		If not an iOS device, it always rejects, as no default response seems sensible.
	**/
	function checkForUpdate():js.lib.Promise<AppDistributionRelease>;
	/**
		Sign out App Distribution tester
		If not an iOS device, it always rejects, as no default response seems sensible.
	**/
	function signOutTester():js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}