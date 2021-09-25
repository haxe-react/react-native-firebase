package react_native_firebase.storage.firebasestoragetypes;

/**
	An event to subscribe to that is triggered on a Upload or Download task.
	
	Event subscription is created via `StorageTask.on()`.
	
	```js
	firebase.storage.TaskEvent;
	```
**/
typedef TaskEvent = {
	/**
		An event that indicates that the tasks state has changed.
		
		```js
		firebase.storage.TaskEvent.STATE_CHANGED;
		```
	**/
	var STATE_CHANGED : String;
};