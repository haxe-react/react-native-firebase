package react_native_firebase.auth.firebaseauthtypes;

/**
	iOS specific options which can be attached to the {@link auth.ActionCodeSettings} object
	to be sent with requests such as {@link auth.User#sendEmailVerification}.
	
	#### Example
	
	```js
	await firebase.auth().currentUser.sendEmailVerification({
	  iOS: {
	    bundleId: '123456',
	  },
	});
	```
**/
typedef ActionCodeSettingsIos = {
	/**
		Sets the iOS bundle ID. This will try to open the link in an iOS app if it is installed. The iOS app needs to be registered in the Console.
	**/
	@:optional
	var bundleId : String;
};