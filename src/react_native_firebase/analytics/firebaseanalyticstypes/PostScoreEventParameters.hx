package react_native_firebase.analytics.firebaseanalyticstypes;

typedef PostScoreEventParameters = {
	/**
		Score in game.
	**/
	var score : Float;
	/**
		Level in game.
	**/
	@:optional
	var level : Float;
	/**
		Character used in game.
	**/
	@:optional
	var character : String;
};