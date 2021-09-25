package react_native_firebase.auth.firebaseauthtypes;

/**
	Android specific options which can be attached to the {@link auth.ActionCodeSettings} object
	to be sent with requests such as {@link auth.User#sendEmailVerification}.
	
	#### Example
	
	```js
	await firebase.auth().currentUser.sendEmailVerification({
	  android: {
	    installApp: true,
	    packageName: 'com.awesome.app',
	  },
	});
	```
**/
typedef ActionCodeSettingsAndroid = {
	/**
		Sets the Android package name. This will try to open the link in an android app if it is installed.
	**/
	var packageName : String;
	/**
		If installApp is passed, it specifies whether to install the Android app if the device supports it and the app is not already installed. If this field is provided without a packageName, an error is thrown explaining that the packageName must be provided in conjunction with this field.
	**/
	@:optional
	var installApp : Bool;
	/**
		If minimumVersion is specified, and an older version of the app is installed, the user is taken to the Play Store to upgrade the app. The Android app needs to be registered in the Console.
	**/
	@:optional
	var minimumVersion : String;
};