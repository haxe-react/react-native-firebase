package react_native_firebase.storage.firebasestoragetypes;

/**
	A collection of properties that indicates the current tasks state.
	
	An event subscription is created via `StorageTask.on()`.
	
	```js
	firebase.storage.TaskEvent;
	```
**/
typedef TaskState = {
	/**
		Task has been cancelled by the user.
	**/
	var CANCELLED : String;
	/**
		An Error occurred, see TaskSnapshot.error for details.
	**/
	var ERROR : String;
	/**
		Task has been paused. Resume the task via `StorageTask.resume()`.
	**/
	var PAUSED : String;
	/**
		Task is running. Pause the task via `StorageTask.pause()`
	**/
	var RUNNING : String;
	/**
		Task has completed successfully.
	**/
	var SUCCESS : String;
};