package react_native_firebase.messaging.firebasemessagingtypes;

/**
	The Firebase Messaging service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Messaging service for the default app:
	
	```js
	const defaultAppMessaging = firebase.messaging();
	```
**/
@:jsRequire("@react-native-firebase/messaging", "FirebaseMessagingTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns whether messaging auto initialization is enabled or disabled for the device.
		
		#### Example
		
		```js
		const isAutoInitEnabled = firebase.messaging().isAutoInitEnabled;
		```
	**/
	var isAutoInitEnabled : Bool;
	/**
		Sets whether auto initialization for messaging is enabled or disabled.
		
		Set this to false to allow for an 'opt-in-first' flow for your users. By default auto
		initialization is enabled, which updates the device identifier and configuration data needed
		for messaging to Firebase.
		
		To ensure first app opens have an initial value set, set the argument in the `firebase.json`
		config.
		
		#### Example
		
		```js
		// Disable auto initialization
		await firebase.messaging().setAutoInitEnabled(false);
		```
	**/
	function setAutoInitEnabled(enabled:Bool):js.lib.Promise<ts.Undefined>;
	/**
		When a notification from FCM has triggered the application to open from a quit state,
		this method will return a `RemoteMessage` containing the notification data, or `null` if
		the app was opened via another method.
		
		See `onNotificationOpenedApp` to subscribe to when the notification is opened when the app
		is in a background state.
		
		Beware of this [issue](https://github.com/invertase/react-native-firebase/issues/3469#issuecomment-660121376) when integrating with splash screen modules. If you are using
		`react-native-splash-screen` we strongly recommend you migrate to `react-native-bootsplash`
		which is actively maintained and avoids these issues
	**/
	function getInitialNotification():js.lib.Promise<Null<RemoteMessage>>;
	/**
		Returns an FCM token for this device. Optionally you can specify a custom authorized entity
		or scope to tailor tokens to your own use-case.
		
		It is recommended you call this method on app start and update your backend with the new token.
		
		On iOS you'll need to register for remote notifications before calling this method, you can do
		this by calling `registerDeviceForRemoteMessages` or `requestPermission` as part of your app
		startup. If you have not registered and you call this method you will receive an 'unregistered'
		error code.
		
		#### Example - Default token
		
		```js
		await firebase.messaging().registerDeviceForRemoteMessages();
		const fcmToken = await firebase.messaging().getToken();
		
		// Update backend (e.g. Firestore) with our token for the user
		const uid = firebase.auth().currentUser.uid;
		await firebase.firestore().doc(`users/${uid}`)
		   .update({
		     fcmTokens: firebase.firestore.FieldValues.arrayUnion(fcmToken),
		   });
		```
	**/
	function getToken():js.lib.Promise<String>;
	/**
		Returns wether the root view is headless or not
		i.e true if the app was launched in the background (for example, by data-only cloud message)
		
		More info: https://rnfirebase.io/messaging/usage#background-application-state
	**/
	function getIsHeadless():js.lib.Promise<Bool>;
	/**
		Removes access to an FCM token previously authorized by it's scope. Messages sent by the server
		to this token will fail.
		
		#### Example
		
		```js
		await firebase.messaging().deleteToken();
		```
	**/
	function deleteToken():js.lib.Promise<ts.Undefined>;
	/**
		When any FCM payload is received, the listener callback is called with a `RemoteMessage`.
		
		Returns an unsubscribe function to stop listening for new messages.
		
		#### Example
		
		```js
		const unsubscribe = firebase.messaging().onMessage(async (remoteMessage) => {
		   console.log('FCM Message Data:', remoteMessage.data);
		
		    // Update a users messages list using AsyncStorage
		    const currentMessages = await AsyncStorage.getItem('messages');
		    const messageArray = JSON.parse(currentMessages);
		    messageArray.push(remoteMessage.data);
		    await AsyncStorage.setItem('messages', JSON.stringify(messageArray));
		});
		
		// Unsubscribe from further message events
		unsubscribe();
		```
		
		> This subscriber method is only called when the app is active (in the foreground).
	**/
	function onMessage(listener:(message:RemoteMessage) -> Dynamic):() -> Void;
	/**
		When the user presses a notification displayed via FCM, this listener will be called if the app
		has opened from a background state.
		
		See `getInitialNotification` to see how to watch for when a notification opens the app from a
		quit state.
		
		Beware of this [issue](https://github.com/invertase/react-native-firebase/issues/3469#issuecomment-660121376) when integrating with splash screen modules. If you are using
		`react-native-splash-screen` we strongly recommend you migrate to `react-native-bootsplash`
		which is actively maintained and avoids these issues
	**/
	function onNotificationOpenedApp(listener:(message:RemoteMessage) -> Dynamic):() -> Void;
	/**
		Called when a new registration token is generated for the device. For example, this event can happen when a
		token expires or when the server invalidates the token.
		
		Your app should always subscribe to this event and update your backend to ensure your device will
		receive new messages. The listener is only called when the app is active (in foreground), so ensure
		you call `getToken()` on app open to handle any new tokens generated when the app was not active.
		
		Returns an unsubscribe function to stop listening for token refresh events.
		
		#### Example
		
		```js
		const unsubscribe = firebase.messaging().onTokenRefresh(async (fcmToken) => {
		   console.log('New FCM Token:', fcmToken);
		
		   // Append the database with the users new FCM token (e.g. with Firestore)
		   const uid = firebase.auth().currentUser.uid;
		   await firebase.firestore().doc(`users/${uid}`)
		     .update({
		       fcmTokens: firebase.firestore.FieldValues.arrayUnion(fcmToken),
		     });
		});
		```
		
		> This subscriber method is only called when the app is active (in the foreground).
	**/
	function onTokenRefresh(listener:(token:String) -> Dynamic):() -> Void;
	/**
		On iOS, messaging permission must be requested by the current application before messages can
		be received or sent.
		
		On iOS < 12, a modal will be shown to the user requesting messaging permissions for the app.
		Once handled, the promise will resolve with `true` if permission was granted.
		
		On iOS >= 12, the app will be granted [Provisional Authorization](http://iosbrain.com/blog/2018/07/05/new-in-ios-12-implementing-provisional-authorization-for-quiet-notifications-in-swift/),
		and will resolve `true`. The user will be able to receive FCM payloads and Notifications immediately;
		but notifications will be displayed silently. The user, through Notification Center, then has the option of upgrading your apps notifications to no longer be silent.
		
		> You can safely call this method on Android without platform checks. It's a no-op on Android and will promise resolve `true`.
		
		#### Example
		
		```js
		const permissionGranted = await firebase.messaging().requestPermission();
		```
	**/
	function requestPermission(?permissions:IOSPermissions):js.lib.Promise<AuthorizationStatus>;
	/**
		On iOS, if your app wants to receive remote messages from FCM (via APNs), you must explicitly register
		with APNs if auto-registration has been disabled.
		
		> You can safely call this method on Android without platform checks. It's a no-op on Android and will promise resolve `void`.
		
		> You can safely call this method multiple times, if the app is already registered then this method resolves immediately.
		
		#### Example
		
		```js
		if (!firebase.messaging().isDeviceRegisteredForRemoteMessages) {
		   await firebase.messaging().registerDeviceForRemoteMessages();
		}
		```
	**/
	function registerDeviceForRemoteMessages():js.lib.Promise<ts.Undefined>;
	/**
		Returns a boolean value whether the user has registered for remote notifications via
		`registerDeviceForRemoteMessages()`.
		
		> You can safely access this property on Android without platform checks. Android returns `true` only.
		
		#### Example
		
		```js
		const isDeviceRegisteredForRemoteMessages = firebase.messaging().isDeviceRegisteredForRemoteMessages;
		```
	**/
	var isDeviceRegisteredForRemoteMessages : Bool;
	/**
		Unregisters the app from receiving remote notifications.
		
		> You can safely call this method on Android without platform checks. It's a no-op on Android and will promise resolve `void`.
		
		#### Example
		
		```js
		if (firebase.messaging().isDeviceRegisteredForRemoteMessages) {
		   await firebase.messaging().unregisterDeviceForRemoteMessages();
		}
		```
	**/
	function unregisterDeviceForRemoteMessages():js.lib.Promise<ts.Undefined>;
	/**
		On iOS, it is possible to get the users APNs token. This may be required if you want to send messages to your
		iOS devices without using the FCM service.
		
		> You can safely call this method on Android without platform checks. It's a no-op on Android and will promise resolve `null`.
		
		#### Example
		
		```js
		const apnsToken = await firebase.messaging().getAPNSToken();
		
		if (apnsToken) {
		   console.log('User APNs Token:', apnsToken);
		}
		```
	**/
	function getAPNSToken():js.lib.Promise<Null<String>>;
	/**
		Returns a `AuthorizationStatus` as to whether the user has messaging permission for this app.
		
		#### Example
		
		```js
		const authStatus = await firebase.messaging().hasPermission();
		if (authStatus === firebase.messaging.AuthorizationStatus.AUTHORIZED) {
		   // yay
		}
		
		```
	**/
	function hasPermission():js.lib.Promise<AuthorizationStatus>;
	/**
		Called when the FCM server deletes pending messages. This may be due to:
		
		1. Too many messages stored on the FCM server. This can occur when an app's servers send a bunch
		of non-collapsible messages to FCM servers while the device is offline.
		
		2. The device hasn't connected in a long time and the app server has recently (within the last
		4 weeks) sent a message to the app on that device.
		
		It is recommended that the app do a full sync with the server after receiving this call (e.g.
		requesting all user messages from the database).
		
		Returns an unsubscribe function to stop listening for deleted messages.
		
		#### Example
		
		```js
		const unsubscribe = firebase.messaging().onDeletedMessages(() => {
		   // Perform a full app re-sync
		});
		
		// Unsubscribe from deleted messages events
		unsubscribe();
		```
		
		NOTE: Android only
	**/
	function onDeletedMessages(listener:() -> Void):() -> Void;
	/**
		When sending a `RemoteMessage`, this listener is called when the message has been sent to FCM.
		
		Returns an unsubscribe function to stop listening for sent messages.
		
		#### Example
		
		```js
		const unsubscribe = firebase.messaging().onMessageSent((messageId) => {
		   console.log('Message has been sent to the FCM server', messageId);
		});
		
		// Unsubscribe from message sent events
		unsubscribe();
		```
		
		NOTE: Android only
	**/
	function onMessageSent(listener:(messageId:String) -> Dynamic):() -> Void;
	/**
		When sending a `RemoteMessage`, this listener is called when an error is thrown and the
		message could not be sent.
		
		Returns an unsubscribe function to stop listening for sent errors.
		
		#### Example
		
		```js
		const unsubscribe = firebase.messaging().onSendError(({ messageId, error }) => {
		   console.log('An error occurred when sending a message to FCM', messageId, error);
		});
		
		// Unsubscribe from message sent error events
		unsubscribe();
		```
		
		NOTE: Android only
	**/
	function onSendError(listener:(evt:SendErrorEvent) -> Dynamic):() -> Void;
	/**
		Set a message handler function which is called when the app is in the background
		or terminated. In Android, a headless task is created, allowing you to access the React Native environment
		to perform tasks such as updating local storage, or sending a network request.
		
		This method must be called **outside** of your application lifecycle, e.g. alongside your
		`AppRegistry.registerComponent()` method call at the the entry point of your application code.
		
		
		#### Example
		
		```js
		firebase.messaging().setBackgroundMessageHandler(async (remoteMessage) => {
		    // Update a users messages list using AsyncStorage
		    const currentMessages = await AsyncStorage.getItem('messages');
		    const messageArray = JSON.parse(currentMessages);
		    messageArray.push(remoteMessage.data);
		    await AsyncStorage.setItem('messages', JSON.stringify(messageArray));
		});
		```
	**/
	function setBackgroundMessageHandler(handler:(message:RemoteMessage) -> js.lib.Promise<Dynamic>):Void;
	/**
		Send a new `RemoteMessage` to the FCM server.
		
		The promise resolves when the message has been added to the internal queue. Use `onMessageSent()`
		and `onSendError()` to determine when the message has been sent to the server.
		
		#### Example
		
		```js
		await firebase.messaging().sendMessage({
		   data: {
		     loggedIn: Date.now(),
		     uid: firebase.auth().currentUser.uid,
		   }
		});
		```
		
		NOTE: Android only
	**/
	function sendMessage(message:RemoteMessage):js.lib.Promise<ts.Undefined>;
	/**
		Apps can subscribe to a topic, which allows the FCM server to send targeted messages to only those
		devices subscribed to that topic.
		
		#### Example
		
		```js
		await firebase.messaging().subscribeToTopic('news');
		```
	**/
	function subscribeToTopic(topic:String):js.lib.Promise<ts.Undefined>;
	/**
		Unsubscribe the device from a topic.
		
		#### Example
		
		```js
		await firebase.messaging().unsubscribeFromTopic('news');
		```
	**/
	function unsubscribeFromTopic(topic:String):js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}