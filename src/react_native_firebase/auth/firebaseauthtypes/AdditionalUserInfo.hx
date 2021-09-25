package react_native_firebase.auth.firebaseauthtypes;

/**
	A structure containing additional user information from a federated identity provider via {@link auth.UserCredential}.
	
	#### Example
	
	```js
	const userCredential = await firebase.auth().signInAnonymously();
	console.log('Additional user info: ', userCredential.additionalUserInfo);
	```
**/
typedef AdditionalUserInfo = {
	/**
		Returns whether the user is new or existing.
	**/
	var isNewUser : Bool;
	/**
		Returns an Object containing IDP-specific user data if the provider is one of Facebook,
		GitHub, Google, Twitter, Microsoft, or Yahoo.
	**/
	@:optional
	var profile : { };
	/**
		Returns the provider ID for specifying which provider the information in `profile` is for.
	**/
	var providerId : String;
	/**
		Returns the username if the provider is GitHub or Twitter.
	**/
	@:optional
	var username : String;
};