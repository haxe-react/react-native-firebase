package react_native_firebase.functions.firebasefunctionstypes;

/**
	An HttpsCallableOptions object that can be passed as the second argument to `firebase.functions().httpsCallable(name, HttpsCallableOptions)`.
**/
typedef HttpsCallableOptions = {
	/**
		The timeout property allows you to control how long the application will wait for the cloud function to respond in milliseconds.
		
		#### Example
		
		```js
		// The below will wait 7 seconds for a response from the cloud function before an error is thrown
		try {
		  const instance = firebase.functions().httpsCallable('order', { timeout: 7000 });
		  const response = await instance({
		    id: '12345',
		  });
		} catch (e) {
		  console.log(e);
		}
		```
	**/
	@:optional
	var timeout : Float;
};