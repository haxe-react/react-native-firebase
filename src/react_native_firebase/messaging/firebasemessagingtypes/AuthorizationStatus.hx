package react_native_firebase.messaging.firebasemessagingtypes;

/**
	An enum representing the notification authorization status for this app on the device.
	
	Value is truthy if authorized, compare against an exact status (e.g. iOS PROVISIONAL) for a more
	granular status.
	
	Example:
	
	```js
	firebase.messaging.AuthorizationStatus.NOT_DETERMINED;
	```
**/
@:jsRequire("@react-native-firebase/messaging", "FirebaseMessagingTypes.AuthorizationStatus") @:enum extern abstract AuthorizationStatus(Int) from Int to Int {
	/**
		The app user has not yet chosen whether to allow the application to create notifications. Usually
		this status is returned prior to the first call of `requestPermission`.
	**/
	var NOT_DETERMINED;
	/**
		The app is not authorized to create notifications.
	**/
	var DENIED;
	/**
		The app is authorized to create notifications.
	**/
	var AUTHORIZED;
	/**
		The app is currently authorized to post non-interrupting user notifications
	**/
	var PROVISIONAL;
}