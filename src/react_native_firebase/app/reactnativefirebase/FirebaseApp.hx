package react_native_firebase.app.reactnativefirebase;

typedef FirebaseApp = {
	/**
		The name (identifier) for this App. '[DEFAULT]' is the default App.
	**/
	final name : String;
	/**
		The (read-only) configuration options from the app initialization.
	**/
	final options : FirebaseAppOptions;
	/**
		Make this app unusable and free up resources.
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	function utils():react_native_firebase.app.utils.Module;
	function storage(?bucket:String):react_native_firebase.storage.firebasestoragetypes.Module;
};