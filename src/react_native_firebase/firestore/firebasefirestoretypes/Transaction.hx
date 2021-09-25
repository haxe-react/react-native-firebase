package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A reference to a transaction. The `Transaction` object passed to a transaction's updateFunction provides the methods to
	read and write data within the transaction context. See `Firestore.runTransaction()`.
	
	A transaction consists of any number of `get()` operations followed by any number of write operations such as `set()`,
	`update()`, or `delete()`. In the case of a concurrent edit, Cloud Firestore runs the entire transaction again. For example,
	if a transaction reads documents and another client modifies any of those documents, Cloud Firestore retries the transaction.
	This feature ensures that the transaction runs on up-to-date and consistent data.
	
	Transactions never partially apply writes. All writes execute at the end of a successful transaction.
	
	When using transactions, note that:
	   - Read operations must come before write operations.
	   - A function calling a transaction (transaction function) might run more than once if a concurrent edit affects a document that the transaction reads.
	   - Transaction functions should not directly modify application state (return a value from the `updateFunction`).
	   - Transactions will fail when the client is offline.
**/
typedef Transaction = {
	/**
		Deletes the document referred to by the provided `DocumentReference`.
		
		#### Example
		
		```js
		const docRef = firebase.firestore().doc('users/alovelace');
		
		await firebase.firestore().runTransaction((transaction) => {
		   return transaction.delete(docRef);
		});
		```
	**/
	function delete(documentRef:DocumentReference<DocumentData>):Transaction;
	/**
		Reads the document referenced by the provided `DocumentReference`.
		
		#### Example
		
		```js
		const docRef = firebase.firestore().doc('users/alovelace');
		
		await firebase.firestore().runTransaction(async (transaction) => {
		   const snapshot = await transaction.get(docRef);
		    // use snapshot with transaction (see set() or update())
		    ...
		});
		```
	**/
	function get<T>(documentRef:DocumentReference<T>):js.lib.Promise<DocumentSnapshot<T>>;
	/**
		Writes to the document referred to by the provided `DocumentReference`. If the document does not exist yet,
		it will be created. If you pass `SetOptions`, the provided data can be merged into the existing document.
		
		#### Example
		
		```js
		const docRef = firebase.firestore().doc('users/alovelace');
		
		await firebase.firestore().runTransaction((transaction) => {
		   const snapshot = await transaction.get(docRef);
		   const snapshotData = snapshot.data();
		
		   return transaction.set(docRef, {
		     ...data,
		     age: 30, // new field
		   });
		});
		```
	**/
	function set<T>(documentRef:DocumentReference<T>, data:T, ?options:SetOptions):Transaction;
	/**
		Updates fields in the document referred to by the provided `DocumentReference`. The update will fail if applied
		to a document that does not exist.
		
		#### Example
		
		```js
		const docRef = firebase.firestore().doc('users/alovelace');
		
		await firebase.firestore().runTransaction((transaction) => {
		   const snapshot = await transaction.get(docRef);
		
		   return transaction.update(docRef, {
		     age: snapshot.data().age + 1,
		   });
		});
		```
		
		Updates fields in the document referred to by the provided DocumentReference. The update will fail if applied to
		a document that does not exist.
		
		Nested fields can be updated by providing dot-separated field path strings or by providing FieldPath objects.
		
		#### Example
		
		```js
		const docRef = firebase.firestore().doc('users/alovelace');
		
		await firebase.firestore().runTransaction((transaction) => {
		   const snapshot = await transaction.get(docRef);
		
		   return transaction.update(docRef, 'age', snapshot.data().age + 1);
		});
		```
	**/
	@:overload(function<T, K>(documentRef:DocumentReference<T>, field:ts.AnyOf2<FieldPath, K>, value:Dynamic, moreFieldsAndValues:haxe.extern.Rest<Dynamic>):Transaction { })
	function update<T>(documentRef:DocumentReference<T>, data:Dynamic):Transaction;
};