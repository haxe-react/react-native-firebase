package react_native_firebase.analytics.firebaseanalyticstypes;

typedef ScreenViewParameters = {
	/**
		Screen name the user is currently viewing.
	**/
	@:optional
	var screen_name : String;
	/**
		Current class associated with the view the user is currently viewing.
	**/
	@:optional
	var screen_class : String;
};