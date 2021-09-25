package react_native_firebase.auth.firebaseauthtypes;

typedef NativeFirebaseAuthError = {
	var userInfo : {
		/**
			When trying to sign in or link with an AuthCredential which was already associated with an account,
			you might receive an updated credential (depending of provider) which you can use to recover from the error.
		**/
		var authCredential : Null<AuthCredential>;
	};
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