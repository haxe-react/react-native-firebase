package react_native_firebase.messaging.firebasemessagingtypes;

/**
	The enum representing a notification priority.
	
	Note; on devices which have channel support (Android 8.0 (API level 26) +),
	this value will be ignored. Instead, the channel "importance" level is used.
	
	Example:
	
	```js
	firebase.messaging.NotificationAndroidPriority.PRIORITY_MIN;
	```
**/
@:jsRequire("@react-native-firebase/messaging", "FirebaseMessagingTypes.NotificationAndroidPriority") @:enum extern abstract NotificationAndroidPriority(Int) from Int to Int {
	/**
		The application small icon will not show up in the status bar, or alert the user. The notification
		will be in a collapsed state in the notification shade and placed at the bottom of the list.
	**/
	var PRIORITY_MIN;
	/**
		The application small icon will show in the device status bar, however the notification will
		not alert the user (no sound or vibration). The notification will show in it's expanded state
		when the notification shade is pulled down.
	**/
	var PRIORITY_LOW;
	/**
		When a notification is received, the device smallIcon will appear in the notification shade.
		When the user pulls down the notification shade, the content of the notification will be shown
		in it's expanded state.
	**/
	var PRIORITY_DEFAULT;
	/**
		Notifications will appear on-top of applications, allowing direct interaction without pulling
		own the notification shade. This level is used for urgent notifications, such as
		incoming phone calls, messages etc, which require immediate attention.
	**/
	var PRIORITY_HIGH;
	/**
		The priority highest level a notification can be set at.
	**/
	var PRIORITY_MAX;
}