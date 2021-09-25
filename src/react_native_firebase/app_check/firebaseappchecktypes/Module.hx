package react_native_firebase.app_check.firebaseappchecktypes;

/**
	The Firebase App Check service is available for the default app or a given app.
	
	#### Example 1
	
	Get the appCheck instance for the **default app**:
	
	```js
	const appCheckForDefaultApp = firebase.appCheck();
	```
	
	#### Example 2
	
	Get the appCheck instance for a **secondary app**:
	˚
	```js
	const otherApp = firebase.app('otherApp');
	const appCheckForOtherApp = firebase.appCheck(otherApp);
	```
**/
@:jsRequire("@react-native-firebase/app-check", "FirebaseAppCheckTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Activate App Check
		On iOS App Check is activated with DeviceCheck provider simply by including the module, using the token auto refresh default or
		the specific value (if configured) in firebase.json, but calling this does no harm.
		On Android you must call this and it will install the SafetyNet provider in release builds, the Debug provider if debuggable.
		On both platforms you may use this method to alter the token refresh setting after startup.
		On iOS if you want to set a specific AppCheckProviderFactory (for instance to FIRAppCheckDebugProviderFactory or
		FIRAppAttestProvider) you must manually do that in your AppDelegate.m prior to calling [FIRApp configure]
	**/
	function activate(siteKeyOrProvider:ts.AnyOf2<String, AppCheckProvider>, ?isTokenAutoRefreshEnabled:Bool):js.lib.Promise<ts.Undefined>;
	/**
		Alter the token auto refresh setting. By default it will take the value of automaticDataCollectionEnabled from Info.plist / AndroidManifest.xml
	**/
	function setTokenAutoRefreshEnabled(isTokenAutoRefreshEnabled:Bool):Void;
	/**
		Requests Firebase App Check token.
		This method should only be used if you need to authorize requests to a non-Firebase backend.
		Requests to Firebase backend are authorized automatically if configured.
	**/
	function getToken(?forceRefresh:Bool):js.lib.Promise<AppCheckTokenResult>;
	static var prototype : Module;
}