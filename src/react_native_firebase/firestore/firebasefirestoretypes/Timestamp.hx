package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A Timestamp represents a point in time independent of any time zone or calendar, represented as seconds and
	fractions of seconds at nanosecond resolution in UTC Epoch time.
	
	It is encoded using the Proleptic Gregorian Calendar which extends the Gregorian calendar backwards to year one.
	It is encoded assuming all minutes are 60 seconds long, i.e. leap seconds are "smeared" so that no leap second table
	is needed for interpretation. Range is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z.
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.Timestamp") extern class Timestamp {
	/**
		Creates a new timestamp.
	**/
	function new(seconds:Float, nanoseconds:Float);
	/**
		The number of nanoseconds of this `Timestamp`;
	**/
	var nanoseconds : Float;
	/**
		The number of seconds of this `Timestamp`.
	**/
	var seconds : Float;
	/**
		Returns true if this `Timestamp` is equal to the provided one.
	**/
	function isEqual(other:Timestamp):Bool;
	/**
		Convert a Timestamp to a JavaScript Date object. This conversion causes a loss of precision since Date objects
		only support millisecond precision.
		
		Returns a JavaScript [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) with
		millseconds precision.
	**/
	function toDate():js.lib.Date;
	/**
		Convert a Timestamp to a numeric timestamp (in milliseconds since epoch). This operation causes a loss of precision.
		
		The point in time corresponding to this timestamp, represented as the number of milliseconds since Unix epoch 1970-01-01T00:00:00Z.
	**/
	function toMillis():Float;
	/**
		Convert a timestamp to a string in format "FirestoreTimestamp(seconds=`seconds`, nanoseconds=`nanoseconds`)",
		with the `seconds` and `nanoseconds` replaced by the values in the Timestamp object
	**/
	function toString():String;
	/**
		Convert a Timestamp to a JSON object with seconds and nanoseconds members
	**/
	function toJSON():{
		var seconds : Float;
		var nanoseconds : Float;
	};
	/**
		Converts this object to a primitive string, which allows Timestamp objects to be compared
		using the `>`, `<=`, `>=` and `>` operators.
	**/
	function valueOf():String;
	static var prototype : Timestamp;
	/**
		Creates a new timestamp from the given JavaScript [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date).
	**/
	static function fromDate(date:js.lib.Date):Timestamp;
	/**
		Creates a new timestamp from the given number of milliseconds.
	**/
	static function fromMillis(milliseconds:Float):Timestamp;
	/**
		Creates a new timestamp with the current date, with millisecond precision.
	**/
	static function now():Timestamp;
}