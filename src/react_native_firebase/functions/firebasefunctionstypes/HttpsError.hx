package react_native_firebase.functions.firebasefunctionstypes;

/**
	An HttpsError wraps a single error from a function call.
	
	#### Example
	
	```js
	try {
	  await firebase.functions().httpsCallable('order')();
	} catch (httpsError) {
	   console.log('Message', httpsError.message);
	
	   // Check code
	   if (httpsError.code === firebase.functions.HttpsErrorCode.NOT_FOUND) {
	     console.error('Functions endpoint "order" not found');
	   }
	}
	```
**/
typedef HttpsError = {
	/**
		A standard error code that will be returned to the client. This also
		determines the HTTP status code of the response, as defined in code.proto.
		
		#### Example
		
		```js
		try {
		  await firebase.functions().httpsCallable('order')();
		} catch (httpsError) {
		   console.error(httpsError.code);
		}
		```
	**/
	final code : FunctionsErrorCode;
	/**
		Extra data to be converted to JSON and included in the error response.
		
		```js
		try {
		  await firebase.functions().httpsCallable('order')();
		} catch (httpsError) {
		   if (httpsError.details) {
		     console.error(httpsError.details);
		   }
		}
		```
	**/
	@:optional
	final details : Dynamic;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};