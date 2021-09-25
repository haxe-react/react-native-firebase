package react_native_firebase.analytics.firebaseanalyticstypes;

typedef SelectItemEventParameters = {
	@:optional
	var items : Array<Item>;
	var content_type : String;
	/**
		The ID of the list in which the item was presented to the user
	**/
	var item_list_id : String;
	/**
		The name of the list in which the item was presented to the user
	**/
	var item_list_name : String;
};