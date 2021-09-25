package react_native_firebase.auth.firebaseauthtypes;

/**
	The listener function returned from a {@link auth#verifyPhoneNumber} call.
**/
typedef PhoneAuthListener = {
	/**
		The phone auth state listener. See {@link auth.PhoneAuthState} for different event state types.
		
		#### Example
		
		```js
		firebase.auth().verifyPhoneNumber('+4423456789')
		  .on('state_changed', (phoneAuthSnapshot) => {
		    console.log('State: ', phoneAuthSnapshot.state);
		  }, (error) => {
		    console.error(error);
		  }, (phoneAuthSnapshot) => {
		    console.log('Success');
		  });
		```
	**/
	function on(event:String, observer:(snapshot:PhoneAuthSnapshot) -> Void, ?errorCb:(error:PhoneAuthError) -> Void, ?successCb:(snapshot:PhoneAuthSnapshot) -> Void):PhoneAuthListener;
	/**
		A promise handler called once the `on` listener flow has succeeded or rejected.
		
		#### Example
		
		```js
		firebase.auth().verifyPhoneNumber('+4423456789')
		  .on('state_changed', (phoneAuthSnapshot) => {
		    if (phoneAuthSnapshot.state === firebase.auth.PhoneAuthState.CODE_SENT) {
		      return Promise.resolve();
		    } else {
		      return Promise.reject(
		        new Error('Code not sent!')
		      );
		    }
		  })
		  .then((phoneAuthSnapshot) => {
		    console.log(phoneAuthSnapshot.state);
		  }, (error) => {
		    console.error(error.message);
		  });
		```
	**/
	function then(?onFulfilled:(a:PhoneAuthSnapshot) -> Dynamic, ?onRejected:(a:react_native_firebase.app.reactnativefirebase.NativeFirebaseError) -> Dynamic):js.lib.Promise<Dynamic>;
	/**
		A promise handler called once the `on` listener flow has rejected.
		
		#### Example
		
		```js
		firebase.auth().verifyPhoneNumber('+4423456789')
		  .on('state_changed', (phoneAuthSnapshot) => {
		    return Promise.reject(
		      new Error('Code not sent!')
		    );
		  })
		  .catch((error) => {
		    console.error(error.message);
		  });
		```
		
		> Used when no `onRejected` handler is passed to {@link auth.PhoneAuthListener#then}.
	**/
	@:native("catch")
	function catch_(onRejected:(a:react_native_firebase.app.reactnativefirebase.NativeFirebaseError) -> Dynamic):js.lib.Promise<Dynamic>;
};