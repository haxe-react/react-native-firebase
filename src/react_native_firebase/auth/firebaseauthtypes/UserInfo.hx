package react_native_firebase.auth.firebaseauthtypes;

/**
	Represents a collection of standard profile information for a user. Can be used to expose
	profile information returned by an identity provider, such as Google Sign-In or Facebook Login.
	
	TODO @salakar: isEmailVerified
	
	#### Example
	
	```js
	const user = firebase.auth().currentUser;
	
	user.providerData.forEach((userInfo) => {
	   console.log('User info for provider: ', userInfo);
	});
	```
**/
typedef UserInfo = {
	/**
		Returns the user's display name, if available.
	**/
	@:optional
	var displayName : String;
	/**
		Returns the email address corresponding to the user's account in the specified provider, if available.
	**/
	@:optional
	var email : String;
	/**
		The phone number normalized based on the E.164 standard (e.g. +16505550101) for the current user. This is null if the user has no phone credential linked to the account.
	**/
	@:optional
	var phoneNumber : String;
	/**
		Returns a url to the user's profile picture, if available.
	**/
	@:optional
	var photoURL : String;
	/**
		Returns the unique identifier of the provider type that this instance corresponds to.
	**/
	var providerId : String;
	/**
		Returns a string representing the multi-tenant tenant id. This is null if the user is not associated with a tenant.
	**/
	@:optional
	var tenantId : String;
	/**
		Returns a user identifier as specified by the authentication provider.
	**/
	var uid : String;
};