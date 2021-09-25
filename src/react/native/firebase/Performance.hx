package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.FirebaseApp;
import react_native_firebase.perf.firebaseperformancetypes.*;

@:jsRequire('@react-native-firebase/perf', 'default')
extern class Performance {
	@:selfCall
	static function inst(?app:FirebaseApp):Performance;
	
	function startTrace(id:String):Promise<Trace>;
	function setPerformanceCollectionEnabled(enabled:Bool): Promise<ts.Undefined>;
}
