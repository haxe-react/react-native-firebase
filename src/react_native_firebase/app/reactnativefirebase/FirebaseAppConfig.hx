package react_native_firebase.app.reactnativefirebase;

typedef FirebaseAppConfig = {
	/**
		The Firebase App name, defaults to [DEFAULT] if none provided.
	**/
	@:optional
	var name : String;
	/**
		Default setting for data collection on startup that affects all Firebase module startup data collection settings,
		in the absence of module-specific overrides. This will start as false if you set "app_data_collection_default_enabled"
		to false in firebase.json and may be used in opt-in flows, for example a GDPR-compliant app.
		If configured false initially, set to true after obtaining consent, then enable module-specific settings as needed afterwards.
	**/
	@:optional
	var automaticDataCollectionEnabled : Bool;
	/**
		If set to true it indicates that Firebase should close database connections
		automatically when the app is in the background. Disabled by default.
	**/
	@:optional
	var automaticResourceManagement : Bool;
};