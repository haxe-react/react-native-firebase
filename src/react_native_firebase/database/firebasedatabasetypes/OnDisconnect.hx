package react_native_firebase.database.firebasedatabasetypes;

/**
	The `onDisconnect` class allows you to write or clear data when your client disconnects from the Database server.
	These updates occur whether your client disconnects cleanly or not, so you can rely on them to clean up data
	even if a connection is dropped or a client crashes.
	
	The onDisconnect class is most commonly used to manage presence in applications where it is
	useful to detect how many clients are connected and when other clients disconnect.
	
	To avoid problems when a connection is dropped before the requests can be transferred to the Database
	server, these functions should be called before writing any data.
	
	Note that `onDisconnect` operations are only triggered once. If you want an operation to occur each time a
	disconnect occurs, you'll need to re-establish the `onDisconnect` operations each time you reconnect.
**/
typedef OnDisconnect = {
	/**
		Cancels all previously queued `onDisconnect()` set or update events for this location and all children.
		
		If a write has been queued for this location via a `set()` or `update()` at a parent location,
		the write at this location will be canceled, though writes to sibling locations will still occur.
		
		#### Example
		
		```js
		const ref = firebase.database().ref('onlineState');
		await ref.onDisconnect().set(false);
		// Sometime later...
		await ref.onDisconnect().cancel();
		```
	**/
	function cancel(?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Ensures the data at this location is deleted when the client is disconnected (due to closing the browser, navigating to a new page, or network issues).
	**/
	function remove(?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Ensures the data at this location is set to the specified value when the client is disconnected
		(due to closing the app, navigating to a new view, or network issues).
		
		`set()` is especially useful for implementing "presence" systems, where a value should be changed
		or cleared when a user disconnects so that they appear "offline" to other users.
		
		Note that `onDisconnect` operations are only triggered once. If you want an operation to occur each time a
		disconnect occurs, you'll need to re-establish the `onDisconnect` operations each time.
		
		#### Example
		
		```js
		var ref = firebase.database().ref('users/ada/status');
		await ref.onDisconnect().set('I disconnected!');
		```
	**/
	function set(value:Dynamic, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Ensures the data at this location is set to the specified value and priority when the client is disconnected (due to closing the browser, navigating to a new page, or network issues).
	**/
	function setWithPriority(value:Dynamic, priority:Null<ts.AnyOf2<String, Float>>, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Writes multiple values at this location when the client is disconnected (due to closing the browser, navigating to a new page, or network issues).
		
		The `values` argument contains multiple property-value pairs that will be written to the Database together.
		Each child property can either be a simple property (for example, "name") or a relative path (for example,
		"name/first") from the current location to the data to update.
		
		As opposed to the `set()` method, `update()` can be use to selectively update only the referenced
		properties at the current location (instead of replacing all the child properties at the current location).
		
		#### Example
		
		```js
		var ref = firebase.database().ref("users/ada");
		ref.update({
		   onlineState: true,
		   status: "I'm online."
		});
		ref.onDisconnect().update({
		   onlineState: false,
		   status: "I'm offline."
		});
		```
	**/
	function update(values:{ }, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
};