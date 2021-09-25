package react_native_firebase.analytics.firebaseanalyticstypes;

typedef LevelUpEventParameters = {
	/**
		Level in game.
	**/
	var level : Float;
	/**
		Character used in game.
	**/
	@:optional
	var character : String;
};