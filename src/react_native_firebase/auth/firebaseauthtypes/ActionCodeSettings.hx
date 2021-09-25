package react_native_firebase.auth.firebaseauthtypes;

/**
	Options to be sent with requests such as {@link auth.User#sendEmailVerification}.
	
	#### Example
	
	```js
	await firebase.auth().currentUser.sendEmailVerification({
	  handleCodeInApp: true,
	  url: 'app/email-verification',
	});
	```
**/
typedef ActionCodeSettings = {
	/**
		Android specific settings.
	**/
	@:optional
	var android : ActionCodeSettingsAndroid;
	/**
		Whether the email action link will be opened in a mobile app or a web link first. The default is false. When set to true, the action code link will be be sent as a Universal Link or Android App Link and will be opened by the app if installed. In the false case, the code will be sent to the web widget first and then on continue will redirect to the app if installed.
	**/
	@:optional
	var handleCodeInApp : Bool;
	/**
		iOS specific settings.
	**/
	@:optional
	var iOS : ActionCodeSettingsIos;
	/**
		Sets the dynamic link domain (or subdomain) to use for the current link if it is to be opened using Firebase Dynamic Links. As multiple dynamic link domains can be configured per project, this field provides the ability to explicitly choose one. If none is provided, the first domain is used by default.
	**/
	@:optional
	var dynamicLinkDomain : String;
	/**
		This URL represents the state/Continue URL in the form of a universal link. This URL can should be constructed as a universal link that would either directly open the app where the action code would be handled or continue to the app after the action code is handled by Firebase.
	**/
	var url : String;
};