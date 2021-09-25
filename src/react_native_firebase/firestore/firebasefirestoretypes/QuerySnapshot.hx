package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A `QuerySnapshot` contains zero or more `QueryDocumentSnapshot` objects representing the results of a query. The documents
	can be accessed as an array via the `docs` property or enumerated using the `forEach` method. The number of documents
	can be determined via the `empty` and `size` properties.
**/
typedef QuerySnapshot<T> = {
	/**
		An array of all the documents in the `QuerySnapshot`.
	**/
	var docs : Array<QueryDocumentSnapshot<T>>;
	/**
		True if there are no documents in the `QuerySnapshot`.
	**/
	var empty : Bool;
	/**
		Metadata about this snapshot, concerning its source and if it has local modifications.
	**/
	var metadata : SnapshotMetadata;
	/**
		The query on which you called get or `onSnapshot` in order to `get` this `QuerySnapshot`.
	**/
	var query : Query<T>;
	/**
		The number of documents in the `QuerySnapshot`.
	**/
	var size : Float;
	/**
		Returns an array of the documents changes since the last snapshot. If this is the first snapshot, all documents
		will be in the list as added changes.
		
		To include metadata changes, ensure that the `onSnapshot()` method includes metadata changes.
		
		#### Example
		
		```js
		firebase.firestore().collection('users')
		   .onSnapshot((querySnapshot) => {
		     console.log('Metadata Changes', querySnapshot.docChanges());
		   });
		```
		
		#### Example - With metadata changes
		
		```js
		firebase.firestore().collection('users')
		   .onSnapshot({ includeMetadataChanges: true }, (querySnapshot) => {
		     console.log('Metadata Changes', querySnapshot.docChanges({
		       includeMetadataChanges: true,
		     }));
		   });
		```
	**/
	function docChanges(?options:SnapshotListenOptions):Array<DocumentChange<T>>;
	/**
		Enumerates all of the documents in the `QuerySnapshot`.
		
		#### Example
		
		```js
		const querySnapshot = await firebase.firestore().collection('users').get();
		
		querySnapshot.forEach((queryDocumentSnapshot) => {
		   console.log('User', queryDocumentSnapshot.data());
		})
		```
	**/
	function forEach(callback:(result:QueryDocumentSnapshot<T>, index:Float) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns true if this `QuerySnapshot` is equal to the provided one.
		
		#### Example
		
		```js
		const querySnapshot1 = await firebase.firestore().collection('users').limit(5).get();
		const querySnapshot2 = await firebase.firestore().collection('users').limit(10).get();
		
		// false
		querySnapshot1.isEqual(querySnapshot2);
		```
		
		> This operation can be resource intensive when dealing with large datasets.
	**/
	function isEqual(other:QuerySnapshot<DocumentData>):Bool;
};