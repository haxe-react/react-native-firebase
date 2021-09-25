package react_native_firebase.messaging.firebasemessagingtypes;

/**
	An event that is received when a message fails to send.
	
	### Example
	
	```js
	firebase.messaging().onSendError(event => {
	   console.log(event.messageId);
	   console.log(event.error);
	});
**/
typedef SendErrorEvent = {
	/**
		The id of the message that failed to send
	**/
	var messageId : String;
	/**
		A native firebase error that indicates the failure reason.
	**/
	var error : react_native_firebase.app.reactnativefirebase.NativeFirebaseError;
};