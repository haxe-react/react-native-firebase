package react_native_firebase.messaging.firebasemessagingtypes;

/**
	Represents a critical sound configuration that can be included in the
	`aps` dictionary of an APNs payload.
**/
typedef NotificationIOSCriticalSound = {
	/**
		The critical alert flag. Set to `true` to enable the critical alert.
	**/
	@:optional
	var critical : Bool;
	/**
		The name of a sound file in the app's main bundle or in the `Library/Sounds`
		folder of the app's container directory. Specify the string "default" to play
		the system sound.
	**/
	var name : String;
	/**
		The volume for the critical alert's sound. Must be a value between 0.0
		(silent) and 1.0 (full volume).
	**/
	@:optional
	var volume : Float;
};