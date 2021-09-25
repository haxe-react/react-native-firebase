package react_native_firebase.app_check.firebaseappchecktypes;

/**
	The token returned from an `AppCheckProvider`.
**/
typedef AppCheckToken = {
	/**
		The token string in JWT format.
	**/
	final token : String;
	/**
		The local timestamp after which the token will expire.
	**/
	final expireTimeMillis : Float;
};