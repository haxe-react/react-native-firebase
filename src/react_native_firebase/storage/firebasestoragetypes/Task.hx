package react_native_firebase.storage.firebasestoragetypes;

/**
	Storage Task used for Uploading or Downloading files.
	
	#### Example 1
	
	Get a Upload Storage task to upload a string:
	
	```js
	const string = '{ "foo": 1 }';
	const task = firebase
	  .storage()
	  .ref('/foo/bar.json')
	  .putString(string);
	```
	
	#### Example 2
	
	Get a Download Storage task to download a file:
	
	```js
	const downloadTo = `${firebase.utils.FilePath.DOCUMENT_DIRECTORY}/bar.json`;
	
	const task = firebase
	  .storage()
	  .ref('/foo/bar.json')
	  .writeToFile(downloadTo);
	```
**/
typedef Task = {
	/**
		Initial state of Task.snapshot is `null`. Once uploading begins, it updates to a `TaskSnapshot` object.
	**/
	var snapshot : Null<TaskSnapshot>;
	/**
		Pause the current Download or Upload task.
		
		#### Example
		
		Pause a running task inside a state changed listener:
		
		```js
		task.on('state_changed', taskSnapshot => {
		   if (taskSnapshot.state === firebase.storage.TaskState.RUNNING) {
		     console.log('Pausing my task!');
		     task.pause();
		   }
		});
		```
	**/
	function pause():js.lib.Promise<Bool>;
	/**
		Resume the current Download or Upload task.
		
		#### Example
		
		Resume a previously paused task inside a state changed listener:
		
		```js
		task.on('state_changed', taskSnapshot => {
		   // ... pause me ...
		   if (taskSnapshot.state === firebase.storage.TaskState.PAUSED) {
		     console.log('Resuming my task!');
		     task.resume();
		   }
		});
		```
	**/
	function resume():js.lib.Promise<Bool>;
	/**
		Cancel the current Download or Upload task.
		
		
		#### Example
		
		Cancel a task inside a state changed listener:
		
		```js
		task.on('state_changed', taskSnapshot => {
		   console.log('Cancelling my task!');
		   task.cancel();
		});
		```
	**/
	function cancel():js.lib.Promise<Bool>;
	/**
		Task event handler called when state has changed on the task.
		
		#### Example
		
		```js
		const task = firebase
		  .storage()
		  .ref('/foo/bar.json')
		  .writeToFile(downloadTo);
		
		task.on('state_changed', (taskSnapshot) => {
		   console.log(taskSnapshot.state);
		});
		
		task.then(() => {]
		   console.log('Task complete');
		})
		.catch((error) => {
		   console.error(error.message);
		});
		```
	**/
	function on(event:String, ?nextOrObserver:ts.AnyOf2<TaskSnapshotObserver, (a:TaskSnapshot) -> Dynamic>, ?error:(a:react_native_firebase.app.reactnativefirebase.NativeFirebaseError) -> Dynamic, ?complete:() -> Void):() -> Void;
	function then(?onFulfilled:(a:TaskSnapshot) -> Dynamic, ?onRejected:(a:react_native_firebase.app.reactnativefirebase.NativeFirebaseError) -> Dynamic):js.lib.Promise<Dynamic>;
	@:native("catch")
	function catch_(onRejected:(a:react_native_firebase.app.reactnativefirebase.NativeFirebaseError) -> Dynamic):js.lib.Promise<Dynamic>;
};