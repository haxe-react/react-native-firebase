package react_native_firebase.database.firebasedatabasetypes;

/**
	A Reference represents a specific location in your Database and can be used for reading or
	writing data to that Database location.
	
	You can reference the root or child location in your Database by calling `firebase.database().ref()`
	or `firebase.database().ref("child/path")`.
**/
typedef Reference = {
	/**
		The parent location of a Reference. The parent of a root Reference is `null`.
		
		#### Example
		
		```js
		firebase.database().ref().parent; // null
		firebase.database().ref('users/dave').parent; // 'users' reference
		```
	**/
	var parent : Null<Reference>;
	/**
		The root Reference of the Database.
		
		#### Example
		
		```js
		firebase.database().ref().root; // '/' reference path
		firebase.database().ref('users/ada').root; // '/' reference
		```
	**/
	var root : Reference;
	/**
		Gets a Reference for the location at the specified relative path.
		
		The relative path can either be a simple child name (for example, "ada") or a deeper
		slash-separated path (for example, "ada/name/first").
		
		#### Example
		
		```js
		const usersRef = firebase.database().ref('users');
		const adaRef = usersRef.child('ada/name/first'); // childRef path is 'users/ada/name/first'
		```
	**/
	function child(path:String):Reference;
	/**
		The last part of the Reference's path.
		For example, "ada" is the key for https://<DATABASE_NAME>.firebaseio.com/users/ada.
		The key of a root Reference is null.
	**/
	var key : Null<String>;
	/**
		Writes data to this Database location.
		
		This will overwrite any data at this location and all child locations.
		
		The effect of the write will be visible immediately, and the corresponding events
		("value", "child_added", etc.) will be triggered. Synchronization of the data to the
		Firebase servers will also be started, and the returned Promise will resolve when
		complete. If provided, the `onComplete` callback will be called asynchronously after
		synchronization has finished.
		
		Passing `null` for the new value is equivalent to calling `remove();` namely, all data at
		this location and all child locations will be deleted.
		
		`set()` will remove any priority stored at this location, so if priority is meant to be
		preserved, you need to use `setWithPriority()` instead.
		
		Note that modifying data with set() will cancel any pending transactions at that location,
		so extreme care should be taken if mixing set() and transaction() to modify the same data.
		
		A single set() will generate a single "value" event at the location where the set() was performed.
		
		#### Example - Setting values
		
		```js
		const ref = firebase.database().ref('users');
		
		// Set a single node value
		await ref.child('ada/name/first').set('Ada');
		await ref.child('ada/name/last').set('Lovelace');
		
		// Set an object value in a single call
		await ref.child('ada/name').set({
		   first: 'Ada',
		   last: 'Lovelace',
		});
		```
		
		#### Example - On complete listener
		
		```js
		const ref = firebase.database().ref('users');
		
		await ref.child('ada/first/name').set('Ada', (error) => {
		   if (error) console.error(error);
		});
		```
	**/
	function set(value:Dynamic, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Writes multiple values to the Database at once.
		
		The `values` argument contains multiple property-value pairs that will be written to the Database
		together. Each child property can either be a simple property (for example, "name") or a
		relative path (for example, "name/first") from the current location to the data to update.
		
		As opposed to the `set()` method, `update()` can be use to selectively update only the referenced
		properties at the current location (instead of replacing all the child properties at the
		current location).
		
		The effect of the write will be visible immediately, and the corresponding events ('value',
		'child_added', etc.) will be triggered. Synchronization of the data to the Firebase servers
		will also be started, and the returned Promise will resolve when complete. If provided, the
		`onComplete` callback will be called asynchronously after synchronization has finished.
		
		A single update() will generate a single "value" event at the location where the update()
		was performed, regardless of how many children were modified.
		
		Note that modifying data with update() will cancel any pending transactions at that location,
		so extreme care should be taken if mixing update() and transaction() to modify the same data.
		
		Passing `null` to `update()` will remove the data at this location.
		
		#### Example
		
		Modify the 'first' and 'last' properties, but leave other values unchanged at this location.
		
		```js
		await firebase.database().ref('users/ada/name').update({
		   first: 'Ada',
		   last: 'Lovelace',
		})
		```
	**/
	function update(values:{ }, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Sets a priority for the data at this Database location. Setting null removes any priority at this location.
		
		See {@link database.Query#orderByPriority} to learn how to use priority values in your query.
		
		#### Example
		
		```js
		await firebase.database().ref('users/ada').setPriority(1, (error) => {
		   if (error) console.error(error);
		});
		```
	**/
	function setPriority(priority:Null<ts.AnyOf2<String, Float>>, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Writes data the Database location. Like `set()` but also specifies the priority for that data.
		
		#### Example
		
		```js
		await firebase.database().ref('users/ada/name')
		  .setWithPriority({
		    first: 'Ada',
		    last: 'Lovelace',
		  }, 1, (error) => {
		    if (error) console.error(error);
		  });
		```
	**/
	function setWithPriority(newVal:Dynamic, newPriority:Null<ts.AnyOf2<String, Float>>, ?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Removes the data at this Database location.
		
		Any data at child locations will also be deleted.
		
		The effect of the remove will be visible immediately and the corresponding event 'value' will be triggered.
		Synchronization of the remove to the Firebase servers will also be started, and the returned Promise will
		resolve when complete. If provided, the onComplete callback will be called asynchronously after synchronization
		has finished.
		
		#### Example
		
		```js
		await firebase.database().ref('users/ada/name')
		  .remove(() => {
		    console.log('Operation Complete');
		  });
		```
	**/
	function remove(?onComplete:(error:Null<js.lib.Error>) -> Void):js.lib.Promise<ts.Undefined>;
	/**
		Atomically modifies the data at this location.
		
		Atomically modify the data at this location. Unlike a normal `set()`, which just overwrites
		the data regardless of its previous value, `transaction()` is used to modify the existing
		value to a new value, ensuring there are no conflicts with other clients writing to the same
		location at the same time.
		
		To accomplish this, you pass `transaction()` an update function which is used to transform the
		current value into a new value. If another client writes to the location before your new
		value is successfully written, your update function will be called again with the new
		current value, and the write will be retried. This will happen repeatedly until your write
		succeeds without conflict or you abort the transaction by not returning a value from your
		update function.
		
		Note: Modifying data with `set()` will cancel any pending transactions at that location, so
		extreme care should be taken if mixing `set()` and `transaction()` to update the same data.
		
		Note: When using transactions with Security and Firebase Rules in place, be aware that a
		client needs `.read` access in addition to `.write` access in order to perform a transaction.
		This is because the client-side nature of transactions requires the client to read the data
		in order to transactionally update it.
		
		#### Example
		
		```js
		const userRef = firebase.database().ref('users/ada/profileViews);
		
		userRef.transaction((currentViews) => {
		   if (currentViews === null) return 1;
		   return currentViews + 1;
		});
		```
	**/
	function transaction(transactionUpdate:(currentData:Dynamic) -> Null<Dynamic>, ?onComplete:(error:Null<js.lib.Error>, committed:Bool, finalResult:DataSnapshot) -> Void, ?applyLocally:Bool):js.lib.Promise<TransactionResult>;
	/**
		Generates a new child location using a unique key and returns its `Reference`.
		
		This is the most common pattern for adding data to a collection of items.
		
		If you provide a value to `push()`, the value will be written to the generated location.
		If you don't pass a value, nothing will be written to the Database and the child will
		remain empty (but you can use the `Reference` elsewhere).
		
		The unique key generated by push() are ordered by the current time, so the resulting list
		of items will be chronologically sorted. The keys are also designed to be unguessable
		(they contain 72 random bits of entropy).
		
		#### Example
		
		```js
		const newUserRef = firebase.database().ref('users').push();
		console.log('New record key:', newUserRef.key);
		await newUserRef.set({
		   first: 'Ada',
		   last: 'Lovelace',
		});
		```
	**/
	function push(?value:Dynamic, ?onComplete:() -> Void):Reference;
	/**
		Returns an {@link database.OnDisconnect} instance.
		
		#### Example
		
		```js
		const userDisconnectRef = firebase.database().ref('users/ada/isOnline').onDisconnect();
		// When going offline
		await userDisconnectRef.update(false);
		```
	**/
	function onDisconnect():OnDisconnect;
	/**
		Returns a Reference to the Query's location.
	**/
	var ref : Reference;
	/**
		Creates a Query with the specified ending point.
		
		Using `startAt()`, `endAt()`, and `equalTo()` allows you to choose arbitrary starting and
		ending points for your queries.
		
		The ending point is inclusive, so children with exactly the specified value will be included
		in the query. The optional key argument can be used to further limit the range of the query.
		If it is specified, then children that have exactly the specified value must also have a key
		name less than or equal to the specified key.
		
		You can read more about endAt() in [Filtering data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#filtering_data).
		
		#### Example
		
		```js
		const ref = firebase.database().ref('users');
		const snapshot = await ref.orderByKey().endAt('Ada Lovelace').once('value');
		```
	**/
	function endAt(value:Null<ts.AnyOf3<String, Float, Bool>>, ?key:String):Query;
	/**
		Creates a Query with the specified ending point.
		
		Using `startAt()`, `endAt()`, and `equalTo()` allows you to choose arbitrary starting and
		ending points for your queries.
		
		The optional key argument can be used to further limit the range of the query. If it is
		specified, then children that have exactly the specified value must also have exactly the
		specified key as their key name. This can be used to filter result sets with many matches for the same value.
		
		You can read more about equalTo() in [Filtering data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#filtering_data).
		
		#### Example
		
		```js
		const ref = firebase.database().ref('users');
		const snapshot = await ref.orderByChild('age').equalTo(30).once('value');
		```
	**/
	function equalTo(value:Null<ts.AnyOf3<String, Float, Bool>>, ?key:String):Query;
	/**
		Returns whether or not the current and provided queries represent the same location, have the same query parameters.
		
		Two Reference objects are equivalent if they represent the same location and are from the same instance of
		{@link app}.  Equivalent queries share the same sort order, limits, and starting and ending points.
		
		#### Example
		
		```js
		const ref1 = firebase.database().ref('users').orderByKey().endAt('Ada Lovelace');
		const ref2 = firebase.database().ref('users').orderByKey();
		
		console.log(ref1.isEqual(ref2)); // false
		```
		
		#### Example
		
		```js
		const ref1 = firebase.database().ref('users').orderByKey().endAt('Ada Lovelace');
		const ref2 = firebase.database().ref('users').endAt('Ada Lovelace').orderByKey();
		
		console.log(ref1.isEqual(ref2)); // true
		```
	**/
	function isEqual(other:Query):Bool;
	/**
		Generates a new `Query` limited to the first specific number of children.
		
		The `limitToFirst()` method is used to set a maximum number of children to be synced for a
		given callback. If we set a limit of 100, we will initially only receive up to 100 `child_added`
		events. If we have fewer than 100 messages stored in our Database, a child_added event will
		fire for each message. However, if we have over 100 messages, we will only receive a `child_added`
		event for the first 100 ordered messages. As items change, we will receive `child_removed` events
		for each item that drops out of the active list so that the total number stays at 100.
		
		You can read more about `limitToFirst()` in [Filtering data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#filtering_data).
		
		#### Example
		
		```js
		const snapshot = firebase.database().ref('users').orderByKey().limitToFirst(2).once('value');
		console.log(snapshot.numChildren()); // 2
		```
	**/
	function limitToFirst(limit:Float):Query;
	/**
		Generates a new `Query` object limited to the last specific number of children.
		
		The `limitToLast()` method is used to set a maximum number of children to be synced for a given
		callback. If we set a limit of 100, we will initially only receive up to 100 `child_added` events.
		If we have fewer than 100 messages stored in our Database, a `child_added` event will fire for
		each message. However, if we have over 100 messages, we will only receive a `child_added` event
		for the last 100 ordered messages. As items change, we will receive `child_removed` events for
		each item that drops out of the active list so that the total number stays at 100.
		
		You can read more about `limitToLast()` in [Filtering data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#filtering_data).
		
		#### Example
		
		```js
		const snapshot = firebase.database().ref('users').orderByKey().limitToLast(2).once('value');
		console.log(snapshot.numChildren()); // 2
		```
	**/
	function limitToLast(limit:Float):Query;
	/**
		Detaches a callback previously attached with `on()`.
		
		Detach a callback previously attached with `on()`. Note that if `on()` was called multiple times
		with the same eventType and callback, the callback will be called multiple times for each
		event, and `off()` must be called multiple times to remove the callback. Calling `off()` on a parent
		listener will not automatically remove listeners registered on child nodes, `off()` must also be
		called on any child listeners to remove the callback.
		
		If a callback is not specified, all callbacks for the specified eventType will be removed.
		Similarly, if no eventType is specified, all callbacks for the `Reference` will be removed.
		
		#### Example
		
		```js
		const ref = firebase.database().ref('settings');
		const onValueChange = function(snapshot) { ... };
		const onChildAdded = function(snapshot) { ... };
		
		ref.on('value', onValueChange);
		ref.child('meta-data').on('child_added', onChildAdded);
		// Sometime later...
		ref.off('value', onValueChange);
		ref.child('meta-data').off('child_added', onChildAdded);
		```
	**/
	function off(?eventType:EventType, ?callback:ts.AnyOf2<(a:DataSnapshot) -> Void, (a:DataSnapshot, b:String) -> Void>, ?context:{ }):Void;
	/**
		Listens for data changes at a particular location.
		
		This is the primary way to read data from a Database. Your callback will be triggered for the
		initial data and again whenever the data changes. Use `off()` to stop receiving updates..
		
		**value** event
		
		This event will trigger once with the initial data stored at this location, and then trigger
		again each time the data changes. The `DataSnapshot` passed to the callback will be for the location
		at which on() was called. It won't trigger until the entire contents has been synchronized.
		If the location has no data, it will be triggered with an empty `DataSnapshot`
		(`val()` will return `null`).
		
		**child_added** event
		
		This event will be triggered once for each initial child at this location, and it will be
		triggered again every time a new child is added. The `DataSnapshot` passed into the callback
		will reflect the data for the relevant child. For ordering purposes, it is passed a second argument
		which is a string containing the key of the previous sibling child by sort order, or `null` if
		it is the first child.
		
		**child_removed** event
		
		This event will be triggered once every time a child is removed. The `DataSnapshot` passed into
		the callback will be the old data for the child that was removed. A child will get removed when either:
		- a client explicitly calls `remove()` on that child or one of its ancestors
		- a client calls `set(null)` on that child or one of its ancestors
		- that child has all of its children removed
		- there is a query in effect which now filters out the child (because it's sort order changed or the max limit was hit)
		
		**child_changed** event
		
		This event will be triggered when the data stored in a child (or any of its descendants) changes.
		Note that a single `child_changed` event may represent multiple changes to the child. The
		`DataSnapshot` passed to the callback will contain the new child contents. For ordering purposes,
		the callback is also passed a second argument which is a string containing the key of the previous
		sibling child by sort order, or `null` if it is the first child.
		
		**child_moved** event
		
		This event will be triggered when a child's sort order changes such that its position relative
		to its siblings changes. The `DataSnapshot` passed to the callback will be for the data of the child
		that has moved. It is also passed a second argument which is a string containing the key of the
		previous sibling child by sort order, or `null` if it is the first child.
	**/
	function on(eventType:EventType, callback:ts.AnyOf2<(data:DataSnapshot) -> Void, (data:DataSnapshot, previousChildKey:String) -> Void>, ?cancelCallbackOrContext:ts.AnyOf2<{ }, (a:js.lib.Error) -> Void>, ?context:{ }):ts.AnyOf2<(a:Null<DataSnapshot>) -> Void, (a:Null<DataSnapshot>, b:String) -> Void>;
	/**
		Listens for exactly one event of the specified event type, and then stops listening.
		
		This is equivalent to calling `on()`, and then calling `off()` inside the callback function. See `on()` for details on the event types.
		
		#### Example
		
		```js
		// Promise
		const snapshot = await firebase.database().ref('users').once('value');
		// Callback
		firebase.database().ref('users).once('value', (snapshot) => {
		   console.log(snapshot.val());
		});
		```
	**/
	function once(eventType:EventType, ?successCallback:ts.AnyOf2<(a:DataSnapshot) -> Dynamic, (a:DataSnapshot, b:String) -> Dynamic>, ?failureCallbackContext:ts.AnyOf2<{ }, (a:js.lib.Error) -> Void>):js.lib.Promise<DataSnapshot>;
	/**
		Generates a new `Query` object ordered by the specified child key.
		
		Queries can only order by one key at a time. Calling `orderByChild()` multiple times on the same query is an error.
		
		Firebase queries allow you to order your data by any child key on the fly. However, if you know in advance what
		your indexes will be, you can define them via the [.indexOn](https://firebase.google.com/docs/database/security/indexing-data?authuser=0)
		rule in your Security Rules for better performance.
		
		You can read more about orderByChild() in [Sort data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#sort_data).
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users').orderByChild('age').once('value');
		snapshot.forEach((snapshot) => {
		  console.log('Users age:', snapshot.val().age);
		});
		```
	**/
	function orderByChild(path:String):Query;
	/**
		Generates a new `Query` object ordered by key.
		
		Sorts the results of a query by their (ascending) key values.
		
		You can read more about `orderByKey()` in [Sort data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#sort_data).
		
		#### Example
		
		```js
		const snapshot = await firebase.database().ref('users').orderByKey().once('value');
		snapshot.forEach((snapshot) => {
		  console.log('User:', snapshot.val());
		});
		```
	**/
	function orderByKey():Query;
	/**
		Generates a new Query object ordered by priority.
		
		Applications need not use priority but can order collections by ordinary properties
		(see [Sort data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#sort_data)
		for alternatives to priority).
	**/
	function orderByPriority():Query;
	/**
		Generates a new `Query` object ordered by value.
		
		If the children of a query are all scalar values (string, number, or boolean), you can order
		the results by their (ascending) values.
		
		You can read more about `orderByValue()` in [Sort data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#sort_data).
		
		#### Example
		
		```js
		await firebase.database().ref('scores').orderByValue().once('value');
		```
	**/
	function orderByValue():Query;
	/**
		Creates a `Query` with the specified starting point.
		
		Using `startAt()`, `endAt()`, and `equalTo()` allows you to choose arbitrary starting and
		ending points for your queries.
		
		The starting point is inclusive, so children with exactly the specified value will be included
		in the query. The optional key argument can be used to further limit the range of the query.
		If it is specified, then children that have exactly the specified value must also have a key
		name greater than or equal to the specified key.
		
		You can read more about `startAt()` in [Filtering data](https://firebase.google.com/docs/database/web/lists-of-data?authuser=0#filtering_data).
		
		#### Example
		
		```js
		await firebase.database().ref('users').orderByChild('age').startAt(21).once('value');
		```
	**/
	function startAt(value:Null<ts.AnyOf3<String, Float, Bool>>, ?key:String):Query;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	/**
		Gets the absolute URL for this location.
		
		The `toString()` method returns a URL that is ready to be put into a browser, curl command, or
		a `firebase.database().refFromURL()` call. Since all of those expect the URL to be url-encoded,
		`toString()` returns an encoded URL.
		
		Append '.json' to the returned URL when typed into a browser to download JSON-formatted data.
		If the location is secured (that is, not publicly readable), you will get a permission-denied error.
		
		#### Example
		
		```js
		const ref1 = firebase.database().ref();
		const ref2 = firebase.database().ref('users').orderByValue();
		
		ref1.toString(); // https://sample-app.firebaseio.com/
		ref2.toString(); // https://sample-app.firebaseio.com/users
		```
	**/
	function toString():String;
	/**
		By calling `keepSynced(true)` on a location, the data for that location will automatically
		be downloaded and kept in sync, even when no listeners are attached for that location.
		
		#### Example
		
		```js
		const ref = firebase.database().ref('users');
		await ref.keepSynced(true);
		```
	**/
	function keepSynced(bool:Bool):js.lib.Promise<ts.Undefined>;
};