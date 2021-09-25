package react_native_firebase.auth.firebaseauthtypes;

/**
	A custom error in the event verifying a phone number failed.
	
	#### Example
	
	```js
	firebase.auth().verifyPhoneNumber('+4423456789')
	  .on('state_changed', (phoneAuthSnapshot) => {
	    console.log('Snapshot state: ', phoneAuthSnapshot.state);
	  }, (phoneAuthError) => {
	    console.error('Error: ', phoneAuthError.message);
	  });
	```
**/
typedef PhoneAuthError = {
	/**
		The code the verification failed with.
	**/
	var code : Null<String>;
	/**
		The verification ID which failed.
	**/
	var verificationId : String;
	/**
		JavaScript error message.
	**/
	var message : Null<String>;
	/**
		JavaScript error stack trace.
	**/
	var stack : Null<String>;
};