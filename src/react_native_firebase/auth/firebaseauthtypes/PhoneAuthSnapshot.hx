package react_native_firebase.auth.firebaseauthtypes;

/**
	A snapshot interface of the current phone auth state.
	
	#### Example
	
	```js
	firebase.auth().verifyPhoneNumber('+4423456789')
	  .on('state_changed', (phoneAuthSnapshot) => {
	    console.log('Snapshot state: ', phoneAuthSnapshot.state);
	  });
	```
**/
typedef PhoneAuthSnapshot = {
	/**
		The current phone auth verification state.
		
		- `sent`: On iOS, this is the final event received. Once sent, show a visible input box asking the user to enter the verification code.
		- `timeout`: Auto verification has timed out. Show a visible input box asking the user to enter the verification code.
		- `verified`: The verification code has automatically been verified by the Android device. The snapshot contains the verification ID & code to create a credential.
		- `error`: An error occurred. Handle or allow the promise to reject.
	**/
	var state : String;
	/**
		The verification ID to build a `PhoneAuthProvider` credential.
	**/
	var verificationId : String;
	/**
		The verification code. Will only be available if auto verification has taken place.
	**/
	var code : Null<String>;
	/**
		A native JavaScript error if an error occurs.
	**/
	var error : Null<react_native_firebase.app.reactnativefirebase.NativeFirebaseError>;
};