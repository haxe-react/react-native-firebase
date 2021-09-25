package react_native_firebase.firestore.firebasefirestoretypes;

/**
	`firebase.firestore.X`
**/
typedef Statics = {
	/**
		Returns the `Blob` class.
	**/
	var Blob : {
		var prototype : Blob;
		/**
			Creates a new Blob from the given Base64 string, converting it to bytes.
		**/
		function fromBase64String(base64:String):Blob;
		/**
			Creates a new Blob from the given Uint8Array.
		**/
		function fromUint8Array(array:js.lib.Uint8Array):Blob;
	};
	/**
		Returns the `FieldPath` class.
	**/
	var FieldPath : {
		var prototype : FieldPath;
		/**
			Returns a special sentinel `FieldPath` to refer to the ID of a document. It can be used in queries to sort or filter by the document ID.
		**/
		function documentId():FieldPath;
	};
	/**
		Returns the `FieldValue` class.
	**/
	var FieldValue : {
		var prototype : FieldValue;
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
		function arrayRemove(elements:haxe.extern.Rest<Dynamic>):FieldValue;
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
		function arrayUnion(elements:haxe.extern.Rest<Dynamic>):FieldValue;
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
		function delete():FieldValue;
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
		function increment(n:Float):FieldValue;
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
		function serverTimestamp():FieldValue;
	};
	/**
		Returns the `GeoPoint` class.
	**/
	var GeoPoint : {
		var prototype : GeoPoint;
	};
	/**
		Returns the `Timestamp` class.
	**/
	var Timestamp : {
		var prototype : Timestamp;
		/**
			Creates a new timestamp from the given JavaScript [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date).
		**/
		function fromDate(date:js.lib.Date):Timestamp;
		/**
			Creates a new timestamp from the given number of milliseconds.
		**/
		function fromMillis(milliseconds:Float):Timestamp;
		/**
			Creates a new timestamp with the current date, with millisecond precision.
		**/
		function now():Timestamp;
	};
	/**
		Used to set the cache size to unlimited when passing to `cacheSizeBytes` in
		`firebase.firestore().settings()`.
	**/
	var CACHE_SIZE_UNLIMITED : Float;
	/**
		Sets the verbosity of Cloud Firestore native device logs (debug, error, or silent).
		
		- `debug`: the most verbose logging level, primarily for debugging.
		- `error`: logs only error events.
		- `silent`: turn off logging.
		
		#### Example
		
		```js
		firebase.firestore.setLogLevel('silent');
		```
	**/
	function setLogLevel(logLevel:String):Void;
};