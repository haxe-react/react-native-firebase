package react_native_firebase.app.reactnativefirebase;

typedef FirebaseAppOptions = {
	/**
		The Google App ID that is used to uniquely identify an instance of an app.
	**/
	var appId : String;
	/**
		An API key used for authenticating requests from your app, e.g.
		"AIzaSyDdVgKwhZl0sTTTLZ7iTmt1r3N2cJLnaDk", used to identify your app to Google servers.
	**/
	@:optional
	var apiKey : String;
	/**
		The database root URL, e.g. "http://abc-xyz-123.firebaseio.com".
	**/
	@:optional
	var databaseURL : String;
	/**
		The Project ID from the Firebase console, for example "abc-xyz-123".
	**/
	var projectId : String;
	/**
		The tracking ID for Google Analytics, e.g. "UA-12345678-1", used to configure Google Analytics.
	**/
	@:optional
	var gaTrackingId : String;
	/**
		The Google Cloud Storage bucket name, e.g. "abc-xyz-123.storage.firebase.com".
	**/
	@:optional
	var storageBucket : String;
	/**
		The Project Number from the Google Developer's console, for example "012345678901", used to
		configure Google Cloud Messaging.
	**/
	@:optional
	var messagingSenderId : String;
	/**
		iOS only - The OAuth2 client ID for iOS application used to authenticate Google users, for example
		"12345.apps.googleusercontent.com", used for signing in with Google.
	**/
	@:optional
	var clientId : String;
	/**
		iOS only - The Android client ID used in Google AppInvite when an iOS app has its Android version, for
		example "12345.apps.googleusercontent.com".
	**/
	@:optional
	var androidClientId : String;
	/**
		iOS only - The URL scheme used to set up Durable Deep Link service.
	**/
	@:optional
	var deepLinkURLScheme : String;
};