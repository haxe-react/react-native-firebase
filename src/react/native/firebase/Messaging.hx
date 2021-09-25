package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.FirebaseApp;
import react_native_firebase.messaging.firebasemessagingtypes.*;

/**
 * API reference: https://rnfirebase.io/reference/messaging
 */
 
@:jsRequire('@react-native-firebase/messaging', 'default')
extern class Messaging {
	@:selfCall
	static function inst(?app:FirebaseApp):Messaging;
	
	function setAutoInitEnabled(enabled:Bool):Promise<ts.Undefined>;
	function getInitialNotification():Promise<Null<RemoteMessage>>;
	function getToken():Promise<String>;
	function getIsHeadless():Promise<Bool>;
	function deleteToken():Promise<ts.Undefined>;
	function onMessage(listener:(message:RemoteMessage) -> Void):() -> Void;
	function onNotificationOpenedApp(listener:(message:RemoteMessage) -> Void):() -> Void;
	function onTokenRefresh(listener:(token:String) -> Void):() -> Void;
	function requestPermission(?permissions:IOSPermissions):Promise<AuthorizationStatus>;
	function registerDeviceForRemoteMessages():Promise<ts.Undefined>;
	function unregisterDeviceForRemoteMessages():Promise<ts.Undefined>;
	function getAPNSToken():Promise<Null<String>>;
	function hasPermission():Promise<AuthorizationStatus>;
	function onDeletedMessages(listener:() -> Void):() -> Void;
	function onMessageSent(listener:(messageId:String) -> Void):() -> Void;
	function onSendError(listener:(evt:SendErrorEvent) -> Void):() -> Void;
	function setBackgroundMessageHandler(handler:(message:RemoteMessage) -> Promise<Dynamic>):Void;
	function sendMessage(message:RemoteMessage):Promise<ts.Undefined>;
	function subscribeToTopic(topic:String):Promise<ts.Undefined>;
	function unsubscribeFromTopic(topic:String):Promise<ts.Undefined>;
}