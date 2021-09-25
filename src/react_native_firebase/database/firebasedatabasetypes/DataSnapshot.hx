package react_native_firebase.database.firebasedatabasetypes;

/**
	A `DataSnapshot` contains data from a Database location.
	
	Any time you read data from the Database, you receive the data as a `DataSnapshot`. A `DataSnapshot`
	is passed to the event callbacks you attach with `on()` or `once()`. You can extract the contents
	of the snapshot as a JavaScript object by calling the val() method. Alternatively, you can traverse
	into the snapshot by calling `child()` to return child snapshots (which you could then call `val()` on).
**/
typedef DataSnapshot = {
	/**
		The key (last part of the path) of the location of this `DataSnapshot`.
		
		The last token in a Database location is considered its key. For example, "ada" is the key
		for the /users/ada/ node. Accessing the key on any `DataSnapshot` will return the key for the
		location that generated it. However, accessing the key on the root URL of a Database will return `null`.
	**/
	var key : Null<String>;
	/**
		The Reference for the location that generated this `DataSnapshot`.
	**/
	var ref : Reference;
	/**
		Gets another `DataSnapshot` for the location at the specified relative path.
		
		Passing a relative path to the `child()` method of a DataSnapshot returns another `DataSnapshot`
		for the location at the specified relative path. The relative path can either be a simple child
		name (for example, "ada") or a deeper, slash-separated path (for example, "ada/name/first").
		If the child location has no data, an empty `DataSnapshot` (that is, a `DataSnapshot` whose value
		is `null`) is returned.
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users/ada').once('value');
		snapshot.child('name').val(); // {first:"Ada",last:"Lovelace"}
		snapshot.child('name/first').val(); // "Ada"
		snapshot.child('name/foo').val(); // null
		```
	**/
	function child(path:String):DataSnapshot;
	/**
		Returns true if this `DataSnapshot` contains any data. It is slightly more efficient than using snapshot.val() !== null.
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users/ada').once('value');
		snapshot.exists(); // true
		snapshot.child('name/foo').exists(); // false
		```
	**/
	function exists():Bool;
	/**
		Exports the entire contents of the DataSnapshot as a JavaScript object.
		
		The `exportVal()` method is similar to val(), except priority information is included (if available),
		making it suitable for backing up your data.
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users/ada').once('value');
		const data = snapshot.exportVal();
		console.log(data['.value']); // { ... }
		console.log(data['.priority']); // null
		```
	**/
	function exportVal():Dynamic;
	/**
		Enumerates the top-level children in the `DataSnapshot`.
		
		Because of the way JavaScript objects work, the ordering of data in the JavaScript object
		returned by `val()` is not guaranteed to match the ordering on the server nor the ordering
		of `child_added` events. That is where `forEach()` comes in handy. It guarantees the children of
		a DataSnapshot will be iterated in their query order.
		
		If no explicit `orderBy*()` method is used, results are returned ordered by key (unless priorities are used, in which case, results are returned by priority).
	**/
	function forEach(action:(child:DataSnapshot) -> Null<Bool>):Bool;
	/**
		Gets the priority value of the data in this DataSnapshot.
	**/
	function getPriority():Null<ts.AnyOf2<String, Float>>;
	/**
		Returns true if the specified child path has (non-null) data.
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users/ada').once('value');
		console.log(snapshot.hasChild('name')); // true
		console.log(snapshot.hasChild('foo')); // false
		```
	**/
	function hasChild(path:String):Bool;
	/**
		Returns whether or not the `DataSnapshot` has any non-null child properties.
		
		You can use `hasChildren()` to determine if a `DataSnapshot` has any children. If it does, you
		can enumerate them using `forEach()`. If it doesn't, then either this snapshot contains a primitive
		value (which can be retrieved with `val()`) or it is empty (in which case, `val()` will return null).
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users').once('value');
		console.log(snapshot.hasChildren()); // true
		```
	**/
	function hasChildren():Bool;
	/**
		Returns the number of child properties of this DataSnapshot.
	**/
	function numChildren():Float;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Null<Dynamic>;
	/**
		Extracts a JavaScript value from a `DataSnapshot`.
		
		Depending on the data in a DataSnapshot, the `val()` method may return a scalar type (string,
		number, or boolean), an array, or an object. It may also return null, indicating that the
		`DataSnapshot` is empty (contains no data).
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users/ada/last').once('value');
		snapshot.val(); // "Lovelace"
		```
	**/
	function val():Dynamic;
};