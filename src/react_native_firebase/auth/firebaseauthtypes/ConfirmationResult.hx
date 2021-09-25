package react_native_firebase.auth.firebaseauthtypes;

/**
	A result from a {@link auth#signInWithPhoneNumber} call.
	
	#### Example
	
	```js
	// Force a new message to be sent
	const result = await firebase.auth().signInWithPhoneNumber('#4423456789');
	const user = await result.confirm('12345');
	```
**/
typedef ConfirmationResult = {
	/**
		The phone number authentication operation's verification ID. This can be used along with
		the verification code to initialize a phone auth credential.
	**/
	var verificationId : Null<String>;
	/**
		Finishes the sign in flow. Validates a code that was sent to the users device.
	**/
	function confirm(verificationCode:String):js.lib.Promise<Null<UserCredential>>;
};