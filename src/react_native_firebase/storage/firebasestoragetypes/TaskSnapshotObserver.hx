package react_native_firebase.storage.firebasestoragetypes;

/**
	The snapshot observer returned from a {@link storage.Task#on} listener.
	
	#### Example
	
	```js
	const ref = firebase.storage().ref(...);
	const task = ref.put(...)
	
	task.on('state_changed', {
	   next(taskSnapshot) {
	     console.log(taskSnapshot.state);
	   },
	   error(error) {
	     console.error(error.message);
	   },
	   complete() {
	     console.log('Task complete');
	   },
	})
	```
**/
typedef TaskSnapshotObserver = {
	/**
		Called when the task state changes.
	**/
	dynamic function next(taskSnapshot:TaskSnapshot):Void;
	/**
		Called when the task errors.
	**/
	dynamic function error(error:react_native_firebase.app.reactnativefirebase.NativeFirebaseError):Void;
	/**
		Called when the task has completed successfully.
	**/
	dynamic function complete():Void;
};