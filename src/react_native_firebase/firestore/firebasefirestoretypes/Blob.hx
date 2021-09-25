package react_native_firebase.firestore.firebasefirestoretypes;

/**
	An immutable object representing an array of bytes.
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.Blob") extern class Blob {
	function new();
	/**
		Returns true if this `Blob` is equal to the provided one.
	**/
	function isEqual(other:Blob):Bool;
	/**
		Returns the bytes of a Blob as a Base64-encoded string.
	**/
	function toBase64():String;
	/**
		Returns the bytes of a Blob in a new Uint8Array.
	**/
	function toUint8Array():js.lib.Uint8Array;
	static var prototype : Blob;
	/**
		Creates a new Blob from the given Base64 string, converting it to bytes.
	**/
	static function fromBase64String(base64:String):Blob;
	/**
		Creates a new Blob from the given Uint8Array.
	**/
	static function fromUint8Array(array:js.lib.Uint8Array):Blob;
}