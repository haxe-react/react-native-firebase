package react.native.firebase;

@:jsRequire('@react-native-firebase/app', 'default')
extern class Firebase {
	static function initializeApp(options:FirebaseAppOptions, ?config:FirebaseAppConfig):Dynamic;
}

typedef FirebaseAppOptions = Dynamic;
typedef FirebaseAppConfig = Dynamic;