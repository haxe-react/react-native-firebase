package react_native_firebase.auth.firebaseauthtypes;

typedef PhoneAuthState = {
	/**
		The timeout specified in {@link auth#verifyPhoneNumber} has expired.
	**/
	var CODE_SENT : String;
	/**
		SMS message with verification code sent to phone number.
	**/
	var AUTO_VERIFY_TIMEOUT : String;
	/**
		Phone number auto-verification succeeded.
	**/
	var AUTO_VERIFIED : String;
	/**
		Phone number verification failed with an error.
	**/
	var ERROR : String;
};