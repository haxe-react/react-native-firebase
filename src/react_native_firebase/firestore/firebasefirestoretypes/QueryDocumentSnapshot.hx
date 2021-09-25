package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A QueryDocumentSnapshot contains data read from a document in your Firestore database as part of a query.
	The document is guaranteed to exist and its data can be extracted with .data() or .get(:field) to get a specific field.
	
	A QueryDocumentSnapshot offers the same API surface as a DocumentSnapshot.
	Since query results contain only existing documents, the exists property will always be true and data() will never return 'undefined'.
**/
typedef QueryDocumentSnapshot<T> = {
	/**
		A QueryDocumentSnapshot is always guaranteed to exist.
	**/
	var exists : Bool;
	/**
		Retrieves all fields in the document as an Object.
		
		#### Example
		
		```js
		const users = await firebase.firestore().collection('users').get();
		
		for (const user of users.docs) {
		   console.log('User', user.data());
		}
		```
	**/
	function data():T;
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