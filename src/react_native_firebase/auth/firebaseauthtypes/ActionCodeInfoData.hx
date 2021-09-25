package react_native_firebase.auth.firebaseauthtypes;

/**
	Additional data returned from a {@link auth#checkActionCode} call.
	For the PASSWORD_RESET, VERIFY_EMAIL, and RECOVER_EMAIL actions, this object contains an email field with the address the email was sent to.
	For the RECOVER_EMAIL action, which allows a user to undo an email address change, this object also contains a fromEmail field with the user account's new email address. After the action completes, the user's email address will revert to the value in the email field from the value in fromEmail field.
	
	#### Example
	
	```js
	const actionCodeInfo = await firebase.auth().checkActionCode('ABCD');
	Data
	console.log('Action code email: ', actionCodeInfo.data.email);
	console.log('Action code from email: ', actionCodeInfo.data.fromEmail);
	```
**/
typedef ActionCodeInfoData = {
	/**
		This signifies the email before the call was made.
	**/
	@:optional
	var email : String;
	/**
		This signifies the current email associated with the account, which may have changed as a result of the {@link auth#checkActionCode} call performed.
	**/
	@:optional
	var fromEmail : String;
};