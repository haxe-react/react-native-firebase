package react_native_firebase.analytics.firebaseanalyticstypes;

typedef ViewItemListEventParameters = {
	@:optional
	var items : Array<Item>;
	/**
		The ID of the list in which the item was presented to the user
	**/
	@:optional
	var item_list_id : String;
	/**
		The name of the list in which the item was presented to the user
	**/
	@:optional
	var item_list_name : String;
};