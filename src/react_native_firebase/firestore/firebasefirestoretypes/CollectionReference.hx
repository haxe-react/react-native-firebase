package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A `CollectionReference` object can be used for adding documents, getting document references, and querying for
	documents (using the methods inherited from `Query`).
**/
typedef CollectionReference<T> = {
	/**
		The collection's identifier.
	**/
	var id : String;
	/**
		A reference to the containing `DocumentReference` if this is a subcollection. If this isn't a
		subcollection, the reference is null.
	**/
	var parent : Null<DocumentReference<DocumentData>>;
	/**
		A string representing the path of the referenced collection (relative to the root of the database).
	**/
	var path : String;
	/**
		Add a new document to this collection with the specified data, assigning it a document ID automatically.
		
		#### Example
		
		```js
		const documentRef = await firebase.firestore().collection('users').add({
		   name: 'Ada Lovelace',
		   age: 30,
		});
		```
	**/
	function add(data:T):js.lib.Promise<DocumentReference<T>>;
	/**
		Get a DocumentReference for the document within the collection at the specified path. If no
		path is specified, an automatically-generated unique ID will be used for the returned DocumentReference.
		
		#### Example
		
		```js
		await firebase.firestore().collection('users').doc('alovelace').set({
		   name: 'Ada Lovelace',
		   age: 30,
		});
		```
	**/
	function doc(?documentPath:String):DocumentReference<T>;
	/**
		Creates and returns a new Query that ends at the provided document (inclusive). The end
		position is relative to the order of the query. The document must contain all of the
		fields provided in the orderBy of this query.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		// Get all users up to a specific user in order of age
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .endAt(user);
		```
		
		> Cursor snapshot queries have limitations. Please see [Query limitations](/query-limitations) for more information.
		
		Creates and returns a new Query that ends at the provided fields relative to the order of the query.
		The order of the field values must match the order of the order by clauses of the query.
		
		#### Example
		
		```js
		// Get all users who's age is 30 or less
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .endAt(30);
		```
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function endAt(snapshot:DocumentSnapshot<T>):Query<T>;
	/**
		Creates and returns a new Query that ends before the provided document (exclusive). The end
		position is relative to the order of the query. The document must contain all of the fields
		provided in the orderBy of this query.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		// Get all users up to, but not including, a specific user in order of age
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .endBefore(user);
		```
		
		> Cursor snapshot queries have limitations. Please see [Query limitations](/query-limitations) for more information.
		
		Creates and returns a new Query that ends before the provided fields relative to the order of
		the query. The order of the field values must match the order of the order by clauses of the query.
		
		#### Example
		
		```js
		// Get all users who's age is 29 or less
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .endBefore(30);
		```
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function endBefore(snapshot:DocumentSnapshot<T>):Query<T>;
	/**
		Executes the query and returns the results as a QuerySnapshot.
		
		Note: By default, get() attempts to provide up-to-date data when possible by waiting for data from the server,
		but it may return cached data or fail if you are offline and the server cannot be reached. This behavior can be
		altered via the `GetOptions` parameter.
		
		#### Example
		
		```js
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .get({
		     source: 'server',
		   });
		```
	**/
	function get(?options:GetOptions):js.lib.Promise<QuerySnapshot<T>>;
	/**
		Returns true if this Query is equal to the provided one.
		
		#### Example
		
		```js
		const query = firebase.firestore()
		   .collection('users')
		   .orderBy('age');
		
		// false
		query.isEqual(
		   firebase.firestore()
		     .collection('users')
		     .orderBy('name')
		);
		```
	**/
	function isEqual(other:Query<DocumentData>):Bool;
	/**
		Creates and returns a new Query where the results are limited to the specified number of documents.
		
		#### Example
		
		```js
		// Get 10 users in order of age
		const querySnapshot = firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .limit(10)
		   .get();
		```
	**/
	function limit(limit:Float):Query<T>;
	/**
		Creates and returns a new Query where the results are limited to the specified number of documents
		starting from the last document. The order is dependent on the second parameter for the `orderBy`
		method. If `desc` is used, the order is reversed. `orderBy` method call is required when calling `limitToLast`.
		
		#### Example
		
		```js
		// Get the last 10 users in reverse order of age
		const querySnapshot = firebase.firestore()
		   .collection('users')
		   .orderBy('age', 'desc')
		   .limitToLast(10)
		   .get();
		```
	**/
	function limitToLast(limitToLast:Float):Query<T>;
	/**
		Attaches a listener for `QuerySnapshot` events.
		
		> Although an `onCompletion` callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().collection('users')
		   .onSnapshot({
		     error: (e) => console.error(e),
		     next: (querySnapshot) => {},
		   });
		
		unsubscribe();
		```
		
		Attaches a listener for `QuerySnapshot` events with snapshot listener options.
		
		> Although an `onCompletion` callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().collection('users')
		   .onSnapshot({
		     includeMetadataChanges: true,
		   }, {
		     error: (e) => console.error(e),
		     next: (querySnapshot) => {},
		   });
		
		unsubscribe();
		```
		
		Attaches a listener for `QuerySnapshot` events.
		
		> Although an `onCompletion` callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().collection('users')
		   .onSnapshot(
		     (querySnapshot) => {}, // onNext
		     (error) => console.error(error), // onError
		   );
		
		unsubscribe();
		```
		
		Attaches a listener for `QuerySnapshot` events with snapshot listener options.
		
		NOTE: Although an onCompletion callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().collection('users')
		   .onSnapshot(
		     { includeMetadataChanges: true }, // SnapshotListenerOptions
		     (querySnapshot) => {}, // onNext
		     (error) => console.error(error), // onError
		   );
		
		unsubscribe();
		```
	**/
	@:overload(function(options:SnapshotListenOptions, observer:{ @:optional dynamic function complete():Void; @:optional dynamic function error(error:js.lib.Error):Void; @:optional dynamic function next(snapshot:QuerySnapshot<T>):Void; }):() -> Void { })
	@:overload(function(onNext:(snapshot:QuerySnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void, ?onCompletion:() -> Void):() -> Void { })
	@:overload(function(options:SnapshotListenOptions, onNext:(snapshot:QuerySnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void, ?onCompletion:() -> Void):() -> Void { })
	function onSnapshot(observer:{ @:optional dynamic function complete():Void; @:optional dynamic function error(error:js.lib.Error):Void; @:optional dynamic function next(snapshot:QuerySnapshot<T>):Void; }):() -> Void;
	/**
		Creates and returns a new Query that's additionally sorted by the specified field, optionally in descending order instead of ascending.
		
		* #### Example
		
		#### Example
		
		```js
		// Get users in order of age, descending
		const querySnapshot = firebase.firestore()
		   .collection('users')
		   .orderBy('age', 'desc')
		   .get();
		```
	**/
	function orderBy(fieldPath:ts.AnyOf2<FieldPath, Dynamic>, ?directionStr:String):Query<T>;
	/**
		Creates and returns a new Query that starts after the provided document (exclusive). The start
		position is relative to the order of the query. The document must contain all of the fields
		provided in the orderBy of this query.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		// Get all users up to, but not including, a specific user in order of age
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .startAfter(user)
		   .get();
		```
		
		> Cursor snapshot queries have limitations. Please see [Query limitations](/query-limitations) for more information.
		
		Creates and returns a new Query that starts after the provided fields relative to the order of
		the query. The order of the field values must match the order of the order by clauses of the query.
		
		#### Example
		
		```js
		// Get all users who's age is above 30
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .startAfter(30)
		   .get();
		```
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function startAfter(snapshot:DocumentSnapshot<T>):Query<T>;
	/**
		Creates and returns a new Query that starts at the provided document (inclusive). The start
		position is relative to the order of the query. The document must contain all of the
		fields provided in the orderBy of this query.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		// Get all users up to a specific user in order of age
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .startAt(user)
		   .get();
		```
		
		> Cursor snapshot queries have limitations. Please see [Query limitations](/query-limitations) for more information.
		
		Creates and returns a new Query that starts at the provided fields relative to the order of the query.
		The order of the field values must match the order of the order by clauses of the query.
		
		#### Example
		
		```js
		// Get all users who's age is 30 or above
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .orderBy('age')
		   .startAt(30)
		   .get();
		```
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function startAt(snapshot:DocumentSnapshot<T>):Query<T>;
	/**
		Creates and returns a new Query with the additional filter that documents must contain the specified field and
		the value should satisfy the relation constraint provided.
		
		#### Example
		
		```js
		// Get all users who's age is 30 or above
		const querySnapshot = await firebase.firestore()
		   .collection('users')
		   .where('age', '>=', 30);
		   .get();
		```
	**/
	function where(fieldPath:ts.AnyOf2<FieldPath, Dynamic>, opStr:WhereFilterOp, value:Dynamic):Query<T>;
};