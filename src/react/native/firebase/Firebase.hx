package react.native.firebase;
import js.lib.Promise;
import haxe.extern.EitherType;

@:jsRequire('@react-native-firebase/app', 'default')
extern class Firebase {
	static function initializeApp(options:FirebaseAppOptions, ?config:FirebaseAppConfig):Dynamic;
}

typedef FirebaseAppOptions = Dynamic;
typedef FirebaseAppConfig = Dynamic;
typedef NativeFirebaseError = Dynamic;

/**
 * Usage: put some logs before potential crash to see some additional info; 
 * Note: logs are preserved only in scope of crash
 */

@:jsRequire('@react-native-firebase/crashlytics', 'firebase.crashlytics()')
extern class Crashlytics {
	static function log(v:String):Void;
	static function crash():Void;
}

@:jsRequire('@react-native-firebase/perf', 'firebase.perf()')
extern class Performance {
	static function startTrace(id:String):Promise<Trace>;
}
extern class Trace {
	function start():Promise<Dynamic>;
	function stop():Promise<Dynamic>;
	function putAttribute(attribute:String, value:String):Void;
	function putMetric(metricName:String, value:Float):Void;
	function getAttribute(attribute:String):String;
	function getMetric(metricName:String):Float;
	function getMetrics():Map<String,Float>;
}

@:jsRequire('@react-native-firebase/storage', 'firebase.storage()')
extern class Storage {
	static function ref(?path:String):Reference;
	static function refFromURL(url:String):Reference;
	static function setMaxDownloadRetryTime(time:Int):Promise<Void>;
	static function setMaxOperationRetryTime(time:Int):Promise<Void>;
	static function setMaxUploadRetryTime(time:Int):Promise<Void>;
}

extern class Reference {
	var bucket:String;
	var fullPath:String;
	var name:String;
	var parent:Null<Reference>;
	var root:Reference;
	var storage:Storage;
	
	function child(path:String):Reference;
	function delete():Promise<Void>;
	function getDownloadURL():Promise<String>;
	function getMetadata():Promise<FullMetadata>;
	function list(?options:ListOptions):Promise<ListResult>;
	function listAll():Promise<ListResult>;
	function put(data: Dynamic, ?metadata: SettableMetadata):Task; //data is one of [Blob | Uint8Array | ArrayBuffer]
	function putFile(localFilePath:String, ?metadata: SettableMetadata):Task;
	function putString(data:String, format:DataFormat, ?metadata: SettableMetadata):Task;
	function toString():String;
	function updateMetadata(metadata:SettableMetadata):Promise<FullMetadata>;
	function writeToFile(localFilePath:String):Task;
}

extern class Task {
	function cancel():Promise<Bool>;
	@:native('catch')
	function catchError(onRejected:TaskErrorHandler):Promise<Dynamic>;
	function on(event:String, ?nextOrObserver:TaskResultHandler, ?error:TaskErrorHandler, ?complete:()->Void):()->Void;
	function pause():Promise<Bool>;
	function resume():Promise<Bool>;
	function then(?onFulfilled:TaskResultHandler, ?onRejected:TaskErrorHandler):Promise<Dynamic>;
}

typedef TaskResultHandler = TaskSnapshot->Void;
typedef TaskErrorHandler = NativeFirebaseError->Void;

typedef SettableMetadata = {
	?cacheControl:String, //'no-store' or 'public, max-age=31536000'
	?contentDisposition:String,
	?contentEncoding:String,
	?contentLanguage:String,
	?contentType:String, //'application/json' for JSON
	?customMetadata:Dynamic
};

typedef FullMetadata = {
	>SettableMetadata,
	bucket:String,
	fullPath:String,
	generation:String,
	md5Hash:String,
	metageneration:String,
	name:String,
	size:Int,
	timeCreated:String,
	updated:String
};

typedef ListOptions = {
	?maxResults:Int,
	?pageToken:String
}

typedef ListResult = {
	items:Array<Reference>,
	nextPageToken:Null<String>,
	prefixes:Array<Reference>
};

typedef TaskSnapshot = {
	bytesTransferred:Int,
	error:NativeFirebaseError,
	metadata:FullMetadata,
	ref:Reference,
	state:TaskState,
	task:Task,
	totalBytes:Int
};

enum abstract DataFormat(String) {
	var raw;
	var base64;
	var base64url;
	var data_url;
}

enum abstract TaskState(String) {
	var cancelled;
	var error;
	var paused;
	var running;
	var success;
}