package react_native_firebase.auth.firebaseauthtypes;

/**
	Interface that represents an auth provider. Implemented by other providers.
**/
typedef AuthProvider = {
	/**
		The provider ID of the provider.
	**/
	var PROVIDER_ID : String;
	/**
		Creates a new `AuthCredential`.
	**/
	dynamic function credential(token:Null<String>, ?secret:String):AuthCredential;
};