package react_native_firebase.analytics.firebaseanalyticstypes;

typedef SearchEventParameters = {
	var search_term : String;
	/**
		Number of nights staying at hotel.
	**/
	@:optional
	var number_of_nights : Float;
	/**
		Number of rooms for travel events.
	**/
	@:optional
	var number_of_rooms : Float;
	/**
		Number of passengers traveling.
	**/
	@:optional
	var number_of_passengers : Float;
	/**
		Flight or Travel origin. E.g. `Mountain View, CA`.
	**/
	@:optional
	var origin : String;
	/**
		Flight or Travel destination. E.g. `Mountain View, CA`.
	**/
	@:optional
	var destination : String;
	/**
		The departure date, check-in date, or rental start date for the item (String). The parameter expects a date formatted as YYYY-MM-DD.
	**/
	@:optional
	var start_date : String;
	/**
		The arrival date, check-out date, or rental end date for the item (String). The parameter expects a date formatted as YYYY-MM-DD.
	**/
	@:optional
	var end_date : String;
	/**
		Travel class. E.g. `business`.
	**/
	@:optional
	var travel_class : String;
};