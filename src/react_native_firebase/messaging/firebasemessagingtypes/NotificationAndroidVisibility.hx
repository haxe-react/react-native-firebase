package react_native_firebase.messaging.firebasemessagingtypes;

/**
	The enum representing the visibility of a notification.
	
	Example:
	
	```js
	firebase.messaging.NotificationAndroidVisibility.VISIBILITY_SECRET;
	```
**/
@:jsRequire("@react-native-firebase/messaging", "FirebaseMessagingTypes.NotificationAndroidVisibility") @:enum extern abstract NotificationAndroidVisibility(Int) from Int to Int {
	/**
		Do not reveal any part of this notification on a secure lock-screen.
	**/
	var VISIBILITY_SECRET;
	/**
		Show this notification on all lock-screens, but conceal sensitive or private information on secure lock-screens.
	**/
	var VISIBILITY_PRIVATE;
	/**
		Show this notification in its entirety on all lock-screens.
	**/
	var VISIBILITY_PUBLIC;
}