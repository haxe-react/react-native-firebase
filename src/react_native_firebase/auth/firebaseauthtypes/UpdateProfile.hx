package react_native_firebase.auth.firebaseauthtypes;

/**
	Request used to update user profile information.
	
	#### Example
	
	```js
	const update = {
	   displayName: 'Alias',
	   photoURL: 'https://my-cdn.com/assets/user/123.png',
	};
	
	await firebase.auth().currentUser.updateProfile(update);
	```
**/
typedef UpdateProfile = {
	/**
		An optional display name for the user. Explicitly pass null to clear the displayName.
	**/
	@:optional
	var displayName : String;
	/**
		An optional photo URL for the user. Explicitly pass null to clear the photoURL.
	**/
	@:optional
	var photoURL : String;
};