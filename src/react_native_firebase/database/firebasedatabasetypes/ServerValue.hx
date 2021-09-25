package react_native_firebase.database.firebasedatabasetypes;

/**
	The ServerValue interface provides access to Firebase server values.
**/
typedef ServerValue = {
	/**
		A placeholder value for auto-populating the current timestamp (time since the Unix epoch,
		in milliseconds) as determined by the Firebase servers.
		
		#### Example
		
		```js
		firebase.database().ref('sessions').push({
		   startedAt: firebase.database.ServerValue.TIMESTAMP,
		});
		```
	**/
	var TIMESTAMP : Dynamic;
	/**
		Returns a placeholder value that can be used to atomically increment the current database value by the provided delta.
		
		#### Example
		
		```js
		firebase.database().ref('posts/123').update({
		   likes: firebase.database.ServerValue.increment(1),
		});
		```
	**/
	function increment(delta:Float):Dynamic;
};