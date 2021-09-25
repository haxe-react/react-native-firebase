package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A write batch, used to perform multiple writes as a single atomic unit.
	
	A WriteBatch object can be acquired by calling `firestore.batch()`. It provides methods for adding
	writes to the write batch. None of the writes will be committed (or visible locally) until
	`WriteBatch.commit()` is called.
	
	Unlike transactions, write batches are persisted offline and therefore are preferable when you don't need to
	condition your writes on read data.
**/
typedef WriteBatch = {
	/**
		Commits all of the writes in this write batch as a single atomic unit.
		
		Returns a Promise resolved once all of the writes in the batch have been successfully written
		to the backend as an atomic unit. Note that it won't resolve while you're offline.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		
		// Perform batch operations...
		
		await batch.commit();
		```
	**/
	function commit():js.lib.Promise<ts.Undefined>;
	/**
		Deletes the document referred to by the provided `DocumentReference`.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		const docRef = firebase.firestore().doc('users/alovelace');
		
		batch.delete(docRef);
		```
	**/
	function delete(documentRef:DocumentReference<DocumentData>):WriteBatch;
	/**
		Writes to the document referred to by the provided DocumentReference. If the document does
		not exist yet, it will be created. If you pass SetOptions, the provided data can be merged
		into the existing document.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		const docRef = firebase.firestore().doc('users/dsmith');
		
		batch.set(docRef, {
		   name: 'David Smith',
		   age: 25,
		});
		```
	**/
	function set<T>(documentRef:DocumentReference<T>, data:T, ?options:SetOptions):WriteBatch;
	/**
		Updates fields in the document referred to by the provided DocumentReference. The update will fail if applied to a document that does not exist.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		const docRef = firebase.firestore().doc('users/alovelace');
		
		batch.update(docRef, {
		   city: 'SF',
		});
		```
		
		Updates fields in the document referred to by this DocumentReference. The update will fail if applied to a document that does not exist.
		
		Nested fields can be update by providing dot-separated field path strings or by providing FieldPath objects.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		const docRef = firebase.firestore().doc('users/alovelace');
		
		batch.update(docRef, 'city', 'SF', 'age', 31);
		```
	**/
	@:overload(function<T, K>(documentRef:DocumentReference<T>, field:ts.AnyOf2<FieldPath, K>, value:ts.AnyOf2<FieldValue, Dynamic>, moreFieldAndValues:haxe.extern.Rest<Dynamic>):WriteBatch { })
	function update<T>(documentRef:DocumentReference<T>, data:Dynamic):WriteBatch;
};