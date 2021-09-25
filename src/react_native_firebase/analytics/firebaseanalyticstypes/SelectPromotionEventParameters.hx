package react_native_firebase.analytics.firebaseanalyticstypes;

typedef SelectPromotionEventParameters = {
	/**
		The name of a creative used in a promotional spot
	**/
	var creative_name : String;
	/**
		The name of a creative slot
	**/
	var creative_slot : String;
	@:optional
	var items : Array<Item>;
	/**
		The location associated with the event. Preferred to be the Google Place ID that corresponds to the associated item but could be overridden to a custom location ID string
	**/
	var location_id : String;
	/**
		The ID of a product promotion
	**/
	var promotion_id : String;
	/**
		The name of a product promotion
	**/
	var promotion_name : String;
};