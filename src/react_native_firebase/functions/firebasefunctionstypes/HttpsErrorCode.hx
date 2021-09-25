package react_native_firebase.functions.firebasefunctionstypes;

/**
	The HttpsErrorCode interface provides access to all FunctionsErrorCode
	type aliases.
	
	#### Example
	
	```js
	try {
	  await firebase.functions().httpsCallable('order')();
	} catch (httpsError) {
	  switch(httpsError.code) {
	    case firebase.functions.HttpsErrorCode.NOT_FOUND:
	      console.error('Functions endpoint not found');
	      break;
	    case firebase.functions.HttpsErrorCode.CANCELLED:
	      console.error('The operation was cancelled');
	      break;
	    default:
	      console.error('An error occurred');
	      break;
	  }
	}
	```
**/
typedef HttpsErrorCode = {
	var OK : String;
	var CANCELLED : String;
	var UNKNOWN : String;
	var INVALID_ARGUMENT : String;
	var DEADLINE_EXCEEDED : String;
	var NOT_FOUND : String;
	var ALREADY_EXISTS : String;
	var PERMISSION_DENIED : String;
	var UNAUTHENTICATED : String;
	var RESOURCE_EXHAUSTED : String;
	var FAILED_PRECONDITION : String;
	var ABORTED : String;
	var OUT_OF_RANGE : String;
	var UNIMPLEMENTED : String;
	var INTERNAL : String;
	var UNAVAILABLE : String;
	var DATA_LOSS : String;
};