package react_native_firebase.app.reactnativefirebase;

/**
	A class that all React Native Firebase modules extend from to provide default behaviour.
**/
@:jsRequire("@react-native-firebase/app", "ReactNativeFirebase.FirebaseModule") extern class FirebaseModule {
	function new();
	/**
		The current `FirebaseApp` instance for this Firebase service.
	**/
	var app : FirebaseApp;
	/**
		The native module instance for this Firebase service.
	**/
	private var native : Dynamic;
	/**
		Returns the shared event emitter instance used for all JS event routing.
	**/
	private var emitter : Dynamic;
	static var prototype : FirebaseModule;
}