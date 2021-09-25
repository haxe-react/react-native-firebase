package react_native_firebase.auth.firebaseauthtypes;

/**
	Holds the user metadata for the current {@link auth.User}.
	
	#### Example
	
	```js
	const user = firebase.auth().currentUser;
	console.log('User metadata: ', user.metadata);
	```
**/
typedef UserMetadata = {
	/**
		Returns the timestamp at which this account was created as dictated by the server clock
		as an ISO Date string.
	**/
	@:optional
	var creationTime : String;
	/**
		Returns the last signin timestamp as dictated by the server clock as an ISO Date string.
		This is only accurate up to a granularity of 2 minutes for consecutive sign-in attempts.
	**/
	@:optional
	var lastSignInTime : String;
};