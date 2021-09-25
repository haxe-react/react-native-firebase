package react_native_firebase.storage.firebasestoragetypes;

/**
	Cloud Storage statics.
	
	#### Example
	
	```js
	firebase.storage;
	```
**/
typedef Statics = {
	/**
		Possible string formats used for uploading via `StorageReference.putString()`
		
		#### Example
		
		```js
		firebase.storage.StringFormat;
		```
	**/
	var StringFormat : StringFormat;
	/**
		A collection of properties that indicates the current tasks state.
		
		#### Example
		
		```js
		firebase.storage.TaskState;
		```
	**/
	var TaskState : TaskState;
	/**
		An event to subscribe to that is triggered on a Upload or Download task.
		
		#### Example
		
		```js
		firebase.storage.TaskEvent;
		```
	**/
	var TaskEvent : TaskEvent;
};