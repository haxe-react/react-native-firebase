package react_native_firebase.functions.firebasefunctionstypes;

/**
	An HttpsCallable is a reference to a "callable" http trigger in
	Google Cloud Functions.
	
	#### Example
	
	```js
	// Create a HttpsCallable instance
	const instance = firebase.functions().httpsCallable('order');
	
	try {
	  const response = await instance({
	    id: '12345',
	  });
	} catch (e) {
	  console.error(e);
	}
	```
**/
typedef HttpsCallable = ts.AnyOf2<() -> js.lib.Promise<HttpsCallableResult>, (data:Dynamic) -> js.lib.Promise<HttpsCallableResult>>;