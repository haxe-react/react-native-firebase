package react_native_firebase.auth.firebaseauthtypes;

/**
	Interface for module auth settings.
	
	#### Example
	
	```js
	const settings = firebase.auth().settings;
	console.log(settings.appVerificationDisabledForTesting);
	```
**/
typedef AuthSettings = {
	/**
		iOS only flag to disable app verification for the purpose of testing phone authentication. For this property to take effect, it needs to be set before rendering a reCAPTCHA app verifier. When this is disabled, a mock reCAPTCHA is rendered instead. This is useful for manual testing during development or for automated integration tests.
		
		> In order to use this feature, you will need to [whitelist your phone number](https://firebase.google.com/docs/auth/web/phone-auth#test-with-whitelisted-phone-numbers) via the Firebase Console.
	**/
	var appVerificationDisabledForTesting : Bool;
	/**
		Calling this method a second time will overwrite the previously passed parameters.
		Only one number can be configured at a given time.
		
		> The phone number and SMS code here must have been configured in the Firebase Console (Authentication > Sign In Method > Phone).
		
		#### Example
		
		```js
		await firebase.auth().settings.setAutoRetrievedSmsCodeForPhoneNumber('+4423456789', 'ABCDE');
		```
	**/
	function setAutoRetrievedSmsCodeForPhoneNumber(phoneNumber:String, smsCode:String):js.lib.Promise<Dynamic>;
};