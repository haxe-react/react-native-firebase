package react_native_firebase.messaging.firebasemessagingtypes;

/**
	An interface representing all the available permissions that can be requested by your app via
	the `requestPermission` API.
**/
typedef IOSPermissions = {
	/**
		Request permission to display alerts.
		
		Defaults to true.
	**/
	@:optional
	var alert : Bool;
	/**
		Request permission for Siri to automatically read out notification messages over AirPods.
		
		Defaults to false.
	**/
	@:optional
	var announcement : Bool;
	/**
		Request permission to update the application badge.
		
		Defaults to true.
	**/
	@:optional
	var badge : Bool;
	/**
		Request permission for critical alerts.
		
		Defaults to false.
	**/
	@:optional
	var criticalAlert : Bool;
	/**
		Request permission to display notifications in a CarPlay environment.
		
		Defaults to true.
	**/
	@:optional
	var carPlay : Bool;
	/**
		Request permission to provisionally create non-interrupting notifications.
		
		Defaults to false.
	**/
	@:optional
	var provisional : Bool;
	/**
		Request permission to play sounds.
		
		Defaults to true.
	**/
	@:optional
	var sound : Bool;
};