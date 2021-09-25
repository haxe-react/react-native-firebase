package react_native_firebase.app.reactnativefirebase;

typedef Module = {
	/**
		Create (and initialize) a FirebaseApp.
		
		Create (and initialize) a FirebaseApp.
	**/
	@:overload(function(options:FirebaseAppOptions, ?name:String):js.lib.Promise<FirebaseApp> { })
	function initializeApp(options:FirebaseAppOptions, ?config:FirebaseAppConfig):js.lib.Promise<FirebaseApp>;
	/**
		Retrieve an instance of a FirebaseApp.
	**/
	function app(?name:String):FirebaseApp;
	/**
		Set the log level across all modules. Only applies to iOS currently, has no effect on Android.
		Should be one of 'error', 'warn', 'info', or 'debug'.
		Logs messages at the configured level or lower (less verbose / more important).
		Note that if an app is running from AppStore, it will never log above info even if
		level is set to a higher (more verbose) setting.
		Note that iOS is missing firebase-js-sdk log levels 'verbose' and 'silent'.
		'verbose' if used will map to 'debug', 'silent' has no valid mapping and will return an error if used.
	**/
	function setLogLevel(logLevel:LogLevelString):Void;
	/**
		A (read-only) array of all the initialized Apps.
	**/
	var apps : Array<FirebaseApp>;
	/**
		The current React Native Firebase version.
	**/
	final SDK_VERSION : String;
	/**
		Utils provides a collection of utilities to aid in using Firebase
		and related services inside React Native, e.g. Test Lab helpers
		and Google Play Services version helpers.
	**/
	var utils : FirebaseModuleWithStatics<react_native_firebase.app.utils.Module, react_native_firebase.app.utils.Statics>;
	var storage : FirebaseModuleWithStaticsAndApp<react_native_firebase.storage.firebasestoragetypes.Module, react_native_firebase.storage.firebasestoragetypes.Statics>;
};