package react_native_firebase.analytics.firebaseanalyticstypes;

typedef LevelEndEventParameters = {
	/**
		Level in game.
	**/
	var level : Float;
	/**
		The result of an operation.
	**/
	@:optional
	var success : String;
};