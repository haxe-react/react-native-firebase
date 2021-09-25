package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A DocumentSnapshot contains data read from a document in your Firestore database. The data can be extracted with
	.`data()` or `.get(:field)` to get a specific field.
	
	For a DocumentSnapshot that points to a non-existing document, any data access will return 'undefined'.
	You can use the `exists` property to explicitly verify a document's existence.
**/
typedef DocumentSnapshot<T> = {
	/**
		Property of the `DocumentSnapshot` that signals whether or not the data exists. True if the document exists.
	**/
	var exists : Bool;
	/**
		Property of the `DocumentSnapshot` that provides the document's ID.
	**/
	var id : String;
	/**
		Metadata about the `DocumentSnapshot`, including information about its source and local modifications.
	**/
	var metadata : SnapshotMetadata;
	/**
		The `DocumentReference` for the document included in the `DocumentSnapshot`.
	**/
	var ref : DocumentReference<T>;
	/**
		Retrieves all fields in the document as an Object. Returns 'undefined' if the document doesn't exist.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		console.log('User', user.data());
		```
	**/
	function data():Null<T>;
	/**
		Retrieves the field specified by fieldPath. Returns undefined if the document or field doesn't exist.
		
		#### Example
		
		```js
		const user = await firebase.firestore().doc('users/alovelace').get();
		
		console.log('Address ZIP Code', user.get('address.zip'));
		```
	**/
	function get<FieldType>(fieldPath:ts.AnyOf2<FieldPath, Dynamic>):FieldType;
	/**
		Returns true if this `DocumentSnapshot` is equal to the provided one.
		
		#### Example
		
		```js
		const user1 = await firebase.firestore().doc('users/alovelace').get();
		const user2 = await firebase.firestore().doc('users/dsmith').get();
		
		// false
		user1.isEqual(user2);
		```
	**/
	function isEqual(other:DocumentSnapshot<DocumentData>):Bool;
};