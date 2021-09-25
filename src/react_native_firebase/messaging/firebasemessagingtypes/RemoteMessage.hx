package react_native_firebase.messaging.firebasemessagingtypes;

/**
	The `RemoteMessage` interface describes an outgoing & incoming message from the remote FCM server.
**/
typedef RemoteMessage = {
	/**
		The collapse key a message was sent with. Used to override existing messages with the same
		key.
	**/
	@:optional
	var collapseKey : String;
	/**
		A unique ID assigned to every message.
		
		If not provided, a random unique ID is generated.
	**/
	@:optional
	var messageId : String;
	/**
		The message type of the message.
	**/
	@:optional
	var messageType : String;
	/**
		The topic name or message identifier.
	**/
	@:optional
	var from : String;
	/**
		The address for the message.
	**/
	@:optional
	var to : String;
	/**
		The time to live for the message in seconds.
		
		Defaults to 3600.
	**/
	@:optional
	var ttl : Float;
	/**
		The time the message was sent, in milliseconds since the start of unix epoch
	**/
	@:optional
	var sentTime : Float;
	/**
		Any additional data sent with the message.
	**/
	@:optional
	var data : { };
	/**
		Additional Notification data sent with the message
	**/
	@:optional
	var notification : Notification;
	/**
		Whether the iOS APNs message was configured as a background update notification.
	**/
	@:optional
	var contentAvailable : Bool;
	/**
		Whether the iOS APNs `mutable-content` property on the message was set
		allowing the app to modify the notification via app extensions.
	**/
	@:optional
	var mutableContent : Bool;
	/**
		The iOS category this notification is assigned to.
	**/
	@:optional
	var category : String;
	/**
		An iOS app specific identifier used for notification grouping.
	**/
	@:optional
	var threadId : String;
};