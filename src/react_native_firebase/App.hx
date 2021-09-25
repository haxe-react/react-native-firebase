package react_native_firebase;

@:jsRequire("@react-native-firebase/app") @valueModuleOnly extern class App {
	/**
		Add Utils module as a named export for `app`.
	**/
	static final utils : react_native_firebase.app.reactnativefirebase.FirebaseModuleWithStatics<react_native_firebase.app.utils.Module, react_native_firebase.app.utils.Statics>;
	@:native("default")
	static final default_ : react_native_firebase.app.reactnativefirebase.Module;
}