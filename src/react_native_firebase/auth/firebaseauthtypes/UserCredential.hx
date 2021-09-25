package react_native_firebase.auth.firebaseauthtypes;

/**
	A structure containing a User, an AuthCredential, the operationType, and any additional user
	information that was returned from the identity provider. operationType could be 'signIn' for
	a sign-in operation, 'link' for a linking operation and 'reauthenticate' for a re-authentication operation.
	
	TODO @salakar; missing credential, operationType
**/
typedef UserCredential = {
	/**
		Any additional user information assigned to the user.
	**/
	@:optional
	var additionalUserInfo : AdditionalUserInfo;
	/**
		Returns the {@link auth.User} interface of this credential.
	**/
	var user : User;
};