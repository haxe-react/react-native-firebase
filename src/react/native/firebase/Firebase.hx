package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.*;

@:jsRequire('@react-native-firebase/app', 'default')
extern class Firebase {
	static function initializeApp(options:FirebaseAppOptions, ?config:FirebaseAppConfig):FirebaseApp;
}