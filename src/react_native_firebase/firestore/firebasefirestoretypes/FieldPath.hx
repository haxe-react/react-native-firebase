package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A FieldPath refers to a field in a document. The path may consist of a single field name (referring to a
	top-level field in the document), or a list of field names (referring to a nested field in the document).
	
	Create a FieldPath by providing field names. If more than one field name is provided, the path will point to a nested field in a document.
	
	#### Example
	
	```js
	const user = await firebase.firestore().doc('users/alovelace').get();
	
	// Create a new field path
	const fieldPath = new firebase.firestore.FieldPath('address', 'zip');
	
	console.log('Address ZIP Code', user.get(fieldPath));
	```
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.FieldPath") extern class FieldPath {
	/**
		Creates a FieldPath from the provided field names. If more than one field name is provided, the path will point to a nested field in a document.
		
		#### Example
		
		```js
		const fieldPath = new firebase.firestore.FieldPath('address', line', 'one');
		```
	**/
	function new(fieldNames:haxe.extern.Rest<String>);
	/**
		Returns true if this `FieldPath` is equal to the provided one.
		
		#### Example
		
		```js
		const fieldPath1 = new firebase.firestore.FieldPath('address', 'zip');
		const fieldPath2 = new firebase.firestore.FieldPath('address', line', 'one');
		
		// false
		fieldPath1.isEqual(fieldPath2);
		```
	**/
	function isEqual(other:FieldPath):Bool;
	static var prototype : FieldPath;
	/**
		Returns a special sentinel `FieldPath` to refer to the ID of a document. It can be used in queries to sort or filter by the document ID.
	**/
	static function documentId():FieldPath;
}