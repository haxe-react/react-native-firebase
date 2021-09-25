package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A `DocumentReference` refers to a document location in a Firestore database and can be used to write, read, or listen
	to the location. The document at the referenced location may or may not exist. A `DocumentReference` can also be used
	to create a `CollectionReference` to a subcollection.
**/
typedef DocumentReference<T> = {
	/**
		The Firestore instance the document is in. This is useful for performing transactions, for example.
	**/
	var firestore : Module;
	/**
		The document's identifier within its collection.
	**/
	var id : String;
	/**
		The Collection this `DocumentReference` belongs to.
	**/
	var parent : CollectionReference<T>;
	/**
		A string representing the path of the referenced document (relative to the root of the database).
	**/
	var path : String;
	/**
		Gets a `CollectionReference` instance that refers to the collection at the specified path.
		
		#### Example
		
		```js
		const collectionRef = firebase.firestore().doc('users/alovelace').collection('orders');
		```
	**/
	function collection(collectionPath:String):CollectionReference<DocumentData>;
	/**
		Deletes the document referred to by this DocumentReference.
		
		#### Example
		
		```js
		await firebase.firestore().doc('users/alovelace').delete();
		```
		
		The Promise is resolved once the document has been successfully deleted from the backend
		(Note that it won't resolve while you're offline).
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	/**
		Reads the document referred to by this DocumentReference.
		
		Note: By default, get() attempts to provide up-to-date data when possible by waiting for data
		from the server, but it may return cached data or fail if you are offline and the server cannot
		be reached. This behavior can be altered via the GetOptions parameter.
		
		#### Example
		
		```js
		await firebase.firestore().doc('users/alovelace').get({
		   source: 'server',
		});
		```
	**/
	function get(?options:GetOptions):js.lib.Promise<DocumentSnapshot<T>>;
	/**
		Returns true if this DocumentReference is equal to the provided one.
		
		#### Example
		
		```js
		const alovelace = firebase.firestore().doc('users/alovelace');
		const dsmith = firebase.firestore().doc('users/dsmith');
		
		// false
		alovelace.isEqual(dsmith);
		```
	**/
	function isEqual(other:DocumentReference<DocumentData>):Bool;
	/**
		Attaches a listener for DocumentSnapshot events.
		
		NOTE: Although an complete callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().doc('users/alovelace')
		   .onSnapshot({
		     error: (e) => console.error(e),
		     next: (documentSnapshot) => {},
		   });
		
		unsubscribe();
		```
		
		Attaches a listener for DocumentSnapshot events with snapshot listener options.
		
		NOTE: Although an complete callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().doc('users/alovelace')
		   .onSnapshot({
		     includeMetadataChanges: true,
		   }, {
		     error: (e) => console.error(e),
		     next: (documentSnapshot) => {},
		   });
		
		unsubscribe();
		```
		
		Attaches a listener for DocumentSnapshot events.
		
		NOTE: Although an onCompletion callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().doc('users/alovelace')
		   .onSnapshot(
		     (documentSnapshot) => {}, // onNext
		     (error) => console.error(error), // onError
		   );
		
		unsubscribe();
		```
		
		Attaches a listener for DocumentSnapshot events with snapshot listener options.
		
		NOTE: Although an onCompletion callback can be provided, it will never be called because the snapshot stream is never-ending.
		
		Returns an unsubscribe function to stop listening to events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.firestore().doc('users/alovelace')
		   .onSnapshot(
		     { includeMetadataChanges: true }, // SnapshotListenerOptions
		     (documentSnapshot) => {}, // onNext
		     (error) => console.error(error), // onError
		   );
		
		unsubscribe();
		```
	**/
	@:overload(function(options:SnapshotListenOptions, observer:{ @:optional dynamic function complete():Void; @:optional dynamic function error(error:js.lib.Error):Void; @:optional dynamic function next(snapshot:DocumentSnapshot<T>):Void; }):() -> Void { })
	@:overload(function(onNext:(snapshot:DocumentSnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void, ?onCompletion:() -> Void):() -> Void { })
	@:overload(function(options:SnapshotListenOptions, onNext:(snapshot:DocumentSnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void, ?onCompletion:() -> Void):() -> Void { })
	function onSnapshot(observer:{ @:optional dynamic function complete():Void; @:optional dynamic function error(error:js.lib.Error):Void; @:optional dynamic function next(snapshot:DocumentSnapshot<T>):Void; }):() -> Void;
	/**
		Writes to the document referred to by this DocumentReference. If the document does not yet
		exist, it will be created. If you pass SetOptions, the provided data can be merged into an
		existing document.
		
		#### Example
		
		```js
		const user = firebase.firestore().doc('users/alovelace');
		
		// Set new data
		await user.set({
		   name: 'Ada Lovelace',
		   age: 30,
		   city: 'LON',
		});
		```
	**/
	function set(data:T, ?options:SetOptions):js.lib.Promise<ts.Undefined>;
	/**
		Updates fields in the document referred to by this `DocumentReference`. The update will fail
		if applied to a document that does not exist.
		
		#### Example
		
		```
		const user = firebase.firestore().doc('users/alovelace');
		
		// Update age but leave other fields untouched
		await user.update({
		   age: 31,
		});
		```
		
		Updates fields in the document referred to by this DocumentReference. The update will fail if
		applied to a document that does not exist.
		
		#### Example
		
		```
		const user = firebase.firestore().doc('users/alovelace');
		
		// Update age & city but leve other fields untouched
		await user.update('age', 31, 'city', 'SF');
		```
	**/
	@:overload(function(field:ts.AnyOf2<FieldPath, Dynamic>, value:Dynamic, moreFieldsAndValues:haxe.extern.Rest<Dynamic>):js.lib.Promise<ts.Undefined> { })
	function update(data:Dynamic):js.lib.Promise<ts.Undefined>;
};