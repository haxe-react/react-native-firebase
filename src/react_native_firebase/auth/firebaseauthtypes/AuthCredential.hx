package react_native_firebase.auth.firebaseauthtypes;

/**
	Interface that represents the credentials returned by an auth provider. Implementations specify the details
	about each auth provider's credential requirements.
	
	TODO Missing; signInMethod, toJSON, fromJSON
	
	#### Example
	
	```js
	const provider = firebase.auth.EmailAuthProvider;
	const authCredential = provider.credential('foo@bar.com', '123456');
	
	await firebase.auth().signInWithCredential(authCredential);
	```
**/
typedef AuthCredential = {
	/**
		The authentication provider ID for the credential. For example, 'facebook.com', or 'google.com'.
	**/
	var providerId : String;
	var token : String;
	var secret : String;
};