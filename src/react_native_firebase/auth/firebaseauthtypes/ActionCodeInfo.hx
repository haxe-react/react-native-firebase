package react_native_firebase.auth.firebaseauthtypes;

/**
	The interface returned from a {@link auth#checkActionCode} call.
	
	#### Example
	
	```js
	const actionCodeInfo = await firebase.auth().checkActionCode('ABCD');
	console.log('Action code operation: ', actionCodeInfo.operation);
	```
**/
typedef ActionCodeInfo = {
	/**
		The data associated with the action code.
	**/
	var data : ActionCodeInfoData;
	/**
		The operation from where the action originated.
	**/
	var operation : String;
};