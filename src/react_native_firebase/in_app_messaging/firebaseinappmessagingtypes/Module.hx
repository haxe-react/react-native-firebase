package react_native_firebase.in_app_messaging.firebaseinappmessagingtypes;

/**
	The Firebase In-App Messaging service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the  In-App Messaging service for the default app:
	
	```js
	const defaultAppInAppMessaging = firebase.inAppMessaging();
	```
**/
@:jsRequire("@react-native-firebase/in-app-messaging", "FirebaseInAppMessagingTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Determines whether messages are suppressed or not.
		
		#### Example
		
		```js
		const isSuppressed = firebase.inAppMessaging().isMessagesDisplaySuppressed;
		```
	**/
	var isMessagesDisplaySuppressed : Bool;
	/**
		Enable or disable suppression of Firebase In App Messaging messages.
		
		When enabled, no in app messages will be rendered until either you disable suppression, or the app restarts.
		This state is not persisted between app restarts.
		
		#### Example
		
		```js
		// Suppress messages
		await firebase.inAppMessaging().setMessagesDisplaySuppressed(true);
		```
	**/
	function setMessagesDisplaySuppressed(enabled:Bool):js.lib.Promise<Dynamic>;
	/**
		Determines whether automatic data collection is enabled or not.
		
		#### Example
		
		```js
		const isDataCollectionEnabled = firebase.inAppMessaging().isAutomaticDataCollectionEnabled;
		```
	**/
	var isAutomaticDataCollectionEnabled : Bool;
	/**
		Enable or disable automatic data collection for Firebase In-App Messaging.
		
		When enabled, generates a registration token on app startup if there is no valid one and generates a new token
		when it is deleted (which prevents `deleteInstanceId()` from stopping the periodic sending of data).
		
		This setting is persisted across app restarts and overrides the setting specified in your manifest/plist file.
		
		#### Example
		
		```js
		// Disable data collection
		firebase.inAppMessaging().setAutomaticDataCollectionEnabled(false);
		```
	**/
	function setAutomaticDataCollectionEnabled(enabled:Bool):js.lib.Promise<Dynamic>;
	/**
		Trigger in-app messages programmatically
		
		#### Example
		
		```js
		// Suppress messages
		await firebase.inAppMessaging().triggerEvent("exampleTrigger");
		```
	**/
	function triggerEvent(eventId:String):js.lib.Promise<Dynamic>;
	static var prototype : Module;
}