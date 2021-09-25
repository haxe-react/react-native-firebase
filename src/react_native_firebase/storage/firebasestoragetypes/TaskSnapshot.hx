package react_native_firebase.storage.firebasestoragetypes;

/**
	A TaskSnapshot provides information about a storage tasks state.
	
	#### Example 1
	
	```js
	firebase
	   .storage()
	   .ref('/foo/bar.json')
	   .putString(JSON.stringify({ foo: 'bar' }))
	   .then((taskSnapshot) => {
	     if (taskSnapshot.state === firebase.storage.TaskState.SUCCESS) {
	       console.log('Total bytes uploaded: ', taskSnapshot.totalBytes);
	     }
	   });
	```
	
	#### Example 2
	
	```js
	const task = firebase
	   .storage()
	   .ref('/foo/bar.json')
	   .putString(JSON.stringify({ foo: 'bar' }));
	
	task.on('state_changed', taskSnapshot => {
	   if (taskSnapshot.state === firebase.storage.TaskState.PAUSED) {
	     console.log('Resuming my task!');
	     task.resume();
	   }
	});
	```
**/
typedef TaskSnapshot = {
	/**
		The number of bytes currently transferred.
	**/
	var bytesTransferred : Float;
	/**
		The metadata of the tasks via a {@link storage.FullMetadata} interface.
	**/
	var metadata : FullMetadata;
	/**
		The {@link storage.Reference} of the task.
	**/
	var ref : Reference;
	/**
		The current state of the task snapshot.
	**/
	var state : String;
	/**
		The parent {@link storage.Task} of this snapshot.
	**/
	var task : Task;
	/**
		The total amount of bytes for this task.
	**/
	var totalBytes : Float;
	/**
		If the {@link storage.TaskSnapshot#state} is `error`, returns a JavaScript error of the
		current task snapshot.
	**/
	@:optional
	var error : react_native_firebase.app.reactnativefirebase.NativeFirebaseError;
};