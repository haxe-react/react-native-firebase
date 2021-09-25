package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.FirebaseApp;
import react_native_firebase.storage.firebasestoragetypes.*;

@:jsRequire('@react-native-firebase/storage', 'default')
extern class Storage {
	@:selfCall
	static function inst(?app:FirebaseApp):Storage;
	
	function ref(?path:String):Reference;
	function refFromURL(url:String):Reference;
	function setMaxDownloadRetryTime(time:Int):Promise<ts.Undefined>;
	function setMaxOperationRetryTime(time:Int):Promise<ts.Undefined>;
	function setMaxUploadRetryTime(time:Int):Promise<ts.Undefined>;
}