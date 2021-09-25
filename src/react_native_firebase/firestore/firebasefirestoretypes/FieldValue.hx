package react_native_firebase.firestore.firebasefirestoretypes;

/**
	Sentinel values that can be used when writing document fields with `set()` or `update()`.
	
	#### Example
	
	```js
	const increment = firebase.firestore.FieldValue.increment(1);
	
	await firebase.firestore().doc('users/alovelace').update({
	   age: increment, // increment age by 1
	});
	```
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.FieldValue") extern class FieldValue {
	function new();
	/**
		Returns true if this `FieldValue` is equal to the provided one.
		
		#### Example
		
		```js
		const increment = firebase.firestore.FieldValue.increment(1);
		const timestamp = firebase.firestore.FieldValue.serverTimestamp();
		
		// false
		increment.isEqual(timestamp);
		```
	**/
	function isEqual(other:FieldValue):Bool;
	static var prototype : FieldValue;
	/**
		Returns a special value that can be used with `set()` or `update()` that tells the server to remove the given elements
		from any array value that already exists on the server. All instances of each element specified will be removed from
		the array. If the field being modified is not already an array it will be overwritten with an empty array.
		
		#### Example
		
		```js
		const arrayRemove = firebase.firestore.FieldValue.arrayRemove(2, '3');
		
		// Removes the values 2 & '3' from the values array on the document
		await docRef.update({
		   values: arrayRemove,
		});
		```
	**/
	static function arrayRemove(elements:haxe.extern.Rest<Dynamic>):FieldValue;
	/**
		Returns a special value that can be used with `set()` or `update()` that tells the server to union the given
		elements with any array value that already exists on the server. Each specified element that doesn't already exist
		in the array will be added to the end. If the field being modified is not already an array it will be overwritten
		with an array containing exactly the specified elements.
		
		#### Example
		
		```js
		const arrayUnion = firebase.firestore.FieldValue.arrayUnion(2, '3');
		
		// Appends the values 2 & '3' onto the values array on the document
		await docRef.update({
		   values: arrayUnion,
		});
		```
	**/
	static function arrayUnion(elements:haxe.extern.Rest<Dynamic>):FieldValue;
	/**
		Returns a sentinel for use with update() to mark a field for deletion.
		
		#### Example
		
		```js
		const delete = firebase.firestore.FieldValue.delete();
		
		// Deletes the name field on the document
		await docRef.update({
		   name: delete,
		});
		```
	**/
	static function delete():FieldValue;
	/**
		Returns a special value that can be used with `set()` or `update()` that tells the server to increment the field's current value by the given value.
		
		If either the operand or the current field value uses floating point precision, all arithmetic follows IEEE 754 semantics.
		If both values are integers, values outside of JavaScript's safe number range (`Number.MIN_SAFE_INTEGER` to `Number.MAX_SAFE_INTEGER`)
		are also subject to precision loss. Furthermore, once processed by the Firestore backend, all integer operations are
		capped between -2^63 and 2^63-1.
		
		If the current field value is not of type `number`, or if the field does not yet exist, the transformation sets the field to the given value.
		
		#### Example
		
		```js
		const increment = firebase.firestore.FieldValue.increment(1);
		
		// Increment the loginCount field by 1 on the document
		await docRef.update({
		   loginCount: increment,
		});
		```
	**/
	static function increment(n:Float):FieldValue;
	/**
		Returns a sentinel used with set() or update() to include a server-generated timestamp in the written data.
		
		#### Example
		
		```js
		const timestamp = firebase.firestore.FieldValue.serverTimestamp();
		
		// Set the updatedAt field to the current server time
		await docRef.update({
		   updatedAt: timestamp,
		});
		```
	**/
	static function serverTimestamp():FieldValue;
}