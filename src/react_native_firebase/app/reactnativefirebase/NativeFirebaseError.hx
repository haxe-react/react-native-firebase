package react_native_firebase.app.reactnativefirebase;

typedef NativeFirebaseError = {
	/**
		Firebase error code, e.g. `auth/invalid-email`
	**/
	final code : String;
	/**
		Firebase error message
	**/
	final message : String;
	/**
		The firebase module namespace that this error originated from, e.g. 'analytics'
	**/
	final namespace : String;
	/**
		The native sdks returned error code, different per platform
	**/
	final nativeErrorCode : ts.AnyOf2<String, Float>;
	/**
		The native sdks returned error message, different per platform
	**/
	final nativeErrorMessage : String;
	var name : String;
	@:optional
	var stack : String;
};